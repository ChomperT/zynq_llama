-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Sat Jul 27 11:17:47 2024
-- Host        : N running 64-bit Ubuntu 24.04 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /media/p4/Xilinx/kria-vitis-platforms/kr260/platforms/vivado/kr260_tsn_rs485pmod/project/kr260_tsn_rs485pmod.gen/sources_1/bd/kr260_tsn_rs485pmod/ip/kr260_tsn_rs485pmod_axis_switch_0_0/kr260_tsn_rs485pmod_axis_switch_0_0_sim_netlist.vhdl
-- Design      : kr260_tsn_rs485pmod_axis_switch_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xck26-sfvc784-2LV-c
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_arb_rr is
  port (
    s_axis_tdest_3_sp_1 : out STD_LOGIC;
    \arb_gnt_r_reg[1]_0\ : out STD_LOGIC;
    s_axis_tdest_0_sp_1 : out STD_LOGIC;
    \arb_gnt_r_reg[0]_0\ : out STD_LOGIC;
    \gen_tdest_routing.busy_ns\ : out STD_LOGIC;
    \gen_tdest_routing.busy_ns_0\ : out STD_LOGIC;
    areset_reg : out STD_LOGIC;
    \arb_gnt_r_reg[0]_1\ : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    arb_busy_r_reg_0 : in STD_LOGIC;
    aclk : in STD_LOGIC;
    \gen_tdest_routing.busy_r_reg[0]\ : in STD_LOGIC;
    s_req_suppress : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_tdest_routing.busy_r_reg[0]_0\ : in STD_LOGIC;
    \arb_gnt_r_reg[0]_2\ : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_tdest_router.busy_r\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tlast : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_arb_rr : entity is "axis_switch_v1_1_29_arb_rr";
end kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_arb_rr;

architecture STRUCTURE of kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_arb_rr is
  signal arb_busy_r : STD_LOGIC;
  signal arb_busy_r_i_1_n_0 : STD_LOGIC;
  signal \arb_gnt_r[0]_i_1_n_0\ : STD_LOGIC;
  signal \arb_gnt_r[0]_i_2_n_0\ : STD_LOGIC;
  signal \arb_gnt_r[1]_i_1_n_0\ : STD_LOGIC;
  signal \arb_gnt_r[1]_i_2_n_0\ : STD_LOGIC;
  signal \arb_gnt_r[1]_i_3_n_0\ : STD_LOGIC;
  signal \^arb_gnt_r_reg[0]_0\ : STD_LOGIC;
  signal \^arb_gnt_r_reg[0]_1\ : STD_LOGIC;
  signal \^arb_gnt_r_reg[1]_0\ : STD_LOGIC;
  signal arb_sel_i : STD_LOGIC;
  signal \arb_sel_r[0]_i_1_n_0\ : STD_LOGIC;
  signal \busy_r[1]_i_3_n_0\ : STD_LOGIC;
  signal \busy_r[1]_i_4_n_0\ : STD_LOGIC;
  signal s_axis_tdest_0_sn_1 : STD_LOGIC;
  signal s_axis_tdest_3_sn_1 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \arb_gnt_r[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \arb_gnt_r[1]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \arb_gnt_r[1]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \busy_r[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \gen_tdest_routing.busy_r[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \gen_tdest_routing.busy_r[0]_i_1__0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \m_axis_tdata[0]_INST_0\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \m_axis_tdata[10]_INST_0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \m_axis_tdata[11]_INST_0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \m_axis_tdata[12]_INST_0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \m_axis_tdata[13]_INST_0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \m_axis_tdata[14]_INST_0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \m_axis_tdata[15]_INST_0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \m_axis_tdata[16]_INST_0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \m_axis_tdata[17]_INST_0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \m_axis_tdata[18]_INST_0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \m_axis_tdata[19]_INST_0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \m_axis_tdata[1]_INST_0\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \m_axis_tdata[20]_INST_0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \m_axis_tdata[21]_INST_0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \m_axis_tdata[22]_INST_0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \m_axis_tdata[23]_INST_0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \m_axis_tdata[24]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \m_axis_tdata[25]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \m_axis_tdata[26]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \m_axis_tdata[27]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \m_axis_tdata[28]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \m_axis_tdata[29]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \m_axis_tdata[2]_INST_0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \m_axis_tdata[30]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \m_axis_tdata[31]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \m_axis_tdata[3]_INST_0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \m_axis_tdata[4]_INST_0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \m_axis_tdata[5]_INST_0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \m_axis_tdata[6]_INST_0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \m_axis_tdata[7]_INST_0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \m_axis_tdata[8]_INST_0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \m_axis_tdata[9]_INST_0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \m_axis_tdest[0]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \m_axis_tdest[1]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \m_axis_tdest[2]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \m_axis_tkeep[0]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \m_axis_tkeep[1]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \m_axis_tkeep[2]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \m_axis_tkeep[3]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \m_axis_tlast[0]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \m_axis_tuser[0]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \m_axis_tuser[10]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \m_axis_tuser[11]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \m_axis_tuser[12]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \m_axis_tuser[13]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \m_axis_tuser[14]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \m_axis_tuser[15]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \m_axis_tuser[16]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \m_axis_tuser[17]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \m_axis_tuser[18]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \m_axis_tuser[19]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \m_axis_tuser[1]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \m_axis_tuser[20]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \m_axis_tuser[21]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \m_axis_tuser[22]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \m_axis_tuser[23]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \m_axis_tuser[24]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \m_axis_tuser[25]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \m_axis_tuser[26]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \m_axis_tuser[27]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \m_axis_tuser[28]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \m_axis_tuser[29]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \m_axis_tuser[2]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \m_axis_tuser[30]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \m_axis_tuser[31]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \m_axis_tuser[3]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \m_axis_tuser[4]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \m_axis_tuser[5]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \m_axis_tuser[6]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \m_axis_tuser[7]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \m_axis_tuser[8]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \m_axis_tuser[9]_INST_0\ : label is "soft_lutpair14";
begin
  \arb_gnt_r_reg[0]_0\ <= \^arb_gnt_r_reg[0]_0\;
  \arb_gnt_r_reg[0]_1\ <= \^arb_gnt_r_reg[0]_1\;
  \arb_gnt_r_reg[1]_0\ <= \^arb_gnt_r_reg[1]_0\;
  s_axis_tdest_0_sp_1 <= s_axis_tdest_0_sn_1;
  s_axis_tdest_3_sp_1 <= s_axis_tdest_3_sn_1;
arb_busy_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001FFFFFFFFFFFF"
    )
        port map (
      I0 => s_axis_tdest_3_sn_1,
      I1 => \^arb_gnt_r_reg[1]_0\,
      I2 => \gen_tdest_routing.busy_r_reg[0]\,
      I3 => s_req_suppress(1),
      I4 => \arb_gnt_r[1]_i_2_n_0\,
      I5 => \arb_gnt_r[0]_i_2_n_0\,
      O => arb_busy_r_i_1_n_0
    );
arb_busy_r_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => arb_busy_r_i_1_n_0,
      Q => arb_busy_r,
      R => arb_busy_r_reg_0
    );
\arb_gnt_r[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \arb_gnt_r[0]_i_2_n_0\,
      I1 => s_axis_tdest_0_sn_1,
      I2 => \^arb_gnt_r_reg[0]_0\,
      I3 => \gen_tdest_routing.busy_r_reg[0]_0\,
      I4 => s_req_suppress(0),
      I5 => arb_busy_r_reg_0,
      O => \arb_gnt_r[0]_i_1_n_0\
    );
\arb_gnt_r[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01510000FFFFFFFF"
    )
        port map (
      I0 => \arb_gnt_r_reg[0]_2\,
      I1 => s_axis_tdest_0_sn_1,
      I2 => arb_sel_i,
      I3 => s_axis_tdest_3_sn_1,
      I4 => m_axis_tready(0),
      I5 => arb_busy_r,
      O => \arb_gnt_r[0]_i_2_n_0\
    );
\arb_gnt_r[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000D0"
    )
        port map (
      I0 => arb_busy_r,
      I1 => \busy_r[1]_i_3_n_0\,
      I2 => \arb_gnt_r[1]_i_2_n_0\,
      I3 => \arb_gnt_r[1]_i_3_n_0\,
      I4 => arb_busy_r_reg_0,
      O => \arb_gnt_r[1]_i_1_n_0\
    );
\arb_gnt_r[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => s_axis_tdest_0_sn_1,
      I1 => \^arb_gnt_r_reg[0]_0\,
      I2 => \gen_tdest_routing.busy_r_reg[0]_0\,
      I3 => s_req_suppress(0),
      O => \arb_gnt_r[1]_i_2_n_0\
    );
\arb_gnt_r[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => s_axis_tdest_3_sn_1,
      I1 => \^arb_gnt_r_reg[1]_0\,
      I2 => \gen_tdest_routing.busy_r_reg[0]\,
      I3 => s_req_suppress(1),
      O => \arb_gnt_r[1]_i_3_n_0\
    );
\arb_gnt_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \arb_gnt_r[0]_i_1_n_0\,
      Q => \^arb_gnt_r_reg[0]_0\,
      R => '0'
    );
\arb_gnt_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \arb_gnt_r[1]_i_1_n_0\,
      Q => \^arb_gnt_r_reg[1]_0\,
      R => '0'
    );
\arb_sel_r[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFC4404"
    )
        port map (
      I0 => \arb_gnt_r[1]_i_3_n_0\,
      I1 => \arb_gnt_r[1]_i_2_n_0\,
      I2 => arb_busy_r,
      I3 => \busy_r[1]_i_3_n_0\,
      I4 => arb_sel_i,
      O => \arb_sel_r[0]_i_1_n_0\
    );
\arb_sel_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \arb_sel_r[0]_i_1_n_0\,
      Q => arb_sel_i,
      R => arb_busy_r_reg_0
    );
\busy_r[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => arb_busy_r_reg_0,
      I1 => \busy_r[1]_i_3_n_0\,
      O => areset_reg
    );
\busy_r[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"202A202A0000202A"
    )
        port map (
      I0 => m_axis_tready(0),
      I1 => s_axis_tdest_3_sn_1,
      I2 => arb_sel_i,
      I3 => s_axis_tdest_0_sn_1,
      I4 => \busy_r[1]_i_4_n_0\,
      I5 => \^arb_gnt_r_reg[0]_1\,
      O => \busy_r[1]_i_3_n_0\
    );
\busy_r[1]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^arb_gnt_r_reg[1]_0\,
      I1 => \gen_tdest_router.busy_r\(1),
      O => \busy_r[1]_i_4_n_0\
    );
\gen_tdest_routing.busy_r[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \gen_tdest_routing.busy_r_reg[0]\,
      I1 => \^arb_gnt_r_reg[1]_0\,
      I2 => \busy_r[1]_i_3_n_0\,
      O => \gen_tdest_routing.busy_ns\
    );
\gen_tdest_routing.busy_r[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \gen_tdest_routing.busy_r_reg[0]_0\,
      I1 => \^arb_gnt_r_reg[0]_0\,
      I2 => \busy_r[1]_i_3_n_0\,
      O => \gen_tdest_routing.busy_ns_0\
    );
\m_axis_tdata[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_tdata(32),
      I1 => arb_sel_i,
      I2 => s_axis_tdata(0),
      O => m_axis_tdata(0)
    );
\m_axis_tdata[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_tdata(42),
      I1 => arb_sel_i,
      I2 => s_axis_tdata(10),
      O => m_axis_tdata(10)
    );
\m_axis_tdata[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_tdata(43),
      I1 => arb_sel_i,
      I2 => s_axis_tdata(11),
      O => m_axis_tdata(11)
    );
\m_axis_tdata[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_tdata(44),
      I1 => arb_sel_i,
      I2 => s_axis_tdata(12),
      O => m_axis_tdata(12)
    );
\m_axis_tdata[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_tdata(45),
      I1 => arb_sel_i,
      I2 => s_axis_tdata(13),
      O => m_axis_tdata(13)
    );
\m_axis_tdata[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_tdata(46),
      I1 => arb_sel_i,
      I2 => s_axis_tdata(14),
      O => m_axis_tdata(14)
    );
\m_axis_tdata[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_tdata(47),
      I1 => arb_sel_i,
      I2 => s_axis_tdata(15),
      O => m_axis_tdata(15)
    );
\m_axis_tdata[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_tdata(48),
      I1 => arb_sel_i,
      I2 => s_axis_tdata(16),
      O => m_axis_tdata(16)
    );
\m_axis_tdata[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_tdata(49),
      I1 => arb_sel_i,
      I2 => s_axis_tdata(17),
      O => m_axis_tdata(17)
    );
\m_axis_tdata[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_tdata(50),
      I1 => arb_sel_i,
      I2 => s_axis_tdata(18),
      O => m_axis_tdata(18)
    );
\m_axis_tdata[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_tdata(51),
      I1 => arb_sel_i,
      I2 => s_axis_tdata(19),
      O => m_axis_tdata(19)
    );
\m_axis_tdata[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_tdata(33),
      I1 => arb_sel_i,
      I2 => s_axis_tdata(1),
      O => m_axis_tdata(1)
    );
\m_axis_tdata[20]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_tdata(52),
      I1 => arb_sel_i,
      I2 => s_axis_tdata(20),
      O => m_axis_tdata(20)
    );
\m_axis_tdata[21]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_tdata(53),
      I1 => arb_sel_i,
      I2 => s_axis_tdata(21),
      O => m_axis_tdata(21)
    );
\m_axis_tdata[22]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_tdata(54),
      I1 => arb_sel_i,
      I2 => s_axis_tdata(22),
      O => m_axis_tdata(22)
    );
\m_axis_tdata[23]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_tdata(55),
      I1 => arb_sel_i,
      I2 => s_axis_tdata(23),
      O => m_axis_tdata(23)
    );
\m_axis_tdata[24]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_tdata(56),
      I1 => arb_sel_i,
      I2 => s_axis_tdata(24),
      O => m_axis_tdata(24)
    );
\m_axis_tdata[25]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_tdata(57),
      I1 => arb_sel_i,
      I2 => s_axis_tdata(25),
      O => m_axis_tdata(25)
    );
\m_axis_tdata[26]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_tdata(58),
      I1 => arb_sel_i,
      I2 => s_axis_tdata(26),
      O => m_axis_tdata(26)
    );
\m_axis_tdata[27]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_tdata(59),
      I1 => arb_sel_i,
      I2 => s_axis_tdata(27),
      O => m_axis_tdata(27)
    );
\m_axis_tdata[28]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_tdata(60),
      I1 => arb_sel_i,
      I2 => s_axis_tdata(28),
      O => m_axis_tdata(28)
    );
\m_axis_tdata[29]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_tdata(61),
      I1 => arb_sel_i,
      I2 => s_axis_tdata(29),
      O => m_axis_tdata(29)
    );
\m_axis_tdata[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_tdata(34),
      I1 => arb_sel_i,
      I2 => s_axis_tdata(2),
      O => m_axis_tdata(2)
    );
\m_axis_tdata[30]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_tdata(62),
      I1 => arb_sel_i,
      I2 => s_axis_tdata(30),
      O => m_axis_tdata(30)
    );
\m_axis_tdata[31]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_tdata(63),
      I1 => arb_sel_i,
      I2 => s_axis_tdata(31),
      O => m_axis_tdata(31)
    );
\m_axis_tdata[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_tdata(35),
      I1 => arb_sel_i,
      I2 => s_axis_tdata(3),
      O => m_axis_tdata(3)
    );
\m_axis_tdata[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_tdata(36),
      I1 => arb_sel_i,
      I2 => s_axis_tdata(4),
      O => m_axis_tdata(4)
    );
\m_axis_tdata[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_tdata(37),
      I1 => arb_sel_i,
      I2 => s_axis_tdata(5),
      O => m_axis_tdata(5)
    );
\m_axis_tdata[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_tdata(38),
      I1 => arb_sel_i,
      I2 => s_axis_tdata(6),
      O => m_axis_tdata(6)
    );
\m_axis_tdata[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_tdata(39),
      I1 => arb_sel_i,
      I2 => s_axis_tdata(7),
      O => m_axis_tdata(7)
    );
\m_axis_tdata[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_tdata(40),
      I1 => arb_sel_i,
      I2 => s_axis_tdata(8),
      O => m_axis_tdata(8)
    );
\m_axis_tdata[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_tdata(41),
      I1 => arb_sel_i,
      I2 => s_axis_tdata(9),
      O => m_axis_tdata(9)
    );
\m_axis_tdest[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_tdest(3),
      I1 => arb_sel_i,
      I2 => s_axis_tdest(0),
      O => m_axis_tdest(0)
    );
\m_axis_tdest[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_tdest(4),
      I1 => arb_sel_i,
      I2 => s_axis_tdest(1),
      O => m_axis_tdest(1)
    );
\m_axis_tdest[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_tdest(5),
      I1 => arb_sel_i,
      I2 => s_axis_tdest(2),
      O => m_axis_tdest(2)
    );
\m_axis_tkeep[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_tkeep(4),
      I1 => arb_sel_i,
      I2 => s_axis_tkeep(0),
      O => m_axis_tkeep(0)
    );
\m_axis_tkeep[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_tkeep(5),
      I1 => arb_sel_i,
      I2 => s_axis_tkeep(1),
      O => m_axis_tkeep(1)
    );
\m_axis_tkeep[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_tkeep(6),
      I1 => arb_sel_i,
      I2 => s_axis_tkeep(2),
      O => m_axis_tkeep(2)
    );
\m_axis_tkeep[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_tkeep(7),
      I1 => arb_sel_i,
      I2 => s_axis_tkeep(3),
      O => m_axis_tkeep(3)
    );
\m_axis_tlast[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_tlast(1),
      I1 => arb_sel_i,
      I2 => s_axis_tlast(0),
      O => m_axis_tlast(0)
    );
\m_axis_tuser[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_tuser(32),
      I1 => arb_sel_i,
      I2 => s_axis_tuser(0),
      O => m_axis_tuser(0)
    );
\m_axis_tuser[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_tuser(42),
      I1 => arb_sel_i,
      I2 => s_axis_tuser(10),
      O => m_axis_tuser(10)
    );
\m_axis_tuser[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_tuser(43),
      I1 => arb_sel_i,
      I2 => s_axis_tuser(11),
      O => m_axis_tuser(11)
    );
\m_axis_tuser[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_tuser(44),
      I1 => arb_sel_i,
      I2 => s_axis_tuser(12),
      O => m_axis_tuser(12)
    );
\m_axis_tuser[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_tuser(45),
      I1 => arb_sel_i,
      I2 => s_axis_tuser(13),
      O => m_axis_tuser(13)
    );
\m_axis_tuser[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_tuser(46),
      I1 => arb_sel_i,
      I2 => s_axis_tuser(14),
      O => m_axis_tuser(14)
    );
\m_axis_tuser[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_tuser(47),
      I1 => arb_sel_i,
      I2 => s_axis_tuser(15),
      O => m_axis_tuser(15)
    );
\m_axis_tuser[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_tuser(48),
      I1 => arb_sel_i,
      I2 => s_axis_tuser(16),
      O => m_axis_tuser(16)
    );
\m_axis_tuser[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_tuser(49),
      I1 => arb_sel_i,
      I2 => s_axis_tuser(17),
      O => m_axis_tuser(17)
    );
\m_axis_tuser[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_tuser(50),
      I1 => arb_sel_i,
      I2 => s_axis_tuser(18),
      O => m_axis_tuser(18)
    );
\m_axis_tuser[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_tuser(51),
      I1 => arb_sel_i,
      I2 => s_axis_tuser(19),
      O => m_axis_tuser(19)
    );
\m_axis_tuser[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_tuser(33),
      I1 => arb_sel_i,
      I2 => s_axis_tuser(1),
      O => m_axis_tuser(1)
    );
\m_axis_tuser[20]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_tuser(52),
      I1 => arb_sel_i,
      I2 => s_axis_tuser(20),
      O => m_axis_tuser(20)
    );
\m_axis_tuser[21]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_tuser(53),
      I1 => arb_sel_i,
      I2 => s_axis_tuser(21),
      O => m_axis_tuser(21)
    );
\m_axis_tuser[22]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_tuser(54),
      I1 => arb_sel_i,
      I2 => s_axis_tuser(22),
      O => m_axis_tuser(22)
    );
\m_axis_tuser[23]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_tuser(55),
      I1 => arb_sel_i,
      I2 => s_axis_tuser(23),
      O => m_axis_tuser(23)
    );
\m_axis_tuser[24]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_tuser(56),
      I1 => arb_sel_i,
      I2 => s_axis_tuser(24),
      O => m_axis_tuser(24)
    );
\m_axis_tuser[25]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_tuser(57),
      I1 => arb_sel_i,
      I2 => s_axis_tuser(25),
      O => m_axis_tuser(25)
    );
\m_axis_tuser[26]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_tuser(58),
      I1 => arb_sel_i,
      I2 => s_axis_tuser(26),
      O => m_axis_tuser(26)
    );
\m_axis_tuser[27]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_tuser(59),
      I1 => arb_sel_i,
      I2 => s_axis_tuser(27),
      O => m_axis_tuser(27)
    );
\m_axis_tuser[28]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_tuser(60),
      I1 => arb_sel_i,
      I2 => s_axis_tuser(28),
      O => m_axis_tuser(28)
    );
\m_axis_tuser[29]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_tuser(61),
      I1 => arb_sel_i,
      I2 => s_axis_tuser(29),
      O => m_axis_tuser(29)
    );
\m_axis_tuser[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_tuser(34),
      I1 => arb_sel_i,
      I2 => s_axis_tuser(2),
      O => m_axis_tuser(2)
    );
\m_axis_tuser[30]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_tuser(62),
      I1 => arb_sel_i,
      I2 => s_axis_tuser(30),
      O => m_axis_tuser(30)
    );
\m_axis_tuser[31]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_tuser(63),
      I1 => arb_sel_i,
      I2 => s_axis_tuser(31),
      O => m_axis_tuser(31)
    );
\m_axis_tuser[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_tuser(35),
      I1 => arb_sel_i,
      I2 => s_axis_tuser(3),
      O => m_axis_tuser(3)
    );
\m_axis_tuser[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_tuser(36),
      I1 => arb_sel_i,
      I2 => s_axis_tuser(4),
      O => m_axis_tuser(4)
    );
\m_axis_tuser[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_tuser(37),
      I1 => arb_sel_i,
      I2 => s_axis_tuser(5),
      O => m_axis_tuser(5)
    );
\m_axis_tuser[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_tuser(38),
      I1 => arb_sel_i,
      I2 => s_axis_tuser(6),
      O => m_axis_tuser(6)
    );
\m_axis_tuser[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_tuser(39),
      I1 => arb_sel_i,
      I2 => s_axis_tuser(7),
      O => m_axis_tuser(7)
    );
\m_axis_tuser[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_tuser(40),
      I1 => arb_sel_i,
      I2 => s_axis_tuser(8),
      O => m_axis_tuser(8)
    );
\m_axis_tuser[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_tuser(41),
      I1 => arb_sel_i,
      I2 => s_axis_tuser(9),
      O => m_axis_tuser(9)
    );
\m_axis_tvalid[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000FEFEFE00FE"
    )
        port map (
      I0 => \^arb_gnt_r_reg[0]_1\,
      I1 => \^arb_gnt_r_reg[1]_0\,
      I2 => \gen_tdest_router.busy_r\(1),
      I3 => s_axis_tdest_0_sn_1,
      I4 => arb_sel_i,
      I5 => s_axis_tdest_3_sn_1,
      O => m_axis_tvalid(0)
    );
\m_axis_tvalid[0]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^arb_gnt_r_reg[0]_0\,
      I1 => \gen_tdest_router.busy_r\(0),
      O => \^arb_gnt_r_reg[0]_1\
    );
\s_axis_tready[0]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80FF"
    )
        port map (
      I0 => s_axis_tdest(0),
      I1 => s_axis_tdest(2),
      I2 => s_axis_tdest(1),
      I3 => s_axis_tvalid(0),
      O => s_axis_tdest_0_sn_1
    );
\s_axis_tready[1]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80FF"
    )
        port map (
      I0 => s_axis_tdest(3),
      I1 => s_axis_tdest(5),
      I2 => s_axis_tdest(4),
      I3 => s_axis_tvalid(1),
      O => s_axis_tdest_3_sn_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axisc_arb_responder is
  port (
    \gen_tdest_router.busy_r\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \busy_r_reg[1]_0\ : out STD_LOGIC;
    arb_gnt_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \busy_r_reg[0]_0\ : in STD_LOGIC;
    aclk : in STD_LOGIC;
    \busy_r_reg[0]_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axisc_arb_responder : entity is "axis_switch_v1_1_29_axisc_arb_responder";
end kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axisc_arb_responder;

architecture STRUCTURE of kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axisc_arb_responder is
  signal \busy_r[1]_i_2_n_0\ : STD_LOGIC;
  signal \^gen_tdest_router.busy_r\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \arb_gnt_r[0]_i_3\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \busy_r[1]_i_2\ : label is "soft_lutpair39";
begin
  \gen_tdest_router.busy_r\(1 downto 0) <= \^gen_tdest_router.busy_r\(1 downto 0);
\arb_gnt_r[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^gen_tdest_router.busy_r\(1),
      I1 => arb_gnt_i(1),
      I2 => \^gen_tdest_router.busy_r\(0),
      I3 => arb_gnt_i(0),
      O => \busy_r_reg[1]_0\
    );
\busy_r[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^gen_tdest_router.busy_r\(1),
      I1 => arb_gnt_i(1),
      O => \busy_r[1]_i_2_n_0\
    );
\busy_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \busy_r_reg[0]_1\,
      Q => \^gen_tdest_router.busy_r\(0),
      R => \busy_r_reg[0]_0\
    );
\busy_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \busy_r[1]_i_2_n_0\,
      Q => \^gen_tdest_router.busy_r\(1),
      R => \busy_r_reg[0]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axisc_decoder is
  port (
    \gen_tdest_routing.busy_r_reg[0]_0\ : out STD_LOGIC;
    s_decode_err : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tready : out STD_LOGIC_VECTOR ( 0 to 0 );
    areset : in STD_LOGIC;
    \gen_tdest_routing.busy_ns\ : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axis_tdest : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tready_0_sp_1 : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_tdest_router.busy_r\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    arb_gnt_i : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axisc_decoder : entity is "axis_switch_v1_1_29_axisc_decoder";
end kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axisc_decoder;

architecture STRUCTURE of kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axisc_decoder is
  signal \gen_tdest_routing.decode_err_r0\ : STD_LOGIC;
  signal s_axis_tready_0_sn_1 : STD_LOGIC;
  signal \^s_decode_err\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  s_axis_tready_0_sn_1 <= s_axis_tready_0_sp_1;
  s_decode_err(0) <= \^s_decode_err\(0);
\gen_tdest_routing.busy_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_tdest_routing.busy_ns\,
      Q => \gen_tdest_routing.busy_r_reg[0]_0\,
      R => areset
    );
\gen_tdest_routing.decode_err_r_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => s_axis_tdest(0),
      I1 => s_axis_tdest(2),
      I2 => s_axis_tdest(1),
      I3 => s_axis_tvalid(0),
      I4 => \^s_decode_err\(0),
      O => \gen_tdest_routing.decode_err_r0\
    );
\gen_tdest_routing.decode_err_r_reg\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_tdest_routing.decode_err_r0\,
      Q => \^s_decode_err\(0),
      R => areset
    );
\s_axis_tready[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABABAAA"
    )
        port map (
      I0 => \^s_decode_err\(0),
      I1 => s_axis_tready_0_sn_1,
      I2 => m_axis_tready(0),
      I3 => \gen_tdest_router.busy_r\(0),
      I4 => arb_gnt_i(0),
      O => s_axis_tready(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axisc_decoder_0 is
  port (
    s_decode_err : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_tdest_routing.busy_r_reg[0]_0\ : out STD_LOGIC;
    s_axis_tready : out STD_LOGIC_VECTOR ( 0 to 0 );
    areset : in STD_LOGIC;
    aclk : in STD_LOGIC;
    \gen_tdest_routing.busy_ns\ : in STD_LOGIC;
    s_axis_tdest : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axis_tready[1]\ : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_tdest_router.busy_r\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    arb_gnt_i : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axisc_decoder_0 : entity is "axis_switch_v1_1_29_axisc_decoder";
end kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axisc_decoder_0;

architecture STRUCTURE of kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axisc_decoder_0 is
  signal \gen_tdest_routing.decode_err_r0\ : STD_LOGIC;
  signal \^s_decode_err\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  s_decode_err(0) <= \^s_decode_err\(0);
\gen_tdest_routing.busy_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_tdest_routing.busy_ns\,
      Q => \gen_tdest_routing.busy_r_reg[0]_0\,
      R => areset
    );
\gen_tdest_routing.decode_err_r_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => s_axis_tdest(0),
      I1 => s_axis_tdest(2),
      I2 => s_axis_tdest(1),
      I3 => s_axis_tvalid(0),
      I4 => \^s_decode_err\(0),
      O => \gen_tdest_routing.decode_err_r0\
    );
\gen_tdest_routing.decode_err_r_reg\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_tdest_routing.decode_err_r0\,
      Q => \^s_decode_err\(0),
      R => areset
    );
\s_axis_tready[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABABAAA"
    )
        port map (
      I0 => \^s_decode_err\(0),
      I1 => \s_axis_tready[1]\,
      I2 => m_axis_tready(0),
      I3 => \gen_tdest_router.busy_r\(0),
      I4 => arb_gnt_i(0),
      O => s_axis_tready(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axis_switch_arbiter is
  port (
    areset : out STD_LOGIC;
    s_axis_tdest_3_sp_1 : out STD_LOGIC;
    arb_gnt_i : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tdest_0_sp_1 : out STD_LOGIC;
    \gen_tdest_routing.busy_ns\ : out STD_LOGIC;
    \gen_tdest_routing.busy_ns_0\ : out STD_LOGIC;
    areset_reg_0 : out STD_LOGIC;
    \arb_gnt_r_reg[0]\ : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    aclk : in STD_LOGIC;
    \gen_tdest_routing.busy_r_reg[0]\ : in STD_LOGIC;
    s_req_suppress : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_tdest_routing.busy_r_reg[0]_0\ : in STD_LOGIC;
    \arb_gnt_r_reg[0]_0\ : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_tdest_router.busy_r\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tlast : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axis_switch_arbiter : entity is "axis_switch_v1_1_29_axis_switch_arbiter";
end kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axis_switch_arbiter;

architecture STRUCTURE of kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axis_switch_arbiter is
  signal \^areset\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal s_axis_tdest_0_sn_1 : STD_LOGIC;
  signal s_axis_tdest_3_sn_1 : STD_LOGIC;
begin
  areset <= \^areset\;
  s_axis_tdest_0_sp_1 <= s_axis_tdest_0_sn_1;
  s_axis_tdest_3_sp_1 <= s_axis_tdest_3_sn_1;
areset_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => p_0_in
    );
areset_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => p_0_in,
      Q => \^areset\,
      R => '0'
    );
\gen_mi_arb[0].gen_arb_algorithm.gen_fixed_priority.inst_arb_rr_1\: entity work.kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_arb_rr
     port map (
      aclk => aclk,
      arb_busy_r_reg_0 => \^areset\,
      \arb_gnt_r_reg[0]_0\ => arb_gnt_i(0),
      \arb_gnt_r_reg[0]_1\ => \arb_gnt_r_reg[0]\,
      \arb_gnt_r_reg[0]_2\ => \arb_gnt_r_reg[0]_0\,
      \arb_gnt_r_reg[1]_0\ => arb_gnt_i(1),
      areset_reg => areset_reg_0,
      \gen_tdest_router.busy_r\(1 downto 0) => \gen_tdest_router.busy_r\(1 downto 0),
      \gen_tdest_routing.busy_ns\ => \gen_tdest_routing.busy_ns\,
      \gen_tdest_routing.busy_ns_0\ => \gen_tdest_routing.busy_ns_0\,
      \gen_tdest_routing.busy_r_reg[0]\ => \gen_tdest_routing.busy_r_reg[0]\,
      \gen_tdest_routing.busy_r_reg[0]_0\ => \gen_tdest_routing.busy_r_reg[0]_0\,
      m_axis_tdata(31 downto 0) => m_axis_tdata(31 downto 0),
      m_axis_tdest(2 downto 0) => m_axis_tdest(2 downto 0),
      m_axis_tkeep(3 downto 0) => m_axis_tkeep(3 downto 0),
      m_axis_tlast(0) => m_axis_tlast(0),
      m_axis_tready(0) => m_axis_tready(0),
      m_axis_tuser(31 downto 0) => m_axis_tuser(31 downto 0),
      m_axis_tvalid(0) => m_axis_tvalid(0),
      s_axis_tdata(63 downto 0) => s_axis_tdata(63 downto 0),
      s_axis_tdest(5 downto 0) => s_axis_tdest(5 downto 0),
      s_axis_tdest_0_sp_1 => s_axis_tdest_0_sn_1,
      s_axis_tdest_3_sp_1 => s_axis_tdest_3_sn_1,
      s_axis_tkeep(7 downto 0) => s_axis_tkeep(7 downto 0),
      s_axis_tlast(1 downto 0) => s_axis_tlast(1 downto 0),
      s_axis_tuser(63 downto 0) => s_axis_tuser(63 downto 0),
      s_axis_tvalid(1 downto 0) => s_axis_tvalid(1 downto 0),
      s_req_suppress(1 downto 0) => s_req_suppress(1 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axisc_transfer_mux is
  port (
    \gen_tdest_router.busy_r\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \busy_r_reg[1]\ : out STD_LOGIC;
    arb_gnt_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \busy_r_reg[0]\ : in STD_LOGIC;
    aclk : in STD_LOGIC;
    \busy_r_reg[0]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axisc_transfer_mux : entity is "axis_switch_v1_1_29_axisc_transfer_mux";
end kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axisc_transfer_mux;

architecture STRUCTURE of kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axisc_transfer_mux is
begin
\gen_tdest_router.axisc_arb_responder\: entity work.kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axisc_arb_responder
     port map (
      aclk => aclk,
      arb_gnt_i(1 downto 0) => arb_gnt_i(1 downto 0),
      \busy_r_reg[0]_0\ => \busy_r_reg[0]\,
      \busy_r_reg[0]_1\ => \busy_r_reg[0]_0\,
      \busy_r_reg[1]_0\ => \busy_r_reg[1]\,
      \gen_tdest_router.busy_r\(1 downto 0) => \gen_tdest_router.busy_r\(1 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axis_switch is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    aclken : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tlast : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 31 downto 0 );
    arb_req : out STD_LOGIC_VECTOR ( 1 downto 0 );
    arb_done : out STD_LOGIC_VECTOR ( 0 to 0 );
    arb_gnt : in STD_LOGIC_VECTOR ( 1 downto 0 );
    arb_sel : in STD_LOGIC_VECTOR ( 0 to 0 );
    arb_last : out STD_LOGIC_VECTOR ( 1 downto 0 );
    arb_id : out STD_LOGIC_VECTOR ( 1 downto 0 );
    arb_dest : out STD_LOGIC_VECTOR ( 5 downto 0 );
    arb_user : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_req_suppress : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_aclk : in STD_LOGIC;
    s_axi_ctrl_aresetn : in STD_LOGIC;
    s_axi_ctrl_awvalid : in STD_LOGIC;
    s_axi_ctrl_awready : out STD_LOGIC;
    s_axi_ctrl_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_ctrl_wvalid : in STD_LOGIC;
    s_axi_ctrl_wready : out STD_LOGIC;
    s_axi_ctrl_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_bvalid : out STD_LOGIC;
    s_axi_ctrl_bready : in STD_LOGIC;
    s_axi_ctrl_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_arvalid : in STD_LOGIC;
    s_axi_ctrl_arready : out STD_LOGIC;
    s_axi_ctrl_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_ctrl_rvalid : out STD_LOGIC;
    s_axi_ctrl_rready : in STD_LOGIC;
    s_axi_ctrl_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_decode_err : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute C_ARB_ALGORITHM : integer;
  attribute C_ARB_ALGORITHM of kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axis_switch : entity is 1;
  attribute C_ARB_ON_MAX_XFERS : integer;
  attribute C_ARB_ON_MAX_XFERS of kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axis_switch : entity is 1;
  attribute C_ARB_ON_NUM_CYCLES : integer;
  attribute C_ARB_ON_NUM_CYCLES of kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axis_switch : entity is 0;
  attribute C_ARB_ON_TLAST : integer;
  attribute C_ARB_ON_TLAST of kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axis_switch : entity is 1;
  attribute C_AXIS_SIGNAL_SET : integer;
  attribute C_AXIS_SIGNAL_SET of kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axis_switch : entity is 219;
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axis_switch : entity is 32;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axis_switch : entity is 3;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axis_switch : entity is 1;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axis_switch : entity is 32;
  attribute C_COMMON_CLOCK : integer;
  attribute C_COMMON_CLOCK of kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axis_switch : entity is 0;
  attribute C_DECODER_REG : integer;
  attribute C_DECODER_REG of kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axis_switch : entity is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axis_switch : entity is "zynquplus";
  attribute C_INCLUDE_ARBITER : integer;
  attribute C_INCLUDE_ARBITER of kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axis_switch : entity is 1;
  attribute C_LOG_SI_SLOTS : integer;
  attribute C_LOG_SI_SLOTS of kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axis_switch : entity is 1;
  attribute C_M_AXIS_BASETDEST_ARRAY : string;
  attribute C_M_AXIS_BASETDEST_ARRAY of kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axis_switch : entity is "3'b000";
  attribute C_M_AXIS_CONNECTIVITY_ARRAY : string;
  attribute C_M_AXIS_CONNECTIVITY_ARRAY of kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axis_switch : entity is "2'b11";
  attribute C_M_AXIS_HIGHTDEST_ARRAY : string;
  attribute C_M_AXIS_HIGHTDEST_ARRAY of kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axis_switch : entity is "3'b110";
  attribute C_NUM_MI_SLOTS : integer;
  attribute C_NUM_MI_SLOTS of kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axis_switch : entity is 1;
  attribute C_NUM_SI_SLOTS : integer;
  attribute C_NUM_SI_SLOTS of kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axis_switch : entity is 2;
  attribute C_OUTPUT_REG : integer;
  attribute C_OUTPUT_REG of kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axis_switch : entity is 0;
  attribute C_ROUTING_MODE : integer;
  attribute C_ROUTING_MODE of kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axis_switch : entity is 0;
  attribute C_S_AXI_CTRL_ADDR_WIDTH : integer;
  attribute C_S_AXI_CTRL_ADDR_WIDTH of kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axis_switch : entity is 7;
  attribute C_S_AXI_CTRL_DATA_WIDTH : integer;
  attribute C_S_AXI_CTRL_DATA_WIDTH of kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axis_switch : entity is 32;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axis_switch : entity is "yes";
  attribute G_INDX_SS_TDATA : integer;
  attribute G_INDX_SS_TDATA of kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axis_switch : entity is 1;
  attribute G_INDX_SS_TDEST : integer;
  attribute G_INDX_SS_TDEST of kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axis_switch : entity is 6;
  attribute G_INDX_SS_TID : integer;
  attribute G_INDX_SS_TID of kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axis_switch : entity is 5;
  attribute G_INDX_SS_TKEEP : integer;
  attribute G_INDX_SS_TKEEP of kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axis_switch : entity is 3;
  attribute G_INDX_SS_TLAST : integer;
  attribute G_INDX_SS_TLAST of kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axis_switch : entity is 4;
  attribute G_INDX_SS_TREADY : integer;
  attribute G_INDX_SS_TREADY of kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axis_switch : entity is 0;
  attribute G_INDX_SS_TSTRB : integer;
  attribute G_INDX_SS_TSTRB of kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axis_switch : entity is 2;
  attribute G_INDX_SS_TUSER : integer;
  attribute G_INDX_SS_TUSER of kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axis_switch : entity is 7;
  attribute G_MASK_SS_TDATA : integer;
  attribute G_MASK_SS_TDATA of kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axis_switch : entity is 2;
  attribute G_MASK_SS_TDEST : integer;
  attribute G_MASK_SS_TDEST of kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axis_switch : entity is 64;
  attribute G_MASK_SS_TID : integer;
  attribute G_MASK_SS_TID of kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axis_switch : entity is 32;
  attribute G_MASK_SS_TKEEP : integer;
  attribute G_MASK_SS_TKEEP of kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axis_switch : entity is 8;
  attribute G_MASK_SS_TLAST : integer;
  attribute G_MASK_SS_TLAST of kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axis_switch : entity is 16;
  attribute G_MASK_SS_TREADY : integer;
  attribute G_MASK_SS_TREADY of kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axis_switch : entity is 1;
  attribute G_MASK_SS_TSTRB : integer;
  attribute G_MASK_SS_TSTRB of kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axis_switch : entity is 4;
  attribute G_MASK_SS_TUSER : integer;
  attribute G_MASK_SS_TUSER of kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axis_switch : entity is 128;
  attribute G_TASK_SEVERITY_ERR : integer;
  attribute G_TASK_SEVERITY_ERR of kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axis_switch : entity is 2;
  attribute G_TASK_SEVERITY_INFO : integer;
  attribute G_TASK_SEVERITY_INFO of kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axis_switch : entity is 0;
  attribute G_TASK_SEVERITY_WARNING : integer;
  attribute G_TASK_SEVERITY_WARNING of kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axis_switch : entity is 1;
  attribute LP_CTRL_REG_WIDTH : integer;
  attribute LP_CTRL_REG_WIDTH of kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axis_switch : entity is 15;
  attribute LP_MERGEDOWN_MUX : integer;
  attribute LP_MERGEDOWN_MUX of kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axis_switch : entity is 0;
  attribute LP_NUM_SYNCHRONIZER_STAGES : integer;
  attribute LP_NUM_SYNCHRONIZER_STAGES of kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axis_switch : entity is 4;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axis_switch : entity is "axis_switch_v1_1_29_axis_switch";
  attribute P_DECODER_CONNECTIVITY_ARRAY : string;
  attribute P_DECODER_CONNECTIVITY_ARRAY of kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axis_switch : entity is "2'b11";
  attribute P_SINGLE_SLAVE_CONNECTIVITY_ARRAY : string;
  attribute P_SINGLE_SLAVE_CONNECTIVITY_ARRAY of kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axis_switch : entity is "1'b0";
  attribute P_TPAYLOAD_WIDTH : integer;
  attribute P_TPAYLOAD_WIDTH of kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axis_switch : entity is 72;
end kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axis_switch;

architecture STRUCTURE of kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axis_switch is
  signal \<const0>\ : STD_LOGIC;
  signal arb_gnt_i : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal areset : STD_LOGIC;
  signal \gen_decoder[0].axisc_decoder_0_n_0\ : STD_LOGIC;
  signal \gen_decoder[1].axisc_decoder_0_n_1\ : STD_LOGIC;
  signal \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_1\ : STD_LOGIC;
  signal \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_4\ : STD_LOGIC;
  signal \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_7\ : STD_LOGIC;
  signal \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_8\ : STD_LOGIC;
  signal \gen_tdest_router.busy_r\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_tdest_routing.busy_ns\ : STD_LOGIC;
  signal \gen_tdest_routing.busy_ns_0\ : STD_LOGIC;
  signal \gen_transfer_mux[0].axisc_transfer_mux_0_n_2\ : STD_LOGIC;
begin
  arb_dest(5) <= \<const0>\;
  arb_dest(4) <= \<const0>\;
  arb_dest(3) <= \<const0>\;
  arb_dest(2) <= \<const0>\;
  arb_dest(1) <= \<const0>\;
  arb_dest(0) <= \<const0>\;
  arb_done(0) <= \<const0>\;
  arb_id(1) <= \<const0>\;
  arb_id(0) <= \<const0>\;
  arb_last(1) <= \<const0>\;
  arb_last(0) <= \<const0>\;
  arb_req(1) <= \<const0>\;
  arb_req(0) <= \<const0>\;
  arb_user(63) <= \<const0>\;
  arb_user(62) <= \<const0>\;
  arb_user(61) <= \<const0>\;
  arb_user(60) <= \<const0>\;
  arb_user(59) <= \<const0>\;
  arb_user(58) <= \<const0>\;
  arb_user(57) <= \<const0>\;
  arb_user(56) <= \<const0>\;
  arb_user(55) <= \<const0>\;
  arb_user(54) <= \<const0>\;
  arb_user(53) <= \<const0>\;
  arb_user(52) <= \<const0>\;
  arb_user(51) <= \<const0>\;
  arb_user(50) <= \<const0>\;
  arb_user(49) <= \<const0>\;
  arb_user(48) <= \<const0>\;
  arb_user(47) <= \<const0>\;
  arb_user(46) <= \<const0>\;
  arb_user(45) <= \<const0>\;
  arb_user(44) <= \<const0>\;
  arb_user(43) <= \<const0>\;
  arb_user(42) <= \<const0>\;
  arb_user(41) <= \<const0>\;
  arb_user(40) <= \<const0>\;
  arb_user(39) <= \<const0>\;
  arb_user(38) <= \<const0>\;
  arb_user(37) <= \<const0>\;
  arb_user(36) <= \<const0>\;
  arb_user(35) <= \<const0>\;
  arb_user(34) <= \<const0>\;
  arb_user(33) <= \<const0>\;
  arb_user(32) <= \<const0>\;
  arb_user(31) <= \<const0>\;
  arb_user(30) <= \<const0>\;
  arb_user(29) <= \<const0>\;
  arb_user(28) <= \<const0>\;
  arb_user(27) <= \<const0>\;
  arb_user(26) <= \<const0>\;
  arb_user(25) <= \<const0>\;
  arb_user(24) <= \<const0>\;
  arb_user(23) <= \<const0>\;
  arb_user(22) <= \<const0>\;
  arb_user(21) <= \<const0>\;
  arb_user(20) <= \<const0>\;
  arb_user(19) <= \<const0>\;
  arb_user(18) <= \<const0>\;
  arb_user(17) <= \<const0>\;
  arb_user(16) <= \<const0>\;
  arb_user(15) <= \<const0>\;
  arb_user(14) <= \<const0>\;
  arb_user(13) <= \<const0>\;
  arb_user(12) <= \<const0>\;
  arb_user(11) <= \<const0>\;
  arb_user(10) <= \<const0>\;
  arb_user(9) <= \<const0>\;
  arb_user(8) <= \<const0>\;
  arb_user(7) <= \<const0>\;
  arb_user(6) <= \<const0>\;
  arb_user(5) <= \<const0>\;
  arb_user(4) <= \<const0>\;
  arb_user(3) <= \<const0>\;
  arb_user(2) <= \<const0>\;
  arb_user(1) <= \<const0>\;
  arb_user(0) <= \<const0>\;
  m_axis_tid(0) <= \<const0>\;
  m_axis_tstrb(3) <= \<const0>\;
  m_axis_tstrb(2) <= \<const0>\;
  m_axis_tstrb(1) <= \<const0>\;
  m_axis_tstrb(0) <= \<const0>\;
  s_axi_ctrl_arready <= \<const0>\;
  s_axi_ctrl_awready <= \<const0>\;
  s_axi_ctrl_bresp(1) <= \<const0>\;
  s_axi_ctrl_bresp(0) <= \<const0>\;
  s_axi_ctrl_bvalid <= \<const0>\;
  s_axi_ctrl_rdata(31) <= \<const0>\;
  s_axi_ctrl_rdata(30) <= \<const0>\;
  s_axi_ctrl_rdata(29) <= \<const0>\;
  s_axi_ctrl_rdata(28) <= \<const0>\;
  s_axi_ctrl_rdata(27) <= \<const0>\;
  s_axi_ctrl_rdata(26) <= \<const0>\;
  s_axi_ctrl_rdata(25) <= \<const0>\;
  s_axi_ctrl_rdata(24) <= \<const0>\;
  s_axi_ctrl_rdata(23) <= \<const0>\;
  s_axi_ctrl_rdata(22) <= \<const0>\;
  s_axi_ctrl_rdata(21) <= \<const0>\;
  s_axi_ctrl_rdata(20) <= \<const0>\;
  s_axi_ctrl_rdata(19) <= \<const0>\;
  s_axi_ctrl_rdata(18) <= \<const0>\;
  s_axi_ctrl_rdata(17) <= \<const0>\;
  s_axi_ctrl_rdata(16) <= \<const0>\;
  s_axi_ctrl_rdata(15) <= \<const0>\;
  s_axi_ctrl_rdata(14) <= \<const0>\;
  s_axi_ctrl_rdata(13) <= \<const0>\;
  s_axi_ctrl_rdata(12) <= \<const0>\;
  s_axi_ctrl_rdata(11) <= \<const0>\;
  s_axi_ctrl_rdata(10) <= \<const0>\;
  s_axi_ctrl_rdata(9) <= \<const0>\;
  s_axi_ctrl_rdata(8) <= \<const0>\;
  s_axi_ctrl_rdata(7) <= \<const0>\;
  s_axi_ctrl_rdata(6) <= \<const0>\;
  s_axi_ctrl_rdata(5) <= \<const0>\;
  s_axi_ctrl_rdata(4) <= \<const0>\;
  s_axi_ctrl_rdata(3) <= \<const0>\;
  s_axi_ctrl_rdata(2) <= \<const0>\;
  s_axi_ctrl_rdata(1) <= \<const0>\;
  s_axi_ctrl_rdata(0) <= \<const0>\;
  s_axi_ctrl_rresp(1) <= \<const0>\;
  s_axi_ctrl_rresp(0) <= \<const0>\;
  s_axi_ctrl_rvalid <= \<const0>\;
  s_axi_ctrl_wready <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_decoder[0].axisc_decoder_0\: entity work.kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axisc_decoder
     port map (
      aclk => aclk,
      arb_gnt_i(0) => arb_gnt_i(0),
      areset => areset,
      \gen_tdest_router.busy_r\(0) => \gen_tdest_router.busy_r\(0),
      \gen_tdest_routing.busy_ns\ => \gen_tdest_routing.busy_ns\,
      \gen_tdest_routing.busy_r_reg[0]_0\ => \gen_decoder[0].axisc_decoder_0_n_0\,
      m_axis_tready(0) => m_axis_tready(0),
      s_axis_tdest(2 downto 0) => s_axis_tdest(2 downto 0),
      s_axis_tready(0) => s_axis_tready(0),
      s_axis_tready_0_sp_1 => \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_4\,
      s_axis_tvalid(0) => s_axis_tvalid(0),
      s_decode_err(0) => s_decode_err(0)
    );
\gen_decoder[1].axisc_decoder_0\: entity work.kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axisc_decoder_0
     port map (
      aclk => aclk,
      arb_gnt_i(0) => arb_gnt_i(1),
      areset => areset,
      \gen_tdest_router.busy_r\(0) => \gen_tdest_router.busy_r\(1),
      \gen_tdest_routing.busy_ns\ => \gen_tdest_routing.busy_ns_0\,
      \gen_tdest_routing.busy_r_reg[0]_0\ => \gen_decoder[1].axisc_decoder_0_n_1\,
      m_axis_tready(0) => m_axis_tready(0),
      s_axis_tdest(2 downto 0) => s_axis_tdest(5 downto 3),
      s_axis_tready(0) => s_axis_tready(1),
      \s_axis_tready[1]\ => \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_1\,
      s_axis_tvalid(0) => s_axis_tvalid(1),
      s_decode_err(0) => s_decode_err(1)
    );
\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter\: entity work.kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axis_switch_arbiter
     port map (
      aclk => aclk,
      arb_gnt_i(1 downto 0) => arb_gnt_i(1 downto 0),
      \arb_gnt_r_reg[0]\ => \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_8\,
      \arb_gnt_r_reg[0]_0\ => \gen_transfer_mux[0].axisc_transfer_mux_0_n_2\,
      areset => areset,
      areset_reg_0 => \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_7\,
      aresetn => aresetn,
      \gen_tdest_router.busy_r\(1 downto 0) => \gen_tdest_router.busy_r\(1 downto 0),
      \gen_tdest_routing.busy_ns\ => \gen_tdest_routing.busy_ns_0\,
      \gen_tdest_routing.busy_ns_0\ => \gen_tdest_routing.busy_ns\,
      \gen_tdest_routing.busy_r_reg[0]\ => \gen_decoder[1].axisc_decoder_0_n_1\,
      \gen_tdest_routing.busy_r_reg[0]_0\ => \gen_decoder[0].axisc_decoder_0_n_0\,
      m_axis_tdata(31 downto 0) => m_axis_tdata(31 downto 0),
      m_axis_tdest(2 downto 0) => m_axis_tdest(2 downto 0),
      m_axis_tkeep(3 downto 0) => m_axis_tkeep(3 downto 0),
      m_axis_tlast(0) => m_axis_tlast(0),
      m_axis_tready(0) => m_axis_tready(0),
      m_axis_tuser(31 downto 0) => m_axis_tuser(31 downto 0),
      m_axis_tvalid(0) => m_axis_tvalid(0),
      s_axis_tdata(63 downto 0) => s_axis_tdata(63 downto 0),
      s_axis_tdest(5 downto 0) => s_axis_tdest(5 downto 0),
      s_axis_tdest_0_sp_1 => \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_4\,
      s_axis_tdest_3_sp_1 => \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_1\,
      s_axis_tkeep(7 downto 0) => s_axis_tkeep(7 downto 0),
      s_axis_tlast(1 downto 0) => s_axis_tlast(1 downto 0),
      s_axis_tuser(63 downto 0) => s_axis_tuser(63 downto 0),
      s_axis_tvalid(1 downto 0) => s_axis_tvalid(1 downto 0),
      s_req_suppress(1 downto 0) => s_req_suppress(1 downto 0)
    );
\gen_transfer_mux[0].axisc_transfer_mux_0\: entity work.kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axisc_transfer_mux
     port map (
      aclk => aclk,
      arb_gnt_i(1 downto 0) => arb_gnt_i(1 downto 0),
      \busy_r_reg[0]\ => \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_7\,
      \busy_r_reg[0]_0\ => \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_8\,
      \busy_r_reg[1]\ => \gen_transfer_mux[0].axisc_transfer_mux_0_n_2\,
      \gen_tdest_router.busy_r\(1 downto 0) => \gen_tdest_router.busy_r\(1 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity kr260_tsn_rs485pmod_axis_switch_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tlast : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_req_suppress : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_decode_err : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of kr260_tsn_rs485pmod_axis_switch_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of kr260_tsn_rs485pmod_axis_switch_0_0 : entity is "kr260_tsn_rs485pmod_axis_switch_0_0,axis_switch_v1_1_29_axis_switch,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of kr260_tsn_rs485pmod_axis_switch_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of kr260_tsn_rs485pmod_axis_switch_0_0 : entity is "axis_switch_v1_1_29_axis_switch,Vivado 2023.2";
end kr260_tsn_rs485pmod_axis_switch_0_0;

architecture STRUCTURE of kr260_tsn_rs485pmod_axis_switch_0_0 is
  signal NLW_inst_s_axi_ctrl_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_s_axi_ctrl_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_s_axi_ctrl_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_s_axi_ctrl_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_s_axi_ctrl_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_arb_dest_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_inst_arb_done_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_arb_id_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_arb_last_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_arb_req_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_arb_user_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_inst_m_axis_tid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axis_tstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_s_axi_ctrl_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_s_axi_ctrl_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_inst_s_axi_ctrl_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_ARB_ALGORITHM : integer;
  attribute C_ARB_ALGORITHM of inst : label is 1;
  attribute C_ARB_ON_MAX_XFERS : integer;
  attribute C_ARB_ON_MAX_XFERS of inst : label is 1;
  attribute C_ARB_ON_NUM_CYCLES : integer;
  attribute C_ARB_ON_NUM_CYCLES of inst : label is 0;
  attribute C_ARB_ON_TLAST : integer;
  attribute C_ARB_ON_TLAST of inst : label is 1;
  attribute C_AXIS_SIGNAL_SET : integer;
  attribute C_AXIS_SIGNAL_SET of inst : label is 219;
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of inst : label is 32;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of inst : label is 3;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of inst : label is 1;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of inst : label is 32;
  attribute C_COMMON_CLOCK : integer;
  attribute C_COMMON_CLOCK of inst : label is 0;
  attribute C_DECODER_REG : integer;
  attribute C_DECODER_REG of inst : label is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of inst : label is "zynquplus";
  attribute C_INCLUDE_ARBITER : integer;
  attribute C_INCLUDE_ARBITER of inst : label is 1;
  attribute C_LOG_SI_SLOTS : integer;
  attribute C_LOG_SI_SLOTS of inst : label is 1;
  attribute C_M_AXIS_BASETDEST_ARRAY : string;
  attribute C_M_AXIS_BASETDEST_ARRAY of inst : label is "3'b000";
  attribute C_M_AXIS_CONNECTIVITY_ARRAY : string;
  attribute C_M_AXIS_CONNECTIVITY_ARRAY of inst : label is "2'b11";
  attribute C_M_AXIS_HIGHTDEST_ARRAY : string;
  attribute C_M_AXIS_HIGHTDEST_ARRAY of inst : label is "3'b110";
  attribute C_NUM_MI_SLOTS : integer;
  attribute C_NUM_MI_SLOTS of inst : label is 1;
  attribute C_NUM_SI_SLOTS : integer;
  attribute C_NUM_SI_SLOTS of inst : label is 2;
  attribute C_OUTPUT_REG : integer;
  attribute C_OUTPUT_REG of inst : label is 0;
  attribute C_ROUTING_MODE : integer;
  attribute C_ROUTING_MODE of inst : label is 0;
  attribute C_S_AXI_CTRL_ADDR_WIDTH : integer;
  attribute C_S_AXI_CTRL_ADDR_WIDTH of inst : label is 7;
  attribute C_S_AXI_CTRL_DATA_WIDTH : integer;
  attribute C_S_AXI_CTRL_DATA_WIDTH of inst : label is 32;
  attribute DowngradeIPIdentifiedWarnings of inst : label is "yes";
  attribute G_INDX_SS_TDATA : integer;
  attribute G_INDX_SS_TDATA of inst : label is 1;
  attribute G_INDX_SS_TDEST : integer;
  attribute G_INDX_SS_TDEST of inst : label is 6;
  attribute G_INDX_SS_TID : integer;
  attribute G_INDX_SS_TID of inst : label is 5;
  attribute G_INDX_SS_TKEEP : integer;
  attribute G_INDX_SS_TKEEP of inst : label is 3;
  attribute G_INDX_SS_TLAST : integer;
  attribute G_INDX_SS_TLAST of inst : label is 4;
  attribute G_INDX_SS_TREADY : integer;
  attribute G_INDX_SS_TREADY of inst : label is 0;
  attribute G_INDX_SS_TSTRB : integer;
  attribute G_INDX_SS_TSTRB of inst : label is 2;
  attribute G_INDX_SS_TUSER : integer;
  attribute G_INDX_SS_TUSER of inst : label is 7;
  attribute G_MASK_SS_TDATA : integer;
  attribute G_MASK_SS_TDATA of inst : label is 2;
  attribute G_MASK_SS_TDEST : integer;
  attribute G_MASK_SS_TDEST of inst : label is 64;
  attribute G_MASK_SS_TID : integer;
  attribute G_MASK_SS_TID of inst : label is 32;
  attribute G_MASK_SS_TKEEP : integer;
  attribute G_MASK_SS_TKEEP of inst : label is 8;
  attribute G_MASK_SS_TLAST : integer;
  attribute G_MASK_SS_TLAST of inst : label is 16;
  attribute G_MASK_SS_TREADY : integer;
  attribute G_MASK_SS_TREADY of inst : label is 1;
  attribute G_MASK_SS_TSTRB : integer;
  attribute G_MASK_SS_TSTRB of inst : label is 4;
  attribute G_MASK_SS_TUSER : integer;
  attribute G_MASK_SS_TUSER of inst : label is 128;
  attribute G_TASK_SEVERITY_ERR : integer;
  attribute G_TASK_SEVERITY_ERR of inst : label is 2;
  attribute G_TASK_SEVERITY_INFO : integer;
  attribute G_TASK_SEVERITY_INFO of inst : label is 0;
  attribute G_TASK_SEVERITY_WARNING : integer;
  attribute G_TASK_SEVERITY_WARNING of inst : label is 1;
  attribute LP_CTRL_REG_WIDTH : integer;
  attribute LP_CTRL_REG_WIDTH of inst : label is 15;
  attribute LP_MERGEDOWN_MUX : integer;
  attribute LP_MERGEDOWN_MUX of inst : label is 0;
  attribute LP_NUM_SYNCHRONIZER_STAGES : integer;
  attribute LP_NUM_SYNCHRONIZER_STAGES of inst : label is 4;
  attribute P_DECODER_CONNECTIVITY_ARRAY : string;
  attribute P_DECODER_CONNECTIVITY_ARRAY of inst : label is "2'b11";
  attribute P_SINGLE_SLAVE_CONNECTIVITY_ARRAY : string;
  attribute P_SINGLE_SLAVE_CONNECTIVITY_ARRAY of inst : label is "1'b0";
  attribute P_TPAYLOAD_WIDTH : integer;
  attribute P_TPAYLOAD_WIDTH of inst : label is 72;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 CLKIF CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME CLKIF, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN kr260_tsn_rs485pmod_clk_wiz_0_0_clk_out1, ASSOCIATED_BUSIF M00_AXIS:M01_AXIS:M02_AXIS:M03_AXIS:M04_AXIS:M05_AXIS:M06_AXIS:M07_AXIS:M08_AXIS:M09_AXIS:M10_AXIS:M11_AXIS:M12_AXIS:M13_AXIS:M14_AXIS:M15_AXIS:S00_AXIS:S01_AXIS:S02_AXIS:S03_AXIS:S04_AXIS:S05_AXIS:S06_AXIS:S07_AXIS:S08_AXIS:S09_AXIS:S10_AXIS:S11_AXIS:S12_AXIS:S13_AXIS:S14_AXIS:S15_AXIS, ASSOCIATED_RESET aresetn, INSERT_VIP 0, ASSOCIATED_CLKEN aclken";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 RSTIF RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME RSTIF, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT";
  attribute X_INTERFACE_INFO of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TDATA";
  attribute X_INTERFACE_INFO of m_axis_tdest : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TDEST";
  attribute X_INTERFACE_INFO of m_axis_tkeep : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TKEEP";
  attribute X_INTERFACE_INFO of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TLAST";
  attribute X_INTERFACE_INFO of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TREADY";
  attribute X_INTERFACE_INFO of m_axis_tuser : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TUSER";
  attribute X_INTERFACE_PARAMETER of m_axis_tuser : signal is "XIL_INTERFACENAME M00_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 3, TID_WIDTH 0, TUSER_WIDTH 32, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN kr260_tsn_rs485pmod_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TVALID";
  attribute X_INTERFACE_INFO of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TDATA [31:0] [31:0], xilinx.com:interface:axis:1.0 S01_AXIS TDATA [31:0] [63:32]";
  attribute X_INTERFACE_INFO of s_axis_tdest : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TDEST [2:0] [2:0], xilinx.com:interface:axis:1.0 S01_AXIS TDEST [2:0] [5:3]";
  attribute X_INTERFACE_INFO of s_axis_tkeep : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TKEEP [3:0] [3:0], xilinx.com:interface:axis:1.0 S01_AXIS TKEEP [3:0] [7:4]";
  attribute X_INTERFACE_INFO of s_axis_tlast : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TLAST [0:0] [0:0], xilinx.com:interface:axis:1.0 S01_AXIS TLAST [0:0] [1:1]";
  attribute X_INTERFACE_INFO of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TREADY [0:0] [0:0], xilinx.com:interface:axis:1.0 S01_AXIS TREADY [0:0] [1:1]";
  attribute X_INTERFACE_INFO of s_axis_tuser : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TUSER [31:0] [31:0], xilinx.com:interface:axis:1.0 S01_AXIS TUSER [31:0] [63:32]";
  attribute X_INTERFACE_PARAMETER of s_axis_tuser : signal is "XIL_INTERFACENAME S00_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 3, TID_WIDTH 0, TUSER_WIDTH 32, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN kr260_tsn_rs485pmod_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0, XIL_INTERFACENAME S01_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 3, TID_WIDTH 0, TUSER_WIDTH 32, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN kr260_tsn_rs485pmod_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TVALID [0:0] [0:0], xilinx.com:interface:axis:1.0 S01_AXIS TVALID [0:0] [1:1]";
begin
inst: entity work.kr260_tsn_rs485pmod_axis_switch_0_0_axis_switch_v1_1_29_axis_switch
     port map (
      aclk => aclk,
      aclken => '1',
      arb_dest(5 downto 0) => NLW_inst_arb_dest_UNCONNECTED(5 downto 0),
      arb_done(0) => NLW_inst_arb_done_UNCONNECTED(0),
      arb_gnt(1 downto 0) => B"00",
      arb_id(1 downto 0) => NLW_inst_arb_id_UNCONNECTED(1 downto 0),
      arb_last(1 downto 0) => NLW_inst_arb_last_UNCONNECTED(1 downto 0),
      arb_req(1 downto 0) => NLW_inst_arb_req_UNCONNECTED(1 downto 0),
      arb_sel(0) => '0',
      arb_user(63 downto 0) => NLW_inst_arb_user_UNCONNECTED(63 downto 0),
      aresetn => aresetn,
      m_axis_tdata(31 downto 0) => m_axis_tdata(31 downto 0),
      m_axis_tdest(2 downto 0) => m_axis_tdest(2 downto 0),
      m_axis_tid(0) => NLW_inst_m_axis_tid_UNCONNECTED(0),
      m_axis_tkeep(3 downto 0) => m_axis_tkeep(3 downto 0),
      m_axis_tlast(0) => m_axis_tlast(0),
      m_axis_tready(0) => m_axis_tready(0),
      m_axis_tstrb(3 downto 0) => NLW_inst_m_axis_tstrb_UNCONNECTED(3 downto 0),
      m_axis_tuser(31 downto 0) => m_axis_tuser(31 downto 0),
      m_axis_tvalid(0) => m_axis_tvalid(0),
      s_axi_ctrl_aclk => '0',
      s_axi_ctrl_araddr(6 downto 0) => B"0000000",
      s_axi_ctrl_aresetn => '0',
      s_axi_ctrl_arready => NLW_inst_s_axi_ctrl_arready_UNCONNECTED,
      s_axi_ctrl_arvalid => '0',
      s_axi_ctrl_awaddr(6 downto 0) => B"0000000",
      s_axi_ctrl_awready => NLW_inst_s_axi_ctrl_awready_UNCONNECTED,
      s_axi_ctrl_awvalid => '0',
      s_axi_ctrl_bready => '0',
      s_axi_ctrl_bresp(1 downto 0) => NLW_inst_s_axi_ctrl_bresp_UNCONNECTED(1 downto 0),
      s_axi_ctrl_bvalid => NLW_inst_s_axi_ctrl_bvalid_UNCONNECTED,
      s_axi_ctrl_rdata(31 downto 0) => NLW_inst_s_axi_ctrl_rdata_UNCONNECTED(31 downto 0),
      s_axi_ctrl_rready => '0',
      s_axi_ctrl_rresp(1 downto 0) => NLW_inst_s_axi_ctrl_rresp_UNCONNECTED(1 downto 0),
      s_axi_ctrl_rvalid => NLW_inst_s_axi_ctrl_rvalid_UNCONNECTED,
      s_axi_ctrl_wdata(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_ctrl_wready => NLW_inst_s_axi_ctrl_wready_UNCONNECTED,
      s_axi_ctrl_wvalid => '0',
      s_axis_tdata(63 downto 0) => s_axis_tdata(63 downto 0),
      s_axis_tdest(5 downto 0) => s_axis_tdest(5 downto 0),
      s_axis_tid(1 downto 0) => B"00",
      s_axis_tkeep(7 downto 0) => s_axis_tkeep(7 downto 0),
      s_axis_tlast(1 downto 0) => s_axis_tlast(1 downto 0),
      s_axis_tready(1 downto 0) => s_axis_tready(1 downto 0),
      s_axis_tstrb(7 downto 0) => B"11111111",
      s_axis_tuser(63 downto 0) => s_axis_tuser(63 downto 0),
      s_axis_tvalid(1 downto 0) => s_axis_tvalid(1 downto 0),
      s_decode_err(1 downto 0) => s_decode_err(1 downto 0),
      s_req_suppress(1 downto 0) => s_req_suppress(1 downto 0)
    );
end STRUCTURE;
