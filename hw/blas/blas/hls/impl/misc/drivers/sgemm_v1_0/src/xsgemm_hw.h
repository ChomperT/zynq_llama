// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
// control
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0 - ap_done (Read/TOW)
//        bit 1 - ap_ready (Read/TOW)
//        others - reserved
// 0x10 : Data signal of k
//        bit 31~0 - k[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of A_offset
//        bit 31~0 - A_offset[31:0] (Read/Write)
// 0x1c : Data signal of A_offset
//        bit 31~0 - A_offset[63:32] (Read/Write)
// 0x20 : reserved
// 0x24 : Data signal of lda
//        bit 31~0 - lda[31:0] (Read/Write)
// 0x28 : Data signal of lda
//        bit 31~0 - lda[63:32] (Read/Write)
// 0x2c : reserved
// 0x30 : Data signal of B_offset
//        bit 31~0 - B_offset[31:0] (Read/Write)
// 0x34 : Data signal of B_offset
//        bit 31~0 - B_offset[63:32] (Read/Write)
// 0x38 : reserved
// 0x3c : Data signal of ldb
//        bit 31~0 - ldb[31:0] (Read/Write)
// 0x40 : Data signal of ldb
//        bit 31~0 - ldb[63:32] (Read/Write)
// 0x44 : reserved
// 0x48 : Data signal of C_offset
//        bit 31~0 - C_offset[31:0] (Read/Write)
// 0x4c : Data signal of C_offset
//        bit 31~0 - C_offset[63:32] (Read/Write)
// 0x50 : reserved
// 0x54 : Data signal of ldc
//        bit 31~0 - ldc[31:0] (Read/Write)
// 0x58 : Data signal of ldc
//        bit 31~0 - ldc[63:32] (Read/Write)
// 0x5c : reserved
// 0x60 : Data signal of RM
//        bit 7~0 - RM[7:0] (Read/Write)
//        others  - reserved
// 0x64 : reserved
// 0x68 : Data signal of RN
//        bit 7~0 - RN[7:0] (Read/Write)
//        others  - reserved
// 0x6c : reserved
// 0x70 : Data signal of m0
//        bit 31~0 - m0[31:0] (Read/Write)
// 0x74 : Data signal of m0
//        bit 31~0 - m0[63:32] (Read/Write)
// 0x78 : reserved
// 0x7c : Data signal of m
//        bit 31~0 - m[31:0] (Read/Write)
// 0x80 : Data signal of m
//        bit 31~0 - m[63:32] (Read/Write)
// 0x84 : reserved
// 0x88 : Data signal of n0
//        bit 31~0 - n0[31:0] (Read/Write)
// 0x8c : Data signal of n0
//        bit 31~0 - n0[63:32] (Read/Write)
// 0x90 : reserved
// 0x94 : Data signal of n
//        bit 31~0 - n[31:0] (Read/Write)
// 0x98 : Data signal of n
//        bit 31~0 - n[63:32] (Read/Write)
// 0x9c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XSGEMM_CONTROL_ADDR_AP_CTRL       0x00
#define XSGEMM_CONTROL_ADDR_GIE           0x04
#define XSGEMM_CONTROL_ADDR_IER           0x08
#define XSGEMM_CONTROL_ADDR_ISR           0x0c
#define XSGEMM_CONTROL_ADDR_K_DATA        0x10
#define XSGEMM_CONTROL_BITS_K_DATA        32
#define XSGEMM_CONTROL_ADDR_A_OFFSET_DATA 0x18
#define XSGEMM_CONTROL_BITS_A_OFFSET_DATA 64
#define XSGEMM_CONTROL_ADDR_LDA_DATA      0x24
#define XSGEMM_CONTROL_BITS_LDA_DATA      64
#define XSGEMM_CONTROL_ADDR_B_OFFSET_DATA 0x30
#define XSGEMM_CONTROL_BITS_B_OFFSET_DATA 64
#define XSGEMM_CONTROL_ADDR_LDB_DATA      0x3c
#define XSGEMM_CONTROL_BITS_LDB_DATA      64
#define XSGEMM_CONTROL_ADDR_C_OFFSET_DATA 0x48
#define XSGEMM_CONTROL_BITS_C_OFFSET_DATA 64
#define XSGEMM_CONTROL_ADDR_LDC_DATA      0x54
#define XSGEMM_CONTROL_BITS_LDC_DATA      64
#define XSGEMM_CONTROL_ADDR_RM_DATA       0x60
#define XSGEMM_CONTROL_BITS_RM_DATA       8
#define XSGEMM_CONTROL_ADDR_RN_DATA       0x68
#define XSGEMM_CONTROL_BITS_RN_DATA       8
#define XSGEMM_CONTROL_ADDR_M0_DATA       0x70
#define XSGEMM_CONTROL_BITS_M0_DATA       64
#define XSGEMM_CONTROL_ADDR_M_DATA        0x7c
#define XSGEMM_CONTROL_BITS_M_DATA        64
#define XSGEMM_CONTROL_ADDR_N0_DATA       0x88
#define XSGEMM_CONTROL_BITS_N0_DATA       64
#define XSGEMM_CONTROL_ADDR_N_DATA        0x94
#define XSGEMM_CONTROL_BITS_N_DATA        64

