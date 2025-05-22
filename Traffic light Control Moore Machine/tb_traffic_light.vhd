library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_traffic_light is
end tb_traffic_light;

architecture Behavioral of tb_traffic_light is

    component traffic_light
        Port (
        clk : in std_logic;
        reset : in std_logic;
        red : out std_logic_vector(3 downto 0);
        yellow : out std_logic_vector(3 downto 0);
        green : out std_logic_vector(3 downto 0)
        );
    end component;

    signal clk   : STD_LOGIC := '0';
    signal reset : STD_LOGIC := '0';
    signal red   : STD_LOGIC_VECTOR(3 downto 0);
    signal yellow   : STD_LOGIC_VECTOR(3 downto 0);
    signal green   : STD_LOGIC_VECTOR(3 downto 0);

begin

    UUT: traffic_light port map (
        clk    => clk,
        reset  => reset,
        red    => red,
        yellow => yellow,
        green  => green
    );

    
    clk_process: process
    begin
        for i in 0 to 60 loop
            clk <= '0';
            wait for 10 ns;
            clk <= '1';
            wait for 10 ns;
        end loop;
    end process;

    -- reset pulse at start
    stim_proc: process
    begin
        reset <= '1';
        wait for 10 ns;
        reset <= '0';
        wait;
    end process;

end Behavioral;
