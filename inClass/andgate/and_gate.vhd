----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/01/2025 07:18:44 PM
-- Design Name: 
-- Module Name: and_gate - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity and_gate is
    Port ( x : in STD_LOGIC;
           y : in STD_LOGIC;
           f : out STD_LOGIC);
end and_gate;




--====================== AND GATE =============================================
architecture AND_Behavioral of and_gate is

begin
    process(x, y)
    begin
    if ((x ='1') and (y = '1')) then
        f <= '1';
    else
        f <= '0';
    end if;
    end process;
end AND_Behavioral;




--============================= OR GATE =======================================

--architecture OR_Behavioral of BASIC_TWO_INPUT is

--begin
--    process(x, y)
--    begin
--    if ((x ='1') or (y = '1')) then
--        f <= '1';
--    else
--        f <= '0';
--    end if;
--    end process;
--end OR_Behavioral;



--architecture OR_B of BASIC_TWO_INPUT is
--begin 
--    f <= x or y;
--end OR_B;






----============================ XNOR GATE =====================================

--architecture XNOR_Behavioral of BASIC_TWO_INPUT is

--begin
--    process(x, y)
--    begin
--    if (x = y) then
--        f <= '1';
--    else
--        f <= '0';
--    end if;
--    end process;
--end XNOR_Behavioral;



--architecture XNOR_B of BASIC_TWO_INPUT is
--begin 
--    f <= x xnor y;
--end XNOR_B;



----============================== NAND GATE ======================================

--architecture NAND_Behavioral of BASIC_TWO_INPUT is

--begin
--    process(x, y)
--    begin
--    if ((x ='1') and (y = '1')) then
--        f <= '0';
--    else
--        f <= '1';
--    end if;
--    end process;
--end NAND_Behavioral;

--architecture NAND_B of BASIC_TWO_INPUT is
--begin 
--    f <= x nand y;
--end NAND_B;



----============================== NOR GATE ======================================

--architecture NOR_Behavioral of BASIC_TWO_INPUT is

--begin
--    process(x, y)
--    begin
--    if ((x ='1') or (y = '1')) then
--        f <= '0';
--    else
--        f <= '1';
--    end if;
--    end process;
--end NOR_Behavioral;



--architecture NOR_B of BASIC_TWO_INPUT is
--begin 
--    f <= x nor y;
--end NOR_B;

