----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/18/2021 11:51:08 AM
-- Design Name: 
-- Module Name: mux4 - Behavioral
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

entity mux4 is
    Generic ( input_length : integer := 24 );
    Port ( input0 : in STD_LOGIC_VECTOR (input_length-1 downto 0);
           input1 : in STD_LOGIC_VECTOR (input_length-1 downto 0);
           input2 : in STD_LOGIC_VECTOR (input_length-1 downto 0);
           input3 : in STD_LOGIC_VECTOR (input_length-1 downto 0);
           sel : in STD_LOGIC_VECTOR (1 downto 0);
           output0 : out STD_LOGIC_VECTOR (input_length-1 downto 0));
end mux4;

architecture Behavioral of mux4 is

begin

process(sel, input0, input1, input2, input3)
begin
  case sel is
                 when "00" =>
                     output0 <= input0;
                 when   "01" =>
                     output0 <= input1;
                 when   "10"  =>
                     output0 <= input2;
                 when    "11"  =>
                     output0 <= input3;
                 when  others  =>
                     output0 <= input0;
                 end case;
end process;


end Behavioral;
