// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#ifdef SDT
#include "xparameters.h"
#endif
#include "xsgemm.h"

extern XSgemm_Config XSgemm_ConfigTable[];

#ifdef SDT
XSgemm_Config *XSgemm_LookupConfig(UINTPTR BaseAddress) {
	XSgemm_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XSgemm_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XSgemm_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XSgemm_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XSgemm_Initialize(XSgemm *InstancePtr, UINTPTR BaseAddress) {
	XSgemm_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XSgemm_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XSgemm_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XSgemm_Config *XSgemm_LookupConfig(u16 DeviceId) {
	XSgemm_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XSGEMM_NUM_INSTANCES; Index++) {
		if (XSgemm_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XSgemm_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XSgemm_Initialize(XSgemm *InstancePtr, u16 DeviceId) {
	XSgemm_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XSgemm_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XSgemm_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

