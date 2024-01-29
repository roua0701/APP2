--  module_commande.vhd
--  D. Dalle  30 avril 2019, 16 janv 2020, 23 avril 2020
--  module qui permet de réunir toutes les commandes (problematique circuit sequentiels)
--  recues des boutons, avec conditionnement, et des interrupteurs

-- 23 avril 2020 elimination constante mode_seq_bouton: std_logic := '0'

LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity module_commande IS
generic (nbtn : integer := 4;  mode_simulation: std_logic := '0');
    PORT (
          clk              : in  std_logic;
          o_reset          : out  std_logic; 
          i_btn            : in  std_logic_vector (nbtn-1 downto 0); -- signaux directs des boutons
          i_sw             : in  std_logic_vector (3 downto 0);      -- signaux directs des interrupteurs
          o_btn_cd         : out std_logic_vector (nbtn-1 downto 0); -- signaux conditionnés 
          o_selection_fct  :  out std_logic_vector(1 downto 0);
          o_selection_par  :  out std_logic_vector(1 downto 0)
          );
end module_commande;

ARCHITECTURE BEHAVIOR OF module_commande IS


component conditionne_btn_v7 is
generic (nbtn : integer := nbtn;  mode_simul: std_logic := '0');
    port (
         CLK          : in std_logic;         -- devrait etre de l ordre de 50 Mhz
         i_btn        : in    std_logic_vector (nbtn-1 downto 0);
         --
         o_btn_db     : out    std_logic_vector (nbtn-1 downto 0);
         o_strobe_btn : out    std_logic_vector (nbtn-1 downto 0)
         );
end component;


    signal d_strobe_btn :    std_logic_vector (nbtn-1 downto 0);
    signal d_btn_cd     :    std_logic_vector (nbtn-1 downto 0); 
    signal d_reset      :    std_logic;
   
    type type_state is (F0, F1, F2, F3);
    signal state : type_state := F0;

BEGIN 
                  
 inst_cond_btn:  conditionne_btn_v7
    generic map (nbtn => nbtn, mode_simul => mode_simulation)
    port map(
        clk           => clk,
        i_btn         => i_btn,
        o_btn_db      => d_btn_cd,
        o_strobe_btn  => d_strobe_btn  
         );
 
 process(clk, d_strobe_btn)
 begin
    if(rising_edge(clk)) then
        if (d_reset = '1') then
            state <= F0;
        else
            case (state) is
                when F0 =>
                if (d_strobe_btn = "01") then
                    state <= F1;
                elsif (d_strobe_btn = "10") then
                    state <= F3;
                end if;
                o_selection_fct <= "00";
                when F1 =>
                if (d_strobe_btn = "01") then
                    state <= F2;
                elsif (d_strobe_btn = "10") then
                    state <= F0;
                end if;
                o_selection_fct <= "01";
                when F2 =>
                if (d_strobe_btn = "01") then
                    state <= F3;
                elsif (d_strobe_btn = "10") then
                    state <= F1;
                end if;
                o_selection_fct <= "10";
                when F3 =>
                if (d_strobe_btn = "01") then
                    state <= F0;
                elsif (d_strobe_btn = "10") then
                    state <= F2;
                end if;
                o_selection_fct <= "11";
                when others =>
                    state <= F0;
                o_selection_fct <= "00";
            end case;
        end if;
    end if;
 end process;
 
 
   o_btn_cd        <= d_btn_cd;
   o_selection_par <= i_sw(1 downto 0); -- mode de selection du parametre par sw
   --o_selection_fct <= i_sw(3 downto 2); -- mode de selection de la fonction par sw
   d_reset         <= i_btn(3);         -- pas de contionnement particulier sur reset
    o_reset <= d_reset;
    
END BEHAVIOR;
