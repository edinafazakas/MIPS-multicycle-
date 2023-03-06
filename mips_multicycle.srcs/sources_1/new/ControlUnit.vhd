library IEEE; 
USE IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all; 
use work.procmem_definitions.all;

entity controlUnit is
    Port ( opcode : in  std_logic_vector (5 downto 0);
           clk: in  std_logic;
           RegDst: out  std_logic;
           MemToReg: out  std_logic;
           RegWrite: out  std_logic;
           MemRead: out  std_logic;
           MemWrite: out  std_logic;
		   PCWriteCond: out  std_logic;
		   PCWrite: out  std_logic;
		   IorD: out  std_logic;
		   IRWrite: out  std_logic;
		   ALUop: out  std_logic_vector (1 downto 0);
		   PCSource: out  std_logic_vector (1 downto 0);
           ALUSrcB: out  std_logic_vector (1 downto 0);
		   ALUSrcA: out  std_logic
	      );
end controlUnit;

architecture Behavioral of controlUnit is

signal currentState : std_logic_vector(2 downto 0):= "000";
 
begin
 
    process(opcode, currentState, clk)
        begin
 
        if rising_edge(clk) then
            if currentState = "000" then
                currentState <= "001"; --stare0 -> stare1
            elsif currentState = "001" then
            --if lw or sw
                if opcode = "100011" or opcode = "101011" then
                    currentState <= "100"; --stare1 -> stare4
            --if R-type
                elsif opcode = "000000" then
                    currentState <= "010"; --stare1 -> stare2
                end if;
            elsif currentState = "010" then
                currentState <= "011"; --stare2 -> stare3
            elsif currentState = "011" then
                currentState <= "000"; --stare3 -> stare0 
            elsif currentState = "100" then
            --if lw
                if opcode = "100011" then
                    currentState <= "110"; --stare4 -> stare6
            --if sw
                else currentState <= "101"; --stare4 -> stare5
                end if;
            elsif currentState = "101" then
                currentState <= "000"; --stare5 -> stare0
            elsif currentState = "110" then
                currentState <= "111"; --stare6 -> stare7
            elsif currentState = "111" then
                currentState <= "000"; --stare7 -> stare0
            end if;
    end if;
    
--instruction fetch       
    if currentState = "000" then
        PCWrite <= '1';
        PCWriteCond <= '0';
        IorD <= '0';
        MemRead <= '1';
        MemWrite <= '0';
        IRWrite <= '1';
        MemtoReg <='0';
        PCSource <="00";
        ALUOp <="00";
        ALUSrcB <= "01";
        ALUSrcA <='0';
        RegWrite <='0';
        RegDst <= '0';
        
--decode/register fetch
    elsif currentState = "001" then
        PCWrite <= '0';
        PCWriteCond <= '0';
        IorD <= '0';
        MemRead <= '0';
        MemWrite <= '0';
        IRWrite <= '0';
        MemtoReg <='0';
        PCSource <="00";
        ALUOp <="00";
        ALUSrcB <= "11";
        ALUSrcA <='0';
        RegWrite <='0';
        RegDst <= '0';
        
--R-type execution
    elsif currentState = "010" then
        PCWrite <= '0';
        PCWriteCond <= '0';
        IorD <= '0';
        MemRead <= '0';
        MemWrite <= '0';
        IRWrite <= '0';
        MemtoReg <='0';
        PCSource <="00";
        ALUOp <="10";
        ALUSrcB <= "00";
        ALUSrcA <='1';
        RegWrite <='0';
        RegDst <= '0';
                
--R-type completion
    elsif currentState = "011" then
        PCWrite <= '0';
        PCWriteCond <= '0';
        IorD <= '0';
        MemRead <= '0';
        MemWrite <= '0';
        IRWrite <= '0';
        MemtoReg <='0';
        PCSource <="00";
        ALUOp <="00";
        ALUSrcB <= "00";
        ALUSrcA <='0';
        RegWrite <='1';
        RegDst <= '1';
        
--lw/sw execute
    elsif currentState = "100" then
        PCWrite <= '0';
        PCWriteCond <= '0';
        IorD <= '0';
        MemRead <= '0';
        MemWrite <= '0';
        IRWrite <= '0';
        MemtoReg <='0';
        PCSource <="00";
        ALUOp <="00";
        ALUSrcB <= "10";
        ALUSrcA <='1';
        RegWrite <='0';
        RegDst <= '0';
        
--lw memory access
    elsif currentState = "101" then
        PCWrite <= '0';
        PCWriteCond <= '0';
        IorD <= '1';
        MemRead <= '1';
        MemWrite <= '0';
        IRWrite <= '0';
        MemtoReg <='0';
        PCSource <="00";
        ALUOp <="00";
        ALUSrcB <= "00";
        ALUSrcA <='0';
        RegWrite <='0';
        RegDst <= '0';
        
--lw write back
    elsif currentState = "110" then
        PCWrite <= '0';
        PCWriteCond <= '0';
        IorD <= '0';
        MemRead <= '0';
        MemWrite <= '0';
        IRWrite <= '0';
        MemtoReg <='1';
        PCSource <="00";
        ALUOp <="00";
        ALUSrcB <= "00";
        ALUSrcA <='0';
        RegWrite <='1';
        RegDst <= '0';
        
--sw write back
    elsif currentState = "111" then
        PCWrite <= '0';
        PCWriteCond <= '0';
        IorD <= '1';
        MemRead <= '0';
        MemWrite <= '1';
        IRWrite <= '0';
        MemtoReg <='0';
        PCSource <="00";
        ALUOp <="00";
        ALUSrcB <= "00";
        ALUSrcA <='0';
        RegWrite <='0';
        RegDst <= '0';  
    end if;

end process;
 
end Behavioral;
