//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_4503.bd
//Design : bd_4503
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_4503,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_4503,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=67,numReposBlks=67,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "kr260_tsn_rs485pmod_my_tsn_ip_0.hwdef" *) 
module bd_4503
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

  wire Net;
  wire glbl_rstn_0_1;
  wire gtx_clk_0_1;
  wire host_rxfifo_aclk_0_1;
  wire host_txfifo_aclk_0_1;
  wire refclk_0_1;
  wire [17:0]s_axi_0_1_ARADDR;
  wire s_axi_0_1_ARREADY;
  wire s_axi_0_1_ARVALID;
  wire [17:0]s_axi_0_1_AWADDR;
  wire s_axi_0_1_AWREADY;
  wire s_axi_0_1_AWVALID;
  wire s_axi_0_1_BREADY;
  wire [1:0]s_axi_0_1_BRESP;
  wire s_axi_0_1_BVALID;
  wire [31:0]s_axi_0_1_RDATA;
  wire s_axi_0_1_RREADY;
  wire [1:0]s_axi_0_1_RRESP;
  wire s_axi_0_1_RVALID;
  wire [31:0]s_axi_0_1_WDATA;
  wire s_axi_0_1_WREADY;
  wire s_axi_0_1_WVALID;
  wire s_axi_aclk_0_1;
  wire s_axi_aresetn_0_1;
  wire switch_core_top_0_INIT_DONE;
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
  wire [63:0]tsn_endpoint_block_0_ep_tadma_if_out;
  wire [2:1]tsn_endpoint_block_0_rx_enable;
  wire [2:1]tsn_endpoint_block_0_rx_mac_aclk;
  wire [2:1]tsn_endpoint_block_0_rx_reset;
  wire [2:1]tsn_endpoint_block_0_speedis100;
  wire tsn_endpoint_block_0_switch_cam_init_done;
  wire [511:0]tsn_endpoint_block_0_tsn_debug_hooks;
  wire [2:1]tsn_endpoint_block_0_tx_enable;
  wire [2:1]tsn_endpoint_block_0_tx_mac_aclk;
  wire [2:1]tsn_endpoint_block_0_tx_reset;
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
  wire tsn_endpoint_ethernet_mac_0_interrupt_ptp_rx_1;
  wire tsn_endpoint_ethernet_mac_0_interrupt_ptp_rx_2;
  wire tsn_endpoint_ethernet_mac_0_interrupt_ptp_tx_1;
  wire tsn_endpoint_ethernet_mac_0_interrupt_ptp_tx_2;
  wire [5:0]tsn_endpoint_ethernet_mac_0_m_axis_rx_ctl;
  wire [23:0]tsn_endpoint_ethernet_mac_0_m_axis_rx_tdata;
  wire [2:0]tsn_endpoint_ethernet_mac_0_m_axis_rx_tkeep;
  wire [2:0]tsn_endpoint_ethernet_mac_0_m_axis_rx_tlast;
  wire [2:0]tsn_endpoint_ethernet_mac_0_m_axis_rx_tuser;
  wire [2:0]tsn_endpoint_ethernet_mac_0_m_axis_rx_tvalid;
  wire tsn_endpoint_ethernet_mac_0_mac_irq_1;
  wire tsn_endpoint_ethernet_mac_0_mac_irq_2;
  wire [2:0]tsn_endpoint_ethernet_mac_0_mac_rx_clk;
  wire [2:0]tsn_endpoint_ethernet_mac_0_mac_tx_clk;
  wire [23:0]tsn_endpoint_ethernet_mac_0_macrx_pfc;
  wire [79:0]tsn_endpoint_ethernet_mac_0_ptp_current_time_sw;
  wire tsn_endpoint_ethernet_mac_0_ptp_timers_clk8k;
  wire [31:0]tsn_endpoint_ethernet_mac_0_ptp_timers_ns_field;
  wire [31:0]tsn_endpoint_ethernet_mac_0_ptp_timers_ns_field_1722;
  wire [47:0]tsn_endpoint_ethernet_mac_0_ptp_timers_s_field;
  wire [31:0]tsn_endpoint_ethernet_mac_0_ptp_timers_syntonised_nanosec_field;
  wire [47:0]tsn_endpoint_ethernet_mac_0_ptp_timers_syntonised_sec_field;
  wire [31:0]tsn_endpoint_ethernet_mac_0_rx_axis_be_TDATA;
  wire [2:0]tsn_endpoint_ethernet_mac_0_rx_axis_be_TDEST;
  wire [3:0]tsn_endpoint_ethernet_mac_0_rx_axis_be_TKEEP;
  wire tsn_endpoint_ethernet_mac_0_rx_axis_be_TLAST;
  wire tsn_endpoint_ethernet_mac_0_rx_axis_be_TREADY;
  wire [31:0]tsn_endpoint_ethernet_mac_0_rx_axis_be_TUSER;
  wire tsn_endpoint_ethernet_mac_0_rx_axis_be_TVALID;
  wire [31:0]tsn_endpoint_ethernet_mac_0_rx_axis_st_TDATA;
  wire [2:0]tsn_endpoint_ethernet_mac_0_rx_axis_st_TDEST;
  wire [3:0]tsn_endpoint_ethernet_mac_0_rx_axis_st_TKEEP;
  wire tsn_endpoint_ethernet_mac_0_rx_axis_st_TLAST;
  wire tsn_endpoint_ethernet_mac_0_rx_axis_st_TREADY;
  wire [31:0]tsn_endpoint_ethernet_mac_0_rx_axis_st_TUSER;
  wire tsn_endpoint_ethernet_mac_0_rx_axis_st_TVALID;
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
  wire tsn_endpoint_ethernet_mac_0_tsn_ep_scheduler_irq;
  wire tsn_endpoint_ethernet_mac_0_tsn_switch_scheduler_irq_1;
  wire tsn_endpoint_ethernet_mac_0_tsn_switch_scheduler_irq_2;
  wire [15:0]tsn_endpoint_ethernet_mac_0_tx_axis_mac_tdata;
  wire [1:0]tsn_endpoint_ethernet_mac_0_tx_axis_mac_tlast;
  wire [1:0]tsn_endpoint_ethernet_mac_0_tx_axis_mac_tuser;
  wire [1:0]tsn_endpoint_ethernet_mac_0_tx_axis_mac_tvalid;
  wire [15:0]tsn_endpoint_ethernet_mac_0_tx_axis_pmac_tdata;
  wire [1:0]tsn_endpoint_ethernet_mac_0_tx_axis_pmac_tlast;
  wire [1:0]tsn_endpoint_ethernet_mac_0_tx_axis_pmac_tuser;
  wire [1:0]tsn_endpoint_ethernet_mac_0_tx_axis_pmac_tvalid;
  wire [1:0]tsn_endpoint_ethernet_mac_0_tx_ptp_frame_allowed;
  wire tsn_temac_0_clk8k;
  wire tsn_temac_0_int_mgmt_host_reset_out;
  wire [31:0]tsn_temac_0_ip2bus_data;
  wire tsn_temac_0_ip2bus_error;
  wire tsn_temac_0_ip2bus_rdack;
  wire tsn_temac_0_ip2bus_wrack;
  wire tsn_temac_0_mdio_external_IO;
  wire tsn_temac_0_mdio_external_MDC;
  wire [511:0]tsn_temac_0_preemption_signal_vector;
  wire [3:0]tsn_temac_0_rgmii_RD;
  wire tsn_temac_0_rgmii_RXC;
  wire tsn_temac_0_rgmii_RX_CTL;
  wire [3:0]tsn_temac_0_rgmii_TD;
  wire tsn_temac_0_rgmii_TXC;
  wire tsn_temac_0_rgmii_TX_CTL;
  wire tsn_temac_0_rgmii_status_duplex_status;
  wire [1:0]tsn_temac_0_rgmii_status_link_speed;
  wire tsn_temac_0_rgmii_status_link_status;
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
  wire tsn_temac_1_interrupt_ptp_timer;
  wire tsn_temac_1_interrupt_ptp_tx;
  wire [31:0]tsn_temac_1_ip2bus_data;
  wire tsn_temac_1_ip2bus_error;
  wire tsn_temac_1_ip2bus_rdack;
  wire tsn_temac_1_ip2bus_wrack;
  wire [511:0]tsn_temac_1_mac_debug_out;
  wire tsn_temac_1_mdio_external_IO;
  wire tsn_temac_1_mdio_external_MDC;
  wire [511:0]tsn_temac_1_preemption_signal_vector;
  wire [3:0]tsn_temac_1_rgmii_RD;
  wire tsn_temac_1_rgmii_RXC;
  wire tsn_temac_1_rgmii_RX_CTL;
  wire [3:0]tsn_temac_1_rgmii_TD;
  wire tsn_temac_1_rgmii_TXC;
  wire tsn_temac_1_rgmii_TX_CTL;
  wire tsn_temac_1_rgmii_status_duplex_status;
  wire [1:0]tsn_temac_1_rgmii_status_link_speed;
  wire tsn_temac_1_rgmii_status_link_status;
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
  wire tsn_temac_1_rx_statistics_valid;
  wire tsn_temac_1_rx_statistics_valid_pmac;
  wire [27:0]tsn_temac_1_rx_statistics_vector;
  wire [27:0]tsn_temac_1_rx_statistics_vector_pmac;
  wire [127:0]tsn_temac_1_rx_ts_axis_tdata;
  wire [127:0]tsn_temac_1_rx_ts_axis_tdata_pmac;
  wire tsn_temac_1_rx_ts_axis_tvalid;
  wire tsn_temac_1_rx_ts_axis_tvalid_pmac;
  wire tsn_temac_1_speedis100;
  wire tsn_temac_1_tx_axis_mac_tready;
  wire tsn_temac_1_tx_axis_pmac_tready;
  wire tsn_temac_1_tx_enable;
  wire tsn_temac_1_tx_mac_aclk;
  wire tsn_temac_1_tx_ptp_frame_available;
  wire tsn_temac_1_tx_ptp_frame_granted_for_transmission;
  wire tsn_temac_1_tx_reset;
  wire [31:0]tsn_temac_1_tx_scheduler_internal_overhead_tsn;
  wire tsn_temac_1_tx_statistics_valid;
  wire tsn_temac_1_tx_statistics_valid_pmac;
  wire [31:0]tsn_temac_1_tx_statistics_vector;
  wire [31:0]tsn_temac_1_tx_statistics_vector_pmac;
  wire [127:0]tsn_temac_1_tx_ts_axis_tdata;
  wire [127:0]tsn_temac_1_tx_ts_axis_tdata_pmac;
  wire tsn_temac_1_tx_ts_axis_tvalid;
  wire tsn_temac_1_tx_ts_axis_tvalid_pmac;
  wire tsn_temac_2_interrupt_ptp_rx;
  wire tsn_temac_2_interrupt_ptp_tx;
  wire [511:0]tsn_temac_2_mac_debug_out;
  wire tsn_temac_2_rx_statistics_valid;
  wire tsn_temac_2_rx_statistics_valid_pmac;
  wire [27:0]tsn_temac_2_rx_statistics_vector;
  wire [27:0]tsn_temac_2_rx_statistics_vector_pmac;
  wire [127:0]tsn_temac_2_rx_ts_axis_tdata;
  wire [127:0]tsn_temac_2_rx_ts_axis_tdata_pmac;
  wire tsn_temac_2_rx_ts_axis_tvalid;
  wire tsn_temac_2_rx_ts_axis_tvalid_pmac;
  wire tsn_temac_2_tx_statistics_valid;
  wire tsn_temac_2_tx_statistics_valid_pmac;
  wire [31:0]tsn_temac_2_tx_statistics_vector;
  wire [31:0]tsn_temac_2_tx_statistics_vector_pmac;
  wire [127:0]tsn_temac_2_tx_ts_axis_tdata;
  wire [127:0]tsn_temac_2_tx_ts_axis_tdata_pmac;
  wire tsn_temac_2_tx_ts_axis_tvalid;
  wire tsn_temac_2_tx_ts_axis_tvalid_pmac;
  wire [31:0]tx_axis_be_0_1_TDATA;
  wire [3:0]tx_axis_be_0_1_TKEEP;
  wire tx_axis_be_0_1_TLAST;
  wire tx_axis_be_0_1_TREADY;
  wire tx_axis_be_0_1_TVALID;
  wire [31:0]tx_axis_st_0_1_TDATA;
  wire [3:0]tx_axis_st_0_1_TKEEP;
  wire tx_axis_st_0_1_TLAST;
  wire tx_axis_st_0_1_TREADY;
  wire tx_axis_st_0_1_TVALID;
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
  wire [0:0]xlconstant_0_dout;
  wire [126:0]xlconstant_10_dout;
  wire [0:0]xlconstant_1_dout;
  wire [7:0]xlconstant_2_dout;
  wire [47:0]xlconstant_3_dout;
  wire [31:0]xlconstant_4_dout;
  wire [47:0]xlconstant_5_dout;
  wire [31:0]xlconstant_6_dout;
  wire [15:0]xlconstant_7_dout;
  wire [0:0]xlconstant_8_dout;
  wire [7:0]xlslice_0_Dout;
  wire [0:0]xlslice_10_Dout;
  wire [0:0]xlslice_11_Dout;
  wire [127:0]xlslice_12_Dout;
  wire [0:0]xlslice_12_Dout1;
  wire [127:0]xlslice_13_Dout;
  wire [0:0]xlslice_13_Dout1;
  wire [0:0]xlslice_14_Dout;
  wire [0:0]xlslice_15_Dout;
  wire [0:0]xlslice_16_Dout;
  wire [0:0]xlslice_17_Dout;
  wire [0:0]xlslice_18_Dout;
  wire [0:0]xlslice_19_Dout;
  wire [7:0]xlslice_1_Dout;
  wire [0:0]xlslice_20_Dout;
  wire [0:0]xlslice_21_Dout;
  wire [16:0]xlslice_22_Dout;
  wire [15:0]xlslice_23_Dout;
  wire [15:0]xlslice_24_Dout;
  wire [31:0]xlslice_25_Dout;
  wire [31:0]xlslice_26_Dout;
  wire [0:0]xlslice_2_Dout;
  wire [0:0]xlslice_3_Dout;
  wire [0:0]xlslice_4_Dout;
  wire [0:0]xlslice_5_Dout;
  wire [0:0]xlslice_6_Dout;
  wire [0:0]xlslice_7_Dout;
  wire [7:0]xlslice_8_Dout;
  wire [7:0]xlslice_9_Dout;

  assign INIT_DONE = switch_core_top_0_INIT_DONE;
  assign ep_tadma_if_out[63:0] = tsn_endpoint_block_0_ep_tadma_if_out;
  assign glbl_rstn_0_1 = glbl_rstn;
  assign gtx_clk_0_1 = gtx_clk;
  assign host_rxfifo_aclk_0_1 = host_rxfifo_aclk;
  assign host_txfifo_aclk_0_1 = host_txfifo_aclk;
  assign interrupt_ptp_rx_1 = tsn_endpoint_ethernet_mac_0_interrupt_ptp_rx_1;
  assign interrupt_ptp_rx_2 = tsn_endpoint_ethernet_mac_0_interrupt_ptp_rx_2;
  assign interrupt_ptp_timer = tsn_temac_1_interrupt_ptp_timer;
  assign interrupt_ptp_tx_1 = tsn_endpoint_ethernet_mac_0_interrupt_ptp_tx_1;
  assign interrupt_ptp_tx_2 = tsn_endpoint_ethernet_mac_0_interrupt_ptp_tx_2;
  assign mac_irq_1 = tsn_endpoint_ethernet_mac_0_mac_irq_1;
  assign mac_irq_2 = tsn_endpoint_ethernet_mac_0_mac_irq_2;
  assign mdio_external1_mdc = tsn_temac_0_mdio_external_MDC;
  assign mdio_external2_mdc = tsn_temac_1_mdio_external_MDC;
  assign misc_out_rx_enable[2:1] = tsn_endpoint_block_0_rx_enable;
  assign misc_out_rx_mac_aclk[2:1] = tsn_endpoint_block_0_rx_mac_aclk;
  assign misc_out_rx_reset[2:1] = tsn_endpoint_block_0_rx_reset;
  assign misc_out_speedis100[2:1] = tsn_endpoint_block_0_speedis100;
  assign misc_out_switch_cam_init_done = tsn_endpoint_block_0_switch_cam_init_done;
  assign misc_out_tsn_debug_hooks[511:0] = tsn_endpoint_block_0_tsn_debug_hooks;
  assign misc_out_tx_enable[2:1] = tsn_endpoint_block_0_tx_enable;
  assign misc_out_tx_mac_aclk[2:1] = tsn_endpoint_block_0_tx_mac_aclk;
  assign misc_out_tx_reset[2:1] = tsn_endpoint_block_0_tx_reset;
  assign ptp_timers_clk8k = tsn_endpoint_ethernet_mac_0_ptp_timers_clk8k;
  assign ptp_timers_ns_field[31:0] = tsn_endpoint_ethernet_mac_0_ptp_timers_ns_field;
  assign ptp_timers_ns_field_1722[31:0] = tsn_endpoint_ethernet_mac_0_ptp_timers_ns_field_1722;
  assign ptp_timers_s_field[47:0] = tsn_endpoint_ethernet_mac_0_ptp_timers_s_field;
  assign ptp_timers_syntonised_nanosec_field[31:0] = tsn_endpoint_ethernet_mac_0_ptp_timers_syntonised_nanosec_field;
  assign ptp_timers_syntonised_sec_field[47:0] = tsn_endpoint_ethernet_mac_0_ptp_timers_syntonised_sec_field;
  assign refclk_0_1 = refclk;
  assign rgmii1_td[3:0] = tsn_temac_0_rgmii_TD;
  assign rgmii1_tx_ctl = tsn_temac_0_rgmii_TX_CTL;
  assign rgmii1_txc = tsn_temac_0_rgmii_TXC;
  assign rgmii2_td[3:0] = tsn_temac_1_rgmii_TD;
  assign rgmii2_tx_ctl = tsn_temac_1_rgmii_TX_CTL;
  assign rgmii2_txc = tsn_temac_1_rgmii_TXC;
  assign rgmii_status1_duplex_status = tsn_temac_0_rgmii_status_duplex_status;
  assign rgmii_status1_link_speed[1:0] = tsn_temac_0_rgmii_status_link_speed;
  assign rgmii_status1_link_status = tsn_temac_0_rgmii_status_link_status;
  assign rgmii_status2_duplex_status = tsn_temac_1_rgmii_status_duplex_status;
  assign rgmii_status2_link_speed[1:0] = tsn_temac_1_rgmii_status_link_speed;
  assign rgmii_status2_link_status = tsn_temac_1_rgmii_status_link_status;
  assign rx_axis_be_tdata[31:0] = tsn_endpoint_ethernet_mac_0_rx_axis_be_TDATA;
  assign rx_axis_be_tdest[2:0] = tsn_endpoint_ethernet_mac_0_rx_axis_be_TDEST;
  assign rx_axis_be_tkeep[3:0] = tsn_endpoint_ethernet_mac_0_rx_axis_be_TKEEP;
  assign rx_axis_be_tlast = tsn_endpoint_ethernet_mac_0_rx_axis_be_TLAST;
  assign rx_axis_be_tuser[31:0] = tsn_endpoint_ethernet_mac_0_rx_axis_be_TUSER;
  assign rx_axis_be_tvalid = tsn_endpoint_ethernet_mac_0_rx_axis_be_TVALID;
  assign rx_axis_st_tdata[31:0] = tsn_endpoint_ethernet_mac_0_rx_axis_st_TDATA;
  assign rx_axis_st_tdest[2:0] = tsn_endpoint_ethernet_mac_0_rx_axis_st_TDEST;
  assign rx_axis_st_tkeep[3:0] = tsn_endpoint_ethernet_mac_0_rx_axis_st_TKEEP;
  assign rx_axis_st_tlast = tsn_endpoint_ethernet_mac_0_rx_axis_st_TLAST;
  assign rx_axis_st_tuser[31:0] = tsn_endpoint_ethernet_mac_0_rx_axis_st_TUSER;
  assign rx_axis_st_tvalid = tsn_endpoint_ethernet_mac_0_rx_axis_st_TVALID;
  assign s_axi_0_1_ARADDR = s_axi_araddr[17:0];
  assign s_axi_0_1_ARVALID = s_axi_arvalid;
  assign s_axi_0_1_AWADDR = s_axi_awaddr[17:0];
  assign s_axi_0_1_AWVALID = s_axi_awvalid;
  assign s_axi_0_1_BREADY = s_axi_bready;
  assign s_axi_0_1_RREADY = s_axi_rready;
  assign s_axi_0_1_WDATA = s_axi_wdata[31:0];
  assign s_axi_0_1_WVALID = s_axi_wvalid;
  assign s_axi_aclk_0_1 = s_axi_aclk;
  assign s_axi_aresetn_0_1 = s_axi_aresetn;
  assign s_axi_arready = s_axi_0_1_ARREADY;
  assign s_axi_awready = s_axi_0_1_AWREADY;
  assign s_axi_bresp[1:0] = s_axi_0_1_BRESP;
  assign s_axi_bvalid = s_axi_0_1_BVALID;
  assign s_axi_rdata[31:0] = s_axi_0_1_RDATA;
  assign s_axi_rresp[1:0] = s_axi_0_1_RRESP;
  assign s_axi_rvalid = s_axi_0_1_RVALID;
  assign s_axi_wready = s_axi_0_1_WREADY;
  assign temac_misc_out1_rx_statistics_valid = tsn_temac_1_rx_statistics_valid;
  assign temac_misc_out1_rx_statistics_valid_pmac = tsn_temac_1_rx_statistics_valid_pmac;
  assign temac_misc_out1_rx_statistics_vector[27:0] = tsn_temac_1_rx_statistics_vector;
  assign temac_misc_out1_rx_statistics_vector_pmac[27:0] = tsn_temac_1_rx_statistics_vector_pmac;
  assign temac_misc_out1_rx_ts_axis_tdata[127:0] = tsn_temac_1_rx_ts_axis_tdata;
  assign temac_misc_out1_rx_ts_axis_tdata_pmac[127:0] = tsn_temac_1_rx_ts_axis_tdata_pmac;
  assign temac_misc_out1_rx_ts_axis_tvalid = tsn_temac_1_rx_ts_axis_tvalid;
  assign temac_misc_out1_rx_ts_axis_tvalid_pmac = tsn_temac_1_rx_ts_axis_tvalid_pmac;
  assign temac_misc_out1_tx_statistics_valid = tsn_temac_1_tx_statistics_valid;
  assign temac_misc_out1_tx_statistics_valid_pmac = tsn_temac_1_tx_statistics_valid_pmac;
  assign temac_misc_out1_tx_statistics_vector[31:0] = tsn_temac_1_tx_statistics_vector;
  assign temac_misc_out1_tx_statistics_vector_pmac[31:0] = tsn_temac_1_tx_statistics_vector_pmac;
  assign temac_misc_out1_tx_ts_axis_tdata[127:0] = tsn_temac_1_tx_ts_axis_tdata;
  assign temac_misc_out1_tx_ts_axis_tdata_pmac[127:0] = tsn_temac_1_tx_ts_axis_tdata_pmac;
  assign temac_misc_out1_tx_ts_axis_tvalid = tsn_temac_1_tx_ts_axis_tvalid;
  assign temac_misc_out1_tx_ts_axis_tvalid_pmac = tsn_temac_1_tx_ts_axis_tvalid_pmac;
  assign temac_misc_out2_rx_statistics_valid = tsn_temac_2_rx_statistics_valid;
  assign temac_misc_out2_rx_statistics_valid_pmac = tsn_temac_2_rx_statistics_valid_pmac;
  assign temac_misc_out2_rx_statistics_vector[27:0] = tsn_temac_2_rx_statistics_vector;
  assign temac_misc_out2_rx_statistics_vector_pmac[27:0] = tsn_temac_2_rx_statistics_vector_pmac;
  assign temac_misc_out2_rx_ts_axis_tdata[127:0] = tsn_temac_2_rx_ts_axis_tdata;
  assign temac_misc_out2_rx_ts_axis_tdata_pmac[127:0] = tsn_temac_2_rx_ts_axis_tdata_pmac;
  assign temac_misc_out2_rx_ts_axis_tvalid = tsn_temac_2_rx_ts_axis_tvalid;
  assign temac_misc_out2_rx_ts_axis_tvalid_pmac = tsn_temac_2_rx_ts_axis_tvalid_pmac;
  assign temac_misc_out2_tx_statistics_valid = tsn_temac_2_tx_statistics_valid;
  assign temac_misc_out2_tx_statistics_valid_pmac = tsn_temac_2_tx_statistics_valid_pmac;
  assign temac_misc_out2_tx_statistics_vector[31:0] = tsn_temac_2_tx_statistics_vector;
  assign temac_misc_out2_tx_statistics_vector_pmac[31:0] = tsn_temac_2_tx_statistics_vector_pmac;
  assign temac_misc_out2_tx_ts_axis_tdata[127:0] = tsn_temac_2_tx_ts_axis_tdata;
  assign temac_misc_out2_tx_ts_axis_tdata_pmac[127:0] = tsn_temac_2_tx_ts_axis_tdata_pmac;
  assign temac_misc_out2_tx_ts_axis_tvalid = tsn_temac_2_tx_ts_axis_tvalid;
  assign temac_misc_out2_tx_ts_axis_tvalid_pmac = tsn_temac_2_tx_ts_axis_tvalid_pmac;
  assign tsn_endpoint_ethernet_mac_0_rx_axis_be_TREADY = rx_axis_be_tready;
  assign tsn_endpoint_ethernet_mac_0_rx_axis_st_TREADY = rx_axis_st_tready;
  assign tsn_ep_scheduler_irq = tsn_endpoint_ethernet_mac_0_tsn_ep_scheduler_irq;
  assign tsn_switch_scheduler_irq_1 = tsn_endpoint_ethernet_mac_0_tsn_switch_scheduler_irq_1;
  assign tsn_switch_scheduler_irq_2 = tsn_endpoint_ethernet_mac_0_tsn_switch_scheduler_irq_2;
  assign tsn_temac_0_rgmii_RD = rgmii1_rd[3:0];
  assign tsn_temac_0_rgmii_RXC = rgmii1_rxc;
  assign tsn_temac_0_rgmii_RX_CTL = rgmii1_rx_ctl;
  assign tsn_temac_1_rgmii_RD = rgmii2_rd[3:0];
  assign tsn_temac_1_rgmii_RXC = rgmii2_rxc;
  assign tsn_temac_1_rgmii_RX_CTL = rgmii2_rx_ctl;
  assign tx_axis_be_0_1_TDATA = tx_axis_be_tdata[31:0];
  assign tx_axis_be_0_1_TKEEP = tx_axis_be_tkeep[3:0];
  assign tx_axis_be_0_1_TLAST = tx_axis_be_tlast;
  assign tx_axis_be_0_1_TVALID = tx_axis_be_tvalid;
  assign tx_axis_be_tready = tx_axis_be_0_1_TREADY;
  assign tx_axis_st_0_1_TDATA = tx_axis_st_tdata[31:0];
  assign tx_axis_st_0_1_TKEEP = tx_axis_st_tkeep[3:0];
  assign tx_axis_st_0_1_TLAST = tx_axis_st_tlast;
  assign tx_axis_st_0_1_TVALID = tx_axis_st_tvalid;
  assign tx_axis_st_tready = tx_axis_st_0_1_TREADY;
  bd_4503_switch_core_top_0_0 switch_core_top_0
       (.CLK(gtx_clk_0_1),
        .INIT_DONE(switch_core_top_0_INIT_DONE),
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
        .M_AXIS_RX_TUSER(tsn_endpoint_ethernet_mac_0_m_axis_rx_tuser),
        .M_AXIS_RX_TVALID(tsn_endpoint_ethernet_mac_0_m_axis_rx_tvalid),
        .PRIORITY_MAP(switch_core_top_0_PRIORITY_MAP),
        .PTP_CURRENT_TIME(tsn_endpoint_ethernet_mac_0_ptp_current_time_sw),
        .REG_RESET(xlconstant_0_dout),
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
  bd_4503_tsn_endpoint_block_0_0 tsn_endpoint_block_0
       (.be_rx_axis_host_tdata(tsn_endpoint_ethernet_mac_0_rx_axis_be_TDATA),
        .be_rx_axis_host_tdest(tsn_endpoint_ethernet_mac_0_rx_axis_be_TDEST),
        .be_rx_axis_host_tkeep(tsn_endpoint_ethernet_mac_0_rx_axis_be_TKEEP),
        .be_rx_axis_host_tlast(tsn_endpoint_ethernet_mac_0_rx_axis_be_TLAST),
        .be_rx_axis_host_tready(tsn_endpoint_ethernet_mac_0_rx_axis_be_TREADY),
        .be_rx_axis_host_tuser(tsn_endpoint_ethernet_mac_0_rx_axis_be_TUSER),
        .be_rx_axis_host_tvalid(tsn_endpoint_ethernet_mac_0_rx_axis_be_TVALID),
        .be_tx_axis_host_tdata(tx_axis_be_0_1_TDATA),
        .be_tx_axis_host_tkeep(tx_axis_be_0_1_TKEEP),
        .be_tx_axis_host_tlast(tx_axis_be_0_1_TLAST),
        .be_tx_axis_host_tready(tx_axis_be_0_1_TREADY),
        .be_tx_axis_host_tvalid(tx_axis_be_0_1_TVALID),
        .bus2ip_addr(tsn_endpoint_ethernet_mac_0_bus2ip_addr),
        .bus2ip_clk(tsn_endpoint_ethernet_mac_0_bus2ip_clk),
        .bus2ip_cs_mac1(tsn_endpoint_ethernet_mac_0_bus2ip_cs_mac1),
        .bus2ip_cs_mac2(Net),
        .bus2ip_data(tsn_endpoint_ethernet_mac_0_bus2ip_data),
        .bus2ip_rdce(tsn_endpoint_ethernet_mac_0_bus2ip_rdce),
        .bus2ip_reset(tsn_endpoint_ethernet_mac_0_bus2ip_reset),
        .bus2ip_wrce(tsn_endpoint_ethernet_mac_0_bus2ip_wrce),
        .clk8k(tsn_endpoint_ethernet_mac_0_ptp_timers_clk8k),
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
        .ep_tadma_if_out(tsn_endpoint_block_0_ep_tadma_if_out),
        .glbl_rstn(glbl_rstn_0_1),
        .gtx_clk(gtx_clk_0_1),
        .gtx_clk_reset_reg(tsn_endpoint_ethernet_mac_0_gtx_clk_reset_reg),
        .hold_request_pmac(tsn_endpoint_ethernet_mac_0_hold_request_pmac),
        .host_rxfifo_aclk(host_rxfifo_aclk_0_1),
        .host_txfifo_aclk(host_txfifo_aclk_0_1),
        .int_mgmt_host_reset_out(tsn_temac_0_int_mgmt_host_reset_out),
        .int_mgmt_host_reset_out_reg_n_switch(tsn_endpoint_ethernet_mac_0_int_mgmt_host_reset_out_reg_n_switch),
        .interrupt_ptp_rx(xlconcat_24_dout),
        .interrupt_ptp_rx_1(tsn_endpoint_ethernet_mac_0_interrupt_ptp_rx_1),
        .interrupt_ptp_rx_2(tsn_endpoint_ethernet_mac_0_interrupt_ptp_rx_2),
        .interrupt_ptp_tx(xlconcat_25_dout),
        .interrupt_ptp_tx_1(tsn_endpoint_ethernet_mac_0_interrupt_ptp_tx_1),
        .interrupt_ptp_tx_2(tsn_endpoint_ethernet_mac_0_interrupt_ptp_tx_2),
        .interrupt_ptp_v1_rx({1'b0,1'b0}),
        .interrupt_ptp_v1_tx({1'b0,1'b0}),
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
        .mac_rx_clk(tsn_endpoint_ethernet_mac_0_mac_rx_clk),
        .mac_tx_clk(tsn_endpoint_ethernet_mac_0_mac_tx_clk),
        .macrx_pfc(tsn_endpoint_ethernet_mac_0_macrx_pfc),
        .mactx_gate_qactive(switch_core_top_0_MACTX_GATE_QACTIVE),
        .mactx_pfc(switch_core_top_0_MACTX_PFC),
        .preemption_signal_vector(xlconcat_20_dout),
        .ptp_current_time_sw(tsn_endpoint_ethernet_mac_0_ptp_current_time_sw),
        .refclk(refclk_0_1),
        .rtc_nanosec_field(tsn_endpoint_ethernet_mac_0_ptp_timers_ns_field),
        .rtc_nanosec_field_1722(tsn_endpoint_ethernet_mac_0_ptp_timers_ns_field_1722),
        .rtc_nanosec_field_1722_in(tsn_temac_0_rtc_nanosec_field_1722),
        .rtc_nanosec_field_in(tsn_temac_0_rtc_nanosec_field),
        .rtc_sec_field(tsn_endpoint_ethernet_mac_0_ptp_timers_s_field),
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
        .rx_enable(tsn_endpoint_block_0_rx_enable),
        .rx_enable_in(xlconcat_12_dout),
        .rx_mac_aclk(tsn_endpoint_block_0_rx_mac_aclk),
        .rx_mac_aclk_in(xlconcat_10_dout),
        .rx_mac_reset(xlconcat_19_dout),
        .rx_reset(tsn_endpoint_block_0_rx_reset),
        .s_axi_aclk(s_axi_aclk_0_1),
        .s_axi_araddr(s_axi_0_1_ARADDR),
        .s_axi_aresetn(s_axi_aresetn_0_1),
        .s_axi_arready(s_axi_0_1_ARREADY),
        .s_axi_arvalid(s_axi_0_1_ARVALID),
        .s_axi_awaddr(s_axi_0_1_AWADDR),
        .s_axi_awready(s_axi_0_1_AWREADY),
        .s_axi_awvalid(s_axi_0_1_AWVALID),
        .s_axi_bready(s_axi_0_1_BREADY),
        .s_axi_bresp(s_axi_0_1_BRESP),
        .s_axi_bvalid(s_axi_0_1_BVALID),
        .s_axi_rdata(s_axi_0_1_RDATA),
        .s_axi_rready(s_axi_0_1_RREADY),
        .s_axi_rresp(s_axi_0_1_RRESP),
        .s_axi_rvalid(s_axi_0_1_RVALID),
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
        .s_axi_wdata(s_axi_0_1_WDATA),
        .s_axi_wready(s_axi_0_1_WREADY),
        .s_axi_wvalid(s_axi_0_1_WVALID),
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
        .speedis100(tsn_endpoint_block_0_speedis100),
        .speedis100_in(xlconcat_14_dout),
        .st_rx_axis_host_tdata(tsn_endpoint_ethernet_mac_0_rx_axis_st_TDATA),
        .st_rx_axis_host_tdest(tsn_endpoint_ethernet_mac_0_rx_axis_st_TDEST),
        .st_rx_axis_host_tkeep(tsn_endpoint_ethernet_mac_0_rx_axis_st_TKEEP),
        .st_rx_axis_host_tlast(tsn_endpoint_ethernet_mac_0_rx_axis_st_TLAST),
        .st_rx_axis_host_tready(tsn_endpoint_ethernet_mac_0_rx_axis_st_TREADY),
        .st_rx_axis_host_tuser(tsn_endpoint_ethernet_mac_0_rx_axis_st_TUSER),
        .st_rx_axis_host_tvalid(tsn_endpoint_ethernet_mac_0_rx_axis_st_TVALID),
        .st_tx_axis_host_tdata(tx_axis_st_0_1_TDATA),
        .st_tx_axis_host_tkeep(tx_axis_st_0_1_TKEEP),
        .st_tx_axis_host_tlast(tx_axis_st_0_1_TLAST),
        .st_tx_axis_host_tready(tx_axis_st_0_1_TREADY),
        .st_tx_axis_host_tvalid(tx_axis_st_0_1_TVALID),
        .switch_be_pkt_byte_count_sw(tsn_endpoint_ethernet_mac_0_switch_be_pkt_byte_count_sw),
        .switch_cam_init_done(tsn_endpoint_block_0_switch_cam_init_done),
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
        .syntonised_nanosec_field(tsn_endpoint_ethernet_mac_0_ptp_timers_syntonised_nanosec_field),
        .syntonised_nanosec_field_in(tsn_temac_0_syntonised_nanosec_field),
        .syntonised_sec_field(tsn_endpoint_ethernet_mac_0_ptp_timers_syntonised_sec_field),
        .syntonised_sec_field_in(tsn_temac_0_syntonised_sec_field),
        .transmission_overrun_count_incr(switch_core_top_0_MACTX_GATE_OVERRUN),
        .tsn_debug_hooks(tsn_endpoint_block_0_tsn_debug_hooks),
        .tsn_ep_scheduler_irq(tsn_endpoint_ethernet_mac_0_tsn_ep_scheduler_irq),
        .tsn_switch_scheduler_irq_1(tsn_endpoint_ethernet_mac_0_tsn_switch_scheduler_irq_1),
        .tsn_switch_scheduler_irq_2(tsn_endpoint_ethernet_mac_0_tsn_switch_scheduler_irq_2),
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
        .tx_enable(tsn_endpoint_block_0_tx_enable),
        .tx_enable_in(xlconcat_13_dout),
        .tx_mac_aclk(tsn_endpoint_block_0_tx_mac_aclk),
        .tx_mac_aclk_in(xlconcat_11_dout),
        .tx_mac_reset(xlconcat_18_dout),
        .tx_ptp_frame_allowed(tsn_endpoint_ethernet_mac_0_tx_ptp_frame_allowed),
        .tx_ptp_frame_available(xlconcat_15_dout),
        .tx_ptp_frame_granted_for_transmission(xlconcat_16_dout),
        .tx_reset(tsn_endpoint_block_0_tx_reset),
        .tx_scheduler_internal_overhead_tsn(xlconcat_17_dout));
  bd_4503_tsn_temac_1_0 tsn_temac_1
       (.bus2ip_addr(xlslice_22_Dout),
        .bus2ip_clk(tsn_endpoint_ethernet_mac_0_bus2ip_clk),
        .bus2ip_cs(tsn_endpoint_ethernet_mac_0_bus2ip_cs_mac1),
        .bus2ip_data(tsn_endpoint_ethernet_mac_0_bus2ip_data),
        .bus2ip_rdce(tsn_endpoint_ethernet_mac_0_bus2ip_rdce),
        .bus2ip_reset(tsn_endpoint_ethernet_mac_0_bus2ip_reset),
        .bus2ip_wrce(tsn_endpoint_ethernet_mac_0_bus2ip_wrce),
        .clk8k(tsn_temac_0_clk8k),
        .core_hold_disabled_override_pmac(xlslice_16_Dout),
        .glbl_rstn(glbl_rstn_0_1),
        .gtx_clk(gtx_clk_0_1),
        .hold_request_pmac(xlslice_18_Dout),
        .inband_clock_speed(tsn_temac_0_rgmii_status_link_speed),
        .inband_duplex_status(tsn_temac_0_rgmii_status_duplex_status),
        .inband_link_status(tsn_temac_0_rgmii_status_link_status),
        .int_mgmt_host_reset_out(tsn_temac_0_int_mgmt_host_reset_out),
        .interrupt_ptp_rx(tsn_temac_1_interrupt_ptp_rx),
        .interrupt_ptp_timer(tsn_temac_1_interrupt_ptp_timer),
        .interrupt_ptp_tx(tsn_temac_1_interrupt_ptp_tx),
        .ip2bus_data(tsn_temac_0_ip2bus_data),
        .ip2bus_error(tsn_temac_0_ip2bus_error),
        .ip2bus_rdack(tsn_temac_0_ip2bus_rdack),
        .ip2bus_wrack(tsn_temac_0_ip2bus_wrack),
        .mac_debug_out(tsn_temac_1_mac_debug_out),
        .mac_irq(tsn_endpoint_ethernet_mac_0_mac_irq_1),
        .mdc(tsn_temac_0_mdio_external_MDC),
        .mdio(mdio_external1_io),
        .pause_req(xlconstant_8_dout),
        .pause_val(xlconstant_7_dout),
        .preemption_signal_vector(tsn_temac_0_preemption_signal_vector),
        .refclk(refclk_0_1),
        .rgmii_rx_ctl(tsn_temac_0_rgmii_RX_CTL),
        .rgmii_rxc(tsn_temac_0_rgmii_RXC),
        .rgmii_rxd(tsn_temac_0_rgmii_RD),
        .rgmii_tx_ctl(tsn_temac_0_rgmii_TX_CTL),
        .rgmii_txc(tsn_temac_0_rgmii_TXC),
        .rgmii_txd(tsn_temac_0_rgmii_TD),
        .rtc_nanosec_field(tsn_temac_0_rtc_nanosec_field),
        .rtc_nanosec_field_1722(tsn_temac_0_rtc_nanosec_field_1722),
        .rtc_nanosec_field_in(xlconstant_4_dout),
        .rtc_sec_field(tsn_temac_0_rtc_sec_field),
        .rtc_sec_field_in(xlconstant_3_dout),
        .rx_axi_rstn(xlconstant_1_dout),
        .rx_axis_av_filter_tuser(tsn_temac_0_rx_axis_av_filter_tuser),
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
        .rx_statistics_valid(tsn_temac_1_rx_statistics_valid),
        .rx_statistics_valid_pmac(tsn_temac_1_rx_statistics_valid_pmac),
        .rx_statistics_vector(tsn_temac_1_rx_statistics_vector),
        .rx_statistics_vector_pmac(tsn_temac_1_rx_statistics_vector_pmac),
        .rx_ts_axis_tdata(tsn_temac_1_rx_ts_axis_tdata),
        .rx_ts_axis_tdata_pmac(tsn_temac_1_rx_ts_axis_tdata_pmac),
        .rx_ts_axis_tvalid(tsn_temac_1_rx_ts_axis_tvalid),
        .rx_ts_axis_tvalid_pmac(tsn_temac_1_rx_ts_axis_tvalid_pmac),
        .rxphy_ns_field(xlconstant_6_dout),
        .rxphy_s_field(xlconstant_5_dout),
        .speedis100(tsn_temac_0_speedis100),
        .syntonised_nanosec_field(tsn_temac_0_syntonised_nanosec_field),
        .syntonised_nanosec_field_in(xlconstant_4_dout),
        .syntonised_sec_field(tsn_temac_0_syntonised_sec_field),
        .syntonised_sec_field_in(xlconstant_3_dout),
        .tx_axi_rstn(xlconstant_1_dout),
        .tx_axis_mac_tdata(xlslice_8_Dout),
        .tx_axis_mac_tlast(xlslice_10_Dout),
        .tx_axis_mac_tready(tsn_temac_0_tx_axis_mac_tready),
        .tx_axis_mac_tuser(xlslice_12_Dout[0]),
        .tx_axis_mac_tvalid(xlslice_14_Dout),
        .tx_axis_pmac_tdata(xlslice_0_Dout),
        .tx_axis_pmac_tlast(xlslice_2_Dout),
        .tx_axis_pmac_tready(tsn_temac_0_tx_axis_pmac_tready),
        .tx_axis_pmac_tuser(xlslice_4_Dout),
        .tx_axis_pmac_tvalid(xlslice_6_Dout),
        .tx_enable(tsn_temac_0_tx_enable),
        .tx_ifg_delay(xlconstant_2_dout),
        .tx_mac_aclk(tsn_temac_0_tx_mac_aclk),
        .tx_ptp_frame_available(tsn_temac_0_tx_ptp_frame_available),
        .tx_ptp_frame_granted_for_transmission(tsn_temac_0_tx_ptp_frame_granted_for_transmission),
        .tx_ptp_traffic_allowed(xlslice_20_Dout),
        .tx_reset(tsn_temac_0_tx_reset),
        .tx_scheduler_internal_overhead_tsn(tsn_temac_0_tx_scheduler_internal_overhead_tsn),
        .tx_statistics_valid(tsn_temac_1_tx_statistics_valid),
        .tx_statistics_valid_pmac(tsn_temac_1_tx_statistics_valid_pmac),
        .tx_statistics_vector(tsn_temac_1_tx_statistics_vector),
        .tx_statistics_vector_pmac(tsn_temac_1_tx_statistics_vector_pmac),
        .tx_ts_axis_tdata(tsn_temac_1_tx_ts_axis_tdata),
        .tx_ts_axis_tdata_pmac(tsn_temac_1_tx_ts_axis_tdata_pmac),
        .tx_ts_axis_tvalid(tsn_temac_1_tx_ts_axis_tvalid),
        .tx_ts_axis_tvalid_pmac(tsn_temac_1_tx_ts_axis_tvalid_pmac),
        .txd_byte_count_pmac(xlslice_23_Dout));
  bd_4503_tsn_temac_2_0 tsn_temac_2
       (.bus2ip_addr(xlslice_22_Dout),
        .bus2ip_clk(tsn_endpoint_ethernet_mac_0_bus2ip_clk),
        .bus2ip_cs(Net),
        .bus2ip_data(tsn_endpoint_ethernet_mac_0_bus2ip_data),
        .bus2ip_rdce(tsn_endpoint_ethernet_mac_0_bus2ip_rdce),
        .bus2ip_reset(tsn_endpoint_ethernet_mac_0_bus2ip_reset),
        .bus2ip_wrce(tsn_endpoint_ethernet_mac_0_bus2ip_wrce),
        .core_hold_disabled_override_pmac(xlslice_17_Dout),
        .glbl_rstn(glbl_rstn_0_1),
        .gtx_clk(gtx_clk_0_1),
        .hold_request_pmac(xlslice_19_Dout),
        .inband_clock_speed(tsn_temac_1_rgmii_status_link_speed),
        .inband_duplex_status(tsn_temac_1_rgmii_status_duplex_status),
        .inband_link_status(tsn_temac_1_rgmii_status_link_status),
        .interrupt_ptp_rx(tsn_temac_2_interrupt_ptp_rx),
        .interrupt_ptp_tx(tsn_temac_2_interrupt_ptp_tx),
        .ip2bus_data(tsn_temac_1_ip2bus_data),
        .ip2bus_error(tsn_temac_1_ip2bus_error),
        .ip2bus_rdack(tsn_temac_1_ip2bus_rdack),
        .ip2bus_wrack(tsn_temac_1_ip2bus_wrack),
        .mac_debug_out(tsn_temac_2_mac_debug_out),
        .mac_irq(tsn_endpoint_ethernet_mac_0_mac_irq_2),
        .mdc(tsn_temac_1_mdio_external_MDC),
        .mdio(mdio_external2_io),
        .pause_req(xlconstant_8_dout),
        .pause_val(xlconstant_7_dout),
        .preemption_signal_vector(tsn_temac_1_preemption_signal_vector),
        .rgmii_rx_ctl(tsn_temac_1_rgmii_RX_CTL),
        .rgmii_rxc(tsn_temac_1_rgmii_RXC),
        .rgmii_rxd(tsn_temac_1_rgmii_RD),
        .rgmii_tx_ctl(tsn_temac_1_rgmii_TX_CTL),
        .rgmii_txc(tsn_temac_1_rgmii_TXC),
        .rgmii_txd(tsn_temac_1_rgmii_TD),
        .rtc_nanosec_field_in(tsn_temac_0_rtc_nanosec_field),
        .rtc_sec_field_in(tsn_temac_0_rtc_sec_field),
        .rx_axi_rstn(xlconstant_1_dout),
        .rx_axis_mac_tdata(tsn_temac_1_rx_axis_mac_tdata),
        .rx_axis_mac_tlast(tsn_temac_1_rx_axis_mac_tlast),
        .rx_axis_mac_tuser(tsn_temac_1_rx_axis_mac_tuser),
        .rx_axis_mac_tvalid(tsn_temac_1_rx_axis_mac_tvalid),
        .rx_axis_pmac_tdata(tsn_temac_1_rx_axis_pmac_tdata),
        .rx_axis_pmac_tlast(tsn_temac_1_rx_axis_pmac_tlast),
        .rx_axis_pmac_tuser(tsn_temac_1_rx_axis_pmac_tuser),
        .rx_axis_pmac_tvalid(tsn_temac_1_rx_axis_pmac_tvalid),
        .rx_enable(tsn_temac_1_rx_enable),
        .rx_mac_aclk(tsn_temac_1_rx_mac_aclk),
        .rx_reset(tsn_temac_1_rx_reset),
        .rx_statistics_valid(tsn_temac_2_rx_statistics_valid),
        .rx_statistics_valid_pmac(tsn_temac_2_rx_statistics_valid_pmac),
        .rx_statistics_vector(tsn_temac_2_rx_statistics_vector),
        .rx_statistics_vector_pmac(tsn_temac_2_rx_statistics_vector_pmac),
        .rx_ts_axis_tdata(tsn_temac_2_rx_ts_axis_tdata),
        .rx_ts_axis_tdata_pmac(tsn_temac_2_rx_ts_axis_tdata_pmac),
        .rx_ts_axis_tvalid(tsn_temac_2_rx_ts_axis_tvalid),
        .rx_ts_axis_tvalid_pmac(tsn_temac_2_rx_ts_axis_tvalid_pmac),
        .rxphy_ns_field(xlconstant_6_dout),
        .rxphy_s_field(xlconstant_5_dout),
        .speedis100(tsn_temac_1_speedis100),
        .syntonised_nanosec_field_in(tsn_temac_0_syntonised_nanosec_field),
        .syntonised_sec_field_in(tsn_temac_0_syntonised_sec_field),
        .tx_axi_rstn(xlconstant_1_dout),
        .tx_axis_mac_tdata(xlslice_9_Dout),
        .tx_axis_mac_tlast(xlslice_11_Dout),
        .tx_axis_mac_tready(tsn_temac_1_tx_axis_mac_tready),
        .tx_axis_mac_tuser(xlslice_13_Dout[0]),
        .tx_axis_mac_tvalid(xlslice_15_Dout),
        .tx_axis_pmac_tdata(xlslice_1_Dout),
        .tx_axis_pmac_tlast(xlslice_3_Dout),
        .tx_axis_pmac_tready(tsn_temac_1_tx_axis_pmac_tready),
        .tx_axis_pmac_tuser(xlslice_5_Dout),
        .tx_axis_pmac_tvalid(xlslice_7_Dout),
        .tx_enable(tsn_temac_1_tx_enable),
        .tx_ifg_delay(xlconstant_2_dout),
        .tx_mac_aclk(tsn_temac_1_tx_mac_aclk),
        .tx_ptp_frame_available(tsn_temac_1_tx_ptp_frame_available),
        .tx_ptp_frame_granted_for_transmission(tsn_temac_1_tx_ptp_frame_granted_for_transmission),
        .tx_ptp_traffic_allowed(xlslice_21_Dout),
        .tx_reset(tsn_temac_1_tx_reset),
        .tx_scheduler_internal_overhead_tsn(tsn_temac_1_tx_scheduler_internal_overhead_tsn),
        .tx_statistics_valid(tsn_temac_2_tx_statistics_valid),
        .tx_statistics_valid_pmac(tsn_temac_2_tx_statistics_valid_pmac),
        .tx_statistics_vector(tsn_temac_2_tx_statistics_vector),
        .tx_statistics_vector_pmac(tsn_temac_2_tx_statistics_vector_pmac),
        .tx_ts_axis_tdata(tsn_temac_2_tx_ts_axis_tdata),
        .tx_ts_axis_tdata_pmac(tsn_temac_2_tx_ts_axis_tdata_pmac),
        .tx_ts_axis_tvalid(tsn_temac_2_tx_ts_axis_tvalid),
        .tx_ts_axis_tvalid_pmac(tsn_temac_2_tx_ts_axis_tvalid_pmac),
        .txd_byte_count_pmac(xlslice_24_Dout));
  bd_4503_xlconcat_0_0 xlconcat_0
       (.In0(tsn_temac_0_tx_axis_pmac_tready),
        .In1(tsn_temac_1_tx_axis_pmac_tready),
        .dout(xlconcat_0_dout));
  bd_4503_xlconcat_1_0 xlconcat_1
       (.In0(tsn_temac_0_rx_axis_pmac_tdata),
        .In1(tsn_temac_1_rx_axis_pmac_tdata),
        .dout(xlconcat_1_dout));
  bd_4503_xlconcat_10_0 xlconcat_10
       (.In0(tsn_temac_0_rx_mac_aclk),
        .In1(tsn_temac_1_rx_mac_aclk),
        .dout(xlconcat_10_dout));
  bd_4503_xlconcat_11_0 xlconcat_11
       (.In0(tsn_temac_0_tx_mac_aclk),
        .In1(tsn_temac_1_tx_mac_aclk),
        .dout(xlconcat_11_dout));
  bd_4503_xlconcat_12_0 xlconcat_12
       (.In0(tsn_temac_0_rx_enable),
        .In1(tsn_temac_1_rx_enable),
        .dout(xlconcat_12_dout));
  bd_4503_xlconcat_13_0 xlconcat_13
       (.In0(tsn_temac_0_tx_enable),
        .In1(tsn_temac_1_tx_enable),
        .dout(xlconcat_13_dout));
  bd_4503_xlconcat_14_0 xlconcat_14
       (.In0(tsn_temac_0_speedis100),
        .In1(tsn_temac_1_speedis100),
        .dout(xlconcat_14_dout));
  bd_4503_xlconcat_15_0 xlconcat_15
       (.In0(tsn_temac_0_tx_ptp_frame_available),
        .In1(tsn_temac_1_tx_ptp_frame_available),
        .dout(xlconcat_15_dout));
  bd_4503_xlconcat_16_0 xlconcat_16
       (.In0(tsn_temac_0_tx_ptp_frame_granted_for_transmission),
        .In1(tsn_temac_1_tx_ptp_frame_granted_for_transmission),
        .dout(xlconcat_16_dout));
  bd_4503_xlconcat_17_0 xlconcat_17
       (.In0(tsn_temac_0_tx_scheduler_internal_overhead_tsn),
        .In1(tsn_temac_1_tx_scheduler_internal_overhead_tsn),
        .dout(xlconcat_17_dout));
  bd_4503_xlconcat_18_0 xlconcat_18
       (.In0(tsn_temac_0_tx_reset),
        .In1(tsn_temac_1_tx_reset),
        .dout(xlconcat_18_dout));
  bd_4503_xlconcat_19_0 xlconcat_19
       (.In0(tsn_temac_0_rx_reset),
        .In1(tsn_temac_1_rx_reset),
        .dout(xlconcat_19_dout));
  bd_4503_xlconcat_2_0 xlconcat_2
       (.In0(tsn_temac_0_rx_axis_pmac_tlast),
        .In1(tsn_temac_1_rx_axis_pmac_tlast),
        .dout(xlconcat_2_dout));
  bd_4503_xlconcat_20_0 xlconcat_20
       (.In0(tsn_temac_0_preemption_signal_vector),
        .In1(tsn_temac_1_preemption_signal_vector),
        .dout(xlconcat_20_dout));
  bd_4503_xlconcat_22_0 xlconcat_22
       (.In0(xlslice_12_Dout1),
        .In1(xlconstant_10_dout),
        .dout(xlslice_12_Dout));
  bd_4503_xlconcat_23_0 xlconcat_23
       (.In0(xlslice_13_Dout1),
        .In1(xlconstant_10_dout),
        .dout(xlslice_13_Dout));
  bd_4503_xlconcat_24_0 xlconcat_24
       (.In0(tsn_temac_1_interrupt_ptp_rx),
        .In1(tsn_temac_2_interrupt_ptp_rx),
        .dout(xlconcat_24_dout));
  bd_4503_xlconcat_25_0 xlconcat_25
       (.In0(tsn_temac_1_interrupt_ptp_tx),
        .In1(tsn_temac_2_interrupt_ptp_tx),
        .dout(xlconcat_25_dout));
  bd_4503_xlconcat_3_0 xlconcat_3
       (.In0(tsn_temac_0_rx_axis_pmac_tuser),
        .In1(tsn_temac_1_rx_axis_pmac_tuser),
        .dout(xlconcat_3_dout));
  bd_4503_xlconcat_4_0 xlconcat_4
       (.In0(tsn_temac_0_rx_axis_pmac_tvalid),
        .In1(tsn_temac_1_rx_axis_pmac_tvalid),
        .dout(xlconcat_4_dout));
  bd_4503_xlconcat_5_0 xlconcat_5
       (.In0(tsn_temac_0_tx_axis_mac_tready),
        .In1(tsn_temac_1_tx_axis_mac_tready),
        .dout(xlconcat_5_dout));
  bd_4503_xlconcat_6_0 xlconcat_6
       (.In0(tsn_temac_0_rx_axis_mac_tdata),
        .In1(tsn_temac_1_rx_axis_mac_tdata),
        .dout(xlconcat_6_dout));
  bd_4503_xlconcat_7_0 xlconcat_7
       (.In0(tsn_temac_0_rx_axis_mac_tlast),
        .In1(tsn_temac_1_rx_axis_mac_tlast),
        .dout(xlconcat_7_dout));
  bd_4503_xlconcat_8_0 xlconcat_8
       (.In0(tsn_temac_0_rx_axis_mac_tuser),
        .In1(tsn_temac_1_rx_axis_mac_tuser),
        .dout(xlconcat_8_dout));
  bd_4503_xlconcat_9_0 xlconcat_9
       (.In0(tsn_temac_0_rx_axis_mac_tvalid),
        .In1(tsn_temac_1_rx_axis_mac_tvalid),
        .dout(xlconcat_9_dout));
  bd_4503_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
  bd_4503_xlconstant_1_0 xlconstant_1
       (.dout(xlconstant_1_dout));
  bd_4503_xlconstant_10_0 xlconstant_10
       (.dout(xlconstant_10_dout));
  bd_4503_xlconstant_2_0 xlconstant_2
       (.dout(xlconstant_2_dout));
  bd_4503_xlconstant_3_0 xlconstant_3
       (.dout(xlconstant_3_dout));
  bd_4503_xlconstant_4_0 xlconstant_4
       (.dout(xlconstant_4_dout));
  bd_4503_xlconstant_5_0 xlconstant_5
       (.dout(xlconstant_5_dout));
  bd_4503_xlconstant_6_0 xlconstant_6
       (.dout(xlconstant_6_dout));
  bd_4503_xlconstant_7_0 xlconstant_7
       (.dout(xlconstant_7_dout));
  bd_4503_xlconstant_8_0 xlconstant_8
       (.dout(xlconstant_8_dout));
  bd_4503_xlconstant_9_0 xlconstant_9
       ();
  bd_4503_xlslice_0_0 xlslice_0
       (.Din(tsn_endpoint_ethernet_mac_0_tx_axis_pmac_tdata),
        .Dout(xlslice_0_Dout));
  bd_4503_xlslice_1_0 xlslice_1
       (.Din(tsn_endpoint_ethernet_mac_0_tx_axis_pmac_tdata),
        .Dout(xlslice_1_Dout));
  bd_4503_xlslice_10_0 xlslice_10
       (.Din(tsn_endpoint_ethernet_mac_0_tx_axis_mac_tlast),
        .Dout(xlslice_10_Dout));
  bd_4503_xlslice_11_0 xlslice_11
       (.Din(tsn_endpoint_ethernet_mac_0_tx_axis_mac_tlast),
        .Dout(xlslice_11_Dout));
  bd_4503_xlslice_12_0 xlslice_12
       (.Din(tsn_endpoint_ethernet_mac_0_tx_axis_mac_tuser),
        .Dout(xlslice_12_Dout1));
  bd_4503_xlslice_13_0 xlslice_13
       (.Din(tsn_endpoint_ethernet_mac_0_tx_axis_mac_tuser),
        .Dout(xlslice_13_Dout1));
  bd_4503_xlslice_14_0 xlslice_14
       (.Din(tsn_endpoint_ethernet_mac_0_tx_axis_mac_tvalid),
        .Dout(xlslice_14_Dout));
  bd_4503_xlslice_15_0 xlslice_15
       (.Din(tsn_endpoint_ethernet_mac_0_tx_axis_mac_tvalid),
        .Dout(xlslice_15_Dout));
  bd_4503_xlslice_16_0 xlslice_16
       (.Din(tsn_endpoint_ethernet_mac_0_core_hold_disabled_override_pmac),
        .Dout(xlslice_16_Dout));
  bd_4503_xlslice_17_0 xlslice_17
       (.Din(tsn_endpoint_ethernet_mac_0_core_hold_disabled_override_pmac),
        .Dout(xlslice_17_Dout));
  bd_4503_xlslice_18_0 xlslice_18
       (.Din(tsn_endpoint_ethernet_mac_0_hold_request_pmac),
        .Dout(xlslice_18_Dout));
  bd_4503_xlslice_19_0 xlslice_19
       (.Din(tsn_endpoint_ethernet_mac_0_hold_request_pmac),
        .Dout(xlslice_19_Dout));
  bd_4503_xlslice_2_0 xlslice_2
       (.Din(tsn_endpoint_ethernet_mac_0_tx_axis_pmac_tlast),
        .Dout(xlslice_2_Dout));
  bd_4503_xlslice_20_0 xlslice_20
       (.Din(tsn_endpoint_ethernet_mac_0_tx_ptp_frame_allowed),
        .Dout(xlslice_20_Dout));
  bd_4503_xlslice_21_0 xlslice_21
       (.Din(tsn_endpoint_ethernet_mac_0_tx_ptp_frame_allowed),
        .Dout(xlslice_21_Dout));
  bd_4503_xlslice_22_0 xlslice_22
       (.Din(tsn_endpoint_ethernet_mac_0_bus2ip_addr),
        .Dout(xlslice_22_Dout));
  bd_4503_xlslice_23_0 xlslice_23
       (.Din(tsn_endpoint_ethernet_mac_0_switch_be_pkt_byte_count_sw),
        .Dout(xlslice_23_Dout));
  bd_4503_xlslice_24_0 xlslice_24
       (.Din(tsn_endpoint_ethernet_mac_0_switch_be_pkt_byte_count_sw),
        .Dout(xlslice_24_Dout));
  bd_4503_xlslice_25_0 xlslice_25
       (.Din(tsn_temac_1_mac_debug_out),
        .Dout(xlslice_25_Dout));
  bd_4503_xlslice_26_0 xlslice_26
       (.Din(tsn_temac_2_mac_debug_out),
        .Dout(xlslice_26_Dout));
  bd_4503_xlslice_3_0 xlslice_3
       (.Din(tsn_endpoint_ethernet_mac_0_tx_axis_pmac_tlast),
        .Dout(xlslice_3_Dout));
  bd_4503_xlslice_4_0 xlslice_4
       (.Din(tsn_endpoint_ethernet_mac_0_tx_axis_pmac_tuser),
        .Dout(xlslice_4_Dout));
  bd_4503_xlslice_5_0 xlslice_5
       (.Din(tsn_endpoint_ethernet_mac_0_tx_axis_pmac_tuser),
        .Dout(xlslice_5_Dout));
  bd_4503_xlslice_6_0 xlslice_6
       (.Din(tsn_endpoint_ethernet_mac_0_tx_axis_pmac_tvalid),
        .Dout(xlslice_6_Dout));
  bd_4503_xlslice_7_0 xlslice_7
       (.Din(tsn_endpoint_ethernet_mac_0_tx_axis_pmac_tvalid),
        .Dout(xlslice_7_Dout));
  bd_4503_xlslice_8_0 xlslice_8
       (.Din(tsn_endpoint_ethernet_mac_0_tx_axis_mac_tdata),
        .Dout(xlslice_8_Dout));
  bd_4503_xlslice_9_0 xlslice_9
       (.Din(tsn_endpoint_ethernet_mac_0_tx_axis_mac_tdata),
        .Dout(xlslice_9_Dout));
endmodule
