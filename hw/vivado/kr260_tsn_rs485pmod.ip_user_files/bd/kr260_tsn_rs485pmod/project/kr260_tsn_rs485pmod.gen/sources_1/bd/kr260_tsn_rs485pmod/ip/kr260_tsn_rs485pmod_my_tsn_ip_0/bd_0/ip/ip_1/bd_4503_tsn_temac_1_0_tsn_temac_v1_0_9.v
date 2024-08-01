
//----------------------------------------------------------------------
// Title      : Top level (Gen) Tri-Mode Ethernet MAC.
// Project    : Tri-Mode Ethernet MAC
//----------------------------------------------------------------------
// File       : bd_4503_tsn_temac_1_0_tsn_temac_v1_0.v
// Author     : Advanced Micro Devices Inc.
//----------------------------------------------------------------------
// (c) Copyright 2013 Advanced Micro Devices, Inc. All rights reserved.
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
//----------------------------------------------------------------------
// Description: The top level Verilog module for the encrypted HDL level
//              of the core.
//----------------------------------------------------------------------

//----------------------------------------------------------------------
// Module definition
//----------------------------------------------------------------------

`timescale 1ps/1ps
//`default_nettype none
(* DowngradeIPIdentifiedWarnings="yes" *)


module bd_4503_tsn_temac_1_0_tsn_temac_v1_0_9 #(
   parameter                        TSN_CHANGE_ENABLE     = 1, //When 1, Force : AVB = 0 ; PFC = 0, Pause = 0, 1588 = 2 (2step time stamping); axi_lite address  lines = 17; half_duplex = 0, Line rate != 2.5Gbps or 10 Mbps through GUI tcl/YML
   parameter                        TSN_EP_EVAL           = 0,
   parameter                        EN_TX_CUSTOM_TIMESTAMP= 0,
   parameter                        EN_RX_CUSTOM_TIMESTAMP= 0,
   parameter                        EN_FRAME_PREEMPTION_SUPPORT   = 0,
   parameter                        EN_SCHEDULED_PREEMPTION= 0,
   parameter                        TSN_RTC_ENABLE        = 0,
   parameter                        TSN_EP_ONLY           = 1, //1 = End Point Only; 0 = End Point + Switch

   parameter                        DISABLE_RES_QUEUE     = 0, // Disable RES queue (RX). Applicable for End Point Only TSN_EP_ONLY ==1 mode.
   parameter                        LATENCY_REG_TSN_GMII  = 1,
   parameter                        C_S_AXI_ADDR_WIDTH    = 32,
   parameter                        C_PHYSICAL_INTERFACE  = "GMII",
   parameter                        C_HALF_DUPLEX         = 1,    // Is half duplex compiled in?
   parameter                        C_HAS_HOST            = 1,    // Is host I/F present?
   parameter                        C_ADD_FILTER          = 1,
   parameter                        C_AT_ENTRIES          = 8,            // When TSN_EP_ONLY = 0; then C_AT_ENTRIES is forced as 1
   parameter                        C_FAMILY              = "virtex7",
   parameter                        C_HAS_2G5             = 0,
   parameter                        C_MAC_SPEED           = "SPEED_10_100_MBPS",
   parameter                        C_HAS_STATS           = 1,
   parameter                        C_NUM_STATS           = 44,     // allow for max 42 standard counters plus two user defined
   parameter                        C_CNTR_RST            = 1,
   parameter                        C_STATS_WIDTH         = 64,
   parameter                        C_AVB                 = 0,
   parameter                        C_RX_VEC_WIDTH        = 79,
   parameter                        C_TX_VEC_WIDTH        = 79,
   parameter                        C_1588                = 0,
   parameter                        C_TX_INBAND_CF_ENABLE = 0,
   parameter                        C_RX_INBAND_TS_ENABLE = 0,
   parameter                        C_PFC                 = 1,
   parameter                        C_HAS_MDIO            = 1, 
   parameter                        C_DEVICE_FAMILY_US    = 0,
   parameter                        SYNTONIZED_TIMESTAMPS    = 1,  //1-> Syntonized, 0-> Synchronized. Default 1 for C_1588 !=1 (correction field), 0 for C_1588 = 1 (ToD format)
   parameter                        DEBUG_HOOKS           = 0, 
   parameter                        VERSION_INFO          = 0, 
   parameter                        PTP_BRAM_PARTITION_SIZE  = 256, //256 bytes (512, 1024, 2048)
   parameter                        NUM_PTP_RX_MSG           = 16,  //16 fixed for 256B; 8 fixed for 512; 4,8 for 1024; 2,4,8 for 2048 
   parameter                        EN_1588_PTP_V1 = 0,
   parameter                        EN_PSFP = 0,
   parameter                        EN_FRER = 0,
   parameter                        EN_HW_ADDR_LEARNING = 1,
   parameter                        EN_CB_RSVD_BYTES = 0,
   parameter                        EN_INBAND_MGMT_TAG = 1,
   parameter                        SCHEDULED_QUEUE = 1,
   parameter                        RESERVED_QUEUE = 1,
   parameter                        BESTEFFORT_QUEUE = 1,
   parameter                        USE_HARD_FIFO = 1,
   parameter                        EN_PER_PRIQ_CNFGS = 1,
   parameter                        ADDR_TRANSLATION_TYPE = 0,
   parameter                        EN_EP_PKT_SWITCH  = 0,
   parameter                        EN_EP_PORT_EXTN  = 0,
   parameter                        PTP_V1_BRAM_PARTITION_SIZE  = 256, //256 bytes (512, 1024, 2048)
   parameter                        NUM_PTP_V1_RX_MSG           = 16  //16 fixed for 256B; 8 fixed for 512; 4,8 for 1024; 2,4,8 for 2048 
) (
   // RESET signals
   //--------------
   input                            glbl_rstn,
   input                            rx_axi_rstn,
   input                            tx_axi_rstn,
   input                            dcm_locked,
   output [47:0]                    syntonised_sec_field,     //to be input to TEMAC2, TEMAC3... on systemtimer_ns_field port [output from TEMAC1]. To support 64bit timestamp write in BRAM.
   output [31:0]                    syntonised_nanosec_field, //to be input to TEMAC2, TEMAC3... on systemtimer_ns_field port [output from TEMAC1]

   // 1588 Timer input

   input       [63:0]               correction_timer,
   //-----------------
   // Receiver Interface
   //-------------------
   input                            rx_axi_clk,
   output                           rx_reset_out,
   output      [7:0]                rx_axis_mac_tdata,
   output                           rx_axis_mac_tvalid,
   output                           rx_axis_mac_tlast,
   output                           rx_axis_mac_tuser,

   input       [4:C_NUM_STATS-1]    e_increment_vector,

   input                            core_hold_disabled_override_pmac,                
   input                            hold_request_pmac,                
   input       [15:0]               txd_byte_count_pmac,        

   input       [7:0]                tx_axis_pmac_tdata,
   input                            tx_axis_pmac_tvalid,
   input                            tx_axis_pmac_tlast,
   input       [127:0]              tx_axis_pmac_tuser,
   output                           tx_axis_pmac_tready,

   output      [39:0]               tx_statistics_vector_pmac,
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
   output      [31:0]               rx_statistics_vector_pmac,
   output                           rx_statistics_valid_pmac,

   output                           rx_ts_axis_tvalid_pmac,
   output      [127:0]              rx_ts_axis_tdata_pmac,

   //output                           rx_filter_st_match,
   //output                           rx_filter_res_match,
   //output                           rx_filter_be_match,

   //output                           tx_enable_emac,
   //output                           e_tx_ce_sample_and_enabled,
   //output                           emac_tx_is_enabled,
   //output                           e_tx_ce_sample,
   //output                           tx_enable_pmac,
   //output                           tx_ce_sample_and_enabled,
   //output                           pmac_tx_is_enabled,
   //output                           tx_ce_sample,
   //output                           rx_enable_and_not_preempted,
   //output                           p_rx_is_preempted,


   output      [511:0]              preemption_signal_vector,




   //////////////////////////////////////////////////////// 
   // New ports                                           / 
   //////////////////////////////////////////////////////// 
   output                           rx_axis_st_filter_tuser,                //New port
   output                           rx_axis_av_filter_tuser,                //New port
   output                           int_mgmt_host_reset_out,
   input                            tx_ptp_traffic_allowed,                 //New port
   output                           tx_ptp_frame_granted_for_transmission,
   output                           tx_ptp_frame_available,                 //New port
   output      [31:0]               tx_scheduler_internal_overhead_tsn,
   input       [47:0]               syntonised_sec_field_in,    //This port should be input if TSN_CHANGE_ENABLE = 1 && TSN_RTC_ENABLE = 0    
   input       [31:0]               syntonised_nanosec_field_in,   //This port should be input if TSN_CHANGE_ENABLE = 1 && TSN_RTC_ENABLE = 0


   input       [47:0]               rtc_sec_field_in,    //This port should be input if TSN_CHANGE_ENABLE = 1 && TSN_RTC_ENABLE = 0  
   input       [31:0]               rtc_nanosec_field_in,   //This port should be input if TSN_CHANGE_ENABLE = 1 && TSN_RTC_ENABLE = 0


   // RX sideband signals
   output      [31:0]               rx_statistics_vector,
   output                           rx_statistics_valid,
   input                            rx_enable,
   output      [C_AT_ENTRIES:0]     rx_axis_filter_tuser,

   // Receiver 1588 Timestamping I/F
   //-------------------------------
   output                           rx_ts_axis_tvalid,
   output      [127:0]              rx_ts_axis_tdata,

   // Rx 1588 Timer PHY Correction ports
   input       [47:0]               rxphy_s_field,
   input       [31:0]               rxphy_ns_field,
   input       [63:0]               rxphy_correction_timer,

   // Transmitter Interface
   //----------------------
   // Tx AXI-S signals (normal use case)
   input                            tx_axi_clk,
   output                           tx_reset_out,
   input       [7:0]                tx_axis_mac_tdata,
   input                            tx_axis_mac_tvalid,
   input                            tx_axis_mac_tlast,
   input       [127:0]              tx_axis_mac_tuser,
   output                           tx_axis_mac_tready,

   // TX sideband signals
   output                           tx_retransmit,
   output                           tx_collision,
   input                            tx_enable,
   input       [7:0]                tx_ifg_delay,
   output      [39:0]               tx_statistics_vector,
   output                           tx_statistics_valid,

   // Transmitter 1588 Timestamping I/F
   //----------------------------------
   output                           tx_ts_axis_tvalid,
   output      [127:0]              tx_ts_axis_tdata,

   // AVB AV interface
   //-----------------
   input       [7:0]                tx_axis_av_tdata,
   input                            tx_axis_av_tvalid,
   input                            tx_axis_av_tlast,
   input                            tx_axis_av_tuser,
   output                           tx_axis_av_tready,

   output      [7:0]                rx_axis_av_tdata,
   output                           rx_axis_av_tvalid,
   output                           rx_axis_av_tlast,
   output                           rx_axis_av_tuser,

   // AVB timer interface
   //--------------------
   input                            rtc_clk,                 //This input is required !! (when  TSN_RTC_ENABLE = 0 && TSN_CHANGE_ENABLE = 1) 

   output      [31:0]               rtc_nanosec_field,       //This port outputs 0 when TSN_RTC_ENABLE = 0 && TSN_CHANGE_ENABLE = 1
   output      [47:0]               rtc_sec_field,           //This port outputs 0 when TSN_RTC_ENABLE = 0 && TSN_CHANGE_ENABLE = 1

   output                           clk8k,                   //This port outputs 0 when TSN_RTC_ENABLE = 0 && TSN_CHANGE_ENABLE = 1

   output      [31:0]               rtc_nanosec_field_1722,  //This port outputs 0 when TSN_RTC_ENABLE = 0 && TSN_CHANGE_ENABLE = 1

   output                           interrupt_ptp_timer,     //This port outputs 0 when TSN_RTC_ENABLE = 0 && TSN_CHANGE_ENABLE = 1
   output                           interrupt_ptp_rx,
   output                           interrupt_ptp_tx,

   output                           interrupt_ptp_v1_rx, // new port
   output                           interrupt_ptp_v1_tx, // new port
   // Statistics Interface
   //---------------------
   input                            stats_ref_clk,
   input       [4:C_NUM_STATS-1]    increment_vector,

   // Flow Control
   //-------------
   input                            pause_req,
   input       [15:0]               pause_val,
   input                            tx_pfc_p0_tvalid,
   input                            tx_pfc_p1_tvalid,
   input                            tx_pfc_p2_tvalid,
   input                            tx_pfc_p3_tvalid,
   input                            tx_pfc_p4_tvalid,
   input                            tx_pfc_p5_tvalid,
   input                            tx_pfc_p6_tvalid,
   input                            tx_pfc_p7_tvalid,
   output                           rx_pfc_p0_tvalid,
   output                           rx_pfc_p1_tvalid,
   output                           rx_pfc_p2_tvalid,
   output                           rx_pfc_p3_tvalid,
   output                           rx_pfc_p4_tvalid,
   output                           rx_pfc_p5_tvalid,
   output                           rx_pfc_p6_tvalid,
   output                           rx_pfc_p7_tvalid,
   input                            rx_pfc_p0_tready,
   input                            rx_pfc_p1_tready,
   input                            rx_pfc_p2_tready,
   input                            rx_pfc_p3_tready,
   input                            rx_pfc_p4_tready,
   input                            rx_pfc_p5_tready,
   input                            rx_pfc_p6_tready,
   input                            rx_pfc_p7_tready,

   // Speed interface
   //----------------
   output reg                       speed_is_100,
   output reg                       speed_is_10_100,

   // GMII/MII Interface
   //-------------------
   input                            gmii_col,
   input                            gmii_crs,
   input                            gmii_tx_clken,
   output      [7:0]                gmii_txd,
   output                           gmii_tx_en,
   output                           gmii_tx_er,
   input       [7:0]                gmii_rxd,
   input                            gmii_rx_dv,
   input                            gmii_rx_er,

   output     [511:0]               mac_debug_out,



   // MDIO Interface
   //---------------
   input                            mdio_in,
   output                           mdio_out,
   output                           mdio_tri,
   output                           mdc_out,

   // IPIC Interface (Host Management)
   //---------------------------------
   input                            bus2ip_clk,
   input                            bus2ip_reset,
   input       [C_S_AXI_ADDR_WIDTH -1:0] bus2ip_addr,
   input                            bus2ip_cs,
   input                            bus2ip_rdce,
   input                            bus2ip_wrce,
   input       [31:0]               bus2ip_data,
   output      [31:0]               ip2bus_data,
   output                           ip2bus_wrack,
   output                           ip2bus_rdack,
   output                           ip2bus_error,

   // Interrupt Controller
   //---------------------
   output                           mac_irq,

   // Configuration Vector
   //---------------------
   // Alternative when Host Interface is not used. also act as init_vector.
   input       [C_RX_VEC_WIDTH:0]   rx_mac_config_vector,
   input       [C_TX_VEC_WIDTH:0]   tx_mac_config_vector
);


//----------------------------------------------------------------------
// Parameter processing
//----------------------------------------------------------------------

// Available Ethernet speed functionality
//---------------------------------------
   localparam HAS_2G5                  = C_HAS_2G5;
   localparam MAC_SPEED                = C_MAC_SPEED;

// Set the number of required interrpts
//-------------------------------------
   //localparam NUM_INTERRUPTS           = (C_AVB | TSN_CHANGE_ENABLE) ? 4 : 1;  //Keep the same bits for PTP interrupts so ptp interrupt becomes input if PTP logic is also pulled out

   localparam NUM_INTERRUPTS           =  1;  
//  localparam DEBUG_HOOKS = 1;
//  localparam DEBUG_HOOKS_2 = 1;

   reg      [15:0]                     mac_txphy_if_out;
   reg      [15:0]                     mac_rxphy_if_out;

   reg      [15:0]                     mac_txphy_if_out_i;
   reg      [15:0]                     mac_rxphy_if_out_i;
   wire                                rx_good_frame;
   wire                                rx_bad_frame;
   wire     [7:0]                      rx_data;
   wire                                rx_data_valid;
   wire     [7:0]                      int_rx_data_in;
   wire                                int_rx_data_valid_in;
   wire                                int_rx_good_frame_in;
   wire                                int_rx_bad_frame_in;
   wire                                int_rx_control_frame;
   wire                                int_rx_control_frame_any_da;
   wire                                int_rx_half_duplex;
   wire                                int_rx_lt_disable;
   wire                                int_rx_ps_lt_disable;
   wire     [14:0]                     int_rx_max_frame_length;
   wire                                int_rx_max_frame_enable;

   wire     [7:0]                      tx_data_int;
   wire                                tx_data_valid_int;
   wire                                tx_underrun_int;
   wire                                tx_ack_int;
   wire                                int_tx_ack_in;
   wire                                int_tx_end_of_tx;
   wire                                int_tx_valid;
   wire     [7:0]                      int_tx_data_out;
   wire                                int_tx_data_valid_out;
   wire                                int_tx_underrun_out;
   wire                                int_tx_crc_enable_out;
   wire                                int_tx_vlan_enable_out;
   wire     [14:0]                     int_tx_max_frame_length;
   wire                                int_tx_max_frame_enable;

   wire                                int_rx_enable;
   wire                                int_tx_enable;
   wire     [47:0]                     int_rx_pause_source;
   wire     [47:0]                     int_tx_pause_source;
   wire                                int_tx_crc_mode;
   wire                                int_tx_vlan_enable;
   wire     [4:0]                      int_pause_vector;
   wire     [1:0]                      int_fc_enable;
   wire                                int_update_pause_ad;
   wire                                int_rx_inband_ts_en;
   wire                                int_tx_inband_cf_en;
   wire     [15:0]                     debug_hooks_one_step_timestamp_offset;
   wire                                debug_hooks_one_step_timestamp_enable;
   wire     [15:0]                     int_tx_latency_adjust;
   wire                                int_tx_latency_adjust_en;
   wire     [9:0]                      tx_latency_adjust_tsn_gmii;
   wire                                tx_latency_adjust_enable_tsn_gmii;
   wire     [9:0]                      rx_latency_adjust_tsn_gmii;
   wire                                rx_latency_adjust_enable_tsn_gmii;
   wire                                int_tx_half_duplex;
   wire                                int_tx_jumbo_enable;
   wire                                int_tx_en;
   wire     [30:0]                     int_tx_statistics_vector;
   wire                                int_rst;

   wire                                int_rx_vlan_enable;
   wire                                int_rx_en;
   wire                                int_rx_valid;
   wire     [24:0]                     int_rx_statistics_vector;
   wire                                int_rx_jumbo_enable;
   wire                                int_rx_crc_mode;
   //wire                                int_rx_rst;
   wire                                int_min_size;

   wire     [7:0]                      int_gmii_rxd;
   wire                                int_gmii_rx_dv;
   wire                                int_gmii_rx_er;
   wire     [7:0]                      int_gmii_txd;
   wire                                int_gmii_tx_en;
   wire                                int_gmii_tx_er;

   wire                                int_retransmit;
   wire                                int_collision;

   wire     [7:0]                      int_tx_ifg_delay;
   wire                                int_tx_ifg_del_en;

   wire                                glbl_rstn_sync_bus2ip_clk;
   wire                                bus2ip_reset_sync_bus2ip_clk;
   wire                                int_mgmt_host_reset_i;
   (* shreg_extract = "no" *)
   reg                                 int_mgmt_host_reset = 0;
   wire                                int_tx_rst_mgmt;
   wire                                int_rx_rst_mgmt;
   wire                                glbl_rstn_sync_tx_axi_clk;
   wire                                int_tx_rst_mgmt_sync_tx_axi_clk;
   wire                                tx_axi_rstn_sync_tx_axi_clk;
   wire                                dcm_locked_sync_tx_axi_clk;
   wire                                glbl_rstn_sync_rx_axi_clk;
   wire                                int_rx_rst_mgmt_sync_rx_axi_clk;
   wire                                rx_axi_rstn_sync_rx_axi_clk;

   wire     [7:0]                      gmii_txd_to_phy;
   wire                                gmii_tx_en_to_phy;
   wire                                gmii_tx_er_to_phy;

   wire                                stats_reset;

   reg                                 speed_is_100_int;
   reg                                 speed_is_10_100_int;

   wire     [47:0]                     int_pause_source_mani;
   wire                                int_rx_half_duplex_mani;
   wire                                int_rx_vlan_enable_mani;
   wire                                int_rx_en_mani;
   wire                                int_rx_crc_mode_mani;
   wire                                int_rx_jumbo_enable_mani;
   wire                                int_rx_rst_mgmt_mani;
   wire                                int_tx_ifg_del_en_mani;
   wire                                int_tx_half_duplex_mani;
   wire                                int_tx_vlan_enable_mani;
   wire                                int_tx_en_mani;
   wire                                int_tx_crc_mode_mani;
   wire                                int_tx_jumbo_enable_mani;
   wire                                int_tx_rst_mgmt_mani;
   wire                                int_rx_lt_disable_mani;
   wire                                int_rx_ps_lt_disable_mani;
   wire     [14:0]                     int_rx_max_frame_length_mani;
   wire                                int_rx_max_frame_enable_mani;
   wire     [14:0]                     int_tx_max_frame_length_mani;
   wire                                int_tx_max_frame_enable_mani;
   wire                                int_rx_inband_ts_en_mani;
   wire                                int_tx_inband_cf_en_mani;
   wire     [15:0]                     int_tx_latency_adjust_mani;
   wire                                int_tx_latency_adjust_en_mani;
   wire                                update_pause_ad_mani;
   wire                                int_pfc_tx_enable;
   wire                                int_pfc_rx_enable;
   wire                                int_auto_xon_enable;
   wire     [7:0]                      int_tx_priority_en_mani;
   wire     [7:0]                      int_rx_priority_en_mani;
   wire     [3:0]                      int_pause_sample_addr;
   wire     [31:0]                     int_pause_qnta_bus_int;
   wire     [1:0]                      int_pfc_en;
   wire                                int_auto_xon;
   wire     [7:0]                      int_tx_priority_en;
   wire     [7:0]                      int_rx_priority_en;
   wire     [31:0]                     int_pause_quanta_bus;

   wire     [7:0]                      gmii_rxd_from_mii;
   wire                                gmii_rx_dv_from_mii;
   wire                                gmii_rx_er_from_mii;
   wire                                sample_now_toggle_rx_e;
   wire                                sample_now_toggle_rx_p;
   wire                                tx_sample_timer;
   wire                                e_tx_sample_timer;

   wire     [1:0]                      int_speed;
   wire     [1:0]                      int_speed_mani;

   wire                                alignment_err_pulse;
   wire                                int_alignment_err_pulse;
   wire                                int_extension;
   wire                                e_int_extension;

   wire                                tx_reset_i;
   (* shreg_extract = "no" *)
   reg                                 tx_reset = 0;
   wire                                rx_reset_i;
   (* shreg_extract = "no" *)
   reg                                 rx_reset = 0;

   wire     [79:0]                     rx_mac_config_vector_int;  // only used if have host
   wire     [79:0]                     tx_mac_config_vector_int;  // only used if have host

   wire                                tx_ce_sample;
   wire                                pauseaddressmatch;
   wire                                specialpauseaddressmatch;
   wire                                broadcastaddressmatch;
   wire                                unicastaddressmatch;

   wire                                int_promiscuous_mode;

   wire                                rxstatsaddressmatch;

   wire                                reclock_rx_config;
   wire                                address_valid_early;
   wire                                e_address_valid_early;
   wire     [7:0]                      data_early;
   wire                                data_valid_early;

   wire     [C_S_AXI_ADDR_WIDTH -1:0]  bus2ip_addr_top;
   wire     [1:0]                      bus2ip_cs_top;
   wire                                bus2ip_rdce_top;
   wire                                bus2ip_wrce_top;
   wire     [31:0]                     bus2ip_data_top;
   //wire     [C_S_AXI_ADDR_WIDTH -1:0]  bus2ip_addr_int;
   wire     [4:0]                      bus2ip_cs_int;
   wire                                bus2ip_rdce_int;
   wire                                bus2ip_wrce_int;
   wire     [31:0]                     bus2ip_data_int;
   wire     [31:0]                     ip2bus_data_temac;
   wire                                ip2bus_wrack_temac;
   wire                                ip2bus_rdack_temac;
   wire                                ip2bus_error_temac;
   wire     [31:0]                     ip2bus_data_avb;
   wire                                ip2bus_wrack_avb;
   wire                                ip2bus_rdack_avb;
   wire                                ip2bus_error_avb;
   wire                                ip2bus_rdack_config_int;
   wire                                ip2bus_wrack_config_int;
   wire                                ip2bus_error_config_int;
   wire     [31:0]                     ip2bus_data_config_int;
   wire                                ip2bus_rdack_stats_int;
   wire                                ip2bus_wrack_stats_int;
   wire                                ip2bus_error_stats_int;
   wire     [31:0]                     ip2bus_data_stats_int;
   wire                                ip2bus_rdack_intr_int;
   wire                                ip2bus_wrack_intr_int;
   wire                                ip2bus_error_intr_int;
   wire     [31:0]                     ip2bus_data_intr_int;
   wire                                ip2bus_rdack_af_int;
   wire                                ip2bus_wrack_af_int;
   wire                                ip2bus_error_af_int;
   wire     [31:0]                     ip2bus_data_af_int;

   wire                                tx_byte;
   wire                                rx_byte;
   reg                                 rx_frag;
   reg                                 rx_small;



   wire                                rx_filter_st_match;
   wire                                rx_filter_res_match;
   wire                                rx_filter_be_match;
   wire                                ptp_rx_filter_match_br;
   wire                                ptp_v1_rx_filter_match_br;
   wire                                e_rx_filter_st_match;
   wire                                e_rx_filter_res_match;
   wire                                e_rx_filter_be_match;
   wire                                e_ptp_rx_filter_match_br;
   wire                                e_ptp_v1_rx_filter_match_br;
   wire     [7:0]                      ptp_rx_tdata;
   wire                                ptp_rx_tvalid;
   wire                                ptp_rx_tlast;
   wire                                ptp_rx_tuser;
   wire     [7:0]                      ptp_v1_rx_tdata;
   wire                                ptp_v1_rx_tvalid;
   wire                                ptp_v1_rx_tlast;
   wire                                ptp_v1_rx_tuser;
   wire                                ptp_rx_ts_axis_tvalid;
   wire     [127:0]                    ptp_rx_ts_axis_tdata;
   wire                                ptp_v1_rx_ts_axis_tvalid;
   wire     [127:0]                    ptp_v1_rx_ts_axis_tdata;

   wire     [7:0]                      rx_axis_pmac_tdata_int;
   wire                                rx_axis_pmac_tvalid_int;
   wire                                rx_axis_pmac_tlast_int;
   wire                                rx_axis_pmac_tuser_int;
   wire                                rx_axis_pmac_tuser_i;
   wire                                rx_axis_pmac_st_filter_tuser_i;
   wire                                rx_axis_pmac_av_filter_tuser_i;


   wire     [7:0]                      rx_axis_mac_tdata_int;
   wire                                rx_axis_mac_tvalid_int;
   wire                                rx_axis_mac_tlast_int;
   wire                                rx_axis_mac_tuser_int;
   wire                                rx_axis_mac_tuser_i;
   wire                                rx_axis_st_filter_tuser_i;
   wire                                rx_axis_av_filter_tuser_i;
   wire                                rx_custom_timestamp_match;         
   wire                                e_rx_custom_timestamp_match;         
   wire                                rx_custom_timestamp_enable;         
   wire                                rx_custom_timestamp_mode;         
   wire     [11:0]                     rx_custom_timestamp_offset;          


   wire     [11:0]                     tx_custom_timestamp_offset;          
   wire                                tx_custom_timestamp_match;         
   wire                                e_tx_custom_timestamp_match;         
   wire                                tx_custom_timestamp_enable;         

   wire                                rx_axis_st_tuser_i;
   wire                                rx_axis_av_a_tuser;
   wire                                rx_axis_av_b_tuser;
   wire                                rx_axis_ptp_tuser;
   wire                                rx_axis_ptp_v1_tuser;
   wire                                rx_axis_legacy_tuser;

   wire     [47:0]                     systemtimer_s_field_int;
   wire     [31:0]                     systemtimer_ns_field_int;

   wire     [47:0]                     systemtimer_s_field_2_int;
   wire     [31:0]                     systemtimer_ns_field_2_int;




   wire     [C_AT_ENTRIES:0]           rx_filter_match;
   wire                                rx_filter_match_comb;
   wire                                rx_st_match;
   wire                                rx_av_a_match;
   wire                                rx_av_b_match;
   wire                                rx_ptp_match;
   wire                                rx_ptp_v1_match;

   wire                                tx_ts_axis_tvalid_int;
 
   reg                                 tx_ts_axis_tvalid_int_d1;
   wire     [127:0]                    tx_ts_axis_tdata_int;
   wire     [127:0]                    tx_ts_axis_tdata_1_int;
   wire     [127:0]                    tx_ts_axis_tdata_2_int;
   wire                                rx_ts_axis_tvalid_int;
   wire     [127:0]                    rx_ts_axis_tdata_int;
   wire     [127:0]                    rx_ts_axis_tdata_1_int;
   wire     [127:0]                    rx_ts_axis_tdata_2_int;

   wire                                interrupt_ptp_timer_int;
   wire                                interrupt_ptp_rx_int;
   wire                                interrupt_ptp_tx_int;

   wire                                interrupt_ptp_v1_rx_int;
   wire                                interrupt_ptp_v1_tx_int;
   // pause interface is either pausing tx or inserting a pause frame
   wire                                pause_active;

   // interrupt signals
   wire                                mdio_ready_int;
   // fixed width as we select which bits we are interested in based on the num_interrupts
   // mdio_ready is always at position 0
   wire     [8:0]                      intr_source;

   // added for 1588
   wire     [63:0]                     tx_command_field;
   wire     [63:0]                     tx_command_field_cs;
   wire     [63:0]                     e_tx_command_field_cs;
   wire     [63:0]                     correction_timer_internal;

   reg                                 rxstatsaddressmatch_del;

   wire                                core_has_sgmii;
   wire                                ptp_tx_done;

   wire       [47:0]               systemtimer_s_field;        
   wire       [31:0]               systemtimer_ns_field;   
   wire       [47:0]               systemtimer_s_field_2;      
   wire       [31:0]               systemtimer_ns_field_2;   

//br

   wire     [7:0]                      int_gmii_rxd_pipe;
   wire                                int_gmii_rx_dv_pipe;
   wire                                int_gmii_rx_er_pipe;
   wire     [7:0]                      int_gmii_rxd_preamptable;
   wire                                int_gmii_rx_dv_preamptable;
   wire                                int_gmii_rx_er_preamptable;
   wire     [7:0]                      int_gmii_rxd_express;
   wire                                int_gmii_rx_dv_express;
   wire                                int_gmii_rx_er_express;

   wire                                rcvd_respond_pkt_clr;
   wire                                rcvd_verify_pkt_clr;
   wire                                rcvd_respond_pkt;
   wire                                rcvd_verify_pkt;

   wire     [7:0]                      int_gmii_txd_p_tx_proc;
   wire                                int_gmii_tx_en_p_tx_proc;
   wire                                int_gmii_tx_er_p_tx_proc;
   wire     [7:0]                      int_gmii_txd_e_tx_proc;
   wire                                int_gmii_tx_en_e_tx_proc;
   wire                                int_gmii_tx_er_e_tx_proc;
   wire                                tx_pmac_going;
   wire                                tx_preempted;
   wire                                tx_fragment_restarted;
   wire                                tx_emac_going;
   wire     [7:0]                      int_gmii_txd_to_p_pipe;
   wire                                int_gmii_tx_en_to_p_pipe;
   wire                                int_gmii_tx_er_to_p_pipe;
   wire     [7:0]                      int_gmii_txd_to_e_pipe;
   wire                                int_gmii_tx_en_to_e_pipe;
   wire                                int_gmii_tx_er_to_e_pipe;
   wire                                pmac_tx_is_enabled;
   wire                                emac_tx_is_enabled;
   wire                                verify_pkt_done;                                     
   wire                                resp_pkt_done;                                     
   wire                                preemption_verified;                      
   wire                                send_verify_pkt;                      
   wire                                send_response_pkt;                      
   wire                                crc_reset_pmac_rx_pipe;                      
   wire                                crc_compute_pmac_rx_pipe;                      
   wire                                p_rx_is_preempted;                      
   wire                                rx_mcrc_ck;                      
   wire                                rx_mcrc_err;                      
   wire                                sample_timer_rx_e;                      
   wire                                sample_timer_rx_p;                      
   wire                                one_ms_toggle;                      
   reg                                 tx_enable_d1;

   wire                                e_tx_ce_sample;
   wire     [7:0]                      e_tx_data_int;
   wire                                e_tx_data_valid_int;
   wire                                e_tx_underrun_int;
   wire                                e_tx_ack_int;
   wire                                e_int_tx_ack_in;
   wire                                e_int_tx_end_of_tx;
   wire                                e_int_tx_valid;
   wire     [7:0]                      e_int_tx_data_out;
   wire                                e_int_tx_data_valid_out;
   wire                                e_int_tx_underrun_out;
   wire                                e_int_tx_crc_enable_out;

   wire                                e_int_tx_vlan_enable_out;
   wire                                e_int_retransmit;
   wire                                e_int_collision;

   wire                                e_rx_good_frame;
   wire                                e_rx_bad_frame;
   wire     [7:0]                      e_rx_data;
   wire                                e_rx_data_valid;
   wire     [7:0]                      e_int_rx_data_in;
   wire                                e_int_rx_data_valid_in;
   wire                                e_int_rx_good_frame_in;
   wire                                e_int_rx_bad_frame_in;
   wire                                e_int_rx_control_frame;
   wire                                e_int_rx_control_frame_any_da;
   //wire                                int_rx_half_duplex;
   //wire                                int_rx_lt_disable;
   //wire                                int_rx_ps_lt_disable;
   //wire     [14:0]                     int_rx_max_frame_length;
   //wire                                int_rx_max_frame_enable;

   wire                                e_pause_active;
   wire     [30:0]                     e_int_tx_statistics_vector;
   wire                                e_tx_ts_axis_tvalid_int;
   reg                                 e_tx_ts_axis_tvalid_int_d1;
   wire     [127:0]                    e_tx_ts_axis_tdata_int;
   wire     [127:0]                    e_tx_ts_axis_tdata_1_int;
   wire     [127:0]                    e_tx_ts_axis_tdata_2_int;
   wire                                e_rx_ts_axis_tvalid_int;
   wire     [127:0]                    e_rx_ts_axis_tdata_int;
   wire     [127:0]                    e_rx_ts_axis_tdata_1_int;
   wire     [127:0]                    e_rx_ts_axis_tdata_2_int;

   wire     [7:0]                      e_data_early;
   wire                                e_data_valid_early;
   wire                                e_int_rx_valid;
   wire     [24:0]                     e_int_rx_statistics_vector;

   wire                                e_tx_byte;
   wire                                e_rx_byte;
   reg                                 e_rx_frag;
   reg                                 e_rx_small;
   wire                                e_ip2bus_rdack_stats_int;
   wire                                e_ip2bus_wrack_stats_int;
   wire                                e_ip2bus_error_stats_int;
   wire     [31:0]                     e_ip2bus_data_stats_int;

   wire                                e_int_min_size;

   wire                                e_pauseaddressmatch;
   wire                                e_specialpauseaddressmatch;
   wire                                e_broadcastaddressmatch;
   wire                                e_unicastaddressmatch;
   reg                                 e_rxstatsaddressmatch_del;


   wire                                e_rxstatsaddressmatch;

   wire     [C_AT_ENTRIES:0]           e_rx_filter_match;
   wire                                e_rx_filter_match_comb;
   wire                                e_rx_st_match;
   wire                                e_rx_av_a_match;
   wire                                e_rx_av_b_match;
   wire                                e_rx_ptp_match;
   wire                                e_rx_ptp_v1_match;



   wire                                e_rx_axis_st_tuser_i;
   wire                                e_rx_axis_av_a_tuser;
   wire                                e_rx_axis_av_b_tuser;
   wire                                e_rx_axis_ptp_tuser;
   wire                                e_rx_axis_ptp_v1_tuser;
   wire                                e_rx_axis_legacy_tuser;
   wire                                tx_ce_sample_and_enabled;
   wire                                e_tx_ce_sample_and_enabled;
   wire                                rx_enable_and_not_preempted;

   wire     [2:0]                      mac_merge_status_verify;
   wire                                preemption_active;
   wire                                tx_preemption_enable;
   wire                                tx_disable_preemption_verif;
   wire                                st_guard_band_is_disabled;
   reg                                 st_guard_band_is_disabled_d1;
   wire                                non_st_guard_band_is_disabled;
   reg                                 non_st_guard_band_is_disabled_d1;
   wire                                hold_request_is_enabled;
   wire                                gb_overrun_counter_override;
   reg                                 hold_request_is_enabled_d1;
   reg                                 hold_request_is_enabled_d;
   wire                                hold_request_is_enabled_reg;
   wire     [1:0]                      tx_preemption_additional_frag_size;
   wire     [6:0]                      tx_preemption_verify_timer_value;
   wire     [8:0]                      qbu_hold_time_in_byte;
   wire     [5:0]                      qbu_release_time_in_byte;
   wire     [15:0]                     txd_byte_count_pmac_i;

   reg      [3:0]                      rx_br_statistics;
   reg      [1:0]                      tx_br_statistics;


   wire                                incr_frag_rx_br;
   wire                                incr_smd_err_rx_br;
   wire                                incr_assembly_err_rx_br;
   wire                                incr_assembly_ok_rx_br;

   reg                                 hold_request_pmac_internal_status_reg;
   reg                                 hold_request_pmac_internal_d1;
   wire                                incr_frag_tx_br;
   wire                                incr_hold_count_br;
 
   wire                                tx_frag_count_br;
   wire                                tx_hold_count_br;
   wire                                rx_frag_count_br;
   wire                                rx_smd_err_count_br;
   wire                                rx_assembly_err_count_br;
   wire                                rx_assembly_ok_count_br;
   wire                                tx_enable_emac;
   wire                                tx_enable_pmac;
   wire                                hold_request_pmac_internal;

   assign hold_request_pmac_internal  = hold_request_pmac & hold_request_is_enabled_reg;

   assign incr_hold_count_br          = hold_request_pmac_internal & ~hold_request_pmac_internal_d1;
 
   assign e_tx_sample_timer           = (EN_TX_CUSTOM_TIMESTAMP == 1) ? tx_sample_timer : 1'b0; 



   assign one_ms_toggle               = (TSN_RTC_ENABLE == 1) ? syntonised_nanosec_field[20] : syntonised_nanosec_field_in[20]; 


   assign tx_enable_emac              = tx_enable & emac_tx_is_enabled;
   assign tx_enable_pmac              = tx_enable & pmac_tx_is_enabled;

   assign tx_ce_sample_and_enabled    = (int_speed[1] == 1) ? pmac_tx_is_enabled :   tx_ce_sample & pmac_tx_is_enabled; // int_speed[1] == 1 (1 G)
   assign e_tx_ce_sample_and_enabled  = (int_speed[1] == 1) ? emac_tx_is_enabled : e_tx_ce_sample & emac_tx_is_enabled;
   assign rx_enable_and_not_preempted = rx_enable & ~p_rx_is_preempted;


   //-------------------------------------------------------------------
   // Assign internal signals to module outputs
   //-------------------------------------------------------------------
   assign tx_ptp_frame_available       = ~ptp_tx_done;

   assign int_mgmt_host_reset_out      = int_mgmt_host_reset;
   assign tx_reset_out                 = tx_reset;
   assign rx_reset_out                 = rx_reset;

   assign tx_command_field_cs[63:48]   = 0; // No checksum support
   assign tx_command_field_cs[47:32]   = {4'b0, tx_custom_timestamp_offset};  
   assign tx_command_field_cs[31:9]    = 0; //rsvd
   assign tx_command_field_cs[8]       = 0; // No checksum support
   assign tx_command_field_cs[7:1]     = 0; //rsvd
   assign tx_command_field_cs[0]       = tx_custom_timestamp_match; 


   assign e_tx_command_field_cs[63:48] = 0; // No checksum support
   assign e_tx_command_field_cs[47:32] = {4'b0, tx_custom_timestamp_offset};  
   assign e_tx_command_field_cs[31:9]  = 0; //rsvd
   assign e_tx_command_field_cs[8]     = 0; // No checksum support
   assign e_tx_command_field_cs[7:1]   = 0; //rsvd
   assign e_tx_command_field_cs[0]     = e_tx_custom_timestamp_match; 


   assign preemption_signal_vector[0]       = tx_preemption_enable; 
   assign preemption_signal_vector[31:1]    = 0;
   assign preemption_signal_vector[32]      = tx_disable_preemption_verif; 
   assign preemption_signal_vector[35:33]   = 0;
   assign preemption_signal_vector[37:36]   = tx_preemption_additional_frag_size;
   assign preemption_signal_vector[39:38]   = 0;
   assign preemption_signal_vector[46:40]   = tx_preemption_verify_timer_value;
   assign preemption_signal_vector[55:47]   = 0;
   assign preemption_signal_vector[58:56]   = mac_merge_status_verify;
   assign preemption_signal_vector[62:59]   = 0;
   assign preemption_signal_vector[63]      = preemption_active;


   assign preemption_signal_vector[64]      = tx_enable_emac;
   assign preemption_signal_vector[65]      = e_tx_ce_sample_and_enabled;
   assign preemption_signal_vector[66]      = emac_tx_is_enabled;
   assign preemption_signal_vector[67]      = e_tx_ce_sample;
   assign preemption_signal_vector[68]      = tx_enable_pmac;
   assign preemption_signal_vector[69]      = tx_ce_sample_and_enabled;
   assign preemption_signal_vector[70]      = pmac_tx_is_enabled;
   assign preemption_signal_vector[71]      = tx_ce_sample;
   assign preemption_signal_vector[72]      = rx_enable_and_not_preempted;
   assign preemption_signal_vector[73]      = p_rx_is_preempted;
   assign preemption_signal_vector[74]      = hold_request_is_enabled_d1;
   assign preemption_signal_vector[75]      = rx_filter_st_match;
   assign preemption_signal_vector[76]      = rx_filter_res_match;
   assign preemption_signal_vector[77]      = rx_filter_be_match;

   assign preemption_signal_vector[78]      = st_guard_band_is_disabled_d1;
   assign preemption_signal_vector[79]      = non_st_guard_band_is_disabled_d1;


   assign preemption_signal_vector[88:80]   = qbu_hold_time_in_byte;
   assign preemption_signal_vector[89]      = gb_overrun_counter_override;
   assign preemption_signal_vector[90]      = e_rx_filter_st_match;
   assign preemption_signal_vector[91]      = e_rx_filter_res_match;
   assign preemption_signal_vector[92]      = e_rx_filter_be_match;
   assign preemption_signal_vector[95:93]   = 0;
   assign preemption_signal_vector[101:96]  = qbu_release_time_in_byte;

   assign preemption_signal_vector[511:102]  = 0;


///////generate if (DEBUG_HOOKS == 0) begin : no_debug_hooks 
   assign tx_ts_axis_tdata_pmac             = tx_ts_axis_tdata_int;
   assign tx_ts_axis_tvalid_pmac            = ~tx_ts_axis_tvalid_int & tx_ts_axis_tvalid_int_d1;
   assign rx_ts_axis_tdata_pmac             = rx_ts_axis_tdata_int;
   assign rx_ts_axis_tvalid_pmac            = rx_ts_axis_tvalid_int;

   assign tx_ts_axis_tdata             = e_tx_ts_axis_tdata_int;
   assign tx_ts_axis_tvalid            = ~e_tx_ts_axis_tvalid_int & e_tx_ts_axis_tvalid_int_d1;
   assign rx_ts_axis_tdata             = e_rx_ts_axis_tdata_int;
   assign rx_ts_axis_tvalid            = e_rx_ts_axis_tvalid_int;
/////// end
///////endgenerate
//////generate if (DEBUG_HOOKS == 1) begin : debug_hooks 
//////
//////tsn_temac_v1_0_9_debug_hooks tx_debug_hooks_inst 
//////
////// (
//////
//////     .clk                                   (tx_axi_clk), 		 
//////     .reset                                 (tx_reset), 
//////     .clk_enable                            (1'b1),                 
//////
//////     .ts_valid_in                           (tx_ts_axis_tvalid_int),                 
//////     .ts_data_in                            (tx_ts_axis_tdata_int),                 
//////
//////     .ts_valid_out                          (tx_ts_axis_tvalid),                 
//////     .ts_data_out                           (tx_ts_axis_tdata),                 
//////  
//////
//////     .stream_in_tdata                       (tx_axis_mac_tdata), 
//////     .stream_in_tvalid                      (tx_axis_mac_tvalid), 
//////     .stream_in_tlast                       (tx_axis_mac_tlast), 
//////     .stream_in_tuser                       (1'b0), 
//////     .stream_in_tready                      (tx_axis_mac_tready)
//////     );
//////
//////tsn_temac_v1_0_9_debug_hooks rx_debug_hooks_inst 
//////
////// (
//////
//////     .clk                                   (rx_axi_clk), 		 
//////     .reset                                 (rx_reset), 
//////     .clk_enable                            (1'b1),                 
////// 
//////     .ts_valid_in                           (rx_ts_axis_tvalid_int),                 
//////     .ts_data_in                            (rx_ts_axis_tdata_int),                 
//////
//////     .ts_valid_out                          (rx_ts_axis_tvalid),                 
//////     .ts_data_out                           (rx_ts_axis_tdata),                 
//////  
//////
//////     .stream_in_tdata                       (rx_axis_mac_tdata), 
//////     .stream_in_tvalid                      (rx_axis_mac_tvalid), 
//////     .stream_in_tlast                       (rx_axis_mac_tlast), 
//////     .stream_in_tuser                       (1'b0), 
//////     .stream_in_tready                      (1'b1)
//////     );
//////
//////
////// end
//////endgenerate
//////
   assign interrupt_ptp_timer          = interrupt_ptp_timer_int;
   assign interrupt_ptp_rx             = interrupt_ptp_rx_int;
   assign interrupt_ptp_tx             = interrupt_ptp_tx_int;
   assign interrupt_ptp_v1_rx          = interrupt_ptp_v1_rx_int;
   assign interrupt_ptp_v1_tx          = interrupt_ptp_v1_tx_int;



 generate if (TSN_RTC_ENABLE == 1 && SYNTONIZED_TIMESTAMPS == 1 && C_1588 != 1 && C_1588 != 0) begin : synto_timestamp_no_tod_rtc_node

  assign systemtimer_s_field    = syntonised_sec_field;
  assign systemtimer_ns_field   = syntonised_nanosec_field;

  assign systemtimer_s_field_2  = 0;
  assign systemtimer_ns_field_2 = 0;

  assign e_tx_ts_axis_tdata_int   = e_tx_ts_axis_tdata_1_int;
  assign e_rx_ts_axis_tdata_int   = e_rx_ts_axis_tdata_1_int;
  assign tx_ts_axis_tdata_int   = tx_ts_axis_tdata_1_int;
  assign rx_ts_axis_tdata_int   = rx_ts_axis_tdata_1_int;

 end
 endgenerate

 generate if (TSN_RTC_ENABLE == 1 && SYNTONIZED_TIMESTAMPS == 0 && C_1588 != 1 && C_1588 != 0) begin : syncho_timestamp_no_tod_rtc_node

  assign systemtimer_s_field    = rtc_sec_field;
  assign systemtimer_ns_field   = rtc_nanosec_field;

  assign systemtimer_s_field_2  = 0;
  assign systemtimer_ns_field_2 = 0;

  assign e_tx_ts_axis_tdata_int   = e_tx_ts_axis_tdata_1_int;
  assign e_rx_ts_axis_tdata_int   = e_rx_ts_axis_tdata_1_int;
  assign tx_ts_axis_tdata_int   = tx_ts_axis_tdata_1_int;
  assign rx_ts_axis_tdata_int   = rx_ts_axis_tdata_1_int;

 end
 endgenerate

 generate if (TSN_RTC_ENABLE == 1 && SYNTONIZED_TIMESTAMPS == 0 && C_1588 == 1) begin : syncho_timestamp_tod_rtc_node

  assign systemtimer_s_field    = rtc_sec_field;
  assign systemtimer_ns_field   = rtc_nanosec_field;

  assign systemtimer_s_field_2  = 0;
  assign systemtimer_ns_field_2 = 0;

  assign e_tx_ts_axis_tdata_int   = e_tx_ts_axis_tdata_1_int;
  assign e_rx_ts_axis_tdata_int   = e_rx_ts_axis_tdata_1_int;
  assign tx_ts_axis_tdata_int   = tx_ts_axis_tdata_1_int;
  assign rx_ts_axis_tdata_int   = rx_ts_axis_tdata_1_int;

 end
 endgenerate

 generate if (TSN_RTC_ENABLE == 1 && SYNTONIZED_TIMESTAMPS == 1 && C_1588 == 1) begin : synto_timestamp_tod_rtc_node

  assign systemtimer_s_field    = rtc_sec_field;
  assign systemtimer_ns_field   = rtc_nanosec_field;


  assign systemtimer_s_field_2  = syntonised_sec_field;
  assign systemtimer_ns_field_2 = syntonised_nanosec_field;

  assign e_tx_ts_axis_tdata_int   = e_tx_ts_axis_tdata_2_int;
  assign e_rx_ts_axis_tdata_int   = e_rx_ts_axis_tdata_2_int;
  assign tx_ts_axis_tdata_int   = tx_ts_axis_tdata_2_int;
  assign rx_ts_axis_tdata_int   = rx_ts_axis_tdata_2_int;

 end
 endgenerate

 generate if (TSN_RTC_ENABLE == 0 && SYNTONIZED_TIMESTAMPS == 1 && C_1588 != 1 && C_1588 != 0) begin : synto_timestamp_no_tod_non_rtc_node

  assign systemtimer_s_field    = syntonised_sec_field_in;
  assign systemtimer_ns_field   = syntonised_nanosec_field_in;

  assign systemtimer_s_field_2  = 0;
  assign systemtimer_ns_field_2 = 0;

  assign e_tx_ts_axis_tdata_int   = e_tx_ts_axis_tdata_1_int;
  assign e_rx_ts_axis_tdata_int   = e_rx_ts_axis_tdata_1_int;
  assign tx_ts_axis_tdata_int   = tx_ts_axis_tdata_1_int;
  assign rx_ts_axis_tdata_int   = rx_ts_axis_tdata_1_int;

 end
 endgenerate

 generate if (TSN_RTC_ENABLE == 0 && SYNTONIZED_TIMESTAMPS == 0 && C_1588 != 1 && C_1588 != 0) begin : syncho_timestamp_no_tod_non_rtc_node

  assign systemtimer_s_field    = rtc_sec_field_in;
  assign systemtimer_ns_field   = rtc_nanosec_field_in;

  assign systemtimer_s_field_2  = 0;
  assign systemtimer_ns_field_2 = 0;

  assign e_tx_ts_axis_tdata_int   = e_tx_ts_axis_tdata_1_int;
  assign e_rx_ts_axis_tdata_int   = e_rx_ts_axis_tdata_1_int;
  assign tx_ts_axis_tdata_int   = tx_ts_axis_tdata_1_int;
  assign rx_ts_axis_tdata_int   = rx_ts_axis_tdata_1_int;

 end
 endgenerate

 generate if (TSN_RTC_ENABLE == 0 && SYNTONIZED_TIMESTAMPS == 0 && C_1588 == 1) begin : syncho_timestamp_tod_non_rtc_node

  assign systemtimer_s_field    = rtc_sec_field_in;
  assign systemtimer_ns_field   = rtc_nanosec_field_in;

  assign systemtimer_s_field_2  = 0;
  assign systemtimer_ns_field_2 = 0;

  assign e_tx_ts_axis_tdata_int   = e_tx_ts_axis_tdata_1_int;
  assign e_rx_ts_axis_tdata_int   = e_rx_ts_axis_tdata_1_int;
  assign tx_ts_axis_tdata_int   = tx_ts_axis_tdata_1_int;
  assign rx_ts_axis_tdata_int   = rx_ts_axis_tdata_1_int;

 end
 endgenerate

 generate if (TSN_RTC_ENABLE == 0 && SYNTONIZED_TIMESTAMPS == 1 && C_1588 == 1) begin : synto_timestamp_tod_non_rtc_node

  assign systemtimer_s_field    = rtc_sec_field_in;
  assign systemtimer_ns_field   = rtc_nanosec_field_in;


  assign systemtimer_s_field_2  = syntonised_sec_field_in;
  assign systemtimer_ns_field_2 = syntonised_nanosec_field_in;

  assign e_tx_ts_axis_tdata_int   = e_tx_ts_axis_tdata_2_int;
  assign e_rx_ts_axis_tdata_int   = e_rx_ts_axis_tdata_2_int;
  assign tx_ts_axis_tdata_int   = tx_ts_axis_tdata_2_int;
  assign rx_ts_axis_tdata_int   = rx_ts_axis_tdata_2_int;

 end
 endgenerate

 generate if (C_1588 == 0) begin : no_ptp 

  assign systemtimer_s_field    = 0;
  assign systemtimer_ns_field   = 0;


  assign systemtimer_s_field_2  = 0;
  assign systemtimer_ns_field_2 = 0;

  assign e_tx_ts_axis_tdata_int   = 0;
  assign e_rx_ts_axis_tdata_int   = 0;
  assign tx_ts_axis_tdata_int   = 0;
  assign rx_ts_axis_tdata_int   = 0;

 end
 endgenerate





   //--------------------------------------------------------------------------
   // Reset Logic
   //--------------------------------------------------------------------------

   // The resets for the various MAC sub-components are global reset OR'ed with
   // the software resets from the configuration block. They are then passed
   // through synchroniser components so that the falling edge occurs at a
   // controllable time w.r.t. the relevant clock edge.

   assign int_rst                      = !glbl_rstn;

   tsn_temac_v1_0_9_sync_reset sync_stats_reset (
      .reset_in                        (int_rst),
      .clk                             (stats_ref_clk),
      .reset_out                       (stats_reset)
   );

   // Fix CDC-12: Sync all the resets to TX AXI Clock
   tsn_temac_v1_0_9_sync_reset #(
      .RESET_IS_ACTIVE_HIGH (0)
    )  
    sync_glbl_rstn_tx_clk (
      .reset_in                       (glbl_rstn),
      .clk                            (tx_axi_clk),
      .reset_out                      (glbl_rstn_sync_tx_axi_clk)
   );

   tsn_temac_v1_0_9_sync_reset  #(
      .RESET_IS_ACTIVE_HIGH (0)
    )  
    sync_tx_axi_rstn_tx_clk (
      .reset_in                       (tx_axi_rstn),
      .clk                            (tx_axi_clk),
      .reset_out                      (tx_axi_rstn_sync_tx_axi_clk)
   );

   tsn_temac_v1_0_9_sync_reset sync_int_tx_rst_mgmt_tx_clk (
      .reset_in                       (int_tx_rst_mgmt),
      .clk                            (tx_axi_clk),
      .reset_out                      (int_tx_rst_mgmt_sync_tx_axi_clk)
   );

   tsn_temac_v1_0_9_sync_reset  #(
      .RESET_IS_ACTIVE_HIGH (0)
    )  
    sync_dcm_locked_tx_clk (
      .reset_in                       (dcm_locked),
      .clk                            (tx_axi_clk),
      .reset_out                      (dcm_locked_sync_tx_axi_clk)
   );
   assign tx_reset_i = !glbl_rstn_sync_tx_axi_clk || !tx_axi_rstn_sync_tx_axi_clk || int_tx_rst_mgmt_sync_tx_axi_clk || !dcm_locked_sync_tx_axi_clk;

   always @(posedge tx_axi_clk)
   begin
     tx_reset <= tx_reset_i;
   end

   always @(posedge tx_axi_clk)
   begin
     tx_enable_d1 <= tx_enable;
   end

   always @(posedge tx_axi_clk)
   begin
     tx_ts_axis_tvalid_int_d1 <= tx_ts_axis_tvalid_int;
   end

   always @(posedge tx_axi_clk)
   begin
     e_tx_ts_axis_tvalid_int_d1 <= e_tx_ts_axis_tvalid_int;
   end



   always @(posedge tx_axi_clk)
   begin
     if (tx_reset)
       hold_request_pmac_internal_d1 <= 0;
     else if (tx_enable_d1)
       hold_request_pmac_internal_d1 <= hold_request_pmac_internal;
   end


   always @(posedge tx_axi_clk)
   begin
       hold_request_pmac_internal_status_reg <= hold_request_pmac_internal;
   end


   always @(posedge bus2ip_clk)
   begin
       hold_request_is_enabled_d1 <= hold_request_is_enabled;
   end

   always @(posedge bus2ip_clk)
   begin
       hold_request_is_enabled_d <= hold_request_is_enabled;
   end



   always @(posedge bus2ip_clk)
   begin
       st_guard_band_is_disabled_d1 <= st_guard_band_is_disabled;
   end

   always @(posedge bus2ip_clk)
   begin
       non_st_guard_band_is_disabled_d1 <= non_st_guard_band_is_disabled;
   end



  // Resynchronise
 xpm_cdc_single #(
    .SIM_ASSERT_CHK (0),
//  .VERSION        ("REV1.0"),
    .SRC_INPUT_REG  (0),
    .DEST_SYNC_FF   (3)
  ) hold_request_bit (
    .src_clk        (1'b0),
    .dest_clk       (tx_axi_clk),
    .src_in         (hold_request_is_enabled_d),
    .dest_out       (hold_request_is_enabled_reg)
  );



   // Fix CDC-12: Sync all the resets to RX AXI Clock
   tsn_temac_v1_0_9_sync_reset  #(
      .RESET_IS_ACTIVE_HIGH (0)
    )  
   sync_glbl_rstn_rx_clk (
      .reset_in                       (glbl_rstn),
      .clk                            (rx_axi_clk),
      .reset_out                      (glbl_rstn_sync_rx_axi_clk)
   );

   tsn_temac_v1_0_9_sync_reset sync_int_rx_rst_mgmt_rx_clk (
      .reset_in                       (int_rx_rst_mgmt),
      .clk                            (rx_axi_clk),
      .reset_out                      (int_rx_rst_mgmt_sync_rx_axi_clk)
   );

   tsn_temac_v1_0_9_sync_reset  #(
      .RESET_IS_ACTIVE_HIGH (0)
    )  
   sync_axi_rx_rstn_rx_clk (
      .reset_in                       (rx_axi_rstn),
      .clk                            (rx_axi_clk),
      .reset_out                      (rx_axi_rstn_sync_rx_axi_clk)
   );

   assign rx_reset_i = !glbl_rstn_sync_rx_axi_clk || int_rx_rst_mgmt_sync_rx_axi_clk || !rx_axi_rstn_sync_rx_axi_clk;

   always @(posedge rx_axi_clk)
   begin
     rx_reset <= rx_reset_i;
   end 

   generate
   if (C_HAS_HOST) begin : man_reset

      tsn_temac_v1_0_9_sync_reset #(
        .RESET_IS_ACTIVE_HIGH (0)
      )  
      sync_glbl_rstn_bus2ip_clk (
         .reset_in                    (glbl_rstn),
         .clk                         (bus2ip_clk),
         .reset_out                   (glbl_rstn_sync_bus2ip_clk)
      );
  
      tsn_temac_v1_0_9_sync_reset sync_bus2ip_reset_bus2ip_clk (
         .reset_in                    (bus2ip_reset),
         .clk                         (bus2ip_clk),
         .reset_out                   (bus2ip_reset_sync_bus2ip_clk)
      );
   
     assign int_mgmt_host_reset_i = !glbl_rstn_sync_bus2ip_clk || bus2ip_reset_sync_bus2ip_clk;

     always @(posedge bus2ip_clk)
     begin
       int_mgmt_host_reset <= int_mgmt_host_reset_i;
     end

   end
   else begin : noman_reset

     always @(posedge bus2ip_clk)
     begin
       int_mgmt_host_reset = !glbl_rstn;
     end

   end
   endgenerate


   //-------------------------------------------------------------------
   // Speed control logic
   //-------------------------------------------------------------------

   // Convert int_speed format (from configuration) into one-hot signals
   always @(int_speed)
   begin
      case (int_speed)
         2'b00 : begin
            speed_is_10_100_int        = 1'b1;
            speed_is_100_int           = 1'b0;
         end
         2'b01 : begin
            speed_is_10_100_int        = 1'b1;
            speed_is_100_int           = 1'b1;
         end
         default : begin
            speed_is_10_100_int        = 1'b0;
            speed_is_100_int           = 1'b0;
         end
      endcase
   end


   // If we have a host interface then register the speed outputs - otherwise
   // route out.
   generate
   if (C_HAS_HOST) begin : speed_host

      always @(posedge bus2ip_clk)
      begin
         speed_is_10_100               <= speed_is_10_100_int;
         speed_is_100                  <= speed_is_100_int;
      end

   end
   else begin :speed_nohost

      always @(speed_is_10_100_int or speed_is_100_int)
      begin
         speed_is_10_100               <= speed_is_10_100_int;
         speed_is_100                  <= speed_is_100_int;
      end

   end
   endgenerate


   //---------------------------------------------------------------------------
   // TEMAC Physical Interface Logic
   //---------------------------------------------------------------------------

   // The following module is only used for external interfaces (GMII, MII or
   // RGMII).  In Internal Interface mode its output signals are bypassed.
   //
   // The module will convert 8-bit Transmitter Outputs to GMII (8-bits) or MII
   // (4-bits) based on operating SPEED
   tsn_temac_v1_0_9_gmii_mii_tx #(
      .C_HALF_DUPLEX                   (C_HALF_DUPLEX)
   ) gmii_mii_tx_gen (
      .reset                           (tx_reset),
      .clk                             (tx_axi_clk),
      .clken                           (gmii_tx_clken),
      .speed_is_10_100                 (speed_is_10_100_int),
      .gmii_txd_from_core              (int_gmii_txd),
      .gmii_tx_en_from_core            (int_gmii_tx_en),
      .gmii_tx_er_from_core            (int_gmii_tx_er),
      .gmii_col                        (gmii_col),
      .half_duplex                     (int_tx_half_duplex),
      .extension                       (int_extension),
      .sample_timer                    (tx_sample_timer),
      .gmii_txd_to_phy                 (gmii_txd_to_phy),
      .gmii_tx_en_to_phy               (gmii_tx_en_to_phy),
      .gmii_tx_er_to_phy               (gmii_tx_er_to_phy)
   );


   // The following module is only used for external interfaces (GMII, MII or
   // RGMII).  In Internal Interface mode its output signals are bypassed.
   //
   // The module will convert Receiver input from 8 bit (GMII) or 4 bits (MII)
   // into the uniform  8 bit interface for Receiver block based on operating
   // SPEED.
   tsn_temac_v1_0_9_gmii_mii_rx  #(
      .EN_FRAME_PREEMPTION             (1)
   ) gmii_mii_rx_gen (

      .reset                           (rx_reset),
      .rx_clk                          (rx_axi_clk),
      .p_rx_is_preempted               (p_rx_is_preempted),
      .speed_is_10_100                 (speed_is_10_100_int),
      .gmii_rxd_from_phy               (gmii_rxd),
      .gmii_rx_dv_from_phy             (gmii_rx_dv),
      .gmii_rx_er_from_phy             (gmii_rx_er),
      .gmii_rxd_to_core                (gmii_rxd_from_mii),
      .gmii_rx_dv_to_core              (gmii_rx_dv_from_mii),
      .gmii_rx_er_to_core              (gmii_rx_er_from_mii),
      .alignment_err_pulse             (alignment_err_pulse),
      .sample_now_toggle_e             (sample_now_toggle_rx_e),
      .sample_now_toggle_p             (sample_now_toggle_rx_p),
      .sample_now_toggle               ()
   );


   // The following generate statements set whether the above 2 modules are
   // used (GMII, MII or RGMII) or their outputs bypassed (Internal Interface
   // mode).
   generate
   if (C_PHYSICAL_INTERFACE == "INTERNAL") begin : internal_phy_mode
      assign core_has_sgmii            = 1'b1;
      assign gmii_txd                  = int_gmii_txd;
      assign gmii_tx_en                = int_gmii_tx_en;
      assign gmii_tx_er                = int_gmii_tx_er;
      assign int_gmii_rxd              = gmii_rxd;
      assign int_gmii_rx_dv            = gmii_rx_dv;
      assign int_gmii_rx_er            = gmii_rx_er;
      assign int_alignment_err_pulse   = 1'b0;
   end
   else begin : external_phy_mode
      assign core_has_sgmii            = 1'b0;
      assign gmii_txd                  = gmii_txd_to_phy;
      assign gmii_tx_en                = gmii_tx_en_to_phy;
      assign gmii_tx_er                = gmii_tx_er_to_phy;
      assign int_gmii_rxd              = gmii_rxd_from_mii;
      assign int_gmii_rx_dv            = gmii_rx_dv_from_mii;
      assign int_gmii_rx_er            = gmii_rx_er_from_mii;
      assign int_alignment_err_pulse   = alignment_err_pulse;
   end
   endgenerate

   // Note: the core_has_sgmii signal (set above) is legacy.  It used to be a
   // port on the core (when the code was shared with the embedded EMACs in
   // Virtex-4 to Virtex-6 devices) but now it is just slaved to the
   // C_PHYSICAL_INTERFACE generic.  In this module, the use of core_has_sgmii
   // has been designed out, but it is still routed to lower level modules
   // where it is currently used as a signal rather than a generic.


   //-------------------------------------------------------------------------
   // Top level IPIC (Management) MUX when AVB is present:
   // to select between AVB and TEMAC
   //-------------------------------------------------------------------------
   generate
   //if (TSN_CHANGE_ENABLE) begin : tsn_ipic_mux //When TSN_CHANGE_ENABLE = 1, C_AVB is forced to 0 in tcl
   if (TSN_CHANGE_ENABLE) begin : avb_ipic_mux // kept the avb name to avoid hierarchichal changes in xdc

      // This range is reserved at axi_lute to bus2ip wrapper 0x00000-0x001FF RESERVED (axi-ethernet)
      // 0x00200-0x007FF TEMAC
      // Reserved in this wrapper 0x00800-0x03FFF reserved
      // Made reserved in TSN// 0x04000-0x07FFF TXVLAN (axi-ethernet)
      // Made reserved in TSN// 0x08000-0x0BFFF RXVLAN (axi-ethernet)
      // Made reserved in TSN// 0x0C000-0x0FFFF reserved
      // 0x10000-0x13FFF AVB
      // Made reserved 0x14000-0x1FFFF reserved
      // Address width [16:0] does not access this space in TEMAC// 0x20000-0x3FFFF Multicast (axi-ethernet)

      tsn_temac_v1_0_9_ipic_mux_tsn_en_top #(
         .EN_FRAME_PREEMPTION          (1),
         .C_S_AXI_ADDR_WIDTH           (C_S_AXI_ADDR_WIDTH),
         .EN_1588_PTP_V1               (EN_1588_PTP_V1) 
      ) ipic_mux_inst (
         .bus2ip_clk                   (bus2ip_clk),
         .bus2ip_reset                 (bus2ip_reset),
         .bus2ip_addr                  (bus2ip_addr),
         .bus2ip_cs                    (bus2ip_cs),
         .bus2ip_rdce                  (bus2ip_rdce),
         .bus2ip_wrce                  (bus2ip_wrce),
         .bus2ip_data                  (bus2ip_data),
         .bus2ip_addr_int              (bus2ip_addr_top),
         .bus2ip_cs_int                (bus2ip_cs_top),
         .bus2ip_rdce_int              (bus2ip_rdce_top),
         .bus2ip_wrce_int              (bus2ip_wrce_top),
         .bus2ip_data_int              (bus2ip_data_top),
         .ip2bus_rdack                 (ip2bus_rdack),
         .ip2bus_wrack                 (ip2bus_wrack),
         .ip2bus_error                 (ip2bus_error),
         .ip2bus_data                  (ip2bus_data),
         .ip2bus_rdack_temac           (ip2bus_rdack_temac),
         .ip2bus_rdack_avb             (ip2bus_rdack_avb),
         .ip2bus_wrack_temac           (ip2bus_wrack_temac),
         .ip2bus_wrack_avb             (ip2bus_wrack_avb),
         .ip2bus_error_temac           (ip2bus_error_temac),
         .ip2bus_error_avb             (ip2bus_error_avb),
         .ip2bus_data_temac            (ip2bus_data_temac),
         .ip2bus_data_avb              (ip2bus_data_avb)
      );

   end
   endgenerate


   generate
   //if (C_AVB && !TSN_CHANGE_ENABLE) begin : avb_ipic_mux
   if (C_AVB && !TSN_CHANGE_ENABLE) begin : non_tsn_avb_ipic_mux

      // 0x00000-0x001FF RESERVED (axi-ethernet)
      // 0x00200-0x007FF TEMAC
      // 0x00800-0x03FFF reserved
      // 0x04000-0x07FFF TXVLAN (axi-ethernet)
      // 0x08000-0x0BFFF RXVLAN (axi-ethernet)
      // 0x0C000-0x0FFFF reserved
      // 0x10000-0x13FFF AVB
      // 0x14000-0x1FFFF reserved
      // 0x20000-0x3FFFF Multicast (axi-ethernet)

      tsn_temac_v1_0_9_ipic_mux_top #(
         .C_S_AXI_ADDR_WIDTH           (C_S_AXI_ADDR_WIDTH)
      ) ipic_mux_inst (
         .bus2ip_clk                   (bus2ip_clk),
         .bus2ip_reset                 (bus2ip_reset),
         .bus2ip_addr                  (bus2ip_addr),
         .bus2ip_cs                    (bus2ip_cs),
         .bus2ip_rdce                  (bus2ip_rdce),
         .bus2ip_wrce                  (bus2ip_wrce),
         .bus2ip_data                  (bus2ip_data),
         .bus2ip_addr_int              (bus2ip_addr_top),
         .bus2ip_cs_int                (bus2ip_cs_top),
         .bus2ip_rdce_int              (bus2ip_rdce_top),
         .bus2ip_wrce_int              (bus2ip_wrce_top),
         .bus2ip_data_int              (bus2ip_data_top),
         .ip2bus_rdack                 (ip2bus_rdack),
         .ip2bus_wrack                 (ip2bus_wrack),
         .ip2bus_error                 (ip2bus_error),
         .ip2bus_data                  (ip2bus_data),
         .ip2bus_rdack_temac           (ip2bus_rdack_temac),
         .ip2bus_rdack_avb             (ip2bus_rdack_avb),
         .ip2bus_wrack_temac           (ip2bus_wrack_temac),
         .ip2bus_wrack_avb             (ip2bus_wrack_avb),
         .ip2bus_error_temac           (ip2bus_error_temac),
         .ip2bus_error_avb             (ip2bus_error_avb),
         .ip2bus_data_temac            (ip2bus_data_temac),
         .ip2bus_data_avb              (ip2bus_data_avb)
      );

   end
   endgenerate

   generate
   //if (!C_AVB && !TSN_CHANGE_ENABLE) begin : avb_ipic_mux_tieoff
   if (!C_AVB && !TSN_CHANGE_ENABLE) begin : non_tsn_avb_ipic_mux_tieoff
   //else begin : avb_ipic_mux_tieoff
      assign bus2ip_addr_top           = bus2ip_addr;
      assign bus2ip_cs_top             = {1'b0, bus2ip_cs};
      assign bus2ip_rdce_top           = bus2ip_rdce;
      assign bus2ip_wrce_top           = bus2ip_wrce;
      assign bus2ip_data_top           = bus2ip_data;
      assign ip2bus_rdack              = ip2bus_rdack_temac;
      assign ip2bus_wrack              = ip2bus_wrack_temac;
      assign ip2bus_error              = ip2bus_error_temac;
      assign ip2bus_data               = ip2bus_data_temac;
   end
   endgenerate


   //---------------------------------------------------------------------------
   // Multiplex IPIC (Management I/F) RdAck, WrAck, Error, Data response signals
   // onto IP2BUS
   //---------------------------------------------------------------------------

   tsn_temac_v1_0_9_ipic_mux #(
      .EN_FRAME_PREEMPTION             (1),
      .C_NUM_PMAC_STATS                (C_NUM_STATS+6),
      .C_NUM_STATS                     (C_NUM_STATS)
   )   ipic_mux_inst (     
      .bus2ip_clk                      (bus2ip_clk),
      .bus2ip_reset                    (int_mgmt_host_reset),
      .bus2ip_addr                     (bus2ip_addr_top[11:3]),
      .bus2ip_cs                       (bus2ip_cs_top[0]),
      .bus2ip_rdce                     (bus2ip_rdce_top),
      .bus2ip_wrce                     (bus2ip_wrce_top),
      .bus2ip_data                     (bus2ip_data_top),
      .bus2ip_cs_int                   (bus2ip_cs_int),
      .bus2ip_rdce_int                 (bus2ip_rdce_int),
      .bus2ip_wrce_int                 (bus2ip_wrce_int),
      .bus2ip_data_int                 (bus2ip_data_int),
      .ip2bus_rdack_pmac_stats         (ip2bus_rdack_stats_int), 
      .ip2bus_wrack_pmac_stats         (ip2bus_wrack_stats_int), 
      .ip2bus_error_pmac_stats         (ip2bus_error_stats_int),  
      .ip2bus_data_pmac_stats          (ip2bus_data_stats_int), 
      .ip2bus_rdack                    (ip2bus_rdack_temac),
      .ip2bus_wrack                    (ip2bus_wrack_temac),
      .ip2bus_error                    (ip2bus_error_temac),
      .ip2bus_data                     (ip2bus_data_temac),
      .ip2bus_rdack_stats              (e_ip2bus_rdack_stats_int),
      .ip2bus_rdack_config             (ip2bus_rdack_config_int),
      .ip2bus_rdack_intr               (ip2bus_rdack_intr_int),
      .ip2bus_rdack_af                 (ip2bus_rdack_af_int),
      .ip2bus_wrack_stats              (e_ip2bus_wrack_stats_int),
      .ip2bus_wrack_config             (ip2bus_wrack_config_int),
      .ip2bus_wrack_intr               (ip2bus_wrack_intr_int),
      .ip2bus_wrack_af                 (ip2bus_wrack_af_int),
      .ip2bus_error_stats              (e_ip2bus_error_stats_int),
      .ip2bus_error_config             (ip2bus_error_config_int),
      .ip2bus_error_intr               (ip2bus_error_intr_int),
      .ip2bus_error_af                 (ip2bus_error_af_int),
      .ip2bus_data_stats               (e_ip2bus_data_stats_int),
      .ip2bus_data_config              (ip2bus_data_config_int),
      .ip2bus_data_intr                (ip2bus_data_intr_int),
      .ip2bus_data_af                  (ip2bus_data_af_int)
   );

   //---------------------------------------------------------------------------
   // TSN changes (when TSN_CHANGE_ENABLE = 1 && TSN_RTC_ENABLE = 1, RTC & PTP BRAM functions is
   // inside MAC
   //-

   generate
   if (TSN_CHANGE_ENABLE && TSN_RTC_ENABLE) begin : avb_rtc_ptp
      tsn_temac_v1_0_9_eth_rtc_ptp #(
         .C_SIMULATION_MODE            (0),
         .C_1588                       (C_1588),
         .EN_FRAME_PREEMPTION          (1),
         .SYNTONIZED_TIMESTAMPS        (SYNTONIZED_TIMESTAMPS),
         .C_XDEVICEFAMILY              (C_FAMILY),
         .C_S_AXI_ADDR_WIDTH           (C_S_AXI_ADDR_WIDTH),
         .PTP_BRAM_PARTITION_SIZE      (PTP_BRAM_PARTITION_SIZE),
         .NUM_PTP_RX_MSG               (NUM_PTP_RX_MSG),
         .PTP_V1_BRAM_PARTITION_SIZE   (PTP_V1_BRAM_PARTITION_SIZE),
         .NUM_PTP_V1_RX_MSG            (NUM_PTP_V1_RX_MSG),
         .EN_1588_PTP_V1               (EN_1588_PTP_V1) 
      ) eth_avb_inst (
         .reset                        (glbl_rstn),

         // interface to the mac
         .tx_clk                       (tx_axi_clk),
         .tx_reset                     (tx_reset),
         .tx_enable                    (tx_enable_pmac),

         .tx_clk_en_out                (tx_ce_sample),
         .byte_count_pmac              (txd_byte_count_pmac_i),
         .tx_data                      (tx_data_int),
         .tx_data_valid                (tx_data_valid_int),
         .tx_underrun                  (tx_underrun_int),
         .tx_ack                       (tx_ack_int),
         .tx_is_enabled                (pmac_tx_is_enabled), 
         .speed_1G                     (int_speed[1]), 

         .rx_clk                       (rx_axi_clk),
         .rx_reset                     (rx_reset),

         .rx_axis_avb_tdata            (ptp_rx_tdata),          
         .rx_axis_avb_tvalid           (ptp_rx_tvalid),         
         .rx_axis_avb_tlast            (ptp_rx_tlast),          
         .rx_axis_ptp_tuser            (ptp_rx_tuser),
         .rx_axis_ptp_v1_tdata            (ptp_v1_rx_tdata),          
         .rx_axis_ptp_v1_tvalid           (ptp_v1_rx_tvalid),         
         .rx_axis_ptp_v1_tlast            (ptp_v1_rx_tlast),          
         .rx_axis_ptp_v1_tuser         (ptp_v1_rx_tuser),
               
         .tx_ptp_traffic_allowed       (tx_ptp_traffic_allowed),
         .tx_ptp_frame_granted_for_transmission    (tx_ptp_frame_granted_for_transmission),
         .ptp_tx_done                  (ptp_tx_done),

         // main av interface to outside
         .tx_axis_av_tdata             (8'b0),
         .tx_axis_av_tvalid            (1'b0),
         .tx_axis_av_tlast             (1'b0),
         .tx_axis_av_tready            (),
         .tx_axis_av_tuser             (1'b0),

         // legacy interface
         .tx_axis_mac_byte_count       (txd_byte_count_pmac),
         .tx_axis_mac_tdata            (tx_axis_pmac_tdata),
         .tx_axis_mac_tvalid           (tx_axis_pmac_tvalid),
         .tx_axis_mac_tlast            (tx_axis_pmac_tlast),
         .tx_axis_mac_tuser            (tx_axis_pmac_tuser),
         .tx_axis_mac_tready           (tx_axis_pmac_tready),

         .syntonised_sec_field         (syntonised_sec_field),//to be input to TEMAC2, TEMAC3... on systemtimer_ns_field port [output from TEMAC1]
         .syntonised_nanosec_field     (syntonised_nanosec_field),//to be input to TEMAC2, TEMAC3... on systemtimer_ns_field port [output from TEMAC1]
         // send the timer to the temac
         ////.systemtimer_s_field          (systemtimer_s_field_int),
         ////.systemtimer_ns_field         (systemtimer_ns_field_int),

         ////.systemtimer_s_field_2          (systemtimer_s_field_2_int),
         ////.systemtimer_ns_field_2          (systemtimer_ns_field_2_int),






         // tx 1588 mac timestamp hooks
         .tx_command_field             (tx_command_field),
         .tx_ts_axis_tvalid            (tx_ts_axis_tvalid_int),
         .tx_ts_axis_tdata             (tx_ts_axis_tdata_int),
         .correction_timer             (correction_timer_internal),


         // rx 1588 mac timestamp hooks
         .rx_ts_axis_tvalid            (ptp_rx_ts_axis_tvalid),
         .rx_ts_axis_tdata             (ptp_rx_ts_axis_tdata),

         .rx_ptp_v1_ts_axis_tvalid            (ptp_v1_rx_ts_axis_tvalid),
         .rx_ptp_v1_ts_axis_tdata             (ptp_v1_rx_ts_axis_tdata),

         // clock stuff
         .rtc_clk                      (rtc_clk),

         .rtc_nanosec_field            (rtc_nanosec_field),
         .rtc_sec_field                (rtc_sec_field),

         .clk8k                        (clk8k),

         .rtc_nanosec_field_1722       (rtc_nanosec_field_1722),

         // interrupts to the mac interrupt controller
         .interrupt_ptp_timer          (interrupt_ptp_timer_int),
         .interrupt_ptp_rx             (interrupt_ptp_rx_int),
         .interrupt_ptp_tx             (interrupt_ptp_tx_int),

         .interrupt_ptp_v1_rx          (interrupt_ptp_v1_rx_int),
         .interrupt_ptp_v1_tx          (interrupt_ptp_v1_tx_int),

         // ipif interface - shares mem space which means another level of ipif_mux?  need
         // to look at alternative arrangement.
         .bus2ip_clk                   (bus2ip_clk),
         .bus2ip_reset                 (bus2ip_reset),
         .bus2ip_addr                  (bus2ip_addr_top),
         .bus2ip_ce                    (bus2ip_cs_top[1]),
         .bus2ip_rdce                  (bus2ip_rdce_top),
         .bus2ip_wrce                  (bus2ip_wrce_top),
         .bus2ip_be                    (4'b1111),
         .bus2ip_data                  (bus2ip_data_top),
         .ip2bus_data                  (ip2bus_data_avb),
         .ip2bus_wrack                 (ip2bus_wrack_avb),
         .ip2bus_rdack                 (ip2bus_rdack_avb),
         .ip2bus_error                 (ip2bus_error_avb)
      );

      //assign rx_axis_av_tdata          = rx_axis_mac_tdata_int;
      //assign rx_axis_av_tvalid         = rx_axis_mac_tvalid_int;
      //assign rx_axis_av_tlast          = rx_axis_mac_tlast_int;
      //assign rx_axis_av_tuser          = rx_axis_av_a_tuser & rx_axis_av_b_tuser;

      ////assign rx_axis_mac_tdata         = rx_axis_mac_tdata_int;
      ////assign rx_axis_mac_tvalid        = rx_axis_mac_tvalid_int;
      ////assign rx_axis_mac_tlast         = rx_axis_mac_tlast_int;
      assign rx_axis_mac_tuser_i           = e_rx_axis_legacy_tuser;

      assign rx_axis_st_filter_tuser_i     = e_rx_axis_st_tuser_i;
      assign rx_axis_av_filter_tuser_i     = e_rx_axis_av_a_tuser & e_rx_axis_av_b_tuser;

      ////assign rx_axis_pmac_tdata         = rx_axis_pmac_tdata_int;
      ////assign rx_axis_pmac_tvalid        = rx_axis_pmac_tvalid_int;
      ////assign rx_axis_pmac_tlast         = rx_axis_pmac_tlast_int;
      assign rx_axis_pmac_tuser_i           = rx_axis_legacy_tuser;

      assign rx_axis_pmac_st_filter_tuser_i      = rx_axis_st_tuser_i;
      assign rx_axis_pmac_av_filter_tuser_i      = rx_axis_av_a_tuser & rx_axis_av_b_tuser;
      //assign rx_axis_ptp_filter_tuser       = rx_axis_ptp_tuser;


   end
   endgenerate



   // TSN PTP functionality (when TSN_CHANGE_ENABLE = 1 && TSN_RTC_ENABLE = 0, PTP BRAM functions is
   // inside MAC
   //-

   generate
   if (TSN_CHANGE_ENABLE && !TSN_RTC_ENABLE) begin : avb_ptp_only

      tsn_temac_v1_0_9_eth_ptp_only #(
         .C_SIMULATION_MODE            (0),
         .C_1588                       (C_1588),
         .EN_FRAME_PREEMPTION          (1),
         .C_XDEVICEFAMILY              (C_FAMILY),
         .C_S_AXI_ADDR_WIDTH           (C_S_AXI_ADDR_WIDTH),
         .PTP_BRAM_PARTITION_SIZE      (PTP_BRAM_PARTITION_SIZE),
         .NUM_PTP_RX_MSG               (NUM_PTP_RX_MSG),
         .PTP_V1_BRAM_PARTITION_SIZE   (PTP_V1_BRAM_PARTITION_SIZE),
         .NUM_PTP_V1_RX_MSG            (NUM_PTP_V1_RX_MSG),
         .EN_1588_PTP_V1               (EN_1588_PTP_V1) 
      ) eth_avb_inst (
         .reset                        (glbl_rstn),

         // interface to the mac
         .tx_clk                       (tx_axi_clk),
         .tx_reset                     (tx_reset),
         .tx_enable                    (tx_enable_pmac),

         .tx_clk_en_out                (tx_ce_sample),
         .byte_count_pmac              (txd_byte_count_pmac_i),
         .tx_data                      (tx_data_int),
         .tx_data_valid                (tx_data_valid_int),
         .tx_underrun                  (tx_underrun_int),
         .tx_ack                       (tx_ack_int),
         .tx_is_enabled                (pmac_tx_is_enabled), 
         .speed_1G                     (int_speed[1]), 

         .rx_clk                       (rx_axi_clk),
         .rx_reset                     (rx_reset),

         .rx_axis_avb_tdata            (ptp_rx_tdata),          
         .rx_axis_avb_tvalid           (ptp_rx_tvalid),         
         .rx_axis_avb_tlast            (ptp_rx_tlast),          
         .rx_axis_ptp_tuser            (ptp_rx_tuser),
         .rx_axis_ptp_v1_tdata            (ptp_v1_rx_tdata),          
         .rx_axis_ptp_v1_tvalid           (ptp_v1_rx_tvalid),         
         .rx_axis_ptp_v1_tlast            (ptp_v1_rx_tlast),          
         .rx_axis_ptp_v1_tuser         (ptp_v1_rx_tuser),

         .tx_ptp_traffic_allowed       (tx_ptp_traffic_allowed),
         .tx_ptp_frame_granted_for_transmission    (tx_ptp_frame_granted_for_transmission),
         .ptp_tx_done                  (ptp_tx_done),
         // main av interface to outside
       //  .tx_axis_av_tdata             (8'b0),
       //  .tx_axis_av_tvalid            (1'b0),
       //  .tx_axis_av_tlast             (1'b0),
       //  .tx_axis_av_tready            (),
       //  .tx_axis_av_tuser             (1'b0),

         // legacy interface
         .tx_axis_mac_byte_count       (txd_byte_count_pmac),
         .tx_axis_mac_tdata            (tx_axis_pmac_tdata),
         .tx_axis_mac_tvalid           (tx_axis_pmac_tvalid),
         .tx_axis_mac_tlast            (tx_axis_pmac_tlast),
         .tx_axis_mac_tuser            (tx_axis_pmac_tuser),
         .tx_axis_mac_tready           (tx_axis_pmac_tready),

        // // send the timer to the temac
        // .systemtimer_s_field          (),
        // .systemtimer_ns_field         (),

         // tx 1588 mac timestamp hooks
         .tx_command_field             (tx_command_field),
         .tx_ts_axis_tvalid            (tx_ts_axis_tvalid_int),
         .tx_ts_axis_tdata             (tx_ts_axis_tdata_int),
         .correction_timer             (correction_timer_internal),


         // rx 1588 mac timestamp hooks
         .rx_ts_axis_tvalid            (ptp_rx_ts_axis_tvalid),
         .rx_ts_axis_tdata             (ptp_rx_ts_axis_tdata),

         .rx_ptp_v1_ts_axis_tvalid            (ptp_v1_rx_ts_axis_tvalid),
         .rx_ptp_v1_ts_axis_tdata             (ptp_v1_rx_ts_axis_tdata),

         // clock stuff
         //.rtc_clk                      (1'b0),

         //.rtc_nanosec_field            (),
         //.rtc_sec_field                (),

         //.clk8k                        (),

         //.rtc_nanosec_field_1722       (),

         // interrupts to the mac interrupt controller
         //.interrupt_ptp_timer          (),
         .interrupt_ptp_rx             (interrupt_ptp_rx_int),
         .interrupt_ptp_tx             (interrupt_ptp_tx_int),

         .interrupt_ptp_v1_rx          (interrupt_ptp_v1_rx_int), // new port
         .interrupt_ptp_v1_tx          (interrupt_ptp_v1_tx_int), // new port

         // ipif interface - shares mem space which means another level of ipif_mux?  need
         // to look at alternative arrangement.
         .bus2ip_clk                   (bus2ip_clk),
         .bus2ip_reset                 (bus2ip_reset),
         .bus2ip_addr                  (bus2ip_addr_top),
         .bus2ip_ce                    (bus2ip_cs_top[1]),
         .bus2ip_rdce                  (bus2ip_rdce_top),
         .bus2ip_wrce                  (bus2ip_wrce_top),
         .bus2ip_be                    (4'b1111),
         .bus2ip_data                  (bus2ip_data_top),
         .ip2bus_data                  (ip2bus_data_avb),
         .ip2bus_wrack                 (ip2bus_wrack_avb),
         .ip2bus_rdack                 (ip2bus_rdack_avb),
         .ip2bus_error                 (ip2bus_error_avb)
      );
      ////assign rx_axis_mac_tdata         = rx_axis_mac_tdata_int;
      ////assign rx_axis_mac_tvalid        = rx_axis_mac_tvalid_int;
      ////assign rx_axis_mac_tlast         = rx_axis_mac_tlast_int;
      assign rx_axis_mac_tuser_i           = e_rx_axis_legacy_tuser;

      assign rx_axis_st_filter_tuser_i     = e_rx_axis_st_tuser_i;
      assign rx_axis_av_filter_tuser_i     = e_rx_axis_av_a_tuser & e_rx_axis_av_b_tuser;


      //assign rx_axis_av_tdata          = rx_axis_mac_tdata_int;
      //assign rx_axis_av_tvalid         = rx_axis_mac_tvalid_int;
      //assign rx_axis_av_tlast          = rx_axis_mac_tlast_int;
      //assign rx_axis_av_tuser          = rx_axis_av_a_tuser & rx_axis_av_b_tuser;
      ////assign rx_axis_pmac_tdata         = rx_axis_pmac_tdata_int;
      ////assign rx_axis_pmac_tvalid        = rx_axis_pmac_tvalid_int;
      ////assign rx_axis_pmac_tlast         = rx_axis_pmac_tlast_int;
      assign rx_axis_pmac_tuser_i           = rx_axis_legacy_tuser;

      assign rx_axis_pmac_st_filter_tuser_i      = rx_axis_st_tuser_i;
      assign rx_axis_pmac_av_filter_tuser_i      = rx_axis_av_a_tuser & rx_axis_av_b_tuser;
      //assign rx_axis_ptp_filter_tuser       = rx_axis_ptp_tuser;



   end
   endgenerate

//Below instance is not updated
   //---------------------------------------------------------------------------
   // Optional Ethernet AVB Endpoint functionality
   //---------------------------------------------------------------------------
   generate
   if (C_AVB && !TSN_CHANGE_ENABLE) begin : avb

      tsn_temac_v1_0_9_eth_avb_endpoint #(
         .C_SIMULATION_MODE            (0),
         .C_1588                       (C_1588),
         .EN_FRAME_PREEMPTION          (0),
         .C_XDEVICEFAMILY              (C_FAMILY),
         .C_S_AXI_ADDR_WIDTH           (C_S_AXI_ADDR_WIDTH)
      ) eth_avb_inst (
         .reset                        (glbl_rstn),

         // interface to the mac
         .tx_clk                       (tx_axi_clk),
         .tx_reset                     (tx_reset),
         .tx_enable                    (tx_enable),

         .tx_clk_en_out                (tx_ce_sample),
         .tx_data                      (tx_data_int),
         .tx_data_valid                (tx_data_valid_int),
         .tx_underrun                  (tx_underrun_int),
         .tx_ack                       (tx_ack_int),
         .tx_is_enabled                (1'b1), 
         .speed_1G                     (1'b1), 

         .rx_clk                       (rx_axi_clk),
         .rx_reset                     (rx_reset),
         .rx_axis_avb_tdata            (rx_axis_mac_tdata_int),
         .rx_axis_avb_tvalid           (rx_axis_mac_tvalid_int),
         .rx_axis_avb_tlast            (rx_axis_mac_tlast_int),
         .rx_axis_ptp_tuser            (rx_axis_ptp_tuser),

         // main av interface to outside
         .tx_axis_av_tdata             (tx_axis_av_tdata),
         .tx_axis_av_tvalid            (tx_axis_av_tvalid),
         .tx_axis_av_tlast             (tx_axis_av_tlast),
         .tx_axis_av_tready            (tx_axis_av_tready),
         .tx_axis_av_tuser             (tx_axis_av_tuser),

         // legacy interface
         .tx_axis_mac_tdata            (tx_axis_mac_tdata),
         .tx_axis_mac_tvalid           (tx_axis_mac_tvalid),
         .tx_axis_mac_tlast            (tx_axis_mac_tlast),
         .tx_axis_mac_tuser            (tx_axis_mac_tuser),
         .tx_axis_mac_tready           (tx_axis_mac_tready),

         // send the timer to the temac
         .systemtimer_s_field          (systemtimer_s_field_int),
         .systemtimer_ns_field         (systemtimer_ns_field_int),

         // tx 1588 mac timestamp hooks
         .tx_command_field             (tx_command_field),
         .tx_ts_axis_tvalid            (tx_ts_axis_tvalid_int),
         .tx_ts_axis_tdata             (tx_ts_axis_tdata_int),
         .correction_timer             (correction_timer_internal),


         // rx 1588 mac timestamp hooks
         .rx_ts_axis_tvalid            (rx_ts_axis_tvalid_int),
         .rx_ts_axis_tdata             (rx_ts_axis_tdata_int),

         // clock stuff
         .rtc_clk                      (rtc_clk),

         .rtc_nanosec_field            (rtc_nanosec_field),
         .rtc_sec_field                (rtc_sec_field),

         .clk8k                        (clk8k),

         //.rtc_nanosec_field_1722       (rtc_nanosec_field_1722),

         // interrupts to the mac interrupt controller
         .interrupt_ptp_timer          (interrupt_ptp_timer_int),
         .interrupt_ptp_rx             (interrupt_ptp_rx_int),
         .interrupt_ptp_tx             (interrupt_ptp_tx_int),

         // ipif interface - shares mem space which means another level of ipif_mux?  need
         // to look at alternative arrangement.
         .bus2ip_clk                   (bus2ip_clk),
         .bus2ip_reset                 (bus2ip_reset),
         .bus2ip_addr                  (bus2ip_addr_top),
         .bus2ip_ce                    (bus2ip_cs_top[1]),
         .bus2ip_rdce                  (bus2ip_rdce_top),
         .bus2ip_wrce                  (bus2ip_wrce_top),
         .bus2ip_be                    (4'b1111),
         .bus2ip_data                  (bus2ip_data_top),
         .ip2bus_data                  (ip2bus_data_avb),
         .ip2bus_wrack                 (ip2bus_wrack_avb),
         .ip2bus_rdack                 (ip2bus_rdack_avb),
         .ip2bus_error                 (ip2bus_error_avb)
      );
      ////assign rx_axis_pmac_tdata         = 0;
      ////assign rx_axis_pmac_tvalid        = 0;
      ////assign rx_axis_pmac_tlast         = 0;
      assign rx_axis_pmac_tuser_i         = 0;

      assign rx_axis_pmac_st_filter_tuser_i        = 0;
      assign rx_axis_pmac_av_filter_tuser_i        = 0 ;

      assign rx_axis_av_tdata          = rx_axis_mac_tdata_int;
      assign rx_axis_av_tvalid         = rx_axis_mac_tvalid_int;
      assign rx_axis_av_tlast          = rx_axis_mac_tlast_int;
      assign rx_axis_av_tuser          = rx_axis_av_a_tuser & rx_axis_av_b_tuser;
      ////assign rx_axis_mac_tdata         = rx_axis_mac_tdata_int;
      ////assign rx_axis_mac_tvalid        = rx_axis_mac_tvalid_int;
      ////assign rx_axis_mac_tlast         = rx_axis_mac_tlast_int;
      assign rx_axis_mac_tuser_i           = rx_axis_legacy_tuser;
      assign rx_axis_st_filter_tuser       = 0;
      assign rx_axis_av_filter_tuser       = 0;
      //assign rx_axis_ptp_filter_tuser         = 0;
   end
   endgenerate

   generate 
   if (!C_AVB  && !TSN_CHANGE_ENABLE && C_HAS_2G5) begin : no_avb_tx_axi_intf_2g5
      //------------------------------------------------------------------------
      // Transmitter I/F AXI Stream Shim logic
      //------------------------------------------------------------------------
      // This is instantiated unless the AVB mode is selected and MAC Data rate
      // is set to 2.5 Gbps
      // This module is the optimized version of tx_axi_intf for 2.5G data-rates
      tsn_temac_v1_0_9_tx_axi_intf_2g5 #(
         .C_1588                       (C_1588)
      ) tx_axi_shim (
         .tx_clk                       (tx_axi_clk),
         .tx_reset                     (tx_reset),
         .tx_enable                    (1'b1),
         //.tx_inband_cf_enable          (int_tx_inband_cf_en),
         .tx_inband_cf_enable          (1'b0), // no support for inband command for 1-step timestamping with BRAM based PTP implementation

         .tx_mac_tdata                 (tx_axis_mac_tdata),
         .tx_mac_tvalid                (tx_axis_mac_tvalid),
         .tx_mac_tlast                 (tx_axis_mac_tlast),
         .tx_mac_tuser                 (tx_axis_mac_tuser),
         .tx_mac_tready                (tx_axis_mac_tready),

         .tx_enable_out                (tx_ce_sample),
         .tx_continuation              (),
         .tx_data                      (tx_data_int),
         .tx_data_valid                (tx_data_valid_int),
         .tx_underrun                  (tx_underrun_int),
         .tx_ack                       (tx_ack_int),
         .tx_retransmit                (int_retransmit),
         .tx_command_field             (tx_command_field)
      );
      assign rx_axis_st_filter_tuser_i          = 0;
      assign rx_axis_av_filter_tuser_i          = 0;
      //assign rx_axis_ptp_filter_tuser         = 0;

   end   
   endgenerate

   generate 
   if (!C_AVB && !TSN_CHANGE_ENABLE && !C_HAS_2G5) begin : no_avb_tx_axi_intf
      //------------------------------------------------------------------------
      // Transmitter I/F AXI Stream Shim logic
      //------------------------------------------------------------------------
      // This is instantiated unless the AVB mode is selected and MAC Data rate
      // is set to non 2.5 Gbps

      tsn_temac_v1_0_9_tx_axi_intf #(
         .EN_FRAME_PREEMPTION          (0),
         .C_1588                       (C_1588)
      ) tx_axi_shim (
         .tx_clk                       (tx_axi_clk),
         .tx_reset                     (tx_reset),
         .tx_enable                    (tx_enable),
         //.tx_inband_cf_enable          (int_tx_inband_cf_en),
         .tx_inband_cf_enable          (1'b0), // no support for inband command for 1-step timestamping with BRAM based PTP implementation

         .tx_mac_tdata                 (tx_axis_mac_tdata),
         .tx_mac_tvalid                (tx_axis_mac_tvalid),
         .tx_mac_tlast                 (tx_axis_mac_tlast),
         .tx_mac_tuser                 (tx_axis_mac_tuser),
         .tx_mac_tready                (tx_axis_mac_tready),

         .tx_is_enabled                (1'b1), 
         .speed_1G                     (1'b1), 
         .tx_enable_out                (tx_ce_sample),
         .tx_continuation              (),
         .tx_data                      (tx_data_int),
         .tx_data_valid                (tx_data_valid_int),
         .tx_underrun                  (tx_underrun_int),
         .tx_ack                       (tx_ack_int),
         .tx_retransmit                (int_retransmit),
         .tx_command_field             (tx_command_field)
      );
      
      assign rx_axis_st_filter_tuser_i          = 0;
      assign rx_axis_av_filter_tuser_i          = 0;
      //assign rx_axis_ptp_filter_tuser         = 0;
   end
   endgenerate

   generate
   if (!C_AVB && !TSN_CHANGE_ENABLE) begin : noavb
      ////assign rx_axis_pmac_tdata         = 0;
      ////assign rx_axis_pmac_tvalid        = 0;
      ////assign rx_axis_pmac_tlast         = 0;
      assign rx_axis_pmac_tuser_i         = 0;

      assign rx_axis_pmac_st_filter_tuser_i        = 0;
      assign rx_axis_pmac_av_filter_tuser_i        = 0 ;


      // Tie off unused AVB signals
      ////assign rx_axis_mac_tdata         = rx_axis_mac_tdata_int;
      ////assign rx_axis_mac_tvalid        = rx_axis_mac_tvalid_int;
      ////assign rx_axis_mac_tlast         = rx_axis_mac_tlast_int;
      assign rx_axis_mac_tuser_i           = rx_axis_mac_tuser_int;
      assign tx_axis_av_tready         = 1'b0;
      assign rx_axis_av_tdata          = 0;
      assign rx_axis_av_tvalid         = 1'b0;
      assign rx_axis_av_tlast          = 1'b0;
      assign rx_axis_av_tuser          = 1'b0;
      assign rtc_nanosec_field         = 0;
      assign rtc_sec_field             = 0;
      assign clk8k                     = 1'b0;
      assign rtc_nanosec_field_1722    = 0;
      assign interrupt_ptp_timer_int   = 1'b0;
      assign interrupt_ptp_rx_int      = 1'b0;
      assign interrupt_ptp_tx_int      = 1'b0;
      assign interrupt_ptp_v1_rx_int   = 1'b0;
      assign interrupt_ptp_v1_tx_int   = 1'b0;
      assign ip2bus_data_avb           = 0;
      assign ip2bus_wrack_avb          = 1'b0;
      assign ip2bus_rdack_avb          = 1'b0;
      assign ip2bus_error_avb          = 1'b0;
      assign systemtimer_s_field_int   = 0;
      assign systemtimer_ns_field_int  = 0;
      assign syntonised_nanosec_field  = 0;
      assign syntonised_sec_field      = 0;
      assign systemtimer_s_field_2_int  = 0;
      assign systemtimer_ns_field_2_int  = 0;

   end
   endgenerate
   generate
   if (TSN_CHANGE_ENABLE && TSN_RTC_ENABLE) begin : noavb_tsn

      // Tie off unused AVB signals
      //assign rx_axis_mac_tdata         = rx_axis_mac_tdata_int;
      //assign rx_axis_mac_tvalid        = rx_axis_mac_tvalid_int;
      //assign rx_axis_mac_tlast         = rx_axis_mac_tlast_int;
      //assign rx_axis_mac_tuser         = rx_axis_mac_tuser_int;
      assign tx_axis_av_tready         = 1'b0;
      assign rx_axis_av_tdata          = 0;
      assign rx_axis_av_tvalid         = 1'b0;
      assign rx_axis_av_tlast          = 1'b0;
      assign rx_axis_av_tuser          = 1'b0;
      //assign rtc_nanosec_field         = 0;
      //assign rtc_sec_field             = 0;
      //assign clk8k                     = 1'b0;
      //assign rtc_nanosec_field_1722    = 0;
      //assign interrupt_ptp_timer_int   = 1'b0;
      //assign interrupt_ptp_rx_int      = 1'b0;
      //assign interrupt_ptp_tx_int      = 1'b0;
      //assign ip2bus_data_avb           = 0;
      //assign ip2bus_wrack_avb          = 1'b0;
      //assign ip2bus_rdack_avb          = 1'b0;
      //assign ip2bus_error_avb          = 1'b0;
      assign systemtimer_s_field_int   = systemtimer_s_field;
      assign systemtimer_ns_field_int  = systemtimer_ns_field;
      assign systemtimer_s_field_2_int  = systemtimer_s_field_2;
      assign systemtimer_ns_field_2_int  = systemtimer_ns_field_2;

   end
   endgenerate


   generate
   if (TSN_CHANGE_ENABLE && !TSN_RTC_ENABLE) begin : noavb_tsn_ptp

      // Tie off unused AVB signals
      //assign rx_axis_mac_tdata         = rx_axis_mac_tdata_int;
      //assign rx_axis_mac_tvalid        = rx_axis_mac_tvalid_int;
      //assign rx_axis_mac_tlast         = rx_axis_mac_tlast_int;
      //assign rx_axis_mac_tuser         = rx_axis_mac_tuser_int;
      assign tx_axis_av_tready         = 1'b0;
      assign rx_axis_av_tdata          = 0;
      assign rx_axis_av_tvalid         = 1'b0;
      assign rx_axis_av_tlast          = 1'b0;
      assign rx_axis_av_tuser          = 1'b0;
      assign rtc_nanosec_field         = 0;
      assign rtc_sec_field             = 0;
      assign clk8k                     = 1'b0;
      assign rtc_nanosec_field_1722    = 0;
      assign interrupt_ptp_timer_int   = 1'b0;
      //assign interrupt_ptp_rx_int      = 1'b0;
      //assign interrupt_ptp_tx_int      = 1'b0;
      //assign ip2bus_data_avb           = 0;
      //assign ip2bus_wrack_avb          = 1'b0;
      //assign ip2bus_rdack_avb          = 1'b0;
      //assign ip2bus_error_avb          = 1'b0;
      assign systemtimer_s_field_int   = systemtimer_s_field;
      assign systemtimer_ns_field_int  = systemtimer_ns_field;
      assign syntonised_nanosec_field  = 0;
      assign syntonised_sec_field      = 0;

      assign systemtimer_s_field_2_int  = systemtimer_s_field_2;
      assign systemtimer_ns_field_2_int  = systemtimer_ns_field_2;

   end
   endgenerate




   //---------------------------------------------------------------------------
   // Recevier I/F AXI Stream Shim logic
   //---------------------------------------------------------------------------

   tsn_temac_v1_0_9_rx_axi_intf  #(
      .C_AT_ENTRIES                    (C_AT_ENTRIES),
      .TSN_EP_ONLY                     (TSN_EP_ONLY),
      .DISABLE_RES_QUEUE               (DISABLE_RES_QUEUE),
      .TSN_CHANGE_ENABLE               (TSN_CHANGE_ENABLE),
      .EN_1588_PTP_V1                  (EN_1588_PTP_V1),
      .C_AVB                           (C_AVB)         //TSN_CHANGE_ENABLE to be factored in
   ) rx_axi_shim (
      .rx_clk                          (rx_axi_clk),
      .rx_reset                        (rx_reset),
      .rx_enable                       (rx_enable_and_not_preempted),

      .rx_data                         (rx_data),
      .rx_data_valid                   (rx_data_valid),
      .rx_good_frame                   (rx_good_frame),
      .rx_bad_frame                    (rx_bad_frame),

      .rx_filter_match                 (rx_filter_match),
      .rx_st_match                     (rx_st_match),
      .rx_av_a_match                   (rx_av_a_match),
      .rx_av_b_match                   (rx_av_b_match),
      .rx_ptp_match                    (rx_ptp_match),
      .rx_ptp_v1_match                 (rx_ptp_v1_match),
      //.rx_filter_tuser                 (rx_axis_pmac_filter_tuser),
      .rx_filter_tuser                 (),
      .rx_st_tuser                     (rx_axis_st_tuser_i),
      .rx_av_a_tuser                   (rx_axis_av_a_tuser),
      .rx_av_b_tuser                   (rx_axis_av_b_tuser),
      .rx_ptp_tuser                    (rx_axis_ptp_tuser),
      .rx_ptp_v1_tuser                 (rx_axis_ptp_v1_tuser),
      .rx_legacy_tuser                 (rx_axis_legacy_tuser),

      .rx_mac_tdata                    (rx_axis_pmac_tdata_int),
      .rx_mac_tvalid                   (rx_axis_pmac_tvalid_int),
      .rx_mac_tlast                    (rx_axis_pmac_tlast_int),
      .rx_mac_tuser                    (rx_axis_pmac_tuser_int)
   );


   //---------------------------------------------------------------------------
   // MAC Flow Control Logic
   //---------------------------------------------------------------------------

   tsn_temac_v1_0_9_control #(
      .C_HALF_DUPLEX                   (C_HALF_DUPLEX),
      .C_PFC                           (C_PFC)
   ) flow (
      .rx_clk                          (rx_axi_clk),
      .rx_data_in                      (int_rx_data_in),
      .rx_data_valid_in                (int_rx_data_valid_in),
      .rx_good_frame_in                (int_rx_good_frame_in),
      .rx_bad_frame_in                 (int_rx_bad_frame_in),
      .rx_control_frame                (int_rx_control_frame),
      .rx_control_frame_any_add        (int_rx_control_frame_any_da),
      .rx_good_frame_out               (rx_good_frame),
      .rx_bad_frame_out                (rx_bad_frame),
      .rx_data_out                     (rx_data),
      .rx_data_valid_out               (rx_data_valid),
      .tx_clk                          (tx_axi_clk),
      .tx_ack_in                       (int_tx_ack_in),
      .tx_end_of_tx                    (int_tx_end_of_tx),
      .tx_valid                        (int_tx_valid),
      .tx_retransmit_in                (int_retransmit),
      .tx_collision_in                 (int_collision),
      .tx_data_out                     (int_tx_data_out),
      .tx_data_avail_out               (int_tx_data_valid_out),
      .tx_underrun_out                 (int_tx_underrun_out),
      .tx_crc_enable_out               (int_tx_crc_enable_out),
      .tx_vlan_enable_out              (int_tx_vlan_enable_out),
      .tx_retransmit_out               (tx_retransmit),
      .tx_collision_out                (tx_collision),
      .pause_active                    (pause_active),
      .tx_data_in                      (tx_data_int),
      .tx_data_avail_in                (tx_data_valid_int),
      .tx_underrun_in                  (tx_underrun_int),
      .tx_ack_out                      (tx_ack_int),
      .pause_req                       (pause_req),
      .pause_value                     (pause_val),
      .tx_pfc_p0_tvalid                (tx_pfc_p0_tvalid),
      .tx_pfc_p1_tvalid                (tx_pfc_p1_tvalid),
      .tx_pfc_p2_tvalid                (tx_pfc_p2_tvalid),
      .tx_pfc_p3_tvalid                (tx_pfc_p3_tvalid),
      .tx_pfc_p4_tvalid                (tx_pfc_p4_tvalid),
      .tx_pfc_p5_tvalid                (tx_pfc_p5_tvalid),
      .tx_pfc_p6_tvalid                (tx_pfc_p6_tvalid),
      .tx_pfc_p7_tvalid                (tx_pfc_p7_tvalid),
      .rx_pfc_p0_tvalid                (rx_pfc_p0_tvalid),
      .rx_pfc_p1_tvalid                (rx_pfc_p1_tvalid),
      .rx_pfc_p2_tvalid                (rx_pfc_p2_tvalid),
      .rx_pfc_p3_tvalid                (rx_pfc_p3_tvalid),
      .rx_pfc_p4_tvalid                (rx_pfc_p4_tvalid),
      .rx_pfc_p5_tvalid                (rx_pfc_p5_tvalid),
      .rx_pfc_p6_tvalid                (rx_pfc_p6_tvalid),
      .rx_pfc_p7_tvalid                (rx_pfc_p7_tvalid),
      .rx_pfc_p0_tready                (rx_pfc_p0_tready),
      .rx_pfc_p1_tready                (rx_pfc_p1_tready),
      .rx_pfc_p2_tready                (rx_pfc_p2_tready),
      .rx_pfc_p3_tready                (rx_pfc_p3_tready),
      .rx_pfc_p4_tready                (rx_pfc_p4_tready),
      .rx_pfc_p5_tready                (rx_pfc_p5_tready),
      .rx_pfc_p6_tready                (rx_pfc_p6_tready),
      .rx_pfc_p7_tready                (rx_pfc_p7_tready),
      .tx_reset                        (tx_reset),
      .rx_reset                        (rx_reset),
      .rx_enable                       (int_rx_enable),
      .tx_enable                       (int_tx_enable),
      .rx_half_duplex                  (int_rx_half_duplex),
      .tx_half_duplex                  (int_tx_half_duplex),
      .pause_source                    (int_tx_pause_source),
      .pause_sample_addr               (int_pause_sample_addr),
      .pause_quanta_bus                (int_pause_qnta_bus_int),
      .pfc_tx_priority_en_reg          (int_tx_priority_en),
      .pfc_rx_priority_en_reg          (int_rx_priority_en),
      .pfc_tx_enable_reg               (int_pfc_tx_enable),
      .pfc_rx_enable_reg               (int_pfc_rx_enable),
      //.inband_ts_enable                (int_rx_inband_ts_en),
      .inband_ts_enable                (1'b0),  // no support for in-band timestamp on receive path. This case can't be supported with Switch which expects DA to be first byte.
      .auto_xon_reg                    (int_auto_xon_enable),
      .crc_enable_in                   (int_tx_crc_mode),
      .vlan_enable_in                  (int_tx_vlan_enable),
      .pause_vector                    (int_pause_vector),
      .ce_in                           (tx_ce_sample_and_enabled),
      .rx_ce_in                        (rx_enable_and_not_preempted)
   );


   //---------------------------------------------------------------------------
   // MAC Transmitter Logic.
   //---------------------------------------------------------------------------

   tsn_temac_v1_0_9_tx #(
      .C_HALF_DUPLEX                   (C_HALF_DUPLEX),
      .C_IS_EVAL                       (TSN_EP_EVAL),
      .C_1588                          (C_1588),

      .EN_FRAME_PREEMPTION             (1),
      .C_AVB                           (C_AVB),
      .TSN_CHANGE_ENABLE               (TSN_CHANGE_ENABLE),
      .C_PHYSICAL_INTERFACE            (C_PHYSICAL_INTERFACE),
      .C_MAC_SPEED                     (MAC_SPEED)
   ) txgen (
      .reset                           (tx_reset),
      .reset_gmii_mii                  (tx_reset),
      .clk                             (tx_axi_clk),
      .data                            (int_tx_data_out),
      .data_valid                      (int_tx_data_valid_out),
      .data_ack                        (int_tx_ack_in),
      .retransmit                      (int_retransmit),
      .collision                       (int_collision),
      .extension                       (int_extension),
      .underrun                        (int_tx_underrun_out),
      .end_of_tx                       (int_tx_end_of_tx),
      .col                             (gmii_col),
      .crs                             (gmii_crs),
      //.txd                             (int_gmii_txd),
      //.tx_en                           (int_gmii_tx_en),
      //.tx_er                           (int_gmii_tx_er),
      .txd                             (int_gmii_txd_to_p_pipe),
      .tx_en                           (int_gmii_tx_en_to_p_pipe),
      .tx_er                           (int_gmii_tx_er_to_p_pipe),
      .pause_active                    (pause_active),
      .vlan_enable                     (int_tx_vlan_enable_out),
      .crc_mode                        (int_tx_crc_enable_out),
      .half_duplex                     (int_tx_half_duplex),
      .jumbo_enable                    (int_tx_jumbo_enable),
      .enable                          (int_tx_en),
      .ifg_del_en                      (int_tx_ifg_del_en),
      .ifg_delay                       (int_tx_ifg_delay),
      .max_frame_length                (int_tx_max_frame_length),
      .max_frame_enable                (int_tx_max_frame_enable),
      .status_valid                    (int_tx_valid),
      .status_vector                   (int_tx_statistics_vector[30:0]),
      .speed_is_10_100                 (speed_is_10_100_int),
      .speed_is_100                    (speed_is_100_int),
      .speed                           (int_speed),

//The below is used for SGMII or Base-X only. Commented to avoid misuse when
//core in generated in INTERNAL mode untill
//we support SGMII.
      ////.tx_latency_adjust               (int_tx_latency_adjust),
      ////.tx_latency_adjust_enable        (int_tx_latency_adjust_en),
      .tx_latency_adjust                                   (16'b0),
      .tx_latency_adjust_enable                            (1'b0),
      .tx_latency_adjust_tsn_gmii                          (tx_latency_adjust_tsn_gmii),
      .tx_latency_adjust_enable_tsn_gmii                   (tx_latency_adjust_enable_tsn_gmii),
      .debug_hooks_one_step_timestamp_offset               (debug_hooks_one_step_timestamp_offset),
      .debug_hooks_one_step_timestamp_enable               (debug_hooks_one_step_timestamp_enable),
      .tx_ptp_frame_granted_for_transmission               (tx_ptp_frame_granted_for_transmission),
      .sample_timer                    (tx_sample_timer),
      .core_has_sgmii                  (core_has_sgmii),

      .tx_en_in                        (gmii_tx_en_to_phy),
      .tx_er_in                        (gmii_tx_er_to_phy),
      .ce_in                           (tx_ce_sample_and_enabled),
      .rtc_clk                         (rtc_clk),
      .systemtimer_s_field             (systemtimer_s_field_int),
      .systemtimer_ns_field            (systemtimer_ns_field_int),
      .systemtimer_s_field_2           (systemtimer_s_field_2_int),
      .systemtimer_ns_field_2          (systemtimer_ns_field_2_int),
      .correction_timer                (correction_timer_internal),
      .tx_command_field                (tx_command_field),
      .tx_command_field_cs             (tx_command_field_cs),
      .tx_ts_axis_tvalid               (tx_ts_axis_tvalid_int),
      .tx_ts_axis_tdata                (tx_ts_axis_tdata_1_int),
      .tx_ts_axis_tdata_2              (tx_ts_axis_tdata_2_int)
      );


   //---------------------------------------------------------------------------
   // MAC Receiver Logic.
   //---------------------------------------------------------------------------


   tsn_temac_v1_0_9_rx #(
      .C_HALF_DUPLEX                   (C_HALF_DUPLEX),
      .C_IS_EVAL                       (TSN_EP_EVAL),
      .C_1588                          (C_1588),
      .C_AVB                           (C_AVB),
      .EN_FRAME_PREEMPTION             (1),
      .TSN_CHANGE_ENABLE               (TSN_CHANGE_ENABLE),
      .C_PHYSICAL_INTERFACE            (C_PHYSICAL_INTERFACE),
      .C_MAC_SPEED                     (MAC_SPEED)
   ) rxgen (
      .rx_clk                          (rx_axi_clk),
      .reset                           (rx_reset),
      .reset_gmii_mii                  (rx_reset),
      //.rxd                             (int_gmii_rxd),
      //.rx_dv                           (int_gmii_rx_dv),
      //.rx_err                          (int_gmii_rx_er),
      .rxd                             (int_gmii_rxd_preamptable),
      .rx_dv                           (int_gmii_rx_dv_preamptable),
      .rx_err                          (int_gmii_rx_er_preamptable),
      .enable                          (int_rx_en),
      .jumbo_frames_enable             (int_rx_jumbo_enable),
      .vlan_enable                     (int_rx_vlan_enable),
      .max_frame_length                (int_rx_max_frame_length),
      .max_frame_enable                (int_rx_max_frame_enable),
      .crc_mode                        (int_rx_crc_mode),
      .pauseaddressmatch               (pauseaddressmatch),
      .specialpauseaddressmatch        (specialpauseaddressmatch),
      .broadcastaddressmatch           (broadcastaddressmatch),
      .unicastaddressmatch             (unicastaddressmatch),
      .rx_filter_match                 (rx_filter_match_comb),
      .enable_half_duplex              (int_rx_half_duplex),
      .lt_check_disable                (int_rx_lt_disable),
      .pause_lt_check_disable          (int_rx_ps_lt_disable),
      //.inband_ts_enable                (int_rx_inband_ts_en),
      .inband_ts_enable                (1'b0),  // no support for in-band timestamp on receive path. This case can't be supported with Switch which expects DA to be first byte.
      .address_valid_early             (address_valid_early),
      .data_early                      (data_early),
      .data_valid_early                (data_valid_early),
      .data                            (int_rx_data_in),
      .data_valid                      (int_rx_data_valid_in),
      .alignment_err_pulse             (int_alignment_err_pulse),
      .good_frame                      (int_rx_good_frame_in),
      .bad_frame                       (int_rx_bad_frame_in),
      .statistics_valid                (int_rx_valid),
      .statistics_vector               (int_rx_statistics_vector),
      .min_size                        (int_min_size),
      .control_frame                   (int_rx_control_frame),
      .control_frame_any_da            (int_rx_control_frame_any_da),
      .speed_is_10_100                 (speed_is_10_100_int),
      .speed                           (int_speed),
      .core_has_sgmii                  (core_has_sgmii),
      .ce_in                           (rx_enable_and_not_preempted),
      .reclock_rx_config               (reclock_rx_config),
      .rx_latency_adjust_tsn_gmii               (rx_latency_adjust_tsn_gmii),
      .rx_latency_adjust_enable_tsn_gmii        (rx_latency_adjust_enable_tsn_gmii),

      // 1588 hooks
      .rtc_clk                         (rtc_clk),
      .systemtimer_s_field             (systemtimer_s_field_int),
      .systemtimer_ns_field            (systemtimer_ns_field_int),
      .systemtimer_s_field_2           (systemtimer_s_field_2_int),
      .systemtimer_ns_field_2          (systemtimer_ns_field_2_int),
      .correction_timer                (correction_timer),
      .rx_ts_axis_tvalid               (rx_ts_axis_tvalid_int),
      .rx_ts_axis_tdata                (rx_ts_axis_tdata_1_int),
      .rx_ts_axis_tdata_2              (rx_ts_axis_tdata_2_int),
      .sample_now_toggle               (sample_now_toggle_rx_p),
      .sample_timer_br                 (sample_timer_rx_p), 
      .rxphy_s_field                   (rxphy_s_field),
      .rxphy_ns_field                  (rxphy_ns_field),
      .rxphy_correction_timer          (rxphy_correction_timer)
   );


   //---------------------------------------------------------------------------
   // Optional Management I/F
   //---------------------------------------------------------------------------

   generate
   if (C_HAS_HOST) begin : man_block

      // Instantiate the Management logic (configuration registers and MDIO)
      tsn_temac_v1_0_9_management #(
         .TSN_CHANGE_ENABLE            (TSN_CHANGE_ENABLE),
         .EN_1588_PTP_V1               (EN_1588_PTP_V1),
         .EN_INBAND_MGMT_TAG           (EN_INBAND_MGMT_TAG),
         .EN_PSFP                      (EN_PSFP),
         .EN_FRER                      (EN_FRER),
         .EN_HW_ADDR_LEARNING          (EN_HW_ADDR_LEARNING),
         .EN_CB_RSVD_BYTES             (EN_CB_RSVD_BYTES),
         .SCHEDULED_QUEUE              (SCHEDULED_QUEUE),
         .RESERVED_QUEUE               (RESERVED_QUEUE),
         .BESTEFFORT_QUEUE             (BESTEFFORT_QUEUE),
         .USE_HARD_FIFO                (USE_HARD_FIFO),
         .EN_PER_PRIQ_CNFGS            (EN_PER_PRIQ_CNFGS),
         .ADDR_TRANSLATION_TYPE        (ADDR_TRANSLATION_TYPE),
         .EN_EP_PKT_SWITCH             (EN_EP_PKT_SWITCH),
         .EN_EP_PORT_EXTN              (EN_EP_PORT_EXTN),
         .TSN_RTC_ENABLE               (TSN_RTC_ENABLE),
         .TSN_EP_ONLY                  (TSN_EP_ONLY),
         .DISABLE_RES_QUEUE            (DISABLE_RES_QUEUE),
         .C_AT_ENTRIES                 (C_AT_ENTRIES),
         .C_STATS_WIDTH                (C_STATS_WIDTH),
         .SYNTONIZED_TIMESTAMPS        (SYNTONIZED_TIMESTAMPS),
         .PTP_BRAM_PARTITION_SIZE      (PTP_BRAM_PARTITION_SIZE),
         .NUM_PTP_RX_MSG               (NUM_PTP_RX_MSG),
         .C_HALF_DUPLEX                (C_HALF_DUPLEX),
         .C_ADD_FILTER                 (C_ADD_FILTER),
         .EN_FRAME_PREEMPTION          (1),
         .EN_SCHEDULED_PREEMPTION      (EN_SCHEDULED_PREEMPTION),
         .EN_TX_CUSTOM_TIMESTAMP       (EN_TX_CUSTOM_TIMESTAMP),
         .EN_RX_CUSTOM_TIMESTAMP       (EN_RX_CUSTOM_TIMESTAMP),
         .C_HAS_STATS                  (C_HAS_STATS),
         .C_AVB                        (C_AVB),  //TSN_CHANGE_ENABLE is not required, as the ability register bits are N/A
         .C_HAS_2G5                    (HAS_2G5),
         .C_MAC_SPEED                  (MAC_SPEED),
         .C_1588                       (C_1588),
         .C_PHYSICAL_INTERFACE         (C_PHYSICAL_INTERFACE),
         .LATENCY_REG_TSN_GMII         (LATENCY_REG_TSN_GMII),
         .C_TX_INBAND_CF_ENABLE        (C_TX_INBAND_CF_ENABLE), 
         .C_RX_INBAND_TS_ENABLE        (C_RX_INBAND_TS_ENABLE), 
         .C_PFC                        (C_PFC),
         .DEBUG_HOOKS                  (0),
         .VERSION_INFO                 (VERSION_INFO),
         .C_HAS_MDIO                   (C_HAS_MDIO),
         .C_DEVICE_FAMILY_US           (C_DEVICE_FAMILY_US)
      ) managen (
         .mdio_in                      (mdio_in),
         .mdio_out                     (mdio_out),
         .mdio_tristate                (mdio_tri),
         .mdc                          (mdc_out),
         .mdio_ready                   (mdio_ready_int),
         .tx_jumbo_en                  (int_tx_jumbo_enable_mani),
         .tx_crc_mode                  (int_tx_crc_mode_mani),
         .tx_rst                       (int_tx_rst_mgmt_mani),
         .tx_en                        (int_tx_en_mani),
         .tx_vlan                      (int_tx_vlan_enable_mani),
         .tx_half_duplex               (int_tx_half_duplex_mani),
         .tx_ifg_del_en                (int_tx_ifg_del_en_mani),
         .rx_pause_ad                  (int_pause_source_mani),
         .update_pause_ad              (update_pause_ad_mani),
         .rx_jumbo_en                  (int_rx_jumbo_enable_mani),
         .rx_crc_mode                  (int_rx_crc_mode_mani),
         .rx_rst                       (int_rx_rst_mgmt_mani),
         .rx_en                        (int_rx_en_mani),
         .rx_vlan                      (int_rx_vlan_enable_mani),
         .rx_half_duplex               (int_rx_half_duplex_mani),
         .rx_lt_disable                (int_rx_lt_disable_mani),
         .rx_ps_lt_disable             (int_rx_ps_lt_disable_mani),
         .rx_max_frame_length          (int_rx_max_frame_length_mani),
         .rx_max_frame_enable          (int_rx_max_frame_enable_mani),
         .tx_max_frame_length          (int_tx_max_frame_length_mani),
         .tx_max_frame_enable          (int_tx_max_frame_enable_mani),
         .rx_inband_ts_enable          (int_rx_inband_ts_en_mani),
         .tx_inband_cf_enable          (int_tx_inband_cf_en_mani),
         .tx_latency_adjust            (int_tx_latency_adjust_mani),
         .tx_latency_adjust_enable     (int_tx_latency_adjust_en_mani),

         .tx_latency_adjust_tsn_gmii                  (tx_latency_adjust_tsn_gmii),
         .tx_latency_adjust_enable_tsn_gmii           (tx_latency_adjust_enable_tsn_gmii),
         .rx_latency_adjust_tsn_gmii                  (rx_latency_adjust_tsn_gmii),
         .rx_latency_adjust_enable_tsn_gmii           (rx_latency_adjust_enable_tsn_gmii),
         .tx_scheduler_internal_overhead_tsn          (tx_scheduler_internal_overhead_tsn),
         .debug_hooks_one_step_timestamp_offset       (debug_hooks_one_step_timestamp_offset),
         .debug_hooks_one_step_timestamp_enable       (debug_hooks_one_step_timestamp_enable),

         .mac_merge_status_verify                     (mac_merge_status_verify),
         .preemption_active                           (preemption_active),
         .tx_preemption_enable                        (tx_preemption_enable),
         .tx_disable_preemption_verif                 (tx_disable_preemption_verif),
         .tx_preemption_additional_frag_size          (tx_preemption_additional_frag_size),
         .tx_preemption_verify_timer_value            (tx_preemption_verify_timer_value),

         .st_guard_band_is_disabled    (st_guard_band_is_disabled),
         .non_st_guard_band_is_disabled    (non_st_guard_band_is_disabled),
         .gb_overrun_counter_override  (gb_overrun_counter_override),
         .hold_request_is_enabled      (hold_request_is_enabled),
         .hold_request_pmac            (hold_request_pmac_internal_status_reg),
         .core_hold_disabled_override  (core_hold_disabled_override_pmac),
         .qbu_hold_time_in_byte        (qbu_hold_time_in_byte),
         .qbu_release_time_in_byte     (qbu_release_time_in_byte),



         .rx_custom_timestamp_enable   (rx_custom_timestamp_enable),
         .rx_custom_timestamp_mode     (rx_custom_timestamp_mode),
         .rx_custom_timestamp_offset   (rx_custom_timestamp_offset),


         .tx_custom_timestamp_offset   (tx_custom_timestamp_offset),
         .tx_custom_timestamp_enable   (tx_custom_timestamp_enable),



         .fc_en                        (int_fc_enable),
         .pfc_en                       (int_pfc_en),
         .auto_xon                     (int_auto_xon),
         .tx_priority_en               (int_tx_priority_en_mani),
         .rx_priority_en               (int_rx_priority_en_mani),
         .pause_sample_addr            (int_pause_sample_addr),
         .pause_quanta_bus             (int_pause_quanta_bus),
         .bus2ip_clk                   (bus2ip_clk),
         .bus2ip_reset                 (int_mgmt_host_reset),
         .bus2ip_addr                  (bus2ip_addr_top[10:0]),
         .bus2ip_ce                    (bus2ip_cs_int[1]),   // bit 1 from ipif corresponds to config address range
         .bus2ip_rdce                  (bus2ip_rdce_int),
         .bus2ip_wrce                  (bus2ip_wrce_int),
         .ip2bus_wrack                 (ip2bus_wrack_config_int),
         .ip2bus_rdack                 (ip2bus_rdack_config_int),
         .bus2ip_data                  (bus2ip_data_int),
         .ip2bus_data                  (ip2bus_data_config_int),
         .ip2bus_error                 (ip2bus_error_config_int),
         .speed                        (int_speed_mani),
         .rx_init_vector               (rx_mac_config_vector_int[79:0]),
         .tx_init_vector               (tx_mac_config_vector_int[79:0])
      );
   end
   endgenerate


   // Parameter-based MUX-ing between Management I/F and the Configuration Vector
   generate
   // Assign internal configuration from the Management Configuration registers
   if (C_HAS_HOST) begin : has_man_assigns
      assign int_rx_inband_ts_en       = int_rx_inband_ts_en_mani;
      assign int_tx_inband_cf_en       = int_tx_inband_cf_en_mani;
      assign int_tx_latency_adjust     = int_tx_latency_adjust_mani;
      assign int_tx_latency_adjust_en  = int_tx_latency_adjust_en_mani;

      // if host is used then no flexibility with pause address
      // i.e. it has to be the same in rx and tx
      assign int_rx_pause_source       = int_pause_source_mani;
      assign int_tx_pause_source       = int_pause_source_mani;
      assign int_rx_half_duplex        = int_rx_half_duplex_mani;
      assign int_rx_vlan_enable        = int_rx_vlan_enable_mani;
      assign int_rx_en                 = int_rx_en_mani;
      assign int_rx_crc_mode           = int_rx_crc_mode_mani;
      assign int_rx_jumbo_enable       = int_rx_jumbo_enable_mani;
      assign int_rx_rst_mgmt           = int_rx_rst_mgmt_mani;
      assign int_tx_ifg_del_en         = int_tx_ifg_del_en_mani;
      assign int_tx_half_duplex        = int_tx_half_duplex_mani;
      assign int_tx_vlan_enable        = int_tx_vlan_enable_mani;
      assign int_tx_en                 = int_tx_en_mani;
      assign int_tx_crc_mode           = int_tx_crc_mode_mani;
      assign int_tx_jumbo_enable       = int_tx_jumbo_enable_mani;
      assign int_tx_rst_mgmt           = int_tx_rst_mgmt_mani;
      assign int_tx_enable             = int_fc_enable[1];
      assign int_rx_enable             = int_fc_enable[0];
      assign int_pfc_tx_enable         = int_pfc_en[1];
      assign int_pfc_rx_enable         = int_pfc_en[0];
      assign int_auto_xon_enable       = int_auto_xon;
      assign int_tx_priority_en        = int_tx_priority_en_mani;
      assign int_rx_priority_en        = int_rx_priority_en_mani;
      assign int_pause_qnta_bus_int    = int_pause_quanta_bus;
      assign int_rx_lt_disable         = int_rx_lt_disable_mani;
      assign int_rx_ps_lt_disable      = int_rx_ps_lt_disable_mani;
      assign int_rx_max_frame_length   = int_rx_max_frame_length_mani;
      assign int_rx_max_frame_enable   = int_rx_max_frame_enable_mani;
      assign int_tx_max_frame_length   = int_tx_max_frame_length_mani;
      assign int_tx_max_frame_enable   = int_tx_max_frame_enable_mani;
      assign int_speed                 = int_speed_mani;
      assign int_promiscuous_mode      = 1'b1;
      assign int_update_pause_ad       = update_pause_ad_mani;
   end


   //---------------------------------------------------------------------------
   // Configuration Vector assignments when no Management I/F
   //---------------------------------------------------------------------------

   else begin : noman_assigns
      assign ip2bus_wrack_config_int   = 1'b0;
      assign ip2bus_rdack_config_int   = 1'b0;
      assign ip2bus_data_config_int    = 0;
      assign ip2bus_error_config_int   = 1'b0;

      assign int_rx_inband_ts_en       = 1'b0;
      assign int_tx_inband_cf_en       = 1'b0;
      assign int_tx_latency_adjust     = 0;
      assign int_tx_latency_adjust_en  = 1'b0;

      assign mdio_ready_int            = 1'b0;
      assign int_rx_rst_mgmt           = rx_mac_config_vector[0];
      assign int_rx_en                 = rx_mac_config_vector[1];
      assign int_rx_vlan_enable        = rx_mac_config_vector[2];
      assign int_rx_crc_mode           = rx_mac_config_vector[3];
      assign int_rx_jumbo_enable       = rx_mac_config_vector[4];
      assign int_rx_enable             = rx_mac_config_vector[5];
      assign int_rx_lt_disable         = rx_mac_config_vector[8];
      assign int_rx_ps_lt_disable      = rx_mac_config_vector[9];
      assign int_rx_max_frame_enable   = rx_mac_config_vector[14];
      assign int_rx_max_frame_length   = rx_mac_config_vector[30:16];
      assign int_rx_pause_source       = rx_mac_config_vector[79:32];

      assign int_tx_rst_mgmt           = tx_mac_config_vector[0];
      assign int_tx_en                 = tx_mac_config_vector[1];
      assign int_tx_vlan_enable        = tx_mac_config_vector[2];
      assign int_tx_crc_mode           = tx_mac_config_vector[3];
      assign int_tx_jumbo_enable       = tx_mac_config_vector[4];
      assign int_tx_enable             = tx_mac_config_vector[5];
      assign int_tx_ifg_del_en         = tx_mac_config_vector[8];
      assign int_tx_max_frame_enable   = tx_mac_config_vector[14];
      assign int_tx_max_frame_length   = tx_mac_config_vector[30:16];
      assign int_tx_pause_source       = tx_mac_config_vector[79:32];

      if (C_PFC) begin :inc_pfc
         assign int_pfc_rx_enable      = rx_mac_config_vector[80];
         assign int_rx_priority_en     = rx_mac_config_vector[95:88];

         assign int_pfc_tx_enable      = tx_mac_config_vector[80];
         assign int_auto_xon_enable    = tx_mac_config_vector[81];
         assign int_tx_priority_en     = tx_mac_config_vector[95:88];

         // the quanta inputs should be stable when any quanta is enabled so can mux directly using the sample address
         assign int_pause_qnta_bus_int = (int_pause_sample_addr == 0) ? tx_mac_config_vector[127:96] :
                                         (int_pause_sample_addr == 1) ? tx_mac_config_vector[159:128] :
                                         (int_pause_sample_addr == 2) ? tx_mac_config_vector[191:160] :
                                         (int_pause_sample_addr == 3) ? tx_mac_config_vector[223:192] :
                                         (int_pause_sample_addr == 4) ? tx_mac_config_vector[255:224] :
                                         (int_pause_sample_addr == 5) ? tx_mac_config_vector[287:256] :
                                         (int_pause_sample_addr == 6) ? tx_mac_config_vector[319:288] :
                                         (int_pause_sample_addr == 7) ? tx_mac_config_vector[351:320] :
                                         (int_pause_sample_addr == 8) ? {tx_mac_config_vector[367:352], 16'h0} :
                                         32'h0;
      end
      else begin : pfc_tieoff
         assign int_pfc_rx_enable      = 1'b0;
         assign int_rx_priority_en     = 0;

         assign int_pfc_tx_enable      = 1'b0;
         assign int_auto_xon_enable    = 1'b0;
         assign int_tx_priority_en     = 0;
         assign int_pause_qnta_bus_int = 0;
      end

      // define allowed INT_SPEED values based on core generic
      // REM: INT_SPEED values:
      // 00 = 10  Mbps
      // 01 = 100 Mbps
      // 10 = 1   Gbps
      // 1x = ? ignored or 1G?
      if (MAC_SPEED == "SPEED_10_100_MBPS") begin : speed_10100
         assign int_speed[0]           = tx_mac_config_vector[12];
         assign int_speed[1]           = 1'b0;
      end
      else if (MAC_SPEED == "SPEED_1000_MBPS") begin :speed_1g
         assign int_speed[0]           = 1'b0;
         assign int_speed[1]           = 1'b1;
      end
      else if (MAC_SPEED == "TRI_SPEED") begin :speed_tri
         assign int_speed[0]           = tx_mac_config_vector[12];
         assign int_speed[1]           = tx_mac_config_vector[13];
      end

      assign int_promiscuous_mode      = rx_mac_config_vector[11];
      assign int_update_pause_ad       = 1'b0;

      if (C_HALF_DUPLEX) begin : halfdup
         assign int_rx_half_duplex     = rx_mac_config_vector[6];
         assign int_tx_half_duplex     = tx_mac_config_vector[6];
      end
      else begin : halfdup_tieoff
         assign int_rx_half_duplex     = 1'b0;
         assign int_tx_half_duplex     = 1'b0;
      end

      if (C_1588 > 0) begin : inc_1588
         assign int_rx_inband_ts_en    = rx_mac_config_vector[15];
         assign int_tx_inband_cf_en    = tx_mac_config_vector[15];
      end
      else if (C_1588 == 0) begin :no_1588
         assign int_rx_inband_ts_en    = 1'b0;
         assign int_tx_inband_cf_en    = 1'b0;
      end

      // Tie off unused MDIO outputs
      assign mdio_out                  = 1'b1;
      assign mdio_tri                  = 1'b1;
      assign mdc_out                   = 1'b0;

   end
   endgenerate // noman_assigns

   // NOTE: that the CONFIG block never uses speed bits (12:13) - so it is irrelevent what they are set to here.
   // The max frame lengths have been initialised to 2K
   // The RX and TX Pause Source values default to the value of broadcast as no pause would ever use that
   generate
   if (C_HAS_HOST) begin : config_init
      assign rx_mac_config_vector_int       = {48'hffffffffffff, 32'h07d44006}; // orig h07d00022 //valn enabled, flow control disabled, max frame len enabled
      assign tx_mac_config_vector_int[79:0] = {48'hffffffffffff, 32'h07d44006}; // orig h07d00022
   end
   endgenerate


   //------------------------------------------------------------------------------
   // Interrupt controller
   //------------------------------------------------------------------------------

   assign intr_source                  = {5'h0,
                                          interrupt_ptp_timer_int,
                                          interrupt_ptp_rx_int,
                                          interrupt_ptp_tx_int,
                                          mdio_ready_int};


   generate
   if (C_HAS_HOST) begin : intc_control

      tsn_temac_v1_0_9_int_ctrl #(
         .NUM_INTERRUPTS               (NUM_INTERRUPTS),
         .C_S_AXI_ADDR_WIDTH           (C_S_AXI_ADDR_WIDTH)
      ) intc (
         .bus2ip_clk                   (bus2ip_clk),
         .bus2ip_reset                 (int_mgmt_host_reset),
         .bus2ip_cs                    (bus2ip_cs_int[2]),
         .bus2ip_rdce                  (bus2ip_rdce_int),
         .bus2ip_wrce                  (bus2ip_wrce_int),
         .ip2bus_wrack                 (ip2bus_wrack_intr_int),
         .ip2bus_rdack                 (ip2bus_rdack_intr_int),
         .bus2ip_addr                  (bus2ip_addr_top),
         .bus2ip_data                  (bus2ip_data_int),
         .ip2bus_data                  (ip2bus_data_intr_int),
         .ip2bus_error                 (ip2bus_error_intr_int),

         .intr                         (intr_source[NUM_INTERRUPTS-1:0]),
         .irq                          (mac_irq)
      );
   end

   // No Host I/F = no Interrupt controller
   else begin : intc_tieoff
      assign ip2bus_data_intr_int      = 0;
      assign ip2bus_wrack_intr_int     = 1'b0;
      assign ip2bus_rdack_intr_int     = 1'b0;
      assign ip2bus_error_intr_int     = 1'b0;
      assign mac_irq                   = 1'b0;
   end
   endgenerate


   //---------------------------------------------------------------------------
   // Generate Statistic Vector outputs.
   //---------------------------------------------------------------------------

   assign tx_statistics_vector_pmac   = {7'h0, int_pause_vector[3], int_pause_vector[0],
                                        int_tx_statistics_vector};

   assign tx_statistics_vector        = {7'h0, int_pause_vector[3], int_pause_vector[0],
                                         e_int_tx_statistics_vector};


   always @(posedge rx_axi_clk)
   begin
      if (rx_reset) begin
         rxstatsaddressmatch_del       <= 1'b0;
      end
      else begin
         rxstatsaddressmatch_del       <= rxstatsaddressmatch;
      end
   end

   always @(posedge rx_axi_clk)
   begin
      if (rx_reset) begin
         e_rxstatsaddressmatch_del       <= 1'b0;
      end
      else begin
         e_rxstatsaddressmatch_del       <= e_rxstatsaddressmatch;
      end
   end


   assign rx_statistics_vector_pmac    = {3'h0, int_pause_vector[4], rxstatsaddressmatch_del,
                                          int_rx_statistics_vector[24:23], int_pause_vector[2:1],
                                          int_rx_statistics_vector[22:0]};


   assign rx_statistics_vector         = {3'h0, int_pause_vector[4], e_rxstatsaddressmatch_del,
                                          e_int_rx_statistics_vector[24:23], int_pause_vector[2:1],
                                          e_int_rx_statistics_vector[22:0]};



   assign tx_statistics_valid_pmac          = int_tx_valid;
   assign rx_statistics_valid_pmac          = int_rx_valid;
   assign tx_statistics_valid               = e_int_tx_valid;
   assign rx_statistics_valid               = e_int_rx_valid;
   assign int_tx_ifg_delay                  = tx_ifg_delay;


   //------------------------------------------------------------------------------
   // Optional Statistic Counter Logic
   //------------------------------------------------------------------------------

   generate
   if (C_HAS_HOST & C_HAS_STATS) begin : stats_block


      // Instance the statistic counters
      // if no CPU or stats then do not generate


      // Statistic update inputs for the 4 "fast" counters
      //--------------------------------------------------

      // Counter 0: "Transmitted bytes" increment request
      //------------
      assign tx_byte                   = int_tx_statistics_vector[30] & tx_ce_sample_and_enabled;


      // Counter 1: "Received bytes" increment request
      //------------
      assign rx_byte                   = rx_enable & ~p_rx_is_preempted & int_rx_statistics_vector[22] & rxstatsaddressmatch;


      // Counter 2: "Undersize frames received" increment request
      //------------
      always @(posedge rx_axi_clk)
      begin
         if (rx_reset) begin
            rx_small                   <= 1'b0;
         end
         else if (!int_min_size & !int_rx_statistics_vector[24] &
                 !int_rx_statistics_vector[2] & int_rx_valid & rx_enable) begin
                 //!int_rx_statistics_vector[2] & int_rx_valid & rx_enable & ~p_rx_is_preempted) begin
            rx_small                   <= 1'b1;
         end
         else begin
            rx_small                   <= 1'b0;
         end
      end


      // Counter 3: "Fragment frames received" increment request
      //------------
      always @(posedge rx_axi_clk)
      begin
         if (rx_reset) begin
            rx_frag                    <= 1'b0;
         end
         else if (!int_min_size & int_rx_valid & rx_enable  & ~p_rx_is_preempted &
                  (int_rx_statistics_vector[24] | int_rx_statistics_vector[2])) begin
            rx_frag                    <= 1'b1;
         end
         else begin
            rx_frag                    <= 1'b0;
         end
      end


      //BR: // Counter 4: "Frag count TX" increment request
      assign tx_frag_count_br    = incr_frag_tx_br & tx_enable_d1;

      //BR: // Counter 5: "Hold count TX" increment request

      assign tx_hold_count_br    = incr_hold_count_br & tx_enable_d1;

      //BR: // Counter 6: "Frag count RX" increment request

      assign rx_frag_count_br    = incr_frag_rx_br & rx_enable;

      //BR: // Counter 7: "SMD error count RX" increment request

      assign rx_smd_err_count_br    = incr_smd_err_rx_br & rx_enable;

      //BR: // Counter 8: "Assembly error count RX" increment request

      assign rx_assembly_err_count_br    = incr_assembly_err_rx_br & rx_enable;

      //BR: // Counter 9: "Assembly OK count RX" increment request

      assign rx_assembly_ok_count_br    = incr_assembly_ok_rx_br & rx_enable;


   always @(posedge tx_axi_clk)
   begin
      if (tx_reset) begin
         tx_br_statistics[1] <= 0;
         tx_br_statistics[0] <= 0;
       end
      else if (tx_enable_d1) begin
         tx_br_statistics[1] <= tx_frag_count_br;
         tx_br_statistics[0] <= tx_hold_count_br;
       end
      else begin
         tx_br_statistics[1] <= 0;
         tx_br_statistics[0] <= 0;
       end
   end


   always @(posedge rx_axi_clk)
   begin
      if (rx_reset) begin
         rx_br_statistics[3] <= 0;
         rx_br_statistics[2] <= 0;
         rx_br_statistics[1] <= 0;
         rx_br_statistics[0] <= 0;
       end
      else if (rx_enable) begin
         rx_br_statistics[3] <= rx_frag_count_br;
         rx_br_statistics[2] <= rx_smd_err_count_br;
         rx_br_statistics[1] <= rx_assembly_err_count_br;
         rx_br_statistics[0] <= rx_assembly_ok_count_br;
       end
      else begin
         rx_br_statistics[3] <= 0;
         rx_br_statistics[2] <= 0;
         rx_br_statistics[1] <= 0;
         rx_br_statistics[0] <= 0;
       end
   end





      // Statistic counter logic instance for all other "slow" counters
      //---------------------------------------------------------------

      tsn_temac_v1_0_9_statistics_core #(
         .C_NUM_STATS                  (C_NUM_STATS + 6),
         .C_CNTR_RST                   (C_CNTR_RST),
         .EN_FRAME_PREEMPTION          (1),
         .C_STATS_WIDTH                (C_STATS_WIDTH)
      ) statistics_counters (
         .ref_clk                      (stats_ref_clk),
         .ref_reset                    (stats_reset),

         .bus2ip_clk                   (bus2ip_clk),
         .bus2ip_reset                 (int_mgmt_host_reset),

         .bus2ip_ce                    (bus2ip_cs_int[4]),    // bit 0 from ipif corresponds to stats address range
         .bus2ip_rdce                  (bus2ip_rdce_int),
         .bus2ip_wrce                  (bus2ip_wrce_int),
         .ip2bus_wrack                 (ip2bus_wrack_stats_int),
         .ip2bus_rdack                 (ip2bus_rdack_stats_int),

         .bus2ip_addr                  (bus2ip_addr_top[10:0]),
         .bus2ip_data                  (bus2ip_data_int),
         .ip2bus_data                  (ip2bus_data_stats_int),
         .ip2bus_error                 (ip2bus_error_stats_int),

         .tx_clk                       (tx_axi_clk),
         .tx_reset                     (tx_reset),
         .tx_byte                      (tx_byte),
         .rx_clk                       (rx_axi_clk),
         .rx_reset                     (rx_reset),
         .rx_byte                      (rx_byte),
         .rx_small                     (rx_small),
         .rx_frag                      (rx_frag),
         .tx_br_statistics             (tx_br_statistics),
         .rx_br_statistics             (rx_br_statistics),
         .increment_vector             ({increment_vector, 6'b0})
      );
   end

   // No statistics
   else begin : stats_tieoff
      assign tx_byte                   = 1'b0;
      assign rx_byte                   = 1'b0;

      always @(posedge rx_axi_clk)
      begin
         rx_small                      = 1'b0;
         rx_frag                       = 1'b0;
         rx_br_statistics              = 0;
      end

      always @(posedge tx_axi_clk)
      begin
         tx_br_statistics              = 0;
      end


      assign ip2bus_wrack_stats_int    = bus2ip_wrce_int & bus2ip_cs_int[4];
      assign ip2bus_rdack_stats_int    = bus2ip_rdce_int & bus2ip_cs_int[4];
      assign ip2bus_data_stats_int     = 0;
      assign ip2bus_error_stats_int    = 1'b0;
   end
   endgenerate


   //---------------------------------------------------------------------------
   // Optional Address Filtering
   //---------------------------------------------------------------------------

   tsn_temac_v1_0_9_addr_filter_wrap
   #(
      .C_AT_ENTRIES                    (C_AT_ENTRIES),
      .C_HAS_HOST                      (C_HAS_HOST),
      .C_1588                          (C_1588),
      .C_ADD_FILTER                    (C_ADD_FILTER),
      .TSN_EP_ONLY                     (TSN_EP_ONLY),
      .DISABLE_RES_QUEUE               (DISABLE_RES_QUEUE),
      .C_AVB                           (C_AVB),
      .EN_FRAME_PREEMPTION             (1),
      .EN_RX_CUSTOM_TIMESTAMP          (EN_RX_CUSTOM_TIMESTAMP),
      .EN_TX_CUSTOM_TIMESTAMP          (EN_TX_CUSTOM_TIMESTAMP),
      .TSN_CHANGE_ENABLE               (TSN_CHANGE_ENABLE),
      .EN_1588_PTP_V1                  (EN_1588_PTP_V1),
      .C_S_AXI_ADDR_WIDTH              (C_S_AXI_ADDR_WIDTH)
   ) addr_filter_top (
      .rxcoreclk                       (rx_axi_clk),
      .rx_sync_reset                   (rx_reset),
      .rxclk_ce                        (rx_enable),

      .data_early                      (data_early),
      .data_valid_early                (data_valid_early),

      .tx_reset                        (tx_reset),
      .tx_clk                          (tx_axi_clk),
      .tx_clk_en                       (tx_ce_sample),
      .tx_data                         (int_tx_data_out),
      .tx_data_valid                   (int_tx_data_valid_out),
      .tx_data_ack                     (int_tx_ack_in),

      .tx_custom_timestamp_match       (tx_custom_timestamp_match),
      .tx_custom_timestamp_enable      (tx_custom_timestamp_enable), 

      .rx_custom_timestamp_match       (rx_custom_timestamp_match),
      .rx_custom_timestamp_enable      (rx_custom_timestamp_enable),

      .ptp_rx_filter_match_br          (ptp_rx_filter_match_br),
      .ptp_v1_rx_filter_match_br       (ptp_v1_rx_filter_match_br),
      .st_rx_filter_match_br           (rx_filter_st_match),
      .res_rx_filter_match_br          (rx_filter_res_match),
      .be_rx_filter_match_br           (rx_filter_be_match),

      .rx_pause_addr                   (int_rx_pause_source),
      .update_pause_ad                 (int_update_pause_ad),
      .promiscuous_mode_init           (int_promiscuous_mode),

      .rx_filtered_data_valid          (address_valid_early),
      .unicastaddressmatch             (unicastaddressmatch),
      .broadcastaddressmatch           (broadcastaddressmatch),
      .pauseaddressmatch               (pauseaddressmatch),
      .specialpauseaddressmatch        (specialpauseaddressmatch),
      .rxstatsaddressmatch             (rxstatsaddressmatch),
      .rx_filter_match                 (rx_filter_match),
      .rx_st_match                     (rx_st_match),
      .rx_av_a_match                   (rx_av_a_match),
      .rx_av_b_match                   (rx_av_b_match),
      .rx_ptp_match                    (rx_ptp_match),
      .rx_ptp_v1_match                 (rx_ptp_v1_match),

      .bus2ip_clk                      (bus2ip_clk),
      .bus2ip_reset                    (int_mgmt_host_reset),
      .bus2ip_ce                       (bus2ip_cs_int[3]),    // bit 3 from ipif corresponds to af address range
      .bus2ip_rdce                     (bus2ip_rdce_int),
      .bus2ip_wrce                     (bus2ip_wrce_int),
      .ip2bus_rdack                    (ip2bus_rdack_af_int),
      .ip2bus_wrack                    (ip2bus_wrack_af_int),
      .bus2ip_addr                     (bus2ip_addr_top),
      .bus2ip_data                     (bus2ip_data_int),
      .ip2bus_data                     (ip2bus_data_af_int),
      .ip2bus_error                    (ip2bus_error_af_int)
   );

   assign rx_filter_match_comb         = |rx_filter_match | rx_st_match | rx_av_a_match |
                                          rx_av_b_match | rx_ptp_match | rx_ptp_v1_match;

tsn_temac_v1_0_9_rx_cs    #(
      .EN_CUSTOM_TS                        (EN_RX_CUSTOM_TIMESTAMP)
   ) rx_cs_inst 

 (


     .rx_clk                               (rx_axi_clk), 		 
     .rx_reset                             (rx_reset), 
  
     .rx_ts_in_data                        (rx_ts_axis_tdata_int[63:0]),                 

     .add_timestamp_valid                  (rx_custom_timestamp_match),
     .add_timestamp_mode                   (rx_custom_timestamp_mode),
     .add_timestamp_offset                 (rx_custom_timestamp_offset),
    
     .rx_stream_in_tdata                   (rx_axis_pmac_tdata_int), 
     .rx_stream_in_tvalid                  (rx_axis_pmac_tvalid_int), 
     .rx_stream_in_tlast                   (rx_axis_pmac_tlast_int), 
     .rx_stream_in_tuser                   (rx_axis_pmac_tuser_i),
     .rx_stream_in_st_tuser                (rx_axis_pmac_st_filter_tuser_i),
     .rx_stream_in_res_tuser               (rx_axis_pmac_av_filter_tuser_i),
    
     .rx_stream_out_tdata                  (rx_axis_pmac_tdata), 
     .rx_stream_out_tvalid                 (rx_axis_pmac_tvalid), 
     .rx_stream_out_tlast                  (rx_axis_pmac_tlast), 
     .rx_stream_out_tuser                  (rx_axis_pmac_tuser),
     .rx_stream_out_st_tuser               (rx_axis_pmac_st_filter_tuser),
     .rx_stream_out_res_tuser              (rx_axis_pmac_av_filter_tuser)


 
     );


generate if (DEBUG_HOOKS == 1) begin  


   always @(posedge rx_axi_clk)
   begin

     mac_rxphy_if_out_i[15:0] <= {gmii_rxd, 6'b0, gmii_rx_er, gmii_rx_dv};
     mac_rxphy_if_out         <= mac_rxphy_if_out_i;


   end

   always @(posedge tx_axi_clk)
   begin

     mac_txphy_if_out_i[15:0] <= {gmii_txd, 5'b0, gmii_tx_clken, gmii_tx_er, gmii_tx_en};
     mac_txphy_if_out         <= mac_txphy_if_out_i;


   end

    assign mac_debug_out[511:32] = 0 ;
    assign mac_debug_out[31:16]  = mac_rxphy_if_out ;
    assign mac_debug_out[15:0]   = mac_txphy_if_out ;

end
endgenerate

generate if (DEBUG_HOOKS == 0) begin  

    assign mac_debug_out = 0 ;


   always @(posedge rx_axi_clk)
   begin

     mac_rxphy_if_out_i[15:0] <= 0;
     mac_rxphy_if_out         <= 0;


   end

   always @(posedge tx_axi_clk)
   begin

     mac_txphy_if_out_i[15:0] <= 0;
     mac_txphy_if_out         <= 0;


   end



end
endgenerate


tsn_temac_v1_0_9_rx_pipe_br rx_pipe_br_inst 

 (

     .clk                       (rx_axi_clk), 		 
     .reset                     (rx_reset), 
     
     .ce_in                     (rx_enable), 

     .int_rx_dv                 (int_gmii_rx_dv), 
     .int_rx_er                 (int_gmii_rx_er), 
     .int_rxd                   (int_gmii_rxd), 

     .crc_reset                 (crc_reset_pmac_rx_pipe), 
     .crc_compute               (crc_compute_pmac_rx_pipe), 
     .p_rx_is_preempted         (p_rx_is_preempted), 
     .rx_mcrc_ck                (rx_mcrc_ck), 
     .rx_mcrc_err               (rx_mcrc_err), 
     .sample_timer_e            (sample_timer_rx_e), 
     .sample_timer_p            (sample_timer_rx_p), 

     .rx_dv                     (int_gmii_rx_dv_pipe), 
     .rx_er                     (int_gmii_rx_er_pipe), 
     .rxd                       (int_gmii_rxd_pipe) 
     
     );

tsn_temac_v1_0_9_rx_processing_br rx_processing_br_inst 

 (

     .clk                       (rx_axi_clk), 		 
     .reset                     (rx_reset), 
     
     .ce_in                     (rx_enable), 

     .crc_reset                 (crc_reset_pmac_rx_pipe), 
     .crc_compute               (crc_compute_pmac_rx_pipe), 
     .p_rx_is_preempted         (p_rx_is_preempted), 
     .rx_mcrc_ck                (rx_mcrc_ck), 
     .rx_mcrc_err               (rx_mcrc_err), 

     .assembly_crc_err          (),

     .incr_frag_rx              (incr_frag_rx_br),
     .incr_smd_err_rx           (incr_smd_err_rx_br),
     .incr_assembly_err_rx      (incr_assembly_err_rx_br),
     .incr_assembly_ok_rx       (incr_assembly_ok_rx_br),
 
     .rx_dv                     (int_gmii_rx_dv_pipe), 
     .rx_er                     (int_gmii_rx_er_pipe), 
     .rxd                       (int_gmii_rxd_pipe), 

     .p_rx_dv                   (int_gmii_rx_dv_preamptable), 
     .p_rx_er                   (int_gmii_rx_er_preamptable), 
     .p_rxd                     (int_gmii_rxd_preamptable) 
     
     );

tsn_temac_v1_0_9_express_filter_br  #(
      .MCRC_VAL1                ('hf7), // check if this is correct mcrc 
      .MCRC_VAL2                ('h76), // check
      .MCRC_VAL3                ('h12), // check  
      .MCRC_VAL4                ('h04)  // check
   ) express_filter_br_inst 

 (

     .clk                       (rx_axi_clk), 		 
     .reset                     (rx_reset), 
     .ce_in                     (rx_enable), 

     .rx_dv                     (int_gmii_rx_dv), 
     .rx_er                     (int_gmii_rx_er), 
     .rxd                       (int_gmii_rxd), 

     .e_rx_dv                   (int_gmii_rx_dv_express), 
     .e_rx_er                   (int_gmii_rx_er_express), 
     .e_rxd                     (int_gmii_rxd_express),
 
     .rcvd_respond_pkt_clr      (rcvd_respond_pkt_clr), 
     .rcvd_verify_pkt_clr       (rcvd_verify_pkt_clr), 
     .rcvd_respond_pkt          (rcvd_respond_pkt), 
     .rcvd_verify_pkt           (rcvd_verify_pkt) 
      
 
     );

tsn_temac_v1_0_9_verify_respond_fsm_br verify_respond_fsm_br_inst 

 (

     .clk                       (tx_axi_clk), 		 
     .reset                     (tx_reset), 
     
     .ce_in                     (tx_enable_d1), 

     .one_ms_toggle             (one_ms_toggle), 

     .preemption_enable         (tx_preemption_enable),                     //reg control
     .disable_preemption_verif  (tx_disable_preemption_verif),              //reg control
     .verify_timer_value        (tx_preemption_verify_timer_value),         //reg control 
     .mac_merge_status_verify   (mac_merge_status_verify),                  //reg status

     .verify_pkt_done           (verify_pkt_done),  
     .resp_pkt_done             (resp_pkt_done),  
     .preemption_verified       (preemption_verified),  
     .send_verify_pkt           (send_verify_pkt),  
     .send_response_pkt         (send_response_pkt),  

//express filter interface 
     .rcvd_respond_pkt_clr      (rcvd_respond_pkt_clr), 
     .rcvd_verify_pkt_clr       (rcvd_verify_pkt_clr), 
     .rcvd_respond_pkt          (rcvd_respond_pkt), 
     .rcvd_verify_pkt           (rcvd_verify_pkt) 
     
     );

tsn_temac_v1_0_9_tx_pipe_br pmac_tx_pipe_br_inst 

 (

     .clk                       (tx_axi_clk), 		 
     .reset                     (tx_reset), 
     
     .ce_in                     (tx_enable_d1), 
     .mac_transmitting          (tx_pmac_going), 
     .preempted                 (tx_preempted),  
     .fragment_restarted        (tx_fragment_restarted),  

     .int_txd                   (int_gmii_txd_to_p_pipe), 
     .int_tx_en                 (int_gmii_tx_en_to_p_pipe), 
     .int_tx_err                (int_gmii_tx_er_to_p_pipe), 

     .tx_is_enabled             (pmac_tx_is_enabled), 
     .tx_en                     (int_gmii_tx_en_p_tx_proc), 
     .tx_err                    (int_gmii_tx_er_p_tx_proc), 
     .txd                       (int_gmii_txd_p_tx_proc) 
     
     );



tsn_temac_v1_0_9_tx_pipe_br emac_tx_pipe_br_inst 

 (

     .clk                       (tx_axi_clk), 		 
     .reset                     (tx_reset), 
     
     .ce_in                     (tx_enable_d1), 
     .mac_transmitting          (tx_emac_going), 
     .preempted                 (1'b0),  
     .fragment_restarted        (1'b0),  

     .int_txd                   (int_gmii_txd_to_e_pipe), 
     .int_tx_en                 (int_gmii_tx_en_to_e_pipe), 
     .int_tx_err                (int_gmii_tx_er_to_e_pipe), 

     .tx_is_enabled             (emac_tx_is_enabled), 
     .tx_en                     (int_gmii_tx_en_e_tx_proc), 
     .tx_err                    (int_gmii_tx_er_e_tx_proc), 
     .txd                       (int_gmii_txd_e_tx_proc) 
     
     );


tsn_temac_v1_0_9_tx_processing_br tx_processing_br_inst 

 (

     .clk                       (tx_axi_clk), 		 
     .reset                     (tx_reset), 
     
     .ce_in                     (tx_enable_d1), 
     .preemption_enable         (tx_preemption_enable),                   //reg control
     .disable_preemption_verif  (tx_disable_preemption_verif),            //reg control
     .additional_frag_size      (tx_preemption_additional_frag_size),     //reg control
     .preemption_active         (preemption_active),                      //reg status 
     .hold_pmac_req             (hold_request_pmac_internal),                      //port
     //.hold_pmac_req             (tx_pmac_going),                        //tmp   //port
     .preempted                 (tx_preempted),  
     .fragment_restarted        (tx_fragment_restarted),  

     .verify_pkt_done           (verify_pkt_done),  
     .resp_pkt_done             (resp_pkt_done),  
     .preemption_verified       (preemption_verified),  
     .send_verify_pkt           (send_verify_pkt),  
     .send_response_pkt         (send_response_pkt),  

     .p_tx_is_enabled           (pmac_tx_is_enabled), 
     .e_tx_is_enabled           (emac_tx_is_enabled), 

     .p_tx_en                   (int_gmii_tx_en_p_tx_proc), 
     .p_tx_err                  (int_gmii_tx_er_p_tx_proc), 
     .p_txd                     (int_gmii_txd_p_tx_proc), 
     .p_txd_byte_cnt            (txd_byte_count_pmac_i),                    
     .p_going                   (tx_pmac_going), 

     .incr_frag_tx              (incr_frag_tx_br),                                       //todo statistcis 

     .e_tx_en                   (int_gmii_tx_en_e_tx_proc), 
     .e_tx_err                  (int_gmii_tx_er_e_tx_proc), 
     .e_txd                     (int_gmii_txd_e_tx_proc), 
     .e_going                   (tx_emac_going), 

     .tx_en                     (int_gmii_tx_en), 
     .tx_err                    (int_gmii_tx_er), 
     .txd                       (int_gmii_txd) 
     
     );


      tsn_temac_v1_0_9_tx_axi_intf #(
         .EN_FRAME_PREEMPTION          (1),
         .C_1588                       (0)
      ) e_tx_axi_shim (
         .tx_clk                       (tx_axi_clk),
         .tx_reset                     (tx_reset),
         .tx_enable                    (tx_enable_emac),
         //.tx_inband_cf_enable          (int_tx_inband_cf_en),
         .tx_inband_cf_enable          (1'b0), // no support for inband command for 1-step timestamping with BRAM based PTP implementation

         .tx_mac_tdata                 (tx_axis_mac_tdata),
         .tx_mac_tvalid                (tx_axis_mac_tvalid),
         .tx_mac_tlast                 (tx_axis_mac_tlast),
         .tx_mac_tuser                 (tx_axis_mac_tuser),
         .tx_mac_tready                (tx_axis_mac_tready),

         .tx_is_enabled                (emac_tx_is_enabled), 
         .speed_1G                     (int_speed[1]), 
         .tx_enable_out                (e_tx_ce_sample),
         .tx_continuation              (),
         .tx_data                      (e_tx_data_int),
         .tx_data_valid                (e_tx_data_valid_int),
         .tx_underrun                  (e_tx_underrun_int),
         .tx_ack                       (e_tx_ack_int),
         .tx_retransmit                (1'b0),
         .tx_command_field             ()
      );
      

   //---------------------------------------------------------------------------
   // eMAC Transmitter Logic.
   //---------------------------------------------------------------------------

   tsn_temac_v1_0_9_tx #(
      .C_HALF_DUPLEX                   (C_HALF_DUPLEX),
      .C_IS_EVAL                       (TSN_EP_EVAL),
      .C_1588                          (C_1588),
      .EN_FRAME_PREEMPTION             (1),
      .C_AVB                           (C_AVB),
      .TSN_CHANGE_ENABLE               (TSN_CHANGE_ENABLE),
      .C_PHYSICAL_INTERFACE            (C_PHYSICAL_INTERFACE),
      .C_MAC_SPEED                     (MAC_SPEED)
   ) e_txgen (
      .reset                           (tx_reset),
      .reset_gmii_mii                  (tx_reset),
      .clk                             (tx_axi_clk),
      .data                            (e_int_tx_data_out),
      .data_valid                      (e_int_tx_data_valid_out),
      .data_ack                        (e_int_tx_ack_in),
      .retransmit                      (e_int_retransmit),
      .collision                       (e_int_collision),
      .extension                       (e_int_extension),
      .underrun                        (e_int_tx_underrun_out),
      .end_of_tx                       (e_int_tx_end_of_tx),
      .col                             (gmii_col),
      .crs                             (gmii_crs),
      //.txd                             (int_gmii_txd),
      //.tx_en                           (int_gmii_tx_en),
      //.tx_er                           (int_gmii_tx_er),
      .txd                             (int_gmii_txd_to_e_pipe),
      .tx_en                           (int_gmii_tx_en_to_e_pipe),
      .tx_er                           (int_gmii_tx_er_to_e_pipe),
      .pause_active                    (e_pause_active),
      .vlan_enable                     (e_int_tx_vlan_enable_out),
      .crc_mode                        (e_int_tx_crc_enable_out),
      .half_duplex                     (int_tx_half_duplex),
      .jumbo_enable                    (int_tx_jumbo_enable),
      .enable                          (int_tx_en),
      .ifg_del_en                      (int_tx_ifg_del_en),
      .ifg_delay                       (int_tx_ifg_delay),
      .max_frame_length                (int_tx_max_frame_length),
      .max_frame_enable                (int_tx_max_frame_enable),
      .status_valid                    (e_int_tx_valid),
      .status_vector                   (e_int_tx_statistics_vector[30:0]),
      .speed_is_10_100                 (speed_is_10_100_int),
      .speed_is_100                    (speed_is_100_int),
      .speed                           (int_speed),

//The below is used for SGMII or Base-X only. Commented to avoid misuse when
//core in generated in INTERNAL mode untill
//we support SGMII.
      ////.tx_latency_adjust               (int_tx_latency_adjust),
      ////.tx_latency_adjust_enable        (int_tx_latency_adjust_en),
      .tx_latency_adjust                                   (16'b0),
      .tx_latency_adjust_enable                            (1'b0),
      .tx_latency_adjust_tsn_gmii                          (tx_latency_adjust_tsn_gmii),
      .tx_latency_adjust_enable_tsn_gmii                   (tx_latency_adjust_enable_tsn_gmii),
      .debug_hooks_one_step_timestamp_offset               (debug_hooks_one_step_timestamp_offset),
      .debug_hooks_one_step_timestamp_enable               (debug_hooks_one_step_timestamp_enable),
      .tx_ptp_frame_granted_for_transmission               (1'b0),

      .sample_timer                    (e_tx_sample_timer),
      .core_has_sgmii                  (core_has_sgmii),
      .tx_en_in                        (gmii_tx_en_to_phy),
      .tx_er_in                        (gmii_tx_er_to_phy),
      .ce_in                           (e_tx_ce_sample_and_enabled),
      .rtc_clk                         (rtc_clk),
      .systemtimer_s_field             (systemtimer_s_field_int),
      .systemtimer_ns_field            (systemtimer_ns_field_int),
      .systemtimer_s_field_2           (systemtimer_s_field_2_int),
      .systemtimer_ns_field_2          (systemtimer_ns_field_2_int),
      .correction_timer                (correction_timer_internal),
      //.tx_command_field                (tx_command_field),
      .tx_command_field                (64'b0),
      .tx_command_field_cs             (e_tx_command_field_cs),
      .tx_ts_axis_tvalid               (e_tx_ts_axis_tvalid_int),
      .tx_ts_axis_tdata                (e_tx_ts_axis_tdata_1_int),
      .tx_ts_axis_tdata_2              (e_tx_ts_axis_tdata_2_int)
      );


   //---------------------------------------------------------------------------
   // eMAC Flow Control Logic
   //---------------------------------------------------------------------------

   tsn_temac_v1_0_9_control #(
      .C_HALF_DUPLEX                   (C_HALF_DUPLEX),
      .C_PFC                           (C_PFC)
   ) e_flow (
      .rx_clk                          (rx_axi_clk),

      .rx_data_in                      (e_int_rx_data_in),
      .rx_data_valid_in                (e_int_rx_data_valid_in),
      .rx_good_frame_in                (e_int_rx_good_frame_in),
      .rx_bad_frame_in                 (e_int_rx_bad_frame_in),
      .rx_control_frame                (e_int_rx_control_frame),
      .rx_control_frame_any_add        (e_int_rx_control_frame_any_da),
 
      .rx_good_frame_out               (e_rx_good_frame), //axi_intf
      .rx_bad_frame_out                (e_rx_bad_frame),
      .rx_data_out                     (e_rx_data),
      .rx_data_valid_out               (e_rx_data_valid),

      .tx_clk                          (tx_axi_clk),
      .tx_ack_in                       (e_int_tx_ack_in),
      .tx_end_of_tx                    (e_int_tx_end_of_tx),
      .tx_valid                        (e_int_tx_valid),
      .tx_retransmit_in                (e_int_retransmit),
      .tx_collision_in                 (e_int_collision),
      .tx_data_out                     (e_int_tx_data_out),
      .tx_data_avail_out               (e_int_tx_data_valid_out),
      .tx_underrun_out                 (e_int_tx_underrun_out),

      .tx_crc_enable_out               (e_int_tx_crc_enable_out),
      .tx_vlan_enable_out              (e_int_tx_vlan_enable_out),
      .tx_retransmit_out               (),
      .tx_collision_out                (),
      .pause_active                    (e_pause_active),

      .tx_data_in                      (e_tx_data_int),
      .tx_data_avail_in                (e_tx_data_valid_int),
      .tx_underrun_in                  (e_tx_underrun_int),
      .tx_ack_out                      (e_tx_ack_int),

      .pause_req                       (1'b0),
      .pause_value                     (16'b0),

      .tx_pfc_p0_tvalid                (1'b0),
      .tx_pfc_p1_tvalid                (1'b0),
      .tx_pfc_p2_tvalid                (1'b0),
      .tx_pfc_p3_tvalid                (1'b0),
      .tx_pfc_p4_tvalid                (1'b0),
      .tx_pfc_p5_tvalid                (1'b0),
      .tx_pfc_p6_tvalid                (1'b0),
      .tx_pfc_p7_tvalid                (1'b0),
      .rx_pfc_p0_tvalid                (),
      .rx_pfc_p1_tvalid                (),
      .rx_pfc_p2_tvalid                (),
      .rx_pfc_p3_tvalid                (),
      .rx_pfc_p4_tvalid                (),
      .rx_pfc_p5_tvalid                (),
      .rx_pfc_p6_tvalid                (),
      .rx_pfc_p7_tvalid                (),
      .rx_pfc_p0_tready                (1'b0),
      .rx_pfc_p1_tready                (1'b0),
      .rx_pfc_p2_tready                (1'b0),
      .rx_pfc_p3_tready                (1'b0),
      .rx_pfc_p4_tready                (1'b0),
      .rx_pfc_p5_tready                (1'b0),
      .rx_pfc_p6_tready                (1'b0),
      .rx_pfc_p7_tready                (1'b0),

      .tx_reset                        (tx_reset),
      .rx_reset                        (rx_reset),
      .rx_enable                       (int_rx_enable),
      .tx_enable                       (int_tx_enable),
      .rx_half_duplex                  (int_rx_half_duplex),
      .tx_half_duplex                  (int_tx_half_duplex),
      .pause_source                    (int_tx_pause_source),
      .pause_sample_addr               (),
      .pause_quanta_bus                (int_pause_qnta_bus_int),
      .pfc_tx_priority_en_reg          (int_tx_priority_en),
      .pfc_rx_priority_en_reg          (int_rx_priority_en),
      .pfc_tx_enable_reg               (int_pfc_tx_enable),
      .pfc_rx_enable_reg               (int_pfc_rx_enable),
      //.inband_ts_enable                (int_rx_inband_ts_en),
      .inband_ts_enable                (1'b0),  // no support for in-band timestamp on receive path. This case can't be supported with Switch which expects DA to be first byte.
      .auto_xon_reg                    (int_auto_xon_enable),
      .crc_enable_in                   (int_tx_crc_mode),
      .vlan_enable_in                  (int_tx_vlan_enable),
      .pause_vector                    (),
      .ce_in                           (e_tx_ce_sample_and_enabled),
      .rx_ce_in                        (rx_enable)
   );


   //---------------------------------------------------------------------------
   // eMAC Receiver Logic.
   //---------------------------------------------------------------------------


   tsn_temac_v1_0_9_rx #(
      .C_HALF_DUPLEX                   (C_HALF_DUPLEX),
      .C_IS_EVAL                       (TSN_EP_EVAL),
      .C_1588                          (C_1588),
      .C_AVB                           (C_AVB),
      .TSN_CHANGE_ENABLE               (TSN_CHANGE_ENABLE),
      .EN_FRAME_PREEMPTION             (1),
      .C_PHYSICAL_INTERFACE            (C_PHYSICAL_INTERFACE),
      .C_MAC_SPEED                     (MAC_SPEED)
   ) e_rxgen (
      .rx_clk                          (rx_axi_clk),
      .reset                           (rx_reset),
      .reset_gmii_mii                  (rx_reset),
      //.rxd                             (int_gmii_rxd),
      //.rx_dv                           (int_gmii_rx_dv),
      //.rx_err                          (int_gmii_rx_er),
      .rxd                             (int_gmii_rxd_express),
      .rx_dv                           (int_gmii_rx_dv_express),
      .rx_err                          (int_gmii_rx_er_express),
      .enable                          (int_rx_en),
      .jumbo_frames_enable             (int_rx_jumbo_enable),
      .vlan_enable                     (int_rx_vlan_enable),
      .max_frame_length                (int_rx_max_frame_length),
      .max_frame_enable                (int_rx_max_frame_enable),
      .crc_mode                        (int_rx_crc_mode),
      .pauseaddressmatch               (e_pauseaddressmatch),
      .specialpauseaddressmatch        (e_specialpauseaddressmatch),
      .broadcastaddressmatch           (e_broadcastaddressmatch),
      .unicastaddressmatch             (e_unicastaddressmatch),
      .rx_filter_match                 (e_rx_filter_match_comb),
      .enable_half_duplex              (int_rx_half_duplex),
      .lt_check_disable                (int_rx_lt_disable),
      .pause_lt_check_disable          (int_rx_ps_lt_disable),
      //.inband_ts_enable                (int_rx_inband_ts_en),
      .inband_ts_enable                (1'b0),  // no support for in-band timestamp on receive path. This case can't be supported with Switch which expects DA to be first byte.
      .address_valid_early             (e_address_valid_early),
      .data_early                      (e_data_early),
      .data_valid_early                (e_data_valid_early),
      .data                            (e_int_rx_data_in),
      .data_valid                      (e_int_rx_data_valid_in),
      .alignment_err_pulse             (int_alignment_err_pulse),
      .good_frame                      (e_int_rx_good_frame_in),
      .bad_frame                       (e_int_rx_bad_frame_in),
      .statistics_valid                (e_int_rx_valid),
      .statistics_vector               (e_int_rx_statistics_vector),
      .min_size                        (e_int_min_size),
      .control_frame                   (e_int_rx_control_frame),
      .control_frame_any_da            (e_int_rx_control_frame_any_da),
      .speed_is_10_100                 (speed_is_10_100_int),
      .speed                           (int_speed),
      .core_has_sgmii                  (core_has_sgmii),
      .ce_in                           (rx_enable),
      .reclock_rx_config               (),
      .rx_latency_adjust_tsn_gmii               (rx_latency_adjust_tsn_gmii),
      .rx_latency_adjust_enable_tsn_gmii        (rx_latency_adjust_enable_tsn_gmii),

      // 1588 hooks
      .rtc_clk                         (rtc_clk),
      .systemtimer_s_field             (systemtimer_s_field_int),
      .systemtimer_ns_field            (systemtimer_ns_field_int),
      .systemtimer_s_field_2           (systemtimer_s_field_2_int),
      .systemtimer_ns_field_2          (systemtimer_ns_field_2_int),
      .correction_timer                (correction_timer),
      .rx_ts_axis_tvalid               (e_rx_ts_axis_tvalid_int),
      .rx_ts_axis_tdata                (e_rx_ts_axis_tdata_1_int),
      .rx_ts_axis_tdata_2              (e_rx_ts_axis_tdata_2_int),
      .sample_now_toggle               (sample_now_toggle_rx_e),
      .sample_timer_br                 (sample_timer_rx_e), 
      .rxphy_s_field                   (rxphy_s_field),
      .rxphy_ns_field                  (rxphy_ns_field),
      .rxphy_correction_timer          (rxphy_correction_timer)
   );
   //------------------------------------------------------------------------------
   // Optional Statistic Counter Logic
   //------------------------------------------------------------------------------

   generate
   if (C_HAS_HOST & C_HAS_STATS) begin : e_stats_block


      // Instance the statistic counters
      // if no CPU or stats then do not generate


      // Statistic update inputs for the 4 "fast" counters
      //--------------------------------------------------

      // Counter 0: "Transmitted bytes" increment request
      //------------
      assign e_tx_byte                   = e_int_tx_statistics_vector[30] & e_tx_ce_sample_and_enabled;


      // Counter 1: "Received bytes" increment request
      //------------
      assign e_rx_byte                   = rx_enable & e_int_rx_statistics_vector[22] & e_rxstatsaddressmatch;


      // Counter 2: "Undersize frames received" increment request
      //------------
      always @(posedge rx_axi_clk)
      begin
         if (rx_reset) begin
            e_rx_small                   <= 1'b0;
         end
         else if (!e_int_min_size & !e_int_rx_statistics_vector[24] &
                 !e_int_rx_statistics_vector[2] & e_int_rx_valid & rx_enable) begin
            e_rx_small                   <= 1'b1;
         end
         else begin
            e_rx_small                   <= 1'b0;
         end
      end


      // Counter 3: "Fragment frames received" increment request
      //------------
      always @(posedge rx_axi_clk)
      begin
         if (rx_reset) begin
            e_rx_frag                    <= 1'b0;
         end
         else if (!e_int_min_size & e_int_rx_valid & rx_enable &
                  (e_int_rx_statistics_vector[24] | e_int_rx_statistics_vector[2])) begin
            e_rx_frag                    <= 1'b1;
         end
         else begin
            e_rx_frag                    <= 1'b0;
         end
      end


      // Statistic counter logic instance for all other "slow" counters
      //---------------------------------------------------------------

      tsn_temac_v1_0_9_statistics_core #(
         .C_NUM_STATS                  (C_NUM_STATS),
         .C_CNTR_RST                   (C_CNTR_RST),
         .EN_FRAME_PREEMPTION          (0),
         .C_STATS_WIDTH                (C_STATS_WIDTH)
      ) e_statistics_counters (
         .ref_clk                      (stats_ref_clk),
         .ref_reset                    (stats_reset),

         .bus2ip_clk                   (bus2ip_clk),
         .bus2ip_reset                 (int_mgmt_host_reset),

         .bus2ip_ce                    (bus2ip_cs_int[0]),    // bit 0 from ipif corresponds to stats address range
         .bus2ip_rdce                  (bus2ip_rdce_int),
         .bus2ip_wrce                  (bus2ip_wrce_int),
         .ip2bus_wrack                 (e_ip2bus_wrack_stats_int),
         .ip2bus_rdack                 (e_ip2bus_rdack_stats_int),
         .bus2ip_addr                  (bus2ip_addr_top[10:0]),
         .bus2ip_data                  (bus2ip_data_int),
         .ip2bus_data                  (e_ip2bus_data_stats_int),
         .ip2bus_error                 (e_ip2bus_error_stats_int),
         .tx_clk                       (tx_axi_clk),
         .tx_reset                     (tx_reset),
         .tx_byte                      (e_tx_byte),
         .rx_clk                       (rx_axi_clk),
         .rx_reset                     (rx_reset),
         .rx_byte                      (e_rx_byte),
         .rx_small                     (e_rx_small),
         .rx_frag                      (e_rx_frag),
         .tx_br_statistics             (2'b0),
         .rx_br_statistics             (4'b0),
         .increment_vector             (e_increment_vector)
      );
   end

   // No statistics
   else begin : e_stats_tieoff
      assign e_tx_byte                   = 1'b0;
      assign e_rx_byte                   = 1'b0;

      always @(posedge rx_axi_clk)
      begin
         e_rx_small                      = 1'b0;
         e_rx_frag                       = 1'b0;
      end

      assign e_ip2bus_wrack_stats_int    = bus2ip_wrce_int & bus2ip_cs_int[0];
      assign e_ip2bus_rdack_stats_int    = bus2ip_rdce_int & bus2ip_cs_int[0];
      assign e_ip2bus_data_stats_int     = 0;
      assign e_ip2bus_error_stats_int    = 1'b0;
   end
   endgenerate


   //---------------------------------------------------------------------------
   // Optional Address Filtering
   //---------------------------------------------------------------------------

   tsn_temac_v1_0_9_addr_filter_wrap
   #(
      .C_AT_ENTRIES                    (C_AT_ENTRIES),
      .C_HAS_HOST                      (C_HAS_HOST),
      .C_1588                          (C_1588),
      .C_ADD_FILTER                    (C_ADD_FILTER),
      .TSN_EP_ONLY                     (TSN_EP_ONLY),
      .DISABLE_RES_QUEUE               (DISABLE_RES_QUEUE),
      .C_AVB                           (C_AVB),
      .EN_FRAME_PREEMPTION             (1),
      .EN_RX_CUSTOM_TIMESTAMP          (EN_RX_CUSTOM_TIMESTAMP),
      .EN_TX_CUSTOM_TIMESTAMP          (EN_TX_CUSTOM_TIMESTAMP),
      .TSN_CHANGE_ENABLE               (TSN_CHANGE_ENABLE),
      .EN_1588_PTP_V1                  (EN_1588_PTP_V1),
      .C_S_AXI_ADDR_WIDTH              (C_S_AXI_ADDR_WIDTH)
   ) e_addr_filter_top (
      .rxcoreclk                       (rx_axi_clk),
      .rx_sync_reset                   (rx_reset),
      .rxclk_ce                        (rx_enable),

      .data_early                      (e_data_early),
      .data_valid_early                (e_data_valid_early),

      .tx_reset                        (tx_reset),
      .tx_clk                          (tx_axi_clk),
      .tx_clk_en                       (e_tx_ce_sample),
      .tx_data                         (e_int_tx_data_out),
      .tx_data_valid                   (e_int_tx_data_valid_out),
      .tx_data_ack                     (e_int_tx_ack_in),

      .tx_custom_timestamp_match       (e_tx_custom_timestamp_match),
      .tx_custom_timestamp_enable      (tx_custom_timestamp_enable), 

      .rx_custom_timestamp_match       (e_rx_custom_timestamp_match),
      .rx_custom_timestamp_enable      (rx_custom_timestamp_enable),

      .ptp_rx_filter_match_br          (e_ptp_rx_filter_match_br),
      .ptp_v1_rx_filter_match_br       (e_ptp_v1_rx_filter_match_br),
      .st_rx_filter_match_br           (e_rx_filter_st_match),
      .res_rx_filter_match_br          (e_rx_filter_res_match),
      .be_rx_filter_match_br           (e_rx_filter_be_match),

      .rx_pause_addr                   (int_rx_pause_source),
      .update_pause_ad                 (int_update_pause_ad),
      .promiscuous_mode_init           (int_promiscuous_mode),

      .rx_filtered_data_valid          (e_address_valid_early),
      .unicastaddressmatch             (e_unicastaddressmatch),
      .broadcastaddressmatch           (e_broadcastaddressmatch),
      .pauseaddressmatch               (e_pauseaddressmatch),
      .specialpauseaddressmatch        (e_specialpauseaddressmatch),
      .rxstatsaddressmatch             (e_rxstatsaddressmatch),
      .rx_filter_match                 (e_rx_filter_match),
      .rx_st_match                     (e_rx_st_match),
      .rx_av_a_match                   (e_rx_av_a_match),
      .rx_av_b_match                   (e_rx_av_b_match),
      .rx_ptp_match                    (e_rx_ptp_match),
      .rx_ptp_v1_match                 (e_rx_ptp_v1_match),

      .bus2ip_clk                      (bus2ip_clk),
      .bus2ip_reset                    (int_mgmt_host_reset),
      .bus2ip_ce                       (bus2ip_cs_int[3]),    // bit 3 from ipif corresponds to af address range
      .bus2ip_rdce                     (bus2ip_rdce_int),
      .bus2ip_wrce                     (bus2ip_wrce_int),
      .ip2bus_rdack                    (),
      .ip2bus_wrack                    (),
      .bus2ip_addr                     (bus2ip_addr_top),
      .bus2ip_data                     (bus2ip_data_int),
      .ip2bus_data                     (),
      .ip2bus_error                    ()
   );

   assign e_rx_filter_match_comb         = |e_rx_filter_match | e_rx_st_match | e_rx_av_a_match |
                                          e_rx_av_b_match | e_rx_ptp_match | e_rx_ptp_v1_match;


tsn_temac_v1_0_9_rx_cs    #(
      .EN_CUSTOM_TS                       (EN_RX_CUSTOM_TIMESTAMP)
   ) e_rx_cs_inst 

 (


     .rx_clk                              (rx_axi_clk), 		 
     .rx_reset                            (rx_reset), 
  
     .rx_ts_in_data                       (e_rx_ts_axis_tdata_int[63:0]),                 

     .add_timestamp_valid                 (e_rx_custom_timestamp_match),
     .add_timestamp_mode                  (rx_custom_timestamp_mode),
     .add_timestamp_offset                (rx_custom_timestamp_offset),
    
     .rx_stream_in_tdata                  (rx_axis_mac_tdata_int), 
     .rx_stream_in_tvalid                 (rx_axis_mac_tvalid_int), 
     .rx_stream_in_tlast                  (rx_axis_mac_tlast_int), 
     .rx_stream_in_tuser                  (rx_axis_mac_tuser_i),
     .rx_stream_in_st_tuser               (rx_axis_st_filter_tuser_i),
     .rx_stream_in_res_tuser              (rx_axis_av_filter_tuser_i),
    
     .rx_stream_out_tdata                 (rx_axis_mac_tdata), 
     .rx_stream_out_tvalid                (rx_axis_mac_tvalid), 
     .rx_stream_out_tlast                 (rx_axis_mac_tlast), 
     .rx_stream_out_tuser                 (rx_axis_mac_tuser),
     .rx_stream_out_st_tuser              (rx_axis_st_filter_tuser),
     .rx_stream_out_res_tuser             (rx_axis_av_filter_tuser)


 
     );



   //---------------------------------------------------------------------------
   // eRecevier I/F AXI Stream Shim logic
   //---------------------------------------------------------------------------

   tsn_temac_v1_0_9_rx_axi_intf  #(
      .C_AT_ENTRIES                    (C_AT_ENTRIES),
      .TSN_EP_ONLY                     (TSN_EP_ONLY),
      .DISABLE_RES_QUEUE               (DISABLE_RES_QUEUE),
      .TSN_CHANGE_ENABLE               (TSN_CHANGE_ENABLE),
      .EN_1588_PTP_V1                  (EN_1588_PTP_V1),
      .C_AVB                           (C_AVB)         //TSN_CHANGE_ENABLE to be factored in
   ) e_rx_axi_shim (
      .rx_clk                          (rx_axi_clk),
      .rx_reset                        (rx_reset),
      .rx_enable                       (rx_enable),

      .rx_data                         (e_rx_data),
      .rx_data_valid                   (e_rx_data_valid),
      .rx_good_frame                   (e_rx_good_frame),
      .rx_bad_frame                    (e_rx_bad_frame),

      .rx_filter_match                 (e_rx_filter_match),
      .rx_st_match                     (e_rx_st_match),
      .rx_av_a_match                   (e_rx_av_a_match),
      .rx_av_b_match                   (e_rx_av_b_match),
      .rx_ptp_match                    (e_rx_ptp_match),
      .rx_ptp_v1_match                 (e_rx_ptp_v1_match),
      .rx_filter_tuser                 (rx_axis_filter_tuser),
      .rx_st_tuser                     (e_rx_axis_st_tuser_i),
      .rx_av_a_tuser                   (e_rx_axis_av_a_tuser),
      .rx_av_b_tuser                   (e_rx_axis_av_b_tuser),
      .rx_ptp_tuser                    (e_rx_axis_ptp_tuser),
      .rx_ptp_v1_tuser                 (e_rx_axis_ptp_v1_tuser),
      .rx_legacy_tuser                 (e_rx_axis_legacy_tuser),

      .rx_mac_tdata                    (rx_axis_mac_tdata_int),
      .rx_mac_tvalid                   (rx_axis_mac_tvalid_int),
      .rx_mac_tlast                    (rx_axis_mac_tlast_int),
      .rx_mac_tuser                    (rx_axis_mac_tuser_int)
   );



   //---------------------------------------------------------------------------
   // PTP merge (e_rx & p_rx)
   //---------------------------------------------------------------------------



   tsn_temac_v1_0_9_rx_merge_br  #(
      .EN_FRAME_PREEMPTION             (1)         
   ) ptp_rx_merge_br (
      .rx_clk                          (rx_axi_clk),
      .rx_reset                        (rx_reset),
      .ce_in                           (1'b1),

      .rx_mac_in_tdata                 (rx_axis_pmac_tdata_int),
      .rx_mac_in_tvalid                (rx_axis_pmac_tvalid_int),
      .rx_mac_in_tlast                 (rx_axis_pmac_tlast_int),
      .rx_mac_in_tuser                 (rx_axis_ptp_tuser),
      .rx_filter_match                 (ptp_rx_filter_match_br),
      .p_rx_is_preempted               (p_rx_is_preempted), 

      .rx_timestamp_in_valid           (rx_ts_axis_tvalid_int),
      .rx_timestamp_in                 (rx_ts_axis_tdata_int),

      .e_rx_mac_in_tdata               (rx_axis_mac_tdata_int),
      .e_rx_mac_in_tvalid              (rx_axis_mac_tvalid_int),
      .e_rx_mac_in_tlast               (rx_axis_mac_tlast_int),
      .e_rx_mac_in_tuser               (e_rx_axis_ptp_tuser),
      .e_rx_filter_match               (e_ptp_rx_filter_match_br),

      .e_rx_timestamp_in_valid         (e_rx_ts_axis_tvalid_int),
      .e_rx_timestamp_in               (e_rx_ts_axis_tdata_int),

      .rx_mac_tdata                    (ptp_rx_tdata),
      .rx_mac_tvalid                   (ptp_rx_tvalid),
      .rx_mac_tlast                    (ptp_rx_tlast),
      .rx_mac_tuser                    (ptp_rx_tuser),

      .rx_timestamp_valid              (ptp_rx_ts_axis_tvalid),
      .rx_timestamp                    (ptp_rx_ts_axis_tdata)



   );

   assign  ptp_v1_rx_tdata           = 8'b0;
   assign  ptp_v1_rx_tvalid          = 1'b0;
   assign  ptp_v1_rx_tlast           = 1'b0;
   assign  ptp_v1_rx_tuser           = 1'b0;
   assign  ptp_v1_rx_ts_axis_tvalid  = 1'b0;
   assign  ptp_v1_rx_ts_axis_tdata   = 128'b0;

   





endmodule


//`default_nettype wire



