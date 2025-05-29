library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_register4 is
end tb_register4;

architecture b_register4  of tb_register4  is
component register4 is
    port(
           D : in STD_LOGIC_vector(3 downto 0);
           Clk : in STD_LOGIC;
           reset : in STD_LOGIC;
--           Q : out STD_LOGIC;
--           Qb : out STD_LOGIC;
           led1: out STD_LOGIC;
           led2: out STD_LOGIC;
           led3: out STD_LOGIC;
           led4: out STD_LOGIC
    );
end component;

signal D : std_logic_vector(3 downto 0) := (others => '0');
signal Clk : std_logic := '0';
signal reset : std_logic := '0';

--signal Q : std_logic;
--signal Qb : std_logic;
signal led1 : std_logic;
signal led2 : std_logic;
signal led3 : std_logic;
signal led4 : std_logic;

begin

uut: register4 port map (D => D, Clk => Clk, reset => reset, led1 => led1, led2 => led2, led3 => led3, led4 => led4);

reset_proc: process
begin

reset <= '1';
wait for 10 ns;
reset <= '0';
wait;
end process;

sim_process: process
    begin
        wait for 20 ns;
        for i in 0 to 15 loop
        D <= "1111"; 
--        D <= std_logic_vector(to_unsigned(i, 4)); 
        wait for 20 ns;
        end loop;
end process;

clk_process: process
    begin
        wait for 5 ns;
        for i in 0 to 15 loop
            clk <= '1';
            wait for 5 ns;
            clk <= '0';
            wait for 5 ns;
        end loop;
        
end process;

end b_register4;