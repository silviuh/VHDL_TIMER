----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/02/2020 05:11:15 AM
-- Design Name: 
-- Module Name: timer - Behavioral
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

entity timer is
    Port ( clk_in : in STD_LOGIC;
           clk_ex : in STD_LOGIC;
           en : in STD_LOGIC;
           TMRIF : out STD_LOGIC;
           TMR0 : out STD_LOGIC;
           data_init : in STD_LOGIC;
           reset : in STD_LOGIC);
end timer;

architecture Behavioral of timer is

begin


end Behavioral;
