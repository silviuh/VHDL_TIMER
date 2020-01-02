----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/27/2019 12:39:13 PM
-- Design Name: 
-- Module Name: mux_a - Behavioral
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

entity mux_a is
     Port ( 
     clk_ext: in std_logic; -- butonul BtnC
     clk: in std_logic; -- clock intern
     select_CLK: in std_logic; -- bitul de selectie switch[0]
     MUX_output:out std_logic -- iesirea din mux
);
end mux_a;

architecture Behavior of mux_a is
begin
    process(clk_ext,clk,select_CLK)
    begin
    if select_CLK='0' then 
        MUX_output<=clk_ext;
    else
        m<=clk;
    end if;
    end process;
end Behavior;


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity reg is
  Port ( 
      load : in std_logic; -- switch[1]
       D : in std_logic_vector(7 downto 0); --intrarea in registru ( switch[2]-switch[9])
      Q : out std_logic_vector(7 downto 0) -- iesirea din registru
  );
end reg;

architecture Behavioral of reg is
begin
    
    process (load) begin
		if rising_edge(load) then
			if (load = '1') then
				Q <= D;
			end if;
			end if;
end process;
end Behavioral;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

entity count is
    Port (
        enable : in std_logic; --swith-ul 10
        reset: in std_logic; --butonul BtnU
        flag: out std_logic; --ultimul led
        A : inout std_logic_vector(7 downto 0); -- iesirea din registru 
        mm:inout std_logic; -- iesirea din mux
        --sel:in std_logic; -- intrarea din mux in numarator
        --Data_in:in std_logic_vector(7 downto 0); --intrarea din registru in numarator
        Data: out std_logic_vector(7 downto 0) -- iesirea numaratorului (led[2]-led[9])   
);
end count;

architecture Behavioral of count is
signal Data_reg: std_logic_vector(7 downto 0):=A;
signal Overflow: std_logic_vector(7 downto 0):="11111111";
component reg is
  Port ( 
      Q : out std_logic_vector(7 downto 0)
  );
end component;

component mux is
  Port ( 
      m : out std_logic
  );
end component;
begin
   aaa: reg
   port map(Q=>A);
   bbb:mux
   port map(m=>mm);
   
process (enable, reset) begin
    if enable='1' then
        if reset = '1' then        
			Data <= (others => '0');
	    else
	       if(mm'event and mm = '1') then
	            if Data_reg = Overflow then
	                flag<='1';
	            else
	                Data_reg<=Data_reg+1;
	           end if;
	       end if;
	       Data<=Data_reg;
	     end if;
	end if;
		
end process;
end Behavioral;