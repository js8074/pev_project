-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Mon Mar 30 16:41:34 2026
-- Host        : LRNV-INSTALL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/vaje/Downloads/pev_project/uvod.gen/sources_1/bd/uvod/ip/uvod_debounce_2_0/uvod_debounce_2_0_sim_netlist.vhdl
-- Design      : uvod_debounce_2_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7s25csga324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uvod_debounce_2_0_debounce is
  port (
    r_pressed_reg_0 : out STD_LOGIC;
    iw_clk : in STD_LOGIC;
    iw_button : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of uvod_debounce_2_0_debounce : entity is "debounce";
end uvod_debounce_2_0_debounce;

architecture STRUCTURE of uvod_debounce_2_0_debounce is
  signal r23_counter : STD_LOGIC_VECTOR ( 20 downto 0 );
  signal r23_counter0 : STD_LOGIC_VECTOR ( 20 downto 1 );
  signal \r23_counter0_carry__0_n_0\ : STD_LOGIC;
  signal \r23_counter0_carry__0_n_1\ : STD_LOGIC;
  signal \r23_counter0_carry__0_n_2\ : STD_LOGIC;
  signal \r23_counter0_carry__0_n_3\ : STD_LOGIC;
  signal \r23_counter0_carry__1_n_0\ : STD_LOGIC;
  signal \r23_counter0_carry__1_n_1\ : STD_LOGIC;
  signal \r23_counter0_carry__1_n_2\ : STD_LOGIC;
  signal \r23_counter0_carry__1_n_3\ : STD_LOGIC;
  signal \r23_counter0_carry__2_n_0\ : STD_LOGIC;
  signal \r23_counter0_carry__2_n_1\ : STD_LOGIC;
  signal \r23_counter0_carry__2_n_2\ : STD_LOGIC;
  signal \r23_counter0_carry__2_n_3\ : STD_LOGIC;
  signal \r23_counter0_carry__3_n_1\ : STD_LOGIC;
  signal \r23_counter0_carry__3_n_2\ : STD_LOGIC;
  signal \r23_counter0_carry__3_n_3\ : STD_LOGIC;
  signal r23_counter0_carry_n_0 : STD_LOGIC;
  signal r23_counter0_carry_n_1 : STD_LOGIC;
  signal r23_counter0_carry_n_2 : STD_LOGIC;
  signal r23_counter0_carry_n_3 : STD_LOGIC;
  signal \r23_counter[20]_i_2_n_0\ : STD_LOGIC;
  signal \r23_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \r23_counter_reg_n_0_[10]\ : STD_LOGIC;
  signal \r23_counter_reg_n_0_[11]\ : STD_LOGIC;
  signal \r23_counter_reg_n_0_[12]\ : STD_LOGIC;
  signal \r23_counter_reg_n_0_[13]\ : STD_LOGIC;
  signal \r23_counter_reg_n_0_[14]\ : STD_LOGIC;
  signal \r23_counter_reg_n_0_[15]\ : STD_LOGIC;
  signal \r23_counter_reg_n_0_[16]\ : STD_LOGIC;
  signal \r23_counter_reg_n_0_[17]\ : STD_LOGIC;
  signal \r23_counter_reg_n_0_[18]\ : STD_LOGIC;
  signal \r23_counter_reg_n_0_[19]\ : STD_LOGIC;
  signal \r23_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \r23_counter_reg_n_0_[20]\ : STD_LOGIC;
  signal \r23_counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \r23_counter_reg_n_0_[3]\ : STD_LOGIC;
  signal \r23_counter_reg_n_0_[4]\ : STD_LOGIC;
  signal \r23_counter_reg_n_0_[5]\ : STD_LOGIC;
  signal \r23_counter_reg_n_0_[6]\ : STD_LOGIC;
  signal \r23_counter_reg_n_0_[7]\ : STD_LOGIC;
  signal \r23_counter_reg_n_0_[8]\ : STD_LOGIC;
  signal \r23_counter_reg_n_0_[9]\ : STD_LOGIC;
  signal r_pressed_i_1_n_0 : STD_LOGIC;
  signal r_pressed_i_2_n_0 : STD_LOGIC;
  signal r_pressed_i_3_n_0 : STD_LOGIC;
  signal r_pressed_i_4_n_0 : STD_LOGIC;
  signal \^r_pressed_reg_0\ : STD_LOGIC;
  signal \NLW_r23_counter0_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of r23_counter0_carry : label is 35;
  attribute ADDER_THRESHOLD of \r23_counter0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \r23_counter0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \r23_counter0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \r23_counter0_carry__3\ : label is 35;
begin
  r_pressed_reg_0 <= \^r_pressed_reg_0\;
r23_counter0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => r23_counter0_carry_n_0,
      CO(2) => r23_counter0_carry_n_1,
      CO(1) => r23_counter0_carry_n_2,
      CO(0) => r23_counter0_carry_n_3,
      CYINIT => \r23_counter_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => r23_counter0(4 downto 1),
      S(3) => \r23_counter_reg_n_0_[4]\,
      S(2) => \r23_counter_reg_n_0_[3]\,
      S(1) => \r23_counter_reg_n_0_[2]\,
      S(0) => \r23_counter_reg_n_0_[1]\
    );
\r23_counter0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => r23_counter0_carry_n_0,
      CO(3) => \r23_counter0_carry__0_n_0\,
      CO(2) => \r23_counter0_carry__0_n_1\,
      CO(1) => \r23_counter0_carry__0_n_2\,
      CO(0) => \r23_counter0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => r23_counter0(8 downto 5),
      S(3) => \r23_counter_reg_n_0_[8]\,
      S(2) => \r23_counter_reg_n_0_[7]\,
      S(1) => \r23_counter_reg_n_0_[6]\,
      S(0) => \r23_counter_reg_n_0_[5]\
    );
\r23_counter0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r23_counter0_carry__0_n_0\,
      CO(3) => \r23_counter0_carry__1_n_0\,
      CO(2) => \r23_counter0_carry__1_n_1\,
      CO(1) => \r23_counter0_carry__1_n_2\,
      CO(0) => \r23_counter0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => r23_counter0(12 downto 9),
      S(3) => \r23_counter_reg_n_0_[12]\,
      S(2) => \r23_counter_reg_n_0_[11]\,
      S(1) => \r23_counter_reg_n_0_[10]\,
      S(0) => \r23_counter_reg_n_0_[9]\
    );
\r23_counter0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \r23_counter0_carry__1_n_0\,
      CO(3) => \r23_counter0_carry__2_n_0\,
      CO(2) => \r23_counter0_carry__2_n_1\,
      CO(1) => \r23_counter0_carry__2_n_2\,
      CO(0) => \r23_counter0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => r23_counter0(16 downto 13),
      S(3) => \r23_counter_reg_n_0_[16]\,
      S(2) => \r23_counter_reg_n_0_[15]\,
      S(1) => \r23_counter_reg_n_0_[14]\,
      S(0) => \r23_counter_reg_n_0_[13]\
    );
\r23_counter0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \r23_counter0_carry__2_n_0\,
      CO(3) => \NLW_r23_counter0_carry__3_CO_UNCONNECTED\(3),
      CO(2) => \r23_counter0_carry__3_n_1\,
      CO(1) => \r23_counter0_carry__3_n_2\,
      CO(0) => \r23_counter0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => r23_counter0(20 downto 17),
      S(3) => \r23_counter_reg_n_0_[20]\,
      S(2) => \r23_counter_reg_n_0_[19]\,
      S(1) => \r23_counter_reg_n_0_[18]\,
      S(0) => \r23_counter_reg_n_0_[17]\
    );
\r23_counter[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0606060606060006"
    )
        port map (
      I0 => \^r_pressed_reg_0\,
      I1 => iw_button,
      I2 => \r23_counter_reg_n_0_[0]\,
      I3 => \r23_counter_reg_n_0_[17]\,
      I4 => r_pressed_i_2_n_0,
      I5 => \r23_counter[20]_i_2_n_0\,
      O => r23_counter(0)
    );
\r23_counter[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666660600000000"
    )
        port map (
      I0 => \^r_pressed_reg_0\,
      I1 => iw_button,
      I2 => \r23_counter_reg_n_0_[17]\,
      I3 => r_pressed_i_2_n_0,
      I4 => \r23_counter[20]_i_2_n_0\,
      I5 => r23_counter0(10),
      O => r23_counter(10)
    );
\r23_counter[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666660600000000"
    )
        port map (
      I0 => \^r_pressed_reg_0\,
      I1 => iw_button,
      I2 => \r23_counter_reg_n_0_[17]\,
      I3 => r_pressed_i_2_n_0,
      I4 => \r23_counter[20]_i_2_n_0\,
      I5 => r23_counter0(11),
      O => r23_counter(11)
    );
\r23_counter[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666660600000000"
    )
        port map (
      I0 => \^r_pressed_reg_0\,
      I1 => iw_button,
      I2 => \r23_counter_reg_n_0_[17]\,
      I3 => r_pressed_i_2_n_0,
      I4 => \r23_counter[20]_i_2_n_0\,
      I5 => r23_counter0(12),
      O => r23_counter(12)
    );
\r23_counter[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666660600000000"
    )
        port map (
      I0 => \^r_pressed_reg_0\,
      I1 => iw_button,
      I2 => \r23_counter_reg_n_0_[17]\,
      I3 => r_pressed_i_2_n_0,
      I4 => \r23_counter[20]_i_2_n_0\,
      I5 => r23_counter0(13),
      O => r23_counter(13)
    );
\r23_counter[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666660600000000"
    )
        port map (
      I0 => \^r_pressed_reg_0\,
      I1 => iw_button,
      I2 => \r23_counter_reg_n_0_[17]\,
      I3 => r_pressed_i_2_n_0,
      I4 => \r23_counter[20]_i_2_n_0\,
      I5 => r23_counter0(14),
      O => r23_counter(14)
    );
\r23_counter[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666660600000000"
    )
        port map (
      I0 => \^r_pressed_reg_0\,
      I1 => iw_button,
      I2 => \r23_counter_reg_n_0_[17]\,
      I3 => r_pressed_i_2_n_0,
      I4 => \r23_counter[20]_i_2_n_0\,
      I5 => r23_counter0(15),
      O => r23_counter(15)
    );
\r23_counter[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666660600000000"
    )
        port map (
      I0 => \^r_pressed_reg_0\,
      I1 => iw_button,
      I2 => \r23_counter_reg_n_0_[17]\,
      I3 => r_pressed_i_2_n_0,
      I4 => \r23_counter[20]_i_2_n_0\,
      I5 => r23_counter0(16),
      O => r23_counter(16)
    );
\r23_counter[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666660600000000"
    )
        port map (
      I0 => \^r_pressed_reg_0\,
      I1 => iw_button,
      I2 => \r23_counter_reg_n_0_[17]\,
      I3 => r_pressed_i_2_n_0,
      I4 => \r23_counter[20]_i_2_n_0\,
      I5 => r23_counter0(17),
      O => r23_counter(17)
    );
\r23_counter[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666660600000000"
    )
        port map (
      I0 => \^r_pressed_reg_0\,
      I1 => iw_button,
      I2 => \r23_counter_reg_n_0_[17]\,
      I3 => r_pressed_i_2_n_0,
      I4 => \r23_counter[20]_i_2_n_0\,
      I5 => r23_counter0(18),
      O => r23_counter(18)
    );
\r23_counter[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666660600000000"
    )
        port map (
      I0 => \^r_pressed_reg_0\,
      I1 => iw_button,
      I2 => \r23_counter_reg_n_0_[17]\,
      I3 => r_pressed_i_2_n_0,
      I4 => \r23_counter[20]_i_2_n_0\,
      I5 => r23_counter0(19),
      O => r23_counter(19)
    );
\r23_counter[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666660600000000"
    )
        port map (
      I0 => \^r_pressed_reg_0\,
      I1 => iw_button,
      I2 => \r23_counter_reg_n_0_[17]\,
      I3 => r_pressed_i_2_n_0,
      I4 => \r23_counter[20]_i_2_n_0\,
      I5 => r23_counter0(1),
      O => r23_counter(1)
    );
\r23_counter[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666660600000000"
    )
        port map (
      I0 => \^r_pressed_reg_0\,
      I1 => iw_button,
      I2 => \r23_counter_reg_n_0_[17]\,
      I3 => r_pressed_i_2_n_0,
      I4 => \r23_counter[20]_i_2_n_0\,
      I5 => r23_counter0(20),
      O => r23_counter(20)
    );
\r23_counter[20]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \r23_counter_reg_n_0_[18]\,
      I1 => \r23_counter_reg_n_0_[19]\,
      O => \r23_counter[20]_i_2_n_0\
    );
\r23_counter[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666660600000000"
    )
        port map (
      I0 => \^r_pressed_reg_0\,
      I1 => iw_button,
      I2 => \r23_counter_reg_n_0_[17]\,
      I3 => r_pressed_i_2_n_0,
      I4 => \r23_counter[20]_i_2_n_0\,
      I5 => r23_counter0(2),
      O => r23_counter(2)
    );
\r23_counter[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666660600000000"
    )
        port map (
      I0 => \^r_pressed_reg_0\,
      I1 => iw_button,
      I2 => \r23_counter_reg_n_0_[17]\,
      I3 => r_pressed_i_2_n_0,
      I4 => \r23_counter[20]_i_2_n_0\,
      I5 => r23_counter0(3),
      O => r23_counter(3)
    );
\r23_counter[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666660600000000"
    )
        port map (
      I0 => \^r_pressed_reg_0\,
      I1 => iw_button,
      I2 => \r23_counter_reg_n_0_[17]\,
      I3 => r_pressed_i_2_n_0,
      I4 => \r23_counter[20]_i_2_n_0\,
      I5 => r23_counter0(4),
      O => r23_counter(4)
    );
\r23_counter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666660600000000"
    )
        port map (
      I0 => \^r_pressed_reg_0\,
      I1 => iw_button,
      I2 => \r23_counter_reg_n_0_[17]\,
      I3 => r_pressed_i_2_n_0,
      I4 => \r23_counter[20]_i_2_n_0\,
      I5 => r23_counter0(5),
      O => r23_counter(5)
    );
\r23_counter[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666660600000000"
    )
        port map (
      I0 => \^r_pressed_reg_0\,
      I1 => iw_button,
      I2 => \r23_counter_reg_n_0_[17]\,
      I3 => r_pressed_i_2_n_0,
      I4 => \r23_counter[20]_i_2_n_0\,
      I5 => r23_counter0(6),
      O => r23_counter(6)
    );
\r23_counter[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666660600000000"
    )
        port map (
      I0 => \^r_pressed_reg_0\,
      I1 => iw_button,
      I2 => \r23_counter_reg_n_0_[17]\,
      I3 => r_pressed_i_2_n_0,
      I4 => \r23_counter[20]_i_2_n_0\,
      I5 => r23_counter0(7),
      O => r23_counter(7)
    );
\r23_counter[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666660600000000"
    )
        port map (
      I0 => \^r_pressed_reg_0\,
      I1 => iw_button,
      I2 => \r23_counter_reg_n_0_[17]\,
      I3 => r_pressed_i_2_n_0,
      I4 => \r23_counter[20]_i_2_n_0\,
      I5 => r23_counter0(8),
      O => r23_counter(8)
    );
\r23_counter[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666660600000000"
    )
        port map (
      I0 => \^r_pressed_reg_0\,
      I1 => iw_button,
      I2 => \r23_counter_reg_n_0_[17]\,
      I3 => r_pressed_i_2_n_0,
      I4 => \r23_counter[20]_i_2_n_0\,
      I5 => r23_counter0(9),
      O => r23_counter(9)
    );
\r23_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => r23_counter(0),
      Q => \r23_counter_reg_n_0_[0]\,
      R => '0'
    );
\r23_counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => r23_counter(10),
      Q => \r23_counter_reg_n_0_[10]\,
      R => '0'
    );
\r23_counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => r23_counter(11),
      Q => \r23_counter_reg_n_0_[11]\,
      R => '0'
    );
\r23_counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => r23_counter(12),
      Q => \r23_counter_reg_n_0_[12]\,
      R => '0'
    );
\r23_counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => r23_counter(13),
      Q => \r23_counter_reg_n_0_[13]\,
      R => '0'
    );
\r23_counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => r23_counter(14),
      Q => \r23_counter_reg_n_0_[14]\,
      R => '0'
    );
\r23_counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => r23_counter(15),
      Q => \r23_counter_reg_n_0_[15]\,
      R => '0'
    );
\r23_counter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => r23_counter(16),
      Q => \r23_counter_reg_n_0_[16]\,
      R => '0'
    );
\r23_counter_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => r23_counter(17),
      Q => \r23_counter_reg_n_0_[17]\,
      R => '0'
    );
\r23_counter_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => r23_counter(18),
      Q => \r23_counter_reg_n_0_[18]\,
      R => '0'
    );
\r23_counter_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => r23_counter(19),
      Q => \r23_counter_reg_n_0_[19]\,
      R => '0'
    );
\r23_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => r23_counter(1),
      Q => \r23_counter_reg_n_0_[1]\,
      R => '0'
    );
\r23_counter_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => r23_counter(20),
      Q => \r23_counter_reg_n_0_[20]\,
      R => '0'
    );
\r23_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => r23_counter(2),
      Q => \r23_counter_reg_n_0_[2]\,
      R => '0'
    );
\r23_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => r23_counter(3),
      Q => \r23_counter_reg_n_0_[3]\,
      R => '0'
    );
\r23_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => r23_counter(4),
      Q => \r23_counter_reg_n_0_[4]\,
      R => '0'
    );
\r23_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => r23_counter(5),
      Q => \r23_counter_reg_n_0_[5]\,
      R => '0'
    );
\r23_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => r23_counter(6),
      Q => \r23_counter_reg_n_0_[6]\,
      R => '0'
    );
\r23_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => r23_counter(7),
      Q => \r23_counter_reg_n_0_[7]\,
      R => '0'
    );
\r23_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => r23_counter(8),
      Q => \r23_counter_reg_n_0_[8]\,
      R => '0'
    );
\r23_counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => r23_counter(9),
      Q => \r23_counter_reg_n_0_[9]\,
      R => '0'
    );
r_pressed_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAACAAAAAAAAAAA"
    )
        port map (
      I0 => \^r_pressed_reg_0\,
      I1 => iw_button,
      I2 => \r23_counter_reg_n_0_[19]\,
      I3 => \r23_counter_reg_n_0_[18]\,
      I4 => r_pressed_i_2_n_0,
      I5 => \r23_counter_reg_n_0_[17]\,
      O => r_pressed_i_1_n_0
    );
r_pressed_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555555557777777F"
    )
        port map (
      I0 => \r23_counter_reg_n_0_[20]\,
      I1 => \r23_counter_reg_n_0_[15]\,
      I2 => r_pressed_i_3_n_0,
      I3 => r_pressed_i_4_n_0,
      I4 => \r23_counter_reg_n_0_[11]\,
      I5 => \r23_counter_reg_n_0_[16]\,
      O => r_pressed_i_2_n_0
    );
r_pressed_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \r23_counter_reg_n_0_[12]\,
      I1 => \r23_counter_reg_n_0_[13]\,
      O => r_pressed_i_3_n_0
    );
r_pressed_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEAAAA"
    )
        port map (
      I0 => \r23_counter_reg_n_0_[14]\,
      I1 => \r23_counter_reg_n_0_[8]\,
      I2 => \r23_counter_reg_n_0_[7]\,
      I3 => \r23_counter_reg_n_0_[9]\,
      I4 => \r23_counter_reg_n_0_[10]\,
      O => r_pressed_i_4_n_0
    );
r_pressed_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => r_pressed_i_1_n_0,
      Q => \^r_pressed_reg_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uvod_debounce_2_0 is
  port (
    iw_clk : in STD_LOGIC;
    iw_button : in STD_LOGIC;
    ow_pressed : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of uvod_debounce_2_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of uvod_debounce_2_0 : entity is "uvod_debounce_2_0,debounce,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of uvod_debounce_2_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of uvod_debounce_2_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of uvod_debounce_2_0 : entity is "debounce,Vivado 2025.1";
end uvod_debounce_2_0;

architecture STRUCTURE of uvod_debounce_2_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of iw_clk : signal is "xilinx.com:signal:clock:1.0 iw_clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of iw_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of iw_clk : signal is "XIL_INTERFACENAME iw_clk, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0";
begin
inst: entity work.uvod_debounce_2_0_debounce
     port map (
      iw_button => iw_button,
      iw_clk => iw_clk,
      r_pressed_reg_0 => ow_pressed
    );
end STRUCTURE;
