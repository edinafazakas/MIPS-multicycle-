library IEEE; 
USE IEEE.std_logic_1164.ALL;
use IEEE.NUMERIC_STD.ALL; 
use work.procmem_definitions.ALL;
use IEEE.std_logic_unsigned.ALL;
 


entity Memory is
    Port ( MemWrite : in  std_logic;
           MemRead : in  std_logic;
           Wdata : in  std_logic_vector (width-1 downto 0);
           Rdata : out  std_logic_vector (width-1 downto 0);
           address : in  std_logic_vector (width-1 downto 0);
		   IORD: in  std_logic;
           CLK : in  std_logic);
end Memory;

architecture Behavioral of Memory is
    type A is  array (0 to 63) of std_logic_vector(31 downto 0);
    type Array1 is  array (0 to 255) of std_logic_vector(31 downto 0);
    signal mem1: Array1 := 
    (B"000000_00000_00000_00001_00000_100000", --add $1,$0,$0     --add $rd, $rs, $rt
     B"000000_00010_00101_00101_00000_100100", --and $4,$2,$5     --addi $rt, $rs, imm
     B"000000_00000_00101_00110_00000_100000", --add $6,$0,$5     --lw $rt, offset($rs)
     B"000000_00100_00000_00010_00000_101000", --and $2,$4,$0     --sw $rt, offset($rs)
     B"000000_00000_00000_00101_00000_100000", --add $5,$0,$0
     B"100011_00010_00011_0000000000001010", --lw $3,10($2)
     B"000000_00101_00011_00101_00000_100000", --add $5,$5,$3
     B"000000_00010_00001_00010_00000_100101", --or $2,$2,$1
     B"000000_00001_00001_00001_00000_100000", --add $1,$1,$1
     B"101011_00000_00101_0000000000010100", --sw $5,20($0)
     others => B"000000_00000_00000_0000000000000000"
   );
   
    signal mem : A := 
    (B"000000_00000_00000_00000_00000_000000",
     B"000000_00000_00000_00000_00000_000001",
     B"000000_00000_00000_00000_00000_000010",
     B"000000_00000_00000_00000_00000_000011",
	 B"000000_00000_00000_00000_00000_000100",
     B"000000_00000_00000_00000_00000_000101",
	 B"000000_00000_00000_00000_00000_000110",
	 B"000000_00000_00000_00000_00000_000111",
	 B"000000_00000_00000_00000_00000_001000",
     others => B"000000_00000_00000_00000_00000_000000"
     );

begin

    process(Wdata, address, MemRead, MemWrite, CLK, IORD)
        begin
        --if instruction
        if(MemRead ='1' and IORD ='0') then
            Rdata <= mem(conv_integer(address));
        
        --if read and data
        elsif(MemRead ='1' and IORD ='1') then
            Rdata <= mem1(conv_integer(address));
        
        --if write and data, write in array mem2.
        elsif(MemWrite ='1' and rising_edge(CLK) and IORD ='1') then
            mem1(conv_integer(address)) <= Wdata;
        
    end if;
end process;

end Behavioral;