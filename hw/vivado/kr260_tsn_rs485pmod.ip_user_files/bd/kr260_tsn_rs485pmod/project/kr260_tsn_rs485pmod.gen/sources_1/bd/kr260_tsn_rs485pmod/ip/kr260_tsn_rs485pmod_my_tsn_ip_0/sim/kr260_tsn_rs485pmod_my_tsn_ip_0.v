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


// IP VLNV: xilinx.com:ip:tsn_endpoint_ethernet_mac:2.0
// IP Revision: 13

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module kr260_tsn_rs485pmod_my_tsn_ip_0 (
  host_txfifo_aclk,
  host_rxfifo_aclk,
  s_axi_aclk,
  gtx_clk,
  gtx_clk90,
  refclk,
  glbl_rstn,
  gtx_dcm_locked,
  interrupt_ptp_rx_1,
  interrupt_ptp_tx_1,
  mac_irq_1,
  s_axi_aresetn,
  tsn_ep_scheduler_irq,
  interrupt_ptp_timer,
  interrupt_ptp_rx_2,
  interrupt_ptp_tx_2,
  mac_irq_2,
  tsn_switch_scheduler_irq_1,
  tsn_switch_scheduler_irq_2,
  INIT_DONE,
  ep_tadma_if_out,
  misc_out_rx_enable,
  misc_out_tx_enable,
  misc_out_rx_mac_aclk,
  misc_out_rx_reset,
  misc_out_tx_mac_aclk,
  misc_out_tx_reset,
  misc_out_tsn_debug_hooks,
  misc_out_speedis100,
  misc_out_switch_cam_init_done,
  temac_misc_out1_tx_ts_axis_tvalid,
  temac_misc_out1_tx_ts_axis_tdata,
  temac_misc_out1_rx_ts_axis_tvalid,
  temac_misc_out1_rx_ts_axis_tdata,
  temac_misc_out1_rx_statistics_vector,
  temac_misc_out1_rx_statistics_valid,
  temac_misc_out1_tx_statistics_vector,
  temac_misc_out1_tx_statistics_valid,
  temac_misc_out1_rx_statistics_vector_pmac,
  temac_misc_out1_rx_statistics_valid_pmac,
  temac_misc_out1_tx_statistics_vector_pmac,
  temac_misc_out1_tx_statistics_valid_pmac,
  temac_misc_out1_rx_ts_axis_tvalid_pmac,
  temac_misc_out1_tx_ts_axis_tvalid_pmac,
  temac_misc_out1_rx_ts_axis_tdata_pmac,
  temac_misc_out1_tx_ts_axis_tdata_pmac,
  temac_misc_out2_tx_ts_axis_tvalid,
  temac_misc_out2_tx_ts_axis_tdata,
  temac_misc_out2_rx_ts_axis_tvalid,
  temac_misc_out2_rx_ts_axis_tdata,
  temac_misc_out2_rx_statistics_vector,
  temac_misc_out2_rx_statistics_valid,
  temac_misc_out2_tx_statistics_vector,
  temac_misc_out2_tx_statistics_valid,
  temac_misc_out2_rx_statistics_vector_pmac,
  temac_misc_out2_rx_statistics_valid_pmac,
  temac_misc_out2_tx_statistics_vector_pmac,
  temac_misc_out2_tx_statistics_valid_pmac,
  temac_misc_out2_rx_ts_axis_tvalid_pmac,
  temac_misc_out2_tx_ts_axis_tvalid_pmac,
  temac_misc_out2_rx_ts_axis_tdata_pmac,
  temac_misc_out2_tx_ts_axis_tdata_pmac,
  s_axi_araddr,
  s_axi_arready,
  s_axi_arvalid,
  s_axi_awaddr,
  s_axi_awready,
  s_axi_awvalid,
  s_axi_bready,
  s_axi_bresp,
  s_axi_bvalid,
  s_axi_rdata,
  s_axi_rready,
  s_axi_rresp,
  s_axi_rvalid,
  s_axi_wdata,
  s_axi_wready,
  s_axi_wvalid,
  ptp_timers_clk8k,
  ptp_timers_ns_field,
  ptp_timers_ns_field_1722,
  ptp_timers_s_field,
  ptp_timers_syntonised_nanosec_field,
  ptp_timers_syntonised_sec_field,
  rx_axis_be_tdata,
  rx_axis_be_tdest,
  rx_axis_be_tkeep,
  rx_axis_be_tlast,
  rx_axis_be_tready,
  rx_axis_be_tuser,
  rx_axis_be_tvalid,
  rx_axis_st_tdata,
  rx_axis_st_tdest,
  rx_axis_st_tkeep,
  rx_axis_st_tlast,
  rx_axis_st_tready,
  rx_axis_st_tuser,
  rx_axis_st_tvalid,
  mdio_external1_io,
  mdio_external1_mdc,
  mdio_external2_io,
  mdio_external2_mdc,
  tx_axis_be_tdata,
  tx_axis_be_tkeep,
  tx_axis_be_tlast,
  tx_axis_be_tready,
  tx_axis_be_tvalid,
  tx_axis_st_tdata,
  tx_axis_st_tkeep,
  tx_axis_st_tlast,
  tx_axis_st_tready,
  tx_axis_st_tvalid,
  rgmii1_rd,
  rgmii1_rx_ctl,
  rgmii1_rxc,
  rgmii1_td,
  rgmii1_tx_ctl,
  rgmii1_txc,
  rgmii2_rd,
  rgmii2_rx_ctl,
  rgmii2_rxc,
  rgmii2_td,
  rgmii2_tx_ctl,
  rgmii2_txc,
  rgmii_status1_duplex_status,
  rgmii_status1_link_speed,
  rgmii_status1_link_status,
  rgmii_status2_duplex_status,
  rgmii_status2_link_speed,
  rgmii_status2_link_status
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME host_txfifo_aclk, FREQ_HZ 200000000, PHASE 0, FREQ_TOLERANCE_HZ 0, CLK_DOMAIN kr260_tsn_rs485pmod_clk_wiz_0_0_clk_out1, ASSOCIATED_BUSIF tx_axis_be:tx_axis_st, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 host_txfifo_aclk CLK" *)
input wire host_txfifo_aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME host_rxfifo_aclk, FREQ_HZ 200000000, PHASE 0, FREQ_TOLERANCE_HZ 0, CLK_DOMAIN kr260_tsn_rs485pmod_clk_wiz_0_0_clk_out1, ASSOCIATED_BUSIF rx_axis_be:rx_axis_st, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 host_rxfifo_aclk CLK" *)
input wire host_rxfifo_aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_aclk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN kr260_tsn_rs485pmod_clk_wiz_0_0_clk_out1, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET s_axi_aresetn, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s_axi_aclk CLK" *)
input wire s_axi_aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME gtx_clk, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN kr260_tsn_rs485pmod_clk_wiz_0_0_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 gtx_clk CLK" *)
input wire gtx_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME gtx_clk90, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN kr260_tsn_rs485pmod_clk_wiz_0_0_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 gtx_clk90 CLK" *)
input wire gtx_clk90;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ref_clk, FREQ_HZ 300000000, PHASE 0, FREQ_TOLERANCE_HZ 0, CLK_DOMAIN kr260_tsn_rs485pmod_clk_wiz_0_0_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ref_clk CLK" *)
input wire refclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.glbl_rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.glbl_rstn RST" *)
input wire glbl_rstn;
input wire gtx_dcm_locked;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.interrupt_ptp_rx_1, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.interrupt_ptp_rx_1 INTERRUPT" *)
output wire interrupt_ptp_rx_1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.interrupt_ptp_tx_1, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.interrupt_ptp_tx_1 INTERRUPT" *)
output wire interrupt_ptp_tx_1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.mac_irq_1, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.mac_irq_1 INTERRUPT" *)
output wire mac_irq_1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.s_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.s_axi_aresetn RST" *)
input wire s_axi_aresetn;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.tsn_ep_scheduler_irq, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.tsn_ep_scheduler_irq INTERRUPT" *)
output wire tsn_ep_scheduler_irq;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.interrupt_ptp_timer, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.interrupt_ptp_timer INTERRUPT" *)
output wire interrupt_ptp_timer;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.interrupt_ptp_rx_2, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.interrupt_ptp_rx_2 INTERRUPT" *)
output wire interrupt_ptp_rx_2;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.interrupt_ptp_tx_2, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.interrupt_ptp_tx_2 INTERRUPT" *)
output wire interrupt_ptp_tx_2;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.mac_irq_2, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.mac_irq_2 INTERRUPT" *)
output wire mac_irq_2;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.tsn_switch_scheduler_irq_1, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.tsn_switch_scheduler_irq_1 INTERRUPT" *)
output wire tsn_switch_scheduler_irq_1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.tsn_switch_scheduler_irq_2, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.tsn_switch_scheduler_irq_2 INTERRUPT" *)
output wire tsn_switch_scheduler_irq_2;
output wire INIT_DONE;
output wire [63 : 0] ep_tadma_if_out;
output wire [2 : 1] misc_out_rx_enable;
output wire [2 : 1] misc_out_tx_enable;
output wire [2 : 1] misc_out_rx_mac_aclk;
output wire [2 : 1] misc_out_rx_reset;
output wire [2 : 1] misc_out_tx_mac_aclk;
output wire [2 : 1] misc_out_tx_reset;
output wire [511 : 0] misc_out_tsn_debug_hooks;
output wire [2 : 1] misc_out_speedis100;
output wire misc_out_switch_cam_init_done;
output wire temac_misc_out1_tx_ts_axis_tvalid;
output wire [127 : 0] temac_misc_out1_tx_ts_axis_tdata;
output wire temac_misc_out1_rx_ts_axis_tvalid;
output wire [127 : 0] temac_misc_out1_rx_ts_axis_tdata;
output wire [27 : 0] temac_misc_out1_rx_statistics_vector;
output wire temac_misc_out1_rx_statistics_valid;
output wire [31 : 0] temac_misc_out1_tx_statistics_vector;
output wire temac_misc_out1_tx_statistics_valid;
output wire [27 : 0] temac_misc_out1_rx_statistics_vector_pmac;
output wire temac_misc_out1_rx_statistics_valid_pmac;
output wire [31 : 0] temac_misc_out1_tx_statistics_vector_pmac;
output wire temac_misc_out1_tx_statistics_valid_pmac;
output wire temac_misc_out1_rx_ts_axis_tvalid_pmac;
output wire temac_misc_out1_tx_ts_axis_tvalid_pmac;
output wire [127 : 0] temac_misc_out1_rx_ts_axis_tdata_pmac;
output wire [127 : 0] temac_misc_out1_tx_ts_axis_tdata_pmac;
output wire temac_misc_out2_tx_ts_axis_tvalid;
output wire [127 : 0] temac_misc_out2_tx_ts_axis_tdata;
output wire temac_misc_out2_rx_ts_axis_tvalid;
output wire [127 : 0] temac_misc_out2_rx_ts_axis_tdata;
output wire [27 : 0] temac_misc_out2_rx_statistics_vector;
output wire temac_misc_out2_rx_statistics_valid;
output wire [31 : 0] temac_misc_out2_tx_statistics_vector;
output wire temac_misc_out2_tx_statistics_valid;
output wire [27 : 0] temac_misc_out2_rx_statistics_vector_pmac;
output wire temac_misc_out2_rx_statistics_valid_pmac;
output wire [31 : 0] temac_misc_out2_tx_statistics_vector_pmac;
output wire temac_misc_out2_tx_statistics_valid_pmac;
output wire temac_misc_out2_rx_ts_axis_tvalid_pmac;
output wire temac_misc_out2_tx_ts_axis_tvalid_pmac;
output wire [127 : 0] temac_misc_out2_rx_ts_axis_tdata_pmac;
output wire [127 : 0] temac_misc_out2_tx_ts_axis_tdata_pmac;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARADDR" *)
input wire [17 : 0] s_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *)
output wire s_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARVALID" *)
input wire s_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWADDR" *)
input wire [17 : 0] s_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *)
output wire s_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWVALID" *)
input wire s_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BREADY" *)
input wire s_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BRESP" *)
output wire [1 : 0] s_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BVALID" *)
output wire s_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *)
output wire [31 : 0] s_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RREADY" *)
input wire s_axi_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RRESP" *)
output wire [1 : 0] s_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *)
output wire s_axi_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WDATA" *)
input wire [31 : 0] s_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WREADY" *)
output wire s_axi_wready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 18, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN kr260_tsn_rs485pmod_clk_wiz_0_0_clk_out1, NUM_READ_THREADS 1\
, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WVALID" *)
input wire s_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:display_tsn_temac:ptp_timers:1.0 ptp_timers clk8k" *)
output wire ptp_timers_clk8k;
(* X_INTERFACE_INFO = "xilinx.com:display_tsn_temac:ptp_timers:1.0 ptp_timers ns_field" *)
output wire [31 : 0] ptp_timers_ns_field;
(* X_INTERFACE_INFO = "xilinx.com:display_tsn_temac:ptp_timers:1.0 ptp_timers ns_field_1722" *)
output wire [31 : 0] ptp_timers_ns_field_1722;
(* X_INTERFACE_INFO = "xilinx.com:display_tsn_temac:ptp_timers:1.0 ptp_timers s_field" *)
output wire [47 : 0] ptp_timers_s_field;
(* X_INTERFACE_INFO = "xilinx.com:display_tsn_temac:ptp_timers:1.0 ptp_timers syntonised_nanosec_field" *)
output wire [31 : 0] ptp_timers_syntonised_nanosec_field;
(* X_INTERFACE_INFO = "xilinx.com:display_tsn_temac:ptp_timers:1.0 ptp_timers syntonised_sec_field" *)
output wire [47 : 0] ptp_timers_syntonised_sec_field;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_axis_be TDATA" *)
output wire [31 : 0] rx_axis_be_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_axis_be TDEST" *)
output wire [2 : 0] rx_axis_be_tdest;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_axis_be TKEEP" *)
output wire [3 : 0] rx_axis_be_tkeep;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_axis_be TLAST" *)
output wire rx_axis_be_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_axis_be TREADY" *)
input wire rx_axis_be_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_axis_be TUSER" *)
output wire [31 : 0] rx_axis_be_tuser;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rx_axis_be, TDATA_NUM_BYTES 4, TDEST_WIDTH 3, TID_WIDTH 0, TUSER_WIDTH 32, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 200000000, PHASE 0, CLK_DOMAIN kr260_tsn_rs485pmod_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_axis_be TVALID" *)
output wire rx_axis_be_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_axis_st TDATA" *)
output wire [31 : 0] rx_axis_st_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_axis_st TDEST" *)
output wire [2 : 0] rx_axis_st_tdest;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_axis_st TKEEP" *)
output wire [3 : 0] rx_axis_st_tkeep;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_axis_st TLAST" *)
output wire rx_axis_st_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_axis_st TREADY" *)
input wire rx_axis_st_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_axis_st TUSER" *)
output wire [31 : 0] rx_axis_st_tuser;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rx_axis_st, TDATA_NUM_BYTES 4, TDEST_WIDTH 3, TID_WIDTH 0, TUSER_WIDTH 32, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 200000000, PHASE 0, CLK_DOMAIN kr260_tsn_rs485pmod_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_axis_st TVALID" *)
output wire rx_axis_st_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 mdio_external1 IO" *)
inout wire mdio_external1_io;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME mdio_external1, CAN_DEBUG false" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 mdio_external1 MDC" *)
output wire mdio_external1_mdc;
(* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 mdio_external2 IO" *)
inout wire mdio_external2_io;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME mdio_external2, CAN_DEBUG false" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 mdio_external2 MDC" *)
output wire mdio_external2_mdc;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx_axis_be TDATA" *)
input wire [31 : 0] tx_axis_be_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx_axis_be TKEEP" *)
input wire [3 : 0] tx_axis_be_tkeep;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx_axis_be TLAST" *)
input wire tx_axis_be_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx_axis_be TREADY" *)
output wire tx_axis_be_tready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME tx_axis_be, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 200000000, PHASE 0, CLK_DOMAIN kr260_tsn_rs485pmod_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx_axis_be TVALID" *)
input wire tx_axis_be_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx_axis_st TDATA" *)
input wire [31 : 0] tx_axis_st_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx_axis_st TKEEP" *)
input wire [3 : 0] tx_axis_st_tkeep;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx_axis_st TLAST" *)
input wire tx_axis_st_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx_axis_st TREADY" *)
output wire tx_axis_st_tready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME tx_axis_st, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 200000000, PHASE 0, CLK_DOMAIN kr260_tsn_rs485pmod_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx_axis_st TVALID" *)
input wire tx_axis_st_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii1 RD" *)
input wire [3 : 0] rgmii1_rd;
(* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii1 RX_CTL" *)
input wire rgmii1_rx_ctl;
(* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii1 RXC" *)
input wire rgmii1_rxc;
(* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii1 TD" *)
output wire [3 : 0] rgmii1_td;
(* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii1 TX_CTL" *)
output wire rgmii1_tx_ctl;
(* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii1 TXC" *)
output wire rgmii1_txc;
(* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii2 RD" *)
input wire [3 : 0] rgmii2_rd;
(* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii2 RX_CTL" *)
input wire rgmii2_rx_ctl;
(* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii2 RXC" *)
input wire rgmii2_rxc;
(* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii2 TD" *)
output wire [3 : 0] rgmii2_td;
(* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii2 TX_CTL" *)
output wire rgmii2_tx_ctl;
(* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii2 TXC" *)
output wire rgmii2_txc;
(* X_INTERFACE_INFO = "xilinx.com:display_tri_mode_ethernet_mac:rgmii_status:1.0 rgmii_status1 duplex_status" *)
output wire rgmii_status1_duplex_status;
(* X_INTERFACE_INFO = "xilinx.com:display_tri_mode_ethernet_mac:rgmii_status:1.0 rgmii_status1 link_speed" *)
output wire [1 : 0] rgmii_status1_link_speed;
(* X_INTERFACE_INFO = "xilinx.com:display_tri_mode_ethernet_mac:rgmii_status:1.0 rgmii_status1 link_status" *)
output wire rgmii_status1_link_status;
(* X_INTERFACE_INFO = "xilinx.com:display_tri_mode_ethernet_mac:rgmii_status:1.0 rgmii_status2 duplex_status" *)
output wire rgmii_status2_duplex_status;
(* X_INTERFACE_INFO = "xilinx.com:display_tri_mode_ethernet_mac:rgmii_status:1.0 rgmii_status2 link_speed" *)
output wire [1 : 0] rgmii_status2_link_speed;
(* X_INTERFACE_INFO = "xilinx.com:display_tri_mode_ethernet_mac:rgmii_status:1.0 rgmii_status2 link_status" *)
output wire rgmii_status2_link_status;

  bd_4503 inst (
    .host_txfifo_aclk(host_txfifo_aclk),
    .host_rxfifo_aclk(host_rxfifo_aclk),
    .s_axi_aclk(s_axi_aclk),
    .gtx_clk(gtx_clk),
    .gtx_clk90(gtx_clk90),
    .refclk(refclk),
    .glbl_rstn(glbl_rstn),
    .gtx_dcm_locked(gtx_dcm_locked),
    .interrupt_ptp_rx_1(interrupt_ptp_rx_1),
    .interrupt_ptp_tx_1(interrupt_ptp_tx_1),
    .mac_irq_1(mac_irq_1),
    .s_axi_aresetn(s_axi_aresetn),
    .tsn_ep_scheduler_irq(tsn_ep_scheduler_irq),
    .interrupt_ptp_timer(interrupt_ptp_timer),
    .interrupt_ptp_rx_2(interrupt_ptp_rx_2),
    .interrupt_ptp_tx_2(interrupt_ptp_tx_2),
    .mac_irq_2(mac_irq_2),
    .tsn_switch_scheduler_irq_1(tsn_switch_scheduler_irq_1),
    .tsn_switch_scheduler_irq_2(tsn_switch_scheduler_irq_2),
    .INIT_DONE(INIT_DONE),
    .ep_tadma_if_out(ep_tadma_if_out),
    .misc_out_rx_enable(misc_out_rx_enable),
    .misc_out_tx_enable(misc_out_tx_enable),
    .misc_out_rx_mac_aclk(misc_out_rx_mac_aclk),
    .misc_out_rx_reset(misc_out_rx_reset),
    .misc_out_tx_mac_aclk(misc_out_tx_mac_aclk),
    .misc_out_tx_reset(misc_out_tx_reset),
    .misc_out_tsn_debug_hooks(misc_out_tsn_debug_hooks),
    .misc_out_speedis100(misc_out_speedis100),
    .misc_out_switch_cam_init_done(misc_out_switch_cam_init_done),
    .temac_misc_out1_tx_ts_axis_tvalid(temac_misc_out1_tx_ts_axis_tvalid),
    .temac_misc_out1_tx_ts_axis_tdata(temac_misc_out1_tx_ts_axis_tdata),
    .temac_misc_out1_rx_ts_axis_tvalid(temac_misc_out1_rx_ts_axis_tvalid),
    .temac_misc_out1_rx_ts_axis_tdata(temac_misc_out1_rx_ts_axis_tdata),
    .temac_misc_out1_rx_statistics_vector(temac_misc_out1_rx_statistics_vector),
    .temac_misc_out1_rx_statistics_valid(temac_misc_out1_rx_statistics_valid),
    .temac_misc_out1_tx_statistics_vector(temac_misc_out1_tx_statistics_vector),
    .temac_misc_out1_tx_statistics_valid(temac_misc_out1_tx_statistics_valid),
    .temac_misc_out1_rx_statistics_vector_pmac(temac_misc_out1_rx_statistics_vector_pmac),
    .temac_misc_out1_rx_statistics_valid_pmac(temac_misc_out1_rx_statistics_valid_pmac),
    .temac_misc_out1_tx_statistics_vector_pmac(temac_misc_out1_tx_statistics_vector_pmac),
    .temac_misc_out1_tx_statistics_valid_pmac(temac_misc_out1_tx_statistics_valid_pmac),
    .temac_misc_out1_rx_ts_axis_tvalid_pmac(temac_misc_out1_rx_ts_axis_tvalid_pmac),
    .temac_misc_out1_tx_ts_axis_tvalid_pmac(temac_misc_out1_tx_ts_axis_tvalid_pmac),
    .temac_misc_out1_rx_ts_axis_tdata_pmac(temac_misc_out1_rx_ts_axis_tdata_pmac),
    .temac_misc_out1_tx_ts_axis_tdata_pmac(temac_misc_out1_tx_ts_axis_tdata_pmac),
    .temac_misc_out2_tx_ts_axis_tvalid(temac_misc_out2_tx_ts_axis_tvalid),
    .temac_misc_out2_tx_ts_axis_tdata(temac_misc_out2_tx_ts_axis_tdata),
    .temac_misc_out2_rx_ts_axis_tvalid(temac_misc_out2_rx_ts_axis_tvalid),
    .temac_misc_out2_rx_ts_axis_tdata(temac_misc_out2_rx_ts_axis_tdata),
    .temac_misc_out2_rx_statistics_vector(temac_misc_out2_rx_statistics_vector),
    .temac_misc_out2_rx_statistics_valid(temac_misc_out2_rx_statistics_valid),
    .temac_misc_out2_tx_statistics_vector(temac_misc_out2_tx_statistics_vector),
    .temac_misc_out2_tx_statistics_valid(temac_misc_out2_tx_statistics_valid),
    .temac_misc_out2_rx_statistics_vector_pmac(temac_misc_out2_rx_statistics_vector_pmac),
    .temac_misc_out2_rx_statistics_valid_pmac(temac_misc_out2_rx_statistics_valid_pmac),
    .temac_misc_out2_tx_statistics_vector_pmac(temac_misc_out2_tx_statistics_vector_pmac),
    .temac_misc_out2_tx_statistics_valid_pmac(temac_misc_out2_tx_statistics_valid_pmac),
    .temac_misc_out2_rx_ts_axis_tvalid_pmac(temac_misc_out2_rx_ts_axis_tvalid_pmac),
    .temac_misc_out2_tx_ts_axis_tvalid_pmac(temac_misc_out2_tx_ts_axis_tvalid_pmac),
    .temac_misc_out2_rx_ts_axis_tdata_pmac(temac_misc_out2_rx_ts_axis_tdata_pmac),
    .temac_misc_out2_tx_ts_axis_tdata_pmac(temac_misc_out2_tx_ts_axis_tdata_pmac),
    .s_axi_araddr(s_axi_araddr),
    .s_axi_arready(s_axi_arready),
    .s_axi_arvalid(s_axi_arvalid),
    .s_axi_awaddr(s_axi_awaddr),
    .s_axi_awready(s_axi_awready),
    .s_axi_awvalid(s_axi_awvalid),
    .s_axi_bready(s_axi_bready),
    .s_axi_bresp(s_axi_bresp),
    .s_axi_bvalid(s_axi_bvalid),
    .s_axi_rdata(s_axi_rdata),
    .s_axi_rready(s_axi_rready),
    .s_axi_rresp(s_axi_rresp),
    .s_axi_rvalid(s_axi_rvalid),
    .s_axi_wdata(s_axi_wdata),
    .s_axi_wready(s_axi_wready),
    .s_axi_wvalid(s_axi_wvalid),
    .ptp_timers_clk8k(ptp_timers_clk8k),
    .ptp_timers_ns_field(ptp_timers_ns_field),
    .ptp_timers_ns_field_1722(ptp_timers_ns_field_1722),
    .ptp_timers_s_field(ptp_timers_s_field),
    .ptp_timers_syntonised_nanosec_field(ptp_timers_syntonised_nanosec_field),
    .ptp_timers_syntonised_sec_field(ptp_timers_syntonised_sec_field),
    .rx_axis_be_tdata(rx_axis_be_tdata),
    .rx_axis_be_tdest(rx_axis_be_tdest),
    .rx_axis_be_tkeep(rx_axis_be_tkeep),
    .rx_axis_be_tlast(rx_axis_be_tlast),
    .rx_axis_be_tready(rx_axis_be_tready),
    .rx_axis_be_tuser(rx_axis_be_tuser),
    .rx_axis_be_tvalid(rx_axis_be_tvalid),
    .rx_axis_st_tdata(rx_axis_st_tdata),
    .rx_axis_st_tdest(rx_axis_st_tdest),
    .rx_axis_st_tkeep(rx_axis_st_tkeep),
    .rx_axis_st_tlast(rx_axis_st_tlast),
    .rx_axis_st_tready(rx_axis_st_tready),
    .rx_axis_st_tuser(rx_axis_st_tuser),
    .rx_axis_st_tvalid(rx_axis_st_tvalid),
    .mdio_external1_io(mdio_external1_io),
    .mdio_external1_mdc(mdio_external1_mdc),
    .mdio_external2_io(mdio_external2_io),
    .mdio_external2_mdc(mdio_external2_mdc),
    .tx_axis_be_tdata(tx_axis_be_tdata),
    .tx_axis_be_tkeep(tx_axis_be_tkeep),
    .tx_axis_be_tlast(tx_axis_be_tlast),
    .tx_axis_be_tready(tx_axis_be_tready),
    .tx_axis_be_tvalid(tx_axis_be_tvalid),
    .tx_axis_st_tdata(tx_axis_st_tdata),
    .tx_axis_st_tkeep(tx_axis_st_tkeep),
    .tx_axis_st_tlast(tx_axis_st_tlast),
    .tx_axis_st_tready(tx_axis_st_tready),
    .tx_axis_st_tvalid(tx_axis_st_tvalid),
    .rgmii1_rd(rgmii1_rd),
    .rgmii1_rx_ctl(rgmii1_rx_ctl),
    .rgmii1_rxc(rgmii1_rxc),
    .rgmii1_td(rgmii1_td),
    .rgmii1_tx_ctl(rgmii1_tx_ctl),
    .rgmii1_txc(rgmii1_txc),
    .rgmii2_rd(rgmii2_rd),
    .rgmii2_rx_ctl(rgmii2_rx_ctl),
    .rgmii2_rxc(rgmii2_rxc),
    .rgmii2_td(rgmii2_td),
    .rgmii2_tx_ctl(rgmii2_tx_ctl),
    .rgmii2_txc(rgmii2_txc),
    .rgmii_status1_duplex_status(rgmii_status1_duplex_status),
    .rgmii_status1_link_speed(rgmii_status1_link_speed),
    .rgmii_status1_link_status(rgmii_status1_link_status),
    .rgmii_status2_duplex_status(rgmii_status2_duplex_status),
    .rgmii_status2_link_speed(rgmii_status2_link_speed),
    .rgmii_status2_link_status(rgmii_status2_link_status)
  );
endmodule
