library IEEE; 
USE IEEE.std_logic_1164.ALL;
use IEEE.NUMERIC_STD.ALL; 
use work.procmem_definitions.ALL;


entity regfile is 
    port (clk,rst_n : in std_logic; 
        wen : in std_logic; -- write control 
        writeport : in std_logic_vector(width-1 downto 0); -- register input 
        adrwport : in std_logic_vector(regfile_adrsize-1 downto 0);-- address write 
        adrport0 : in std_logic_vector(regfile_adrsize-1 downto 0);-- address port 0 
        adrport1 : in std_logic_vector(regfile_adrsize-1 downto 0);-- address port 1 
        readport0 : out std_logic_vector(width-1 downto 0); -- output port 0 
        readport1 : out std_logic_vector(width-1 downto 0) -- output port 1 
); 
end regfile; 


architecture behave of regfile is 
    subtype WordT is std_logic_vector(width-1 downto 0); -- reg word type 
    type StorageT is array(0 TO regfile_depth-1) of WordT; -- reg array type 
    signal registerfile : StorageT; -- reg file contents 
        begin 
        -- perform write operation 
    process(rst_n, clk) 
        begin 
        if rst_n = '0' then 
            for i in 0 to regfile_depth-1 loop
                registerfile(i) <= (others => '0'); 
            end loop; 
        elsif rising_edge(clk) then 
            if wen = '1' then 
                registerfile(to_integer(unsigned(adrwport))) <= writeport; 
            end if; 
        end if; 
    end process; 
    
-- perform reading ports 
    readport0 <= registerfile(to_integer(unsigned(adrport0))); 
    readport1 <= registerfile(to_integer(unsigned(adrport1))); 
end behave;



 