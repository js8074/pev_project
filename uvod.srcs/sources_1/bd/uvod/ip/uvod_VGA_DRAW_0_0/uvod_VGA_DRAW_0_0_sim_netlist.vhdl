-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Thu Mar 19 22:11:48 2026
-- Host        : DESKTOP-TPP71AQ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/workspace/PEV/uvod/uvod.srcs/sources_1/bd/uvod/ip/uvod_VGA_DRAW_0_0/uvod_VGA_DRAW_0_0_sim_netlist.vhdl
-- Design      : uvod_VGA_DRAW_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7s25csga324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uvod_VGA_DRAW_0_0_VGA_DRAW is
  port (
    R_OUT : out STD_LOGIC_VECTOR ( 3 downto 0 );
    G_OUT : out STD_LOGIC_VECTOR ( 3 downto 0 );
    B_OUT : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Y_IN : in STD_LOGIC_VECTOR ( 8 downto 0 );
    CLK : in STD_LOGIC;
    X_IN : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of uvod_VGA_DRAW_0_0_VGA_DRAW : entity is "VGA_DRAW";
end uvod_VGA_DRAW_0_0_VGA_DRAW;

architecture STRUCTURE of uvod_VGA_DRAW_0_0_VGA_DRAW is
  signal \B_OUT[0]_i_1_n_0\ : STD_LOGIC;
  signal \B_OUT[1]_i_1_n_0\ : STD_LOGIC;
  signal \B_OUT[1]_i_3_n_0\ : STD_LOGIC;
  signal \B_OUT[2]_i_1_n_0\ : STD_LOGIC;
  signal \B_OUT[2]_i_3_n_0\ : STD_LOGIC;
  signal \B_OUT[3]_i_1_n_0\ : STD_LOGIC;
  signal \B_OUT[3]_i_2_n_0\ : STD_LOGIC;
  signal \B_OUT[3]_i_4_n_0\ : STD_LOGIC;
  signal \B_OUT[3]_i_5_n_0\ : STD_LOGIC;
  signal \B_OUT[3]_i_6_n_0\ : STD_LOGIC;
  signal \B_OUT[3]_i_7_n_0\ : STD_LOGIC;
  signal \G_OUT[0]_i_1_n_0\ : STD_LOGIC;
  signal \G_OUT[1]_i_1_n_0\ : STD_LOGIC;
  signal \G_OUT[1]_i_3_n_0\ : STD_LOGIC;
  signal \G_OUT[2]_i_1_n_0\ : STD_LOGIC;
  signal \G_OUT[2]_i_3_n_0\ : STD_LOGIC;
  signal \G_OUT[3]_i_1_n_0\ : STD_LOGIC;
  signal \G_OUT[3]_i_2_n_0\ : STD_LOGIC;
  signal \G_OUT[3]_i_4_n_0\ : STD_LOGIC;
  signal \G_OUT[3]_i_5_n_0\ : STD_LOGIC;
  signal \G_OUT[3]_i_6_n_0\ : STD_LOGIC;
  signal \G_OUT[3]_i_7_n_0\ : STD_LOGIC;
  signal \R_OUT[0]_i_1_n_0\ : STD_LOGIC;
  signal \R_OUT[1]_i_1_n_0\ : STD_LOGIC;
  signal \R_OUT[1]_i_3_n_0\ : STD_LOGIC;
  signal \R_OUT[2]_i_1_n_0\ : STD_LOGIC;
  signal \R_OUT[2]_i_3_n_0\ : STD_LOGIC;
  signal \R_OUT[3]_i_1_n_0\ : STD_LOGIC;
  signal \R_OUT[3]_i_2_n_0\ : STD_LOGIC;
  signal \R_OUT[3]_i_3_n_0\ : STD_LOGIC;
  signal \R_OUT[3]_i_5_n_0\ : STD_LOGIC;
  signal \R_OUT[3]_i_7_n_0\ : STD_LOGIC;
  signal \R_OUT[3]_i_8_n_0\ : STD_LOGIC;
  signal \R_OUT[3]_i_9_n_0\ : STD_LOGIC;
  signal SET_BRIGHTNESS : STD_LOGIC_VECTOR ( 3 to 3 );
  signal p_1_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_1_in0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_1_in2_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \B_OUT[0]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \B_OUT[1]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \B_OUT[2]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \B_OUT[3]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \G_OUT[0]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \G_OUT[1]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \G_OUT[2]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \G_OUT[3]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \R_OUT[0]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \R_OUT[1]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \R_OUT[2]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \R_OUT[3]_i_4\ : label is "soft_lutpair4";
begin
\B_OUT[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007E81"
    )
        port map (
      I0 => Y_IN(5),
      I1 => Y_IN(4),
      I2 => Y_IN(0),
      I3 => p_1_in(0),
      I4 => \B_OUT[3]_i_6_n_0\,
      O => \B_OUT[0]_i_1_n_0\
    );
\B_OUT[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2664"
    )
        port map (
      I0 => X_IN(5),
      I1 => X_IN(6),
      I2 => X_IN(4),
      I3 => X_IN(0),
      O => p_1_in(0)
    );
\B_OUT[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AA6969AA"
    )
        port map (
      I0 => p_1_in(1),
      I1 => Y_IN(4),
      I2 => Y_IN(5),
      I3 => Y_IN(1),
      I4 => \B_OUT[1]_i_3_n_0\,
      I5 => \B_OUT[3]_i_6_n_0\,
      O => \B_OUT[1]_i_1_n_0\
    );
\B_OUT[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2664"
    )
        port map (
      I0 => X_IN(5),
      I1 => X_IN(6),
      I2 => X_IN(4),
      I3 => X_IN(1),
      O => p_1_in(1)
    );
\B_OUT[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55FD7F5500541500"
    )
        port map (
      I0 => Y_IN(5),
      I1 => X_IN(0),
      I2 => X_IN(4),
      I3 => X_IN(6),
      I4 => X_IN(5),
      I5 => Y_IN(0),
      O => \B_OUT[1]_i_3_n_0\
    );
\B_OUT[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AA6969AA"
    )
        port map (
      I0 => p_1_in(2),
      I1 => Y_IN(4),
      I2 => Y_IN(5),
      I3 => Y_IN(2),
      I4 => \B_OUT[2]_i_3_n_0\,
      I5 => \B_OUT[3]_i_6_n_0\,
      O => \B_OUT[2]_i_1_n_0\
    );
\B_OUT[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2664"
    )
        port map (
      I0 => X_IN(5),
      I1 => X_IN(6),
      I2 => X_IN(4),
      I3 => X_IN(2),
      O => p_1_in(2)
    );
\B_OUT[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD4D400"
    )
        port map (
      I0 => Y_IN(5),
      I1 => p_1_in(0),
      I2 => Y_IN(0),
      I3 => Y_IN(1),
      I4 => p_1_in(1),
      O => \B_OUT[2]_i_3_n_0\
    );
\B_OUT[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8080800080000000"
    )
        port map (
      I0 => Y_IN(4),
      I1 => Y_IN(5),
      I2 => \R_OUT[3]_i_3_n_0\,
      I3 => Y_IN(3),
      I4 => p_1_in(3),
      I5 => \B_OUT[3]_i_4_n_0\,
      O => \B_OUT[3]_i_1_n_0\
    );
\B_OUT[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \B_OUT[3]_i_5_n_0\,
      I1 => \B_OUT[3]_i_6_n_0\,
      O => \B_OUT[3]_i_2_n_0\
    );
\B_OUT[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2664"
    )
        port map (
      I0 => X_IN(5),
      I1 => X_IN(6),
      I2 => X_IN(4),
      I3 => X_IN(3),
      O => p_1_in(3)
    );
\B_OUT[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF880F8800000"
    )
        port map (
      I0 => Y_IN(0),
      I1 => p_1_in(0),
      I2 => Y_IN(1),
      I3 => p_1_in(1),
      I4 => Y_IN(2),
      I5 => p_1_in(2),
      O => \B_OUT[3]_i_4_n_0\
    );
\B_OUT[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C3FFFFA53C00005A"
    )
        port map (
      I0 => \B_OUT[3]_i_7_n_0\,
      I1 => \B_OUT[3]_i_4_n_0\,
      I2 => Y_IN(3),
      I3 => Y_IN(5),
      I4 => Y_IN(4),
      I5 => p_1_in(3),
      O => \B_OUT[3]_i_5_n_0\
    );
\B_OUT[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000017FFFFFFFF"
    )
        port map (
      I0 => Y_IN(3),
      I1 => p_1_in(3),
      I2 => \B_OUT[3]_i_7_n_0\,
      I3 => Y_IN(5),
      I4 => Y_IN(4),
      I5 => \R_OUT[3]_i_3_n_0\,
      O => \B_OUT[3]_i_6_n_0\
    );
\B_OUT[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEE0FEE00000"
    )
        port map (
      I0 => p_1_in(0),
      I1 => Y_IN(0),
      I2 => Y_IN(1),
      I3 => p_1_in(1),
      I4 => Y_IN(2),
      I5 => p_1_in(2),
      O => \B_OUT[3]_i_7_n_0\
    );
\B_OUT_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => '1',
      D => \B_OUT[0]_i_1_n_0\,
      Q => B_OUT(0),
      S => \B_OUT[3]_i_1_n_0\
    );
\B_OUT_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => '1',
      D => \B_OUT[1]_i_1_n_0\,
      Q => B_OUT(1),
      S => \B_OUT[3]_i_1_n_0\
    );
\B_OUT_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => '1',
      D => \B_OUT[2]_i_1_n_0\,
      Q => B_OUT(2),
      S => \B_OUT[3]_i_1_n_0\
    );
\B_OUT_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => '1',
      D => \B_OUT[3]_i_2_n_0\,
      Q => B_OUT(3),
      S => \B_OUT[3]_i_1_n_0\
    );
\G_OUT[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007E81"
    )
        port map (
      I0 => Y_IN(5),
      I1 => Y_IN(4),
      I2 => Y_IN(0),
      I3 => p_1_in0_in(0),
      I4 => \G_OUT[3]_i_6_n_0\,
      O => \G_OUT[0]_i_1_n_0\
    );
\G_OUT[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C78E"
    )
        port map (
      I0 => X_IN(4),
      I1 => X_IN(5),
      I2 => X_IN(6),
      I3 => X_IN(0),
      O => p_1_in0_in(0)
    );
\G_OUT[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AA6969AA"
    )
        port map (
      I0 => p_1_in0_in(1),
      I1 => Y_IN(4),
      I2 => Y_IN(5),
      I3 => Y_IN(1),
      I4 => \G_OUT[1]_i_3_n_0\,
      I5 => \G_OUT[3]_i_6_n_0\,
      O => \G_OUT[1]_i_1_n_0\
    );
\G_OUT[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C78E"
    )
        port map (
      I0 => X_IN(4),
      I1 => X_IN(5),
      I2 => X_IN(6),
      I3 => X_IN(1),
      O => p_1_in0_in(1)
    );
\G_OUT[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F75FDF5D51054504"
    )
        port map (
      I0 => Y_IN(5),
      I1 => X_IN(0),
      I2 => X_IN(6),
      I3 => X_IN(5),
      I4 => X_IN(4),
      I5 => Y_IN(0),
      O => \G_OUT[1]_i_3_n_0\
    );
\G_OUT[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AA6969AA"
    )
        port map (
      I0 => p_1_in0_in(2),
      I1 => Y_IN(4),
      I2 => Y_IN(5),
      I3 => Y_IN(2),
      I4 => \G_OUT[2]_i_3_n_0\,
      I5 => \G_OUT[3]_i_6_n_0\,
      O => \G_OUT[2]_i_1_n_0\
    );
\G_OUT[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C78E"
    )
        port map (
      I0 => X_IN(4),
      I1 => X_IN(5),
      I2 => X_IN(6),
      I3 => X_IN(2),
      O => p_1_in0_in(2)
    );
\G_OUT[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD4D400"
    )
        port map (
      I0 => Y_IN(5),
      I1 => p_1_in0_in(0),
      I2 => Y_IN(0),
      I3 => Y_IN(1),
      I4 => p_1_in0_in(1),
      O => \G_OUT[2]_i_3_n_0\
    );
\G_OUT[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8080800080000000"
    )
        port map (
      I0 => Y_IN(4),
      I1 => Y_IN(5),
      I2 => \R_OUT[3]_i_3_n_0\,
      I3 => Y_IN(3),
      I4 => p_1_in0_in(3),
      I5 => \G_OUT[3]_i_4_n_0\,
      O => \G_OUT[3]_i_1_n_0\
    );
\G_OUT[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \G_OUT[3]_i_5_n_0\,
      I1 => \G_OUT[3]_i_6_n_0\,
      O => \G_OUT[3]_i_2_n_0\
    );
\G_OUT[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C78E"
    )
        port map (
      I0 => X_IN(4),
      I1 => X_IN(5),
      I2 => X_IN(6),
      I3 => X_IN(3),
      O => p_1_in0_in(3)
    );
\G_OUT[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF880F8800000"
    )
        port map (
      I0 => Y_IN(0),
      I1 => p_1_in0_in(0),
      I2 => Y_IN(1),
      I3 => p_1_in0_in(1),
      I4 => Y_IN(2),
      I5 => p_1_in0_in(2),
      O => \G_OUT[3]_i_4_n_0\
    );
\G_OUT[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C3FFFFA53C00005A"
    )
        port map (
      I0 => \G_OUT[3]_i_7_n_0\,
      I1 => \G_OUT[3]_i_4_n_0\,
      I2 => Y_IN(3),
      I3 => Y_IN(5),
      I4 => Y_IN(4),
      I5 => p_1_in0_in(3),
      O => \G_OUT[3]_i_5_n_0\
    );
\G_OUT[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000017FFFFFFFF"
    )
        port map (
      I0 => Y_IN(3),
      I1 => p_1_in0_in(3),
      I2 => \G_OUT[3]_i_7_n_0\,
      I3 => Y_IN(5),
      I4 => Y_IN(4),
      I5 => \R_OUT[3]_i_3_n_0\,
      O => \G_OUT[3]_i_6_n_0\
    );
\G_OUT[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEE0FEE00000"
    )
        port map (
      I0 => p_1_in0_in(0),
      I1 => Y_IN(0),
      I2 => Y_IN(1),
      I3 => p_1_in0_in(1),
      I4 => Y_IN(2),
      I5 => p_1_in0_in(2),
      O => \G_OUT[3]_i_7_n_0\
    );
\G_OUT_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => '1',
      D => \G_OUT[0]_i_1_n_0\,
      Q => G_OUT(0),
      S => \G_OUT[3]_i_1_n_0\
    );
\G_OUT_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => '1',
      D => \G_OUT[1]_i_1_n_0\,
      Q => G_OUT(1),
      S => \G_OUT[3]_i_1_n_0\
    );
\G_OUT_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => '1',
      D => \G_OUT[2]_i_1_n_0\,
      Q => G_OUT(2),
      S => \G_OUT[3]_i_1_n_0\
    );
\G_OUT_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => '1',
      D => \G_OUT[3]_i_2_n_0\,
      Q => G_OUT(3),
      S => \G_OUT[3]_i_1_n_0\
    );
\R_OUT[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007E81"
    )
        port map (
      I0 => Y_IN(5),
      I1 => Y_IN(4),
      I2 => Y_IN(0),
      I3 => p_1_in2_in(0),
      I4 => \R_OUT[3]_i_7_n_0\,
      O => \R_OUT[0]_i_1_n_0\
    );
\R_OUT[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"71E3"
    )
        port map (
      I0 => X_IN(4),
      I1 => X_IN(5),
      I2 => X_IN(6),
      I3 => X_IN(0),
      O => p_1_in2_in(0)
    );
\R_OUT[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AA6969AA"
    )
        port map (
      I0 => p_1_in2_in(1),
      I1 => Y_IN(4),
      I2 => Y_IN(5),
      I3 => Y_IN(1),
      I4 => \R_OUT[1]_i_3_n_0\,
      I5 => \R_OUT[3]_i_7_n_0\,
      O => \R_OUT[1]_i_1_n_0\
    );
\R_OUT[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"71E3"
    )
        port map (
      I0 => X_IN(4),
      I1 => X_IN(5),
      I2 => X_IN(6),
      I3 => X_IN(1),
      O => p_1_in2_in(1)
    );
\R_OUT[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"75F7F5DF10515045"
    )
        port map (
      I0 => Y_IN(5),
      I1 => X_IN(0),
      I2 => X_IN(6),
      I3 => X_IN(5),
      I4 => X_IN(4),
      I5 => Y_IN(0),
      O => \R_OUT[1]_i_3_n_0\
    );
\R_OUT[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AA6969AA"
    )
        port map (
      I0 => p_1_in2_in(2),
      I1 => Y_IN(4),
      I2 => Y_IN(5),
      I3 => Y_IN(2),
      I4 => \R_OUT[2]_i_3_n_0\,
      I5 => \R_OUT[3]_i_7_n_0\,
      O => \R_OUT[2]_i_1_n_0\
    );
\R_OUT[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"71E3"
    )
        port map (
      I0 => X_IN(4),
      I1 => X_IN(5),
      I2 => X_IN(6),
      I3 => X_IN(2),
      O => p_1_in2_in(2)
    );
\R_OUT[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD4D400"
    )
        port map (
      I0 => Y_IN(5),
      I1 => p_1_in2_in(0),
      I2 => Y_IN(0),
      I3 => p_1_in2_in(1),
      I4 => Y_IN(1),
      O => \R_OUT[2]_i_3_n_0\
    );
\R_OUT[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8080800080000000"
    )
        port map (
      I0 => Y_IN(4),
      I1 => Y_IN(5),
      I2 => \R_OUT[3]_i_3_n_0\,
      I3 => Y_IN(3),
      I4 => p_1_in2_in(3),
      I5 => \R_OUT[3]_i_5_n_0\,
      O => \R_OUT[3]_i_1_n_0\
    );
\R_OUT[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => SET_BRIGHTNESS(3),
      I1 => \R_OUT[3]_i_7_n_0\,
      O => \R_OUT[3]_i_2_n_0\
    );
\R_OUT[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => Y_IN(6),
      I1 => Y_IN(7),
      I2 => Y_IN(8),
      I3 => \R_OUT[3]_i_8_n_0\,
      I4 => X_IN(7),
      I5 => X_IN(8),
      O => \R_OUT[3]_i_3_n_0\
    );
\R_OUT[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"71E3"
    )
        port map (
      I0 => X_IN(4),
      I1 => X_IN(5),
      I2 => X_IN(6),
      I3 => X_IN(3),
      O => p_1_in2_in(3)
    );
\R_OUT[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF880F8800000"
    )
        port map (
      I0 => Y_IN(0),
      I1 => p_1_in2_in(0),
      I2 => p_1_in2_in(1),
      I3 => Y_IN(1),
      I4 => p_1_in2_in(2),
      I5 => Y_IN(2),
      O => \R_OUT[3]_i_5_n_0\
    );
\R_OUT[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C3FFFFA53C00005A"
    )
        port map (
      I0 => \R_OUT[3]_i_9_n_0\,
      I1 => \R_OUT[3]_i_5_n_0\,
      I2 => Y_IN(3),
      I3 => Y_IN(5),
      I4 => Y_IN(4),
      I5 => p_1_in2_in(3),
      O => SET_BRIGHTNESS(3)
    );
\R_OUT[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000017FFFFFFFF"
    )
        port map (
      I0 => p_1_in2_in(3),
      I1 => Y_IN(3),
      I2 => \R_OUT[3]_i_9_n_0\,
      I3 => Y_IN(5),
      I4 => Y_IN(4),
      I5 => \R_OUT[3]_i_3_n_0\,
      O => \R_OUT[3]_i_7_n_0\
    );
\R_OUT[3]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => X_IN(5),
      I1 => X_IN(6),
      O => \R_OUT[3]_i_8_n_0\
    );
\R_OUT[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEE0FEE00000"
    )
        port map (
      I0 => p_1_in2_in(0),
      I1 => Y_IN(0),
      I2 => p_1_in2_in(1),
      I3 => Y_IN(1),
      I4 => p_1_in2_in(2),
      I5 => Y_IN(2),
      O => \R_OUT[3]_i_9_n_0\
    );
\R_OUT_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => '1',
      D => \R_OUT[0]_i_1_n_0\,
      Q => R_OUT(0),
      S => \R_OUT[3]_i_1_n_0\
    );
\R_OUT_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => '1',
      D => \R_OUT[1]_i_1_n_0\,
      Q => R_OUT(1),
      S => \R_OUT[3]_i_1_n_0\
    );
\R_OUT_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => '1',
      D => \R_OUT[2]_i_1_n_0\,
      Q => R_OUT(2),
      S => \R_OUT[3]_i_1_n_0\
    );
\R_OUT_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => '1',
      D => \R_OUT[3]_i_2_n_0\,
      Q => R_OUT(3),
      S => \R_OUT[3]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uvod_VGA_DRAW_0_0 is
  port (
    CLK : in STD_LOGIC;
    X_IN : in STD_LOGIC_VECTOR ( 10 downto 0 );
    Y_IN : in STD_LOGIC_VECTOR ( 10 downto 0 );
    R_OUT : out STD_LOGIC_VECTOR ( 3 downto 0 );
    G_OUT : out STD_LOGIC_VECTOR ( 3 downto 0 );
    B_OUT : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of uvod_VGA_DRAW_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of uvod_VGA_DRAW_0_0 : entity is "uvod_VGA_DRAW_0_0,VGA_DRAW,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of uvod_VGA_DRAW_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of uvod_VGA_DRAW_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of uvod_VGA_DRAW_0_0 : entity is "VGA_DRAW,Vivado 2019.1";
end uvod_VGA_DRAW_0_0;

architecture STRUCTURE of uvod_VGA_DRAW_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of CLK : signal is "xilinx.com:signal:clock:1.0 CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of CLK : signal is "XIL_INTERFACENAME CLK, FREQ_HZ 40000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
begin
inst: entity work.uvod_VGA_DRAW_0_0_VGA_DRAW
     port map (
      B_OUT(3 downto 0) => B_OUT(3 downto 0),
      CLK => CLK,
      G_OUT(3 downto 0) => G_OUT(3 downto 0),
      R_OUT(3 downto 0) => R_OUT(3 downto 0),
      X_IN(8 downto 0) => X_IN(10 downto 2),
      Y_IN(8 downto 0) => Y_IN(10 downto 2)
    );
end STRUCTURE;
