library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity shiftLeft2 is
    Port ( a : in  STD_LOGIC_VECTOR (31 downto 0);
           b : out  STD_LOGIC_VECTOR (31 downto 0));
end shiftLeft2;

architecture Behavioral of shiftLeft2 is

begin

b(31 downto 2) <= a(29 downto 0);
b(1 downto 0) <= "00";


end Behavioral;