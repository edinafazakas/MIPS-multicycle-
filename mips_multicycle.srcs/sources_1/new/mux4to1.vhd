library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity mux4to1 is
    Port ( a : in  STD_LOGIC_VECTOR (31 downto 0);
           b : in  STD_LOGIC_VECTOR (31 downto 0);
           c : in  STD_LOGIC_VECTOR (31 downto 0);
           d : in  STD_LOGIC_VECTOR (31 downto 0);
           sel : in  STD_LOGIC_VECTOR (1 downto 0);
           output : out  STD_LOGIC_VECTOR (31 downto 0));
end mux4to1;

architecture Behavioral of mux4to1 is

begin

process(a, b, c, d, sel)
begin

if sel="00" then output<=a;
elsif sel="01" then output<=b;
elsif sel="10" then output<=c; 
elsif sel="11" then output<=d;
end if;

end process;

end Behavioral;