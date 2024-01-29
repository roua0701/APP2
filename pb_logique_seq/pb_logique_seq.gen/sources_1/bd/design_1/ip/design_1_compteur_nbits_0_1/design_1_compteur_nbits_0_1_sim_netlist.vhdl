-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Tue Jan 16 11:58:52 2024
-- Host        : gegi-3014-bmwin running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/rosj2103/Downloads/pb_logique_seq/pb_logique_seq.gen/sources_1/bd/design_1/ip/design_1_compteur_nbits_0_1/design_1_compteur_nbits_0_1_sim_netlist.vhdl
-- Design      : design_1_compteur_nbits_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_compteur_nbits_0_1_compteur_nbits is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    i_en : in STD_LOGIC;
    clk : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_compteur_nbits_0_1_compteur_nbits : entity is "compteur_nbits";
end design_1_compteur_nbits_0_1_compteur_nbits;

architecture STRUCTURE of design_1_compteur_nbits_0_1_compteur_nbits is
  signal \d_val_cpt[6]_i_2_n_0\ : STD_LOGIC;
  signal \^out\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal plusOp : STD_LOGIC_VECTOR ( 6 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \d_val_cpt[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \d_val_cpt[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \d_val_cpt[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \d_val_cpt[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \d_val_cpt[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \d_val_cpt[6]_i_2\ : label is "soft_lutpair0";
begin
  \out\(6 downto 0) <= \^out\(6 downto 0);
\d_val_cpt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^out\(0),
      O => plusOp(0)
    );
\d_val_cpt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^out\(0),
      I1 => \^out\(1),
      O => plusOp(1)
    );
\d_val_cpt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^out\(0),
      I1 => \^out\(1),
      I2 => \^out\(2),
      O => plusOp(2)
    );
\d_val_cpt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^out\(1),
      I1 => \^out\(0),
      I2 => \^out\(2),
      I3 => \^out\(3),
      O => plusOp(3)
    );
\d_val_cpt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^out\(2),
      I1 => \^out\(0),
      I2 => \^out\(1),
      I3 => \^out\(3),
      I4 => \^out\(4),
      O => plusOp(4)
    );
\d_val_cpt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^out\(3),
      I1 => \^out\(1),
      I2 => \^out\(0),
      I3 => \^out\(2),
      I4 => \^out\(4),
      I5 => \^out\(5),
      O => plusOp(5)
    );
\d_val_cpt[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \d_val_cpt[6]_i_2_n_0\,
      I1 => \^out\(5),
      I2 => \^out\(6),
      O => plusOp(6)
    );
\d_val_cpt[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \^out\(4),
      I1 => \^out\(2),
      I2 => \^out\(0),
      I3 => \^out\(1),
      I4 => \^out\(3),
      O => \d_val_cpt[6]_i_2_n_0\
    );
\d_val_cpt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => i_en,
      CLR => reset,
      D => plusOp(0),
      Q => \^out\(0)
    );
\d_val_cpt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => i_en,
      CLR => reset,
      D => plusOp(1),
      Q => \^out\(1)
    );
\d_val_cpt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => i_en,
      CLR => reset,
      D => plusOp(2),
      Q => \^out\(2)
    );
\d_val_cpt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => i_en,
      CLR => reset,
      D => plusOp(3),
      Q => \^out\(3)
    );
\d_val_cpt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => i_en,
      CLR => reset,
      D => plusOp(4),
      Q => \^out\(4)
    );
\d_val_cpt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => i_en,
      CLR => reset,
      D => plusOp(5),
      Q => \^out\(5)
    );
\d_val_cpt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => i_en,
      CLR => reset,
      D => plusOp(6),
      Q => \^out\(6)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_compteur_nbits_0_1 is
  port (
    clk : in STD_LOGIC;
    i_en : in STD_LOGIC;
    reset : in STD_LOGIC;
    o_val_cpt : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_compteur_nbits_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_compteur_nbits_0_1 : entity is "design_1_compteur_nbits_0_1,compteur_nbits,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_compteur_nbits_0_1 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_compteur_nbits_0_1 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_compteur_nbits_0_1 : entity is "compteur_nbits,Vivado 2020.2";
end design_1_compteur_nbits_0_1;

architecture STRUCTURE of design_1_compteur_nbits_0_1 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_clk_100MHz, INSERT_VIP 0";
  attribute x_interface_info of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute x_interface_parameter of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.design_1_compteur_nbits_0_1_compteur_nbits
     port map (
      clk => clk,
      i_en => i_en,
      \out\(6 downto 0) => o_val_cpt(6 downto 0),
      reset => reset
    );
end STRUCTURE;
