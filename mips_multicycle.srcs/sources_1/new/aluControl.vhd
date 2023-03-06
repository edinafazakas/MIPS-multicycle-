library IEEE; 
USE IEEE.std_logic_1164.ALL;
use IEEE.NUMERIC_STD.ALL; 
use work.procmem_definitions.ALL;


entity ALUControl is
    Port ( Func : in  std_logic_vector (5 downto 0);
           ALUop : in  std_logic_vector (1 downto 0);
           ALUcon : out  std_logic_vector (3 downto 0));
end ALUControl;

architecture Behavioral of ALUControl is
    begin
    process(Func,ALUop)
        begin

        if ALUop = "00" then 
            ALUcon <= "0010"; --add
        elsif ALUop = "01" then 
            ALUcon <= "0110"; --sub
        elsif ALUop = "10" then
            if Func = "100000" then 
                ALUcon <= "0010"; --add
            elsif Func = "100010" then 
                ALUcon <= "0110"; --sub
            elsif Func = "100100" then 
                ALUcon <= "0000"; --and 
            elsif Func = "100101" then 
                ALUcon <= "0001"; --or
            end if;
 
        end if;
    end process;
end Behavioral;