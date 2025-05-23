library ieee;
use ieee.std_logic_1164.all; 
entity and_tb is

end and_tb;

architecture Behavioral_tb of end_tb is

component and_gate is
    Port(x, y : in std_logic;
    f : out std_logic );
end component;

signal x: std_logic:= '0';
signal y: std_logic:= '0';

signal f: std_logic;

begin

uut: and_gate PORT MAP(x=>x, y=>y, f=>f);

stim_proc: process

begin

wait for 10ns;

x<='1';
y<='0';
wait for 10ns;

x<='0';
y<='1';
wait for 10ns;

x<='0';
y<='0';
wait for 10ns;

x<='1';
y<='1';
wait for 10ns;

end process;
end Behavioral_tb;


