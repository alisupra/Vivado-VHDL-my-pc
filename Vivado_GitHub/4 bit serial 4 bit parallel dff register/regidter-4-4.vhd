library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity register4_4 is
    Port ( D : in STD_LOGIC;
           Clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           Q : out STD_LOGIC;
           Qb : out STD_LOGIC;
           led1: out STD_LOGIC;
           led2: out STD_LOGIC;
           led3: out STD_LOGIC;
           led4: out STD_LOGIC
           );
end register4_4   ;

architecture Structural of register4_4 is
component D_F_S is
    port(
        D : in STD_LOGIC;
        Clk : in STD_LOGIC;
        Q : out STD_LOGIC;
        Qb : out STD_LOGIC
    );
end component;

signal clk2 : std_logic;
signal c1, c2, c3, c4: std_logic;
signal l1, l2, l3, l4 : std_logic;
signal q1, q2, q3, q4 : std_logic;

signal count : integer := 0;


begin

D_F_S1 : D_F_S port map ( D => D, clk => clk, q=>q1);
D_F_S2 : D_F_S port map ( D => q1, clk => clk, q=>q2 );
D_F_S3 : D_F_S port map ( D => q2, clk => clk, q=>q3 );
D_F_S4 : D_F_S port map ( D => q3, clk => clk, q=>q4 );


process(clk)
begin
    if rising_edge(clk) then
        if count < 4 then
            count <= count + 1;
        end if;

        if count = 4 then
            c1 <= q1;
            c2 <= q2;
            c3 <= q3;
            c4 <= q4;
            count <= 0;
        end if;
    end if;
end process;


D_F_S5 : D_F_S port map ( D => c1, clk => clk, q=>l1 );
D_F_S6 : D_F_S port map ( D => c2, clk => clk, q=>l2 );
D_F_S7 : D_F_S port map ( D => c3, clk => clk, q=>l3 );
D_F_S8 : D_F_S port map ( D => c4, clk => clk, q=>l4 );

Q <= q4;
Qb <= not q4;
led1 <= l1;
led2 <= l2;
led3 <= l3;
led4 <= l4;

end Structural;