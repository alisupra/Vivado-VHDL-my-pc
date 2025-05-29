library ieee;
use ieee.std_logic_1164.all;

entity NOT_G is
    Port ( x : in STD_LOGIC;
           f : out STD_LOGIC);
end NOT_G;

architecture B_NOT of NOT_G is

begin

f <= not x;
end B_NOT;