--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
--Date        : Mon Jan 29 14:40:17 2024
--Host        : LAPTOP-VHGVRR86 running 64-bit major release  (build 9200)
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    JPmod : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk_100MHz : in STD_LOGIC;
    i_btn : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_lrc : in STD_LOGIC;
    i_recdat : in STD_LOGIC;
    i_sw : in STD_LOGIC_VECTOR ( 3 downto 0 );
    o_param : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_pbdat : out STD_LOGIC_VECTOR ( 0 to 0 );
    o_sel_fct : out STD_LOGIC_VECTOR ( 1 downto 0 );
    o_sel_par : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    i_recdat : in STD_LOGIC;
    i_lrc : in STD_LOGIC;
    i_btn : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_sw : in STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_100MHz : in STD_LOGIC;
    o_pbdat : out STD_LOGIC_VECTOR ( 0 to 0 );
    JPmod : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_param : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_sel_par : out STD_LOGIC_VECTOR ( 1 downto 0 );
    o_sel_fct : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      JPmod(7 downto 0) => JPmod(7 downto 0),
      clk_100MHz => clk_100MHz,
      i_btn(3 downto 0) => i_btn(3 downto 0),
      i_lrc => i_lrc,
      i_recdat => i_recdat,
      i_sw(3 downto 0) => i_sw(3 downto 0),
      o_param(7 downto 0) => o_param(7 downto 0),
      o_pbdat(0) => o_pbdat(0),
      o_sel_fct(1 downto 0) => o_sel_fct(1 downto 0),
      o_sel_par(1 downto 0) => o_sel_par(1 downto 0)
    );
end STRUCTURE;
