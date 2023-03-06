library IEEE; 
USE IEEE.std_logic_1164.ALL;
use IEEE.NUMERIC_STD.ALL; 
use work.procmem_definitions.ALL;


entity instreg is 
    port ( 
        clk : in std_logic; 
        rst_n : in std_logic; 
        memdata : in std_logic_vector(width-1 downto 0); 
        IRWrite : in std_logic; 
        instr_31_26 : out std_logic_vector(5 downto 0); 
        instr_25_21 : out std_logic_vector(4 downto 0); 
        instr_20_16 : out std_logic_vector(4 downto 0); 
        instr_15_0 : out std_logic_vector(15 downto 0) ); 
end instreg;

 

architecture behave of instreg is 
    begin 
        proc_instreg : process(clk, rst_n) 
            begin 
                if rst_n = '0' then 
                    instr_31_26 <= (others => '0'); 
                    instr_25_21 <= (others => '0'); 
                    instr_20_16 <= (others => '0'); 
                    instr_15_0 <= (others => '0'); 
                elsif rising_edge(clk) then 
            -- write the output of the memory into the instruction register 
                    if(IRWrite = '1') then 
                        instr_31_26 <= memdata(31 downto 26); 
                        instr_25_21 <= memdata(25 downto 21); 
                        instr_20_16 <= memdata(20 downto 16); 
                        instr_15_0 <= memdata(15 downto 0); 
                    end if; 
                end if; 
        end process; 
end behave;


