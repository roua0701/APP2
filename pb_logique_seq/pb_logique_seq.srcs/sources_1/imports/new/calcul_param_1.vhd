
---------------------------------------------------------------------------------------------
--    calcul_param_1.vhd
---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
--    Université de Sherbrooke - Département de GEGI
--
--    Version         : 5.0
--    Nomenclature    : inspiree de la nomenclature 0.2 GRAMS
--    Date            : 16 janvier 2020, 4 mai 2020
--    Auteur(s)       : 
--    Technologie     : ZYNQ 7000 Zybo Z7-10 (xc7z010clg400-1) 
--    Outils          : vivado 2019.1 64 bits
--
---------------------------------------------------------------------------------------------
--    Description (sur une carte Zybo)
---------------------------------------------------------------------------------------------
--
---------------------------------------------------------------------------------------------
-- À FAIRE: 
-- Voir le guide de la problématique
---------------------------------------------------------------------------------------------
--
---------------------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;  -- pour les additions dans les compteurs
USE ieee.numeric_std.ALL;
Library UNISIM;
use UNISIM.vcomponents.all;

----------------------------------------------------------------------------------
-- 
----------------------------------------------------------------------------------
entity calcul_param_1 is
    Port (
    i_bclk    : in   std_logic; -- bit clock (I2S)
    i_reset   : in   std_logic;
    i_en      : in   std_logic; -- un echantillon present a l'entrée
    i_ech     : in   std_logic_vector (23 downto 0); -- echantillon en entrée
    o_param   : out  std_logic_vector (7 downto 0)   -- paramètre calculé
    );
end calcul_param_1;

----------------------------------------------------------------------------------

architecture Behavioral of calcul_param_1 is

---------------------------------------------------------------------------------
-- Signaux
----------------------------------------------------------------------------------
    type State_Type is (INIT, Attente, Positif, Negatif, Sortie, Reset);
    signal current_state, next_state : State_Type;
    
    signal streak : std_logic_vector(1 downto 0);
    
    signal rst_compteur_3 : std_logic := '0';
    signal rst_compteur_periode : std_logic := '0';

    signal static_param : std_logic_vector(7 downto 0) := (others => '0');
    signal param : std_logic_vector(7 downto 0) := (others => '0');
    
    

    component compteur_nbits is
        generic (nbits : integer := 8);
        port (
            clk : in std_logic;
            i_en : in std_logic;
            reset : in std_logic;
            o_val_cpt : out std_logic_vector(nbits-1 downto 0)
        );
    end component;
---------------------------------------------------------------------------------------------
--    Description comportementale
---------------------------------------------------------------------------------------------
begin
    --o_param <=  static_param;         
    compteur_periode : compteur_nbits generic map (nbits => 8)
                        port map (
                            clk => i_bclk,
                            i_en => i_en,
                            reset => rst_compteur_periode,
                            o_val_cpt => param
                        );
                        
    compteur_streak : compteur_nbits generic map (nbits => 2)
                        port map (
                            clk => i_bclk,
                            i_en => i_en,
                            reset => rst_compteur_3,
                            o_val_cpt => streak
                        );

    -- Process de transition d'état
    process (i_en, i_reset) is
    begin
        if (i_reset = '1') then
                current_state <= INIT;
        elsif (i_en'event and i_en = '1') then
            current_state <= next_state;
        end if;
    end process;
    
    -- Logic de transition d'état
    process(current_state, streak)
    begin
        case (current_state) is
        when INIT =>
            if (streak = "11") then
                next_state <= Attente;
            else
                next_state <= INIT;
            end if;
        when Attente =>
            if (streak = "11") then
                next_state <= Positif;
            else
                next_state <= Attente;
            end if;
        when Positif =>
            if (streak = "11") then
                next_state <= Negatif;
            else
                next_state <= Positif;
            end if;
        when Negatif =>
            if (streak = "11") then
                next_state <= Attente;
            else
                next_state <= Positif;
            end if;
        when Sortie =>
            next_state <= Reset;
        when Reset =>
            next_state <= Positif;
        when others =>
            next_state <= INIT;
        end case;
    end process;
    
    -- Reset les compteur
    process(i_en, i_reset, current_state)
    begin
        case (current_state) is
            when INIT =>
                rst_compteur_periode <= '1';
                if (i_ech(23) = '1') then
                    rst_compteur_3 <= '1';
                else
                    rst_compteur_3 <= '0';
                end if;
            when Attente =>
                rst_compteur_periode <= '1';
                if (i_ech(23) = '0') then
                    rst_compteur_3 <= '1';
                else
                    rst_compteur_3 <= '0';
                end if;
            when Positif =>
                rst_compteur_periode <= '0';
                if (i_ech(23) = '1') then
                    rst_compteur_3 <= '1';
                else
                    rst_compteur_3 <= '0';
                end if;
            when Negatif =>
                rst_compteur_periode <= '0';
                if (i_ech(23) = '0') then
                    rst_compteur_3 <= '1';
                else
                    rst_compteur_3 <= '0';
                end if;
            when Sortie =>
                rst_compteur_periode <= '0';
                rst_compteur_3 <= '1';
            when Reset =>
                rst_compteur_periode <= '1';
                rst_compteur_3 <= '1';
            when others =>
                rst_compteur_periode <= '1';
                if (i_ech(23) = '0') then
                    rst_compteur_3 <= '1';
                else
                    rst_compteur_3 <= '0';
                end if;
        end case;
     end process;
    
process(current_state)
begin
    case current_state is
        when Sortie =>
            o_param <= param;
        when others =>
            null;
    end case;
end process;
    
end Behavioral;
