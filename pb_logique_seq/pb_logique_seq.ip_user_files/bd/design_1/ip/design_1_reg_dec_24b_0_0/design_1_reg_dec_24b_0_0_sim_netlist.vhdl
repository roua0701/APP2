-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Tue Jan 16 11:58:52 2024
-- Host        : gegi-3014-bmwin running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/rosj2103/Downloads/pb_logique_seq/pb_logique_seq.gen/sources_1/bd/design_1/ip/design_1_reg_dec_24b_0_0/design_1_reg_dec_24b_0_0_sim_netlist.vhdl
-- Design      : design_1_reg_dec_24b_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_reg_dec_24b_0_0_reg_dec_24b is
  port (
    o_dat : out STD_LOGIC_VECTOR ( 23 downto 0 );
    i_clk : in STD_LOGIC;
    i_reset : in STD_LOGIC;
    i_dat_load : in STD_LOGIC_VECTOR ( 23 downto 0 );
    i_load : in STD_LOGIC;
    i_dat_bit : in STD_LOGIC;
    i_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_reg_dec_24b_0_0_reg_dec_24b : entity is "reg_dec_24b";
end design_1_reg_dec_24b_0_0_reg_dec_24b;

architecture STRUCTURE of design_1_reg_dec_24b_0_0_reg_dec_24b is
  signal \^o_dat\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \q_shift_reg[23]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \q_shift_reg[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \q_shift_reg[10]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \q_shift_reg[11]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \q_shift_reg[12]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \q_shift_reg[13]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \q_shift_reg[14]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \q_shift_reg[15]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \q_shift_reg[16]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \q_shift_reg[17]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \q_shift_reg[18]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \q_shift_reg[19]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \q_shift_reg[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \q_shift_reg[20]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \q_shift_reg[21]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \q_shift_reg[22]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \q_shift_reg[23]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \q_shift_reg[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \q_shift_reg[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \q_shift_reg[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \q_shift_reg[5]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \q_shift_reg[6]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \q_shift_reg[7]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \q_shift_reg[8]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \q_shift_reg[9]_i_1\ : label is "soft_lutpair4";
begin
  o_dat(23 downto 0) <= \^o_dat\(23 downto 0);
\q_shift_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_dat_load(0),
      I1 => i_load,
      I2 => i_dat_bit,
      O => p_1_in(0)
    );
\q_shift_reg[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_dat_load(10),
      I1 => i_load,
      I2 => \^o_dat\(9),
      O => p_1_in(10)
    );
\q_shift_reg[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_dat_load(11),
      I1 => i_load,
      I2 => \^o_dat\(10),
      O => p_1_in(11)
    );
\q_shift_reg[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_dat_load(12),
      I1 => i_load,
      I2 => \^o_dat\(11),
      O => p_1_in(12)
    );
\q_shift_reg[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_dat_load(13),
      I1 => i_load,
      I2 => \^o_dat\(12),
      O => p_1_in(13)
    );
\q_shift_reg[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_dat_load(14),
      I1 => i_load,
      I2 => \^o_dat\(13),
      O => p_1_in(14)
    );
\q_shift_reg[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_dat_load(15),
      I1 => i_load,
      I2 => \^o_dat\(14),
      O => p_1_in(15)
    );
\q_shift_reg[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_dat_load(16),
      I1 => i_load,
      I2 => \^o_dat\(15),
      O => p_1_in(16)
    );
\q_shift_reg[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_dat_load(17),
      I1 => i_load,
      I2 => \^o_dat\(16),
      O => p_1_in(17)
    );
\q_shift_reg[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_dat_load(18),
      I1 => i_load,
      I2 => \^o_dat\(17),
      O => p_1_in(18)
    );
\q_shift_reg[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_dat_load(19),
      I1 => i_load,
      I2 => \^o_dat\(18),
      O => p_1_in(19)
    );
\q_shift_reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_dat_load(1),
      I1 => i_load,
      I2 => \^o_dat\(0),
      O => p_1_in(1)
    );
\q_shift_reg[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_dat_load(20),
      I1 => i_load,
      I2 => \^o_dat\(19),
      O => p_1_in(20)
    );
\q_shift_reg[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_dat_load(21),
      I1 => i_load,
      I2 => \^o_dat\(20),
      O => p_1_in(21)
    );
\q_shift_reg[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_dat_load(22),
      I1 => i_load,
      I2 => \^o_dat\(21),
      O => p_1_in(22)
    );
\q_shift_reg[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => i_load,
      I1 => i_en,
      O => \q_shift_reg[23]_i_1_n_0\
    );
\q_shift_reg[23]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_dat_load(23),
      I1 => i_load,
      I2 => \^o_dat\(22),
      O => p_1_in(23)
    );
\q_shift_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_dat_load(2),
      I1 => i_load,
      I2 => \^o_dat\(1),
      O => p_1_in(2)
    );
\q_shift_reg[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_dat_load(3),
      I1 => i_load,
      I2 => \^o_dat\(2),
      O => p_1_in(3)
    );
\q_shift_reg[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_dat_load(4),
      I1 => i_load,
      I2 => \^o_dat\(3),
      O => p_1_in(4)
    );
\q_shift_reg[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_dat_load(5),
      I1 => i_load,
      I2 => \^o_dat\(4),
      O => p_1_in(5)
    );
\q_shift_reg[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_dat_load(6),
      I1 => i_load,
      I2 => \^o_dat\(5),
      O => p_1_in(6)
    );
\q_shift_reg[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_dat_load(7),
      I1 => i_load,
      I2 => \^o_dat\(6),
      O => p_1_in(7)
    );
\q_shift_reg[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_dat_load(8),
      I1 => i_load,
      I2 => \^o_dat\(7),
      O => p_1_in(8)
    );
\q_shift_reg[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_dat_load(9),
      I1 => i_load,
      I2 => \^o_dat\(8),
      O => p_1_in(9)
    );
\q_shift_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => \q_shift_reg[23]_i_1_n_0\,
      CLR => i_reset,
      D => p_1_in(0),
      Q => \^o_dat\(0)
    );
\q_shift_reg_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => \q_shift_reg[23]_i_1_n_0\,
      CLR => i_reset,
      D => p_1_in(10),
      Q => \^o_dat\(10)
    );
\q_shift_reg_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => \q_shift_reg[23]_i_1_n_0\,
      CLR => i_reset,
      D => p_1_in(11),
      Q => \^o_dat\(11)
    );
\q_shift_reg_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => \q_shift_reg[23]_i_1_n_0\,
      CLR => i_reset,
      D => p_1_in(12),
      Q => \^o_dat\(12)
    );
\q_shift_reg_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => \q_shift_reg[23]_i_1_n_0\,
      CLR => i_reset,
      D => p_1_in(13),
      Q => \^o_dat\(13)
    );
\q_shift_reg_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => \q_shift_reg[23]_i_1_n_0\,
      CLR => i_reset,
      D => p_1_in(14),
      Q => \^o_dat\(14)
    );
\q_shift_reg_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => \q_shift_reg[23]_i_1_n_0\,
      CLR => i_reset,
      D => p_1_in(15),
      Q => \^o_dat\(15)
    );
\q_shift_reg_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => \q_shift_reg[23]_i_1_n_0\,
      CLR => i_reset,
      D => p_1_in(16),
      Q => \^o_dat\(16)
    );
\q_shift_reg_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => \q_shift_reg[23]_i_1_n_0\,
      CLR => i_reset,
      D => p_1_in(17),
      Q => \^o_dat\(17)
    );
\q_shift_reg_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => \q_shift_reg[23]_i_1_n_0\,
      CLR => i_reset,
      D => p_1_in(18),
      Q => \^o_dat\(18)
    );
\q_shift_reg_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => \q_shift_reg[23]_i_1_n_0\,
      CLR => i_reset,
      D => p_1_in(19),
      Q => \^o_dat\(19)
    );
\q_shift_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => \q_shift_reg[23]_i_1_n_0\,
      CLR => i_reset,
      D => p_1_in(1),
      Q => \^o_dat\(1)
    );
\q_shift_reg_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => \q_shift_reg[23]_i_1_n_0\,
      CLR => i_reset,
      D => p_1_in(20),
      Q => \^o_dat\(20)
    );
\q_shift_reg_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => \q_shift_reg[23]_i_1_n_0\,
      CLR => i_reset,
      D => p_1_in(21),
      Q => \^o_dat\(21)
    );
\q_shift_reg_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => \q_shift_reg[23]_i_1_n_0\,
      CLR => i_reset,
      D => p_1_in(22),
      Q => \^o_dat\(22)
    );
\q_shift_reg_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => \q_shift_reg[23]_i_1_n_0\,
      CLR => i_reset,
      D => p_1_in(23),
      Q => \^o_dat\(23)
    );
\q_shift_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => \q_shift_reg[23]_i_1_n_0\,
      CLR => i_reset,
      D => p_1_in(2),
      Q => \^o_dat\(2)
    );
\q_shift_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => \q_shift_reg[23]_i_1_n_0\,
      CLR => i_reset,
      D => p_1_in(3),
      Q => \^o_dat\(3)
    );
\q_shift_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => \q_shift_reg[23]_i_1_n_0\,
      CLR => i_reset,
      D => p_1_in(4),
      Q => \^o_dat\(4)
    );
\q_shift_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => \q_shift_reg[23]_i_1_n_0\,
      CLR => i_reset,
      D => p_1_in(5),
      Q => \^o_dat\(5)
    );
\q_shift_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => \q_shift_reg[23]_i_1_n_0\,
      CLR => i_reset,
      D => p_1_in(6),
      Q => \^o_dat\(6)
    );
\q_shift_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => \q_shift_reg[23]_i_1_n_0\,
      CLR => i_reset,
      D => p_1_in(7),
      Q => \^o_dat\(7)
    );
\q_shift_reg_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => \q_shift_reg[23]_i_1_n_0\,
      CLR => i_reset,
      D => p_1_in(8),
      Q => \^o_dat\(8)
    );
\q_shift_reg_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => \q_shift_reg[23]_i_1_n_0\,
      CLR => i_reset,
      D => p_1_in(9),
      Q => \^o_dat\(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_reg_dec_24b_0_0 is
  port (
    i_clk : in STD_LOGIC;
    i_reset : in STD_LOGIC;
    i_load : in STD_LOGIC;
    i_en : in STD_LOGIC;
    i_dat_bit : in STD_LOGIC;
    i_dat_load : in STD_LOGIC_VECTOR ( 23 downto 0 );
    o_dat : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_reg_dec_24b_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_reg_dec_24b_0_0 : entity is "design_1_reg_dec_24b_0_0,reg_dec_24b,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_reg_dec_24b_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_reg_dec_24b_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_reg_dec_24b_0_0 : entity is "reg_dec_24b,Vivado 2020.2";
end design_1_reg_dec_24b_0_0;

architecture STRUCTURE of design_1_reg_dec_24b_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of i_clk : signal is "xilinx.com:signal:clock:1.0 i_clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of i_clk : signal is "XIL_INTERFACENAME i_clk, ASSOCIATED_RESET i_reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_clk_100MHz, INSERT_VIP 0";
  attribute x_interface_info of i_reset : signal is "xilinx.com:signal:reset:1.0 i_reset RST";
  attribute x_interface_parameter of i_reset : signal is "XIL_INTERFACENAME i_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.design_1_reg_dec_24b_0_0_reg_dec_24b
     port map (
      i_clk => i_clk,
      i_dat_bit => i_dat_bit,
      i_dat_load(23 downto 0) => i_dat_load(23 downto 0),
      i_en => i_en,
      i_load => i_load,
      i_reset => i_reset,
      o_dat(23 downto 0) => o_dat(23 downto 0)
    );
end STRUCTURE;
