library ieee;
use ieee.std_logic_1164.all;

entity DFF_tb is
end DFF_tb;

architecture DFF_b of DFF_tb is
component D_F_S is
    port(
           D : in STD_LOGIC;
           Clk : in STD_LOGIC;
           Q : out STD_LOGIC;
           Qb : out STD_LOGIC
    );
end component;

signal D : std_logic := '0';
signal Clk : std_logic := '0';

signal Q : std_logic;
signal Qb : std_logic;

begin

uut: D_F_S port map (D => D, Clk => Clk, Q => Q, Qb => Qb);

stim_proc: process 
begin
wait for 10 ns;
D <= '0'; Clk <= '0';
wait for 10 ns;
D <= '0'; Clk <= '1';
wait for 10 ns;
D <= '1'; Clk <= '0'; 
wait for 10 ns;
D <= '1'; Clk <= '1';
wait for 10 ns;
end process;
end DFF_b;