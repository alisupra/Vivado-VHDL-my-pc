----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/20/2025 07:02:58 PM
-- Design Name: 
-- Module Name: compare_1bit - Behavioral
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

entity compare_1bit is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           ab : out STD_LOGIC;
           agb : out STD_LOGIC;
           alb : out STD_LOGIC);
end compare_1bit;

architecture Behavioral of compare_1bit is

begin
    
    process (a, b)
    begin
        if (a > b) then
            agb <= '1';
            ab <= '0';
            alb <= '0';
            end if;
        if (a < b) then
            alb <= '1';
            ab <= '0';
            agb <= '0';
            end if;
        if (a = b) then
            agb <= '0';
            ab <= '1';
            alb <= '0';
        end if;
    end process;
end Behavioral;
