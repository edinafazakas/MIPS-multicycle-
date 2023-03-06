library IEEE; 
use IEEE.std_logic_1164.ALL; 
use IEEE.numeric_std.ALL; 
use work.procmem_definitions.ALL;
 
entity pc is
    port ( 
        clk : in std_logic; 
        rst_n : in std_logic; 
        pc_in : in std_logic_vector(width-1 downto 0); 
        PC_en : in std_logic; 
        pc_out : out std_logic_vector(width-1 downto 0) );
end pc; 


architecture behave of pc is 
    begin
    proc_pc : process(clk, rst_n) 
        variable pc_temp : std_logic_vector(width-1 downto 0); 
        begin
         
        if rst_n = '0' then 
            pc_temp := (others => '0'); 
        elsif rising_edge(clk) then
            if PC_en = '1' then 
                pc_temp := pc_in; 
            end if; 
        end if; 
        pc_out <= pc_temp; 
    end process; 
end behave; 
