library ieee;
use ieee.std_logic_1164.all;

entity d_f_tb is
end d_f_tb;

architecture d_ftb_a of d_f_tb is

component d_flip
    port(
        d : in STD_LOGIC;
        clk : in STD_LOGIC;
        rst : in STD_LOGIC;
        q : out STD_LOGIC;
        qb : out STD_LOGIC
    );
end component;

signal d : STD_LOGIC := '0';
signal clk : STD_LOGIC := '0';
signal rst : STD_LOGIC := '0';
signal q : STD_LOGIC;
signal qb : STD_LOGIC;


begin

uut: d_flip port map (d => d, clk => clk, rst => rst, q => q, qb => qb);


stim_proc: process
    begin
    wait for 10 ns;
    d <= '0'; clk <= '0'; rst <= '0';
    wait for 10 ns;
    d <= '0'; clk <= '0'; rst <= '1';
    wait for 10 ns;
    d <= '0'; clk <= '1'; rst <= '0';
    wait for 10 ns;
    d <= '0'; clk <= '1'; rst <= '1';
    wait for 10 ns;
    d <= '1'; clk <= '0'; rst <= '0';
    wait for 10 ns;
    d <= '1'; clk <= '0'; rst <= '1';
    wait for 10 ns;
    d <= '1'; clk <= '1'; rst <= '0';
    wait for 10 ns;
    d <= '1'; clk <= '1'; rst <= '1';
end process;
end d_ftb_a;