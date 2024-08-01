//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
//Date        : Tue Apr  9 20:15:19 2024
//Host        : N running 64-bit openSUSE Tumbleweed
//Command     : generate_target kr260_tsn_rs485pmod_wrapper.bd
//Design      : kr260_tsn_rs485pmod_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module kr260_tsn_rs485pmod_wrapper
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
  input CLK_IN_gem;
  output [1:0]Phy_reset_n;
  input UART_0_rxd;
  output UART_0_rxen;
  output UART_0_txd;
  output UART_0_txen;
  output [0:0]fan_en_b;
  output l1_rxs;
  output l2_rxb;
  output l3_rxx;
  inout mdio2_io;
  output mdio2_mdc;
  inout mdio_io;
  output mdio_mdc;
  output p1_txs;
  output p2_txb;
  output p3_txx;
  output ptp_timer;
  input [3:0]rgmii2_rd;
  input rgmii2_rx_ctl;
  input rgmii2_rxc;
  output [3:0]rgmii2_td;
  output rgmii2_tx_ctl;
  output rgmii2_txc;
  input [3:0]rgmii_rd;
  input rgmii_rx_ctl;
  input rgmii_rxc;
  output [3:0]rgmii_td;
  output rgmii_tx_ctl;
  output rgmii_txc;

  wire CLK_IN_gem;
  wire [1:0]Phy_reset_n;
  wire UART_0_rxd;
  wire UART_0_rxen;
  wire UART_0_txd;
  wire UART_0_txen;
  wire [0:0]fan_en_b;
  wire l1_rxs;
  wire l2_rxb;
  wire l3_rxx;
  wire mdio2_io;
  wire mdio2_mdc;
  wire mdio_io;
  wire mdio_mdc;
  wire p1_txs;
  wire p2_txb;
  wire p3_txx;
  wire ptp_timer;
  wire [3:0]rgmii2_rd;
  wire rgmii2_rx_ctl;
  wire rgmii2_rxc;
  wire [3:0]rgmii2_td;
  wire rgmii2_tx_ctl;
  wire rgmii2_txc;
  wire [3:0]rgmii_rd;
  wire rgmii_rx_ctl;
  wire rgmii_rxc;
  wire [3:0]rgmii_td;
  wire rgmii_tx_ctl;
  wire rgmii_txc;

  kr260_tsn_rs485pmod kr260_tsn_rs485pmod_i
       (.CLK_IN_gem(CLK_IN_gem),
        .Phy_reset_n(Phy_reset_n),
        .UART_0_rxd(UART_0_rxd),
        .UART_0_rxen(UART_0_rxen),
        .UART_0_txd(UART_0_txd),
        .UART_0_txen(UART_0_txen),
        .fan_en_b(fan_en_b),
        .l1_rxs(l1_rxs),
        .l2_rxb(l2_rxb),
        .l3_rxx(l3_rxx),
        .mdio2_io(mdio2_io),
        .mdio2_mdc(mdio2_mdc),
        .mdio_io(mdio_io),
        .mdio_mdc(mdio_mdc),
        .p1_txs(p1_txs),
        .p2_txb(p2_txb),
        .p3_txx(p3_txx),
        .ptp_timer(ptp_timer),
        .rgmii2_rd(rgmii2_rd),
        .rgmii2_rx_ctl(rgmii2_rx_ctl),
        .rgmii2_rxc(rgmii2_rxc),
        .rgmii2_td(rgmii2_td),
        .rgmii2_tx_ctl(rgmii2_tx_ctl),
        .rgmii2_txc(rgmii2_txc),
        .rgmii_rd(rgmii_rd),
        .rgmii_rx_ctl(rgmii_rx_ctl),
        .rgmii_rxc(rgmii_rxc),
        .rgmii_td(rgmii_td),
        .rgmii_tx_ctl(rgmii_tx_ctl),
        .rgmii_txc(rgmii_txc));
endmodule
