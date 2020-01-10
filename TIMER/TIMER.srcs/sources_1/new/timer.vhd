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
use IEEE.NUMERIC_STD.ALL;


-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity timer is
    Port ( 
           clk_ex : in STD_LOGIC;
           sel_clk : in std_logic;
           clock : inout std_logic;
           en : in STD_LOGIC;
           TMRIF : out STD_LOGIC := '0';
           TMR0 : inout STD_LOGIC_vector(7 downto 0);
           data_init : in STD_LOGIC_vector(7 downto 0);
           reset : in STD_LOGIC);
end timer;

architecture Behavioral of timer is
    signal TMR0_v: std_logic_vector(7 downto 0);
    signal m_int: std_logic;
    signal clk_in: std_logic := '0';
begin

clk_in <= not clk_in after 500000000 ns;

process(clk_ex,clk_in,sel_clk, clock, data_init, en, reset, TMR0)
    begin
    case sel_CLK is
        when '1' => clock <= clk_in;
        when '0' => clock <= clk_ex;
    end case;
    
    
    if en = '0' then
        TMR0_v(7 downto 0)<=data_init;
    elsif en = '1' then 
        TMR0_v<=(others=>'0');
    end if;
        
    TMR0 <= TMR0_v;
       

    if (reset='1') then
        TMR0_v <=(others=>'0');
    elsif (reset='0') then
                if clock 'event and clock ='1' then
                    TMR0_v<=std_logic_vector(unsigned(TMR0_v)+1);
                end if;        
    end if;
    TMR0 <= TMR0_v;
    
     if(TMR0 = "11111111") then
            TMRIF<='1';
            TMR0_v <=(others=>'0');
     end if;
          end process;
     end Behavioral;
