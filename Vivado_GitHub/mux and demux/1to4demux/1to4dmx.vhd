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

entity demux_1to4 is
    Port ( outputs : out std_logic_vector(3 downto 0);
           s0 : in STD_LOGIC;
           s1 : in STD_LOGIC;
           z : in STD_LOGIC);
end demux_1to4;

architecture Behavioral of demux_1to4 is
begin
process(z, s1, s0)
begin

if (s0 = '0' and  s1 = '0') then
    outputs(0) <= z;
    outputs(1) <= '0';
    outputs(2) <= '0';
    outputs(3) <= '0';

elsif (s0 = '1' and  s1 = '0') then
    outputs(1) <= z;
    outputs(0) <= '0';
    outputs(2) <= '0';
    outputs(3) <= '0';
elsif (s0 = '0' and  s1 = '1') then
    outputs(2) <= z;
    outputs(1) <= '0';
    outputs(0) <= '0';
    outputs(3) <= '0';

elsif (s0 = '1' and  s1 = '1') then
    outputs(3) <= z;
    outputs(1) <= '0';
    outputs(2) <= '0';
    outputs(0) <= '0';
end if;
end process;

end Behavioral;