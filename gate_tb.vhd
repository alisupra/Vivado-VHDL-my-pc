library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; 

entity and_tb is
end and_tb;

architecture Behavioral of and_tb is
    component gates
        port (
            inputs : in std_logic_vector(1 downto 0);
            f : out std_logic
        );
    end component;

    signal inputs : std_logic_vector(1 downto 0) := (others => '0');
    signal f : std_logic;
begin
    uut: gates port map (inputs => inputs, f => f);

    stim_proc: process
    begin
        wait for 10 ns;
        for i in 0 to 3 loop
            inputs <= std_logic_vector(to_unsigned(i, 2));
            wait for 10 ns;
        end loop;
    end process;
end Behavioral;
