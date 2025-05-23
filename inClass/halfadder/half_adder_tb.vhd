library ieee;
use ieee.std_logic_1164.all;

entity half_adder_tb is
end half_adder_tb;

architecture h_adder_tb of half_adder_tb is

component half_adder
    port(
        x, y : in std_logic;
        s, cout : out std_logic  
    );
end component;

signal x : std_logic := '0';
signal y : std_logic := '0';

signal s : std_logic;
signal cout : std_logic;

begin

uut: half_adder port map(x => x, y => y, s => s, cout => cout);

stim_proc: process
begin

wait for 10 ns;

x <= '0';
y <= '0';
wait for 10 ns;

x <= '0';
y <= '1';
wait for 10 ns;

x <= '1';
y <= '0';
wait for 10 ns;

x <= '1';
y <= '1'; 
wait for 10 ns;

end process;
end h_adder_tb;
