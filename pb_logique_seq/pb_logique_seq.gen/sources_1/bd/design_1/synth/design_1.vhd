--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
--Date        : Mon Jan 29 14:40:17 2024
--Host        : LAPTOP-VHGVRR86 running 64-bit major release  (build 9200)
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity M1_decodeur_i2s_imp_17RYJKZ is
  port (
    clk : in STD_LOGIC;
    i_data : in STD_LOGIC;
    i_lrc : in STD_LOGIC;
    i_reset : in STD_LOGIC;
    o_dat_left : out STD_LOGIC_VECTOR ( 23 downto 0 );
    o_dat_right : out STD_LOGIC_VECTOR ( 23 downto 0 );
    o_str_dat : out STD_LOGIC
  );
end M1_decodeur_i2s_imp_17RYJKZ;

architecture STRUCTURE of M1_decodeur_i2s_imp_17RYJKZ is
  component design_1_compteur_nbits_0_0 is
  port (
    clk : in STD_LOGIC;
    i_en : in STD_LOGIC;
    reset : in STD_LOGIC;
    o_val_cpt : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  end component design_1_compteur_nbits_0_0;
  component design_1_reg_24b_0_0 is
  port (
    i_clk : in STD_LOGIC;
    i_reset : in STD_LOGIC;
    i_en : in STD_LOGIC;
    i_dat : in STD_LOGIC_VECTOR ( 23 downto 0 );
    o_dat : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  end component design_1_reg_24b_0_0;
  component design_1_reg_24b_0_1 is
  port (
    i_clk : in STD_LOGIC;
    i_reset : in STD_LOGIC;
    i_en : in STD_LOGIC;
    i_dat : in STD_LOGIC_VECTOR ( 23 downto 0 );
    o_dat : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  end component design_1_reg_24b_0_1;
  component design_1_reg_dec_24b_0_0 is
  port (
    i_clk : in STD_LOGIC;
    i_reset : in STD_LOGIC;
    i_load : in STD_LOGIC;
    i_en : in STD_LOGIC;
    i_dat_bit : in STD_LOGIC;
    i_dat_load : in STD_LOGIC_VECTOR ( 23 downto 0 );
    o_dat : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  end component design_1_reg_dec_24b_0_0;
  component design_1_xlconstant_0_2 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_xlconstant_0_2;
  component design_1_xlconstant_0_3 is
  port (
    dout : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  end component design_1_xlconstant_0_3;
  component design_1_mef_decod_i2s_v1b_0_0 is
  port (
    i_bclk : in STD_LOGIC;
    i_reset : in STD_LOGIC;
    i_lrc : in STD_LOGIC;
    i_cpt_bits : in STD_LOGIC_VECTOR ( 6 downto 0 );
    o_bit_enable : out STD_LOGIC;
    o_load_left : out STD_LOGIC;
    o_load_right : out STD_LOGIC;
    o_str_dat : out STD_LOGIC;
    o_cpt_bit_reset : out STD_LOGIC
  );
  end component design_1_mef_decod_i2s_v1b_0_0;
  signal clk_1 : STD_LOGIC;
  signal compteur_nbits_0_o_val_cpt : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal i_data_1 : STD_LOGIC;
  signal i_lrc_1 : STD_LOGIC;
  signal i_reset_1 : STD_LOGIC;
  signal mef_decod_i2s_v1b_0_o_bit_enable : STD_LOGIC;
  signal mef_decod_i2s_v1b_0_o_cpt_bit_reset : STD_LOGIC;
  signal mef_decod_i2s_v1b_0_o_load_left : STD_LOGIC;
  signal mef_decod_i2s_v1b_0_o_load_right : STD_LOGIC;
  signal mef_decod_i2s_v1b_0_o_str_dat : STD_LOGIC;
  signal reg_24b_0_o_dat : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal reg_24b_1_o_dat : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal reg_dec_24b_0_o_dat : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconstant_1_dout : STD_LOGIC_VECTOR ( 23 downto 0 );
begin
  clk_1 <= clk;
  i_data_1 <= i_data;
  i_lrc_1 <= i_lrc;
  i_reset_1 <= i_reset;
  o_dat_left(23 downto 0) <= reg_24b_1_o_dat(23 downto 0);
  o_dat_right(23 downto 0) <= reg_24b_0_o_dat(23 downto 0);
  o_str_dat <= mef_decod_i2s_v1b_0_o_str_dat;
MEF_decodeur_i2s: component design_1_mef_decod_i2s_v1b_0_0
     port map (
      i_bclk => clk_1,
      i_cpt_bits(6 downto 0) => compteur_nbits_0_o_val_cpt(6 downto 0),
      i_lrc => i_lrc_1,
      i_reset => i_reset_1,
      o_bit_enable => mef_decod_i2s_v1b_0_o_bit_enable,
      o_cpt_bit_reset => mef_decod_i2s_v1b_0_o_cpt_bit_reset,
      o_load_left => mef_decod_i2s_v1b_0_o_load_left,
      o_load_right => mef_decod_i2s_v1b_0_o_load_right,
      o_str_dat => mef_decod_i2s_v1b_0_o_str_dat
    );
compteur_7bits: component design_1_compteur_nbits_0_0
     port map (
      clk => clk_1,
      i_en => mef_decod_i2s_v1b_0_o_bit_enable,
      o_val_cpt(6 downto 0) => compteur_nbits_0_o_val_cpt(6 downto 0),
      reset => mef_decod_i2s_v1b_0_o_cpt_bit_reset
    );
registre_24bits_droite: component design_1_reg_24b_0_0
     port map (
      i_clk => clk_1,
      i_dat(23 downto 0) => reg_dec_24b_0_o_dat(23 downto 0),
      i_en => mef_decod_i2s_v1b_0_o_load_right,
      i_reset => i_reset_1,
      o_dat(23 downto 0) => reg_24b_0_o_dat(23 downto 0)
    );
registre_24bits_gauche: component design_1_reg_24b_0_1
     port map (
      i_clk => clk_1,
      i_dat(23 downto 0) => reg_dec_24b_0_o_dat(23 downto 0),
      i_en => mef_decod_i2s_v1b_0_o_load_left,
      i_reset => i_reset_1,
      o_dat(23 downto 0) => reg_24b_1_o_dat(23 downto 0)
    );
registre_decalage_24bits: component design_1_reg_dec_24b_0_0
     port map (
      i_clk => clk_1,
      i_dat_bit => i_data_1,
      i_dat_load(23 downto 0) => xlconstant_1_dout(23 downto 0),
      i_en => mef_decod_i2s_v1b_0_o_bit_enable,
      i_load => xlconstant_0_dout(0),
      i_reset => i_reset_1,
      o_dat(23 downto 0) => reg_dec_24b_0_o_dat(23 downto 0)
    );
xlconstant_0: component design_1_xlconstant_0_2
     port map (
      dout(0) => xlconstant_0_dout(0)
    );
xlconstant_1: component design_1_xlconstant_0_3
     port map (
      dout(23 downto 0) => xlconstant_1_dout(23 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity M9_codeur_i2s_imp_1VJCTGL is
  port (
    i_bclk : in STD_LOGIC;
    i_dat_left : in STD_LOGIC_VECTOR ( 23 downto 0 );
    i_dat_right : in STD_LOGIC_VECTOR ( 23 downto 0 );
    i_lrc : in STD_LOGIC;
    i_reset : in STD_LOGIC;
    o_dat : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
end M9_codeur_i2s_imp_1VJCTGL;

architecture STRUCTURE of M9_codeur_i2s_imp_1VJCTGL is
  component design_1_compteur_nbits_0_1 is
  port (
    clk : in STD_LOGIC;
    i_en : in STD_LOGIC;
    reset : in STD_LOGIC;
    o_val_cpt : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  end component design_1_compteur_nbits_0_1;
  component design_1_mef_cod_i2s_vsb_0_0 is
  port (
    i_bclk : in STD_LOGIC;
    i_reset : in STD_LOGIC;
    i_lrc : in STD_LOGIC;
    i_cpt_bits : in STD_LOGIC_VECTOR ( 6 downto 0 );
    o_bit_enable : out STD_LOGIC;
    o_load_left : out STD_LOGIC;
    o_load_right : out STD_LOGIC;
    o_cpt_bit_reset : out STD_LOGIC
  );
  end component design_1_mef_cod_i2s_vsb_0_0;
  component design_1_mux2_0_0 is
  port (
    sel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    input1 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    input2 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    output0 : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  end component design_1_mux2_0_0;
  component design_1_reg_dec_24b_fd_0_0 is
  port (
    i_clk : in STD_LOGIC;
    i_reset : in STD_LOGIC;
    i_load : in STD_LOGIC;
    i_en : in STD_LOGIC;
    i_dat_bit : in STD_LOGIC;
    i_dat_load : in STD_LOGIC_VECTOR ( 23 downto 0 );
    o_dat : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  end component design_1_reg_dec_24b_fd_0_0;
  component design_1_util_vector_logic_0_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Op2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_util_vector_logic_0_0;
  component design_1_xlconcat_0_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component design_1_xlconcat_0_0;
  component design_1_xlconstant_0_1 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_xlconstant_0_1;
  component design_1_xlslice_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 23 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_xlslice_0_0;
  signal compteur_nbits_0_o_val_cpt : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal i_bclk_0_1 : STD_LOGIC;
  signal i_lrc_0_1 : STD_LOGIC;
  signal i_reset_0_1 : STD_LOGIC;
  signal input1_0_1 : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal input2_0_1 : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal mef_cod_i2s_vsb_0_o_bit_enable : STD_LOGIC;
  signal mef_cod_i2s_vsb_0_o_cpt_bit_reset : STD_LOGIC;
  signal mef_cod_i2s_vsb_0_o_load_left : STD_LOGIC;
  signal mef_cod_i2s_vsb_0_o_load_right : STD_LOGIC;
  signal mux2_0_output : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal reg_dec_24b_fd_0_o_dat : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal util_vector_logic_0_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconcat_0_dout : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_0_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  i_bclk_0_1 <= i_bclk;
  i_lrc_0_1 <= i_lrc;
  i_reset_0_1 <= i_reset;
  input1_0_1(23 downto 0) <= i_dat_left(23 downto 0);
  input2_0_1(23 downto 0) <= i_dat_right(23 downto 0);
  o_dat(0) <= xlslice_0_Dout(0);
compteur_nbits_0: component design_1_compteur_nbits_0_1
     port map (
      clk => i_bclk_0_1,
      i_en => mef_cod_i2s_vsb_0_o_bit_enable,
      o_val_cpt(6 downto 0) => compteur_nbits_0_o_val_cpt(6 downto 0),
      reset => mef_cod_i2s_vsb_0_o_cpt_bit_reset
    );
mef_cod_i2s_vsb_0: component design_1_mef_cod_i2s_vsb_0_0
     port map (
      i_bclk => i_bclk_0_1,
      i_cpt_bits(6 downto 0) => compteur_nbits_0_o_val_cpt(6 downto 0),
      i_lrc => i_lrc_0_1,
      i_reset => i_reset_0_1,
      o_bit_enable => mef_cod_i2s_vsb_0_o_bit_enable,
      o_cpt_bit_reset => mef_cod_i2s_vsb_0_o_cpt_bit_reset,
      o_load_left => mef_cod_i2s_vsb_0_o_load_left,
      o_load_right => mef_cod_i2s_vsb_0_o_load_right
    );
mux2_0: component design_1_mux2_0_0
     port map (
      input1(23 downto 0) => input1_0_1(23 downto 0),
      input2(23 downto 0) => input2_0_1(23 downto 0),
      output0(23 downto 0) => mux2_0_output(23 downto 0),
      sel(1 downto 0) => xlconcat_0_dout(1 downto 0)
    );
reg_dec_24b_fd_0: component design_1_reg_dec_24b_fd_0_0
     port map (
      i_clk => i_bclk_0_1,
      i_dat_bit => xlconstant_0_dout(0),
      i_dat_load(23 downto 0) => mux2_0_output(23 downto 0),
      i_en => mef_cod_i2s_vsb_0_o_bit_enable,
      i_load => util_vector_logic_0_Res(0),
      i_reset => i_reset_0_1,
      o_dat(23 downto 0) => reg_dec_24b_fd_0_o_dat(23 downto 0)
    );
util_vector_logic_0: component design_1_util_vector_logic_0_0
     port map (
      Op1(0) => mef_cod_i2s_vsb_0_o_load_left,
      Op2(0) => mef_cod_i2s_vsb_0_o_load_right,
      Res(0) => util_vector_logic_0_Res(0)
    );
xlconcat_0: component design_1_xlconcat_0_0
     port map (
      In0(0) => mef_cod_i2s_vsb_0_o_load_left,
      In1(0) => mef_cod_i2s_vsb_0_o_load_right,
      dout(1 downto 0) => xlconcat_0_dout(1 downto 0)
    );
xlconstant_0: component design_1_xlconstant_0_1
     port map (
      dout(0) => xlconstant_0_dout(0)
    );
xlslice_0: component design_1_xlslice_0_0
     port map (
      Din(23 downto 0) => reg_dec_24b_fd_0_o_dat(23 downto 0),
      Dout(0) => xlslice_0_Dout(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
-- Modules à modifier:
  -- MEF_decodeur_i2s (dans M1_decodeur_i2s)
  -- M5_parametre_1
  -- M6_parametre_2
  -- M8_commande
  -- Pour plus de clarté, vous pouvez cacher les fils pour les horloges
  -- et les resets dans les paramètres (engrenage en haut a droite de cette fenêtre).
  entity design_1 is
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
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=28,numReposBlks=26,numNonXlnxBlks=0,numHierBlks=2,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=19,numPkgbdBlks=0,bdsource=USER,""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""da_clkrst_cnt""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""=1,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_affhexPmodSSD_v3_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    DA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    i_btn : in STD_LOGIC_VECTOR ( 3 downto 0 );
    JPmod : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component design_1_affhexPmodSSD_v3_0_0;
  component design_1_calcul_param_3_0_0 is
  port (
    i_bclk : in STD_LOGIC;
    i_reset : in STD_LOGIC;
    i_en : in STD_LOGIC;
    i_ech : in STD_LOGIC_VECTOR ( 23 downto 0 );
    o_param : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component design_1_calcul_param_3_0_0;
  component design_1_mux4_0_0 is
  port (
    input0 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    input1 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    input2 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    input3 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    sel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    output0 : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  end component design_1_mux4_0_0;
  component design_1_mux4_0_1 is
  port (
    input0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    input1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    input2 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    input3 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    sel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    output0 : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component design_1_mux4_0_1;
  component design_1_sig_fct_3_0_0 is
  port (
    i_ech : in STD_LOGIC_VECTOR ( 23 downto 0 );
    o_ech_fct : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  end component design_1_sig_fct_3_0_0;
  component design_1_sig_fct_sat_dure_0_0 is
  port (
    i_ech : in STD_LOGIC_VECTOR ( 23 downto 0 );
    o_ech_fct : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  end component design_1_sig_fct_sat_dure_0_0;
  component design_1_sig_fct_sat_dure_0_1 is
  port (
    i_ech : in STD_LOGIC_VECTOR ( 23 downto 0 );
    o_ech_fct : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  end component design_1_sig_fct_sat_dure_0_1;
  component design_1_xlconstant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component design_1_xlconstant_0_0;
  component design_1_module_commande_0_0 is
  port (
    clk : in STD_LOGIC;
    o_reset : out STD_LOGIC;
    i_btn : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_sw : in STD_LOGIC_VECTOR ( 3 downto 0 );
    o_btn_cd : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_selection_fct : out STD_LOGIC_VECTOR ( 1 downto 0 );
    o_selection_par : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component design_1_module_commande_0_0;
  component design_1_calcul_param_2_0_0 is
  port (
    i_bclk : in STD_LOGIC;
    i_reset : in STD_LOGIC;
    i_en : in STD_LOGIC;
    i_ech : in STD_LOGIC_VECTOR ( 23 downto 0 );
    o_param : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component design_1_calcul_param_2_0_0;
  component design_1_calcul_param_1_0_0 is
  port (
    i_bclk : in STD_LOGIC;
    i_reset : in STD_LOGIC;
    i_en : in STD_LOGIC;
    i_ech : in STD_LOGIC_VECTOR ( 23 downto 0 );
    o_param : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component design_1_calcul_param_1_0_0;
  signal M10_conversion_affichage_JPmod : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal M8_commande_o_btn_cd : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal M8_commande_o_selection_par : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal M9_codeur_i2s_o_dat : STD_LOGIC_VECTOR ( 0 to 0 );
  signal calcul_param_1_0_o_param : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal calcul_param_2_0_o_param : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal calcul_param_3_0_o_param : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal clk_1 : STD_LOGIC;
  signal decodeur_i2s_o_dat_right : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal decodeur_i2s_o_str_dat : STD_LOGIC;
  signal i_btn_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal i_dat_left_1 : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal i_dat_right_1 : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal i_data_1 : STD_LOGIC;
  signal i_lrc_1 : STD_LOGIC;
  signal i_reset_1 : STD_LOGIC;
  signal i_sw_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal module_commande_0_o_selection_fct : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mux4_1_output : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal sig_fct_3_0_o_ech_fct : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal sig_fct_sat_dure_0_o_ech_fct : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal sig_fct_sat_dure_1_o_ech_fct : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk_100MHz : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_100MHZ CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk_100MHz : signal is "XIL_INTERFACENAME CLK.CLK_100MHZ, CLK_DOMAIN design_1_clk_100MHz, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
begin
  JPmod(7 downto 0) <= M10_conversion_affichage_JPmod(7 downto 0);
  clk_1 <= clk_100MHz;
  i_btn_1(3 downto 0) <= i_btn(3 downto 0);
  i_data_1 <= i_recdat;
  i_lrc_1 <= i_lrc;
  i_sw_1(3 downto 0) <= i_sw(3 downto 0);
  o_param(7 downto 0) <= mux4_1_output(7 downto 0);
  o_pbdat(0) <= M9_codeur_i2s_o_dat(0);
  o_sel_fct(1 downto 0) <= module_commande_0_o_selection_fct(1 downto 0);
  o_sel_par(1 downto 0) <= M8_commande_o_selection_par(1 downto 0);
M10_conversion_affichage: component design_1_affhexPmodSSD_v3_0_0
     port map (
      DA(7 downto 0) => mux4_1_output(7 downto 0),
      JPmod(7 downto 0) => M10_conversion_affichage_JPmod(7 downto 0),
      clk => clk_1,
      i_btn(3 downto 0) => M8_commande_o_btn_cd(3 downto 0),
      reset => i_reset_1
    );
M1_decodeur_i2s: entity work.M1_decodeur_i2s_imp_17RYJKZ
     port map (
      clk => clk_1,
      i_data => i_data_1,
      i_lrc => i_lrc_1,
      i_reset => i_reset_1,
      o_dat_left(23 downto 0) => i_dat_left_1(23 downto 0),
      o_dat_right(23 downto 0) => decodeur_i2s_o_dat_right(23 downto 0),
      o_str_dat => decodeur_i2s_o_str_dat
    );
M2_fonction_distortion_dure1: component design_1_sig_fct_sat_dure_0_0
     port map (
      i_ech(23 downto 0) => decodeur_i2s_o_dat_right(23 downto 0),
      o_ech_fct(23 downto 0) => sig_fct_sat_dure_0_o_ech_fct(23 downto 0)
    );
M3_fonction_distorsion_dure2: component design_1_sig_fct_sat_dure_0_1
     port map (
      i_ech(23 downto 0) => decodeur_i2s_o_dat_right(23 downto 0),
      o_ech_fct(23 downto 0) => sig_fct_sat_dure_1_o_ech_fct(23 downto 0)
    );
M4_fonction3: component design_1_sig_fct_3_0_0
     port map (
      i_ech(23 downto 0) => decodeur_i2s_o_dat_right(23 downto 0),
      o_ech_fct(23 downto 0) => sig_fct_3_0_o_ech_fct(23 downto 0)
    );
M5_parametre_1: component design_1_calcul_param_1_0_0
     port map (
      i_bclk => clk_1,
      i_ech(23 downto 0) => i_dat_right_1(23 downto 0),
      i_en => decodeur_i2s_o_str_dat,
      i_reset => i_reset_1,
      o_param(7 downto 0) => calcul_param_1_0_o_param(7 downto 0)
    );
M6_parametre_2: component design_1_calcul_param_2_0_0
     port map (
      i_bclk => clk_1,
      i_ech(23 downto 0) => i_dat_right_1(23 downto 0),
      i_en => decodeur_i2s_o_str_dat,
      i_reset => i_reset_1,
      o_param(7 downto 0) => calcul_param_2_0_o_param(7 downto 0)
    );
M7_parametre_3: component design_1_calcul_param_3_0_0
     port map (
      i_bclk => clk_1,
      i_ech(23 downto 0) => i_dat_right_1(23 downto 0),
      i_en => decodeur_i2s_o_str_dat,
      i_reset => i_reset_1,
      o_param(7 downto 0) => calcul_param_3_0_o_param(7 downto 0)
    );
M8_commande: component design_1_module_commande_0_0
     port map (
      clk => clk_1,
      i_btn(3 downto 0) => i_btn_1(3 downto 0),
      i_sw(3 downto 0) => i_sw_1(3 downto 0),
      o_btn_cd(3 downto 0) => M8_commande_o_btn_cd(3 downto 0),
      o_reset => i_reset_1,
      o_selection_fct(1 downto 0) => module_commande_0_o_selection_fct(1 downto 0),
      o_selection_par(1 downto 0) => M8_commande_o_selection_par(1 downto 0)
    );
M9_codeur_i2s: entity work.M9_codeur_i2s_imp_1VJCTGL
     port map (
      i_bclk => clk_1,
      i_dat_left(23 downto 0) => i_dat_left_1(23 downto 0),
      i_dat_right(23 downto 0) => i_dat_right_1(23 downto 0),
      i_lrc => i_lrc_1,
      i_reset => i_reset_1,
      o_dat(0) => M9_codeur_i2s_o_dat(0)
    );
Multiplexeur_choix_fonction: component design_1_mux4_0_0
     port map (
      input0(23 downto 0) => decodeur_i2s_o_dat_right(23 downto 0),
      input1(23 downto 0) => sig_fct_sat_dure_0_o_ech_fct(23 downto 0),
      input2(23 downto 0) => sig_fct_sat_dure_1_o_ech_fct(23 downto 0),
      input3(23 downto 0) => sig_fct_3_0_o_ech_fct(23 downto 0),
      output0(23 downto 0) => i_dat_right_1(23 downto 0),
      sel(1 downto 0) => module_commande_0_o_selection_fct(1 downto 0)
    );
Multiplexeur_choix_parametre: component design_1_mux4_0_1
     port map (
      input0(7 downto 0) => xlconstant_0_dout(7 downto 0),
      input1(7 downto 0) => calcul_param_1_0_o_param(7 downto 0),
      input2(7 downto 0) => calcul_param_2_0_o_param(7 downto 0),
      input3(7 downto 0) => calcul_param_3_0_o_param(7 downto 0),
      output0(7 downto 0) => mux4_1_output(7 downto 0),
      sel(1 downto 0) => M8_commande_o_selection_par(1 downto 0)
    );
parametre_0: component design_1_xlconstant_0_0
     port map (
      dout(7 downto 0) => xlconstant_0_dout(7 downto 0)
    );
end STRUCTURE;
