----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/08/2025 06:23:38 PM
-- Design Name: 
-- Module Name: mux_4to1 - Behavioral
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

entity mux_4to1 is
    Port ( inputs : in std_logic_vector(3 downto 0);
           s0 : in STD_LOGIC;
           s1 : in STD_LOGIC;
           z : out STD_LOGIC);
end mux_4to1;

architecture Behavioral of mux_4to1 is
begin
process(inputs, s1, s0)
begin

if (s0 = '0' and  s1 = '0') then
    z <= inputs(0);

elsif (s0 = '1' and  s1 = '0') then
    z <= inputs(1);

elsif (s0 = '0' and  s1 = '1') then
    z <= inputs(2);

elsif (s0 = '1' and  s1 = '1') then
    z <= inputs(3);
end if;
end process;

end Behavioral;