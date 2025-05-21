library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux_tb is
end mux_tb;

architecture mux_b_tb of mux_tb is

component mux_4to1
    port(
        inputs : in std_logic_vector(3 downto 0);
        s0 : in STD_LOGIC;
        s1 : in STD_LOGIC;
        z : out STD_LOGIC
    );
end component;

signal inputs : std_logic_vector(3 downto 0) := (others => '0');
signal s0 : std_logic := '0';
signal s1 : std_logic := '0';
signal z : std_logic;

begin 

uut: mux_4to1 port map (inputs => inputs, s0 => s0, s1 => s1, z => z);

stim_proc: process
begin

for i in 0 to 15 loop
    wait for 10 ns;
    inputs <= std_logic_vector(TO_UNSIGNED(i, 4));
    end loop;
    
wait for 10 ns;

s0 <= '0'; s1 <= '0'; wait for 10 ns; 
s0 <= '0'; s1 <= '1'; wait for 10 ns;
s0 <= '1'; s1 <= '0'; wait for 10 ns;
s0 <= '1'; s1 <= '1'; wait for 10 ns;

end process;
end mux_b_tb;