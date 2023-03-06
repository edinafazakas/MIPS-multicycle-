library IEEE; 
USE IEEE.std_logic_1164.ALL;
use IEEE.NUMERIC_STD.ALL; 
use work.procmem_definitions.ALL;



entity multiCycle is
    port ( CLKmain : in  std_logic;
           reset: in std_logic;
           instruc : out std_logic_vector(width-1 downto 0)
          );
end multiCycle;

architecture Behavioral of multiCycle is

component ALUControl
	port(
		Func : in std_logic_vector(5 downto 0);
		ALUop : in std_logic_vector(1 downto 0);          
		ALUcon : out std_logic_vector(3 downto 0)
		);
end component;
	
component ALU
	port ( 
       a, b : in std_logic_vector(width-1 downto 0); 
       opcode : in std_logic_vector(3 downto 0); 
       result : out std_logic_vector(width-1 downto 0); 
       zero : out std_logic); 
end component;
	
component ControlUnit
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
end component;
	
component Memory
	Port ( memwrite : in  std_logic;
           memread : in  std_logic;
           Wdata : in  std_logic_vector (width-1 downto 0);
           Rdata : out  std_logic_vector (width-1 downto 0);
           address : in  std_logic_vector (width-1 downto 0);
		   IORD: in  std_logic;
           CLK : in  std_logic
           );
end component;

component instreg
	 port ( 
       clk : in std_logic; 
       rst_n : in std_logic; 
       memdata : in std_logic_vector(width-1 downto 0); 
       IRWrite : in std_logic; 
       instr_31_26 : out std_logic_vector(5 downto 0); 
       instr_25_21 : out std_logic_vector(4 downto 0); 
       instr_20_16 : out std_logic_vector(4 downto 0); 
       instr_15_0 : out std_logic_vector(15 downto 0) 
       ); 
end component;
	
component regfile
	port (clk,rst_n : in std_logic; 
        wen : in std_logic; -- write control 
        writeport : in std_logic_vector(width-1 downto 0); -- register input 
        adrwport : in std_logic_vector(regfile_adrsize-1 downto 0);-- address write 
        adrport0 : in std_logic_vector(regfile_adrsize-1 downto 0);-- address port 0 
        adrport1 : in std_logic_vector(regfile_adrsize-1 downto 0);-- address port 1 
        readport0 : out std_logic_vector(width-1 downto 0); -- output port 0 
        readport1 : out std_logic_vector(width-1 downto 0) -- output port 1 
); 
end component;

component pc IS 
    port ( 
        clk : in std_logic; 
        rst_n : in std_logic; 
        pc_in : in std_logic_vector(width-1 downto 0); 
        PC_en : in std_logic; 
        pc_out : out std_logic_vector(width-1 downto 0) );
end component; 

component reg is
    port ( input : in  std_logic_vector (31 downto 0);
           output : out  std_logic_vector (31 downto 0);
           CLK : in  std_logic
          );
end component;
	
	signal ZeroFlag,sigPCWriteCond,sigPCWrite,sigIorD,sigMemRead,sigMemWrite,sigMemToReg,sigIRWrite,sigALUSrcA,sigRegWrite,sigRegDst,sigPC_en:std_logic := '0';
	signal sigPCSource,sigALUOp,sigALUSrcB: std_logic_vector(1 downto 0) := "00";
	signal instruction,PCin,PCout,sigaddress,MEMout,MDrout,MemDatain,WriteDatain,Ain,Bin,Aout,SignExtendout,ShiftLeftout,ALUin1,ALUin2,ALUresult,ALUout: std_logic_vector(width-1 downto 0) := "00000000000000000000000000000000";
	signal WriteRegisterin: std_logic_vector (regfile_adrsize-1 downto 0) := "00000";
	signal op: std_logic_vector (3 downto 0) := "0000";
	--signal out_result: 

	
begin

ALUControl1: ALUControl port map(instruction(5 downto 0),sigALUOp, op);
	
ALU1: ALU port map(ALUin1,ALUin2,op,ALUresult,ZeroFlag);

ControlUnit1: ControlUnit port map(instruction(31 downto 26), CLKmain, sigRegDst, sigMemtoReg, sigRegWrite, sigMemRead, sigMemWrite, sigPCWriteCond, sigPCWrite, sigIorD, sigIRWrite, sigALUOp, sigPCSource, sigALUSrcB, sigALUSrcA);
	
InstructionReg: instreg port map(CLKmain, reset, MEMout, sigIRWrite, instruction(31 downto 26), instruction(25 downto 21), instruction(20 downto 16), instruction(15 downto 0));
	
Memory1: Memory port map(sigMemWrite, sigMemRead, MemDatain, MEMout, sigAddress, sigIorD, CLKmain);

RegisterFile: regfile port map(CLKmain, reset, sigRegWrite, WriteDatain, WriteRegisterin, instruction(25 downto 21), instruction(20 downto 16), Ain, Bin);

pCounter: pc port map(CLKmain, reset, PCin, sigPC_en, PCout);

RegB: reg port map(Bin, MemDatain,CLKmain );  

RegA: reg port map(Ain, Aout, CLKmain);

RegALUout: reg port map(ALUresult, ALUOut, CLKmain);

MemoryDataRegister: reg port map(MEMout, MDRout, CLKmain);
 
    process(CLKmain, ZeroFlag, sigPCWriteCond, sigPCWrite, sigMemToReg, ALUout, MDRout, sigIorD, PCout, sigALUsrcA, Aout, sigALUsrcB, MemDatain, SignExtendout, ShiftLeftout, sigPCsource, ALUresult, sigRegDst, instruction)
        begin
        
        sigPC_en <= (ZeroFlag and sigPCWriteCond) or sigPCWrite;
        
        --WriteDataIn <= ALUout when (sigMemtoReg = '0') else MDRout;
        
        --ALUmux
        if sigMemtoReg = '0' then
            WriteDatain <= ALUout;
        else 
            WriteDatain <= MDRout;
        end if;
        
        --MEMmux
        if sigIorD = '0' then
           sigaddress <= PCout;
        else 
           sigaddress <= ALUout;
        end if;
                
        --REGAmux
        if sigALUsrcA = '0' then
            ALUin1 <= PCout;
        else 
            ALUin1 <= Aout;
        end if; 
        
        --REGBmux
        case sigALUsrcB is 
                  when "00" =>
                     ALUin2 <= MemDatain;
                  when "01" =>
                     ALUin2 <= "00000000000000000000000000000100";
                  when "10" =>
                     ALUin2 <= SignExtendout;
                  when "11" =>
                   ALUin2 <= ShiftLeftout; 
                  when others => ALUin2 <= "00000000000000000000000000000000"; 
        end case;       
        
        --PCmux
        case sigPCsource is 
                  when "00" =>
                             PCin <= ALUresult;
                  when "01" =>
                             PCin <= ALUout;
                  when "10" =>
                             PCin <= "00000000000000000000000000000000";
                  when "11" =>
                             PCin <= ShiftLeftout; 
                  when others => PCin <= "00000000000000000000000000000000"; 
        end case;       
        
        --REGDstAmux
                if sigRegDst = '0' then
                    WriteRegisterin <= instruction(20 downto 16);
                else 
                    WriteRegisterin <= instruction(15 downto 11);
                end if;   
          
        --shift left2             
        ShiftLeftout(31 downto 2) <= SignExtendout(29 downto 0);
        ShiftLeftout(1 downto 0) <= "00";   
        
        --sign extending
        if instruction(15)='0' then
            SignExtendout(31 downto 16) <="0000000000000000";
            SignExtendout(15 downto 0) <= instruction(15 downto 0);
        else
            SignExtendout(31 downto 16) <="1111111111111111";
            SignExtendout(15 downto 0) <= instruction(15 downto 0);
        end if;
        
    end process;
    
    instruc <= instruction;
    
end Behavioral;