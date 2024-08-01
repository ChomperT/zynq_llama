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


// IP VLNV: xilinx.com:ip:tsn_endpoint_ethernet_mac_block:1.0
// IP Revision: 14

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module bd_4503_tsn_endpoint_block_0_0 (
  gtx_clk,
  refclk,
  glbl_rstn,
  rx_enable,
  rx_mac_aclk,
  rx_reset,
  tx_mac_aclk,
  tx_reset,
  rtc_nanosec_field,
  rtc_sec_field,
  syntonised_nanosec_field,
  syntonised_sec_field,
  rtc_nanosec_field_in,
  rtc_sec_field_in,
  syntonised_nanosec_field_in,
  syntonised_sec_field_in,
  rtc_nanosec_field_1722_in,
  clk8k_in,
  clk8k,
  rtc_nanosec_field_1722,
  tsn_debug_hooks,
  tx_enable,
  speedis100,
  interrupt_ptp_rx,
  interrupt_ptp_tx,
  interrupt_ptp_v1_rx,
  interrupt_ptp_v1_tx,
  interrupt_ptp_rx_1,
  interrupt_ptp_rx_2,
  interrupt_ptp_tx_1,
  interrupt_ptp_tx_2,
  interrupt_ptp_v1_rx_1,
  interrupt_ptp_v1_rx_2,
  interrupt_ptp_v1_tx_1,
  interrupt_ptp_v1_tx_2,
  host_txfifo_aclk,
  host_rxfifo_aclk,
  switch_cam_init_done,
  mac_irq_1,
  mac_irq_2,
  tsn_switch_scheduler_irq_1,
  tsn_switch_scheduler_irq_2,
  tsn_ep_scheduler_irq,
  s_axi_awaddr,
  s_axi_araddr,
  s_axi_aclk,
  s_axi_aresetn,
  s_axi_awvalid,
  s_axi_wdata,
  s_axi_wvalid,
  s_axi_bready,
  s_axi_arvalid,
  s_axi_rready,
  bus2ip_clk,
  bus2ip_reset,
  bus2ip_addr,
  bus2ip_data,
  bus2ip_rdce,
  bus2ip_wrce,
  bus2ip_cs_mac1,
  ip2bus_rdack_mac1,
  ip2bus_wrack_mac1,
  ip2bus_error_mac1,
  ip2bus_data_mac1,
  st_rx_axis_host_tready,
  st_tx_axis_host_tdata,
  st_tx_axis_host_tkeep,
  st_tx_axis_host_tvalid,
  st_tx_axis_host_tlast,
  be_rx_axis_host_tready,
  be_tx_axis_host_tdata,
  be_tx_axis_host_tkeep,
  be_tx_axis_host_tvalid,
  be_tx_axis_host_tlast,
  s_axi_awready,
  s_axi_wready,
  s_axi_bresp,
  s_axi_bvalid,
  s_axi_arready,
  s_axi_rdata,
  s_axi_rresp,
  s_axi_rvalid,
  st_rx_axis_host_tdata,
  st_rx_axis_host_tdest,
  st_rx_axis_host_tuser,
  st_rx_axis_host_tkeep,
  st_rx_axis_host_tvalid,
  st_rx_axis_host_tlast,
  st_tx_axis_host_tready,
  be_rx_axis_host_tdata,
  be_rx_axis_host_tdest,
  be_rx_axis_host_tuser,
  be_rx_axis_host_tkeep,
  be_rx_axis_host_tvalid,
  be_rx_axis_host_tlast,
  be_tx_axis_host_tready,
  tx_axis_pmac_tdata,
  tx_axis_pmac_tvalid,
  tx_axis_pmac_tlast,
  tx_axis_pmac_tuser,
  tx_axis_pmac_tready,
  tx_axis_mac_tdata,
  tx_axis_mac_tvalid,
  tx_axis_mac_tlast,
  tx_axis_mac_tuser,
  tx_axis_mac_tready,
  rx_axis_pmac_tdata,
  rx_axis_pmac_tvalid,
  rx_axis_pmac_tlast,
  rx_axis_pmac_tuser,
  rx_axis_mac_tdata,
  rx_axis_mac_tvalid,
  rx_axis_mac_tlast,
  rx_axis_mac_tuser,
  rx_mac_reset,
  preemption_signal_vector,
  rx_axis_pmac_st_filter_tuser,
  rx_axis_pmac_av_filter_tuser,
  rx_axis_st_filter_tuser,
  rx_axis_av_filter_tuser,
  int_mgmt_host_reset_out,
  tx_ptp_frame_available,
  tx_ptp_frame_granted_for_transmission,
  tx_scheduler_internal_overhead_tsn,
  tx_mac_reset,
  core_hold_disabled_override_pmac,
  hold_request_pmac,
  txd_byte_count_pmac,
  ptp_traffic_allowed_reg,
  ep_tadma_if_out,
  ep_tadma_if_in,
  rx_enable_in,
  rx_mac_aclk_in,
  tx_enable_in,
  tx_mac_aclk_in,
  mac_debug_in,
  speedis100_in,
  mac_irq,
  gtx_clk_reset_reg,
  ptp_current_time_sw,
  mac_rx_clk,
  m_axis_rx_tdata,
  m_axis_rx_tkeep,
  m_axis_rx_tvalid,
  m_axis_rx_tuser,
  m_axis_rx_tlast,
  m_axis_rx_ctl,
  mac_tx_clk,
  s_axis_tx_tdata,
  s_axis_tx_tkeep,
  s_axis_tx_tvalid,
  s_axis_tx_tlast,
  s_axis_tx_tuser,
  s_axis_tx_tready,
  s_axis_tx_tdata_ep,
  s_axis_tx_tkeep_ep,
  s_axis_tx_tvalid_ep,
  s_axis_tx_tlast_ep,
  s_axis_tx_tuser_ep,
  s_axis_tx_tdest_ep,
  s_axis_tx_tready_ep,
  s_axis_emac_tx_tdata,
  s_axis_emac_tx_tvalid,
  s_axis_emac_tx_tlast,
  s_axis_emac_tx_tuser,
  s_axis_emac_tx_tready,
  switch_pfc_register_in,
  bus2ip_cs_mac2,
  ip2bus_rdack_mac2,
  ip2bus_wrack_mac2,
  ip2bus_error_mac2,
  ip2bus_data_mac2,
  int_mgmt_host_reset_out_reg_n_switch,
  s_axi_switch_rready,
  s_axi_switch_bready,
  s_axi_switch_arvalid,
  s_axi_switch_awvalid,
  s_axi_switch_wvalid,
  s_axi_switch_arprot,
  s_axi_switch_awprot,
  s_axi_switch_araddr_sw,
  s_axi_switch_awaddr_sw,
  s_axi_switch_wstrb,
  s_axi_switch_wdata,
  s_axi_switch_arready,
  s_axi_switch_awready,
  s_axi_switch_wready,
  s_axi_switch_rvalid,
  s_axi_switch_bvalid,
  s_axi_switch_bresp,
  s_axi_switch_rresp,
  s_axi_switch_rdata,
  switch_current_gate_states_out_i2,
  switch_requesting_queue_valid,
  switch_requesting_queue,
  switch_gate_masks_out_i,
  switch_guard_band_nack,
  switch_guard_band_ack,
  switch_gate_queue_status,
  transmission_overrun_count_incr,
  mactx_gate_qactive,
  switch_max_frame_size,
  switch_mactx_frame_len,
  e_current_gate_states_out_i,
  e_gate_masks_out,
  e_requesting_queue,
  e_mactx_gate_qactive,
  e_requesting_queue_valid,
  e_guard_band_nack,
  e_guard_band_ack,
  e_transmission_overrun_count_incr,
  e_switch_mactx_frame_len,
  e_switch_gate_queue_status,
  macrx_pfc,
  mactx_pfc,
  switch_be_pkt_byte_count_sw,
  tx_ptp_frame_allowed,
  mac_1_debug_out,
  mac_2_debug_out
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME gtx_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 gtx_clk CLK" *)
input wire gtx_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ref_clk, PHASE 0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ref_clk CLK" *)
input wire refclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME glbl_rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 glbl_rstn RST" *)
input wire glbl_rstn;
output wire [2 : 1] rx_enable;
output wire [2 : 1] rx_mac_aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rx_reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rx_reset RST" *)
output wire [2 : 1] rx_reset;
output wire [2 : 1] tx_mac_aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME tx_reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 tx_reset RST" *)
output wire [2 : 1] tx_reset;
(* X_INTERFACE_INFO = "xilinx.com:display_tsn_temac:ptp_timers:1.0 ptp_timers ns_field" *)
output wire [31 : 0] rtc_nanosec_field;
(* X_INTERFACE_INFO = "xilinx.com:display_tsn_temac:ptp_timers:1.0 ptp_timers s_field" *)
output wire [47 : 0] rtc_sec_field;
(* X_INTERFACE_INFO = "xilinx.com:display_tsn_temac:ptp_timers:1.0 ptp_timers syntonised_nanosec_field" *)
output wire [31 : 0] syntonised_nanosec_field;
(* X_INTERFACE_INFO = "xilinx.com:display_tsn_temac:ptp_timers:1.0 ptp_timers syntonised_sec_field" *)
output wire [47 : 0] syntonised_sec_field;
input wire [31 : 0] rtc_nanosec_field_in;
input wire [47 : 0] rtc_sec_field_in;
input wire [31 : 0] syntonised_nanosec_field_in;
input wire [47 : 0] syntonised_sec_field_in;
input wire [31 : 0] rtc_nanosec_field_1722_in;
input wire clk8k_in;
(* X_INTERFACE_INFO = "xilinx.com:display_tsn_temac:ptp_timers:1.0 ptp_timers clk8k" *)
output wire clk8k;
(* X_INTERFACE_INFO = "xilinx.com:display_tsn_temac:ptp_timers:1.0 ptp_timers ns_field_1722" *)
output wire [31 : 0] rtc_nanosec_field_1722;
output wire [511 : 0] tsn_debug_hooks;
output wire [2 : 1] tx_enable;
output wire [2 : 1] speedis100;
input wire [2 : 1] interrupt_ptp_rx;
input wire [2 : 1] interrupt_ptp_tx;
input wire [2 : 1] interrupt_ptp_v1_rx;
input wire [2 : 1] interrupt_ptp_v1_tx;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt_ptp_rx_1, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt_ptp_rx_1 INTERRUPT" *)
output wire interrupt_ptp_rx_1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt_ptp_rx_2, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt_ptp_rx_2 INTERRUPT" *)
output wire interrupt_ptp_rx_2;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt_ptp_tx_1, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt_ptp_tx_1 INTERRUPT" *)
output wire interrupt_ptp_tx_1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt_ptp_tx_2, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt_ptp_tx_2 INTERRUPT" *)
output wire interrupt_ptp_tx_2;
output wire interrupt_ptp_v1_rx_1;
output wire interrupt_ptp_v1_rx_2;
output wire interrupt_ptp_v1_tx_1;
output wire interrupt_ptp_v1_tx_2;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME host_txfifo_aclk, ASSOCIATED_BUSIF tx_axis_st:tx_axis_res:tx_axis_be, PHASE 0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 host_txfifo_aclk CLK" *)
input wire host_txfifo_aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME host_rxfifo_aclk, ASSOCIATED_BUSIF rx_axis_st:rx_axis_res:rx_axis_be:rx_axis_ps, PHASE 0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 host_rxfifo_aclk CLK" *)
input wire host_rxfifo_aclk;
output wire switch_cam_init_done;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME mac_irq_1, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 mac_irq_1 INTERRUPT" *)
output wire mac_irq_1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME mac_irq_2, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 mac_irq_2 INTERRUPT" *)
output wire mac_irq_2;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME tsn_switch_scheduler_irq_1, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 tsn_switch_scheduler_irq_1 INTERRUPT" *)
output wire tsn_switch_scheduler_irq_1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME tsn_switch_scheduler_irq_2, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 tsn_switch_scheduler_irq_2 INTERRUPT" *)
output wire tsn_switch_scheduler_irq_2;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME tsn_ep_scheduler_irq, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 tsn_ep_scheduler_irq INTERRUPT" *)
output wire tsn_ep_scheduler_irq;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWADDR" *)
input wire [17 : 0] s_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARADDR" *)
input wire [17 : 0] s_axi_araddr;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_aclk, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s_axi_aclk CLK" *)
input wire s_axi_aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s_axi_aresetn RST" *)
input wire s_axi_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWVALID" *)
input wire s_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WDATA" *)
input wire [31 : 0] s_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WVALID" *)
input wire s_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BREADY" *)
input wire s_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARVALID" *)
input wire s_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RREADY" *)
input wire s_axi_rready;
output wire bus2ip_clk;
output wire bus2ip_reset;
output wire [17 : 0] bus2ip_addr;
output wire [31 : 0] bus2ip_data;
output wire bus2ip_rdce;
output wire bus2ip_wrce;
output wire bus2ip_cs_mac1;
input wire ip2bus_rdack_mac1;
input wire ip2bus_wrack_mac1;
input wire ip2bus_error_mac1;
input wire [31 : 0] ip2bus_data_mac1;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_axis_st TREADY" *)
input wire st_rx_axis_host_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx_axis_st TDATA" *)
input wire [31 : 0] st_tx_axis_host_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx_axis_st TKEEP" *)
input wire [3 : 0] st_tx_axis_host_tkeep;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx_axis_st TVALID" *)
input wire st_tx_axis_host_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx_axis_st TLAST" *)
input wire st_tx_axis_host_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_axis_be TREADY" *)
input wire be_rx_axis_host_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx_axis_be TDATA" *)
input wire [31 : 0] be_tx_axis_host_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx_axis_be TKEEP" *)
input wire [3 : 0] be_tx_axis_host_tkeep;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx_axis_be TVALID" *)
input wire be_tx_axis_host_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx_axis_be TLAST" *)
input wire be_tx_axis_host_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *)
output wire s_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WREADY" *)
output wire s_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BRESP" *)
output wire [1 : 0] s_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BVALID" *)
output wire s_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *)
output wire s_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *)
output wire [31 : 0] s_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RRESP" *)
output wire [1 : 0] s_axi_rresp;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 18, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_B\
ITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *)
output wire s_axi_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_axis_st TDATA" *)
output wire [31 : 0] st_rx_axis_host_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_axis_st TDEST" *)
output wire [2 : 0] st_rx_axis_host_tdest;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_axis_st TUSER" *)
output wire [31 : 0] st_rx_axis_host_tuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_axis_st TKEEP" *)
output wire [3 : 0] st_rx_axis_host_tkeep;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_axis_st TVALID" *)
output wire st_rx_axis_host_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rx_axis_st, TDATA_NUM_BYTES 4, TDEST_WIDTH 3, TID_WIDTH 0, TUSER_WIDTH 32, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_axis_st TLAST" *)
output wire st_rx_axis_host_tlast;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME tx_axis_st, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx_axis_st TREADY" *)
output wire st_tx_axis_host_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_axis_be TDATA" *)
output wire [31 : 0] be_rx_axis_host_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_axis_be TDEST" *)
output wire [2 : 0] be_rx_axis_host_tdest;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_axis_be TUSER" *)
output wire [31 : 0] be_rx_axis_host_tuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_axis_be TKEEP" *)
output wire [3 : 0] be_rx_axis_host_tkeep;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_axis_be TVALID" *)
output wire be_rx_axis_host_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rx_axis_be, TDATA_NUM_BYTES 4, TDEST_WIDTH 3, TID_WIDTH 0, TUSER_WIDTH 32, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_axis_be TLAST" *)
output wire be_rx_axis_host_tlast;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME tx_axis_be, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx_axis_be TREADY" *)
output wire be_tx_axis_host_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx_axis_pmac TDATA" *)
output wire [15 : 0] tx_axis_pmac_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx_axis_pmac TVALID" *)
output wire [1 : 0] tx_axis_pmac_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx_axis_pmac TLAST" *)
output wire [1 : 0] tx_axis_pmac_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx_axis_pmac TUSER" *)
output wire [1 : 0] tx_axis_pmac_tuser;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME tx_axis_pmac, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 2, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx_axis_pmac TREADY" *)
input wire [1 : 0] tx_axis_pmac_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx_axis_mac TDATA" *)
output wire [15 : 0] tx_axis_mac_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx_axis_mac TVALID" *)
output wire [1 : 0] tx_axis_mac_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx_axis_mac TLAST" *)
output wire [1 : 0] tx_axis_mac_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx_axis_mac TUSER" *)
output wire [1 : 0] tx_axis_mac_tuser;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME tx_axis_mac, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 2, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx_axis_mac TREADY" *)
input wire [1 : 0] tx_axis_mac_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_axis_pmac TDATA" *)
input wire [15 : 0] rx_axis_pmac_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_axis_pmac TVALID" *)
input wire [1 : 0] rx_axis_pmac_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_axis_pmac TLAST" *)
input wire [1 : 0] rx_axis_pmac_tlast;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rx_axis_pmac, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 2, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_axis_pmac TUSER" *)
input wire [1 : 0] rx_axis_pmac_tuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_axis_mac TDATA" *)
input wire [15 : 0] rx_axis_mac_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_axis_mac TVALID" *)
input wire [1 : 0] rx_axis_mac_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_axis_mac TLAST" *)
input wire [1 : 0] rx_axis_mac_tlast;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rx_axis_mac, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 2, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_axis_mac TUSER" *)
input wire [1 : 0] rx_axis_mac_tuser;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rx_mac_reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rx_mac_reset RST" *)
input wire [1 : 0] rx_mac_reset;
input wire [1023 : 0] preemption_signal_vector;
input wire rx_axis_pmac_st_filter_tuser;
input wire rx_axis_pmac_av_filter_tuser;
input wire rx_axis_st_filter_tuser;
input wire rx_axis_av_filter_tuser;
input wire int_mgmt_host_reset_out;
input wire [1 : 0] tx_ptp_frame_available;
input wire [1 : 0] tx_ptp_frame_granted_for_transmission;
input wire [63 : 0] tx_scheduler_internal_overhead_tsn;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME tx_mac_reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 tx_mac_reset RST" *)
input wire [1 : 0] tx_mac_reset;
output wire [1 : 0] core_hold_disabled_override_pmac;
output wire [1 : 0] hold_request_pmac;
output wire [10 : 0] txd_byte_count_pmac;
output wire ptp_traffic_allowed_reg;
output wire [63 : 0] ep_tadma_if_out;
input wire [63 : 0] ep_tadma_if_in;
input wire [1 : 0] rx_enable_in;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rx_mac_aclk_in, ASSOCIATED_BUSIF rx_axis_pmac:rx_axis_mac, ASSOCIATED_ASYNC_RESET rx_axi_rstn:rx_reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 rx_mac_aclk_in CLK" *)
input wire [1 : 0] rx_mac_aclk_in;
input wire [1 : 0] tx_enable_in;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME tx_mac_aclk_in, ASSOCIATED_BUSIF tx_axis_pmac:tx_axis_mac, ASSOCIATED_ASYNC_RESET tx_axi_rstn:tx_reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 tx_mac_aclk_in CLK" *)
input wire [1 : 0] tx_mac_aclk_in;
input wire [511 : 0] mac_debug_in;
input wire [1 : 0] speedis100_in;
input wire mac_irq;
output wire gtx_clk_reset_reg;
output wire [79 : 0] ptp_current_time_sw;
output wire [2 : 0] mac_rx_clk;
output wire [23 : 0] m_axis_rx_tdata;
output wire [2 : 0] m_axis_rx_tkeep;
output wire [2 : 0] m_axis_rx_tvalid;
output wire [2 : 0] m_axis_rx_tuser;
output wire [2 : 0] m_axis_rx_tlast;
output wire [5 : 0] m_axis_rx_ctl;
output wire [2 : 0] mac_tx_clk;
input wire [63 : 0] s_axis_tx_tdata;
input wire [7 : 0] s_axis_tx_tkeep;
input wire [1 : 0] s_axis_tx_tvalid;
input wire [1 : 0] s_axis_tx_tlast;
input wire [7 : 0] s_axis_tx_tuser;
output wire [1 : 0] s_axis_tx_tready;
input wire [63 : 0] s_axis_tx_tdata_ep;
input wire [7 : 0] s_axis_tx_tkeep_ep;
input wire [1 : 0] s_axis_tx_tvalid_ep;
input wire [1 : 0] s_axis_tx_tlast_ep;
input wire [63 : 0] s_axis_tx_tuser_ep;
input wire [5 : 0] s_axis_tx_tdest_ep;
output wire [1 : 0] s_axis_tx_tready_ep;
input wire [23 : 0] s_axis_emac_tx_tdata;
input wire [2 : 0] s_axis_emac_tx_tvalid;
input wire [2 : 0] s_axis_emac_tx_tlast;
input wire [2 : 0] s_axis_emac_tx_tuser;
output wire [2 : 0] s_axis_emac_tx_tready;
input wire [31 : 0] switch_pfc_register_in;
output wire bus2ip_cs_mac2;
input wire ip2bus_rdack_mac2;
input wire ip2bus_wrack_mac2;
input wire ip2bus_error_mac2;
input wire [31 : 0] ip2bus_data_mac2;
output wire int_mgmt_host_reset_out_reg_n_switch;
output wire s_axi_switch_rready;
output wire s_axi_switch_bready;
output wire s_axi_switch_arvalid;
output wire s_axi_switch_awvalid;
output wire s_axi_switch_wvalid;
output wire [2 : 0] s_axi_switch_arprot;
output wire [2 : 0] s_axi_switch_awprot;
output wire [31 : 0] s_axi_switch_araddr_sw;
output wire [31 : 0] s_axi_switch_awaddr_sw;
output wire [3 : 0] s_axi_switch_wstrb;
output wire [31 : 0] s_axi_switch_wdata;
input wire s_axi_switch_arready;
input wire s_axi_switch_awready;
input wire s_axi_switch_wready;
input wire s_axi_switch_rvalid;
input wire s_axi_switch_bvalid;
input wire [1 : 0] s_axi_switch_bresp;
input wire [1 : 0] s_axi_switch_rresp;
input wire [31 : 0] s_axi_switch_rdata;
output wire [23 : 0] switch_current_gate_states_out_i2;
input wire [2 : 0] switch_requesting_queue_valid;
input wire [23 : 0] switch_requesting_queue;
output wire [23 : 0] switch_gate_masks_out_i;
output wire [2 : 0] switch_guard_band_nack;
output wire [2 : 0] switch_guard_band_ack;
input wire [23 : 0] switch_gate_queue_status;
input wire [23 : 0] transmission_overrun_count_incr;
input wire [23 : 0] mactx_gate_qactive;
input wire [31 : 0] switch_max_frame_size;
input wire [47 : 0] switch_mactx_frame_len;
output wire [2 : 0] e_current_gate_states_out_i;
output wire [2 : 0] e_gate_masks_out;
input wire [2 : 0] e_requesting_queue;
input wire [2 : 0] e_mactx_gate_qactive;
input wire [2 : 0] e_requesting_queue_valid;
output wire [2 : 0] e_guard_band_nack;
output wire [2 : 0] e_guard_band_ack;
input wire [2 : 0] e_transmission_overrun_count_incr;
input wire [47 : 0] e_switch_mactx_frame_len;
input wire [2 : 0] e_switch_gate_queue_status;
output wire [23 : 0] macrx_pfc;
input wire [23 : 0] mactx_pfc;
output wire [31 : 0] switch_be_pkt_byte_count_sw;
output wire [1 : 0] tx_ptp_frame_allowed;
input wire [31 : 0] mac_1_debug_out;
input wire [31 : 0] mac_2_debug_out;

  bd_4503_tsn_endpoint_block_0_0_tsn_endpoint_ethernet_mac_block_v1_0_14 #(
    .EP_SWITCH(1),
    .NUM_PORTS(3),
    .C_FAMILY("zynquplus"),
    .VERSION_INFO(16780800),
    .EN_SWITCH_CASCADE(0),
    .EN_EP_PKT_SWITCH(0),
    .USE_ULTRA_RAM(1),
    .NUM_PORTS_RI(1),
    .NUM_PORTS_V(0),
    .ST_MAX_FRM_SIZE_SUPPORTED(2000),
    .RES_MAX_FRM_SIZE_SUPPORTED(2000),
    .BE_MAX_FRM_SIZE_SUPPORTED(2000),
    .C_1588(1),
    .SYNTONIZED_TIMESTAMPS(0),
    .STORE_AND_FORWARD(1),
    .DEBUG_HOOKS(1),
    .NUM_PRIORITIES(2),
    .EN_FRAME_PREEMPTION_SUPPORT(1),
    .EN_FRAME_PREEMPTION_SUPPORT_MAC_2(1),
    .EN_QBV_SCHEDULING_SUPPORT(1),
    .ENABLE_EP_TADMA_INTERFACE(1),
    .EN_TX_CUSTOM_TIMESTAMP(1),
    .EN_RX_CUSTOM_TIMESTAMP(1),
    .PTP_BRAM_PARTITION_SIZE(256),
    .NUM_PTP_RX_MSG(16),
    .PTP_V1_BRAM_PARTITION_SIZE(256),
    .EN_1588_PTP_V1_SUPPORT(0),
    .TSN_IPI_STREAM_CONNECT("tx_axis_st ta_dma_0 rx_axis_st axis_switch_0 tx_axis_be axi_mcdma_0 rx_axis_be axis_switch_0")
  ) inst (
    .gtx_clk(gtx_clk),
    .gtx_clk90(1'B0),
    .gtx_clk90_out(),
    .refclk(refclk),
    .glbl_rstn(glbl_rstn),
    .clk_enable(1'B1),
    .rx_usr_clk2(1'B1),
    .clk_enable_rx(1'B1),
    .rx_axi_rstn(1'B0),
    .tx_axi_rstn(1'B0),
    .rx_enable(rx_enable),
    .rx_mac_aclk(rx_mac_aclk),
    .rx_reset(rx_reset),
    .tx_mac_aclk(tx_mac_aclk),
    .tx_reset(tx_reset),
    .rtc_nanosec_field(rtc_nanosec_field),
    .rtc_sec_field(rtc_sec_field),
    .syntonised_nanosec_field(syntonised_nanosec_field),
    .syntonised_sec_field(syntonised_sec_field),
    .rtc_nanosec_field_in(rtc_nanosec_field_in),
    .rtc_sec_field_in(rtc_sec_field_in),
    .syntonised_nanosec_field_in(syntonised_nanosec_field_in),
    .syntonised_sec_field_in(syntonised_sec_field_in),
    .rtc_nanosec_field_1722_in(rtc_nanosec_field_1722_in),
    .clk8k_in(clk8k_in),
    .clk8k(clk8k),
    .rtc_nanosec_field_1722(rtc_nanosec_field_1722),
    .tsn_debug_hooks(tsn_debug_hooks),
    .tx_enable(tx_enable),
    .speedis100(speedis100),
    .interrupt_ptp_rx(interrupt_ptp_rx),
    .interrupt_ptp_tx(interrupt_ptp_tx),
    .interrupt_ptp_v1_rx(interrupt_ptp_v1_rx),
    .interrupt_ptp_v1_tx(interrupt_ptp_v1_tx),
    .interrupt_ptp_rx_1(interrupt_ptp_rx_1),
    .interrupt_ptp_rx_2(interrupt_ptp_rx_2),
    .interrupt_ptp_tx_1(interrupt_ptp_tx_1),
    .interrupt_ptp_tx_2(interrupt_ptp_tx_2),
    .interrupt_ptp_v1_rx_1(interrupt_ptp_v1_rx_1),
    .interrupt_ptp_v1_rx_2(interrupt_ptp_v1_rx_2),
    .interrupt_ptp_v1_tx_1(interrupt_ptp_v1_tx_1),
    .interrupt_ptp_v1_tx_2(interrupt_ptp_v1_tx_2),
    .host_txfifo_aclk(host_txfifo_aclk),
    .host_rxfifo_aclk(host_rxfifo_aclk),
    .switch_cam_init_done(switch_cam_init_done),
    .mac_irq_1(mac_irq_1),
    .mac_irq_2(mac_irq_2),
    .tsn_switch_scheduler_irq_1(tsn_switch_scheduler_irq_1),
    .tsn_switch_scheduler_irq_2(tsn_switch_scheduler_irq_2),
    .tsn_ep_scheduler_irq(tsn_ep_scheduler_irq),
    .s_axi_awaddr(s_axi_awaddr),
    .s_axi_araddr(s_axi_araddr),
    .s_axi_aclk(s_axi_aclk),
    .s_axi_aresetn(s_axi_aresetn),
    .s_axi_awvalid(s_axi_awvalid),
    .s_axi_wdata(s_axi_wdata),
    .s_axi_wvalid(s_axi_wvalid),
    .s_axi_bready(s_axi_bready),
    .s_axi_arvalid(s_axi_arvalid),
    .s_axi_rready(s_axi_rready),
    .bus2ip_clk(bus2ip_clk),
    .bus2ip_reset(bus2ip_reset),
    .bus2ip_addr(bus2ip_addr),
    .bus2ip_data(bus2ip_data),
    .bus2ip_rdce(bus2ip_rdce),
    .bus2ip_wrce(bus2ip_wrce),
    .bus2ip_cs_mac1(bus2ip_cs_mac1),
    .ip2bus_rdack_mac1(ip2bus_rdack_mac1),
    .ip2bus_wrack_mac1(ip2bus_wrack_mac1),
    .ip2bus_error_mac1(ip2bus_error_mac1),
    .ip2bus_data_mac1(ip2bus_data_mac1),
    .st_rx_axis_host_tready(st_rx_axis_host_tready),
    .st_tx_axis_host_tdata(st_tx_axis_host_tdata),
    .st_tx_axis_host_tkeep(st_tx_axis_host_tkeep),
    .st_tx_axis_host_tvalid(st_tx_axis_host_tvalid),
    .st_tx_axis_host_tlast(st_tx_axis_host_tlast),
    .res_rx_axis_host_tready(1'B1),
    .res_tx_axis_host_tdata(32'B0),
    .res_tx_axis_host_tkeep(4'HF),
    .res_tx_axis_host_tvalid(1'B0),
    .res_tx_axis_host_tlast(1'B0),
    .be_rx_axis_host_tready(be_rx_axis_host_tready),
    .be_tx_axis_host_tdata(be_tx_axis_host_tdata),
    .be_tx_axis_host_tkeep(be_tx_axis_host_tkeep),
    .be_tx_axis_host_tvalid(be_tx_axis_host_tvalid),
    .be_tx_axis_host_tlast(be_tx_axis_host_tlast),
    .s_axi_awready(s_axi_awready),
    .s_axi_wready(s_axi_wready),
    .s_axi_bresp(s_axi_bresp),
    .s_axi_bvalid(s_axi_bvalid),
    .s_axi_arready(s_axi_arready),
    .s_axi_rdata(s_axi_rdata),
    .s_axi_rresp(s_axi_rresp),
    .s_axi_rvalid(s_axi_rvalid),
    .st_rx_axis_host_tdata(st_rx_axis_host_tdata),
    .st_rx_axis_host_tdest(st_rx_axis_host_tdest),
    .st_rx_axis_host_tuser(st_rx_axis_host_tuser),
    .st_rx_axis_host_tkeep(st_rx_axis_host_tkeep),
    .st_rx_axis_host_tvalid(st_rx_axis_host_tvalid),
    .st_rx_axis_host_tlast(st_rx_axis_host_tlast),
    .st_tx_axis_host_tready(st_tx_axis_host_tready),
    .res_rx_axis_host_tdata(),
    .res_rx_axis_host_tdest(),
    .res_rx_axis_host_tuser(),
    .res_rx_axis_host_tkeep(),
    .res_rx_axis_host_tvalid(),
    .res_rx_axis_host_tlast(),
    .res_tx_axis_host_tready(),
    .be_rx_axis_host_tdata(be_rx_axis_host_tdata),
    .be_rx_axis_host_tdest(be_rx_axis_host_tdest),
    .be_rx_axis_host_tuser(be_rx_axis_host_tuser),
    .be_rx_axis_host_tkeep(be_rx_axis_host_tkeep),
    .be_rx_axis_host_tvalid(be_rx_axis_host_tvalid),
    .be_rx_axis_host_tlast(be_rx_axis_host_tlast),
    .be_tx_axis_host_tready(be_tx_axis_host_tready),
    .tx_axis_pmac_tdata(tx_axis_pmac_tdata),
    .tx_axis_pmac_tvalid(tx_axis_pmac_tvalid),
    .tx_axis_pmac_tlast(tx_axis_pmac_tlast),
    .tx_axis_pmac_tuser(tx_axis_pmac_tuser),
    .tx_axis_pmac_tready(tx_axis_pmac_tready),
    .tx_axis_mac_tdata(tx_axis_mac_tdata),
    .tx_axis_mac_tvalid(tx_axis_mac_tvalid),
    .tx_axis_mac_tlast(tx_axis_mac_tlast),
    .tx_axis_mac_tuser(tx_axis_mac_tuser),
    .tx_axis_mac_tready(tx_axis_mac_tready),
    .rx_axis_pmac_tdata(rx_axis_pmac_tdata),
    .rx_axis_pmac_tvalid(rx_axis_pmac_tvalid),
    .rx_axis_pmac_tlast(rx_axis_pmac_tlast),
    .rx_axis_pmac_tuser(rx_axis_pmac_tuser),
    .rx_axis_mac_tdata(rx_axis_mac_tdata),
    .rx_axis_mac_tvalid(rx_axis_mac_tvalid),
    .rx_axis_mac_tlast(rx_axis_mac_tlast),
    .rx_axis_mac_tuser(rx_axis_mac_tuser),
    .rx_mac_reset(rx_mac_reset),
    .preemption_signal_vector(preemption_signal_vector),
    .rx_axis_pmac_st_filter_tuser(rx_axis_pmac_st_filter_tuser),
    .rx_axis_pmac_av_filter_tuser(rx_axis_pmac_av_filter_tuser),
    .rx_axis_st_filter_tuser(rx_axis_st_filter_tuser),
    .rx_axis_av_filter_tuser(rx_axis_av_filter_tuser),
    .int_mgmt_host_reset_out(int_mgmt_host_reset_out),
    .tx_ptp_frame_available(tx_ptp_frame_available),
    .tx_ptp_frame_granted_for_transmission(tx_ptp_frame_granted_for_transmission),
    .tx_scheduler_internal_overhead_tsn(tx_scheduler_internal_overhead_tsn),
    .tx_mac_reset(tx_mac_reset),
    .core_hold_disabled_override_pmac(core_hold_disabled_override_pmac),
    .hold_request_pmac(hold_request_pmac),
    .txd_byte_count_pmac(txd_byte_count_pmac),
    .ptp_traffic_allowed_reg(ptp_traffic_allowed_reg),
    .ep_tadma_if_out(ep_tadma_if_out),
    .ep_tadma_if_in(ep_tadma_if_in),
    .rx_enable_in(rx_enable_in),
    .rx_mac_aclk_in(rx_mac_aclk_in),
    .tx_enable_in(tx_enable_in),
    .tx_mac_aclk_in(tx_mac_aclk_in),
    .mac_debug_in(mac_debug_in),
    .speedis100_in(speedis100_in),
    .mac_irq(mac_irq),
    .gtx_clk_reset_reg(gtx_clk_reset_reg),
    .ptp_current_time_sw(ptp_current_time_sw),
    .mac_rx_clk(mac_rx_clk),
    .m_axis_rx_tdata(m_axis_rx_tdata),
    .m_axis_rx_tkeep(m_axis_rx_tkeep),
    .m_axis_rx_tvalid(m_axis_rx_tvalid),
    .m_axis_rx_tuser(m_axis_rx_tuser),
    .m_axis_rx_tlast(m_axis_rx_tlast),
    .m_axis_rx_ctl(m_axis_rx_ctl),
    .mac_tx_clk(mac_tx_clk),
    .s_axis_tx_tdata(s_axis_tx_tdata),
    .s_axis_tx_tkeep(s_axis_tx_tkeep),
    .s_axis_tx_tvalid(s_axis_tx_tvalid),
    .s_axis_tx_tlast(s_axis_tx_tlast),
    .s_axis_tx_tuser(s_axis_tx_tuser),
    .s_axis_tx_tready(s_axis_tx_tready),
    .s_axis_tx_tdata_ep(s_axis_tx_tdata_ep),
    .s_axis_tx_tkeep_ep(s_axis_tx_tkeep_ep),
    .s_axis_tx_tvalid_ep(s_axis_tx_tvalid_ep),
    .s_axis_tx_tlast_ep(s_axis_tx_tlast_ep),
    .s_axis_tx_tuser_ep(s_axis_tx_tuser_ep),
    .s_axis_tx_tdest_ep(s_axis_tx_tdest_ep),
    .s_axis_tx_tready_ep(s_axis_tx_tready_ep),
    .s_axis_tx_tdata_ps(32'B0),
    .s_axis_tx_tkeep_ps(4'B0),
    .s_axis_tx_tvalid_ps(1'B0),
    .s_axis_tx_tlast_ps(1'B0),
    .s_axis_tx_tuser_ps(32'B0),
    .s_axis_tx_tdest_ps(3'B0),
    .s_axis_tx_tready_ps(),
    .ps_rx_axis_host_tdata(),
    .ps_rx_axis_host_tkeep(),
    .ps_rx_axis_host_tvalid(),
    .ps_rx_axis_host_tlast(),
    .ps_rx_axis_host_tuser(),
    .ps_rx_axis_host_tdest(),
    .ps_rx_axis_host_tready(1'B0),
    .s_axis_emac_tx_tdata(s_axis_emac_tx_tdata),
    .s_axis_emac_tx_tvalid(s_axis_emac_tx_tvalid),
    .s_axis_emac_tx_tlast(s_axis_emac_tx_tlast),
    .s_axis_emac_tx_tuser(s_axis_emac_tx_tuser),
    .s_axis_emac_tx_tready(s_axis_emac_tx_tready),
    .switch_pfc_register_in(switch_pfc_register_in),
    .bus2ip_cs_mac2(bus2ip_cs_mac2),
    .ip2bus_rdack_mac2(ip2bus_rdack_mac2),
    .ip2bus_wrack_mac2(ip2bus_wrack_mac2),
    .ip2bus_error_mac2(ip2bus_error_mac2),
    .ip2bus_data_mac2(ip2bus_data_mac2),
    .int_mgmt_host_reset_out_reg_n_switch(int_mgmt_host_reset_out_reg_n_switch),
    .s_axi_switch_rready(s_axi_switch_rready),
    .s_axi_switch_bready(s_axi_switch_bready),
    .s_axi_switch_arvalid(s_axi_switch_arvalid),
    .s_axi_switch_awvalid(s_axi_switch_awvalid),
    .s_axi_switch_wvalid(s_axi_switch_wvalid),
    .s_axi_switch_arprot(s_axi_switch_arprot),
    .s_axi_switch_awprot(s_axi_switch_awprot),
    .s_axi_switch_araddr_sw(s_axi_switch_araddr_sw),
    .s_axi_switch_awaddr_sw(s_axi_switch_awaddr_sw),
    .s_axi_switch_wstrb(s_axi_switch_wstrb),
    .s_axi_switch_wdata(s_axi_switch_wdata),
    .s_axi_switch_arready(s_axi_switch_arready),
    .s_axi_switch_awready(s_axi_switch_awready),
    .s_axi_switch_wready(s_axi_switch_wready),
    .s_axi_switch_rvalid(s_axi_switch_rvalid),
    .s_axi_switch_bvalid(s_axi_switch_bvalid),
    .s_axi_switch_bresp(s_axi_switch_bresp),
    .s_axi_switch_rresp(s_axi_switch_rresp),
    .s_axi_switch_rdata(s_axi_switch_rdata),
    .switch_current_gate_states_out_i2(switch_current_gate_states_out_i2),
    .switch_requesting_queue_valid(switch_requesting_queue_valid),
    .switch_requesting_queue(switch_requesting_queue),
    .switch_gate_masks_out_i(switch_gate_masks_out_i),
    .switch_guard_band_nack(switch_guard_band_nack),
    .switch_guard_band_ack(switch_guard_band_ack),
    .switch_gate_queue_status(switch_gate_queue_status),
    .transmission_overrun_count_incr(transmission_overrun_count_incr),
    .mactx_gate_qactive(mactx_gate_qactive),
    .switch_max_frame_size(switch_max_frame_size),
    .switch_mactx_frame_len(switch_mactx_frame_len),
    .e_current_gate_states_out_i(e_current_gate_states_out_i),
    .e_gate_masks_out(e_gate_masks_out),
    .e_requesting_queue(e_requesting_queue),
    .e_mactx_gate_qactive(e_mactx_gate_qactive),
    .e_requesting_queue_valid(e_requesting_queue_valid),
    .e_guard_band_nack(e_guard_band_nack),
    .e_guard_band_ack(e_guard_band_ack),
    .e_transmission_overrun_count_incr(e_transmission_overrun_count_incr),
    .e_switch_mactx_frame_len(e_switch_mactx_frame_len),
    .e_switch_gate_queue_status(e_switch_gate_queue_status),
    .macrx_pfc(macrx_pfc),
    .mactx_pfc(mactx_pfc),
    .switch_be_pkt_byte_count_sw(switch_be_pkt_byte_count_sw),
    .tx_ptp_frame_allowed(tx_ptp_frame_allowed),
    .mac_1_debug_out(mac_1_debug_out),
    .mac_2_debug_out(mac_2_debug_out)
  );
endmodule
