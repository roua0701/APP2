
---------------------------------------------------------------------------------------------
--    sig_fct_sat_dure_sol.vhd  
---------------------------------------------------------------------------------------------YBO
---------------------------------------------------------------------------------------------
--    Université de Sherbrooke - Département de GEGI
--
--    Version         : 5.0
--    Nomenclature    : inspiree de la nomenclature 0.2 GRAMS
--    Date            : 6 mai 2020
--    Auteur(s)       : Daniel Dalle
--    Technologie     : ZYNQ 7000 Zybo Z7-10 (xc7z010clg400-1) 
--    Outils          : vivado 2018.2 64 bits
--
---------------------------------------------------------------------------------------------
--    Description 
--    Module qui applique une saturation au signal d'entrée.
--    La valeur de saturation est déterminée par c_ech_u24_max.
--    La fonction de saturation est symétrique pour les valeur positives et négatives.
--    Le signal est interprété en notation complément a 2
---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
--
---------------------------------------------------------------------------------------------
--    À FAIRE:
-- 
---------------------------------------------------------------------------------------------
--
---------------------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;  -- pour les additions dans les compteurs
USE ieee.numeric_std.ALL;
--use IEEE.std_logic_arith.all;     -- requis pour les constantes  etc.
--use IEEE.std_logic_arith.all;     -- requis pour les constantes telles que cdviv6 etc.
Library UNISIM;
use UNISIM.vcomponents.all;

----------------------------------------------------------------------------------
--
----------------------------------------------------------------------------------
entity sig_fct_sat_dure is
generic (c_ech_u24_max : unsigned (23 downto 0) := x"1FFFFF");
    Port (  
    i_ech       : in   std_logic_vector (23 downto 0);
    o_ech_fct   : out  std_logic_vector (23 downto 0)                                    
    );
end sig_fct_sat_dure;

----------------------------------------------------------------------------------

architecture Behavioral of sig_fct_sat_dure is
   

---------------------------------------------------------------------------------
-- Signaux
----------------------------------------------------------------------------------
   
 --   constant c_ech_u24_max   : unsigned (23 downto 0) := x"7FFFFF" / 4 ;    -- seuil etabli pour test  
    signal d_ech_u24         : unsigned (23 downto 0);      --  
    signal d_ech_u24_abs     : unsigned (23 downto 0);      -- 
    signal d_ech_fct_u24     : unsigned (23 downto 0);      -- 
    signal d_ech_fct_u24_satur : unsigned (23 downto 0);  -- 
 
    
---------------------------------------------------------------------------------------------
--    Description 
---------------------------------------------------------------------------------------------
begin 
    d_ech_u24 <= unsigned (i_ech);

    inst_abs_in: process( d_ech_u24) 
       begin
       if (d_ech_u24 = x"800000") then d_ech_u24_abs <= x"7FFFFF"; else
           if d_ech_u24(23) = '1' then
                d_ech_u24_abs <= not d_ech_u24 + 1;
              else
                d_ech_u24_abs <= d_ech_u24;
           end if;
       end if;
      end process;

    inst_satur: process( d_ech_u24_abs)

       begin
           if (d_ech_u24_abs > c_ech_u24_max) then
              d_ech_fct_u24_satur <= c_ech_u24_max; 
           else 
              d_ech_fct_u24_satur <= d_ech_u24_abs;
      end if;
      end process;
                  
    inst_vsign_out: process(d_ech_fct_u24_satur, d_ech_u24)
     begin
            if  d_ech_u24(23) = '1' then
              d_ech_fct_u24 <= not d_ech_fct_u24_satur  + 1;
              else
              d_ech_fct_u24 <= d_ech_fct_u24_satur;
            end if; 
       end process;
       
     o_ech_fct    <= std_logic_vector( d_ech_fct_u24);    
                 
end Behavioral;
