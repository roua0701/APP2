---------------------------------------------------------------------------------------------
-- Test-Bench module_commande_tb.vhd
--  
---------------------------------------------------------------------------------------------
-- Université de Sherbrooke - Département de GEGI
-- Version         : 1.0
-- Date            : 6 mai 2020
-- Auteur(s)       : Audrey Corbeil-Therrien, Daniel Dalle
-- Technologies    : FPGA Zynq (carte ZYBO Z7-10 ZYBO Z7-20)
--
-- Outils          : vivado 2019.1
---------------------------------------------------------------------------------------------
-- Description:
-- Developpement d'un test bench pour la problématique de logique séquentielle
-- Test unitaire de module_commande
---------------------------------------------------------------------------------------------
-- Révisions
-- bouton suivant & précédent 29 avril
-- À faire :
--
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity module_commande_tb is
--  Port ( );
end module_commande_tb;

architecture Behavioral of module_commande_tb is


component module_commande
generic (nbtn : integer := 4;  mode_simulation: std_logic := '1');
    PORT (
          clk          : in  std_logic;
          o_reset      : out  std_logic; 
          i_btn        : in  std_logic_vector (nbtn-1 downto 0); -- signaux directs des boutons
          i_sw         : in  std_logic_vector (3 downto 0);      -- signaux directs des interrupteurs
          o_btn_cd     : out std_logic_vector (nbtn-1 downto 0); -- signaux conditionnés 
                                                                 -- (debounced) des boutons
          --o_btn_strb : out std_logic_vector (nbtn-1 downto 0); -- impulsion 
          o_selection_par  :  out std_logic_vector(1 downto 0);
          o_selection_fct  :  out std_logic_vector(1 downto 0)
          );
end component;


-- l'horloge devrait être 50 MHz
   signal   d_clk_p       :  std_logic := '0';   -- (sol) horloge principale 50 MHz (utile pour cette simulation a éviter si possible)
   signal   d_reset       :  std_logic := '0'; 
   signal   d_sw          :  std_logic_vector (3 downto 0);  -- 4 bits sur Zybo
   signal   d_btn         :  std_logic_vector (3 downto 0);
   
   signal   d_btn_db      :  std_logic_vector (3 downto 0);
   signal   d_sel_par     :  std_logic_vector (1 downto 0); 
   signal   d_sel_fct     :  std_logic_vector (1 downto 0);
   
   -- signal test pour vérification
   signal expected_status_code    : std_logic_vector (1 downto 0);

   constant c_clk_p_Period      : time :=  20 ns;  -- 50 MHz  -- frequence de l'horloge utilisee pour module_commande dans la problématique
   constant c_delai_commandes   : time :=  10 us;  -- delai entre commandes du bouton
   
   
begin

   ----------------------------------------------------------------------------
   -- unites objets du test  
   ----------------------------------------------------------------------------
     
 UUT: module_commande
 Port map
    ( 
      clk             =>  d_clk_p,
      o_reset         =>  open,
      i_btn           =>  d_btn,
      i_sw            =>  d_sw,
      o_btn_cd        =>  d_btn_db,
      o_selection_par =>  d_sel_par,
      o_selection_fct =>  d_sel_fct
  );

   ----------------------------------------------------------------------------
   -- generation horloge  
   ----------------------------------------------------------------------------
   
  sim_clk_p:  process
   begin
      d_clk_p <= '1';  -- init
      loop
         wait for c_clk_p_Period / 2;
         d_clk_p <= not d_clk_p; -- invert clock value
      end loop;
   end process;  
   
----------------------------------------------------------------------------
-- reset par btn(3)
----------------------------------------------------------------------------
d_reset <= d_btn(3);



tb : PROCESS
   BEGIN
      d_sw  <= "0000";
      wait for 100 ns;  
      d_btn <= "1000", "0000" after 10 * c_clk_p_Period;  -- application reset sur btn3
      
     -- Tests avec les interrupteurs
     for i_sw in 0 to 15 loop
          d_sw <= std_logic_vector(to_unsigned(i_sw,4));
           wait for c_delai_commandes;  -- attendre delai
      end loop;
      d_sw  <= "0000";
      
      -- tests du plan de vérification de la MEF pour boutons
      expected_status_code <= "00";
      d_btn <= "1000", "0000" after 10 * c_clk_p_Period;  -- application reset sur btn3
          wait for 10.1 * c_clk_p_Period;  -- attendre delai
          assert (d_sel_fct = expected_status_code)
            report "L'etat n'est pas S0 après la reinitialisation"
            severity WARNING;
      for index_btn in 0 to 7 loop
          wait for c_delai_commandes;  -- attendre delai
          d_btn <= "0001";
          wait for c_delai_commandes;  -- attendre delai
          d_btn <= "0000";
          -- incrementation du code de l'état attendu
          expected_status_code <= std_logic_vector( unsigned(expected_status_code) + 1 );
          assert (d_sel_fct = expected_status_code)
            report "L'etat n'est pas celui attendu"
            severity WARNING;
      end loop;
      for index_btn in 0 to 7 loop
          wait for c_delai_commandes;  -- attendre delai
          d_btn <= "0010";
          wait for c_delai_commandes;  -- attendre delai
          d_btn <= "0000"; 
          expected_status_code <= std_logic_vector( unsigned(expected_status_code) - 1 );
          assert (d_sel_fct = expected_status_code)
            report "L'etat n'est pas celui attendu"
            severity WARNING;
      end loop;
      for index_btn in 0 to 3 loop
          wait for c_delai_commandes;  -- attendre delai
          d_btn <= "0011";
          wait for c_delai_commandes;  -- attendre delai
          d_btn <= "0000"; 
          -- Pas de assert ici - on explore le comportement d'une condition particuliere
      end loop;


      d_sw  <= "0000";
      d_btn <= "0000";
      
      WAIT; -- will wait forever
   END PROCESS;


end Behavioral;




