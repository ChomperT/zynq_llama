// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2024 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:ip:switch_core_top:1.0
// IP Revision: 14

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module bd_4503_switch_core_top_0_0 (
  CLK,
  RESET,
  INIT_DONE,
  PTP_CURRENT_TIME,
  MAC_RX_CLK,
  M_AXIS_RX_TDATA,
  M_AXIS_RX_TKEEP,
  M_AXIS_RX_TVALID,
  M_AXIS_RX_TUSER,
  M_AXIS_RX_TLAST,
  M_AXIS_RX_CTL,
  M_AXIS_RX_TREADY,
  S_AXIS_TX_TDATA_EP,
  S_AXIS_TX_TKEEP_EP,
  S_AXIS_TX_TVALID_EP,
  S_AXIS_TX_TLAST_EP,
  S_AXIS_TX_TREADY_EP,
  S_AXIS_TX_TDEST_EP,
  S_AXIS_TX_TUSER_EP,
  MAC_TX_CLK,
  S_AXIS_TX_TDATA,
  S_AXIS_TX_TKEEP,
  S_AXIS_TX_TVALID,
  S_AXIS_TX_TLAST,
  S_AXIS_TX_TUSER,
  S_AXIS_TX_TREADY,
  S_AXIS_TX_TPRI,
  S_AXIS_EMAC_TX_TDATA,
  S_AXIS_EMAC_TX_TVALID,
  S_AXIS_EMAC_TX_TLAST,
  S_AXIS_EMAC_TX_TUSER,
  S_AXIS_EMAC_TX_TREADY,
  FRAME_DESCRIPTOR,
  REG_RESET,
  S_AXI_CLK,
  S_AXI_RESETN,
  S_AXI_RREADY,
  S_AXI_BREADY,
  S_AXI_ARVALID,
  S_AXI_AWVALID,
  S_AXI_WVALID,
  S_AXI_ARPROT,
  S_AXI_AWPROT,
  S_AXI_ARADDR,
  S_AXI_AWADDR,
  S_AXI_WSTRB,
  S_AXI_WDATA,
  S_AXI_ARREADY,
  S_AXI_AWREADY,
  S_AXI_WREADY,
  S_AXI_RVALID,
  S_AXI_BVALID,
  S_AXI_BRESP,
  S_AXI_RRESP,
  S_AXI_RDATA,
  AXI_UNKNOWN_ADDRESS,
  PRIORITY_MAP,
  MAX_FRAME_SIZE,
  MACTX_GATE_STATE,
  MACTX_GATE_MASK,
  MACTX_GATE_REQ,
  MACTX_GATE,
  MACTX_FRAME_LEN,
  MACTX_GATE_ACK,
  MACTX_GATE_NAK,
  MACTX_GATE_QSTATUS,
  MACTX_GATE_QACTIVE,
  MACTX_GATE_OVERRUN,
  MACTX_EMAC_GATE_STATE,
  MACTX_EMAC_GATE_MASK,
  MACTX_EMAC_GATE_REQ,
  MACTX_EMAC_GATE,
  MACTX_EMAC_FRAME_LEN,
  MACTX_EMAC_GATE_ACK,
  MACTX_EMAC_GATE_NAK,
  MACTX_EMAC_GATE_QSTATUS,
  MACTX_EMAC_GATE_QACTIVE,
  MACTX_EMAC_GATE_OVERRUN,
  PAUSE_REQ,
  MACTX_PFC,
  MACRX_PFC
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *)
input wire CLK;
input wire RESET;
output wire INIT_DONE;
input wire [79 : 0] PTP_CURRENT_TIME;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME MAC_RX_CLK, ASSOCIATED_BUSIF MAC_RX, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 MAC_RX_CLK CLK" *)
input wire [2 : 0] MAC_RX_CLK;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 MAC_RX TDATA" *)
input wire [23 : 0] M_AXIS_RX_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 MAC_RX TKEEP" *)
input wire [2 : 0] M_AXIS_RX_TKEEP;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 MAC_RX TVALID" *)
input wire [2 : 0] M_AXIS_RX_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 MAC_RX TUSER" *)
input wire [2 : 0] M_AXIS_RX_TUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 MAC_RX TLAST" *)
input wire [2 : 0] M_AXIS_RX_TLAST;
input wire [5 : 0] M_AXIS_RX_CTL;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME MAC_RX, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 3, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 MAC_RX TREADY" *)
output wire [2 : 0] M_AXIS_RX_TREADY;
output wire [63 : 0] S_AXIS_TX_TDATA_EP;
output wire [7 : 0] S_AXIS_TX_TKEEP_EP;
output wire [1 : 0] S_AXIS_TX_TVALID_EP;
output wire [1 : 0] S_AXIS_TX_TLAST_EP;
input wire [1 : 0] S_AXIS_TX_TREADY_EP;
output wire [5 : 0] S_AXIS_TX_TDEST_EP;
output wire [63 : 0] S_AXIS_TX_TUSER_EP;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME MAC_TX_CLK, ASSOCIATED_BUSIF MAC_TX, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 MAC_TX_CLK CLK" *)
input wire [2 : 0] MAC_TX_CLK;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 MAC_TX TDATA" *)
output wire [63 : 0] S_AXIS_TX_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 MAC_TX TKEEP" *)
output wire [7 : 0] S_AXIS_TX_TKEEP;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 MAC_TX TVALID" *)
output wire [1 : 0] S_AXIS_TX_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 MAC_TX TLAST" *)
output wire [1 : 0] S_AXIS_TX_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 MAC_TX TUSER" *)
output wire [7 : 0] S_AXIS_TX_TUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 MAC_TX TREADY" *)
input wire [1 : 0] S_AXIS_TX_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME MAC_TX, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 8, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 MAC_TX TPRI" *)
output wire [5 : 0] S_AXIS_TX_TPRI;
output wire [23 : 0] S_AXIS_EMAC_TX_TDATA;
output wire [2 : 0] S_AXIS_EMAC_TX_TVALID;
output wire [2 : 0] S_AXIS_EMAC_TX_TLAST;
output wire [2 : 0] S_AXIS_EMAC_TX_TUSER;
input wire [2 : 0] S_AXIS_EMAC_TX_TREADY;
output wire [47 : 0] FRAME_DESCRIPTOR;
input wire REG_RESET;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_CLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET S_AXI_RESETN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXI_CLK CLK" *)
input wire S_AXI_CLK;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_RESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_AXI_RESETN RST" *)
input wire S_AXI_RESETN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *)
input wire S_AXI_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *)
input wire S_AXI_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *)
input wire S_AXI_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *)
input wire S_AXI_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *)
input wire S_AXI_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *)
input wire [2 : 0] S_AXI_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *)
input wire [2 : 0] S_AXI_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *)
input wire [31 : 0] S_AXI_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *)
input wire [31 : 0] S_AXI_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *)
input wire [3 : 0] S_AXI_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *)
input wire [31 : 0] S_AXI_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *)
output wire S_AXI_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *)
output wire S_AXI_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *)
output wire S_AXI_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *)
output wire S_AXI_RVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *)
output wire S_AXI_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *)
output wire [1 : 0] S_AXI_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *)
output wire [1 : 0] S_AXI_RRESP;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_B\
ITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *)
output wire [31 : 0] S_AXI_RDATA;
output wire AXI_UNKNOWN_ADDRESS;
output wire [31 : 0] PRIORITY_MAP;
output wire [31 : 0] MAX_FRAME_SIZE;
input wire [23 : 0] MACTX_GATE_STATE;
input wire [23 : 0] MACTX_GATE_MASK;
output wire [2 : 0] MACTX_GATE_REQ;
output wire [23 : 0] MACTX_GATE;
output wire [47 : 0] MACTX_FRAME_LEN;
input wire [2 : 0] MACTX_GATE_ACK;
input wire [2 : 0] MACTX_GATE_NAK;
output wire [23 : 0] MACTX_GATE_QSTATUS;
output wire [23 : 0] MACTX_GATE_QACTIVE;
output wire [23 : 0] MACTX_GATE_OVERRUN;
input wire [2 : 0] MACTX_EMAC_GATE_STATE;
input wire [2 : 0] MACTX_EMAC_GATE_MASK;
output wire [2 : 0] MACTX_EMAC_GATE_REQ;
output wire [2 : 0] MACTX_EMAC_GATE;
output wire [47 : 0] MACTX_EMAC_FRAME_LEN;
input wire [2 : 0] MACTX_EMAC_GATE_ACK;
input wire [2 : 0] MACTX_EMAC_GATE_NAK;
output wire [2 : 0] MACTX_EMAC_GATE_QSTATUS;
output wire [2 : 0] MACTX_EMAC_GATE_QACTIVE;
output wire [2 : 0] MACTX_EMAC_GATE_OVERRUN;
output wire [2 : 0] PAUSE_REQ;
output wire [23 : 0] MACTX_PFC;
input wire [23 : 0] MACRX_PFC;

  switch_core_top_v1_0_14 #(
    .C_FAMILY("zynquplus"),
    .NUM_PORTS(3),
    .NUM_PRIORITIES(2),
    .STORE_AND_FORWARD(8'H02),
    .EN_PSFP(1),
    .EN_FRER(1),
    .USE_HARD_FIFO(0),
    .USE_ULTRA_RAM(1),
    .ADDR_TRANSLATION_TYPE(0),
    .EN_PER_PRIQ_CNFGS(0),
    .EN_COMMON_STATS(0),
    .MAX_FRAME_SIZE_P2Q(2000),
    .MAX_FRAME_SIZE_P1Q(2000),
    .MAX_FRAME_SIZE_P0Q(2000),
    .EP2MAC_P2Q_DEPTH(512),
    .EP2MAC_P1Q_DEPTH(512),
    .EP2MAC_P0Q_DEPTH(512),
    .MAC2MAC_P2Q_DEPTH(1024),
    .MAC2MAC_P1Q_DEPTH(1024),
    .MAC2MAC_P0Q_DEPTH(1024),
    .EN_STFWD_MODE_EP(1'H0),
    .MAX_PACKET_SIZE(2000),
    .EN_HW_ADDR_LEARNING(1),
    .EN_CB_RSVD_BYTES(1),
    .MAX_LEARNING_ENTRIES(1920),
    .AGING_WAIT_CLKS(512),
    .AGING_TIME_BIT(27),
    .EN_SWITCH_CASCADE(0),
    .EN_PERVLAN_AGING_TIME(1),
    .C_MAX_STREAM_GATES(256),
    .EN_INBAND_MGMT_TAG(0),
    .EN_EP_PORT_EXTN(0),
    .EN_EP_PKT_SWITCH(0),
    .EN_EP_EXTN_STATS(0),
    .EN_MAC_PREEMPTION(8'H06),
    .EN_PREEMPTION(1'H0)
  ) inst (
    .CLK(CLK),
    .RESET(RESET),
    .INIT_DONE(INIT_DONE),
    .PTP_CURRENT_TIME(PTP_CURRENT_TIME),
    .MAC_RX_CLK(MAC_RX_CLK),
    .M_AXIS_RX_TDATA(M_AXIS_RX_TDATA),
    .M_AXIS_RX_TKEEP(M_AXIS_RX_TKEEP),
    .M_AXIS_RX_TVALID(M_AXIS_RX_TVALID),
    .M_AXIS_RX_TUSER(M_AXIS_RX_TUSER),
    .M_AXIS_RX_TLAST(M_AXIS_RX_TLAST),
    .M_AXIS_RX_CTL(M_AXIS_RX_CTL),
    .M_AXIS_RX_TREADY(M_AXIS_RX_TREADY),
    .S_AXIS_TX_TDATA_EP(S_AXIS_TX_TDATA_EP),
    .S_AXIS_TX_TKEEP_EP(S_AXIS_TX_TKEEP_EP),
    .S_AXIS_TX_TVALID_EP(S_AXIS_TX_TVALID_EP),
    .S_AXIS_TX_TLAST_EP(S_AXIS_TX_TLAST_EP),
    .S_AXIS_TX_TREADY_EP(S_AXIS_TX_TREADY_EP),
    .S_AXIS_TX_TDEST_EP(S_AXIS_TX_TDEST_EP),
    .S_AXIS_TX_TUSER_EP(S_AXIS_TX_TUSER_EP),
    .S_AXIS_PKTSW_TX_TDATA(),
    .S_AXIS_PKTSW_TX_TKEEP(),
    .S_AXIS_PKTSW_TX_TVALID(),
    .S_AXIS_PKTSW_TX_TLAST(),
    .S_AXIS_PKTSW_TX_TUSER(),
    .S_AXIS_PKTSW_TX_TDEST(),
    .S_AXIS_PKTSW_TX_TREADY(1'B0),
    .M_AXIS_TX_TDATA_CSCD(64'B0),
    .M_AXIS_TX_TKEEP_CSCD(8'B0),
    .M_AXIS_TX_TVALID_CSCD(2'B0),
    .M_AXIS_TX_TLAST_CSCD(2'B0),
    .M_AXIS_TX_TREADY_CSCD(),
    .M_AXIS_TX_TDEST_CSCD(4'B0),
    .M_AXIS_TX_TUSER_CSCD(64'B0),
    .S_AXIS_TX_TDATA_CSCD(),
    .S_AXIS_TX_TKEEP_CSCD(),
    .S_AXIS_TX_TVALID_CSCD(),
    .S_AXIS_TX_TLAST_CSCD(),
    .S_AXIS_TX_TREADY_CSCD(2'B0),
    .S_AXIS_TX_TDEST_CSCD(),
    .S_AXIS_TX_TUSER_CSCD(),
    .MAC_TX_CLK(MAC_TX_CLK),
    .S_AXIS_TX_TDATA(S_AXIS_TX_TDATA),
    .S_AXIS_TX_TKEEP(S_AXIS_TX_TKEEP),
    .S_AXIS_TX_TVALID(S_AXIS_TX_TVALID),
    .S_AXIS_TX_TLAST(S_AXIS_TX_TLAST),
    .S_AXIS_TX_TUSER(S_AXIS_TX_TUSER),
    .S_AXIS_TX_TREADY(S_AXIS_TX_TREADY),
    .S_AXIS_TX_TPRI(S_AXIS_TX_TPRI),
    .S_AXIS_EMAC_TX_TDATA(S_AXIS_EMAC_TX_TDATA),
    .S_AXIS_EMAC_TX_TVALID(S_AXIS_EMAC_TX_TVALID),
    .S_AXIS_EMAC_TX_TLAST(S_AXIS_EMAC_TX_TLAST),
    .S_AXIS_EMAC_TX_TUSER(S_AXIS_EMAC_TX_TUSER),
    .S_AXIS_EMAC_TX_TREADY(S_AXIS_EMAC_TX_TREADY),
    .FRAME_DESCRIPTOR(FRAME_DESCRIPTOR),
    .REG_RESET(REG_RESET),
    .S_AXI_CLK(S_AXI_CLK),
    .S_AXI_RESETN(S_AXI_RESETN),
    .S_AXI_RREADY(S_AXI_RREADY),
    .S_AXI_BREADY(S_AXI_BREADY),
    .S_AXI_ARVALID(S_AXI_ARVALID),
    .S_AXI_AWVALID(S_AXI_AWVALID),
    .S_AXI_WVALID(S_AXI_WVALID),
    .S_AXI_ARPROT(S_AXI_ARPROT),
    .S_AXI_AWPROT(S_AXI_AWPROT),
    .S_AXI_ARADDR(S_AXI_ARADDR),
    .S_AXI_AWADDR(S_AXI_AWADDR),
    .S_AXI_WSTRB(S_AXI_WSTRB),
    .S_AXI_WDATA(S_AXI_WDATA),
    .S_AXI_ARREADY(S_AXI_ARREADY),
    .S_AXI_AWREADY(S_AXI_AWREADY),
    .S_AXI_WREADY(S_AXI_WREADY),
    .S_AXI_RVALID(S_AXI_RVALID),
    .S_AXI_BVALID(S_AXI_BVALID),
    .S_AXI_BRESP(S_AXI_BRESP),
    .S_AXI_RRESP(S_AXI_RRESP),
    .S_AXI_RDATA(S_AXI_RDATA),
    .AXI_UNKNOWN_ADDRESS(AXI_UNKNOWN_ADDRESS),
    .PRIORITY_MAP(PRIORITY_MAP),
    .MAX_FRAME_SIZE(MAX_FRAME_SIZE),
    .MACTX_GATE_STATE(MACTX_GATE_STATE),
    .MACTX_GATE_MASK(MACTX_GATE_MASK),
    .MACTX_GATE_REQ(MACTX_GATE_REQ),
    .MACTX_GATE(MACTX_GATE),
    .MACTX_FRAME_LEN(MACTX_FRAME_LEN),
    .MACTX_GATE_ACK(MACTX_GATE_ACK),
    .MACTX_GATE_NAK(MACTX_GATE_NAK),
    .MACTX_GATE_QSTATUS(MACTX_GATE_QSTATUS),
    .MACTX_GATE_QACTIVE(MACTX_GATE_QACTIVE),
    .MACTX_GATE_OVERRUN(MACTX_GATE_OVERRUN),
    .MACTX_EMAC_GATE_STATE(MACTX_EMAC_GATE_STATE),
    .MACTX_EMAC_GATE_MASK(MACTX_EMAC_GATE_MASK),
    .MACTX_EMAC_GATE_REQ(MACTX_EMAC_GATE_REQ),
    .MACTX_EMAC_GATE(MACTX_EMAC_GATE),
    .MACTX_EMAC_FRAME_LEN(MACTX_EMAC_FRAME_LEN),
    .MACTX_EMAC_GATE_ACK(MACTX_EMAC_GATE_ACK),
    .MACTX_EMAC_GATE_NAK(MACTX_EMAC_GATE_NAK),
    .MACTX_EMAC_GATE_QSTATUS(MACTX_EMAC_GATE_QSTATUS),
    .MACTX_EMAC_GATE_QACTIVE(MACTX_EMAC_GATE_QACTIVE),
    .MACTX_EMAC_GATE_OVERRUN(MACTX_EMAC_GATE_OVERRUN),
    .FRAME_CSCD_VLD_IN(1'B0),
    .FRAME_CSCD_CMD_TYPE_IN(2'B0),
    .FRAME_CSCD_PORT_ID_IN(2'B0),
    .FRAME_CSCD_SMAC_ADDR_IN(48'B0),
    .FRAME_CSCD_VLAN_ID_IN(12'B0),
    .FRAME_CSCD_BUFF_STATUS_OUT(),
    .FRAME_CSCD_VLD_OUT(),
    .FRAME_CSCD_CMD_TYPE_OUT(),
    .FRAME_CSCD_PORT_ID_OUT(),
    .FRAME_CSCD_SMAC_ADDR_OUT(),
    .FRAME_CSCD_VLAN_ID_OUT(),
    .FRAME_CSCD_BUFF_STATUS_IN(1'B0),
    .PAUSE_REQ(PAUSE_REQ),
    .MACTX_PFC(MACTX_PFC),
    .MACRX_PFC(MACRX_PFC)
  );
endmodule
