-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Tue Mar 17 23:09:42 2026
-- Host        : DESKTOP-TPP71AQ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/workspace/PEV/uvod/uvod.srcs/sources_1/bd/uvod/ip/uvod_uart_tx_byte_0_0/uvod_uart_tx_byte_0_0_sim_netlist.vhdl
-- Design      : uvod_uart_tx_byte_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7s25csga324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uvod_uart_tx_byte_0_0_uart_tx_byte is
  port (
    ow_tx_pin : out STD_LOGIC;
    ow_tx_done : out STD_LOGIC;
    iw_tx_start : in STD_LOGIC;
    iw_clk : in STD_LOGIC;
    iw8_tx_byte : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of uvod_uart_tx_byte_0_0_uart_tx_byte : entity is "uart_tx_byte";
end uvod_uart_tx_byte_0_0_uart_tx_byte;

architecture STRUCTURE of uvod_uart_tx_byte_0_0_uart_tx_byte is
  signal \FSM_sequential_r3_State[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_r3_State[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_r3_State[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_r3_State[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_r3_State[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_r3_State[2]_i_4_n_0\ : STD_LOGIC;
  signal \^ow_tx_done\ : STD_LOGIC;
  signal \^ow_tx_pin\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal r10_tx_buffer : STD_LOGIC;
  signal \r10_tx_buffer_reg_n_0_[1]\ : STD_LOGIC;
  signal \r10_tx_buffer_reg_n_0_[2]\ : STD_LOGIC;
  signal \r10_tx_buffer_reg_n_0_[3]\ : STD_LOGIC;
  signal \r10_tx_buffer_reg_n_0_[4]\ : STD_LOGIC;
  signal \r10_tx_buffer_reg_n_0_[5]\ : STD_LOGIC;
  signal \r10_tx_buffer_reg_n_0_[6]\ : STD_LOGIC;
  signal \r10_tx_buffer_reg_n_0_[7]\ : STD_LOGIC;
  signal \r10_tx_buffer_reg_n_0_[8]\ : STD_LOGIC;
  signal \r10_tx_buffer_reg_n_0_[9]\ : STD_LOGIC;
  signal r3_State : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal r4_bit_index : STD_LOGIC;
  signal r4_bit_index_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal r9_clock_div : STD_LOGIC;
  signal \r9_clock_div[0]_i_1_n_0\ : STD_LOGIC;
  signal \r9_clock_div[1]_i_1_n_0\ : STD_LOGIC;
  signal \r9_clock_div[2]_i_1_n_0\ : STD_LOGIC;
  signal \r9_clock_div[3]_i_1_n_0\ : STD_LOGIC;
  signal \r9_clock_div[4]_i_1_n_0\ : STD_LOGIC;
  signal \r9_clock_div[5]_i_1_n_0\ : STD_LOGIC;
  signal \r9_clock_div[5]_i_2_n_0\ : STD_LOGIC;
  signal \r9_clock_div[6]_i_1_n_0\ : STD_LOGIC;
  signal \r9_clock_div[7]_i_2_n_0\ : STD_LOGIC;
  signal \r9_clock_div[7]_i_3_n_0\ : STD_LOGIC;
  signal r9_clock_div_reg : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \r9_clock_div_reg_n_0_[0]\ : STD_LOGIC;
  signal r_tx_done_i_1_n_0 : STD_LOGIC;
  signal r_tx_pin0 : STD_LOGIC;
  signal r_tx_pin_i_1_n_0 : STD_LOGIC;
  signal r_tx_pin_i_3_n_0 : STD_LOGIC;
  signal r_tx_pin_i_4_n_0 : STD_LOGIC;
  signal r_tx_pin_i_5_n_0 : STD_LOGIC;
  signal r_tx_pin_i_6_n_0 : STD_LOGIC;
  signal r_tx_pin_reg_i_2_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_r3_State[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_sequential_r3_State[2]_i_2\ : label is "soft_lutpair2";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_r3_State_reg[0]\ : label is "iSTATE:000,iSTATE0:001,iSTATE1:011,iSTATE2:100,iSTATE3:010";
  attribute FSM_ENCODED_STATES of \FSM_sequential_r3_State_reg[1]\ : label is "iSTATE:000,iSTATE0:001,iSTATE1:011,iSTATE2:100,iSTATE3:010";
  attribute FSM_ENCODED_STATES of \FSM_sequential_r3_State_reg[2]\ : label is "iSTATE:000,iSTATE0:001,iSTATE1:011,iSTATE2:100,iSTATE3:010";
  attribute SOFT_HLUTNM of \r4_bit_index[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \r4_bit_index[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \r4_bit_index[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \r4_bit_index[3]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \r9_clock_div[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \r9_clock_div[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \r9_clock_div[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \r9_clock_div[5]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \r9_clock_div[6]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \r9_clock_div[7]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of r_tx_pin_i_3 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of r_tx_pin_i_4 : label is "soft_lutpair1";
begin
  ow_tx_done <= \^ow_tx_done\;
  ow_tx_pin <= \^ow_tx_pin\;
\FSM_sequential_r3_State[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABFB5555"
    )
        port map (
      I0 => r3_State(2),
      I1 => iw_tx_start,
      I2 => r3_State(1),
      I3 => \FSM_sequential_r3_State[2]_i_3_n_0\,
      I4 => r3_State(0),
      O => \FSM_sequential_r3_State[0]_i_1_n_0\
    );
\FSM_sequential_r3_State[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EE30FF30FF00FF00"
    )
        port map (
      I0 => \FSM_sequential_r3_State[2]_i_2_n_0\,
      I1 => r3_State(2),
      I2 => iw_tx_start,
      I3 => r3_State(1),
      I4 => \FSM_sequential_r3_State[2]_i_3_n_0\,
      I5 => r3_State(0),
      O => \FSM_sequential_r3_State[1]_i_1_n_0\
    );
\FSM_sequential_r3_State[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DCCCC0C0"
    )
        port map (
      I0 => \FSM_sequential_r3_State[2]_i_2_n_0\,
      I1 => r3_State(2),
      I2 => r3_State(1),
      I3 => \FSM_sequential_r3_State[2]_i_3_n_0\,
      I4 => r3_State(0),
      O => \FSM_sequential_r3_State[2]_i_1_n_0\
    );
\FSM_sequential_r3_State[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FF"
    )
        port map (
      I0 => r4_bit_index_reg(0),
      I1 => r4_bit_index_reg(1),
      I2 => r4_bit_index_reg(2),
      I3 => r4_bit_index_reg(3),
      O => \FSM_sequential_r3_State[2]_i_2_n_0\
    );
\FSM_sequential_r3_State[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => r9_clock_div_reg(7),
      I1 => r9_clock_div_reg(6),
      I2 => \FSM_sequential_r3_State[2]_i_4_n_0\,
      O => \FSM_sequential_r3_State[2]_i_3_n_0\
    );
\FSM_sequential_r3_State[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010101"
    )
        port map (
      I0 => r9_clock_div_reg(4),
      I1 => r9_clock_div_reg(5),
      I2 => r9_clock_div_reg(3),
      I3 => r9_clock_div_reg(2),
      I4 => r9_clock_div_reg(1),
      O => \FSM_sequential_r3_State[2]_i_4_n_0\
    );
\FSM_sequential_r3_State_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => \FSM_sequential_r3_State[0]_i_1_n_0\,
      Q => r3_State(0),
      R => '0'
    );
\FSM_sequential_r3_State_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => \FSM_sequential_r3_State[1]_i_1_n_0\,
      Q => r3_State(1),
      R => '0'
    );
\FSM_sequential_r3_State_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => \FSM_sequential_r3_State[2]_i_1_n_0\,
      Q => r3_State(2),
      R => '0'
    );
\r10_tx_buffer[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => r3_State(1),
      I1 => r3_State(0),
      I2 => r3_State(2),
      O => r_tx_pin0
    );
\r10_tx_buffer[9]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => r3_State(1),
      I1 => r3_State(2),
      I2 => r3_State(0),
      I3 => iw_tx_start,
      O => r10_tx_buffer
    );
\r10_tx_buffer_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_clk,
      CE => r10_tx_buffer,
      D => iw8_tx_byte(0),
      Q => \r10_tx_buffer_reg_n_0_[1]\,
      R => r_tx_pin0
    );
\r10_tx_buffer_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_clk,
      CE => r10_tx_buffer,
      D => iw8_tx_byte(1),
      Q => \r10_tx_buffer_reg_n_0_[2]\,
      R => r_tx_pin0
    );
\r10_tx_buffer_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_clk,
      CE => r10_tx_buffer,
      D => iw8_tx_byte(2),
      Q => \r10_tx_buffer_reg_n_0_[3]\,
      R => r_tx_pin0
    );
\r10_tx_buffer_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_clk,
      CE => r10_tx_buffer,
      D => iw8_tx_byte(3),
      Q => \r10_tx_buffer_reg_n_0_[4]\,
      R => r_tx_pin0
    );
\r10_tx_buffer_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_clk,
      CE => r10_tx_buffer,
      D => iw8_tx_byte(4),
      Q => \r10_tx_buffer_reg_n_0_[5]\,
      R => r_tx_pin0
    );
\r10_tx_buffer_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_clk,
      CE => r10_tx_buffer,
      D => iw8_tx_byte(5),
      Q => \r10_tx_buffer_reg_n_0_[6]\,
      R => r_tx_pin0
    );
\r10_tx_buffer_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_clk,
      CE => r10_tx_buffer,
      D => iw8_tx_byte(6),
      Q => \r10_tx_buffer_reg_n_0_[7]\,
      R => r_tx_pin0
    );
\r10_tx_buffer_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_clk,
      CE => r10_tx_buffer,
      D => iw8_tx_byte(7),
      Q => \r10_tx_buffer_reg_n_0_[8]\,
      R => r_tx_pin0
    );
\r10_tx_buffer_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_clk,
      CE => r10_tx_buffer,
      D => '1',
      Q => \r10_tx_buffer_reg_n_0_[9]\,
      R => r_tx_pin0
    );
\r4_bit_index[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r4_bit_index_reg(0),
      O => p_0_in(0)
    );
\r4_bit_index[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => r4_bit_index_reg(0),
      I1 => r4_bit_index_reg(1),
      O => p_0_in(1)
    );
\r4_bit_index[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => r4_bit_index_reg(0),
      I1 => r4_bit_index_reg(1),
      I2 => r4_bit_index_reg(2),
      O => p_0_in(2)
    );
\r4_bit_index[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => \FSM_sequential_r3_State[2]_i_3_n_0\,
      I1 => \FSM_sequential_r3_State[2]_i_2_n_0\,
      I2 => r3_State(2),
      I3 => r3_State(0),
      I4 => r3_State(1),
      O => r4_bit_index
    );
\r4_bit_index[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => r4_bit_index_reg(1),
      I1 => r4_bit_index_reg(0),
      I2 => r4_bit_index_reg(2),
      I3 => r4_bit_index_reg(3),
      O => p_0_in(3)
    );
\r4_bit_index_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_clk,
      CE => r4_bit_index,
      D => p_0_in(0),
      Q => r4_bit_index_reg(0),
      R => r_tx_pin0
    );
\r4_bit_index_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_clk,
      CE => r4_bit_index,
      D => p_0_in(1),
      Q => r4_bit_index_reg(1),
      R => r_tx_pin0
    );
\r4_bit_index_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_clk,
      CE => r4_bit_index,
      D => p_0_in(2),
      Q => r4_bit_index_reg(2),
      R => r_tx_pin0
    );
\r4_bit_index_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_clk,
      CE => r4_bit_index,
      D => p_0_in(3),
      Q => r4_bit_index_reg(3),
      R => r_tx_pin0
    );
\r9_clock_div[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r9_clock_div_reg_n_0_[0]\,
      I1 => \FSM_sequential_r3_State[2]_i_3_n_0\,
      O => \r9_clock_div[0]_i_1_n_0\
    );
\r9_clock_div[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => r9_clock_div_reg(1),
      I1 => \r9_clock_div_reg_n_0_[0]\,
      I2 => \FSM_sequential_r3_State[2]_i_3_n_0\,
      O => \r9_clock_div[1]_i_1_n_0\
    );
\r9_clock_div[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006A"
    )
        port map (
      I0 => r9_clock_div_reg(2),
      I1 => r9_clock_div_reg(1),
      I2 => \r9_clock_div_reg_n_0_[0]\,
      I3 => \FSM_sequential_r3_State[2]_i_3_n_0\,
      O => \r9_clock_div[2]_i_1_n_0\
    );
\r9_clock_div[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006AAA"
    )
        port map (
      I0 => r9_clock_div_reg(3),
      I1 => r9_clock_div_reg(2),
      I2 => \r9_clock_div_reg_n_0_[0]\,
      I3 => r9_clock_div_reg(1),
      I4 => \FSM_sequential_r3_State[2]_i_3_n_0\,
      O => \r9_clock_div[3]_i_1_n_0\
    );
\r9_clock_div[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000006AAAAAAA"
    )
        port map (
      I0 => r9_clock_div_reg(4),
      I1 => r9_clock_div_reg(3),
      I2 => r9_clock_div_reg(1),
      I3 => \r9_clock_div_reg_n_0_[0]\,
      I4 => r9_clock_div_reg(2),
      I5 => \FSM_sequential_r3_State[2]_i_3_n_0\,
      O => \r9_clock_div[4]_i_1_n_0\
    );
\r9_clock_div[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => r9_clock_div_reg(5),
      I1 => \r9_clock_div[5]_i_2_n_0\,
      I2 => \FSM_sequential_r3_State[2]_i_3_n_0\,
      O => \r9_clock_div[5]_i_1_n_0\
    );
\r9_clock_div[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => r9_clock_div_reg(4),
      I1 => r9_clock_div_reg(2),
      I2 => \r9_clock_div_reg_n_0_[0]\,
      I3 => r9_clock_div_reg(1),
      I4 => r9_clock_div_reg(3),
      O => \r9_clock_div[5]_i_2_n_0\
    );
\r9_clock_div[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => r9_clock_div_reg(6),
      I1 => \r9_clock_div[7]_i_3_n_0\,
      I2 => \FSM_sequential_r3_State[2]_i_3_n_0\,
      O => \r9_clock_div[6]_i_1_n_0\
    );
\r9_clock_div[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => r3_State(2),
      I1 => r3_State(0),
      I2 => r3_State(1),
      O => r9_clock_div
    );
\r9_clock_div[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006A"
    )
        port map (
      I0 => r9_clock_div_reg(7),
      I1 => r9_clock_div_reg(6),
      I2 => \r9_clock_div[7]_i_3_n_0\,
      I3 => \FSM_sequential_r3_State[2]_i_3_n_0\,
      O => \r9_clock_div[7]_i_2_n_0\
    );
\r9_clock_div[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => r9_clock_div_reg(5),
      I1 => r9_clock_div_reg(3),
      I2 => r9_clock_div_reg(1),
      I3 => \r9_clock_div_reg_n_0_[0]\,
      I4 => r9_clock_div_reg(2),
      I5 => r9_clock_div_reg(4),
      O => \r9_clock_div[7]_i_3_n_0\
    );
\r9_clock_div_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_clk,
      CE => r9_clock_div,
      D => \r9_clock_div[0]_i_1_n_0\,
      Q => \r9_clock_div_reg_n_0_[0]\,
      R => r_tx_pin0
    );
\r9_clock_div_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_clk,
      CE => r9_clock_div,
      D => \r9_clock_div[1]_i_1_n_0\,
      Q => r9_clock_div_reg(1),
      R => r_tx_pin0
    );
\r9_clock_div_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_clk,
      CE => r9_clock_div,
      D => \r9_clock_div[2]_i_1_n_0\,
      Q => r9_clock_div_reg(2),
      R => r_tx_pin0
    );
\r9_clock_div_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_clk,
      CE => r9_clock_div,
      D => \r9_clock_div[3]_i_1_n_0\,
      Q => r9_clock_div_reg(3),
      R => r_tx_pin0
    );
\r9_clock_div_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_clk,
      CE => r9_clock_div,
      D => \r9_clock_div[4]_i_1_n_0\,
      Q => r9_clock_div_reg(4),
      R => r_tx_pin0
    );
\r9_clock_div_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_clk,
      CE => r9_clock_div,
      D => \r9_clock_div[5]_i_1_n_0\,
      Q => r9_clock_div_reg(5),
      R => r_tx_pin0
    );
\r9_clock_div_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_clk,
      CE => r9_clock_div,
      D => \r9_clock_div[6]_i_1_n_0\,
      Q => r9_clock_div_reg(6),
      R => r_tx_pin0
    );
\r9_clock_div_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_clk,
      CE => r9_clock_div,
      D => \r9_clock_div[7]_i_2_n_0\,
      Q => r9_clock_div_reg(7),
      R => r_tx_pin0
    );
r_tx_done_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => r3_State(2),
      I1 => r3_State(0),
      I2 => r3_State(1),
      I3 => \^ow_tx_done\,
      O => r_tx_done_i_1_n_0
    );
r_tx_done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => r_tx_done_i_1_n_0,
      Q => \^ow_tx_done\,
      R => '0'
    );
r_tx_pin_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFC0CAAAAFFFF"
    )
        port map (
      I0 => \^ow_tx_pin\,
      I1 => r_tx_pin_reg_i_2_n_0,
      I2 => r4_bit_index_reg(3),
      I3 => r_tx_pin_i_3_n_0,
      I4 => r_tx_pin_i_4_n_0,
      I5 => r3_State(1),
      O => r_tx_pin_i_1_n_0
    );
r_tx_pin_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r10_tx_buffer_reg_n_0_[9]\,
      I1 => r4_bit_index_reg(0),
      I2 => \r10_tx_buffer_reg_n_0_[8]\,
      O => r_tx_pin_i_3_n_0
    );
r_tx_pin_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => r3_State(2),
      I1 => r3_State(0),
      O => r_tx_pin_i_4_n_0
    );
r_tx_pin_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \r10_tx_buffer_reg_n_0_[3]\,
      I1 => \r10_tx_buffer_reg_n_0_[2]\,
      I2 => r4_bit_index_reg(1),
      I3 => r4_bit_index_reg(0),
      I4 => \r10_tx_buffer_reg_n_0_[1]\,
      O => r_tx_pin_i_5_n_0
    );
r_tx_pin_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r10_tx_buffer_reg_n_0_[7]\,
      I1 => \r10_tx_buffer_reg_n_0_[6]\,
      I2 => r4_bit_index_reg(1),
      I3 => \r10_tx_buffer_reg_n_0_[5]\,
      I4 => r4_bit_index_reg(0),
      I5 => \r10_tx_buffer_reg_n_0_[4]\,
      O => r_tx_pin_i_6_n_0
    );
r_tx_pin_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => r_tx_pin_i_1_n_0,
      Q => \^ow_tx_pin\,
      R => '0'
    );
r_tx_pin_reg_i_2: unisim.vcomponents.MUXF7
     port map (
      I0 => r_tx_pin_i_5_n_0,
      I1 => r_tx_pin_i_6_n_0,
      O => r_tx_pin_reg_i_2_n_0,
      S => r4_bit_index_reg(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uvod_uart_tx_byte_0_0 is
  port (
    iw_clk : in STD_LOGIC;
    iw_tx_start : in STD_LOGIC;
    iw8_tx_byte : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ow_tx_pin : out STD_LOGIC;
    ow_tx_done : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of uvod_uart_tx_byte_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of uvod_uart_tx_byte_0_0 : entity is "uvod_uart_tx_byte_0_0,uart_tx_byte,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of uvod_uart_tx_byte_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of uvod_uart_tx_byte_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of uvod_uart_tx_byte_0_0 : entity is "uart_tx_byte,Vivado 2019.1";
end uvod_uart_tx_byte_0_0;

architecture STRUCTURE of uvod_uart_tx_byte_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of iw_clk : signal is "xilinx.com:signal:clock:1.0 iw_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of iw_clk : signal is "XIL_INTERFACENAME iw_clk, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
begin
inst: entity work.uvod_uart_tx_byte_0_0_uart_tx_byte
     port map (
      iw8_tx_byte(7 downto 0) => iw8_tx_byte(7 downto 0),
      iw_clk => iw_clk,
      iw_tx_start => iw_tx_start,
      ow_tx_done => ow_tx_done,
      ow_tx_pin => ow_tx_pin
    );
end STRUCTURE;
