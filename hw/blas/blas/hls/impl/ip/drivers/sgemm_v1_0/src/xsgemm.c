// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xsgemm.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XSgemm_CfgInitialize(XSgemm *InstancePtr, XSgemm_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XSgemm_Start(XSgemm *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSgemm_ReadReg(InstancePtr->Control_BaseAddress, XSGEMM_CONTROL_ADDR_AP_CTRL) & 0x80;
    XSgemm_WriteReg(InstancePtr->Control_BaseAddress, XSGEMM_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XSgemm_IsDone(XSgemm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSgemm_ReadReg(InstancePtr->Control_BaseAddress, XSGEMM_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XSgemm_IsIdle(XSgemm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSgemm_ReadReg(InstancePtr->Control_BaseAddress, XSGEMM_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XSgemm_IsReady(XSgemm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSgemm_ReadReg(InstancePtr->Control_BaseAddress, XSGEMM_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XSgemm_EnableAutoRestart(XSgemm *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSgemm_WriteReg(InstancePtr->Control_BaseAddress, XSGEMM_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XSgemm_DisableAutoRestart(XSgemm *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSgemm_WriteReg(InstancePtr->Control_BaseAddress, XSGEMM_CONTROL_ADDR_AP_CTRL, 0);
}

void XSgemm_Set_k(XSgemm *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSgemm_WriteReg(InstancePtr->Control_BaseAddress, XSGEMM_CONTROL_ADDR_K_DATA, Data);
}

u32 XSgemm_Get_k(XSgemm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSgemm_ReadReg(InstancePtr->Control_BaseAddress, XSGEMM_CONTROL_ADDR_K_DATA);
    return Data;
}

void XSgemm_Set_A_offset(XSgemm *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSgemm_WriteReg(InstancePtr->Control_BaseAddress, XSGEMM_CONTROL_ADDR_A_OFFSET_DATA, (u32)(Data));
    XSgemm_WriteReg(InstancePtr->Control_BaseAddress, XSGEMM_CONTROL_ADDR_A_OFFSET_DATA + 4, (u32)(Data >> 32));
}

u64 XSgemm_Get_A_offset(XSgemm *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSgemm_ReadReg(InstancePtr->Control_BaseAddress, XSGEMM_CONTROL_ADDR_A_OFFSET_DATA);
    Data += (u64)XSgemm_ReadReg(InstancePtr->Control_BaseAddress, XSGEMM_CONTROL_ADDR_A_OFFSET_DATA + 4) << 32;
    return Data;
}

void XSgemm_Set_lda(XSgemm *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSgemm_WriteReg(InstancePtr->Control_BaseAddress, XSGEMM_CONTROL_ADDR_LDA_DATA, (u32)(Data));
    XSgemm_WriteReg(InstancePtr->Control_BaseAddress, XSGEMM_CONTROL_ADDR_LDA_DATA + 4, (u32)(Data >> 32));
}

u64 XSgemm_Get_lda(XSgemm *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSgemm_ReadReg(InstancePtr->Control_BaseAddress, XSGEMM_CONTROL_ADDR_LDA_DATA);
    Data += (u64)XSgemm_ReadReg(InstancePtr->Control_BaseAddress, XSGEMM_CONTROL_ADDR_LDA_DATA + 4) << 32;
    return Data;
}

void XSgemm_Set_B_offset(XSgemm *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSgemm_WriteReg(InstancePtr->Control_BaseAddress, XSGEMM_CONTROL_ADDR_B_OFFSET_DATA, (u32)(Data));
    XSgemm_WriteReg(InstancePtr->Control_BaseAddress, XSGEMM_CONTROL_ADDR_B_OFFSET_DATA + 4, (u32)(Data >> 32));
}

u64 XSgemm_Get_B_offset(XSgemm *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSgemm_ReadReg(InstancePtr->Control_BaseAddress, XSGEMM_CONTROL_ADDR_B_OFFSET_DATA);
    Data += (u64)XSgemm_ReadReg(InstancePtr->Control_BaseAddress, XSGEMM_CONTROL_ADDR_B_OFFSET_DATA + 4) << 32;
    return Data;
}

void XSgemm_Set_ldb(XSgemm *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSgemm_WriteReg(InstancePtr->Control_BaseAddress, XSGEMM_CONTROL_ADDR_LDB_DATA, (u32)(Data));
    XSgemm_WriteReg(InstancePtr->Control_BaseAddress, XSGEMM_CONTROL_ADDR_LDB_DATA + 4, (u32)(Data >> 32));
}

u64 XSgemm_Get_ldb(XSgemm *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSgemm_ReadReg(InstancePtr->Control_BaseAddress, XSGEMM_CONTROL_ADDR_LDB_DATA);
    Data += (u64)XSgemm_ReadReg(InstancePtr->Control_BaseAddress, XSGEMM_CONTROL_ADDR_LDB_DATA + 4) << 32;
    return Data;
}

void XSgemm_Set_C_offset(XSgemm *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSgemm_WriteReg(InstancePtr->Control_BaseAddress, XSGEMM_CONTROL_ADDR_C_OFFSET_DATA, (u32)(Data));
    XSgemm_WriteReg(InstancePtr->Control_BaseAddress, XSGEMM_CONTROL_ADDR_C_OFFSET_DATA + 4, (u32)(Data >> 32));
}

u64 XSgemm_Get_C_offset(XSgemm *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSgemm_ReadReg(InstancePtr->Control_BaseAddress, XSGEMM_CONTROL_ADDR_C_OFFSET_DATA);
    Data += (u64)XSgemm_ReadReg(InstancePtr->Control_BaseAddress, XSGEMM_CONTROL_ADDR_C_OFFSET_DATA + 4) << 32;
    return Data;
}

void XSgemm_Set_ldc(XSgemm *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSgemm_WriteReg(InstancePtr->Control_BaseAddress, XSGEMM_CONTROL_ADDR_LDC_DATA, (u32)(Data));
    XSgemm_WriteReg(InstancePtr->Control_BaseAddress, XSGEMM_CONTROL_ADDR_LDC_DATA + 4, (u32)(Data >> 32));
}

u64 XSgemm_Get_ldc(XSgemm *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSgemm_ReadReg(InstancePtr->Control_BaseAddress, XSGEMM_CONTROL_ADDR_LDC_DATA);
    Data += (u64)XSgemm_ReadReg(InstancePtr->Control_BaseAddress, XSGEMM_CONTROL_ADDR_LDC_DATA + 4) << 32;
    return Data;
}

void XSgemm_Set_RM(XSgemm *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSgemm_WriteReg(InstancePtr->Control_BaseAddress, XSGEMM_CONTROL_ADDR_RM_DATA, Data);
}

u32 XSgemm_Get_RM(XSgemm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSgemm_ReadReg(InstancePtr->Control_BaseAddress, XSGEMM_CONTROL_ADDR_RM_DATA);
    return Data;
}

void XSgemm_Set_RN(XSgemm *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSgemm_WriteReg(InstancePtr->Control_BaseAddress, XSGEMM_CONTROL_ADDR_RN_DATA, Data);
}

u32 XSgemm_Get_RN(XSgemm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSgemm_ReadReg(InstancePtr->Control_BaseAddress, XSGEMM_CONTROL_ADDR_RN_DATA);
    return Data;
}

void XSgemm_Set_m0(XSgemm *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSgemm_WriteReg(InstancePtr->Control_BaseAddress, XSGEMM_CONTROL_ADDR_M0_DATA, (u32)(Data));
    XSgemm_WriteReg(InstancePtr->Control_BaseAddress, XSGEMM_CONTROL_ADDR_M0_DATA + 4, (u32)(Data >> 32));
}

u64 XSgemm_Get_m0(XSgemm *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSgemm_ReadReg(InstancePtr->Control_BaseAddress, XSGEMM_CONTROL_ADDR_M0_DATA);
    Data += (u64)XSgemm_ReadReg(InstancePtr->Control_BaseAddress, XSGEMM_CONTROL_ADDR_M0_DATA + 4) << 32;
    return Data;
}

void XSgemm_Set_m(XSgemm *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSgemm_WriteReg(InstancePtr->Control_BaseAddress, XSGEMM_CONTROL_ADDR_M_DATA, (u32)(Data));
    XSgemm_WriteReg(InstancePtr->Control_BaseAddress, XSGEMM_CONTROL_ADDR_M_DATA + 4, (u32)(Data >> 32));
}

u64 XSgemm_Get_m(XSgemm *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSgemm_ReadReg(InstancePtr->Control_BaseAddress, XSGEMM_CONTROL_ADDR_M_DATA);
    Data += (u64)XSgemm_ReadReg(InstancePtr->Control_BaseAddress, XSGEMM_CONTROL_ADDR_M_DATA + 4) << 32;
    return Data;
}

void XSgemm_Set_n0(XSgemm *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSgemm_WriteReg(InstancePtr->Control_BaseAddress, XSGEMM_CONTROL_ADDR_N0_DATA, (u32)(Data));
    XSgemm_WriteReg(InstancePtr->Control_BaseAddress, XSGEMM_CONTROL_ADDR_N0_DATA + 4, (u32)(Data >> 32));
}

u64 XSgemm_Get_n0(XSgemm *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSgemm_ReadReg(InstancePtr->Control_BaseAddress, XSGEMM_CONTROL_ADDR_N0_DATA);
    Data += (u64)XSgemm_ReadReg(InstancePtr->Control_BaseAddress, XSGEMM_CONTROL_ADDR_N0_DATA + 4) << 32;
    return Data;
}

void XSgemm_Set_n(XSgemm *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSgemm_WriteReg(InstancePtr->Control_BaseAddress, XSGEMM_CONTROL_ADDR_N_DATA, (u32)(Data));
    XSgemm_WriteReg(InstancePtr->Control_BaseAddress, XSGEMM_CONTROL_ADDR_N_DATA + 4, (u32)(Data >> 32));
}

u64 XSgemm_Get_n(XSgemm *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSgemm_ReadReg(InstancePtr->Control_BaseAddress, XSGEMM_CONTROL_ADDR_N_DATA);
    Data += (u64)XSgemm_ReadReg(InstancePtr->Control_BaseAddress, XSGEMM_CONTROL_ADDR_N_DATA + 4) << 32;
    return Data;
}

void XSgemm_InterruptGlobalEnable(XSgemm *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSgemm_WriteReg(InstancePtr->Control_BaseAddress, XSGEMM_CONTROL_ADDR_GIE, 1);
}

void XSgemm_InterruptGlobalDisable(XSgemm *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSgemm_WriteReg(InstancePtr->Control_BaseAddress, XSGEMM_CONTROL_ADDR_GIE, 0);
}

void XSgemm_InterruptEnable(XSgemm *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XSgemm_ReadReg(InstancePtr->Control_BaseAddress, XSGEMM_CONTROL_ADDR_IER);
    XSgemm_WriteReg(InstancePtr->Control_BaseAddress, XSGEMM_CONTROL_ADDR_IER, Register | Mask);
}

void XSgemm_InterruptDisable(XSgemm *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XSgemm_ReadReg(InstancePtr->Control_BaseAddress, XSGEMM_CONTROL_ADDR_IER);
    XSgemm_WriteReg(InstancePtr->Control_BaseAddress, XSGEMM_CONTROL_ADDR_IER, Register & (~Mask));
}

void XSgemm_InterruptClear(XSgemm *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSgemm_WriteReg(InstancePtr->Control_BaseAddress, XSGEMM_CONTROL_ADDR_ISR, Mask);
}

u32 XSgemm_InterruptGetEnabled(XSgemm *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XSgemm_ReadReg(InstancePtr->Control_BaseAddress, XSGEMM_CONTROL_ADDR_IER);
}

u32 XSgemm_InterruptGetStatus(XSgemm *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XSgemm_ReadReg(InstancePtr->Control_BaseAddress, XSGEMM_CONTROL_ADDR_ISR);
}

