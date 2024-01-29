-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Tue Jan 16 12:01:55 2024
-- Host        : gegi-3014-bmwin running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/rosj2103/Downloads/pb_logique_seq/pb_logique_seq.gen/sources_1/bd/design_1/ip/design_1_mux2_0_0/design_1_mux2_0_0_sim_netlist.vhdl
-- Design      : design_1_mux2_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_mux2_0_0_mux2 is
  port (
    output0 : out STD_LOGIC_VECTOR ( 23 downto 0 );
    input1 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    sel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    input2 : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_mux2_0_0_mux2 : entity is "mux2";
end design_1_mux2_0_0_mux2;

architecture STRUCTURE of design_1_mux2_0_0_mux2 is
begin
\output0[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => input1(0),
      I1 => sel(0),
      I2 => sel(1),
      I3 => input2(0),
      O => output0(0)
    );
\output0[10]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => input1(10),
      I1 => sel(0),
      I2 => sel(1),
      I3 => input2(10),
      O => output0(10)
    );
\output0[11]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => input1(11),
      I1 => sel(0),
      I2 => sel(1),
      I3 => input2(11),
      O => output0(11)
    );
\output0[12]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => input1(12),
      I1 => sel(0),
      I2 => sel(1),
      I3 => input2(12),
      O => output0(12)
    );
\output0[13]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => input1(13),
      I1 => sel(0),
      I2 => sel(1),
      I3 => input2(13),
      O => output0(13)
    );
\output0[14]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => input1(14),
      I1 => sel(0),
      I2 => sel(1),
      I3 => input2(14),
      O => output0(14)
    );
\output0[15]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => input1(15),
      I1 => sel(0),
      I2 => sel(1),
      I3 => input2(15),
      O => output0(15)
    );
\output0[16]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => input1(16),
      I1 => sel(0),
      I2 => sel(1),
      I3 => input2(16),
      O => output0(16)
    );
\output0[17]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => input1(17),
      I1 => sel(0),
      I2 => sel(1),
      I3 => input2(17),
      O => output0(17)
    );
\output0[18]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => input1(18),
      I1 => sel(0),
      I2 => sel(1),
      I3 => input2(18),
      O => output0(18)
    );
\output0[19]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => input1(19),
      I1 => sel(0),
      I2 => sel(1),
      I3 => input2(19),
      O => output0(19)
    );
\output0[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => input1(1),
      I1 => sel(0),
      I2 => sel(1),
      I3 => input2(1),
      O => output0(1)
    );
\output0[20]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => input1(20),
      I1 => sel(0),
      I2 => sel(1),
      I3 => input2(20),
      O => output0(20)
    );
\output0[21]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => input1(21),
      I1 => sel(0),
      I2 => sel(1),
      I3 => input2(21),
      O => output0(21)
    );
\output0[22]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => input1(22),
      I1 => sel(0),
      I2 => sel(1),
      I3 => input2(22),
      O => output0(22)
    );
\output0[23]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => input1(23),
      I1 => sel(0),
      I2 => sel(1),
      I3 => input2(23),
      O => output0(23)
    );
\output0[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => input1(2),
      I1 => sel(0),
      I2 => sel(1),
      I3 => input2(2),
      O => output0(2)
    );
\output0[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => input1(3),
      I1 => sel(0),
      I2 => sel(1),
      I3 => input2(3),
      O => output0(3)
    );
\output0[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => input1(4),
      I1 => sel(0),
      I2 => sel(1),
      I3 => input2(4),
      O => output0(4)
    );
\output0[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => input1(5),
      I1 => sel(0),
      I2 => sel(1),
      I3 => input2(5),
      O => output0(5)
    );
\output0[6]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => input1(6),
      I1 => sel(0),
      I2 => sel(1),
      I3 => input2(6),
      O => output0(6)
    );
\output0[7]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => input1(7),
      I1 => sel(0),
      I2 => sel(1),
      I3 => input2(7),
      O => output0(7)
    );
\output0[8]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => input1(8),
      I1 => sel(0),
      I2 => sel(1),
      I3 => input2(8),
      O => output0(8)
    );
\output0[9]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => input1(9),
      I1 => sel(0),
      I2 => sel(1),
      I3 => input2(9),
      O => output0(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_mux2_0_0 is
  port (
    sel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    input1 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    input2 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    output0 : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_mux2_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_mux2_0_0 : entity is "design_1_mux2_0_0,mux2,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_mux2_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_mux2_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_mux2_0_0 : entity is "mux2,Vivado 2020.2";
end design_1_mux2_0_0;

architecture STRUCTURE of design_1_mux2_0_0 is
begin
U0: entity work.design_1_mux2_0_0_mux2
     port map (
      input1(23 downto 0) => input1(23 downto 0),
      input2(23 downto 0) => input2(23 downto 0),
      output0(23 downto 0) => output0(23 downto 0),
      sel(1 downto 0) => sel(1 downto 0)
    );
end STRUCTURE;
