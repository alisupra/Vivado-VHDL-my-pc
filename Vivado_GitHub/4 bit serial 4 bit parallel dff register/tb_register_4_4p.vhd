library ieee;
use ieee.std_logic_1164.all;

entity tb_register4_4 is
end tb_register4_4;

architecture b_register4_4  of tb_register4_4  is
component register4_4 is
    port(
           D : in STD_LOGIC; 
           Clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           Q : out STD_LOGIC;
           Qb : out STD_LOGIC;
           led1: out STD_LOGIC;
           led2: out STD_LOGIC;
           led3: out STD_LOGIC;
           led4: out STD_LOGIC
    );
end component;

signal D : std_logic := '0';
signal Clk : std_logic := '0';
signal reset : std_logic := '0';

signal Q : std_logic;
signal Qb : std_logic;
signal led1 : std_logic;
signal led2 : std_logic;
signal led3 : std_logic;
signal led4 : std_logic;

begin

uut: register4_4 port map (D => D, Clk => Clk, Q => Q, Qb => Qb, reset => reset, led1 => led1, led2 => led2, led3 => led3, led4 => led4);

reset_proc: process
begin

reset <= '1';
wait for 10 ns;
reset <= '0';
wait;
end process;

 clk_process: process
    begin
        for i in 0 to 60 loop
        D <= '0'; Clk <= '0';
        wait for 10 ns;
        D <= '0'; Clk <= '1';
        wait for 10 ns;
        D <= '1'; Clk <= '0'; 
        wait for 10 ns;
        D <= '1'; Clk <= '1';
        wait for 10 ns;
        end loop;
    end process;

end b_register4_4;