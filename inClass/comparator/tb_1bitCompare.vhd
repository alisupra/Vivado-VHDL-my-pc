library ieee;
use ieee.std_logic_1164.all; 

entity tb_compare is

end tb_compare;

architecture Behavioral of tb_compare is

component compare_1bit is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           ab : out STD_LOGIC;
           agb : out STD_LOGIC;
           alb : out STD_LOGIC);
end component;

signal a: std_logic := '0';
signal b: std_logic := '0';

signal ab: std_logic;
signal agb: std_logic;
signal alb: std_logic;

begin

uut: compare_1bit PORT MAP(a=>a, b=>b, ab=>ab, agb=>agb, alb=>alb);

stim_proc: process

begin

wait for 10 ns;

a <= '0';
b <= '0';
wait for 10 ns;

a <= '0';
b <= '1';
wait for 10 ns;

a <= '1';
b <= '0';
wait for 10 ns;

a <= '1';
b <= '1';
wait for 10 ns;

end process;
end Behavioral;


