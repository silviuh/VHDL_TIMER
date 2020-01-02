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

--MUX
entity mux is
    Port ( clk_in : in STD_LOGIC;
           clk_ext : in STD_LOGIC; --btnC
           select_clk : in STD_LOGIC; --btnL
           mux_out : out STD_LOGIC
);
end mux;

architecture Behavioral of mux is
begin
    process(clk_in, clk_ext, select_clk)
    begin
    if select_clk='0' then
        mux_out<=clk_ext;
    else
        mux_out<=clk_in;
    end if;
    end process;
end Behavioral;

--EN
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity set_yourself is
    Port (  enable : in std_logic; --switch[10]
          Data_init : in std_logic_vector(7 downto 0); --intrare in registru data de utilizator
          led : out std_logic_vector(7 downto 0)  --ledurile 2-9 care arata numarul introdus
     );
end set_yourself;
     
architecture Behavioral of set_yourself is
begin
    process(enable)
    begin
    
    if(enable='1') then
        led<=Data_init;
    end if;
end process;
end Behavioral;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity timer is
    Port( reset: in std_logic; --butonul BtnU
          flag: out std_logic; --ultimul led       
          enable : in std_logic; --switch[10]
          Data_init : in std_logic_vector(7 downto 0); --intrare in registru data de utilizator
          led : out std_logic_vector(7 downto 0)  --ledurile 2-9 care arata numarul introdus
    
          