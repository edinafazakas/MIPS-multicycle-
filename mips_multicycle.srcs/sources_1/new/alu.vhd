library IEEE; 
USE IEEE.std_logic_1164.ALL;
use IEEE.NUMERIC_STD.ALL; 
use work.procmem_definitions.ALL;

entity alu is 
  port ( 
       a, b : in std_logic_vector(width-1 downto 0); 
       opcode : in std_logic_vector(3 downto 0); 
       result : out std_logic_vector(width-1 downto 0); 
       zero : out std_logic); 
  end alu; 


architecture behave of alu is 
    begin 
      process(a, b, opcode) 
      -- declaration of variables 
        variable a_uns : unsigned(width-1 downto 0); 
        variable b_uns : unsigned(width-1 downto 0); 
        variable r_uns : unsigned(width-1 downto 0); 
        variable z_uns : unsigned(0 downto 0); 
        begin 
           -- initialize values 
           a_uns := unsigned(a); 
           b_uns := unsigned(b); 
           r_uns := (others => '0'); 
           z_uns(0) := '0'; 
           -- select desired operation 
         case opcode is 
               -- add 
             when "0010"  => 
               r_uns := a_uns + b_uns; 
               -- sub 
             when "0110" =>  
               r_uns := a_uns - b_uns; 
               -- and 
             when "0000" => 
               r_uns := a_uns and b_uns; 
               -- or 
             when "0001" => 
               r_uns := a_uns or b_uns; 
               -- others 
             when others => r_uns := (others => 'X'); 
         end case; 
               -- set zero bit if result equals zero 
         
         
         if to_integer(r_uns) = 0 then 
              z_uns(0) := '1'; 
         else 
              z_uns(0) := '0'; 
         end if; 
       
            -- assign variables to output signals 
         result <= std_logic_vector(r_uns); 
         zero <= z_uns(0); 
    end process; 
end behave; 

