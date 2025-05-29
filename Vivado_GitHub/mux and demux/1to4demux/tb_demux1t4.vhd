library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity demux_tb is
end demux_tb;

architecture demux_b_tb of demux_tb is

component demux_1to4
    port(
        inputs : out std_logic_vector(3 downto 0);
        s0 : in STD_LOGIC;
        s1 : in STD_LOGIC;
        z : in STD_LOGIC
    );
end component;

signal inputs : std_logic_vector(3 downto 0);
signal s0 : std_logic := '0';
signal s1 : std_logic := '0';
signal z : std_logic := '0';

begin 

uut: demux_1to4 port map (inputs => inputs, s0 => s0, s1 => s1, z => z);

stim_proc: process
begin

wait for 10 ns;

z <= '0';

wait for 10 ns;

z <= '1';
    
wait for 10 ns;

s0 <= '0'; s1 <= '0'; wait for 10 ns; 
s0 <= '0'; s1 <= '1'; wait for 10 ns;
s0 <= '1'; s1 <= '0'; wait for 10 ns;
s0 <= '1'; s1 <= '1'; wait for 10 ns;

end process;
end demux_b_tb;