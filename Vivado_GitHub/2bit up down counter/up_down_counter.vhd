library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity UpDownCounter2bit is
    Port (
        clk : in STD_LOGIC;
        reset : in STD_LOGIC;
        Q : out STD_LOGIC_VECTOR(1 downto 0)
    );
end UpDownCounter2bit;

architecture Structural of UpDownCounter2bit is

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

    signal q0,q00, q1 : STD_LOGIC;
    signal qb0, qb1 : STD_LOGIC;
    signal clk_ff1, clk_sel: STD_LOGIC;
    signal count : integer range 0 to 3;

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
    
process(clk, reset)
begin
    if reset = '1' then
        clk_sel <= '0'; -- reset to counting up
    elsif rising_edge(clk) then
        if clk_sel = '0' then  -- counting up
            count <= count + 1;
            if count = 3 then
                clk_sel <= '1';  -- switch to count down
            end if;
        elsif(clk_sel = '1')then  -- counting down
            count <= count - 1;
            if count = 0 then
                clk_sel <= '0';  -- switch to count up
            end if;
        end if;
    end if;
end process;








    
    clk_ff1 <= q0 when clk_sel = '1' else qb0;
  -- default, to avoid latches
    
    
    
    -- MSB FF toggles when LSB is 0
    FF1: JK_FF port map (
        clk => clk_ff1,         
        reset => reset,
        J => '1',
        K => '1',
        Q => q1,
        Qb => qb1
    );

    Q <= q1 & q0;           -- Output as 2-bit vector

end Structural;
