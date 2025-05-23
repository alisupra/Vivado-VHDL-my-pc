----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/22/2025 07:09:26 PM
-- Design Name: 
-- Module Name: 4_comparator - Behavioral
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

entity comparator4 is
    Port (
        password :  in std_logic;
        password_c :  in std_logic;
        front_s :   in std_logic;
        back_s :    in std_logic;
        reset :     in std_logic;
        clk :       in std_logic;
        RED :       out std_logic;
        GREEN :     out std_logic;
        PASSWORD_S :out std_logic_vector(1 downto 0) -- 11 => Right Password; 10 => wrong password; 01 => wait passwort; 00 => imitial;
     );
end comparator4;

architecture Behavioral of comparator4 is
signal P :std_logic_vector(1 downto 0);
signal count : integer := 0; 
begin
process(clk, reset)
begin
    if reset <= '0' then
        RED <= '0';
        GREEN <= '0';
        password_s <= "00";
    elsif(rising_edge(clk)) then        
        if(front_s = '1') then
            RED <= '1';
            GREEN <= '0';
            PASSWORD_S <= "01";
            if(password = '1') then
                if (password_c = '1') then
                    GREEN <= '1';
                    RED <= '0';
                    if (back_s = '1' and front_s = '1') then
                        RED <= '1';
                        GREEN <= '0';
                        PASSWORD_S <= "01";
                    elsif((back_s = '1' and front_s = '0') or (back_s = '0' and front_s = '0')) then             
                        RED <= '0';
                        GREEN <= '0';
                        password_s <= "00";
                    end if;
                elsif(password_c = '0') then
                    GREEN <= '0';
                    RED <= '1';
                    PASSWORD_S <= "10";
                end if;
            elsif (password = '0') then
                RED <= '1';
                GREEN <= '0';
                PASSWORD_S <= "01";
                
            end if;
        end if;
    
    end if;
end process;
end Behavioral;
