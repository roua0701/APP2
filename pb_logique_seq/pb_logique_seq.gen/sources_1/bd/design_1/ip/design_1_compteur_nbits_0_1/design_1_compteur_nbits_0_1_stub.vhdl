-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Tue Jan 16 11:58:52 2024
-- Host        : gegi-3014-bmwin running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/rosj2103/Downloads/pb_logique_seq/pb_logique_seq.gen/sources_1/bd/design_1/ip/design_1_compteur_nbits_0_1/design_1_compteur_nbits_0_1_stub.vhdl
-- Design      : design_1_compteur_nbits_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_compteur_nbits_0_1 is
  Port ( 
    clk : in STD_LOGIC;
    i_en : in STD_LOGIC;
    reset : in STD_LOGIC;
    o_val_cpt : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );

end design_1_compteur_nbits_0_1;

architecture stub of design_1_compteur_nbits_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,i_en,reset,o_val_cpt[6:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "compteur_nbits,Vivado 2020.2";
begin
end;
