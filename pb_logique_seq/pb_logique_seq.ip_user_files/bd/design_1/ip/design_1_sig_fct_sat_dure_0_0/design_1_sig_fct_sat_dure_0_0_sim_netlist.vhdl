-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Tue Jan 16 12:03:16 2024
-- Host        : gegi-3014-bmwin running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/rosj2103/Downloads/pb_logique_seq/pb_logique_seq.gen/sources_1/bd/design_1/ip/design_1_sig_fct_sat_dure_0_0/design_1_sig_fct_sat_dure_0_0_sim_netlist.vhdl
-- Design      : design_1_sig_fct_sat_dure_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_sig_fct_sat_dure_0_0 is
  port (
    i_ech : in STD_LOGIC_VECTOR ( 23 downto 0 );
    o_ech_fct : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_sig_fct_sat_dure_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_sig_fct_sat_dure_0_0 : entity is "design_1_sig_fct_sat_dure_0_0,sig_fct_sat_dure,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_sig_fct_sat_dure_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_sig_fct_sat_dure_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_sig_fct_sat_dure_0_0 : entity is "sig_fct_sat_dure,Vivado 2020.2";
end design_1_sig_fct_sat_dure_0_0;

architecture STRUCTURE of design_1_sig_fct_sat_dure_0_0 is
  signal \o_ech_fct[12]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \o_ech_fct[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o_ech_fct[12]_INST_0_i_1_n_1\ : STD_LOGIC;
  signal \o_ech_fct[12]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \o_ech_fct[12]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \o_ech_fct[12]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \o_ech_fct[12]_INST_0_i_6_n_1\ : STD_LOGIC;
  signal \o_ech_fct[12]_INST_0_i_6_n_2\ : STD_LOGIC;
  signal \o_ech_fct[12]_INST_0_i_6_n_3\ : STD_LOGIC;
  signal \o_ech_fct[12]_INST_0_i_6_n_4\ : STD_LOGIC;
  signal \o_ech_fct[12]_INST_0_i_6_n_5\ : STD_LOGIC;
  signal \o_ech_fct[12]_INST_0_i_6_n_6\ : STD_LOGIC;
  signal \o_ech_fct[12]_INST_0_i_6_n_7\ : STD_LOGIC;
  signal \o_ech_fct[12]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \o_ech_fct[12]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \o_ech_fct[12]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \o_ech_fct[16]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \o_ech_fct[16]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o_ech_fct[16]_INST_0_i_1_n_1\ : STD_LOGIC;
  signal \o_ech_fct[16]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \o_ech_fct[16]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \o_ech_fct[16]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \o_ech_fct[16]_INST_0_i_6_n_1\ : STD_LOGIC;
  signal \o_ech_fct[16]_INST_0_i_6_n_2\ : STD_LOGIC;
  signal \o_ech_fct[16]_INST_0_i_6_n_3\ : STD_LOGIC;
  signal \o_ech_fct[16]_INST_0_i_6_n_4\ : STD_LOGIC;
  signal \o_ech_fct[16]_INST_0_i_6_n_5\ : STD_LOGIC;
  signal \o_ech_fct[16]_INST_0_i_6_n_6\ : STD_LOGIC;
  signal \o_ech_fct[16]_INST_0_i_6_n_7\ : STD_LOGIC;
  signal \o_ech_fct[16]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \o_ech_fct[16]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \o_ech_fct[16]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \o_ech_fct[20]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o_ech_fct[20]_INST_0_i_1_n_1\ : STD_LOGIC;
  signal \o_ech_fct[20]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \o_ech_fct[20]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \o_ech_fct[22]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \o_ech_fct[22]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \o_ech_fct[22]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \o_ech_fct[22]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \o_ech_fct[22]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \o_ech_fct[22]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \o_ech_fct[22]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \o_ech_fct[22]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \o_ech_fct[22]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \o_ech_fct[22]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \o_ech_fct[22]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o_ech_fct[22]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \o_ech_fct[22]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o_ech_fct[22]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \o_ech_fct[22]_INST_0_i_4_n_2\ : STD_LOGIC;
  signal \o_ech_fct[22]_INST_0_i_4_n_3\ : STD_LOGIC;
  signal \o_ech_fct[22]_INST_0_i_4_n_5\ : STD_LOGIC;
  signal \o_ech_fct[22]_INST_0_i_4_n_6\ : STD_LOGIC;
  signal \o_ech_fct[22]_INST_0_i_4_n_7\ : STD_LOGIC;
  signal \o_ech_fct[22]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \o_ech_fct[22]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \o_ech_fct[22]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \o_ech_fct[22]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \o_ech_fct[22]_INST_0_i_8_n_1\ : STD_LOGIC;
  signal \o_ech_fct[22]_INST_0_i_8_n_2\ : STD_LOGIC;
  signal \o_ech_fct[22]_INST_0_i_8_n_3\ : STD_LOGIC;
  signal \o_ech_fct[22]_INST_0_i_8_n_4\ : STD_LOGIC;
  signal \o_ech_fct[22]_INST_0_i_8_n_5\ : STD_LOGIC;
  signal \o_ech_fct[22]_INST_0_i_8_n_6\ : STD_LOGIC;
  signal \o_ech_fct[22]_INST_0_i_8_n_7\ : STD_LOGIC;
  signal \o_ech_fct[22]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \o_ech_fct[23]_INST_0_i_1_n_1\ : STD_LOGIC;
  signal \o_ech_fct[23]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \o_ech_fct[4]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \o_ech_fct[4]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \o_ech_fct[4]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \o_ech_fct[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o_ech_fct[4]_INST_0_i_1_n_1\ : STD_LOGIC;
  signal \o_ech_fct[4]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \o_ech_fct[4]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \o_ech_fct[4]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \o_ech_fct[4]_INST_0_i_7_n_1\ : STD_LOGIC;
  signal \o_ech_fct[4]_INST_0_i_7_n_2\ : STD_LOGIC;
  signal \o_ech_fct[4]_INST_0_i_7_n_3\ : STD_LOGIC;
  signal \o_ech_fct[4]_INST_0_i_7_n_4\ : STD_LOGIC;
  signal \o_ech_fct[4]_INST_0_i_7_n_5\ : STD_LOGIC;
  signal \o_ech_fct[4]_INST_0_i_7_n_6\ : STD_LOGIC;
  signal \o_ech_fct[4]_INST_0_i_7_n_7\ : STD_LOGIC;
  signal \o_ech_fct[4]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \o_ech_fct[4]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \o_ech_fct[8]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \o_ech_fct[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o_ech_fct[8]_INST_0_i_1_n_1\ : STD_LOGIC;
  signal \o_ech_fct[8]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \o_ech_fct[8]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \o_ech_fct[8]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \o_ech_fct[8]_INST_0_i_6_n_1\ : STD_LOGIC;
  signal \o_ech_fct[8]_INST_0_i_6_n_2\ : STD_LOGIC;
  signal \o_ech_fct[8]_INST_0_i_6_n_3\ : STD_LOGIC;
  signal \o_ech_fct[8]_INST_0_i_6_n_4\ : STD_LOGIC;
  signal \o_ech_fct[8]_INST_0_i_6_n_5\ : STD_LOGIC;
  signal \o_ech_fct[8]_INST_0_i_6_n_6\ : STD_LOGIC;
  signal \o_ech_fct[8]_INST_0_i_6_n_7\ : STD_LOGIC;
  signal \o_ech_fct[8]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \o_ech_fct[8]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \o_ech_fct[8]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal plusOp : STD_LOGIC_VECTOR ( 22 downto 1 );
  signal \NLW_o_ech_fct[22]_INST_0_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_o_ech_fct[22]_INST_0_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_o_ech_fct[23]_INST_0_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_o_ech_fct[23]_INST_0_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \o_ech_fct[12]_INST_0_i_6\ : label is 35;
  attribute ADDER_THRESHOLD of \o_ech_fct[16]_INST_0_i_6\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \o_ech_fct[22]_INST_0_i_13\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \o_ech_fct[22]_INST_0_i_3\ : label is "soft_lutpair0";
  attribute ADDER_THRESHOLD of \o_ech_fct[22]_INST_0_i_4\ : label is 35;
  attribute ADDER_THRESHOLD of \o_ech_fct[22]_INST_0_i_8\ : label is 35;
  attribute ADDER_THRESHOLD of \o_ech_fct[4]_INST_0_i_7\ : label is 35;
  attribute ADDER_THRESHOLD of \o_ech_fct[8]_INST_0_i_6\ : label is 35;
begin
\o_ech_fct[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \o_ech_fct[22]_INST_0_i_1_n_0\,
      I1 => i_ech(0),
      O => o_ech_fct(0)
    );
\o_ech_fct[10]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BBB8"
    )
        port map (
      I0 => plusOp(10),
      I1 => i_ech(23),
      I2 => \o_ech_fct[22]_INST_0_i_1_n_0\,
      I3 => i_ech(10),
      O => o_ech_fct(10)
    );
\o_ech_fct[11]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BBB8"
    )
        port map (
      I0 => plusOp(11),
      I1 => i_ech(23),
      I2 => \o_ech_fct[22]_INST_0_i_1_n_0\,
      I3 => i_ech(11),
      O => o_ech_fct(11)
    );
\o_ech_fct[12]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BBB8"
    )
        port map (
      I0 => plusOp(12),
      I1 => i_ech(23),
      I2 => \o_ech_fct[22]_INST_0_i_1_n_0\,
      I3 => i_ech(12),
      O => o_ech_fct(12)
    );
\o_ech_fct[12]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_ech_fct[8]_INST_0_i_1_n_0\,
      CO(3) => \o_ech_fct[12]_INST_0_i_1_n_0\,
      CO(2) => \o_ech_fct[12]_INST_0_i_1_n_1\,
      CO(1) => \o_ech_fct[12]_INST_0_i_1_n_2\,
      CO(0) => \o_ech_fct[12]_INST_0_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(12 downto 9),
      S(3 downto 0) => p_0_in(12 downto 9)
    );
\o_ech_fct[12]_INST_0_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_ech(9),
      O => \o_ech_fct[12]_INST_0_i_10_n_0\
    );
\o_ech_fct[12]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0047"
    )
        port map (
      I0 => \o_ech_fct[12]_INST_0_i_6_n_4\,
      I1 => i_ech(23),
      I2 => i_ech(12),
      I3 => \o_ech_fct[22]_INST_0_i_1_n_0\,
      O => p_0_in(12)
    );
\o_ech_fct[12]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0047"
    )
        port map (
      I0 => \o_ech_fct[12]_INST_0_i_6_n_5\,
      I1 => i_ech(23),
      I2 => i_ech(11),
      I3 => \o_ech_fct[22]_INST_0_i_1_n_0\,
      O => p_0_in(11)
    );
\o_ech_fct[12]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0047"
    )
        port map (
      I0 => \o_ech_fct[12]_INST_0_i_6_n_6\,
      I1 => i_ech(23),
      I2 => i_ech(10),
      I3 => \o_ech_fct[22]_INST_0_i_1_n_0\,
      O => p_0_in(10)
    );
\o_ech_fct[12]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0047"
    )
        port map (
      I0 => \o_ech_fct[12]_INST_0_i_6_n_7\,
      I1 => i_ech(23),
      I2 => i_ech(9),
      I3 => \o_ech_fct[22]_INST_0_i_1_n_0\,
      O => p_0_in(9)
    );
\o_ech_fct[12]_INST_0_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_ech_fct[8]_INST_0_i_6_n_0\,
      CO(3) => \o_ech_fct[12]_INST_0_i_6_n_0\,
      CO(2) => \o_ech_fct[12]_INST_0_i_6_n_1\,
      CO(1) => \o_ech_fct[12]_INST_0_i_6_n_2\,
      CO(0) => \o_ech_fct[12]_INST_0_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \o_ech_fct[12]_INST_0_i_6_n_4\,
      O(2) => \o_ech_fct[12]_INST_0_i_6_n_5\,
      O(1) => \o_ech_fct[12]_INST_0_i_6_n_6\,
      O(0) => \o_ech_fct[12]_INST_0_i_6_n_7\,
      S(3) => \o_ech_fct[12]_INST_0_i_7_n_0\,
      S(2) => \o_ech_fct[12]_INST_0_i_8_n_0\,
      S(1) => \o_ech_fct[12]_INST_0_i_9_n_0\,
      S(0) => \o_ech_fct[12]_INST_0_i_10_n_0\
    );
\o_ech_fct[12]_INST_0_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_ech(12),
      O => \o_ech_fct[12]_INST_0_i_7_n_0\
    );
\o_ech_fct[12]_INST_0_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_ech(11),
      O => \o_ech_fct[12]_INST_0_i_8_n_0\
    );
\o_ech_fct[12]_INST_0_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_ech(10),
      O => \o_ech_fct[12]_INST_0_i_9_n_0\
    );
\o_ech_fct[13]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BBB8"
    )
        port map (
      I0 => plusOp(13),
      I1 => i_ech(23),
      I2 => \o_ech_fct[22]_INST_0_i_1_n_0\,
      I3 => i_ech(13),
      O => o_ech_fct(13)
    );
\o_ech_fct[14]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BBB8"
    )
        port map (
      I0 => plusOp(14),
      I1 => i_ech(23),
      I2 => \o_ech_fct[22]_INST_0_i_1_n_0\,
      I3 => i_ech(14),
      O => o_ech_fct(14)
    );
\o_ech_fct[15]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BBB8"
    )
        port map (
      I0 => plusOp(15),
      I1 => i_ech(23),
      I2 => \o_ech_fct[22]_INST_0_i_1_n_0\,
      I3 => i_ech(15),
      O => o_ech_fct(15)
    );
\o_ech_fct[16]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BBB8"
    )
        port map (
      I0 => plusOp(16),
      I1 => i_ech(23),
      I2 => \o_ech_fct[22]_INST_0_i_1_n_0\,
      I3 => i_ech(16),
      O => o_ech_fct(16)
    );
\o_ech_fct[16]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_ech_fct[12]_INST_0_i_1_n_0\,
      CO(3) => \o_ech_fct[16]_INST_0_i_1_n_0\,
      CO(2) => \o_ech_fct[16]_INST_0_i_1_n_1\,
      CO(1) => \o_ech_fct[16]_INST_0_i_1_n_2\,
      CO(0) => \o_ech_fct[16]_INST_0_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(16 downto 13),
      S(3 downto 0) => p_0_in(16 downto 13)
    );
\o_ech_fct[16]_INST_0_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_ech(13),
      O => \o_ech_fct[16]_INST_0_i_10_n_0\
    );
\o_ech_fct[16]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0047"
    )
        port map (
      I0 => \o_ech_fct[16]_INST_0_i_6_n_4\,
      I1 => i_ech(23),
      I2 => i_ech(16),
      I3 => \o_ech_fct[22]_INST_0_i_1_n_0\,
      O => p_0_in(16)
    );
\o_ech_fct[16]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0047"
    )
        port map (
      I0 => \o_ech_fct[16]_INST_0_i_6_n_5\,
      I1 => i_ech(23),
      I2 => i_ech(15),
      I3 => \o_ech_fct[22]_INST_0_i_1_n_0\,
      O => p_0_in(15)
    );
\o_ech_fct[16]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0047"
    )
        port map (
      I0 => \o_ech_fct[16]_INST_0_i_6_n_6\,
      I1 => i_ech(23),
      I2 => i_ech(14),
      I3 => \o_ech_fct[22]_INST_0_i_1_n_0\,
      O => p_0_in(14)
    );
\o_ech_fct[16]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0047"
    )
        port map (
      I0 => \o_ech_fct[16]_INST_0_i_6_n_7\,
      I1 => i_ech(23),
      I2 => i_ech(13),
      I3 => \o_ech_fct[22]_INST_0_i_1_n_0\,
      O => p_0_in(13)
    );
\o_ech_fct[16]_INST_0_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_ech_fct[12]_INST_0_i_6_n_0\,
      CO(3) => \o_ech_fct[16]_INST_0_i_6_n_0\,
      CO(2) => \o_ech_fct[16]_INST_0_i_6_n_1\,
      CO(1) => \o_ech_fct[16]_INST_0_i_6_n_2\,
      CO(0) => \o_ech_fct[16]_INST_0_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \o_ech_fct[16]_INST_0_i_6_n_4\,
      O(2) => \o_ech_fct[16]_INST_0_i_6_n_5\,
      O(1) => \o_ech_fct[16]_INST_0_i_6_n_6\,
      O(0) => \o_ech_fct[16]_INST_0_i_6_n_7\,
      S(3) => \o_ech_fct[16]_INST_0_i_7_n_0\,
      S(2) => \o_ech_fct[16]_INST_0_i_8_n_0\,
      S(1) => \o_ech_fct[16]_INST_0_i_9_n_0\,
      S(0) => \o_ech_fct[16]_INST_0_i_10_n_0\
    );
\o_ech_fct[16]_INST_0_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_ech(16),
      O => \o_ech_fct[16]_INST_0_i_7_n_0\
    );
\o_ech_fct[16]_INST_0_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_ech(15),
      O => \o_ech_fct[16]_INST_0_i_8_n_0\
    );
\o_ech_fct[16]_INST_0_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_ech(14),
      O => \o_ech_fct[16]_INST_0_i_9_n_0\
    );
\o_ech_fct[17]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BBB8"
    )
        port map (
      I0 => plusOp(17),
      I1 => i_ech(23),
      I2 => \o_ech_fct[22]_INST_0_i_1_n_0\,
      I3 => i_ech(17),
      O => o_ech_fct(17)
    );
\o_ech_fct[18]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BBB8"
    )
        port map (
      I0 => plusOp(18),
      I1 => i_ech(23),
      I2 => \o_ech_fct[22]_INST_0_i_1_n_0\,
      I3 => i_ech(18),
      O => o_ech_fct(18)
    );
\o_ech_fct[19]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BBB8"
    )
        port map (
      I0 => plusOp(19),
      I1 => i_ech(23),
      I2 => \o_ech_fct[22]_INST_0_i_1_n_0\,
      I3 => i_ech(19),
      O => o_ech_fct(19)
    );
\o_ech_fct[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BBB8"
    )
        port map (
      I0 => plusOp(1),
      I1 => i_ech(23),
      I2 => \o_ech_fct[22]_INST_0_i_1_n_0\,
      I3 => i_ech(1),
      O => o_ech_fct(1)
    );
\o_ech_fct[20]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BBB8"
    )
        port map (
      I0 => plusOp(20),
      I1 => i_ech(23),
      I2 => \o_ech_fct[22]_INST_0_i_1_n_0\,
      I3 => i_ech(20),
      O => o_ech_fct(20)
    );
\o_ech_fct[20]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_ech_fct[16]_INST_0_i_1_n_0\,
      CO(3) => \o_ech_fct[20]_INST_0_i_1_n_0\,
      CO(2) => \o_ech_fct[20]_INST_0_i_1_n_1\,
      CO(1) => \o_ech_fct[20]_INST_0_i_1_n_2\,
      CO(0) => \o_ech_fct[20]_INST_0_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(20 downto 17),
      S(3 downto 0) => p_0_in(20 downto 17)
    );
\o_ech_fct[20]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0047"
    )
        port map (
      I0 => \o_ech_fct[22]_INST_0_i_8_n_4\,
      I1 => i_ech(23),
      I2 => i_ech(20),
      I3 => \o_ech_fct[22]_INST_0_i_1_n_0\,
      O => p_0_in(20)
    );
\o_ech_fct[20]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0047"
    )
        port map (
      I0 => \o_ech_fct[22]_INST_0_i_8_n_5\,
      I1 => i_ech(23),
      I2 => i_ech(19),
      I3 => \o_ech_fct[22]_INST_0_i_1_n_0\,
      O => p_0_in(19)
    );
\o_ech_fct[20]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0047"
    )
        port map (
      I0 => \o_ech_fct[22]_INST_0_i_8_n_6\,
      I1 => i_ech(23),
      I2 => i_ech(18),
      I3 => \o_ech_fct[22]_INST_0_i_1_n_0\,
      O => p_0_in(18)
    );
\o_ech_fct[20]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0047"
    )
        port map (
      I0 => \o_ech_fct[22]_INST_0_i_8_n_7\,
      I1 => i_ech(23),
      I2 => i_ech(17),
      I3 => \o_ech_fct[22]_INST_0_i_1_n_0\,
      O => p_0_in(17)
    );
\o_ech_fct[21]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BBB8"
    )
        port map (
      I0 => plusOp(21),
      I1 => i_ech(23),
      I2 => \o_ech_fct[22]_INST_0_i_1_n_0\,
      I3 => i_ech(21),
      O => o_ech_fct(21)
    );
\o_ech_fct[22]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BBB8"
    )
        port map (
      I0 => plusOp(22),
      I1 => i_ech(23),
      I2 => \o_ech_fct[22]_INST_0_i_1_n_0\,
      I3 => i_ech(22),
      O => o_ech_fct(22)
    );
\o_ech_fct[22]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000FFFFF000E000"
    )
        port map (
      I0 => \o_ech_fct[22]_INST_0_i_2_n_0\,
      I1 => \o_ech_fct[22]_INST_0_i_3_n_0\,
      I2 => \o_ech_fct[22]_INST_0_i_4_n_5\,
      I3 => i_ech(23),
      I4 => \o_ech_fct[22]_INST_0_i_5_n_0\,
      I5 => \o_ech_fct[22]_INST_0_i_6_n_0\,
      O => \o_ech_fct[22]_INST_0_i_1_n_0\
    );
\o_ech_fct[22]_INST_0_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_ech(22),
      O => \o_ech_fct[22]_INST_0_i_10_n_0\
    );
\o_ech_fct[22]_INST_0_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_ech(21),
      O => \o_ech_fct[22]_INST_0_i_11_n_0\
    );
\o_ech_fct[22]_INST_0_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => i_ech(12),
      I1 => i_ech(13),
      I2 => i_ech(14),
      I3 => i_ech(15),
      O => \o_ech_fct[22]_INST_0_i_12_n_0\
    );
\o_ech_fct[22]_INST_0_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => i_ech(16),
      I1 => i_ech(17),
      I2 => i_ech(18),
      I3 => i_ech(19),
      O => \o_ech_fct[22]_INST_0_i_13_n_0\
    );
\o_ech_fct[22]_INST_0_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => i_ech(4),
      I1 => i_ech(5),
      I2 => i_ech(6),
      I3 => i_ech(7),
      O => \o_ech_fct[22]_INST_0_i_14_n_0\
    );
\o_ech_fct[22]_INST_0_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => i_ech(1),
      I1 => i_ech(0),
      I2 => i_ech(3),
      I3 => i_ech(2),
      O => \o_ech_fct[22]_INST_0_i_15_n_0\
    );
\o_ech_fct[22]_INST_0_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_ech(20),
      I1 => i_ech(21),
      O => \o_ech_fct[22]_INST_0_i_16_n_0\
    );
\o_ech_fct[22]_INST_0_i_17\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_ech(20),
      O => \o_ech_fct[22]_INST_0_i_17_n_0\
    );
\o_ech_fct[22]_INST_0_i_18\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_ech(19),
      O => \o_ech_fct[22]_INST_0_i_18_n_0\
    );
\o_ech_fct[22]_INST_0_i_19\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_ech(18),
      O => \o_ech_fct[22]_INST_0_i_19_n_0\
    );
\o_ech_fct[22]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFFFF"
    )
        port map (
      I0 => i_ech(2),
      I1 => i_ech(1),
      I2 => i_ech(3),
      I3 => i_ech(22),
      I4 => i_ech(23),
      I5 => \o_ech_fct[22]_INST_0_i_7_n_0\,
      O => \o_ech_fct[22]_INST_0_i_2_n_0\
    );
\o_ech_fct[22]_INST_0_i_20\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_ech(17),
      O => \o_ech_fct[22]_INST_0_i_20_n_0\
    );
\o_ech_fct[22]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => i_ech(0),
      I1 => i_ech(19),
      I2 => i_ech(18),
      I3 => i_ech(17),
      I4 => i_ech(16),
      O => \o_ech_fct[22]_INST_0_i_3_n_0\
    );
\o_ech_fct[22]_INST_0_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_ech_fct[22]_INST_0_i_8_n_0\,
      CO(3 downto 2) => \NLW_o_ech_fct[22]_INST_0_i_4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \o_ech_fct[22]_INST_0_i_4_n_2\,
      CO(0) => \o_ech_fct[22]_INST_0_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_o_ech_fct[22]_INST_0_i_4_O_UNCONNECTED\(3),
      O(2) => \o_ech_fct[22]_INST_0_i_4_n_5\,
      O(1) => \o_ech_fct[22]_INST_0_i_4_n_6\,
      O(0) => \o_ech_fct[22]_INST_0_i_4_n_7\,
      S(3) => '0',
      S(2) => \o_ech_fct[22]_INST_0_i_9_n_0\,
      S(1) => \o_ech_fct[22]_INST_0_i_10_n_0\,
      S(0) => \o_ech_fct[22]_INST_0_i_11_n_0\
    );
\o_ech_fct[22]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => i_ech(11),
      I1 => i_ech(10),
      I2 => i_ech(9),
      I3 => i_ech(8),
      I4 => \o_ech_fct[22]_INST_0_i_12_n_0\,
      O => \o_ech_fct[22]_INST_0_i_5_n_0\
    );
\o_ech_fct[22]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => \o_ech_fct[22]_INST_0_i_13_n_0\,
      I1 => \o_ech_fct[22]_INST_0_i_14_n_0\,
      I2 => \o_ech_fct[22]_INST_0_i_15_n_0\,
      I3 => i_ech(22),
      I4 => i_ech(23),
      I5 => \o_ech_fct[22]_INST_0_i_16_n_0\,
      O => \o_ech_fct[22]_INST_0_i_6_n_0\
    );
\o_ech_fct[22]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => i_ech(7),
      I1 => i_ech(6),
      I2 => i_ech(5),
      I3 => i_ech(4),
      I4 => i_ech(21),
      I5 => i_ech(20),
      O => \o_ech_fct[22]_INST_0_i_7_n_0\
    );
\o_ech_fct[22]_INST_0_i_8\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_ech_fct[16]_INST_0_i_6_n_0\,
      CO(3) => \o_ech_fct[22]_INST_0_i_8_n_0\,
      CO(2) => \o_ech_fct[22]_INST_0_i_8_n_1\,
      CO(1) => \o_ech_fct[22]_INST_0_i_8_n_2\,
      CO(0) => \o_ech_fct[22]_INST_0_i_8_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \o_ech_fct[22]_INST_0_i_8_n_4\,
      O(2) => \o_ech_fct[22]_INST_0_i_8_n_5\,
      O(1) => \o_ech_fct[22]_INST_0_i_8_n_6\,
      O(0) => \o_ech_fct[22]_INST_0_i_8_n_7\,
      S(3) => \o_ech_fct[22]_INST_0_i_17_n_0\,
      S(2) => \o_ech_fct[22]_INST_0_i_18_n_0\,
      S(1) => \o_ech_fct[22]_INST_0_i_19_n_0\,
      S(0) => \o_ech_fct[22]_INST_0_i_20_n_0\
    );
\o_ech_fct[22]_INST_0_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_ech(23),
      O => \o_ech_fct[22]_INST_0_i_9_n_0\
    );
\o_ech_fct[23]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_ech(23),
      I1 => \o_ech_fct[23]_INST_0_i_1_n_1\,
      O => o_ech_fct(23)
    );
\o_ech_fct[23]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_ech_fct[20]_INST_0_i_1_n_0\,
      CO(3) => \NLW_o_ech_fct[23]_INST_0_i_1_CO_UNCONNECTED\(3),
      CO(2) => \o_ech_fct[23]_INST_0_i_1_n_1\,
      CO(1) => \NLW_o_ech_fct[23]_INST_0_i_1_CO_UNCONNECTED\(1),
      CO(0) => \o_ech_fct[23]_INST_0_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_o_ech_fct[23]_INST_0_i_1_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => plusOp(22 downto 21),
      S(3 downto 2) => B"01",
      S(1 downto 0) => p_0_in(22 downto 21)
    );
\o_ech_fct[23]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0047"
    )
        port map (
      I0 => \o_ech_fct[22]_INST_0_i_4_n_6\,
      I1 => i_ech(23),
      I2 => i_ech(22),
      I3 => \o_ech_fct[22]_INST_0_i_1_n_0\,
      O => p_0_in(22)
    );
\o_ech_fct[23]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0047"
    )
        port map (
      I0 => \o_ech_fct[22]_INST_0_i_4_n_7\,
      I1 => i_ech(23),
      I2 => i_ech(21),
      I3 => \o_ech_fct[22]_INST_0_i_1_n_0\,
      O => p_0_in(21)
    );
\o_ech_fct[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BBB8"
    )
        port map (
      I0 => plusOp(2),
      I1 => i_ech(23),
      I2 => \o_ech_fct[22]_INST_0_i_1_n_0\,
      I3 => i_ech(2),
      O => o_ech_fct(2)
    );
\o_ech_fct[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BBB8"
    )
        port map (
      I0 => plusOp(3),
      I1 => i_ech(23),
      I2 => \o_ech_fct[22]_INST_0_i_1_n_0\,
      I3 => i_ech(3),
      O => o_ech_fct(3)
    );
\o_ech_fct[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BBB8"
    )
        port map (
      I0 => plusOp(4),
      I1 => i_ech(23),
      I2 => \o_ech_fct[22]_INST_0_i_1_n_0\,
      I3 => i_ech(4),
      O => o_ech_fct(4)
    );
\o_ech_fct[4]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \o_ech_fct[4]_INST_0_i_1_n_0\,
      CO(2) => \o_ech_fct[4]_INST_0_i_1_n_1\,
      CO(1) => \o_ech_fct[4]_INST_0_i_1_n_2\,
      CO(0) => \o_ech_fct[4]_INST_0_i_1_n_3\,
      CYINIT => p_0_in(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(4 downto 1),
      S(3 downto 0) => p_0_in(4 downto 1)
    );
\o_ech_fct[4]_INST_0_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_ech(3),
      O => \o_ech_fct[4]_INST_0_i_10_n_0\
    );
\o_ech_fct[4]_INST_0_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_ech(2),
      O => \o_ech_fct[4]_INST_0_i_11_n_0\
    );
\o_ech_fct[4]_INST_0_i_12\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_ech(1),
      O => \o_ech_fct[4]_INST_0_i_12_n_0\
    );
\o_ech_fct[4]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_ech(0),
      I1 => \o_ech_fct[22]_INST_0_i_1_n_0\,
      O => p_0_in(0)
    );
\o_ech_fct[4]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0047"
    )
        port map (
      I0 => \o_ech_fct[4]_INST_0_i_7_n_4\,
      I1 => i_ech(23),
      I2 => i_ech(4),
      I3 => \o_ech_fct[22]_INST_0_i_1_n_0\,
      O => p_0_in(4)
    );
\o_ech_fct[4]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0047"
    )
        port map (
      I0 => \o_ech_fct[4]_INST_0_i_7_n_5\,
      I1 => i_ech(23),
      I2 => i_ech(3),
      I3 => \o_ech_fct[22]_INST_0_i_1_n_0\,
      O => p_0_in(3)
    );
\o_ech_fct[4]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0047"
    )
        port map (
      I0 => \o_ech_fct[4]_INST_0_i_7_n_6\,
      I1 => i_ech(23),
      I2 => i_ech(2),
      I3 => \o_ech_fct[22]_INST_0_i_1_n_0\,
      O => p_0_in(2)
    );
\o_ech_fct[4]_INST_0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0047"
    )
        port map (
      I0 => \o_ech_fct[4]_INST_0_i_7_n_7\,
      I1 => i_ech(23),
      I2 => i_ech(1),
      I3 => \o_ech_fct[22]_INST_0_i_1_n_0\,
      O => p_0_in(1)
    );
\o_ech_fct[4]_INST_0_i_7\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \o_ech_fct[4]_INST_0_i_7_n_0\,
      CO(2) => \o_ech_fct[4]_INST_0_i_7_n_1\,
      CO(1) => \o_ech_fct[4]_INST_0_i_7_n_2\,
      CO(0) => \o_ech_fct[4]_INST_0_i_7_n_3\,
      CYINIT => \o_ech_fct[4]_INST_0_i_8_n_0\,
      DI(3 downto 0) => B"0000",
      O(3) => \o_ech_fct[4]_INST_0_i_7_n_4\,
      O(2) => \o_ech_fct[4]_INST_0_i_7_n_5\,
      O(1) => \o_ech_fct[4]_INST_0_i_7_n_6\,
      O(0) => \o_ech_fct[4]_INST_0_i_7_n_7\,
      S(3) => \o_ech_fct[4]_INST_0_i_9_n_0\,
      S(2) => \o_ech_fct[4]_INST_0_i_10_n_0\,
      S(1) => \o_ech_fct[4]_INST_0_i_11_n_0\,
      S(0) => \o_ech_fct[4]_INST_0_i_12_n_0\
    );
\o_ech_fct[4]_INST_0_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_ech(0),
      O => \o_ech_fct[4]_INST_0_i_8_n_0\
    );
\o_ech_fct[4]_INST_0_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_ech(4),
      O => \o_ech_fct[4]_INST_0_i_9_n_0\
    );
\o_ech_fct[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BBB8"
    )
        port map (
      I0 => plusOp(5),
      I1 => i_ech(23),
      I2 => \o_ech_fct[22]_INST_0_i_1_n_0\,
      I3 => i_ech(5),
      O => o_ech_fct(5)
    );
\o_ech_fct[6]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BBB8"
    )
        port map (
      I0 => plusOp(6),
      I1 => i_ech(23),
      I2 => \o_ech_fct[22]_INST_0_i_1_n_0\,
      I3 => i_ech(6),
      O => o_ech_fct(6)
    );
\o_ech_fct[7]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BBB8"
    )
        port map (
      I0 => plusOp(7),
      I1 => i_ech(23),
      I2 => \o_ech_fct[22]_INST_0_i_1_n_0\,
      I3 => i_ech(7),
      O => o_ech_fct(7)
    );
\o_ech_fct[8]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BBB8"
    )
        port map (
      I0 => plusOp(8),
      I1 => i_ech(23),
      I2 => \o_ech_fct[22]_INST_0_i_1_n_0\,
      I3 => i_ech(8),
      O => o_ech_fct(8)
    );
\o_ech_fct[8]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_ech_fct[4]_INST_0_i_1_n_0\,
      CO(3) => \o_ech_fct[8]_INST_0_i_1_n_0\,
      CO(2) => \o_ech_fct[8]_INST_0_i_1_n_1\,
      CO(1) => \o_ech_fct[8]_INST_0_i_1_n_2\,
      CO(0) => \o_ech_fct[8]_INST_0_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(8 downto 5),
      S(3 downto 0) => p_0_in(8 downto 5)
    );
\o_ech_fct[8]_INST_0_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_ech(5),
      O => \o_ech_fct[8]_INST_0_i_10_n_0\
    );
\o_ech_fct[8]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0047"
    )
        port map (
      I0 => \o_ech_fct[8]_INST_0_i_6_n_4\,
      I1 => i_ech(23),
      I2 => i_ech(8),
      I3 => \o_ech_fct[22]_INST_0_i_1_n_0\,
      O => p_0_in(8)
    );
\o_ech_fct[8]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0047"
    )
        port map (
      I0 => \o_ech_fct[8]_INST_0_i_6_n_5\,
      I1 => i_ech(23),
      I2 => i_ech(7),
      I3 => \o_ech_fct[22]_INST_0_i_1_n_0\,
      O => p_0_in(7)
    );
\o_ech_fct[8]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0047"
    )
        port map (
      I0 => \o_ech_fct[8]_INST_0_i_6_n_6\,
      I1 => i_ech(23),
      I2 => i_ech(6),
      I3 => \o_ech_fct[22]_INST_0_i_1_n_0\,
      O => p_0_in(6)
    );
\o_ech_fct[8]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0047"
    )
        port map (
      I0 => \o_ech_fct[8]_INST_0_i_6_n_7\,
      I1 => i_ech(23),
      I2 => i_ech(5),
      I3 => \o_ech_fct[22]_INST_0_i_1_n_0\,
      O => p_0_in(5)
    );
\o_ech_fct[8]_INST_0_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_ech_fct[4]_INST_0_i_7_n_0\,
      CO(3) => \o_ech_fct[8]_INST_0_i_6_n_0\,
      CO(2) => \o_ech_fct[8]_INST_0_i_6_n_1\,
      CO(1) => \o_ech_fct[8]_INST_0_i_6_n_2\,
      CO(0) => \o_ech_fct[8]_INST_0_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \o_ech_fct[8]_INST_0_i_6_n_4\,
      O(2) => \o_ech_fct[8]_INST_0_i_6_n_5\,
      O(1) => \o_ech_fct[8]_INST_0_i_6_n_6\,
      O(0) => \o_ech_fct[8]_INST_0_i_6_n_7\,
      S(3) => \o_ech_fct[8]_INST_0_i_7_n_0\,
      S(2) => \o_ech_fct[8]_INST_0_i_8_n_0\,
      S(1) => \o_ech_fct[8]_INST_0_i_9_n_0\,
      S(0) => \o_ech_fct[8]_INST_0_i_10_n_0\
    );
\o_ech_fct[8]_INST_0_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_ech(8),
      O => \o_ech_fct[8]_INST_0_i_7_n_0\
    );
\o_ech_fct[8]_INST_0_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_ech(7),
      O => \o_ech_fct[8]_INST_0_i_8_n_0\
    );
\o_ech_fct[8]_INST_0_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_ech(6),
      O => \o_ech_fct[8]_INST_0_i_9_n_0\
    );
\o_ech_fct[9]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BBB8"
    )
        port map (
      I0 => plusOp(9),
      I1 => i_ech(23),
      I2 => \o_ech_fct[22]_INST_0_i_1_n_0\,
      I3 => i_ech(9),
      O => o_ech_fct(9)
    );
end STRUCTURE;
