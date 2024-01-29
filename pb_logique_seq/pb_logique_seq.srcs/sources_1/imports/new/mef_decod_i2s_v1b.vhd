---------------------------------------------------------------------------------------------
-- circuit mef_decod_i2s_v1b.vhd                   Version mise en oeuvre avec des compteurs
---------------------------------------------------------------------------------------------
-- Université de Sherbrooke - Département de GEGI
-- Version         : 1.0
-- Nomenclature    : 0.8 GRAMS
-- Date            : 7 mai 2019
-- Auteur(s)       : Daniel Dalle
-- Technologies    : FPGA Zynq (carte ZYBO Z7-10 ZYBO Z7-20)
--
-- Outils          : vivado 2019.1
---------------------------------------------------------------------------------------------
-- Description:
-- MEF pour decodeur I2S version 1b
-- La MEF est substituee par un compteur
--
-- notes
-- frequences (peuvent varier un peu selon les contraintes de mise en oeuvre)
-- i_lrc        ~ 48.    KHz    (~ 20.8    us)
-- d_ac_mclk,   ~ 12.288 MHz    (~ 80,715  ns) (non utilisee dans le codeur)
-- i_bclk       ~ 3,10   MHz    (~ 322,857 ns) freq mclk/4
-- La durée d'une période reclrc est de 64,5 périodes de bclk ...
--
-- Revision  
-- Revision 14 mai 2019 (version ..._v1b) composants dans entités et fichiers distincts
---------------------------------------------------------------------------------------------
-- À faire :
--
--
---------------------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;  -- pour les additions dans les compteurs

entity mef_decod_i2s_v1b is
   Port ( 
   i_bclk      : in std_logic;
   i_reset     : in    std_logic; 
   i_lrc       : in std_logic;
   i_cpt_bits  : in std_logic_vector(6 downto 0);
 --  
   o_bit_enable     : out std_logic ;  --
   o_load_left      : out std_logic ;  --
   o_load_right     : out std_logic ;  --
   o_str_dat        : out std_logic ;  --  
   o_cpt_bit_reset  : out std_logic   -- 
   
);
end mef_decod_i2s_v1b;

architecture Behavioral of mef_decod_i2s_v1b is

    signal   d_reclrc_prec  : std_logic ;  -- 0 pour gauche et 1 pour droit

    type State_Type is (INIT, E0, E1, E2, E3, Sortie);
    signal current_state, next_state : State_Type;

    
begin

   -- pour detecter transitions d_ac_reclrc
   reglrc_I2S: process ( i_bclk)
   begin
   if i_bclk'event and (i_bclk = '1') then
        d_reclrc_prec <= i_lrc;
   end if;
   end process;
   
  -- synch compteur codeur
  -- Réinitialise le compteur à chaque changement de lrc
   rest_cpt: process (i_lrc, d_reclrc_prec, i_reset)
   begin
      o_cpt_bit_reset <= (d_reclrc_prec xor i_lrc) or i_reset;
   end process;
     
   -- Process de transition d'état
    process(i_bclk, i_reset)
    begin
        if i_reset = '1' then
            current_state <= INIT;
        elsif rising_edge(i_bclk) then
            current_state <= next_state;
        end if;
    end process;  
    
    -- Logic de transition d'état
    process(current_state, i_lrc, i_cpt_bits)
    begin
        case (current_state) is
        when INIT =>
            if (i_lrc = '1') then
                next_state <= E0;
            else
                next_state <= INIT;
            end if;
        when E0 =>
            if (i_lrc = '0') then
                next_state <= E1;
            else
                next_state <= E0;
            end if;
        when E1 =>
            if (i_cpt_bits = "0011000") then  -- À revoir
                next_state <= E2;
            else
                next_state <= E1;
            end if;
        when E2 =>
            if (i_lrc = '1') then
                next_state <= E3;
            else
                next_state <= E2;
            end if;
        when E3 =>
            if (i_cpt_bits = "0011000") then  -- À revoir
                next_state <= Sortie;
            else
                next_state <= E3;
            end if;
        when Sortie =>
            next_state <= E0;
        when others =>
            next_state <= INIT;        
        end case;
    end process;
    
        
    -- Les sorties
    process(current_state)
    begin
        case (current_state) is
        when INIT =>
            o_bit_enable <= '0';
            o_load_left <= '0';
            o_load_right <= '0';
            o_str_dat <= '0';
            o_cpt_bit_reset <= '1';
        when E0 =>
            o_bit_enable <= '0';
            o_load_left <= '0';
            o_load_right <= '0';
            o_str_dat <= '0';
            o_cpt_bit_reset <= '1';
        when E1 =>
            o_bit_enable <= '1';
            o_load_left <= '1';
            o_load_right <= '0';
            o_str_dat <= '0';
            o_cpt_bit_reset <= '0';
        when E2 =>
            o_bit_enable <= '0';
            o_load_left <= '0';
            o_load_right <= '0';
            o_str_dat <= '0';
            o_cpt_bit_reset <= '1';
        when E3 =>
            o_bit_enable <= '1';
            o_load_left <= '0';
            o_load_right <= '1';
            o_str_dat <= '0';
            o_cpt_bit_reset <= '0';
        when Sortie =>
            o_bit_enable <= '0';
            o_load_left <= '0';
            o_load_right <= '0';
            o_str_dat <= '1';
            o_cpt_bit_reset <= '1';
        when others =>
            o_bit_enable <= '0';
            o_load_left <= '0';
            o_load_right <= '0';
            o_str_dat <= '0';
            o_cpt_bit_reset <= '0';
        end case;
    end process;

     end Behavioral;