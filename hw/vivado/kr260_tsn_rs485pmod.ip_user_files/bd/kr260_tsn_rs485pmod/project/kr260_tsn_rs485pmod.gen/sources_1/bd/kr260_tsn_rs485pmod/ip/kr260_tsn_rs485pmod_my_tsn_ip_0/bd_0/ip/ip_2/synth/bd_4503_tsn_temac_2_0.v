//------------------------------------------------------------------------------
// File       : bd_4503_tsn_temac_2_0.v
// Author     : Advanced Micro Devices Inc.
// -----------------------------------------------------------------------------
// (c) Copyright 2004-2013 Advanced Micro Devices, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of Advanced Micro Devices, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Advanced Micro Devices, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Advanced Micro Devices shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Advanced Micro Devices had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// Advanced Micro Devices products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Advanced Micro Devices products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES. 
// -----------------------------------------------------------------------------
// Description: This is the wrapper file for the Tri-Mode Ethernet MAC IP.
//
// This wrapper instantiates the TEMAC core block
//------------------------------------------------------------------------------

`timescale 1 ps/1 ps


//------------------------------------------------------------------------------
// The entity declaration for the block level example design.
//------------------------------------------------------------------------------

(* CORE_GENERATION_INFO = "bd_4503_tsn_temac_2_0,tsn_temac_v1_0_9,{x_ipProduct=Vivado 2023.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=tsn_temac,x_ipVersion=1.0,x_ipCoreRevision=9,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,VERSION_INFO=0,TSN_CHANGE_ENABLE=1,TSN_EP_EVAL=0,TSN_RTC_ENABLE=0,TSN_EP_ONLY=0,LATENCY_REG_TSN_GMII=1,c_component_name=bd_4503_tsn_temac_2_0,c_physical_interface=RGMII,c_half_duplex=false,c_has_host=true,c_has_mdio=true,c_mdio_external=true,c_axilite_freq=150.00,c_add_filter=false,c_at_entries=0,c_family=zynquplus,c_mac_speed=TRI_SPEED,c_int_clk_src=User_Clk2,c_has_stats=true,c_num_stats=34,c_cntr_rst=true,c_stats_width=64,c_avb=false,c_1588=1,c_tx_inband_cf_enable=false,c_rx_inband_ts_enable=false,c_tx_tuser_width=128,c_rx_vec_width=79,c_tx_vec_width=79,c_addr_width=17,c_pfc=false,c_data_rate=1_Gbps,SYNTONIZED_TIMESTAMPS=0,PTP_BRAM_PARTITION_SIZE=256,NUM_PTP_RX_MSG=16,EN_1588_PTP_V1_SUPPORT=0,EN_INBAND_MGMT_TAG=1,EN_PSFP=1,EN_FRER=1,EN_CB_RSVD_BYTES=1,EN_HW_ADDR_LEARNING=1,EN_EP_PKT_SWITCH=0,EN_EP_PORT_EXTN=0,SCHEDULED_QUEUE=0,RESERVED_QUEUE=1,BESTEFFORT_QUEUE=1,USE_HARD_FIFO=0,EN_PER_PRIQ_CNFGS=0,ADDR_TRANSLATION_TYPE=0,PTP_V1_BRAM_PARTITION_SIZE=256,NUM_PTP_V1_RX_MSG=16,DEBUG_HOOKS=1,CLK90_PHASE=270,DISABLE_RES_QUEUE=1,EN_FRAME_PREEMPTION_SUPPORT=1,EN_SCHEDULED_PREEMPTION=1,EN_TX_CUSTOM_TIMESTAMP=1,EN_RX_CUSTOM_TIMESTAMP=1}" *)
(* X_CORE_INFO = "tsn_temac_v1_0_9,Vivado 2023.2" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module bd_4503_tsn_temac_2_0 (




      input                gtx_clk,
      
   
  

   input                            core_hold_disabled_override_pmac,                
   input                            hold_request_pmac,                
   input       [15:0]               txd_byte_count_pmac,        

   input       [7:0]                tx_axis_pmac_tdata,
   input                            tx_axis_pmac_tvalid,
   input                            tx_axis_pmac_tlast,
   input                            tx_axis_pmac_tuser,
   output                           tx_axis_pmac_tready,

   output      [31:0]               tx_statistics_vector_pmac,
   output                           tx_statistics_valid_pmac,

   output                           tx_ts_axis_tvalid_pmac,
   output      [127:0]              tx_ts_axis_tdata_pmac,

   output      [7:0]                rx_axis_pmac_tdata,
   output                           rx_axis_pmac_tvalid,
   output                           rx_axis_pmac_tlast,
   output                           rx_axis_pmac_tuser,

   output                           rx_axis_pmac_st_filter_tuser,                
   output                           rx_axis_pmac_av_filter_tuser,                
   // RX sideband signals
   output      [27:0]               rx_statistics_vector_pmac,
   output                           rx_statistics_valid_pmac,

   output                           rx_ts_axis_tvalid_pmac,
   output      [127:0]              rx_ts_axis_tdata_pmac,

   output      [511:0]              preemption_signal_vector,

 
      // asynchronous reset
      input                glbl_rstn,
      input                rx_axi_rstn,
      input                tx_axi_rstn,
   output      [31:0]               syntonised_nanosec_field,
   output      [47:0]               syntonised_sec_field,
   input       [47:0]               syntonised_sec_field_in,        
   input       [31:0]               syntonised_nanosec_field_in,   
   input       [47:0]               rtc_sec_field_in,      
   input       [31:0]               rtc_nanosec_field_in,   
   output     [511:0]               mac_debug_out,

      output                           rx_axis_st_filter_tuser, 
      output                           rx_axis_av_filter_tuser,
      output                           int_mgmt_host_reset_out,
      input                            tx_ptp_traffic_allowed,
      output wire                      tx_ptp_frame_granted_for_transmission,
      output                           tx_ptp_frame_available,
      output      [31:0]               tx_scheduler_internal_overhead_tsn,

      // 1588 Timer input
      //--------------------------

      // Receiver Interface
      //--------------------------
      output               rx_enable,

      output      [27:0]   rx_statistics_vector,
      output               rx_statistics_valid,

      output               rx_mac_aclk,
      output               rx_reset,
      output      [7:0]    rx_axis_mac_tdata,
      output               rx_axis_mac_tvalid,
      output               rx_axis_mac_tlast,
      output               rx_axis_mac_tuser,

      output               rx_ts_axis_tvalid,
      output [127:0]       rx_ts_axis_tdata,
      // Resynchronized 1588 timer from internal PHY
      input [47:0]         rxphy_s_field,
      input [31:0]         rxphy_ns_field,

      output      [0:0]    rx_axis_filter_tuser,

      // Transmitter Interface
      //-----------------------------
      output               tx_enable,

      input       [7:0]    tx_ifg_delay,
      output      [31:0]   tx_statistics_vector,
      output               tx_statistics_valid,

      output               tx_mac_aclk,
      output               tx_reset,
      input       [7:0]    tx_axis_mac_tdata,
      input                tx_axis_mac_tvalid,
      input                tx_axis_mac_tlast,
      input                tx_axis_mac_tuser,
      output               tx_axis_mac_tready,
      output               tx_ts_axis_tvalid,
      output [127:0]       tx_ts_axis_tdata,

      output               interrupt_ptp_rx,
      output               interrupt_ptp_tx,
      // MAC Control Interface
      //----------------------
      input                pause_req,
      input       [15:0]   pause_val,

      output               speedis100,
      output               speedis10100,

      // RGMII Interface
      //----------------
      output      [3:0]    rgmii_txd,
      output               rgmii_tx_ctl,
      output               rgmii_txc,
      input       [3:0]    rgmii_rxd,
      input                rgmii_rx_ctl,
      input                rgmii_rxc,
      output               inband_link_status,
      output      [1:0]    inband_clock_speed,
      output               inband_duplex_status,



      
      // MDIO Interface
      //---------------
      inout                mdio,
      output               mdc,

      // AXI-Lite Interface
      //---------------
      //input                s_axi_aclk,
      //input                s_axi_resetn,

      //input       [16:0]  s_axi_awaddr,
      //input                s_axi_awvalid,
      //output               s_axi_awready,

      //input       [31:0]   s_axi_wdata,
      //input                s_axi_wvalid,
      //output               s_axi_wready,

      //output      [1:0]    s_axi_bresp,
      //output               s_axi_bvalid,
      //input                s_axi_bready,

      //input       [16:0]  s_axi_araddr,
      //input                s_axi_arvalid,
      //output               s_axi_arready,

      //output      [31:0]   s_axi_rdata,
      //output      [1:0]    s_axi_rresp,
      //output               s_axi_rvalid,
      //input                s_axi_rready,
      input               bus2ip_clk,                      //Bus2ip
      input               bus2ip_reset,
      input   [16:0]      bus2ip_addr,
      input               bus2ip_cs,
      input               bus2ip_rdce,
      input               bus2ip_wrce,
      input   [31:0]      bus2ip_data,
      output  [31:0]      ip2bus_data,
      output              ip2bus_wrack,
      output              ip2bus_rdack,
      output              ip2bus_error,
      output               mac_irq

      );


   //---------------------------------------------------------------------------
   // Instantiate the TEMAC core block
   //---------------------------------------------------------------------------
   bd_4503_tsn_temac_2_0_block inst(
      .gtx_clk                            (gtx_clk),
      
      // asynchronous reset
      .glbl_rstn                          (glbl_rstn),
      .rx_axi_rstn                        (rx_axi_rstn),
      .tx_axi_rstn                        (tx_axi_rstn),
      .syntonised_nanosec_field                      (syntonised_nanosec_field),
      .syntonised_sec_field                          (syntonised_sec_field),
      .syntonised_nanosec_field_in                   (syntonised_nanosec_field_in),
      .syntonised_sec_field_in                       (syntonised_sec_field_in),
      .rtc_nanosec_field_in                          (rtc_nanosec_field_in),
      .rtc_sec_field_in                              (rtc_sec_field_in),
      .mac_debug_out                                 (mac_debug_out),
      .rx_axis_st_filter_tuser                       (rx_axis_st_filter_tuser), 
      .rx_axis_av_filter_tuser                       (rx_axis_av_filter_tuser),
      .int_mgmt_host_reset_out                       (int_mgmt_host_reset_out),
      .tx_ptp_traffic_allowed                        (tx_ptp_traffic_allowed),
      .tx_ptp_frame_granted_for_transmission         (tx_ptp_frame_granted_for_transmission),
      .tx_ptp_frame_available                        (tx_ptp_frame_available),
      .tx_scheduler_internal_overhead_tsn            (tx_scheduler_internal_overhead_tsn),
      // 1588 Timer input
      //--------------------------

      // Receiver Interface
      //--------------------------
      .rx_enable                          (rx_enable),

      .rx_statistics_vector               (rx_statistics_vector),
      .rx_statistics_valid                (rx_statistics_valid),

      .rx_mac_aclk                        (rx_mac_aclk),
      .rx_reset                           (rx_reset),
      .rx_axis_mac_tdata                  (rx_axis_mac_tdata),
      .rx_axis_mac_tvalid                 (rx_axis_mac_tvalid),
      .rx_axis_mac_tlast                  (rx_axis_mac_tlast),
      .rx_axis_mac_tuser                  (rx_axis_mac_tuser),

      .rx_ts_axis_tvalid                  (rx_ts_axis_tvalid),
      .rx_ts_axis_tdata                   (rx_ts_axis_tdata),
      // Resynchronized 1588 timer from internal PHY
      .rxphy_s_field                      (rxphy_s_field),
      .rxphy_ns_field                     (rxphy_ns_field),

      .rx_axis_filter_tuser               (rx_axis_filter_tuser),

      // Transmitter Interface
      //-----------------------------
      .tx_enable                          (tx_enable),

      .tx_ifg_delay                       (tx_ifg_delay),
      .tx_statistics_vector               (tx_statistics_vector),
      .tx_statistics_valid                (tx_statistics_valid),

      .tx_mac_aclk                        (tx_mac_aclk),
      .tx_reset                           (tx_reset),
      .tx_axis_mac_tdata                  (tx_axis_mac_tdata),
      .tx_axis_mac_tvalid                 (tx_axis_mac_tvalid),
      .tx_axis_mac_tlast                  (tx_axis_mac_tlast),
      .tx_axis_mac_tuser                  (tx_axis_mac_tuser),
      .tx_axis_mac_tready                 (tx_axis_mac_tready),

      .tx_ts_axis_tvalid                  (tx_ts_axis_tvalid),
      .tx_ts_axis_tdata                   (tx_ts_axis_tdata),

      .interrupt_ptp_rx          (interrupt_ptp_rx),
      .interrupt_ptp_tx          (interrupt_ptp_tx),
      // MAC Control Interface
      //----------------------
      .pause_req                          (pause_req),
      .pause_val                          (pause_val),

      .speedis100                         (speedis100),
      .speedis10100                       (speedis10100),
      // RGMII Interface
      //----------------
      .rgmii_txd                          (rgmii_txd),
      .rgmii_tx_ctl                       (rgmii_tx_ctl),
      .rgmii_txc                          (rgmii_txc),
      .rgmii_rxd                          (rgmii_rxd),
      .rgmii_rx_ctl                       (rgmii_rx_ctl),
      .rgmii_rxc                          (rgmii_rxc),
      .inband_link_status                 (inband_link_status),
      .inband_clock_speed                 (inband_clock_speed),
      .inband_duplex_status               (inband_duplex_status),


       .core_hold_disabled_override_pmac  (core_hold_disabled_override_pmac),                
       .hold_request_pmac                 (hold_request_pmac),                
       .txd_byte_count_pmac               (txd_byte_count_pmac),        
       .tx_axis_pmac_tdata                (tx_axis_pmac_tdata),
       .tx_axis_pmac_tvalid               (tx_axis_pmac_tvalid),
       .tx_axis_pmac_tlast                (tx_axis_pmac_tlast),
       .tx_axis_pmac_tuser                (tx_axis_pmac_tuser),
       .tx_axis_pmac_tready               (tx_axis_pmac_tready),
       .tx_statistics_vector_pmac         (tx_statistics_vector_pmac),
       .tx_statistics_valid_pmac          (tx_statistics_valid_pmac),
       .tx_ts_axis_tvalid_pmac            (tx_ts_axis_tvalid_pmac),
       .tx_ts_axis_tdata_pmac             (tx_ts_axis_tdata_pmac),
       .rx_axis_pmac_tdata                (rx_axis_pmac_tdata),
       .rx_axis_pmac_tvalid               (rx_axis_pmac_tvalid),
       .rx_axis_pmac_tlast                (rx_axis_pmac_tlast),
       .rx_axis_pmac_tuser                (rx_axis_pmac_tuser),
       .rx_axis_pmac_st_filter_tuser      (rx_axis_pmac_st_filter_tuser),                
       .rx_axis_pmac_av_filter_tuser      (rx_axis_pmac_av_filter_tuser),                
       .rx_statistics_vector_pmac         (rx_statistics_vector_pmac),
       .rx_statistics_valid_pmac          (rx_statistics_valid_pmac),
       .rx_ts_axis_tvalid_pmac            (rx_ts_axis_tvalid_pmac),
       .rx_ts_axis_tdata_pmac             (rx_ts_axis_tdata_pmac),
       .preemption_signal_vector          (preemption_signal_vector),


      
      // MDIO Interface
      //---------------
      .mdio                               (mdio),
      .mdc                                (mdc),

      // AXI-Lite Interface
      //---------------
      //.s_axi_aclk                         (s_axi_aclk),
      //.s_axi_resetn                       (s_axi_resetn),

      //.s_axi_awaddr                       (s_axi_awaddr),
      //.s_axi_awvalid                      (s_axi_awvalid),
      //.s_axi_awready                      (s_axi_awready),

      //.s_axi_wdata                        (s_axi_wdata),
      //.s_axi_wvalid                       (s_axi_wvalid),
      //.s_axi_wready                       (s_axi_wready),

      //.s_axi_bresp                        (s_axi_bresp),
      //.s_axi_bvalid                       (s_axi_bvalid),
      //.s_axi_bready                       (s_axi_bready),

      //.s_axi_araddr                       (s_axi_araddr),
      //.s_axi_arvalid                      (s_axi_arvalid),
      //.s_axi_arready                     (s_axi_arready),

      //.s_axi_rdata                        (s_axi_rdata),
      //.s_axi_rresp                        (s_axi_rresp),
      //.s_axi_rvalid                       (s_axi_rvalid),
      //.s_axi_rready                       (s_axi_rready),
      .bus2ip_clk                (bus2ip_clk),
      .bus2ip_reset              (bus2ip_reset),
      .bus2ip_addr               (bus2ip_addr),
      .bus2ip_cs                 (bus2ip_cs),
      .bus2ip_rdce               (bus2ip_rdce),
      .bus2ip_wrce               (bus2ip_wrce),
      .bus2ip_data               (bus2ip_data),
      .ip2bus_data               (ip2bus_data),
      .ip2bus_wrack              (ip2bus_wrack),
      .ip2bus_rdack              (ip2bus_rdack),
      .ip2bus_error              (ip2bus_error),
      .mac_irq                            (mac_irq)

    );


endmodule

