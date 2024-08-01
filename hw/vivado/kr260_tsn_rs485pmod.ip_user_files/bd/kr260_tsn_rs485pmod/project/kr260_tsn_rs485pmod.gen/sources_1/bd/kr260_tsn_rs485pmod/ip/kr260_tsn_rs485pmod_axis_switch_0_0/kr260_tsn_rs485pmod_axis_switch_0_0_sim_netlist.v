// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Sat Jul 27 11:17:47 2024
// Host        : N running 64-bit Ubuntu 24.04 LTS
// Command     : write_verilog -force -mode funcsim
//               /media/p4/Xilinx/kria-vitis-platforms/kr260/platforms/vivado/kr260_tsn_rs485pmod/project/kr260_tsn_rs485pmod.gen/sources_1/bd/kr260_tsn_rs485pmod/ip/kr260_tsn_rs485pmod_axis_switch_0_0/kr260_tsn_rs485pmod_axis_switch_0_0_sim_netlist.v
// Design      : kr260_tsn_rs485pmod_axis_switch_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "kr260_tsn_rs485pmod_axis_switch_0_0,axis_switch_v1_1_29_axis_switch,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axis_switch_v1_1_29_axis_switch,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module kr260_tsn_rs485pmod_axis_switch_0_0
   (aclk,
    aresetn,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tdest,
    m_axis_tuser,
    s_req_suppress,
    s_decode_err);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLKIF CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLKIF, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN kr260_tsn_rs485pmod_clk_wiz_0_0_clk_out1, ASSOCIATED_BUSIF M00_AXIS:M01_AXIS:M02_AXIS:M03_AXIS:M04_AXIS:M05_AXIS:M06_AXIS:M07_AXIS:M08_AXIS:M09_AXIS:M10_AXIS:M11_AXIS:M12_AXIS:M13_AXIS:M14_AXIS:M15_AXIS:S00_AXIS:S01_AXIS:S02_AXIS:S03_AXIS:S04_AXIS:S05_AXIS:S06_AXIS:S07_AXIS:S08_AXIS:S09_AXIS:S10_AXIS:S11_AXIS:S12_AXIS:S13_AXIS:S14_AXIS:S15_AXIS, ASSOCIATED_RESET aresetn, INSERT_VIP 0, ASSOCIATED_CLKEN aclken" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RSTIF RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RSTIF, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TVALID [0:0] [0:0], xilinx.com:interface:axis:1.0 S01_AXIS TVALID [0:0] [1:1]" *) input [1:0]s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TREADY [0:0] [0:0], xilinx.com:interface:axis:1.0 S01_AXIS TREADY [0:0] [1:1]" *) output [1:0]s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TDATA [31:0] [31:0], xilinx.com:interface:axis:1.0 S01_AXIS TDATA [31:0] [63:32]" *) input [63:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TKEEP [3:0] [3:0], xilinx.com:interface:axis:1.0 S01_AXIS TKEEP [3:0] [7:4]" *) input [7:0]s_axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TLAST [0:0] [0:0], xilinx.com:interface:axis:1.0 S01_AXIS TLAST [0:0] [1:1]" *) input [1:0]s_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TDEST [2:0] [2:0], xilinx.com:interface:axis:1.0 S01_AXIS TDEST [2:0] [5:3]" *) input [5:0]s_axis_tdest;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TUSER [31:0] [31:0], xilinx.com:interface:axis:1.0 S01_AXIS TUSER [31:0] [63:32]" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 3, TID_WIDTH 0, TUSER_WIDTH 32, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN kr260_tsn_rs485pmod_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0, XIL_INTERFACENAME S01_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 3, TID_WIDTH 0, TUSER_WIDTH 32, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN kr260_tsn_rs485pmod_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input [63:0]s_axis_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TVALID" *) output [0:0]m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TREADY" *) input [0:0]m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TDATA" *) output [31:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TKEEP" *) output [3:0]m_axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TLAST" *) output [0:0]m_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TDEST" *) output [2:0]m_axis_tdest;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TUSER" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 3, TID_WIDTH 0, TUSER_WIDTH 32, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN kr260_tsn_rs485pmod_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output [31:0]m_axis_tuser;
  input [1:0]s_req_suppress;
  output [1:0]s_decode_err;

  wire aclk;
  wire aresetn;
  wire [31:0]m_axis_tdata;
  wire [2:0]m_axis_tdest;
  wire [3:0]m_axis_tkeep;
  wire [0:0]m_axis_tlast;
  wire [0:0]m_axis_tready;
  wire [31:0]m_axis_tuser;
  wire [0:0]m_axis_tvalid;
  wire [63:0]s_axis_tdata;
  wire [5:0]s_axis_tdest;
  wire [7:0]s_axis_tkeep;
  wire [1:0]s_axis_tlast;
  wire [1:0]s_axis_tready;
  wire [63:0]s_axis_tuser;
  wire [1:0]s_axis_tvalid;
  wire [1:0]s_decode_err;
  wire [1:0]s_req_suppress;
  wire NLW_inst_s_axi_ctrl_arready_UNCONNECTED;
  wire NLW_inst_s_axi_ctrl_awready_UNCONNECTED;
  wire NLW_inst_s_axi_ctrl_bvalid_UNCONNECTED;
  wire NLW_inst_s_axi_ctrl_rvalid_UNCONNECTED;
  wire NLW_inst_s_axi_ctrl_wready_UNCONNECTED;
  wire [5:0]NLW_inst_arb_dest_UNCONNECTED;
  wire [0:0]NLW_inst_arb_done_UNCONNECTED;
  wire [1:0]NLW_inst_arb_id_UNCONNECTED;
  wire [1:0]NLW_inst_arb_last_UNCONNECTED;
  wire [1:0]NLW_inst_arb_req_UNCONNECTED;
  wire [63:0]NLW_inst_arb_user_UNCONNECTED;
  wire [0:0]NLW_inst_m_axis_tid_UNCONNECTED;
  wire [3:0]NLW_inst_m_axis_tstrb_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_ctrl_bresp_UNCONNECTED;
  wire [31:0]NLW_inst_s_axi_ctrl_rdata_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_ctrl_rresp_UNCONNECTED;

  (* C_ARB_ALGORITHM = "1" *) 
  (* C_ARB_ON_MAX_XFERS = "1" *) 
  (* C_ARB_ON_NUM_CYCLES = "0" *) 
  (* C_ARB_ON_TLAST = "1" *) 
  (* C_AXIS_SIGNAL_SET = "219" *) 
  (* C_AXIS_TDATA_WIDTH = "32" *) 
  (* C_AXIS_TDEST_WIDTH = "3" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "32" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_DECODER_REG = "0" *) 
  (* C_FAMILY = "zynquplus" *) 
  (* C_INCLUDE_ARBITER = "1" *) 
  (* C_LOG_SI_SLOTS = "1" *) 
  (* C_M_AXIS_BASETDEST_ARRAY = "3'b000" *) 
  (* C_M_AXIS_CONNECTIVITY_ARRAY = "2'b11" *) 
  (* C_M_AXIS_HIGHTDEST_ARRAY = "3'b110" *) 
  (* C_NUM_MI_SLOTS = "1" *) 
  (* C_NUM_SI_SLOTS = "2" *) 
  (* C_OUTPUT_REG = "0" *) 
  (* C_ROUTING_MODE = "0" *) 
  (* C_S_AXI_CTRL_ADDR_WIDTH = "7" *) 
  (* C_S_AXI_CTRL_DATA_WIDTH = "32" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* G_INDX_SS_TDATA = "1" *) 
  (* G_INDX_SS_TDEST = "6" *) 
  (* G_INDX_SS_TID = "5" *) 
  (* G_INDX_SS_TKEEP = "3" *) 
  (* G_INDX_SS_TLAST = "4" *) 
  (* G_INDX_SS_TREADY = "0" *) 
  (* G_INDX_SS_TSTRB = "2" *) 
  (* G_INDX_SS_TUSER = "7" *) 
  (* G_MASK_SS_TDATA = "2" *) 
  (* G_MASK_SS_TDEST = "64" *) 
  (* G_MASK_SS_TID = "32" *) 
  (* G_MASK_SS_TKEEP = "8" *) 
  (* G_MASK_SS_TLAST = "16" *) 
  (* G_MASK_SS_TREADY = "1" *) 
  (* G_MASK_SS_TSTRB = "4" *) 
  (* G_MASK_SS_TUSER = "128" *) 
  (* G_TASK_SEVERITY_ERR = "2" *) 
  (* G_TASK_SEVERITY_INFO = "0" *) 
  (* G_TASK_SEVERITY_WARNING = "1" *) 
  (* LP_CTRL_REG_WIDTH = "15" *) 
  (* LP_MERGEDOWN_MUX = "0" *) 
  (* LP_NUM_SYNCHRONIZER_STAGES = "4" *) 
  (* P_DECODER_CONNECTIVITY_ARRAY = "2'b11" *) 
  (* P_SINGLE_SLAVE_CONNECTIVITY_ARRAY = "1'b0" *) 
  (* P_TPAYLOAD_WIDTH = "72" *) 
  kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axis_switch inst
       (.aclk(aclk),
        .aclken(1'b1),
        .arb_dest(NLW_inst_arb_dest_UNCONNECTED[5:0]),
        .arb_done(NLW_inst_arb_done_UNCONNECTED[0]),
        .arb_gnt({1'b0,1'b0}),
        .arb_id(NLW_inst_arb_id_UNCONNECTED[1:0]),
        .arb_last(NLW_inst_arb_last_UNCONNECTED[1:0]),
        .arb_req(NLW_inst_arb_req_UNCONNECTED[1:0]),
        .arb_sel(1'b0),
        .arb_user(NLW_inst_arb_user_UNCONNECTED[63:0]),
        .aresetn(aresetn),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tdest(m_axis_tdest),
        .m_axis_tid(NLW_inst_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tstrb(NLW_inst_m_axis_tstrb_UNCONNECTED[3:0]),
        .m_axis_tuser(m_axis_tuser),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axi_ctrl_aclk(1'b0),
        .s_axi_ctrl_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctrl_aresetn(1'b0),
        .s_axi_ctrl_arready(NLW_inst_s_axi_ctrl_arready_UNCONNECTED),
        .s_axi_ctrl_arvalid(1'b0),
        .s_axi_ctrl_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctrl_awready(NLW_inst_s_axi_ctrl_awready_UNCONNECTED),
        .s_axi_ctrl_awvalid(1'b0),
        .s_axi_ctrl_bready(1'b0),
        .s_axi_ctrl_bresp(NLW_inst_s_axi_ctrl_bresp_UNCONNECTED[1:0]),
        .s_axi_ctrl_bvalid(NLW_inst_s_axi_ctrl_bvalid_UNCONNECTED),
        .s_axi_ctrl_rdata(NLW_inst_s_axi_ctrl_rdata_UNCONNECTED[31:0]),
        .s_axi_ctrl_rready(1'b0),
        .s_axi_ctrl_rresp(NLW_inst_s_axi_ctrl_rresp_UNCONNECTED[1:0]),
        .s_axi_ctrl_rvalid(NLW_inst_s_axi_ctrl_rvalid_UNCONNECTED),
        .s_axi_ctrl_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctrl_wready(NLW_inst_s_axi_ctrl_wready_UNCONNECTED),
        .s_axi_ctrl_wvalid(1'b0),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tdest(s_axis_tdest),
        .s_axis_tid({1'b0,1'b0}),
        .s_axis_tkeep(s_axis_tkeep),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tstrb({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .s_axis_tuser(s_axis_tuser),
        .s_axis_tvalid(s_axis_tvalid),
        .s_decode_err(s_decode_err),
        .s_req_suppress(s_req_suppress));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_29_arb_rr" *) 
module kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_arb_rr
   (s_axis_tdest_3_sp_1,
    \arb_gnt_r_reg[1]_0 ,
    s_axis_tdest_0_sp_1,
    \arb_gnt_r_reg[0]_0 ,
    \gen_tdest_routing.busy_ns ,
    \gen_tdest_routing.busy_ns_0 ,
    areset_reg,
    \arb_gnt_r_reg[0]_1 ,
    m_axis_tvalid,
    m_axis_tuser,
    m_axis_tdest,
    m_axis_tlast,
    m_axis_tkeep,
    m_axis_tdata,
    arb_busy_r_reg_0,
    aclk,
    \gen_tdest_routing.busy_r_reg[0] ,
    s_req_suppress,
    \gen_tdest_routing.busy_r_reg[0]_0 ,
    \arb_gnt_r_reg[0]_2 ,
    m_axis_tready,
    \gen_tdest_router.busy_r ,
    s_axis_tdest,
    s_axis_tvalid,
    s_axis_tuser,
    s_axis_tlast,
    s_axis_tkeep,
    s_axis_tdata);
  output s_axis_tdest_3_sp_1;
  output \arb_gnt_r_reg[1]_0 ;
  output s_axis_tdest_0_sp_1;
  output \arb_gnt_r_reg[0]_0 ;
  output \gen_tdest_routing.busy_ns ;
  output \gen_tdest_routing.busy_ns_0 ;
  output areset_reg;
  output \arb_gnt_r_reg[0]_1 ;
  output [0:0]m_axis_tvalid;
  output [31:0]m_axis_tuser;
  output [2:0]m_axis_tdest;
  output [0:0]m_axis_tlast;
  output [3:0]m_axis_tkeep;
  output [31:0]m_axis_tdata;
  input arb_busy_r_reg_0;
  input aclk;
  input \gen_tdest_routing.busy_r_reg[0] ;
  input [1:0]s_req_suppress;
  input \gen_tdest_routing.busy_r_reg[0]_0 ;
  input \arb_gnt_r_reg[0]_2 ;
  input [0:0]m_axis_tready;
  input [1:0]\gen_tdest_router.busy_r ;
  input [5:0]s_axis_tdest;
  input [1:0]s_axis_tvalid;
  input [63:0]s_axis_tuser;
  input [1:0]s_axis_tlast;
  input [7:0]s_axis_tkeep;
  input [63:0]s_axis_tdata;

  wire aclk;
  wire arb_busy_r;
  wire arb_busy_r_i_1_n_0;
  wire arb_busy_r_reg_0;
  wire \arb_gnt_r[0]_i_1_n_0 ;
  wire \arb_gnt_r[0]_i_2_n_0 ;
  wire \arb_gnt_r[1]_i_1_n_0 ;
  wire \arb_gnt_r[1]_i_2_n_0 ;
  wire \arb_gnt_r[1]_i_3_n_0 ;
  wire \arb_gnt_r_reg[0]_0 ;
  wire \arb_gnt_r_reg[0]_1 ;
  wire \arb_gnt_r_reg[0]_2 ;
  wire \arb_gnt_r_reg[1]_0 ;
  wire arb_sel_i;
  wire \arb_sel_r[0]_i_1_n_0 ;
  wire areset_reg;
  wire \busy_r[1]_i_3_n_0 ;
  wire \busy_r[1]_i_4_n_0 ;
  wire [1:0]\gen_tdest_router.busy_r ;
  wire \gen_tdest_routing.busy_ns ;
  wire \gen_tdest_routing.busy_ns_0 ;
  wire \gen_tdest_routing.busy_r_reg[0] ;
  wire \gen_tdest_routing.busy_r_reg[0]_0 ;
  wire [31:0]m_axis_tdata;
  wire [2:0]m_axis_tdest;
  wire [3:0]m_axis_tkeep;
  wire [0:0]m_axis_tlast;
  wire [0:0]m_axis_tready;
  wire [31:0]m_axis_tuser;
  wire [0:0]m_axis_tvalid;
  wire [63:0]s_axis_tdata;
  wire [5:0]s_axis_tdest;
  wire s_axis_tdest_0_sn_1;
  wire s_axis_tdest_3_sn_1;
  wire [7:0]s_axis_tkeep;
  wire [1:0]s_axis_tlast;
  wire [63:0]s_axis_tuser;
  wire [1:0]s_axis_tvalid;
  wire [1:0]s_req_suppress;

  assign s_axis_tdest_0_sp_1 = s_axis_tdest_0_sn_1;
  assign s_axis_tdest_3_sp_1 = s_axis_tdest_3_sn_1;
  LUT6 #(
    .INIT(64'h0001FFFFFFFFFFFF)) 
    arb_busy_r_i_1
       (.I0(s_axis_tdest_3_sn_1),
        .I1(\arb_gnt_r_reg[1]_0 ),
        .I2(\gen_tdest_routing.busy_r_reg[0] ),
        .I3(s_req_suppress[1]),
        .I4(\arb_gnt_r[1]_i_2_n_0 ),
        .I5(\arb_gnt_r[0]_i_2_n_0 ),
        .O(arb_busy_r_i_1_n_0));
  FDRE arb_busy_r_reg
       (.C(aclk),
        .CE(1'b1),
        .D(arb_busy_r_i_1_n_0),
        .Q(arb_busy_r),
        .R(arb_busy_r_reg_0));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \arb_gnt_r[0]_i_1 
       (.I0(\arb_gnt_r[0]_i_2_n_0 ),
        .I1(s_axis_tdest_0_sn_1),
        .I2(\arb_gnt_r_reg[0]_0 ),
        .I3(\gen_tdest_routing.busy_r_reg[0]_0 ),
        .I4(s_req_suppress[0]),
        .I5(arb_busy_r_reg_0),
        .O(\arb_gnt_r[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h01510000FFFFFFFF)) 
    \arb_gnt_r[0]_i_2 
       (.I0(\arb_gnt_r_reg[0]_2 ),
        .I1(s_axis_tdest_0_sn_1),
        .I2(arb_sel_i),
        .I3(s_axis_tdest_3_sn_1),
        .I4(m_axis_tready),
        .I5(arb_busy_r),
        .O(\arb_gnt_r[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h000000D0)) 
    \arb_gnt_r[1]_i_1 
       (.I0(arb_busy_r),
        .I1(\busy_r[1]_i_3_n_0 ),
        .I2(\arb_gnt_r[1]_i_2_n_0 ),
        .I3(\arb_gnt_r[1]_i_3_n_0 ),
        .I4(arb_busy_r_reg_0),
        .O(\arb_gnt_r[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \arb_gnt_r[1]_i_2 
       (.I0(s_axis_tdest_0_sn_1),
        .I1(\arb_gnt_r_reg[0]_0 ),
        .I2(\gen_tdest_routing.busy_r_reg[0]_0 ),
        .I3(s_req_suppress[0]),
        .O(\arb_gnt_r[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \arb_gnt_r[1]_i_3 
       (.I0(s_axis_tdest_3_sn_1),
        .I1(\arb_gnt_r_reg[1]_0 ),
        .I2(\gen_tdest_routing.busy_r_reg[0] ),
        .I3(s_req_suppress[1]),
        .O(\arb_gnt_r[1]_i_3_n_0 ));
  FDRE \arb_gnt_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arb_gnt_r[0]_i_1_n_0 ),
        .Q(\arb_gnt_r_reg[0]_0 ),
        .R(1'b0));
  FDRE \arb_gnt_r_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arb_gnt_r[1]_i_1_n_0 ),
        .Q(\arb_gnt_r_reg[1]_0 ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hCCFC4404)) 
    \arb_sel_r[0]_i_1 
       (.I0(\arb_gnt_r[1]_i_3_n_0 ),
        .I1(\arb_gnt_r[1]_i_2_n_0 ),
        .I2(arb_busy_r),
        .I3(\busy_r[1]_i_3_n_0 ),
        .I4(arb_sel_i),
        .O(\arb_sel_r[0]_i_1_n_0 ));
  FDRE \arb_sel_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arb_sel_r[0]_i_1_n_0 ),
        .Q(arb_sel_i),
        .R(arb_busy_r_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \busy_r[1]_i_1 
       (.I0(arb_busy_r_reg_0),
        .I1(\busy_r[1]_i_3_n_0 ),
        .O(areset_reg));
  LUT6 #(
    .INIT(64'h202A202A0000202A)) 
    \busy_r[1]_i_3 
       (.I0(m_axis_tready),
        .I1(s_axis_tdest_3_sn_1),
        .I2(arb_sel_i),
        .I3(s_axis_tdest_0_sn_1),
        .I4(\busy_r[1]_i_4_n_0 ),
        .I5(\arb_gnt_r_reg[0]_1 ),
        .O(\busy_r[1]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \busy_r[1]_i_4 
       (.I0(\arb_gnt_r_reg[1]_0 ),
        .I1(\gen_tdest_router.busy_r [1]),
        .O(\busy_r[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \gen_tdest_routing.busy_r[0]_i_1 
       (.I0(\gen_tdest_routing.busy_r_reg[0] ),
        .I1(\arb_gnt_r_reg[1]_0 ),
        .I2(\busy_r[1]_i_3_n_0 ),
        .O(\gen_tdest_routing.busy_ns ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \gen_tdest_routing.busy_r[0]_i_1__0 
       (.I0(\gen_tdest_routing.busy_r_reg[0]_0 ),
        .I1(\arb_gnt_r_reg[0]_0 ),
        .I2(\busy_r[1]_i_3_n_0 ),
        .O(\gen_tdest_routing.busy_ns_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[0]_INST_0 
       (.I0(s_axis_tdata[32]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[0]),
        .O(m_axis_tdata[0]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[10]_INST_0 
       (.I0(s_axis_tdata[42]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[10]),
        .O(m_axis_tdata[10]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[11]_INST_0 
       (.I0(s_axis_tdata[43]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[11]),
        .O(m_axis_tdata[11]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[12]_INST_0 
       (.I0(s_axis_tdata[44]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[12]),
        .O(m_axis_tdata[12]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[13]_INST_0 
       (.I0(s_axis_tdata[45]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[13]),
        .O(m_axis_tdata[13]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[14]_INST_0 
       (.I0(s_axis_tdata[46]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[14]),
        .O(m_axis_tdata[14]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[15]_INST_0 
       (.I0(s_axis_tdata[47]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[15]),
        .O(m_axis_tdata[15]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[16]_INST_0 
       (.I0(s_axis_tdata[48]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[16]),
        .O(m_axis_tdata[16]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[17]_INST_0 
       (.I0(s_axis_tdata[49]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[17]),
        .O(m_axis_tdata[17]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[18]_INST_0 
       (.I0(s_axis_tdata[50]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[18]),
        .O(m_axis_tdata[18]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[19]_INST_0 
       (.I0(s_axis_tdata[51]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[19]),
        .O(m_axis_tdata[19]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[1]_INST_0 
       (.I0(s_axis_tdata[33]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[1]),
        .O(m_axis_tdata[1]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[20]_INST_0 
       (.I0(s_axis_tdata[52]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[20]),
        .O(m_axis_tdata[20]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[21]_INST_0 
       (.I0(s_axis_tdata[53]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[21]),
        .O(m_axis_tdata[21]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[22]_INST_0 
       (.I0(s_axis_tdata[54]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[22]),
        .O(m_axis_tdata[22]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[23]_INST_0 
       (.I0(s_axis_tdata[55]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[23]),
        .O(m_axis_tdata[23]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[24]_INST_0 
       (.I0(s_axis_tdata[56]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[24]),
        .O(m_axis_tdata[24]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[25]_INST_0 
       (.I0(s_axis_tdata[57]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[25]),
        .O(m_axis_tdata[25]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[26]_INST_0 
       (.I0(s_axis_tdata[58]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[26]),
        .O(m_axis_tdata[26]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[27]_INST_0 
       (.I0(s_axis_tdata[59]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[27]),
        .O(m_axis_tdata[27]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[28]_INST_0 
       (.I0(s_axis_tdata[60]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[28]),
        .O(m_axis_tdata[28]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[29]_INST_0 
       (.I0(s_axis_tdata[61]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[29]),
        .O(m_axis_tdata[29]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[2]_INST_0 
       (.I0(s_axis_tdata[34]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[2]),
        .O(m_axis_tdata[2]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[30]_INST_0 
       (.I0(s_axis_tdata[62]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[30]),
        .O(m_axis_tdata[30]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[31]_INST_0 
       (.I0(s_axis_tdata[63]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[31]),
        .O(m_axis_tdata[31]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[3]_INST_0 
       (.I0(s_axis_tdata[35]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[3]),
        .O(m_axis_tdata[3]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[4]_INST_0 
       (.I0(s_axis_tdata[36]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[4]),
        .O(m_axis_tdata[4]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[5]_INST_0 
       (.I0(s_axis_tdata[37]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[5]),
        .O(m_axis_tdata[5]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[6]_INST_0 
       (.I0(s_axis_tdata[38]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[6]),
        .O(m_axis_tdata[6]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[7]_INST_0 
       (.I0(s_axis_tdata[39]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[7]),
        .O(m_axis_tdata[7]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[8]_INST_0 
       (.I0(s_axis_tdata[40]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[8]),
        .O(m_axis_tdata[8]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[9]_INST_0 
       (.I0(s_axis_tdata[41]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[9]),
        .O(m_axis_tdata[9]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdest[0]_INST_0 
       (.I0(s_axis_tdest[3]),
        .I1(arb_sel_i),
        .I2(s_axis_tdest[0]),
        .O(m_axis_tdest[0]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdest[1]_INST_0 
       (.I0(s_axis_tdest[4]),
        .I1(arb_sel_i),
        .I2(s_axis_tdest[1]),
        .O(m_axis_tdest[1]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdest[2]_INST_0 
       (.I0(s_axis_tdest[5]),
        .I1(arb_sel_i),
        .I2(s_axis_tdest[2]),
        .O(m_axis_tdest[2]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tkeep[0]_INST_0 
       (.I0(s_axis_tkeep[4]),
        .I1(arb_sel_i),
        .I2(s_axis_tkeep[0]),
        .O(m_axis_tkeep[0]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tkeep[1]_INST_0 
       (.I0(s_axis_tkeep[5]),
        .I1(arb_sel_i),
        .I2(s_axis_tkeep[1]),
        .O(m_axis_tkeep[1]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tkeep[2]_INST_0 
       (.I0(s_axis_tkeep[6]),
        .I1(arb_sel_i),
        .I2(s_axis_tkeep[2]),
        .O(m_axis_tkeep[2]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tkeep[3]_INST_0 
       (.I0(s_axis_tkeep[7]),
        .I1(arb_sel_i),
        .I2(s_axis_tkeep[3]),
        .O(m_axis_tkeep[3]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tlast[0]_INST_0 
       (.I0(s_axis_tlast[1]),
        .I1(arb_sel_i),
        .I2(s_axis_tlast[0]),
        .O(m_axis_tlast));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tuser[0]_INST_0 
       (.I0(s_axis_tuser[32]),
        .I1(arb_sel_i),
        .I2(s_axis_tuser[0]),
        .O(m_axis_tuser[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tuser[10]_INST_0 
       (.I0(s_axis_tuser[42]),
        .I1(arb_sel_i),
        .I2(s_axis_tuser[10]),
        .O(m_axis_tuser[10]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tuser[11]_INST_0 
       (.I0(s_axis_tuser[43]),
        .I1(arb_sel_i),
        .I2(s_axis_tuser[11]),
        .O(m_axis_tuser[11]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tuser[12]_INST_0 
       (.I0(s_axis_tuser[44]),
        .I1(arb_sel_i),
        .I2(s_axis_tuser[12]),
        .O(m_axis_tuser[12]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tuser[13]_INST_0 
       (.I0(s_axis_tuser[45]),
        .I1(arb_sel_i),
        .I2(s_axis_tuser[13]),
        .O(m_axis_tuser[13]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tuser[14]_INST_0 
       (.I0(s_axis_tuser[46]),
        .I1(arb_sel_i),
        .I2(s_axis_tuser[14]),
        .O(m_axis_tuser[14]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tuser[15]_INST_0 
       (.I0(s_axis_tuser[47]),
        .I1(arb_sel_i),
        .I2(s_axis_tuser[15]),
        .O(m_axis_tuser[15]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tuser[16]_INST_0 
       (.I0(s_axis_tuser[48]),
        .I1(arb_sel_i),
        .I2(s_axis_tuser[16]),
        .O(m_axis_tuser[16]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tuser[17]_INST_0 
       (.I0(s_axis_tuser[49]),
        .I1(arb_sel_i),
        .I2(s_axis_tuser[17]),
        .O(m_axis_tuser[17]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tuser[18]_INST_0 
       (.I0(s_axis_tuser[50]),
        .I1(arb_sel_i),
        .I2(s_axis_tuser[18]),
        .O(m_axis_tuser[18]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tuser[19]_INST_0 
       (.I0(s_axis_tuser[51]),
        .I1(arb_sel_i),
        .I2(s_axis_tuser[19]),
        .O(m_axis_tuser[19]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tuser[1]_INST_0 
       (.I0(s_axis_tuser[33]),
        .I1(arb_sel_i),
        .I2(s_axis_tuser[1]),
        .O(m_axis_tuser[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tuser[20]_INST_0 
       (.I0(s_axis_tuser[52]),
        .I1(arb_sel_i),
        .I2(s_axis_tuser[20]),
        .O(m_axis_tuser[20]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tuser[21]_INST_0 
       (.I0(s_axis_tuser[53]),
        .I1(arb_sel_i),
        .I2(s_axis_tuser[21]),
        .O(m_axis_tuser[21]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tuser[22]_INST_0 
       (.I0(s_axis_tuser[54]),
        .I1(arb_sel_i),
        .I2(s_axis_tuser[22]),
        .O(m_axis_tuser[22]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tuser[23]_INST_0 
       (.I0(s_axis_tuser[55]),
        .I1(arb_sel_i),
        .I2(s_axis_tuser[23]),
        .O(m_axis_tuser[23]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tuser[24]_INST_0 
       (.I0(s_axis_tuser[56]),
        .I1(arb_sel_i),
        .I2(s_axis_tuser[24]),
        .O(m_axis_tuser[24]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tuser[25]_INST_0 
       (.I0(s_axis_tuser[57]),
        .I1(arb_sel_i),
        .I2(s_axis_tuser[25]),
        .O(m_axis_tuser[25]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tuser[26]_INST_0 
       (.I0(s_axis_tuser[58]),
        .I1(arb_sel_i),
        .I2(s_axis_tuser[26]),
        .O(m_axis_tuser[26]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tuser[27]_INST_0 
       (.I0(s_axis_tuser[59]),
        .I1(arb_sel_i),
        .I2(s_axis_tuser[27]),
        .O(m_axis_tuser[27]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tuser[28]_INST_0 
       (.I0(s_axis_tuser[60]),
        .I1(arb_sel_i),
        .I2(s_axis_tuser[28]),
        .O(m_axis_tuser[28]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tuser[29]_INST_0 
       (.I0(s_axis_tuser[61]),
        .I1(arb_sel_i),
        .I2(s_axis_tuser[29]),
        .O(m_axis_tuser[29]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tuser[2]_INST_0 
       (.I0(s_axis_tuser[34]),
        .I1(arb_sel_i),
        .I2(s_axis_tuser[2]),
        .O(m_axis_tuser[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tuser[30]_INST_0 
       (.I0(s_axis_tuser[62]),
        .I1(arb_sel_i),
        .I2(s_axis_tuser[30]),
        .O(m_axis_tuser[30]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tuser[31]_INST_0 
       (.I0(s_axis_tuser[63]),
        .I1(arb_sel_i),
        .I2(s_axis_tuser[31]),
        .O(m_axis_tuser[31]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tuser[3]_INST_0 
       (.I0(s_axis_tuser[35]),
        .I1(arb_sel_i),
        .I2(s_axis_tuser[3]),
        .O(m_axis_tuser[3]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tuser[4]_INST_0 
       (.I0(s_axis_tuser[36]),
        .I1(arb_sel_i),
        .I2(s_axis_tuser[4]),
        .O(m_axis_tuser[4]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tuser[5]_INST_0 
       (.I0(s_axis_tuser[37]),
        .I1(arb_sel_i),
        .I2(s_axis_tuser[5]),
        .O(m_axis_tuser[5]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tuser[6]_INST_0 
       (.I0(s_axis_tuser[38]),
        .I1(arb_sel_i),
        .I2(s_axis_tuser[6]),
        .O(m_axis_tuser[6]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tuser[7]_INST_0 
       (.I0(s_axis_tuser[39]),
        .I1(arb_sel_i),
        .I2(s_axis_tuser[7]),
        .O(m_axis_tuser[7]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tuser[8]_INST_0 
       (.I0(s_axis_tuser[40]),
        .I1(arb_sel_i),
        .I2(s_axis_tuser[8]),
        .O(m_axis_tuser[8]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tuser[9]_INST_0 
       (.I0(s_axis_tuser[41]),
        .I1(arb_sel_i),
        .I2(s_axis_tuser[9]),
        .O(m_axis_tuser[9]));
  LUT6 #(
    .INIT(64'h000000FEFEFE00FE)) 
    \m_axis_tvalid[0]_INST_0 
       (.I0(\arb_gnt_r_reg[0]_1 ),
        .I1(\arb_gnt_r_reg[1]_0 ),
        .I2(\gen_tdest_router.busy_r [1]),
        .I3(s_axis_tdest_0_sn_1),
        .I4(arb_sel_i),
        .I5(s_axis_tdest_3_sn_1),
        .O(m_axis_tvalid));
  LUT2 #(
    .INIT(4'hE)) 
    \m_axis_tvalid[0]_INST_0_i_1 
       (.I0(\arb_gnt_r_reg[0]_0 ),
        .I1(\gen_tdest_router.busy_r [0]),
        .O(\arb_gnt_r_reg[0]_1 ));
  LUT4 #(
    .INIT(16'h80FF)) 
    \s_axis_tready[0]_INST_0_i_1 
       (.I0(s_axis_tdest[0]),
        .I1(s_axis_tdest[2]),
        .I2(s_axis_tdest[1]),
        .I3(s_axis_tvalid[0]),
        .O(s_axis_tdest_0_sn_1));
  LUT4 #(
    .INIT(16'h80FF)) 
    \s_axis_tready[1]_INST_0_i_1 
       (.I0(s_axis_tdest[3]),
        .I1(s_axis_tdest[5]),
        .I2(s_axis_tdest[4]),
        .I3(s_axis_tvalid[1]),
        .O(s_axis_tdest_3_sn_1));
endmodule

(* C_ARB_ALGORITHM = "1" *) (* C_ARB_ON_MAX_XFERS = "1" *) (* C_ARB_ON_NUM_CYCLES = "0" *) 
(* C_ARB_ON_TLAST = "1" *) (* C_AXIS_SIGNAL_SET = "219" *) (* C_AXIS_TDATA_WIDTH = "32" *) 
(* C_AXIS_TDEST_WIDTH = "3" *) (* C_AXIS_TID_WIDTH = "1" *) (* C_AXIS_TUSER_WIDTH = "32" *) 
(* C_COMMON_CLOCK = "0" *) (* C_DECODER_REG = "0" *) (* C_FAMILY = "zynquplus" *) 
(* C_INCLUDE_ARBITER = "1" *) (* C_LOG_SI_SLOTS = "1" *) (* C_M_AXIS_BASETDEST_ARRAY = "3'b000" *) 
(* C_M_AXIS_CONNECTIVITY_ARRAY = "2'b11" *) (* C_M_AXIS_HIGHTDEST_ARRAY = "3'b110" *) (* C_NUM_MI_SLOTS = "1" *) 
(* C_NUM_SI_SLOTS = "2" *) (* C_OUTPUT_REG = "0" *) (* C_ROUTING_MODE = "0" *) 
(* C_S_AXI_CTRL_ADDR_WIDTH = "7" *) (* C_S_AXI_CTRL_DATA_WIDTH = "32" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* G_INDX_SS_TDATA = "1" *) (* G_INDX_SS_TDEST = "6" *) (* G_INDX_SS_TID = "5" *) 
(* G_INDX_SS_TKEEP = "3" *) (* G_INDX_SS_TLAST = "4" *) (* G_INDX_SS_TREADY = "0" *) 
(* G_INDX_SS_TSTRB = "2" *) (* G_INDX_SS_TUSER = "7" *) (* G_MASK_SS_TDATA = "2" *) 
(* G_MASK_SS_TDEST = "64" *) (* G_MASK_SS_TID = "32" *) (* G_MASK_SS_TKEEP = "8" *) 
(* G_MASK_SS_TLAST = "16" *) (* G_MASK_SS_TREADY = "1" *) (* G_MASK_SS_TSTRB = "4" *) 
(* G_MASK_SS_TUSER = "128" *) (* G_TASK_SEVERITY_ERR = "2" *) (* G_TASK_SEVERITY_INFO = "0" *) 
(* G_TASK_SEVERITY_WARNING = "1" *) (* LP_CTRL_REG_WIDTH = "15" *) (* LP_MERGEDOWN_MUX = "0" *) 
(* LP_NUM_SYNCHRONIZER_STAGES = "4" *) (* ORIG_REF_NAME = "axis_switch_v1_1_29_axis_switch" *) (* P_DECODER_CONNECTIVITY_ARRAY = "2'b11" *) 
(* P_SINGLE_SLAVE_CONNECTIVITY_ARRAY = "1'b0" *) (* P_TPAYLOAD_WIDTH = "72" *) 
module kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axis_switch
   (aclk,
    aresetn,
    aclken,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    arb_req,
    arb_done,
    arb_gnt,
    arb_sel,
    arb_last,
    arb_id,
    arb_dest,
    arb_user,
    s_req_suppress,
    s_axi_ctrl_aclk,
    s_axi_ctrl_aresetn,
    s_axi_ctrl_awvalid,
    s_axi_ctrl_awready,
    s_axi_ctrl_awaddr,
    s_axi_ctrl_wvalid,
    s_axi_ctrl_wready,
    s_axi_ctrl_wdata,
    s_axi_ctrl_bvalid,
    s_axi_ctrl_bready,
    s_axi_ctrl_bresp,
    s_axi_ctrl_arvalid,
    s_axi_ctrl_arready,
    s_axi_ctrl_araddr,
    s_axi_ctrl_rvalid,
    s_axi_ctrl_rready,
    s_axi_ctrl_rdata,
    s_axi_ctrl_rresp,
    s_decode_err);
  input aclk;
  input aresetn;
  input aclken;
  input [1:0]s_axis_tvalid;
  output [1:0]s_axis_tready;
  input [63:0]s_axis_tdata;
  input [7:0]s_axis_tstrb;
  input [7:0]s_axis_tkeep;
  input [1:0]s_axis_tlast;
  input [1:0]s_axis_tid;
  input [5:0]s_axis_tdest;
  input [63:0]s_axis_tuser;
  output [0:0]m_axis_tvalid;
  input [0:0]m_axis_tready;
  output [31:0]m_axis_tdata;
  output [3:0]m_axis_tstrb;
  output [3:0]m_axis_tkeep;
  output [0:0]m_axis_tlast;
  output [0:0]m_axis_tid;
  output [2:0]m_axis_tdest;
  output [31:0]m_axis_tuser;
  output [1:0]arb_req;
  output [0:0]arb_done;
  input [1:0]arb_gnt;
  input [0:0]arb_sel;
  output [1:0]arb_last;
  output [1:0]arb_id;
  output [5:0]arb_dest;
  output [63:0]arb_user;
  input [1:0]s_req_suppress;
  input s_axi_ctrl_aclk;
  input s_axi_ctrl_aresetn;
  input s_axi_ctrl_awvalid;
  output s_axi_ctrl_awready;
  input [6:0]s_axi_ctrl_awaddr;
  input s_axi_ctrl_wvalid;
  output s_axi_ctrl_wready;
  input [31:0]s_axi_ctrl_wdata;
  output s_axi_ctrl_bvalid;
  input s_axi_ctrl_bready;
  output [1:0]s_axi_ctrl_bresp;
  input s_axi_ctrl_arvalid;
  output s_axi_ctrl_arready;
  input [6:0]s_axi_ctrl_araddr;
  output s_axi_ctrl_rvalid;
  input s_axi_ctrl_rready;
  output [31:0]s_axi_ctrl_rdata;
  output [1:0]s_axi_ctrl_rresp;
  output [1:0]s_decode_err;

  wire \<const0> ;
  wire aclk;
  wire [1:0]arb_gnt_i;
  wire areset;
  wire aresetn;
  wire \gen_decoder[0].axisc_decoder_0_n_0 ;
  wire \gen_decoder[1].axisc_decoder_0_n_1 ;
  wire \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_1 ;
  wire \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_4 ;
  wire \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_7 ;
  wire \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_8 ;
  wire [1:0]\gen_tdest_router.busy_r ;
  wire \gen_tdest_routing.busy_ns ;
  wire \gen_tdest_routing.busy_ns_0 ;
  wire \gen_transfer_mux[0].axisc_transfer_mux_0_n_2 ;
  wire [31:0]m_axis_tdata;
  wire [2:0]m_axis_tdest;
  wire [3:0]m_axis_tkeep;
  wire [0:0]m_axis_tlast;
  wire [0:0]m_axis_tready;
  wire [31:0]m_axis_tuser;
  wire [0:0]m_axis_tvalid;
  wire [63:0]s_axis_tdata;
  wire [5:0]s_axis_tdest;
  wire [7:0]s_axis_tkeep;
  wire [1:0]s_axis_tlast;
  wire [1:0]s_axis_tready;
  wire [63:0]s_axis_tuser;
  wire [1:0]s_axis_tvalid;
  wire [1:0]s_decode_err;
  wire [1:0]s_req_suppress;

  assign arb_dest[5] = \<const0> ;
  assign arb_dest[4] = \<const0> ;
  assign arb_dest[3] = \<const0> ;
  assign arb_dest[2] = \<const0> ;
  assign arb_dest[1] = \<const0> ;
  assign arb_dest[0] = \<const0> ;
  assign arb_done[0] = \<const0> ;
  assign arb_id[1] = \<const0> ;
  assign arb_id[0] = \<const0> ;
  assign arb_last[1] = \<const0> ;
  assign arb_last[0] = \<const0> ;
  assign arb_req[1] = \<const0> ;
  assign arb_req[0] = \<const0> ;
  assign arb_user[63] = \<const0> ;
  assign arb_user[62] = \<const0> ;
  assign arb_user[61] = \<const0> ;
  assign arb_user[60] = \<const0> ;
  assign arb_user[59] = \<const0> ;
  assign arb_user[58] = \<const0> ;
  assign arb_user[57] = \<const0> ;
  assign arb_user[56] = \<const0> ;
  assign arb_user[55] = \<const0> ;
  assign arb_user[54] = \<const0> ;
  assign arb_user[53] = \<const0> ;
  assign arb_user[52] = \<const0> ;
  assign arb_user[51] = \<const0> ;
  assign arb_user[50] = \<const0> ;
  assign arb_user[49] = \<const0> ;
  assign arb_user[48] = \<const0> ;
  assign arb_user[47] = \<const0> ;
  assign arb_user[46] = \<const0> ;
  assign arb_user[45] = \<const0> ;
  assign arb_user[44] = \<const0> ;
  assign arb_user[43] = \<const0> ;
  assign arb_user[42] = \<const0> ;
  assign arb_user[41] = \<const0> ;
  assign arb_user[40] = \<const0> ;
  assign arb_user[39] = \<const0> ;
  assign arb_user[38] = \<const0> ;
  assign arb_user[37] = \<const0> ;
  assign arb_user[36] = \<const0> ;
  assign arb_user[35] = \<const0> ;
  assign arb_user[34] = \<const0> ;
  assign arb_user[33] = \<const0> ;
  assign arb_user[32] = \<const0> ;
  assign arb_user[31] = \<const0> ;
  assign arb_user[30] = \<const0> ;
  assign arb_user[29] = \<const0> ;
  assign arb_user[28] = \<const0> ;
  assign arb_user[27] = \<const0> ;
  assign arb_user[26] = \<const0> ;
  assign arb_user[25] = \<const0> ;
  assign arb_user[24] = \<const0> ;
  assign arb_user[23] = \<const0> ;
  assign arb_user[22] = \<const0> ;
  assign arb_user[21] = \<const0> ;
  assign arb_user[20] = \<const0> ;
  assign arb_user[19] = \<const0> ;
  assign arb_user[18] = \<const0> ;
  assign arb_user[17] = \<const0> ;
  assign arb_user[16] = \<const0> ;
  assign arb_user[15] = \<const0> ;
  assign arb_user[14] = \<const0> ;
  assign arb_user[13] = \<const0> ;
  assign arb_user[12] = \<const0> ;
  assign arb_user[11] = \<const0> ;
  assign arb_user[10] = \<const0> ;
  assign arb_user[9] = \<const0> ;
  assign arb_user[8] = \<const0> ;
  assign arb_user[7] = \<const0> ;
  assign arb_user[6] = \<const0> ;
  assign arb_user[5] = \<const0> ;
  assign arb_user[4] = \<const0> ;
  assign arb_user[3] = \<const0> ;
  assign arb_user[2] = \<const0> ;
  assign arb_user[1] = \<const0> ;
  assign arb_user[0] = \<const0> ;
  assign m_axis_tid[0] = \<const0> ;
  assign m_axis_tstrb[3] = \<const0> ;
  assign m_axis_tstrb[2] = \<const0> ;
  assign m_axis_tstrb[1] = \<const0> ;
  assign m_axis_tstrb[0] = \<const0> ;
  assign s_axi_ctrl_arready = \<const0> ;
  assign s_axi_ctrl_awready = \<const0> ;
  assign s_axi_ctrl_bresp[1] = \<const0> ;
  assign s_axi_ctrl_bresp[0] = \<const0> ;
  assign s_axi_ctrl_bvalid = \<const0> ;
  assign s_axi_ctrl_rdata[31] = \<const0> ;
  assign s_axi_ctrl_rdata[30] = \<const0> ;
  assign s_axi_ctrl_rdata[29] = \<const0> ;
  assign s_axi_ctrl_rdata[28] = \<const0> ;
  assign s_axi_ctrl_rdata[27] = \<const0> ;
  assign s_axi_ctrl_rdata[26] = \<const0> ;
  assign s_axi_ctrl_rdata[25] = \<const0> ;
  assign s_axi_ctrl_rdata[24] = \<const0> ;
  assign s_axi_ctrl_rdata[23] = \<const0> ;
  assign s_axi_ctrl_rdata[22] = \<const0> ;
  assign s_axi_ctrl_rdata[21] = \<const0> ;
  assign s_axi_ctrl_rdata[20] = \<const0> ;
  assign s_axi_ctrl_rdata[19] = \<const0> ;
  assign s_axi_ctrl_rdata[18] = \<const0> ;
  assign s_axi_ctrl_rdata[17] = \<const0> ;
  assign s_axi_ctrl_rdata[16] = \<const0> ;
  assign s_axi_ctrl_rdata[15] = \<const0> ;
  assign s_axi_ctrl_rdata[14] = \<const0> ;
  assign s_axi_ctrl_rdata[13] = \<const0> ;
  assign s_axi_ctrl_rdata[12] = \<const0> ;
  assign s_axi_ctrl_rdata[11] = \<const0> ;
  assign s_axi_ctrl_rdata[10] = \<const0> ;
  assign s_axi_ctrl_rdata[9] = \<const0> ;
  assign s_axi_ctrl_rdata[8] = \<const0> ;
  assign s_axi_ctrl_rdata[7] = \<const0> ;
  assign s_axi_ctrl_rdata[6] = \<const0> ;
  assign s_axi_ctrl_rdata[5] = \<const0> ;
  assign s_axi_ctrl_rdata[4] = \<const0> ;
  assign s_axi_ctrl_rdata[3] = \<const0> ;
  assign s_axi_ctrl_rdata[2] = \<const0> ;
  assign s_axi_ctrl_rdata[1] = \<const0> ;
  assign s_axi_ctrl_rdata[0] = \<const0> ;
  assign s_axi_ctrl_rresp[1] = \<const0> ;
  assign s_axi_ctrl_rresp[0] = \<const0> ;
  assign s_axi_ctrl_rvalid = \<const0> ;
  assign s_axi_ctrl_wready = \<const0> ;
  GND GND
       (.G(\<const0> ));
  kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axisc_decoder \gen_decoder[0].axisc_decoder_0 
       (.aclk(aclk),
        .arb_gnt_i(arb_gnt_i[0]),
        .areset(areset),
        .\gen_tdest_router.busy_r (\gen_tdest_router.busy_r [0]),
        .\gen_tdest_routing.busy_ns (\gen_tdest_routing.busy_ns ),
        .\gen_tdest_routing.busy_r_reg[0]_0 (\gen_decoder[0].axisc_decoder_0_n_0 ),
        .m_axis_tready(m_axis_tready),
        .s_axis_tdest(s_axis_tdest[2:0]),
        .s_axis_tready(s_axis_tready[0]),
        .s_axis_tready_0_sp_1(\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_4 ),
        .s_axis_tvalid(s_axis_tvalid[0]),
        .s_decode_err(s_decode_err[0]));
  kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axisc_decoder_0 \gen_decoder[1].axisc_decoder_0 
       (.aclk(aclk),
        .arb_gnt_i(arb_gnt_i[1]),
        .areset(areset),
        .\gen_tdest_router.busy_r (\gen_tdest_router.busy_r [1]),
        .\gen_tdest_routing.busy_ns (\gen_tdest_routing.busy_ns_0 ),
        .\gen_tdest_routing.busy_r_reg[0]_0 (\gen_decoder[1].axisc_decoder_0_n_1 ),
        .m_axis_tready(m_axis_tready),
        .s_axis_tdest(s_axis_tdest[5:3]),
        .s_axis_tready(s_axis_tready[1]),
        .\s_axis_tready[1] (\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_1 ),
        .s_axis_tvalid(s_axis_tvalid[1]),
        .s_decode_err(s_decode_err[1]));
  kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axis_switch_arbiter \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter 
       (.aclk(aclk),
        .arb_gnt_i(arb_gnt_i),
        .\arb_gnt_r_reg[0] (\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_8 ),
        .\arb_gnt_r_reg[0]_0 (\gen_transfer_mux[0].axisc_transfer_mux_0_n_2 ),
        .areset(areset),
        .areset_reg_0(\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_7 ),
        .aresetn(aresetn),
        .\gen_tdest_router.busy_r (\gen_tdest_router.busy_r ),
        .\gen_tdest_routing.busy_ns (\gen_tdest_routing.busy_ns_0 ),
        .\gen_tdest_routing.busy_ns_0 (\gen_tdest_routing.busy_ns ),
        .\gen_tdest_routing.busy_r_reg[0] (\gen_decoder[1].axisc_decoder_0_n_1 ),
        .\gen_tdest_routing.busy_r_reg[0]_0 (\gen_decoder[0].axisc_decoder_0_n_0 ),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tdest(m_axis_tdest),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tuser(m_axis_tuser),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tdest(s_axis_tdest),
        .s_axis_tdest_0_sp_1(\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_4 ),
        .s_axis_tdest_3_sp_1(\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_1 ),
        .s_axis_tkeep(s_axis_tkeep),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tuser(s_axis_tuser),
        .s_axis_tvalid(s_axis_tvalid),
        .s_req_suppress(s_req_suppress));
  kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axisc_transfer_mux \gen_transfer_mux[0].axisc_transfer_mux_0 
       (.aclk(aclk),
        .arb_gnt_i(arb_gnt_i),
        .\busy_r_reg[0] (\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_7 ),
        .\busy_r_reg[0]_0 (\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_8 ),
        .\busy_r_reg[1] (\gen_transfer_mux[0].axisc_transfer_mux_0_n_2 ),
        .\gen_tdest_router.busy_r (\gen_tdest_router.busy_r ));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_29_axis_switch_arbiter" *) 
module kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axis_switch_arbiter
   (areset,
    s_axis_tdest_3_sp_1,
    arb_gnt_i,
    s_axis_tdest_0_sp_1,
    \gen_tdest_routing.busy_ns ,
    \gen_tdest_routing.busy_ns_0 ,
    areset_reg_0,
    \arb_gnt_r_reg[0] ,
    m_axis_tvalid,
    m_axis_tuser,
    m_axis_tdest,
    m_axis_tlast,
    m_axis_tkeep,
    m_axis_tdata,
    aclk,
    \gen_tdest_routing.busy_r_reg[0] ,
    s_req_suppress,
    \gen_tdest_routing.busy_r_reg[0]_0 ,
    \arb_gnt_r_reg[0]_0 ,
    m_axis_tready,
    \gen_tdest_router.busy_r ,
    s_axis_tdest,
    s_axis_tvalid,
    s_axis_tuser,
    s_axis_tlast,
    s_axis_tkeep,
    s_axis_tdata,
    aresetn);
  output areset;
  output s_axis_tdest_3_sp_1;
  output [1:0]arb_gnt_i;
  output s_axis_tdest_0_sp_1;
  output \gen_tdest_routing.busy_ns ;
  output \gen_tdest_routing.busy_ns_0 ;
  output areset_reg_0;
  output \arb_gnt_r_reg[0] ;
  output [0:0]m_axis_tvalid;
  output [31:0]m_axis_tuser;
  output [2:0]m_axis_tdest;
  output [0:0]m_axis_tlast;
  output [3:0]m_axis_tkeep;
  output [31:0]m_axis_tdata;
  input aclk;
  input \gen_tdest_routing.busy_r_reg[0] ;
  input [1:0]s_req_suppress;
  input \gen_tdest_routing.busy_r_reg[0]_0 ;
  input \arb_gnt_r_reg[0]_0 ;
  input [0:0]m_axis_tready;
  input [1:0]\gen_tdest_router.busy_r ;
  input [5:0]s_axis_tdest;
  input [1:0]s_axis_tvalid;
  input [63:0]s_axis_tuser;
  input [1:0]s_axis_tlast;
  input [7:0]s_axis_tkeep;
  input [63:0]s_axis_tdata;
  input aresetn;

  wire aclk;
  wire [1:0]arb_gnt_i;
  wire \arb_gnt_r_reg[0] ;
  wire \arb_gnt_r_reg[0]_0 ;
  wire areset;
  wire areset_reg_0;
  wire aresetn;
  wire [1:0]\gen_tdest_router.busy_r ;
  wire \gen_tdest_routing.busy_ns ;
  wire \gen_tdest_routing.busy_ns_0 ;
  wire \gen_tdest_routing.busy_r_reg[0] ;
  wire \gen_tdest_routing.busy_r_reg[0]_0 ;
  wire [31:0]m_axis_tdata;
  wire [2:0]m_axis_tdest;
  wire [3:0]m_axis_tkeep;
  wire [0:0]m_axis_tlast;
  wire [0:0]m_axis_tready;
  wire [31:0]m_axis_tuser;
  wire [0:0]m_axis_tvalid;
  wire p_0_in;
  wire [63:0]s_axis_tdata;
  wire [5:0]s_axis_tdest;
  wire s_axis_tdest_0_sn_1;
  wire s_axis_tdest_3_sn_1;
  wire [7:0]s_axis_tkeep;
  wire [1:0]s_axis_tlast;
  wire [63:0]s_axis_tuser;
  wire [1:0]s_axis_tvalid;
  wire [1:0]s_req_suppress;

  assign s_axis_tdest_0_sp_1 = s_axis_tdest_0_sn_1;
  assign s_axis_tdest_3_sp_1 = s_axis_tdest_3_sn_1;
  LUT1 #(
    .INIT(2'h1)) 
    areset_i_1
       (.I0(aresetn),
        .O(p_0_in));
  FDRE areset_reg
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(areset),
        .R(1'b0));
  kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_arb_rr \gen_mi_arb[0].gen_arb_algorithm.gen_fixed_priority.inst_arb_rr_1 
       (.aclk(aclk),
        .arb_busy_r_reg_0(areset),
        .\arb_gnt_r_reg[0]_0 (arb_gnt_i[0]),
        .\arb_gnt_r_reg[0]_1 (\arb_gnt_r_reg[0] ),
        .\arb_gnt_r_reg[0]_2 (\arb_gnt_r_reg[0]_0 ),
        .\arb_gnt_r_reg[1]_0 (arb_gnt_i[1]),
        .areset_reg(areset_reg_0),
        .\gen_tdest_router.busy_r (\gen_tdest_router.busy_r ),
        .\gen_tdest_routing.busy_ns (\gen_tdest_routing.busy_ns ),
        .\gen_tdest_routing.busy_ns_0 (\gen_tdest_routing.busy_ns_0 ),
        .\gen_tdest_routing.busy_r_reg[0] (\gen_tdest_routing.busy_r_reg[0] ),
        .\gen_tdest_routing.busy_r_reg[0]_0 (\gen_tdest_routing.busy_r_reg[0]_0 ),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tdest(m_axis_tdest),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tuser(m_axis_tuser),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tdest(s_axis_tdest),
        .s_axis_tdest_0_sp_1(s_axis_tdest_0_sn_1),
        .s_axis_tdest_3_sp_1(s_axis_tdest_3_sn_1),
        .s_axis_tkeep(s_axis_tkeep),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tuser(s_axis_tuser),
        .s_axis_tvalid(s_axis_tvalid),
        .s_req_suppress(s_req_suppress));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_29_axisc_arb_responder" *) 
module kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axisc_arb_responder
   (\gen_tdest_router.busy_r ,
    \busy_r_reg[1]_0 ,
    arb_gnt_i,
    \busy_r_reg[0]_0 ,
    aclk,
    \busy_r_reg[0]_1 );
  output [1:0]\gen_tdest_router.busy_r ;
  output \busy_r_reg[1]_0 ;
  input [1:0]arb_gnt_i;
  input \busy_r_reg[0]_0 ;
  input aclk;
  input \busy_r_reg[0]_1 ;

  wire aclk;
  wire [1:0]arb_gnt_i;
  wire \busy_r[1]_i_2_n_0 ;
  wire \busy_r_reg[0]_0 ;
  wire \busy_r_reg[0]_1 ;
  wire \busy_r_reg[1]_0 ;
  wire [1:0]\gen_tdest_router.busy_r ;

  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \arb_gnt_r[0]_i_3 
       (.I0(\gen_tdest_router.busy_r [1]),
        .I1(arb_gnt_i[1]),
        .I2(\gen_tdest_router.busy_r [0]),
        .I3(arb_gnt_i[0]),
        .O(\busy_r_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \busy_r[1]_i_2 
       (.I0(\gen_tdest_router.busy_r [1]),
        .I1(arb_gnt_i[1]),
        .O(\busy_r[1]_i_2_n_0 ));
  FDRE \busy_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\busy_r_reg[0]_1 ),
        .Q(\gen_tdest_router.busy_r [0]),
        .R(\busy_r_reg[0]_0 ));
  FDRE \busy_r_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\busy_r[1]_i_2_n_0 ),
        .Q(\gen_tdest_router.busy_r [1]),
        .R(\busy_r_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_29_axisc_decoder" *) 
module kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axisc_decoder
   (\gen_tdest_routing.busy_r_reg[0]_0 ,
    s_decode_err,
    s_axis_tready,
    areset,
    \gen_tdest_routing.busy_ns ,
    aclk,
    s_axis_tdest,
    s_axis_tvalid,
    s_axis_tready_0_sp_1,
    m_axis_tready,
    \gen_tdest_router.busy_r ,
    arb_gnt_i);
  output \gen_tdest_routing.busy_r_reg[0]_0 ;
  output [0:0]s_decode_err;
  output [0:0]s_axis_tready;
  input areset;
  input \gen_tdest_routing.busy_ns ;
  input aclk;
  input [2:0]s_axis_tdest;
  input [0:0]s_axis_tvalid;
  input s_axis_tready_0_sp_1;
  input [0:0]m_axis_tready;
  input [0:0]\gen_tdest_router.busy_r ;
  input [0:0]arb_gnt_i;

  wire aclk;
  wire [0:0]arb_gnt_i;
  wire areset;
  wire [0:0]\gen_tdest_router.busy_r ;
  wire \gen_tdest_routing.busy_ns ;
  wire \gen_tdest_routing.busy_r_reg[0]_0 ;
  wire \gen_tdest_routing.decode_err_r0 ;
  wire [0:0]m_axis_tready;
  wire [2:0]s_axis_tdest;
  wire [0:0]s_axis_tready;
  wire s_axis_tready_0_sn_1;
  wire [0:0]s_axis_tvalid;
  wire [0:0]s_decode_err;

  assign s_axis_tready_0_sn_1 = s_axis_tready_0_sp_1;
  FDRE \gen_tdest_routing.busy_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_tdest_routing.busy_ns ),
        .Q(\gen_tdest_routing.busy_r_reg[0]_0 ),
        .R(areset));
  LUT5 #(
    .INIT(32'h00008000)) 
    \gen_tdest_routing.decode_err_r_i_1__0 
       (.I0(s_axis_tdest[0]),
        .I1(s_axis_tdest[2]),
        .I2(s_axis_tdest[1]),
        .I3(s_axis_tvalid),
        .I4(s_decode_err),
        .O(\gen_tdest_routing.decode_err_r0 ));
  FDRE \gen_tdest_routing.decode_err_r_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_tdest_routing.decode_err_r0 ),
        .Q(s_decode_err),
        .R(areset));
  LUT5 #(
    .INIT(32'hBABABAAA)) 
    \s_axis_tready[0]_INST_0 
       (.I0(s_decode_err),
        .I1(s_axis_tready_0_sn_1),
        .I2(m_axis_tready),
        .I3(\gen_tdest_router.busy_r ),
        .I4(arb_gnt_i),
        .O(s_axis_tready));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_29_axisc_decoder" *) 
module kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axisc_decoder_0
   (s_decode_err,
    \gen_tdest_routing.busy_r_reg[0]_0 ,
    s_axis_tready,
    areset,
    aclk,
    \gen_tdest_routing.busy_ns ,
    s_axis_tdest,
    s_axis_tvalid,
    \s_axis_tready[1] ,
    m_axis_tready,
    \gen_tdest_router.busy_r ,
    arb_gnt_i);
  output [0:0]s_decode_err;
  output \gen_tdest_routing.busy_r_reg[0]_0 ;
  output [0:0]s_axis_tready;
  input areset;
  input aclk;
  input \gen_tdest_routing.busy_ns ;
  input [2:0]s_axis_tdest;
  input [0:0]s_axis_tvalid;
  input \s_axis_tready[1] ;
  input [0:0]m_axis_tready;
  input [0:0]\gen_tdest_router.busy_r ;
  input [0:0]arb_gnt_i;

  wire aclk;
  wire [0:0]arb_gnt_i;
  wire areset;
  wire [0:0]\gen_tdest_router.busy_r ;
  wire \gen_tdest_routing.busy_ns ;
  wire \gen_tdest_routing.busy_r_reg[0]_0 ;
  wire \gen_tdest_routing.decode_err_r0 ;
  wire [0:0]m_axis_tready;
  wire [2:0]s_axis_tdest;
  wire [0:0]s_axis_tready;
  wire \s_axis_tready[1] ;
  wire [0:0]s_axis_tvalid;
  wire [0:0]s_decode_err;

  FDRE \gen_tdest_routing.busy_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_tdest_routing.busy_ns ),
        .Q(\gen_tdest_routing.busy_r_reg[0]_0 ),
        .R(areset));
  LUT5 #(
    .INIT(32'h00008000)) 
    \gen_tdest_routing.decode_err_r_i_1 
       (.I0(s_axis_tdest[0]),
        .I1(s_axis_tdest[2]),
        .I2(s_axis_tdest[1]),
        .I3(s_axis_tvalid),
        .I4(s_decode_err),
        .O(\gen_tdest_routing.decode_err_r0 ));
  FDRE \gen_tdest_routing.decode_err_r_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_tdest_routing.decode_err_r0 ),
        .Q(s_decode_err),
        .R(areset));
  LUT5 #(
    .INIT(32'hBABABAAA)) 
    \s_axis_tready[1]_INST_0 
       (.I0(s_decode_err),
        .I1(\s_axis_tready[1] ),
        .I2(m_axis_tready),
        .I3(\gen_tdest_router.busy_r ),
        .I4(arb_gnt_i),
        .O(s_axis_tready));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_29_axisc_transfer_mux" *) 
module kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axisc_transfer_mux
   (\gen_tdest_router.busy_r ,
    \busy_r_reg[1] ,
    arb_gnt_i,
    \busy_r_reg[0] ,
    aclk,
    \busy_r_reg[0]_0 );
  output [1:0]\gen_tdest_router.busy_r ;
  output \busy_r_reg[1] ;
  input [1:0]arb_gnt_i;
  input \busy_r_reg[0] ;
  input aclk;
  input \busy_r_reg[0]_0 ;

  wire aclk;
  wire [1:0]arb_gnt_i;
  wire \busy_r_reg[0] ;
  wire \busy_r_reg[0]_0 ;
  wire \busy_r_reg[1] ;
  wire [1:0]\gen_tdest_router.busy_r ;

  kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axisc_arb_responder \gen_tdest_router.axisc_arb_responder 
       (.aclk(aclk),
        .arb_gnt_i(arb_gnt_i),
        .\busy_r_reg[0]_0 (\busy_r_reg[0] ),
        .\busy_r_reg[0]_1 (\busy_r_reg[0]_0 ),
        .\busy_r_reg[1]_0 (\busy_r_reg[1] ),
        .\gen_tdest_router.busy_r (\gen_tdest_router.busy_r ));
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
