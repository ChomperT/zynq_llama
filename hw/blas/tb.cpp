#include <cstdint>
#include <stdio.h>
#include <iostream>

#include <hls_stream.h>
#include <hls_half.h>
#include <sys/types.h>

void test(uint16_t *a, uint16_t *b, half *c);

int main() {
    uint16_t a[16], b[16];
    half c[16];

    for(int i = 0; i < 16; i++) {
        half ai, bi;
        ai = i;
        bi = i;
        a[i] = *(uint16_t *)&ai;
        b[i] = *(uint16_t *)&bi;
        c[i] = 0;
    }
    test(a, b, c);

    for(int i = 0; i < 16; i++) {
        float ai = *(half *)&a[i];
        float bi = *(half *)&b[i];
        float ci = c[i];
        printf("%f * %f = %f, %f\n", ai, bi, ai*bi, ci);
    }
}