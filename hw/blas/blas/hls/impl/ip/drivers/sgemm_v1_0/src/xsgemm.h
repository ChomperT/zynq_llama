// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XSGEMM_H
#define XSGEMM_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xsgemm_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
#ifdef SDT
    char *Name;
#else
    u16 DeviceId;
#endif
    u64 Control_BaseAddress;
} XSgemm_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XSgemm;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XSgemm_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XSgemm_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XSgemm_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XSgemm_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
#ifdef SDT
int XSgemm_Initialize(XSgemm *InstancePtr, UINTPTR BaseAddress);
XSgemm_Config* XSgemm_LookupConfig(UINTPTR BaseAddress);
#else
int XSgemm_Initialize(XSgemm *InstancePtr, u16 DeviceId);
XSgemm_Config* XSgemm_LookupConfig(u16 DeviceId);
#endif
int XSgemm_CfgInitialize(XSgemm *InstancePtr, XSgemm_Config *ConfigPtr);
#else
int XSgemm_Initialize(XSgemm *InstancePtr, const char* InstanceName);
int XSgemm_Release(XSgemm *InstancePtr);
#endif

void XSgemm_Start(XSgemm *InstancePtr);
u32 XSgemm_IsDone(XSgemm *InstancePtr);
u32 XSgemm_IsIdle(XSgemm *InstancePtr);
u32 XSgemm_IsReady(XSgemm *InstancePtr);
void XSgemm_EnableAutoRestart(XSgemm *InstancePtr);
void XSgemm_DisableAutoRestart(XSgemm *InstancePtr);

void XSgemm_Set_k(XSgemm *InstancePtr, u32 Data);
u32 XSgemm_Get_k(XSgemm *InstancePtr);
void XSgemm_Set_A_offset(XSgemm *InstancePtr, u64 Data);
u64 XSgemm_Get_A_offset(XSgemm *InstancePtr);
void XSgemm_Set_lda(XSgemm *InstancePtr, u64 Data);
u64 XSgemm_Get_lda(XSgemm *InstancePtr);
void XSgemm_Set_B_offset(XSgemm *InstancePtr, u64 Data);
u64 XSgemm_Get_B_offset(XSgemm *InstancePtr);
void XSgemm_Set_ldb(XSgemm *InstancePtr, u64 Data);
u64 XSgemm_Get_ldb(XSgemm *InstancePtr);
void XSgemm_Set_C_offset(XSgemm *InstancePtr, u64 Data);
u64 XSgemm_Get_C_offset(XSgemm *InstancePtr);
void XSgemm_Set_ldc(XSgemm *InstancePtr, u64 Data);
u64 XSgemm_Get_ldc(XSgemm *InstancePtr);
void XSgemm_Set_RM(XSgemm *InstancePtr, u32 Data);
u32 XSgemm_Get_RM(XSgemm *InstancePtr);
void XSgemm_Set_RN(XSgemm *InstancePtr, u32 Data);
u32 XSgemm_Get_RN(XSgemm *InstancePtr);
void XSgemm_Set_m0(XSgemm *InstancePtr, u64 Data);
u64 XSgemm_Get_m0(XSgemm *InstancePtr);
void XSgemm_Set_m(XSgemm *InstancePtr, u64 Data);
u64 XSgemm_Get_m(XSgemm *InstancePtr);
void XSgemm_Set_n0(XSgemm *InstancePtr, u64 Data);
u64 XSgemm_Get_n0(XSgemm *InstancePtr);
void XSgemm_Set_n(XSgemm *InstancePtr, u64 Data);
u64 XSgemm_Get_n(XSgemm *InstancePtr);

void XSgemm_InterruptGlobalEnable(XSgemm *InstancePtr);
void XSgemm_InterruptGlobalDisable(XSgemm *InstancePtr);
void XSgemm_InterruptEnable(XSgemm *InstancePtr, u32 Mask);
void XSgemm_InterruptDisable(XSgemm *InstancePtr, u32 Mask);
void XSgemm_InterruptClear(XSgemm *InstancePtr, u32 Mask);
u32 XSgemm_InterruptGetEnabled(XSgemm *InstancePtr);
u32 XSgemm_InterruptGetStatus(XSgemm *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
