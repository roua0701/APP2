-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Tue Jan 16 12:01:55 2024
-- Host        : gegi-3014-bmwin running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/rosj2103/Downloads/pb_logique_seq/pb_logique_seq.gen/sources_1/bd/design_1/ip/design_1_sig_fct_3_0_0/design_1_sig_fct_3_0_0_sim_netlist.vhdl
-- Design      : design_1_sig_fct_3_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_sig_fct_3_0_0 is
  port (
    i_ech : in STD_LOGIC_VECTOR ( 23 downto 0 );
    o_ech_fct : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_sig_fct_3_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_sig_fct_3_0_0 : entity is "design_1_sig_fct_3_0_0,sig_fct_3,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_sig_fct_3_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_sig_fct_3_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_sig_fct_3_0_0 : entity is "sig_fct_3,Vivado 2020.2";
end design_1_sig_fct_3_0_0;

architecture STRUCTURE of design_1_sig_fct_3_0_0 is
  signal \^i_ech\ : STD_LOGIC_VECTOR ( 23 downto 0 );
begin
  \^i_ech\(23 downto 0) <= i_ech(23 downto 0);
  o_ech_fct(23 downto 0) <= \^i_ech\(23 downto 0);
end STRUCTURE;
