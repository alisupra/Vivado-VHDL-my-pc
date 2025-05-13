----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/13/2025 02:30:07 PM
-- Design Name: 
-- Module Name: NAND_G - Behavioral
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



entity NAND_G is
    Port ( x : in STD_LOGIC;
           y : in STD_LOGIC;
           f : out STD_LOGIC);
end NAND_G;

architecture Behavioral of NAND_G is

begin

f <= x nand y;
end Behavioral;



