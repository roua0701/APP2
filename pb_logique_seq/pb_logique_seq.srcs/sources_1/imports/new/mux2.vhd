----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/23/2021 04:00:46 PM
-- Design Name: 
-- Module Name: mux2 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux2 is
    Generic ( input_length : integer := 24 );
    Port ( sel : in STD_LOGIC_VECTOR (1 downto 0);
           input1 : in STD_LOGIC_VECTOR (input_length-1 downto 0);
           input2 : in STD_LOGIC_VECTOR (input_length-1 downto 0);
           output0 : out STD_LOGIC_VECTOR (input_length-1 downto 0));
end mux2;

architecture Behavioral of mux2 is

signal tied_to_gnd : std_logic_vector(input_length - 1 downto 0) := (others => '0');

begin

process(sel,input1, input2)
begin
  case sel is
                 when "00" =>
                     output0 <= tied_to_gnd;
                 when   "01" =>
                     output0 <= input1;
                 when   "10"  =>
                     output0 <= input2;
                 when    "11"  =>
                     output0 <= tied_to_gnd;
                 when  others  =>
                     output0 <= tied_to_gnd;
                 end case;
end process;


end Behavioral;
