library ieee;
use ieee.std_logic_1164.all;

entity f_adder_tb is
end f_adder_tb;

architecture f_adder_tb of f_adder_tb is

component full_adder
    port(
        x : in STD_LOGIC;
        y : in STD_LOGIC;
        cin : in STD_LOGIC;
        s : out STD_LOGIC;
        cout : out STD_LOGIC 
    );
end component;

signal x : std_logic := '0';
signal y : std_logic := '0';
signal cin : std_logic := '0';

signal s : std_logic;
signal cout : std_logic;

begin

uut: full_adder port map(x => x, y => y, cin => cin, s => s, cout => cout);

stim_proc: process
begin

wait for 10 ns;

x <= '0';
y <= '0';
cin <= '0';
wait for 10 ns;

x <= '0';
y <= '1';
cin <= '0';
wait for 10 ns;

x <= '1';
y <= '0';
cin <= '0';
wait for 10 ns;

x <= '1';
y <= '1'; 
cin <= '0';
wait for 10 ns;

x <= '0';
y <= '0';
cin <= '1';
wait for 10 ns;

x <= '0';
y <= '1';
cin <= '1';
wait for 10 ns;

x <= '1';
y <= '0';
cin <= '1';
wait for 10 ns;

x <= '1';
y <= '1'; 
cin <= '1';
wait for 10 ns;

end process;
end f_adder_tb;
