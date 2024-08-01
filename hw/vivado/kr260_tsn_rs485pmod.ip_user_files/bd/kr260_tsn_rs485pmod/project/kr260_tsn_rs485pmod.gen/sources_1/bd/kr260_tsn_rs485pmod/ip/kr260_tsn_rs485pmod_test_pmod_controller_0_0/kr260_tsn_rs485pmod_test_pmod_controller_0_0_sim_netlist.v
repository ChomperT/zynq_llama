// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Sat Jul 27 11:18:53 2024
// Host        : N running 64-bit Ubuntu 24.04 LTS
// Command     : write_verilog -force -mode funcsim
//               /media/p4/Xilinx/kria-vitis-platforms/kr260/platforms/vivado/kr260_tsn_rs485pmod/project/kr260_tsn_rs485pmod.gen/sources_1/bd/kr260_tsn_rs485pmod/ip/kr260_tsn_rs485pmod_test_pmod_controller_0_0/kr260_tsn_rs485pmod_test_pmod_controller_0_0_sim_netlist.v
// Design      : kr260_tsn_rs485pmod_test_pmod_controller_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "kr260_tsn_rs485pmod_test_pmod_controller_0_0,test_pmod_controller,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "test_pmod_controller,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module kr260_tsn_rs485pmod_test_pmod_controller_0_0
   (pub1_txs,
    lis1_rxs,
    pub2_txb,
    lis2_rxb,
    pub3_txx,
    lis3_rxx,
    in_tx_s,
    in_rx_s,
    in_tx_b,
    in_rx_b,
    in_tx_x,
    in_rx_x,
    s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready);
  output pub1_txs;
  output lis1_rxs;
  output pub2_txb;
  output lis2_rxb;
  output pub3_txx;
  output lis3_rxx;
  input in_tx_s;
  input in_rx_s;
  input in_tx_b;
  input in_rx_b;
  input in_tx_x;
  input in_rx_x;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN kr260_tsn_rs485pmod_clk_wiz_0_0_clk_out1, INSERT_VIP 0" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [4:0]s00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [4:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 6, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN kr260_tsn_rs485pmod_clk_wiz_0_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s00_axi_rready;

  wire \<const0> ;
  wire in_rx_b;
  wire in_rx_s;
  wire in_rx_x;
  wire in_tx_b;
  wire in_tx_s;
  wire in_tx_x;
  wire lis1_rxs;
  wire lis2_rxb;
  wire lis3_rxx;
  wire pub1_txs;
  wire pub2_txb;
  wire pub3_txx;
  wire s00_axi_aclk;
  wire [4:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [4:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  kr260_tsn_rs485pmod_test_pmod_controller_0_0_test_pmod_controller inst
       (.in_rx_b(in_rx_b),
        .in_rx_s(in_rx_s),
        .in_rx_x(in_rx_x),
        .in_tx_b(in_tx_b),
        .in_tx_s(in_tx_s),
        .in_tx_x(in_tx_x),
        .lis1_rxs(lis1_rxs),
        .lis2_rxb(lis2_rxb),
        .lis3_rxx(lis3_rxx),
        .pub1_txs(pub1_txs),
        .pub2_txb(pub2_txb),
        .pub3_txx(pub3_txx),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[4:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[4:2]),
        .s00_axi_awready(s00_axi_awready),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "reg_interface_v1_0_S00_AXI" *) 
module kr260_tsn_rs485pmod_test_pmod_controller_0_0_reg_interface_v1_0_S00_AXI
   (axi_wready_reg_0,
    SR,
    axi_awready_reg_0,
    axi_arready_reg_0,
    s00_axi_bvalid,
    s00_axi_rvalid,
    pub1_txs,
    lis1_rxs,
    pub2_txb,
    lis2_rxb,
    pub3_txx,
    lis3_rxx,
    E,
    send_r2_reg,
    send_r3_reg,
    send_r4_reg,
    send_r5_reg,
    send_r6_reg,
    \i1_reg[3] ,
    \i2_reg[3] ,
    \i3_reg[3] ,
    \i4_reg[3] ,
    \i5_reg[3] ,
    \i6_reg[3] ,
    slv_reg1_valid_reg_0,
    slv_reg2_valid_reg_0,
    slv_reg3_valid_reg_0,
    slv_reg4_valid_reg_0,
    slv_reg5_valid_reg_0,
    slv_reg6_valid_reg_0,
    s00_axi_rdata,
    s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_wstrb,
    in_tx_s,
    r1,
    in_rx_s,
    r2,
    in_tx_b,
    r3,
    in_rx_b,
    r4,
    in_tx_x,
    r5,
    in_rx_x,
    r6,
    Q,
    r2_reg,
    r3_reg,
    r4_reg,
    r5_reg,
    r6_reg,
    r10__0,
    r1_reg,
    r1_reg_0,
    r20__0,
    r2_reg_0,
    r30__0,
    r3_reg_0,
    r40__0,
    r4_reg_0,
    r50__0,
    r5_reg_0,
    r60__0,
    r6_reg_0,
    s00_axi_bready,
    s00_axi_arvalid,
    s00_axi_rready,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_araddr);
  output axi_wready_reg_0;
  output [0:0]SR;
  output axi_awready_reg_0;
  output axi_arready_reg_0;
  output s00_axi_bvalid;
  output s00_axi_rvalid;
  output pub1_txs;
  output lis1_rxs;
  output pub2_txb;
  output lis2_rxb;
  output pub3_txx;
  output lis3_rxx;
  output [0:0]E;
  output [0:0]send_r2_reg;
  output [0:0]send_r3_reg;
  output [0:0]send_r4_reg;
  output [0:0]send_r5_reg;
  output [0:0]send_r6_reg;
  output \i1_reg[3] ;
  output \i2_reg[3] ;
  output \i3_reg[3] ;
  output \i4_reg[3] ;
  output \i5_reg[3] ;
  output \i6_reg[3] ;
  output slv_reg1_valid_reg_0;
  output slv_reg2_valid_reg_0;
  output slv_reg3_valid_reg_0;
  output slv_reg4_valid_reg_0;
  output slv_reg5_valid_reg_0;
  output slv_reg6_valid_reg_0;
  output [31:0]s00_axi_rdata;
  input s00_axi_aclk;
  input s00_axi_aresetn;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input [3:0]s00_axi_wstrb;
  input in_tx_s;
  input r1;
  input in_rx_s;
  input r2;
  input in_tx_b;
  input r3;
  input in_rx_b;
  input r4;
  input in_tx_x;
  input r5;
  input in_rx_x;
  input r6;
  input [3:0]Q;
  input [3:0]r2_reg;
  input [3:0]r3_reg;
  input [3:0]r4_reg;
  input [3:0]r5_reg;
  input [3:0]r6_reg;
  input r10__0;
  input r1_reg;
  input r1_reg_0;
  input r20__0;
  input r2_reg_0;
  input r30__0;
  input r3_reg_0;
  input r40__0;
  input r4_reg_0;
  input r50__0;
  input r5_reg_0;
  input r60__0;
  input r6_reg_0;
  input s00_axi_bready;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input [2:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input [2:0]s00_axi_araddr;

  wire [0:0]E;
  wire [3:0]Q;
  wire [0:0]SR;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire axi_arready0;
  wire axi_arready_reg_0;
  wire axi_awready0;
  wire axi_awready_reg_0;
  wire axi_bvalid_i_1_n_0;
  wire \axi_rdata[0]_i_2_n_0 ;
  wire \axi_rdata[0]_i_3_n_0 ;
  wire \axi_rdata[10]_i_2_n_0 ;
  wire \axi_rdata[10]_i_3_n_0 ;
  wire \axi_rdata[11]_i_2_n_0 ;
  wire \axi_rdata[11]_i_3_n_0 ;
  wire \axi_rdata[12]_i_2_n_0 ;
  wire \axi_rdata[12]_i_3_n_0 ;
  wire \axi_rdata[13]_i_2_n_0 ;
  wire \axi_rdata[13]_i_3_n_0 ;
  wire \axi_rdata[14]_i_2_n_0 ;
  wire \axi_rdata[14]_i_3_n_0 ;
  wire \axi_rdata[15]_i_2_n_0 ;
  wire \axi_rdata[15]_i_3_n_0 ;
  wire \axi_rdata[16]_i_2_n_0 ;
  wire \axi_rdata[16]_i_3_n_0 ;
  wire \axi_rdata[17]_i_2_n_0 ;
  wire \axi_rdata[17]_i_3_n_0 ;
  wire \axi_rdata[18]_i_2_n_0 ;
  wire \axi_rdata[18]_i_3_n_0 ;
  wire \axi_rdata[19]_i_2_n_0 ;
  wire \axi_rdata[19]_i_3_n_0 ;
  wire \axi_rdata[1]_i_2_n_0 ;
  wire \axi_rdata[1]_i_3_n_0 ;
  wire \axi_rdata[20]_i_2_n_0 ;
  wire \axi_rdata[20]_i_3_n_0 ;
  wire \axi_rdata[21]_i_2_n_0 ;
  wire \axi_rdata[21]_i_3_n_0 ;
  wire \axi_rdata[22]_i_2_n_0 ;
  wire \axi_rdata[22]_i_3_n_0 ;
  wire \axi_rdata[23]_i_2_n_0 ;
  wire \axi_rdata[23]_i_3_n_0 ;
  wire \axi_rdata[24]_i_2_n_0 ;
  wire \axi_rdata[24]_i_3_n_0 ;
  wire \axi_rdata[25]_i_2_n_0 ;
  wire \axi_rdata[25]_i_3_n_0 ;
  wire \axi_rdata[26]_i_2_n_0 ;
  wire \axi_rdata[26]_i_3_n_0 ;
  wire \axi_rdata[27]_i_2_n_0 ;
  wire \axi_rdata[27]_i_3_n_0 ;
  wire \axi_rdata[28]_i_2_n_0 ;
  wire \axi_rdata[28]_i_3_n_0 ;
  wire \axi_rdata[29]_i_2_n_0 ;
  wire \axi_rdata[29]_i_3_n_0 ;
  wire \axi_rdata[2]_i_2_n_0 ;
  wire \axi_rdata[2]_i_3_n_0 ;
  wire \axi_rdata[30]_i_2_n_0 ;
  wire \axi_rdata[30]_i_3_n_0 ;
  wire \axi_rdata[31]_i_2_n_0 ;
  wire \axi_rdata[31]_i_3_n_0 ;
  wire \axi_rdata[3]_i_2_n_0 ;
  wire \axi_rdata[3]_i_3_n_0 ;
  wire \axi_rdata[4]_i_2_n_0 ;
  wire \axi_rdata[4]_i_3_n_0 ;
  wire \axi_rdata[5]_i_2_n_0 ;
  wire \axi_rdata[5]_i_3_n_0 ;
  wire \axi_rdata[6]_i_2_n_0 ;
  wire \axi_rdata[6]_i_3_n_0 ;
  wire \axi_rdata[7]_i_2_n_0 ;
  wire \axi_rdata[7]_i_3_n_0 ;
  wire \axi_rdata[8]_i_2_n_0 ;
  wire \axi_rdata[8]_i_3_n_0 ;
  wire \axi_rdata[9]_i_2_n_0 ;
  wire \axi_rdata[9]_i_3_n_0 ;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire axi_wready_reg_0;
  wire \i1_reg[3] ;
  wire \i2_reg[3] ;
  wire \i3_reg[3] ;
  wire \i4_reg[3] ;
  wire \i5_reg[3] ;
  wire \i6_reg[3] ;
  wire in_rx_b;
  wire in_rx_s;
  wire in_rx_x;
  wire in_tx_b;
  wire in_tx_s;
  wire in_tx_x;
  wire lis1_rxs;
  wire lis2_rxb;
  wire lis3_rxx;
  wire [2:0]p_0_in;
  wire [31:0]p_1_in;
  wire pub1_txs;
  wire pub2_txb;
  wire pub3_txx;
  wire r1;
  wire r10__0;
  wire r1_i_4_n_0;
  wire r1_i_5_n_0;
  wire r1_i_6_n_0;
  wire r1_i_7_n_0;
  wire r1_reg;
  wire r1_reg_0;
  wire r1_reg_i_2_n_0;
  wire r1_reg_i_3_n_0;
  wire r2;
  wire r20__0;
  wire r2_i_4_n_0;
  wire r2_i_5_n_0;
  wire r2_i_6_n_0;
  wire r2_i_7_n_0;
  wire [3:0]r2_reg;
  wire r2_reg_0;
  wire r2_reg_i_2_n_0;
  wire r2_reg_i_3_n_0;
  wire r3;
  wire r30__0;
  wire r3_i_4_n_0;
  wire r3_i_5_n_0;
  wire r3_i_6_n_0;
  wire r3_i_7_n_0;
  wire [3:0]r3_reg;
  wire r3_reg_0;
  wire r3_reg_i_2_n_0;
  wire r3_reg_i_3_n_0;
  wire r4;
  wire r40__0;
  wire r4_i_4_n_0;
  wire r4_i_5_n_0;
  wire r4_i_6_n_0;
  wire r4_i_7_n_0;
  wire [3:0]r4_reg;
  wire r4_reg_0;
  wire r4_reg_i_2_n_0;
  wire r4_reg_i_3_n_0;
  wire r5;
  wire r50__0;
  wire r5_i_4_n_0;
  wire r5_i_5_n_0;
  wire r5_i_6_n_0;
  wire r5_i_7_n_0;
  wire [3:0]r5_reg;
  wire r5_reg_0;
  wire r5_reg_i_2_n_0;
  wire r5_reg_i_3_n_0;
  wire r6;
  wire r60__0;
  wire r6_i_4_n_0;
  wire r6_i_5_n_0;
  wire r6_i_6_n_0;
  wire r6_i_7_n_0;
  wire [3:0]r6_reg;
  wire r6_reg_0;
  wire r6_reg_i_2_n_0;
  wire r6_reg_i_3_n_0;
  wire [31:0]reg_data_out;
  wire s00_axi_aclk;
  wire [2:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [2:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [2:0]sel0;
  wire [0:0]send_r2_reg;
  wire [0:0]send_r3_reg;
  wire [0:0]send_r4_reg;
  wire [0:0]send_r5_reg;
  wire [0:0]send_r6_reg;
  wire slv_reg0;
  wire \slv_reg0_reg_n_0_[10] ;
  wire \slv_reg0_reg_n_0_[11] ;
  wire \slv_reg0_reg_n_0_[12] ;
  wire \slv_reg0_reg_n_0_[13] ;
  wire \slv_reg0_reg_n_0_[14] ;
  wire \slv_reg0_reg_n_0_[15] ;
  wire \slv_reg0_reg_n_0_[16] ;
  wire \slv_reg0_reg_n_0_[17] ;
  wire \slv_reg0_reg_n_0_[18] ;
  wire \slv_reg0_reg_n_0_[19] ;
  wire \slv_reg0_reg_n_0_[1] ;
  wire \slv_reg0_reg_n_0_[20] ;
  wire \slv_reg0_reg_n_0_[21] ;
  wire \slv_reg0_reg_n_0_[22] ;
  wire \slv_reg0_reg_n_0_[23] ;
  wire \slv_reg0_reg_n_0_[24] ;
  wire \slv_reg0_reg_n_0_[25] ;
  wire \slv_reg0_reg_n_0_[26] ;
  wire \slv_reg0_reg_n_0_[27] ;
  wire \slv_reg0_reg_n_0_[28] ;
  wire \slv_reg0_reg_n_0_[29] ;
  wire \slv_reg0_reg_n_0_[2] ;
  wire \slv_reg0_reg_n_0_[30] ;
  wire \slv_reg0_reg_n_0_[31] ;
  wire \slv_reg0_reg_n_0_[3] ;
  wire \slv_reg0_reg_n_0_[4] ;
  wire \slv_reg0_reg_n_0_[5] ;
  wire \slv_reg0_reg_n_0_[6] ;
  wire \slv_reg0_reg_n_0_[7] ;
  wire \slv_reg0_reg_n_0_[8] ;
  wire \slv_reg0_reg_n_0_[9] ;
  wire [31:0]slv_reg1;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire slv_reg1_valid_i_1_n_0;
  wire slv_reg1_valid_i_2_n_0;
  wire slv_reg1_valid_reg_0;
  wire slv_reg1_vld;
  wire [31:0]slv_reg2;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire slv_reg2_valid_i_1_n_0;
  wire slv_reg2_valid_reg_0;
  wire slv_reg2_vld;
  wire [31:0]slv_reg3;
  wire \slv_reg3[15]_i_1_n_0 ;
  wire \slv_reg3[23]_i_1_n_0 ;
  wire \slv_reg3[31]_i_1_n_0 ;
  wire \slv_reg3[7]_i_1_n_0 ;
  wire slv_reg3_valid_i_1_n_0;
  wire slv_reg3_valid_reg_0;
  wire slv_reg3_vld;
  wire [31:0]slv_reg4;
  wire \slv_reg4[15]_i_1_n_0 ;
  wire \slv_reg4[23]_i_1_n_0 ;
  wire \slv_reg4[31]_i_1_n_0 ;
  wire \slv_reg4[7]_i_1_n_0 ;
  wire slv_reg4_valid_i_1_n_0;
  wire slv_reg4_valid_reg_0;
  wire slv_reg4_vld;
  wire [31:0]slv_reg5;
  wire \slv_reg5[15]_i_1_n_0 ;
  wire \slv_reg5[23]_i_1_n_0 ;
  wire \slv_reg5[31]_i_1_n_0 ;
  wire \slv_reg5[7]_i_1_n_0 ;
  wire slv_reg5_valid_i_1_n_0;
  wire slv_reg5_valid_reg_0;
  wire slv_reg5_vld;
  wire [31:0]slv_reg6;
  wire \slv_reg6[15]_i_1_n_0 ;
  wire \slv_reg6[23]_i_1_n_0 ;
  wire \slv_reg6[31]_i_1_n_0 ;
  wire \slv_reg6[7]_i_1_n_0 ;
  wire slv_reg6_valid_i_1_n_0;
  wire slv_reg6_valid_reg_0;
  wire slv_reg6_vld;
  wire slv_reg_rden__0;
  wire slv_reg_wren__0;

  LUT6 #(
    .INIT(64'hF7FFC4CCC4CCC4CC)) 
    aw_en_i_1
       (.I0(s00_axi_awvalid),
        .I1(aw_en_reg_n_0),
        .I2(axi_awready_reg_0),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(SR));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[0]),
        .Q(sel0[0]),
        .R(SR));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[1]),
        .Q(sel0[1]),
        .R(SR));
  FDRE \axi_araddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[2]),
        .Q(sel0[2]),
        .R(SR));
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(axi_arready_reg_0),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(axi_arready_reg_0),
        .R(SR));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[0]),
        .Q(p_0_in[0]),
        .R(SR));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[1]),
        .Q(p_0_in[1]),
        .R(SR));
  FDRE \axi_awaddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[2]),
        .Q(p_0_in[2]),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(SR));
  LUT4 #(
    .INIT(16'h2000)) 
    axi_awready_i_2
       (.I0(s00_axi_wvalid),
        .I1(axi_awready_reg_0),
        .I2(aw_en_reg_n_0),
        .I3(s00_axi_awvalid),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(axi_awready_reg_0),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(axi_awready_reg_0),
        .I3(axi_wready_reg_0),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(SR));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_2 
       (.I0(slv_reg3[0]),
        .I1(slv_reg2[0]),
        .I2(sel0[1]),
        .I3(slv_reg1[0]),
        .I4(sel0[0]),
        .I5(slv_reg0),
        .O(\axi_rdata[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[0]_i_3 
       (.I0(slv_reg6[0]),
        .I1(sel0[1]),
        .I2(slv_reg5[0]),
        .I3(sel0[0]),
        .I4(slv_reg4[0]),
        .O(\axi_rdata[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_2 
       (.I0(slv_reg3[10]),
        .I1(slv_reg2[10]),
        .I2(sel0[1]),
        .I3(slv_reg1[10]),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[10] ),
        .O(\axi_rdata[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[10]_i_3 
       (.I0(slv_reg6[10]),
        .I1(sel0[1]),
        .I2(slv_reg5[10]),
        .I3(sel0[0]),
        .I4(slv_reg4[10]),
        .O(\axi_rdata[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_2 
       (.I0(slv_reg3[11]),
        .I1(slv_reg2[11]),
        .I2(sel0[1]),
        .I3(slv_reg1[11]),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[11] ),
        .O(\axi_rdata[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[11]_i_3 
       (.I0(slv_reg6[11]),
        .I1(sel0[1]),
        .I2(slv_reg5[11]),
        .I3(sel0[0]),
        .I4(slv_reg4[11]),
        .O(\axi_rdata[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_2 
       (.I0(slv_reg3[12]),
        .I1(slv_reg2[12]),
        .I2(sel0[1]),
        .I3(slv_reg1[12]),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[12] ),
        .O(\axi_rdata[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[12]_i_3 
       (.I0(slv_reg6[12]),
        .I1(sel0[1]),
        .I2(slv_reg5[12]),
        .I3(sel0[0]),
        .I4(slv_reg4[12]),
        .O(\axi_rdata[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_2 
       (.I0(slv_reg3[13]),
        .I1(slv_reg2[13]),
        .I2(sel0[1]),
        .I3(slv_reg1[13]),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[13] ),
        .O(\axi_rdata[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[13]_i_3 
       (.I0(slv_reg6[13]),
        .I1(sel0[1]),
        .I2(slv_reg5[13]),
        .I3(sel0[0]),
        .I4(slv_reg4[13]),
        .O(\axi_rdata[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_2 
       (.I0(slv_reg3[14]),
        .I1(slv_reg2[14]),
        .I2(sel0[1]),
        .I3(slv_reg1[14]),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[14] ),
        .O(\axi_rdata[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[14]_i_3 
       (.I0(slv_reg6[14]),
        .I1(sel0[1]),
        .I2(slv_reg5[14]),
        .I3(sel0[0]),
        .I4(slv_reg4[14]),
        .O(\axi_rdata[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_2 
       (.I0(slv_reg3[15]),
        .I1(slv_reg2[15]),
        .I2(sel0[1]),
        .I3(slv_reg1[15]),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[15] ),
        .O(\axi_rdata[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[15]_i_3 
       (.I0(slv_reg6[15]),
        .I1(sel0[1]),
        .I2(slv_reg5[15]),
        .I3(sel0[0]),
        .I4(slv_reg4[15]),
        .O(\axi_rdata[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_2 
       (.I0(slv_reg3[16]),
        .I1(slv_reg2[16]),
        .I2(sel0[1]),
        .I3(slv_reg1[16]),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[16] ),
        .O(\axi_rdata[16]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[16]_i_3 
       (.I0(slv_reg6[16]),
        .I1(sel0[1]),
        .I2(slv_reg5[16]),
        .I3(sel0[0]),
        .I4(slv_reg4[16]),
        .O(\axi_rdata[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_2 
       (.I0(slv_reg3[17]),
        .I1(slv_reg2[17]),
        .I2(sel0[1]),
        .I3(slv_reg1[17]),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[17] ),
        .O(\axi_rdata[17]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[17]_i_3 
       (.I0(slv_reg6[17]),
        .I1(sel0[1]),
        .I2(slv_reg5[17]),
        .I3(sel0[0]),
        .I4(slv_reg4[17]),
        .O(\axi_rdata[17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_2 
       (.I0(slv_reg3[18]),
        .I1(slv_reg2[18]),
        .I2(sel0[1]),
        .I3(slv_reg1[18]),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[18] ),
        .O(\axi_rdata[18]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[18]_i_3 
       (.I0(slv_reg6[18]),
        .I1(sel0[1]),
        .I2(slv_reg5[18]),
        .I3(sel0[0]),
        .I4(slv_reg4[18]),
        .O(\axi_rdata[18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_2 
       (.I0(slv_reg3[19]),
        .I1(slv_reg2[19]),
        .I2(sel0[1]),
        .I3(slv_reg1[19]),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[19] ),
        .O(\axi_rdata[19]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[19]_i_3 
       (.I0(slv_reg6[19]),
        .I1(sel0[1]),
        .I2(slv_reg5[19]),
        .I3(sel0[0]),
        .I4(slv_reg4[19]),
        .O(\axi_rdata[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_2 
       (.I0(slv_reg3[1]),
        .I1(slv_reg2[1]),
        .I2(sel0[1]),
        .I3(slv_reg1[1]),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[1] ),
        .O(\axi_rdata[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[1]_i_3 
       (.I0(slv_reg6[1]),
        .I1(sel0[1]),
        .I2(slv_reg5[1]),
        .I3(sel0[0]),
        .I4(slv_reg4[1]),
        .O(\axi_rdata[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_2 
       (.I0(slv_reg3[20]),
        .I1(slv_reg2[20]),
        .I2(sel0[1]),
        .I3(slv_reg1[20]),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[20] ),
        .O(\axi_rdata[20]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[20]_i_3 
       (.I0(slv_reg6[20]),
        .I1(sel0[1]),
        .I2(slv_reg5[20]),
        .I3(sel0[0]),
        .I4(slv_reg4[20]),
        .O(\axi_rdata[20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_2 
       (.I0(slv_reg3[21]),
        .I1(slv_reg2[21]),
        .I2(sel0[1]),
        .I3(slv_reg1[21]),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[21] ),
        .O(\axi_rdata[21]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[21]_i_3 
       (.I0(slv_reg6[21]),
        .I1(sel0[1]),
        .I2(slv_reg5[21]),
        .I3(sel0[0]),
        .I4(slv_reg4[21]),
        .O(\axi_rdata[21]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_2 
       (.I0(slv_reg3[22]),
        .I1(slv_reg2[22]),
        .I2(sel0[1]),
        .I3(slv_reg1[22]),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[22] ),
        .O(\axi_rdata[22]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[22]_i_3 
       (.I0(slv_reg6[22]),
        .I1(sel0[1]),
        .I2(slv_reg5[22]),
        .I3(sel0[0]),
        .I4(slv_reg4[22]),
        .O(\axi_rdata[22]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_2 
       (.I0(slv_reg3[23]),
        .I1(slv_reg2[23]),
        .I2(sel0[1]),
        .I3(slv_reg1[23]),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[23] ),
        .O(\axi_rdata[23]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[23]_i_3 
       (.I0(slv_reg6[23]),
        .I1(sel0[1]),
        .I2(slv_reg5[23]),
        .I3(sel0[0]),
        .I4(slv_reg4[23]),
        .O(\axi_rdata[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_2 
       (.I0(slv_reg3[24]),
        .I1(slv_reg2[24]),
        .I2(sel0[1]),
        .I3(slv_reg1[24]),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[24] ),
        .O(\axi_rdata[24]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[24]_i_3 
       (.I0(slv_reg6[24]),
        .I1(sel0[1]),
        .I2(slv_reg5[24]),
        .I3(sel0[0]),
        .I4(slv_reg4[24]),
        .O(\axi_rdata[24]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[25]_i_2 
       (.I0(slv_reg3[25]),
        .I1(slv_reg2[25]),
        .I2(sel0[1]),
        .I3(slv_reg1[25]),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[25] ),
        .O(\axi_rdata[25]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[25]_i_3 
       (.I0(slv_reg6[25]),
        .I1(sel0[1]),
        .I2(slv_reg5[25]),
        .I3(sel0[0]),
        .I4(slv_reg4[25]),
        .O(\axi_rdata[25]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[26]_i_2 
       (.I0(slv_reg3[26]),
        .I1(slv_reg2[26]),
        .I2(sel0[1]),
        .I3(slv_reg1[26]),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[26] ),
        .O(\axi_rdata[26]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[26]_i_3 
       (.I0(slv_reg6[26]),
        .I1(sel0[1]),
        .I2(slv_reg5[26]),
        .I3(sel0[0]),
        .I4(slv_reg4[26]),
        .O(\axi_rdata[26]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[27]_i_2 
       (.I0(slv_reg3[27]),
        .I1(slv_reg2[27]),
        .I2(sel0[1]),
        .I3(slv_reg1[27]),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[27] ),
        .O(\axi_rdata[27]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[27]_i_3 
       (.I0(slv_reg6[27]),
        .I1(sel0[1]),
        .I2(slv_reg5[27]),
        .I3(sel0[0]),
        .I4(slv_reg4[27]),
        .O(\axi_rdata[27]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[28]_i_2 
       (.I0(slv_reg3[28]),
        .I1(slv_reg2[28]),
        .I2(sel0[1]),
        .I3(slv_reg1[28]),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[28] ),
        .O(\axi_rdata[28]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[28]_i_3 
       (.I0(slv_reg6[28]),
        .I1(sel0[1]),
        .I2(slv_reg5[28]),
        .I3(sel0[0]),
        .I4(slv_reg4[28]),
        .O(\axi_rdata[28]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[29]_i_2 
       (.I0(slv_reg3[29]),
        .I1(slv_reg2[29]),
        .I2(sel0[1]),
        .I3(slv_reg1[29]),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[29] ),
        .O(\axi_rdata[29]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[29]_i_3 
       (.I0(slv_reg6[29]),
        .I1(sel0[1]),
        .I2(slv_reg5[29]),
        .I3(sel0[0]),
        .I4(slv_reg4[29]),
        .O(\axi_rdata[29]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_2 
       (.I0(slv_reg3[2]),
        .I1(slv_reg2[2]),
        .I2(sel0[1]),
        .I3(slv_reg1[2]),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[2] ),
        .O(\axi_rdata[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[2]_i_3 
       (.I0(slv_reg6[2]),
        .I1(sel0[1]),
        .I2(slv_reg5[2]),
        .I3(sel0[0]),
        .I4(slv_reg4[2]),
        .O(\axi_rdata[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[30]_i_2 
       (.I0(slv_reg3[30]),
        .I1(slv_reg2[30]),
        .I2(sel0[1]),
        .I3(slv_reg1[30]),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[30] ),
        .O(\axi_rdata[30]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[30]_i_3 
       (.I0(slv_reg6[30]),
        .I1(sel0[1]),
        .I2(slv_reg5[30]),
        .I3(sel0[0]),
        .I4(slv_reg4[30]),
        .O(\axi_rdata[30]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[31]_i_2 
       (.I0(slv_reg3[31]),
        .I1(slv_reg2[31]),
        .I2(sel0[1]),
        .I3(slv_reg1[31]),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[31] ),
        .O(\axi_rdata[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[31]_i_3 
       (.I0(slv_reg6[31]),
        .I1(sel0[1]),
        .I2(slv_reg5[31]),
        .I3(sel0[0]),
        .I4(slv_reg4[31]),
        .O(\axi_rdata[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_2 
       (.I0(slv_reg3[3]),
        .I1(slv_reg2[3]),
        .I2(sel0[1]),
        .I3(slv_reg1[3]),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[3] ),
        .O(\axi_rdata[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[3]_i_3 
       (.I0(slv_reg6[3]),
        .I1(sel0[1]),
        .I2(slv_reg5[3]),
        .I3(sel0[0]),
        .I4(slv_reg4[3]),
        .O(\axi_rdata[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_2 
       (.I0(slv_reg3[4]),
        .I1(slv_reg2[4]),
        .I2(sel0[1]),
        .I3(slv_reg1[4]),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[4] ),
        .O(\axi_rdata[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[4]_i_3 
       (.I0(slv_reg6[4]),
        .I1(sel0[1]),
        .I2(slv_reg5[4]),
        .I3(sel0[0]),
        .I4(slv_reg4[4]),
        .O(\axi_rdata[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_2 
       (.I0(slv_reg3[5]),
        .I1(slv_reg2[5]),
        .I2(sel0[1]),
        .I3(slv_reg1[5]),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[5] ),
        .O(\axi_rdata[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[5]_i_3 
       (.I0(slv_reg6[5]),
        .I1(sel0[1]),
        .I2(slv_reg5[5]),
        .I3(sel0[0]),
        .I4(slv_reg4[5]),
        .O(\axi_rdata[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_2 
       (.I0(slv_reg3[6]),
        .I1(slv_reg2[6]),
        .I2(sel0[1]),
        .I3(slv_reg1[6]),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[6] ),
        .O(\axi_rdata[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[6]_i_3 
       (.I0(slv_reg6[6]),
        .I1(sel0[1]),
        .I2(slv_reg5[6]),
        .I3(sel0[0]),
        .I4(slv_reg4[6]),
        .O(\axi_rdata[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_2 
       (.I0(slv_reg3[7]),
        .I1(slv_reg2[7]),
        .I2(sel0[1]),
        .I3(slv_reg1[7]),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[7] ),
        .O(\axi_rdata[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[7]_i_3 
       (.I0(slv_reg6[7]),
        .I1(sel0[1]),
        .I2(slv_reg5[7]),
        .I3(sel0[0]),
        .I4(slv_reg4[7]),
        .O(\axi_rdata[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_2 
       (.I0(slv_reg3[8]),
        .I1(slv_reg2[8]),
        .I2(sel0[1]),
        .I3(slv_reg1[8]),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[8] ),
        .O(\axi_rdata[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[8]_i_3 
       (.I0(slv_reg6[8]),
        .I1(sel0[1]),
        .I2(slv_reg5[8]),
        .I3(sel0[0]),
        .I4(slv_reg4[8]),
        .O(\axi_rdata[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_2 
       (.I0(slv_reg3[9]),
        .I1(slv_reg2[9]),
        .I2(sel0[1]),
        .I3(slv_reg1[9]),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[9] ),
        .O(\axi_rdata[9]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[9]_i_3 
       (.I0(slv_reg6[9]),
        .I1(sel0[1]),
        .I2(slv_reg5[9]),
        .I3(sel0[0]),
        .I4(slv_reg4[9]),
        .O(\axi_rdata[9]_i_3_n_0 ));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(SR));
  MUXF7 \axi_rdata_reg[0]_i_1 
       (.I0(\axi_rdata[0]_i_2_n_0 ),
        .I1(\axi_rdata[0]_i_3_n_0 ),
        .O(reg_data_out[0]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(SR));
  MUXF7 \axi_rdata_reg[10]_i_1 
       (.I0(\axi_rdata[10]_i_2_n_0 ),
        .I1(\axi_rdata[10]_i_3_n_0 ),
        .O(reg_data_out[10]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(SR));
  MUXF7 \axi_rdata_reg[11]_i_1 
       (.I0(\axi_rdata[11]_i_2_n_0 ),
        .I1(\axi_rdata[11]_i_3_n_0 ),
        .O(reg_data_out[11]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(SR));
  MUXF7 \axi_rdata_reg[12]_i_1 
       (.I0(\axi_rdata[12]_i_2_n_0 ),
        .I1(\axi_rdata[12]_i_3_n_0 ),
        .O(reg_data_out[12]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(SR));
  MUXF7 \axi_rdata_reg[13]_i_1 
       (.I0(\axi_rdata[13]_i_2_n_0 ),
        .I1(\axi_rdata[13]_i_3_n_0 ),
        .O(reg_data_out[13]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(SR));
  MUXF7 \axi_rdata_reg[14]_i_1 
       (.I0(\axi_rdata[14]_i_2_n_0 ),
        .I1(\axi_rdata[14]_i_3_n_0 ),
        .O(reg_data_out[14]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(SR));
  MUXF7 \axi_rdata_reg[15]_i_1 
       (.I0(\axi_rdata[15]_i_2_n_0 ),
        .I1(\axi_rdata[15]_i_3_n_0 ),
        .O(reg_data_out[15]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(SR));
  MUXF7 \axi_rdata_reg[16]_i_1 
       (.I0(\axi_rdata[16]_i_2_n_0 ),
        .I1(\axi_rdata[16]_i_3_n_0 ),
        .O(reg_data_out[16]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(SR));
  MUXF7 \axi_rdata_reg[17]_i_1 
       (.I0(\axi_rdata[17]_i_2_n_0 ),
        .I1(\axi_rdata[17]_i_3_n_0 ),
        .O(reg_data_out[17]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(SR));
  MUXF7 \axi_rdata_reg[18]_i_1 
       (.I0(\axi_rdata[18]_i_2_n_0 ),
        .I1(\axi_rdata[18]_i_3_n_0 ),
        .O(reg_data_out[18]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(SR));
  MUXF7 \axi_rdata_reg[19]_i_1 
       (.I0(\axi_rdata[19]_i_2_n_0 ),
        .I1(\axi_rdata[19]_i_3_n_0 ),
        .O(reg_data_out[19]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(SR));
  MUXF7 \axi_rdata_reg[1]_i_1 
       (.I0(\axi_rdata[1]_i_2_n_0 ),
        .I1(\axi_rdata[1]_i_3_n_0 ),
        .O(reg_data_out[1]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(SR));
  MUXF7 \axi_rdata_reg[20]_i_1 
       (.I0(\axi_rdata[20]_i_2_n_0 ),
        .I1(\axi_rdata[20]_i_3_n_0 ),
        .O(reg_data_out[20]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(SR));
  MUXF7 \axi_rdata_reg[21]_i_1 
       (.I0(\axi_rdata[21]_i_2_n_0 ),
        .I1(\axi_rdata[21]_i_3_n_0 ),
        .O(reg_data_out[21]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(SR));
  MUXF7 \axi_rdata_reg[22]_i_1 
       (.I0(\axi_rdata[22]_i_2_n_0 ),
        .I1(\axi_rdata[22]_i_3_n_0 ),
        .O(reg_data_out[22]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(SR));
  MUXF7 \axi_rdata_reg[23]_i_1 
       (.I0(\axi_rdata[23]_i_2_n_0 ),
        .I1(\axi_rdata[23]_i_3_n_0 ),
        .O(reg_data_out[23]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(SR));
  MUXF7 \axi_rdata_reg[24]_i_1 
       (.I0(\axi_rdata[24]_i_2_n_0 ),
        .I1(\axi_rdata[24]_i_3_n_0 ),
        .O(reg_data_out[24]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(SR));
  MUXF7 \axi_rdata_reg[25]_i_1 
       (.I0(\axi_rdata[25]_i_2_n_0 ),
        .I1(\axi_rdata[25]_i_3_n_0 ),
        .O(reg_data_out[25]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(SR));
  MUXF7 \axi_rdata_reg[26]_i_1 
       (.I0(\axi_rdata[26]_i_2_n_0 ),
        .I1(\axi_rdata[26]_i_3_n_0 ),
        .O(reg_data_out[26]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(SR));
  MUXF7 \axi_rdata_reg[27]_i_1 
       (.I0(\axi_rdata[27]_i_2_n_0 ),
        .I1(\axi_rdata[27]_i_3_n_0 ),
        .O(reg_data_out[27]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(SR));
  MUXF7 \axi_rdata_reg[28]_i_1 
       (.I0(\axi_rdata[28]_i_2_n_0 ),
        .I1(\axi_rdata[28]_i_3_n_0 ),
        .O(reg_data_out[28]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(SR));
  MUXF7 \axi_rdata_reg[29]_i_1 
       (.I0(\axi_rdata[29]_i_2_n_0 ),
        .I1(\axi_rdata[29]_i_3_n_0 ),
        .O(reg_data_out[29]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(SR));
  MUXF7 \axi_rdata_reg[2]_i_1 
       (.I0(\axi_rdata[2]_i_2_n_0 ),
        .I1(\axi_rdata[2]_i_3_n_0 ),
        .O(reg_data_out[2]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(SR));
  MUXF7 \axi_rdata_reg[30]_i_1 
       (.I0(\axi_rdata[30]_i_2_n_0 ),
        .I1(\axi_rdata[30]_i_3_n_0 ),
        .O(reg_data_out[30]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(SR));
  MUXF7 \axi_rdata_reg[31]_i_1 
       (.I0(\axi_rdata[31]_i_2_n_0 ),
        .I1(\axi_rdata[31]_i_3_n_0 ),
        .O(reg_data_out[31]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(SR));
  MUXF7 \axi_rdata_reg[3]_i_1 
       (.I0(\axi_rdata[3]_i_2_n_0 ),
        .I1(\axi_rdata[3]_i_3_n_0 ),
        .O(reg_data_out[3]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(SR));
  MUXF7 \axi_rdata_reg[4]_i_1 
       (.I0(\axi_rdata[4]_i_2_n_0 ),
        .I1(\axi_rdata[4]_i_3_n_0 ),
        .O(reg_data_out[4]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(SR));
  MUXF7 \axi_rdata_reg[5]_i_1 
       (.I0(\axi_rdata[5]_i_2_n_0 ),
        .I1(\axi_rdata[5]_i_3_n_0 ),
        .O(reg_data_out[5]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(SR));
  MUXF7 \axi_rdata_reg[6]_i_1 
       (.I0(\axi_rdata[6]_i_2_n_0 ),
        .I1(\axi_rdata[6]_i_3_n_0 ),
        .O(reg_data_out[6]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(SR));
  MUXF7 \axi_rdata_reg[7]_i_1 
       (.I0(\axi_rdata[7]_i_2_n_0 ),
        .I1(\axi_rdata[7]_i_3_n_0 ),
        .O(reg_data_out[7]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(SR));
  MUXF7 \axi_rdata_reg[8]_i_1 
       (.I0(\axi_rdata[8]_i_2_n_0 ),
        .I1(\axi_rdata[8]_i_3_n_0 ),
        .O(reg_data_out[8]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(SR));
  MUXF7 \axi_rdata_reg[9]_i_1 
       (.I0(\axi_rdata[9]_i_2_n_0 ),
        .I1(\axi_rdata[9]_i_3_n_0 ),
        .O(reg_data_out[9]),
        .S(sel0[2]));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(axi_arready_reg_0),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    axi_wready_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(axi_wready_reg_0),
        .I3(aw_en_reg_n_0),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(axi_wready_reg_0),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFBEA)) 
    \i1[3]_i_1 
       (.I0(r10__0),
        .I1(r1_reg),
        .I2(r1_reg_0),
        .I3(slv_reg1_vld),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFBEA)) 
    \i2[3]_i_1 
       (.I0(r20__0),
        .I1(r2_reg_0),
        .I2(r1_reg_0),
        .I3(slv_reg2_vld),
        .O(send_r2_reg));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFBEA)) 
    \i3[3]_i_1 
       (.I0(r30__0),
        .I1(r3_reg_0),
        .I2(r1_reg_0),
        .I3(slv_reg3_vld),
        .O(send_r3_reg));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFBEA)) 
    \i4[3]_i_1 
       (.I0(r40__0),
        .I1(r4_reg_0),
        .I2(r1_reg_0),
        .I3(slv_reg4_vld),
        .O(send_r4_reg));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFBEA)) 
    \i5[3]_i_1 
       (.I0(r50__0),
        .I1(r5_reg_0),
        .I2(r1_reg_0),
        .I3(slv_reg5_vld),
        .O(send_r5_reg));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFBEA)) 
    \i6[3]_i_1 
       (.I0(r60__0),
        .I1(r6_reg_0),
        .I2(r1_reg_0),
        .I3(slv_reg6_vld),
        .O(send_r6_reg));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    lis1_rxs_INST_0
       (.I0(in_rx_s),
        .I1(slv_reg0),
        .I2(r2),
        .O(lis1_rxs));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    lis2_rxb_INST_0
       (.I0(in_rx_b),
        .I1(slv_reg0),
        .I2(r4),
        .O(lis2_rxb));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    lis3_rxx_INST_0
       (.I0(in_rx_x),
        .I1(slv_reg0),
        .I2(r6),
        .O(lis3_rxx));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    pub1_txs_INST_0
       (.I0(in_tx_s),
        .I1(slv_reg0),
        .I2(r1),
        .O(pub1_txs));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    pub2_txb_INST_0
       (.I0(in_tx_b),
        .I1(slv_reg0),
        .I2(r3),
        .O(pub2_txb));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    pub3_txx_INST_0
       (.I0(in_tx_x),
        .I1(slv_reg0),
        .I2(r5),
        .O(pub3_txx));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    r1_i_1
       (.I0(r1_reg_i_2_n_0),
        .I1(Q[3]),
        .I2(r1_reg_i_3_n_0),
        .I3(r1_reg),
        .I4(r1_reg_0),
        .I5(r1),
        .O(\i1_reg[3] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    r1_i_4
       (.I0(slv_reg1[11]),
        .I1(slv_reg1[10]),
        .I2(Q[1]),
        .I3(slv_reg1[9]),
        .I4(Q[0]),
        .I5(slv_reg1[8]),
        .O(r1_i_4_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    r1_i_5
       (.I0(slv_reg1[15]),
        .I1(slv_reg1[14]),
        .I2(Q[1]),
        .I3(slv_reg1[13]),
        .I4(Q[0]),
        .I5(slv_reg1[12]),
        .O(r1_i_5_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    r1_i_6
       (.I0(slv_reg1[3]),
        .I1(slv_reg1[2]),
        .I2(Q[1]),
        .I3(slv_reg1[1]),
        .I4(Q[0]),
        .I5(slv_reg1[0]),
        .O(r1_i_6_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    r1_i_7
       (.I0(slv_reg1[7]),
        .I1(slv_reg1[6]),
        .I2(Q[1]),
        .I3(slv_reg1[5]),
        .I4(Q[0]),
        .I5(slv_reg1[4]),
        .O(r1_i_7_n_0));
  MUXF7 r1_reg_i_2
       (.I0(r1_i_4_n_0),
        .I1(r1_i_5_n_0),
        .O(r1_reg_i_2_n_0),
        .S(Q[2]));
  MUXF7 r1_reg_i_3
       (.I0(r1_i_6_n_0),
        .I1(r1_i_7_n_0),
        .O(r1_reg_i_3_n_0),
        .S(Q[2]));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    r2_i_1
       (.I0(r2_reg_i_2_n_0),
        .I1(r2_reg[3]),
        .I2(r2_reg_i_3_n_0),
        .I3(r2_reg_0),
        .I4(r1_reg_0),
        .I5(r2),
        .O(\i2_reg[3] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    r2_i_4
       (.I0(slv_reg2[11]),
        .I1(slv_reg2[10]),
        .I2(r2_reg[1]),
        .I3(slv_reg2[9]),
        .I4(r2_reg[0]),
        .I5(slv_reg2[8]),
        .O(r2_i_4_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    r2_i_5
       (.I0(slv_reg2[15]),
        .I1(slv_reg2[14]),
        .I2(r2_reg[1]),
        .I3(slv_reg2[13]),
        .I4(r2_reg[0]),
        .I5(slv_reg2[12]),
        .O(r2_i_5_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    r2_i_6
       (.I0(slv_reg2[3]),
        .I1(slv_reg2[2]),
        .I2(r2_reg[1]),
        .I3(slv_reg2[1]),
        .I4(r2_reg[0]),
        .I5(slv_reg2[0]),
        .O(r2_i_6_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    r2_i_7
       (.I0(slv_reg2[7]),
        .I1(slv_reg2[6]),
        .I2(r2_reg[1]),
        .I3(slv_reg2[5]),
        .I4(r2_reg[0]),
        .I5(slv_reg2[4]),
        .O(r2_i_7_n_0));
  MUXF7 r2_reg_i_2
       (.I0(r2_i_4_n_0),
        .I1(r2_i_5_n_0),
        .O(r2_reg_i_2_n_0),
        .S(r2_reg[2]));
  MUXF7 r2_reg_i_3
       (.I0(r2_i_6_n_0),
        .I1(r2_i_7_n_0),
        .O(r2_reg_i_3_n_0),
        .S(r2_reg[2]));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    r3_i_1
       (.I0(r3_reg_i_2_n_0),
        .I1(r3_reg[3]),
        .I2(r3_reg_i_3_n_0),
        .I3(r3_reg_0),
        .I4(r1_reg_0),
        .I5(r3),
        .O(\i3_reg[3] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    r3_i_4
       (.I0(slv_reg3[11]),
        .I1(slv_reg3[10]),
        .I2(r3_reg[1]),
        .I3(slv_reg3[9]),
        .I4(r3_reg[0]),
        .I5(slv_reg3[8]),
        .O(r3_i_4_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    r3_i_5
       (.I0(slv_reg3[15]),
        .I1(slv_reg3[14]),
        .I2(r3_reg[1]),
        .I3(slv_reg3[13]),
        .I4(r3_reg[0]),
        .I5(slv_reg3[12]),
        .O(r3_i_5_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    r3_i_6
       (.I0(slv_reg3[3]),
        .I1(slv_reg3[2]),
        .I2(r3_reg[1]),
        .I3(slv_reg3[1]),
        .I4(r3_reg[0]),
        .I5(slv_reg3[0]),
        .O(r3_i_6_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    r3_i_7
       (.I0(slv_reg3[7]),
        .I1(slv_reg3[6]),
        .I2(r3_reg[1]),
        .I3(slv_reg3[5]),
        .I4(r3_reg[0]),
        .I5(slv_reg3[4]),
        .O(r3_i_7_n_0));
  MUXF7 r3_reg_i_2
       (.I0(r3_i_4_n_0),
        .I1(r3_i_5_n_0),
        .O(r3_reg_i_2_n_0),
        .S(r3_reg[2]));
  MUXF7 r3_reg_i_3
       (.I0(r3_i_6_n_0),
        .I1(r3_i_7_n_0),
        .O(r3_reg_i_3_n_0),
        .S(r3_reg[2]));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    r4_i_1
       (.I0(r4_reg_i_2_n_0),
        .I1(r4_reg[3]),
        .I2(r4_reg_i_3_n_0),
        .I3(r4_reg_0),
        .I4(r1_reg_0),
        .I5(r4),
        .O(\i4_reg[3] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    r4_i_4
       (.I0(slv_reg4[11]),
        .I1(slv_reg4[10]),
        .I2(r4_reg[1]),
        .I3(slv_reg4[9]),
        .I4(r4_reg[0]),
        .I5(slv_reg4[8]),
        .O(r4_i_4_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    r4_i_5
       (.I0(slv_reg4[15]),
        .I1(slv_reg4[14]),
        .I2(r4_reg[1]),
        .I3(slv_reg4[13]),
        .I4(r4_reg[0]),
        .I5(slv_reg4[12]),
        .O(r4_i_5_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    r4_i_6
       (.I0(slv_reg4[3]),
        .I1(slv_reg4[2]),
        .I2(r4_reg[1]),
        .I3(slv_reg4[1]),
        .I4(r4_reg[0]),
        .I5(slv_reg4[0]),
        .O(r4_i_6_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    r4_i_7
       (.I0(slv_reg4[7]),
        .I1(slv_reg4[6]),
        .I2(r4_reg[1]),
        .I3(slv_reg4[5]),
        .I4(r4_reg[0]),
        .I5(slv_reg4[4]),
        .O(r4_i_7_n_0));
  MUXF7 r4_reg_i_2
       (.I0(r4_i_4_n_0),
        .I1(r4_i_5_n_0),
        .O(r4_reg_i_2_n_0),
        .S(r4_reg[2]));
  MUXF7 r4_reg_i_3
       (.I0(r4_i_6_n_0),
        .I1(r4_i_7_n_0),
        .O(r4_reg_i_3_n_0),
        .S(r4_reg[2]));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    r5_i_1
       (.I0(r5_reg_i_2_n_0),
        .I1(r5_reg[3]),
        .I2(r5_reg_i_3_n_0),
        .I3(r5_reg_0),
        .I4(r1_reg_0),
        .I5(r5),
        .O(\i5_reg[3] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    r5_i_4
       (.I0(slv_reg5[11]),
        .I1(slv_reg5[10]),
        .I2(r5_reg[1]),
        .I3(slv_reg5[9]),
        .I4(r5_reg[0]),
        .I5(slv_reg5[8]),
        .O(r5_i_4_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    r5_i_5
       (.I0(slv_reg5[15]),
        .I1(slv_reg5[14]),
        .I2(r5_reg[1]),
        .I3(slv_reg5[13]),
        .I4(r5_reg[0]),
        .I5(slv_reg5[12]),
        .O(r5_i_5_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    r5_i_6
       (.I0(slv_reg5[3]),
        .I1(slv_reg5[2]),
        .I2(r5_reg[1]),
        .I3(slv_reg5[1]),
        .I4(r5_reg[0]),
        .I5(slv_reg5[0]),
        .O(r5_i_6_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    r5_i_7
       (.I0(slv_reg5[7]),
        .I1(slv_reg5[6]),
        .I2(r5_reg[1]),
        .I3(slv_reg5[5]),
        .I4(r5_reg[0]),
        .I5(slv_reg5[4]),
        .O(r5_i_7_n_0));
  MUXF7 r5_reg_i_2
       (.I0(r5_i_4_n_0),
        .I1(r5_i_5_n_0),
        .O(r5_reg_i_2_n_0),
        .S(r5_reg[2]));
  MUXF7 r5_reg_i_3
       (.I0(r5_i_6_n_0),
        .I1(r5_i_7_n_0),
        .O(r5_reg_i_3_n_0),
        .S(r5_reg[2]));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    r6_i_1
       (.I0(r6_reg_i_2_n_0),
        .I1(r6_reg[3]),
        .I2(r6_reg_i_3_n_0),
        .I3(r6_reg_0),
        .I4(r1_reg_0),
        .I5(r6),
        .O(\i6_reg[3] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    r6_i_4
       (.I0(slv_reg6[11]),
        .I1(slv_reg6[10]),
        .I2(r6_reg[1]),
        .I3(slv_reg6[9]),
        .I4(r6_reg[0]),
        .I5(slv_reg6[8]),
        .O(r6_i_4_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    r6_i_5
       (.I0(slv_reg6[15]),
        .I1(slv_reg6[14]),
        .I2(r6_reg[1]),
        .I3(slv_reg6[13]),
        .I4(r6_reg[0]),
        .I5(slv_reg6[12]),
        .O(r6_i_5_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    r6_i_6
       (.I0(slv_reg6[3]),
        .I1(slv_reg6[2]),
        .I2(r6_reg[1]),
        .I3(slv_reg6[1]),
        .I4(r6_reg[0]),
        .I5(slv_reg6[0]),
        .O(r6_i_6_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    r6_i_7
       (.I0(slv_reg6[7]),
        .I1(slv_reg6[6]),
        .I2(r6_reg[1]),
        .I3(slv_reg6[5]),
        .I4(r6_reg[0]),
        .I5(slv_reg6[4]),
        .O(r6_i_7_n_0));
  MUXF7 r6_reg_i_2
       (.I0(r6_i_4_n_0),
        .I1(r6_i_5_n_0),
        .O(r6_reg_i_2_n_0),
        .S(r6_reg[2]));
  MUXF7 r6_reg_i_3
       (.I0(r6_i_6_n_0),
        .I1(r6_i_7_n_0),
        .O(r6_reg_i_3_n_0),
        .S(r6_reg[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    send_r1_i_2
       (.I0(slv_reg1_vld),
        .I1(r1_reg),
        .O(slv_reg1_valid_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    send_r2_i_2
       (.I0(slv_reg2_vld),
        .I1(r2_reg_0),
        .O(slv_reg2_valid_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    send_r3_i_2
       (.I0(slv_reg3_vld),
        .I1(r3_reg_0),
        .O(slv_reg3_valid_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hE)) 
    send_r4_i_2
       (.I0(slv_reg4_vld),
        .I1(r4_reg_0),
        .O(slv_reg4_valid_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hE)) 
    send_r5_i_2
       (.I0(slv_reg5_vld),
        .I1(r5_reg_0),
        .O(slv_reg5_valid_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'hE)) 
    send_r6_i_2
       (.I0(slv_reg6_vld),
        .I1(r6_reg_0),
        .O(slv_reg6_valid_reg_0));
  LUT5 #(
    .INIT(32'h00020000)) 
    \slv_reg0[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[1]),
        .O(p_1_in[15]));
  LUT5 #(
    .INIT(32'h00020000)) 
    \slv_reg0[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[2]),
        .O(p_1_in[23]));
  LUT5 #(
    .INIT(32'h00020000)) 
    \slv_reg0[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[3]),
        .O(p_1_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg0[31]_i_2 
       (.I0(axi_wready_reg_0),
        .I1(axi_awready_reg_0),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wvalid),
        .O(slv_reg_wren__0));
  LUT5 #(
    .INIT(32'h00020000)) 
    \slv_reg0[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[0]),
        .O(p_1_in[0]));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[0]),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg0),
        .R(SR));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg0_reg_n_0_[10] ),
        .R(SR));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg0_reg_n_0_[11] ),
        .R(SR));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg0_reg_n_0_[12] ),
        .R(SR));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg0_reg_n_0_[13] ),
        .R(SR));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg0_reg_n_0_[14] ),
        .R(SR));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg0_reg_n_0_[15] ),
        .R(SR));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg0_reg_n_0_[16] ),
        .R(SR));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg0_reg_n_0_[17] ),
        .R(SR));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg0_reg_n_0_[18] ),
        .R(SR));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg0_reg_n_0_[19] ),
        .R(SR));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[0]),
        .D(s00_axi_wdata[1]),
        .Q(\slv_reg0_reg_n_0_[1] ),
        .R(SR));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg0_reg_n_0_[20] ),
        .R(SR));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg0_reg_n_0_[21] ),
        .R(SR));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg0_reg_n_0_[22] ),
        .R(SR));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg0_reg_n_0_[23] ),
        .R(SR));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg0_reg_n_0_[24] ),
        .R(SR));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg0_reg_n_0_[25] ),
        .R(SR));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg0_reg_n_0_[26] ),
        .R(SR));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg0_reg_n_0_[27] ),
        .R(SR));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg0_reg_n_0_[28] ),
        .R(SR));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg0_reg_n_0_[29] ),
        .R(SR));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[0]),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg0_reg_n_0_[2] ),
        .R(SR));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg0_reg_n_0_[30] ),
        .R(SR));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg0_reg_n_0_[31] ),
        .R(SR));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[0]),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg0_reg_n_0_[3] ),
        .R(SR));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[0]),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg0_reg_n_0_[4] ),
        .R(SR));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[0]),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg0_reg_n_0_[5] ),
        .R(SR));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[0]),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg0_reg_n_0_[6] ),
        .R(SR));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[0]),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg0_reg_n_0_[7] ),
        .R(SR));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg0_reg_n_0_[8] ),
        .R(SR));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg0_reg_n_0_[9] ),
        .R(SR));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg1[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(s00_axi_wstrb[1]),
        .I4(p_0_in[0]),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg1[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(s00_axi_wstrb[2]),
        .I4(p_0_in[0]),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg1[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(s00_axi_wstrb[3]),
        .I4(p_0_in[0]),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg1[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(s00_axi_wstrb[0]),
        .I4(p_0_in[0]),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg1[0]),
        .R(SR));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg1[10]),
        .R(SR));
  FDRE \slv_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg1[11]),
        .R(SR));
  FDRE \slv_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg1[12]),
        .R(SR));
  FDRE \slv_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg1[13]),
        .R(SR));
  FDRE \slv_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg1[14]),
        .R(SR));
  FDRE \slv_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg1[15]),
        .R(SR));
  FDRE \slv_reg1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg1[16]),
        .R(SR));
  FDRE \slv_reg1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg1[17]),
        .R(SR));
  FDRE \slv_reg1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg1[18]),
        .R(SR));
  FDRE \slv_reg1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg1[19]),
        .R(SR));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg1[1]),
        .R(SR));
  FDRE \slv_reg1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg1[20]),
        .R(SR));
  FDRE \slv_reg1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg1[21]),
        .R(SR));
  FDRE \slv_reg1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg1[22]),
        .R(SR));
  FDRE \slv_reg1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg1[23]),
        .R(SR));
  FDRE \slv_reg1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg1[24]),
        .R(SR));
  FDRE \slv_reg1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg1[25]),
        .R(SR));
  FDRE \slv_reg1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg1[26]),
        .R(SR));
  FDRE \slv_reg1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg1[27]),
        .R(SR));
  FDRE \slv_reg1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg1[28]),
        .R(SR));
  FDRE \slv_reg1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg1[29]),
        .R(SR));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg1[2]),
        .R(SR));
  FDRE \slv_reg1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg1[30]),
        .R(SR));
  FDRE \slv_reg1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg1[31]),
        .R(SR));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg1[3]),
        .R(SR));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg1[4]),
        .R(SR));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg1[5]),
        .R(SR));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg1[6]),
        .R(SR));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg1[7]),
        .R(SR));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg1[8]),
        .R(SR));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg1[9]),
        .R(SR));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    slv_reg1_valid_i_1
       (.I0(s00_axi_aresetn),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awvalid),
        .I3(axi_awready_reg_0),
        .I4(axi_wready_reg_0),
        .O(slv_reg1_valid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7F02)) 
    slv_reg1_valid_i_2
       (.I0(p_0_in[0]),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(slv_reg1_vld),
        .O(slv_reg1_valid_i_2_n_0));
  FDRE slv_reg1_valid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_reg1_valid_i_2_n_0),
        .Q(slv_reg1_vld),
        .R(slv_reg1_valid_i_1_n_0));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg2[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[1]),
        .I4(p_0_in[1]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg2[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[2]),
        .I4(p_0_in[1]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg2[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[3]),
        .I4(p_0_in[1]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg2[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[0]),
        .I4(p_0_in[1]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg2[0]),
        .R(SR));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg2[10]),
        .R(SR));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg2[11]),
        .R(SR));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg2[12]),
        .R(SR));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg2[13]),
        .R(SR));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg2[14]),
        .R(SR));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg2[15]),
        .R(SR));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg2[16]),
        .R(SR));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg2[17]),
        .R(SR));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg2[18]),
        .R(SR));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg2[19]),
        .R(SR));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg2[1]),
        .R(SR));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg2[20]),
        .R(SR));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg2[21]),
        .R(SR));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg2[22]),
        .R(SR));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg2[23]),
        .R(SR));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg2[24]),
        .R(SR));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg2[25]),
        .R(SR));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg2[26]),
        .R(SR));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg2[27]),
        .R(SR));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg2[28]),
        .R(SR));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg2[29]),
        .R(SR));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg2[2]),
        .R(SR));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg2[30]),
        .R(SR));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg2[31]),
        .R(SR));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg2[3]),
        .R(SR));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg2[4]),
        .R(SR));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg2[5]),
        .R(SR));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg2[6]),
        .R(SR));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg2[7]),
        .R(SR));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg2[8]),
        .R(SR));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg2[9]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7F02)) 
    slv_reg2_valid_i_1
       (.I0(p_0_in[1]),
        .I1(p_0_in[2]),
        .I2(p_0_in[0]),
        .I3(slv_reg2_vld),
        .O(slv_reg2_valid_i_1_n_0));
  FDRE slv_reg2_valid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_reg2_valid_i_1_n_0),
        .Q(slv_reg2_vld),
        .R(slv_reg1_valid_i_1_n_0));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg3[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(s00_axi_wstrb[1]),
        .O(\slv_reg3[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg3[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(s00_axi_wstrb[2]),
        .O(\slv_reg3[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg3[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(s00_axi_wstrb[3]),
        .O(\slv_reg3[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg3[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(s00_axi_wstrb[0]),
        .O(\slv_reg3[7]_i_1_n_0 ));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg3[0]),
        .R(SR));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg3[10]),
        .R(SR));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg3[11]),
        .R(SR));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg3[12]),
        .R(SR));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg3[13]),
        .R(SR));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg3[14]),
        .R(SR));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg3[15]),
        .R(SR));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg3[16]),
        .R(SR));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg3[17]),
        .R(SR));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg3[18]),
        .R(SR));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg3[19]),
        .R(SR));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg3[1]),
        .R(SR));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg3[20]),
        .R(SR));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg3[21]),
        .R(SR));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg3[22]),
        .R(SR));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg3[23]),
        .R(SR));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg3[24]),
        .R(SR));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg3[25]),
        .R(SR));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg3[26]),
        .R(SR));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg3[27]),
        .R(SR));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg3[28]),
        .R(SR));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg3[29]),
        .R(SR));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg3[2]),
        .R(SR));
  FDRE \slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg3[30]),
        .R(SR));
  FDRE \slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg3[31]),
        .R(SR));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg3[3]),
        .R(SR));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg3[4]),
        .R(SR));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg3[5]),
        .R(SR));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg3[6]),
        .R(SR));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg3[7]),
        .R(SR));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg3[8]),
        .R(SR));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg3[9]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h7F40)) 
    slv_reg3_valid_i_1
       (.I0(p_0_in[2]),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(slv_reg3_vld),
        .O(slv_reg3_valid_i_1_n_0));
  FDRE slv_reg3_valid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_reg3_valid_i_1_n_0),
        .Q(slv_reg3_vld),
        .R(slv_reg1_valid_i_1_n_0));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg4[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[1]),
        .O(\slv_reg4[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg4[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[2]),
        .O(\slv_reg4[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg4[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[3]),
        .O(\slv_reg4[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg4[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[0]),
        .O(\slv_reg4[7]_i_1_n_0 ));
  FDRE \slv_reg4_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg4[0]),
        .R(SR));
  FDRE \slv_reg4_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg4[10]),
        .R(SR));
  FDRE \slv_reg4_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg4[11]),
        .R(SR));
  FDRE \slv_reg4_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg4[12]),
        .R(SR));
  FDRE \slv_reg4_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg4[13]),
        .R(SR));
  FDRE \slv_reg4_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg4[14]),
        .R(SR));
  FDRE \slv_reg4_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg4[15]),
        .R(SR));
  FDRE \slv_reg4_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg4[16]),
        .R(SR));
  FDRE \slv_reg4_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg4[17]),
        .R(SR));
  FDRE \slv_reg4_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg4[18]),
        .R(SR));
  FDRE \slv_reg4_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg4[19]),
        .R(SR));
  FDRE \slv_reg4_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg4[1]),
        .R(SR));
  FDRE \slv_reg4_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg4[20]),
        .R(SR));
  FDRE \slv_reg4_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg4[21]),
        .R(SR));
  FDRE \slv_reg4_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg4[22]),
        .R(SR));
  FDRE \slv_reg4_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg4[23]),
        .R(SR));
  FDRE \slv_reg4_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg4[24]),
        .R(SR));
  FDRE \slv_reg4_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg4[25]),
        .R(SR));
  FDRE \slv_reg4_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg4[26]),
        .R(SR));
  FDRE \slv_reg4_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg4[27]),
        .R(SR));
  FDRE \slv_reg4_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg4[28]),
        .R(SR));
  FDRE \slv_reg4_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg4[29]),
        .R(SR));
  FDRE \slv_reg4_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg4[2]),
        .R(SR));
  FDRE \slv_reg4_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg4[30]),
        .R(SR));
  FDRE \slv_reg4_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg4[31]),
        .R(SR));
  FDRE \slv_reg4_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg4[3]),
        .R(SR));
  FDRE \slv_reg4_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg4[4]),
        .R(SR));
  FDRE \slv_reg4_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg4[5]),
        .R(SR));
  FDRE \slv_reg4_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg4[6]),
        .R(SR));
  FDRE \slv_reg4_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg4[7]),
        .R(SR));
  FDRE \slv_reg4_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg4[8]),
        .R(SR));
  FDRE \slv_reg4_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg4[9]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h7F02)) 
    slv_reg4_valid_i_1
       (.I0(p_0_in[2]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(slv_reg4_vld),
        .O(slv_reg4_valid_i_1_n_0));
  FDRE slv_reg4_valid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_reg4_valid_i_1_n_0),
        .Q(slv_reg4_vld),
        .R(slv_reg1_valid_i_1_n_0));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg5[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[1]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .O(\slv_reg5[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg5[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[2]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .O(\slv_reg5[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg5[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[3]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .O(\slv_reg5[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg5[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[0]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .O(\slv_reg5[7]_i_1_n_0 ));
  FDRE \slv_reg5_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg5[0]),
        .R(SR));
  FDRE \slv_reg5_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg5[10]),
        .R(SR));
  FDRE \slv_reg5_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg5[11]),
        .R(SR));
  FDRE \slv_reg5_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg5[12]),
        .R(SR));
  FDRE \slv_reg5_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg5[13]),
        .R(SR));
  FDRE \slv_reg5_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg5[14]),
        .R(SR));
  FDRE \slv_reg5_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg5[15]),
        .R(SR));
  FDRE \slv_reg5_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg5[16]),
        .R(SR));
  FDRE \slv_reg5_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg5[17]),
        .R(SR));
  FDRE \slv_reg5_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg5[18]),
        .R(SR));
  FDRE \slv_reg5_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg5[19]),
        .R(SR));
  FDRE \slv_reg5_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg5[1]),
        .R(SR));
  FDRE \slv_reg5_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg5[20]),
        .R(SR));
  FDRE \slv_reg5_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg5[21]),
        .R(SR));
  FDRE \slv_reg5_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg5[22]),
        .R(SR));
  FDRE \slv_reg5_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg5[23]),
        .R(SR));
  FDRE \slv_reg5_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg5[24]),
        .R(SR));
  FDRE \slv_reg5_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg5[25]),
        .R(SR));
  FDRE \slv_reg5_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg5[26]),
        .R(SR));
  FDRE \slv_reg5_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg5[27]),
        .R(SR));
  FDRE \slv_reg5_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg5[28]),
        .R(SR));
  FDRE \slv_reg5_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg5[29]),
        .R(SR));
  FDRE \slv_reg5_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg5[2]),
        .R(SR));
  FDRE \slv_reg5_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg5[30]),
        .R(SR));
  FDRE \slv_reg5_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg5[31]),
        .R(SR));
  FDRE \slv_reg5_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg5[3]),
        .R(SR));
  FDRE \slv_reg5_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg5[4]),
        .R(SR));
  FDRE \slv_reg5_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg5[5]),
        .R(SR));
  FDRE \slv_reg5_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg5[6]),
        .R(SR));
  FDRE \slv_reg5_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg5[7]),
        .R(SR));
  FDRE \slv_reg5_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg5[8]),
        .R(SR));
  FDRE \slv_reg5_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg5[9]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h2AEA)) 
    slv_reg5_valid_i_1
       (.I0(slv_reg5_vld),
        .I1(p_0_in[0]),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .O(slv_reg5_valid_i_1_n_0));
  FDRE slv_reg5_valid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_reg5_valid_i_1_n_0),
        .Q(slv_reg5_vld),
        .R(slv_reg1_valid_i_1_n_0));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg6[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(s00_axi_wstrb[1]),
        .I4(p_0_in[2]),
        .O(\slv_reg6[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg6[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(s00_axi_wstrb[2]),
        .I4(p_0_in[2]),
        .O(\slv_reg6[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg6[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(s00_axi_wstrb[3]),
        .I4(p_0_in[2]),
        .O(\slv_reg6[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg6[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(s00_axi_wstrb[0]),
        .I4(p_0_in[2]),
        .O(\slv_reg6[7]_i_1_n_0 ));
  FDRE \slv_reg6_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg6[0]),
        .R(SR));
  FDRE \slv_reg6_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg6[10]),
        .R(SR));
  FDRE \slv_reg6_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg6[11]),
        .R(SR));
  FDRE \slv_reg6_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg6[12]),
        .R(SR));
  FDRE \slv_reg6_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg6[13]),
        .R(SR));
  FDRE \slv_reg6_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg6[14]),
        .R(SR));
  FDRE \slv_reg6_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg6[15]),
        .R(SR));
  FDRE \slv_reg6_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg6[16]),
        .R(SR));
  FDRE \slv_reg6_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg6[17]),
        .R(SR));
  FDRE \slv_reg6_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg6[18]),
        .R(SR));
  FDRE \slv_reg6_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg6[19]),
        .R(SR));
  FDRE \slv_reg6_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg6[1]),
        .R(SR));
  FDRE \slv_reg6_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg6[20]),
        .R(SR));
  FDRE \slv_reg6_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg6[21]),
        .R(SR));
  FDRE \slv_reg6_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg6[22]),
        .R(SR));
  FDRE \slv_reg6_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg6[23]),
        .R(SR));
  FDRE \slv_reg6_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg6[24]),
        .R(SR));
  FDRE \slv_reg6_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg6[25]),
        .R(SR));
  FDRE \slv_reg6_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg6[26]),
        .R(SR));
  FDRE \slv_reg6_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg6[27]),
        .R(SR));
  FDRE \slv_reg6_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg6[28]),
        .R(SR));
  FDRE \slv_reg6_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg6[29]),
        .R(SR));
  FDRE \slv_reg6_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg6[2]),
        .R(SR));
  FDRE \slv_reg6_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg6[30]),
        .R(SR));
  FDRE \slv_reg6_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg6[31]),
        .R(SR));
  FDRE \slv_reg6_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg6[3]),
        .R(SR));
  FDRE \slv_reg6_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg6[4]),
        .R(SR));
  FDRE \slv_reg6_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg6[5]),
        .R(SR));
  FDRE \slv_reg6_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg6[6]),
        .R(SR));
  FDRE \slv_reg6_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg6[7]),
        .R(SR));
  FDRE \slv_reg6_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg6[8]),
        .R(SR));
  FDRE \slv_reg6_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg6[9]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h7F40)) 
    slv_reg6_valid_i_1
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(slv_reg6_vld),
        .O(slv_reg6_valid_i_1_n_0));
  FDRE slv_reg6_valid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_reg6_valid_i_1_n_0),
        .Q(slv_reg6_vld),
        .R(slv_reg1_valid_i_1_n_0));
  LUT3 #(
    .INIT(8'h20)) 
    slv_reg_rden
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_rvalid),
        .I2(axi_arready_reg_0),
        .O(slv_reg_rden__0));
endmodule

(* ORIG_REF_NAME = "test_pmod_controller" *) 
module kr260_tsn_rs485pmod_test_pmod_controller_0_0_test_pmod_controller
   (s00_axi_awready,
    s00_axi_wready,
    s00_axi_arready,
    s00_axi_rdata,
    pub1_txs,
    lis1_rxs,
    pub2_txb,
    lis2_rxb,
    pub3_txx,
    lis3_rxx,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s00_axi_aresetn,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_wstrb,
    in_tx_s,
    in_rx_s,
    in_tx_b,
    in_rx_b,
    in_tx_x,
    in_rx_x,
    s00_axi_arvalid,
    s00_axi_bready,
    s00_axi_rready);
  output s00_axi_awready;
  output s00_axi_wready;
  output s00_axi_arready;
  output [31:0]s00_axi_rdata;
  output pub1_txs;
  output lis1_rxs;
  output pub2_txb;
  output lis2_rxb;
  output pub3_txx;
  output lis3_rxx;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input s00_axi_aresetn;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_aclk;
  input [2:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input [2:0]s00_axi_araddr;
  input [3:0]s00_axi_wstrb;
  input in_tx_s;
  input in_rx_s;
  input in_tx_b;
  input in_rx_b;
  input in_tx_x;
  input in_rx_x;
  input s00_axi_arvalid;
  input s00_axi_bready;
  input s00_axi_rready;

  wire \count_1us[0]_i_1_n_0 ;
  wire \count_1us[1]_i_1_n_0 ;
  wire \count_1us[2]_i_1_n_0 ;
  wire \count_1us[3]_i_1_n_0 ;
  wire \count_1us[4]_i_1_n_0 ;
  wire \count_1us[5]_i_1_n_0 ;
  wire \count_1us[6]_i_1_n_0 ;
  wire \count_1us[6]_i_2_n_0 ;
  wire \count_1us[7]_i_1_n_0 ;
  wire \count_1us[7]_i_2_n_0 ;
  wire \count_1us[7]_i_3_n_0 ;
  wire [7:0]count_1us_reg;
  wire en_1us;
  wire en_1us_i_2_n_0;
  wire en_1us_reg_n_0;
  wire \i1[0]_i_1_n_0 ;
  wire \i1[1]_i_1_n_0 ;
  wire \i1[2]_i_1_n_0 ;
  wire \i1[3]_i_2_n_0 ;
  wire \i1_reg_n_0_[0] ;
  wire \i1_reg_n_0_[1] ;
  wire \i1_reg_n_0_[2] ;
  wire \i1_reg_n_0_[3] ;
  wire \i2[0]_i_1_n_0 ;
  wire \i2[1]_i_1_n_0 ;
  wire \i2[2]_i_1_n_0 ;
  wire \i2[3]_i_2_n_0 ;
  wire \i2_reg_n_0_[0] ;
  wire \i2_reg_n_0_[1] ;
  wire \i2_reg_n_0_[2] ;
  wire \i2_reg_n_0_[3] ;
  wire \i3[0]_i_1_n_0 ;
  wire \i3[1]_i_1_n_0 ;
  wire \i3[2]_i_1_n_0 ;
  wire \i3[3]_i_2_n_0 ;
  wire \i3_reg_n_0_[0] ;
  wire \i3_reg_n_0_[1] ;
  wire \i3_reg_n_0_[2] ;
  wire \i3_reg_n_0_[3] ;
  wire \i4[0]_i_1_n_0 ;
  wire \i4[1]_i_1_n_0 ;
  wire \i4[2]_i_1_n_0 ;
  wire \i4[3]_i_2_n_0 ;
  wire \i4_reg_n_0_[0] ;
  wire \i4_reg_n_0_[1] ;
  wire \i4_reg_n_0_[2] ;
  wire \i4_reg_n_0_[3] ;
  wire \i5[0]_i_1_n_0 ;
  wire \i5[1]_i_1_n_0 ;
  wire \i5[2]_i_1_n_0 ;
  wire \i5[3]_i_2_n_0 ;
  wire \i5_reg_n_0_[0] ;
  wire \i5_reg_n_0_[1] ;
  wire \i5_reg_n_0_[2] ;
  wire \i5_reg_n_0_[3] ;
  wire \i6[0]_i_1_n_0 ;
  wire \i6[1]_i_1_n_0 ;
  wire \i6[2]_i_1_n_0 ;
  wire \i6[3]_i_2_n_0 ;
  wire \i6_reg_n_0_[0] ;
  wire \i6_reg_n_0_[1] ;
  wire \i6_reg_n_0_[2] ;
  wire \i6_reg_n_0_[3] ;
  wire in_rx_b;
  wire in_rx_s;
  wire in_rx_x;
  wire in_tx_b;
  wire in_tx_s;
  wire in_tx_x;
  wire lis1_rxs;
  wire lis2_rxb;
  wire lis3_rxx;
  wire pub1_txs;
  wire pub2_txb;
  wire pub3_txx;
  wire r1;
  wire r10__0;
  wire r2;
  wire r20__0;
  wire r3;
  wire r30__0;
  wire r4;
  wire r40__0;
  wire r5;
  wire r50__0;
  wire r6;
  wire r60__0;
  wire reg_interface_v1_0_S00_AXI_inst_n_1;
  wire reg_interface_v1_0_S00_AXI_inst_n_12;
  wire reg_interface_v1_0_S00_AXI_inst_n_13;
  wire reg_interface_v1_0_S00_AXI_inst_n_14;
  wire reg_interface_v1_0_S00_AXI_inst_n_15;
  wire reg_interface_v1_0_S00_AXI_inst_n_16;
  wire reg_interface_v1_0_S00_AXI_inst_n_17;
  wire reg_interface_v1_0_S00_AXI_inst_n_18;
  wire reg_interface_v1_0_S00_AXI_inst_n_19;
  wire reg_interface_v1_0_S00_AXI_inst_n_20;
  wire reg_interface_v1_0_S00_AXI_inst_n_21;
  wire reg_interface_v1_0_S00_AXI_inst_n_22;
  wire reg_interface_v1_0_S00_AXI_inst_n_23;
  wire reg_interface_v1_0_S00_AXI_inst_n_24;
  wire reg_interface_v1_0_S00_AXI_inst_n_25;
  wire reg_interface_v1_0_S00_AXI_inst_n_26;
  wire reg_interface_v1_0_S00_AXI_inst_n_27;
  wire reg_interface_v1_0_S00_AXI_inst_n_28;
  wire reg_interface_v1_0_S00_AXI_inst_n_29;
  wire s00_axi_aclk;
  wire [2:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [2:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire send_r1_i_1_n_0;
  wire send_r1_reg_n_0;
  wire send_r2_i_1_n_0;
  wire send_r2_reg_n_0;
  wire send_r3_i_1_n_0;
  wire send_r3_reg_n_0;
  wire send_r4_i_1_n_0;
  wire send_r4_reg_n_0;
  wire send_r5_i_1_n_0;
  wire send_r5_reg_n_0;
  wire send_r6_i_1_n_0;
  wire send_r6_reg_n_0;

  LUT1 #(
    .INIT(2'h1)) 
    \count_1us[0]_i_1 
       (.I0(count_1us_reg[0]),
        .O(\count_1us[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_1us[1]_i_1 
       (.I0(count_1us_reg[0]),
        .I1(count_1us_reg[1]),
        .O(\count_1us[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_1us[2]_i_1 
       (.I0(count_1us_reg[0]),
        .I1(count_1us_reg[1]),
        .I2(count_1us_reg[2]),
        .O(\count_1us[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_1us[3]_i_1 
       (.I0(count_1us_reg[1]),
        .I1(count_1us_reg[0]),
        .I2(count_1us_reg[2]),
        .I3(count_1us_reg[3]),
        .O(\count_1us[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_1us[4]_i_1 
       (.I0(count_1us_reg[2]),
        .I1(count_1us_reg[0]),
        .I2(count_1us_reg[1]),
        .I3(count_1us_reg[3]),
        .I4(count_1us_reg[4]),
        .O(\count_1us[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_1us[5]_i_1 
       (.I0(count_1us_reg[3]),
        .I1(count_1us_reg[1]),
        .I2(count_1us_reg[0]),
        .I3(count_1us_reg[2]),
        .I4(count_1us_reg[4]),
        .I5(count_1us_reg[5]),
        .O(\count_1us[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    \count_1us[6]_i_1 
       (.I0(count_1us_reg[4]),
        .I1(count_1us_reg[2]),
        .I2(\count_1us[6]_i_2_n_0 ),
        .I3(count_1us_reg[3]),
        .I4(count_1us_reg[5]),
        .I5(count_1us_reg[6]),
        .O(\count_1us[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \count_1us[6]_i_2 
       (.I0(count_1us_reg[1]),
        .I1(count_1us_reg[0]),
        .O(\count_1us[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    \count_1us[7]_i_1 
       (.I0(en_1us_i_2_n_0),
        .I1(count_1us_reg[7]),
        .I2(count_1us_reg[3]),
        .I3(count_1us_reg[4]),
        .I4(count_1us_reg[2]),
        .I5(s00_axi_aresetn),
        .O(\count_1us[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \count_1us[7]_i_2 
       (.I0(\count_1us[7]_i_3_n_0 ),
        .I1(count_1us_reg[6]),
        .I2(count_1us_reg[7]),
        .O(\count_1us[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_1us[7]_i_3 
       (.I0(count_1us_reg[5]),
        .I1(count_1us_reg[3]),
        .I2(count_1us_reg[1]),
        .I3(count_1us_reg[0]),
        .I4(count_1us_reg[2]),
        .I5(count_1us_reg[4]),
        .O(\count_1us[7]_i_3_n_0 ));
  FDRE \count_1us_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\count_1us[0]_i_1_n_0 ),
        .Q(count_1us_reg[0]),
        .R(\count_1us[7]_i_1_n_0 ));
  FDRE \count_1us_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\count_1us[1]_i_1_n_0 ),
        .Q(count_1us_reg[1]),
        .R(\count_1us[7]_i_1_n_0 ));
  FDRE \count_1us_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\count_1us[2]_i_1_n_0 ),
        .Q(count_1us_reg[2]),
        .R(\count_1us[7]_i_1_n_0 ));
  FDRE \count_1us_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\count_1us[3]_i_1_n_0 ),
        .Q(count_1us_reg[3]),
        .R(\count_1us[7]_i_1_n_0 ));
  FDRE \count_1us_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\count_1us[4]_i_1_n_0 ),
        .Q(count_1us_reg[4]),
        .R(\count_1us[7]_i_1_n_0 ));
  FDRE \count_1us_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\count_1us[5]_i_1_n_0 ),
        .Q(count_1us_reg[5]),
        .R(\count_1us[7]_i_1_n_0 ));
  FDRE \count_1us_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\count_1us[6]_i_1_n_0 ),
        .Q(count_1us_reg[6]),
        .R(\count_1us[7]_i_1_n_0 ));
  FDRE \count_1us_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\count_1us[7]_i_2_n_0 ),
        .Q(count_1us_reg[7]),
        .R(\count_1us[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    en_1us_i_1
       (.I0(count_1us_reg[2]),
        .I1(count_1us_reg[4]),
        .I2(count_1us_reg[3]),
        .I3(count_1us_reg[7]),
        .I4(en_1us_i_2_n_0),
        .O(en_1us));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    en_1us_i_2
       (.I0(count_1us_reg[5]),
        .I1(count_1us_reg[6]),
        .I2(count_1us_reg[0]),
        .I3(count_1us_reg[1]),
        .O(en_1us_i_2_n_0));
  FDRE en_1us_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(en_1us),
        .Q(en_1us_reg_n_0),
        .R(reg_interface_v1_0_S00_AXI_inst_n_1));
  LUT6 #(
    .INIT(64'h0808080808000808)) 
    \i1[0]_i_1 
       (.I0(send_r1_reg_n_0),
        .I1(en_1us_reg_n_0),
        .I2(\i1_reg_n_0_[0] ),
        .I3(\i1_reg_n_0_[2] ),
        .I4(\i1_reg_n_0_[3] ),
        .I5(\i1_reg_n_0_[1] ),
        .O(\i1[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0880)) 
    \i1[1]_i_1 
       (.I0(send_r1_reg_n_0),
        .I1(en_1us_reg_n_0),
        .I2(\i1_reg_n_0_[0] ),
        .I3(\i1_reg_n_0_[1] ),
        .O(\i1[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h08808800)) 
    \i1[2]_i_1 
       (.I0(send_r1_reg_n_0),
        .I1(en_1us_reg_n_0),
        .I2(\i1_reg_n_0_[0] ),
        .I3(\i1_reg_n_0_[2] ),
        .I4(\i1_reg_n_0_[1] ),
        .O(\i1[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0888800088800000)) 
    \i1[3]_i_2 
       (.I0(send_r1_reg_n_0),
        .I1(en_1us_reg_n_0),
        .I2(\i1_reg_n_0_[0] ),
        .I3(\i1_reg_n_0_[2] ),
        .I4(\i1_reg_n_0_[3] ),
        .I5(\i1_reg_n_0_[1] ),
        .O(\i1[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00040000)) 
    \i1[3]_i_3 
       (.I0(\i1_reg_n_0_[1] ),
        .I1(\i1_reg_n_0_[3] ),
        .I2(\i1_reg_n_0_[2] ),
        .I3(\i1_reg_n_0_[0] ),
        .I4(en_1us_reg_n_0),
        .O(r10__0));
  FDRE \i1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(reg_interface_v1_0_S00_AXI_inst_n_12),
        .D(\i1[0]_i_1_n_0 ),
        .Q(\i1_reg_n_0_[0] ),
        .R(reg_interface_v1_0_S00_AXI_inst_n_1));
  FDRE \i1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(reg_interface_v1_0_S00_AXI_inst_n_12),
        .D(\i1[1]_i_1_n_0 ),
        .Q(\i1_reg_n_0_[1] ),
        .R(reg_interface_v1_0_S00_AXI_inst_n_1));
  FDRE \i1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(reg_interface_v1_0_S00_AXI_inst_n_12),
        .D(\i1[2]_i_1_n_0 ),
        .Q(\i1_reg_n_0_[2] ),
        .R(reg_interface_v1_0_S00_AXI_inst_n_1));
  FDRE \i1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(reg_interface_v1_0_S00_AXI_inst_n_12),
        .D(\i1[3]_i_2_n_0 ),
        .Q(\i1_reg_n_0_[3] ),
        .R(reg_interface_v1_0_S00_AXI_inst_n_1));
  LUT6 #(
    .INIT(64'h0808080808000808)) 
    \i2[0]_i_1 
       (.I0(send_r2_reg_n_0),
        .I1(en_1us_reg_n_0),
        .I2(\i2_reg_n_0_[0] ),
        .I3(\i2_reg_n_0_[2] ),
        .I4(\i2_reg_n_0_[3] ),
        .I5(\i2_reg_n_0_[1] ),
        .O(\i2[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0880)) 
    \i2[1]_i_1 
       (.I0(send_r2_reg_n_0),
        .I1(en_1us_reg_n_0),
        .I2(\i2_reg_n_0_[0] ),
        .I3(\i2_reg_n_0_[1] ),
        .O(\i2[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h08808800)) 
    \i2[2]_i_1 
       (.I0(send_r2_reg_n_0),
        .I1(en_1us_reg_n_0),
        .I2(\i2_reg_n_0_[0] ),
        .I3(\i2_reg_n_0_[2] ),
        .I4(\i2_reg_n_0_[1] ),
        .O(\i2[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0888800088800000)) 
    \i2[3]_i_2 
       (.I0(send_r2_reg_n_0),
        .I1(en_1us_reg_n_0),
        .I2(\i2_reg_n_0_[0] ),
        .I3(\i2_reg_n_0_[2] ),
        .I4(\i2_reg_n_0_[3] ),
        .I5(\i2_reg_n_0_[1] ),
        .O(\i2[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00040000)) 
    \i2[3]_i_3 
       (.I0(\i2_reg_n_0_[1] ),
        .I1(\i2_reg_n_0_[3] ),
        .I2(\i2_reg_n_0_[2] ),
        .I3(\i2_reg_n_0_[0] ),
        .I4(en_1us_reg_n_0),
        .O(r20__0));
  FDRE \i2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(reg_interface_v1_0_S00_AXI_inst_n_13),
        .D(\i2[0]_i_1_n_0 ),
        .Q(\i2_reg_n_0_[0] ),
        .R(reg_interface_v1_0_S00_AXI_inst_n_1));
  FDRE \i2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(reg_interface_v1_0_S00_AXI_inst_n_13),
        .D(\i2[1]_i_1_n_0 ),
        .Q(\i2_reg_n_0_[1] ),
        .R(reg_interface_v1_0_S00_AXI_inst_n_1));
  FDRE \i2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(reg_interface_v1_0_S00_AXI_inst_n_13),
        .D(\i2[2]_i_1_n_0 ),
        .Q(\i2_reg_n_0_[2] ),
        .R(reg_interface_v1_0_S00_AXI_inst_n_1));
  FDRE \i2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(reg_interface_v1_0_S00_AXI_inst_n_13),
        .D(\i2[3]_i_2_n_0 ),
        .Q(\i2_reg_n_0_[3] ),
        .R(reg_interface_v1_0_S00_AXI_inst_n_1));
  LUT6 #(
    .INIT(64'h0808080808000808)) 
    \i3[0]_i_1 
       (.I0(send_r3_reg_n_0),
        .I1(en_1us_reg_n_0),
        .I2(\i3_reg_n_0_[0] ),
        .I3(\i3_reg_n_0_[2] ),
        .I4(\i3_reg_n_0_[3] ),
        .I5(\i3_reg_n_0_[1] ),
        .O(\i3[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0880)) 
    \i3[1]_i_1 
       (.I0(send_r3_reg_n_0),
        .I1(en_1us_reg_n_0),
        .I2(\i3_reg_n_0_[0] ),
        .I3(\i3_reg_n_0_[1] ),
        .O(\i3[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h08808800)) 
    \i3[2]_i_1 
       (.I0(send_r3_reg_n_0),
        .I1(en_1us_reg_n_0),
        .I2(\i3_reg_n_0_[0] ),
        .I3(\i3_reg_n_0_[2] ),
        .I4(\i3_reg_n_0_[1] ),
        .O(\i3[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0888800088800000)) 
    \i3[3]_i_2 
       (.I0(send_r3_reg_n_0),
        .I1(en_1us_reg_n_0),
        .I2(\i3_reg_n_0_[0] ),
        .I3(\i3_reg_n_0_[2] ),
        .I4(\i3_reg_n_0_[3] ),
        .I5(\i3_reg_n_0_[1] ),
        .O(\i3[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00040000)) 
    \i3[3]_i_3 
       (.I0(\i3_reg_n_0_[1] ),
        .I1(\i3_reg_n_0_[3] ),
        .I2(\i3_reg_n_0_[2] ),
        .I3(\i3_reg_n_0_[0] ),
        .I4(en_1us_reg_n_0),
        .O(r30__0));
  FDRE \i3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(reg_interface_v1_0_S00_AXI_inst_n_14),
        .D(\i3[0]_i_1_n_0 ),
        .Q(\i3_reg_n_0_[0] ),
        .R(reg_interface_v1_0_S00_AXI_inst_n_1));
  FDRE \i3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(reg_interface_v1_0_S00_AXI_inst_n_14),
        .D(\i3[1]_i_1_n_0 ),
        .Q(\i3_reg_n_0_[1] ),
        .R(reg_interface_v1_0_S00_AXI_inst_n_1));
  FDRE \i3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(reg_interface_v1_0_S00_AXI_inst_n_14),
        .D(\i3[2]_i_1_n_0 ),
        .Q(\i3_reg_n_0_[2] ),
        .R(reg_interface_v1_0_S00_AXI_inst_n_1));
  FDRE \i3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(reg_interface_v1_0_S00_AXI_inst_n_14),
        .D(\i3[3]_i_2_n_0 ),
        .Q(\i3_reg_n_0_[3] ),
        .R(reg_interface_v1_0_S00_AXI_inst_n_1));
  LUT6 #(
    .INIT(64'h0808080808000808)) 
    \i4[0]_i_1 
       (.I0(send_r4_reg_n_0),
        .I1(en_1us_reg_n_0),
        .I2(\i4_reg_n_0_[0] ),
        .I3(\i4_reg_n_0_[2] ),
        .I4(\i4_reg_n_0_[3] ),
        .I5(\i4_reg_n_0_[1] ),
        .O(\i4[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0880)) 
    \i4[1]_i_1 
       (.I0(send_r4_reg_n_0),
        .I1(en_1us_reg_n_0),
        .I2(\i4_reg_n_0_[0] ),
        .I3(\i4_reg_n_0_[1] ),
        .O(\i4[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h08808800)) 
    \i4[2]_i_1 
       (.I0(send_r4_reg_n_0),
        .I1(en_1us_reg_n_0),
        .I2(\i4_reg_n_0_[0] ),
        .I3(\i4_reg_n_0_[2] ),
        .I4(\i4_reg_n_0_[1] ),
        .O(\i4[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0888800088800000)) 
    \i4[3]_i_2 
       (.I0(send_r4_reg_n_0),
        .I1(en_1us_reg_n_0),
        .I2(\i4_reg_n_0_[0] ),
        .I3(\i4_reg_n_0_[2] ),
        .I4(\i4_reg_n_0_[3] ),
        .I5(\i4_reg_n_0_[1] ),
        .O(\i4[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00040000)) 
    \i4[3]_i_3 
       (.I0(\i4_reg_n_0_[1] ),
        .I1(\i4_reg_n_0_[3] ),
        .I2(\i4_reg_n_0_[2] ),
        .I3(\i4_reg_n_0_[0] ),
        .I4(en_1us_reg_n_0),
        .O(r40__0));
  FDRE \i4_reg[0] 
       (.C(s00_axi_aclk),
        .CE(reg_interface_v1_0_S00_AXI_inst_n_15),
        .D(\i4[0]_i_1_n_0 ),
        .Q(\i4_reg_n_0_[0] ),
        .R(reg_interface_v1_0_S00_AXI_inst_n_1));
  FDRE \i4_reg[1] 
       (.C(s00_axi_aclk),
        .CE(reg_interface_v1_0_S00_AXI_inst_n_15),
        .D(\i4[1]_i_1_n_0 ),
        .Q(\i4_reg_n_0_[1] ),
        .R(reg_interface_v1_0_S00_AXI_inst_n_1));
  FDRE \i4_reg[2] 
       (.C(s00_axi_aclk),
        .CE(reg_interface_v1_0_S00_AXI_inst_n_15),
        .D(\i4[2]_i_1_n_0 ),
        .Q(\i4_reg_n_0_[2] ),
        .R(reg_interface_v1_0_S00_AXI_inst_n_1));
  FDRE \i4_reg[3] 
       (.C(s00_axi_aclk),
        .CE(reg_interface_v1_0_S00_AXI_inst_n_15),
        .D(\i4[3]_i_2_n_0 ),
        .Q(\i4_reg_n_0_[3] ),
        .R(reg_interface_v1_0_S00_AXI_inst_n_1));
  LUT6 #(
    .INIT(64'h0808080808000808)) 
    \i5[0]_i_1 
       (.I0(send_r5_reg_n_0),
        .I1(en_1us_reg_n_0),
        .I2(\i5_reg_n_0_[0] ),
        .I3(\i5_reg_n_0_[2] ),
        .I4(\i5_reg_n_0_[3] ),
        .I5(\i5_reg_n_0_[1] ),
        .O(\i5[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0880)) 
    \i5[1]_i_1 
       (.I0(send_r5_reg_n_0),
        .I1(en_1us_reg_n_0),
        .I2(\i5_reg_n_0_[0] ),
        .I3(\i5_reg_n_0_[1] ),
        .O(\i5[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h08808800)) 
    \i5[2]_i_1 
       (.I0(send_r5_reg_n_0),
        .I1(en_1us_reg_n_0),
        .I2(\i5_reg_n_0_[0] ),
        .I3(\i5_reg_n_0_[2] ),
        .I4(\i5_reg_n_0_[1] ),
        .O(\i5[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0888800088800000)) 
    \i5[3]_i_2 
       (.I0(send_r5_reg_n_0),
        .I1(en_1us_reg_n_0),
        .I2(\i5_reg_n_0_[0] ),
        .I3(\i5_reg_n_0_[2] ),
        .I4(\i5_reg_n_0_[3] ),
        .I5(\i5_reg_n_0_[1] ),
        .O(\i5[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00040000)) 
    \i5[3]_i_3 
       (.I0(\i5_reg_n_0_[1] ),
        .I1(\i5_reg_n_0_[3] ),
        .I2(\i5_reg_n_0_[2] ),
        .I3(\i5_reg_n_0_[0] ),
        .I4(en_1us_reg_n_0),
        .O(r50__0));
  FDRE \i5_reg[0] 
       (.C(s00_axi_aclk),
        .CE(reg_interface_v1_0_S00_AXI_inst_n_16),
        .D(\i5[0]_i_1_n_0 ),
        .Q(\i5_reg_n_0_[0] ),
        .R(reg_interface_v1_0_S00_AXI_inst_n_1));
  FDRE \i5_reg[1] 
       (.C(s00_axi_aclk),
        .CE(reg_interface_v1_0_S00_AXI_inst_n_16),
        .D(\i5[1]_i_1_n_0 ),
        .Q(\i5_reg_n_0_[1] ),
        .R(reg_interface_v1_0_S00_AXI_inst_n_1));
  FDRE \i5_reg[2] 
       (.C(s00_axi_aclk),
        .CE(reg_interface_v1_0_S00_AXI_inst_n_16),
        .D(\i5[2]_i_1_n_0 ),
        .Q(\i5_reg_n_0_[2] ),
        .R(reg_interface_v1_0_S00_AXI_inst_n_1));
  FDRE \i5_reg[3] 
       (.C(s00_axi_aclk),
        .CE(reg_interface_v1_0_S00_AXI_inst_n_16),
        .D(\i5[3]_i_2_n_0 ),
        .Q(\i5_reg_n_0_[3] ),
        .R(reg_interface_v1_0_S00_AXI_inst_n_1));
  LUT6 #(
    .INIT(64'h0808080808000808)) 
    \i6[0]_i_1 
       (.I0(send_r6_reg_n_0),
        .I1(en_1us_reg_n_0),
        .I2(\i6_reg_n_0_[0] ),
        .I3(\i6_reg_n_0_[2] ),
        .I4(\i6_reg_n_0_[3] ),
        .I5(\i6_reg_n_0_[1] ),
        .O(\i6[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0880)) 
    \i6[1]_i_1 
       (.I0(send_r6_reg_n_0),
        .I1(en_1us_reg_n_0),
        .I2(\i6_reg_n_0_[0] ),
        .I3(\i6_reg_n_0_[1] ),
        .O(\i6[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h08808800)) 
    \i6[2]_i_1 
       (.I0(send_r6_reg_n_0),
        .I1(en_1us_reg_n_0),
        .I2(\i6_reg_n_0_[0] ),
        .I3(\i6_reg_n_0_[2] ),
        .I4(\i6_reg_n_0_[1] ),
        .O(\i6[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0888800088800000)) 
    \i6[3]_i_2 
       (.I0(send_r6_reg_n_0),
        .I1(en_1us_reg_n_0),
        .I2(\i6_reg_n_0_[0] ),
        .I3(\i6_reg_n_0_[2] ),
        .I4(\i6_reg_n_0_[3] ),
        .I5(\i6_reg_n_0_[1] ),
        .O(\i6[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00040000)) 
    \i6[3]_i_3 
       (.I0(\i6_reg_n_0_[1] ),
        .I1(\i6_reg_n_0_[3] ),
        .I2(\i6_reg_n_0_[2] ),
        .I3(\i6_reg_n_0_[0] ),
        .I4(en_1us_reg_n_0),
        .O(r60__0));
  FDRE \i6_reg[0] 
       (.C(s00_axi_aclk),
        .CE(reg_interface_v1_0_S00_AXI_inst_n_17),
        .D(\i6[0]_i_1_n_0 ),
        .Q(\i6_reg_n_0_[0] ),
        .R(reg_interface_v1_0_S00_AXI_inst_n_1));
  FDRE \i6_reg[1] 
       (.C(s00_axi_aclk),
        .CE(reg_interface_v1_0_S00_AXI_inst_n_17),
        .D(\i6[1]_i_1_n_0 ),
        .Q(\i6_reg_n_0_[1] ),
        .R(reg_interface_v1_0_S00_AXI_inst_n_1));
  FDRE \i6_reg[2] 
       (.C(s00_axi_aclk),
        .CE(reg_interface_v1_0_S00_AXI_inst_n_17),
        .D(\i6[2]_i_1_n_0 ),
        .Q(\i6_reg_n_0_[2] ),
        .R(reg_interface_v1_0_S00_AXI_inst_n_1));
  FDRE \i6_reg[3] 
       (.C(s00_axi_aclk),
        .CE(reg_interface_v1_0_S00_AXI_inst_n_17),
        .D(\i6[3]_i_2_n_0 ),
        .Q(\i6_reg_n_0_[3] ),
        .R(reg_interface_v1_0_S00_AXI_inst_n_1));
  FDRE r1_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(reg_interface_v1_0_S00_AXI_inst_n_18),
        .Q(r1),
        .R(send_r1_i_1_n_0));
  FDRE r2_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(reg_interface_v1_0_S00_AXI_inst_n_19),
        .Q(r2),
        .R(send_r2_i_1_n_0));
  FDRE r3_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(reg_interface_v1_0_S00_AXI_inst_n_20),
        .Q(r3),
        .R(send_r3_i_1_n_0));
  FDRE r4_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(reg_interface_v1_0_S00_AXI_inst_n_21),
        .Q(r4),
        .R(send_r4_i_1_n_0));
  FDRE r5_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(reg_interface_v1_0_S00_AXI_inst_n_22),
        .Q(r5),
        .R(send_r5_i_1_n_0));
  FDRE r6_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(reg_interface_v1_0_S00_AXI_inst_n_23),
        .Q(r6),
        .R(send_r6_i_1_n_0));
  kr260_tsn_rs485pmod_test_pmod_controller_0_0_reg_interface_v1_0_S00_AXI reg_interface_v1_0_S00_AXI_inst
       (.E(reg_interface_v1_0_S00_AXI_inst_n_12),
        .Q({\i1_reg_n_0_[3] ,\i1_reg_n_0_[2] ,\i1_reg_n_0_[1] ,\i1_reg_n_0_[0] }),
        .SR(reg_interface_v1_0_S00_AXI_inst_n_1),
        .axi_arready_reg_0(s00_axi_arready),
        .axi_awready_reg_0(s00_axi_awready),
        .axi_wready_reg_0(s00_axi_wready),
        .\i1_reg[3] (reg_interface_v1_0_S00_AXI_inst_n_18),
        .\i2_reg[3] (reg_interface_v1_0_S00_AXI_inst_n_19),
        .\i3_reg[3] (reg_interface_v1_0_S00_AXI_inst_n_20),
        .\i4_reg[3] (reg_interface_v1_0_S00_AXI_inst_n_21),
        .\i5_reg[3] (reg_interface_v1_0_S00_AXI_inst_n_22),
        .\i6_reg[3] (reg_interface_v1_0_S00_AXI_inst_n_23),
        .in_rx_b(in_rx_b),
        .in_rx_s(in_rx_s),
        .in_rx_x(in_rx_x),
        .in_tx_b(in_tx_b),
        .in_tx_s(in_tx_s),
        .in_tx_x(in_tx_x),
        .lis1_rxs(lis1_rxs),
        .lis2_rxb(lis2_rxb),
        .lis3_rxx(lis3_rxx),
        .pub1_txs(pub1_txs),
        .pub2_txb(pub2_txb),
        .pub3_txx(pub3_txx),
        .r1(r1),
        .r10__0(r10__0),
        .r1_reg(send_r1_reg_n_0),
        .r1_reg_0(en_1us_reg_n_0),
        .r2(r2),
        .r20__0(r20__0),
        .r2_reg({\i2_reg_n_0_[3] ,\i2_reg_n_0_[2] ,\i2_reg_n_0_[1] ,\i2_reg_n_0_[0] }),
        .r2_reg_0(send_r2_reg_n_0),
        .r3(r3),
        .r30__0(r30__0),
        .r3_reg({\i3_reg_n_0_[3] ,\i3_reg_n_0_[2] ,\i3_reg_n_0_[1] ,\i3_reg_n_0_[0] }),
        .r3_reg_0(send_r3_reg_n_0),
        .r4(r4),
        .r40__0(r40__0),
        .r4_reg({\i4_reg_n_0_[3] ,\i4_reg_n_0_[2] ,\i4_reg_n_0_[1] ,\i4_reg_n_0_[0] }),
        .r4_reg_0(send_r4_reg_n_0),
        .r5(r5),
        .r50__0(r50__0),
        .r5_reg({\i5_reg_n_0_[3] ,\i5_reg_n_0_[2] ,\i5_reg_n_0_[1] ,\i5_reg_n_0_[0] }),
        .r5_reg_0(send_r5_reg_n_0),
        .r6(r6),
        .r60__0(r60__0),
        .r6_reg({\i6_reg_n_0_[3] ,\i6_reg_n_0_[2] ,\i6_reg_n_0_[1] ,\i6_reg_n_0_[0] }),
        .r6_reg_0(send_r6_reg_n_0),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .send_r2_reg(reg_interface_v1_0_S00_AXI_inst_n_13),
        .send_r3_reg(reg_interface_v1_0_S00_AXI_inst_n_14),
        .send_r4_reg(reg_interface_v1_0_S00_AXI_inst_n_15),
        .send_r5_reg(reg_interface_v1_0_S00_AXI_inst_n_16),
        .send_r6_reg(reg_interface_v1_0_S00_AXI_inst_n_17),
        .slv_reg1_valid_reg_0(reg_interface_v1_0_S00_AXI_inst_n_24),
        .slv_reg2_valid_reg_0(reg_interface_v1_0_S00_AXI_inst_n_25),
        .slv_reg3_valid_reg_0(reg_interface_v1_0_S00_AXI_inst_n_26),
        .slv_reg4_valid_reg_0(reg_interface_v1_0_S00_AXI_inst_n_27),
        .slv_reg5_valid_reg_0(reg_interface_v1_0_S00_AXI_inst_n_28),
        .slv_reg6_valid_reg_0(reg_interface_v1_0_S00_AXI_inst_n_29));
  LUT6 #(
    .INIT(64'h00000200FFFFFFFF)) 
    send_r1_i_1
       (.I0(en_1us_reg_n_0),
        .I1(\i1_reg_n_0_[0] ),
        .I2(\i1_reg_n_0_[2] ),
        .I3(\i1_reg_n_0_[3] ),
        .I4(\i1_reg_n_0_[1] ),
        .I5(s00_axi_aresetn),
        .O(send_r1_i_1_n_0));
  FDRE send_r1_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(reg_interface_v1_0_S00_AXI_inst_n_24),
        .Q(send_r1_reg_n_0),
        .R(send_r1_i_1_n_0));
  LUT6 #(
    .INIT(64'h00000200FFFFFFFF)) 
    send_r2_i_1
       (.I0(en_1us_reg_n_0),
        .I1(\i2_reg_n_0_[0] ),
        .I2(\i2_reg_n_0_[2] ),
        .I3(\i2_reg_n_0_[3] ),
        .I4(\i2_reg_n_0_[1] ),
        .I5(s00_axi_aresetn),
        .O(send_r2_i_1_n_0));
  FDRE send_r2_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(reg_interface_v1_0_S00_AXI_inst_n_25),
        .Q(send_r2_reg_n_0),
        .R(send_r2_i_1_n_0));
  LUT6 #(
    .INIT(64'h00000200FFFFFFFF)) 
    send_r3_i_1
       (.I0(en_1us_reg_n_0),
        .I1(\i3_reg_n_0_[0] ),
        .I2(\i3_reg_n_0_[2] ),
        .I3(\i3_reg_n_0_[3] ),
        .I4(\i3_reg_n_0_[1] ),
        .I5(s00_axi_aresetn),
        .O(send_r3_i_1_n_0));
  FDRE send_r3_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(reg_interface_v1_0_S00_AXI_inst_n_26),
        .Q(send_r3_reg_n_0),
        .R(send_r3_i_1_n_0));
  LUT6 #(
    .INIT(64'h00000200FFFFFFFF)) 
    send_r4_i_1
       (.I0(en_1us_reg_n_0),
        .I1(\i4_reg_n_0_[0] ),
        .I2(\i4_reg_n_0_[2] ),
        .I3(\i4_reg_n_0_[3] ),
        .I4(\i4_reg_n_0_[1] ),
        .I5(s00_axi_aresetn),
        .O(send_r4_i_1_n_0));
  FDRE send_r4_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(reg_interface_v1_0_S00_AXI_inst_n_27),
        .Q(send_r4_reg_n_0),
        .R(send_r4_i_1_n_0));
  LUT6 #(
    .INIT(64'h00000200FFFFFFFF)) 
    send_r5_i_1
       (.I0(en_1us_reg_n_0),
        .I1(\i5_reg_n_0_[0] ),
        .I2(\i5_reg_n_0_[2] ),
        .I3(\i5_reg_n_0_[3] ),
        .I4(\i5_reg_n_0_[1] ),
        .I5(s00_axi_aresetn),
        .O(send_r5_i_1_n_0));
  FDRE send_r5_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(reg_interface_v1_0_S00_AXI_inst_n_28),
        .Q(send_r5_reg_n_0),
        .R(send_r5_i_1_n_0));
  LUT6 #(
    .INIT(64'h00000200FFFFFFFF)) 
    send_r6_i_1
       (.I0(en_1us_reg_n_0),
        .I1(\i6_reg_n_0_[0] ),
        .I2(\i6_reg_n_0_[2] ),
        .I3(\i6_reg_n_0_[3] ),
        .I4(\i6_reg_n_0_[1] ),
        .I5(s00_axi_aresetn),
        .O(send_r6_i_1_n_0));
  FDRE send_r6_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(reg_interface_v1_0_S00_AXI_inst_n_29),
        .Q(send_r6_reg_n_0),
        .R(send_r6_i_1_n_0));
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
