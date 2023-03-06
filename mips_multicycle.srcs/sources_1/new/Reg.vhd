
library IEEE;
use IEEE.std_logic_1164.ALL;

entity reg is
    Port ( input : in  std_logic_vector (31 downto 0);
           output : out  std_logic_vector (31 downto 0);
           CLK : in  std_logic
          );
end reg;

architecture Behavioral of reg is

begin

process(input,clk)
    begin
        if rising_edge(CLK) then
            output <= input;
        end if;
end process;

end Behavioral;