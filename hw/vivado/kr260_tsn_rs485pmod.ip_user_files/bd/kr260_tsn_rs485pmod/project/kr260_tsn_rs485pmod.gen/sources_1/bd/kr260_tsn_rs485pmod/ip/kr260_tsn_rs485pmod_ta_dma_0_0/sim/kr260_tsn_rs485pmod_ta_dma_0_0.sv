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


// IP VLNV: xilinx.com:ip:ta_dma:1.0
// IP Revision: 13

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module kr260_tsn_rs485pmod_ta_dma_0_0 (
  dma_clk,
  rtc_clk,
  global_resetn,
  st_fetch_ram_dma_en_s_p,
  st_fetch_ram_dma_en_t_p,
  time_sm_select_d_p,
  end_of_seq_mem_p,
  datamover_cmd_tvalid_p,
  datamover_cmd_tready_p,
  datamover_strm_tvalid_p,
  introut,
  cycle_start,
  new_schedule_start,
  current_time,
  st_byte_space_in_fifo,
  re_byte_space_in_fifo,
  be_byte_space_in_fifo,
  s_axi_awaddr,
  s_axi_awvalid,
  s_axi_awready,
  s_axi_wdata,
  s_axi_wvalid,
  s_axi_wready,
  s_axi_bresp,
  s_axi_bvalid,
  s_axi_bready,
  s_axi_araddr,
  s_axi_arvalid,
  s_axi_arready,
  s_axi_rdata,
  s_axi_rresp,
  s_axi_rvalid,
  s_axi_rready,
  m_axi_mm2s_araddr,
  m_axi_mm2s_arlen,
  m_axi_mm2s_arsize,
  m_axi_mm2s_arburst,
  m_axi_mm2s_arprot,
  m_axi_mm2s_arcache,
  m_axi_mm2s_aruser,
  m_axi_mm2s_arvalid,
  m_axi_mm2s_arready,
  m_axi_mm2s_rdata,
  m_axi_mm2s_rresp,
  m_axi_mm2s_rlast,
  m_axi_mm2s_rvalid,
  m_axi_mm2s_rready,
  m_axis_st_tdata,
  m_axis_st_tkeep,
  m_axis_st_tuser,
  m_axis_st_tlast,
  m_axis_st_tvalid,
  m_axis_st_tready,
  m_axis_res_tdata,
  m_axis_res_tkeep,
  m_axis_res_tuser,
  m_axis_res_tlast,
  m_axis_res_tvalid,
  m_axis_res_tready,
  m_axis_be_tdata,
  m_axis_be_tkeep,
  m_axis_be_tuser,
  m_axis_be_tlast,
  m_axis_be_tvalid,
  m_axis_be_tready
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dma_clk, ASSOCIATED_BUSIF S_AXI:M_AXI:M_AXIS_ST_INTF:M_AXIS_RES_INTF:M_AXIS_BE_INTF, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN kr260_tsn_rs485pmod_clk_wiz_0_0_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 dma_clk CLK" *)
input wire dma_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rtc_clk, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN kr260_tsn_rs485pmod_clk_wiz_0_0_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 rtc_clk CLK" *)
input wire rtc_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME global_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 global_resetn RST" *)
input wire global_resetn;
output wire st_fetch_ram_dma_en_s_p;
output wire st_fetch_ram_dma_en_t_p;
output wire time_sm_select_d_p;
output wire end_of_seq_mem_p;
output wire datamover_cmd_tvalid_p;
output wire datamover_cmd_tready_p;
output wire datamover_strm_tvalid_p;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME introut, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 introut INTERRUPT" *)
output wire introut;
input wire cycle_start;
input wire new_schedule_start;
input wire [79 : 0] current_time;
input wire [15 : 0] st_byte_space_in_fifo;
input wire [15 : 0] re_byte_space_in_fifo;
input wire [15 : 0] be_byte_space_in_fifo;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *)
input wire [31 : 0] s_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *)
input wire s_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *)
output wire s_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *)
input wire [31 : 0] s_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *)
input wire s_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *)
output wire s_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *)
output wire [1 : 0] s_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *)
output wire s_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *)
input wire s_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *)
input wire [31 : 0] s_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *)
input wire s_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *)
output wire s_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *)
output wire [31 : 0] s_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *)
output wire [1 : 0] s_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *)
output wire s_axi_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 200000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN kr260_tsn_rs485pmod_clk_wiz_0_0_clk_out1, NUM_READ_THREADS 1\
, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *)
input wire s_axi_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARADDR" *)
output wire [39 : 0] m_axi_mm2s_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARLEN" *)
output wire [7 : 0] m_axi_mm2s_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARSIZE" *)
output wire [2 : 0] m_axi_mm2s_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARBURST" *)
output wire [1 : 0] m_axi_mm2s_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARPROT" *)
output wire [2 : 0] m_axi_mm2s_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARCACHE" *)
output wire [3 : 0] m_axi_mm2s_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARUSER" *)
output wire [3 : 0] m_axi_mm2s_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARVALID" *)
output wire m_axi_mm2s_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARREADY" *)
input wire m_axi_mm2s_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RDATA" *)
input wire [63 : 0] m_axi_mm2s_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RRESP" *)
input wire [1 : 0] m_axi_mm2s_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RLAST" *)
input wire m_axi_mm2s_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RVALID" *)
input wire m_axi_mm2s_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI, NUM_READ_OUTSTANDING 2, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 200000000, ID_WIDTH 0, ADDR_WIDTH 40, AWUSER_WIDTH 0, ARUSER_WIDTH 4, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_ONLY, HAS_BURST 1, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 0, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN kr260_tsn_rs485pmod_clk_wiz_0_0_clk_out1, NUM_READ_THREADS 1, N\
UM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RREADY" *)
output wire m_axi_mm2s_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_ST_INTF TDATA" *)
output wire [31 : 0] m_axis_st_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_ST_INTF TKEEP" *)
output wire [3 : 0] m_axis_st_tkeep;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_ST_INTF TUSER" *)
output wire [1 : 0] m_axis_st_tuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_ST_INTF TLAST" *)
output wire m_axis_st_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_ST_INTF TVALID" *)
output wire m_axis_st_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_ST_INTF, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 2, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN kr260_tsn_rs485pmod_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_ST_INTF TREADY" *)
input wire m_axis_st_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_RES_INTF TDATA" *)
output wire [31 : 0] m_axis_res_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_RES_INTF TKEEP" *)
output wire [3 : 0] m_axis_res_tkeep;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_RES_INTF TUSER" *)
output wire [1 : 0] m_axis_res_tuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_RES_INTF TLAST" *)
output wire m_axis_res_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_RES_INTF TVALID" *)
output wire m_axis_res_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_RES_INTF, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 2, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN kr260_tsn_rs485pmod_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_RES_INTF TREADY" *)
input wire m_axis_res_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_BE_INTF TDATA" *)
output wire [31 : 0] m_axis_be_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_BE_INTF TKEEP" *)
output wire [3 : 0] m_axis_be_tkeep;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_BE_INTF TUSER" *)
output wire [1 : 0] m_axis_be_tuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_BE_INTF TLAST" *)
output wire m_axis_be_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_BE_INTF TVALID" *)
output wire m_axis_be_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_BE_INTF, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 2, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN kr260_tsn_rs485pmod_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_BE_INTF TREADY" *)
input wire m_axis_be_tready;

  ta_dma_v1_0_13 #(
    .C_FAMILY("zynquplus"),
    .C_NUM_STREAMS(8),
    .C_NUM_FETCH_ENTRIES(8),
    .C_NUM_BUFFERS_PER_STREAM(64),
    .C_M_AXI_ADDR_WIDTH(40),
    .C_M_AXI_DATA_WIDTH(64),
    .C_M_AXI_MAX_BURST_SIZE(256),
    .C_S_AXI_ADDR_WIDTH(32),
    .C_S_AXI_DATA_WIDTH(32),
    .C_EN_STATISTICS(1),
    .C_EN_DEBUG(0),
    .C_EN_INT_STORE_AND_FWD(1)
  ) inst (
    .dma_clk(dma_clk),
    .rtc_clk(rtc_clk),
    .global_resetn(global_resetn),
    .st_fetch_ram_dma_en_s_p(st_fetch_ram_dma_en_s_p),
    .st_fetch_ram_dma_en_t_p(st_fetch_ram_dma_en_t_p),
    .time_sm_select_d_p(time_sm_select_d_p),
    .end_of_seq_mem_p(end_of_seq_mem_p),
    .datamover_cmd_tvalid_p(datamover_cmd_tvalid_p),
    .datamover_cmd_tready_p(datamover_cmd_tready_p),
    .datamover_strm_tvalid_p(datamover_strm_tvalid_p),
    .introut(introut),
    .cycle_start(cycle_start),
    .new_schedule_start(new_schedule_start),
    .current_time(current_time),
    .st_byte_space_in_fifo(st_byte_space_in_fifo),
    .re_byte_space_in_fifo(re_byte_space_in_fifo),
    .be_byte_space_in_fifo(be_byte_space_in_fifo),
    .s_axi_awaddr(s_axi_awaddr),
    .s_axi_awvalid(s_axi_awvalid),
    .s_axi_awready(s_axi_awready),
    .s_axi_wdata(s_axi_wdata),
    .s_axi_wvalid(s_axi_wvalid),
    .s_axi_wready(s_axi_wready),
    .s_axi_bresp(s_axi_bresp),
    .s_axi_bvalid(s_axi_bvalid),
    .s_axi_bready(s_axi_bready),
    .s_axi_araddr(s_axi_araddr),
    .s_axi_arvalid(s_axi_arvalid),
    .s_axi_arready(s_axi_arready),
    .s_axi_rdata(s_axi_rdata),
    .s_axi_rresp(s_axi_rresp),
    .s_axi_rvalid(s_axi_rvalid),
    .s_axi_rready(s_axi_rready),
    .m_axi_mm2s_araddr(m_axi_mm2s_araddr),
    .m_axi_mm2s_arlen(m_axi_mm2s_arlen),
    .m_axi_mm2s_arsize(m_axi_mm2s_arsize),
    .m_axi_mm2s_arburst(m_axi_mm2s_arburst),
    .m_axi_mm2s_arprot(m_axi_mm2s_arprot),
    .m_axi_mm2s_arcache(m_axi_mm2s_arcache),
    .m_axi_mm2s_aruser(m_axi_mm2s_aruser),
    .m_axi_mm2s_arvalid(m_axi_mm2s_arvalid),
    .m_axi_mm2s_arready(m_axi_mm2s_arready),
    .m_axi_mm2s_rdata(m_axi_mm2s_rdata),
    .m_axi_mm2s_rresp(m_axi_mm2s_rresp),
    .m_axi_mm2s_rlast(m_axi_mm2s_rlast),
    .m_axi_mm2s_rvalid(m_axi_mm2s_rvalid),
    .m_axi_mm2s_rready(m_axi_mm2s_rready),
    .m_axis_st_tdata(m_axis_st_tdata),
    .m_axis_st_tkeep(m_axis_st_tkeep),
    .m_axis_st_tuser(m_axis_st_tuser),
    .m_axis_st_tlast(m_axis_st_tlast),
    .m_axis_st_tvalid(m_axis_st_tvalid),
    .m_axis_st_tready(m_axis_st_tready),
    .m_axis_res_tdata(m_axis_res_tdata),
    .m_axis_res_tkeep(m_axis_res_tkeep),
    .m_axis_res_tuser(m_axis_res_tuser),
    .m_axis_res_tlast(m_axis_res_tlast),
    .m_axis_res_tvalid(m_axis_res_tvalid),
    .m_axis_res_tready(m_axis_res_tready),
    .m_axis_be_tdata(m_axis_be_tdata),
    .m_axis_be_tkeep(m_axis_be_tkeep),
    .m_axis_be_tuser(m_axis_be_tuser),
    .m_axis_be_tlast(m_axis_be_tlast),
    .m_axis_be_tvalid(m_axis_be_tvalid),
    .m_axis_be_tready(m_axis_be_tready)
  );
endmodule
