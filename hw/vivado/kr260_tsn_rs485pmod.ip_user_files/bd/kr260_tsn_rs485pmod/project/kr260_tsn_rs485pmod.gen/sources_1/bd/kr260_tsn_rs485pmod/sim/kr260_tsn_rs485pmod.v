//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
//Date        : Sat Jul 27 11:30:25 2024
//Host        : N running 64-bit Ubuntu 24.04 LTS
//Command     : generate_target kr260_tsn_rs485pmod.bd
//Design      : kr260_tsn_rs485pmod
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "kr260_tsn_rs485pmod,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=kr260_tsn_rs485pmod,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=75,numReposBlks=62,numNonXlnxBlks=1,numHierBlks=13,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=1,da_board_cnt=1,da_clkrst_cnt=2,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "kr260_tsn_rs485pmod.hwdef" *) 
module kr260_tsn_rs485pmod
   (CLK_IN_gem,
    Phy_reset_n,
    UART_0_rxd,
    UART_0_rxen,
    UART_0_txd,
    UART_0_txen,
    fan_en_b,
    l1_rxs,
    l2_rxb,
    l3_rxx,
    mdio2_io,
    mdio2_mdc,
    mdio_io,
    mdio_mdc,
    p1_txs,
    p2_txb,
    p3_txx,
    ptp_timer,
    rgmii2_rd,
    rgmii2_rx_ctl,
    rgmii2_rxc,
    rgmii2_td,
    rgmii2_tx_ctl,
    rgmii2_txc,
    rgmii_rd,
    rgmii_rx_ctl,
    rgmii_rxc,
    rgmii_td,
    rgmii_tx_ctl,
    rgmii_txc);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_IN_GEM CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_IN_GEM, CLK_DOMAIN kr260_tsn_rs485pmod_CLK_IN_gem, FREQ_HZ 25000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input CLK_IN_gem;
  output [1:0]Phy_reset_n;
  input UART_0_rxd;
  output UART_0_rxen;
  output UART_0_txd;
  output UART_0_txen;
  output [0:0]fan_en_b;
  output l1_rxs;
  output l2_rxb;
  output l3_rxx;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 mdio2 IO" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME mdio2, CAN_DEBUG false" *) inout mdio2_io;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 mdio2 MDC" *) output mdio2_mdc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 mdio IO" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME mdio, CAN_DEBUG false" *) inout mdio_io;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 mdio MDC" *) output mdio_mdc;
  output p1_txs;
  output p2_txb;
  output p3_txx;
  output ptp_timer;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii2 RD" *) input [3:0]rgmii2_rd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii2 RX_CTL" *) input rgmii2_rx_ctl;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii2 RXC" *) input rgmii2_rxc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii2 TD" *) output [3:0]rgmii2_td;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii2 TX_CTL" *) output rgmii2_tx_ctl;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii2 TXC" *) output rgmii2_txc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii RD" *) input [3:0]rgmii_rd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii RX_CTL" *) input rgmii_rx_ctl;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii RXC" *) input rgmii_rxc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii TD" *) output [3:0]rgmii_td;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii TX_CTL" *) output rgmii_tx_ctl;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii TXC" *) output rgmii_txc;

  wire Op2_1;
  wire [39:0]PS_0_M_AXI_HPM0_LPD_ARADDR;
  wire [1:0]PS_0_M_AXI_HPM0_LPD_ARBURST;
  wire [3:0]PS_0_M_AXI_HPM0_LPD_ARCACHE;
  wire [15:0]PS_0_M_AXI_HPM0_LPD_ARID;
  wire [7:0]PS_0_M_AXI_HPM0_LPD_ARLEN;
  wire PS_0_M_AXI_HPM0_LPD_ARLOCK;
  wire [2:0]PS_0_M_AXI_HPM0_LPD_ARPROT;
  wire [3:0]PS_0_M_AXI_HPM0_LPD_ARQOS;
  wire PS_0_M_AXI_HPM0_LPD_ARREADY;
  wire [2:0]PS_0_M_AXI_HPM0_LPD_ARSIZE;
  wire PS_0_M_AXI_HPM0_LPD_ARVALID;
  wire [39:0]PS_0_M_AXI_HPM0_LPD_AWADDR;
  wire [1:0]PS_0_M_AXI_HPM0_LPD_AWBURST;
  wire [3:0]PS_0_M_AXI_HPM0_LPD_AWCACHE;
  wire [15:0]PS_0_M_AXI_HPM0_LPD_AWID;
  wire [7:0]PS_0_M_AXI_HPM0_LPD_AWLEN;
  wire PS_0_M_AXI_HPM0_LPD_AWLOCK;
  wire [2:0]PS_0_M_AXI_HPM0_LPD_AWPROT;
  wire [3:0]PS_0_M_AXI_HPM0_LPD_AWQOS;
  wire PS_0_M_AXI_HPM0_LPD_AWREADY;
  wire [2:0]PS_0_M_AXI_HPM0_LPD_AWSIZE;
  wire PS_0_M_AXI_HPM0_LPD_AWVALID;
  wire [15:0]PS_0_M_AXI_HPM0_LPD_BID;
  wire PS_0_M_AXI_HPM0_LPD_BREADY;
  wire [1:0]PS_0_M_AXI_HPM0_LPD_BRESP;
  wire PS_0_M_AXI_HPM0_LPD_BVALID;
  wire [31:0]PS_0_M_AXI_HPM0_LPD_RDATA;
  wire [15:0]PS_0_M_AXI_HPM0_LPD_RID;
  wire PS_0_M_AXI_HPM0_LPD_RLAST;
  wire PS_0_M_AXI_HPM0_LPD_RREADY;
  wire [1:0]PS_0_M_AXI_HPM0_LPD_RRESP;
  wire PS_0_M_AXI_HPM0_LPD_RVALID;
  wire [31:0]PS_0_M_AXI_HPM0_LPD_WDATA;
  wire PS_0_M_AXI_HPM0_LPD_WLAST;
  wire PS_0_M_AXI_HPM0_LPD_WREADY;
  wire [3:0]PS_0_M_AXI_HPM0_LPD_WSTRB;
  wire PS_0_M_AXI_HPM0_LPD_WVALID;
  wire [2:0]PS_0_emio_ttc0_wave_o;
  wire axi_intc_0_irq;
  wire [31:0]axi_mcdma_0_M_AXIS_MM2S_TDATA;
  wire [3:0]axi_mcdma_0_M_AXIS_MM2S_TKEEP;
  wire [31:0]axi_mcdma_0_M_AXI_MM2S_ARADDR;
  wire [1:0]axi_mcdma_0_M_AXI_MM2S_ARBURST;
  wire [3:0]axi_mcdma_0_M_AXI_MM2S_ARCACHE;
  wire [7:0]axi_mcdma_0_M_AXI_MM2S_ARLEN;
  wire [2:0]axi_mcdma_0_M_AXI_MM2S_ARPROT;
  wire axi_mcdma_0_M_AXI_MM2S_ARREADY;
  wire [2:0]axi_mcdma_0_M_AXI_MM2S_ARSIZE;
  wire [3:0]axi_mcdma_0_M_AXI_MM2S_ARUSER;
  wire axi_mcdma_0_M_AXI_MM2S_ARVALID;
  wire [31:0]axi_mcdma_0_M_AXI_MM2S_RDATA;
  wire axi_mcdma_0_M_AXI_MM2S_RLAST;
  wire axi_mcdma_0_M_AXI_MM2S_RREADY;
  wire [1:0]axi_mcdma_0_M_AXI_MM2S_RRESP;
  wire axi_mcdma_0_M_AXI_MM2S_RVALID;
  wire [31:0]axi_mcdma_0_M_AXI_S2MM_AWADDR;
  wire [1:0]axi_mcdma_0_M_AXI_S2MM_AWBURST;
  wire [3:0]axi_mcdma_0_M_AXI_S2MM_AWCACHE;
  wire [7:0]axi_mcdma_0_M_AXI_S2MM_AWLEN;
  wire [2:0]axi_mcdma_0_M_AXI_S2MM_AWPROT;
  wire axi_mcdma_0_M_AXI_S2MM_AWREADY;
  wire [2:0]axi_mcdma_0_M_AXI_S2MM_AWSIZE;
  wire [3:0]axi_mcdma_0_M_AXI_S2MM_AWUSER;
  wire axi_mcdma_0_M_AXI_S2MM_AWVALID;
  wire axi_mcdma_0_M_AXI_S2MM_BREADY;
  wire [1:0]axi_mcdma_0_M_AXI_S2MM_BRESP;
  wire axi_mcdma_0_M_AXI_S2MM_BVALID;
  wire [31:0]axi_mcdma_0_M_AXI_S2MM_WDATA;
  wire axi_mcdma_0_M_AXI_S2MM_WLAST;
  wire axi_mcdma_0_M_AXI_S2MM_WREADY;
  wire [3:0]axi_mcdma_0_M_AXI_S2MM_WSTRB;
  wire axi_mcdma_0_M_AXI_S2MM_WVALID;
  wire [31:0]axi_mcdma_0_M_AXI_SG_ARADDR;
  wire [1:0]axi_mcdma_0_M_AXI_SG_ARBURST;
  wire [3:0]axi_mcdma_0_M_AXI_SG_ARCACHE;
  wire [7:0]axi_mcdma_0_M_AXI_SG_ARLEN;
  wire [2:0]axi_mcdma_0_M_AXI_SG_ARPROT;
  wire axi_mcdma_0_M_AXI_SG_ARREADY;
  wire [2:0]axi_mcdma_0_M_AXI_SG_ARSIZE;
  wire [3:0]axi_mcdma_0_M_AXI_SG_ARUSER;
  wire axi_mcdma_0_M_AXI_SG_ARVALID;
  wire [31:0]axi_mcdma_0_M_AXI_SG_AWADDR;
  wire [1:0]axi_mcdma_0_M_AXI_SG_AWBURST;
  wire [3:0]axi_mcdma_0_M_AXI_SG_AWCACHE;
  wire [7:0]axi_mcdma_0_M_AXI_SG_AWLEN;
  wire [2:0]axi_mcdma_0_M_AXI_SG_AWPROT;
  wire axi_mcdma_0_M_AXI_SG_AWREADY;
  wire [2:0]axi_mcdma_0_M_AXI_SG_AWSIZE;
  wire [3:0]axi_mcdma_0_M_AXI_SG_AWUSER;
  wire axi_mcdma_0_M_AXI_SG_AWVALID;
  wire axi_mcdma_0_M_AXI_SG_BREADY;
  wire [1:0]axi_mcdma_0_M_AXI_SG_BRESP;
  wire axi_mcdma_0_M_AXI_SG_BVALID;
  wire [31:0]axi_mcdma_0_M_AXI_SG_RDATA;
  wire axi_mcdma_0_M_AXI_SG_RLAST;
  wire axi_mcdma_0_M_AXI_SG_RREADY;
  wire [1:0]axi_mcdma_0_M_AXI_SG_RRESP;
  wire axi_mcdma_0_M_AXI_SG_RVALID;
  wire [31:0]axi_mcdma_0_M_AXI_SG_WDATA;
  wire axi_mcdma_0_M_AXI_SG_WLAST;
  wire axi_mcdma_0_M_AXI_SG_WREADY;
  wire [3:0]axi_mcdma_0_M_AXI_SG_WSTRB;
  wire axi_mcdma_0_M_AXI_SG_WVALID;
  wire axi_mcdma_0_m_axis_mm2s_tlast;
  wire axi_mcdma_0_m_axis_mm2s_tvalid;
  wire axi_mcdma_0_mm2s_ch1_introut;
  wire axi_mcdma_0_mm2s_ch2_introut;
  wire axi_mcdma_0_s2mm_ch1_introut;
  wire axi_mcdma_0_s2mm_ch2_introut;
  wire axi_mcdma_0_s2mm_ch3_introut;
  wire axi_mcdma_0_s2mm_ch4_introut;
  wire [48:0]axi_smc_M00_AXI_ARADDR;
  wire [1:0]axi_smc_M00_AXI_ARBURST;
  wire [3:0]axi_smc_M00_AXI_ARCACHE;
  wire [7:0]axi_smc_M00_AXI_ARLEN;
  wire [0:0]axi_smc_M00_AXI_ARLOCK;
  wire [2:0]axi_smc_M00_AXI_ARPROT;
  wire [3:0]axi_smc_M00_AXI_ARQOS;
  wire axi_smc_M00_AXI_ARREADY;
  wire [2:0]axi_smc_M00_AXI_ARSIZE;
  wire [3:0]axi_smc_M00_AXI_ARUSER;
  wire axi_smc_M00_AXI_ARVALID;
  wire [48:0]axi_smc_M00_AXI_AWADDR;
  wire [1:0]axi_smc_M00_AXI_AWBURST;
  wire [3:0]axi_smc_M00_AXI_AWCACHE;
  wire [7:0]axi_smc_M00_AXI_AWLEN;
  wire [0:0]axi_smc_M00_AXI_AWLOCK;
  wire [2:0]axi_smc_M00_AXI_AWPROT;
  wire [3:0]axi_smc_M00_AXI_AWQOS;
  wire axi_smc_M00_AXI_AWREADY;
  wire [2:0]axi_smc_M00_AXI_AWSIZE;
  wire [3:0]axi_smc_M00_AXI_AWUSER;
  wire axi_smc_M00_AXI_AWVALID;
  wire axi_smc_M00_AXI_BREADY;
  wire [1:0]axi_smc_M00_AXI_BRESP;
  wire axi_smc_M00_AXI_BVALID;
  wire [127:0]axi_smc_M00_AXI_RDATA;
  wire axi_smc_M00_AXI_RLAST;
  wire axi_smc_M00_AXI_RREADY;
  wire [1:0]axi_smc_M00_AXI_RRESP;
  wire axi_smc_M00_AXI_RVALID;
  wire [127:0]axi_smc_M00_AXI_WDATA;
  wire axi_smc_M00_AXI_WLAST;
  wire axi_smc_M00_AXI_WREADY;
  wire [15:0]axi_smc_M00_AXI_WSTRB;
  wire axi_smc_M00_AXI_WVALID;
  wire axi_uartlite_1_interrupt;
  wire axi_uartlite_1_tx;
  wire [31:0]axis_switch_0_M00_AXIS_TDATA;
  wire [2:0]axis_switch_0_M00_AXIS_TDEST;
  wire [3:0]axis_switch_0_M00_AXIS_TKEEP;
  wire [0:0]axis_switch_0_M00_AXIS_TLAST;
  wire axis_switch_0_M00_AXIS_TREADY;
  wire [31:0]axis_switch_0_M00_AXIS_TUSER;
  wire [0:0]axis_switch_0_M00_AXIS_TVALID;
  wire [1:0]axis_switch_0_s_axis_tready;
  wire clk_in1_0_1;
  wire clk_wiz_0_clk_out1;
  wire clk_wiz_0_clk_out2;
  wire clk_wiz_0_clk_out3;
  wire clk_wiz_0_clk_out4;
  wire clk_wiz_0_clk_out5;
  wire clk_wiz_0_locked;
  wire [6:0]interrupts_concat_0_dout;
  wire [7:0]interrupts_concat_1_dout;
  wire my_tsn_ip_ptp_timers_clk8k;
  wire [31:0]my_tsn_ip_rx_axis_be_TDATA;
  wire [2:0]my_tsn_ip_rx_axis_be_TDEST;
  wire [3:0]my_tsn_ip_rx_axis_be_TKEEP;
  wire [31:0]my_tsn_ip_rx_axis_be_TUSER;
  wire my_tsn_ip_rx_axis_be_tlast;
  wire my_tsn_ip_rx_axis_be_tvalid;
  wire my_tsn_ip_rx_axis_st_tlast;
  wire my_tsn_ip_rx_axis_st_tvalid;
  wire my_tsn_ip_tx_axis_be_tready;
  wire [39:0]ps8_0_axi_periph_M00_AXI_ARADDR;
  wire ps8_0_axi_periph_M00_AXI_ARREADY;
  wire [0:0]ps8_0_axi_periph_M00_AXI_ARVALID;
  wire [39:0]ps8_0_axi_periph_M00_AXI_AWADDR;
  wire ps8_0_axi_periph_M00_AXI_AWREADY;
  wire [0:0]ps8_0_axi_periph_M00_AXI_AWVALID;
  wire [0:0]ps8_0_axi_periph_M00_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_M00_AXI_BRESP;
  wire ps8_0_axi_periph_M00_AXI_BVALID;
  wire [31:0]ps8_0_axi_periph_M00_AXI_RDATA;
  wire [0:0]ps8_0_axi_periph_M00_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_M00_AXI_RRESP;
  wire ps8_0_axi_periph_M00_AXI_RVALID;
  wire [31:0]ps8_0_axi_periph_M00_AXI_WDATA;
  wire ps8_0_axi_periph_M00_AXI_WREADY;
  wire [0:0]ps8_0_axi_periph_M00_AXI_WVALID;
  wire [31:0]ps8_0_axi_periph_M01_AXI_ARADDR;
  wire ps8_0_axi_periph_M01_AXI_ARREADY;
  wire ps8_0_axi_periph_M01_AXI_ARVALID;
  wire [31:0]ps8_0_axi_periph_M01_AXI_AWADDR;
  wire ps8_0_axi_periph_M01_AXI_AWREADY;
  wire ps8_0_axi_periph_M01_AXI_AWVALID;
  wire ps8_0_axi_periph_M01_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_M01_AXI_BRESP;
  wire ps8_0_axi_periph_M01_AXI_BVALID;
  wire [31:0]ps8_0_axi_periph_M01_AXI_RDATA;
  wire ps8_0_axi_periph_M01_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_M01_AXI_RRESP;
  wire ps8_0_axi_periph_M01_AXI_RVALID;
  wire [31:0]ps8_0_axi_periph_M01_AXI_WDATA;
  wire ps8_0_axi_periph_M01_AXI_WREADY;
  wire ps8_0_axi_periph_M01_AXI_WVALID;
  wire [39:0]ps8_0_axi_periph_M02_AXI_ARADDR;
  wire ps8_0_axi_periph_M02_AXI_ARREADY;
  wire [0:0]ps8_0_axi_periph_M02_AXI_ARVALID;
  wire [39:0]ps8_0_axi_periph_M02_AXI_AWADDR;
  wire ps8_0_axi_periph_M02_AXI_AWREADY;
  wire [0:0]ps8_0_axi_periph_M02_AXI_AWVALID;
  wire [0:0]ps8_0_axi_periph_M02_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_M02_AXI_BRESP;
  wire ps8_0_axi_periph_M02_AXI_BVALID;
  wire [31:0]ps8_0_axi_periph_M02_AXI_RDATA;
  wire [0:0]ps8_0_axi_periph_M02_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_M02_AXI_RRESP;
  wire ps8_0_axi_periph_M02_AXI_RVALID;
  wire [31:0]ps8_0_axi_periph_M02_AXI_WDATA;
  wire ps8_0_axi_periph_M02_AXI_WREADY;
  wire [0:0]ps8_0_axi_periph_M02_AXI_WVALID;
  wire [39:0]ps8_0_axi_periph_M03_AXI_ARADDR;
  wire ps8_0_axi_periph_M03_AXI_ARREADY;
  wire [0:0]ps8_0_axi_periph_M03_AXI_ARVALID;
  wire [39:0]ps8_0_axi_periph_M03_AXI_AWADDR;
  wire ps8_0_axi_periph_M03_AXI_AWREADY;
  wire [0:0]ps8_0_axi_periph_M03_AXI_AWVALID;
  wire [0:0]ps8_0_axi_periph_M03_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_M03_AXI_BRESP;
  wire ps8_0_axi_periph_M03_AXI_BVALID;
  wire [31:0]ps8_0_axi_periph_M03_AXI_RDATA;
  wire [0:0]ps8_0_axi_periph_M03_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_M03_AXI_RRESP;
  wire ps8_0_axi_periph_M03_AXI_RVALID;
  wire [31:0]ps8_0_axi_periph_M03_AXI_WDATA;
  wire ps8_0_axi_periph_M03_AXI_WREADY;
  wire [3:0]ps8_0_axi_periph_M03_AXI_WSTRB;
  wire [0:0]ps8_0_axi_periph_M03_AXI_WVALID;
  wire [39:0]ps8_0_axi_periph_M04_AXI_ARADDR;
  wire ps8_0_axi_periph_M04_AXI_ARREADY;
  wire [0:0]ps8_0_axi_periph_M04_AXI_ARVALID;
  wire [39:0]ps8_0_axi_periph_M04_AXI_AWADDR;
  wire ps8_0_axi_periph_M04_AXI_AWREADY;
  wire [0:0]ps8_0_axi_periph_M04_AXI_AWVALID;
  wire [0:0]ps8_0_axi_periph_M04_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_M04_AXI_BRESP;
  wire ps8_0_axi_periph_M04_AXI_BVALID;
  wire [31:0]ps8_0_axi_periph_M04_AXI_RDATA;
  wire [0:0]ps8_0_axi_periph_M04_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_M04_AXI_RRESP;
  wire ps8_0_axi_periph_M04_AXI_RVALID;
  wire [31:0]ps8_0_axi_periph_M04_AXI_WDATA;
  wire ps8_0_axi_periph_M04_AXI_WREADY;
  wire [3:0]ps8_0_axi_periph_M04_AXI_WSTRB;
  wire [0:0]ps8_0_axi_periph_M04_AXI_WVALID;
  wire [39:0]ps8_0_axi_periph_M05_AXI_ARADDR;
  wire [2:0]ps8_0_axi_periph_M05_AXI_ARPROT;
  wire ps8_0_axi_periph_M05_AXI_ARREADY;
  wire ps8_0_axi_periph_M05_AXI_ARVALID;
  wire [39:0]ps8_0_axi_periph_M05_AXI_AWADDR;
  wire [2:0]ps8_0_axi_periph_M05_AXI_AWPROT;
  wire ps8_0_axi_periph_M05_AXI_AWREADY;
  wire ps8_0_axi_periph_M05_AXI_AWVALID;
  wire ps8_0_axi_periph_M05_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_M05_AXI_BRESP;
  wire ps8_0_axi_periph_M05_AXI_BVALID;
  wire [31:0]ps8_0_axi_periph_M05_AXI_RDATA;
  wire ps8_0_axi_periph_M05_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_M05_AXI_RRESP;
  wire ps8_0_axi_periph_M05_AXI_RVALID;
  wire [31:0]ps8_0_axi_periph_M05_AXI_WDATA;
  wire ps8_0_axi_periph_M05_AXI_WREADY;
  wire [3:0]ps8_0_axi_periph_M05_AXI_WSTRB;
  wire ps8_0_axi_periph_M05_AXI_WVALID;
  wire [7:0]ps8_0_axi_periph_M06_AXI_ARADDR;
  wire ps8_0_axi_periph_M06_AXI_ARREADY;
  wire ps8_0_axi_periph_M06_AXI_ARVALID;
  wire [7:0]ps8_0_axi_periph_M06_AXI_AWADDR;
  wire ps8_0_axi_periph_M06_AXI_AWREADY;
  wire ps8_0_axi_periph_M06_AXI_AWVALID;
  wire ps8_0_axi_periph_M06_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_M06_AXI_BRESP;
  wire ps8_0_axi_periph_M06_AXI_BVALID;
  wire [31:0]ps8_0_axi_periph_M06_AXI_RDATA;
  wire ps8_0_axi_periph_M06_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_M06_AXI_RRESP;
  wire ps8_0_axi_periph_M06_AXI_RVALID;
  wire [31:0]ps8_0_axi_periph_M06_AXI_WDATA;
  wire ps8_0_axi_periph_M06_AXI_WREADY;
  wire [3:0]ps8_0_axi_periph_M06_AXI_WSTRB;
  wire ps8_0_axi_periph_M06_AXI_WVALID;
  wire [0:0]rst_clk_wiz_0_100M_1_peripheral_aresetn;
  wire [0:0]rst_clk_wiz_0_100M_peripheral_aresetn;
  wire [0:0]rst_clk_wiz_0_250M_peripheral_aresetn;
  wire rx_0_1;
  wire [0:0]rx_b_and_l_v_r;
  wire [0:0]rx_s_and_l_v_r;
  wire [63:0]sgemm_0_m_axi_A_ARADDR;
  wire [1:0]sgemm_0_m_axi_A_ARBURST;
  wire [3:0]sgemm_0_m_axi_A_ARCACHE;
  wire [0:0]sgemm_0_m_axi_A_ARID;
  wire [7:0]sgemm_0_m_axi_A_ARLEN;
  wire [1:0]sgemm_0_m_axi_A_ARLOCK;
  wire [2:0]sgemm_0_m_axi_A_ARPROT;
  wire [3:0]sgemm_0_m_axi_A_ARQOS;
  wire sgemm_0_m_axi_A_ARREADY;
  wire [2:0]sgemm_0_m_axi_A_ARSIZE;
  wire sgemm_0_m_axi_A_ARVALID;
  wire [255:0]sgemm_0_m_axi_A_RDATA;
  wire [0:0]sgemm_0_m_axi_A_RID;
  wire sgemm_0_m_axi_A_RLAST;
  wire sgemm_0_m_axi_A_RREADY;
  wire [1:0]sgemm_0_m_axi_A_RRESP;
  wire sgemm_0_m_axi_A_RVALID;
  wire [63:0]sgemm_0_m_axi_B_ARADDR;
  wire [1:0]sgemm_0_m_axi_B_ARBURST;
  wire [3:0]sgemm_0_m_axi_B_ARCACHE;
  wire [0:0]sgemm_0_m_axi_B_ARID;
  wire [7:0]sgemm_0_m_axi_B_ARLEN;
  wire [1:0]sgemm_0_m_axi_B_ARLOCK;
  wire [2:0]sgemm_0_m_axi_B_ARPROT;
  wire [3:0]sgemm_0_m_axi_B_ARQOS;
  wire sgemm_0_m_axi_B_ARREADY;
  wire [2:0]sgemm_0_m_axi_B_ARSIZE;
  wire sgemm_0_m_axi_B_ARVALID;
  wire [511:0]sgemm_0_m_axi_B_RDATA;
  wire [0:0]sgemm_0_m_axi_B_RID;
  wire sgemm_0_m_axi_B_RLAST;
  wire sgemm_0_m_axi_B_RREADY;
  wire [1:0]sgemm_0_m_axi_B_RRESP;
  wire sgemm_0_m_axi_B_RVALID;
  wire [63:0]sgemm_0_m_axi_C_AWADDR;
  wire [1:0]sgemm_0_m_axi_C_AWBURST;
  wire [3:0]sgemm_0_m_axi_C_AWCACHE;
  wire [0:0]sgemm_0_m_axi_C_AWID;
  wire [7:0]sgemm_0_m_axi_C_AWLEN;
  wire [1:0]sgemm_0_m_axi_C_AWLOCK;
  wire [2:0]sgemm_0_m_axi_C_AWPROT;
  wire [3:0]sgemm_0_m_axi_C_AWQOS;
  wire sgemm_0_m_axi_C_AWREADY;
  wire [2:0]sgemm_0_m_axi_C_AWSIZE;
  wire sgemm_0_m_axi_C_AWVALID;
  wire [0:0]sgemm_0_m_axi_C_BID;
  wire sgemm_0_m_axi_C_BREADY;
  wire [1:0]sgemm_0_m_axi_C_BRESP;
  wire sgemm_0_m_axi_C_BVALID;
  wire [31:0]sgemm_0_m_axi_C_WDATA;
  wire sgemm_0_m_axi_C_WLAST;
  wire sgemm_0_m_axi_C_WREADY;
  wire [3:0]sgemm_0_m_axi_C_WSTRB;
  wire sgemm_0_m_axi_C_WVALID;
  wire [31:0]smartconnect_0_M00_AXI_ARADDR;
  wire [1:0]smartconnect_0_M00_AXI_ARBURST;
  wire [3:0]smartconnect_0_M00_AXI_ARCACHE;
  wire [7:0]smartconnect_0_M00_AXI_ARLEN;
  wire [0:0]smartconnect_0_M00_AXI_ARLOCK;
  wire [2:0]smartconnect_0_M00_AXI_ARPROT;
  wire [3:0]smartconnect_0_M00_AXI_ARQOS;
  wire smartconnect_0_M00_AXI_ARREADY;
  wire [2:0]smartconnect_0_M00_AXI_ARSIZE;
  wire smartconnect_0_M00_AXI_ARVALID;
  wire [31:0]smartconnect_0_M00_AXI_AWADDR;
  wire [1:0]smartconnect_0_M00_AXI_AWBURST;
  wire [3:0]smartconnect_0_M00_AXI_AWCACHE;
  wire [7:0]smartconnect_0_M00_AXI_AWLEN;
  wire [0:0]smartconnect_0_M00_AXI_AWLOCK;
  wire [2:0]smartconnect_0_M00_AXI_AWPROT;
  wire [3:0]smartconnect_0_M00_AXI_AWQOS;
  wire smartconnect_0_M00_AXI_AWREADY;
  wire [2:0]smartconnect_0_M00_AXI_AWSIZE;
  wire smartconnect_0_M00_AXI_AWVALID;
  wire smartconnect_0_M00_AXI_BREADY;
  wire [1:0]smartconnect_0_M00_AXI_BRESP;
  wire smartconnect_0_M00_AXI_BVALID;
  wire [31:0]smartconnect_0_M00_AXI_RDATA;
  wire smartconnect_0_M00_AXI_RLAST;
  wire smartconnect_0_M00_AXI_RREADY;
  wire [1:0]smartconnect_0_M00_AXI_RRESP;
  wire smartconnect_0_M00_AXI_RVALID;
  wire [31:0]smartconnect_0_M00_AXI_WDATA;
  wire smartconnect_0_M00_AXI_WLAST;
  wire smartconnect_0_M00_AXI_WREADY;
  wire [3:0]smartconnect_0_M00_AXI_WSTRB;
  wire smartconnect_0_M00_AXI_WVALID;
  wire [31:0]smartconnect_1_M00_AXI_ARADDR;
  wire [1:0]smartconnect_1_M00_AXI_ARBURST;
  wire [3:0]smartconnect_1_M00_AXI_ARCACHE;
  wire [7:0]smartconnect_1_M00_AXI_ARLEN;
  wire [0:0]smartconnect_1_M00_AXI_ARLOCK;
  wire [2:0]smartconnect_1_M00_AXI_ARPROT;
  wire [3:0]smartconnect_1_M00_AXI_ARQOS;
  wire smartconnect_1_M00_AXI_ARREADY;
  wire [2:0]smartconnect_1_M00_AXI_ARSIZE;
  wire smartconnect_1_M00_AXI_ARVALID;
  wire [31:0]smartconnect_1_M00_AXI_RDATA;
  wire smartconnect_1_M00_AXI_RLAST;
  wire smartconnect_1_M00_AXI_RREADY;
  wire [1:0]smartconnect_1_M00_AXI_RRESP;
  wire smartconnect_1_M00_AXI_RVALID;
  wire [31:0]system_cache_0_M0_AXI_ARADDR;
  wire [1:0]system_cache_0_M0_AXI_ARBURST;
  wire [3:0]system_cache_0_M0_AXI_ARCACHE;
  wire [0:0]system_cache_0_M0_AXI_ARID;
  wire [7:0]system_cache_0_M0_AXI_ARLEN;
  wire system_cache_0_M0_AXI_ARLOCK;
  wire [2:0]system_cache_0_M0_AXI_ARPROT;
  wire [3:0]system_cache_0_M0_AXI_ARQOS;
  wire system_cache_0_M0_AXI_ARREADY;
  wire [2:0]system_cache_0_M0_AXI_ARSIZE;
  wire system_cache_0_M0_AXI_ARVALID;
  wire [31:0]system_cache_0_M0_AXI_AWADDR;
  wire [1:0]system_cache_0_M0_AXI_AWBURST;
  wire [3:0]system_cache_0_M0_AXI_AWCACHE;
  wire [0:0]system_cache_0_M0_AXI_AWID;
  wire [7:0]system_cache_0_M0_AXI_AWLEN;
  wire system_cache_0_M0_AXI_AWLOCK;
  wire [2:0]system_cache_0_M0_AXI_AWPROT;
  wire [3:0]system_cache_0_M0_AXI_AWQOS;
  wire system_cache_0_M0_AXI_AWREADY;
  wire [2:0]system_cache_0_M0_AXI_AWSIZE;
  wire system_cache_0_M0_AXI_AWVALID;
  wire [5:0]system_cache_0_M0_AXI_BID;
  wire system_cache_0_M0_AXI_BREADY;
  wire [1:0]system_cache_0_M0_AXI_BRESP;
  wire system_cache_0_M0_AXI_BVALID;
  wire [127:0]system_cache_0_M0_AXI_RDATA;
  wire [5:0]system_cache_0_M0_AXI_RID;
  wire system_cache_0_M0_AXI_RLAST;
  wire system_cache_0_M0_AXI_RREADY;
  wire [1:0]system_cache_0_M0_AXI_RRESP;
  wire system_cache_0_M0_AXI_RVALID;
  wire [127:0]system_cache_0_M0_AXI_WDATA;
  wire system_cache_0_M0_AXI_WLAST;
  wire system_cache_0_M0_AXI_WREADY;
  wire [15:0]system_cache_0_M0_AXI_WSTRB;
  wire system_cache_0_M0_AXI_WVALID;
  wire [31:0]system_cache_1_M0_AXI_ARADDR;
  wire [1:0]system_cache_1_M0_AXI_ARBURST;
  wire [3:0]system_cache_1_M0_AXI_ARCACHE;
  wire [0:0]system_cache_1_M0_AXI_ARID;
  wire [7:0]system_cache_1_M0_AXI_ARLEN;
  wire system_cache_1_M0_AXI_ARLOCK;
  wire [2:0]system_cache_1_M0_AXI_ARPROT;
  wire [3:0]system_cache_1_M0_AXI_ARQOS;
  wire system_cache_1_M0_AXI_ARREADY;
  wire [2:0]system_cache_1_M0_AXI_ARSIZE;
  wire system_cache_1_M0_AXI_ARVALID;
  wire [31:0]system_cache_1_M0_AXI_AWADDR;
  wire [1:0]system_cache_1_M0_AXI_AWBURST;
  wire [3:0]system_cache_1_M0_AXI_AWCACHE;
  wire [0:0]system_cache_1_M0_AXI_AWID;
  wire [7:0]system_cache_1_M0_AXI_AWLEN;
  wire system_cache_1_M0_AXI_AWLOCK;
  wire [2:0]system_cache_1_M0_AXI_AWPROT;
  wire [3:0]system_cache_1_M0_AXI_AWQOS;
  wire system_cache_1_M0_AXI_AWREADY;
  wire [2:0]system_cache_1_M0_AXI_AWSIZE;
  wire system_cache_1_M0_AXI_AWVALID;
  wire [5:0]system_cache_1_M0_AXI_BID;
  wire system_cache_1_M0_AXI_BREADY;
  wire [1:0]system_cache_1_M0_AXI_BRESP;
  wire system_cache_1_M0_AXI_BVALID;
  wire [127:0]system_cache_1_M0_AXI_RDATA;
  wire [5:0]system_cache_1_M0_AXI_RID;
  wire system_cache_1_M0_AXI_RLAST;
  wire system_cache_1_M0_AXI_RREADY;
  wire [1:0]system_cache_1_M0_AXI_RRESP;
  wire system_cache_1_M0_AXI_RVALID;
  wire [127:0]system_cache_1_M0_AXI_WDATA;
  wire system_cache_1_M0_AXI_WLAST;
  wire system_cache_1_M0_AXI_WREADY;
  wire [15:0]system_cache_1_M0_AXI_WSTRB;
  wire system_cache_1_M0_AXI_WVALID;
  wire [31:0]ta_dma_0_M_AXIS_ST_INTF_TDATA;
  wire [3:0]ta_dma_0_M_AXIS_ST_INTF_TKEEP;
  wire [39:0]ta_dma_0_M_AXI_ARADDR;
  wire [1:0]ta_dma_0_M_AXI_ARBURST;
  wire [3:0]ta_dma_0_M_AXI_ARCACHE;
  wire [7:0]ta_dma_0_M_AXI_ARLEN;
  wire [2:0]ta_dma_0_M_AXI_ARPROT;
  wire ta_dma_0_M_AXI_ARREADY;
  wire [2:0]ta_dma_0_M_AXI_ARSIZE;
  wire [3:0]ta_dma_0_M_AXI_ARUSER;
  wire ta_dma_0_M_AXI_ARVALID;
  wire [63:0]ta_dma_0_M_AXI_RDATA;
  wire ta_dma_0_M_AXI_RLAST;
  wire ta_dma_0_M_AXI_RREADY;
  wire [1:0]ta_dma_0_M_AXI_RRESP;
  wire ta_dma_0_M_AXI_RVALID;
  wire ta_dma_0_introut;
  wire ta_dma_0_m_axis_st_tlast;
  wire ta_dma_0_m_axis_st_tvalid;
  wire test_pmod_controller_0_listner_0;
  wire test_pmod_controller_0_listner_1;
  wire test_pmod_controller_0_listner_2;
  wire test_pmod_controller_0_publisher_0;
  wire test_pmod_controller_0_publisher_1;
  wire test_pmod_controller_0_publisher_2;
  wire [0:0]tready_Res;
  wire [63:0]tsn_endpoint_ethernet_mac_0_ep_tadma_if_ep_tadma_if_out;
  wire tsn_endpoint_ethernet_mac_0_interrupt_ptp_rx_1;
  wire tsn_endpoint_ethernet_mac_0_interrupt_ptp_rx_2;
  wire tsn_endpoint_ethernet_mac_0_interrupt_ptp_timer;
  wire tsn_endpoint_ethernet_mac_0_interrupt_ptp_tx_1;
  wire tsn_endpoint_ethernet_mac_0_interrupt_ptp_tx_2;
  wire tsn_endpoint_ethernet_mac_0_mac_irq_1;
  wire tsn_endpoint_ethernet_mac_0_mac_irq_2;
  wire tsn_endpoint_ethernet_mac_0_mdio_external1_IO;
  wire tsn_endpoint_ethernet_mac_0_mdio_external1_MDC;
  wire tsn_endpoint_ethernet_mac_0_mdio_external2_IO;
  wire tsn_endpoint_ethernet_mac_0_mdio_external2_MDC;
  wire [31:0]tsn_endpoint_ethernet_mac_0_ptp_timers_syntonised_nanosec_field;
  wire [47:0]tsn_endpoint_ethernet_mac_0_ptp_timers_syntonised_sec_field;
  wire [3:0]tsn_endpoint_ethernet_mac_0_rgmii1_RD;
  wire tsn_endpoint_ethernet_mac_0_rgmii1_RXC;
  wire tsn_endpoint_ethernet_mac_0_rgmii1_RX_CTL;
  wire [3:0]tsn_endpoint_ethernet_mac_0_rgmii1_TD;
  wire tsn_endpoint_ethernet_mac_0_rgmii1_TXC;
  wire tsn_endpoint_ethernet_mac_0_rgmii1_TX_CTL;
  wire [3:0]tsn_endpoint_ethernet_mac_0_rgmii2_RD;
  wire tsn_endpoint_ethernet_mac_0_rgmii2_RXC;
  wire tsn_endpoint_ethernet_mac_0_rgmii2_RX_CTL;
  wire [3:0]tsn_endpoint_ethernet_mac_0_rgmii2_TD;
  wire tsn_endpoint_ethernet_mac_0_rgmii2_TXC;
  wire tsn_endpoint_ethernet_mac_0_rgmii2_TX_CTL;
  wire [31:0]tsn_endpoint_ethernet_mac_0_rtc_nanosec_field;
  wire [47:0]tsn_endpoint_ethernet_mac_0_rtc_sec_field;
  wire [31:0]tsn_endpoint_ethernet_mac_0_rx_axis_st_TDATA;
  wire [2:0]tsn_endpoint_ethernet_mac_0_rx_axis_st_TDEST;
  wire [3:0]tsn_endpoint_ethernet_mac_0_rx_axis_st_TKEEP;
  wire [31:0]tsn_endpoint_ethernet_mac_0_rx_axis_st_TUSER;
  wire [511:0]tsn_endpoint_ethernet_mac_0_tsn_debug_hooks;
  wire tsn_endpoint_ethernet_mac_0_tsn_ep_scheduler_irq;
  wire [0:0]tx_b_and_l_v_r;
  wire [1:0]xlconcat_0_dout;
  wire [1:0]xlconcat_1_dout;
  wire [15:0]xlconcat_2_dout;
  wire [79:0]xlconcat_7_dout;
  wire [1:0]xlconstant_0_dout;
  wire [0:0]xlconstant_1_dout;
  wire [1:0]xlconstant_2_dout;
  wire [0:0]xlconstant_4_dout;
  wire xlslice_0_Dout;
  wire [0:0]xlslice_0_Dout1;
  wire [15:0]xlslice_12_Dout;
  wire [0:0]xlslice_13_Dout;
  wire [15:0]xlslice_14_Dout;
  wire [15:0]xlslice_15_Dout;
  wire [0:0]xlslice_16_Dout;
  wire [0:0]xlslice_17_Dout;
  wire [0:0]xlslice_ttc_0_Dout;

  assign Phy_reset_n[1:0] = xlconstant_0_dout;
  assign UART_0_txd = axi_uartlite_1_tx;
  assign clk_in1_0_1 = CLK_IN_gem;
  assign fan_en_b[0] = xlslice_ttc_0_Dout;
  assign l1_rxs = test_pmod_controller_0_listner_0;
  assign l2_rxb = test_pmod_controller_0_listner_1;
  assign l3_rxx = test_pmod_controller_0_listner_2;
  assign mdio2_mdc = tsn_endpoint_ethernet_mac_0_mdio_external2_MDC;
  assign mdio_mdc = tsn_endpoint_ethernet_mac_0_mdio_external1_MDC;
  assign p1_txs = test_pmod_controller_0_publisher_0;
  assign p2_txb = test_pmod_controller_0_publisher_1;
  assign p3_txx = test_pmod_controller_0_publisher_2;
  assign ptp_timer = my_tsn_ip_ptp_timers_clk8k;
  assign rgmii2_td[3:0] = tsn_endpoint_ethernet_mac_0_rgmii2_TD;
  assign rgmii2_tx_ctl = tsn_endpoint_ethernet_mac_0_rgmii2_TX_CTL;
  assign rgmii2_txc = tsn_endpoint_ethernet_mac_0_rgmii2_TXC;
  assign rgmii_td[3:0] = tsn_endpoint_ethernet_mac_0_rgmii1_TD;
  assign rgmii_tx_ctl = tsn_endpoint_ethernet_mac_0_rgmii1_TX_CTL;
  assign rgmii_txc = tsn_endpoint_ethernet_mac_0_rgmii1_TXC;
  assign rx_0_1 = UART_0_rxd;
  assign tsn_endpoint_ethernet_mac_0_rgmii1_RD = rgmii_rd[3:0];
  assign tsn_endpoint_ethernet_mac_0_rgmii1_RXC = rgmii_rxc;
  assign tsn_endpoint_ethernet_mac_0_rgmii1_RX_CTL = rgmii_rx_ctl;
  assign tsn_endpoint_ethernet_mac_0_rgmii2_RD = rgmii2_rd[3:0];
  assign tsn_endpoint_ethernet_mac_0_rgmii2_RXC = rgmii2_rxc;
  assign tsn_endpoint_ethernet_mac_0_rgmii2_RX_CTL = rgmii2_rx_ctl;
  kr260_tsn_rs485pmod_PS_0_0 PS_0
       (.emio_ttc0_wave_o(PS_0_emio_ttc0_wave_o),
        .maxigp2_araddr(PS_0_M_AXI_HPM0_LPD_ARADDR),
        .maxigp2_arburst(PS_0_M_AXI_HPM0_LPD_ARBURST),
        .maxigp2_arcache(PS_0_M_AXI_HPM0_LPD_ARCACHE),
        .maxigp2_arid(PS_0_M_AXI_HPM0_LPD_ARID),
        .maxigp2_arlen(PS_0_M_AXI_HPM0_LPD_ARLEN),
        .maxigp2_arlock(PS_0_M_AXI_HPM0_LPD_ARLOCK),
        .maxigp2_arprot(PS_0_M_AXI_HPM0_LPD_ARPROT),
        .maxigp2_arqos(PS_0_M_AXI_HPM0_LPD_ARQOS),
        .maxigp2_arready(PS_0_M_AXI_HPM0_LPD_ARREADY),
        .maxigp2_arsize(PS_0_M_AXI_HPM0_LPD_ARSIZE),
        .maxigp2_arvalid(PS_0_M_AXI_HPM0_LPD_ARVALID),
        .maxigp2_awaddr(PS_0_M_AXI_HPM0_LPD_AWADDR),
        .maxigp2_awburst(PS_0_M_AXI_HPM0_LPD_AWBURST),
        .maxigp2_awcache(PS_0_M_AXI_HPM0_LPD_AWCACHE),
        .maxigp2_awid(PS_0_M_AXI_HPM0_LPD_AWID),
        .maxigp2_awlen(PS_0_M_AXI_HPM0_LPD_AWLEN),
        .maxigp2_awlock(PS_0_M_AXI_HPM0_LPD_AWLOCK),
        .maxigp2_awprot(PS_0_M_AXI_HPM0_LPD_AWPROT),
        .maxigp2_awqos(PS_0_M_AXI_HPM0_LPD_AWQOS),
        .maxigp2_awready(PS_0_M_AXI_HPM0_LPD_AWREADY),
        .maxigp2_awsize(PS_0_M_AXI_HPM0_LPD_AWSIZE),
        .maxigp2_awvalid(PS_0_M_AXI_HPM0_LPD_AWVALID),
        .maxigp2_bid(PS_0_M_AXI_HPM0_LPD_BID),
        .maxigp2_bready(PS_0_M_AXI_HPM0_LPD_BREADY),
        .maxigp2_bresp(PS_0_M_AXI_HPM0_LPD_BRESP),
        .maxigp2_bvalid(PS_0_M_AXI_HPM0_LPD_BVALID),
        .maxigp2_rdata(PS_0_M_AXI_HPM0_LPD_RDATA),
        .maxigp2_rid(PS_0_M_AXI_HPM0_LPD_RID),
        .maxigp2_rlast(PS_0_M_AXI_HPM0_LPD_RLAST),
        .maxigp2_rready(PS_0_M_AXI_HPM0_LPD_RREADY),
        .maxigp2_rresp(PS_0_M_AXI_HPM0_LPD_RRESP),
        .maxigp2_rvalid(PS_0_M_AXI_HPM0_LPD_RVALID),
        .maxigp2_wdata(PS_0_M_AXI_HPM0_LPD_WDATA),
        .maxigp2_wlast(PS_0_M_AXI_HPM0_LPD_WLAST),
        .maxigp2_wready(PS_0_M_AXI_HPM0_LPD_WREADY),
        .maxigp2_wstrb(PS_0_M_AXI_HPM0_LPD_WSTRB),
        .maxigp2_wvalid(PS_0_M_AXI_HPM0_LPD_WVALID),
        .maxihpm0_lpd_aclk(clk_wiz_0_clk_out4),
        .pl_ps_irq0(axi_intc_0_irq),
        .pl_ps_irq1(1'b0),
        .pl_resetn0(xlslice_0_Dout),
        .saxigp2_araddr(axi_smc_M00_AXI_ARADDR),
        .saxigp2_arburst(axi_smc_M00_AXI_ARBURST),
        .saxigp2_arcache(axi_smc_M00_AXI_ARCACHE),
        .saxigp2_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp2_arlen(axi_smc_M00_AXI_ARLEN),
        .saxigp2_arlock(axi_smc_M00_AXI_ARLOCK),
        .saxigp2_arprot(axi_smc_M00_AXI_ARPROT),
        .saxigp2_arqos(axi_smc_M00_AXI_ARQOS),
        .saxigp2_arready(axi_smc_M00_AXI_ARREADY),
        .saxigp2_arsize(axi_smc_M00_AXI_ARSIZE),
        .saxigp2_aruser(axi_smc_M00_AXI_ARUSER[0]),
        .saxigp2_arvalid(axi_smc_M00_AXI_ARVALID),
        .saxigp2_awaddr(axi_smc_M00_AXI_AWADDR),
        .saxigp2_awburst(axi_smc_M00_AXI_AWBURST),
        .saxigp2_awcache(axi_smc_M00_AXI_AWCACHE),
        .saxigp2_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp2_awlen(axi_smc_M00_AXI_AWLEN),
        .saxigp2_awlock(axi_smc_M00_AXI_AWLOCK),
        .saxigp2_awprot(axi_smc_M00_AXI_AWPROT),
        .saxigp2_awqos(axi_smc_M00_AXI_AWQOS),
        .saxigp2_awready(axi_smc_M00_AXI_AWREADY),
        .saxigp2_awsize(axi_smc_M00_AXI_AWSIZE),
        .saxigp2_awuser(axi_smc_M00_AXI_AWUSER[0]),
        .saxigp2_awvalid(axi_smc_M00_AXI_AWVALID),
        .saxigp2_bready(axi_smc_M00_AXI_BREADY),
        .saxigp2_bresp(axi_smc_M00_AXI_BRESP),
        .saxigp2_bvalid(axi_smc_M00_AXI_BVALID),
        .saxigp2_rdata(axi_smc_M00_AXI_RDATA),
        .saxigp2_rlast(axi_smc_M00_AXI_RLAST),
        .saxigp2_rready(axi_smc_M00_AXI_RREADY),
        .saxigp2_rresp(axi_smc_M00_AXI_RRESP),
        .saxigp2_rvalid(axi_smc_M00_AXI_RVALID),
        .saxigp2_wdata(axi_smc_M00_AXI_WDATA),
        .saxigp2_wlast(axi_smc_M00_AXI_WLAST),
        .saxigp2_wready(axi_smc_M00_AXI_WREADY),
        .saxigp2_wstrb(axi_smc_M00_AXI_WSTRB),
        .saxigp2_wvalid(axi_smc_M00_AXI_WVALID),
        .saxigp3_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,system_cache_0_M0_AXI_ARADDR}),
        .saxigp3_arburst(system_cache_0_M0_AXI_ARBURST),
        .saxigp3_arcache(system_cache_0_M0_AXI_ARCACHE),
        .saxigp3_arid({1'b0,1'b0,1'b0,1'b0,1'b0,system_cache_0_M0_AXI_ARID}),
        .saxigp3_arlen(system_cache_0_M0_AXI_ARLEN),
        .saxigp3_arlock(system_cache_0_M0_AXI_ARLOCK),
        .saxigp3_arprot(system_cache_0_M0_AXI_ARPROT),
        .saxigp3_arqos(system_cache_0_M0_AXI_ARQOS),
        .saxigp3_arready(system_cache_0_M0_AXI_ARREADY),
        .saxigp3_arsize(system_cache_0_M0_AXI_ARSIZE),
        .saxigp3_aruser(1'b0),
        .saxigp3_arvalid(system_cache_0_M0_AXI_ARVALID),
        .saxigp3_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,system_cache_0_M0_AXI_AWADDR}),
        .saxigp3_awburst(system_cache_0_M0_AXI_AWBURST),
        .saxigp3_awcache(system_cache_0_M0_AXI_AWCACHE),
        .saxigp3_awid({1'b0,1'b0,1'b0,1'b0,1'b0,system_cache_0_M0_AXI_AWID}),
        .saxigp3_awlen(system_cache_0_M0_AXI_AWLEN),
        .saxigp3_awlock(system_cache_0_M0_AXI_AWLOCK),
        .saxigp3_awprot(system_cache_0_M0_AXI_AWPROT),
        .saxigp3_awqos(system_cache_0_M0_AXI_AWQOS),
        .saxigp3_awready(system_cache_0_M0_AXI_AWREADY),
        .saxigp3_awsize(system_cache_0_M0_AXI_AWSIZE),
        .saxigp3_awuser(1'b0),
        .saxigp3_awvalid(system_cache_0_M0_AXI_AWVALID),
        .saxigp3_bid(system_cache_0_M0_AXI_BID),
        .saxigp3_bready(system_cache_0_M0_AXI_BREADY),
        .saxigp3_bresp(system_cache_0_M0_AXI_BRESP),
        .saxigp3_bvalid(system_cache_0_M0_AXI_BVALID),
        .saxigp3_rdata(system_cache_0_M0_AXI_RDATA),
        .saxigp3_rid(system_cache_0_M0_AXI_RID),
        .saxigp3_rlast(system_cache_0_M0_AXI_RLAST),
        .saxigp3_rready(system_cache_0_M0_AXI_RREADY),
        .saxigp3_rresp(system_cache_0_M0_AXI_RRESP),
        .saxigp3_rvalid(system_cache_0_M0_AXI_RVALID),
        .saxigp3_wdata(system_cache_0_M0_AXI_WDATA),
        .saxigp3_wlast(system_cache_0_M0_AXI_WLAST),
        .saxigp3_wready(system_cache_0_M0_AXI_WREADY),
        .saxigp3_wstrb(system_cache_0_M0_AXI_WSTRB),
        .saxigp3_wvalid(system_cache_0_M0_AXI_WVALID),
        .saxigp4_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,system_cache_1_M0_AXI_ARADDR}),
        .saxigp4_arburst(system_cache_1_M0_AXI_ARBURST),
        .saxigp4_arcache(system_cache_1_M0_AXI_ARCACHE),
        .saxigp4_arid({1'b0,1'b0,1'b0,1'b0,1'b0,system_cache_1_M0_AXI_ARID}),
        .saxigp4_arlen(system_cache_1_M0_AXI_ARLEN),
        .saxigp4_arlock(system_cache_1_M0_AXI_ARLOCK),
        .saxigp4_arprot(system_cache_1_M0_AXI_ARPROT),
        .saxigp4_arqos(system_cache_1_M0_AXI_ARQOS),
        .saxigp4_arready(system_cache_1_M0_AXI_ARREADY),
        .saxigp4_arsize(system_cache_1_M0_AXI_ARSIZE),
        .saxigp4_aruser(1'b0),
        .saxigp4_arvalid(system_cache_1_M0_AXI_ARVALID),
        .saxigp4_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,system_cache_1_M0_AXI_AWADDR}),
        .saxigp4_awburst(system_cache_1_M0_AXI_AWBURST),
        .saxigp4_awcache(system_cache_1_M0_AXI_AWCACHE),
        .saxigp4_awid({1'b0,1'b0,1'b0,1'b0,1'b0,system_cache_1_M0_AXI_AWID}),
        .saxigp4_awlen(system_cache_1_M0_AXI_AWLEN),
        .saxigp4_awlock(system_cache_1_M0_AXI_AWLOCK),
        .saxigp4_awprot(system_cache_1_M0_AXI_AWPROT),
        .saxigp4_awqos(system_cache_1_M0_AXI_AWQOS),
        .saxigp4_awready(system_cache_1_M0_AXI_AWREADY),
        .saxigp4_awsize(system_cache_1_M0_AXI_AWSIZE),
        .saxigp4_awuser(1'b0),
        .saxigp4_awvalid(system_cache_1_M0_AXI_AWVALID),
        .saxigp4_bid(system_cache_1_M0_AXI_BID),
        .saxigp4_bready(system_cache_1_M0_AXI_BREADY),
        .saxigp4_bresp(system_cache_1_M0_AXI_BRESP),
        .saxigp4_bvalid(system_cache_1_M0_AXI_BVALID),
        .saxigp4_rdata(system_cache_1_M0_AXI_RDATA),
        .saxigp4_rid(system_cache_1_M0_AXI_RID),
        .saxigp4_rlast(system_cache_1_M0_AXI_RLAST),
        .saxigp4_rready(system_cache_1_M0_AXI_RREADY),
        .saxigp4_rresp(system_cache_1_M0_AXI_RRESP),
        .saxigp4_rvalid(system_cache_1_M0_AXI_RVALID),
        .saxigp4_wdata(system_cache_1_M0_AXI_WDATA),
        .saxigp4_wlast(system_cache_1_M0_AXI_WLAST),
        .saxigp4_wready(system_cache_1_M0_AXI_WREADY),
        .saxigp4_wstrb(system_cache_1_M0_AXI_WSTRB),
        .saxigp4_wvalid(system_cache_1_M0_AXI_WVALID),
        .saxihp0_fpd_aclk(clk_wiz_0_clk_out1),
        .saxihp1_fpd_aclk(clk_wiz_0_clk_out5),
        .saxihp2_fpd_aclk(clk_wiz_0_clk_out5));
  kr260_tsn_rs485pmod_axi_intc_0_0 axi_intc_0
       (.intr(xlconcat_2_dout),
        .irq(axi_intc_0_irq),
        .s_axi_aclk(clk_wiz_0_clk_out4),
        .s_axi_araddr(ps8_0_axi_periph_M03_AXI_ARADDR[8:0]),
        .s_axi_aresetn(rst_clk_wiz_0_100M_1_peripheral_aresetn),
        .s_axi_arready(ps8_0_axi_periph_M03_AXI_ARREADY),
        .s_axi_arvalid(ps8_0_axi_periph_M03_AXI_ARVALID),
        .s_axi_awaddr(ps8_0_axi_periph_M03_AXI_AWADDR[8:0]),
        .s_axi_awready(ps8_0_axi_periph_M03_AXI_AWREADY),
        .s_axi_awvalid(ps8_0_axi_periph_M03_AXI_AWVALID),
        .s_axi_bready(ps8_0_axi_periph_M03_AXI_BREADY),
        .s_axi_bresp(ps8_0_axi_periph_M03_AXI_BRESP),
        .s_axi_bvalid(ps8_0_axi_periph_M03_AXI_BVALID),
        .s_axi_rdata(ps8_0_axi_periph_M03_AXI_RDATA),
        .s_axi_rready(ps8_0_axi_periph_M03_AXI_RREADY),
        .s_axi_rresp(ps8_0_axi_periph_M03_AXI_RRESP),
        .s_axi_rvalid(ps8_0_axi_periph_M03_AXI_RVALID),
        .s_axi_wdata(ps8_0_axi_periph_M03_AXI_WDATA),
        .s_axi_wready(ps8_0_axi_periph_M03_AXI_WREADY),
        .s_axi_wstrb(ps8_0_axi_periph_M03_AXI_WSTRB),
        .s_axi_wvalid(ps8_0_axi_periph_M03_AXI_WVALID));
  kr260_tsn_rs485pmod_axi_mcdma_0_0 axi_mcdma_0
       (.axi_resetn(rst_clk_wiz_0_100M_1_peripheral_aresetn),
        .m_axi_mm2s_araddr(axi_mcdma_0_M_AXI_MM2S_ARADDR),
        .m_axi_mm2s_arburst(axi_mcdma_0_M_AXI_MM2S_ARBURST),
        .m_axi_mm2s_arcache(axi_mcdma_0_M_AXI_MM2S_ARCACHE),
        .m_axi_mm2s_arlen(axi_mcdma_0_M_AXI_MM2S_ARLEN),
        .m_axi_mm2s_arprot(axi_mcdma_0_M_AXI_MM2S_ARPROT),
        .m_axi_mm2s_arready(axi_mcdma_0_M_AXI_MM2S_ARREADY),
        .m_axi_mm2s_arsize(axi_mcdma_0_M_AXI_MM2S_ARSIZE),
        .m_axi_mm2s_aruser(axi_mcdma_0_M_AXI_MM2S_ARUSER),
        .m_axi_mm2s_arvalid(axi_mcdma_0_M_AXI_MM2S_ARVALID),
        .m_axi_mm2s_rdata(axi_mcdma_0_M_AXI_MM2S_RDATA),
        .m_axi_mm2s_rlast(axi_mcdma_0_M_AXI_MM2S_RLAST),
        .m_axi_mm2s_rready(axi_mcdma_0_M_AXI_MM2S_RREADY),
        .m_axi_mm2s_rresp(axi_mcdma_0_M_AXI_MM2S_RRESP),
        .m_axi_mm2s_rvalid(axi_mcdma_0_M_AXI_MM2S_RVALID),
        .m_axi_s2mm_awaddr(axi_mcdma_0_M_AXI_S2MM_AWADDR),
        .m_axi_s2mm_awburst(axi_mcdma_0_M_AXI_S2MM_AWBURST),
        .m_axi_s2mm_awcache(axi_mcdma_0_M_AXI_S2MM_AWCACHE),
        .m_axi_s2mm_awlen(axi_mcdma_0_M_AXI_S2MM_AWLEN),
        .m_axi_s2mm_awprot(axi_mcdma_0_M_AXI_S2MM_AWPROT),
        .m_axi_s2mm_awready(axi_mcdma_0_M_AXI_S2MM_AWREADY),
        .m_axi_s2mm_awsize(axi_mcdma_0_M_AXI_S2MM_AWSIZE),
        .m_axi_s2mm_awuser(axi_mcdma_0_M_AXI_S2MM_AWUSER),
        .m_axi_s2mm_awvalid(axi_mcdma_0_M_AXI_S2MM_AWVALID),
        .m_axi_s2mm_bready(axi_mcdma_0_M_AXI_S2MM_BREADY),
        .m_axi_s2mm_bresp(axi_mcdma_0_M_AXI_S2MM_BRESP),
        .m_axi_s2mm_bvalid(axi_mcdma_0_M_AXI_S2MM_BVALID),
        .m_axi_s2mm_wdata(axi_mcdma_0_M_AXI_S2MM_WDATA),
        .m_axi_s2mm_wlast(axi_mcdma_0_M_AXI_S2MM_WLAST),
        .m_axi_s2mm_wready(axi_mcdma_0_M_AXI_S2MM_WREADY),
        .m_axi_s2mm_wstrb(axi_mcdma_0_M_AXI_S2MM_WSTRB),
        .m_axi_s2mm_wvalid(axi_mcdma_0_M_AXI_S2MM_WVALID),
        .m_axi_sg_araddr(axi_mcdma_0_M_AXI_SG_ARADDR),
        .m_axi_sg_arburst(axi_mcdma_0_M_AXI_SG_ARBURST),
        .m_axi_sg_arcache(axi_mcdma_0_M_AXI_SG_ARCACHE),
        .m_axi_sg_arlen(axi_mcdma_0_M_AXI_SG_ARLEN),
        .m_axi_sg_arprot(axi_mcdma_0_M_AXI_SG_ARPROT),
        .m_axi_sg_arready(axi_mcdma_0_M_AXI_SG_ARREADY),
        .m_axi_sg_arsize(axi_mcdma_0_M_AXI_SG_ARSIZE),
        .m_axi_sg_aruser(axi_mcdma_0_M_AXI_SG_ARUSER),
        .m_axi_sg_arvalid(axi_mcdma_0_M_AXI_SG_ARVALID),
        .m_axi_sg_awaddr(axi_mcdma_0_M_AXI_SG_AWADDR),
        .m_axi_sg_awburst(axi_mcdma_0_M_AXI_SG_AWBURST),
        .m_axi_sg_awcache(axi_mcdma_0_M_AXI_SG_AWCACHE),
        .m_axi_sg_awlen(axi_mcdma_0_M_AXI_SG_AWLEN),
        .m_axi_sg_awprot(axi_mcdma_0_M_AXI_SG_AWPROT),
        .m_axi_sg_awready(axi_mcdma_0_M_AXI_SG_AWREADY),
        .m_axi_sg_awsize(axi_mcdma_0_M_AXI_SG_AWSIZE),
        .m_axi_sg_awuser(axi_mcdma_0_M_AXI_SG_AWUSER),
        .m_axi_sg_awvalid(axi_mcdma_0_M_AXI_SG_AWVALID),
        .m_axi_sg_bready(axi_mcdma_0_M_AXI_SG_BREADY),
        .m_axi_sg_bresp(axi_mcdma_0_M_AXI_SG_BRESP),
        .m_axi_sg_bvalid(axi_mcdma_0_M_AXI_SG_BVALID),
        .m_axi_sg_rdata(axi_mcdma_0_M_AXI_SG_RDATA),
        .m_axi_sg_rlast(axi_mcdma_0_M_AXI_SG_RLAST),
        .m_axi_sg_rready(axi_mcdma_0_M_AXI_SG_RREADY),
        .m_axi_sg_rresp(axi_mcdma_0_M_AXI_SG_RRESP),
        .m_axi_sg_rvalid(axi_mcdma_0_M_AXI_SG_RVALID),
        .m_axi_sg_wdata(axi_mcdma_0_M_AXI_SG_WDATA),
        .m_axi_sg_wlast(axi_mcdma_0_M_AXI_SG_WLAST),
        .m_axi_sg_wready(axi_mcdma_0_M_AXI_SG_WREADY),
        .m_axi_sg_wstrb(axi_mcdma_0_M_AXI_SG_WSTRB),
        .m_axi_sg_wvalid(axi_mcdma_0_M_AXI_SG_WVALID),
        .m_axis_mm2s_tdata(axi_mcdma_0_M_AXIS_MM2S_TDATA),
        .m_axis_mm2s_tkeep(axi_mcdma_0_M_AXIS_MM2S_TKEEP),
        .m_axis_mm2s_tlast(axi_mcdma_0_m_axis_mm2s_tlast),
        .m_axis_mm2s_tready(my_tsn_ip_tx_axis_be_tready),
        .m_axis_mm2s_tvalid(axi_mcdma_0_m_axis_mm2s_tvalid),
        .mm2s_ch1_introut(axi_mcdma_0_mm2s_ch1_introut),
        .mm2s_ch2_introut(axi_mcdma_0_mm2s_ch2_introut),
        .s2mm_ch1_introut(axi_mcdma_0_s2mm_ch1_introut),
        .s2mm_ch2_introut(axi_mcdma_0_s2mm_ch2_introut),
        .s2mm_ch3_introut(axi_mcdma_0_s2mm_ch3_introut),
        .s2mm_ch4_introut(axi_mcdma_0_s2mm_ch4_introut),
        .s_axi_aclk(clk_wiz_0_clk_out1),
        .s_axi_lite_aclk(clk_wiz_0_clk_out4),
        .s_axi_lite_araddr(ps8_0_axi_periph_M00_AXI_ARADDR[11:0]),
        .s_axi_lite_arready(ps8_0_axi_periph_M00_AXI_ARREADY),
        .s_axi_lite_arvalid(ps8_0_axi_periph_M00_AXI_ARVALID),
        .s_axi_lite_awaddr(ps8_0_axi_periph_M00_AXI_AWADDR[11:0]),
        .s_axi_lite_awready(ps8_0_axi_periph_M00_AXI_AWREADY),
        .s_axi_lite_awvalid(ps8_0_axi_periph_M00_AXI_AWVALID),
        .s_axi_lite_bready(ps8_0_axi_periph_M00_AXI_BREADY),
        .s_axi_lite_bresp(ps8_0_axi_periph_M00_AXI_BRESP),
        .s_axi_lite_bvalid(ps8_0_axi_periph_M00_AXI_BVALID),
        .s_axi_lite_rdata(ps8_0_axi_periph_M00_AXI_RDATA),
        .s_axi_lite_rready(ps8_0_axi_periph_M00_AXI_RREADY),
        .s_axi_lite_rresp(ps8_0_axi_periph_M00_AXI_RRESP),
        .s_axi_lite_rvalid(ps8_0_axi_periph_M00_AXI_RVALID),
        .s_axi_lite_wdata(ps8_0_axi_periph_M00_AXI_WDATA),
        .s_axi_lite_wready(ps8_0_axi_periph_M00_AXI_WREADY),
        .s_axi_lite_wvalid(ps8_0_axi_periph_M00_AXI_WVALID),
        .s_axis_s2mm_tdata(axis_switch_0_M00_AXIS_TDATA),
        .s_axis_s2mm_tdest({1'b0,axis_switch_0_M00_AXIS_TDEST}),
        .s_axis_s2mm_tid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_s2mm_tkeep(axis_switch_0_M00_AXIS_TKEEP),
        .s_axis_s2mm_tlast(axis_switch_0_M00_AXIS_TLAST),
        .s_axis_s2mm_tready(axis_switch_0_M00_AXIS_TREADY),
        .s_axis_s2mm_tuser(axis_switch_0_M00_AXIS_TUSER[15:0]),
        .s_axis_s2mm_tvalid(axis_switch_0_M00_AXIS_TVALID));
  kr260_tsn_rs485pmod_axi_smc_0 axi_smc
       (.M00_AXI_araddr(axi_smc_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_smc_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_smc_M00_AXI_ARCACHE),
        .M00_AXI_arlen(axi_smc_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_smc_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_smc_M00_AXI_ARPROT),
        .M00_AXI_arqos(axi_smc_M00_AXI_ARQOS),
        .M00_AXI_arready(axi_smc_M00_AXI_ARREADY),
        .M00_AXI_arsize(axi_smc_M00_AXI_ARSIZE),
        .M00_AXI_aruser(axi_smc_M00_AXI_ARUSER),
        .M00_AXI_arvalid(axi_smc_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_smc_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_smc_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_smc_M00_AXI_AWCACHE),
        .M00_AXI_awlen(axi_smc_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_smc_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_smc_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_smc_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_smc_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_smc_M00_AXI_AWSIZE),
        .M00_AXI_awuser(axi_smc_M00_AXI_AWUSER),
        .M00_AXI_awvalid(axi_smc_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_smc_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_smc_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_smc_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_smc_M00_AXI_RDATA),
        .M00_AXI_rlast(axi_smc_M00_AXI_RLAST),
        .M00_AXI_rready(axi_smc_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_smc_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_smc_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_smc_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_smc_M00_AXI_WLAST),
        .M00_AXI_wready(axi_smc_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_smc_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_smc_M00_AXI_WVALID),
        .S00_AXI_araddr(axi_mcdma_0_M_AXI_SG_ARADDR),
        .S00_AXI_arburst(axi_mcdma_0_M_AXI_SG_ARBURST),
        .S00_AXI_arcache(axi_mcdma_0_M_AXI_SG_ARCACHE),
        .S00_AXI_arlen(axi_mcdma_0_M_AXI_SG_ARLEN),
        .S00_AXI_arlock(1'b0),
        .S00_AXI_arprot(axi_mcdma_0_M_AXI_SG_ARPROT),
        .S00_AXI_arqos({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_arready(axi_mcdma_0_M_AXI_SG_ARREADY),
        .S00_AXI_arsize(axi_mcdma_0_M_AXI_SG_ARSIZE),
        .S00_AXI_aruser(axi_mcdma_0_M_AXI_SG_ARUSER),
        .S00_AXI_arvalid(axi_mcdma_0_M_AXI_SG_ARVALID),
        .S00_AXI_awaddr(axi_mcdma_0_M_AXI_SG_AWADDR),
        .S00_AXI_awburst(axi_mcdma_0_M_AXI_SG_AWBURST),
        .S00_AXI_awcache(axi_mcdma_0_M_AXI_SG_AWCACHE),
        .S00_AXI_awlen(axi_mcdma_0_M_AXI_SG_AWLEN),
        .S00_AXI_awlock(1'b0),
        .S00_AXI_awprot(axi_mcdma_0_M_AXI_SG_AWPROT),
        .S00_AXI_awqos({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_awready(axi_mcdma_0_M_AXI_SG_AWREADY),
        .S00_AXI_awsize(axi_mcdma_0_M_AXI_SG_AWSIZE),
        .S00_AXI_awuser(axi_mcdma_0_M_AXI_SG_AWUSER),
        .S00_AXI_awvalid(axi_mcdma_0_M_AXI_SG_AWVALID),
        .S00_AXI_bready(axi_mcdma_0_M_AXI_SG_BREADY),
        .S00_AXI_bresp(axi_mcdma_0_M_AXI_SG_BRESP),
        .S00_AXI_bvalid(axi_mcdma_0_M_AXI_SG_BVALID),
        .S00_AXI_rdata(axi_mcdma_0_M_AXI_SG_RDATA),
        .S00_AXI_rlast(axi_mcdma_0_M_AXI_SG_RLAST),
        .S00_AXI_rready(axi_mcdma_0_M_AXI_SG_RREADY),
        .S00_AXI_rresp(axi_mcdma_0_M_AXI_SG_RRESP),
        .S00_AXI_rvalid(axi_mcdma_0_M_AXI_SG_RVALID),
        .S00_AXI_wdata(axi_mcdma_0_M_AXI_SG_WDATA),
        .S00_AXI_wlast(axi_mcdma_0_M_AXI_SG_WLAST),
        .S00_AXI_wready(axi_mcdma_0_M_AXI_SG_WREADY),
        .S00_AXI_wstrb(axi_mcdma_0_M_AXI_SG_WSTRB),
        .S00_AXI_wvalid(axi_mcdma_0_M_AXI_SG_WVALID),
        .S01_AXI_araddr(axi_mcdma_0_M_AXI_MM2S_ARADDR),
        .S01_AXI_arburst(axi_mcdma_0_M_AXI_MM2S_ARBURST),
        .S01_AXI_arcache(axi_mcdma_0_M_AXI_MM2S_ARCACHE),
        .S01_AXI_arlen(axi_mcdma_0_M_AXI_MM2S_ARLEN),
        .S01_AXI_arlock(1'b0),
        .S01_AXI_arprot(axi_mcdma_0_M_AXI_MM2S_ARPROT),
        .S01_AXI_arqos({1'b0,1'b0,1'b0,1'b0}),
        .S01_AXI_arready(axi_mcdma_0_M_AXI_MM2S_ARREADY),
        .S01_AXI_arsize(axi_mcdma_0_M_AXI_MM2S_ARSIZE),
        .S01_AXI_aruser(axi_mcdma_0_M_AXI_MM2S_ARUSER),
        .S01_AXI_arvalid(axi_mcdma_0_M_AXI_MM2S_ARVALID),
        .S01_AXI_rdata(axi_mcdma_0_M_AXI_MM2S_RDATA),
        .S01_AXI_rlast(axi_mcdma_0_M_AXI_MM2S_RLAST),
        .S01_AXI_rready(axi_mcdma_0_M_AXI_MM2S_RREADY),
        .S01_AXI_rresp(axi_mcdma_0_M_AXI_MM2S_RRESP),
        .S01_AXI_rvalid(axi_mcdma_0_M_AXI_MM2S_RVALID),
        .S02_AXI_awaddr(axi_mcdma_0_M_AXI_S2MM_AWADDR),
        .S02_AXI_awburst(axi_mcdma_0_M_AXI_S2MM_AWBURST),
        .S02_AXI_awcache(axi_mcdma_0_M_AXI_S2MM_AWCACHE),
        .S02_AXI_awlen(axi_mcdma_0_M_AXI_S2MM_AWLEN),
        .S02_AXI_awlock(1'b0),
        .S02_AXI_awprot(axi_mcdma_0_M_AXI_S2MM_AWPROT),
        .S02_AXI_awqos({1'b0,1'b0,1'b0,1'b0}),
        .S02_AXI_awready(axi_mcdma_0_M_AXI_S2MM_AWREADY),
        .S02_AXI_awsize(axi_mcdma_0_M_AXI_S2MM_AWSIZE),
        .S02_AXI_awuser(axi_mcdma_0_M_AXI_S2MM_AWUSER),
        .S02_AXI_awvalid(axi_mcdma_0_M_AXI_S2MM_AWVALID),
        .S02_AXI_bready(axi_mcdma_0_M_AXI_S2MM_BREADY),
        .S02_AXI_bresp(axi_mcdma_0_M_AXI_S2MM_BRESP),
        .S02_AXI_bvalid(axi_mcdma_0_M_AXI_S2MM_BVALID),
        .S02_AXI_wdata(axi_mcdma_0_M_AXI_S2MM_WDATA),
        .S02_AXI_wlast(axi_mcdma_0_M_AXI_S2MM_WLAST),
        .S02_AXI_wready(axi_mcdma_0_M_AXI_S2MM_WREADY),
        .S02_AXI_wstrb(axi_mcdma_0_M_AXI_S2MM_WSTRB),
        .S02_AXI_wvalid(axi_mcdma_0_M_AXI_S2MM_WVALID),
        .S03_AXI_araddr(ta_dma_0_M_AXI_ARADDR),
        .S03_AXI_arburst(ta_dma_0_M_AXI_ARBURST),
        .S03_AXI_arcache(ta_dma_0_M_AXI_ARCACHE),
        .S03_AXI_arlen(ta_dma_0_M_AXI_ARLEN),
        .S03_AXI_arlock(1'b0),
        .S03_AXI_arprot(ta_dma_0_M_AXI_ARPROT),
        .S03_AXI_arqos({1'b0,1'b0,1'b0,1'b0}),
        .S03_AXI_arready(ta_dma_0_M_AXI_ARREADY),
        .S03_AXI_arsize(ta_dma_0_M_AXI_ARSIZE),
        .S03_AXI_aruser(ta_dma_0_M_AXI_ARUSER),
        .S03_AXI_arvalid(ta_dma_0_M_AXI_ARVALID),
        .S03_AXI_rdata(ta_dma_0_M_AXI_RDATA),
        .S03_AXI_rlast(ta_dma_0_M_AXI_RLAST),
        .S03_AXI_rready(ta_dma_0_M_AXI_RREADY),
        .S03_AXI_rresp(ta_dma_0_M_AXI_RRESP),
        .S03_AXI_rvalid(ta_dma_0_M_AXI_RVALID),
        .aclk(clk_wiz_0_clk_out1),
        .aresetn(rst_clk_wiz_0_100M_peripheral_aresetn));
  kr260_tsn_rs485pmod_axi_uartlite_1_1 axi_uartlite_1
       (.interrupt(axi_uartlite_1_interrupt),
        .rx(rx_0_1),
        .s_axi_aclk(clk_wiz_0_clk_out4),
        .s_axi_araddr(ps8_0_axi_periph_M04_AXI_ARADDR[3:0]),
        .s_axi_aresetn(rst_clk_wiz_0_100M_1_peripheral_aresetn),
        .s_axi_arready(ps8_0_axi_periph_M04_AXI_ARREADY),
        .s_axi_arvalid(ps8_0_axi_periph_M04_AXI_ARVALID),
        .s_axi_awaddr(ps8_0_axi_periph_M04_AXI_AWADDR[3:0]),
        .s_axi_awready(ps8_0_axi_periph_M04_AXI_AWREADY),
        .s_axi_awvalid(ps8_0_axi_periph_M04_AXI_AWVALID),
        .s_axi_bready(ps8_0_axi_periph_M04_AXI_BREADY),
        .s_axi_bresp(ps8_0_axi_periph_M04_AXI_BRESP),
        .s_axi_bvalid(ps8_0_axi_periph_M04_AXI_BVALID),
        .s_axi_rdata(ps8_0_axi_periph_M04_AXI_RDATA),
        .s_axi_rready(ps8_0_axi_periph_M04_AXI_RREADY),
        .s_axi_rresp(ps8_0_axi_periph_M04_AXI_RRESP),
        .s_axi_rvalid(ps8_0_axi_periph_M04_AXI_RVALID),
        .s_axi_wdata(ps8_0_axi_periph_M04_AXI_WDATA),
        .s_axi_wready(ps8_0_axi_periph_M04_AXI_WREADY),
        .s_axi_wstrb(ps8_0_axi_periph_M04_AXI_WSTRB),
        .s_axi_wvalid(ps8_0_axi_periph_M04_AXI_WVALID),
        .tx(axi_uartlite_1_tx));
  kr260_tsn_rs485pmod_axis_switch_0_0 axis_switch_0
       (.aclk(clk_wiz_0_clk_out1),
        .aresetn(rst_clk_wiz_0_100M_peripheral_aresetn),
        .m_axis_tdata(axis_switch_0_M00_AXIS_TDATA),
        .m_axis_tdest(axis_switch_0_M00_AXIS_TDEST),
        .m_axis_tkeep(axis_switch_0_M00_AXIS_TKEEP),
        .m_axis_tlast(axis_switch_0_M00_AXIS_TLAST),
        .m_axis_tready(axis_switch_0_M00_AXIS_TREADY),
        .m_axis_tuser(axis_switch_0_M00_AXIS_TUSER),
        .m_axis_tvalid(axis_switch_0_M00_AXIS_TVALID),
        .s_axis_tdata({my_tsn_ip_rx_axis_be_TDATA,tsn_endpoint_ethernet_mac_0_rx_axis_st_TDATA}),
        .s_axis_tdest({my_tsn_ip_rx_axis_be_TDEST,tsn_endpoint_ethernet_mac_0_rx_axis_st_TDEST}),
        .s_axis_tkeep({my_tsn_ip_rx_axis_be_TKEEP,tsn_endpoint_ethernet_mac_0_rx_axis_st_TKEEP}),
        .s_axis_tlast(xlconcat_0_dout),
        .s_axis_tready(axis_switch_0_s_axis_tready),
        .s_axis_tuser({my_tsn_ip_rx_axis_be_TUSER,tsn_endpoint_ethernet_mac_0_rx_axis_st_TUSER}),
        .s_axis_tvalid(xlconcat_1_dout),
        .s_req_suppress(xlconstant_2_dout));
  kr260_tsn_rs485pmod_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(clk_in1_0_1),
        .clk_out1(clk_wiz_0_clk_out1),
        .clk_out2(clk_wiz_0_clk_out2),
        .clk_out3(clk_wiz_0_clk_out3),
        .clk_out4(clk_wiz_0_clk_out4),
        .clk_out5(clk_wiz_0_clk_out5),
        .locked(clk_wiz_0_locked));
  kr260_tsn_rs485pmod_interrupts_concat_0_0 interrupts_concat_0
       (.In0(ta_dma_0_introut),
        .In1(axi_mcdma_0_mm2s_ch1_introut),
        .In2(axi_mcdma_0_mm2s_ch2_introut),
        .In3(axi_mcdma_0_s2mm_ch1_introut),
        .In4(axi_mcdma_0_s2mm_ch2_introut),
        .In5(axi_mcdma_0_s2mm_ch3_introut),
        .In6(axi_mcdma_0_s2mm_ch4_introut),
        .dout(interrupts_concat_0_dout));
  kr260_tsn_rs485pmod_interrupts_concat_1_0 interrupts_concat_1
       (.In0(tsn_endpoint_ethernet_mac_0_interrupt_ptp_rx_1),
        .In1(tsn_endpoint_ethernet_mac_0_interrupt_ptp_rx_2),
        .In2(tsn_endpoint_ethernet_mac_0_interrupt_ptp_tx_1),
        .In3(tsn_endpoint_ethernet_mac_0_interrupt_ptp_tx_2),
        .In4(tsn_endpoint_ethernet_mac_0_mac_irq_1),
        .In5(tsn_endpoint_ethernet_mac_0_mac_irq_2),
        .In6(tsn_endpoint_ethernet_mac_0_interrupt_ptp_timer),
        .In7(tsn_endpoint_ethernet_mac_0_tsn_ep_scheduler_irq),
        .dout(interrupts_concat_1_dout));
  kr260_tsn_rs485pmod_my_tsn_ip_0 my_tsn_ip
       (.ep_tadma_if_out(tsn_endpoint_ethernet_mac_0_ep_tadma_if_ep_tadma_if_out),
        .glbl_rstn(rst_clk_wiz_0_100M_1_peripheral_aresetn),
        .gtx_clk(clk_wiz_0_clk_out2),
        .gtx_clk90(clk_wiz_0_clk_out2),
        .gtx_dcm_locked(clk_wiz_0_locked),
        .host_rxfifo_aclk(clk_wiz_0_clk_out1),
        .host_txfifo_aclk(clk_wiz_0_clk_out1),
        .interrupt_ptp_rx_1(tsn_endpoint_ethernet_mac_0_interrupt_ptp_rx_1),
        .interrupt_ptp_rx_2(tsn_endpoint_ethernet_mac_0_interrupt_ptp_rx_2),
        .interrupt_ptp_timer(tsn_endpoint_ethernet_mac_0_interrupt_ptp_timer),
        .interrupt_ptp_tx_1(tsn_endpoint_ethernet_mac_0_interrupt_ptp_tx_1),
        .interrupt_ptp_tx_2(tsn_endpoint_ethernet_mac_0_interrupt_ptp_tx_2),
        .mac_irq_1(tsn_endpoint_ethernet_mac_0_mac_irq_1),
        .mac_irq_2(tsn_endpoint_ethernet_mac_0_mac_irq_2),
        .mdio_external1_io(mdio_io),
        .mdio_external1_mdc(tsn_endpoint_ethernet_mac_0_mdio_external1_MDC),
        .mdio_external2_io(mdio2_io),
        .mdio_external2_mdc(tsn_endpoint_ethernet_mac_0_mdio_external2_MDC),
        .misc_out_tsn_debug_hooks(tsn_endpoint_ethernet_mac_0_tsn_debug_hooks),
        .ptp_timers_clk8k(my_tsn_ip_ptp_timers_clk8k),
        .ptp_timers_ns_field(tsn_endpoint_ethernet_mac_0_rtc_nanosec_field),
        .ptp_timers_s_field(tsn_endpoint_ethernet_mac_0_rtc_sec_field),
        .ptp_timers_syntonised_nanosec_field(tsn_endpoint_ethernet_mac_0_ptp_timers_syntonised_nanosec_field),
        .ptp_timers_syntonised_sec_field(tsn_endpoint_ethernet_mac_0_ptp_timers_syntonised_sec_field),
        .refclk(clk_wiz_0_clk_out3),
        .rgmii1_rd(tsn_endpoint_ethernet_mac_0_rgmii1_RD),
        .rgmii1_rx_ctl(tsn_endpoint_ethernet_mac_0_rgmii1_RX_CTL),
        .rgmii1_rxc(tsn_endpoint_ethernet_mac_0_rgmii1_RXC),
        .rgmii1_td(tsn_endpoint_ethernet_mac_0_rgmii1_TD),
        .rgmii1_tx_ctl(tsn_endpoint_ethernet_mac_0_rgmii1_TX_CTL),
        .rgmii1_txc(tsn_endpoint_ethernet_mac_0_rgmii1_TXC),
        .rgmii2_rd(tsn_endpoint_ethernet_mac_0_rgmii2_RD),
        .rgmii2_rx_ctl(tsn_endpoint_ethernet_mac_0_rgmii2_RX_CTL),
        .rgmii2_rxc(tsn_endpoint_ethernet_mac_0_rgmii2_RXC),
        .rgmii2_td(tsn_endpoint_ethernet_mac_0_rgmii2_TD),
        .rgmii2_tx_ctl(tsn_endpoint_ethernet_mac_0_rgmii2_TX_CTL),
        .rgmii2_txc(tsn_endpoint_ethernet_mac_0_rgmii2_TXC),
        .rx_axis_be_tdata(my_tsn_ip_rx_axis_be_TDATA),
        .rx_axis_be_tdest(my_tsn_ip_rx_axis_be_TDEST),
        .rx_axis_be_tkeep(my_tsn_ip_rx_axis_be_TKEEP),
        .rx_axis_be_tlast(my_tsn_ip_rx_axis_be_tlast),
        .rx_axis_be_tready(xlslice_17_Dout),
        .rx_axis_be_tuser(my_tsn_ip_rx_axis_be_TUSER),
        .rx_axis_be_tvalid(my_tsn_ip_rx_axis_be_tvalid),
        .rx_axis_st_tdata(tsn_endpoint_ethernet_mac_0_rx_axis_st_TDATA),
        .rx_axis_st_tdest(tsn_endpoint_ethernet_mac_0_rx_axis_st_TDEST),
        .rx_axis_st_tkeep(tsn_endpoint_ethernet_mac_0_rx_axis_st_TKEEP),
        .rx_axis_st_tlast(my_tsn_ip_rx_axis_st_tlast),
        .rx_axis_st_tready(xlslice_0_Dout1),
        .rx_axis_st_tuser(tsn_endpoint_ethernet_mac_0_rx_axis_st_TUSER),
        .rx_axis_st_tvalid(my_tsn_ip_rx_axis_st_tvalid),
        .s_axi_aclk(clk_wiz_0_clk_out4),
        .s_axi_araddr(ps8_0_axi_periph_M02_AXI_ARADDR[17:0]),
        .s_axi_aresetn(rst_clk_wiz_0_100M_1_peripheral_aresetn),
        .s_axi_arready(ps8_0_axi_periph_M02_AXI_ARREADY),
        .s_axi_arvalid(ps8_0_axi_periph_M02_AXI_ARVALID),
        .s_axi_awaddr(ps8_0_axi_periph_M02_AXI_AWADDR[17:0]),
        .s_axi_awready(ps8_0_axi_periph_M02_AXI_AWREADY),
        .s_axi_awvalid(ps8_0_axi_periph_M02_AXI_AWVALID),
        .s_axi_bready(ps8_0_axi_periph_M02_AXI_BREADY),
        .s_axi_bresp(ps8_0_axi_periph_M02_AXI_BRESP),
        .s_axi_bvalid(ps8_0_axi_periph_M02_AXI_BVALID),
        .s_axi_rdata(ps8_0_axi_periph_M02_AXI_RDATA),
        .s_axi_rready(ps8_0_axi_periph_M02_AXI_RREADY),
        .s_axi_rresp(ps8_0_axi_periph_M02_AXI_RRESP),
        .s_axi_rvalid(ps8_0_axi_periph_M02_AXI_RVALID),
        .s_axi_wdata(ps8_0_axi_periph_M02_AXI_WDATA),
        .s_axi_wready(ps8_0_axi_periph_M02_AXI_WREADY),
        .s_axi_wvalid(ps8_0_axi_periph_M02_AXI_WVALID),
        .tsn_ep_scheduler_irq(tsn_endpoint_ethernet_mac_0_tsn_ep_scheduler_irq),
        .tx_axis_be_tdata(axi_mcdma_0_M_AXIS_MM2S_TDATA),
        .tx_axis_be_tkeep(axi_mcdma_0_M_AXIS_MM2S_TKEEP),
        .tx_axis_be_tlast(axi_mcdma_0_m_axis_mm2s_tlast),
        .tx_axis_be_tready(my_tsn_ip_tx_axis_be_tready),
        .tx_axis_be_tvalid(axi_mcdma_0_m_axis_mm2s_tvalid),
        .tx_axis_st_tdata(ta_dma_0_M_AXIS_ST_INTF_TDATA),
        .tx_axis_st_tkeep(ta_dma_0_M_AXIS_ST_INTF_TKEEP),
        .tx_axis_st_tlast(ta_dma_0_m_axis_st_tlast),
        .tx_axis_st_tready(Op2_1),
        .tx_axis_st_tvalid(ta_dma_0_m_axis_st_tvalid));
  kr260_tsn_rs485pmod_proc_sys_reset_0_0 proc_sys_reset_0
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(xlslice_0_Dout),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(my_tsn_ip_ptp_timers_clk8k));
  kr260_tsn_rs485pmod_ps8_0_axi_periph_0 ps8_0_axi_periph
       (.ACLK(clk_wiz_0_clk_out4),
        .ARESETN(rst_clk_wiz_0_100M_1_peripheral_aresetn),
        .M00_ACLK(clk_wiz_0_clk_out4),
        .M00_ARESETN(rst_clk_wiz_0_100M_1_peripheral_aresetn),
        .M00_AXI_araddr(ps8_0_axi_periph_M00_AXI_ARADDR),
        .M00_AXI_arready(ps8_0_axi_periph_M00_AXI_ARREADY),
        .M00_AXI_arvalid(ps8_0_axi_periph_M00_AXI_ARVALID),
        .M00_AXI_awaddr(ps8_0_axi_periph_M00_AXI_AWADDR),
        .M00_AXI_awready(ps8_0_axi_periph_M00_AXI_AWREADY),
        .M00_AXI_awvalid(ps8_0_axi_periph_M00_AXI_AWVALID),
        .M00_AXI_bready(ps8_0_axi_periph_M00_AXI_BREADY),
        .M00_AXI_bresp(ps8_0_axi_periph_M00_AXI_BRESP),
        .M00_AXI_bvalid(ps8_0_axi_periph_M00_AXI_BVALID),
        .M00_AXI_rdata(ps8_0_axi_periph_M00_AXI_RDATA),
        .M00_AXI_rready(ps8_0_axi_periph_M00_AXI_RREADY),
        .M00_AXI_rresp(ps8_0_axi_periph_M00_AXI_RRESP),
        .M00_AXI_rvalid(ps8_0_axi_periph_M00_AXI_RVALID),
        .M00_AXI_wdata(ps8_0_axi_periph_M00_AXI_WDATA),
        .M00_AXI_wready(ps8_0_axi_periph_M00_AXI_WREADY),
        .M00_AXI_wvalid(ps8_0_axi_periph_M00_AXI_WVALID),
        .M01_ACLK(clk_wiz_0_clk_out1),
        .M01_ARESETN(rst_clk_wiz_0_100M_peripheral_aresetn),
        .M01_AXI_araddr(ps8_0_axi_periph_M01_AXI_ARADDR),
        .M01_AXI_arready(ps8_0_axi_periph_M01_AXI_ARREADY),
        .M01_AXI_arvalid(ps8_0_axi_periph_M01_AXI_ARVALID),
        .M01_AXI_awaddr(ps8_0_axi_periph_M01_AXI_AWADDR),
        .M01_AXI_awready(ps8_0_axi_periph_M01_AXI_AWREADY),
        .M01_AXI_awvalid(ps8_0_axi_periph_M01_AXI_AWVALID),
        .M01_AXI_bready(ps8_0_axi_periph_M01_AXI_BREADY),
        .M01_AXI_bresp(ps8_0_axi_periph_M01_AXI_BRESP),
        .M01_AXI_bvalid(ps8_0_axi_periph_M01_AXI_BVALID),
        .M01_AXI_rdata(ps8_0_axi_periph_M01_AXI_RDATA),
        .M01_AXI_rready(ps8_0_axi_periph_M01_AXI_RREADY),
        .M01_AXI_rresp(ps8_0_axi_periph_M01_AXI_RRESP),
        .M01_AXI_rvalid(ps8_0_axi_periph_M01_AXI_RVALID),
        .M01_AXI_wdata(ps8_0_axi_periph_M01_AXI_WDATA),
        .M01_AXI_wready(ps8_0_axi_periph_M01_AXI_WREADY),
        .M01_AXI_wvalid(ps8_0_axi_periph_M01_AXI_WVALID),
        .M02_ACLK(clk_wiz_0_clk_out4),
        .M02_ARESETN(rst_clk_wiz_0_100M_1_peripheral_aresetn),
        .M02_AXI_araddr(ps8_0_axi_periph_M02_AXI_ARADDR),
        .M02_AXI_arready(ps8_0_axi_periph_M02_AXI_ARREADY),
        .M02_AXI_arvalid(ps8_0_axi_periph_M02_AXI_ARVALID),
        .M02_AXI_awaddr(ps8_0_axi_periph_M02_AXI_AWADDR),
        .M02_AXI_awready(ps8_0_axi_periph_M02_AXI_AWREADY),
        .M02_AXI_awvalid(ps8_0_axi_periph_M02_AXI_AWVALID),
        .M02_AXI_bready(ps8_0_axi_periph_M02_AXI_BREADY),
        .M02_AXI_bresp(ps8_0_axi_periph_M02_AXI_BRESP),
        .M02_AXI_bvalid(ps8_0_axi_periph_M02_AXI_BVALID),
        .M02_AXI_rdata(ps8_0_axi_periph_M02_AXI_RDATA),
        .M02_AXI_rready(ps8_0_axi_periph_M02_AXI_RREADY),
        .M02_AXI_rresp(ps8_0_axi_periph_M02_AXI_RRESP),
        .M02_AXI_rvalid(ps8_0_axi_periph_M02_AXI_RVALID),
        .M02_AXI_wdata(ps8_0_axi_periph_M02_AXI_WDATA),
        .M02_AXI_wready(ps8_0_axi_periph_M02_AXI_WREADY),
        .M02_AXI_wvalid(ps8_0_axi_periph_M02_AXI_WVALID),
        .M03_ACLK(clk_wiz_0_clk_out4),
        .M03_ARESETN(rst_clk_wiz_0_100M_1_peripheral_aresetn),
        .M03_AXI_araddr(ps8_0_axi_periph_M03_AXI_ARADDR),
        .M03_AXI_arready(ps8_0_axi_periph_M03_AXI_ARREADY),
        .M03_AXI_arvalid(ps8_0_axi_periph_M03_AXI_ARVALID),
        .M03_AXI_awaddr(ps8_0_axi_periph_M03_AXI_AWADDR),
        .M03_AXI_awready(ps8_0_axi_periph_M03_AXI_AWREADY),
        .M03_AXI_awvalid(ps8_0_axi_periph_M03_AXI_AWVALID),
        .M03_AXI_bready(ps8_0_axi_periph_M03_AXI_BREADY),
        .M03_AXI_bresp(ps8_0_axi_periph_M03_AXI_BRESP),
        .M03_AXI_bvalid(ps8_0_axi_periph_M03_AXI_BVALID),
        .M03_AXI_rdata(ps8_0_axi_periph_M03_AXI_RDATA),
        .M03_AXI_rready(ps8_0_axi_periph_M03_AXI_RREADY),
        .M03_AXI_rresp(ps8_0_axi_periph_M03_AXI_RRESP),
        .M03_AXI_rvalid(ps8_0_axi_periph_M03_AXI_RVALID),
        .M03_AXI_wdata(ps8_0_axi_periph_M03_AXI_WDATA),
        .M03_AXI_wready(ps8_0_axi_periph_M03_AXI_WREADY),
        .M03_AXI_wstrb(ps8_0_axi_periph_M03_AXI_WSTRB),
        .M03_AXI_wvalid(ps8_0_axi_periph_M03_AXI_WVALID),
        .M04_ACLK(clk_wiz_0_clk_out4),
        .M04_ARESETN(rst_clk_wiz_0_100M_1_peripheral_aresetn),
        .M04_AXI_araddr(ps8_0_axi_periph_M04_AXI_ARADDR),
        .M04_AXI_arready(ps8_0_axi_periph_M04_AXI_ARREADY),
        .M04_AXI_arvalid(ps8_0_axi_periph_M04_AXI_ARVALID),
        .M04_AXI_awaddr(ps8_0_axi_periph_M04_AXI_AWADDR),
        .M04_AXI_awready(ps8_0_axi_periph_M04_AXI_AWREADY),
        .M04_AXI_awvalid(ps8_0_axi_periph_M04_AXI_AWVALID),
        .M04_AXI_bready(ps8_0_axi_periph_M04_AXI_BREADY),
        .M04_AXI_bresp(ps8_0_axi_periph_M04_AXI_BRESP),
        .M04_AXI_bvalid(ps8_0_axi_periph_M04_AXI_BVALID),
        .M04_AXI_rdata(ps8_0_axi_periph_M04_AXI_RDATA),
        .M04_AXI_rready(ps8_0_axi_periph_M04_AXI_RREADY),
        .M04_AXI_rresp(ps8_0_axi_periph_M04_AXI_RRESP),
        .M04_AXI_rvalid(ps8_0_axi_periph_M04_AXI_RVALID),
        .M04_AXI_wdata(ps8_0_axi_periph_M04_AXI_WDATA),
        .M04_AXI_wready(ps8_0_axi_periph_M04_AXI_WREADY),
        .M04_AXI_wstrb(ps8_0_axi_periph_M04_AXI_WSTRB),
        .M04_AXI_wvalid(ps8_0_axi_periph_M04_AXI_WVALID),
        .M05_ACLK(clk_wiz_0_clk_out4),
        .M05_ARESETN(rst_clk_wiz_0_100M_1_peripheral_aresetn),
        .M05_AXI_araddr(ps8_0_axi_periph_M05_AXI_ARADDR),
        .M05_AXI_arprot(ps8_0_axi_periph_M05_AXI_ARPROT),
        .M05_AXI_arready(ps8_0_axi_periph_M05_AXI_ARREADY),
        .M05_AXI_arvalid(ps8_0_axi_periph_M05_AXI_ARVALID),
        .M05_AXI_awaddr(ps8_0_axi_periph_M05_AXI_AWADDR),
        .M05_AXI_awprot(ps8_0_axi_periph_M05_AXI_AWPROT),
        .M05_AXI_awready(ps8_0_axi_periph_M05_AXI_AWREADY),
        .M05_AXI_awvalid(ps8_0_axi_periph_M05_AXI_AWVALID),
        .M05_AXI_bready(ps8_0_axi_periph_M05_AXI_BREADY),
        .M05_AXI_bresp(ps8_0_axi_periph_M05_AXI_BRESP),
        .M05_AXI_bvalid(ps8_0_axi_periph_M05_AXI_BVALID),
        .M05_AXI_rdata(ps8_0_axi_periph_M05_AXI_RDATA),
        .M05_AXI_rready(ps8_0_axi_periph_M05_AXI_RREADY),
        .M05_AXI_rresp(ps8_0_axi_periph_M05_AXI_RRESP),
        .M05_AXI_rvalid(ps8_0_axi_periph_M05_AXI_RVALID),
        .M05_AXI_wdata(ps8_0_axi_periph_M05_AXI_WDATA),
        .M05_AXI_wready(ps8_0_axi_periph_M05_AXI_WREADY),
        .M05_AXI_wstrb(ps8_0_axi_periph_M05_AXI_WSTRB),
        .M05_AXI_wvalid(ps8_0_axi_periph_M05_AXI_WVALID),
        .M06_ACLK(clk_wiz_0_clk_out5),
        .M06_ARESETN(rst_clk_wiz_0_250M_peripheral_aresetn),
        .M06_AXI_araddr(ps8_0_axi_periph_M06_AXI_ARADDR),
        .M06_AXI_arready(ps8_0_axi_periph_M06_AXI_ARREADY),
        .M06_AXI_arvalid(ps8_0_axi_periph_M06_AXI_ARVALID),
        .M06_AXI_awaddr(ps8_0_axi_periph_M06_AXI_AWADDR),
        .M06_AXI_awready(ps8_0_axi_periph_M06_AXI_AWREADY),
        .M06_AXI_awvalid(ps8_0_axi_periph_M06_AXI_AWVALID),
        .M06_AXI_bready(ps8_0_axi_periph_M06_AXI_BREADY),
        .M06_AXI_bresp(ps8_0_axi_periph_M06_AXI_BRESP),
        .M06_AXI_bvalid(ps8_0_axi_periph_M06_AXI_BVALID),
        .M06_AXI_rdata(ps8_0_axi_periph_M06_AXI_RDATA),
        .M06_AXI_rready(ps8_0_axi_periph_M06_AXI_RREADY),
        .M06_AXI_rresp(ps8_0_axi_periph_M06_AXI_RRESP),
        .M06_AXI_rvalid(ps8_0_axi_periph_M06_AXI_RVALID),
        .M06_AXI_wdata(ps8_0_axi_periph_M06_AXI_WDATA),
        .M06_AXI_wready(ps8_0_axi_periph_M06_AXI_WREADY),
        .M06_AXI_wstrb(ps8_0_axi_periph_M06_AXI_WSTRB),
        .M06_AXI_wvalid(ps8_0_axi_periph_M06_AXI_WVALID),
        .S00_ACLK(clk_wiz_0_clk_out4),
        .S00_ARESETN(rst_clk_wiz_0_100M_1_peripheral_aresetn),
        .S00_AXI_araddr(PS_0_M_AXI_HPM0_LPD_ARADDR),
        .S00_AXI_arburst(PS_0_M_AXI_HPM0_LPD_ARBURST),
        .S00_AXI_arcache(PS_0_M_AXI_HPM0_LPD_ARCACHE),
        .S00_AXI_arid(PS_0_M_AXI_HPM0_LPD_ARID),
        .S00_AXI_arlen(PS_0_M_AXI_HPM0_LPD_ARLEN),
        .S00_AXI_arlock(PS_0_M_AXI_HPM0_LPD_ARLOCK),
        .S00_AXI_arprot(PS_0_M_AXI_HPM0_LPD_ARPROT),
        .S00_AXI_arqos(PS_0_M_AXI_HPM0_LPD_ARQOS),
        .S00_AXI_arready(PS_0_M_AXI_HPM0_LPD_ARREADY),
        .S00_AXI_arsize(PS_0_M_AXI_HPM0_LPD_ARSIZE),
        .S00_AXI_arvalid(PS_0_M_AXI_HPM0_LPD_ARVALID),
        .S00_AXI_awaddr(PS_0_M_AXI_HPM0_LPD_AWADDR),
        .S00_AXI_awburst(PS_0_M_AXI_HPM0_LPD_AWBURST),
        .S00_AXI_awcache(PS_0_M_AXI_HPM0_LPD_AWCACHE),
        .S00_AXI_awid(PS_0_M_AXI_HPM0_LPD_AWID),
        .S00_AXI_awlen(PS_0_M_AXI_HPM0_LPD_AWLEN),
        .S00_AXI_awlock(PS_0_M_AXI_HPM0_LPD_AWLOCK),
        .S00_AXI_awprot(PS_0_M_AXI_HPM0_LPD_AWPROT),
        .S00_AXI_awqos(PS_0_M_AXI_HPM0_LPD_AWQOS),
        .S00_AXI_awready(PS_0_M_AXI_HPM0_LPD_AWREADY),
        .S00_AXI_awsize(PS_0_M_AXI_HPM0_LPD_AWSIZE),
        .S00_AXI_awvalid(PS_0_M_AXI_HPM0_LPD_AWVALID),
        .S00_AXI_bid(PS_0_M_AXI_HPM0_LPD_BID),
        .S00_AXI_bready(PS_0_M_AXI_HPM0_LPD_BREADY),
        .S00_AXI_bresp(PS_0_M_AXI_HPM0_LPD_BRESP),
        .S00_AXI_bvalid(PS_0_M_AXI_HPM0_LPD_BVALID),
        .S00_AXI_rdata(PS_0_M_AXI_HPM0_LPD_RDATA),
        .S00_AXI_rid(PS_0_M_AXI_HPM0_LPD_RID),
        .S00_AXI_rlast(PS_0_M_AXI_HPM0_LPD_RLAST),
        .S00_AXI_rready(PS_0_M_AXI_HPM0_LPD_RREADY),
        .S00_AXI_rresp(PS_0_M_AXI_HPM0_LPD_RRESP),
        .S00_AXI_rvalid(PS_0_M_AXI_HPM0_LPD_RVALID),
        .S00_AXI_wdata(PS_0_M_AXI_HPM0_LPD_WDATA),
        .S00_AXI_wlast(PS_0_M_AXI_HPM0_LPD_WLAST),
        .S00_AXI_wready(PS_0_M_AXI_HPM0_LPD_WREADY),
        .S00_AXI_wstrb(PS_0_M_AXI_HPM0_LPD_WSTRB),
        .S00_AXI_wvalid(PS_0_M_AXI_HPM0_LPD_WVALID));
  kr260_tsn_rs485pmod_rst_clk_wiz_0_100M_0 rst_clk_wiz_0_100M
       (.aux_reset_in(1'b1),
        .dcm_locked(clk_wiz_0_locked),
        .ext_reset_in(xlslice_0_Dout),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_clk_wiz_0_100M_1_peripheral_aresetn),
        .slowest_sync_clk(clk_wiz_0_clk_out4));
  kr260_tsn_rs485pmod_rst_clk_wiz_0_125M_0 rst_clk_wiz_0_125M
       (.aux_reset_in(1'b1),
        .dcm_locked(clk_wiz_0_locked),
        .ext_reset_in(xlslice_0_Dout),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(clk_wiz_0_clk_out2));
  kr260_tsn_rs485pmod_rst_clk_wiz_0_200M_0 rst_clk_wiz_0_200M
       (.aux_reset_in(1'b1),
        .dcm_locked(clk_wiz_0_locked),
        .ext_reset_in(xlslice_0_Dout),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_clk_wiz_0_100M_peripheral_aresetn),
        .slowest_sync_clk(clk_wiz_0_clk_out1));
  kr260_tsn_rs485pmod_rst_clk_wiz_0_250M_0 rst_clk_wiz_0_250M
       (.aux_reset_in(1'b1),
        .dcm_locked(clk_wiz_0_locked),
        .ext_reset_in(xlslice_0_Dout),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_clk_wiz_0_250M_peripheral_aresetn),
        .slowest_sync_clk(clk_wiz_0_clk_out5));
  kr260_tsn_rs485pmod_rst_clk_wiz_0_300M_0 rst_clk_wiz_0_300M
       (.aux_reset_in(1'b1),
        .dcm_locked(clk_wiz_0_locked),
        .ext_reset_in(xlslice_0_Dout),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(clk_wiz_0_clk_out3));
  rx_b_imp_D3A8TF rx_b
       (.and_l_v_r(rx_b_and_l_v_r),
        .tlast(my_tsn_ip_rx_axis_be_tlast),
        .tready(xlslice_17_Dout),
        .tvalid(my_tsn_ip_rx_axis_be_tvalid));
  rx_s_imp_1BBNXVK rx_s
       (.and_l_v_r(rx_s_and_l_v_r),
        .tlast(my_tsn_ip_rx_axis_st_tlast),
        .tready(xlslice_0_Dout1),
        .tvalid(my_tsn_ip_rx_axis_st_tvalid));
  kr260_tsn_rs485pmod_sgemm_0_0 sgemm_0
       (.ap_clk(clk_wiz_0_clk_out5),
        .ap_rst_n(rst_clk_wiz_0_250M_peripheral_aresetn),
        .m_axi_A_ARADDR(sgemm_0_m_axi_A_ARADDR),
        .m_axi_A_ARBURST(sgemm_0_m_axi_A_ARBURST),
        .m_axi_A_ARCACHE(sgemm_0_m_axi_A_ARCACHE),
        .m_axi_A_ARID(sgemm_0_m_axi_A_ARID),
        .m_axi_A_ARLEN(sgemm_0_m_axi_A_ARLEN),
        .m_axi_A_ARLOCK(sgemm_0_m_axi_A_ARLOCK),
        .m_axi_A_ARPROT(sgemm_0_m_axi_A_ARPROT),
        .m_axi_A_ARQOS(sgemm_0_m_axi_A_ARQOS),
        .m_axi_A_ARREADY(sgemm_0_m_axi_A_ARREADY),
        .m_axi_A_ARSIZE(sgemm_0_m_axi_A_ARSIZE),
        .m_axi_A_ARVALID(sgemm_0_m_axi_A_ARVALID),
        .m_axi_A_AWREADY(1'b0),
        .m_axi_A_BID(1'b0),
        .m_axi_A_BRESP({1'b0,1'b0}),
        .m_axi_A_BVALID(1'b0),
        .m_axi_A_RDATA(sgemm_0_m_axi_A_RDATA),
        .m_axi_A_RID(sgemm_0_m_axi_A_RID),
        .m_axi_A_RLAST(sgemm_0_m_axi_A_RLAST),
        .m_axi_A_RREADY(sgemm_0_m_axi_A_RREADY),
        .m_axi_A_RRESP(sgemm_0_m_axi_A_RRESP),
        .m_axi_A_RVALID(sgemm_0_m_axi_A_RVALID),
        .m_axi_A_WREADY(1'b0),
        .m_axi_B_ARADDR(sgemm_0_m_axi_B_ARADDR),
        .m_axi_B_ARBURST(sgemm_0_m_axi_B_ARBURST),
        .m_axi_B_ARCACHE(sgemm_0_m_axi_B_ARCACHE),
        .m_axi_B_ARID(sgemm_0_m_axi_B_ARID),
        .m_axi_B_ARLEN(sgemm_0_m_axi_B_ARLEN),
        .m_axi_B_ARLOCK(sgemm_0_m_axi_B_ARLOCK),
        .m_axi_B_ARPROT(sgemm_0_m_axi_B_ARPROT),
        .m_axi_B_ARQOS(sgemm_0_m_axi_B_ARQOS),
        .m_axi_B_ARREADY(sgemm_0_m_axi_B_ARREADY),
        .m_axi_B_ARSIZE(sgemm_0_m_axi_B_ARSIZE),
        .m_axi_B_ARVALID(sgemm_0_m_axi_B_ARVALID),
        .m_axi_B_AWREADY(1'b0),
        .m_axi_B_BID(1'b0),
        .m_axi_B_BRESP({1'b0,1'b0}),
        .m_axi_B_BVALID(1'b0),
        .m_axi_B_RDATA(sgemm_0_m_axi_B_RDATA),
        .m_axi_B_RID(sgemm_0_m_axi_B_RID),
        .m_axi_B_RLAST(sgemm_0_m_axi_B_RLAST),
        .m_axi_B_RREADY(sgemm_0_m_axi_B_RREADY),
        .m_axi_B_RRESP(sgemm_0_m_axi_B_RRESP),
        .m_axi_B_RVALID(sgemm_0_m_axi_B_RVALID),
        .m_axi_B_WREADY(1'b0),
        .m_axi_C_ARREADY(1'b0),
        .m_axi_C_AWADDR(sgemm_0_m_axi_C_AWADDR),
        .m_axi_C_AWBURST(sgemm_0_m_axi_C_AWBURST),
        .m_axi_C_AWCACHE(sgemm_0_m_axi_C_AWCACHE),
        .m_axi_C_AWID(sgemm_0_m_axi_C_AWID),
        .m_axi_C_AWLEN(sgemm_0_m_axi_C_AWLEN),
        .m_axi_C_AWLOCK(sgemm_0_m_axi_C_AWLOCK),
        .m_axi_C_AWPROT(sgemm_0_m_axi_C_AWPROT),
        .m_axi_C_AWQOS(sgemm_0_m_axi_C_AWQOS),
        .m_axi_C_AWREADY(sgemm_0_m_axi_C_AWREADY),
        .m_axi_C_AWSIZE(sgemm_0_m_axi_C_AWSIZE),
        .m_axi_C_AWVALID(sgemm_0_m_axi_C_AWVALID),
        .m_axi_C_BID(sgemm_0_m_axi_C_BID),
        .m_axi_C_BREADY(sgemm_0_m_axi_C_BREADY),
        .m_axi_C_BRESP(sgemm_0_m_axi_C_BRESP),
        .m_axi_C_BVALID(sgemm_0_m_axi_C_BVALID),
        .m_axi_C_RDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_C_RID(1'b0),
        .m_axi_C_RLAST(1'b0),
        .m_axi_C_RRESP({1'b0,1'b0}),
        .m_axi_C_RVALID(1'b0),
        .m_axi_C_WDATA(sgemm_0_m_axi_C_WDATA),
        .m_axi_C_WLAST(sgemm_0_m_axi_C_WLAST),
        .m_axi_C_WREADY(sgemm_0_m_axi_C_WREADY),
        .m_axi_C_WSTRB(sgemm_0_m_axi_C_WSTRB),
        .m_axi_C_WVALID(sgemm_0_m_axi_C_WVALID),
        .s_axi_control_ARADDR(ps8_0_axi_periph_M06_AXI_ARADDR),
        .s_axi_control_ARREADY(ps8_0_axi_periph_M06_AXI_ARREADY),
        .s_axi_control_ARVALID(ps8_0_axi_periph_M06_AXI_ARVALID),
        .s_axi_control_AWADDR(ps8_0_axi_periph_M06_AXI_AWADDR),
        .s_axi_control_AWREADY(ps8_0_axi_periph_M06_AXI_AWREADY),
        .s_axi_control_AWVALID(ps8_0_axi_periph_M06_AXI_AWVALID),
        .s_axi_control_BREADY(ps8_0_axi_periph_M06_AXI_BREADY),
        .s_axi_control_BRESP(ps8_0_axi_periph_M06_AXI_BRESP),
        .s_axi_control_BVALID(ps8_0_axi_periph_M06_AXI_BVALID),
        .s_axi_control_RDATA(ps8_0_axi_periph_M06_AXI_RDATA),
        .s_axi_control_RREADY(ps8_0_axi_periph_M06_AXI_RREADY),
        .s_axi_control_RRESP(ps8_0_axi_periph_M06_AXI_RRESP),
        .s_axi_control_RVALID(ps8_0_axi_periph_M06_AXI_RVALID),
        .s_axi_control_WDATA(ps8_0_axi_periph_M06_AXI_WDATA),
        .s_axi_control_WREADY(ps8_0_axi_periph_M06_AXI_WREADY),
        .s_axi_control_WSTRB(ps8_0_axi_periph_M06_AXI_WSTRB),
        .s_axi_control_WVALID(ps8_0_axi_periph_M06_AXI_WVALID));
  kr260_tsn_rs485pmod_smartconnect_0_0 smartconnect_0
       (.M00_AXI_araddr(smartconnect_0_M00_AXI_ARADDR),
        .M00_AXI_arburst(smartconnect_0_M00_AXI_ARBURST),
        .M00_AXI_arcache(smartconnect_0_M00_AXI_ARCACHE),
        .M00_AXI_arlen(smartconnect_0_M00_AXI_ARLEN),
        .M00_AXI_arlock(smartconnect_0_M00_AXI_ARLOCK),
        .M00_AXI_arprot(smartconnect_0_M00_AXI_ARPROT),
        .M00_AXI_arqos(smartconnect_0_M00_AXI_ARQOS),
        .M00_AXI_arready(smartconnect_0_M00_AXI_ARREADY),
        .M00_AXI_arsize(smartconnect_0_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(smartconnect_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(smartconnect_0_M00_AXI_AWADDR),
        .M00_AXI_awburst(smartconnect_0_M00_AXI_AWBURST),
        .M00_AXI_awcache(smartconnect_0_M00_AXI_AWCACHE),
        .M00_AXI_awlen(smartconnect_0_M00_AXI_AWLEN),
        .M00_AXI_awlock(smartconnect_0_M00_AXI_AWLOCK),
        .M00_AXI_awprot(smartconnect_0_M00_AXI_AWPROT),
        .M00_AXI_awqos(smartconnect_0_M00_AXI_AWQOS),
        .M00_AXI_awready(smartconnect_0_M00_AXI_AWREADY),
        .M00_AXI_awsize(smartconnect_0_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(smartconnect_0_M00_AXI_AWVALID),
        .M00_AXI_bready(smartconnect_0_M00_AXI_BREADY),
        .M00_AXI_bresp(smartconnect_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(smartconnect_0_M00_AXI_BVALID),
        .M00_AXI_rdata(smartconnect_0_M00_AXI_RDATA),
        .M00_AXI_rlast(smartconnect_0_M00_AXI_RLAST),
        .M00_AXI_rready(smartconnect_0_M00_AXI_RREADY),
        .M00_AXI_rresp(smartconnect_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(smartconnect_0_M00_AXI_RVALID),
        .M00_AXI_wdata(smartconnect_0_M00_AXI_WDATA),
        .M00_AXI_wlast(smartconnect_0_M00_AXI_WLAST),
        .M00_AXI_wready(smartconnect_0_M00_AXI_WREADY),
        .M00_AXI_wstrb(smartconnect_0_M00_AXI_WSTRB),
        .M00_AXI_wvalid(smartconnect_0_M00_AXI_WVALID),
        .S00_AXI_araddr(sgemm_0_m_axi_A_ARADDR),
        .S00_AXI_arburst(sgemm_0_m_axi_A_ARBURST),
        .S00_AXI_arcache(sgemm_0_m_axi_A_ARCACHE),
        .S00_AXI_arid(sgemm_0_m_axi_A_ARID),
        .S00_AXI_arlen(sgemm_0_m_axi_A_ARLEN),
        .S00_AXI_arlock(sgemm_0_m_axi_A_ARLOCK[0]),
        .S00_AXI_arprot(sgemm_0_m_axi_A_ARPROT),
        .S00_AXI_arqos(sgemm_0_m_axi_A_ARQOS),
        .S00_AXI_arready(sgemm_0_m_axi_A_ARREADY),
        .S00_AXI_arsize(sgemm_0_m_axi_A_ARSIZE),
        .S00_AXI_arvalid(sgemm_0_m_axi_A_ARVALID),
        .S00_AXI_rdata(sgemm_0_m_axi_A_RDATA),
        .S00_AXI_rid(sgemm_0_m_axi_A_RID),
        .S00_AXI_rlast(sgemm_0_m_axi_A_RLAST),
        .S00_AXI_rready(sgemm_0_m_axi_A_RREADY),
        .S00_AXI_rresp(sgemm_0_m_axi_A_RRESP),
        .S00_AXI_rvalid(sgemm_0_m_axi_A_RVALID),
        .S01_AXI_awaddr(sgemm_0_m_axi_C_AWADDR),
        .S01_AXI_awburst(sgemm_0_m_axi_C_AWBURST),
        .S01_AXI_awcache(sgemm_0_m_axi_C_AWCACHE),
        .S01_AXI_awid(sgemm_0_m_axi_C_AWID),
        .S01_AXI_awlen(sgemm_0_m_axi_C_AWLEN),
        .S01_AXI_awlock(sgemm_0_m_axi_C_AWLOCK[0]),
        .S01_AXI_awprot(sgemm_0_m_axi_C_AWPROT),
        .S01_AXI_awqos(sgemm_0_m_axi_C_AWQOS),
        .S01_AXI_awready(sgemm_0_m_axi_C_AWREADY),
        .S01_AXI_awsize(sgemm_0_m_axi_C_AWSIZE),
        .S01_AXI_awvalid(sgemm_0_m_axi_C_AWVALID),
        .S01_AXI_bid(sgemm_0_m_axi_C_BID),
        .S01_AXI_bready(sgemm_0_m_axi_C_BREADY),
        .S01_AXI_bresp(sgemm_0_m_axi_C_BRESP),
        .S01_AXI_bvalid(sgemm_0_m_axi_C_BVALID),
        .S01_AXI_wdata(sgemm_0_m_axi_C_WDATA),
        .S01_AXI_wlast(sgemm_0_m_axi_C_WLAST),
        .S01_AXI_wready(sgemm_0_m_axi_C_WREADY),
        .S01_AXI_wstrb(sgemm_0_m_axi_C_WSTRB),
        .S01_AXI_wvalid(sgemm_0_m_axi_C_WVALID),
        .aclk(clk_wiz_0_clk_out5),
        .aresetn(rst_clk_wiz_0_250M_peripheral_aresetn));
  kr260_tsn_rs485pmod_smartconnect_0_1 smartconnect_1
       (.M00_AXI_araddr(smartconnect_1_M00_AXI_ARADDR),
        .M00_AXI_arburst(smartconnect_1_M00_AXI_ARBURST),
        .M00_AXI_arcache(smartconnect_1_M00_AXI_ARCACHE),
        .M00_AXI_arlen(smartconnect_1_M00_AXI_ARLEN),
        .M00_AXI_arlock(smartconnect_1_M00_AXI_ARLOCK),
        .M00_AXI_arprot(smartconnect_1_M00_AXI_ARPROT),
        .M00_AXI_arqos(smartconnect_1_M00_AXI_ARQOS),
        .M00_AXI_arready(smartconnect_1_M00_AXI_ARREADY),
        .M00_AXI_arsize(smartconnect_1_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(smartconnect_1_M00_AXI_ARVALID),
        .M00_AXI_rdata(smartconnect_1_M00_AXI_RDATA),
        .M00_AXI_rlast(smartconnect_1_M00_AXI_RLAST),
        .M00_AXI_rready(smartconnect_1_M00_AXI_RREADY),
        .M00_AXI_rresp(smartconnect_1_M00_AXI_RRESP),
        .M00_AXI_rvalid(smartconnect_1_M00_AXI_RVALID),
        .S00_AXI_araddr(sgemm_0_m_axi_B_ARADDR),
        .S00_AXI_arburst(sgemm_0_m_axi_B_ARBURST),
        .S00_AXI_arcache(sgemm_0_m_axi_B_ARCACHE),
        .S00_AXI_arid(sgemm_0_m_axi_B_ARID),
        .S00_AXI_arlen(sgemm_0_m_axi_B_ARLEN),
        .S00_AXI_arlock(sgemm_0_m_axi_B_ARLOCK[0]),
        .S00_AXI_arprot(sgemm_0_m_axi_B_ARPROT),
        .S00_AXI_arqos(sgemm_0_m_axi_B_ARQOS),
        .S00_AXI_arready(sgemm_0_m_axi_B_ARREADY),
        .S00_AXI_arsize(sgemm_0_m_axi_B_ARSIZE),
        .S00_AXI_arvalid(sgemm_0_m_axi_B_ARVALID),
        .S00_AXI_rdata(sgemm_0_m_axi_B_RDATA),
        .S00_AXI_rid(sgemm_0_m_axi_B_RID),
        .S00_AXI_rlast(sgemm_0_m_axi_B_RLAST),
        .S00_AXI_rready(sgemm_0_m_axi_B_RREADY),
        .S00_AXI_rresp(sgemm_0_m_axi_B_RRESP),
        .S00_AXI_rvalid(sgemm_0_m_axi_B_RVALID),
        .aclk(clk_wiz_0_clk_out5),
        .aresetn(rst_clk_wiz_0_250M_peripheral_aresetn));
  kr260_tsn_rs485pmod_system_cache_0_0 system_cache_0
       (.ACLK(clk_wiz_0_clk_out5),
        .ARESETN(rst_clk_wiz_0_250M_peripheral_aresetn),
        .M0_AXI_ARADDR(system_cache_0_M0_AXI_ARADDR),
        .M0_AXI_ARBURST(system_cache_0_M0_AXI_ARBURST),
        .M0_AXI_ARCACHE(system_cache_0_M0_AXI_ARCACHE),
        .M0_AXI_ARID(system_cache_0_M0_AXI_ARID),
        .M0_AXI_ARLEN(system_cache_0_M0_AXI_ARLEN),
        .M0_AXI_ARLOCK(system_cache_0_M0_AXI_ARLOCK),
        .M0_AXI_ARPROT(system_cache_0_M0_AXI_ARPROT),
        .M0_AXI_ARQOS(system_cache_0_M0_AXI_ARQOS),
        .M0_AXI_ARREADY(system_cache_0_M0_AXI_ARREADY),
        .M0_AXI_ARSIZE(system_cache_0_M0_AXI_ARSIZE),
        .M0_AXI_ARVALID(system_cache_0_M0_AXI_ARVALID),
        .M0_AXI_AWADDR(system_cache_0_M0_AXI_AWADDR),
        .M0_AXI_AWBURST(system_cache_0_M0_AXI_AWBURST),
        .M0_AXI_AWCACHE(system_cache_0_M0_AXI_AWCACHE),
        .M0_AXI_AWID(system_cache_0_M0_AXI_AWID),
        .M0_AXI_AWLEN(system_cache_0_M0_AXI_AWLEN),
        .M0_AXI_AWLOCK(system_cache_0_M0_AXI_AWLOCK),
        .M0_AXI_AWPROT(system_cache_0_M0_AXI_AWPROT),
        .M0_AXI_AWQOS(system_cache_0_M0_AXI_AWQOS),
        .M0_AXI_AWREADY(system_cache_0_M0_AXI_AWREADY),
        .M0_AXI_AWSIZE(system_cache_0_M0_AXI_AWSIZE),
        .M0_AXI_AWVALID(system_cache_0_M0_AXI_AWVALID),
        .M0_AXI_BID(system_cache_0_M0_AXI_BID[0]),
        .M0_AXI_BREADY(system_cache_0_M0_AXI_BREADY),
        .M0_AXI_BRESP(system_cache_0_M0_AXI_BRESP),
        .M0_AXI_BVALID(system_cache_0_M0_AXI_BVALID),
        .M0_AXI_RDATA(system_cache_0_M0_AXI_RDATA),
        .M0_AXI_RID(system_cache_0_M0_AXI_RID[0]),
        .M0_AXI_RLAST(system_cache_0_M0_AXI_RLAST),
        .M0_AXI_RREADY(system_cache_0_M0_AXI_RREADY),
        .M0_AXI_RRESP(system_cache_0_M0_AXI_RRESP),
        .M0_AXI_RVALID(system_cache_0_M0_AXI_RVALID),
        .M0_AXI_WDATA(system_cache_0_M0_AXI_WDATA),
        .M0_AXI_WLAST(system_cache_0_M0_AXI_WLAST),
        .M0_AXI_WREADY(system_cache_0_M0_AXI_WREADY),
        .M0_AXI_WSTRB(system_cache_0_M0_AXI_WSTRB),
        .M0_AXI_WVALID(system_cache_0_M0_AXI_WVALID),
        .S0_AXI_ARADDR(smartconnect_0_M00_AXI_ARADDR),
        .S0_AXI_ARBURST(smartconnect_0_M00_AXI_ARBURST),
        .S0_AXI_ARCACHE(smartconnect_0_M00_AXI_ARCACHE),
        .S0_AXI_ARID(1'b0),
        .S0_AXI_ARLEN(smartconnect_0_M00_AXI_ARLEN),
        .S0_AXI_ARLOCK(smartconnect_0_M00_AXI_ARLOCK),
        .S0_AXI_ARPROT(smartconnect_0_M00_AXI_ARPROT),
        .S0_AXI_ARQOS(smartconnect_0_M00_AXI_ARQOS),
        .S0_AXI_ARREADY(smartconnect_0_M00_AXI_ARREADY),
        .S0_AXI_ARSIZE(smartconnect_0_M00_AXI_ARSIZE),
        .S0_AXI_ARUSER(1'b0),
        .S0_AXI_ARVALID(smartconnect_0_M00_AXI_ARVALID),
        .S0_AXI_AWADDR(smartconnect_0_M00_AXI_AWADDR),
        .S0_AXI_AWBURST(smartconnect_0_M00_AXI_AWBURST),
        .S0_AXI_AWCACHE(smartconnect_0_M00_AXI_AWCACHE),
        .S0_AXI_AWID(1'b0),
        .S0_AXI_AWLEN(smartconnect_0_M00_AXI_AWLEN),
        .S0_AXI_AWLOCK(smartconnect_0_M00_AXI_AWLOCK),
        .S0_AXI_AWPROT(smartconnect_0_M00_AXI_AWPROT),
        .S0_AXI_AWQOS(smartconnect_0_M00_AXI_AWQOS),
        .S0_AXI_AWREADY(smartconnect_0_M00_AXI_AWREADY),
        .S0_AXI_AWSIZE(smartconnect_0_M00_AXI_AWSIZE),
        .S0_AXI_AWUSER(1'b0),
        .S0_AXI_AWVALID(smartconnect_0_M00_AXI_AWVALID),
        .S0_AXI_BREADY(smartconnect_0_M00_AXI_BREADY),
        .S0_AXI_BRESP(smartconnect_0_M00_AXI_BRESP),
        .S0_AXI_BVALID(smartconnect_0_M00_AXI_BVALID),
        .S0_AXI_RDATA(smartconnect_0_M00_AXI_RDATA),
        .S0_AXI_RLAST(smartconnect_0_M00_AXI_RLAST),
        .S0_AXI_RREADY(smartconnect_0_M00_AXI_RREADY),
        .S0_AXI_RRESP(smartconnect_0_M00_AXI_RRESP),
        .S0_AXI_RVALID(smartconnect_0_M00_AXI_RVALID),
        .S0_AXI_WDATA(smartconnect_0_M00_AXI_WDATA),
        .S0_AXI_WLAST(smartconnect_0_M00_AXI_WLAST),
        .S0_AXI_WREADY(smartconnect_0_M00_AXI_WREADY),
        .S0_AXI_WSTRB(smartconnect_0_M00_AXI_WSTRB),
        .S0_AXI_WVALID(smartconnect_0_M00_AXI_WVALID));
  kr260_tsn_rs485pmod_system_cache_0_1 system_cache_1
       (.ACLK(clk_wiz_0_clk_out5),
        .ARESETN(rst_clk_wiz_0_250M_peripheral_aresetn),
        .M0_AXI_ARADDR(system_cache_1_M0_AXI_ARADDR),
        .M0_AXI_ARBURST(system_cache_1_M0_AXI_ARBURST),
        .M0_AXI_ARCACHE(system_cache_1_M0_AXI_ARCACHE),
        .M0_AXI_ARID(system_cache_1_M0_AXI_ARID),
        .M0_AXI_ARLEN(system_cache_1_M0_AXI_ARLEN),
        .M0_AXI_ARLOCK(system_cache_1_M0_AXI_ARLOCK),
        .M0_AXI_ARPROT(system_cache_1_M0_AXI_ARPROT),
        .M0_AXI_ARQOS(system_cache_1_M0_AXI_ARQOS),
        .M0_AXI_ARREADY(system_cache_1_M0_AXI_ARREADY),
        .M0_AXI_ARSIZE(system_cache_1_M0_AXI_ARSIZE),
        .M0_AXI_ARVALID(system_cache_1_M0_AXI_ARVALID),
        .M0_AXI_AWADDR(system_cache_1_M0_AXI_AWADDR),
        .M0_AXI_AWBURST(system_cache_1_M0_AXI_AWBURST),
        .M0_AXI_AWCACHE(system_cache_1_M0_AXI_AWCACHE),
        .M0_AXI_AWID(system_cache_1_M0_AXI_AWID),
        .M0_AXI_AWLEN(system_cache_1_M0_AXI_AWLEN),
        .M0_AXI_AWLOCK(system_cache_1_M0_AXI_AWLOCK),
        .M0_AXI_AWPROT(system_cache_1_M0_AXI_AWPROT),
        .M0_AXI_AWQOS(system_cache_1_M0_AXI_AWQOS),
        .M0_AXI_AWREADY(system_cache_1_M0_AXI_AWREADY),
        .M0_AXI_AWSIZE(system_cache_1_M0_AXI_AWSIZE),
        .M0_AXI_AWVALID(system_cache_1_M0_AXI_AWVALID),
        .M0_AXI_BID(system_cache_1_M0_AXI_BID[0]),
        .M0_AXI_BREADY(system_cache_1_M0_AXI_BREADY),
        .M0_AXI_BRESP(system_cache_1_M0_AXI_BRESP),
        .M0_AXI_BVALID(system_cache_1_M0_AXI_BVALID),
        .M0_AXI_RDATA(system_cache_1_M0_AXI_RDATA),
        .M0_AXI_RID(system_cache_1_M0_AXI_RID[0]),
        .M0_AXI_RLAST(system_cache_1_M0_AXI_RLAST),
        .M0_AXI_RREADY(system_cache_1_M0_AXI_RREADY),
        .M0_AXI_RRESP(system_cache_1_M0_AXI_RRESP),
        .M0_AXI_RVALID(system_cache_1_M0_AXI_RVALID),
        .M0_AXI_WDATA(system_cache_1_M0_AXI_WDATA),
        .M0_AXI_WLAST(system_cache_1_M0_AXI_WLAST),
        .M0_AXI_WREADY(system_cache_1_M0_AXI_WREADY),
        .M0_AXI_WSTRB(system_cache_1_M0_AXI_WSTRB),
        .M0_AXI_WVALID(system_cache_1_M0_AXI_WVALID),
        .S0_AXI_ARADDR(smartconnect_1_M00_AXI_ARADDR),
        .S0_AXI_ARBURST(smartconnect_1_M00_AXI_ARBURST),
        .S0_AXI_ARCACHE(smartconnect_1_M00_AXI_ARCACHE),
        .S0_AXI_ARID(1'b0),
        .S0_AXI_ARLEN(smartconnect_1_M00_AXI_ARLEN),
        .S0_AXI_ARLOCK(smartconnect_1_M00_AXI_ARLOCK),
        .S0_AXI_ARPROT(smartconnect_1_M00_AXI_ARPROT),
        .S0_AXI_ARQOS(smartconnect_1_M00_AXI_ARQOS),
        .S0_AXI_ARREADY(smartconnect_1_M00_AXI_ARREADY),
        .S0_AXI_ARSIZE(smartconnect_1_M00_AXI_ARSIZE),
        .S0_AXI_ARUSER(1'b0),
        .S0_AXI_ARVALID(smartconnect_1_M00_AXI_ARVALID),
        .S0_AXI_AWADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S0_AXI_AWBURST({1'b0,1'b1}),
        .S0_AXI_AWCACHE({1'b0,1'b0,1'b1,1'b1}),
        .S0_AXI_AWID(1'b0),
        .S0_AXI_AWLEN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S0_AXI_AWLOCK(1'b0),
        .S0_AXI_AWPROT({1'b0,1'b0,1'b0}),
        .S0_AXI_AWQOS({1'b0,1'b0,1'b0,1'b0}),
        .S0_AXI_AWSIZE({1'b0,1'b1,1'b0}),
        .S0_AXI_AWUSER(1'b0),
        .S0_AXI_AWVALID(1'b0),
        .S0_AXI_BREADY(1'b0),
        .S0_AXI_RDATA(smartconnect_1_M00_AXI_RDATA),
        .S0_AXI_RLAST(smartconnect_1_M00_AXI_RLAST),
        .S0_AXI_RREADY(smartconnect_1_M00_AXI_RREADY),
        .S0_AXI_RRESP(smartconnect_1_M00_AXI_RRESP),
        .S0_AXI_RVALID(smartconnect_1_M00_AXI_RVALID),
        .S0_AXI_WDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S0_AXI_WLAST(1'b0),
        .S0_AXI_WSTRB({1'b1,1'b1,1'b1,1'b1}),
        .S0_AXI_WVALID(1'b0));
  kr260_tsn_rs485pmod_ta_dma_0_0 ta_dma_0
       (.be_byte_space_in_fifo(xlslice_15_Dout),
        .current_time(xlconcat_7_dout),
        .cycle_start(xlslice_16_Dout),
        .dma_clk(clk_wiz_0_clk_out1),
        .global_resetn(rst_clk_wiz_0_100M_1_peripheral_aresetn),
        .introut(ta_dma_0_introut),
        .m_axi_mm2s_araddr(ta_dma_0_M_AXI_ARADDR),
        .m_axi_mm2s_arburst(ta_dma_0_M_AXI_ARBURST),
        .m_axi_mm2s_arcache(ta_dma_0_M_AXI_ARCACHE),
        .m_axi_mm2s_arlen(ta_dma_0_M_AXI_ARLEN),
        .m_axi_mm2s_arprot(ta_dma_0_M_AXI_ARPROT),
        .m_axi_mm2s_arready(ta_dma_0_M_AXI_ARREADY),
        .m_axi_mm2s_arsize(ta_dma_0_M_AXI_ARSIZE),
        .m_axi_mm2s_aruser(ta_dma_0_M_AXI_ARUSER),
        .m_axi_mm2s_arvalid(ta_dma_0_M_AXI_ARVALID),
        .m_axi_mm2s_rdata(ta_dma_0_M_AXI_RDATA),
        .m_axi_mm2s_rlast(ta_dma_0_M_AXI_RLAST),
        .m_axi_mm2s_rready(ta_dma_0_M_AXI_RREADY),
        .m_axi_mm2s_rresp(ta_dma_0_M_AXI_RRESP),
        .m_axi_mm2s_rvalid(ta_dma_0_M_AXI_RVALID),
        .m_axis_be_tready(xlconstant_4_dout),
        .m_axis_res_tready(xlconstant_4_dout),
        .m_axis_st_tdata(ta_dma_0_M_AXIS_ST_INTF_TDATA),
        .m_axis_st_tkeep(ta_dma_0_M_AXIS_ST_INTF_TKEEP),
        .m_axis_st_tlast(ta_dma_0_m_axis_st_tlast),
        .m_axis_st_tready(Op2_1),
        .m_axis_st_tvalid(ta_dma_0_m_axis_st_tvalid),
        .new_schedule_start(xlslice_13_Dout),
        .re_byte_space_in_fifo(xlslice_14_Dout),
        .rtc_clk(clk_wiz_0_clk_out2),
        .s_axi_araddr(ps8_0_axi_periph_M01_AXI_ARADDR),
        .s_axi_arready(ps8_0_axi_periph_M01_AXI_ARREADY),
        .s_axi_arvalid(ps8_0_axi_periph_M01_AXI_ARVALID),
        .s_axi_awaddr(ps8_0_axi_periph_M01_AXI_AWADDR),
        .s_axi_awready(ps8_0_axi_periph_M01_AXI_AWREADY),
        .s_axi_awvalid(ps8_0_axi_periph_M01_AXI_AWVALID),
        .s_axi_bready(ps8_0_axi_periph_M01_AXI_BREADY),
        .s_axi_bresp(ps8_0_axi_periph_M01_AXI_BRESP),
        .s_axi_bvalid(ps8_0_axi_periph_M01_AXI_BVALID),
        .s_axi_rdata(ps8_0_axi_periph_M01_AXI_RDATA),
        .s_axi_rready(ps8_0_axi_periph_M01_AXI_RREADY),
        .s_axi_rresp(ps8_0_axi_periph_M01_AXI_RRESP),
        .s_axi_rvalid(ps8_0_axi_periph_M01_AXI_RVALID),
        .s_axi_wdata(ps8_0_axi_periph_M01_AXI_WDATA),
        .s_axi_wready(ps8_0_axi_periph_M01_AXI_WREADY),
        .s_axi_wvalid(ps8_0_axi_periph_M01_AXI_WVALID),
        .st_byte_space_in_fifo(xlslice_12_Dout));
  kr260_tsn_rs485pmod_test_pmod_controller_0_0 test_pmod_controller_0
       (.in_rx_b(rx_b_and_l_v_r),
        .in_rx_s(rx_s_and_l_v_r),
        .in_rx_x(xlconstant_1_dout),
        .in_tx_b(tx_b_and_l_v_r),
        .in_tx_s(tready_Res),
        .in_tx_x(xlconstant_1_dout),
        .lis1_rxs(test_pmod_controller_0_listner_0),
        .lis2_rxb(test_pmod_controller_0_listner_1),
        .lis3_rxx(test_pmod_controller_0_listner_2),
        .pub1_txs(test_pmod_controller_0_publisher_0),
        .pub2_txb(test_pmod_controller_0_publisher_1),
        .pub3_txx(test_pmod_controller_0_publisher_2),
        .s00_axi_aclk(clk_wiz_0_clk_out4),
        .s00_axi_araddr(ps8_0_axi_periph_M05_AXI_ARADDR[4:0]),
        .s00_axi_aresetn(rst_clk_wiz_0_100M_1_peripheral_aresetn),
        .s00_axi_arprot(ps8_0_axi_periph_M05_AXI_ARPROT),
        .s00_axi_arready(ps8_0_axi_periph_M05_AXI_ARREADY),
        .s00_axi_arvalid(ps8_0_axi_periph_M05_AXI_ARVALID),
        .s00_axi_awaddr(ps8_0_axi_periph_M05_AXI_AWADDR[4:0]),
        .s00_axi_awprot(ps8_0_axi_periph_M05_AXI_AWPROT),
        .s00_axi_awready(ps8_0_axi_periph_M05_AXI_AWREADY),
        .s00_axi_awvalid(ps8_0_axi_periph_M05_AXI_AWVALID),
        .s00_axi_bready(ps8_0_axi_periph_M05_AXI_BREADY),
        .s00_axi_bresp(ps8_0_axi_periph_M05_AXI_BRESP),
        .s00_axi_bvalid(ps8_0_axi_periph_M05_AXI_BVALID),
        .s00_axi_rdata(ps8_0_axi_periph_M05_AXI_RDATA),
        .s00_axi_rready(ps8_0_axi_periph_M05_AXI_RREADY),
        .s00_axi_rresp(ps8_0_axi_periph_M05_AXI_RRESP),
        .s00_axi_rvalid(ps8_0_axi_periph_M05_AXI_RVALID),
        .s00_axi_wdata(ps8_0_axi_periph_M05_AXI_WDATA),
        .s00_axi_wready(ps8_0_axi_periph_M05_AXI_WREADY),
        .s00_axi_wstrb(ps8_0_axi_periph_M05_AXI_WSTRB),
        .s00_axi_wvalid(ps8_0_axi_periph_M05_AXI_WVALID));
  tx_b_imp_1I2QT7D tx_b
       (.and_l_v_r(tx_b_and_l_v_r),
        .tlast(axi_mcdma_0_m_axis_mm2s_tlast),
        .tready(my_tsn_ip_tx_axis_be_tready),
        .tvalid(axi_mcdma_0_m_axis_mm2s_tvalid));
  tx_s_imp_JRWMD6 tx_s
       (.and_l_v_r(tready_Res),
        .tlast(ta_dma_0_m_axis_st_tlast),
        .tready(Op2_1),
        .tvalid(ta_dma_0_m_axis_st_tvalid));
  kr260_tsn_rs485pmod_xlconcat_2_0 xlconcat_2
       (.In0(interrupts_concat_1_dout),
        .In1(interrupts_concat_0_dout),
        .In2(axi_uartlite_1_interrupt),
        .dout(xlconcat_2_dout));
  kr260_tsn_rs485pmod_xlconcat_7_0 xlconcat_7
       (.In0(tsn_endpoint_ethernet_mac_0_ptp_timers_syntonised_nanosec_field),
        .In1(tsn_endpoint_ethernet_mac_0_ptp_timers_syntonised_sec_field),
        .dout(xlconcat_7_dout));
  kr260_tsn_rs485pmod_xlconcat_tlast_0 xlconcat_tlast
       (.In0(my_tsn_ip_rx_axis_st_tlast),
        .In1(my_tsn_ip_rx_axis_be_tlast),
        .dout(xlconcat_0_dout));
  kr260_tsn_rs485pmod_xlconcat_tvld_0 xlconcat_tvld
       (.In0(my_tsn_ip_rx_axis_st_tvalid),
        .In1(my_tsn_ip_rx_axis_be_tvalid),
        .dout(xlconcat_1_dout));
  kr260_tsn_rs485pmod_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
  kr260_tsn_rs485pmod_xlconstant_1_0 xlconstant_1
       (.dout(xlconstant_1_dout));
  kr260_tsn_rs485pmod_xlconstant_2_0 xlconstant_2
       (.dout(xlconstant_2_dout));
  kr260_tsn_rs485pmod_xlconstant_4_0 xlconstant_4
       (.dout(xlconstant_4_dout));
  kr260_tsn_rs485pmod_xlslice_1_0 xlslice_1
       (.Din(tsn_endpoint_ethernet_mac_0_tsn_debug_hooks));
  kr260_tsn_rs485pmod_xlslice_10_0 xlslice_10
       (.Din(tsn_endpoint_ethernet_mac_0_rtc_nanosec_field));
  kr260_tsn_rs485pmod_xlslice_11_0 xlslice_11
       (.Din(tsn_endpoint_ethernet_mac_0_rtc_nanosec_field));
  kr260_tsn_rs485pmod_xlslice_12_0 xlslice_12
       (.Din(tsn_endpoint_ethernet_mac_0_ep_tadma_if_ep_tadma_if_out),
        .Dout(xlslice_12_Dout));
  kr260_tsn_rs485pmod_xlslice_13_0 xlslice_13
       (.Din(tsn_endpoint_ethernet_mac_0_ep_tadma_if_ep_tadma_if_out),
        .Dout(xlslice_13_Dout));
  kr260_tsn_rs485pmod_xlslice_14_0 xlslice_14
       (.Din(tsn_endpoint_ethernet_mac_0_ep_tadma_if_ep_tadma_if_out),
        .Dout(xlslice_14_Dout));
  kr260_tsn_rs485pmod_xlslice_15_0 xlslice_15
       (.Din(tsn_endpoint_ethernet_mac_0_ep_tadma_if_ep_tadma_if_out),
        .Dout(xlslice_15_Dout));
  kr260_tsn_rs485pmod_xlslice_16_0 xlslice_16
       (.Din(tsn_endpoint_ethernet_mac_0_ep_tadma_if_ep_tadma_if_out),
        .Dout(xlslice_16_Dout));
  kr260_tsn_rs485pmod_xlslice_2_0 xlslice_2
       (.Din(tsn_endpoint_ethernet_mac_0_tsn_debug_hooks));
  kr260_tsn_rs485pmod_xlslice_3_0 xlslice_3
       (.Din(tsn_endpoint_ethernet_mac_0_tsn_debug_hooks));
  kr260_tsn_rs485pmod_xlslice_4_0 xlslice_4
       (.Din(tsn_endpoint_ethernet_mac_0_tsn_debug_hooks));
  kr260_tsn_rs485pmod_xlslice_5_0 xlslice_5
       (.Din(tsn_endpoint_ethernet_mac_0_tsn_debug_hooks));
  kr260_tsn_rs485pmod_xlslice_6_0 xlslice_6
       (.Din(tsn_endpoint_ethernet_mac_0_rtc_sec_field));
  kr260_tsn_rs485pmod_xlslice_7_0 xlslice_7
       (.Din(tsn_endpoint_ethernet_mac_0_rtc_nanosec_field));
  kr260_tsn_rs485pmod_xlslice_8_0 xlslice_8
       (.Din(tsn_endpoint_ethernet_mac_0_rtc_nanosec_field));
  kr260_tsn_rs485pmod_xlslice_9_0 xlslice_9
       (.Din(tsn_endpoint_ethernet_mac_0_rtc_nanosec_field));
  kr260_tsn_rs485pmod_xlslice_trdy_0_0 xlslice_trdy_0
       (.Din(axis_switch_0_s_axis_tready),
        .Dout(xlslice_0_Dout1));
  kr260_tsn_rs485pmod_xlslice_trdy_1_0 xlslice_trdy_1
       (.Din(axis_switch_0_s_axis_tready),
        .Dout(xlslice_17_Dout));
  kr260_tsn_rs485pmod_xlslice_ttc_0_0 xlslice_ttc_0
       (.Din(PS_0_emio_ttc0_wave_o),
        .Dout(xlslice_ttc_0_Dout));
endmodule

module kr260_tsn_rs485pmod_ps8_0_axi_periph_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wvalid,
    M03_ACLK,
    M03_ARESETN,
    M03_AXI_araddr,
    M03_AXI_arready,
    M03_AXI_arvalid,
    M03_AXI_awaddr,
    M03_AXI_awready,
    M03_AXI_awvalid,
    M03_AXI_bready,
    M03_AXI_bresp,
    M03_AXI_bvalid,
    M03_AXI_rdata,
    M03_AXI_rready,
    M03_AXI_rresp,
    M03_AXI_rvalid,
    M03_AXI_wdata,
    M03_AXI_wready,
    M03_AXI_wstrb,
    M03_AXI_wvalid,
    M04_ACLK,
    M04_ARESETN,
    M04_AXI_araddr,
    M04_AXI_arready,
    M04_AXI_arvalid,
    M04_AXI_awaddr,
    M04_AXI_awready,
    M04_AXI_awvalid,
    M04_AXI_bready,
    M04_AXI_bresp,
    M04_AXI_bvalid,
    M04_AXI_rdata,
    M04_AXI_rready,
    M04_AXI_rresp,
    M04_AXI_rvalid,
    M04_AXI_wdata,
    M04_AXI_wready,
    M04_AXI_wstrb,
    M04_AXI_wvalid,
    M05_ACLK,
    M05_ARESETN,
    M05_AXI_araddr,
    M05_AXI_arprot,
    M05_AXI_arready,
    M05_AXI_arvalid,
    M05_AXI_awaddr,
    M05_AXI_awprot,
    M05_AXI_awready,
    M05_AXI_awvalid,
    M05_AXI_bready,
    M05_AXI_bresp,
    M05_AXI_bvalid,
    M05_AXI_rdata,
    M05_AXI_rready,
    M05_AXI_rresp,
    M05_AXI_rvalid,
    M05_AXI_wdata,
    M05_AXI_wready,
    M05_AXI_wstrb,
    M05_AXI_wvalid,
    M06_ACLK,
    M06_ARESETN,
    M06_AXI_araddr,
    M06_AXI_arready,
    M06_AXI_arvalid,
    M06_AXI_awaddr,
    M06_AXI_awready,
    M06_AXI_awvalid,
    M06_AXI_bready,
    M06_AXI_bresp,
    M06_AXI_bvalid,
    M06_AXI_rdata,
    M06_AXI_rready,
    M06_AXI_rresp,
    M06_AXI_rvalid,
    M06_AXI_wdata,
    M06_AXI_wready,
    M06_AXI_wstrb,
    M06_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [39:0]M00_AXI_araddr;
  input [0:0]M00_AXI_arready;
  output [0:0]M00_AXI_arvalid;
  output [39:0]M00_AXI_awaddr;
  input [0:0]M00_AXI_awready;
  output [0:0]M00_AXI_awvalid;
  output [0:0]M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input [0:0]M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output [0:0]M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input [0:0]M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input [0:0]M00_AXI_wready;
  output [0:0]M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [31:0]M01_AXI_araddr;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output [31:0]M01_AXI_awaddr;
  input M01_AXI_awready;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input M01_AXI_wready;
  output M01_AXI_wvalid;
  input M02_ACLK;
  input M02_ARESETN;
  output [39:0]M02_AXI_araddr;
  input [0:0]M02_AXI_arready;
  output [0:0]M02_AXI_arvalid;
  output [39:0]M02_AXI_awaddr;
  input [0:0]M02_AXI_awready;
  output [0:0]M02_AXI_awvalid;
  output [0:0]M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input [0:0]M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output [0:0]M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input [0:0]M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input [0:0]M02_AXI_wready;
  output [0:0]M02_AXI_wvalid;
  input M03_ACLK;
  input M03_ARESETN;
  output [39:0]M03_AXI_araddr;
  input [0:0]M03_AXI_arready;
  output [0:0]M03_AXI_arvalid;
  output [39:0]M03_AXI_awaddr;
  input [0:0]M03_AXI_awready;
  output [0:0]M03_AXI_awvalid;
  output [0:0]M03_AXI_bready;
  input [1:0]M03_AXI_bresp;
  input [0:0]M03_AXI_bvalid;
  input [31:0]M03_AXI_rdata;
  output [0:0]M03_AXI_rready;
  input [1:0]M03_AXI_rresp;
  input [0:0]M03_AXI_rvalid;
  output [31:0]M03_AXI_wdata;
  input [0:0]M03_AXI_wready;
  output [3:0]M03_AXI_wstrb;
  output [0:0]M03_AXI_wvalid;
  input M04_ACLK;
  input M04_ARESETN;
  output [39:0]M04_AXI_araddr;
  input [0:0]M04_AXI_arready;
  output [0:0]M04_AXI_arvalid;
  output [39:0]M04_AXI_awaddr;
  input [0:0]M04_AXI_awready;
  output [0:0]M04_AXI_awvalid;
  output [0:0]M04_AXI_bready;
  input [1:0]M04_AXI_bresp;
  input [0:0]M04_AXI_bvalid;
  input [31:0]M04_AXI_rdata;
  output [0:0]M04_AXI_rready;
  input [1:0]M04_AXI_rresp;
  input [0:0]M04_AXI_rvalid;
  output [31:0]M04_AXI_wdata;
  input [0:0]M04_AXI_wready;
  output [3:0]M04_AXI_wstrb;
  output [0:0]M04_AXI_wvalid;
  input M05_ACLK;
  input M05_ARESETN;
  output [39:0]M05_AXI_araddr;
  output [2:0]M05_AXI_arprot;
  input M05_AXI_arready;
  output M05_AXI_arvalid;
  output [39:0]M05_AXI_awaddr;
  output [2:0]M05_AXI_awprot;
  input M05_AXI_awready;
  output M05_AXI_awvalid;
  output M05_AXI_bready;
  input [1:0]M05_AXI_bresp;
  input M05_AXI_bvalid;
  input [31:0]M05_AXI_rdata;
  output M05_AXI_rready;
  input [1:0]M05_AXI_rresp;
  input M05_AXI_rvalid;
  output [31:0]M05_AXI_wdata;
  input M05_AXI_wready;
  output [3:0]M05_AXI_wstrb;
  output M05_AXI_wvalid;
  input M06_ACLK;
  input M06_ARESETN;
  output [7:0]M06_AXI_araddr;
  input M06_AXI_arready;
  output M06_AXI_arvalid;
  output [7:0]M06_AXI_awaddr;
  input M06_AXI_awready;
  output M06_AXI_awvalid;
  output M06_AXI_bready;
  input [1:0]M06_AXI_bresp;
  input M06_AXI_bvalid;
  input [31:0]M06_AXI_rdata;
  output M06_AXI_rready;
  input [1:0]M06_AXI_rresp;
  input M06_AXI_rvalid;
  output [31:0]M06_AXI_wdata;
  input M06_AXI_wready;
  output [3:0]M06_AXI_wstrb;
  output M06_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [39:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [15:0]S00_AXI_arid;
  input [7:0]S00_AXI_arlen;
  input [0:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [39:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [15:0]S00_AXI_awid;
  input [7:0]S00_AXI_awlen;
  input [0:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [15:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output [15:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire M00_ACLK_1;
  wire M00_ARESETN_1;
  wire M01_ACLK_1;
  wire M01_ARESETN_1;
  wire M02_ACLK_1;
  wire M02_ARESETN_1;
  wire M03_ACLK_1;
  wire M03_ARESETN_1;
  wire M04_ACLK_1;
  wire M04_ARESETN_1;
  wire M05_ACLK_1;
  wire M05_ARESETN_1;
  wire M06_ACLK_1;
  wire M06_ARESETN_1;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire [39:0]m00_couplers_to_ps8_0_axi_periph_ARADDR;
  wire [0:0]m00_couplers_to_ps8_0_axi_periph_ARREADY;
  wire [0:0]m00_couplers_to_ps8_0_axi_periph_ARVALID;
  wire [39:0]m00_couplers_to_ps8_0_axi_periph_AWADDR;
  wire [0:0]m00_couplers_to_ps8_0_axi_periph_AWREADY;
  wire [0:0]m00_couplers_to_ps8_0_axi_periph_AWVALID;
  wire [0:0]m00_couplers_to_ps8_0_axi_periph_BREADY;
  wire [1:0]m00_couplers_to_ps8_0_axi_periph_BRESP;
  wire [0:0]m00_couplers_to_ps8_0_axi_periph_BVALID;
  wire [31:0]m00_couplers_to_ps8_0_axi_periph_RDATA;
  wire [0:0]m00_couplers_to_ps8_0_axi_periph_RREADY;
  wire [1:0]m00_couplers_to_ps8_0_axi_periph_RRESP;
  wire [0:0]m00_couplers_to_ps8_0_axi_periph_RVALID;
  wire [31:0]m00_couplers_to_ps8_0_axi_periph_WDATA;
  wire [0:0]m00_couplers_to_ps8_0_axi_periph_WREADY;
  wire [0:0]m00_couplers_to_ps8_0_axi_periph_WVALID;
  wire [31:0]m01_couplers_to_ps8_0_axi_periph_ARADDR;
  wire m01_couplers_to_ps8_0_axi_periph_ARREADY;
  wire m01_couplers_to_ps8_0_axi_periph_ARVALID;
  wire [31:0]m01_couplers_to_ps8_0_axi_periph_AWADDR;
  wire m01_couplers_to_ps8_0_axi_periph_AWREADY;
  wire m01_couplers_to_ps8_0_axi_periph_AWVALID;
  wire m01_couplers_to_ps8_0_axi_periph_BREADY;
  wire [1:0]m01_couplers_to_ps8_0_axi_periph_BRESP;
  wire m01_couplers_to_ps8_0_axi_periph_BVALID;
  wire [31:0]m01_couplers_to_ps8_0_axi_periph_RDATA;
  wire m01_couplers_to_ps8_0_axi_periph_RREADY;
  wire [1:0]m01_couplers_to_ps8_0_axi_periph_RRESP;
  wire m01_couplers_to_ps8_0_axi_periph_RVALID;
  wire [31:0]m01_couplers_to_ps8_0_axi_periph_WDATA;
  wire m01_couplers_to_ps8_0_axi_periph_WREADY;
  wire m01_couplers_to_ps8_0_axi_periph_WVALID;
  wire [39:0]m02_couplers_to_ps8_0_axi_periph_ARADDR;
  wire [0:0]m02_couplers_to_ps8_0_axi_periph_ARREADY;
  wire [0:0]m02_couplers_to_ps8_0_axi_periph_ARVALID;
  wire [39:0]m02_couplers_to_ps8_0_axi_periph_AWADDR;
  wire [0:0]m02_couplers_to_ps8_0_axi_periph_AWREADY;
  wire [0:0]m02_couplers_to_ps8_0_axi_periph_AWVALID;
  wire [0:0]m02_couplers_to_ps8_0_axi_periph_BREADY;
  wire [1:0]m02_couplers_to_ps8_0_axi_periph_BRESP;
  wire [0:0]m02_couplers_to_ps8_0_axi_periph_BVALID;
  wire [31:0]m02_couplers_to_ps8_0_axi_periph_RDATA;
  wire [0:0]m02_couplers_to_ps8_0_axi_periph_RREADY;
  wire [1:0]m02_couplers_to_ps8_0_axi_periph_RRESP;
  wire [0:0]m02_couplers_to_ps8_0_axi_periph_RVALID;
  wire [31:0]m02_couplers_to_ps8_0_axi_periph_WDATA;
  wire [0:0]m02_couplers_to_ps8_0_axi_periph_WREADY;
  wire [0:0]m02_couplers_to_ps8_0_axi_periph_WVALID;
  wire [39:0]m03_couplers_to_ps8_0_axi_periph_ARADDR;
  wire [0:0]m03_couplers_to_ps8_0_axi_periph_ARREADY;
  wire [0:0]m03_couplers_to_ps8_0_axi_periph_ARVALID;
  wire [39:0]m03_couplers_to_ps8_0_axi_periph_AWADDR;
  wire [0:0]m03_couplers_to_ps8_0_axi_periph_AWREADY;
  wire [0:0]m03_couplers_to_ps8_0_axi_periph_AWVALID;
  wire [0:0]m03_couplers_to_ps8_0_axi_periph_BREADY;
  wire [1:0]m03_couplers_to_ps8_0_axi_periph_BRESP;
  wire [0:0]m03_couplers_to_ps8_0_axi_periph_BVALID;
  wire [31:0]m03_couplers_to_ps8_0_axi_periph_RDATA;
  wire [0:0]m03_couplers_to_ps8_0_axi_periph_RREADY;
  wire [1:0]m03_couplers_to_ps8_0_axi_periph_RRESP;
  wire [0:0]m03_couplers_to_ps8_0_axi_periph_RVALID;
  wire [31:0]m03_couplers_to_ps8_0_axi_periph_WDATA;
  wire [0:0]m03_couplers_to_ps8_0_axi_periph_WREADY;
  wire [3:0]m03_couplers_to_ps8_0_axi_periph_WSTRB;
  wire [0:0]m03_couplers_to_ps8_0_axi_periph_WVALID;
  wire [39:0]m04_couplers_to_ps8_0_axi_periph_ARADDR;
  wire [0:0]m04_couplers_to_ps8_0_axi_periph_ARREADY;
  wire m04_couplers_to_ps8_0_axi_periph_ARVALID;
  wire [39:0]m04_couplers_to_ps8_0_axi_periph_AWADDR;
  wire [0:0]m04_couplers_to_ps8_0_axi_periph_AWREADY;
  wire m04_couplers_to_ps8_0_axi_periph_AWVALID;
  wire m04_couplers_to_ps8_0_axi_periph_BREADY;
  wire [1:0]m04_couplers_to_ps8_0_axi_periph_BRESP;
  wire [0:0]m04_couplers_to_ps8_0_axi_periph_BVALID;
  wire [31:0]m04_couplers_to_ps8_0_axi_periph_RDATA;
  wire m04_couplers_to_ps8_0_axi_periph_RREADY;
  wire [1:0]m04_couplers_to_ps8_0_axi_periph_RRESP;
  wire [0:0]m04_couplers_to_ps8_0_axi_periph_RVALID;
  wire [31:0]m04_couplers_to_ps8_0_axi_periph_WDATA;
  wire [0:0]m04_couplers_to_ps8_0_axi_periph_WREADY;
  wire [3:0]m04_couplers_to_ps8_0_axi_periph_WSTRB;
  wire m04_couplers_to_ps8_0_axi_periph_WVALID;
  wire [39:0]m05_couplers_to_ps8_0_axi_periph_ARADDR;
  wire [2:0]m05_couplers_to_ps8_0_axi_periph_ARPROT;
  wire m05_couplers_to_ps8_0_axi_periph_ARREADY;
  wire m05_couplers_to_ps8_0_axi_periph_ARVALID;
  wire [39:0]m05_couplers_to_ps8_0_axi_periph_AWADDR;
  wire [2:0]m05_couplers_to_ps8_0_axi_periph_AWPROT;
  wire m05_couplers_to_ps8_0_axi_periph_AWREADY;
  wire m05_couplers_to_ps8_0_axi_periph_AWVALID;
  wire m05_couplers_to_ps8_0_axi_periph_BREADY;
  wire [1:0]m05_couplers_to_ps8_0_axi_periph_BRESP;
  wire m05_couplers_to_ps8_0_axi_periph_BVALID;
  wire [31:0]m05_couplers_to_ps8_0_axi_periph_RDATA;
  wire m05_couplers_to_ps8_0_axi_periph_RREADY;
  wire [1:0]m05_couplers_to_ps8_0_axi_periph_RRESP;
  wire m05_couplers_to_ps8_0_axi_periph_RVALID;
  wire [31:0]m05_couplers_to_ps8_0_axi_periph_WDATA;
  wire m05_couplers_to_ps8_0_axi_periph_WREADY;
  wire [3:0]m05_couplers_to_ps8_0_axi_periph_WSTRB;
  wire m05_couplers_to_ps8_0_axi_periph_WVALID;
  wire [7:0]m06_couplers_to_ps8_0_axi_periph_ARADDR;
  wire m06_couplers_to_ps8_0_axi_periph_ARREADY;
  wire m06_couplers_to_ps8_0_axi_periph_ARVALID;
  wire [7:0]m06_couplers_to_ps8_0_axi_periph_AWADDR;
  wire m06_couplers_to_ps8_0_axi_periph_AWREADY;
  wire m06_couplers_to_ps8_0_axi_periph_AWVALID;
  wire m06_couplers_to_ps8_0_axi_periph_BREADY;
  wire [1:0]m06_couplers_to_ps8_0_axi_periph_BRESP;
  wire m06_couplers_to_ps8_0_axi_periph_BVALID;
  wire [31:0]m06_couplers_to_ps8_0_axi_periph_RDATA;
  wire m06_couplers_to_ps8_0_axi_periph_RREADY;
  wire [1:0]m06_couplers_to_ps8_0_axi_periph_RRESP;
  wire m06_couplers_to_ps8_0_axi_periph_RVALID;
  wire [31:0]m06_couplers_to_ps8_0_axi_periph_WDATA;
  wire m06_couplers_to_ps8_0_axi_periph_WREADY;
  wire [3:0]m06_couplers_to_ps8_0_axi_periph_WSTRB;
  wire m06_couplers_to_ps8_0_axi_periph_WVALID;
  wire ps8_0_axi_periph_ACLK_net;
  wire ps8_0_axi_periph_ARESETN_net;
  wire [39:0]ps8_0_axi_periph_to_s00_couplers_ARADDR;
  wire [1:0]ps8_0_axi_periph_to_s00_couplers_ARBURST;
  wire [3:0]ps8_0_axi_periph_to_s00_couplers_ARCACHE;
  wire [15:0]ps8_0_axi_periph_to_s00_couplers_ARID;
  wire [7:0]ps8_0_axi_periph_to_s00_couplers_ARLEN;
  wire [0:0]ps8_0_axi_periph_to_s00_couplers_ARLOCK;
  wire [2:0]ps8_0_axi_periph_to_s00_couplers_ARPROT;
  wire [3:0]ps8_0_axi_periph_to_s00_couplers_ARQOS;
  wire ps8_0_axi_periph_to_s00_couplers_ARREADY;
  wire [2:0]ps8_0_axi_periph_to_s00_couplers_ARSIZE;
  wire ps8_0_axi_periph_to_s00_couplers_ARVALID;
  wire [39:0]ps8_0_axi_periph_to_s00_couplers_AWADDR;
  wire [1:0]ps8_0_axi_periph_to_s00_couplers_AWBURST;
  wire [3:0]ps8_0_axi_periph_to_s00_couplers_AWCACHE;
  wire [15:0]ps8_0_axi_periph_to_s00_couplers_AWID;
  wire [7:0]ps8_0_axi_periph_to_s00_couplers_AWLEN;
  wire [0:0]ps8_0_axi_periph_to_s00_couplers_AWLOCK;
  wire [2:0]ps8_0_axi_periph_to_s00_couplers_AWPROT;
  wire [3:0]ps8_0_axi_periph_to_s00_couplers_AWQOS;
  wire ps8_0_axi_periph_to_s00_couplers_AWREADY;
  wire [2:0]ps8_0_axi_periph_to_s00_couplers_AWSIZE;
  wire ps8_0_axi_periph_to_s00_couplers_AWVALID;
  wire [15:0]ps8_0_axi_periph_to_s00_couplers_BID;
  wire ps8_0_axi_periph_to_s00_couplers_BREADY;
  wire [1:0]ps8_0_axi_periph_to_s00_couplers_BRESP;
  wire ps8_0_axi_periph_to_s00_couplers_BVALID;
  wire [31:0]ps8_0_axi_periph_to_s00_couplers_RDATA;
  wire [15:0]ps8_0_axi_periph_to_s00_couplers_RID;
  wire ps8_0_axi_periph_to_s00_couplers_RLAST;
  wire ps8_0_axi_periph_to_s00_couplers_RREADY;
  wire [1:0]ps8_0_axi_periph_to_s00_couplers_RRESP;
  wire ps8_0_axi_periph_to_s00_couplers_RVALID;
  wire [31:0]ps8_0_axi_periph_to_s00_couplers_WDATA;
  wire ps8_0_axi_periph_to_s00_couplers_WLAST;
  wire ps8_0_axi_periph_to_s00_couplers_WREADY;
  wire [3:0]ps8_0_axi_periph_to_s00_couplers_WSTRB;
  wire ps8_0_axi_periph_to_s00_couplers_WVALID;
  wire [39:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire s00_couplers_to_xbar_ARVALID;
  wire [39:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [39:0]xbar_to_m00_couplers_ARADDR;
  wire [0:0]xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [39:0]xbar_to_m00_couplers_AWADDR;
  wire [0:0]xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire [0:0]xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire [0:0]xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WREADY;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [79:40]xbar_to_m01_couplers_ARADDR;
  wire [5:3]xbar_to_m01_couplers_ARPROT;
  wire xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [79:40]xbar_to_m01_couplers_AWADDR;
  wire [5:3]xbar_to_m01_couplers_AWPROT;
  wire xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [119:80]xbar_to_m02_couplers_ARADDR;
  wire [0:0]xbar_to_m02_couplers_ARREADY;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [119:80]xbar_to_m02_couplers_AWADDR;
  wire [0:0]xbar_to_m02_couplers_AWREADY;
  wire [2:2]xbar_to_m02_couplers_AWVALID;
  wire [2:2]xbar_to_m02_couplers_BREADY;
  wire [1:0]xbar_to_m02_couplers_BRESP;
  wire [0:0]xbar_to_m02_couplers_BVALID;
  wire [31:0]xbar_to_m02_couplers_RDATA;
  wire [2:2]xbar_to_m02_couplers_RREADY;
  wire [1:0]xbar_to_m02_couplers_RRESP;
  wire [0:0]xbar_to_m02_couplers_RVALID;
  wire [95:64]xbar_to_m02_couplers_WDATA;
  wire [0:0]xbar_to_m02_couplers_WREADY;
  wire [2:2]xbar_to_m02_couplers_WVALID;
  wire [159:120]xbar_to_m03_couplers_ARADDR;
  wire [0:0]xbar_to_m03_couplers_ARREADY;
  wire [3:3]xbar_to_m03_couplers_ARVALID;
  wire [159:120]xbar_to_m03_couplers_AWADDR;
  wire [0:0]xbar_to_m03_couplers_AWREADY;
  wire [3:3]xbar_to_m03_couplers_AWVALID;
  wire [3:3]xbar_to_m03_couplers_BREADY;
  wire [1:0]xbar_to_m03_couplers_BRESP;
  wire [0:0]xbar_to_m03_couplers_BVALID;
  wire [31:0]xbar_to_m03_couplers_RDATA;
  wire [3:3]xbar_to_m03_couplers_RREADY;
  wire [1:0]xbar_to_m03_couplers_RRESP;
  wire [0:0]xbar_to_m03_couplers_RVALID;
  wire [127:96]xbar_to_m03_couplers_WDATA;
  wire [0:0]xbar_to_m03_couplers_WREADY;
  wire [15:12]xbar_to_m03_couplers_WSTRB;
  wire [3:3]xbar_to_m03_couplers_WVALID;
  wire [199:160]xbar_to_m04_couplers_ARADDR;
  wire xbar_to_m04_couplers_ARREADY;
  wire [4:4]xbar_to_m04_couplers_ARVALID;
  wire [199:160]xbar_to_m04_couplers_AWADDR;
  wire xbar_to_m04_couplers_AWREADY;
  wire [4:4]xbar_to_m04_couplers_AWVALID;
  wire [4:4]xbar_to_m04_couplers_BREADY;
  wire [1:0]xbar_to_m04_couplers_BRESP;
  wire xbar_to_m04_couplers_BVALID;
  wire [31:0]xbar_to_m04_couplers_RDATA;
  wire [4:4]xbar_to_m04_couplers_RREADY;
  wire [1:0]xbar_to_m04_couplers_RRESP;
  wire xbar_to_m04_couplers_RVALID;
  wire [159:128]xbar_to_m04_couplers_WDATA;
  wire xbar_to_m04_couplers_WREADY;
  wire [19:16]xbar_to_m04_couplers_WSTRB;
  wire [4:4]xbar_to_m04_couplers_WVALID;
  wire [239:200]xbar_to_m05_couplers_ARADDR;
  wire [17:15]xbar_to_m05_couplers_ARPROT;
  wire xbar_to_m05_couplers_ARREADY;
  wire [5:5]xbar_to_m05_couplers_ARVALID;
  wire [239:200]xbar_to_m05_couplers_AWADDR;
  wire [17:15]xbar_to_m05_couplers_AWPROT;
  wire xbar_to_m05_couplers_AWREADY;
  wire [5:5]xbar_to_m05_couplers_AWVALID;
  wire [5:5]xbar_to_m05_couplers_BREADY;
  wire [1:0]xbar_to_m05_couplers_BRESP;
  wire xbar_to_m05_couplers_BVALID;
  wire [31:0]xbar_to_m05_couplers_RDATA;
  wire [5:5]xbar_to_m05_couplers_RREADY;
  wire [1:0]xbar_to_m05_couplers_RRESP;
  wire xbar_to_m05_couplers_RVALID;
  wire [191:160]xbar_to_m05_couplers_WDATA;
  wire xbar_to_m05_couplers_WREADY;
  wire [23:20]xbar_to_m05_couplers_WSTRB;
  wire [5:5]xbar_to_m05_couplers_WVALID;
  wire [279:240]xbar_to_m06_couplers_ARADDR;
  wire [20:18]xbar_to_m06_couplers_ARPROT;
  wire xbar_to_m06_couplers_ARREADY;
  wire [6:6]xbar_to_m06_couplers_ARVALID;
  wire [279:240]xbar_to_m06_couplers_AWADDR;
  wire [20:18]xbar_to_m06_couplers_AWPROT;
  wire xbar_to_m06_couplers_AWREADY;
  wire [6:6]xbar_to_m06_couplers_AWVALID;
  wire [6:6]xbar_to_m06_couplers_BREADY;
  wire [1:0]xbar_to_m06_couplers_BRESP;
  wire xbar_to_m06_couplers_BVALID;
  wire [31:0]xbar_to_m06_couplers_RDATA;
  wire [6:6]xbar_to_m06_couplers_RREADY;
  wire [1:0]xbar_to_m06_couplers_RRESP;
  wire xbar_to_m06_couplers_RVALID;
  wire [223:192]xbar_to_m06_couplers_WDATA;
  wire xbar_to_m06_couplers_WREADY;
  wire [27:24]xbar_to_m06_couplers_WSTRB;
  wire [6:6]xbar_to_m06_couplers_WVALID;
  wire [20:0]NLW_xbar_m_axi_arprot_UNCONNECTED;
  wire [20:0]NLW_xbar_m_axi_awprot_UNCONNECTED;
  wire [27:0]NLW_xbar_m_axi_wstrb_UNCONNECTED;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[39:0] = m00_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M00_AXI_arvalid[0] = m00_couplers_to_ps8_0_axi_periph_ARVALID;
  assign M00_AXI_awaddr[39:0] = m00_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M00_AXI_awvalid[0] = m00_couplers_to_ps8_0_axi_periph_AWVALID;
  assign M00_AXI_bready[0] = m00_couplers_to_ps8_0_axi_periph_BREADY;
  assign M00_AXI_rready[0] = m00_couplers_to_ps8_0_axi_periph_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_ps8_0_axi_periph_WDATA;
  assign M00_AXI_wvalid[0] = m00_couplers_to_ps8_0_axi_periph_WVALID;
  assign M01_ACLK_1 = M01_ACLK;
  assign M01_ARESETN_1 = M01_ARESETN;
  assign M01_AXI_araddr[31:0] = m01_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M01_AXI_arvalid = m01_couplers_to_ps8_0_axi_periph_ARVALID;
  assign M01_AXI_awaddr[31:0] = m01_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M01_AXI_awvalid = m01_couplers_to_ps8_0_axi_periph_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_ps8_0_axi_periph_BREADY;
  assign M01_AXI_rready = m01_couplers_to_ps8_0_axi_periph_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_ps8_0_axi_periph_WDATA;
  assign M01_AXI_wvalid = m01_couplers_to_ps8_0_axi_periph_WVALID;
  assign M02_ACLK_1 = M02_ACLK;
  assign M02_ARESETN_1 = M02_ARESETN;
  assign M02_AXI_araddr[39:0] = m02_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M02_AXI_arvalid[0] = m02_couplers_to_ps8_0_axi_periph_ARVALID;
  assign M02_AXI_awaddr[39:0] = m02_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M02_AXI_awvalid[0] = m02_couplers_to_ps8_0_axi_periph_AWVALID;
  assign M02_AXI_bready[0] = m02_couplers_to_ps8_0_axi_periph_BREADY;
  assign M02_AXI_rready[0] = m02_couplers_to_ps8_0_axi_periph_RREADY;
  assign M02_AXI_wdata[31:0] = m02_couplers_to_ps8_0_axi_periph_WDATA;
  assign M02_AXI_wvalid[0] = m02_couplers_to_ps8_0_axi_periph_WVALID;
  assign M03_ACLK_1 = M03_ACLK;
  assign M03_ARESETN_1 = M03_ARESETN;
  assign M03_AXI_araddr[39:0] = m03_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M03_AXI_arvalid[0] = m03_couplers_to_ps8_0_axi_periph_ARVALID;
  assign M03_AXI_awaddr[39:0] = m03_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M03_AXI_awvalid[0] = m03_couplers_to_ps8_0_axi_periph_AWVALID;
  assign M03_AXI_bready[0] = m03_couplers_to_ps8_0_axi_periph_BREADY;
  assign M03_AXI_rready[0] = m03_couplers_to_ps8_0_axi_periph_RREADY;
  assign M03_AXI_wdata[31:0] = m03_couplers_to_ps8_0_axi_periph_WDATA;
  assign M03_AXI_wstrb[3:0] = m03_couplers_to_ps8_0_axi_periph_WSTRB;
  assign M03_AXI_wvalid[0] = m03_couplers_to_ps8_0_axi_periph_WVALID;
  assign M04_ACLK_1 = M04_ACLK;
  assign M04_ARESETN_1 = M04_ARESETN;
  assign M04_AXI_araddr[39:0] = m04_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M04_AXI_arvalid[0] = m04_couplers_to_ps8_0_axi_periph_ARVALID;
  assign M04_AXI_awaddr[39:0] = m04_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M04_AXI_awvalid[0] = m04_couplers_to_ps8_0_axi_periph_AWVALID;
  assign M04_AXI_bready[0] = m04_couplers_to_ps8_0_axi_periph_BREADY;
  assign M04_AXI_rready[0] = m04_couplers_to_ps8_0_axi_periph_RREADY;
  assign M04_AXI_wdata[31:0] = m04_couplers_to_ps8_0_axi_periph_WDATA;
  assign M04_AXI_wstrb[3:0] = m04_couplers_to_ps8_0_axi_periph_WSTRB;
  assign M04_AXI_wvalid[0] = m04_couplers_to_ps8_0_axi_periph_WVALID;
  assign M05_ACLK_1 = M05_ACLK;
  assign M05_ARESETN_1 = M05_ARESETN;
  assign M05_AXI_araddr[39:0] = m05_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M05_AXI_arprot[2:0] = m05_couplers_to_ps8_0_axi_periph_ARPROT;
  assign M05_AXI_arvalid = m05_couplers_to_ps8_0_axi_periph_ARVALID;
  assign M05_AXI_awaddr[39:0] = m05_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M05_AXI_awprot[2:0] = m05_couplers_to_ps8_0_axi_periph_AWPROT;
  assign M05_AXI_awvalid = m05_couplers_to_ps8_0_axi_periph_AWVALID;
  assign M05_AXI_bready = m05_couplers_to_ps8_0_axi_periph_BREADY;
  assign M05_AXI_rready = m05_couplers_to_ps8_0_axi_periph_RREADY;
  assign M05_AXI_wdata[31:0] = m05_couplers_to_ps8_0_axi_periph_WDATA;
  assign M05_AXI_wstrb[3:0] = m05_couplers_to_ps8_0_axi_periph_WSTRB;
  assign M05_AXI_wvalid = m05_couplers_to_ps8_0_axi_periph_WVALID;
  assign M06_ACLK_1 = M06_ACLK;
  assign M06_ARESETN_1 = M06_ARESETN;
  assign M06_AXI_araddr[7:0] = m06_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M06_AXI_arvalid = m06_couplers_to_ps8_0_axi_periph_ARVALID;
  assign M06_AXI_awaddr[7:0] = m06_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M06_AXI_awvalid = m06_couplers_to_ps8_0_axi_periph_AWVALID;
  assign M06_AXI_bready = m06_couplers_to_ps8_0_axi_periph_BREADY;
  assign M06_AXI_rready = m06_couplers_to_ps8_0_axi_periph_RREADY;
  assign M06_AXI_wdata[31:0] = m06_couplers_to_ps8_0_axi_periph_WDATA;
  assign M06_AXI_wstrb[3:0] = m06_couplers_to_ps8_0_axi_periph_WSTRB;
  assign M06_AXI_wvalid = m06_couplers_to_ps8_0_axi_periph_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = ps8_0_axi_periph_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = ps8_0_axi_periph_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[15:0] = ps8_0_axi_periph_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = ps8_0_axi_periph_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = ps8_0_axi_periph_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rid[15:0] = ps8_0_axi_periph_to_s00_couplers_RID;
  assign S00_AXI_rlast = ps8_0_axi_periph_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = ps8_0_axi_periph_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = ps8_0_axi_periph_to_s00_couplers_RVALID;
  assign S00_AXI_wready = ps8_0_axi_periph_to_s00_couplers_WREADY;
  assign m00_couplers_to_ps8_0_axi_periph_ARREADY = M00_AXI_arready[0];
  assign m00_couplers_to_ps8_0_axi_periph_AWREADY = M00_AXI_awready[0];
  assign m00_couplers_to_ps8_0_axi_periph_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_ps8_0_axi_periph_BVALID = M00_AXI_bvalid[0];
  assign m00_couplers_to_ps8_0_axi_periph_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_ps8_0_axi_periph_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_ps8_0_axi_periph_RVALID = M00_AXI_rvalid[0];
  assign m00_couplers_to_ps8_0_axi_periph_WREADY = M00_AXI_wready[0];
  assign m01_couplers_to_ps8_0_axi_periph_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_ps8_0_axi_periph_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_ps8_0_axi_periph_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_ps8_0_axi_periph_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_ps8_0_axi_periph_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_ps8_0_axi_periph_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_ps8_0_axi_periph_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_ps8_0_axi_periph_WREADY = M01_AXI_wready;
  assign m02_couplers_to_ps8_0_axi_periph_ARREADY = M02_AXI_arready[0];
  assign m02_couplers_to_ps8_0_axi_periph_AWREADY = M02_AXI_awready[0];
  assign m02_couplers_to_ps8_0_axi_periph_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_ps8_0_axi_periph_BVALID = M02_AXI_bvalid[0];
  assign m02_couplers_to_ps8_0_axi_periph_RDATA = M02_AXI_rdata[31:0];
  assign m02_couplers_to_ps8_0_axi_periph_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_ps8_0_axi_periph_RVALID = M02_AXI_rvalid[0];
  assign m02_couplers_to_ps8_0_axi_periph_WREADY = M02_AXI_wready[0];
  assign m03_couplers_to_ps8_0_axi_periph_ARREADY = M03_AXI_arready[0];
  assign m03_couplers_to_ps8_0_axi_periph_AWREADY = M03_AXI_awready[0];
  assign m03_couplers_to_ps8_0_axi_periph_BRESP = M03_AXI_bresp[1:0];
  assign m03_couplers_to_ps8_0_axi_periph_BVALID = M03_AXI_bvalid[0];
  assign m03_couplers_to_ps8_0_axi_periph_RDATA = M03_AXI_rdata[31:0];
  assign m03_couplers_to_ps8_0_axi_periph_RRESP = M03_AXI_rresp[1:0];
  assign m03_couplers_to_ps8_0_axi_periph_RVALID = M03_AXI_rvalid[0];
  assign m03_couplers_to_ps8_0_axi_periph_WREADY = M03_AXI_wready[0];
  assign m04_couplers_to_ps8_0_axi_periph_ARREADY = M04_AXI_arready[0];
  assign m04_couplers_to_ps8_0_axi_periph_AWREADY = M04_AXI_awready[0];
  assign m04_couplers_to_ps8_0_axi_periph_BRESP = M04_AXI_bresp[1:0];
  assign m04_couplers_to_ps8_0_axi_periph_BVALID = M04_AXI_bvalid[0];
  assign m04_couplers_to_ps8_0_axi_periph_RDATA = M04_AXI_rdata[31:0];
  assign m04_couplers_to_ps8_0_axi_periph_RRESP = M04_AXI_rresp[1:0];
  assign m04_couplers_to_ps8_0_axi_periph_RVALID = M04_AXI_rvalid[0];
  assign m04_couplers_to_ps8_0_axi_periph_WREADY = M04_AXI_wready[0];
  assign m05_couplers_to_ps8_0_axi_periph_ARREADY = M05_AXI_arready;
  assign m05_couplers_to_ps8_0_axi_periph_AWREADY = M05_AXI_awready;
  assign m05_couplers_to_ps8_0_axi_periph_BRESP = M05_AXI_bresp[1:0];
  assign m05_couplers_to_ps8_0_axi_periph_BVALID = M05_AXI_bvalid;
  assign m05_couplers_to_ps8_0_axi_periph_RDATA = M05_AXI_rdata[31:0];
  assign m05_couplers_to_ps8_0_axi_periph_RRESP = M05_AXI_rresp[1:0];
  assign m05_couplers_to_ps8_0_axi_periph_RVALID = M05_AXI_rvalid;
  assign m05_couplers_to_ps8_0_axi_periph_WREADY = M05_AXI_wready;
  assign m06_couplers_to_ps8_0_axi_periph_ARREADY = M06_AXI_arready;
  assign m06_couplers_to_ps8_0_axi_periph_AWREADY = M06_AXI_awready;
  assign m06_couplers_to_ps8_0_axi_periph_BRESP = M06_AXI_bresp[1:0];
  assign m06_couplers_to_ps8_0_axi_periph_BVALID = M06_AXI_bvalid;
  assign m06_couplers_to_ps8_0_axi_periph_RDATA = M06_AXI_rdata[31:0];
  assign m06_couplers_to_ps8_0_axi_periph_RRESP = M06_AXI_rresp[1:0];
  assign m06_couplers_to_ps8_0_axi_periph_RVALID = M06_AXI_rvalid;
  assign m06_couplers_to_ps8_0_axi_periph_WREADY = M06_AXI_wready;
  assign ps8_0_axi_periph_ACLK_net = ACLK;
  assign ps8_0_axi_periph_ARESETN_net = ARESETN;
  assign ps8_0_axi_periph_to_s00_couplers_ARADDR = S00_AXI_araddr[39:0];
  assign ps8_0_axi_periph_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign ps8_0_axi_periph_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign ps8_0_axi_periph_to_s00_couplers_ARID = S00_AXI_arid[15:0];
  assign ps8_0_axi_periph_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign ps8_0_axi_periph_to_s00_couplers_ARLOCK = S00_AXI_arlock[0];
  assign ps8_0_axi_periph_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign ps8_0_axi_periph_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign ps8_0_axi_periph_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign ps8_0_axi_periph_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign ps8_0_axi_periph_to_s00_couplers_AWADDR = S00_AXI_awaddr[39:0];
  assign ps8_0_axi_periph_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign ps8_0_axi_periph_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign ps8_0_axi_periph_to_s00_couplers_AWID = S00_AXI_awid[15:0];
  assign ps8_0_axi_periph_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign ps8_0_axi_periph_to_s00_couplers_AWLOCK = S00_AXI_awlock[0];
  assign ps8_0_axi_periph_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign ps8_0_axi_periph_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign ps8_0_axi_periph_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign ps8_0_axi_periph_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign ps8_0_axi_periph_to_s00_couplers_BREADY = S00_AXI_bready;
  assign ps8_0_axi_periph_to_s00_couplers_RREADY = S00_AXI_rready;
  assign ps8_0_axi_periph_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign ps8_0_axi_periph_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign ps8_0_axi_periph_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign ps8_0_axi_periph_to_s00_couplers_WVALID = S00_AXI_wvalid;
  m00_couplers_imp_13EKDJH m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_ps8_0_axi_periph_ARADDR),
        .M_AXI_arready(m00_couplers_to_ps8_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_ps8_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_ps8_0_axi_periph_AWADDR),
        .M_AXI_awready(m00_couplers_to_ps8_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_ps8_0_axi_periph_AWVALID),
        .M_AXI_bready(m00_couplers_to_ps8_0_axi_periph_BREADY),
        .M_AXI_bresp(m00_couplers_to_ps8_0_axi_periph_BRESP),
        .M_AXI_bvalid(m00_couplers_to_ps8_0_axi_periph_BVALID),
        .M_AXI_rdata(m00_couplers_to_ps8_0_axi_periph_RDATA),
        .M_AXI_rready(m00_couplers_to_ps8_0_axi_periph_RREADY),
        .M_AXI_rresp(m00_couplers_to_ps8_0_axi_periph_RRESP),
        .M_AXI_rvalid(m00_couplers_to_ps8_0_axi_periph_RVALID),
        .M_AXI_wdata(m00_couplers_to_ps8_0_axi_periph_WDATA),
        .M_AXI_wready(m00_couplers_to_ps8_0_axi_periph_WREADY),
        .M_AXI_wvalid(m00_couplers_to_ps8_0_axi_periph_WVALID),
        .S_ACLK(ps8_0_axi_periph_ACLK_net),
        .S_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_1TRGSDL m01_couplers
       (.M_ACLK(M01_ACLK_1),
        .M_ARESETN(M01_ARESETN_1),
        .M_AXI_araddr(m01_couplers_to_ps8_0_axi_periph_ARADDR),
        .M_AXI_arready(m01_couplers_to_ps8_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_ps8_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_ps8_0_axi_periph_AWADDR),
        .M_AXI_awready(m01_couplers_to_ps8_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_ps8_0_axi_periph_AWVALID),
        .M_AXI_bready(m01_couplers_to_ps8_0_axi_periph_BREADY),
        .M_AXI_bresp(m01_couplers_to_ps8_0_axi_periph_BRESP),
        .M_AXI_bvalid(m01_couplers_to_ps8_0_axi_periph_BVALID),
        .M_AXI_rdata(m01_couplers_to_ps8_0_axi_periph_RDATA),
        .M_AXI_rready(m01_couplers_to_ps8_0_axi_periph_RREADY),
        .M_AXI_rresp(m01_couplers_to_ps8_0_axi_periph_RRESP),
        .M_AXI_rvalid(m01_couplers_to_ps8_0_axi_periph_RVALID),
        .M_AXI_wdata(m01_couplers_to_ps8_0_axi_periph_WDATA),
        .M_AXI_wready(m01_couplers_to_ps8_0_axi_periph_WREADY),
        .M_AXI_wvalid(m01_couplers_to_ps8_0_axi_periph_WVALID),
        .S_ACLK(ps8_0_axi_periph_ACLK_net),
        .S_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m01_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m01_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  m02_couplers_imp_JZNL51 m02_couplers
       (.M_ACLK(M02_ACLK_1),
        .M_ARESETN(M02_ARESETN_1),
        .M_AXI_araddr(m02_couplers_to_ps8_0_axi_periph_ARADDR),
        .M_AXI_arready(m02_couplers_to_ps8_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m02_couplers_to_ps8_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_ps8_0_axi_periph_AWADDR),
        .M_AXI_awready(m02_couplers_to_ps8_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m02_couplers_to_ps8_0_axi_periph_AWVALID),
        .M_AXI_bready(m02_couplers_to_ps8_0_axi_periph_BREADY),
        .M_AXI_bresp(m02_couplers_to_ps8_0_axi_periph_BRESP),
        .M_AXI_bvalid(m02_couplers_to_ps8_0_axi_periph_BVALID),
        .M_AXI_rdata(m02_couplers_to_ps8_0_axi_periph_RDATA),
        .M_AXI_rready(m02_couplers_to_ps8_0_axi_periph_RREADY),
        .M_AXI_rresp(m02_couplers_to_ps8_0_axi_periph_RRESP),
        .M_AXI_rvalid(m02_couplers_to_ps8_0_axi_periph_RVALID),
        .M_AXI_wdata(m02_couplers_to_ps8_0_axi_periph_WDATA),
        .M_AXI_wready(m02_couplers_to_ps8_0_axi_periph_WREADY),
        .M_AXI_wvalid(m02_couplers_to_ps8_0_axi_periph_WVALID),
        .S_ACLK(ps8_0_axi_periph_ACLK_net),
        .S_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m02_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m02_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m02_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m02_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m02_couplers_RDATA),
        .S_AXI_rready(xbar_to_m02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m02_couplers_WDATA),
        .S_AXI_wready(xbar_to_m02_couplers_WREADY),
        .S_AXI_wvalid(xbar_to_m02_couplers_WVALID));
  m03_couplers_imp_BXZKRL m03_couplers
       (.M_ACLK(M03_ACLK_1),
        .M_ARESETN(M03_ARESETN_1),
        .M_AXI_araddr(m03_couplers_to_ps8_0_axi_periph_ARADDR),
        .M_AXI_arready(m03_couplers_to_ps8_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m03_couplers_to_ps8_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m03_couplers_to_ps8_0_axi_periph_AWADDR),
        .M_AXI_awready(m03_couplers_to_ps8_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m03_couplers_to_ps8_0_axi_periph_AWVALID),
        .M_AXI_bready(m03_couplers_to_ps8_0_axi_periph_BREADY),
        .M_AXI_bresp(m03_couplers_to_ps8_0_axi_periph_BRESP),
        .M_AXI_bvalid(m03_couplers_to_ps8_0_axi_periph_BVALID),
        .M_AXI_rdata(m03_couplers_to_ps8_0_axi_periph_RDATA),
        .M_AXI_rready(m03_couplers_to_ps8_0_axi_periph_RREADY),
        .M_AXI_rresp(m03_couplers_to_ps8_0_axi_periph_RRESP),
        .M_AXI_rvalid(m03_couplers_to_ps8_0_axi_periph_RVALID),
        .M_AXI_wdata(m03_couplers_to_ps8_0_axi_periph_WDATA),
        .M_AXI_wready(m03_couplers_to_ps8_0_axi_periph_WREADY),
        .M_AXI_wstrb(m03_couplers_to_ps8_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m03_couplers_to_ps8_0_axi_periph_WVALID),
        .S_ACLK(ps8_0_axi_periph_ACLK_net),
        .S_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m03_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m03_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m03_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m03_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m03_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m03_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m03_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m03_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m03_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m03_couplers_RDATA),
        .S_AXI_rready(xbar_to_m03_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m03_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m03_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m03_couplers_WDATA),
        .S_AXI_wready(xbar_to_m03_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m03_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m03_couplers_WVALID));
  m04_couplers_imp_1OBP0F0 m04_couplers
       (.M_ACLK(M04_ACLK_1),
        .M_ARESETN(M04_ARESETN_1),
        .M_AXI_araddr(m04_couplers_to_ps8_0_axi_periph_ARADDR),
        .M_AXI_arready(m04_couplers_to_ps8_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m04_couplers_to_ps8_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m04_couplers_to_ps8_0_axi_periph_AWADDR),
        .M_AXI_awready(m04_couplers_to_ps8_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m04_couplers_to_ps8_0_axi_periph_AWVALID),
        .M_AXI_bready(m04_couplers_to_ps8_0_axi_periph_BREADY),
        .M_AXI_bresp(m04_couplers_to_ps8_0_axi_periph_BRESP),
        .M_AXI_bvalid(m04_couplers_to_ps8_0_axi_periph_BVALID),
        .M_AXI_rdata(m04_couplers_to_ps8_0_axi_periph_RDATA),
        .M_AXI_rready(m04_couplers_to_ps8_0_axi_periph_RREADY),
        .M_AXI_rresp(m04_couplers_to_ps8_0_axi_periph_RRESP),
        .M_AXI_rvalid(m04_couplers_to_ps8_0_axi_periph_RVALID),
        .M_AXI_wdata(m04_couplers_to_ps8_0_axi_periph_WDATA),
        .M_AXI_wready(m04_couplers_to_ps8_0_axi_periph_WREADY),
        .M_AXI_wstrb(m04_couplers_to_ps8_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m04_couplers_to_ps8_0_axi_periph_WVALID),
        .S_ACLK(ps8_0_axi_periph_ACLK_net),
        .S_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m04_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m04_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m04_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m04_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m04_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m04_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m04_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m04_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m04_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m04_couplers_RDATA),
        .S_AXI_rready(xbar_to_m04_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m04_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m04_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m04_couplers_WDATA),
        .S_AXI_wready(xbar_to_m04_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m04_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m04_couplers_WVALID));
  m05_couplers_imp_1FQ6WL4 m05_couplers
       (.M_ACLK(M05_ACLK_1),
        .M_ARESETN(M05_ARESETN_1),
        .M_AXI_araddr(m05_couplers_to_ps8_0_axi_periph_ARADDR),
        .M_AXI_arprot(m05_couplers_to_ps8_0_axi_periph_ARPROT),
        .M_AXI_arready(m05_couplers_to_ps8_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m05_couplers_to_ps8_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m05_couplers_to_ps8_0_axi_periph_AWADDR),
        .M_AXI_awprot(m05_couplers_to_ps8_0_axi_periph_AWPROT),
        .M_AXI_awready(m05_couplers_to_ps8_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m05_couplers_to_ps8_0_axi_periph_AWVALID),
        .M_AXI_bready(m05_couplers_to_ps8_0_axi_periph_BREADY),
        .M_AXI_bresp(m05_couplers_to_ps8_0_axi_periph_BRESP),
        .M_AXI_bvalid(m05_couplers_to_ps8_0_axi_periph_BVALID),
        .M_AXI_rdata(m05_couplers_to_ps8_0_axi_periph_RDATA),
        .M_AXI_rready(m05_couplers_to_ps8_0_axi_periph_RREADY),
        .M_AXI_rresp(m05_couplers_to_ps8_0_axi_periph_RRESP),
        .M_AXI_rvalid(m05_couplers_to_ps8_0_axi_periph_RVALID),
        .M_AXI_wdata(m05_couplers_to_ps8_0_axi_periph_WDATA),
        .M_AXI_wready(m05_couplers_to_ps8_0_axi_periph_WREADY),
        .M_AXI_wstrb(m05_couplers_to_ps8_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m05_couplers_to_ps8_0_axi_periph_WVALID),
        .S_ACLK(ps8_0_axi_periph_ACLK_net),
        .S_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m05_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m05_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m05_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m05_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m05_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m05_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m05_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m05_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m05_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m05_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m05_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m05_couplers_RDATA),
        .S_AXI_rready(xbar_to_m05_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m05_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m05_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m05_couplers_WDATA),
        .S_AXI_wready(xbar_to_m05_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m05_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m05_couplers_WVALID));
  m06_couplers_imp_8PM4US m06_couplers
       (.M_ACLK(M06_ACLK_1),
        .M_ARESETN(M06_ARESETN_1),
        .M_AXI_araddr(m06_couplers_to_ps8_0_axi_periph_ARADDR),
        .M_AXI_arready(m06_couplers_to_ps8_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m06_couplers_to_ps8_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m06_couplers_to_ps8_0_axi_periph_AWADDR),
        .M_AXI_awready(m06_couplers_to_ps8_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m06_couplers_to_ps8_0_axi_periph_AWVALID),
        .M_AXI_bready(m06_couplers_to_ps8_0_axi_periph_BREADY),
        .M_AXI_bresp(m06_couplers_to_ps8_0_axi_periph_BRESP),
        .M_AXI_bvalid(m06_couplers_to_ps8_0_axi_periph_BVALID),
        .M_AXI_rdata(m06_couplers_to_ps8_0_axi_periph_RDATA),
        .M_AXI_rready(m06_couplers_to_ps8_0_axi_periph_RREADY),
        .M_AXI_rresp(m06_couplers_to_ps8_0_axi_periph_RRESP),
        .M_AXI_rvalid(m06_couplers_to_ps8_0_axi_periph_RVALID),
        .M_AXI_wdata(m06_couplers_to_ps8_0_axi_periph_WDATA),
        .M_AXI_wready(m06_couplers_to_ps8_0_axi_periph_WREADY),
        .M_AXI_wstrb(m06_couplers_to_ps8_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m06_couplers_to_ps8_0_axi_periph_WVALID),
        .S_ACLK(ps8_0_axi_periph_ACLK_net),
        .S_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m06_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m06_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m06_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m06_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m06_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m06_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m06_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m06_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m06_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m06_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m06_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m06_couplers_RDATA),
        .S_AXI_rready(xbar_to_m06_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m06_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m06_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m06_couplers_WDATA),
        .S_AXI_wready(xbar_to_m06_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m06_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m06_couplers_WVALID));
  s00_couplers_imp_DMAXO3 s00_couplers
       (.M_ACLK(ps8_0_axi_periph_ACLK_net),
        .M_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(ps8_0_axi_periph_to_s00_couplers_ARADDR),
        .S_AXI_arburst(ps8_0_axi_periph_to_s00_couplers_ARBURST),
        .S_AXI_arcache(ps8_0_axi_periph_to_s00_couplers_ARCACHE),
        .S_AXI_arid(ps8_0_axi_periph_to_s00_couplers_ARID),
        .S_AXI_arlen(ps8_0_axi_periph_to_s00_couplers_ARLEN),
        .S_AXI_arlock(ps8_0_axi_periph_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(ps8_0_axi_periph_to_s00_couplers_ARPROT),
        .S_AXI_arqos(ps8_0_axi_periph_to_s00_couplers_ARQOS),
        .S_AXI_arready(ps8_0_axi_periph_to_s00_couplers_ARREADY),
        .S_AXI_arsize(ps8_0_axi_periph_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(ps8_0_axi_periph_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(ps8_0_axi_periph_to_s00_couplers_AWADDR),
        .S_AXI_awburst(ps8_0_axi_periph_to_s00_couplers_AWBURST),
        .S_AXI_awcache(ps8_0_axi_periph_to_s00_couplers_AWCACHE),
        .S_AXI_awid(ps8_0_axi_periph_to_s00_couplers_AWID),
        .S_AXI_awlen(ps8_0_axi_periph_to_s00_couplers_AWLEN),
        .S_AXI_awlock(ps8_0_axi_periph_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(ps8_0_axi_periph_to_s00_couplers_AWPROT),
        .S_AXI_awqos(ps8_0_axi_periph_to_s00_couplers_AWQOS),
        .S_AXI_awready(ps8_0_axi_periph_to_s00_couplers_AWREADY),
        .S_AXI_awsize(ps8_0_axi_periph_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(ps8_0_axi_periph_to_s00_couplers_AWVALID),
        .S_AXI_bid(ps8_0_axi_periph_to_s00_couplers_BID),
        .S_AXI_bready(ps8_0_axi_periph_to_s00_couplers_BREADY),
        .S_AXI_bresp(ps8_0_axi_periph_to_s00_couplers_BRESP),
        .S_AXI_bvalid(ps8_0_axi_periph_to_s00_couplers_BVALID),
        .S_AXI_rdata(ps8_0_axi_periph_to_s00_couplers_RDATA),
        .S_AXI_rid(ps8_0_axi_periph_to_s00_couplers_RID),
        .S_AXI_rlast(ps8_0_axi_periph_to_s00_couplers_RLAST),
        .S_AXI_rready(ps8_0_axi_periph_to_s00_couplers_RREADY),
        .S_AXI_rresp(ps8_0_axi_periph_to_s00_couplers_RRESP),
        .S_AXI_rvalid(ps8_0_axi_periph_to_s00_couplers_RVALID),
        .S_AXI_wdata(ps8_0_axi_periph_to_s00_couplers_WDATA),
        .S_AXI_wlast(ps8_0_axi_periph_to_s00_couplers_WLAST),
        .S_AXI_wready(ps8_0_axi_periph_to_s00_couplers_WREADY),
        .S_AXI_wstrb(ps8_0_axi_periph_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(ps8_0_axi_periph_to_s00_couplers_WVALID));
  kr260_tsn_rs485pmod_xbar_0 xbar
       (.aclk(ps8_0_axi_periph_ACLK_net),
        .aresetn(ps8_0_axi_periph_ARESETN_net),
        .m_axi_araddr({xbar_to_m06_couplers_ARADDR,xbar_to_m05_couplers_ARADDR,xbar_to_m04_couplers_ARADDR,xbar_to_m03_couplers_ARADDR,xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arprot({xbar_to_m06_couplers_ARPROT,xbar_to_m05_couplers_ARPROT,NLW_xbar_m_axi_arprot_UNCONNECTED[14:6],xbar_to_m01_couplers_ARPROT,NLW_xbar_m_axi_arprot_UNCONNECTED[2:0]}),
        .m_axi_arready({xbar_to_m06_couplers_ARREADY,xbar_to_m05_couplers_ARREADY,xbar_to_m04_couplers_ARREADY,xbar_to_m03_couplers_ARREADY,xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m06_couplers_ARVALID,xbar_to_m05_couplers_ARVALID,xbar_to_m04_couplers_ARVALID,xbar_to_m03_couplers_ARVALID,xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m06_couplers_AWADDR,xbar_to_m05_couplers_AWADDR,xbar_to_m04_couplers_AWADDR,xbar_to_m03_couplers_AWADDR,xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awprot({xbar_to_m06_couplers_AWPROT,xbar_to_m05_couplers_AWPROT,NLW_xbar_m_axi_awprot_UNCONNECTED[14:6],xbar_to_m01_couplers_AWPROT,NLW_xbar_m_axi_awprot_UNCONNECTED[2:0]}),
        .m_axi_awready({xbar_to_m06_couplers_AWREADY,xbar_to_m05_couplers_AWREADY,xbar_to_m04_couplers_AWREADY,xbar_to_m03_couplers_AWREADY,xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m06_couplers_AWVALID,xbar_to_m05_couplers_AWVALID,xbar_to_m04_couplers_AWVALID,xbar_to_m03_couplers_AWVALID,xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m06_couplers_BREADY,xbar_to_m05_couplers_BREADY,xbar_to_m04_couplers_BREADY,xbar_to_m03_couplers_BREADY,xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m06_couplers_BRESP,xbar_to_m05_couplers_BRESP,xbar_to_m04_couplers_BRESP,xbar_to_m03_couplers_BRESP,xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m06_couplers_BVALID,xbar_to_m05_couplers_BVALID,xbar_to_m04_couplers_BVALID,xbar_to_m03_couplers_BVALID,xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m06_couplers_RDATA,xbar_to_m05_couplers_RDATA,xbar_to_m04_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m06_couplers_RREADY,xbar_to_m05_couplers_RREADY,xbar_to_m04_couplers_RREADY,xbar_to_m03_couplers_RREADY,xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m06_couplers_RRESP,xbar_to_m05_couplers_RRESP,xbar_to_m04_couplers_RRESP,xbar_to_m03_couplers_RRESP,xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m06_couplers_RVALID,xbar_to_m05_couplers_RVALID,xbar_to_m04_couplers_RVALID,xbar_to_m03_couplers_RVALID,xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m06_couplers_WDATA,xbar_to_m05_couplers_WDATA,xbar_to_m04_couplers_WDATA,xbar_to_m03_couplers_WDATA,xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m06_couplers_WREADY,xbar_to_m05_couplers_WREADY,xbar_to_m04_couplers_WREADY,xbar_to_m03_couplers_WREADY,xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m06_couplers_WSTRB,xbar_to_m05_couplers_WSTRB,xbar_to_m04_couplers_WSTRB,xbar_to_m03_couplers_WSTRB,NLW_xbar_m_axi_wstrb_UNCONNECTED[11:8],xbar_to_m01_couplers_WSTRB,NLW_xbar_m_axi_wstrb_UNCONNECTED[3:0]}),
        .m_axi_wvalid({xbar_to_m06_couplers_WVALID,xbar_to_m05_couplers_WVALID,xbar_to_m04_couplers_WVALID,xbar_to_m03_couplers_WVALID,xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

module m00_couplers_imp_13EKDJH
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [0:0]S_AXI_wvalid;

  wire [39:0]m00_couplers_to_m00_couplers_ARADDR;
  wire [0:0]m00_couplers_to_m00_couplers_ARREADY;
  wire [0:0]m00_couplers_to_m00_couplers_ARVALID;
  wire [39:0]m00_couplers_to_m00_couplers_AWADDR;
  wire [0:0]m00_couplers_to_m00_couplers_AWREADY;
  wire [0:0]m00_couplers_to_m00_couplers_AWVALID;
  wire [0:0]m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire [0:0]m00_couplers_to_m00_couplers_BVALID;
  wire [31:0]m00_couplers_to_m00_couplers_RDATA;
  wire [0:0]m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire [0:0]m00_couplers_to_m00_couplers_RVALID;
  wire [31:0]m00_couplers_to_m00_couplers_WDATA;
  wire [0:0]m00_couplers_to_m00_couplers_WREADY;
  wire [0:0]m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[39:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready[0] = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready[0] = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wvalid[0] = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready[0] = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready[0] = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid[0] = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid[0] = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready[0] = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[39:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready[0];
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid[0];
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready[0];
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid[0];
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready[0];
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid[0];
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready[0];
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid[0];
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready[0];
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m01_couplers_imp_1TRGSDL
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_cc_to_m01_couplers_ARADDR;
  wire auto_cc_to_m01_couplers_ARREADY;
  wire auto_cc_to_m01_couplers_ARVALID;
  wire [31:0]auto_cc_to_m01_couplers_AWADDR;
  wire auto_cc_to_m01_couplers_AWREADY;
  wire auto_cc_to_m01_couplers_AWVALID;
  wire auto_cc_to_m01_couplers_BREADY;
  wire [1:0]auto_cc_to_m01_couplers_BRESP;
  wire auto_cc_to_m01_couplers_BVALID;
  wire [31:0]auto_cc_to_m01_couplers_RDATA;
  wire auto_cc_to_m01_couplers_RREADY;
  wire [1:0]auto_cc_to_m01_couplers_RRESP;
  wire auto_cc_to_m01_couplers_RVALID;
  wire [31:0]auto_cc_to_m01_couplers_WDATA;
  wire auto_cc_to_m01_couplers_WREADY;
  wire auto_cc_to_m01_couplers_WVALID;
  wire [39:0]m01_couplers_to_auto_cc_ARADDR;
  wire [2:0]m01_couplers_to_auto_cc_ARPROT;
  wire m01_couplers_to_auto_cc_ARREADY;
  wire m01_couplers_to_auto_cc_ARVALID;
  wire [39:0]m01_couplers_to_auto_cc_AWADDR;
  wire [2:0]m01_couplers_to_auto_cc_AWPROT;
  wire m01_couplers_to_auto_cc_AWREADY;
  wire m01_couplers_to_auto_cc_AWVALID;
  wire m01_couplers_to_auto_cc_BREADY;
  wire [1:0]m01_couplers_to_auto_cc_BRESP;
  wire m01_couplers_to_auto_cc_BVALID;
  wire [31:0]m01_couplers_to_auto_cc_RDATA;
  wire m01_couplers_to_auto_cc_RREADY;
  wire [1:0]m01_couplers_to_auto_cc_RRESP;
  wire m01_couplers_to_auto_cc_RVALID;
  wire [31:0]m01_couplers_to_auto_cc_WDATA;
  wire m01_couplers_to_auto_cc_WREADY;
  wire [3:0]m01_couplers_to_auto_cc_WSTRB;
  wire m01_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = auto_cc_to_m01_couplers_ARADDR;
  assign M_AXI_arvalid = auto_cc_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_cc_to_m01_couplers_AWADDR;
  assign M_AXI_awvalid = auto_cc_to_m01_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m01_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_m01_couplers_WDATA;
  assign M_AXI_wvalid = auto_cc_to_m01_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m01_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m01_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m01_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m01_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m01_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m01_couplers_WREADY = M_AXI_wready;
  assign m01_couplers_to_auto_cc_ARADDR = S_AXI_araddr[39:0];
  assign m01_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m01_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[39:0];
  assign m01_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m01_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m01_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m01_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  kr260_tsn_rs485pmod_auto_cc_0 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m01_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arready(auto_cc_to_m01_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_m01_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m01_couplers_AWADDR),
        .m_axi_awready(auto_cc_to_m01_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_m01_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_m01_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m01_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m01_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m01_couplers_RDATA),
        .m_axi_rready(auto_cc_to_m01_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m01_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m01_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m01_couplers_WDATA),
        .m_axi_wready(auto_cc_to_m01_couplers_WREADY),
        .m_axi_wvalid(auto_cc_to_m01_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m01_couplers_to_auto_cc_ARADDR[31:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m01_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m01_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m01_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m01_couplers_to_auto_cc_AWADDR[31:0]),
        .s_axi_awprot(m01_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m01_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m01_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m01_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m01_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m01_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m01_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m01_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m01_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m01_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m01_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m01_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m01_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m01_couplers_to_auto_cc_WVALID));
endmodule

module m02_couplers_imp_JZNL51
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [0:0]S_AXI_wvalid;

  wire [39:0]m02_couplers_to_m02_couplers_ARADDR;
  wire [0:0]m02_couplers_to_m02_couplers_ARREADY;
  wire [0:0]m02_couplers_to_m02_couplers_ARVALID;
  wire [39:0]m02_couplers_to_m02_couplers_AWADDR;
  wire [0:0]m02_couplers_to_m02_couplers_AWREADY;
  wire [0:0]m02_couplers_to_m02_couplers_AWVALID;
  wire [0:0]m02_couplers_to_m02_couplers_BREADY;
  wire [1:0]m02_couplers_to_m02_couplers_BRESP;
  wire [0:0]m02_couplers_to_m02_couplers_BVALID;
  wire [31:0]m02_couplers_to_m02_couplers_RDATA;
  wire [0:0]m02_couplers_to_m02_couplers_RREADY;
  wire [1:0]m02_couplers_to_m02_couplers_RRESP;
  wire [0:0]m02_couplers_to_m02_couplers_RVALID;
  wire [31:0]m02_couplers_to_m02_couplers_WDATA;
  wire [0:0]m02_couplers_to_m02_couplers_WREADY;
  wire [0:0]m02_couplers_to_m02_couplers_WVALID;

  assign M_AXI_araddr[39:0] = m02_couplers_to_m02_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m02_couplers_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = m02_couplers_to_m02_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m02_couplers_to_m02_couplers_AWVALID;
  assign M_AXI_bready[0] = m02_couplers_to_m02_couplers_BREADY;
  assign M_AXI_rready[0] = m02_couplers_to_m02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m02_couplers_to_m02_couplers_WDATA;
  assign M_AXI_wvalid[0] = m02_couplers_to_m02_couplers_WVALID;
  assign S_AXI_arready[0] = m02_couplers_to_m02_couplers_ARREADY;
  assign S_AXI_awready[0] = m02_couplers_to_m02_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m02_couplers_to_m02_couplers_BRESP;
  assign S_AXI_bvalid[0] = m02_couplers_to_m02_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m02_couplers_to_m02_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m02_couplers_to_m02_couplers_RRESP;
  assign S_AXI_rvalid[0] = m02_couplers_to_m02_couplers_RVALID;
  assign S_AXI_wready[0] = m02_couplers_to_m02_couplers_WREADY;
  assign m02_couplers_to_m02_couplers_ARADDR = S_AXI_araddr[39:0];
  assign m02_couplers_to_m02_couplers_ARREADY = M_AXI_arready[0];
  assign m02_couplers_to_m02_couplers_ARVALID = S_AXI_arvalid[0];
  assign m02_couplers_to_m02_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign m02_couplers_to_m02_couplers_AWREADY = M_AXI_awready[0];
  assign m02_couplers_to_m02_couplers_AWVALID = S_AXI_awvalid[0];
  assign m02_couplers_to_m02_couplers_BREADY = S_AXI_bready[0];
  assign m02_couplers_to_m02_couplers_BRESP = M_AXI_bresp[1:0];
  assign m02_couplers_to_m02_couplers_BVALID = M_AXI_bvalid[0];
  assign m02_couplers_to_m02_couplers_RDATA = M_AXI_rdata[31:0];
  assign m02_couplers_to_m02_couplers_RREADY = S_AXI_rready[0];
  assign m02_couplers_to_m02_couplers_RRESP = M_AXI_rresp[1:0];
  assign m02_couplers_to_m02_couplers_RVALID = M_AXI_rvalid[0];
  assign m02_couplers_to_m02_couplers_WDATA = S_AXI_wdata[31:0];
  assign m02_couplers_to_m02_couplers_WREADY = M_AXI_wready[0];
  assign m02_couplers_to_m02_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m03_couplers_imp_BXZKRL
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [39:0]m03_couplers_to_m03_couplers_ARADDR;
  wire [0:0]m03_couplers_to_m03_couplers_ARREADY;
  wire [0:0]m03_couplers_to_m03_couplers_ARVALID;
  wire [39:0]m03_couplers_to_m03_couplers_AWADDR;
  wire [0:0]m03_couplers_to_m03_couplers_AWREADY;
  wire [0:0]m03_couplers_to_m03_couplers_AWVALID;
  wire [0:0]m03_couplers_to_m03_couplers_BREADY;
  wire [1:0]m03_couplers_to_m03_couplers_BRESP;
  wire [0:0]m03_couplers_to_m03_couplers_BVALID;
  wire [31:0]m03_couplers_to_m03_couplers_RDATA;
  wire [0:0]m03_couplers_to_m03_couplers_RREADY;
  wire [1:0]m03_couplers_to_m03_couplers_RRESP;
  wire [0:0]m03_couplers_to_m03_couplers_RVALID;
  wire [31:0]m03_couplers_to_m03_couplers_WDATA;
  wire [0:0]m03_couplers_to_m03_couplers_WREADY;
  wire [3:0]m03_couplers_to_m03_couplers_WSTRB;
  wire [0:0]m03_couplers_to_m03_couplers_WVALID;

  assign M_AXI_araddr[39:0] = m03_couplers_to_m03_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m03_couplers_to_m03_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = m03_couplers_to_m03_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m03_couplers_to_m03_couplers_AWVALID;
  assign M_AXI_bready[0] = m03_couplers_to_m03_couplers_BREADY;
  assign M_AXI_rready[0] = m03_couplers_to_m03_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m03_couplers_to_m03_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m03_couplers_to_m03_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m03_couplers_to_m03_couplers_WVALID;
  assign S_AXI_arready[0] = m03_couplers_to_m03_couplers_ARREADY;
  assign S_AXI_awready[0] = m03_couplers_to_m03_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m03_couplers_to_m03_couplers_BRESP;
  assign S_AXI_bvalid[0] = m03_couplers_to_m03_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m03_couplers_to_m03_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m03_couplers_to_m03_couplers_RRESP;
  assign S_AXI_rvalid[0] = m03_couplers_to_m03_couplers_RVALID;
  assign S_AXI_wready[0] = m03_couplers_to_m03_couplers_WREADY;
  assign m03_couplers_to_m03_couplers_ARADDR = S_AXI_araddr[39:0];
  assign m03_couplers_to_m03_couplers_ARREADY = M_AXI_arready[0];
  assign m03_couplers_to_m03_couplers_ARVALID = S_AXI_arvalid[0];
  assign m03_couplers_to_m03_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign m03_couplers_to_m03_couplers_AWREADY = M_AXI_awready[0];
  assign m03_couplers_to_m03_couplers_AWVALID = S_AXI_awvalid[0];
  assign m03_couplers_to_m03_couplers_BREADY = S_AXI_bready[0];
  assign m03_couplers_to_m03_couplers_BRESP = M_AXI_bresp[1:0];
  assign m03_couplers_to_m03_couplers_BVALID = M_AXI_bvalid[0];
  assign m03_couplers_to_m03_couplers_RDATA = M_AXI_rdata[31:0];
  assign m03_couplers_to_m03_couplers_RREADY = S_AXI_rready[0];
  assign m03_couplers_to_m03_couplers_RRESP = M_AXI_rresp[1:0];
  assign m03_couplers_to_m03_couplers_RVALID = M_AXI_rvalid[0];
  assign m03_couplers_to_m03_couplers_WDATA = S_AXI_wdata[31:0];
  assign m03_couplers_to_m03_couplers_WREADY = M_AXI_wready[0];
  assign m03_couplers_to_m03_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m03_couplers_to_m03_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m04_couplers_imp_1OBP0F0
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [39:0]m04_couplers_to_m04_couplers_ARADDR;
  wire m04_couplers_to_m04_couplers_ARREADY;
  wire m04_couplers_to_m04_couplers_ARVALID;
  wire [39:0]m04_couplers_to_m04_couplers_AWADDR;
  wire m04_couplers_to_m04_couplers_AWREADY;
  wire m04_couplers_to_m04_couplers_AWVALID;
  wire m04_couplers_to_m04_couplers_BREADY;
  wire [1:0]m04_couplers_to_m04_couplers_BRESP;
  wire m04_couplers_to_m04_couplers_BVALID;
  wire [31:0]m04_couplers_to_m04_couplers_RDATA;
  wire m04_couplers_to_m04_couplers_RREADY;
  wire [1:0]m04_couplers_to_m04_couplers_RRESP;
  wire m04_couplers_to_m04_couplers_RVALID;
  wire [31:0]m04_couplers_to_m04_couplers_WDATA;
  wire m04_couplers_to_m04_couplers_WREADY;
  wire [3:0]m04_couplers_to_m04_couplers_WSTRB;
  wire m04_couplers_to_m04_couplers_WVALID;

  assign M_AXI_araddr[39:0] = m04_couplers_to_m04_couplers_ARADDR;
  assign M_AXI_arvalid = m04_couplers_to_m04_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = m04_couplers_to_m04_couplers_AWADDR;
  assign M_AXI_awvalid = m04_couplers_to_m04_couplers_AWVALID;
  assign M_AXI_bready = m04_couplers_to_m04_couplers_BREADY;
  assign M_AXI_rready = m04_couplers_to_m04_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m04_couplers_to_m04_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m04_couplers_to_m04_couplers_WSTRB;
  assign M_AXI_wvalid = m04_couplers_to_m04_couplers_WVALID;
  assign S_AXI_arready = m04_couplers_to_m04_couplers_ARREADY;
  assign S_AXI_awready = m04_couplers_to_m04_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m04_couplers_to_m04_couplers_BRESP;
  assign S_AXI_bvalid = m04_couplers_to_m04_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m04_couplers_to_m04_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m04_couplers_to_m04_couplers_RRESP;
  assign S_AXI_rvalid = m04_couplers_to_m04_couplers_RVALID;
  assign S_AXI_wready = m04_couplers_to_m04_couplers_WREADY;
  assign m04_couplers_to_m04_couplers_ARADDR = S_AXI_araddr[39:0];
  assign m04_couplers_to_m04_couplers_ARREADY = M_AXI_arready;
  assign m04_couplers_to_m04_couplers_ARVALID = S_AXI_arvalid;
  assign m04_couplers_to_m04_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign m04_couplers_to_m04_couplers_AWREADY = M_AXI_awready;
  assign m04_couplers_to_m04_couplers_AWVALID = S_AXI_awvalid;
  assign m04_couplers_to_m04_couplers_BREADY = S_AXI_bready;
  assign m04_couplers_to_m04_couplers_BRESP = M_AXI_bresp[1:0];
  assign m04_couplers_to_m04_couplers_BVALID = M_AXI_bvalid;
  assign m04_couplers_to_m04_couplers_RDATA = M_AXI_rdata[31:0];
  assign m04_couplers_to_m04_couplers_RREADY = S_AXI_rready;
  assign m04_couplers_to_m04_couplers_RRESP = M_AXI_rresp[1:0];
  assign m04_couplers_to_m04_couplers_RVALID = M_AXI_rvalid;
  assign m04_couplers_to_m04_couplers_WDATA = S_AXI_wdata[31:0];
  assign m04_couplers_to_m04_couplers_WREADY = M_AXI_wready;
  assign m04_couplers_to_m04_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m04_couplers_to_m04_couplers_WVALID = S_AXI_wvalid;
endmodule

module m05_couplers_imp_1FQ6WL4
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [39:0]m05_couplers_to_m05_couplers_ARADDR;
  wire [2:0]m05_couplers_to_m05_couplers_ARPROT;
  wire m05_couplers_to_m05_couplers_ARREADY;
  wire m05_couplers_to_m05_couplers_ARVALID;
  wire [39:0]m05_couplers_to_m05_couplers_AWADDR;
  wire [2:0]m05_couplers_to_m05_couplers_AWPROT;
  wire m05_couplers_to_m05_couplers_AWREADY;
  wire m05_couplers_to_m05_couplers_AWVALID;
  wire m05_couplers_to_m05_couplers_BREADY;
  wire [1:0]m05_couplers_to_m05_couplers_BRESP;
  wire m05_couplers_to_m05_couplers_BVALID;
  wire [31:0]m05_couplers_to_m05_couplers_RDATA;
  wire m05_couplers_to_m05_couplers_RREADY;
  wire [1:0]m05_couplers_to_m05_couplers_RRESP;
  wire m05_couplers_to_m05_couplers_RVALID;
  wire [31:0]m05_couplers_to_m05_couplers_WDATA;
  wire m05_couplers_to_m05_couplers_WREADY;
  wire [3:0]m05_couplers_to_m05_couplers_WSTRB;
  wire m05_couplers_to_m05_couplers_WVALID;

  assign M_AXI_araddr[39:0] = m05_couplers_to_m05_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m05_couplers_to_m05_couplers_ARPROT;
  assign M_AXI_arvalid = m05_couplers_to_m05_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = m05_couplers_to_m05_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m05_couplers_to_m05_couplers_AWPROT;
  assign M_AXI_awvalid = m05_couplers_to_m05_couplers_AWVALID;
  assign M_AXI_bready = m05_couplers_to_m05_couplers_BREADY;
  assign M_AXI_rready = m05_couplers_to_m05_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m05_couplers_to_m05_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m05_couplers_to_m05_couplers_WSTRB;
  assign M_AXI_wvalid = m05_couplers_to_m05_couplers_WVALID;
  assign S_AXI_arready = m05_couplers_to_m05_couplers_ARREADY;
  assign S_AXI_awready = m05_couplers_to_m05_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m05_couplers_to_m05_couplers_BRESP;
  assign S_AXI_bvalid = m05_couplers_to_m05_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m05_couplers_to_m05_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m05_couplers_to_m05_couplers_RRESP;
  assign S_AXI_rvalid = m05_couplers_to_m05_couplers_RVALID;
  assign S_AXI_wready = m05_couplers_to_m05_couplers_WREADY;
  assign m05_couplers_to_m05_couplers_ARADDR = S_AXI_araddr[39:0];
  assign m05_couplers_to_m05_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m05_couplers_to_m05_couplers_ARREADY = M_AXI_arready;
  assign m05_couplers_to_m05_couplers_ARVALID = S_AXI_arvalid;
  assign m05_couplers_to_m05_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign m05_couplers_to_m05_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m05_couplers_to_m05_couplers_AWREADY = M_AXI_awready;
  assign m05_couplers_to_m05_couplers_AWVALID = S_AXI_awvalid;
  assign m05_couplers_to_m05_couplers_BREADY = S_AXI_bready;
  assign m05_couplers_to_m05_couplers_BRESP = M_AXI_bresp[1:0];
  assign m05_couplers_to_m05_couplers_BVALID = M_AXI_bvalid;
  assign m05_couplers_to_m05_couplers_RDATA = M_AXI_rdata[31:0];
  assign m05_couplers_to_m05_couplers_RREADY = S_AXI_rready;
  assign m05_couplers_to_m05_couplers_RRESP = M_AXI_rresp[1:0];
  assign m05_couplers_to_m05_couplers_RVALID = M_AXI_rvalid;
  assign m05_couplers_to_m05_couplers_WDATA = S_AXI_wdata[31:0];
  assign m05_couplers_to_m05_couplers_WREADY = M_AXI_wready;
  assign m05_couplers_to_m05_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m05_couplers_to_m05_couplers_WVALID = S_AXI_wvalid;
endmodule

module m06_couplers_imp_8PM4US
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [7:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [7:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [7:0]auto_cc_to_m06_couplers_ARADDR;
  wire auto_cc_to_m06_couplers_ARREADY;
  wire auto_cc_to_m06_couplers_ARVALID;
  wire [7:0]auto_cc_to_m06_couplers_AWADDR;
  wire auto_cc_to_m06_couplers_AWREADY;
  wire auto_cc_to_m06_couplers_AWVALID;
  wire auto_cc_to_m06_couplers_BREADY;
  wire [1:0]auto_cc_to_m06_couplers_BRESP;
  wire auto_cc_to_m06_couplers_BVALID;
  wire [31:0]auto_cc_to_m06_couplers_RDATA;
  wire auto_cc_to_m06_couplers_RREADY;
  wire [1:0]auto_cc_to_m06_couplers_RRESP;
  wire auto_cc_to_m06_couplers_RVALID;
  wire [31:0]auto_cc_to_m06_couplers_WDATA;
  wire auto_cc_to_m06_couplers_WREADY;
  wire [3:0]auto_cc_to_m06_couplers_WSTRB;
  wire auto_cc_to_m06_couplers_WVALID;
  wire [39:0]m06_couplers_to_auto_cc_ARADDR;
  wire [2:0]m06_couplers_to_auto_cc_ARPROT;
  wire m06_couplers_to_auto_cc_ARREADY;
  wire m06_couplers_to_auto_cc_ARVALID;
  wire [39:0]m06_couplers_to_auto_cc_AWADDR;
  wire [2:0]m06_couplers_to_auto_cc_AWPROT;
  wire m06_couplers_to_auto_cc_AWREADY;
  wire m06_couplers_to_auto_cc_AWVALID;
  wire m06_couplers_to_auto_cc_BREADY;
  wire [1:0]m06_couplers_to_auto_cc_BRESP;
  wire m06_couplers_to_auto_cc_BVALID;
  wire [31:0]m06_couplers_to_auto_cc_RDATA;
  wire m06_couplers_to_auto_cc_RREADY;
  wire [1:0]m06_couplers_to_auto_cc_RRESP;
  wire m06_couplers_to_auto_cc_RVALID;
  wire [31:0]m06_couplers_to_auto_cc_WDATA;
  wire m06_couplers_to_auto_cc_WREADY;
  wire [3:0]m06_couplers_to_auto_cc_WSTRB;
  wire m06_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[7:0] = auto_cc_to_m06_couplers_ARADDR;
  assign M_AXI_arvalid = auto_cc_to_m06_couplers_ARVALID;
  assign M_AXI_awaddr[7:0] = auto_cc_to_m06_couplers_AWADDR;
  assign M_AXI_awvalid = auto_cc_to_m06_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m06_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m06_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_m06_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_cc_to_m06_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_m06_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m06_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m06_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m06_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m06_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m06_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m06_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m06_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m06_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m06_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m06_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m06_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m06_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m06_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_m06_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m06_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m06_couplers_WREADY = M_AXI_wready;
  assign m06_couplers_to_auto_cc_ARADDR = S_AXI_araddr[39:0];
  assign m06_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m06_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m06_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[39:0];
  assign m06_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m06_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m06_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m06_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m06_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m06_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m06_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  kr260_tsn_rs485pmod_auto_cc_1 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m06_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arready(auto_cc_to_m06_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_m06_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m06_couplers_AWADDR),
        .m_axi_awready(auto_cc_to_m06_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_m06_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_m06_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m06_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m06_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m06_couplers_RDATA),
        .m_axi_rready(auto_cc_to_m06_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m06_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m06_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m06_couplers_WDATA),
        .m_axi_wready(auto_cc_to_m06_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_m06_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_m06_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m06_couplers_to_auto_cc_ARADDR[7:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m06_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m06_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m06_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m06_couplers_to_auto_cc_AWADDR[7:0]),
        .s_axi_awprot(m06_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m06_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m06_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m06_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m06_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m06_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m06_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m06_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m06_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m06_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m06_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m06_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m06_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m06_couplers_to_auto_cc_WVALID));
endmodule

module rx_b_imp_D3A8TF
   (and_l_v_r,
    tlast,
    tready,
    tvalid);
  output [0:0]and_l_v_r;
  input [0:0]tlast;
  input [0:0]tready;
  input [0:0]tvalid;

  wire [0:0]Op2_1;
  wire [0:0]and_ready_Res;
  wire [0:0]ta_dma_0_m_axis_st_tlast;
  wire [0:0]ta_dma_0_m_axis_st_tvalid;
  wire [0:0]util_vector_logic_0_Res;

  assign Op2_1 = tready[0];
  assign and_l_v_r[0] = and_ready_Res;
  assign ta_dma_0_m_axis_st_tlast = tlast[0];
  assign ta_dma_0_m_axis_st_tvalid = tvalid[0];
  kr260_tsn_rs485pmod_and_last_valid_0 and_last_valid
       (.Op1(ta_dma_0_m_axis_st_tlast),
        .Op2(ta_dma_0_m_axis_st_tvalid),
        .Res(util_vector_logic_0_Res));
  kr260_tsn_rs485pmod_and_ready_0 and_ready
       (.Op1(util_vector_logic_0_Res),
        .Op2(Op2_1),
        .Res(and_ready_Res));
endmodule

module rx_s_imp_1BBNXVK
   (and_l_v_r,
    tlast,
    tready,
    tvalid);
  output [0:0]and_l_v_r;
  input [0:0]tlast;
  input [0:0]tready;
  input [0:0]tvalid;

  wire [0:0]Op2_1;
  wire [0:0]and_ready_Res;
  wire [0:0]ta_dma_0_m_axis_st_tlast;
  wire [0:0]ta_dma_0_m_axis_st_tvalid;
  wire [0:0]util_vector_logic_0_Res;

  assign Op2_1 = tready[0];
  assign and_l_v_r[0] = and_ready_Res;
  assign ta_dma_0_m_axis_st_tlast = tlast[0];
  assign ta_dma_0_m_axis_st_tvalid = tvalid[0];
  kr260_tsn_rs485pmod_and_last_valid_1 and_last_valid
       (.Op1(ta_dma_0_m_axis_st_tlast),
        .Op2(ta_dma_0_m_axis_st_tvalid),
        .Res(util_vector_logic_0_Res));
  kr260_tsn_rs485pmod_and_ready_1 and_ready
       (.Op1(util_vector_logic_0_Res),
        .Op2(Op2_1),
        .Res(and_ready_Res));
endmodule

module s00_couplers_imp_DMAXO3
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [15:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [15:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [15:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [15:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [39:0]auto_pc_to_s00_couplers_ARADDR;
  wire [2:0]auto_pc_to_s00_couplers_ARPROT;
  wire auto_pc_to_s00_couplers_ARREADY;
  wire auto_pc_to_s00_couplers_ARVALID;
  wire [39:0]auto_pc_to_s00_couplers_AWADDR;
  wire [2:0]auto_pc_to_s00_couplers_AWPROT;
  wire auto_pc_to_s00_couplers_AWREADY;
  wire auto_pc_to_s00_couplers_AWVALID;
  wire auto_pc_to_s00_couplers_BREADY;
  wire [1:0]auto_pc_to_s00_couplers_BRESP;
  wire auto_pc_to_s00_couplers_BVALID;
  wire [31:0]auto_pc_to_s00_couplers_RDATA;
  wire auto_pc_to_s00_couplers_RREADY;
  wire [1:0]auto_pc_to_s00_couplers_RRESP;
  wire auto_pc_to_s00_couplers_RVALID;
  wire [31:0]auto_pc_to_s00_couplers_WDATA;
  wire auto_pc_to_s00_couplers_WREADY;
  wire [3:0]auto_pc_to_s00_couplers_WSTRB;
  wire auto_pc_to_s00_couplers_WVALID;
  wire [39:0]s00_couplers_to_auto_pc_ARADDR;
  wire [1:0]s00_couplers_to_auto_pc_ARBURST;
  wire [3:0]s00_couplers_to_auto_pc_ARCACHE;
  wire [15:0]s00_couplers_to_auto_pc_ARID;
  wire [7:0]s00_couplers_to_auto_pc_ARLEN;
  wire [0:0]s00_couplers_to_auto_pc_ARLOCK;
  wire [2:0]s00_couplers_to_auto_pc_ARPROT;
  wire [3:0]s00_couplers_to_auto_pc_ARQOS;
  wire s00_couplers_to_auto_pc_ARREADY;
  wire [2:0]s00_couplers_to_auto_pc_ARSIZE;
  wire s00_couplers_to_auto_pc_ARVALID;
  wire [39:0]s00_couplers_to_auto_pc_AWADDR;
  wire [1:0]s00_couplers_to_auto_pc_AWBURST;
  wire [3:0]s00_couplers_to_auto_pc_AWCACHE;
  wire [15:0]s00_couplers_to_auto_pc_AWID;
  wire [7:0]s00_couplers_to_auto_pc_AWLEN;
  wire [0:0]s00_couplers_to_auto_pc_AWLOCK;
  wire [2:0]s00_couplers_to_auto_pc_AWPROT;
  wire [3:0]s00_couplers_to_auto_pc_AWQOS;
  wire s00_couplers_to_auto_pc_AWREADY;
  wire [2:0]s00_couplers_to_auto_pc_AWSIZE;
  wire s00_couplers_to_auto_pc_AWVALID;
  wire [15:0]s00_couplers_to_auto_pc_BID;
  wire s00_couplers_to_auto_pc_BREADY;
  wire [1:0]s00_couplers_to_auto_pc_BRESP;
  wire s00_couplers_to_auto_pc_BVALID;
  wire [31:0]s00_couplers_to_auto_pc_RDATA;
  wire [15:0]s00_couplers_to_auto_pc_RID;
  wire s00_couplers_to_auto_pc_RLAST;
  wire s00_couplers_to_auto_pc_RREADY;
  wire [1:0]s00_couplers_to_auto_pc_RRESP;
  wire s00_couplers_to_auto_pc_RVALID;
  wire [31:0]s00_couplers_to_auto_pc_WDATA;
  wire s00_couplers_to_auto_pc_WLAST;
  wire s00_couplers_to_auto_pc_WREADY;
  wire [3:0]s00_couplers_to_auto_pc_WSTRB;
  wire s00_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[39:0] = auto_pc_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_pc_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid = auto_pc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = auto_pc_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_pc_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid = auto_pc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[15:0] = s00_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[15:0] = s00_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = s00_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_pc_ARADDR = S_AXI_araddr[39:0];
  assign s00_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_pc_ARID = S_AXI_arid[15:0];
  assign s00_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign s00_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[39:0];
  assign s00_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_pc_AWID = S_AXI_awid[15:0];
  assign s00_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign s00_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  kr260_tsn_rs485pmod_auto_pc_0 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_s00_couplers_ARADDR),
        .m_axi_arprot(auto_pc_to_s00_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_s00_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_s00_couplers_AWADDR),
        .m_axi_awprot(auto_pc_to_s00_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_s00_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_s00_couplers_RDATA),
        .m_axi_rready(auto_pc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_s00_couplers_WDATA),
        .m_axi_wready(auto_pc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_s00_couplers_WVALID),
        .s_axi_araddr(s00_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(s00_couplers_to_auto_pc_ARID),
        .s_axi_arlen(s00_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(s00_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(s00_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(s00_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s00_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(s00_couplers_to_auto_pc_AWID),
        .s_axi_awlen(s00_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(s00_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(s00_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(s00_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s00_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(s00_couplers_to_auto_pc_BID),
        .s_axi_bready(s00_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_pc_RDATA),
        .s_axi_rid(s00_couplers_to_auto_pc_RID),
        .s_axi_rlast(s00_couplers_to_auto_pc_RLAST),
        .s_axi_rready(s00_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(s00_couplers_to_auto_pc_WLAST),
        .s_axi_wready(s00_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_pc_WVALID));
endmodule

module tx_b_imp_1I2QT7D
   (and_l_v_r,
    tlast,
    tready,
    tvalid);
  output [0:0]and_l_v_r;
  input [0:0]tlast;
  input [0:0]tready;
  input [0:0]tvalid;

  wire [0:0]Op2_1;
  wire [0:0]and_ready_Res;
  wire [0:0]ta_dma_0_m_axis_st_tlast;
  wire [0:0]ta_dma_0_m_axis_st_tvalid;
  wire [0:0]util_vector_logic_0_Res;

  assign Op2_1 = tready[0];
  assign and_l_v_r[0] = and_ready_Res;
  assign ta_dma_0_m_axis_st_tlast = tlast[0];
  assign ta_dma_0_m_axis_st_tvalid = tvalid[0];
  kr260_tsn_rs485pmod_and_last_valid_2 and_last_valid
       (.Op1(ta_dma_0_m_axis_st_tlast),
        .Op2(ta_dma_0_m_axis_st_tvalid),
        .Res(util_vector_logic_0_Res));
  kr260_tsn_rs485pmod_and_ready_2 and_ready
       (.Op1(util_vector_logic_0_Res),
        .Op2(Op2_1),
        .Res(and_ready_Res));
endmodule

module tx_s_imp_JRWMD6
   (and_l_v_r,
    tlast,
    tready,
    tvalid);
  output [0:0]and_l_v_r;
  input [0:0]tlast;
  input [0:0]tready;
  input [0:0]tvalid;

  wire [0:0]Op2_1;
  wire [0:0]and_ready_Res;
  wire [0:0]ta_dma_0_m_axis_st_tlast;
  wire [0:0]ta_dma_0_m_axis_st_tvalid;
  wire [0:0]util_vector_logic_0_Res;

  assign Op2_1 = tready[0];
  assign and_l_v_r[0] = and_ready_Res;
  assign ta_dma_0_m_axis_st_tlast = tlast[0];
  assign ta_dma_0_m_axis_st_tvalid = tvalid[0];
  kr260_tsn_rs485pmod_and_last_valid_3 and_last_valid
       (.Op1(ta_dma_0_m_axis_st_tlast),
        .Op2(ta_dma_0_m_axis_st_tvalid),
        .Res(util_vector_logic_0_Res));
  kr260_tsn_rs485pmod_and_ready_3 and_ready
       (.Op1(util_vector_logic_0_Res),
        .Op2(Op2_1),
        .Res(and_ready_Res));
endmodule
