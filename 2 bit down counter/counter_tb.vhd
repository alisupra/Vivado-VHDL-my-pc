library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_DownCounter2bit is
end tb_DownCounter2bit;

architecture Behavioral of tb_DownCounter2bit is

    component DownCounter2bit
        Port (
            clk : in STD_LOGIC;
            reset : in STD_LOGIC;
            Q : out STD_LOGIC_VECTOR(1 downto 0)
        );
    end component;

    signal clk   : STD_LOGIC := '0';
    signal reset : STD_LOGIC := '0';
    signal Q     : STD_LOGIC_VECTOR(1 downto 0);

begin

    UUT: DownCounter2bit port map (
        clk   => clk,
        reset => reset,
        Q     => Q
    );

    
    clk_process: process
    begin
        clk <= '0'; wait for 5 ns;
        clk <= '1'; wait for 5 ns;
        clk <= '0'; wait for 5 ns;
        clk <= '1'; wait for 5 ns;
        clk <= '0'; wait for 5 ns;
        clk <= '1'; wait for 5 ns;
        clk <= '0'; wait for 5 ns;
        clk <= '1'; wait for 5 ns;
        clk <= '0'; wait for 5 ns;
        clk <= '1'; wait for 5 ns;
    end process;

    -- reset pulse at start
    stim_proc: process
    begin
        reset <= '1';
        wait for 7 ns;
        reset <= '0';
        wait;
    end process;

end Behavioral;
