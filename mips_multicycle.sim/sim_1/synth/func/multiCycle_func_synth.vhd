-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
-- Date        : Mon Dec 12 00:49:32 2022
-- Host        : DESKTOP-C4GD19I running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file {D:/MATERIALE AN 3 SEM
--               1/SSC/lab7/mips_multicycle/mips_multicycle.sim/sim_1/synth/func/multiCycle_func_synth.vhd}
-- Design      : ALUControl
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k70tfbv676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ALUControl is
  port (
    Func : in STD_LOGIC_VECTOR ( 5 downto 0 );
    ALUop : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ALUcon : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ALUControl : entity is true;
end ALUControl;

architecture STRUCTURE of ALUControl is
  signal ALUcon_OBUF : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \ALUcon_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \ALUcon_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \ALUcon_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \ALUcon_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \ALUcon_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \ALUcon_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \ALUcon_reg[2]_i_4_n_0\ : STD_LOGIC;
  signal \ALUcon_reg[2]_i_5_n_0\ : STD_LOGIC;
  signal ALUop_IBUF : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Func_IBUF : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \ALUcon_reg[0]\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \ALUcon_reg[1]\ : label is "LDP";
begin
\ALUcon_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALUcon_OBUF(0),
      O => ALUcon(0)
    );
\ALUcon_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALUcon_OBUF(1),
      O => ALUcon(1)
    );
\ALUcon_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALUcon_OBUF(2),
      O => ALUcon(2)
    );
\ALUcon_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => ALUcon(3)
    );
\ALUcon_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \ALUcon_reg[1]_i_2_n_0\,
      D => \ALUcon_reg[0]_i_1_n_0\,
      G => \ALUcon_reg[2]_i_2_n_0\,
      GE => '1',
      Q => ALUcon_OBUF(0)
    );
\ALUcon_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFFFEFFFEFF"
    )
        port map (
      I0 => Func_IBUF(0),
      I1 => Func_IBUF(4),
      I2 => Func_IBUF(3),
      I3 => Func_IBUF(5),
      I4 => Func_IBUF(2),
      I5 => Func_IBUF(1),
      O => \ALUcon_reg[0]_i_1_n_0\
    );
\ALUcon_reg[1]\: unisim.vcomponents.LDPE
    generic map(
      INIT => '1'
    )
        port map (
      D => \ALUcon_reg[1]_i_1_n_0\,
      G => \ALUcon_reg[2]_i_2_n_0\,
      GE => '1',
      PRE => \ALUcon_reg[1]_i_2_n_0\,
      Q => ALUcon_OBUF(1)
    );
\ALUcon_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => Func_IBUF(2),
      I1 => Func_IBUF(4),
      I2 => Func_IBUF(3),
      I3 => Func_IBUF(5),
      I4 => Func_IBUF(0),
      O => \ALUcon_reg[1]_i_1_n_0\
    );
\ALUcon_reg[1]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ALUop_IBUF(1),
      O => \ALUcon_reg[1]_i_2_n_0\
    );
\ALUcon_reg[2]\: unisim.vcomponents.LDCP
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \ALUcon_reg[2]_i_3_n_0\,
      D => \ALUcon_reg[2]_i_1_n_0\,
      G => \ALUcon_reg[2]_i_2_n_0\,
      PRE => \ALUcon_reg[2]_i_4_n_0\,
      Q => ALUcon_OBUF(2)
    );
\ALUcon_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000040"
    )
        port map (
      I0 => Func_IBUF(0),
      I1 => Func_IBUF(1),
      I2 => Func_IBUF(5),
      I3 => Func_IBUF(3),
      I4 => Func_IBUF(4),
      I5 => Func_IBUF(2),
      O => \ALUcon_reg[2]_i_1_n_0\
    );
\ALUcon_reg[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0151"
    )
        port map (
      I0 => \ALUcon_reg[2]_i_5_n_0\,
      I1 => Func_IBUF(0),
      I2 => Func_IBUF(2),
      I3 => Func_IBUF(1),
      O => \ALUcon_reg[2]_i_2_n_0\
    );
\ALUcon_reg[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ALUop_IBUF(0),
      I1 => ALUop_IBUF(1),
      O => \ALUcon_reg[2]_i_3_n_0\
    );
\ALUcon_reg[2]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ALUop_IBUF(0),
      I1 => ALUop_IBUF(1),
      O => \ALUcon_reg[2]_i_4_n_0\
    );
\ALUcon_reg[2]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFDF"
    )
        port map (
      I0 => Func_IBUF(5),
      I1 => Func_IBUF(3),
      I2 => ALUop_IBUF(1),
      I3 => ALUop_IBUF(0),
      I4 => Func_IBUF(4),
      O => \ALUcon_reg[2]_i_5_n_0\
    );
\ALUop_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => ALUop(0),
      O => ALUop_IBUF(0)
    );
\ALUop_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => ALUop(1),
      O => ALUop_IBUF(1)
    );
\Func_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Func(0),
      O => Func_IBUF(0)
    );
\Func_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Func(1),
      O => Func_IBUF(1)
    );
\Func_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Func(2),
      O => Func_IBUF(2)
    );
\Func_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Func(3),
      O => Func_IBUF(3)
    );
\Func_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Func(4),
      O => Func_IBUF(4)
    );
\Func_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Func(5),
      O => Func_IBUF(5)
    );
end STRUCTURE;
