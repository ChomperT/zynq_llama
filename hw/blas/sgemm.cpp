#include <hls_stream.h>
#include <hls_half.h>
#include <stdint.h>
#include <ap_int.h>

#define QK4_0 32
typedef struct {
    half d;           // delta
    uint8_t qs[QK4_0 / 2]; // nibbles / quants
} block_q4_0;

#define QK8_0 32
typedef struct {
    half d;       // delta
    int8_t  qs[QK8_0]; // quants
} block_q8_0;

#define MIN(x, y)((x) < (y) ? (x) : (y))

template<typename DA, typename DB>
half mmatmul(DA *aa, DB *bb) {
#pragma HLS CACHE port=aa depth=16
#pragma HLS CACHE port=bb depth=16
    half res = 0;
    half rc[32];
    auto a = aa->qs;
    auto b = bb->qs;
    auto fa = *(half *)&aa->d;
    auto fb = *(half *)&bb->d;
    auto q = fa * fb;
#pragma HLS AGGREGATE variable=rc compact=auto
    for(int i = 0; i < 32; i++) {
        uint8_t aa = i < 16 ? a[i] : a[i - 16];
        aa = (i < 16) ? (aa & 0xf) : (aa >> 4);
        int8_t ua = aa - 8;
        int8_t ub = 0;
        if(ua != 0)
            ub = ua > 0 ? b[i] : -b[i];
        ua = ua > 0 ? ua : -ua;
        rc[i] = ua * ub * q;
    }
#define FACTOR 4
    for(int i = 0; i < 32/FACTOR; i+=FACTOR) {
        auto r1 = rc[i] + rc[i+1] + rc[i+2] + rc[i+3];
        res += r1;
    }
    return res;
}

template <typename TA, typename TB, typename TC>
void gemm(int64_t k,
        const TA *A, int64_t lda,
        const TB *B, int64_t ldb,
        TC *C, int64_t ldc,
        int ith, int nth,
		uint8_t RM, uint8_t RN, int64_t m0, int64_t m, int64_t n0, int64_t n) {

    int64_t ytiles = (m - m0) / RM;
    int64_t xtiles = (n - n0) / RN;
    int64_t tiles = xtiles * ytiles;
    int64_t duty = (tiles + nth - 1) / nth;
    int64_t start = duty * ith;
    int64_t end = start + duty;
    if (end > tiles)
        end = tiles;

    main_loop: for (int64_t job = start; job < end; ++job) {
#pragma HLS LOOP_TRIPCOUNT avg=72 max=72 min=72
        int64_t ii = m0 + job / xtiles * RM;
        int64_t jj = n0 + job % xtiles * RN;
        half Cv[3][3] = {};
        group_loop: for (int64_t l = 0; l < k; ++l) {
#pragma HLS LOOP_TRIPCOUNT avg=72 max=72 min=72
#pragma HLS PIPELINE
#pragma HLS LOOP_TRIPCOUNT avg=2 max=3 min=1
            for (int64_t j = 0; j < RN; ++j) {
#pragma HLS LOOP_TRIPCOUNT avg=2 max=3 min=1
            	calc_loop: for (int64_t i = 0; i < RM; ++i) {
#pragma HLS PIPELINE
                    auto aa = A + lda * (ii + i) + l;
                    auto bb = B + ldb * (jj + j) + l;
                    auto res = mmatmul(aa, bb);
                    Cv[j][i] += res;
                }
            }
#pragma HLS LOOP_TRIPCOUNT avg=2 max=3 min=1
        for (int64_t j = 0; j < RN; ++j)
#pragma HLS LOOP_TRIPCOUNT avg=2 max=3 min=1
            for (int64_t i = 0; i < RM; ++i) {
#pragma HLS PIPELINE
                C[ldc * (jj + j) + (ii + i)] = (float)Cv[j][i];
            }

        }
    }
}
void sgemm(int k, const block_q4_0 *A, int64_t lda, const block_q8_0 *B, int64_t ldb, float *C, int64_t ldc,
		uint8_t RM, uint8_t RN, int64_t m0, int64_t m, int64_t n0, int64_t n) {
#pragma HLS INTERFACE mode=s_axilite port=return
#pragma HLS INTERFACE mode=s_axilite port=k
#pragma HLS INTERFACE mode=m_axi bundle=A depth=2147483647 port=A offset=slave
#pragma HLS INTERFACE mode=s_axilite port=lda
#pragma HLS INTERFACE mode=m_axi bundle=B port=B depth=2147483647 offset=slave
#pragma HLS INTERFACE mode=s_axilite port=ldb
#pragma HLS INTERFACE mode=m_axi port=C bundle=C depth=2147483647 offset=slave
#pragma HLS INTERFACE mode=s_axilite port=ldc
#pragma HLS INTERFACE mode=s_axilite port=RM
#pragma HLS INTERFACE mode=s_axilite port=RN
#pragma HLS INTERFACE mode=s_axilite port=m0
#pragma HLS INTERFACE mode=s_axilite port=m
#pragma HLS INTERFACE mode=s_axilite port=n0
#pragma HLS INTERFACE mode=s_axilite port=n
    gemm<block_q4_0, block_q8_0, float>(k, A, lda, B, ldb, C, ldc, 0, 1, RM, RN, m0, m, n0, n);
}
