----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity counter is
 Port ( 
    data_in : in STD_LOGIC_VECTOR(7 downto 0); --switch[8]-switch[15]
    data_out : out STD_LOGIC_VECTOR(7 downto 0); --led[8]-led[15]
    clk_ext: in STD_LOGIC; --BTNC
    clk : in STD_LOGIC;
    sel:in STD_LOGIC; --switch[3]
    load: in STD_LOGIC; --switch[2]
    enable : in STD_LOGIC; --swtch[0]
    res : in STD_LOGIC; --switch[1]
    overflow_flag: out STD_LOGIC --primul led
 );
end counter;

architecture Behavioral of counter is
    signal data_reg : STD_LOGIC_VECTOR(7 downto 0);
    signal data_counter : STD_LOGIC_VECTOR(7 downto 0):=data_in;
    signal flag : STD_LOGIC:='0';
    signal clk_div : STD_LOGIC;
    signal clock: STD_LOGIC;
begin
    clk_divide: process(clk)
        variable n:integer range 0 to 1000000000;
    begin
        if clk'event and clk = '1' then
            if n < 100000000 then
                n := n+1;
            else
                n := 0;
            end if;
            if n < 50000000 then
                clk_div <= '1';
            else
                clk_div <= '0';
            end if;
        end if;
    end process;
    
    TMR: process(clk_div,clk_ext,clock,sel,flag,load,enable,res,data_reg,data_in,data_counter)
    begin
        case sel is
            when '0' => clock <= clk_div;
            when '1' => clock <= clk_ext;
        end case;
        
        if enable = '1' then
            data_counter<=data_counter;
        if res='1' then
            data_counter<="00000000";
            flag<='0';
        elsif load='1' then
            data_reg<=data_in;
            data_counter<=data_reg;
            flag<='0';
        elsif res='0' then  --load=0
        if clock 'event and clock ='1' then
            if data_counter="11111111" then
                flag<='1';
                data_counter<=data_counter;
            else
                --if enable = '1' then
                    data_counter<=std_logic_vector(unsigned(data_counter)+1);
               -- else
                    
                end if;
            end if;
        end if;
        
    end if;
    end process;
    
    data_out<=data_counter; 
    overflow_flag<=flag; 

end Behavioral;