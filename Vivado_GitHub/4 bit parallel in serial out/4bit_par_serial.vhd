library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity register4 is
    Port ( D : in STD_LOGIC_vector(3 downto 0);
           Clk : in STD_LOGIC;
           reset : in STD_LOGIC;
--           Q : out STD_LOGIC;
--           Qb : out STD_LOGIC;
           led1: out STD_LOGIC;
           led2: out STD_LOGIC;
           led3: out STD_LOGIC;
           led4: out STD_LOGIC
           );
end register4;

architecture Structural of register4 is


signal count: integer range 0 to 5 := 0;

begin
process(clk, reset)
begin
if (reset = '1') then
--    Q <= '0';
--    Qb <= '0';
    led1 <= '0';
    led2 <= '0';
    led3 <= '0';
    led4 <= '0';
    count <= 0;
elsif (rising_edge (clk)) then
    count <= count + 1;
    if(count = 1) then
        led1 <= D(0);
        led2 <= D(1);
        led3 <= D(2);
        led4 <= D(3);
    elsif(count = 2) then
        led1 <= '0';
        led2 <= D(0);
        led3 <= D(1);
        led4 <= D(2);
    elsif(count = 3) then
        led1 <= '0';
        led2 <= '0';
        led3 <= D(0);
        led4 <= D(1);
    elsif(count = 4) then
        led1 <= '0';
        led2 <= '0';
        led3 <= '0';
        led4 <= D(0);
    elsif(count = 5) then
        led1 <= '0';
        led2 <= '0';
        led3 <= '0';
        led4 <= '0';
        count <= 0;
    end if;
end if;
end process;
end Structural;