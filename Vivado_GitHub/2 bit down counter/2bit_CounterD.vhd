library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DownCounter2bit is
    Port (
        clk : in STD_LOGIC;
        reset : in STD_LOGIC;
        Q : out STD_LOGIC_VECTOR(1 downto 0)
    );
end DownCounter2bit;

architecture Structural of DownCounter2bit is

    component JK_FF
        Port (
            clk : in STD_LOGIC;
            reset : in STD_LOGIC;
            J : in STD_LOGIC;
            K : in STD_LOGIC;
            Q : out STD_LOGIC;
            Qb : out STD_LOGIC
        );
    end component;

    signal q0, q1 : STD_LOGIC;
    signal qb0, qb1 : STD_LOGIC;

begin

    -- LSB FF toggles every clock
    FF0: JK_FF port map (
        clk => clk,
        reset => reset,
        J => '1',
        K => '1',
        Q => q0,
        Qb => qb0
    );

    -- MSB FF toggles when LSB is 0
    FF1: JK_FF port map (
        clk => q0,         
        reset => reset,
        J => '1',
        K => '1',
        Q => q1,
        Qb => qb1
    );

    Q <= q1 & q0;           -- Output as 2-bit vector

end Structural;
