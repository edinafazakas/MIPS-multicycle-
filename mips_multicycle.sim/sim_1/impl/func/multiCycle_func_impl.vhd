-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
-- Date        : Mon Dec 12 16:50:44 2022
-- Host        : DESKTOP-C4GD19I running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file {D:/MATERIALE AN 3 SEM
--               1/SSC/lab7/mips_multicycle/mips_multicycle.sim/sim_1/impl/func/multiCycle_func_impl.vhd}
-- Design      : multiCycle
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k70tfbv676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Memory is
  port (
    \mem1_reg[9]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \mem1_reg[8]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \mem1_reg[7]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \mem1_reg[5]_3\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \mem1_reg[3]_4\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \mem1_reg[1]_5\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \writedata[21]\ : out STD_LOGIC;
    \writedata[21]_0\ : out STD_LOGIC;
    \writedata[5]\ : out STD_LOGIC;
    \writedata[5]_0\ : out STD_LOGIC;
    \writedata[29]\ : out STD_LOGIC;
    \writedata[13]\ : out STD_LOGIC;
    \writedata[29]_0\ : out STD_LOGIC;
    \writedata[13]_0\ : out STD_LOGIC;
    \writedata[29]_1\ : out STD_LOGIC_VECTOR ( 23 downto 0 );
    \output_reg[3]\ : in STD_LOGIC;
    CLKmain_IBUF_BUFG : in STD_LOGIC;
    \output_reg[1]\ : in STD_LOGIC;
    \output_reg[1]_0\ : in STD_LOGIC;
    \output_reg[1]_1\ : in STD_LOGIC;
    \output_reg[1]_2\ : in STD_LOGIC;
    \output_reg[2]\ : in STD_LOGIC;
    \output_reg[6]\ : in STD_LOGIC;
    \output_reg[0]\ : in STD_LOGIC;
    \FSM_sequential_currentState_reg[0]\ : in STD_LOGIC;
    \output_reg[0]_0\ : in STD_LOGIC;
    \output_reg[1]_3\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    sigIorD : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 23 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end Memory;

architecture STRUCTURE of Memory is
  signal \<const0>\ : STD_LOGIC;
  signal \mem1_reg[0]_3\ : STD_LOGIC_VECTOR ( 5 to 5 );
  signal \^mem1_reg[1]_5\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \mem1_reg[2]_2\ : STD_LOGIC_VECTOR ( 5 to 5 );
  signal \^mem1_reg[3]_4\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \mem1_reg[4]_1\ : STD_LOGIC_VECTOR ( 5 to 5 );
  signal \mem1_reg[6]_0\ : STD_LOGIC_VECTOR ( 5 to 5 );
  signal \^mem1_reg[7]_2\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^writedata[29]_1\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \Rdata_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \Rdata_reg[10]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \Rdata_reg[11]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \Rdata_reg[13]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \Rdata_reg[16]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \Rdata_reg[17]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \Rdata_reg[18]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \Rdata_reg[19]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \Rdata_reg[20]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \Rdata_reg[21]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \Rdata_reg[25]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \Rdata_reg[26]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \Rdata_reg[27]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \Rdata_reg[29]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \Rdata_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \Rdata_reg[3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \Rdata_reg[5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \Rdata_reg[8]\ : label is "LD";
begin
  \mem1_reg[1]_5\(0) <= \^mem1_reg[1]_5\(0);
  \mem1_reg[3]_4\(0) <= \^mem1_reg[3]_4\(0);
  \mem1_reg[7]_2\(0) <= \^mem1_reg[7]_2\(0);
  \writedata[13]\ <= \mem1_reg[2]_2\(5);
  \writedata[13]_0\ <= \mem1_reg[6]_0\(5);
  \writedata[21]\ <= \^mem1_reg[1]_5\(0);
  \writedata[29]\ <= \mem1_reg[0]_3\(5);
  \writedata[29]_0\ <= \mem1_reg[4]_1\(5);
  \writedata[29]_1\(23) <= \^writedata[29]_1\(23);
  \writedata[29]_1\(22) <= \<const0>\;
  \writedata[29]_1\(21 downto 19) <= \^writedata[29]_1\(21 downto 19);
  \writedata[29]_1\(18) <= \<const0>\;
  \writedata[29]_1\(17 downto 11) <= \^writedata[29]_1\(17 downto 11);
  \writedata[29]_1\(10) <= \<const0>\;
  \writedata[29]_1\(9 downto 8) <= \^writedata[29]_1\(9 downto 8);
  \writedata[29]_1\(7) <= \<const0>\;
  \writedata[29]_1\(6 downto 5) <= \^writedata[29]_1\(6 downto 5);
  \writedata[29]_1\(4) <= \<const0>\;
  \writedata[29]_1\(3 downto 2) <= \^writedata[29]_1\(3 downto 2);
  \writedata[29]_1\(1) <= \<const0>\;
  \writedata[29]_1\(0) <= \^writedata[29]_1\(0);
  \writedata[5]\ <= \^mem1_reg[7]_2\(0);
  \writedata[5]_0\ <= \^mem1_reg[3]_4\(0);
  \writedata[21]_0\ <= 'Z';
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\Rdata_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(0),
      G => E(0),
      GE => '1',
      Q => \^writedata[29]_1\(0)
    );
\Rdata_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(8),
      G => E(0),
      GE => '1',
      Q => \^writedata[29]_1\(8)
    );
\Rdata_reg[11]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(9),
      G => E(0),
      GE => '1',
      Q => \^writedata[29]_1\(9)
    );
\Rdata_reg[13]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(11),
      G => E(0),
      GE => '1',
      Q => \^writedata[29]_1\(11)
    );
\Rdata_reg[16]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(12),
      G => E(0),
      GE => '1',
      Q => \^writedata[29]_1\(12)
    );
\Rdata_reg[17]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(13),
      G => E(0),
      GE => '1',
      Q => \^writedata[29]_1\(13)
    );
\Rdata_reg[18]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(14),
      G => E(0),
      GE => '1',
      Q => \^writedata[29]_1\(14)
    );
\Rdata_reg[19]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(15),
      G => E(0),
      GE => '1',
      Q => \^writedata[29]_1\(15)
    );
\Rdata_reg[20]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(16),
      G => E(0),
      GE => '1',
      Q => \^writedata[29]_1\(16)
    );
\Rdata_reg[21]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(17),
      G => E(0),
      GE => '1',
      Q => \^writedata[29]_1\(17)
    );
\Rdata_reg[25]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(19),
      G => E(0),
      GE => '1',
      Q => \^writedata[29]_1\(19)
    );
\Rdata_reg[26]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(20),
      G => E(0),
      GE => '1',
      Q => \^writedata[29]_1\(20)
    );
\Rdata_reg[27]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(21),
      G => E(0),
      GE => '1',
      Q => \^writedata[29]_1\(21)
    );
\Rdata_reg[29]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(23),
      G => E(0),
      GE => '1',
      Q => \^writedata[29]_1\(23)
    );
\Rdata_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(2),
      G => E(0),
      GE => '1',
      Q => \^writedata[29]_1\(2)
    );
\Rdata_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(3),
      G => E(0),
      GE => '1',
      Q => \^writedata[29]_1\(3)
    );
\Rdata_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(5),
      G => E(0),
      GE => '1',
      Q => \^writedata[29]_1\(5)
    );
\Rdata_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(6),
      G => E(0),
      GE => '1',
      Q => \^writedata[29]_1\(6)
    );
\mem1_reg[0][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLKmain_IBUF_BUFG,
      CE => \output_reg[0]_0\,
      D => '0',
      Q => \mem1_reg[0]_3\(5),
      R => '0'
    );
\mem1_reg[1][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLKmain_IBUF_BUFG,
      CE => \FSM_sequential_currentState_reg[0]\,
      D => '0',
      Q => \^mem1_reg[1]_5\(0),
      R => '0'
    );
\mem1_reg[2][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLKmain_IBUF_BUFG,
      CE => \output_reg[0]\,
      D => '0',
      Q => \mem1_reg[2]_2\(5),
      R => '0'
    );
\mem1_reg[3][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLKmain_IBUF_BUFG,
      CE => \output_reg[6]\,
      D => '0',
      Q => \^mem1_reg[3]_4\(0),
      R => '0'
    );
\mem1_reg[4][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLKmain_IBUF_BUFG,
      CE => \output_reg[2]\,
      D => '0',
      Q => \mem1_reg[4]_1\(5),
      R => '0'
    );
\mem1_reg[5][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLKmain_IBUF_BUFG,
      CE => \output_reg[1]_2\,
      D => '0',
      Q => \mem1_reg[5]_3\(0),
      R => '0'
    );
\mem1_reg[6][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLKmain_IBUF_BUFG,
      CE => \output_reg[1]_1\,
      D => '0',
      Q => \mem1_reg[6]_0\(5),
      R => '0'
    );
\mem1_reg[7][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLKmain_IBUF_BUFG,
      CE => \output_reg[1]_0\,
      D => '0',
      Q => \^mem1_reg[7]_2\(0),
      R => '0'
    );
\mem1_reg[8][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLKmain_IBUF_BUFG,
      CE => \output_reg[1]\,
      D => '0',
      Q => \mem1_reg[8]_1\(0),
      R => '0'
    );
\mem1_reg[9][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLKmain_IBUF_BUFG,
      CE => \output_reg[3]\,
      D => '0',
      Q => \mem1_reg[9]_0\(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity alu is
  port (
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end alu;

architecture STRUCTURE of alu is
  signal CARRY4_GND_1 : STD_LOGIC;
  signal \_inferred__0/i__carry_GND_1\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW__inferred__0/i__carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW__inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \_inferred__0/i__carry\ : label is "{SYNTH-8 {cell *THIS*}}";
begin
  CO(0) <= CARRY4_GND_1;
  D(3 downto 2) <= p_0_in(3 downto 2);
  D(1) <= \_inferred__0/i__carry_GND_1\;
  D(0) <= \_inferred__0/i__carry_GND_1\;
CARRY4_GND: unisim.vcomponents.GND
     port map (
      G => CARRY4_GND_1
    );
\_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 0) => \NLW__inferred__0/i__carry_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => DI(0),
      DI(1 downto 0) => B"00",
      O(3 downto 2) => p_0_in(3 downto 2),
      O(1 downto 0) => \NLW__inferred__0/i__carry_O_UNCONNECTED\(1 downto 0),
      S(3) => '0',
      S(2) => S(0),
      S(1 downto 0) => B"00"
    );
\_inferred__0/i__carry_GND\: unisim.vcomponents.GND
     port map (
      G => \_inferred__0/i__carry_GND_1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity controlUnit is
  port (
    sigIorD : out STD_LOGIC;
    \writedata[3]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \mem1_reg[0][5]\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \writedata[29]\ : out STD_LOGIC;
    \mem1_reg[5][3]\ : out STD_LOGIC;
    \mem1_reg[7][5]\ : out STD_LOGIC;
    \mem1_reg[7][5]_0\ : out STD_LOGIC;
    \mem1_reg[8][5]\ : out STD_LOGIC;
    \mem1_reg[8][5]_0\ : out STD_LOGIC;
    \mem1_reg[4][5]\ : out STD_LOGIC;
    \mem1_reg[1][5]\ : out STD_LOGIC;
    \mem1_reg[2][5]\ : out STD_LOGIC;
    \writedata[10]\ : out STD_LOGIC;
    \mem1_reg[6][5]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \writedata[2]\ : out STD_LOGIC;
    \mem1_reg[3][5]\ : out STD_LOGIC;
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    \output_reg[4]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    \mem1_reg[5][3]_0\ : out STD_LOGIC;
    \output_reg[2]\ : in STD_LOGIC;
    \output_reg[4]_0\ : in STD_LOGIC;
    \output_reg[5]\ : in STD_LOGIC;
    \output_reg[1]\ : in STD_LOGIC;
    \output_reg[7]\ : in STD_LOGIC;
    \output_reg[4]_1\ : in STD_LOGIC;
    \output_reg[1]_0\ : in STD_LOGIC;
    \output_reg[5]_0\ : in STD_LOGIC;
    \output_reg[3]\ : in STD_LOGIC;
    \output_reg[2]_0\ : in STD_LOGIC;
    \output_reg[2]_1\ : in STD_LOGIC;
    \output_reg[0]\ : in STD_LOGIC;
    \output_reg[6]\ : in STD_LOGIC;
    \output_reg[1]_1\ : in STD_LOGIC;
    \output_reg[1]_2\ : in STD_LOGIC;
    \mem1_reg[7][5]_1\ : in STD_LOGIC;
    \mem1_reg[9]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \mem1_reg[1]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \output_reg[0]_0\ : in STD_LOGIC;
    \mem1_reg[5][3]_1\ : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \output_reg[6]_0\ : in STD_LOGIC;
    CLKmain_IBUF_BUFG : in STD_LOGIC
  );
end controlUnit;

architecture STRUCTURE of controlUnit is
  signal \^co\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \FSM_sequential_currentState[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_currentState[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_currentState[2]_i_1_n_0\ : STD_LOGIC;
  signal IorD_reg_i_1_n_0 : STD_LOGIC;
  signal IorD_reg_i_2_n_0 : STD_LOGIC;
  signal IorD_reg_i_3_n_0 : STD_LOGIC;
  signal MemRead_reg_i_1_n_0 : STD_LOGIC;
  signal MemRead_reg_i_2_n_0 : STD_LOGIC;
  signal MemRead_reg_i_3_n_0 : STD_LOGIC;
  signal MemWrite_reg_i_2_n_0 : STD_LOGIC;
  signal \Memory1/p_2_in\ : STD_LOGIC_VECTOR ( 19 to 19 );
  signal currentState : STD_LOGIC;
  signal \currentState__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \currentState__0\ : signal is "yes";
  signal \mem1[2][5]_i_2_n_0\ : STD_LOGIC;
  signal \^mem1_reg[0][5]\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^mem1_reg[7][5]_0\ : STD_LOGIC;
  signal \^mem1_reg[8][5]_0\ : STD_LOGIC;
  signal \^sigiord\ : STD_LOGIC;
  signal sigMemRead : STD_LOGIC;
  signal sigMemWrite : STD_LOGIC;
  signal \^writedata[29]\ : STD_LOGIC;
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_currentState_reg[0]\ : label is "yes";
  attribute KEEP of \FSM_sequential_currentState_reg[1]\ : label is "yes";
  attribute KEEP of \FSM_sequential_currentState_reg[2]\ : label is "yes";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of IorD_reg : label is "LDC";
  attribute XILINX_LEGACY_PRIM of MemRead_reg : label is "LDP";
  attribute XILINX_LEGACY_PRIM of MemWrite_reg : label is "LDC";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Rdata_reg[19]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \Rdata_reg[29]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Rdata_reg[29]_i_9\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \Rdata_reg[3]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \mem1[3][5]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \mem1[4][5]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \mem1[5][3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \mem1[9][4]_i_2\ : label is "soft_lutpair0";
begin
  \^co\(0) <= CO(0);
  \mem1_reg[0][5]\(3 downto 2) <= \^mem1_reg[0][5]\(3 downto 2);
  \mem1_reg[7][5]_0\ <= \^mem1_reg[7][5]_0\;
  \mem1_reg[8][5]_0\ <= \^mem1_reg[8][5]_0\;
  \output_reg[4]\(0) <= \^co\(0);
  sigIorD <= \^sigiord\;
  \writedata[29]\ <= \^writedata[29]\;
  \writedata[10]\ <= 'Z';
  \writedata[2]\ <= 'Z';
  \mem1_reg[3][5]\ <= 'Z';
  \mem1_reg[5][3]_0\ <= 'Z';
  \mem1_reg[0][5]\(0) <= 'Z';
  \mem1_reg[0][5]\(1) <= 'Z';
  \mem1_reg[0][5]\(4) <= 'Z';
  \mem1_reg[0][5]\(5) <= 'Z';
  D(3) <= 'Z';
\FSM_sequential_currentState[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => \currentState__0\(2),
      I1 => \currentState__0\(1),
      I2 => \currentState__0\(0),
      O => \FSM_sequential_currentState[0]_i_1_n_0\
    );
\FSM_sequential_currentState[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"42"
    )
        port map (
      I0 => \currentState__0\(0),
      I1 => \currentState__0\(1),
      I2 => \currentState__0\(2),
      O => \FSM_sequential_currentState[1]_i_1_n_0\
    );
\FSM_sequential_currentState[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4E"
    )
        port map (
      I0 => \currentState__0\(0),
      I1 => \currentState__0\(1),
      I2 => \currentState__0\(2),
      O => \FSM_sequential_currentState[2]_i_1_n_0\
    );
\FSM_sequential_currentState_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKmain_IBUF_BUFG,
      CE => '1',
      D => \FSM_sequential_currentState[0]_i_1_n_0\,
      Q => \currentState__0\(0),
      R => '0'
    );
\FSM_sequential_currentState_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKmain_IBUF_BUFG,
      CE => '1',
      D => \FSM_sequential_currentState[1]_i_1_n_0\,
      Q => \currentState__0\(1),
      R => '0'
    );
\FSM_sequential_currentState_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKmain_IBUF_BUFG,
      CE => '1',
      D => \FSM_sequential_currentState[2]_i_1_n_0\,
      Q => \currentState__0\(2),
      R => '0'
    );
IorD_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => IorD_reg_i_3_n_0,
      D => IorD_reg_i_1_n_0,
      G => IorD_reg_i_2_n_0,
      GE => '1',
      Q => \^sigiord\
    );
IorD_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \currentState__0\(1),
      I1 => \currentState__0\(2),
      I2 => \currentState__0\(0),
      O => IorD_reg_i_1_n_0
    );
IorD_reg_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2C"
    )
        port map (
      I0 => \currentState__0\(0),
      I1 => \currentState__0\(2),
      I2 => \currentState__0\(1),
      O => IorD_reg_i_2_n_0
    );
IorD_reg_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D3"
    )
        port map (
      I0 => \currentState__0\(0),
      I1 => \currentState__0\(2),
      I2 => \currentState__0\(1),
      O => IorD_reg_i_3_n_0
    );
MemRead_reg: unisim.vcomponents.LDPE
    generic map(
      INIT => '1'
    )
        port map (
      D => MemRead_reg_i_1_n_0,
      G => MemRead_reg_i_2_n_0,
      GE => '1',
      PRE => MemRead_reg_i_3_n_0,
      Q => sigMemRead
    );
MemRead_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \currentState__0\(0),
      I1 => \currentState__0\(2),
      I2 => \currentState__0\(1),
      O => MemRead_reg_i_1_n_0
    );
MemRead_reg_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \currentState__0\(0),
      I1 => \currentState__0\(1),
      I2 => \currentState__0\(2),
      O => MemRead_reg_i_2_n_0
    );
MemRead_reg_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \currentState__0\(2),
      I1 => \currentState__0\(1),
      I2 => \currentState__0\(0),
      O => MemRead_reg_i_3_n_0
    );
MemWrite_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => MemWrite_reg_i_2_n_0,
      D => '1',
      G => currentState,
      GE => '1',
      Q => sigMemWrite
    );
MemWrite_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \currentState__0\(2),
      I1 => \currentState__0\(1),
      I2 => \currentState__0\(0),
      O => currentState
    );
MemWrite_reg_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \currentState__0\(0),
      I1 => \currentState__0\(1),
      I2 => \currentState__0\(2),
      O => MemWrite_reg_i_2_n_0
    );
\Rdata_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^writedata[29]\,
      I1 => \output_reg[5]\,
      O => D(0)
    );
\Rdata_reg[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \output_reg[1]\,
      I1 => \^writedata[29]\,
      O => D(1)
    );
\Rdata_reg[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \Memory1/p_2_in\(19),
      I1 => \^writedata[29]\,
      I2 => \mem1_reg[5][3]_1\,
      O => D(2)
    );
\Rdata_reg[19]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^mem1_reg[0][5]\(3),
      I1 => \^mem1_reg[0][5]\(2),
      O => \Memory1/p_2_in\(19)
    );
\Rdata_reg[29]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sigMemRead,
      I1 => sigMemWrite,
      O => E(0)
    );
\Rdata_reg[29]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => sigMemWrite,
      I1 => sigMemRead,
      I2 => \^sigiord\,
      O => \^writedata[29]\
    );
\Rdata_reg[29]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^sigiord\,
      I1 => Q(3),
      O => \^mem1_reg[0][5]\(3)
    );
\Rdata_reg[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^mem1_reg[0][5]\(3),
      I1 => \^mem1_reg[0][5]\(2),
      O => \writedata[3]\(0)
    );
\i__carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \currentState__0\(0),
      I1 => \currentState__0\(1),
      I2 => \currentState__0\(2),
      O => DI(0)
    );
\i__carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \currentState__0\(0),
      I1 => \currentState__0\(1),
      I2 => \currentState__0\(2),
      O => S(0)
    );
\mem1[1][5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => sigMemRead,
      I1 => \^sigiord\,
      I2 => sigMemWrite,
      I3 => \mem1[2][5]_i_2_n_0\,
      O => \mem1_reg[1][5]\
    );
\mem1[2][5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => sigMemRead,
      I1 => \^sigiord\,
      I2 => sigMemWrite,
      I3 => \mem1[2][5]_i_2_n_0\,
      O => \mem1_reg[2][5]\
    );
\mem1[2][5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^mem1_reg[0][5]\(2),
      I1 => \^mem1_reg[0][5]\(3),
      O => \mem1[2][5]_i_2_n_0\
    );
\mem1[3][5]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^sigiord\,
      I1 => Q(2),
      O => \^mem1_reg[0][5]\(2)
    );
\mem1[4][5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => sigMemRead,
      I1 => \^sigiord\,
      I2 => sigMemWrite,
      I3 => \output_reg[5]_0\,
      O => \mem1_reg[4][5]\
    );
\mem1[5][3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => sigMemRead,
      I1 => \^sigiord\,
      I2 => sigMemWrite,
      I3 => \output_reg[5]_0\,
      O => \mem1_reg[5][3]\
    );
\mem1[7][5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => sigMemRead,
      I1 => \^sigiord\,
      I2 => sigMemWrite,
      I3 => \^mem1_reg[7][5]_0\,
      O => \mem1_reg[7][5]\
    );
\mem1[7][5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \output_reg[1]_1\,
      I1 => \^mem1_reg[0][5]\(3),
      O => \^mem1_reg[7][5]_0\
    );
\mem1[8][5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => sigMemRead,
      I1 => \^sigiord\,
      I2 => sigMemWrite,
      I3 => \^mem1_reg[8][5]_0\,
      O => \mem1_reg[8][5]\
    );
\mem1[9][4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => sigMemWrite,
      I1 => \^sigiord\,
      I2 => sigMemRead,
      O => \mem1_reg[6][5]\
    );
\mem1[9][4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \^mem1_reg[0][5]\(2),
      I1 => \^mem1_reg[0][5]\(3),
      O => \^mem1_reg[8][5]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity reg is
  port (
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    D : out STD_LOGIC_VECTOR ( 19 downto 0 );
    \mem1_reg[6][5]\ : out STD_LOGIC;
    \mem1_reg[6][5]_0\ : out STD_LOGIC;
    \mem1_reg[9][4]\ : out STD_LOGIC;
    \mem1_reg[5][3]\ : out STD_LOGIC;
    \mem1_reg[8][5]\ : out STD_LOGIC;
    \mem1_reg[0][5]\ : out STD_LOGIC;
    \mem1_reg[0][5]_0\ : out STD_LOGIC;
    \mem1_reg[0][5]_1\ : out STD_LOGIC;
    \writedata[0]\ : out STD_LOGIC;
    \writedata[16]\ : out STD_LOGIC;
    \mem1_reg[4][5]\ : out STD_LOGIC;
    \mem1_reg[3][5]\ : out STD_LOGIC;
    \mem1_reg[9][4]_0\ : out STD_LOGIC;
    \mem1_reg[9][4]_1\ : out STD_LOGIC;
    \writedata[19]\ : out STD_LOGIC;
    \mem1_reg[2][5]\ : out STD_LOGIC;
    \mem1_reg[7][5]\ : out STD_LOGIC;
    \writedata[28]\ : out STD_LOGIC;
    \writedata[10]\ : out STD_LOGIC;
    \mem1_reg[3][5]_0\ : out STD_LOGIC;
    \writedata[2]\ : out STD_LOGIC;
    \writedata[0]_0\ : out STD_LOGIC;
    \writedata[16]_0\ : out STD_LOGIC;
    \output_reg[3]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    sigIorD : in STD_LOGIC;
    \FSM_sequential_currentState_reg[2]\ : in STD_LOGIC;
    \FSM_sequential_currentState_reg[2]_0\ : in STD_LOGIC;
    \output_reg[2]_0\ : in STD_LOGIC;
    \output_reg[7]_0\ : in STD_LOGIC;
    \output_reg[0]_0\ : in STD_LOGIC;
    \mem1_reg[9]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \mem1_reg[4][5]_0\ : in STD_LOGIC;
    \mem1_reg[0][5]_2\ : in STD_LOGIC;
    \mem1_reg[8]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \mem1_reg[5]_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \mem1_reg[3]_3\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \output_reg[7]_1\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \output_reg[6]_0\ : in STD_LOGIC;
    \output_reg[2]_1\ : in STD_LOGIC;
    \mem1_reg[2][5]_0\ : in STD_LOGIC;
    \mem1_reg[6][5]_1\ : in STD_LOGIC;
    \mem1_reg[7]_4\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \mem1_reg[1][5]\ : in STD_LOGIC;
    \mem1_reg[4][5]_1\ : in STD_LOGIC;
    \mem1_reg[1]_5\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \mem1_reg[3][5]_1\ : in STD_LOGIC;
    \mem1_reg[7][5]_0\ : in STD_LOGIC;
    \mem1_reg[9][4]_2\ : in STD_LOGIC;
    CLKmain_IBUF_BUFG : in STD_LOGIC;
    \FSM_sequential_currentState_reg[0]\ : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
end reg;

architecture STRUCTURE of reg is
  signal \^d\ : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \^fsm_sequential_currentstate_reg[2]\ : STD_LOGIC;
  signal \Memory1/p_2_in\ : STD_LOGIC_VECTOR ( 27 downto 2 );
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \Rdata_reg[13]_i_10_n_0\ : STD_LOGIC;
  signal \Rdata_reg[13]_i_5_n_0\ : STD_LOGIC;
  signal \Rdata_reg[13]_i_8_n_0\ : STD_LOGIC;
  signal \Rdata_reg[17]_i_3_n_0\ : STD_LOGIC;
  signal \Rdata_reg[18]_i_4_n_0\ : STD_LOGIC;
  signal \Rdata_reg[18]_i_5_n_0\ : STD_LOGIC;
  signal \Rdata_reg[19]_i_4_n_0\ : STD_LOGIC;
  signal \Rdata_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \Rdata_reg[20]_i_3_n_0\ : STD_LOGIC;
  signal \Rdata_reg[21]_i_11_n_0\ : STD_LOGIC;
  signal \Rdata_reg[21]_i_3_n_0\ : STD_LOGIC;
  signal \Rdata_reg[21]_i_9_n_0\ : STD_LOGIC;
  signal \Rdata_reg[29]_i_10_n_0\ : STD_LOGIC;
  signal \Rdata_reg[29]_i_3_n_0\ : STD_LOGIC;
  signal \Rdata_reg[2]_i_4_n_0\ : STD_LOGIC;
  signal \Rdata_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \Rdata_reg[3]_i_4_n_0\ : STD_LOGIC;
  signal \Rdata_reg[5]_i_11_n_0\ : STD_LOGIC;
  signal \Rdata_reg[5]_i_3_n_0\ : STD_LOGIC;
  signal \Rdata_reg[5]_i_9_n_0\ : STD_LOGIC;
  signal \mem1[0][5]_i_3_n_0\ : STD_LOGIC;
  signal \mem1[3][5]_i_4_n_0\ : STD_LOGIC;
  signal \mem1[5][3]_i_3_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Rdata_reg[11]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \Rdata_reg[13]_i_10\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \Rdata_reg[13]_i_8\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \Rdata_reg[16]_i_4\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \Rdata_reg[17]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \Rdata_reg[19]_i_3\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \Rdata_reg[20]_i_2\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \Rdata_reg[20]_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \Rdata_reg[21]_i_11\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \Rdata_reg[21]_i_9\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \Rdata_reg[29]_i_10\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \Rdata_reg[3]_i_3\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \Rdata_reg[5]_i_11\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \Rdata_reg[5]_i_9\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \mem1[3][5]_i_4\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \mem1[7][5]_i_3\ : label is "soft_lutpair29";
begin
  D(19 downto 17) <= \^d\(19 downto 17);
  D(16) <= \^fsm_sequential_currentstate_reg[2]\;
  D(14 downto 10) <= \^d\(14 downto 10);
  D(8 downto 7) <= \^d\(8 downto 7);
  D(5 downto 4) <= \^d\(5 downto 4);
  D(2 downto 1) <= \^d\(2 downto 1);
  Q(3 downto 2) <= \^q\(3 downto 2);
  \^fsm_sequential_currentstate_reg[2]\ <= \FSM_sequential_currentState_reg[2]\;
  \mem1_reg[5][3]\ <= \mem1[5][3]_i_3_n_0\;
  \mem1_reg[6][5]_0\ <= 'Z';
  \mem1_reg[9][4]\ <= 'Z';
  \mem1_reg[8][5]\ <= 'Z';
  \mem1_reg[0][5]_0\ <= 'Z';
  \mem1_reg[0][5]_1\ <= 'Z';
  \writedata[16]\ <= 'Z';
  \mem1_reg[4][5]\ <= 'Z';
  \mem1_reg[3][5]\ <= 'Z';
  \mem1_reg[9][4]_1\ <= 'Z';
  \mem1_reg[2][5]\ <= 'Z';
  \writedata[28]\ <= 'Z';
  \writedata[10]\ <= 'Z';
  \writedata[2]\ <= 'Z';
  \writedata[0]_0\ <= 'Z';
  Q(0) <= 'Z';
  Q(1) <= 'Z';
  Q(4) <= 'Z';
  Q(5) <= 'Z';
  Q(6) <= 'Z';
  Q(7) <= 'Z';
  D(0) <= 'Z';
  D(3) <= 'Z';
  D(6) <= 'Z';
  D(9) <= 'Z';
  D(15) <= 'Z';
\Rdata_reg[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \Rdata_reg[5]_i_11_n_0\,
      I1 => \mem1_reg[7]_4\(0),
      I2 => \Rdata_reg[5]_i_9_n_0\,
      O => \writedata[0]\
    );
\Rdata_reg[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => '0',
      I1 => \Memory1/p_2_in\(10),
      I2 => \^fsm_sequential_currentstate_reg[2]\,
      O => \^d\(7)
    );
\Rdata_reg[10]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => sigIorD,
      I1 => \^q\(2),
      O => \Memory1/p_2_in\(10)
    );
\Rdata_reg[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \Memory1/p_2_in\(11),
      I1 => \^fsm_sequential_currentstate_reg[2]\,
      O => \^d\(8)
    );
\Rdata_reg[11]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B7"
    )
        port map (
      I0 => \^q\(3),
      I1 => sigIorD,
      I2 => \^q\(2),
      O => \Memory1/p_2_in\(11)
    );
\Rdata_reg[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Rdata_reg[13]_i_5_n_0\,
      I1 => \^fsm_sequential_currentstate_reg[2]\,
      O => \^d\(10)
    );
\Rdata_reg[13]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(2),
      I1 => sigIorD,
      O => \Rdata_reg[13]_i_10_n_0\
    );
\Rdata_reg[13]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \Rdata_reg[13]_i_8_n_0\,
      I1 => \mem1_reg[1][5]\,
      I2 => \Rdata_reg[13]_i_10_n_0\,
      I3 => \mem1_reg[4][5]_1\,
      O => \Rdata_reg[13]_i_5_n_0\
    );
\Rdata_reg[13]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^q\(3),
      I1 => sigIorD,
      O => \Rdata_reg[13]_i_8_n_0\
    );
\Rdata_reg[16]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^q\(2),
      I1 => sigIorD,
      I2 => \^q\(3),
      O => \writedata[16]_0\
    );
\Rdata_reg[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \Memory1/p_2_in\(17),
      I1 => \^fsm_sequential_currentstate_reg[2]\,
      I2 => \Rdata_reg[17]_i_3_n_0\,
      O => \^d\(11)
    );
\Rdata_reg[17]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => sigIorD,
      O => \Memory1/p_2_in\(17)
    );
\Rdata_reg[17]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \Rdata_reg[21]_i_9_n_0\,
      I1 => \mem1_reg[5]_2\(0),
      I2 => \Rdata_reg[21]_i_11_n_0\,
      O => \Rdata_reg[17]_i_3_n_0\
    );
\Rdata_reg[18]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Rdata_reg[18]_i_4_n_0\,
      I1 => \Memory1/p_2_in\(18),
      O => \^d\(12),
      S => \^fsm_sequential_currentstate_reg[2]\
    );
\Rdata_reg[18]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^q\(2),
      I1 => sigIorD,
      I2 => \Rdata_reg[21]_i_9_n_0\,
      O => \Memory1/p_2_in\(18)
    );
\Rdata_reg[18]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8B88"
    )
        port map (
      I0 => \Rdata_reg[18]_i_5_n_0\,
      I1 => \Rdata_reg[21]_i_9_n_0\,
      I2 => \output_reg[7]_1\(2),
      I3 => \mem1_reg[9]_0\(0),
      O => \Rdata_reg[18]_i_4_n_0\
    );
\Rdata_reg[18]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \^q\(2),
      I1 => sigIorD,
      I2 => \mem1_reg[1]_5\(0),
      O => \Rdata_reg[18]_i_5_n_0\
    );
\Rdata_reg[19]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \Rdata_reg[19]_i_4_n_0\,
      I1 => \Rdata_reg[21]_i_9_n_0\,
      O => \writedata[19]\
    );
\Rdata_reg[19]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \mem1_reg[5]_2\(0),
      I1 => \^q\(2),
      I2 => sigIorD,
      O => \Rdata_reg[19]_i_4_n_0\
    );
\Rdata_reg[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Rdata_reg[20]_i_2_n_0\,
      I1 => \^fsm_sequential_currentstate_reg[2]\,
      O => \^d\(13)
    );
\Rdata_reg[20]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Rdata_reg[20]_i_3_n_0\,
      I1 => \Rdata_reg[21]_i_9_n_0\,
      O => \Rdata_reg[20]_i_2_n_0\
    );
\Rdata_reg[20]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \^q\(2),
      I1 => sigIorD,
      I2 => \mem1_reg[9]_0\(0),
      O => \Rdata_reg[20]_i_3_n_0\
    );
\Rdata_reg[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Rdata_reg[21]_i_3_n_0\,
      I1 => \^fsm_sequential_currentstate_reg[2]\,
      O => \^d\(14)
    );
\Rdata_reg[21]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(2),
      I1 => sigIorD,
      O => \Rdata_reg[21]_i_11_n_0\
    );
\Rdata_reg[21]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \Rdata_reg[21]_i_9_n_0\,
      I1 => \mem1_reg[2][5]_0\,
      I2 => \Rdata_reg[21]_i_11_n_0\,
      O => \Rdata_reg[21]_i_3_n_0\
    );
\Rdata_reg[21]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^q\(3),
      I1 => sigIorD,
      O => \Rdata_reg[21]_i_9_n_0\
    );
\Rdata_reg[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => '0',
      I1 => \Memory1/p_2_in\(26),
      I2 => \^fsm_sequential_currentstate_reg[2]\,
      O => \^d\(17)
    );
\Rdata_reg[26]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(2),
      I1 => sigIorD,
      O => \Memory1/p_2_in\(26)
    );
\Rdata_reg[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => '0',
      I1 => \Memory1/p_2_in\(27),
      I2 => \^fsm_sequential_currentstate_reg[2]\,
      O => \^d\(18)
    );
\Rdata_reg[27]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^q\(3),
      I1 => sigIorD,
      O => \Memory1/p_2_in\(27)
    );
\Rdata_reg[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Rdata_reg[29]_i_3_n_0\,
      I1 => \^fsm_sequential_currentstate_reg[2]\,
      O => \^d\(19)
    );
\Rdata_reg[29]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \^q\(2),
      I1 => sigIorD,
      I2 => \mem1_reg[8]_1\(0),
      O => \Rdata_reg[29]_i_10_n_0\
    );
\Rdata_reg[29]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE200E2"
    )
        port map (
      I0 => \mem1_reg[3][5]_1\,
      I1 => \output_reg[7]_1\(2),
      I2 => \mem1_reg[7][5]_0\,
      I3 => \output_reg[7]_1\(3),
      I4 => \Rdata_reg[29]_i_10_n_0\,
      O => \Rdata_reg[29]_i_3_n_0\
    );
\Rdata_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => \Rdata_reg[2]_i_4_n_0\,
      I1 => \Memory1/p_2_in\(2),
      I2 => \^fsm_sequential_currentstate_reg[2]\,
      O => \^d\(1)
    );
\Rdata_reg[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^q\(2),
      I1 => sigIorD,
      O => \Memory1/p_2_in\(2)
    );
\Rdata_reg[2]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \Rdata_reg[5]_i_11_n_0\,
      I1 => \mem1_reg[7]_4\(0),
      I2 => \Rdata_reg[5]_i_9_n_0\,
      O => \Rdata_reg[2]_i_4_n_0\
    );
\Rdata_reg[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \output_reg[3]_0\(0),
      I1 => \^fsm_sequential_currentstate_reg[2]\,
      I2 => \Rdata_reg[3]_i_3_n_0\,
      O => \^d\(2)
    );
\Rdata_reg[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \Rdata_reg[5]_i_9_n_0\,
      I1 => \Rdata_reg[3]_i_4_n_0\,
      O => \Rdata_reg[3]_i_3_n_0\
    );
\Rdata_reg[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \^q\(2),
      I1 => sigIorD,
      I2 => \mem1_reg[3]_3\(0),
      O => \Rdata_reg[3]_i_4_n_0\
    );
\Rdata_reg[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Rdata_reg[5]_i_3_n_0\,
      I1 => \^fsm_sequential_currentstate_reg[2]\,
      O => \^d\(4)
    );
\Rdata_reg[5]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(2),
      I1 => sigIorD,
      O => \Rdata_reg[5]_i_11_n_0\
    );
\Rdata_reg[5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A80"
    )
        port map (
      I0 => \Rdata_reg[5]_i_9_n_0\,
      I1 => \mem1_reg[4][5]_0\,
      I2 => \Rdata_reg[5]_i_11_n_0\,
      I3 => \mem1_reg[0][5]_2\,
      O => \Rdata_reg[5]_i_3_n_0\
    );
\Rdata_reg[5]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^q\(3),
      I1 => sigIorD,
      O => \Rdata_reg[5]_i_9_n_0\
    );
\Rdata_reg[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => '0',
      I1 => \Memory1/p_2_in\(8),
      I2 => \^fsm_sequential_currentstate_reg[2]\,
      O => \^d\(5)
    );
\Rdata_reg[8]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^q\(3),
      I1 => sigIorD,
      I2 => \^q\(2),
      O => \Memory1/p_2_in\(8)
    );
\mem1[0][5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_sequential_currentState_reg[2]_0\,
      I1 => \mem1[0][5]_i_3_n_0\,
      O => \mem1_reg[0][5]\
    );
\mem1[0][5]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"37"
    )
        port map (
      I0 => \^q\(3),
      I1 => sigIorD,
      I2 => \^q\(2),
      O => \mem1[0][5]_i_3_n_0\
    );
\mem1[3][5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \FSM_sequential_currentState_reg[2]_0\,
      I1 => \output_reg[7]_1\(2),
      I2 => \mem1[3][5]_i_4_n_0\,
      O => \mem1_reg[3][5]_0\
    );
\mem1[3][5]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(3),
      I1 => sigIorD,
      O => \mem1[3][5]_i_4_n_0\
    );
\mem1[5][3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"D"
    )
        port map (
      I0 => \output_reg[7]_1\(2),
      I1 => \mem1[3][5]_i_4_n_0\,
      O => \mem1[5][3]_i_3_n_0\
    );
\mem1[6][5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_sequential_currentState_reg[2]_0\,
      I1 => \output_reg[2]_0\,
      O => \mem1_reg[6][5]\
    );
\mem1[7][5]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^q\(2),
      I1 => sigIorD,
      O => \mem1_reg[7][5]\
    );
\mem1[9][4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_sequential_currentState_reg[2]_0\,
      I1 => \output_reg[2]_1\,
      O => \mem1_reg[9][4]_0\
    );
\output_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKmain_IBUF_BUFG,
      CE => '1',
      D => \FSM_sequential_currentState_reg[0]\(2),
      Q => \^q\(2),
      R => '0'
    );
\output_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKmain_IBUF_BUFG,
      CE => '1',
      D => \FSM_sequential_currentState_reg[0]\(3),
      Q => \^q\(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity multiCycle is
  port (
    CLKmain : in STD_LOGIC;
    instruc : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rd1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rd2 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ext_imm : out STD_LOGIC_VECTOR ( 31 downto 0 );
    alures : out STD_LOGIC_VECTOR ( 31 downto 0 );
    memdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    writedata : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of multiCycle : entity is true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of multiCycle : entity is "b0fdb8f1";
end multiCycle;

architecture STRUCTURE of multiCycle is
  signal ALUout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal CLKmain_IBUF : STD_LOGIC;
  signal CLKmain_IBUF_BUFG : STD_LOGIC;
  signal ControlUnit1_n_10 : STD_LOGIC;
  signal ControlUnit1_n_11 : STD_LOGIC;
  signal ControlUnit1_n_12 : STD_LOGIC;
  signal ControlUnit1_n_13 : STD_LOGIC;
  signal ControlUnit1_n_14 : STD_LOGIC;
  signal ControlUnit1_n_15 : STD_LOGIC;
  signal ControlUnit1_n_16 : STD_LOGIC;
  signal ControlUnit1_n_17 : STD_LOGIC;
  signal ControlUnit1_n_18 : STD_LOGIC;
  signal ControlUnit1_n_19 : STD_LOGIC;
  signal ControlUnit1_n_20 : STD_LOGIC;
  signal ControlUnit1_n_22 : STD_LOGIC;
  signal ControlUnit1_n_23 : STD_LOGIC;
  signal ControlUnit1_n_28 : STD_LOGIC;
  signal ControlUnit1_n_9 : STD_LOGIC;
  signal Memory1_n_10 : STD_LOGIC;
  signal Memory1_n_11 : STD_LOGIC;
  signal Memory1_n_12 : STD_LOGIC;
  signal Memory1_n_13 : STD_LOGIC;
  signal Memory1_n_6 : STD_LOGIC;
  signal Memory1_n_8 : STD_LOGIC;
  signal Memory1_n_9 : STD_LOGIC;
  signal RegALUout_n_10 : STD_LOGIC;
  signal RegALUout_n_11 : STD_LOGIC;
  signal RegALUout_n_13 : STD_LOGIC;
  signal RegALUout_n_14 : STD_LOGIC;
  signal RegALUout_n_15 : STD_LOGIC;
  signal RegALUout_n_16 : STD_LOGIC;
  signal RegALUout_n_17 : STD_LOGIC;
  signal RegALUout_n_19 : STD_LOGIC;
  signal RegALUout_n_20 : STD_LOGIC;
  signal RegALUout_n_22 : STD_LOGIC;
  signal RegALUout_n_23 : STD_LOGIC;
  signal RegALUout_n_25 : STD_LOGIC;
  signal RegALUout_n_26 : STD_LOGIC;
  signal RegALUout_n_28 : STD_LOGIC;
  signal RegALUout_n_31 : STD_LOGIC;
  signal RegALUout_n_33 : STD_LOGIC;
  signal RegALUout_n_36 : STD_LOGIC;
  signal RegALUout_n_40 : STD_LOGIC;
  signal RegALUout_n_42 : STD_LOGIC;
  signal RegALUout_n_44 : STD_LOGIC;
  signal RegALUout_n_47 : STD_LOGIC;
  signal RegALUout_n_50 : STD_LOGIC;
  signal RegALUout_n_8 : STD_LOGIC;
  signal RegALUout_n_9 : STD_LOGIC;
  signal address : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal alures_OBUF : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal b : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \mem1_reg[1]_0\ : STD_LOGIC_VECTOR ( 5 to 5 );
  signal \mem1_reg[3]_1\ : STD_LOGIC_VECTOR ( 5 to 5 );
  signal \mem1_reg[5]_2\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \mem1_reg[7]_3\ : STD_LOGIC_VECTOR ( 5 to 5 );
  signal \mem1_reg[8]_4\ : STD_LOGIC_VECTOR ( 5 to 5 );
  signal \mem1_reg[9]_5\ : STD_LOGIC_VECTOR ( 4 to 4 );
  signal p_0_in : STD_LOGIC_VECTOR ( 4 to 4 );
  signal p_2_in : STD_LOGIC_VECTOR ( 3 to 3 );
  signal sigIorD : STD_LOGIC;
  signal writedata_OBUF : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_ControlUnit1_mem1_reg[3][5]_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_ControlUnit1_mem1_reg[5][3]_0_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_ControlUnit1_mem1_reg[7][5]_1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_ControlUnit1_output_reg[0]_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_ControlUnit1_output_reg[0]_0_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_ControlUnit1_output_reg[1]_0_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_ControlUnit1_output_reg[1]_2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_ControlUnit1_output_reg[2]_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_ControlUnit1_output_reg[2]_0_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_ControlUnit1_output_reg[2]_1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_ControlUnit1_output_reg[3]_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_ControlUnit1_output_reg[4]_0_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_ControlUnit1_output_reg[4]_1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_ControlUnit1_output_reg[6]_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_ControlUnit1_output_reg[6]_0_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_ControlUnit1_output_reg[7]_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_ControlUnit1_writedata[10]_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_ControlUnit1_writedata[2]_UNCONNECTED\ : STD_LOGIC;
  signal NLW_ControlUnit1_D_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_ControlUnit1_Q_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_ControlUnit1_mem1_reg[0][5]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \NLW_ControlUnit1_mem1_reg[1]_1_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_ControlUnit1_mem1_reg[9]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_Memory1_sigIorD_UNCONNECTED : STD_LOGIC;
  signal \NLW_Memory1_writedata[21]_0_UNCONNECTED\ : STD_LOGIC;
  signal NLW_Memory1_D_UNCONNECTED : STD_LOGIC_VECTOR ( 22 downto 1 );
  signal NLW_Memory1_Q_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_Memory1_output_reg[1]_3_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_RegALUout_mem1_reg[0][5]_0_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_RegALUout_mem1_reg[0][5]_1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_RegALUout_mem1_reg[2][5]_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_RegALUout_mem1_reg[3][5]_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_RegALUout_mem1_reg[4][5]_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_RegALUout_mem1_reg[6][5]_0_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_RegALUout_mem1_reg[6][5]_1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_RegALUout_mem1_reg[8][5]_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_RegALUout_mem1_reg[9][4]_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_RegALUout_mem1_reg[9][4]_1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_RegALUout_mem1_reg[9][4]_2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_RegALUout_output_reg[0]_0_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_RegALUout_output_reg[6]_0_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_RegALUout_output_reg[7]_0_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_RegALUout_writedata[0]_0_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_RegALUout_writedata[10]_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_RegALUout_writedata[16]_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_RegALUout_writedata[28]_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_RegALUout_writedata[2]_UNCONNECTED\ : STD_LOGIC;
  signal NLW_RegALUout_D_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_RegALUout_FSM_sequential_currentState_reg[0]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_RegALUout_Q_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_RegALUout_output_reg[7]_1_UNCONNECTED\ : STD_LOGIC_VECTOR ( 5 downto 0 );
begin
ALU1: entity work.alu
     port map (
      CO(0) => p_0_in(4),
      D(3 downto 0) => alures_OBUF(3 downto 0),
      DI(0) => b(2),
      S(0) => ControlUnit1_n_28
    );
CLKmain_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => CLKmain_IBUF,
      O => CLKmain_IBUF_BUFG
    );
CLKmain_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => CLKmain,
      O => CLKmain_IBUF
    );
ControlUnit1: entity work.controlUnit
     port map (
      CLKmain_IBUF_BUFG => CLKmain_IBUF_BUFG,
      CO(0) => p_0_in(4),
      D(3) => NLW_ControlUnit1_D_UNCONNECTED(3),
      D(2) => ControlUnit1_n_9,
      D(1) => ControlUnit1_n_10,
      D(0) => ControlUnit1_n_11,
      DI(0) => b(2),
      E(0) => ControlUnit1_n_23,
      Q(7 downto 4) => NLW_ControlUnit1_Q_UNCONNECTED(7 downto 4),
      Q(3 downto 2) => ALUout(3 downto 2),
      Q(1 downto 0) => NLW_ControlUnit1_Q_UNCONNECTED(1 downto 0),
      S(0) => ControlUnit1_n_28,
      \mem1_reg[0][5]\(5 downto 4) => \NLW_ControlUnit1_mem1_reg[0][5]_UNCONNECTED\(5 downto 4),
      \mem1_reg[0][5]\(3 downto 2) => address(3 downto 2),
      \mem1_reg[0][5]\(1 downto 0) => \NLW_ControlUnit1_mem1_reg[0][5]_UNCONNECTED\(1 downto 0),
      \mem1_reg[1][5]\ => ControlUnit1_n_19,
      \mem1_reg[1]_1\(0) => \NLW_ControlUnit1_mem1_reg[1]_1_UNCONNECTED\(0),
      \mem1_reg[2][5]\ => ControlUnit1_n_20,
      \mem1_reg[3][5]\ => \NLW_ControlUnit1_mem1_reg[3][5]_UNCONNECTED\,
      \mem1_reg[4][5]\ => ControlUnit1_n_18,
      \mem1_reg[5][3]\ => ControlUnit1_n_13,
      \mem1_reg[5][3]_0\ => \NLW_ControlUnit1_mem1_reg[5][3]_0_UNCONNECTED\,
      \mem1_reg[5][3]_1\ => RegALUout_n_42,
      \mem1_reg[6][5]\ => ControlUnit1_n_22,
      \mem1_reg[7][5]\ => ControlUnit1_n_14,
      \mem1_reg[7][5]_0\ => ControlUnit1_n_15,
      \mem1_reg[7][5]_1\ => \NLW_ControlUnit1_mem1_reg[7][5]_1_UNCONNECTED\,
      \mem1_reg[8][5]\ => ControlUnit1_n_16,
      \mem1_reg[8][5]_0\ => ControlUnit1_n_17,
      \mem1_reg[9]_0\(0) => \NLW_ControlUnit1_mem1_reg[9]_0_UNCONNECTED\(0),
      \output_reg[0]\ => \NLW_ControlUnit1_output_reg[0]_UNCONNECTED\,
      \output_reg[0]_0\ => \NLW_ControlUnit1_output_reg[0]_0_UNCONNECTED\,
      \output_reg[1]\ => RegALUout_n_50,
      \output_reg[1]_0\ => \NLW_ControlUnit1_output_reg[1]_0_UNCONNECTED\,
      \output_reg[1]_1\ => RegALUout_n_44,
      \output_reg[1]_2\ => \NLW_ControlUnit1_output_reg[1]_2_UNCONNECTED\,
      \output_reg[2]\ => \NLW_ControlUnit1_output_reg[2]_UNCONNECTED\,
      \output_reg[2]_0\ => \NLW_ControlUnit1_output_reg[2]_0_UNCONNECTED\,
      \output_reg[2]_1\ => \NLW_ControlUnit1_output_reg[2]_1_UNCONNECTED\,
      \output_reg[3]\ => \NLW_ControlUnit1_output_reg[3]_UNCONNECTED\,
      \output_reg[4]\(0) => alures_OBUF(4),
      \output_reg[4]_0\ => \NLW_ControlUnit1_output_reg[4]_0_UNCONNECTED\,
      \output_reg[4]_1\ => \NLW_ControlUnit1_output_reg[4]_1_UNCONNECTED\,
      \output_reg[5]\ => RegALUout_n_36,
      \output_reg[5]_0\ => RegALUout_n_31,
      \output_reg[6]\ => \NLW_ControlUnit1_output_reg[6]_UNCONNECTED\,
      \output_reg[6]_0\ => \NLW_ControlUnit1_output_reg[6]_0_UNCONNECTED\,
      \output_reg[7]\ => \NLW_ControlUnit1_output_reg[7]_UNCONNECTED\,
      sigIorD => sigIorD,
      \writedata[10]\ => \NLW_ControlUnit1_writedata[10]_UNCONNECTED\,
      \writedata[29]\ => ControlUnit1_n_12,
      \writedata[2]\ => \NLW_ControlUnit1_writedata[2]_UNCONNECTED\,
      \writedata[3]\(0) => p_2_in(3)
    );
Memory1: entity work.Memory
     port map (
      CLKmain_IBUF_BUFG => CLKmain_IBUF_BUFG,
      D(23) => RegALUout_n_8,
      D(22) => NLW_Memory1_D_UNCONNECTED(22),
      D(21) => RegALUout_n_9,
      D(20) => RegALUout_n_10,
      D(19) => RegALUout_n_11,
      D(18) => NLW_Memory1_D_UNCONNECTED(18),
      D(17) => RegALUout_n_13,
      D(16) => RegALUout_n_14,
      D(15) => ControlUnit1_n_9,
      D(14) => RegALUout_n_15,
      D(13) => RegALUout_n_16,
      D(12) => ControlUnit1_n_10,
      D(11) => RegALUout_n_17,
      D(10) => NLW_Memory1_D_UNCONNECTED(10),
      D(9) => RegALUout_n_19,
      D(8) => RegALUout_n_20,
      D(7) => NLW_Memory1_D_UNCONNECTED(7),
      D(6) => RegALUout_n_22,
      D(5) => RegALUout_n_23,
      D(4) => NLW_Memory1_D_UNCONNECTED(4),
      D(3) => RegALUout_n_25,
      D(2) => RegALUout_n_26,
      D(1) => NLW_Memory1_D_UNCONNECTED(1),
      D(0) => ControlUnit1_n_11,
      E(0) => ControlUnit1_n_23,
      \FSM_sequential_currentState_reg[0]\ => ControlUnit1_n_19,
      Q(1 downto 0) => NLW_Memory1_Q_UNCONNECTED(1 downto 0),
      \mem1_reg[1]_5\(0) => \mem1_reg[1]_0\(5),
      \mem1_reg[3]_4\(0) => \mem1_reg[3]_1\(5),
      \mem1_reg[5]_3\(0) => \mem1_reg[5]_2\(3),
      \mem1_reg[7]_2\(0) => \mem1_reg[7]_3\(5),
      \mem1_reg[8]_1\(0) => \mem1_reg[8]_4\(5),
      \mem1_reg[9]_0\(0) => \mem1_reg[9]_5\(4),
      \output_reg[0]\ => ControlUnit1_n_20,
      \output_reg[0]_0\ => RegALUout_n_33,
      \output_reg[1]\ => ControlUnit1_n_16,
      \output_reg[1]_0\ => ControlUnit1_n_14,
      \output_reg[1]_1\ => RegALUout_n_28,
      \output_reg[1]_2\ => ControlUnit1_n_13,
      \output_reg[1]_3\(1 downto 0) => \NLW_Memory1_output_reg[1]_3_UNCONNECTED\(1 downto 0),
      \output_reg[2]\ => ControlUnit1_n_18,
      \output_reg[3]\ => RegALUout_n_40,
      \output_reg[6]\ => RegALUout_n_47,
      sigIorD => NLW_Memory1_sigIorD_UNCONNECTED,
      \writedata[13]\ => Memory1_n_11,
      \writedata[13]_0\ => Memory1_n_13,
      \writedata[21]\ => Memory1_n_6,
      \writedata[21]_0\ => \NLW_Memory1_writedata[21]_0_UNCONNECTED\,
      \writedata[29]\ => Memory1_n_10,
      \writedata[29]_0\ => Memory1_n_12,
      \writedata[29]_1\(23 downto 18) => writedata_OBUF(29 downto 24),
      \writedata[29]_1\(17 downto 12) => writedata_OBUF(21 downto 16),
      \writedata[29]_1\(11 downto 6) => writedata_OBUF(13 downto 8),
      \writedata[29]_1\(5 downto 0) => writedata_OBUF(5 downto 0),
      \writedata[5]\ => Memory1_n_8,
      \writedata[5]_0\ => Memory1_n_9
    );
RegALUout: entity work.reg
     port map (
      CLKmain_IBUF_BUFG => CLKmain_IBUF_BUFG,
      D(19) => RegALUout_n_8,
      D(18) => RegALUout_n_9,
      D(17) => RegALUout_n_10,
      D(16) => RegALUout_n_11,
      D(15) => NLW_RegALUout_D_UNCONNECTED(15),
      D(14) => RegALUout_n_13,
      D(13) => RegALUout_n_14,
      D(12) => RegALUout_n_15,
      D(11) => RegALUout_n_16,
      D(10) => RegALUout_n_17,
      D(9) => NLW_RegALUout_D_UNCONNECTED(9),
      D(8) => RegALUout_n_19,
      D(7) => RegALUout_n_20,
      D(6) => NLW_RegALUout_D_UNCONNECTED(6),
      D(5) => RegALUout_n_22,
      D(4) => RegALUout_n_23,
      D(3) => NLW_RegALUout_D_UNCONNECTED(3),
      D(2) => RegALUout_n_25,
      D(1) => RegALUout_n_26,
      D(0) => NLW_RegALUout_D_UNCONNECTED(0),
      \FSM_sequential_currentState_reg[0]\(4) => \NLW_RegALUout_FSM_sequential_currentState_reg[0]_UNCONNECTED\(4),
      \FSM_sequential_currentState_reg[0]\(3 downto 2) => alures_OBUF(3 downto 2),
      \FSM_sequential_currentState_reg[0]\(1 downto 0) => \NLW_RegALUout_FSM_sequential_currentState_reg[0]_UNCONNECTED\(1 downto 0),
      \FSM_sequential_currentState_reg[2]\ => ControlUnit1_n_12,
      \FSM_sequential_currentState_reg[2]_0\ => ControlUnit1_n_22,
      Q(7 downto 4) => NLW_RegALUout_Q_UNCONNECTED(7 downto 4),
      Q(3 downto 2) => ALUout(3 downto 2),
      Q(1 downto 0) => NLW_RegALUout_Q_UNCONNECTED(1 downto 0),
      \mem1_reg[0][5]\ => RegALUout_n_33,
      \mem1_reg[0][5]_0\ => \NLW_RegALUout_mem1_reg[0][5]_0_UNCONNECTED\,
      \mem1_reg[0][5]_1\ => \NLW_RegALUout_mem1_reg[0][5]_1_UNCONNECTED\,
      \mem1_reg[0][5]_2\ => Memory1_n_9,
      \mem1_reg[1][5]\ => Memory1_n_11,
      \mem1_reg[1]_5\(0) => \mem1_reg[1]_0\(5),
      \mem1_reg[2][5]\ => \NLW_RegALUout_mem1_reg[2][5]_UNCONNECTED\,
      \mem1_reg[2][5]_0\ => Memory1_n_6,
      \mem1_reg[3][5]\ => \NLW_RegALUout_mem1_reg[3][5]_UNCONNECTED\,
      \mem1_reg[3][5]_0\ => RegALUout_n_47,
      \mem1_reg[3][5]_1\ => Memory1_n_10,
      \mem1_reg[3]_3\(0) => \mem1_reg[3]_1\(5),
      \mem1_reg[4][5]\ => \NLW_RegALUout_mem1_reg[4][5]_UNCONNECTED\,
      \mem1_reg[4][5]_0\ => Memory1_n_8,
      \mem1_reg[4][5]_1\ => Memory1_n_13,
      \mem1_reg[5][3]\ => RegALUout_n_31,
      \mem1_reg[5]_2\(0) => \mem1_reg[5]_2\(3),
      \mem1_reg[6][5]\ => RegALUout_n_28,
      \mem1_reg[6][5]_0\ => \NLW_RegALUout_mem1_reg[6][5]_0_UNCONNECTED\,
      \mem1_reg[6][5]_1\ => \NLW_RegALUout_mem1_reg[6][5]_1_UNCONNECTED\,
      \mem1_reg[7][5]\ => RegALUout_n_44,
      \mem1_reg[7][5]_0\ => Memory1_n_12,
      \mem1_reg[7]_4\(0) => \mem1_reg[7]_3\(5),
      \mem1_reg[8][5]\ => \NLW_RegALUout_mem1_reg[8][5]_UNCONNECTED\,
      \mem1_reg[8]_1\(0) => \mem1_reg[8]_4\(5),
      \mem1_reg[9][4]\ => \NLW_RegALUout_mem1_reg[9][4]_UNCONNECTED\,
      \mem1_reg[9][4]_0\ => RegALUout_n_40,
      \mem1_reg[9][4]_1\ => \NLW_RegALUout_mem1_reg[9][4]_1_UNCONNECTED\,
      \mem1_reg[9][4]_2\ => \NLW_RegALUout_mem1_reg[9][4]_2_UNCONNECTED\,
      \mem1_reg[9]_0\(0) => \mem1_reg[9]_5\(4),
      \output_reg[0]_0\ => \NLW_RegALUout_output_reg[0]_0_UNCONNECTED\,
      \output_reg[2]_0\ => ControlUnit1_n_15,
      \output_reg[2]_1\ => ControlUnit1_n_17,
      \output_reg[3]_0\(0) => p_2_in(3),
      \output_reg[6]_0\ => \NLW_RegALUout_output_reg[6]_0_UNCONNECTED\,
      \output_reg[7]_0\ => \NLW_RegALUout_output_reg[7]_0_UNCONNECTED\,
      \output_reg[7]_1\(5 downto 4) => \NLW_RegALUout_output_reg[7]_1_UNCONNECTED\(5 downto 4),
      \output_reg[7]_1\(3 downto 2) => address(3 downto 2),
      \output_reg[7]_1\(1 downto 0) => \NLW_RegALUout_output_reg[7]_1_UNCONNECTED\(1 downto 0),
      sigIorD => sigIorD,
      \writedata[0]\ => RegALUout_n_36,
      \writedata[0]_0\ => \NLW_RegALUout_writedata[0]_0_UNCONNECTED\,
      \writedata[10]\ => \NLW_RegALUout_writedata[10]_UNCONNECTED\,
      \writedata[16]\ => \NLW_RegALUout_writedata[16]_UNCONNECTED\,
      \writedata[16]_0\ => RegALUout_n_50,
      \writedata[19]\ => RegALUout_n_42,
      \writedata[28]\ => \NLW_RegALUout_writedata[28]_UNCONNECTED\,
      \writedata[2]\ => \NLW_RegALUout_writedata[2]_UNCONNECTED\
    );
\alures_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => alures_OBUF(0),
      O => alures(0)
    );
\alures_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => alures(10)
    );
\alures_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => alures(11)
    );
\alures_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => alures(12)
    );
\alures_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => alures(13)
    );
\alures_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => alures(14)
    );
\alures_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => alures(15)
    );
\alures_OBUF[16]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => alures(16)
    );
\alures_OBUF[17]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => alures(17)
    );
\alures_OBUF[18]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => alures(18)
    );
\alures_OBUF[19]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => alures(19)
    );
\alures_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => alures_OBUF(1),
      O => alures(1)
    );
\alures_OBUF[20]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => alures(20)
    );
\alures_OBUF[21]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => alures(21)
    );
\alures_OBUF[22]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => alures(22)
    );
\alures_OBUF[23]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => alures(23)
    );
\alures_OBUF[24]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => alures(24)
    );
\alures_OBUF[25]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => alures(25)
    );
\alures_OBUF[26]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => alures(26)
    );
\alures_OBUF[27]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => alures(27)
    );
\alures_OBUF[28]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => alures(28)
    );
\alures_OBUF[29]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => alures(29)
    );
\alures_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => alures_OBUF(2),
      O => alures(2)
    );
\alures_OBUF[30]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => alures(30)
    );
\alures_OBUF[31]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => alures(31)
    );
\alures_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => alures_OBUF(3),
      O => alures(3)
    );
\alures_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => alures_OBUF(4),
      O => alures(4)
    );
\alures_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => alures(5)
    );
\alures_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => alures(6)
    );
\alures_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => alures(7)
    );
\alures_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => alures(8)
    );
\alures_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => alures(9)
    );
\ext_imm_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => ext_imm(0)
    );
\ext_imm_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => ext_imm(10)
    );
\ext_imm_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => ext_imm(11)
    );
\ext_imm_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => ext_imm(12)
    );
\ext_imm_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => ext_imm(13)
    );
\ext_imm_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => ext_imm(14)
    );
\ext_imm_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => ext_imm(15)
    );
\ext_imm_OBUF[16]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => ext_imm(16)
    );
\ext_imm_OBUF[17]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => ext_imm(17)
    );
\ext_imm_OBUF[18]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => ext_imm(18)
    );
\ext_imm_OBUF[19]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => ext_imm(19)
    );
\ext_imm_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => ext_imm(1)
    );
\ext_imm_OBUF[20]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => ext_imm(20)
    );
\ext_imm_OBUF[21]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => ext_imm(21)
    );
\ext_imm_OBUF[22]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => ext_imm(22)
    );
\ext_imm_OBUF[23]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => ext_imm(23)
    );
\ext_imm_OBUF[24]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => ext_imm(24)
    );
\ext_imm_OBUF[25]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => ext_imm(25)
    );
\ext_imm_OBUF[26]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => ext_imm(26)
    );
\ext_imm_OBUF[27]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => ext_imm(27)
    );
\ext_imm_OBUF[28]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => ext_imm(28)
    );
\ext_imm_OBUF[29]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => ext_imm(29)
    );
\ext_imm_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => ext_imm(2)
    );
\ext_imm_OBUF[30]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => ext_imm(30)
    );
\ext_imm_OBUF[31]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => ext_imm(31)
    );
\ext_imm_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => ext_imm(3)
    );
\ext_imm_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => ext_imm(4)
    );
\ext_imm_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => ext_imm(5)
    );
\ext_imm_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => ext_imm(6)
    );
\ext_imm_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => ext_imm(7)
    );
\ext_imm_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => ext_imm(8)
    );
\ext_imm_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => ext_imm(9)
    );
\instruc_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => instruc(0)
    );
\instruc_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => instruc(10)
    );
\instruc_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => instruc(11)
    );
\instruc_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => instruc(12)
    );
\instruc_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => instruc(13)
    );
\instruc_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => instruc(14)
    );
\instruc_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => instruc(15)
    );
\instruc_OBUF[16]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => instruc(16)
    );
\instruc_OBUF[17]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => instruc(17)
    );
\instruc_OBUF[18]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => instruc(18)
    );
\instruc_OBUF[19]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => instruc(19)
    );
\instruc_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => instruc(1)
    );
\instruc_OBUF[20]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => instruc(20)
    );
\instruc_OBUF[21]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => instruc(21)
    );
\instruc_OBUF[22]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => instruc(22)
    );
\instruc_OBUF[23]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => instruc(23)
    );
\instruc_OBUF[24]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => instruc(24)
    );
\instruc_OBUF[25]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => instruc(25)
    );
\instruc_OBUF[26]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => instruc(26)
    );
\instruc_OBUF[27]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => instruc(27)
    );
\instruc_OBUF[28]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => instruc(28)
    );
\instruc_OBUF[29]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => instruc(29)
    );
\instruc_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => instruc(2)
    );
\instruc_OBUF[30]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => instruc(30)
    );
\instruc_OBUF[31]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => instruc(31)
    );
\instruc_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => instruc(3)
    );
\instruc_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => instruc(4)
    );
\instruc_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => instruc(5)
    );
\instruc_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => instruc(6)
    );
\instruc_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => instruc(7)
    );
\instruc_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => instruc(8)
    );
\instruc_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => instruc(9)
    );
\memdata_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => memdata(0)
    );
\memdata_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => memdata(10)
    );
\memdata_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => memdata(11)
    );
\memdata_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => memdata(12)
    );
\memdata_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => memdata(13)
    );
\memdata_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => memdata(14)
    );
\memdata_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => memdata(15)
    );
\memdata_OBUF[16]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => memdata(16)
    );
\memdata_OBUF[17]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => memdata(17)
    );
\memdata_OBUF[18]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => memdata(18)
    );
\memdata_OBUF[19]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => memdata(19)
    );
\memdata_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => memdata(1)
    );
\memdata_OBUF[20]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => memdata(20)
    );
\memdata_OBUF[21]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => memdata(21)
    );
\memdata_OBUF[22]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => memdata(22)
    );
\memdata_OBUF[23]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => memdata(23)
    );
\memdata_OBUF[24]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => memdata(24)
    );
\memdata_OBUF[25]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => memdata(25)
    );
\memdata_OBUF[26]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => memdata(26)
    );
\memdata_OBUF[27]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => memdata(27)
    );
\memdata_OBUF[28]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => memdata(28)
    );
\memdata_OBUF[29]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => memdata(29)
    );
\memdata_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => memdata(2)
    );
\memdata_OBUF[30]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => memdata(30)
    );
\memdata_OBUF[31]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => memdata(31)
    );
\memdata_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => memdata(3)
    );
\memdata_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => memdata(4)
    );
\memdata_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => memdata(5)
    );
\memdata_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => memdata(6)
    );
\memdata_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => memdata(7)
    );
\memdata_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => memdata(8)
    );
\memdata_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => memdata(9)
    );
\rd1_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => rd1(0)
    );
\rd1_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => rd1(10)
    );
\rd1_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => rd1(11)
    );
\rd1_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => rd1(12)
    );
\rd1_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => rd1(13)
    );
\rd1_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => rd1(14)
    );
\rd1_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => rd1(15)
    );
\rd1_OBUF[16]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => rd1(16)
    );
\rd1_OBUF[17]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => rd1(17)
    );
\rd1_OBUF[18]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => rd1(18)
    );
\rd1_OBUF[19]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => rd1(19)
    );
\rd1_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => rd1(1)
    );
\rd1_OBUF[20]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => rd1(20)
    );
\rd1_OBUF[21]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => rd1(21)
    );
\rd1_OBUF[22]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => rd1(22)
    );
\rd1_OBUF[23]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => rd1(23)
    );
\rd1_OBUF[24]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => rd1(24)
    );
\rd1_OBUF[25]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => rd1(25)
    );
\rd1_OBUF[26]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => rd1(26)
    );
\rd1_OBUF[27]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => rd1(27)
    );
\rd1_OBUF[28]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => rd1(28)
    );
\rd1_OBUF[29]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => rd1(29)
    );
\rd1_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => rd1(2)
    );
\rd1_OBUF[30]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => rd1(30)
    );
\rd1_OBUF[31]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => rd1(31)
    );
\rd1_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => rd1(3)
    );
\rd1_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => rd1(4)
    );
\rd1_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => rd1(5)
    );
\rd1_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => rd1(6)
    );
\rd1_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => rd1(7)
    );
\rd1_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => rd1(8)
    );
\rd1_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => rd1(9)
    );
\rd2_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => rd2(0)
    );
\rd2_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => rd2(10)
    );
\rd2_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => rd2(11)
    );
\rd2_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => rd2(12)
    );
\rd2_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => rd2(13)
    );
\rd2_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => rd2(14)
    );
\rd2_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => rd2(15)
    );
\rd2_OBUF[16]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => rd2(16)
    );
\rd2_OBUF[17]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => rd2(17)
    );
\rd2_OBUF[18]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => rd2(18)
    );
\rd2_OBUF[19]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => rd2(19)
    );
\rd2_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => rd2(1)
    );
\rd2_OBUF[20]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => rd2(20)
    );
\rd2_OBUF[21]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => rd2(21)
    );
\rd2_OBUF[22]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => rd2(22)
    );
\rd2_OBUF[23]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => rd2(23)
    );
\rd2_OBUF[24]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => rd2(24)
    );
\rd2_OBUF[25]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => rd2(25)
    );
\rd2_OBUF[26]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => rd2(26)
    );
\rd2_OBUF[27]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => rd2(27)
    );
\rd2_OBUF[28]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => rd2(28)
    );
\rd2_OBUF[29]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => rd2(29)
    );
\rd2_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => rd2(2)
    );
\rd2_OBUF[30]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => rd2(30)
    );
\rd2_OBUF[31]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => rd2(31)
    );
\rd2_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => rd2(3)
    );
\rd2_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => rd2(4)
    );
\rd2_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => rd2(5)
    );
\rd2_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => rd2(6)
    );
\rd2_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => rd2(7)
    );
\rd2_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => rd2(8)
    );
\rd2_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => rd2(9)
    );
\writedata_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => writedata_OBUF(0),
      O => writedata(0)
    );
\writedata_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => writedata_OBUF(10),
      O => writedata(10)
    );
\writedata_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => writedata_OBUF(11),
      O => writedata(11)
    );
\writedata_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => writedata_OBUF(12),
      O => writedata(12)
    );
\writedata_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => writedata_OBUF(13),
      O => writedata(13)
    );
\writedata_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => writedata(14)
    );
\writedata_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => writedata(15)
    );
\writedata_OBUF[16]_inst\: unisim.vcomponents.OBUF
     port map (
      I => writedata_OBUF(16),
      O => writedata(16)
    );
\writedata_OBUF[17]_inst\: unisim.vcomponents.OBUF
     port map (
      I => writedata_OBUF(17),
      O => writedata(17)
    );
\writedata_OBUF[18]_inst\: unisim.vcomponents.OBUF
     port map (
      I => writedata_OBUF(18),
      O => writedata(18)
    );
\writedata_OBUF[19]_inst\: unisim.vcomponents.OBUF
     port map (
      I => writedata_OBUF(19),
      O => writedata(19)
    );
\writedata_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => writedata_OBUF(1),
      O => writedata(1)
    );
\writedata_OBUF[20]_inst\: unisim.vcomponents.OBUF
     port map (
      I => writedata_OBUF(20),
      O => writedata(20)
    );
\writedata_OBUF[21]_inst\: unisim.vcomponents.OBUF
     port map (
      I => writedata_OBUF(21),
      O => writedata(21)
    );
\writedata_OBUF[22]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => writedata(22)
    );
\writedata_OBUF[23]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => writedata(23)
    );
\writedata_OBUF[24]_inst\: unisim.vcomponents.OBUF
     port map (
      I => writedata_OBUF(24),
      O => writedata(24)
    );
\writedata_OBUF[25]_inst\: unisim.vcomponents.OBUF
     port map (
      I => writedata_OBUF(25),
      O => writedata(25)
    );
\writedata_OBUF[26]_inst\: unisim.vcomponents.OBUF
     port map (
      I => writedata_OBUF(26),
      O => writedata(26)
    );
\writedata_OBUF[27]_inst\: unisim.vcomponents.OBUF
     port map (
      I => writedata_OBUF(27),
      O => writedata(27)
    );
\writedata_OBUF[28]_inst\: unisim.vcomponents.OBUF
     port map (
      I => writedata_OBUF(28),
      O => writedata(28)
    );
\writedata_OBUF[29]_inst\: unisim.vcomponents.OBUF
     port map (
      I => writedata_OBUF(29),
      O => writedata(29)
    );
\writedata_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => writedata_OBUF(2),
      O => writedata(2)
    );
\writedata_OBUF[30]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => writedata(30)
    );
\writedata_OBUF[31]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => writedata(31)
    );
\writedata_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => writedata_OBUF(3),
      O => writedata(3)
    );
\writedata_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => writedata_OBUF(4),
      O => writedata(4)
    );
\writedata_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => writedata_OBUF(5),
      O => writedata(5)
    );
\writedata_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => writedata(6)
    );
\writedata_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => writedata(7)
    );
\writedata_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => writedata_OBUF(8),
      O => writedata(8)
    );
\writedata_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => writedata_OBUF(9),
      O => writedata(9)
    );
end STRUCTURE;
