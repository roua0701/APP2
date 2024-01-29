---------------------------------------------------------------------------------------------
--    circuit_tr_signal.vhd
---------------------------------------------------------------------------------------------
--    Circuit de base pour la problématique sur la carte ZYBO avec codec SSM2603
---------------------------------------------------------------------------------------------
--    Université de Sherbrooke - Département de GEGI
--
--    Version         : 5.0
--    Nomenclature    : inspiree de la nomenclature 0.2 GRAMS
--    Date            : rev 10 janvier 2020, 4 mai 2020, 5 janvier 2022
--    Auteur(s)       : Daniel Dalle, Sébastien Roy, Réjean Fontaine, Julien Rossignol
--    Technologie     : ZYNQ 7000 Zybo Z7-10 (xc7z010clg400-1)
--    Outils          : vivado 2020.2
--
---------------------------------------------------------------------------------------------
--    Description (sur une carte Zybo)
--    Circuit de fondation pour la problématique, voir la documentation de l'APP et
--    en particulier l'annexe.
--
--    Modification 5 janvier 2022 conversion vers block design
--    Modification 7 janvier 2020 documentation
--    Modification 6 mai 2019 introduction de decodeur_i2s_v1b
--    Developpement initial 2 février 2019
--
---------------------------------------------------------------------------------------------
-- ref documents problématique
-- ref manual Zybo
-- https://reference.digilentinc.com/reference/programmable-logic/zybo-z7/reference-manual
-- ref schematic (public)
-- https://reference.digilentinc.com/_media/reference/programmable-logic/zybo-z7/zybo_z7_sch-public.pdf
-- ref Analog Devices SSM2603 Audio Codec
-- https://www.analog.com/media/en/technical-documentation/data-sheets/ssm2603.pdf
--
-- carte ZYBO Z7-10 (voir les notes de projet)
-- sur PmodA double cable vers PmodSSD (version preliminaire)
-- sur PmodB vide      PmodB n'existe pas sur Zybo-Z7-10
-- sur PmodC ver Pmod8LD
-- sur PmodD signaux de tests
-- sur PmodE signaux de tests
--
---------------------------------------------------------------------------------------------
-- À FAIRE:
-- voir documents problématique
---------------------------------------------------------------------------------------------
--
---------------------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
----------------------------------------------------------------------------------
--
----------------------------------------------------------------------------------
entity circuit_tr_signal is
generic ( mode_simulation: std_logic := '0');
    Port (
    o_ac_bclk   : out   STD_LOGIC;   -- bit clock ... I2S digital audio clk  ~ mclk /4
    o_ac_mclk   : out   STD_LOGIC;   -- SSM2603 Master Clock horloge         ~ 12.288 MHz
    o_ac_muten  : out   STD_LOGIC;   -- DAC Output Mute, Active Low
    o_ac_pbdat  : out   STD_LOGIC;   -- I²S (Playback Data)
    o_ac_pblrc  : out   STD_LOGIC;   -- I²S (Playback Channel Clock)         ~ 48. KHz (~ 20.8 us)
    i_ac_recdat : in    STD_LOGIC;   -- I²S (Record Data)
    o_ac_reclrc : out   STD_LOGIC;   -- I²S (Record Channel Clock)           ~ 48. KHz (~ 20.8 us)
    io_ac_scl   : inout STD_LOGIC;   -- horloge I2C SPI
    io_ac_sda   : inout STD_LOGIC;   -- I2C 2-Wire Control Interface Data Input/Output.
    --
    i_btn       : in    std_logic_vector (3 downto 0);
    i_sw        : in    std_logic_vector (3 downto 0);
    sysclk      : in    std_logic;
    o_pmodssd   : out   std_logic_vector (7 downto 0);
    o_led       : out   std_logic_vector (3 downto 0);
    o_pmodled   : out   std_logic_vector (7 downto 0);
    o_led6_r    : out   std_logic;
    o_led6_g    : out   std_logic
--  
--    ;                                              -- DIO pour tests avec analyseur logique
--  DIO      : out   std_logic_vector (15 downto 0)  -- Signaux test pour analyseur logique
--                                                   -- (connecteurs JD et JE)
--                                                   -- voir avec fichier contraintes
    );
end circuit_tr_signal;

architecture STRUCTURE of circuit_tr_signal is

  constant freq_sys_Hz:  integer := 125_000_000;  -- Hz

  component  init_codec_v2
    Port (
         i_reset         : in    std_logic;
         o_cfg_done      : out   STD_LOGIC;
         o_cfg_busy      : out   STD_LOGIC;
         o_ena           : out   STD_LOGIC;  -- pour tests
       -- pour interface avec partie I2C du codec
         i_lrc           : in   STD_LOGIC;    -- I²S (Record Channel Clock)           ~ 48. KHz (~ 20.8 us)
         io_scl          : inout STD_LOGIC;   -- horloge I2C SPI
         io_sda          : inout STD_LOGIC;   -- I2C 2-Wire Control Interface Data Input/Output.
            --
         i_strobe_1000Hz : in    std_logic;
         clk_p           : in    std_logic
    );
  end component;

   component synchro_codec_v1 is
   generic (cst_CLK_syst_Hz: integer := 100_000_000);  -- valeur par defaut de fréquence de clkm
   Port (
          sysclk       : in STD_LOGIC;    -- Entrée  horloge systeme  (typique 125 MHz (1/8 ns) ou 100  ( 1/10 ns))
          o_clk_0      : out  STD_LOGIC;  -- horloge via bufg 50.    MHz  (20 ns)
          o_mclk       : out  STD_LOGIC;  -- horloge via bufg 12.389 MHz  (80,714 ns)
          o_stb_1000Hz : out  STD_LOGIC;  -- strobe durée 1/o_clk_0 sync sur 1000Hz
          o_stb_1Hz    : out  STD_LOGIC;  -- strobe durée 1/o_clk_0 sync sur  1Hz
          o_S_1Hz      : out  STD_LOGIC;  -- Signal temoin 1 Hz
          o_bclk       : out  STD_LOGIC;  -- horloge bit clk (defaut 12.289 MHz / 4 soit 3,07225 MHz  (325.49 ns) )
          o_reclrc     : out  STD_LOGIC    -- horloge record, play back, sampling rate clock, left right channel (defaut 48 KHz (20,83 us))
          );
   end component;
  
  component attenuateur_pwm
     generic (c_val_seuil: std_logic_vector(7 downto 0)  := "00001111");
         port (
                 CLK        : in   STD_LOGIC;     -- Entrée horloge
                 i_signal   : in   STD_LOGIC;     -- entree
                 o_signal   : out  STD_LOGIC     -- sortie
                 );
  end component;  

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
    o_sel_fct : out STD_LOGIC_VECTOR ( 1 downto 0 );
    o_sel_par : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component design_1;
  
---------------------------------------------------------------------------------
-- Signaux
----------------------------------------------------------------------------------

   signal clk_p           : std_logic;         -- horloge de synchro principale
   signal d_strobe_1000Hz : std_logic;
   signal d_strobe_cfg    : std_logic;
   signal d_strobe_1Hz    : std_logic := '0';
  
   signal d_T1Hz          : std_logic;
   signal reset           : std_logic;
  
   --
   signal d_sw          :    std_logic_vector (3 downto 0);  -- 4 bits sur Zybo
   signal d_btn        :    std_logic_vector (3 downto 0);
   signal d_btn_db        :    std_logic_vector (3 downto 0);
   -- signal d_str_btn    :    std_logic_vector (3 downto 0);


  signal d_ac_bclk   : std_logic;  --out   STD_LOGIC;   -- horloge I2S digital audio  sera mclk/4
  signal d_ac_mclk   : std_logic;  --out   STD_LOGIC;   -- Master Clock horloge ~ 12.288 MHz
  signal d_ac_muten  : std_logic;  --out   STD_LOGIC;   -- DAC Output Mute, Active Low
  signal d_ac_pbdat  : std_logic;  --out   STD_LOGIC;   -- I²S (Playback Data)
  signal d_ac_pblrc  : std_logic;  --out   STD_LOGIC;   -- I²S (Playback Channel Clock)
  signal d_ac_recdat : std_logic;  --in    STD_LOGIC;   -- I²S (Record Data)
  signal d_ac_reclrc : std_logic;  --out   STD_LOGIC;   -- I²S (Record Channel Clock)
  signal d_ac_scl    : std_logic;  --out   STD_LOGIC;   -- I2C SCLK active ou non
  
  signal d_cfg_busy        : std_logic;
  signal d_ena             : std_logic;
  signal d_cfg_done        : std_logic;  
  
  signal d_param       : std_logic_vector (7 downto 0);
  signal d_statut      : std_logic_vector (3 downto 0);
  
---------------------------------------------------------------------------------------------
--    Description (sur une carte Zybo)
---------------------------------------------------------------------------------------------
begin

 inst_synchro : synchro_codec_v1
  generic map (cst_CLK_syst_Hz => freq_sys_Hz)
     port map (
      sysclk            => sysclk,
      o_clk_0           => clk_p,            -- 50 MHz
      o_mclk            => d_ac_mclk,        -- 12.288 MHz approx
      o_stb_1000Hz      => d_strobe_1000Hz,
      o_stb_1Hz         => d_strobe_1Hz,
      o_S_1Hz           => d_T1Hz,
      o_bclk            => d_ac_bclk,        -- freq mclk / 4
      o_reclrc          => d_ac_reclrc
      );


inst_init_codec: init_codec_v2
--generic ( mode_simulation: std_logic := '0');
    Port map (
    i_reset      => reset,
    o_cfg_done   => d_cfg_done,
    o_cfg_busy   => d_cfg_busy,
    o_ena        => d_ena,
    --
    i_lrc        => d_ac_reclrc,
    io_scl       => io_ac_scl,
    io_sda       => io_ac_sda,
    --
    i_strobe_1000Hz  => d_strobe_cfg,
    clk_p      => clk_p      -- 50 MHz
    );

d_strobe_cfg <= d_strobe_1000Hz;    

design_1_i: component design_1
     port map (
      JPmod(7 downto 0) => o_pmodssd(7 downto 0),
      clk_100MHz => d_ac_bclk,
      i_btn(3 downto 0) => i_btn(3 downto 0),
      i_recdat => d_ac_recdat,
      i_lrc => d_ac_reclrc,
      i_sw(3 downto 0) => i_sw(3 downto 0),
      o_pbdat(0) => d_ac_pbdat,
      o_param => d_param,
      o_sel_fct => d_statut(3 downto 2),
      o_sel_par => d_statut(1 downto 0)
    );
    
 -- signaux d entree boutons et sw
    d_btn               <=  i_btn;
    d_sw                <=  i_sw;

     d_ac_muten <= '1';  -- DAC Output Mute, Active Low (Codec actif) ref SSM2603

     o_led6_r  <=   d_T1Hz;      -- signe de vie sur DEL rouge o_led6_r
     o_pmodled <=   d_param;
     o_led     <=   d_statut;
             
    -- attenuateur pour modérer l'éclat de la led verte o_led6_g
    inst_att: attenuateur_pwm
    generic map (c_val_seuil => "00001111")
    Port map
      (
       CLK          => clk_p,
       i_signal     => d_cfg_done,  -- signal a afficher
       o_signal     => o_led6_g     -- port led verte
      );


     -- signaux d entree / sortie du codec
     o_ac_bclk     <=   d_ac_bclk;     --out   STD_LOGIC;   -- horloge I2S digital audio  mclk/4
     o_ac_mclk     <=   d_ac_mclk;     --out   STD_LOGIC;   -- Master Clock horloge 12.288 MHz  clk_12_288MHz
     o_ac_muten    <=   d_ac_muten;    --out   STD_LOGIC;   -- DAC Output Mute, Active Low
     d_ac_recdat   <=   i_ac_recdat;   --in    STD_LOGIC;   -- I²S (Record Data)         provenant du codec
  
    --signaux vers le codec (avec OBUF)
    OBUF_o_pblrc : OBUF
        port map (
           O => o_ac_pblrc,   -- Buffer output
           I => d_ac_pblrc    -- Buffer input
        );
    OBUF_o_reclrc : OBUF
        port map (
           O => o_ac_reclrc,   -- Buffer output
           I => d_ac_reclrc    -- Buffer input
        );
    
    OBUF_o_pbdat : OBUF
        port map (
           O => o_ac_pbdat,   -- Buffer output
           I => d_ac_pbdat    -- Buffer input
        );
    
   d_ac_pblrc    <=   d_ac_reclrc;   -- I²S (Record et Playback Channel Clock) communs
    
end STRUCTURE;
