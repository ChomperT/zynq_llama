// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Sat Jul 27 11:20:55 2024
// Host        : N running 64-bit Ubuntu 24.04 LTS
// Command     : write_verilog -force -mode funcsim
//               /media/p4/Xilinx/kria-vitis-platforms/kr260/platforms/vivado/kr260_tsn_rs485pmod/project/kr260_tsn_rs485pmod.gen/sources_1/bd/kr260_tsn_rs485pmod/ip/kr260_tsn_rs485pmod_my_tsn_ip_0/kr260_tsn_rs485pmod_my_tsn_ip_0_sim_netlist.v
// Design      : kr260_tsn_rs485pmod_my_tsn_ip_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "kr260_tsn_rs485pmod_my_tsn_ip_0,bd_4503,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "bd_4503,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module kr260_tsn_rs485pmod_my_tsn_ip_0
   (host_txfifo_aclk,
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
    rgmii_status2_link_status);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 host_txfifo_aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME host_txfifo_aclk, FREQ_HZ 200000000, PHASE 0, FREQ_TOLERANCE_HZ 0, CLK_DOMAIN kr260_tsn_rs485pmod_clk_wiz_0_0_clk_out1, ASSOCIATED_BUSIF tx_axis_be:tx_axis_st, INSERT_VIP 0" *) input host_txfifo_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 host_rxfifo_aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME host_rxfifo_aclk, FREQ_HZ 200000000, PHASE 0, FREQ_TOLERANCE_HZ 0, CLK_DOMAIN kr260_tsn_rs485pmod_clk_wiz_0_0_clk_out1, ASSOCIATED_BUSIF rx_axis_be:rx_axis_st, INSERT_VIP 0" *) input host_rxfifo_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s_axi_aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_aclk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN kr260_tsn_rs485pmod_clk_wiz_0_0_clk_out1, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET s_axi_aresetn, INSERT_VIP 0" *) input s_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 gtx_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME gtx_clk, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN kr260_tsn_rs485pmod_clk_wiz_0_0_clk_out1, INSERT_VIP 0" *) input gtx_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 gtx_clk90 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME gtx_clk90, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN kr260_tsn_rs485pmod_clk_wiz_0_0_clk_out1, INSERT_VIP 0" *) input gtx_clk90;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ref_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ref_clk, FREQ_HZ 300000000, PHASE 0, FREQ_TOLERANCE_HZ 0, CLK_DOMAIN kr260_tsn_rs485pmod_clk_wiz_0_0_clk_out1, INSERT_VIP 0" *) input refclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.glbl_rstn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.glbl_rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input glbl_rstn;
  input gtx_dcm_locked;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.interrupt_ptp_rx_1 INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.interrupt_ptp_rx_1, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output interrupt_ptp_rx_1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.interrupt_ptp_tx_1 INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.interrupt_ptp_tx_1, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output interrupt_ptp_tx_1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.mac_irq_1 INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.mac_irq_1, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output mac_irq_1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.s_axi_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.s_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.tsn_ep_scheduler_irq INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.tsn_ep_scheduler_irq, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output tsn_ep_scheduler_irq;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.interrupt_ptp_timer INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.interrupt_ptp_timer, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output interrupt_ptp_timer;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.interrupt_ptp_rx_2 INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.interrupt_ptp_rx_2, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output interrupt_ptp_rx_2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.interrupt_ptp_tx_2 INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.interrupt_ptp_tx_2, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output interrupt_ptp_tx_2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.mac_irq_2 INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.mac_irq_2, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output mac_irq_2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.tsn_switch_scheduler_irq_1 INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.tsn_switch_scheduler_irq_1, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output tsn_switch_scheduler_irq_1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.tsn_switch_scheduler_irq_2 INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.tsn_switch_scheduler_irq_2, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output tsn_switch_scheduler_irq_2;
  output INIT_DONE;
  output [63:0]ep_tadma_if_out;
  output [2:1]misc_out_rx_enable;
  output [2:1]misc_out_tx_enable;
  output [2:1]misc_out_rx_mac_aclk;
  output [2:1]misc_out_rx_reset;
  output [2:1]misc_out_tx_mac_aclk;
  output [2:1]misc_out_tx_reset;
  output [511:0]misc_out_tsn_debug_hooks;
  output [2:1]misc_out_speedis100;
  output misc_out_switch_cam_init_done;
  output temac_misc_out1_tx_ts_axis_tvalid;
  output [127:0]temac_misc_out1_tx_ts_axis_tdata;
  output temac_misc_out1_rx_ts_axis_tvalid;
  output [127:0]temac_misc_out1_rx_ts_axis_tdata;
  output [27:0]temac_misc_out1_rx_statistics_vector;
  output temac_misc_out1_rx_statistics_valid;
  output [31:0]temac_misc_out1_tx_statistics_vector;
  output temac_misc_out1_tx_statistics_valid;
  output [27:0]temac_misc_out1_rx_statistics_vector_pmac;
  output temac_misc_out1_rx_statistics_valid_pmac;
  output [31:0]temac_misc_out1_tx_statistics_vector_pmac;
  output temac_misc_out1_tx_statistics_valid_pmac;
  output temac_misc_out1_rx_ts_axis_tvalid_pmac;
  output temac_misc_out1_tx_ts_axis_tvalid_pmac;
  output [127:0]temac_misc_out1_rx_ts_axis_tdata_pmac;
  output [127:0]temac_misc_out1_tx_ts_axis_tdata_pmac;
  output temac_misc_out2_tx_ts_axis_tvalid;
  output [127:0]temac_misc_out2_tx_ts_axis_tdata;
  output temac_misc_out2_rx_ts_axis_tvalid;
  output [127:0]temac_misc_out2_rx_ts_axis_tdata;
  output [27:0]temac_misc_out2_rx_statistics_vector;
  output temac_misc_out2_rx_statistics_valid;
  output [31:0]temac_misc_out2_tx_statistics_vector;
  output temac_misc_out2_tx_statistics_valid;
  output [27:0]temac_misc_out2_rx_statistics_vector_pmac;
  output temac_misc_out2_rx_statistics_valid_pmac;
  output [31:0]temac_misc_out2_tx_statistics_vector_pmac;
  output temac_misc_out2_tx_statistics_valid_pmac;
  output temac_misc_out2_rx_ts_axis_tvalid_pmac;
  output temac_misc_out2_tx_ts_axis_tvalid_pmac;
  output [127:0]temac_misc_out2_rx_ts_axis_tdata_pmac;
  output [127:0]temac_misc_out2_tx_ts_axis_tdata_pmac;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARADDR" *) input [17:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWADDR" *) input [17:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RREADY" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 18, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN kr260_tsn_rs485pmod_clk_wiz_0_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:display_tsn_temac:ptp_timers:1.0 ptp_timers clk8k" *) output ptp_timers_clk8k;
  (* X_INTERFACE_INFO = "xilinx.com:display_tsn_temac:ptp_timers:1.0 ptp_timers ns_field" *) output [31:0]ptp_timers_ns_field;
  (* X_INTERFACE_INFO = "xilinx.com:display_tsn_temac:ptp_timers:1.0 ptp_timers ns_field_1722" *) output [31:0]ptp_timers_ns_field_1722;
  (* X_INTERFACE_INFO = "xilinx.com:display_tsn_temac:ptp_timers:1.0 ptp_timers s_field" *) output [47:0]ptp_timers_s_field;
  (* X_INTERFACE_INFO = "xilinx.com:display_tsn_temac:ptp_timers:1.0 ptp_timers syntonised_nanosec_field" *) output [31:0]ptp_timers_syntonised_nanosec_field;
  (* X_INTERFACE_INFO = "xilinx.com:display_tsn_temac:ptp_timers:1.0 ptp_timers syntonised_sec_field" *) output [47:0]ptp_timers_syntonised_sec_field;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_axis_be TDATA" *) output [31:0]rx_axis_be_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_axis_be TDEST" *) output [2:0]rx_axis_be_tdest;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_axis_be TKEEP" *) output [3:0]rx_axis_be_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_axis_be TLAST" *) output rx_axis_be_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_axis_be TREADY" *) input rx_axis_be_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_axis_be TUSER" *) output [31:0]rx_axis_be_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_axis_be TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rx_axis_be, TDATA_NUM_BYTES 4, TDEST_WIDTH 3, TID_WIDTH 0, TUSER_WIDTH 32, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 200000000, PHASE 0, CLK_DOMAIN kr260_tsn_rs485pmod_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output rx_axis_be_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_axis_st TDATA" *) output [31:0]rx_axis_st_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_axis_st TDEST" *) output [2:0]rx_axis_st_tdest;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_axis_st TKEEP" *) output [3:0]rx_axis_st_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_axis_st TLAST" *) output rx_axis_st_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_axis_st TREADY" *) input rx_axis_st_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_axis_st TUSER" *) output [31:0]rx_axis_st_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_axis_st TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rx_axis_st, TDATA_NUM_BYTES 4, TDEST_WIDTH 3, TID_WIDTH 0, TUSER_WIDTH 32, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 200000000, PHASE 0, CLK_DOMAIN kr260_tsn_rs485pmod_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output rx_axis_st_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 mdio_external1 IO" *) inout mdio_external1_io;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 mdio_external1 MDC" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME mdio_external1, CAN_DEBUG false" *) output mdio_external1_mdc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 mdio_external2 IO" *) inout mdio_external2_io;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 mdio_external2 MDC" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME mdio_external2, CAN_DEBUG false" *) output mdio_external2_mdc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx_axis_be TDATA" *) input [31:0]tx_axis_be_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx_axis_be TKEEP" *) input [3:0]tx_axis_be_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx_axis_be TLAST" *) input tx_axis_be_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx_axis_be TREADY" *) output tx_axis_be_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx_axis_be TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME tx_axis_be, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 200000000, PHASE 0, CLK_DOMAIN kr260_tsn_rs485pmod_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input tx_axis_be_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx_axis_st TDATA" *) input [31:0]tx_axis_st_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx_axis_st TKEEP" *) input [3:0]tx_axis_st_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx_axis_st TLAST" *) input tx_axis_st_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx_axis_st TREADY" *) output tx_axis_st_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx_axis_st TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME tx_axis_st, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 200000000, PHASE 0, CLK_DOMAIN kr260_tsn_rs485pmod_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input tx_axis_st_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii1 RD" *) input [3:0]rgmii1_rd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii1 RX_CTL" *) input rgmii1_rx_ctl;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii1 RXC" *) input rgmii1_rxc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii1 TD" *) output [3:0]rgmii1_td;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii1 TX_CTL" *) output rgmii1_tx_ctl;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii1 TXC" *) output rgmii1_txc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii2 RD" *) input [3:0]rgmii2_rd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii2 RX_CTL" *) input rgmii2_rx_ctl;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii2 RXC" *) input rgmii2_rxc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii2 TD" *) output [3:0]rgmii2_td;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii2 TX_CTL" *) output rgmii2_tx_ctl;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii2 TXC" *) output rgmii2_txc;
  (* X_INTERFACE_INFO = "xilinx.com:display_tri_mode_ethernet_mac:rgmii_status:1.0 rgmii_status1 duplex_status" *) output rgmii_status1_duplex_status;
  (* X_INTERFACE_INFO = "xilinx.com:display_tri_mode_ethernet_mac:rgmii_status:1.0 rgmii_status1 link_speed" *) output [1:0]rgmii_status1_link_speed;
  (* X_INTERFACE_INFO = "xilinx.com:display_tri_mode_ethernet_mac:rgmii_status:1.0 rgmii_status1 link_status" *) output rgmii_status1_link_status;
  (* X_INTERFACE_INFO = "xilinx.com:display_tri_mode_ethernet_mac:rgmii_status:1.0 rgmii_status2 duplex_status" *) output rgmii_status2_duplex_status;
  (* X_INTERFACE_INFO = "xilinx.com:display_tri_mode_ethernet_mac:rgmii_status:1.0 rgmii_status2 link_speed" *) output [1:0]rgmii_status2_link_speed;
  (* X_INTERFACE_INFO = "xilinx.com:display_tri_mode_ethernet_mac:rgmii_status:1.0 rgmii_status2 link_status" *) output rgmii_status2_link_status;

  wire INIT_DONE;
  wire [63:0]ep_tadma_if_out;
  wire glbl_rstn;
  wire gtx_clk;
  wire host_rxfifo_aclk;
  wire host_txfifo_aclk;
  wire interrupt_ptp_rx_1;
  wire interrupt_ptp_rx_2;
  wire interrupt_ptp_timer;
  wire interrupt_ptp_tx_1;
  wire interrupt_ptp_tx_2;
  wire mac_irq_1;
  wire mac_irq_2;
  wire mdio_external1_io;
  wire mdio_external1_mdc;
  wire mdio_external2_io;
  wire mdio_external2_mdc;
  wire [2:1]misc_out_rx_enable;
  wire [2:1]misc_out_rx_mac_aclk;
  wire [2:1]misc_out_rx_reset;
  wire [2:1]misc_out_speedis100;
  wire misc_out_switch_cam_init_done;
  wire [511:0]misc_out_tsn_debug_hooks;
  wire [2:1]misc_out_tx_enable;
  wire [2:1]misc_out_tx_mac_aclk;
  wire [2:1]misc_out_tx_reset;
  wire ptp_timers_clk8k;
  wire [31:0]ptp_timers_ns_field;
  wire [31:0]ptp_timers_ns_field_1722;
  wire [47:0]ptp_timers_s_field;
  wire [31:0]ptp_timers_syntonised_nanosec_field;
  wire [47:0]ptp_timers_syntonised_sec_field;
  wire refclk;
  wire [3:0]rgmii1_rd;
  wire rgmii1_rx_ctl;
  wire rgmii1_rxc;
  wire [3:0]rgmii1_td;
  wire rgmii1_tx_ctl;
  wire rgmii1_txc;
  wire [3:0]rgmii2_rd;
  wire rgmii2_rx_ctl;
  wire rgmii2_rxc;
  wire [3:0]rgmii2_td;
  wire rgmii2_tx_ctl;
  wire rgmii2_txc;
  wire rgmii_status1_duplex_status;
  wire [1:0]rgmii_status1_link_speed;
  wire rgmii_status1_link_status;
  wire rgmii_status2_duplex_status;
  wire [1:0]rgmii_status2_link_speed;
  wire rgmii_status2_link_status;
  wire [31:0]rx_axis_be_tdata;
  wire [2:0]rx_axis_be_tdest;
  wire [3:0]rx_axis_be_tkeep;
  wire rx_axis_be_tlast;
  wire rx_axis_be_tready;
  wire [31:0]rx_axis_be_tuser;
  wire rx_axis_be_tvalid;
  wire [31:0]rx_axis_st_tdata;
  wire [2:0]rx_axis_st_tdest;
  wire [3:0]rx_axis_st_tkeep;
  wire rx_axis_st_tlast;
  wire rx_axis_st_tready;
  wire [31:0]rx_axis_st_tuser;
  wire rx_axis_st_tvalid;
  wire s_axi_aclk;
  wire [17:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [17:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire temac_misc_out1_rx_statistics_valid;
  wire temac_misc_out1_rx_statistics_valid_pmac;
  wire [27:0]temac_misc_out1_rx_statistics_vector;
  wire [27:0]temac_misc_out1_rx_statistics_vector_pmac;
  wire [127:0]temac_misc_out1_rx_ts_axis_tdata;
  wire [127:0]temac_misc_out1_rx_ts_axis_tdata_pmac;
  wire temac_misc_out1_rx_ts_axis_tvalid;
  wire temac_misc_out1_rx_ts_axis_tvalid_pmac;
  wire temac_misc_out1_tx_statistics_valid;
  wire temac_misc_out1_tx_statistics_valid_pmac;
  wire [31:0]temac_misc_out1_tx_statistics_vector;
  wire [31:0]temac_misc_out1_tx_statistics_vector_pmac;
  wire [127:0]temac_misc_out1_tx_ts_axis_tdata;
  wire [127:0]temac_misc_out1_tx_ts_axis_tdata_pmac;
  wire temac_misc_out1_tx_ts_axis_tvalid;
  wire temac_misc_out1_tx_ts_axis_tvalid_pmac;
  wire temac_misc_out2_rx_statistics_valid;
  wire temac_misc_out2_rx_statistics_valid_pmac;
  wire [27:0]temac_misc_out2_rx_statistics_vector;
  wire [27:0]temac_misc_out2_rx_statistics_vector_pmac;
  wire [127:0]temac_misc_out2_rx_ts_axis_tdata;
  wire [127:0]temac_misc_out2_rx_ts_axis_tdata_pmac;
  wire temac_misc_out2_rx_ts_axis_tvalid;
  wire temac_misc_out2_rx_ts_axis_tvalid_pmac;
  wire temac_misc_out2_tx_statistics_valid;
  wire temac_misc_out2_tx_statistics_valid_pmac;
  wire [31:0]temac_misc_out2_tx_statistics_vector;
  wire [31:0]temac_misc_out2_tx_statistics_vector_pmac;
  wire [127:0]temac_misc_out2_tx_ts_axis_tdata;
  wire [127:0]temac_misc_out2_tx_ts_axis_tdata_pmac;
  wire temac_misc_out2_tx_ts_axis_tvalid;
  wire temac_misc_out2_tx_ts_axis_tvalid_pmac;
  wire tsn_ep_scheduler_irq;
  wire tsn_switch_scheduler_irq_1;
  wire tsn_switch_scheduler_irq_2;
  wire [31:0]tx_axis_be_tdata;
  wire [3:0]tx_axis_be_tkeep;
  wire tx_axis_be_tlast;
  wire tx_axis_be_tready;
  wire tx_axis_be_tvalid;
  wire [31:0]tx_axis_st_tdata;
  wire [3:0]tx_axis_st_tkeep;
  wire tx_axis_st_tlast;
  wire tx_axis_st_tready;
  wire tx_axis_st_tvalid;

  (* HW_HANDOFF = "kr260_tsn_rs485pmod_my_tsn_ip_0.hwdef" *) 
  kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503 inst
       (.INIT_DONE(INIT_DONE),
        .ep_tadma_if_out(ep_tadma_if_out),
        .glbl_rstn(glbl_rstn),
        .gtx_clk(gtx_clk),
        .gtx_clk90(1'b0),
        .gtx_dcm_locked(1'b0),
        .host_rxfifo_aclk(host_rxfifo_aclk),
        .host_txfifo_aclk(host_txfifo_aclk),
        .interrupt_ptp_rx_1(interrupt_ptp_rx_1),
        .interrupt_ptp_rx_2(interrupt_ptp_rx_2),
        .interrupt_ptp_timer(interrupt_ptp_timer),
        .interrupt_ptp_tx_1(interrupt_ptp_tx_1),
        .interrupt_ptp_tx_2(interrupt_ptp_tx_2),
        .mac_irq_1(mac_irq_1),
        .mac_irq_2(mac_irq_2),
        .mdio_external1_io(mdio_external1_io),
        .mdio_external1_mdc(mdio_external1_mdc),
        .mdio_external2_io(mdio_external2_io),
        .mdio_external2_mdc(mdio_external2_mdc),
        .misc_out_rx_enable(misc_out_rx_enable),
        .misc_out_rx_mac_aclk(misc_out_rx_mac_aclk),
        .misc_out_rx_reset(misc_out_rx_reset),
        .misc_out_speedis100(misc_out_speedis100),
        .misc_out_switch_cam_init_done(misc_out_switch_cam_init_done),
        .misc_out_tsn_debug_hooks(misc_out_tsn_debug_hooks),
        .misc_out_tx_enable(misc_out_tx_enable),
        .misc_out_tx_mac_aclk(misc_out_tx_mac_aclk),
        .misc_out_tx_reset(misc_out_tx_reset),
        .ptp_timers_clk8k(ptp_timers_clk8k),
        .ptp_timers_ns_field(ptp_timers_ns_field),
        .ptp_timers_ns_field_1722(ptp_timers_ns_field_1722),
        .ptp_timers_s_field(ptp_timers_s_field),
        .ptp_timers_syntonised_nanosec_field(ptp_timers_syntonised_nanosec_field),
        .ptp_timers_syntonised_sec_field(ptp_timers_syntonised_sec_field),
        .refclk(refclk),
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
        .rgmii_status2_link_status(rgmii_status2_link_status),
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
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
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
        .temac_misc_out1_rx_statistics_valid(temac_misc_out1_rx_statistics_valid),
        .temac_misc_out1_rx_statistics_valid_pmac(temac_misc_out1_rx_statistics_valid_pmac),
        .temac_misc_out1_rx_statistics_vector(temac_misc_out1_rx_statistics_vector),
        .temac_misc_out1_rx_statistics_vector_pmac(temac_misc_out1_rx_statistics_vector_pmac),
        .temac_misc_out1_rx_ts_axis_tdata(temac_misc_out1_rx_ts_axis_tdata),
        .temac_misc_out1_rx_ts_axis_tdata_pmac(temac_misc_out1_rx_ts_axis_tdata_pmac),
        .temac_misc_out1_rx_ts_axis_tvalid(temac_misc_out1_rx_ts_axis_tvalid),
        .temac_misc_out1_rx_ts_axis_tvalid_pmac(temac_misc_out1_rx_ts_axis_tvalid_pmac),
        .temac_misc_out1_tx_statistics_valid(temac_misc_out1_tx_statistics_valid),
        .temac_misc_out1_tx_statistics_valid_pmac(temac_misc_out1_tx_statistics_valid_pmac),
        .temac_misc_out1_tx_statistics_vector(temac_misc_out1_tx_statistics_vector),
        .temac_misc_out1_tx_statistics_vector_pmac(temac_misc_out1_tx_statistics_vector_pmac),
        .temac_misc_out1_tx_ts_axis_tdata(temac_misc_out1_tx_ts_axis_tdata),
        .temac_misc_out1_tx_ts_axis_tdata_pmac(temac_misc_out1_tx_ts_axis_tdata_pmac),
        .temac_misc_out1_tx_ts_axis_tvalid(temac_misc_out1_tx_ts_axis_tvalid),
        .temac_misc_out1_tx_ts_axis_tvalid_pmac(temac_misc_out1_tx_ts_axis_tvalid_pmac),
        .temac_misc_out2_rx_statistics_valid(temac_misc_out2_rx_statistics_valid),
        .temac_misc_out2_rx_statistics_valid_pmac(temac_misc_out2_rx_statistics_valid_pmac),
        .temac_misc_out2_rx_statistics_vector(temac_misc_out2_rx_statistics_vector),
        .temac_misc_out2_rx_statistics_vector_pmac(temac_misc_out2_rx_statistics_vector_pmac),
        .temac_misc_out2_rx_ts_axis_tdata(temac_misc_out2_rx_ts_axis_tdata),
        .temac_misc_out2_rx_ts_axis_tdata_pmac(temac_misc_out2_rx_ts_axis_tdata_pmac),
        .temac_misc_out2_rx_ts_axis_tvalid(temac_misc_out2_rx_ts_axis_tvalid),
        .temac_misc_out2_rx_ts_axis_tvalid_pmac(temac_misc_out2_rx_ts_axis_tvalid_pmac),
        .temac_misc_out2_tx_statistics_valid(temac_misc_out2_tx_statistics_valid),
        .temac_misc_out2_tx_statistics_valid_pmac(temac_misc_out2_tx_statistics_valid_pmac),
        .temac_misc_out2_tx_statistics_vector(temac_misc_out2_tx_statistics_vector),
        .temac_misc_out2_tx_statistics_vector_pmac(temac_misc_out2_tx_statistics_vector_pmac),
        .temac_misc_out2_tx_ts_axis_tdata(temac_misc_out2_tx_ts_axis_tdata),
        .temac_misc_out2_tx_ts_axis_tdata_pmac(temac_misc_out2_tx_ts_axis_tdata_pmac),
        .temac_misc_out2_tx_ts_axis_tvalid(temac_misc_out2_tx_ts_axis_tvalid),
        .temac_misc_out2_tx_ts_axis_tvalid_pmac(temac_misc_out2_tx_ts_axis_tvalid_pmac),
        .tsn_ep_scheduler_irq(tsn_ep_scheduler_irq),
        .tsn_switch_scheduler_irq_1(tsn_switch_scheduler_irq_1),
        .tsn_switch_scheduler_irq_2(tsn_switch_scheduler_irq_2),
        .tx_axis_be_tdata(tx_axis_be_tdata),
        .tx_axis_be_tkeep(tx_axis_be_tkeep),
        .tx_axis_be_tlast(tx_axis_be_tlast),
        .tx_axis_be_tready(tx_axis_be_tready),
        .tx_axis_be_tvalid(tx_axis_be_tvalid),
        .tx_axis_st_tdata(tx_axis_st_tdata),
        .tx_axis_st_tkeep(tx_axis_st_tkeep),
        .tx_axis_st_tlast(tx_axis_st_tlast),
        .tx_axis_st_tready(tx_axis_st_tready),
        .tx_axis_st_tvalid(tx_axis_st_tvalid));
endmodule

(* HW_HANDOFF = "kr260_tsn_rs485pmod_my_tsn_ip_0.hwdef" *) (* ORIG_REF_NAME = "bd_4503" *) 
module kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503
   (INIT_DONE,
    ep_tadma_if_out,
    glbl_rstn,
    gtx_clk,
    gtx_clk90,
    gtx_dcm_locked,
    host_rxfifo_aclk,
    host_txfifo_aclk,
    interrupt_ptp_rx_1,
    interrupt_ptp_rx_2,
    interrupt_ptp_timer,
    interrupt_ptp_tx_1,
    interrupt_ptp_tx_2,
    mac_irq_1,
    mac_irq_2,
    mdio_external1_io,
    mdio_external1_mdc,
    mdio_external2_io,
    mdio_external2_mdc,
    misc_out_rx_enable,
    misc_out_rx_mac_aclk,
    misc_out_rx_reset,
    misc_out_speedis100,
    misc_out_switch_cam_init_done,
    misc_out_tsn_debug_hooks,
    misc_out_tx_enable,
    misc_out_tx_mac_aclk,
    misc_out_tx_reset,
    ptp_timers_clk8k,
    ptp_timers_ns_field,
    ptp_timers_ns_field_1722,
    ptp_timers_s_field,
    ptp_timers_syntonised_nanosec_field,
    ptp_timers_syntonised_sec_field,
    refclk,
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
    rgmii_status2_link_status,
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
    s_axi_aclk,
    s_axi_araddr,
    s_axi_aresetn,
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
    temac_misc_out1_rx_statistics_valid,
    temac_misc_out1_rx_statistics_valid_pmac,
    temac_misc_out1_rx_statistics_vector,
    temac_misc_out1_rx_statistics_vector_pmac,
    temac_misc_out1_rx_ts_axis_tdata,
    temac_misc_out1_rx_ts_axis_tdata_pmac,
    temac_misc_out1_rx_ts_axis_tvalid,
    temac_misc_out1_rx_ts_axis_tvalid_pmac,
    temac_misc_out1_tx_statistics_valid,
    temac_misc_out1_tx_statistics_valid_pmac,
    temac_misc_out1_tx_statistics_vector,
    temac_misc_out1_tx_statistics_vector_pmac,
    temac_misc_out1_tx_ts_axis_tdata,
    temac_misc_out1_tx_ts_axis_tdata_pmac,
    temac_misc_out1_tx_ts_axis_tvalid,
    temac_misc_out1_tx_ts_axis_tvalid_pmac,
    temac_misc_out2_rx_statistics_valid,
    temac_misc_out2_rx_statistics_valid_pmac,
    temac_misc_out2_rx_statistics_vector,
    temac_misc_out2_rx_statistics_vector_pmac,
    temac_misc_out2_rx_ts_axis_tdata,
    temac_misc_out2_rx_ts_axis_tdata_pmac,
    temac_misc_out2_rx_ts_axis_tvalid,
    temac_misc_out2_rx_ts_axis_tvalid_pmac,
    temac_misc_out2_tx_statistics_valid,
    temac_misc_out2_tx_statistics_valid_pmac,
    temac_misc_out2_tx_statistics_vector,
    temac_misc_out2_tx_statistics_vector_pmac,
    temac_misc_out2_tx_ts_axis_tdata,
    temac_misc_out2_tx_ts_axis_tdata_pmac,
    temac_misc_out2_tx_ts_axis_tvalid,
    temac_misc_out2_tx_ts_axis_tvalid_pmac,
    tsn_ep_scheduler_irq,
    tsn_switch_scheduler_irq_1,
    tsn_switch_scheduler_irq_2,
    tx_axis_be_tdata,
    tx_axis_be_tkeep,
    tx_axis_be_tlast,
    tx_axis_be_tready,
    tx_axis_be_tvalid,
    tx_axis_st_tdata,
    tx_axis_st_tkeep,
    tx_axis_st_tlast,
    tx_axis_st_tready,
    tx_axis_st_tvalid);
  output INIT_DONE;
  output [63:0]ep_tadma_if_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.GLBL_RSTN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.GLBL_RSTN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input glbl_rstn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.GTX_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.GTX_CLK, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0" *) input gtx_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.GTX_CLK90 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.GTX_CLK90, CLK_DOMAIN kr260_tsn_rs485pmod_clk_wiz_0_0_clk_out1, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input gtx_clk90;
  input gtx_dcm_locked;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.HOST_RXFIFO_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.HOST_RXFIFO_ACLK, ASSOCIATED_BUSIF rx_axis_be:rx_axis_st, CLK_DOMAIN kr260_tsn_rs485pmod_clk_wiz_0_0_clk_out1, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0" *) input host_rxfifo_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.HOST_TXFIFO_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.HOST_TXFIFO_ACLK, ASSOCIATED_BUSIF tx_axis_be:tx_axis_st, CLK_DOMAIN kr260_tsn_rs485pmod_clk_wiz_0_0_clk_out1, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0" *) input host_txfifo_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.INTERRUPT_PTP_RX_1 INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.INTERRUPT_PTP_RX_1, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) output interrupt_ptp_rx_1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.INTERRUPT_PTP_RX_2 INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.INTERRUPT_PTP_RX_2, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) output interrupt_ptp_rx_2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.INTERRUPT_PTP_TIMER INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.INTERRUPT_PTP_TIMER, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) output interrupt_ptp_timer;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.INTERRUPT_PTP_TX_1 INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.INTERRUPT_PTP_TX_1, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) output interrupt_ptp_tx_1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.INTERRUPT_PTP_TX_2 INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.INTERRUPT_PTP_TX_2, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) output interrupt_ptp_tx_2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.MAC_IRQ_1 INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.MAC_IRQ_1, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) output mac_irq_1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.MAC_IRQ_2 INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.MAC_IRQ_2, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) output mac_irq_2;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 mdio_external1 IO" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME mdio_external1, CAN_DEBUG false" *) inout mdio_external1_io;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 mdio_external1 MDC" *) output mdio_external1_mdc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 mdio_external2 IO" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME mdio_external2, CAN_DEBUG false" *) inout mdio_external2_io;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 mdio_external2 MDC" *) output mdio_external2_mdc;
  output [2:1]misc_out_rx_enable;
  output [2:1]misc_out_rx_mac_aclk;
  output [2:1]misc_out_rx_reset;
  output [2:1]misc_out_speedis100;
  output misc_out_switch_cam_init_done;
  output [511:0]misc_out_tsn_debug_hooks;
  output [2:1]misc_out_tx_enable;
  output [2:1]misc_out_tx_mac_aclk;
  output [2:1]misc_out_tx_reset;
  (* X_INTERFACE_INFO = "xilinx.com:display_tsn_temac:ptp_timers:1.0 ptp_timers clk8k" *) output ptp_timers_clk8k;
  (* X_INTERFACE_INFO = "xilinx.com:display_tsn_temac:ptp_timers:1.0 ptp_timers ns_field" *) output [31:0]ptp_timers_ns_field;
  (* X_INTERFACE_INFO = "xilinx.com:display_tsn_temac:ptp_timers:1.0 ptp_timers ns_field_1722" *) output [31:0]ptp_timers_ns_field_1722;
  (* X_INTERFACE_INFO = "xilinx.com:display_tsn_temac:ptp_timers:1.0 ptp_timers s_field" *) output [47:0]ptp_timers_s_field;
  (* X_INTERFACE_INFO = "xilinx.com:display_tsn_temac:ptp_timers:1.0 ptp_timers syntonised_nanosec_field" *) output [31:0]ptp_timers_syntonised_nanosec_field;
  (* X_INTERFACE_INFO = "xilinx.com:display_tsn_temac:ptp_timers:1.0 ptp_timers syntonised_sec_field" *) output [47:0]ptp_timers_syntonised_sec_field;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.REFCLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.REFCLK, FREQ_HZ 300000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0" *) input refclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii1 RD" *) input [3:0]rgmii1_rd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii1 RX_CTL" *) input rgmii1_rx_ctl;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii1 RXC" *) input rgmii1_rxc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii1 TD" *) output [3:0]rgmii1_td;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii1 TX_CTL" *) output rgmii1_tx_ctl;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii1 TXC" *) output rgmii1_txc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii2 RD" *) input [3:0]rgmii2_rd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii2 RX_CTL" *) input rgmii2_rx_ctl;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii2 RXC" *) input rgmii2_rxc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii2 TD" *) output [3:0]rgmii2_td;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii2 TX_CTL" *) output rgmii2_tx_ctl;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii2 TXC" *) output rgmii2_txc;
  (* X_INTERFACE_INFO = "xilinx.com:display_tri_mode_ethernet_mac:rgmii_status:1.0 rgmii_status1 duplex_status" *) output rgmii_status1_duplex_status;
  (* X_INTERFACE_INFO = "xilinx.com:display_tri_mode_ethernet_mac:rgmii_status:1.0 rgmii_status1 link_speed" *) output [1:0]rgmii_status1_link_speed;
  (* X_INTERFACE_INFO = "xilinx.com:display_tri_mode_ethernet_mac:rgmii_status:1.0 rgmii_status1 link_status" *) output rgmii_status1_link_status;
  (* X_INTERFACE_INFO = "xilinx.com:display_tri_mode_ethernet_mac:rgmii_status:1.0 rgmii_status2 duplex_status" *) output rgmii_status2_duplex_status;
  (* X_INTERFACE_INFO = "xilinx.com:display_tri_mode_ethernet_mac:rgmii_status:1.0 rgmii_status2 link_speed" *) output [1:0]rgmii_status2_link_speed;
  (* X_INTERFACE_INFO = "xilinx.com:display_tri_mode_ethernet_mac:rgmii_status:1.0 rgmii_status2 link_status" *) output rgmii_status2_link_status;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_axis_be TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rx_axis_be, CLK_DOMAIN kr260_tsn_rs485pmod_clk_wiz_0_0_clk_out1, FREQ_HZ 100000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0, TDATA_NUM_BYTES 4, TDEST_WIDTH 3, TID_WIDTH 0, TUSER_WIDTH 32" *) output [31:0]rx_axis_be_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_axis_be TDEST" *) output [2:0]rx_axis_be_tdest;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_axis_be TKEEP" *) output [3:0]rx_axis_be_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_axis_be TLAST" *) output rx_axis_be_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_axis_be TREADY" *) input rx_axis_be_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_axis_be TUSER" *) output [31:0]rx_axis_be_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_axis_be TVALID" *) output rx_axis_be_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_axis_st TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rx_axis_st, CLK_DOMAIN kr260_tsn_rs485pmod_clk_wiz_0_0_clk_out1, FREQ_HZ 100000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0, TDATA_NUM_BYTES 4, TDEST_WIDTH 3, TID_WIDTH 0, TUSER_WIDTH 32" *) output [31:0]rx_axis_st_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_axis_st TDEST" *) output [2:0]rx_axis_st_tdest;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_axis_st TKEEP" *) output [3:0]rx_axis_st_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_axis_st TLAST" *) output rx_axis_st_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_axis_st TREADY" *) input rx_axis_st_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_axis_st TUSER" *) output [31:0]rx_axis_st_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_axis_st TVALID" *) output rx_axis_st_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.S_AXI_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.S_AXI_ACLK, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input s_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi, ADDR_WIDTH 18, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, DATA_WIDTH 32, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 0, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 0, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [17:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.S_AXI_ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.S_AXI_ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input s_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWADDR" *) input [17:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RREADY" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WVALID" *) input s_axi_wvalid;
  output temac_misc_out1_rx_statistics_valid;
  output temac_misc_out1_rx_statistics_valid_pmac;
  output [27:0]temac_misc_out1_rx_statistics_vector;
  output [27:0]temac_misc_out1_rx_statistics_vector_pmac;
  output [127:0]temac_misc_out1_rx_ts_axis_tdata;
  output [127:0]temac_misc_out1_rx_ts_axis_tdata_pmac;
  output temac_misc_out1_rx_ts_axis_tvalid;
  output temac_misc_out1_rx_ts_axis_tvalid_pmac;
  output temac_misc_out1_tx_statistics_valid;
  output temac_misc_out1_tx_statistics_valid_pmac;
  output [31:0]temac_misc_out1_tx_statistics_vector;
  output [31:0]temac_misc_out1_tx_statistics_vector_pmac;
  output [127:0]temac_misc_out1_tx_ts_axis_tdata;
  output [127:0]temac_misc_out1_tx_ts_axis_tdata_pmac;
  output temac_misc_out1_tx_ts_axis_tvalid;
  output temac_misc_out1_tx_ts_axis_tvalid_pmac;
  output temac_misc_out2_rx_statistics_valid;
  output temac_misc_out2_rx_statistics_valid_pmac;
  output [27:0]temac_misc_out2_rx_statistics_vector;
  output [27:0]temac_misc_out2_rx_statistics_vector_pmac;
  output [127:0]temac_misc_out2_rx_ts_axis_tdata;
  output [127:0]temac_misc_out2_rx_ts_axis_tdata_pmac;
  output temac_misc_out2_rx_ts_axis_tvalid;
  output temac_misc_out2_rx_ts_axis_tvalid_pmac;
  output temac_misc_out2_tx_statistics_valid;
  output temac_misc_out2_tx_statistics_valid_pmac;
  output [31:0]temac_misc_out2_tx_statistics_vector;
  output [31:0]temac_misc_out2_tx_statistics_vector_pmac;
  output [127:0]temac_misc_out2_tx_ts_axis_tdata;
  output [127:0]temac_misc_out2_tx_ts_axis_tdata_pmac;
  output temac_misc_out2_tx_ts_axis_tvalid;
  output temac_misc_out2_tx_ts_axis_tvalid_pmac;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.TSN_EP_SCHEDULER_IRQ INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.TSN_EP_SCHEDULER_IRQ, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) output tsn_ep_scheduler_irq;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.TSN_SWITCH_SCHEDULER_IRQ_1 INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.TSN_SWITCH_SCHEDULER_IRQ_1, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) output tsn_switch_scheduler_irq_1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.TSN_SWITCH_SCHEDULER_IRQ_2 INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.TSN_SWITCH_SCHEDULER_IRQ_2, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) output tsn_switch_scheduler_irq_2;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx_axis_be TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME tx_axis_be, CLK_DOMAIN kr260_tsn_rs485pmod_clk_wiz_0_0_clk_out1, FREQ_HZ 100000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [31:0]tx_axis_be_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx_axis_be TKEEP" *) input [3:0]tx_axis_be_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx_axis_be TLAST" *) input tx_axis_be_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx_axis_be TREADY" *) output tx_axis_be_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx_axis_be TVALID" *) input tx_axis_be_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx_axis_st TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME tx_axis_st, CLK_DOMAIN kr260_tsn_rs485pmod_clk_wiz_0_0_clk_out1, FREQ_HZ 100000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [31:0]tx_axis_st_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx_axis_st TKEEP" *) input [3:0]tx_axis_st_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx_axis_st TLAST" *) input tx_axis_st_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx_axis_st TREADY" *) output tx_axis_st_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx_axis_st TVALID" *) input tx_axis_st_tvalid;

  wire INIT_DONE;
  wire Net;
  wire [63:0]ep_tadma_if_out;
  wire glbl_rstn;
  wire gtx_clk;
  wire host_rxfifo_aclk;
  wire host_txfifo_aclk;
  wire interrupt_ptp_rx_1;
  wire interrupt_ptp_rx_2;
  wire interrupt_ptp_timer;
  wire interrupt_ptp_tx_1;
  wire interrupt_ptp_tx_2;
  wire mac_irq_1;
  wire mac_irq_2;
  wire mdio_external1_io;
  wire mdio_external1_mdc;
  wire mdio_external2_io;
  wire mdio_external2_mdc;
  wire [2:1]misc_out_rx_enable;
  wire [2:1]misc_out_rx_mac_aclk;
  wire [2:1]misc_out_rx_reset;
  wire [2:1]misc_out_speedis100;
  wire misc_out_switch_cam_init_done;
  wire [511:0]misc_out_tsn_debug_hooks;
  wire [2:1]misc_out_tx_enable;
  wire [2:1]misc_out_tx_mac_aclk;
  wire [2:1]misc_out_tx_reset;
  wire ptp_timers_clk8k;
  wire [31:0]ptp_timers_ns_field;
  wire [31:0]ptp_timers_ns_field_1722;
  wire [47:0]ptp_timers_s_field;
  wire [31:0]ptp_timers_syntonised_nanosec_field;
  wire [47:0]ptp_timers_syntonised_sec_field;
  wire refclk;
  wire [3:0]rgmii1_rd;
  wire rgmii1_rx_ctl;
  wire rgmii1_rxc;
  wire [3:0]rgmii1_td;
  wire rgmii1_tx_ctl;
  wire rgmii1_txc;
  wire [3:0]rgmii2_rd;
  wire rgmii2_rx_ctl;
  wire rgmii2_rxc;
  wire [3:0]rgmii2_td;
  wire rgmii2_tx_ctl;
  wire rgmii2_txc;
  wire rgmii_status1_duplex_status;
  wire [1:0]rgmii_status1_link_speed;
  wire rgmii_status1_link_status;
  wire rgmii_status2_duplex_status;
  wire [1:0]rgmii_status2_link_speed;
  wire rgmii_status2_link_status;
  wire [31:0]rx_axis_be_tdata;
  wire [2:0]rx_axis_be_tdest;
  wire [3:0]rx_axis_be_tkeep;
  wire rx_axis_be_tlast;
  wire rx_axis_be_tready;
  wire [31:0]rx_axis_be_tuser;
  wire rx_axis_be_tvalid;
  wire [31:0]rx_axis_st_tdata;
  wire [2:0]rx_axis_st_tdest;
  wire [3:0]rx_axis_st_tkeep;
  wire rx_axis_st_tlast;
  wire rx_axis_st_tready;
  wire [31:0]rx_axis_st_tuser;
  wire rx_axis_st_tvalid;
  wire s_axi_aclk;
  wire [17:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [17:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire [47:0]switch_core_top_0_MACTX_EMAC_FRAME_LEN;
  wire [2:0]switch_core_top_0_MACTX_EMAC_GATE;
  wire [2:0]switch_core_top_0_MACTX_EMAC_GATE_OVERRUN;
  wire [2:0]switch_core_top_0_MACTX_EMAC_GATE_QACTIVE;
  wire [2:0]switch_core_top_0_MACTX_EMAC_GATE_QSTATUS;
  wire [2:0]switch_core_top_0_MACTX_EMAC_GATE_REQ;
  wire [47:0]switch_core_top_0_MACTX_FRAME_LEN;
  wire [23:0]switch_core_top_0_MACTX_GATE;
  wire [23:0]switch_core_top_0_MACTX_GATE_OVERRUN;
  wire [23:0]switch_core_top_0_MACTX_GATE_QACTIVE;
  wire [23:0]switch_core_top_0_MACTX_GATE_QSTATUS;
  wire [2:0]switch_core_top_0_MACTX_GATE_REQ;
  wire [23:0]switch_core_top_0_MACTX_PFC;
  wire [31:0]switch_core_top_0_MAX_FRAME_SIZE;
  wire [31:0]switch_core_top_0_PRIORITY_MAP;
  wire [23:0]switch_core_top_0_S_AXIS_EMAC_TX_TDATA;
  wire [2:0]switch_core_top_0_S_AXIS_EMAC_TX_TLAST;
  wire [2:0]switch_core_top_0_S_AXIS_EMAC_TX_TUSER;
  wire [2:0]switch_core_top_0_S_AXIS_EMAC_TX_TVALID;
  wire [63:0]switch_core_top_0_S_AXIS_TX_TDATA;
  wire [63:0]switch_core_top_0_S_AXIS_TX_TDATA_EP;
  wire [5:0]switch_core_top_0_S_AXIS_TX_TDEST_EP;
  wire [7:0]switch_core_top_0_S_AXIS_TX_TKEEP;
  wire [7:0]switch_core_top_0_S_AXIS_TX_TKEEP_EP;
  wire [1:0]switch_core_top_0_S_AXIS_TX_TLAST;
  wire [1:0]switch_core_top_0_S_AXIS_TX_TLAST_EP;
  wire [7:0]switch_core_top_0_S_AXIS_TX_TUSER;
  wire [63:0]switch_core_top_0_S_AXIS_TX_TUSER_EP;
  wire [1:0]switch_core_top_0_S_AXIS_TX_TVALID;
  wire [1:0]switch_core_top_0_S_AXIS_TX_TVALID_EP;
  wire switch_core_top_0_S_AXI_ARREADY;
  wire switch_core_top_0_S_AXI_AWREADY;
  wire [1:0]switch_core_top_0_S_AXI_BRESP;
  wire switch_core_top_0_S_AXI_BVALID;
  wire [31:0]switch_core_top_0_S_AXI_RDATA;
  wire [1:0]switch_core_top_0_S_AXI_RRESP;
  wire switch_core_top_0_S_AXI_RVALID;
  wire switch_core_top_0_S_AXI_WREADY;
  wire temac_misc_out1_rx_statistics_valid;
  wire temac_misc_out1_rx_statistics_valid_pmac;
  wire [27:0]temac_misc_out1_rx_statistics_vector;
  wire [27:0]temac_misc_out1_rx_statistics_vector_pmac;
  wire [127:0]temac_misc_out1_rx_ts_axis_tdata;
  wire [127:0]temac_misc_out1_rx_ts_axis_tdata_pmac;
  wire temac_misc_out1_rx_ts_axis_tvalid;
  wire temac_misc_out1_rx_ts_axis_tvalid_pmac;
  wire temac_misc_out1_tx_statistics_valid;
  wire temac_misc_out1_tx_statistics_valid_pmac;
  wire [31:0]temac_misc_out1_tx_statistics_vector;
  wire [31:0]temac_misc_out1_tx_statistics_vector_pmac;
  wire [127:0]temac_misc_out1_tx_ts_axis_tdata;
  wire [127:0]temac_misc_out1_tx_ts_axis_tdata_pmac;
  wire temac_misc_out1_tx_ts_axis_tvalid;
  wire temac_misc_out1_tx_ts_axis_tvalid_pmac;
  wire temac_misc_out2_rx_statistics_valid;
  wire temac_misc_out2_rx_statistics_valid_pmac;
  wire [27:0]temac_misc_out2_rx_statistics_vector;
  wire [27:0]temac_misc_out2_rx_statistics_vector_pmac;
  wire [127:0]temac_misc_out2_rx_ts_axis_tdata;
  wire [127:0]temac_misc_out2_rx_ts_axis_tdata_pmac;
  wire temac_misc_out2_rx_ts_axis_tvalid;
  wire temac_misc_out2_rx_ts_axis_tvalid_pmac;
  wire temac_misc_out2_tx_statistics_valid;
  wire temac_misc_out2_tx_statistics_valid_pmac;
  wire [31:0]temac_misc_out2_tx_statistics_vector;
  wire [31:0]temac_misc_out2_tx_statistics_vector_pmac;
  wire [127:0]temac_misc_out2_tx_ts_axis_tdata;
  wire [127:0]temac_misc_out2_tx_ts_axis_tdata_pmac;
  wire temac_misc_out2_tx_ts_axis_tvalid;
  wire temac_misc_out2_tx_ts_axis_tvalid_pmac;
  wire [17:0]tsn_endpoint_ethernet_mac_0_bus2ip_addr;
  wire tsn_endpoint_ethernet_mac_0_bus2ip_clk;
  wire tsn_endpoint_ethernet_mac_0_bus2ip_cs_mac1;
  wire [31:0]tsn_endpoint_ethernet_mac_0_bus2ip_data;
  wire tsn_endpoint_ethernet_mac_0_bus2ip_rdce;
  wire tsn_endpoint_ethernet_mac_0_bus2ip_reset;
  wire tsn_endpoint_ethernet_mac_0_bus2ip_wrce;
  wire [1:0]tsn_endpoint_ethernet_mac_0_core_hold_disabled_override_pmac;
  wire [2:0]tsn_endpoint_ethernet_mac_0_e_current_gate_states_out_i;
  wire [2:0]tsn_endpoint_ethernet_mac_0_e_gate_masks_out;
  wire [2:0]tsn_endpoint_ethernet_mac_0_e_guard_band_ack;
  wire [2:0]tsn_endpoint_ethernet_mac_0_e_guard_band_nack;
  wire tsn_endpoint_ethernet_mac_0_gtx_clk_reset_reg;
  wire [1:0]tsn_endpoint_ethernet_mac_0_hold_request_pmac;
  wire tsn_endpoint_ethernet_mac_0_int_mgmt_host_reset_out_reg_n_switch;
  wire [5:0]tsn_endpoint_ethernet_mac_0_m_axis_rx_ctl;
  wire [23:0]tsn_endpoint_ethernet_mac_0_m_axis_rx_tdata;
  wire [2:0]tsn_endpoint_ethernet_mac_0_m_axis_rx_tkeep;
  wire [2:0]tsn_endpoint_ethernet_mac_0_m_axis_rx_tlast;
  wire [2:0]tsn_endpoint_ethernet_mac_0_m_axis_rx_tuser;
  wire [2:0]tsn_endpoint_ethernet_mac_0_m_axis_rx_tvalid;
  wire [2:0]tsn_endpoint_ethernet_mac_0_mac_rx_clk;
  wire [2:0]tsn_endpoint_ethernet_mac_0_mac_tx_clk;
  wire [23:0]tsn_endpoint_ethernet_mac_0_macrx_pfc;
  wire [79:0]tsn_endpoint_ethernet_mac_0_ptp_current_time_sw;
  wire [31:0]tsn_endpoint_ethernet_mac_0_s_axi_switch_araddr_sw;
  wire [2:0]tsn_endpoint_ethernet_mac_0_s_axi_switch_arprot;
  wire tsn_endpoint_ethernet_mac_0_s_axi_switch_arvalid;
  wire [31:0]tsn_endpoint_ethernet_mac_0_s_axi_switch_awaddr_sw;
  wire [2:0]tsn_endpoint_ethernet_mac_0_s_axi_switch_awprot;
  wire tsn_endpoint_ethernet_mac_0_s_axi_switch_awvalid;
  wire tsn_endpoint_ethernet_mac_0_s_axi_switch_bready;
  wire tsn_endpoint_ethernet_mac_0_s_axi_switch_rready;
  wire [31:0]tsn_endpoint_ethernet_mac_0_s_axi_switch_wdata;
  wire [3:0]tsn_endpoint_ethernet_mac_0_s_axi_switch_wstrb;
  wire tsn_endpoint_ethernet_mac_0_s_axi_switch_wvalid;
  wire [2:0]tsn_endpoint_ethernet_mac_0_s_axis_emac_tx_tready;
  wire [1:0]tsn_endpoint_ethernet_mac_0_s_axis_tx_tready;
  wire [1:0]tsn_endpoint_ethernet_mac_0_s_axis_tx_tready_ep;
  wire [31:0]tsn_endpoint_ethernet_mac_0_switch_be_pkt_byte_count_sw;
  wire [23:0]tsn_endpoint_ethernet_mac_0_switch_current_gate_states_out_i2;
  wire [23:0]tsn_endpoint_ethernet_mac_0_switch_gate_masks_out_i;
  wire [2:0]tsn_endpoint_ethernet_mac_0_switch_guard_band_ack;
  wire [2:0]tsn_endpoint_ethernet_mac_0_switch_guard_band_nack;
  wire [15:0]tsn_endpoint_ethernet_mac_0_tx_axis_mac_tdata;
  wire [1:0]tsn_endpoint_ethernet_mac_0_tx_axis_mac_tlast;
  wire [1:0]tsn_endpoint_ethernet_mac_0_tx_axis_mac_tuser;
  wire [1:0]tsn_endpoint_ethernet_mac_0_tx_axis_mac_tvalid;
  wire [15:0]tsn_endpoint_ethernet_mac_0_tx_axis_pmac_tdata;
  wire [1:0]tsn_endpoint_ethernet_mac_0_tx_axis_pmac_tlast;
  wire [1:0]tsn_endpoint_ethernet_mac_0_tx_axis_pmac_tuser;
  wire [1:0]tsn_endpoint_ethernet_mac_0_tx_axis_pmac_tvalid;
  wire [1:0]tsn_endpoint_ethernet_mac_0_tx_ptp_frame_allowed;
  wire tsn_ep_scheduler_irq;
  wire tsn_switch_scheduler_irq_1;
  wire tsn_switch_scheduler_irq_2;
  wire tsn_temac_0_clk8k;
  wire tsn_temac_0_int_mgmt_host_reset_out;
  wire [31:0]tsn_temac_0_ip2bus_data;
  wire tsn_temac_0_ip2bus_error;
  wire tsn_temac_0_ip2bus_rdack;
  wire tsn_temac_0_ip2bus_wrack;
  wire [511:0]tsn_temac_0_preemption_signal_vector;
  wire [31:0]tsn_temac_0_rtc_nanosec_field;
  wire [31:0]tsn_temac_0_rtc_nanosec_field_1722;
  wire [47:0]tsn_temac_0_rtc_sec_field;
  wire tsn_temac_0_rx_axis_av_filter_tuser;
  wire [7:0]tsn_temac_0_rx_axis_mac_tdata;
  wire tsn_temac_0_rx_axis_mac_tlast;
  wire tsn_temac_0_rx_axis_mac_tuser;
  wire tsn_temac_0_rx_axis_mac_tvalid;
  wire tsn_temac_0_rx_axis_pmac_av_filter_tuser;
  wire tsn_temac_0_rx_axis_pmac_st_filter_tuser;
  wire [7:0]tsn_temac_0_rx_axis_pmac_tdata;
  wire tsn_temac_0_rx_axis_pmac_tlast;
  wire tsn_temac_0_rx_axis_pmac_tuser;
  wire tsn_temac_0_rx_axis_pmac_tvalid;
  wire tsn_temac_0_rx_axis_st_filter_tuser;
  wire tsn_temac_0_rx_enable;
  wire tsn_temac_0_rx_mac_aclk;
  wire tsn_temac_0_rx_reset;
  wire tsn_temac_0_speedis100;
  wire [31:0]tsn_temac_0_syntonised_nanosec_field;
  wire [47:0]tsn_temac_0_syntonised_sec_field;
  wire tsn_temac_0_tx_axis_mac_tready;
  wire tsn_temac_0_tx_axis_pmac_tready;
  wire tsn_temac_0_tx_enable;
  wire tsn_temac_0_tx_mac_aclk;
  wire tsn_temac_0_tx_ptp_frame_available;
  wire tsn_temac_0_tx_ptp_frame_granted_for_transmission;
  wire tsn_temac_0_tx_reset;
  wire [31:0]tsn_temac_0_tx_scheduler_internal_overhead_tsn;
  wire tsn_temac_1_interrupt_ptp_rx;
  wire tsn_temac_1_interrupt_ptp_tx;
  wire [31:0]tsn_temac_1_ip2bus_data;
  wire tsn_temac_1_ip2bus_error;
  wire tsn_temac_1_ip2bus_rdack;
  wire tsn_temac_1_ip2bus_wrack;
  wire [511:0]tsn_temac_1_mac_debug_out;
  wire [511:0]tsn_temac_1_preemption_signal_vector;
  wire [7:0]tsn_temac_1_rx_axis_mac_tdata;
  wire tsn_temac_1_rx_axis_mac_tlast;
  wire tsn_temac_1_rx_axis_mac_tuser;
  wire tsn_temac_1_rx_axis_mac_tvalid;
  wire [7:0]tsn_temac_1_rx_axis_pmac_tdata;
  wire tsn_temac_1_rx_axis_pmac_tlast;
  wire tsn_temac_1_rx_axis_pmac_tuser;
  wire tsn_temac_1_rx_axis_pmac_tvalid;
  wire tsn_temac_1_rx_enable;
  wire tsn_temac_1_rx_mac_aclk;
  wire tsn_temac_1_rx_reset;
  wire tsn_temac_1_speedis100;
  wire tsn_temac_1_tx_axis_mac_tready;
  wire tsn_temac_1_tx_axis_pmac_tready;
  wire tsn_temac_1_tx_enable;
  wire tsn_temac_1_tx_mac_aclk;
  wire tsn_temac_1_tx_ptp_frame_available;
  wire tsn_temac_1_tx_ptp_frame_granted_for_transmission;
  wire tsn_temac_1_tx_reset;
  wire [31:0]tsn_temac_1_tx_scheduler_internal_overhead_tsn;
  wire tsn_temac_2_interrupt_ptp_rx;
  wire tsn_temac_2_interrupt_ptp_tx;
  wire [511:0]tsn_temac_2_mac_debug_out;
  wire [31:0]tx_axis_be_tdata;
  wire [3:0]tx_axis_be_tkeep;
  wire tx_axis_be_tlast;
  wire tx_axis_be_tready;
  wire tx_axis_be_tvalid;
  wire [31:0]tx_axis_st_tdata;
  wire [3:0]tx_axis_st_tkeep;
  wire tx_axis_st_tlast;
  wire tx_axis_st_tready;
  wire tx_axis_st_tvalid;
  wire [1:0]xlconcat_0_dout;
  wire [1:0]xlconcat_10_dout;
  wire [1:0]xlconcat_11_dout;
  wire [1:0]xlconcat_12_dout;
  wire [1:0]xlconcat_13_dout;
  wire [1:0]xlconcat_14_dout;
  wire [1:0]xlconcat_15_dout;
  wire [1:0]xlconcat_16_dout;
  wire [63:0]xlconcat_17_dout;
  wire [1:0]xlconcat_18_dout;
  wire [1:0]xlconcat_19_dout;
  wire [15:0]xlconcat_1_dout;
  wire [1023:0]xlconcat_20_dout;
  wire [1:0]xlconcat_24_dout;
  wire [1:0]xlconcat_25_dout;
  wire [1:0]xlconcat_2_dout;
  wire [1:0]xlconcat_3_dout;
  wire [1:0]xlconcat_4_dout;
  wire [1:0]xlconcat_5_dout;
  wire [15:0]xlconcat_6_dout;
  wire [1:0]xlconcat_7_dout;
  wire [1:0]xlconcat_8_dout;
  wire [1:0]xlconcat_9_dout;
  wire [7:0]xlslice_0_Dout;
  wire xlslice_10_Dout;
  wire xlslice_11_Dout;
  wire [0:0]xlslice_12_Dout;
  wire xlslice_12_Dout1;
  wire [0:0]xlslice_13_Dout;
  wire xlslice_13_Dout1;
  wire xlslice_14_Dout;
  wire xlslice_15_Dout;
  wire xlslice_16_Dout;
  wire xlslice_17_Dout;
  wire xlslice_18_Dout;
  wire xlslice_19_Dout;
  wire [7:0]xlslice_1_Dout;
  wire xlslice_20_Dout;
  wire xlslice_21_Dout;
  wire [16:0]xlslice_22_Dout;
  wire [15:0]xlslice_23_Dout;
  wire [15:0]xlslice_24_Dout;
  wire [31:0]xlslice_25_Dout;
  wire [31:0]xlslice_26_Dout;
  wire xlslice_2_Dout;
  wire xlslice_3_Dout;
  wire xlslice_4_Dout;
  wire xlslice_5_Dout;
  wire xlslice_6_Dout;
  wire xlslice_7_Dout;
  wire [7:0]xlslice_8_Dout;
  wire [7:0]xlslice_9_Dout;
  wire NLW_switch_core_top_0_AXI_UNKNOWN_ADDRESS_UNCONNECTED;
  wire [47:0]NLW_switch_core_top_0_FRAME_DESCRIPTOR_UNCONNECTED;
  wire [2:0]NLW_switch_core_top_0_M_AXIS_RX_TREADY_UNCONNECTED;
  wire [2:0]NLW_switch_core_top_0_PAUSE_REQ_UNCONNECTED;
  wire [5:0]NLW_switch_core_top_0_S_AXIS_TX_TPRI_UNCONNECTED;
  wire NLW_tsn_endpoint_block_0_interrupt_ptp_v1_rx_1_UNCONNECTED;
  wire NLW_tsn_endpoint_block_0_interrupt_ptp_v1_rx_2_UNCONNECTED;
  wire NLW_tsn_endpoint_block_0_interrupt_ptp_v1_tx_1_UNCONNECTED;
  wire NLW_tsn_endpoint_block_0_interrupt_ptp_v1_tx_2_UNCONNECTED;
  wire NLW_tsn_endpoint_block_0_mac_irq_1_UNCONNECTED;
  wire NLW_tsn_endpoint_block_0_mac_irq_2_UNCONNECTED;
  wire NLW_tsn_endpoint_block_0_ptp_traffic_allowed_reg_UNCONNECTED;
  wire [10:0]NLW_tsn_endpoint_block_0_txd_byte_count_pmac_UNCONNECTED;
  wire NLW_tsn_temac_1_speedis10100_UNCONNECTED;
  wire [0:0]NLW_tsn_temac_1_rx_axis_filter_tuser_UNCONNECTED;
  wire NLW_tsn_temac_2_int_mgmt_host_reset_out_UNCONNECTED;
  wire NLW_tsn_temac_2_rx_axis_av_filter_tuser_UNCONNECTED;
  wire NLW_tsn_temac_2_rx_axis_pmac_av_filter_tuser_UNCONNECTED;
  wire NLW_tsn_temac_2_rx_axis_pmac_st_filter_tuser_UNCONNECTED;
  wire NLW_tsn_temac_2_rx_axis_st_filter_tuser_UNCONNECTED;
  wire NLW_tsn_temac_2_speedis10100_UNCONNECTED;
  wire [0:0]NLW_tsn_temac_2_rx_axis_filter_tuser_UNCONNECTED;
  wire [31:0]NLW_tsn_temac_2_syntonised_nanosec_field_UNCONNECTED;
  wire [47:0]NLW_tsn_temac_2_syntonised_sec_field_UNCONNECTED;
  wire [127:1]NLW_xlconcat_22_dout_UNCONNECTED;
  wire [127:1]NLW_xlconcat_23_dout_UNCONNECTED;

  (* X_CORE_INFO = "switch_core_top_v1_0_14,Vivado 2023.2" *) 
  kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_switch_core_top_0_0 switch_core_top_0
       (.AXI_UNKNOWN_ADDRESS(NLW_switch_core_top_0_AXI_UNKNOWN_ADDRESS_UNCONNECTED),
        .CLK(gtx_clk),
        .FRAME_DESCRIPTOR(NLW_switch_core_top_0_FRAME_DESCRIPTOR_UNCONNECTED[47:0]),
        .INIT_DONE(INIT_DONE),
        .MACRX_PFC(tsn_endpoint_ethernet_mac_0_macrx_pfc),
        .MACTX_EMAC_FRAME_LEN(switch_core_top_0_MACTX_EMAC_FRAME_LEN),
        .MACTX_EMAC_GATE(switch_core_top_0_MACTX_EMAC_GATE),
        .MACTX_EMAC_GATE_ACK(tsn_endpoint_ethernet_mac_0_e_guard_band_ack),
        .MACTX_EMAC_GATE_MASK(tsn_endpoint_ethernet_mac_0_e_gate_masks_out),
        .MACTX_EMAC_GATE_NAK(tsn_endpoint_ethernet_mac_0_e_guard_band_nack),
        .MACTX_EMAC_GATE_OVERRUN(switch_core_top_0_MACTX_EMAC_GATE_OVERRUN),
        .MACTX_EMAC_GATE_QACTIVE(switch_core_top_0_MACTX_EMAC_GATE_QACTIVE),
        .MACTX_EMAC_GATE_QSTATUS(switch_core_top_0_MACTX_EMAC_GATE_QSTATUS),
        .MACTX_EMAC_GATE_REQ(switch_core_top_0_MACTX_EMAC_GATE_REQ),
        .MACTX_EMAC_GATE_STATE(tsn_endpoint_ethernet_mac_0_e_current_gate_states_out_i),
        .MACTX_FRAME_LEN(switch_core_top_0_MACTX_FRAME_LEN),
        .MACTX_GATE(switch_core_top_0_MACTX_GATE),
        .MACTX_GATE_ACK(tsn_endpoint_ethernet_mac_0_switch_guard_band_ack),
        .MACTX_GATE_MASK(tsn_endpoint_ethernet_mac_0_switch_gate_masks_out_i),
        .MACTX_GATE_NAK(tsn_endpoint_ethernet_mac_0_switch_guard_band_nack),
        .MACTX_GATE_OVERRUN(switch_core_top_0_MACTX_GATE_OVERRUN),
        .MACTX_GATE_QACTIVE(switch_core_top_0_MACTX_GATE_QACTIVE),
        .MACTX_GATE_QSTATUS(switch_core_top_0_MACTX_GATE_QSTATUS),
        .MACTX_GATE_REQ(switch_core_top_0_MACTX_GATE_REQ),
        .MACTX_GATE_STATE(tsn_endpoint_ethernet_mac_0_switch_current_gate_states_out_i2),
        .MACTX_PFC(switch_core_top_0_MACTX_PFC),
        .MAC_RX_CLK(tsn_endpoint_ethernet_mac_0_mac_rx_clk),
        .MAC_TX_CLK(tsn_endpoint_ethernet_mac_0_mac_tx_clk),
        .MAX_FRAME_SIZE(switch_core_top_0_MAX_FRAME_SIZE),
        .M_AXIS_RX_CTL(tsn_endpoint_ethernet_mac_0_m_axis_rx_ctl),
        .M_AXIS_RX_TDATA(tsn_endpoint_ethernet_mac_0_m_axis_rx_tdata),
        .M_AXIS_RX_TKEEP(tsn_endpoint_ethernet_mac_0_m_axis_rx_tkeep),
        .M_AXIS_RX_TLAST(tsn_endpoint_ethernet_mac_0_m_axis_rx_tlast),
        .M_AXIS_RX_TREADY(NLW_switch_core_top_0_M_AXIS_RX_TREADY_UNCONNECTED[2:0]),
        .M_AXIS_RX_TUSER(tsn_endpoint_ethernet_mac_0_m_axis_rx_tuser),
        .M_AXIS_RX_TVALID(tsn_endpoint_ethernet_mac_0_m_axis_rx_tvalid),
        .PAUSE_REQ(NLW_switch_core_top_0_PAUSE_REQ_UNCONNECTED[2:0]),
        .PRIORITY_MAP(switch_core_top_0_PRIORITY_MAP),
        .PTP_CURRENT_TIME(tsn_endpoint_ethernet_mac_0_ptp_current_time_sw),
        .REG_RESET(1'b0),
        .RESET(tsn_endpoint_ethernet_mac_0_gtx_clk_reset_reg),
        .S_AXIS_EMAC_TX_TDATA(switch_core_top_0_S_AXIS_EMAC_TX_TDATA),
        .S_AXIS_EMAC_TX_TLAST(switch_core_top_0_S_AXIS_EMAC_TX_TLAST),
        .S_AXIS_EMAC_TX_TREADY(tsn_endpoint_ethernet_mac_0_s_axis_emac_tx_tready),
        .S_AXIS_EMAC_TX_TUSER(switch_core_top_0_S_AXIS_EMAC_TX_TUSER),
        .S_AXIS_EMAC_TX_TVALID(switch_core_top_0_S_AXIS_EMAC_TX_TVALID),
        .S_AXIS_TX_TDATA(switch_core_top_0_S_AXIS_TX_TDATA),
        .S_AXIS_TX_TDATA_EP(switch_core_top_0_S_AXIS_TX_TDATA_EP),
        .S_AXIS_TX_TDEST_EP(switch_core_top_0_S_AXIS_TX_TDEST_EP),
        .S_AXIS_TX_TKEEP(switch_core_top_0_S_AXIS_TX_TKEEP),
        .S_AXIS_TX_TKEEP_EP(switch_core_top_0_S_AXIS_TX_TKEEP_EP),
        .S_AXIS_TX_TLAST(switch_core_top_0_S_AXIS_TX_TLAST),
        .S_AXIS_TX_TLAST_EP(switch_core_top_0_S_AXIS_TX_TLAST_EP),
        .S_AXIS_TX_TPRI(NLW_switch_core_top_0_S_AXIS_TX_TPRI_UNCONNECTED[5:0]),
        .S_AXIS_TX_TREADY(tsn_endpoint_ethernet_mac_0_s_axis_tx_tready),
        .S_AXIS_TX_TREADY_EP(tsn_endpoint_ethernet_mac_0_s_axis_tx_tready_ep),
        .S_AXIS_TX_TUSER(switch_core_top_0_S_AXIS_TX_TUSER),
        .S_AXIS_TX_TUSER_EP(switch_core_top_0_S_AXIS_TX_TUSER_EP),
        .S_AXIS_TX_TVALID(switch_core_top_0_S_AXIS_TX_TVALID),
        .S_AXIS_TX_TVALID_EP(switch_core_top_0_S_AXIS_TX_TVALID_EP),
        .S_AXI_ARADDR(tsn_endpoint_ethernet_mac_0_s_axi_switch_araddr_sw),
        .S_AXI_ARPROT(tsn_endpoint_ethernet_mac_0_s_axi_switch_arprot),
        .S_AXI_ARREADY(switch_core_top_0_S_AXI_ARREADY),
        .S_AXI_ARVALID(tsn_endpoint_ethernet_mac_0_s_axi_switch_arvalid),
        .S_AXI_AWADDR(tsn_endpoint_ethernet_mac_0_s_axi_switch_awaddr_sw),
        .S_AXI_AWPROT(tsn_endpoint_ethernet_mac_0_s_axi_switch_awprot),
        .S_AXI_AWREADY(switch_core_top_0_S_AXI_AWREADY),
        .S_AXI_AWVALID(tsn_endpoint_ethernet_mac_0_s_axi_switch_awvalid),
        .S_AXI_BREADY(tsn_endpoint_ethernet_mac_0_s_axi_switch_bready),
        .S_AXI_BRESP(switch_core_top_0_S_AXI_BRESP),
        .S_AXI_BVALID(switch_core_top_0_S_AXI_BVALID),
        .S_AXI_CLK(tsn_endpoint_ethernet_mac_0_bus2ip_clk),
        .S_AXI_RDATA(switch_core_top_0_S_AXI_RDATA),
        .S_AXI_RESETN(tsn_endpoint_ethernet_mac_0_int_mgmt_host_reset_out_reg_n_switch),
        .S_AXI_RREADY(tsn_endpoint_ethernet_mac_0_s_axi_switch_rready),
        .S_AXI_RRESP(switch_core_top_0_S_AXI_RRESP),
        .S_AXI_RVALID(switch_core_top_0_S_AXI_RVALID),
        .S_AXI_WDATA(tsn_endpoint_ethernet_mac_0_s_axi_switch_wdata),
        .S_AXI_WREADY(switch_core_top_0_S_AXI_WREADY),
        .S_AXI_WSTRB(tsn_endpoint_ethernet_mac_0_s_axi_switch_wstrb),
        .S_AXI_WVALID(tsn_endpoint_ethernet_mac_0_s_axi_switch_wvalid));
  (* X_CORE_INFO = "bd_4503_tsn_endpoint_block_0_0_tsn_endpoint_ethernet_mac_block_v1_0_14,Vivado 2023.2" *) 
  kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_tsn_endpoint_block_0_0 tsn_endpoint_block_0
       (.be_rx_axis_host_tdata(rx_axis_be_tdata),
        .be_rx_axis_host_tdest(rx_axis_be_tdest),
        .be_rx_axis_host_tkeep(rx_axis_be_tkeep),
        .be_rx_axis_host_tlast(rx_axis_be_tlast),
        .be_rx_axis_host_tready(rx_axis_be_tready),
        .be_rx_axis_host_tuser(rx_axis_be_tuser),
        .be_rx_axis_host_tvalid(rx_axis_be_tvalid),
        .be_tx_axis_host_tdata(tx_axis_be_tdata),
        .be_tx_axis_host_tkeep(tx_axis_be_tkeep),
        .be_tx_axis_host_tlast(tx_axis_be_tlast),
        .be_tx_axis_host_tready(tx_axis_be_tready),
        .be_tx_axis_host_tvalid(tx_axis_be_tvalid),
        .bus2ip_addr(tsn_endpoint_ethernet_mac_0_bus2ip_addr),
        .bus2ip_clk(tsn_endpoint_ethernet_mac_0_bus2ip_clk),
        .bus2ip_cs_mac1(tsn_endpoint_ethernet_mac_0_bus2ip_cs_mac1),
        .bus2ip_cs_mac2(Net),
        .bus2ip_data(tsn_endpoint_ethernet_mac_0_bus2ip_data),
        .bus2ip_rdce(tsn_endpoint_ethernet_mac_0_bus2ip_rdce),
        .bus2ip_reset(tsn_endpoint_ethernet_mac_0_bus2ip_reset),
        .bus2ip_wrce(tsn_endpoint_ethernet_mac_0_bus2ip_wrce),
        .clk8k(ptp_timers_clk8k),
        .clk8k_in(tsn_temac_0_clk8k),
        .core_hold_disabled_override_pmac(tsn_endpoint_ethernet_mac_0_core_hold_disabled_override_pmac),
        .e_current_gate_states_out_i(tsn_endpoint_ethernet_mac_0_e_current_gate_states_out_i),
        .e_gate_masks_out(tsn_endpoint_ethernet_mac_0_e_gate_masks_out),
        .e_guard_band_ack(tsn_endpoint_ethernet_mac_0_e_guard_band_ack),
        .e_guard_band_nack(tsn_endpoint_ethernet_mac_0_e_guard_band_nack),
        .e_mactx_gate_qactive(switch_core_top_0_MACTX_EMAC_GATE_QACTIVE),
        .e_requesting_queue(switch_core_top_0_MACTX_EMAC_GATE),
        .e_requesting_queue_valid(switch_core_top_0_MACTX_EMAC_GATE_REQ),
        .e_switch_gate_queue_status(switch_core_top_0_MACTX_EMAC_GATE_QSTATUS),
        .e_switch_mactx_frame_len(switch_core_top_0_MACTX_EMAC_FRAME_LEN),
        .e_transmission_overrun_count_incr(switch_core_top_0_MACTX_EMAC_GATE_OVERRUN),
        .ep_tadma_if_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ep_tadma_if_out(ep_tadma_if_out),
        .glbl_rstn(glbl_rstn),
        .gtx_clk(gtx_clk),
        .gtx_clk_reset_reg(tsn_endpoint_ethernet_mac_0_gtx_clk_reset_reg),
        .hold_request_pmac(tsn_endpoint_ethernet_mac_0_hold_request_pmac),
        .host_rxfifo_aclk(host_rxfifo_aclk),
        .host_txfifo_aclk(host_txfifo_aclk),
        .int_mgmt_host_reset_out(tsn_temac_0_int_mgmt_host_reset_out),
        .int_mgmt_host_reset_out_reg_n_switch(tsn_endpoint_ethernet_mac_0_int_mgmt_host_reset_out_reg_n_switch),
        .interrupt_ptp_rx(xlconcat_24_dout),
        .interrupt_ptp_rx_1(interrupt_ptp_rx_1),
        .interrupt_ptp_rx_2(interrupt_ptp_rx_2),
        .interrupt_ptp_tx(xlconcat_25_dout),
        .interrupt_ptp_tx_1(interrupt_ptp_tx_1),
        .interrupt_ptp_tx_2(interrupt_ptp_tx_2),
        .interrupt_ptp_v1_rx({1'b0,1'b0}),
        .interrupt_ptp_v1_rx_1(NLW_tsn_endpoint_block_0_interrupt_ptp_v1_rx_1_UNCONNECTED),
        .interrupt_ptp_v1_rx_2(NLW_tsn_endpoint_block_0_interrupt_ptp_v1_rx_2_UNCONNECTED),
        .interrupt_ptp_v1_tx({1'b0,1'b0}),
        .interrupt_ptp_v1_tx_1(NLW_tsn_endpoint_block_0_interrupt_ptp_v1_tx_1_UNCONNECTED),
        .interrupt_ptp_v1_tx_2(NLW_tsn_endpoint_block_0_interrupt_ptp_v1_tx_2_UNCONNECTED),
        .ip2bus_data_mac1(tsn_temac_0_ip2bus_data),
        .ip2bus_data_mac2(tsn_temac_1_ip2bus_data),
        .ip2bus_error_mac1(tsn_temac_0_ip2bus_error),
        .ip2bus_error_mac2(tsn_temac_1_ip2bus_error),
        .ip2bus_rdack_mac1(tsn_temac_0_ip2bus_rdack),
        .ip2bus_rdack_mac2(tsn_temac_1_ip2bus_rdack),
        .ip2bus_wrack_mac1(tsn_temac_0_ip2bus_wrack),
        .ip2bus_wrack_mac2(tsn_temac_1_ip2bus_wrack),
        .m_axis_rx_ctl(tsn_endpoint_ethernet_mac_0_m_axis_rx_ctl),
        .m_axis_rx_tdata(tsn_endpoint_ethernet_mac_0_m_axis_rx_tdata),
        .m_axis_rx_tkeep(tsn_endpoint_ethernet_mac_0_m_axis_rx_tkeep),
        .m_axis_rx_tlast(tsn_endpoint_ethernet_mac_0_m_axis_rx_tlast),
        .m_axis_rx_tuser(tsn_endpoint_ethernet_mac_0_m_axis_rx_tuser),
        .m_axis_rx_tvalid(tsn_endpoint_ethernet_mac_0_m_axis_rx_tvalid),
        .mac_1_debug_out(xlslice_25_Dout),
        .mac_2_debug_out(xlslice_26_Dout),
        .mac_debug_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .mac_irq(1'b0),
        .mac_irq_1(NLW_tsn_endpoint_block_0_mac_irq_1_UNCONNECTED),
        .mac_irq_2(NLW_tsn_endpoint_block_0_mac_irq_2_UNCONNECTED),
        .mac_rx_clk(tsn_endpoint_ethernet_mac_0_mac_rx_clk),
        .mac_tx_clk(tsn_endpoint_ethernet_mac_0_mac_tx_clk),
        .macrx_pfc(tsn_endpoint_ethernet_mac_0_macrx_pfc),
        .mactx_gate_qactive(switch_core_top_0_MACTX_GATE_QACTIVE),
        .mactx_pfc(switch_core_top_0_MACTX_PFC),
        .preemption_signal_vector(xlconcat_20_dout),
        .ptp_current_time_sw(tsn_endpoint_ethernet_mac_0_ptp_current_time_sw),
        .ptp_traffic_allowed_reg(NLW_tsn_endpoint_block_0_ptp_traffic_allowed_reg_UNCONNECTED),
        .refclk(refclk),
        .rtc_nanosec_field(ptp_timers_ns_field),
        .rtc_nanosec_field_1722(ptp_timers_ns_field_1722),
        .rtc_nanosec_field_1722_in(tsn_temac_0_rtc_nanosec_field_1722),
        .rtc_nanosec_field_in(tsn_temac_0_rtc_nanosec_field),
        .rtc_sec_field(ptp_timers_s_field),
        .rtc_sec_field_in(tsn_temac_0_rtc_sec_field),
        .rx_axis_av_filter_tuser(tsn_temac_0_rx_axis_av_filter_tuser),
        .rx_axis_mac_tdata(xlconcat_6_dout),
        .rx_axis_mac_tlast(xlconcat_7_dout),
        .rx_axis_mac_tuser(xlconcat_8_dout),
        .rx_axis_mac_tvalid(xlconcat_9_dout),
        .rx_axis_pmac_av_filter_tuser(tsn_temac_0_rx_axis_pmac_av_filter_tuser),
        .rx_axis_pmac_st_filter_tuser(tsn_temac_0_rx_axis_pmac_st_filter_tuser),
        .rx_axis_pmac_tdata(xlconcat_1_dout),
        .rx_axis_pmac_tlast(xlconcat_2_dout),
        .rx_axis_pmac_tuser(xlconcat_3_dout),
        .rx_axis_pmac_tvalid(xlconcat_4_dout),
        .rx_axis_st_filter_tuser(tsn_temac_0_rx_axis_st_filter_tuser),
        .rx_enable(misc_out_rx_enable),
        .rx_enable_in(xlconcat_12_dout),
        .rx_mac_aclk(misc_out_rx_mac_aclk),
        .rx_mac_aclk_in(xlconcat_10_dout),
        .rx_mac_reset(xlconcat_19_dout),
        .rx_reset(misc_out_rx_reset),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
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
        .s_axi_switch_araddr_sw(tsn_endpoint_ethernet_mac_0_s_axi_switch_araddr_sw),
        .s_axi_switch_arprot(tsn_endpoint_ethernet_mac_0_s_axi_switch_arprot),
        .s_axi_switch_arready(switch_core_top_0_S_AXI_ARREADY),
        .s_axi_switch_arvalid(tsn_endpoint_ethernet_mac_0_s_axi_switch_arvalid),
        .s_axi_switch_awaddr_sw(tsn_endpoint_ethernet_mac_0_s_axi_switch_awaddr_sw),
        .s_axi_switch_awprot(tsn_endpoint_ethernet_mac_0_s_axi_switch_awprot),
        .s_axi_switch_awready(switch_core_top_0_S_AXI_AWREADY),
        .s_axi_switch_awvalid(tsn_endpoint_ethernet_mac_0_s_axi_switch_awvalid),
        .s_axi_switch_bready(tsn_endpoint_ethernet_mac_0_s_axi_switch_bready),
        .s_axi_switch_bresp(switch_core_top_0_S_AXI_BRESP),
        .s_axi_switch_bvalid(switch_core_top_0_S_AXI_BVALID),
        .s_axi_switch_rdata(switch_core_top_0_S_AXI_RDATA),
        .s_axi_switch_rready(tsn_endpoint_ethernet_mac_0_s_axi_switch_rready),
        .s_axi_switch_rresp(switch_core_top_0_S_AXI_RRESP),
        .s_axi_switch_rvalid(switch_core_top_0_S_AXI_RVALID),
        .s_axi_switch_wdata(tsn_endpoint_ethernet_mac_0_s_axi_switch_wdata),
        .s_axi_switch_wready(switch_core_top_0_S_AXI_WREADY),
        .s_axi_switch_wstrb(tsn_endpoint_ethernet_mac_0_s_axi_switch_wstrb),
        .s_axi_switch_wvalid(tsn_endpoint_ethernet_mac_0_s_axi_switch_wvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid),
        .s_axis_emac_tx_tdata(switch_core_top_0_S_AXIS_EMAC_TX_TDATA),
        .s_axis_emac_tx_tlast(switch_core_top_0_S_AXIS_EMAC_TX_TLAST),
        .s_axis_emac_tx_tready(tsn_endpoint_ethernet_mac_0_s_axis_emac_tx_tready),
        .s_axis_emac_tx_tuser(switch_core_top_0_S_AXIS_EMAC_TX_TUSER),
        .s_axis_emac_tx_tvalid(switch_core_top_0_S_AXIS_EMAC_TX_TVALID),
        .s_axis_tx_tdata(switch_core_top_0_S_AXIS_TX_TDATA),
        .s_axis_tx_tdata_ep(switch_core_top_0_S_AXIS_TX_TDATA_EP),
        .s_axis_tx_tdest_ep(switch_core_top_0_S_AXIS_TX_TDEST_EP),
        .s_axis_tx_tkeep(switch_core_top_0_S_AXIS_TX_TKEEP),
        .s_axis_tx_tkeep_ep(switch_core_top_0_S_AXIS_TX_TKEEP_EP),
        .s_axis_tx_tlast(switch_core_top_0_S_AXIS_TX_TLAST),
        .s_axis_tx_tlast_ep(switch_core_top_0_S_AXIS_TX_TLAST_EP),
        .s_axis_tx_tready(tsn_endpoint_ethernet_mac_0_s_axis_tx_tready),
        .s_axis_tx_tready_ep(tsn_endpoint_ethernet_mac_0_s_axis_tx_tready_ep),
        .s_axis_tx_tuser(switch_core_top_0_S_AXIS_TX_TUSER),
        .s_axis_tx_tuser_ep(switch_core_top_0_S_AXIS_TX_TUSER_EP),
        .s_axis_tx_tvalid(switch_core_top_0_S_AXIS_TX_TVALID),
        .s_axis_tx_tvalid_ep(switch_core_top_0_S_AXIS_TX_TVALID_EP),
        .speedis100(misc_out_speedis100),
        .speedis100_in(xlconcat_14_dout),
        .st_rx_axis_host_tdata(rx_axis_st_tdata),
        .st_rx_axis_host_tdest(rx_axis_st_tdest),
        .st_rx_axis_host_tkeep(rx_axis_st_tkeep),
        .st_rx_axis_host_tlast(rx_axis_st_tlast),
        .st_rx_axis_host_tready(rx_axis_st_tready),
        .st_rx_axis_host_tuser(rx_axis_st_tuser),
        .st_rx_axis_host_tvalid(rx_axis_st_tvalid),
        .st_tx_axis_host_tdata(tx_axis_st_tdata),
        .st_tx_axis_host_tkeep(tx_axis_st_tkeep),
        .st_tx_axis_host_tlast(tx_axis_st_tlast),
        .st_tx_axis_host_tready(tx_axis_st_tready),
        .st_tx_axis_host_tvalid(tx_axis_st_tvalid),
        .switch_be_pkt_byte_count_sw(tsn_endpoint_ethernet_mac_0_switch_be_pkt_byte_count_sw),
        .switch_cam_init_done(misc_out_switch_cam_init_done),
        .switch_current_gate_states_out_i2(tsn_endpoint_ethernet_mac_0_switch_current_gate_states_out_i2),
        .switch_gate_masks_out_i(tsn_endpoint_ethernet_mac_0_switch_gate_masks_out_i),
        .switch_gate_queue_status(switch_core_top_0_MACTX_GATE_QSTATUS),
        .switch_guard_band_ack(tsn_endpoint_ethernet_mac_0_switch_guard_band_ack),
        .switch_guard_band_nack(tsn_endpoint_ethernet_mac_0_switch_guard_band_nack),
        .switch_mactx_frame_len(switch_core_top_0_MACTX_FRAME_LEN),
        .switch_max_frame_size(switch_core_top_0_MAX_FRAME_SIZE),
        .switch_pfc_register_in(switch_core_top_0_PRIORITY_MAP),
        .switch_requesting_queue(switch_core_top_0_MACTX_GATE),
        .switch_requesting_queue_valid(switch_core_top_0_MACTX_GATE_REQ),
        .syntonised_nanosec_field(ptp_timers_syntonised_nanosec_field),
        .syntonised_nanosec_field_in(tsn_temac_0_syntonised_nanosec_field),
        .syntonised_sec_field(ptp_timers_syntonised_sec_field),
        .syntonised_sec_field_in(tsn_temac_0_syntonised_sec_field),
        .transmission_overrun_count_incr(switch_core_top_0_MACTX_GATE_OVERRUN),
        .tsn_debug_hooks(misc_out_tsn_debug_hooks),
        .tsn_ep_scheduler_irq(tsn_ep_scheduler_irq),
        .tsn_switch_scheduler_irq_1(tsn_switch_scheduler_irq_1),
        .tsn_switch_scheduler_irq_2(tsn_switch_scheduler_irq_2),
        .tx_axis_mac_tdata(tsn_endpoint_ethernet_mac_0_tx_axis_mac_tdata),
        .tx_axis_mac_tlast(tsn_endpoint_ethernet_mac_0_tx_axis_mac_tlast),
        .tx_axis_mac_tready(xlconcat_5_dout),
        .tx_axis_mac_tuser(tsn_endpoint_ethernet_mac_0_tx_axis_mac_tuser),
        .tx_axis_mac_tvalid(tsn_endpoint_ethernet_mac_0_tx_axis_mac_tvalid),
        .tx_axis_pmac_tdata(tsn_endpoint_ethernet_mac_0_tx_axis_pmac_tdata),
        .tx_axis_pmac_tlast(tsn_endpoint_ethernet_mac_0_tx_axis_pmac_tlast),
        .tx_axis_pmac_tready(xlconcat_0_dout),
        .tx_axis_pmac_tuser(tsn_endpoint_ethernet_mac_0_tx_axis_pmac_tuser),
        .tx_axis_pmac_tvalid(tsn_endpoint_ethernet_mac_0_tx_axis_pmac_tvalid),
        .tx_enable(misc_out_tx_enable),
        .tx_enable_in(xlconcat_13_dout),
        .tx_mac_aclk(misc_out_tx_mac_aclk),
        .tx_mac_aclk_in(xlconcat_11_dout),
        .tx_mac_reset(xlconcat_18_dout),
        .tx_ptp_frame_allowed(tsn_endpoint_ethernet_mac_0_tx_ptp_frame_allowed),
        .tx_ptp_frame_available(xlconcat_15_dout),
        .tx_ptp_frame_granted_for_transmission(xlconcat_16_dout),
        .tx_reset(misc_out_tx_reset),
        .tx_scheduler_internal_overhead_tsn(xlconcat_17_dout),
        .txd_byte_count_pmac(NLW_tsn_endpoint_block_0_txd_byte_count_pmac_UNCONNECTED[10:0]));
  (* X_CORE_INFO = "bd_4503_tsn_temac_1_0_support,Vivado 2023.2" *) 
  kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_tsn_temac_1_0 tsn_temac_1
       (.bus2ip_addr(xlslice_22_Dout),
        .bus2ip_clk(tsn_endpoint_ethernet_mac_0_bus2ip_clk),
        .bus2ip_cs(tsn_endpoint_ethernet_mac_0_bus2ip_cs_mac1),
        .bus2ip_data(tsn_endpoint_ethernet_mac_0_bus2ip_data),
        .bus2ip_rdce(tsn_endpoint_ethernet_mac_0_bus2ip_rdce),
        .bus2ip_reset(tsn_endpoint_ethernet_mac_0_bus2ip_reset),
        .bus2ip_wrce(tsn_endpoint_ethernet_mac_0_bus2ip_wrce),
        .clk8k(tsn_temac_0_clk8k),
        .core_hold_disabled_override_pmac(xlslice_16_Dout),
        .glbl_rstn(glbl_rstn),
        .gtx_clk(gtx_clk),
        .hold_request_pmac(xlslice_18_Dout),
        .inband_clock_speed(rgmii_status1_link_speed),
        .inband_duplex_status(rgmii_status1_duplex_status),
        .inband_link_status(rgmii_status1_link_status),
        .int_mgmt_host_reset_out(tsn_temac_0_int_mgmt_host_reset_out),
        .interrupt_ptp_rx(tsn_temac_1_interrupt_ptp_rx),
        .interrupt_ptp_timer(interrupt_ptp_timer),
        .interrupt_ptp_tx(tsn_temac_1_interrupt_ptp_tx),
        .ip2bus_data(tsn_temac_0_ip2bus_data),
        .ip2bus_error(tsn_temac_0_ip2bus_error),
        .ip2bus_rdack(tsn_temac_0_ip2bus_rdack),
        .ip2bus_wrack(tsn_temac_0_ip2bus_wrack),
        .mac_debug_out(tsn_temac_1_mac_debug_out),
        .mac_irq(mac_irq_1),
        .mdc(mdio_external1_mdc),
        .mdio(mdio_external1_io),
        .pause_req(1'b0),
        .pause_val({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .preemption_signal_vector(tsn_temac_0_preemption_signal_vector),
        .refclk(refclk),
        .rgmii_rx_ctl(rgmii1_rx_ctl),
        .rgmii_rxc(rgmii1_rxc),
        .rgmii_rxd(rgmii1_rd),
        .rgmii_tx_ctl(rgmii1_tx_ctl),
        .rgmii_txc(rgmii1_txc),
        .rgmii_txd(rgmii1_td),
        .rtc_nanosec_field(tsn_temac_0_rtc_nanosec_field),
        .rtc_nanosec_field_1722(tsn_temac_0_rtc_nanosec_field_1722),
        .rtc_nanosec_field_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rtc_sec_field(tsn_temac_0_rtc_sec_field),
        .rtc_sec_field_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_axi_rstn(1'b1),
        .rx_axis_av_filter_tuser(tsn_temac_0_rx_axis_av_filter_tuser),
        .rx_axis_filter_tuser(NLW_tsn_temac_1_rx_axis_filter_tuser_UNCONNECTED[0]),
        .rx_axis_mac_tdata(tsn_temac_0_rx_axis_mac_tdata),
        .rx_axis_mac_tlast(tsn_temac_0_rx_axis_mac_tlast),
        .rx_axis_mac_tuser(tsn_temac_0_rx_axis_mac_tuser),
        .rx_axis_mac_tvalid(tsn_temac_0_rx_axis_mac_tvalid),
        .rx_axis_pmac_av_filter_tuser(tsn_temac_0_rx_axis_pmac_av_filter_tuser),
        .rx_axis_pmac_st_filter_tuser(tsn_temac_0_rx_axis_pmac_st_filter_tuser),
        .rx_axis_pmac_tdata(tsn_temac_0_rx_axis_pmac_tdata),
        .rx_axis_pmac_tlast(tsn_temac_0_rx_axis_pmac_tlast),
        .rx_axis_pmac_tuser(tsn_temac_0_rx_axis_pmac_tuser),
        .rx_axis_pmac_tvalid(tsn_temac_0_rx_axis_pmac_tvalid),
        .rx_axis_st_filter_tuser(tsn_temac_0_rx_axis_st_filter_tuser),
        .rx_enable(tsn_temac_0_rx_enable),
        .rx_mac_aclk(tsn_temac_0_rx_mac_aclk),
        .rx_reset(tsn_temac_0_rx_reset),
        .rx_statistics_valid(temac_misc_out1_rx_statistics_valid),
        .rx_statistics_valid_pmac(temac_misc_out1_rx_statistics_valid_pmac),
        .rx_statistics_vector(temac_misc_out1_rx_statistics_vector),
        .rx_statistics_vector_pmac(temac_misc_out1_rx_statistics_vector_pmac),
        .rx_ts_axis_tdata(temac_misc_out1_rx_ts_axis_tdata),
        .rx_ts_axis_tdata_pmac(temac_misc_out1_rx_ts_axis_tdata_pmac),
        .rx_ts_axis_tvalid(temac_misc_out1_rx_ts_axis_tvalid),
        .rx_ts_axis_tvalid_pmac(temac_misc_out1_rx_ts_axis_tvalid_pmac),
        .rxphy_ns_field({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rxphy_s_field({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .speedis100(tsn_temac_0_speedis100),
        .speedis10100(NLW_tsn_temac_1_speedis10100_UNCONNECTED),
        .syntonised_nanosec_field(tsn_temac_0_syntonised_nanosec_field),
        .syntonised_nanosec_field_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .syntonised_sec_field(tsn_temac_0_syntonised_sec_field),
        .syntonised_sec_field_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_axi_rstn(1'b1),
        .tx_axis_mac_tdata(xlslice_8_Dout),
        .tx_axis_mac_tlast(xlslice_10_Dout),
        .tx_axis_mac_tready(tsn_temac_0_tx_axis_mac_tready),
        .tx_axis_mac_tuser(xlslice_12_Dout),
        .tx_axis_mac_tvalid(xlslice_14_Dout),
        .tx_axis_pmac_tdata(xlslice_0_Dout),
        .tx_axis_pmac_tlast(xlslice_2_Dout),
        .tx_axis_pmac_tready(tsn_temac_0_tx_axis_pmac_tready),
        .tx_axis_pmac_tuser(xlslice_4_Dout),
        .tx_axis_pmac_tvalid(xlslice_6_Dout),
        .tx_enable(tsn_temac_0_tx_enable),
        .tx_ifg_delay({1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0}),
        .tx_mac_aclk(tsn_temac_0_tx_mac_aclk),
        .tx_ptp_frame_available(tsn_temac_0_tx_ptp_frame_available),
        .tx_ptp_frame_granted_for_transmission(tsn_temac_0_tx_ptp_frame_granted_for_transmission),
        .tx_ptp_traffic_allowed(xlslice_20_Dout),
        .tx_reset(tsn_temac_0_tx_reset),
        .tx_scheduler_internal_overhead_tsn(tsn_temac_0_tx_scheduler_internal_overhead_tsn),
        .tx_statistics_valid(temac_misc_out1_tx_statistics_valid),
        .tx_statistics_valid_pmac(temac_misc_out1_tx_statistics_valid_pmac),
        .tx_statistics_vector(temac_misc_out1_tx_statistics_vector),
        .tx_statistics_vector_pmac(temac_misc_out1_tx_statistics_vector_pmac),
        .tx_ts_axis_tdata(temac_misc_out1_tx_ts_axis_tdata),
        .tx_ts_axis_tdata_pmac(temac_misc_out1_tx_ts_axis_tdata_pmac),
        .tx_ts_axis_tvalid(temac_misc_out1_tx_ts_axis_tvalid),
        .tx_ts_axis_tvalid_pmac(temac_misc_out1_tx_ts_axis_tvalid_pmac),
        .txd_byte_count_pmac(xlslice_23_Dout));
  (* X_CORE_INFO = "tsn_temac_v1_0_9,Vivado 2023.2" *) 
  kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_tsn_temac_2_0 tsn_temac_2
       (.bus2ip_addr(xlslice_22_Dout),
        .bus2ip_clk(tsn_endpoint_ethernet_mac_0_bus2ip_clk),
        .bus2ip_cs(Net),
        .bus2ip_data(tsn_endpoint_ethernet_mac_0_bus2ip_data),
        .bus2ip_rdce(tsn_endpoint_ethernet_mac_0_bus2ip_rdce),
        .bus2ip_reset(tsn_endpoint_ethernet_mac_0_bus2ip_reset),
        .bus2ip_wrce(tsn_endpoint_ethernet_mac_0_bus2ip_wrce),
        .core_hold_disabled_override_pmac(xlslice_17_Dout),
        .glbl_rstn(glbl_rstn),
        .gtx_clk(gtx_clk),
        .hold_request_pmac(xlslice_19_Dout),
        .inband_clock_speed(rgmii_status2_link_speed),
        .inband_duplex_status(rgmii_status2_duplex_status),
        .inband_link_status(rgmii_status2_link_status),
        .int_mgmt_host_reset_out(NLW_tsn_temac_2_int_mgmt_host_reset_out_UNCONNECTED),
        .interrupt_ptp_rx(tsn_temac_2_interrupt_ptp_rx),
        .interrupt_ptp_tx(tsn_temac_2_interrupt_ptp_tx),
        .ip2bus_data(tsn_temac_1_ip2bus_data),
        .ip2bus_error(tsn_temac_1_ip2bus_error),
        .ip2bus_rdack(tsn_temac_1_ip2bus_rdack),
        .ip2bus_wrack(tsn_temac_1_ip2bus_wrack),
        .mac_debug_out(tsn_temac_2_mac_debug_out),
        .mac_irq(mac_irq_2),
        .mdc(mdio_external2_mdc),
        .mdio(mdio_external2_io),
        .pause_req(1'b0),
        .pause_val({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .preemption_signal_vector(tsn_temac_1_preemption_signal_vector),
        .rgmii_rx_ctl(rgmii2_rx_ctl),
        .rgmii_rxc(rgmii2_rxc),
        .rgmii_rxd(rgmii2_rd),
        .rgmii_tx_ctl(rgmii2_tx_ctl),
        .rgmii_txc(rgmii2_txc),
        .rgmii_txd(rgmii2_td),
        .rtc_nanosec_field_in(tsn_temac_0_rtc_nanosec_field),
        .rtc_sec_field_in(tsn_temac_0_rtc_sec_field),
        .rx_axi_rstn(1'b1),
        .rx_axis_av_filter_tuser(NLW_tsn_temac_2_rx_axis_av_filter_tuser_UNCONNECTED),
        .rx_axis_filter_tuser(NLW_tsn_temac_2_rx_axis_filter_tuser_UNCONNECTED[0]),
        .rx_axis_mac_tdata(tsn_temac_1_rx_axis_mac_tdata),
        .rx_axis_mac_tlast(tsn_temac_1_rx_axis_mac_tlast),
        .rx_axis_mac_tuser(tsn_temac_1_rx_axis_mac_tuser),
        .rx_axis_mac_tvalid(tsn_temac_1_rx_axis_mac_tvalid),
        .rx_axis_pmac_av_filter_tuser(NLW_tsn_temac_2_rx_axis_pmac_av_filter_tuser_UNCONNECTED),
        .rx_axis_pmac_st_filter_tuser(NLW_tsn_temac_2_rx_axis_pmac_st_filter_tuser_UNCONNECTED),
        .rx_axis_pmac_tdata(tsn_temac_1_rx_axis_pmac_tdata),
        .rx_axis_pmac_tlast(tsn_temac_1_rx_axis_pmac_tlast),
        .rx_axis_pmac_tuser(tsn_temac_1_rx_axis_pmac_tuser),
        .rx_axis_pmac_tvalid(tsn_temac_1_rx_axis_pmac_tvalid),
        .rx_axis_st_filter_tuser(NLW_tsn_temac_2_rx_axis_st_filter_tuser_UNCONNECTED),
        .rx_enable(tsn_temac_1_rx_enable),
        .rx_mac_aclk(tsn_temac_1_rx_mac_aclk),
        .rx_reset(tsn_temac_1_rx_reset),
        .rx_statistics_valid(temac_misc_out2_rx_statistics_valid),
        .rx_statistics_valid_pmac(temac_misc_out2_rx_statistics_valid_pmac),
        .rx_statistics_vector(temac_misc_out2_rx_statistics_vector),
        .rx_statistics_vector_pmac(temac_misc_out2_rx_statistics_vector_pmac),
        .rx_ts_axis_tdata(temac_misc_out2_rx_ts_axis_tdata),
        .rx_ts_axis_tdata_pmac(temac_misc_out2_rx_ts_axis_tdata_pmac),
        .rx_ts_axis_tvalid(temac_misc_out2_rx_ts_axis_tvalid),
        .rx_ts_axis_tvalid_pmac(temac_misc_out2_rx_ts_axis_tvalid_pmac),
        .rxphy_ns_field({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rxphy_s_field({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .speedis100(tsn_temac_1_speedis100),
        .speedis10100(NLW_tsn_temac_2_speedis10100_UNCONNECTED),
        .syntonised_nanosec_field(NLW_tsn_temac_2_syntonised_nanosec_field_UNCONNECTED[31:0]),
        .syntonised_nanosec_field_in(tsn_temac_0_syntonised_nanosec_field),
        .syntonised_sec_field(NLW_tsn_temac_2_syntonised_sec_field_UNCONNECTED[47:0]),
        .syntonised_sec_field_in(tsn_temac_0_syntonised_sec_field),
        .tx_axi_rstn(1'b1),
        .tx_axis_mac_tdata(xlslice_9_Dout),
        .tx_axis_mac_tlast(xlslice_11_Dout),
        .tx_axis_mac_tready(tsn_temac_1_tx_axis_mac_tready),
        .tx_axis_mac_tuser(xlslice_13_Dout),
        .tx_axis_mac_tvalid(xlslice_15_Dout),
        .tx_axis_pmac_tdata(xlslice_1_Dout),
        .tx_axis_pmac_tlast(xlslice_3_Dout),
        .tx_axis_pmac_tready(tsn_temac_1_tx_axis_pmac_tready),
        .tx_axis_pmac_tuser(xlslice_5_Dout),
        .tx_axis_pmac_tvalid(xlslice_7_Dout),
        .tx_enable(tsn_temac_1_tx_enable),
        .tx_ifg_delay({1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0}),
        .tx_mac_aclk(tsn_temac_1_tx_mac_aclk),
        .tx_ptp_frame_available(tsn_temac_1_tx_ptp_frame_available),
        .tx_ptp_frame_granted_for_transmission(tsn_temac_1_tx_ptp_frame_granted_for_transmission),
        .tx_ptp_traffic_allowed(xlslice_21_Dout),
        .tx_reset(tsn_temac_1_tx_reset),
        .tx_scheduler_internal_overhead_tsn(tsn_temac_1_tx_scheduler_internal_overhead_tsn),
        .tx_statistics_valid(temac_misc_out2_tx_statistics_valid),
        .tx_statistics_valid_pmac(temac_misc_out2_tx_statistics_valid_pmac),
        .tx_statistics_vector(temac_misc_out2_tx_statistics_vector),
        .tx_statistics_vector_pmac(temac_misc_out2_tx_statistics_vector_pmac),
        .tx_ts_axis_tdata(temac_misc_out2_tx_ts_axis_tdata),
        .tx_ts_axis_tdata_pmac(temac_misc_out2_tx_ts_axis_tdata_pmac),
        .tx_ts_axis_tvalid(temac_misc_out2_tx_ts_axis_tvalid),
        .tx_ts_axis_tvalid_pmac(temac_misc_out2_tx_ts_axis_tvalid_pmac),
        .txd_byte_count_pmac(xlslice_24_Dout));
  (* CHECK_LICENSE_TYPE = "bd_4503_xlconcat_0_0,xlconcat_v2_1_5_xlconcat,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlconcat_v2_1_5_xlconcat,Vivado 2023.2" *) 
  kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlconcat_0_0 xlconcat_0
       (.In0(tsn_temac_0_tx_axis_pmac_tready),
        .In1(tsn_temac_1_tx_axis_pmac_tready),
        .dout(xlconcat_0_dout));
  (* CHECK_LICENSE_TYPE = "bd_4503_xlconcat_1_0,xlconcat_v2_1_5_xlconcat,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlconcat_v2_1_5_xlconcat,Vivado 2023.2" *) 
  kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlconcat_1_0 xlconcat_1
       (.In0(tsn_temac_0_rx_axis_pmac_tdata),
        .In1(tsn_temac_1_rx_axis_pmac_tdata),
        .dout(xlconcat_1_dout));
  (* CHECK_LICENSE_TYPE = "bd_4503_xlconcat_10_0,xlconcat_v2_1_5_xlconcat,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlconcat_v2_1_5_xlconcat,Vivado 2023.2" *) 
  kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlconcat_10_0 xlconcat_10
       (.In0(tsn_temac_0_rx_mac_aclk),
        .In1(tsn_temac_1_rx_mac_aclk),
        .dout(xlconcat_10_dout));
  (* CHECK_LICENSE_TYPE = "bd_4503_xlconcat_11_0,xlconcat_v2_1_5_xlconcat,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlconcat_v2_1_5_xlconcat,Vivado 2023.2" *) 
  kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlconcat_11_0 xlconcat_11
       (.In0(tsn_temac_0_tx_mac_aclk),
        .In1(tsn_temac_1_tx_mac_aclk),
        .dout(xlconcat_11_dout));
  (* CHECK_LICENSE_TYPE = "bd_4503_xlconcat_12_0,xlconcat_v2_1_5_xlconcat,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlconcat_v2_1_5_xlconcat,Vivado 2023.2" *) 
  kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlconcat_12_0 xlconcat_12
       (.In0(tsn_temac_0_rx_enable),
        .In1(tsn_temac_1_rx_enable),
        .dout(xlconcat_12_dout));
  (* CHECK_LICENSE_TYPE = "bd_4503_xlconcat_13_0,xlconcat_v2_1_5_xlconcat,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlconcat_v2_1_5_xlconcat,Vivado 2023.2" *) 
  kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlconcat_13_0 xlconcat_13
       (.In0(tsn_temac_0_tx_enable),
        .In1(tsn_temac_1_tx_enable),
        .dout(xlconcat_13_dout));
  (* CHECK_LICENSE_TYPE = "bd_4503_xlconcat_14_0,xlconcat_v2_1_5_xlconcat,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlconcat_v2_1_5_xlconcat,Vivado 2023.2" *) 
  kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlconcat_14_0 xlconcat_14
       (.In0(tsn_temac_0_speedis100),
        .In1(tsn_temac_1_speedis100),
        .dout(xlconcat_14_dout));
  (* CHECK_LICENSE_TYPE = "bd_4503_xlconcat_15_0,xlconcat_v2_1_5_xlconcat,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlconcat_v2_1_5_xlconcat,Vivado 2023.2" *) 
  kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlconcat_15_0 xlconcat_15
       (.In0(tsn_temac_0_tx_ptp_frame_available),
        .In1(tsn_temac_1_tx_ptp_frame_available),
        .dout(xlconcat_15_dout));
  (* CHECK_LICENSE_TYPE = "bd_4503_xlconcat_16_0,xlconcat_v2_1_5_xlconcat,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlconcat_v2_1_5_xlconcat,Vivado 2023.2" *) 
  kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlconcat_16_0 xlconcat_16
       (.In0(tsn_temac_0_tx_ptp_frame_granted_for_transmission),
        .In1(tsn_temac_1_tx_ptp_frame_granted_for_transmission),
        .dout(xlconcat_16_dout));
  (* CHECK_LICENSE_TYPE = "bd_4503_xlconcat_17_0,xlconcat_v2_1_5_xlconcat,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlconcat_v2_1_5_xlconcat,Vivado 2023.2" *) 
  kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlconcat_17_0 xlconcat_17
       (.In0(tsn_temac_0_tx_scheduler_internal_overhead_tsn),
        .In1(tsn_temac_1_tx_scheduler_internal_overhead_tsn),
        .dout(xlconcat_17_dout));
  (* CHECK_LICENSE_TYPE = "bd_4503_xlconcat_18_0,xlconcat_v2_1_5_xlconcat,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlconcat_v2_1_5_xlconcat,Vivado 2023.2" *) 
  kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlconcat_18_0 xlconcat_18
       (.In0(tsn_temac_0_tx_reset),
        .In1(tsn_temac_1_tx_reset),
        .dout(xlconcat_18_dout));
  (* CHECK_LICENSE_TYPE = "bd_4503_xlconcat_19_0,xlconcat_v2_1_5_xlconcat,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlconcat_v2_1_5_xlconcat,Vivado 2023.2" *) 
  kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlconcat_19_0 xlconcat_19
       (.In0(tsn_temac_0_rx_reset),
        .In1(tsn_temac_1_rx_reset),
        .dout(xlconcat_19_dout));
  (* CHECK_LICENSE_TYPE = "bd_4503_xlconcat_2_0,xlconcat_v2_1_5_xlconcat,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlconcat_v2_1_5_xlconcat,Vivado 2023.2" *) 
  kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlconcat_2_0 xlconcat_2
       (.In0(tsn_temac_0_rx_axis_pmac_tlast),
        .In1(tsn_temac_1_rx_axis_pmac_tlast),
        .dout(xlconcat_2_dout));
  (* CHECK_LICENSE_TYPE = "bd_4503_xlconcat_20_0,xlconcat_v2_1_5_xlconcat,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlconcat_v2_1_5_xlconcat,Vivado 2023.2" *) 
  kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlconcat_20_0 xlconcat_20
       (.In0(tsn_temac_0_preemption_signal_vector),
        .In1(tsn_temac_1_preemption_signal_vector),
        .dout(xlconcat_20_dout));
  (* CHECK_LICENSE_TYPE = "bd_4503_xlconcat_22_0,xlconcat_v2_1_5_xlconcat,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlconcat_v2_1_5_xlconcat,Vivado 2023.2" *) 
  kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlconcat_22_0 xlconcat_22
       (.In0(xlslice_12_Dout1),
        .In1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dout({NLW_xlconcat_22_dout_UNCONNECTED[127:1],xlslice_12_Dout}));
  (* CHECK_LICENSE_TYPE = "bd_4503_xlconcat_23_0,xlconcat_v2_1_5_xlconcat,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlconcat_v2_1_5_xlconcat,Vivado 2023.2" *) 
  kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlconcat_23_0 xlconcat_23
       (.In0(xlslice_13_Dout1),
        .In1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dout({NLW_xlconcat_23_dout_UNCONNECTED[127:1],xlslice_13_Dout}));
  (* CHECK_LICENSE_TYPE = "bd_4503_xlconcat_24_0,xlconcat_v2_1_5_xlconcat,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlconcat_v2_1_5_xlconcat,Vivado 2023.2" *) 
  kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlconcat_24_0 xlconcat_24
       (.In0(tsn_temac_1_interrupt_ptp_rx),
        .In1(tsn_temac_2_interrupt_ptp_rx),
        .dout(xlconcat_24_dout));
  (* CHECK_LICENSE_TYPE = "bd_4503_xlconcat_25_0,xlconcat_v2_1_5_xlconcat,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlconcat_v2_1_5_xlconcat,Vivado 2023.2" *) 
  kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlconcat_25_0 xlconcat_25
       (.In0(tsn_temac_1_interrupt_ptp_tx),
        .In1(tsn_temac_2_interrupt_ptp_tx),
        .dout(xlconcat_25_dout));
  (* CHECK_LICENSE_TYPE = "bd_4503_xlconcat_3_0,xlconcat_v2_1_5_xlconcat,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlconcat_v2_1_5_xlconcat,Vivado 2023.2" *) 
  kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlconcat_3_0 xlconcat_3
       (.In0(tsn_temac_0_rx_axis_pmac_tuser),
        .In1(tsn_temac_1_rx_axis_pmac_tuser),
        .dout(xlconcat_3_dout));
  (* CHECK_LICENSE_TYPE = "bd_4503_xlconcat_4_0,xlconcat_v2_1_5_xlconcat,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlconcat_v2_1_5_xlconcat,Vivado 2023.2" *) 
  kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlconcat_4_0 xlconcat_4
       (.In0(tsn_temac_0_rx_axis_pmac_tvalid),
        .In1(tsn_temac_1_rx_axis_pmac_tvalid),
        .dout(xlconcat_4_dout));
  (* CHECK_LICENSE_TYPE = "bd_4503_xlconcat_5_0,xlconcat_v2_1_5_xlconcat,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlconcat_v2_1_5_xlconcat,Vivado 2023.2" *) 
  kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlconcat_5_0 xlconcat_5
       (.In0(tsn_temac_0_tx_axis_mac_tready),
        .In1(tsn_temac_1_tx_axis_mac_tready),
        .dout(xlconcat_5_dout));
  (* CHECK_LICENSE_TYPE = "bd_4503_xlconcat_6_0,xlconcat_v2_1_5_xlconcat,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlconcat_v2_1_5_xlconcat,Vivado 2023.2" *) 
  kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlconcat_6_0 xlconcat_6
       (.In0(tsn_temac_0_rx_axis_mac_tdata),
        .In1(tsn_temac_1_rx_axis_mac_tdata),
        .dout(xlconcat_6_dout));
  (* CHECK_LICENSE_TYPE = "bd_4503_xlconcat_7_0,xlconcat_v2_1_5_xlconcat,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlconcat_v2_1_5_xlconcat,Vivado 2023.2" *) 
  kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlconcat_7_0 xlconcat_7
       (.In0(tsn_temac_0_rx_axis_mac_tlast),
        .In1(tsn_temac_1_rx_axis_mac_tlast),
        .dout(xlconcat_7_dout));
  (* CHECK_LICENSE_TYPE = "bd_4503_xlconcat_8_0,xlconcat_v2_1_5_xlconcat,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlconcat_v2_1_5_xlconcat,Vivado 2023.2" *) 
  kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlconcat_8_0 xlconcat_8
       (.In0(tsn_temac_0_rx_axis_mac_tuser),
        .In1(tsn_temac_1_rx_axis_mac_tuser),
        .dout(xlconcat_8_dout));
  (* CHECK_LICENSE_TYPE = "bd_4503_xlconcat_9_0,xlconcat_v2_1_5_xlconcat,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlconcat_v2_1_5_xlconcat,Vivado 2023.2" *) 
  kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlconcat_9_0 xlconcat_9
       (.In0(tsn_temac_0_rx_axis_mac_tvalid),
        .In1(tsn_temac_1_rx_axis_mac_tvalid),
        .dout(xlconcat_9_dout));
  (* CHECK_LICENSE_TYPE = "bd_4503_xlslice_0_0,xlslice_v1_0_3_xlslice,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlslice_v1_0_3_xlslice,Vivado 2023.2" *) 
  kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlslice_0_0 xlslice_0
       (.Din({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,tsn_endpoint_ethernet_mac_0_tx_axis_pmac_tdata[7:0]}),
        .Dout(xlslice_0_Dout));
  (* CHECK_LICENSE_TYPE = "bd_4503_xlslice_1_0,xlslice_v1_0_3_xlslice,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlslice_v1_0_3_xlslice,Vivado 2023.2" *) 
  kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlslice_1_0 xlslice_1
       (.Din({tsn_endpoint_ethernet_mac_0_tx_axis_pmac_tdata[15:8],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .Dout(xlslice_1_Dout));
  (* CHECK_LICENSE_TYPE = "bd_4503_xlslice_10_0,xlslice_v1_0_3_xlslice,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlslice_v1_0_3_xlslice,Vivado 2023.2" *) 
  kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlslice_10_0 xlslice_10
       (.Din({1'b0,tsn_endpoint_ethernet_mac_0_tx_axis_mac_tlast[0]}),
        .Dout(xlslice_10_Dout));
  (* CHECK_LICENSE_TYPE = "bd_4503_xlslice_11_0,xlslice_v1_0_3_xlslice,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlslice_v1_0_3_xlslice,Vivado 2023.2" *) 
  kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlslice_11_0 xlslice_11
       (.Din({tsn_endpoint_ethernet_mac_0_tx_axis_mac_tlast[1],1'b0}),
        .Dout(xlslice_11_Dout));
  (* CHECK_LICENSE_TYPE = "bd_4503_xlslice_12_0,xlslice_v1_0_3_xlslice,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlslice_v1_0_3_xlslice,Vivado 2023.2" *) 
  kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlslice_12_0 xlslice_12
       (.Din({1'b0,tsn_endpoint_ethernet_mac_0_tx_axis_mac_tuser[0]}),
        .Dout(xlslice_12_Dout1));
  (* CHECK_LICENSE_TYPE = "bd_4503_xlslice_13_0,xlslice_v1_0_3_xlslice,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlslice_v1_0_3_xlslice,Vivado 2023.2" *) 
  kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlslice_13_0 xlslice_13
       (.Din({tsn_endpoint_ethernet_mac_0_tx_axis_mac_tuser[1],1'b0}),
        .Dout(xlslice_13_Dout1));
  (* CHECK_LICENSE_TYPE = "bd_4503_xlslice_14_0,xlslice_v1_0_3_xlslice,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlslice_v1_0_3_xlslice,Vivado 2023.2" *) 
  kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlslice_14_0 xlslice_14
       (.Din({1'b0,tsn_endpoint_ethernet_mac_0_tx_axis_mac_tvalid[0]}),
        .Dout(xlslice_14_Dout));
  (* CHECK_LICENSE_TYPE = "bd_4503_xlslice_15_0,xlslice_v1_0_3_xlslice,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlslice_v1_0_3_xlslice,Vivado 2023.2" *) 
  kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlslice_15_0 xlslice_15
       (.Din({tsn_endpoint_ethernet_mac_0_tx_axis_mac_tvalid[1],1'b0}),
        .Dout(xlslice_15_Dout));
  (* CHECK_LICENSE_TYPE = "bd_4503_xlslice_16_0,xlslice_v1_0_3_xlslice,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlslice_v1_0_3_xlslice,Vivado 2023.2" *) 
  kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlslice_16_0 xlslice_16
       (.Din({1'b0,tsn_endpoint_ethernet_mac_0_core_hold_disabled_override_pmac[0]}),
        .Dout(xlslice_16_Dout));
  (* CHECK_LICENSE_TYPE = "bd_4503_xlslice_17_0,xlslice_v1_0_3_xlslice,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlslice_v1_0_3_xlslice,Vivado 2023.2" *) 
  kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlslice_17_0 xlslice_17
       (.Din({tsn_endpoint_ethernet_mac_0_core_hold_disabled_override_pmac[1],1'b0}),
        .Dout(xlslice_17_Dout));
  (* CHECK_LICENSE_TYPE = "bd_4503_xlslice_18_0,xlslice_v1_0_3_xlslice,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlslice_v1_0_3_xlslice,Vivado 2023.2" *) 
  kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlslice_18_0 xlslice_18
       (.Din({1'b0,tsn_endpoint_ethernet_mac_0_hold_request_pmac[0]}),
        .Dout(xlslice_18_Dout));
  (* CHECK_LICENSE_TYPE = "bd_4503_xlslice_19_0,xlslice_v1_0_3_xlslice,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlslice_v1_0_3_xlslice,Vivado 2023.2" *) 
  kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlslice_19_0 xlslice_19
       (.Din({tsn_endpoint_ethernet_mac_0_hold_request_pmac[1],1'b0}),
        .Dout(xlslice_19_Dout));
  (* CHECK_LICENSE_TYPE = "bd_4503_xlslice_2_0,xlslice_v1_0_3_xlslice,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlslice_v1_0_3_xlslice,Vivado 2023.2" *) 
  kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlslice_2_0 xlslice_2
       (.Din({1'b0,tsn_endpoint_ethernet_mac_0_tx_axis_pmac_tlast[0]}),
        .Dout(xlslice_2_Dout));
  (* CHECK_LICENSE_TYPE = "bd_4503_xlslice_20_0,xlslice_v1_0_3_xlslice,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlslice_v1_0_3_xlslice,Vivado 2023.2" *) 
  kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlslice_20_0 xlslice_20
       (.Din({1'b0,tsn_endpoint_ethernet_mac_0_tx_ptp_frame_allowed[0]}),
        .Dout(xlslice_20_Dout));
  (* CHECK_LICENSE_TYPE = "bd_4503_xlslice_21_0,xlslice_v1_0_3_xlslice,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlslice_v1_0_3_xlslice,Vivado 2023.2" *) 
  kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlslice_21_0 xlslice_21
       (.Din({tsn_endpoint_ethernet_mac_0_tx_ptp_frame_allowed[1],1'b0}),
        .Dout(xlslice_21_Dout));
  (* CHECK_LICENSE_TYPE = "bd_4503_xlslice_22_0,xlslice_v1_0_3_xlslice,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlslice_v1_0_3_xlslice,Vivado 2023.2" *) 
  kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlslice_22_0 xlslice_22
       (.Din({1'b0,tsn_endpoint_ethernet_mac_0_bus2ip_addr[16:0]}),
        .Dout(xlslice_22_Dout));
  (* CHECK_LICENSE_TYPE = "bd_4503_xlslice_23_0,xlslice_v1_0_3_xlslice,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlslice_v1_0_3_xlslice,Vivado 2023.2" *) 
  kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlslice_23_0 xlslice_23
       (.Din({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,tsn_endpoint_ethernet_mac_0_switch_be_pkt_byte_count_sw[15:0]}),
        .Dout(xlslice_23_Dout));
  (* CHECK_LICENSE_TYPE = "bd_4503_xlslice_24_0,xlslice_v1_0_3_xlslice,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlslice_v1_0_3_xlslice,Vivado 2023.2" *) 
  kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlslice_24_0 xlslice_24
       (.Din({tsn_endpoint_ethernet_mac_0_switch_be_pkt_byte_count_sw[31:16],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .Dout(xlslice_24_Dout));
  (* CHECK_LICENSE_TYPE = "bd_4503_xlslice_25_0,xlslice_v1_0_3_xlslice,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlslice_v1_0_3_xlslice,Vivado 2023.2" *) 
  kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlslice_25_0 xlslice_25
       (.Din({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,tsn_temac_1_mac_debug_out[31:0]}),
        .Dout(xlslice_25_Dout));
  (* CHECK_LICENSE_TYPE = "bd_4503_xlslice_26_0,xlslice_v1_0_3_xlslice,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlslice_v1_0_3_xlslice,Vivado 2023.2" *) 
  kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlslice_26_0 xlslice_26
       (.Din({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,tsn_temac_2_mac_debug_out[31:0]}),
        .Dout(xlslice_26_Dout));
  (* CHECK_LICENSE_TYPE = "bd_4503_xlslice_3_0,xlslice_v1_0_3_xlslice,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlslice_v1_0_3_xlslice,Vivado 2023.2" *) 
  kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlslice_3_0 xlslice_3
       (.Din({tsn_endpoint_ethernet_mac_0_tx_axis_pmac_tlast[1],1'b0}),
        .Dout(xlslice_3_Dout));
  (* CHECK_LICENSE_TYPE = "bd_4503_xlslice_4_0,xlslice_v1_0_3_xlslice,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlslice_v1_0_3_xlslice,Vivado 2023.2" *) 
  kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlslice_4_0 xlslice_4
       (.Din({1'b0,tsn_endpoint_ethernet_mac_0_tx_axis_pmac_tuser[0]}),
        .Dout(xlslice_4_Dout));
  (* CHECK_LICENSE_TYPE = "bd_4503_xlslice_5_0,xlslice_v1_0_3_xlslice,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlslice_v1_0_3_xlslice,Vivado 2023.2" *) 
  kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlslice_5_0 xlslice_5
       (.Din({tsn_endpoint_ethernet_mac_0_tx_axis_pmac_tuser[1],1'b0}),
        .Dout(xlslice_5_Dout));
  (* CHECK_LICENSE_TYPE = "bd_4503_xlslice_6_0,xlslice_v1_0_3_xlslice,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlslice_v1_0_3_xlslice,Vivado 2023.2" *) 
  kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlslice_6_0 xlslice_6
       (.Din({1'b0,tsn_endpoint_ethernet_mac_0_tx_axis_pmac_tvalid[0]}),
        .Dout(xlslice_6_Dout));
  (* CHECK_LICENSE_TYPE = "bd_4503_xlslice_7_0,xlslice_v1_0_3_xlslice,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlslice_v1_0_3_xlslice,Vivado 2023.2" *) 
  kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlslice_7_0 xlslice_7
       (.Din({tsn_endpoint_ethernet_mac_0_tx_axis_pmac_tvalid[1],1'b0}),
        .Dout(xlslice_7_Dout));
  (* CHECK_LICENSE_TYPE = "bd_4503_xlslice_8_0,xlslice_v1_0_3_xlslice,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlslice_v1_0_3_xlslice,Vivado 2023.2" *) 
  kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlslice_8_0 xlslice_8
       (.Din({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,tsn_endpoint_ethernet_mac_0_tx_axis_mac_tdata[7:0]}),
        .Dout(xlslice_8_Dout));
  (* CHECK_LICENSE_TYPE = "bd_4503_xlslice_9_0,xlslice_v1_0_3_xlslice,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlslice_v1_0_3_xlslice,Vivado 2023.2" *) 
  kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlslice_9_0 xlslice_9
       (.Din({tsn_endpoint_ethernet_mac_0_tx_axis_mac_tdata[15:8],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .Dout(xlslice_9_Dout));
endmodule

(* ORIG_REF_NAME = "bd_4503_switch_core_top_0_0" *) (* X_CORE_INFO = "switch_core_top_v1_0_14,Vivado 2023.2" *) 
module kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_switch_core_top_0_0
   (CLK,
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
    MACRX_PFC);
  (* syn_isclock = "1" *) input CLK;
  input RESET;
  output INIT_DONE;
  input [79:0]PTP_CURRENT_TIME;
  input [2:0]MAC_RX_CLK;
  input [23:0]M_AXIS_RX_TDATA;
  input [2:0]M_AXIS_RX_TKEEP;
  input [2:0]M_AXIS_RX_TVALID;
  input [2:0]M_AXIS_RX_TUSER;
  input [2:0]M_AXIS_RX_TLAST;
  input [5:0]M_AXIS_RX_CTL;
  output [2:0]M_AXIS_RX_TREADY;
  output [63:0]S_AXIS_TX_TDATA_EP;
  output [7:0]S_AXIS_TX_TKEEP_EP;
  output [1:0]S_AXIS_TX_TVALID_EP;
  output [1:0]S_AXIS_TX_TLAST_EP;
  input [1:0]S_AXIS_TX_TREADY_EP;
  output [5:0]S_AXIS_TX_TDEST_EP;
  output [63:0]S_AXIS_TX_TUSER_EP;
  input [2:0]MAC_TX_CLK;
  output [63:0]S_AXIS_TX_TDATA;
  output [7:0]S_AXIS_TX_TKEEP;
  output [1:0]S_AXIS_TX_TVALID;
  output [1:0]S_AXIS_TX_TLAST;
  output [7:0]S_AXIS_TX_TUSER;
  input [1:0]S_AXIS_TX_TREADY;
  output [5:0]S_AXIS_TX_TPRI;
  output [23:0]S_AXIS_EMAC_TX_TDATA;
  output [2:0]S_AXIS_EMAC_TX_TVALID;
  output [2:0]S_AXIS_EMAC_TX_TLAST;
  output [2:0]S_AXIS_EMAC_TX_TUSER;
  input [2:0]S_AXIS_EMAC_TX_TREADY;
  output [47:0]FRAME_DESCRIPTOR;
  input REG_RESET;
  (* syn_isclock = "1" *) input S_AXI_CLK;
  input S_AXI_RESETN;
  input S_AXI_RREADY;
  input S_AXI_BREADY;
  input S_AXI_ARVALID;
  input S_AXI_AWVALID;
  input S_AXI_WVALID;
  input [2:0]S_AXI_ARPROT;
  input [2:0]S_AXI_AWPROT;
  input [31:0]S_AXI_ARADDR;
  input [31:0]S_AXI_AWADDR;
  input [3:0]S_AXI_WSTRB;
  input [31:0]S_AXI_WDATA;
  output S_AXI_ARREADY;
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output S_AXI_RVALID;
  output S_AXI_BVALID;
  output [1:0]S_AXI_BRESP;
  output [1:0]S_AXI_RRESP;
  output [31:0]S_AXI_RDATA;
  output AXI_UNKNOWN_ADDRESS;
  output [31:0]PRIORITY_MAP;
  output [31:0]MAX_FRAME_SIZE;
  input [23:0]MACTX_GATE_STATE;
  input [23:0]MACTX_GATE_MASK;
  output [2:0]MACTX_GATE_REQ;
  output [23:0]MACTX_GATE;
  output [47:0]MACTX_FRAME_LEN;
  input [2:0]MACTX_GATE_ACK;
  input [2:0]MACTX_GATE_NAK;
  output [23:0]MACTX_GATE_QSTATUS;
  output [23:0]MACTX_GATE_QACTIVE;
  output [23:0]MACTX_GATE_OVERRUN;
  input [2:0]MACTX_EMAC_GATE_STATE;
  input [2:0]MACTX_EMAC_GATE_MASK;
  output [2:0]MACTX_EMAC_GATE_REQ;
  output [2:0]MACTX_EMAC_GATE;
  output [47:0]MACTX_EMAC_FRAME_LEN;
  input [2:0]MACTX_EMAC_GATE_ACK;
  input [2:0]MACTX_EMAC_GATE_NAK;
  output [2:0]MACTX_EMAC_GATE_QSTATUS;
  output [2:0]MACTX_EMAC_GATE_QACTIVE;
  output [2:0]MACTX_EMAC_GATE_OVERRUN;
  output [2:0]PAUSE_REQ;
  output [23:0]MACTX_PFC;
  input [23:0]MACRX_PFC;


endmodule

(* ORIG_REF_NAME = "bd_4503_tsn_endpoint_block_0_0" *) (* X_CORE_INFO = "bd_4503_tsn_endpoint_block_0_0_tsn_endpoint_ethernet_mac_block_v1_0_14,Vivado 2023.2" *) 
module kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_tsn_endpoint_block_0_0
   (gtx_clk,
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
    mac_2_debug_out);
  (* syn_isclock = "1" *) input gtx_clk;
  input refclk;
  input glbl_rstn;
  output [2:1]rx_enable;
  output [2:1]rx_mac_aclk;
  output [2:1]rx_reset;
  output [2:1]tx_mac_aclk;
  output [2:1]tx_reset;
  output [31:0]rtc_nanosec_field;
  output [47:0]rtc_sec_field;
  output [31:0]syntonised_nanosec_field;
  output [47:0]syntonised_sec_field;
  input [31:0]rtc_nanosec_field_in;
  input [47:0]rtc_sec_field_in;
  input [31:0]syntonised_nanosec_field_in;
  input [47:0]syntonised_sec_field_in;
  input [31:0]rtc_nanosec_field_1722_in;
  input clk8k_in;
  output clk8k;
  output [31:0]rtc_nanosec_field_1722;
  output [511:0]tsn_debug_hooks;
  output [2:1]tx_enable;
  output [2:1]speedis100;
  input [2:1]interrupt_ptp_rx;
  input [2:1]interrupt_ptp_tx;
  input [2:1]interrupt_ptp_v1_rx;
  input [2:1]interrupt_ptp_v1_tx;
  output interrupt_ptp_rx_1;
  output interrupt_ptp_rx_2;
  output interrupt_ptp_tx_1;
  output interrupt_ptp_tx_2;
  output interrupt_ptp_v1_rx_1;
  output interrupt_ptp_v1_rx_2;
  output interrupt_ptp_v1_tx_1;
  output interrupt_ptp_v1_tx_2;
  (* syn_isclock = "1" *) input host_txfifo_aclk;
  (* syn_isclock = "1" *) input host_rxfifo_aclk;
  output switch_cam_init_done;
  output mac_irq_1;
  output mac_irq_2;
  output tsn_switch_scheduler_irq_1;
  output tsn_switch_scheduler_irq_2;
  output tsn_ep_scheduler_irq;
  input [17:0]s_axi_awaddr;
  input [17:0]s_axi_araddr;
  (* syn_isclock = "1" *) input s_axi_aclk;
  input s_axi_aresetn;
  input s_axi_awvalid;
  input [31:0]s_axi_wdata;
  input s_axi_wvalid;
  input s_axi_bready;
  input s_axi_arvalid;
  input s_axi_rready;
  (* syn_isclock = "1" *) output bus2ip_clk;
  output bus2ip_reset;
  output [17:0]bus2ip_addr;
  output [31:0]bus2ip_data;
  output bus2ip_rdce;
  output bus2ip_wrce;
  output bus2ip_cs_mac1;
  input ip2bus_rdack_mac1;
  input ip2bus_wrack_mac1;
  input ip2bus_error_mac1;
  input [31:0]ip2bus_data_mac1;
  input st_rx_axis_host_tready;
  input [31:0]st_tx_axis_host_tdata;
  input [3:0]st_tx_axis_host_tkeep;
  input st_tx_axis_host_tvalid;
  input st_tx_axis_host_tlast;
  input be_rx_axis_host_tready;
  input [31:0]be_tx_axis_host_tdata;
  input [3:0]be_tx_axis_host_tkeep;
  input be_tx_axis_host_tvalid;
  input be_tx_axis_host_tlast;
  output s_axi_awready;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  output [31:0]st_rx_axis_host_tdata;
  output [2:0]st_rx_axis_host_tdest;
  output [31:0]st_rx_axis_host_tuser;
  output [3:0]st_rx_axis_host_tkeep;
  output st_rx_axis_host_tvalid;
  output st_rx_axis_host_tlast;
  output st_tx_axis_host_tready;
  output [31:0]be_rx_axis_host_tdata;
  output [2:0]be_rx_axis_host_tdest;
  output [31:0]be_rx_axis_host_tuser;
  output [3:0]be_rx_axis_host_tkeep;
  output be_rx_axis_host_tvalid;
  output be_rx_axis_host_tlast;
  output be_tx_axis_host_tready;
  output [15:0]tx_axis_pmac_tdata;
  output [1:0]tx_axis_pmac_tvalid;
  output [1:0]tx_axis_pmac_tlast;
  output [1:0]tx_axis_pmac_tuser;
  input [1:0]tx_axis_pmac_tready;
  output [15:0]tx_axis_mac_tdata;
  output [1:0]tx_axis_mac_tvalid;
  output [1:0]tx_axis_mac_tlast;
  output [1:0]tx_axis_mac_tuser;
  input [1:0]tx_axis_mac_tready;
  input [15:0]rx_axis_pmac_tdata;
  input [1:0]rx_axis_pmac_tvalid;
  input [1:0]rx_axis_pmac_tlast;
  input [1:0]rx_axis_pmac_tuser;
  input [15:0]rx_axis_mac_tdata;
  input [1:0]rx_axis_mac_tvalid;
  input [1:0]rx_axis_mac_tlast;
  input [1:0]rx_axis_mac_tuser;
  input [1:0]rx_mac_reset;
  input [1023:0]preemption_signal_vector;
  input rx_axis_pmac_st_filter_tuser;
  input rx_axis_pmac_av_filter_tuser;
  input rx_axis_st_filter_tuser;
  input rx_axis_av_filter_tuser;
  input int_mgmt_host_reset_out;
  input [1:0]tx_ptp_frame_available;
  input [1:0]tx_ptp_frame_granted_for_transmission;
  input [63:0]tx_scheduler_internal_overhead_tsn;
  input [1:0]tx_mac_reset;
  output [1:0]core_hold_disabled_override_pmac;
  output [1:0]hold_request_pmac;
  output [10:0]txd_byte_count_pmac;
  output ptp_traffic_allowed_reg;
  output [63:0]ep_tadma_if_out;
  input [63:0]ep_tadma_if_in;
  input [1:0]rx_enable_in;
  input [1:0]rx_mac_aclk_in;
  input [1:0]tx_enable_in;
  input [1:0]tx_mac_aclk_in;
  input [511:0]mac_debug_in;
  input [1:0]speedis100_in;
  input mac_irq;
  output gtx_clk_reset_reg;
  output [79:0]ptp_current_time_sw;
  output [2:0]mac_rx_clk;
  output [23:0]m_axis_rx_tdata;
  output [2:0]m_axis_rx_tkeep;
  output [2:0]m_axis_rx_tvalid;
  output [2:0]m_axis_rx_tuser;
  output [2:0]m_axis_rx_tlast;
  output [5:0]m_axis_rx_ctl;
  output [2:0]mac_tx_clk;
  input [63:0]s_axis_tx_tdata;
  input [7:0]s_axis_tx_tkeep;
  input [1:0]s_axis_tx_tvalid;
  input [1:0]s_axis_tx_tlast;
  input [7:0]s_axis_tx_tuser;
  output [1:0]s_axis_tx_tready;
  input [63:0]s_axis_tx_tdata_ep;
  input [7:0]s_axis_tx_tkeep_ep;
  input [1:0]s_axis_tx_tvalid_ep;
  input [1:0]s_axis_tx_tlast_ep;
  input [63:0]s_axis_tx_tuser_ep;
  input [5:0]s_axis_tx_tdest_ep;
  output [1:0]s_axis_tx_tready_ep;
  input [23:0]s_axis_emac_tx_tdata;
  input [2:0]s_axis_emac_tx_tvalid;
  input [2:0]s_axis_emac_tx_tlast;
  input [2:0]s_axis_emac_tx_tuser;
  output [2:0]s_axis_emac_tx_tready;
  input [31:0]switch_pfc_register_in;
  output bus2ip_cs_mac2;
  input ip2bus_rdack_mac2;
  input ip2bus_wrack_mac2;
  input ip2bus_error_mac2;
  input [31:0]ip2bus_data_mac2;
  output int_mgmt_host_reset_out_reg_n_switch;
  output s_axi_switch_rready;
  output s_axi_switch_bready;
  output s_axi_switch_arvalid;
  output s_axi_switch_awvalid;
  output s_axi_switch_wvalid;
  output [2:0]s_axi_switch_arprot;
  output [2:0]s_axi_switch_awprot;
  output [31:0]s_axi_switch_araddr_sw;
  output [31:0]s_axi_switch_awaddr_sw;
  output [3:0]s_axi_switch_wstrb;
  output [31:0]s_axi_switch_wdata;
  input s_axi_switch_arready;
  input s_axi_switch_awready;
  input s_axi_switch_wready;
  input s_axi_switch_rvalid;
  input s_axi_switch_bvalid;
  input [1:0]s_axi_switch_bresp;
  input [1:0]s_axi_switch_rresp;
  input [31:0]s_axi_switch_rdata;
  output [23:0]switch_current_gate_states_out_i2;
  input [2:0]switch_requesting_queue_valid;
  input [23:0]switch_requesting_queue;
  output [23:0]switch_gate_masks_out_i;
  output [2:0]switch_guard_band_nack;
  output [2:0]switch_guard_band_ack;
  input [23:0]switch_gate_queue_status;
  input [23:0]transmission_overrun_count_incr;
  input [23:0]mactx_gate_qactive;
  input [31:0]switch_max_frame_size;
  input [47:0]switch_mactx_frame_len;
  output [2:0]e_current_gate_states_out_i;
  output [2:0]e_gate_masks_out;
  input [2:0]e_requesting_queue;
  input [2:0]e_mactx_gate_qactive;
  input [2:0]e_requesting_queue_valid;
  output [2:0]e_guard_band_nack;
  output [2:0]e_guard_band_ack;
  input [2:0]e_transmission_overrun_count_incr;
  input [47:0]e_switch_mactx_frame_len;
  input [2:0]e_switch_gate_queue_status;
  output [23:0]macrx_pfc;
  input [23:0]mactx_pfc;
  output [31:0]switch_be_pkt_byte_count_sw;
  output [1:0]tx_ptp_frame_allowed;
  input [31:0]mac_1_debug_out;
  input [31:0]mac_2_debug_out;


endmodule

(* ORIG_REF_NAME = "bd_4503_tsn_temac_1_0" *) (* X_CORE_INFO = "bd_4503_tsn_temac_1_0_support,Vivado 2023.2" *) 
module kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_tsn_temac_1_0
   (gtx_clk,
    refclk,
    core_hold_disabled_override_pmac,
    hold_request_pmac,
    txd_byte_count_pmac,
    tx_axis_pmac_tdata,
    tx_axis_pmac_tvalid,
    tx_axis_pmac_tlast,
    tx_axis_pmac_tuser,
    tx_axis_pmac_tready,
    tx_statistics_vector_pmac,
    tx_statistics_valid_pmac,
    tx_ts_axis_tvalid_pmac,
    tx_ts_axis_tdata_pmac,
    rx_axis_pmac_tdata,
    rx_axis_pmac_tvalid,
    rx_axis_pmac_tlast,
    rx_axis_pmac_tuser,
    rx_axis_pmac_st_filter_tuser,
    rx_axis_pmac_av_filter_tuser,
    rx_statistics_vector_pmac,
    rx_statistics_valid_pmac,
    rx_ts_axis_tvalid_pmac,
    rx_ts_axis_tdata_pmac,
    preemption_signal_vector,
    glbl_rstn,
    rx_axi_rstn,
    tx_axi_rstn,
    syntonised_nanosec_field,
    syntonised_sec_field,
    syntonised_sec_field_in,
    syntonised_nanosec_field_in,
    rtc_sec_field_in,
    rtc_nanosec_field_in,
    mac_debug_out,
    rx_axis_st_filter_tuser,
    rx_axis_av_filter_tuser,
    int_mgmt_host_reset_out,
    tx_ptp_traffic_allowed,
    tx_ptp_frame_granted_for_transmission,
    tx_ptp_frame_available,
    tx_scheduler_internal_overhead_tsn,
    rx_enable,
    rx_statistics_vector,
    rx_statistics_valid,
    rx_mac_aclk,
    rx_reset,
    rx_axis_mac_tdata,
    rx_axis_mac_tvalid,
    rx_axis_mac_tlast,
    rx_axis_mac_tuser,
    rx_ts_axis_tvalid,
    rx_ts_axis_tdata,
    rxphy_s_field,
    rxphy_ns_field,
    rx_axis_filter_tuser,
    tx_enable,
    tx_ifg_delay,
    tx_statistics_vector,
    tx_statistics_valid,
    tx_mac_aclk,
    tx_reset,
    tx_axis_mac_tdata,
    tx_axis_mac_tvalid,
    tx_axis_mac_tlast,
    tx_axis_mac_tuser,
    tx_axis_mac_tready,
    tx_ts_axis_tvalid,
    tx_ts_axis_tdata,
    interrupt_ptp_timer,
    rtc_nanosec_field,
    rtc_sec_field,
    clk8k,
    rtc_nanosec_field_1722,
    interrupt_ptp_rx,
    interrupt_ptp_tx,
    pause_req,
    pause_val,
    speedis100,
    speedis10100,
    rgmii_txd,
    rgmii_tx_ctl,
    rgmii_txc,
    rgmii_rxd,
    rgmii_rx_ctl,
    rgmii_rxc,
    inband_link_status,
    inband_clock_speed,
    inband_duplex_status,
    mdio,
    mdc,
    bus2ip_clk,
    bus2ip_reset,
    bus2ip_addr,
    bus2ip_cs,
    bus2ip_rdce,
    bus2ip_wrce,
    bus2ip_data,
    ip2bus_data,
    ip2bus_wrack,
    ip2bus_rdack,
    ip2bus_error,
    mac_irq);
  (* syn_isclock = "1" *) input gtx_clk;
  (* syn_isclock = "1" *) input refclk;
  input core_hold_disabled_override_pmac;
  input hold_request_pmac;
  input [15:0]txd_byte_count_pmac;
  input [7:0]tx_axis_pmac_tdata;
  input tx_axis_pmac_tvalid;
  input tx_axis_pmac_tlast;
  input tx_axis_pmac_tuser;
  output tx_axis_pmac_tready;
  output [31:0]tx_statistics_vector_pmac;
  output tx_statistics_valid_pmac;
  output tx_ts_axis_tvalid_pmac;
  output [127:0]tx_ts_axis_tdata_pmac;
  output [7:0]rx_axis_pmac_tdata;
  output rx_axis_pmac_tvalid;
  output rx_axis_pmac_tlast;
  output rx_axis_pmac_tuser;
  output rx_axis_pmac_st_filter_tuser;
  output rx_axis_pmac_av_filter_tuser;
  output [27:0]rx_statistics_vector_pmac;
  output rx_statistics_valid_pmac;
  output rx_ts_axis_tvalid_pmac;
  output [127:0]rx_ts_axis_tdata_pmac;
  output [511:0]preemption_signal_vector;
  input glbl_rstn;
  input rx_axi_rstn;
  input tx_axi_rstn;
  output [31:0]syntonised_nanosec_field;
  output [47:0]syntonised_sec_field;
  input [47:0]syntonised_sec_field_in;
  input [31:0]syntonised_nanosec_field_in;
  input [47:0]rtc_sec_field_in;
  input [31:0]rtc_nanosec_field_in;
  output [511:0]mac_debug_out;
  output rx_axis_st_filter_tuser;
  output rx_axis_av_filter_tuser;
  output int_mgmt_host_reset_out;
  input tx_ptp_traffic_allowed;
  output tx_ptp_frame_granted_for_transmission;
  output tx_ptp_frame_available;
  output [31:0]tx_scheduler_internal_overhead_tsn;
  output rx_enable;
  output [27:0]rx_statistics_vector;
  output rx_statistics_valid;
  (* syn_isclock = "1" *) output rx_mac_aclk;
  output rx_reset;
  output [7:0]rx_axis_mac_tdata;
  output rx_axis_mac_tvalid;
  output rx_axis_mac_tlast;
  output rx_axis_mac_tuser;
  output rx_ts_axis_tvalid;
  output [127:0]rx_ts_axis_tdata;
  input [47:0]rxphy_s_field;
  input [31:0]rxphy_ns_field;
  output [0:0]rx_axis_filter_tuser;
  output tx_enable;
  input [7:0]tx_ifg_delay;
  output [31:0]tx_statistics_vector;
  output tx_statistics_valid;
  (* syn_isclock = "1" *) output tx_mac_aclk;
  output tx_reset;
  input [7:0]tx_axis_mac_tdata;
  input tx_axis_mac_tvalid;
  input tx_axis_mac_tlast;
  input tx_axis_mac_tuser;
  output tx_axis_mac_tready;
  output tx_ts_axis_tvalid;
  output [127:0]tx_ts_axis_tdata;
  output interrupt_ptp_timer;
  output [31:0]rtc_nanosec_field;
  output [47:0]rtc_sec_field;
  output clk8k;
  output [31:0]rtc_nanosec_field_1722;
  output interrupt_ptp_rx;
  output interrupt_ptp_tx;
  input pause_req;
  input [15:0]pause_val;
  output speedis100;
  output speedis10100;
  output [3:0]rgmii_txd;
  output rgmii_tx_ctl;
  output rgmii_txc;
  input [3:0]rgmii_rxd;
  input rgmii_rx_ctl;
  input rgmii_rxc;
  output inband_link_status;
  output [1:0]inband_clock_speed;
  output inband_duplex_status;
  inout mdio;
  output mdc;
  (* syn_isclock = "1" *) input bus2ip_clk;
  input bus2ip_reset;
  input [16:0]bus2ip_addr;
  input bus2ip_cs;
  input bus2ip_rdce;
  input bus2ip_wrce;
  input [31:0]bus2ip_data;
  output [31:0]ip2bus_data;
  output ip2bus_wrack;
  output ip2bus_rdack;
  output ip2bus_error;
  output mac_irq;


endmodule

(* ORIG_REF_NAME = "bd_4503_tsn_temac_2_0" *) (* X_CORE_INFO = "tsn_temac_v1_0_9,Vivado 2023.2" *) 
module kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_tsn_temac_2_0
   (gtx_clk,
    core_hold_disabled_override_pmac,
    hold_request_pmac,
    txd_byte_count_pmac,
    tx_axis_pmac_tdata,
    tx_axis_pmac_tvalid,
    tx_axis_pmac_tlast,
    tx_axis_pmac_tuser,
    tx_axis_pmac_tready,
    tx_statistics_vector_pmac,
    tx_statistics_valid_pmac,
    tx_ts_axis_tvalid_pmac,
    tx_ts_axis_tdata_pmac,
    rx_axis_pmac_tdata,
    rx_axis_pmac_tvalid,
    rx_axis_pmac_tlast,
    rx_axis_pmac_tuser,
    rx_axis_pmac_st_filter_tuser,
    rx_axis_pmac_av_filter_tuser,
    rx_statistics_vector_pmac,
    rx_statistics_valid_pmac,
    rx_ts_axis_tvalid_pmac,
    rx_ts_axis_tdata_pmac,
    preemption_signal_vector,
    glbl_rstn,
    rx_axi_rstn,
    tx_axi_rstn,
    syntonised_nanosec_field,
    syntonised_sec_field,
    syntonised_sec_field_in,
    syntonised_nanosec_field_in,
    rtc_sec_field_in,
    rtc_nanosec_field_in,
    mac_debug_out,
    rx_axis_st_filter_tuser,
    rx_axis_av_filter_tuser,
    int_mgmt_host_reset_out,
    tx_ptp_traffic_allowed,
    tx_ptp_frame_granted_for_transmission,
    tx_ptp_frame_available,
    tx_scheduler_internal_overhead_tsn,
    rx_enable,
    rx_statistics_vector,
    rx_statistics_valid,
    rx_mac_aclk,
    rx_reset,
    rx_axis_mac_tdata,
    rx_axis_mac_tvalid,
    rx_axis_mac_tlast,
    rx_axis_mac_tuser,
    rx_ts_axis_tvalid,
    rx_ts_axis_tdata,
    rxphy_s_field,
    rxphy_ns_field,
    rx_axis_filter_tuser,
    tx_enable,
    tx_ifg_delay,
    tx_statistics_vector,
    tx_statistics_valid,
    tx_mac_aclk,
    tx_reset,
    tx_axis_mac_tdata,
    tx_axis_mac_tvalid,
    tx_axis_mac_tlast,
    tx_axis_mac_tuser,
    tx_axis_mac_tready,
    tx_ts_axis_tvalid,
    tx_ts_axis_tdata,
    interrupt_ptp_rx,
    interrupt_ptp_tx,
    pause_req,
    pause_val,
    speedis100,
    speedis10100,
    rgmii_txd,
    rgmii_tx_ctl,
    rgmii_txc,
    rgmii_rxd,
    rgmii_rx_ctl,
    rgmii_rxc,
    inband_link_status,
    inband_clock_speed,
    inband_duplex_status,
    mdio,
    mdc,
    bus2ip_clk,
    bus2ip_reset,
    bus2ip_addr,
    bus2ip_cs,
    bus2ip_rdce,
    bus2ip_wrce,
    bus2ip_data,
    ip2bus_data,
    ip2bus_wrack,
    ip2bus_rdack,
    ip2bus_error,
    mac_irq);
  (* syn_isclock = "1" *) input gtx_clk;
  input core_hold_disabled_override_pmac;
  input hold_request_pmac;
  input [15:0]txd_byte_count_pmac;
  input [7:0]tx_axis_pmac_tdata;
  input tx_axis_pmac_tvalid;
  input tx_axis_pmac_tlast;
  input tx_axis_pmac_tuser;
  output tx_axis_pmac_tready;
  output [31:0]tx_statistics_vector_pmac;
  output tx_statistics_valid_pmac;
  output tx_ts_axis_tvalid_pmac;
  output [127:0]tx_ts_axis_tdata_pmac;
  output [7:0]rx_axis_pmac_tdata;
  output rx_axis_pmac_tvalid;
  output rx_axis_pmac_tlast;
  output rx_axis_pmac_tuser;
  output rx_axis_pmac_st_filter_tuser;
  output rx_axis_pmac_av_filter_tuser;
  output [27:0]rx_statistics_vector_pmac;
  output rx_statistics_valid_pmac;
  output rx_ts_axis_tvalid_pmac;
  output [127:0]rx_ts_axis_tdata_pmac;
  output [511:0]preemption_signal_vector;
  input glbl_rstn;
  input rx_axi_rstn;
  input tx_axi_rstn;
  output [31:0]syntonised_nanosec_field;
  output [47:0]syntonised_sec_field;
  input [47:0]syntonised_sec_field_in;
  input [31:0]syntonised_nanosec_field_in;
  input [47:0]rtc_sec_field_in;
  input [31:0]rtc_nanosec_field_in;
  output [511:0]mac_debug_out;
  output rx_axis_st_filter_tuser;
  output rx_axis_av_filter_tuser;
  output int_mgmt_host_reset_out;
  input tx_ptp_traffic_allowed;
  output tx_ptp_frame_granted_for_transmission;
  output tx_ptp_frame_available;
  output [31:0]tx_scheduler_internal_overhead_tsn;
  output rx_enable;
  output [27:0]rx_statistics_vector;
  output rx_statistics_valid;
  (* syn_isclock = "1" *) output rx_mac_aclk;
  output rx_reset;
  output [7:0]rx_axis_mac_tdata;
  output rx_axis_mac_tvalid;
  output rx_axis_mac_tlast;
  output rx_axis_mac_tuser;
  output rx_ts_axis_tvalid;
  output [127:0]rx_ts_axis_tdata;
  input [47:0]rxphy_s_field;
  input [31:0]rxphy_ns_field;
  output [0:0]rx_axis_filter_tuser;
  output tx_enable;
  input [7:0]tx_ifg_delay;
  output [31:0]tx_statistics_vector;
  output tx_statistics_valid;
  (* syn_isclock = "1" *) output tx_mac_aclk;
  output tx_reset;
  input [7:0]tx_axis_mac_tdata;
  input tx_axis_mac_tvalid;
  input tx_axis_mac_tlast;
  input tx_axis_mac_tuser;
  output tx_axis_mac_tready;
  output tx_ts_axis_tvalid;
  output [127:0]tx_ts_axis_tdata;
  output interrupt_ptp_rx;
  output interrupt_ptp_tx;
  input pause_req;
  input [15:0]pause_val;
  output speedis100;
  output speedis10100;
  output [3:0]rgmii_txd;
  output rgmii_tx_ctl;
  output rgmii_txc;
  input [3:0]rgmii_rxd;
  input rgmii_rx_ctl;
  input rgmii_rxc;
  output inband_link_status;
  output [1:0]inband_clock_speed;
  output inband_duplex_status;
  inout mdio;
  output mdc;
  (* syn_isclock = "1" *) input bus2ip_clk;
  input bus2ip_reset;
  input [16:0]bus2ip_addr;
  input bus2ip_cs;
  input bus2ip_rdce;
  input bus2ip_wrce;
  input [31:0]bus2ip_data;
  output [31:0]ip2bus_data;
  output ip2bus_wrack;
  output ip2bus_rdack;
  output ip2bus_error;
  output mac_irq;


endmodule

(* CHECK_LICENSE_TYPE = "bd_4503_xlconcat_0_0,xlconcat_v2_1_5_xlconcat,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "bd_4503_xlconcat_0_0" *) 
(* X_CORE_INFO = "xlconcat_v2_1_5_xlconcat,Vivado 2023.2" *) 
module kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlconcat_0_0
   (In0,
    In1,
    dout);
  input [0:0]In0;
  input [0:0]In1;
  output [1:0]dout;

  wire [0:0]In0;
  wire [0:0]In1;

  assign dout[1] = In1;
  assign dout[0] = In0;
endmodule

(* CHECK_LICENSE_TYPE = "bd_4503_xlconcat_10_0,xlconcat_v2_1_5_xlconcat,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "bd_4503_xlconcat_10_0" *) 
(* X_CORE_INFO = "xlconcat_v2_1_5_xlconcat,Vivado 2023.2" *) 
module kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlconcat_10_0
   (In0,
    In1,
    dout);
  input [0:0]In0;
  input [0:0]In1;
  output [1:0]dout;

  wire [0:0]In0;
  wire [0:0]In1;

  assign dout[1] = In1;
  assign dout[0] = In0;
endmodule

(* CHECK_LICENSE_TYPE = "bd_4503_xlconcat_11_0,xlconcat_v2_1_5_xlconcat,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "bd_4503_xlconcat_11_0" *) 
(* X_CORE_INFO = "xlconcat_v2_1_5_xlconcat,Vivado 2023.2" *) 
module kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlconcat_11_0
   (In0,
    In1,
    dout);
  input [0:0]In0;
  input [0:0]In1;
  output [1:0]dout;

  wire [0:0]In0;
  wire [0:0]In1;

  assign dout[1] = In1;
  assign dout[0] = In0;
endmodule

(* CHECK_LICENSE_TYPE = "bd_4503_xlconcat_12_0,xlconcat_v2_1_5_xlconcat,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "bd_4503_xlconcat_12_0" *) 
(* X_CORE_INFO = "xlconcat_v2_1_5_xlconcat,Vivado 2023.2" *) 
module kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlconcat_12_0
   (In0,
    In1,
    dout);
  input [0:0]In0;
  input [0:0]In1;
  output [1:0]dout;

  wire [0:0]In0;
  wire [0:0]In1;

  assign dout[1] = In1;
  assign dout[0] = In0;
endmodule

(* CHECK_LICENSE_TYPE = "bd_4503_xlconcat_13_0,xlconcat_v2_1_5_xlconcat,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "bd_4503_xlconcat_13_0" *) 
(* X_CORE_INFO = "xlconcat_v2_1_5_xlconcat,Vivado 2023.2" *) 
module kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlconcat_13_0
   (In0,
    In1,
    dout);
  input [0:0]In0;
  input [0:0]In1;
  output [1:0]dout;

  wire [0:0]In0;
  wire [0:0]In1;

  assign dout[1] = In1;
  assign dout[0] = In0;
endmodule

(* CHECK_LICENSE_TYPE = "bd_4503_xlconcat_14_0,xlconcat_v2_1_5_xlconcat,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "bd_4503_xlconcat_14_0" *) 
(* X_CORE_INFO = "xlconcat_v2_1_5_xlconcat,Vivado 2023.2" *) 
module kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlconcat_14_0
   (In0,
    In1,
    dout);
  input [0:0]In0;
  input [0:0]In1;
  output [1:0]dout;

  wire [0:0]In0;
  wire [0:0]In1;

  assign dout[1] = In1;
  assign dout[0] = In0;
endmodule

(* CHECK_LICENSE_TYPE = "bd_4503_xlconcat_15_0,xlconcat_v2_1_5_xlconcat,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "bd_4503_xlconcat_15_0" *) 
(* X_CORE_INFO = "xlconcat_v2_1_5_xlconcat,Vivado 2023.2" *) 
module kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlconcat_15_0
   (In0,
    In1,
    dout);
  input [0:0]In0;
  input [0:0]In1;
  output [1:0]dout;

  wire [0:0]In0;
  wire [0:0]In1;

  assign dout[1] = In1;
  assign dout[0] = In0;
endmodule

(* CHECK_LICENSE_TYPE = "bd_4503_xlconcat_16_0,xlconcat_v2_1_5_xlconcat,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "bd_4503_xlconcat_16_0" *) 
(* X_CORE_INFO = "xlconcat_v2_1_5_xlconcat,Vivado 2023.2" *) 
module kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlconcat_16_0
   (In0,
    In1,
    dout);
  input [0:0]In0;
  input [0:0]In1;
  output [1:0]dout;

  wire [0:0]In0;
  wire [0:0]In1;

  assign dout[1] = In1;
  assign dout[0] = In0;
endmodule

(* CHECK_LICENSE_TYPE = "bd_4503_xlconcat_17_0,xlconcat_v2_1_5_xlconcat,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "bd_4503_xlconcat_17_0" *) 
(* X_CORE_INFO = "xlconcat_v2_1_5_xlconcat,Vivado 2023.2" *) 
module kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlconcat_17_0
   (In0,
    In1,
    dout);
  input [31:0]In0;
  input [31:0]In1;
  output [63:0]dout;

  wire [31:0]In0;
  wire [31:0]In1;

  assign dout[63:32] = In1;
  assign dout[31:0] = In0;
endmodule

(* CHECK_LICENSE_TYPE = "bd_4503_xlconcat_18_0,xlconcat_v2_1_5_xlconcat,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "bd_4503_xlconcat_18_0" *) 
(* X_CORE_INFO = "xlconcat_v2_1_5_xlconcat,Vivado 2023.2" *) 
module kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlconcat_18_0
   (In0,
    In1,
    dout);
  input [0:0]In0;
  input [0:0]In1;
  output [1:0]dout;

  wire [0:0]In0;
  wire [0:0]In1;

  assign dout[1] = In1;
  assign dout[0] = In0;
endmodule

(* CHECK_LICENSE_TYPE = "bd_4503_xlconcat_19_0,xlconcat_v2_1_5_xlconcat,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "bd_4503_xlconcat_19_0" *) 
(* X_CORE_INFO = "xlconcat_v2_1_5_xlconcat,Vivado 2023.2" *) 
module kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlconcat_19_0
   (In0,
    In1,
    dout);
  input [0:0]In0;
  input [0:0]In1;
  output [1:0]dout;

  wire [0:0]In0;
  wire [0:0]In1;

  assign dout[1] = In1;
  assign dout[0] = In0;
endmodule

(* CHECK_LICENSE_TYPE = "bd_4503_xlconcat_1_0,xlconcat_v2_1_5_xlconcat,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "bd_4503_xlconcat_1_0" *) 
(* X_CORE_INFO = "xlconcat_v2_1_5_xlconcat,Vivado 2023.2" *) 
module kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlconcat_1_0
   (In0,
    In1,
    dout);
  input [7:0]In0;
  input [7:0]In1;
  output [15:0]dout;

  wire [7:0]In0;
  wire [7:0]In1;

  assign dout[15:8] = In1;
  assign dout[7:0] = In0;
endmodule

(* CHECK_LICENSE_TYPE = "bd_4503_xlconcat_20_0,xlconcat_v2_1_5_xlconcat,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "bd_4503_xlconcat_20_0" *) 
(* X_CORE_INFO = "xlconcat_v2_1_5_xlconcat,Vivado 2023.2" *) 
module kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlconcat_20_0
   (In0,
    In1,
    dout);
  input [511:0]In0;
  input [511:0]In1;
  output [1023:0]dout;

  wire [511:0]In0;
  wire [511:0]In1;

  assign dout[1023:512] = In1;
  assign dout[511:0] = In0;
endmodule

(* CHECK_LICENSE_TYPE = "bd_4503_xlconcat_22_0,xlconcat_v2_1_5_xlconcat,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "bd_4503_xlconcat_22_0" *) 
(* X_CORE_INFO = "xlconcat_v2_1_5_xlconcat,Vivado 2023.2" *) 
module kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlconcat_22_0
   (In0,
    In1,
    dout);
  input [0:0]In0;
  input [126:0]In1;
  output [127:0]dout;

  wire \<const0> ;
  wire [0:0]In0;

  assign dout[127] = \<const0> ;
  assign dout[126] = \<const0> ;
  assign dout[125] = \<const0> ;
  assign dout[124] = \<const0> ;
  assign dout[123] = \<const0> ;
  assign dout[122] = \<const0> ;
  assign dout[121] = \<const0> ;
  assign dout[120] = \<const0> ;
  assign dout[119] = \<const0> ;
  assign dout[118] = \<const0> ;
  assign dout[117] = \<const0> ;
  assign dout[116] = \<const0> ;
  assign dout[115] = \<const0> ;
  assign dout[114] = \<const0> ;
  assign dout[113] = \<const0> ;
  assign dout[112] = \<const0> ;
  assign dout[111] = \<const0> ;
  assign dout[110] = \<const0> ;
  assign dout[109] = \<const0> ;
  assign dout[108] = \<const0> ;
  assign dout[107] = \<const0> ;
  assign dout[106] = \<const0> ;
  assign dout[105] = \<const0> ;
  assign dout[104] = \<const0> ;
  assign dout[103] = \<const0> ;
  assign dout[102] = \<const0> ;
  assign dout[101] = \<const0> ;
  assign dout[100] = \<const0> ;
  assign dout[99] = \<const0> ;
  assign dout[98] = \<const0> ;
  assign dout[97] = \<const0> ;
  assign dout[96] = \<const0> ;
  assign dout[95] = \<const0> ;
  assign dout[94] = \<const0> ;
  assign dout[93] = \<const0> ;
  assign dout[92] = \<const0> ;
  assign dout[91] = \<const0> ;
  assign dout[90] = \<const0> ;
  assign dout[89] = \<const0> ;
  assign dout[88] = \<const0> ;
  assign dout[87] = \<const0> ;
  assign dout[86] = \<const0> ;
  assign dout[85] = \<const0> ;
  assign dout[84] = \<const0> ;
  assign dout[83] = \<const0> ;
  assign dout[82] = \<const0> ;
  assign dout[81] = \<const0> ;
  assign dout[80] = \<const0> ;
  assign dout[79] = \<const0> ;
  assign dout[78] = \<const0> ;
  assign dout[77] = \<const0> ;
  assign dout[76] = \<const0> ;
  assign dout[75] = \<const0> ;
  assign dout[74] = \<const0> ;
  assign dout[73] = \<const0> ;
  assign dout[72] = \<const0> ;
  assign dout[71] = \<const0> ;
  assign dout[70] = \<const0> ;
  assign dout[69] = \<const0> ;
  assign dout[68] = \<const0> ;
  assign dout[67] = \<const0> ;
  assign dout[66] = \<const0> ;
  assign dout[65] = \<const0> ;
  assign dout[64] = \<const0> ;
  assign dout[63] = \<const0> ;
  assign dout[62] = \<const0> ;
  assign dout[61] = \<const0> ;
  assign dout[60] = \<const0> ;
  assign dout[59] = \<const0> ;
  assign dout[58] = \<const0> ;
  assign dout[57] = \<const0> ;
  assign dout[56] = \<const0> ;
  assign dout[55] = \<const0> ;
  assign dout[54] = \<const0> ;
  assign dout[53] = \<const0> ;
  assign dout[52] = \<const0> ;
  assign dout[51] = \<const0> ;
  assign dout[50] = \<const0> ;
  assign dout[49] = \<const0> ;
  assign dout[48] = \<const0> ;
  assign dout[47] = \<const0> ;
  assign dout[46] = \<const0> ;
  assign dout[45] = \<const0> ;
  assign dout[44] = \<const0> ;
  assign dout[43] = \<const0> ;
  assign dout[42] = \<const0> ;
  assign dout[41] = \<const0> ;
  assign dout[40] = \<const0> ;
  assign dout[39] = \<const0> ;
  assign dout[38] = \<const0> ;
  assign dout[37] = \<const0> ;
  assign dout[36] = \<const0> ;
  assign dout[35] = \<const0> ;
  assign dout[34] = \<const0> ;
  assign dout[33] = \<const0> ;
  assign dout[32] = \<const0> ;
  assign dout[31] = \<const0> ;
  assign dout[30] = \<const0> ;
  assign dout[29] = \<const0> ;
  assign dout[28] = \<const0> ;
  assign dout[27] = \<const0> ;
  assign dout[26] = \<const0> ;
  assign dout[25] = \<const0> ;
  assign dout[24] = \<const0> ;
  assign dout[23] = \<const0> ;
  assign dout[22] = \<const0> ;
  assign dout[21] = \<const0> ;
  assign dout[20] = \<const0> ;
  assign dout[19] = \<const0> ;
  assign dout[18] = \<const0> ;
  assign dout[17] = \<const0> ;
  assign dout[16] = \<const0> ;
  assign dout[15] = \<const0> ;
  assign dout[14] = \<const0> ;
  assign dout[13] = \<const0> ;
  assign dout[12] = \<const0> ;
  assign dout[11] = \<const0> ;
  assign dout[10] = \<const0> ;
  assign dout[9] = \<const0> ;
  assign dout[8] = \<const0> ;
  assign dout[7] = \<const0> ;
  assign dout[6] = \<const0> ;
  assign dout[5] = \<const0> ;
  assign dout[4] = \<const0> ;
  assign dout[3] = \<const0> ;
  assign dout[2] = \<const0> ;
  assign dout[1] = \<const0> ;
  assign dout[0] = In0;
  GND GND
       (.G(\<const0> ));
endmodule

(* CHECK_LICENSE_TYPE = "bd_4503_xlconcat_23_0,xlconcat_v2_1_5_xlconcat,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "bd_4503_xlconcat_23_0" *) 
(* X_CORE_INFO = "xlconcat_v2_1_5_xlconcat,Vivado 2023.2" *) 
module kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlconcat_23_0
   (In0,
    In1,
    dout);
  input [0:0]In0;
  input [126:0]In1;
  output [127:0]dout;

  wire \<const0> ;
  wire [0:0]In0;

  assign dout[127] = \<const0> ;
  assign dout[126] = \<const0> ;
  assign dout[125] = \<const0> ;
  assign dout[124] = \<const0> ;
  assign dout[123] = \<const0> ;
  assign dout[122] = \<const0> ;
  assign dout[121] = \<const0> ;
  assign dout[120] = \<const0> ;
  assign dout[119] = \<const0> ;
  assign dout[118] = \<const0> ;
  assign dout[117] = \<const0> ;
  assign dout[116] = \<const0> ;
  assign dout[115] = \<const0> ;
  assign dout[114] = \<const0> ;
  assign dout[113] = \<const0> ;
  assign dout[112] = \<const0> ;
  assign dout[111] = \<const0> ;
  assign dout[110] = \<const0> ;
  assign dout[109] = \<const0> ;
  assign dout[108] = \<const0> ;
  assign dout[107] = \<const0> ;
  assign dout[106] = \<const0> ;
  assign dout[105] = \<const0> ;
  assign dout[104] = \<const0> ;
  assign dout[103] = \<const0> ;
  assign dout[102] = \<const0> ;
  assign dout[101] = \<const0> ;
  assign dout[100] = \<const0> ;
  assign dout[99] = \<const0> ;
  assign dout[98] = \<const0> ;
  assign dout[97] = \<const0> ;
  assign dout[96] = \<const0> ;
  assign dout[95] = \<const0> ;
  assign dout[94] = \<const0> ;
  assign dout[93] = \<const0> ;
  assign dout[92] = \<const0> ;
  assign dout[91] = \<const0> ;
  assign dout[90] = \<const0> ;
  assign dout[89] = \<const0> ;
  assign dout[88] = \<const0> ;
  assign dout[87] = \<const0> ;
  assign dout[86] = \<const0> ;
  assign dout[85] = \<const0> ;
  assign dout[84] = \<const0> ;
  assign dout[83] = \<const0> ;
  assign dout[82] = \<const0> ;
  assign dout[81] = \<const0> ;
  assign dout[80] = \<const0> ;
  assign dout[79] = \<const0> ;
  assign dout[78] = \<const0> ;
  assign dout[77] = \<const0> ;
  assign dout[76] = \<const0> ;
  assign dout[75] = \<const0> ;
  assign dout[74] = \<const0> ;
  assign dout[73] = \<const0> ;
  assign dout[72] = \<const0> ;
  assign dout[71] = \<const0> ;
  assign dout[70] = \<const0> ;
  assign dout[69] = \<const0> ;
  assign dout[68] = \<const0> ;
  assign dout[67] = \<const0> ;
  assign dout[66] = \<const0> ;
  assign dout[65] = \<const0> ;
  assign dout[64] = \<const0> ;
  assign dout[63] = \<const0> ;
  assign dout[62] = \<const0> ;
  assign dout[61] = \<const0> ;
  assign dout[60] = \<const0> ;
  assign dout[59] = \<const0> ;
  assign dout[58] = \<const0> ;
  assign dout[57] = \<const0> ;
  assign dout[56] = \<const0> ;
  assign dout[55] = \<const0> ;
  assign dout[54] = \<const0> ;
  assign dout[53] = \<const0> ;
  assign dout[52] = \<const0> ;
  assign dout[51] = \<const0> ;
  assign dout[50] = \<const0> ;
  assign dout[49] = \<const0> ;
  assign dout[48] = \<const0> ;
  assign dout[47] = \<const0> ;
  assign dout[46] = \<const0> ;
  assign dout[45] = \<const0> ;
  assign dout[44] = \<const0> ;
  assign dout[43] = \<const0> ;
  assign dout[42] = \<const0> ;
  assign dout[41] = \<const0> ;
  assign dout[40] = \<const0> ;
  assign dout[39] = \<const0> ;
  assign dout[38] = \<const0> ;
  assign dout[37] = \<const0> ;
  assign dout[36] = \<const0> ;
  assign dout[35] = \<const0> ;
  assign dout[34] = \<const0> ;
  assign dout[33] = \<const0> ;
  assign dout[32] = \<const0> ;
  assign dout[31] = \<const0> ;
  assign dout[30] = \<const0> ;
  assign dout[29] = \<const0> ;
  assign dout[28] = \<const0> ;
  assign dout[27] = \<const0> ;
  assign dout[26] = \<const0> ;
  assign dout[25] = \<const0> ;
  assign dout[24] = \<const0> ;
  assign dout[23] = \<const0> ;
  assign dout[22] = \<const0> ;
  assign dout[21] = \<const0> ;
  assign dout[20] = \<const0> ;
  assign dout[19] = \<const0> ;
  assign dout[18] = \<const0> ;
  assign dout[17] = \<const0> ;
  assign dout[16] = \<const0> ;
  assign dout[15] = \<const0> ;
  assign dout[14] = \<const0> ;
  assign dout[13] = \<const0> ;
  assign dout[12] = \<const0> ;
  assign dout[11] = \<const0> ;
  assign dout[10] = \<const0> ;
  assign dout[9] = \<const0> ;
  assign dout[8] = \<const0> ;
  assign dout[7] = \<const0> ;
  assign dout[6] = \<const0> ;
  assign dout[5] = \<const0> ;
  assign dout[4] = \<const0> ;
  assign dout[3] = \<const0> ;
  assign dout[2] = \<const0> ;
  assign dout[1] = \<const0> ;
  assign dout[0] = In0;
  GND GND
       (.G(\<const0> ));
endmodule

(* CHECK_LICENSE_TYPE = "bd_4503_xlconcat_24_0,xlconcat_v2_1_5_xlconcat,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "bd_4503_xlconcat_24_0" *) 
(* X_CORE_INFO = "xlconcat_v2_1_5_xlconcat,Vivado 2023.2" *) 
module kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlconcat_24_0
   (In0,
    In1,
    dout);
  input [0:0]In0;
  input [0:0]In1;
  output [1:0]dout;

  wire [0:0]In0;
  wire [0:0]In1;

  assign dout[1] = In1;
  assign dout[0] = In0;
endmodule

(* CHECK_LICENSE_TYPE = "bd_4503_xlconcat_25_0,xlconcat_v2_1_5_xlconcat,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "bd_4503_xlconcat_25_0" *) 
(* X_CORE_INFO = "xlconcat_v2_1_5_xlconcat,Vivado 2023.2" *) 
module kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlconcat_25_0
   (In0,
    In1,
    dout);
  input [0:0]In0;
  input [0:0]In1;
  output [1:0]dout;

  wire [0:0]In0;
  wire [0:0]In1;

  assign dout[1] = In1;
  assign dout[0] = In0;
endmodule

(* CHECK_LICENSE_TYPE = "bd_4503_xlconcat_2_0,xlconcat_v2_1_5_xlconcat,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "bd_4503_xlconcat_2_0" *) 
(* X_CORE_INFO = "xlconcat_v2_1_5_xlconcat,Vivado 2023.2" *) 
module kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlconcat_2_0
   (In0,
    In1,
    dout);
  input [0:0]In0;
  input [0:0]In1;
  output [1:0]dout;

  wire [0:0]In0;
  wire [0:0]In1;

  assign dout[1] = In1;
  assign dout[0] = In0;
endmodule

(* CHECK_LICENSE_TYPE = "bd_4503_xlconcat_3_0,xlconcat_v2_1_5_xlconcat,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "bd_4503_xlconcat_3_0" *) 
(* X_CORE_INFO = "xlconcat_v2_1_5_xlconcat,Vivado 2023.2" *) 
module kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlconcat_3_0
   (In0,
    In1,
    dout);
  input [0:0]In0;
  input [0:0]In1;
  output [1:0]dout;

  wire [0:0]In0;
  wire [0:0]In1;

  assign dout[1] = In1;
  assign dout[0] = In0;
endmodule

(* CHECK_LICENSE_TYPE = "bd_4503_xlconcat_4_0,xlconcat_v2_1_5_xlconcat,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "bd_4503_xlconcat_4_0" *) 
(* X_CORE_INFO = "xlconcat_v2_1_5_xlconcat,Vivado 2023.2" *) 
module kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlconcat_4_0
   (In0,
    In1,
    dout);
  input [0:0]In0;
  input [0:0]In1;
  output [1:0]dout;

  wire [0:0]In0;
  wire [0:0]In1;

  assign dout[1] = In1;
  assign dout[0] = In0;
endmodule

(* CHECK_LICENSE_TYPE = "bd_4503_xlconcat_5_0,xlconcat_v2_1_5_xlconcat,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "bd_4503_xlconcat_5_0" *) 
(* X_CORE_INFO = "xlconcat_v2_1_5_xlconcat,Vivado 2023.2" *) 
module kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlconcat_5_0
   (In0,
    In1,
    dout);
  input [0:0]In0;
  input [0:0]In1;
  output [1:0]dout;

  wire [0:0]In0;
  wire [0:0]In1;

  assign dout[1] = In1;
  assign dout[0] = In0;
endmodule

(* CHECK_LICENSE_TYPE = "bd_4503_xlconcat_6_0,xlconcat_v2_1_5_xlconcat,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "bd_4503_xlconcat_6_0" *) 
(* X_CORE_INFO = "xlconcat_v2_1_5_xlconcat,Vivado 2023.2" *) 
module kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlconcat_6_0
   (In0,
    In1,
    dout);
  input [7:0]In0;
  input [7:0]In1;
  output [15:0]dout;

  wire [7:0]In0;
  wire [7:0]In1;

  assign dout[15:8] = In1;
  assign dout[7:0] = In0;
endmodule

(* CHECK_LICENSE_TYPE = "bd_4503_xlconcat_7_0,xlconcat_v2_1_5_xlconcat,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "bd_4503_xlconcat_7_0" *) 
(* X_CORE_INFO = "xlconcat_v2_1_5_xlconcat,Vivado 2023.2" *) 
module kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlconcat_7_0
   (In0,
    In1,
    dout);
  input [0:0]In0;
  input [0:0]In1;
  output [1:0]dout;

  wire [0:0]In0;
  wire [0:0]In1;

  assign dout[1] = In1;
  assign dout[0] = In0;
endmodule

(* CHECK_LICENSE_TYPE = "bd_4503_xlconcat_8_0,xlconcat_v2_1_5_xlconcat,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "bd_4503_xlconcat_8_0" *) 
(* X_CORE_INFO = "xlconcat_v2_1_5_xlconcat,Vivado 2023.2" *) 
module kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlconcat_8_0
   (In0,
    In1,
    dout);
  input [0:0]In0;
  input [0:0]In1;
  output [1:0]dout;

  wire [0:0]In0;
  wire [0:0]In1;

  assign dout[1] = In1;
  assign dout[0] = In0;
endmodule

(* CHECK_LICENSE_TYPE = "bd_4503_xlconcat_9_0,xlconcat_v2_1_5_xlconcat,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "bd_4503_xlconcat_9_0" *) 
(* X_CORE_INFO = "xlconcat_v2_1_5_xlconcat,Vivado 2023.2" *) 
module kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlconcat_9_0
   (In0,
    In1,
    dout);
  input [0:0]In0;
  input [0:0]In1;
  output [1:0]dout;

  wire [0:0]In0;
  wire [0:0]In1;

  assign dout[1] = In1;
  assign dout[0] = In0;
endmodule

(* CHECK_LICENSE_TYPE = "bd_4503_xlslice_0_0,xlslice_v1_0_3_xlslice,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "bd_4503_xlslice_0_0" *) 
(* X_CORE_INFO = "xlslice_v1_0_3_xlslice,Vivado 2023.2" *) 
module kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlslice_0_0
   (Din,
    Dout);
  input [15:0]Din;
  output [7:0]Dout;

  wire [15:0]Din;

  assign Dout[7:0] = Din[7:0];
endmodule

(* CHECK_LICENSE_TYPE = "bd_4503_xlslice_10_0,xlslice_v1_0_3_xlslice,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "bd_4503_xlslice_10_0" *) 
(* X_CORE_INFO = "xlslice_v1_0_3_xlslice,Vivado 2023.2" *) 
module kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlslice_10_0
   (Din,
    Dout);
  input [1:0]Din;
  output [0:0]Dout;

  wire [1:0]Din;

  assign Dout[0] = Din[0];
endmodule

(* CHECK_LICENSE_TYPE = "bd_4503_xlslice_11_0,xlslice_v1_0_3_xlslice,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "bd_4503_xlslice_11_0" *) 
(* X_CORE_INFO = "xlslice_v1_0_3_xlslice,Vivado 2023.2" *) 
module kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlslice_11_0
   (Din,
    Dout);
  input [1:0]Din;
  output [0:0]Dout;

  wire [1:0]Din;

  assign Dout[0] = Din[1];
endmodule

(* CHECK_LICENSE_TYPE = "bd_4503_xlslice_12_0,xlslice_v1_0_3_xlslice,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "bd_4503_xlslice_12_0" *) 
(* X_CORE_INFO = "xlslice_v1_0_3_xlslice,Vivado 2023.2" *) 
module kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlslice_12_0
   (Din,
    Dout);
  input [1:0]Din;
  output [0:0]Dout;

  wire [1:0]Din;

  assign Dout[0] = Din[0];
endmodule

(* CHECK_LICENSE_TYPE = "bd_4503_xlslice_13_0,xlslice_v1_0_3_xlslice,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "bd_4503_xlslice_13_0" *) 
(* X_CORE_INFO = "xlslice_v1_0_3_xlslice,Vivado 2023.2" *) 
module kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlslice_13_0
   (Din,
    Dout);
  input [1:0]Din;
  output [0:0]Dout;

  wire [1:0]Din;

  assign Dout[0] = Din[1];
endmodule

(* CHECK_LICENSE_TYPE = "bd_4503_xlslice_14_0,xlslice_v1_0_3_xlslice,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "bd_4503_xlslice_14_0" *) 
(* X_CORE_INFO = "xlslice_v1_0_3_xlslice,Vivado 2023.2" *) 
module kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlslice_14_0
   (Din,
    Dout);
  input [1:0]Din;
  output [0:0]Dout;

  wire [1:0]Din;

  assign Dout[0] = Din[0];
endmodule

(* CHECK_LICENSE_TYPE = "bd_4503_xlslice_15_0,xlslice_v1_0_3_xlslice,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "bd_4503_xlslice_15_0" *) 
(* X_CORE_INFO = "xlslice_v1_0_3_xlslice,Vivado 2023.2" *) 
module kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlslice_15_0
   (Din,
    Dout);
  input [1:0]Din;
  output [0:0]Dout;

  wire [1:0]Din;

  assign Dout[0] = Din[1];
endmodule

(* CHECK_LICENSE_TYPE = "bd_4503_xlslice_16_0,xlslice_v1_0_3_xlslice,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "bd_4503_xlslice_16_0" *) 
(* X_CORE_INFO = "xlslice_v1_0_3_xlslice,Vivado 2023.2" *) 
module kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlslice_16_0
   (Din,
    Dout);
  input [1:0]Din;
  output [0:0]Dout;

  wire [1:0]Din;

  assign Dout[0] = Din[0];
endmodule

(* CHECK_LICENSE_TYPE = "bd_4503_xlslice_17_0,xlslice_v1_0_3_xlslice,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "bd_4503_xlslice_17_0" *) 
(* X_CORE_INFO = "xlslice_v1_0_3_xlslice,Vivado 2023.2" *) 
module kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlslice_17_0
   (Din,
    Dout);
  input [1:0]Din;
  output [0:0]Dout;

  wire [1:0]Din;

  assign Dout[0] = Din[1];
endmodule

(* CHECK_LICENSE_TYPE = "bd_4503_xlslice_18_0,xlslice_v1_0_3_xlslice,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "bd_4503_xlslice_18_0" *) 
(* X_CORE_INFO = "xlslice_v1_0_3_xlslice,Vivado 2023.2" *) 
module kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlslice_18_0
   (Din,
    Dout);
  input [1:0]Din;
  output [0:0]Dout;

  wire [1:0]Din;

  assign Dout[0] = Din[0];
endmodule

(* CHECK_LICENSE_TYPE = "bd_4503_xlslice_19_0,xlslice_v1_0_3_xlslice,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "bd_4503_xlslice_19_0" *) 
(* X_CORE_INFO = "xlslice_v1_0_3_xlslice,Vivado 2023.2" *) 
module kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlslice_19_0
   (Din,
    Dout);
  input [1:0]Din;
  output [0:0]Dout;

  wire [1:0]Din;

  assign Dout[0] = Din[1];
endmodule

(* CHECK_LICENSE_TYPE = "bd_4503_xlslice_1_0,xlslice_v1_0_3_xlslice,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "bd_4503_xlslice_1_0" *) 
(* X_CORE_INFO = "xlslice_v1_0_3_xlslice,Vivado 2023.2" *) 
module kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlslice_1_0
   (Din,
    Dout);
  input [15:0]Din;
  output [7:0]Dout;

  wire [15:0]Din;

  assign Dout[7:0] = Din[15:8];
endmodule

(* CHECK_LICENSE_TYPE = "bd_4503_xlslice_20_0,xlslice_v1_0_3_xlslice,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "bd_4503_xlslice_20_0" *) 
(* X_CORE_INFO = "xlslice_v1_0_3_xlslice,Vivado 2023.2" *) 
module kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlslice_20_0
   (Din,
    Dout);
  input [1:0]Din;
  output [0:0]Dout;

  wire [1:0]Din;

  assign Dout[0] = Din[0];
endmodule

(* CHECK_LICENSE_TYPE = "bd_4503_xlslice_21_0,xlslice_v1_0_3_xlslice,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "bd_4503_xlslice_21_0" *) 
(* X_CORE_INFO = "xlslice_v1_0_3_xlslice,Vivado 2023.2" *) 
module kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlslice_21_0
   (Din,
    Dout);
  input [1:0]Din;
  output [0:0]Dout;

  wire [1:0]Din;

  assign Dout[0] = Din[1];
endmodule

(* CHECK_LICENSE_TYPE = "bd_4503_xlslice_22_0,xlslice_v1_0_3_xlslice,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "bd_4503_xlslice_22_0" *) 
(* X_CORE_INFO = "xlslice_v1_0_3_xlslice,Vivado 2023.2" *) 
module kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlslice_22_0
   (Din,
    Dout);
  input [17:0]Din;
  output [16:0]Dout;

  wire [17:0]Din;

  assign Dout[16:0] = Din[16:0];
endmodule

(* CHECK_LICENSE_TYPE = "bd_4503_xlslice_23_0,xlslice_v1_0_3_xlslice,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "bd_4503_xlslice_23_0" *) 
(* X_CORE_INFO = "xlslice_v1_0_3_xlslice,Vivado 2023.2" *) 
module kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlslice_23_0
   (Din,
    Dout);
  input [31:0]Din;
  output [15:0]Dout;

  wire [31:0]Din;

  assign Dout[15:0] = Din[15:0];
endmodule

(* CHECK_LICENSE_TYPE = "bd_4503_xlslice_24_0,xlslice_v1_0_3_xlslice,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "bd_4503_xlslice_24_0" *) 
(* X_CORE_INFO = "xlslice_v1_0_3_xlslice,Vivado 2023.2" *) 
module kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlslice_24_0
   (Din,
    Dout);
  input [31:0]Din;
  output [15:0]Dout;

  wire [31:0]Din;

  assign Dout[15:0] = Din[31:16];
endmodule

(* CHECK_LICENSE_TYPE = "bd_4503_xlslice_25_0,xlslice_v1_0_3_xlslice,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "bd_4503_xlslice_25_0" *) 
(* X_CORE_INFO = "xlslice_v1_0_3_xlslice,Vivado 2023.2" *) 
module kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlslice_25_0
   (Din,
    Dout);
  input [511:0]Din;
  output [31:0]Dout;

  wire [511:0]Din;

  assign Dout[31:0] = Din[31:0];
endmodule

(* CHECK_LICENSE_TYPE = "bd_4503_xlslice_26_0,xlslice_v1_0_3_xlslice,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "bd_4503_xlslice_26_0" *) 
(* X_CORE_INFO = "xlslice_v1_0_3_xlslice,Vivado 2023.2" *) 
module kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlslice_26_0
   (Din,
    Dout);
  input [511:0]Din;
  output [31:0]Dout;

  wire [511:0]Din;

  assign Dout[31:0] = Din[31:0];
endmodule

(* CHECK_LICENSE_TYPE = "bd_4503_xlslice_2_0,xlslice_v1_0_3_xlslice,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "bd_4503_xlslice_2_0" *) 
(* X_CORE_INFO = "xlslice_v1_0_3_xlslice,Vivado 2023.2" *) 
module kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlslice_2_0
   (Din,
    Dout);
  input [1:0]Din;
  output [0:0]Dout;

  wire [1:0]Din;

  assign Dout[0] = Din[0];
endmodule

(* CHECK_LICENSE_TYPE = "bd_4503_xlslice_3_0,xlslice_v1_0_3_xlslice,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "bd_4503_xlslice_3_0" *) 
(* X_CORE_INFO = "xlslice_v1_0_3_xlslice,Vivado 2023.2" *) 
module kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlslice_3_0
   (Din,
    Dout);
  input [1:0]Din;
  output [0:0]Dout;

  wire [1:0]Din;

  assign Dout[0] = Din[1];
endmodule

(* CHECK_LICENSE_TYPE = "bd_4503_xlslice_4_0,xlslice_v1_0_3_xlslice,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "bd_4503_xlslice_4_0" *) 
(* X_CORE_INFO = "xlslice_v1_0_3_xlslice,Vivado 2023.2" *) 
module kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlslice_4_0
   (Din,
    Dout);
  input [1:0]Din;
  output [0:0]Dout;

  wire [1:0]Din;

  assign Dout[0] = Din[0];
endmodule

(* CHECK_LICENSE_TYPE = "bd_4503_xlslice_5_0,xlslice_v1_0_3_xlslice,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "bd_4503_xlslice_5_0" *) 
(* X_CORE_INFO = "xlslice_v1_0_3_xlslice,Vivado 2023.2" *) 
module kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlslice_5_0
   (Din,
    Dout);
  input [1:0]Din;
  output [0:0]Dout;

  wire [1:0]Din;

  assign Dout[0] = Din[1];
endmodule

(* CHECK_LICENSE_TYPE = "bd_4503_xlslice_6_0,xlslice_v1_0_3_xlslice,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "bd_4503_xlslice_6_0" *) 
(* X_CORE_INFO = "xlslice_v1_0_3_xlslice,Vivado 2023.2" *) 
module kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlslice_6_0
   (Din,
    Dout);
  input [1:0]Din;
  output [0:0]Dout;

  wire [1:0]Din;

  assign Dout[0] = Din[0];
endmodule

(* CHECK_LICENSE_TYPE = "bd_4503_xlslice_7_0,xlslice_v1_0_3_xlslice,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "bd_4503_xlslice_7_0" *) 
(* X_CORE_INFO = "xlslice_v1_0_3_xlslice,Vivado 2023.2" *) 
module kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlslice_7_0
   (Din,
    Dout);
  input [1:0]Din;
  output [0:0]Dout;

  wire [1:0]Din;

  assign Dout[0] = Din[1];
endmodule

(* CHECK_LICENSE_TYPE = "bd_4503_xlslice_8_0,xlslice_v1_0_3_xlslice,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "bd_4503_xlslice_8_0" *) 
(* X_CORE_INFO = "xlslice_v1_0_3_xlslice,Vivado 2023.2" *) 
module kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlslice_8_0
   (Din,
    Dout);
  input [15:0]Din;
  output [7:0]Dout;

  wire [15:0]Din;

  assign Dout[7:0] = Din[7:0];
endmodule

(* CHECK_LICENSE_TYPE = "bd_4503_xlslice_9_0,xlslice_v1_0_3_xlslice,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "bd_4503_xlslice_9_0" *) 
(* X_CORE_INFO = "xlslice_v1_0_3_xlslice,Vivado 2023.2" *) 
module kr260_tsn_rs485pmod_my_tsn_ip_0_bd_4503_xlslice_9_0
   (Din,
    Dout);
  input [15:0]Din;
  output [7:0]Dout;

  wire [15:0]Din;

  assign Dout[7:0] = Din[15:8];
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
