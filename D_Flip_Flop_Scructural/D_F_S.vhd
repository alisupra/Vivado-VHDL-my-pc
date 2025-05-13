library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity D_F_S is
    Port ( D : in STD_LOGIC;
           Clk : in STD_LOGIC;
           Q : out STD_LOGIC;
           Qb : out STD_LOGIC);
end D_F_S;

architecture Structural of D_F_S is
component NAND_G is
    port(
        x : in STD_LOGIC;
        y : in STD_LOGIC;
        f : out STD_LOGIC
    );
end component;

component NOT_G is
    port(
        x : in STD_LOGIC;
        f : out STD_LOGIC
    );
end component;
signal C, b2, m1, m2, e, a : std_logic;

begin
process(Clk)
begin
if rising_edge(Clk) then
            C <= D;
end if;
end process;
NAND1 : NAND_G port map ( x => C, y => Clk, f => m1 );
NAND2 : NAND_G port map ( x => b2, y => Clk, f => m2 );
NAND3 : NAND_G port map ( x => m1, y => a, f => e );
NAND4 : NAND_G port map ( x => e, y => m2, f => a );

NOT1 : NOT_G port map ( x => C, f => b2 );

Q <= e;
Qb <= a;

end Structural;
