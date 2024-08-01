-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Sat Jul 27 11:17:44 2024
-- Host        : N running 64-bit Ubuntu 24.04 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /media/p4/Xilinx/kria-vitis-platforms/kr260/platforms/vivado/kr260_tsn_rs485pmod/project/kr260_tsn_rs485pmod.gen/sources_1/bd/kr260_tsn_rs485pmod/ip/kr260_tsn_rs485pmod_and_last_valid_0/kr260_tsn_rs485pmod_and_last_valid_0_sim_netlist.vhdl
-- Design      : kr260_tsn_rs485pmod_and_last_valid_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xck26-sfvc784-2LV-c
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity kr260_tsn_rs485pmod_and_last_valid_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Op2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of kr260_tsn_rs485pmod_and_last_valid_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of kr260_tsn_rs485pmod_and_last_valid_0 : entity is "kr260_tsn_rs485pmod_and_last_valid_0,util_vector_logic_v2_0_3_util_vector_logic,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of kr260_tsn_rs485pmod_and_last_valid_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of kr260_tsn_rs485pmod_and_last_valid_0 : entity is "util_vector_logic_v2_0_3_util_vector_logic,Vivado 2023.2";
end kr260_tsn_rs485pmod_and_last_valid_0;

architecture STRUCTURE of kr260_tsn_rs485pmod_and_last_valid_0 is
begin
\Res[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Op1(0),
      I1 => Op2(0),
      O => Res(0)
    );
end STRUCTURE;
