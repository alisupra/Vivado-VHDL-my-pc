----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/21/2025 05:24:36 PM
-- Design Name: 
-- Module Name: traffic_light - Behavioral
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
use IEEE.numeric_std.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity traffic_light is
  Port ( 
    clk : in std_logic;
    reset : in std_logic;
    red : out std_logic_vector(3 downto 0);
    yellow : out std_logic_vector(3 downto 0);
    green : out std_logic_vector(3 downto 0)
  );
end traffic_light;

architecture Behavioral of traffic_light is
signal count : integer := 0;
signal t: std_logic_vector(2 downto 0);
begin

process(clk, reset)
begin
    if (reset = '1') then
        red <= "0000";
        yellow <= "0000";
        green <= "0000";
        count <= 0;
        t <= "001";
    elsif(rising_edge(clk)) then
        if (t = "001") then
            count <= count + 1;
            red <= std_logic_vector(TO_UNSIGNED(count, 4));
            yellow <= "0000";
            green <= "0000";
            if(count = 10) then
                count <= 0;
                t <= "010";
            end if;
        elsif (t = "010") then
            count <= count + 1;
            yellow <= std_logic_vector(TO_UNSIGNED(count, 4));
            red <= "0000";
            green <= "0000";
            if(count = 5) then
                count <= 0;
                t <= "100";
            end if;
        elsif (t = "100") then
            count <= count + 1;
            green <= std_logic_vector(TO_UNSIGNED(count, 4));
            red <= "0000";
            yellow <= "0000";
            if(count = 15) then
                count <= 0;
                t <= "001";
            end if;
        end if;
    end if;
end process;

end Behavioral;
