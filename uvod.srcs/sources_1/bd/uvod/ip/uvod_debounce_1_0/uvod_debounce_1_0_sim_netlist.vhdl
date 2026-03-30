-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Tue Mar 17 23:09:09 2026
-- Host        : DESKTOP-TPP71AQ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/workspace/PEV/uvod/uvod.srcs/sources_1/bd/uvod/ip/uvod_debounce_1_0/uvod_debounce_1_0_sim_netlist.vhdl
-- Design      : uvod_debounce_1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7s25csga324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uvod_debounce_1_0_debounce is
  port (
    ow_pressed : out STD_LOGIC;
    iw_button : in STD_LOGIC;
    iw_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of uvod_debounce_1_0_debounce : entity is "debounce";
end uvod_debounce_1_0_debounce;

architecture STRUCTURE of uvod_debounce_1_0_debounce is
  signal \^ow_pressed\ : STD_LOGIC;
  signal r23_counter : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal r23_counter0 : STD_LOGIC_VECTOR ( 22 downto 1 );
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
  signal \r23_counter0_carry__3_n_0\ : STD_LOGIC;
  signal \r23_counter0_carry__3_n_1\ : STD_LOGIC;
  signal \r23_counter0_carry__3_n_2\ : STD_LOGIC;
  signal \r23_counter0_carry__3_n_3\ : STD_LOGIC;
  signal \r23_counter0_carry__4_n_3\ : STD_LOGIC;
  signal r23_counter0_carry_n_0 : STD_LOGIC;
  signal r23_counter0_carry_n_1 : STD_LOGIC;
  signal r23_counter0_carry_n_2 : STD_LOGIC;
  signal r23_counter0_carry_n_3 : STD_LOGIC;
  signal \r23_counter1__14\ : STD_LOGIC;
  signal \r23_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \r23_counter[22]_i_1_n_0\ : STD_LOGIC;
  signal r_pressed_i_1_n_0 : STD_LOGIC;
  signal r_pressed_i_3_n_0 : STD_LOGIC;
  signal r_pressed_i_4_n_0 : STD_LOGIC;
  signal r_pressed_i_5_n_0 : STD_LOGIC;
  signal r_pressed_i_6_n_0 : STD_LOGIC;
  signal \NLW_r23_counter0_carry__4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_r23_counter0_carry__4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
begin
  ow_pressed <= \^ow_pressed\;
r23_counter0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => r23_counter0_carry_n_0,
      CO(2) => r23_counter0_carry_n_1,
      CO(1) => r23_counter0_carry_n_2,
      CO(0) => r23_counter0_carry_n_3,
      CYINIT => r23_counter(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => r23_counter0(4 downto 1),
      S(3 downto 0) => r23_counter(4 downto 1)
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
      S(3 downto 0) => r23_counter(8 downto 5)
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
      S(3 downto 0) => r23_counter(12 downto 9)
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
      S(3 downto 0) => r23_counter(16 downto 13)
    );
\r23_counter0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \r23_counter0_carry__2_n_0\,
      CO(3) => \r23_counter0_carry__3_n_0\,
      CO(2) => \r23_counter0_carry__3_n_1\,
      CO(1) => \r23_counter0_carry__3_n_2\,
      CO(0) => \r23_counter0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => r23_counter0(20 downto 17),
      S(3 downto 0) => r23_counter(20 downto 17)
    );
\r23_counter0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \r23_counter0_carry__3_n_0\,
      CO(3 downto 1) => \NLW_r23_counter0_carry__4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \r23_counter0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_r23_counter0_carry__4_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => r23_counter0(22 downto 21),
      S(3 downto 2) => B"00",
      S(1 downto 0) => r23_counter(22 downto 21)
    );
\r23_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r23_counter(0),
      O => \r23_counter[0]_i_1_n_0\
    );
\r23_counter[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EB"
    )
        port map (
      I0 => \r23_counter1__14\,
      I1 => \^ow_pressed\,
      I2 => iw_button,
      O => \r23_counter[22]_i_1_n_0\
    );
\r23_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => \r23_counter[0]_i_1_n_0\,
      Q => r23_counter(0),
      R => \r23_counter[22]_i_1_n_0\
    );
\r23_counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => r23_counter0(10),
      Q => r23_counter(10),
      R => \r23_counter[22]_i_1_n_0\
    );
\r23_counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => r23_counter0(11),
      Q => r23_counter(11),
      R => \r23_counter[22]_i_1_n_0\
    );
\r23_counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => r23_counter0(12),
      Q => r23_counter(12),
      R => \r23_counter[22]_i_1_n_0\
    );
\r23_counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => r23_counter0(13),
      Q => r23_counter(13),
      R => \r23_counter[22]_i_1_n_0\
    );
\r23_counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => r23_counter0(14),
      Q => r23_counter(14),
      R => \r23_counter[22]_i_1_n_0\
    );
\r23_counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => r23_counter0(15),
      Q => r23_counter(15),
      R => \r23_counter[22]_i_1_n_0\
    );
\r23_counter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => r23_counter0(16),
      Q => r23_counter(16),
      R => \r23_counter[22]_i_1_n_0\
    );
\r23_counter_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => r23_counter0(17),
      Q => r23_counter(17),
      R => \r23_counter[22]_i_1_n_0\
    );
\r23_counter_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => r23_counter0(18),
      Q => r23_counter(18),
      R => \r23_counter[22]_i_1_n_0\
    );
\r23_counter_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => r23_counter0(19),
      Q => r23_counter(19),
      R => \r23_counter[22]_i_1_n_0\
    );
\r23_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => r23_counter0(1),
      Q => r23_counter(1),
      R => \r23_counter[22]_i_1_n_0\
    );
\r23_counter_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => r23_counter0(20),
      Q => r23_counter(20),
      R => \r23_counter[22]_i_1_n_0\
    );
\r23_counter_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => r23_counter0(21),
      Q => r23_counter(21),
      R => \r23_counter[22]_i_1_n_0\
    );
\r23_counter_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => r23_counter0(22),
      Q => r23_counter(22),
      R => \r23_counter[22]_i_1_n_0\
    );
\r23_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => r23_counter0(2),
      Q => r23_counter(2),
      R => \r23_counter[22]_i_1_n_0\
    );
\r23_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => r23_counter0(3),
      Q => r23_counter(3),
      R => \r23_counter[22]_i_1_n_0\
    );
\r23_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => r23_counter0(4),
      Q => r23_counter(4),
      R => \r23_counter[22]_i_1_n_0\
    );
\r23_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => r23_counter0(5),
      Q => r23_counter(5),
      R => \r23_counter[22]_i_1_n_0\
    );
\r23_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => r23_counter0(6),
      Q => r23_counter(6),
      R => \r23_counter[22]_i_1_n_0\
    );
\r23_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => r23_counter0(7),
      Q => r23_counter(7),
      R => \r23_counter[22]_i_1_n_0\
    );
\r23_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => r23_counter0(8),
      Q => r23_counter(8),
      R => \r23_counter[22]_i_1_n_0\
    );
\r23_counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => r23_counter0(9),
      Q => r23_counter(9),
      R => \r23_counter[22]_i_1_n_0\
    );
r_pressed_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => \^ow_pressed\,
      I1 => iw_button,
      I2 => \r23_counter1__14\,
      O => r_pressed_i_1_n_0
    );
r_pressed_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEAAAAAAAAAA"
    )
        port map (
      I0 => r_pressed_i_3_n_0,
      I1 => r_pressed_i_4_n_0,
      I2 => r_pressed_i_5_n_0,
      I3 => r23_counter(15),
      I4 => r23_counter(16),
      I5 => r_pressed_i_6_n_0,
      O => \r23_counter1__14\
    );
r_pressed_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => r23_counter(21),
      I1 => r23_counter(22),
      O => r_pressed_i_3_n_0
    );
r_pressed_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFA8"
    )
        port map (
      I0 => r23_counter(10),
      I1 => r23_counter(7),
      I2 => r23_counter(9),
      I3 => r23_counter(14),
      I4 => r23_counter(11),
      O => r_pressed_i_4_n_0
    );
r_pressed_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEEE"
    )
        port map (
      I0 => r23_counter(13),
      I1 => r23_counter(12),
      I2 => r23_counter(8),
      I3 => r23_counter(10),
      O => r_pressed_i_5_n_0
    );
r_pressed_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => r23_counter(18),
      I1 => r23_counter(17),
      I2 => r23_counter(20),
      I3 => r23_counter(19),
      O => r_pressed_i_6_n_0
    );
r_pressed_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => r_pressed_i_1_n_0,
      Q => \^ow_pressed\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uvod_debounce_1_0 is
  port (
    iw_clk : in STD_LOGIC;
    iw_button : in STD_LOGIC;
    ow_pressed : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of uvod_debounce_1_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of uvod_debounce_1_0 : entity is "uvod_debounce_1_0,debounce,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of uvod_debounce_1_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of uvod_debounce_1_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of uvod_debounce_1_0 : entity is "debounce,Vivado 2019.1";
end uvod_debounce_1_0;

architecture STRUCTURE of uvod_debounce_1_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of iw_clk : signal is "xilinx.com:signal:clock:1.0 iw_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of iw_clk : signal is "XIL_INTERFACENAME iw_clk, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
begin
inst: entity work.uvod_debounce_1_0_debounce
     port map (
      iw_button => iw_button,
      iw_clk => iw_clk,
      ow_pressed => ow_pressed
    );
end STRUCTURE;
