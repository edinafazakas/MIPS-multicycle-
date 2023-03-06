library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE work.procmem_definitions.ALL;

entity contrUnit is
    Port ( opcode : in  STD_LOGIC_VECTOR (5 downto 0);
           clk: in  STD_LOGIC;
           RegDst: out  STD_LOGIC;
           MemToReg: out  STD_LOGIC;
           RegWrite: out  STD_LOGIC;
           MemRead: out  STD_LOGIC;
           MemWrite: out  STD_LOGIC;
		   PCWriteCond: out  STD_LOGIC;
		   PCWrite: out  STD_LOGIC;
		   IorD: out  STD_LOGIC;
		   IRWrite: out  STD_LOGIC;
		   ALUop: out  STD_LOGIC_VECTOR (1 downto 0);
		   PCSource: out  STD_LOGIC_VECTOR (1 downto 0);
           ALUSrcB: out  STD_LOGIC_VECTOR (1 downto 0);
		   ALUSrcA: out  STD_LOGIC
	      );
end contrUnit;

architecture Behavioral of contrUnit is

signal currentState : STD_LOGIC_VECTOR(2 downto 0) := "000";
 
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
