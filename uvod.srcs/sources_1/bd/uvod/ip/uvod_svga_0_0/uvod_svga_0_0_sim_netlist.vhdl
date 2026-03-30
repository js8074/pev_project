-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Wed Mar 18 21:55:07 2026
-- Host        : DESKTOP-TPP71AQ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/workspace/PEV/uvod/uvod.srcs/sources_1/bd/uvod/ip/uvod_svga_0_0/uvod_svga_0_0_sim_netlist.vhdl
-- Design      : uvod_svga_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7s25csga324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uvod_svga_0_0_svga is
  port (
    ow11_curr_pixel_x : out STD_LOGIC_VECTOR ( 10 downto 0 );
    ow11_curr_pixel_y : out STD_LOGIC_VECTOR ( 10 downto 0 );
    ow_hsync : out STD_LOGIC;
    ow4_blue : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ow4_green : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ow4_red : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ow_vsync : out STD_LOGIC;
    iw11_x_pos : in STD_LOGIC_VECTOR ( 10 downto 0 );
    iw11_y_pos : in STD_LOGIC_VECTOR ( 10 downto 0 );
    iw_pix_clk : in STD_LOGIC;
    iw4_red : in STD_LOGIC_VECTOR ( 3 downto 0 );
    iw4_green : in STD_LOGIC_VECTOR ( 3 downto 0 );
    iw4_blue : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of uvod_svga_0_0_svga : entity is "svga";
end uvod_svga_0_0_svga;

architecture STRUCTURE of uvod_svga_0_0_svga is
  signal \_inferred__0/i___0_carry__0_n_0\ : STD_LOGIC;
  signal \_inferred__0/i___0_carry__0_n_1\ : STD_LOGIC;
  signal \_inferred__0/i___0_carry__0_n_2\ : STD_LOGIC;
  signal \_inferred__0/i___0_carry__0_n_3\ : STD_LOGIC;
  signal \_inferred__0/i___0_carry__1_n_0\ : STD_LOGIC;
  signal \_inferred__0/i___0_carry__1_n_1\ : STD_LOGIC;
  signal \_inferred__0/i___0_carry__1_n_2\ : STD_LOGIC;
  signal \_inferred__0/i___0_carry__1_n_3\ : STD_LOGIC;
  signal \_inferred__0/i___0_carry_n_0\ : STD_LOGIC;
  signal \_inferred__0/i___0_carry_n_1\ : STD_LOGIC;
  signal \_inferred__0/i___0_carry_n_2\ : STD_LOGIC;
  signal \_inferred__0/i___0_carry_n_3\ : STD_LOGIC;
  signal \_inferred__1/i___0_carry__0_n_0\ : STD_LOGIC;
  signal \_inferred__1/i___0_carry__0_n_1\ : STD_LOGIC;
  signal \_inferred__1/i___0_carry__0_n_2\ : STD_LOGIC;
  signal \_inferred__1/i___0_carry__0_n_3\ : STD_LOGIC;
  signal \_inferred__1/i___0_carry__1_n_0\ : STD_LOGIC;
  signal \_inferred__1/i___0_carry__1_n_1\ : STD_LOGIC;
  signal \_inferred__1/i___0_carry__1_n_2\ : STD_LOGIC;
  signal \_inferred__1/i___0_carry__1_n_3\ : STD_LOGIC;
  signal \_inferred__1/i___0_carry_n_0\ : STD_LOGIC;
  signal \_inferred__1/i___0_carry_n_1\ : STD_LOGIC;
  signal \_inferred__1/i___0_carry_n_2\ : STD_LOGIC;
  signal \_inferred__1/i___0_carry_n_3\ : STD_LOGIC;
  signal \i___0_carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \i___0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i___0_carry__0_i_2__0_n_0\ : STD_LOGIC;
  signal \i___0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i___0_carry__0_i_3__0_n_0\ : STD_LOGIC;
  signal \i___0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i___0_carry__0_i_4__0_n_0\ : STD_LOGIC;
  signal \i___0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i___0_carry__0_i_5__0_n_0\ : STD_LOGIC;
  signal \i___0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \i___0_carry__0_i_6__0_n_0\ : STD_LOGIC;
  signal \i___0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \i___0_carry__0_i_7__0_n_0\ : STD_LOGIC;
  signal \i___0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \i___0_carry__0_i_8__0_n_0\ : STD_LOGIC;
  signal \i___0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \i___0_carry__1_i_1__0_n_0\ : STD_LOGIC;
  signal \i___0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i___0_carry__1_i_2__0_n_0\ : STD_LOGIC;
  signal \i___0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i___0_carry__1_i_3__0_n_0\ : STD_LOGIC;
  signal \i___0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i___0_carry__1_i_4__0_n_0\ : STD_LOGIC;
  signal \i___0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i___0_carry__1_i_5__0_n_0\ : STD_LOGIC;
  signal \i___0_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \i___0_carry__1_i_6__0_n_0\ : STD_LOGIC;
  signal \i___0_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \i___0_carry__1_i_7__0_n_0\ : STD_LOGIC;
  signal \i___0_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \i___0_carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i___0_carry_i_1_n_0\ : STD_LOGIC;
  signal \i___0_carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i___0_carry_i_2_n_0\ : STD_LOGIC;
  signal \i___0_carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i___0_carry_i_3_n_0\ : STD_LOGIC;
  signal \i___0_carry_i_4__0_n_0\ : STD_LOGIC;
  signal \i___0_carry_i_4_n_0\ : STD_LOGIC;
  signal \i___0_carry_i_5__0_n_0\ : STD_LOGIC;
  signal \i___0_carry_i_5_n_0\ : STD_LOGIC;
  signal \i___0_carry_i_6__0_n_0\ : STD_LOGIC;
  signal \i___0_carry_i_6_n_0\ : STD_LOGIC;
  signal \i___0_carry_i_7__0_n_0\ : STD_LOGIC;
  signal \i___0_carry_i_7_n_0\ : STD_LOGIC;
  signal \i___0_carry_i_8__0_n_0\ : STD_LOGIC;
  signal \i___0_carry_i_8_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \i__carry_i_6_n_0\ : STD_LOGIC;
  signal \i__carry_i_7_n_0\ : STD_LOGIC;
  signal \i__carry_i_8_n_0\ : STD_LOGIC;
  signal \^ow11_curr_pixel_x\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \^ow11_curr_pixel_y\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \ow4_red[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ow4_red[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ow4_red[3]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ow4_red[3]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ow4_red[3]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal ow_hsync_INST_0_i_1_n_0 : STD_LOGIC;
  signal ow_hsync_INST_0_i_2_n_0 : STD_LOGIC;
  signal ow_vsync_INST_0_i_1_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal p_6_in : STD_LOGIC;
  signal \r11_active_x[10]_i_1_n_0\ : STD_LOGIC;
  signal \r11_active_x[10]_i_3_n_0\ : STD_LOGIC;
  signal \r11_active_x[3]_i_1_n_0\ : STD_LOGIC;
  signal r11_active_y : STD_LOGIC;
  signal \r11_active_y[10]_i_4_n_0\ : STD_LOGIC;
  signal \r11_active_y[10]_i_5_n_0\ : STD_LOGIC;
  signal \r11_active_y[3]_i_1_n_0\ : STD_LOGIC;
  signal \r11_h_count[10]_i_2_n_0\ : STD_LOGIC;
  signal \r11_h_count[5]_i_1_n_0\ : STD_LOGIC;
  signal \r11_h_count[7]_i_2_n_0\ : STD_LOGIC;
  signal r11_h_count_reg : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal r11_v_count : STD_LOGIC;
  signal \r11_v_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \r11_v_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \r11_v_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \r11_v_count[4]_i_1_n_0\ : STD_LOGIC;
  signal \r11_v_count[6]_i_1_n_0\ : STD_LOGIC;
  signal \r11_v_count[7]_i_1_n_0\ : STD_LOGIC;
  signal \r11_v_count[8]_i_1_n_0\ : STD_LOGIC;
  signal \r11_v_count[9]_i_1_n_0\ : STD_LOGIC;
  signal \r11_v_count[9]_i_2_n_0\ : STD_LOGIC;
  signal \r11_v_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \r11_v_count_reg_n_0_[1]\ : STD_LOGIC;
  signal \r11_v_count_reg_n_0_[2]\ : STD_LOGIC;
  signal \r11_v_count_reg_n_0_[3]\ : STD_LOGIC;
  signal \r11_v_count_reg_n_0_[4]\ : STD_LOGIC;
  signal \r11_v_count_reg_n_0_[5]\ : STD_LOGIC;
  signal \r11_v_count_reg_n_0_[6]\ : STD_LOGIC;
  signal \r11_v_count_reg_n_0_[7]\ : STD_LOGIC;
  signal \r11_v_count_reg_n_0_[8]\ : STD_LOGIC;
  signal \r11_v_count_reg_n_0_[9]\ : STD_LOGIC;
  signal r4_blue : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal r4_green : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal r4_red : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal r4_red0 : STD_LOGIC;
  signal r4_red21_in : STD_LOGIC;
  signal r4_red22_in : STD_LOGIC;
  signal \r4_red2_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \r4_red2_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \r4_red2_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \r4_red2_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \r4_red2_carry__0_n_3\ : STD_LOGIC;
  signal r4_red2_carry_i_1_n_0 : STD_LOGIC;
  signal r4_red2_carry_i_2_n_0 : STD_LOGIC;
  signal r4_red2_carry_i_3_n_0 : STD_LOGIC;
  signal r4_red2_carry_i_4_n_0 : STD_LOGIC;
  signal r4_red2_carry_i_5_n_0 : STD_LOGIC;
  signal r4_red2_carry_i_6_n_0 : STD_LOGIC;
  signal r4_red2_carry_i_7_n_0 : STD_LOGIC;
  signal r4_red2_carry_i_8_n_0 : STD_LOGIC;
  signal r4_red2_carry_n_0 : STD_LOGIC;
  signal r4_red2_carry_n_1 : STD_LOGIC;
  signal r4_red2_carry_n_2 : STD_LOGIC;
  signal r4_red2_carry_n_3 : STD_LOGIC;
  signal \r4_red2_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \r4_red2_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \r4_red2_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \r4_red2_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \r4_red2_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \NLW__inferred__0/i___0_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW__inferred__0/i___0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW__inferred__0/i___0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW__inferred__1/i___0_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW__inferred__1/i___0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW__inferred__1/i___0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_r4_red2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r4_red2_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_r4_red2_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r4_red2_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r4_red2_inferred__0/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_r4_red2_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ow4_blue[0]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \ow4_blue[1]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \ow4_blue[2]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \ow4_blue[3]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \ow4_green[0]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \ow4_green[1]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \ow4_green[2]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \ow4_green[3]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \ow4_red[0]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \ow4_red[1]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \ow4_red[2]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \ow4_red[3]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \ow4_red[3]_INST_0_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \ow4_red[3]_INST_0_i_5\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \ow4_red[3]_INST_0_i_6\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of ow_hsync_INST_0_i_1 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of ow_hsync_INST_0_i_2 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \r11_active_x[1]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \r11_active_x[2]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \r11_active_x[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \r11_active_x[4]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \r11_active_x[6]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \r11_active_x[7]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \r11_active_x[8]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \r11_active_x[9]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \r11_active_y[10]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \r11_active_y[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \r11_active_y[2]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \r11_active_y[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \r11_active_y[4]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \r11_active_y[6]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \r11_active_y[7]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \r11_active_y[8]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \r11_active_y[9]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \r11_h_count[2]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \r11_h_count[3]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \r11_h_count[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \r11_h_count[6]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \r11_h_count[7]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \r11_h_count[8]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \r11_h_count[9]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \r11_v_count[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \r11_v_count[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \r11_v_count[4]_i_1\ : label is "soft_lutpair2";
begin
  ow11_curr_pixel_x(10 downto 0) <= \^ow11_curr_pixel_x\(10 downto 0);
  ow11_curr_pixel_y(10 downto 0) <= \^ow11_curr_pixel_y\(10 downto 0);
\_inferred__0/i___0_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \_inferred__0/i___0_carry_n_0\,
      CO(2) => \_inferred__0/i___0_carry_n_1\,
      CO(1) => \_inferred__0/i___0_carry_n_2\,
      CO(0) => \_inferred__0/i___0_carry_n_3\,
      CYINIT => '1',
      DI(3) => \i___0_carry_i_1_n_0\,
      DI(2) => \i___0_carry_i_2_n_0\,
      DI(1) => \i___0_carry_i_3_n_0\,
      DI(0) => \i___0_carry_i_4_n_0\,
      O(3 downto 0) => \NLW__inferred__0/i___0_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i___0_carry_i_5_n_0\,
      S(2) => \i___0_carry_i_6_n_0\,
      S(1) => \i___0_carry_i_7_n_0\,
      S(0) => \i___0_carry_i_8_n_0\
    );
\_inferred__0/i___0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__0/i___0_carry_n_0\,
      CO(3) => \_inferred__0/i___0_carry__0_n_0\,
      CO(2) => \_inferred__0/i___0_carry__0_n_1\,
      CO(1) => \_inferred__0/i___0_carry__0_n_2\,
      CO(0) => \_inferred__0/i___0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \i___0_carry__0_i_1_n_0\,
      DI(2) => \i___0_carry__0_i_2_n_0\,
      DI(1) => \i___0_carry__0_i_3_n_0\,
      DI(0) => \i___0_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW__inferred__0/i___0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i___0_carry__0_i_5_n_0\,
      S(2) => \i___0_carry__0_i_6_n_0\,
      S(1) => \i___0_carry__0_i_7_n_0\,
      S(0) => \i___0_carry__0_i_8_n_0\
    );
\_inferred__0/i___0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__0/i___0_carry__0_n_0\,
      CO(3) => \_inferred__0/i___0_carry__1_n_0\,
      CO(2) => \_inferred__0/i___0_carry__1_n_1\,
      CO(1) => \_inferred__0/i___0_carry__1_n_2\,
      CO(0) => \_inferred__0/i___0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \i___0_carry__1_i_1_n_0\,
      DI(1) => \i___0_carry__1_i_2_n_0\,
      DI(0) => \i___0_carry__1_i_3_n_0\,
      O(3 downto 0) => \NLW__inferred__0/i___0_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \i___0_carry__1_i_4_n_0\,
      S(2) => \i___0_carry__1_i_5_n_0\,
      S(1) => \i___0_carry__1_i_6_n_0\,
      S(0) => \i___0_carry__1_i_7_n_0\
    );
\_inferred__1/i___0_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \_inferred__1/i___0_carry_n_0\,
      CO(2) => \_inferred__1/i___0_carry_n_1\,
      CO(1) => \_inferred__1/i___0_carry_n_2\,
      CO(0) => \_inferred__1/i___0_carry_n_3\,
      CYINIT => '1',
      DI(3) => \i___0_carry_i_1__0_n_0\,
      DI(2) => \i___0_carry_i_2__0_n_0\,
      DI(1) => \i___0_carry_i_3__0_n_0\,
      DI(0) => \i___0_carry_i_4__0_n_0\,
      O(3 downto 0) => \NLW__inferred__1/i___0_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i___0_carry_i_5__0_n_0\,
      S(2) => \i___0_carry_i_6__0_n_0\,
      S(1) => \i___0_carry_i_7__0_n_0\,
      S(0) => \i___0_carry_i_8__0_n_0\
    );
\_inferred__1/i___0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__1/i___0_carry_n_0\,
      CO(3) => \_inferred__1/i___0_carry__0_n_0\,
      CO(2) => \_inferred__1/i___0_carry__0_n_1\,
      CO(1) => \_inferred__1/i___0_carry__0_n_2\,
      CO(0) => \_inferred__1/i___0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \i___0_carry__0_i_1__0_n_0\,
      DI(2) => \i___0_carry__0_i_2__0_n_0\,
      DI(1) => \i___0_carry__0_i_3__0_n_0\,
      DI(0) => \i___0_carry__0_i_4__0_n_0\,
      O(3 downto 0) => \NLW__inferred__1/i___0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i___0_carry__0_i_5__0_n_0\,
      S(2) => \i___0_carry__0_i_6__0_n_0\,
      S(1) => \i___0_carry__0_i_7__0_n_0\,
      S(0) => \i___0_carry__0_i_8__0_n_0\
    );
\_inferred__1/i___0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__1/i___0_carry__0_n_0\,
      CO(3) => \_inferred__1/i___0_carry__1_n_0\,
      CO(2) => \_inferred__1/i___0_carry__1_n_1\,
      CO(1) => \_inferred__1/i___0_carry__1_n_2\,
      CO(0) => \_inferred__1/i___0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \i___0_carry__1_i_1__0_n_0\,
      DI(1) => \i___0_carry__1_i_2__0_n_0\,
      DI(0) => \i___0_carry__1_i_3__0_n_0\,
      O(3 downto 0) => \NLW__inferred__1/i___0_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \i___0_carry__1_i_4__0_n_0\,
      S(2) => \i___0_carry__1_i_5__0_n_0\,
      S(1) => \i___0_carry__1_i_6__0_n_0\,
      S(0) => \i___0_carry__1_i_7__0_n_0\
    );
\i___0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^ow11_curr_pixel_y\(7),
      I1 => iw11_y_pos(7),
      O => \i___0_carry__0_i_1_n_0\
    );
\i___0_carry__0_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^ow11_curr_pixel_x\(7),
      I1 => iw11_x_pos(7),
      O => \i___0_carry__0_i_1__0_n_0\
    );
\i___0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^ow11_curr_pixel_y\(5),
      I1 => iw11_y_pos(5),
      O => \i___0_carry__0_i_2_n_0\
    );
\i___0_carry__0_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^ow11_curr_pixel_x\(5),
      I1 => iw11_x_pos(5),
      O => \i___0_carry__0_i_2__0_n_0\
    );
\i___0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^ow11_curr_pixel_y\(5),
      I1 => iw11_y_pos(5),
      O => \i___0_carry__0_i_3_n_0\
    );
\i___0_carry__0_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^ow11_curr_pixel_x\(5),
      I1 => iw11_x_pos(5),
      O => \i___0_carry__0_i_3__0_n_0\
    );
\i___0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^ow11_curr_pixel_y\(4),
      I1 => iw11_y_pos(4),
      O => \i___0_carry__0_i_4_n_0\
    );
\i___0_carry__0_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^ow11_curr_pixel_x\(4),
      I1 => iw11_x_pos(4),
      O => \i___0_carry__0_i_4__0_n_0\
    );
\i___0_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => iw11_y_pos(6),
      I1 => \^ow11_curr_pixel_y\(6),
      I2 => iw11_y_pos(7),
      I3 => \^ow11_curr_pixel_y\(7),
      O => \i___0_carry__0_i_5_n_0\
    );
\i___0_carry__0_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => iw11_x_pos(6),
      I1 => \^ow11_curr_pixel_x\(6),
      I2 => iw11_x_pos(7),
      I3 => \^ow11_curr_pixel_x\(7),
      O => \i___0_carry__0_i_5__0_n_0\
    );
\i___0_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => iw11_y_pos(5),
      I1 => \^ow11_curr_pixel_y\(5),
      I2 => iw11_y_pos(6),
      I3 => \^ow11_curr_pixel_y\(6),
      O => \i___0_carry__0_i_6_n_0\
    );
\i___0_carry__0_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => iw11_x_pos(5),
      I1 => \^ow11_curr_pixel_x\(5),
      I2 => iw11_x_pos(6),
      I3 => \^ow11_curr_pixel_x\(6),
      O => \i___0_carry__0_i_6__0_n_0\
    );
\i___0_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => iw11_y_pos(4),
      I1 => \^ow11_curr_pixel_y\(4),
      I2 => iw11_y_pos(5),
      I3 => \^ow11_curr_pixel_y\(5),
      O => \i___0_carry__0_i_7_n_0\
    );
\i___0_carry__0_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => iw11_x_pos(4),
      I1 => \^ow11_curr_pixel_x\(4),
      I2 => iw11_x_pos(5),
      I3 => \^ow11_curr_pixel_x\(5),
      O => \i___0_carry__0_i_7__0_n_0\
    );
\i___0_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6966"
    )
        port map (
      I0 => iw11_y_pos(4),
      I1 => \^ow11_curr_pixel_y\(4),
      I2 => iw11_y_pos(3),
      I3 => \^ow11_curr_pixel_y\(3),
      O => \i___0_carry__0_i_8_n_0\
    );
\i___0_carry__0_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6966"
    )
        port map (
      I0 => iw11_x_pos(4),
      I1 => \^ow11_curr_pixel_x\(4),
      I2 => iw11_x_pos(3),
      I3 => \^ow11_curr_pixel_x\(3),
      O => \i___0_carry__0_i_8__0_n_0\
    );
\i___0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^ow11_curr_pixel_y\(9),
      I1 => iw11_y_pos(9),
      O => \i___0_carry__1_i_1_n_0\
    );
\i___0_carry__1_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^ow11_curr_pixel_x\(9),
      I1 => iw11_x_pos(9),
      O => \i___0_carry__1_i_1__0_n_0\
    );
\i___0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^ow11_curr_pixel_y\(9),
      I1 => iw11_y_pos(9),
      O => \i___0_carry__1_i_2_n_0\
    );
\i___0_carry__1_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^ow11_curr_pixel_x\(9),
      I1 => iw11_x_pos(9),
      O => \i___0_carry__1_i_2__0_n_0\
    );
\i___0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^ow11_curr_pixel_y\(7),
      I1 => iw11_y_pos(7),
      O => \i___0_carry__1_i_3_n_0\
    );
\i___0_carry__1_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^ow11_curr_pixel_x\(7),
      I1 => iw11_x_pos(7),
      O => \i___0_carry__1_i_3__0_n_0\
    );
\i___0_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^ow11_curr_pixel_y\(10),
      I1 => iw11_y_pos(10),
      O => \i___0_carry__1_i_4_n_0\
    );
\i___0_carry__1_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^ow11_curr_pixel_x\(10),
      I1 => iw11_x_pos(10),
      O => \i___0_carry__1_i_4__0_n_0\
    );
\i___0_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => iw11_y_pos(9),
      I1 => \^ow11_curr_pixel_y\(9),
      I2 => iw11_y_pos(10),
      I3 => \^ow11_curr_pixel_y\(10),
      O => \i___0_carry__1_i_5_n_0\
    );
\i___0_carry__1_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => iw11_x_pos(9),
      I1 => \^ow11_curr_pixel_x\(9),
      I2 => \^ow11_curr_pixel_x\(10),
      I3 => iw11_x_pos(10),
      O => \i___0_carry__1_i_5__0_n_0\
    );
\i___0_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => iw11_y_pos(8),
      I1 => \^ow11_curr_pixel_y\(8),
      I2 => iw11_y_pos(9),
      I3 => \^ow11_curr_pixel_y\(9),
      O => \i___0_carry__1_i_6_n_0\
    );
\i___0_carry__1_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => iw11_x_pos(8),
      I1 => \^ow11_curr_pixel_x\(8),
      I2 => iw11_x_pos(9),
      I3 => \^ow11_curr_pixel_x\(9),
      O => \i___0_carry__1_i_6__0_n_0\
    );
\i___0_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => iw11_y_pos(7),
      I1 => \^ow11_curr_pixel_y\(7),
      I2 => iw11_y_pos(8),
      I3 => \^ow11_curr_pixel_y\(8),
      O => \i___0_carry__1_i_7_n_0\
    );
\i___0_carry__1_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => iw11_x_pos(7),
      I1 => \^ow11_curr_pixel_x\(7),
      I2 => iw11_x_pos(8),
      I3 => \^ow11_curr_pixel_x\(8),
      O => \i___0_carry__1_i_7__0_n_0\
    );
\i___0_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^ow11_curr_pixel_y\(3),
      I1 => iw11_y_pos(3),
      O => \i___0_carry_i_1_n_0\
    );
\i___0_carry_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^ow11_curr_pixel_x\(3),
      I1 => iw11_x_pos(3),
      O => \i___0_carry_i_1__0_n_0\
    );
\i___0_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^ow11_curr_pixel_y\(2),
      I1 => iw11_y_pos(2),
      O => \i___0_carry_i_2_n_0\
    );
\i___0_carry_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^ow11_curr_pixel_x\(2),
      I1 => iw11_x_pos(2),
      O => \i___0_carry_i_2__0_n_0\
    );
\i___0_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => iw11_y_pos(1),
      I1 => \^ow11_curr_pixel_y\(1),
      O => \i___0_carry_i_3_n_0\
    );
\i___0_carry_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => iw11_x_pos(1),
      I1 => \^ow11_curr_pixel_x\(1),
      O => \i___0_carry_i_3__0_n_0\
    );
\i___0_carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^ow11_curr_pixel_y\(0),
      I1 => iw11_y_pos(0),
      O => \i___0_carry_i_4_n_0\
    );
\i___0_carry_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^ow11_curr_pixel_x\(0),
      I1 => iw11_x_pos(0),
      O => \i___0_carry_i_4__0_n_0\
    );
\i___0_carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => iw11_y_pos(2),
      I1 => \^ow11_curr_pixel_y\(2),
      I2 => iw11_y_pos(3),
      I3 => \^ow11_curr_pixel_y\(3),
      O => \i___0_carry_i_5_n_0\
    );
\i___0_carry_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => iw11_x_pos(2),
      I1 => \^ow11_curr_pixel_x\(2),
      I2 => iw11_x_pos(3),
      I3 => \^ow11_curr_pixel_x\(3),
      O => \i___0_carry_i_5__0_n_0\
    );
\i___0_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6966"
    )
        port map (
      I0 => iw11_y_pos(2),
      I1 => \^ow11_curr_pixel_y\(2),
      I2 => iw11_y_pos(1),
      I3 => \^ow11_curr_pixel_y\(1),
      O => \i___0_carry_i_6_n_0\
    );
\i___0_carry_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6966"
    )
        port map (
      I0 => iw11_x_pos(2),
      I1 => \^ow11_curr_pixel_x\(2),
      I2 => iw11_x_pos(1),
      I3 => \^ow11_curr_pixel_x\(1),
      O => \i___0_carry_i_6__0_n_0\
    );
\i___0_carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => iw11_y_pos(0),
      I1 => \^ow11_curr_pixel_y\(0),
      I2 => \^ow11_curr_pixel_y\(1),
      I3 => iw11_y_pos(1),
      O => \i___0_carry_i_7_n_0\
    );
\i___0_carry_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => iw11_x_pos(0),
      I1 => \^ow11_curr_pixel_x\(0),
      I2 => \^ow11_curr_pixel_x\(1),
      I3 => iw11_x_pos(1),
      O => \i___0_carry_i_7__0_n_0\
    );
\i___0_carry_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => iw11_y_pos(0),
      I1 => \^ow11_curr_pixel_y\(0),
      O => \i___0_carry_i_8_n_0\
    );
\i___0_carry_i_8__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => iw11_x_pos(0),
      I1 => \^ow11_curr_pixel_x\(0),
      O => \i___0_carry_i_8__0_n_0\
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^ow11_curr_pixel_x\(10),
      I1 => iw11_x_pos(10),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2B22"
    )
        port map (
      I0 => \^ow11_curr_pixel_x\(9),
      I1 => iw11_x_pos(9),
      I2 => iw11_x_pos(8),
      I3 => \^ow11_curr_pixel_x\(8),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => iw11_x_pos(10),
      I1 => \^ow11_curr_pixel_x\(10),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => iw11_x_pos(8),
      I1 => \^ow11_curr_pixel_x\(8),
      I2 => iw11_x_pos(9),
      I3 => \^ow11_curr_pixel_x\(9),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2B22"
    )
        port map (
      I0 => \^ow11_curr_pixel_x\(7),
      I1 => iw11_x_pos(7),
      I2 => iw11_x_pos(6),
      I3 => \^ow11_curr_pixel_x\(6),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2B22"
    )
        port map (
      I0 => \^ow11_curr_pixel_x\(5),
      I1 => iw11_x_pos(5),
      I2 => iw11_x_pos(4),
      I3 => \^ow11_curr_pixel_x\(4),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40F4"
    )
        port map (
      I0 => iw11_x_pos(2),
      I1 => \^ow11_curr_pixel_x\(2),
      I2 => \^ow11_curr_pixel_x\(3),
      I3 => iw11_x_pos(3),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40F4"
    )
        port map (
      I0 => iw11_x_pos(0),
      I1 => \^ow11_curr_pixel_x\(0),
      I2 => \^ow11_curr_pixel_x\(1),
      I3 => iw11_x_pos(1),
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => iw11_x_pos(6),
      I1 => \^ow11_curr_pixel_x\(6),
      I2 => iw11_x_pos(7),
      I3 => \^ow11_curr_pixel_x\(7),
      O => \i__carry_i_5_n_0\
    );
\i__carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => iw11_x_pos(4),
      I1 => \^ow11_curr_pixel_x\(4),
      I2 => iw11_x_pos(5),
      I3 => \^ow11_curr_pixel_x\(5),
      O => \i__carry_i_6_n_0\
    );
\i__carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => iw11_x_pos(3),
      I1 => \^ow11_curr_pixel_x\(3),
      I2 => iw11_x_pos(2),
      I3 => \^ow11_curr_pixel_x\(2),
      O => \i__carry_i_7_n_0\
    );
\i__carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^ow11_curr_pixel_x\(1),
      I1 => iw11_x_pos(1),
      I2 => iw11_x_pos(0),
      I3 => \^ow11_curr_pixel_x\(0),
      O => \i__carry_i_8_n_0\
    );
\ow4_blue[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => r4_blue(0),
      I1 => p_6_in,
      I2 => \ow4_red[3]_INST_0_i_2_n_0\,
      O => ow4_blue(0)
    );
\ow4_blue[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => r4_blue(1),
      I1 => p_6_in,
      I2 => \ow4_red[3]_INST_0_i_2_n_0\,
      O => ow4_blue(1)
    );
\ow4_blue[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => r4_blue(2),
      I1 => p_6_in,
      I2 => \ow4_red[3]_INST_0_i_2_n_0\,
      O => ow4_blue(2)
    );
\ow4_blue[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => r4_blue(3),
      I1 => p_6_in,
      I2 => \ow4_red[3]_INST_0_i_2_n_0\,
      O => ow4_blue(3)
    );
\ow4_green[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => r4_green(0),
      I1 => p_6_in,
      I2 => \ow4_red[3]_INST_0_i_2_n_0\,
      O => ow4_green(0)
    );
\ow4_green[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => r4_green(1),
      I1 => p_6_in,
      I2 => \ow4_red[3]_INST_0_i_2_n_0\,
      O => ow4_green(1)
    );
\ow4_green[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => r4_green(2),
      I1 => p_6_in,
      I2 => \ow4_red[3]_INST_0_i_2_n_0\,
      O => ow4_green(2)
    );
\ow4_green[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => r4_green(3),
      I1 => p_6_in,
      I2 => \ow4_red[3]_INST_0_i_2_n_0\,
      O => ow4_green(3)
    );
\ow4_red[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => r4_red(0),
      I1 => p_6_in,
      I2 => \ow4_red[3]_INST_0_i_2_n_0\,
      O => ow4_red(0)
    );
\ow4_red[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => r4_red(1),
      I1 => p_6_in,
      I2 => \ow4_red[3]_INST_0_i_2_n_0\,
      O => ow4_red(1)
    );
\ow4_red[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => r4_red(2),
      I1 => p_6_in,
      I2 => \ow4_red[3]_INST_0_i_2_n_0\,
      O => ow4_red(2)
    );
\ow4_red[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => r4_red(3),
      I1 => p_6_in,
      I2 => \ow4_red[3]_INST_0_i_2_n_0\,
      O => ow4_red(3)
    );
\ow4_red[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5155550555555504"
    )
        port map (
      I0 => r11_h_count_reg(10),
      I1 => r11_h_count_reg(5),
      I2 => \ow4_red[3]_INST_0_i_3_n_0\,
      I3 => r11_h_count_reg(9),
      I4 => r11_h_count_reg(8),
      I5 => \ow4_red[3]_INST_0_i_4_n_0\,
      O => p_6_in
    );
\ow4_red[3]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE00FFFFFE00FE00"
    )
        port map (
      I0 => \r11_v_count_reg_n_0_[7]\,
      I1 => \r11_v_count_reg_n_0_[8]\,
      I2 => \ow4_red[3]_INST_0_i_5_n_0\,
      I3 => \r11_v_count_reg_n_0_[9]\,
      I4 => ow_vsync_INST_0_i_1_n_0,
      I5 => \ow4_red[3]_INST_0_i_6_n_0\,
      O => \ow4_red[3]_INST_0_i_2_n_0\
    );
\ow4_red[3]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => r11_h_count_reg(6),
      I1 => r11_h_count_reg(7),
      O => \ow4_red[3]_INST_0_i_3_n_0\
    );
\ow4_red[3]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE000000"
    )
        port map (
      I0 => r11_h_count_reg(0),
      I1 => r11_h_count_reg(1),
      I2 => r11_h_count_reg(2),
      I3 => r11_h_count_reg(4),
      I4 => r11_h_count_reg(3),
      O => \ow4_red[3]_INST_0_i_4_n_0\
    );
\ow4_red[3]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0000000"
    )
        port map (
      I0 => \r11_v_count_reg_n_0_[3]\,
      I1 => \r11_v_count_reg_n_0_[2]\,
      I2 => \r11_v_count_reg_n_0_[4]\,
      I3 => \r11_v_count_reg_n_0_[6]\,
      I4 => \r11_v_count_reg_n_0_[5]\,
      O => \ow4_red[3]_INST_0_i_5_n_0\
    );
\ow4_red[3]_INST_0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \r11_v_count_reg_n_0_[3]\,
      I1 => \r11_v_count_reg_n_0_[4]\,
      I2 => \r11_v_count_reg_n_0_[2]\,
      O => \ow4_red[3]_INST_0_i_6_n_0\
    );
ow_hsync_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000001F"
    )
        port map (
      I0 => ow_hsync_INST_0_i_1_n_0,
      I1 => ow_hsync_INST_0_i_2_n_0,
      I2 => r11_h_count_reg(7),
      I3 => r11_h_count_reg(8),
      I4 => r11_h_count_reg(9),
      I5 => r11_h_count_reg(10),
      O => ow_hsync
    );
ow_hsync_INST_0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => r11_h_count_reg(2),
      I1 => r11_h_count_reg(1),
      I2 => r11_h_count_reg(0),
      O => ow_hsync_INST_0_i_1_n_0
    );
ow_hsync_INST_0_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => r11_h_count_reg(6),
      I1 => r11_h_count_reg(5),
      I2 => r11_h_count_reg(4),
      I3 => r11_h_count_reg(3),
      O => ow_hsync_INST_0_i_2_n_0
    );
ow_vsync_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001010111"
    )
        port map (
      I0 => \r11_v_count_reg_n_0_[4]\,
      I1 => \r11_v_count_reg_n_0_[3]\,
      I2 => \r11_v_count_reg_n_0_[2]\,
      I3 => \r11_v_count_reg_n_0_[1]\,
      I4 => \r11_v_count_reg_n_0_[0]\,
      I5 => ow_vsync_INST_0_i_1_n_0,
      O => ow_vsync
    );
ow_vsync_INST_0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \r11_v_count_reg_n_0_[6]\,
      I1 => \r11_v_count_reg_n_0_[9]\,
      I2 => \r11_v_count_reg_n_0_[5]\,
      I3 => \r11_v_count_reg_n_0_[7]\,
      I4 => \r11_v_count_reg_n_0_[8]\,
      O => ow_vsync_INST_0_i_1_n_0
    );
\r11_active_x[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^ow11_curr_pixel_x\(0),
      O => \p_0_in__1\(0)
    );
\r11_active_x[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA8"
    )
        port map (
      I0 => r11_h_count_reg(10),
      I1 => r11_h_count_reg(7),
      I2 => r11_h_count_reg(6),
      I3 => r11_h_count_reg(5),
      I4 => r11_h_count_reg(8),
      I5 => r11_h_count_reg(9),
      O => \r11_active_x[10]_i_1_n_0\
    );
\r11_active_x[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \^ow11_curr_pixel_x\(10),
      I1 => \^ow11_curr_pixel_x\(8),
      I2 => \^ow11_curr_pixel_x\(6),
      I3 => \r11_active_x[10]_i_3_n_0\,
      I4 => \^ow11_curr_pixel_x\(7),
      I5 => \^ow11_curr_pixel_x\(9),
      O => \p_0_in__1\(10)
    );
\r11_active_x[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^ow11_curr_pixel_x\(5),
      I1 => \^ow11_curr_pixel_x\(4),
      I2 => \^ow11_curr_pixel_x\(2),
      I3 => \^ow11_curr_pixel_x\(0),
      I4 => \^ow11_curr_pixel_x\(1),
      I5 => \^ow11_curr_pixel_x\(3),
      O => \r11_active_x[10]_i_3_n_0\
    );
\r11_active_x[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^ow11_curr_pixel_x\(0),
      I1 => \^ow11_curr_pixel_x\(1),
      O => \p_0_in__1\(1)
    );
\r11_active_x[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^ow11_curr_pixel_x\(2),
      I1 => \^ow11_curr_pixel_x\(0),
      I2 => \^ow11_curr_pixel_x\(1),
      O => \p_0_in__1\(2)
    );
\r11_active_x[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \^ow11_curr_pixel_x\(3),
      I1 => \^ow11_curr_pixel_x\(2),
      I2 => \^ow11_curr_pixel_x\(0),
      I3 => \^ow11_curr_pixel_x\(1),
      O => \r11_active_x[3]_i_1_n_0\
    );
\r11_active_x[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \^ow11_curr_pixel_x\(4),
      I1 => \^ow11_curr_pixel_x\(2),
      I2 => \^ow11_curr_pixel_x\(0),
      I3 => \^ow11_curr_pixel_x\(1),
      I4 => \^ow11_curr_pixel_x\(3),
      O => \p_0_in__1\(4)
    );
\r11_active_x[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^ow11_curr_pixel_x\(3),
      I1 => \^ow11_curr_pixel_x\(1),
      I2 => \^ow11_curr_pixel_x\(0),
      I3 => \^ow11_curr_pixel_x\(2),
      I4 => \^ow11_curr_pixel_x\(4),
      I5 => \^ow11_curr_pixel_x\(5),
      O => \p_0_in__1\(5)
    );
\r11_active_x[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^ow11_curr_pixel_x\(6),
      I1 => \r11_active_x[10]_i_3_n_0\,
      O => \p_0_in__1\(6)
    );
\r11_active_x[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^ow11_curr_pixel_x\(7),
      I1 => \r11_active_x[10]_i_3_n_0\,
      I2 => \^ow11_curr_pixel_x\(6),
      O => \p_0_in__1\(7)
    );
\r11_active_x[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \^ow11_curr_pixel_x\(8),
      I1 => \^ow11_curr_pixel_x\(6),
      I2 => \r11_active_x[10]_i_3_n_0\,
      I3 => \^ow11_curr_pixel_x\(7),
      O => \p_0_in__1\(8)
    );
\r11_active_x[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \^ow11_curr_pixel_x\(9),
      I1 => \^ow11_curr_pixel_x\(7),
      I2 => \r11_active_x[10]_i_3_n_0\,
      I3 => \^ow11_curr_pixel_x\(6),
      I4 => \^ow11_curr_pixel_x\(8),
      O => \p_0_in__1\(9)
    );
\r11_active_x_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => iw_pix_clk,
      CE => p_6_in,
      D => \p_0_in__1\(0),
      Q => \^ow11_curr_pixel_x\(0),
      S => \r11_active_x[10]_i_1_n_0\
    );
\r11_active_x_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_pix_clk,
      CE => p_6_in,
      D => \p_0_in__1\(10),
      Q => \^ow11_curr_pixel_x\(10),
      R => \r11_active_x[10]_i_1_n_0\
    );
\r11_active_x_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_pix_clk,
      CE => p_6_in,
      D => \p_0_in__1\(1),
      Q => \^ow11_curr_pixel_x\(1),
      R => \r11_active_x[10]_i_1_n_0\
    );
\r11_active_x_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_pix_clk,
      CE => p_6_in,
      D => \p_0_in__1\(2),
      Q => \^ow11_curr_pixel_x\(2),
      R => \r11_active_x[10]_i_1_n_0\
    );
\r11_active_x_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_pix_clk,
      CE => p_6_in,
      D => \r11_active_x[3]_i_1_n_0\,
      Q => \^ow11_curr_pixel_x\(3),
      R => \r11_active_x[10]_i_1_n_0\
    );
\r11_active_x_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_pix_clk,
      CE => p_6_in,
      D => \p_0_in__1\(4),
      Q => \^ow11_curr_pixel_x\(4),
      R => \r11_active_x[10]_i_1_n_0\
    );
\r11_active_x_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_pix_clk,
      CE => p_6_in,
      D => \p_0_in__1\(5),
      Q => \^ow11_curr_pixel_x\(5),
      R => \r11_active_x[10]_i_1_n_0\
    );
\r11_active_x_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_pix_clk,
      CE => p_6_in,
      D => \p_0_in__1\(6),
      Q => \^ow11_curr_pixel_x\(6),
      R => \r11_active_x[10]_i_1_n_0\
    );
\r11_active_x_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_pix_clk,
      CE => p_6_in,
      D => \p_0_in__1\(7),
      Q => \^ow11_curr_pixel_x\(7),
      R => \r11_active_x[10]_i_1_n_0\
    );
\r11_active_x_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_pix_clk,
      CE => p_6_in,
      D => \p_0_in__1\(8),
      Q => \^ow11_curr_pixel_x\(8),
      R => \r11_active_x[10]_i_1_n_0\
    );
\r11_active_x_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_pix_clk,
      CE => p_6_in,
      D => \p_0_in__1\(9),
      Q => \^ow11_curr_pixel_x\(9),
      R => \r11_active_x[10]_i_1_n_0\
    );
\r11_active_y[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^ow11_curr_pixel_y\(0),
      O => \p_0_in__0\(0)
    );
\r11_active_y[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE000000"
    )
        port map (
      I0 => \r11_v_count_reg_n_0_[7]\,
      I1 => \r11_v_count_reg_n_0_[8]\,
      I2 => \ow4_red[3]_INST_0_i_5_n_0\,
      I3 => \r11_v_count_reg_n_0_[9]\,
      I4 => \r11_active_x[10]_i_1_n_0\,
      O => r11_v_count
    );
\r11_active_y[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAA8000"
    )
        port map (
      I0 => \r11_active_x[10]_i_1_n_0\,
      I1 => \r11_v_count_reg_n_0_[2]\,
      I2 => \r11_v_count_reg_n_0_[4]\,
      I3 => \r11_v_count_reg_n_0_[3]\,
      I4 => ow_vsync_INST_0_i_1_n_0,
      I5 => \r11_active_y[10]_i_4_n_0\,
      O => r11_active_y
    );
\r11_active_y[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \^ow11_curr_pixel_y\(10),
      I1 => \^ow11_curr_pixel_y\(8),
      I2 => \^ow11_curr_pixel_y\(6),
      I3 => \r11_active_y[10]_i_5_n_0\,
      I4 => \^ow11_curr_pixel_y\(7),
      I5 => \^ow11_curr_pixel_y\(9),
      O => \p_0_in__0\(10)
    );
\r11_active_y[10]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA8"
    )
        port map (
      I0 => \r11_v_count_reg_n_0_[9]\,
      I1 => \ow4_red[3]_INST_0_i_5_n_0\,
      I2 => \r11_v_count_reg_n_0_[8]\,
      I3 => \r11_v_count_reg_n_0_[7]\,
      O => \r11_active_y[10]_i_4_n_0\
    );
\r11_active_y[10]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^ow11_curr_pixel_y\(5),
      I1 => \^ow11_curr_pixel_y\(4),
      I2 => \^ow11_curr_pixel_y\(2),
      I3 => \^ow11_curr_pixel_y\(0),
      I4 => \^ow11_curr_pixel_y\(1),
      I5 => \^ow11_curr_pixel_y\(3),
      O => \r11_active_y[10]_i_5_n_0\
    );
\r11_active_y[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^ow11_curr_pixel_y\(0),
      I1 => \^ow11_curr_pixel_y\(1),
      O => \p_0_in__0\(1)
    );
\r11_active_y[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^ow11_curr_pixel_y\(2),
      I1 => \^ow11_curr_pixel_y\(0),
      I2 => \^ow11_curr_pixel_y\(1),
      O => \p_0_in__0\(2)
    );
\r11_active_y[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \^ow11_curr_pixel_y\(3),
      I1 => \^ow11_curr_pixel_y\(2),
      I2 => \^ow11_curr_pixel_y\(0),
      I3 => \^ow11_curr_pixel_y\(1),
      O => \r11_active_y[3]_i_1_n_0\
    );
\r11_active_y[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \^ow11_curr_pixel_y\(4),
      I1 => \^ow11_curr_pixel_y\(2),
      I2 => \^ow11_curr_pixel_y\(0),
      I3 => \^ow11_curr_pixel_y\(1),
      I4 => \^ow11_curr_pixel_y\(3),
      O => \p_0_in__0\(4)
    );
\r11_active_y[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^ow11_curr_pixel_y\(3),
      I1 => \^ow11_curr_pixel_y\(1),
      I2 => \^ow11_curr_pixel_y\(0),
      I3 => \^ow11_curr_pixel_y\(2),
      I4 => \^ow11_curr_pixel_y\(4),
      I5 => \^ow11_curr_pixel_y\(5),
      O => \p_0_in__0\(5)
    );
\r11_active_y[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^ow11_curr_pixel_y\(6),
      I1 => \r11_active_y[10]_i_5_n_0\,
      O => \p_0_in__0\(6)
    );
\r11_active_y[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^ow11_curr_pixel_y\(7),
      I1 => \r11_active_y[10]_i_5_n_0\,
      I2 => \^ow11_curr_pixel_y\(6),
      O => \p_0_in__0\(7)
    );
\r11_active_y[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \^ow11_curr_pixel_y\(8),
      I1 => \^ow11_curr_pixel_y\(6),
      I2 => \r11_active_y[10]_i_5_n_0\,
      I3 => \^ow11_curr_pixel_y\(7),
      O => \p_0_in__0\(8)
    );
\r11_active_y[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \^ow11_curr_pixel_y\(9),
      I1 => \^ow11_curr_pixel_y\(7),
      I2 => \r11_active_y[10]_i_5_n_0\,
      I3 => \^ow11_curr_pixel_y\(6),
      I4 => \^ow11_curr_pixel_y\(8),
      O => \p_0_in__0\(9)
    );
\r11_active_y_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => iw_pix_clk,
      CE => r11_active_y,
      D => \p_0_in__0\(0),
      Q => \^ow11_curr_pixel_y\(0),
      S => r11_v_count
    );
\r11_active_y_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_pix_clk,
      CE => r11_active_y,
      D => \p_0_in__0\(10),
      Q => \^ow11_curr_pixel_y\(10),
      R => r11_v_count
    );
\r11_active_y_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_pix_clk,
      CE => r11_active_y,
      D => \p_0_in__0\(1),
      Q => \^ow11_curr_pixel_y\(1),
      R => r11_v_count
    );
\r11_active_y_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_pix_clk,
      CE => r11_active_y,
      D => \p_0_in__0\(2),
      Q => \^ow11_curr_pixel_y\(2),
      R => r11_v_count
    );
\r11_active_y_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_pix_clk,
      CE => r11_active_y,
      D => \r11_active_y[3]_i_1_n_0\,
      Q => \^ow11_curr_pixel_y\(3),
      R => r11_v_count
    );
\r11_active_y_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_pix_clk,
      CE => r11_active_y,
      D => \p_0_in__0\(4),
      Q => \^ow11_curr_pixel_y\(4),
      R => r11_v_count
    );
\r11_active_y_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_pix_clk,
      CE => r11_active_y,
      D => \p_0_in__0\(5),
      Q => \^ow11_curr_pixel_y\(5),
      R => r11_v_count
    );
\r11_active_y_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_pix_clk,
      CE => r11_active_y,
      D => \p_0_in__0\(6),
      Q => \^ow11_curr_pixel_y\(6),
      R => r11_v_count
    );
\r11_active_y_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_pix_clk,
      CE => r11_active_y,
      D => \p_0_in__0\(7),
      Q => \^ow11_curr_pixel_y\(7),
      R => r11_v_count
    );
\r11_active_y_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_pix_clk,
      CE => r11_active_y,
      D => \p_0_in__0\(8),
      Q => \^ow11_curr_pixel_y\(8),
      R => r11_v_count
    );
\r11_active_y_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_pix_clk,
      CE => r11_active_y,
      D => \p_0_in__0\(9),
      Q => \^ow11_curr_pixel_y\(9),
      R => r11_v_count
    );
\r11_h_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r11_h_count_reg(0),
      O => p_0_in(0)
    );
\r11_h_count[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA6AAAAAAA"
    )
        port map (
      I0 => r11_h_count_reg(10),
      I1 => r11_h_count_reg(8),
      I2 => r11_h_count_reg(9),
      I3 => r11_h_count_reg(7),
      I4 => r11_h_count_reg(6),
      I5 => \r11_h_count[10]_i_2_n_0\,
      O => p_0_in(10)
    );
\r11_h_count[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => r11_h_count_reg(1),
      I1 => r11_h_count_reg(0),
      I2 => r11_h_count_reg(2),
      I3 => r11_h_count_reg(3),
      I4 => r11_h_count_reg(4),
      I5 => r11_h_count_reg(5),
      O => \r11_h_count[10]_i_2_n_0\
    );
\r11_h_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => r11_h_count_reg(0),
      I1 => r11_h_count_reg(1),
      O => p_0_in(1)
    );
\r11_h_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => r11_h_count_reg(2),
      I1 => r11_h_count_reg(0),
      I2 => r11_h_count_reg(1),
      O => p_0_in(2)
    );
\r11_h_count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => r11_h_count_reg(1),
      I1 => r11_h_count_reg(0),
      I2 => r11_h_count_reg(2),
      I3 => r11_h_count_reg(3),
      O => p_0_in(3)
    );
\r11_h_count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => r11_h_count_reg(4),
      I1 => r11_h_count_reg(1),
      I2 => r11_h_count_reg(0),
      I3 => r11_h_count_reg(2),
      I4 => r11_h_count_reg(3),
      O => p_0_in(4)
    );
\r11_h_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => r11_h_count_reg(5),
      I1 => r11_h_count_reg(1),
      I2 => r11_h_count_reg(0),
      I3 => r11_h_count_reg(2),
      I4 => r11_h_count_reg(3),
      I5 => r11_h_count_reg(4),
      O => \r11_h_count[5]_i_1_n_0\
    );
\r11_h_count[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF4000"
    )
        port map (
      I0 => \r11_h_count[7]_i_2_n_0\,
      I1 => r11_h_count_reg(3),
      I2 => r11_h_count_reg(4),
      I3 => r11_h_count_reg(5),
      I4 => r11_h_count_reg(6),
      O => p_0_in(6)
    );
\r11_h_count[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => r11_h_count_reg(7),
      I1 => \r11_h_count[7]_i_2_n_0\,
      I2 => r11_h_count_reg(3),
      I3 => r11_h_count_reg(4),
      I4 => r11_h_count_reg(5),
      I5 => r11_h_count_reg(6),
      O => p_0_in(7)
    );
\r11_h_count[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => r11_h_count_reg(1),
      I1 => r11_h_count_reg(0),
      I2 => r11_h_count_reg(2),
      O => \r11_h_count[7]_i_2_n_0\
    );
\r11_h_count[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9AAA"
    )
        port map (
      I0 => r11_h_count_reg(8),
      I1 => \r11_h_count[10]_i_2_n_0\,
      I2 => r11_h_count_reg(6),
      I3 => r11_h_count_reg(7),
      O => p_0_in(8)
    );
\r11_h_count[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA6AAAAA"
    )
        port map (
      I0 => r11_h_count_reg(9),
      I1 => r11_h_count_reg(7),
      I2 => r11_h_count_reg(6),
      I3 => \r11_h_count[10]_i_2_n_0\,
      I4 => r11_h_count_reg(8),
      O => p_0_in(9)
    );
\r11_h_count_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => iw_pix_clk,
      CE => '1',
      D => p_0_in(0),
      Q => r11_h_count_reg(0),
      S => \r11_active_x[10]_i_1_n_0\
    );
\r11_h_count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_pix_clk,
      CE => '1',
      D => p_0_in(10),
      Q => r11_h_count_reg(10),
      R => \r11_active_x[10]_i_1_n_0\
    );
\r11_h_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_pix_clk,
      CE => '1',
      D => p_0_in(1),
      Q => r11_h_count_reg(1),
      R => \r11_active_x[10]_i_1_n_0\
    );
\r11_h_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_pix_clk,
      CE => '1',
      D => p_0_in(2),
      Q => r11_h_count_reg(2),
      R => \r11_active_x[10]_i_1_n_0\
    );
\r11_h_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_pix_clk,
      CE => '1',
      D => p_0_in(3),
      Q => r11_h_count_reg(3),
      R => \r11_active_x[10]_i_1_n_0\
    );
\r11_h_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_pix_clk,
      CE => '1',
      D => p_0_in(4),
      Q => r11_h_count_reg(4),
      R => \r11_active_x[10]_i_1_n_0\
    );
\r11_h_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_pix_clk,
      CE => '1',
      D => \r11_h_count[5]_i_1_n_0\,
      Q => r11_h_count_reg(5),
      R => \r11_active_x[10]_i_1_n_0\
    );
\r11_h_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_pix_clk,
      CE => '1',
      D => p_0_in(6),
      Q => r11_h_count_reg(6),
      R => \r11_active_x[10]_i_1_n_0\
    );
\r11_h_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_pix_clk,
      CE => '1',
      D => p_0_in(7),
      Q => r11_h_count_reg(7),
      R => \r11_active_x[10]_i_1_n_0\
    );
\r11_h_count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_pix_clk,
      CE => '1',
      D => p_0_in(8),
      Q => r11_h_count_reg(8),
      R => \r11_active_x[10]_i_1_n_0\
    );
\r11_h_count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_pix_clk,
      CE => '1',
      D => p_0_in(9),
      Q => r11_h_count_reg(9),
      R => \r11_active_x[10]_i_1_n_0\
    );
\r11_v_count[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE00FFFF"
    )
        port map (
      I0 => \r11_v_count_reg_n_0_[7]\,
      I1 => \r11_v_count_reg_n_0_[8]\,
      I2 => \ow4_red[3]_INST_0_i_5_n_0\,
      I3 => \r11_v_count_reg_n_0_[9]\,
      I4 => \r11_v_count_reg_n_0_[0]\,
      O => \r11_v_count[0]_i_1_n_0\
    );
\r11_v_count[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000001FF01FF0000"
    )
        port map (
      I0 => \r11_v_count_reg_n_0_[7]\,
      I1 => \r11_v_count_reg_n_0_[8]\,
      I2 => \ow4_red[3]_INST_0_i_5_n_0\,
      I3 => \r11_v_count_reg_n_0_[9]\,
      I4 => \r11_v_count_reg_n_0_[0]\,
      I5 => \r11_v_count_reg_n_0_[1]\,
      O => \r11_v_count[1]_i_1_n_0\
    );
\r11_v_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \r11_v_count_reg_n_0_[2]\,
      I1 => \r11_v_count_reg_n_0_[1]\,
      I2 => \r11_v_count_reg_n_0_[0]\,
      O => \r11_v_count[2]_i_1_n_0\
    );
\r11_v_count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \r11_v_count_reg_n_0_[3]\,
      I1 => \r11_v_count_reg_n_0_[1]\,
      I2 => \r11_v_count_reg_n_0_[0]\,
      I3 => \r11_v_count_reg_n_0_[2]\,
      O => p_1_in(3)
    );
\r11_v_count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \r11_v_count_reg_n_0_[4]\,
      I1 => \r11_v_count_reg_n_0_[3]\,
      I2 => \r11_v_count_reg_n_0_[1]\,
      I3 => \r11_v_count_reg_n_0_[0]\,
      I4 => \r11_v_count_reg_n_0_[2]\,
      O => \r11_v_count[4]_i_1_n_0\
    );
\r11_v_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \r11_v_count_reg_n_0_[5]\,
      I1 => \r11_v_count_reg_n_0_[3]\,
      I2 => \r11_v_count_reg_n_0_[4]\,
      I3 => \r11_v_count_reg_n_0_[2]\,
      I4 => \r11_v_count_reg_n_0_[0]\,
      I5 => \r11_v_count_reg_n_0_[1]\,
      O => p_1_in(5)
    );
\r11_v_count[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01FF0000000001FF"
    )
        port map (
      I0 => \r11_v_count_reg_n_0_[7]\,
      I1 => \r11_v_count_reg_n_0_[8]\,
      I2 => \ow4_red[3]_INST_0_i_5_n_0\,
      I3 => \r11_v_count_reg_n_0_[9]\,
      I4 => \r11_v_count_reg_n_0_[6]\,
      I5 => \r11_v_count[9]_i_2_n_0\,
      O => \r11_v_count[6]_i_1_n_0\
    );
\r11_v_count[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA015500AA00AA"
    )
        port map (
      I0 => \r11_v_count_reg_n_0_[7]\,
      I1 => \r11_v_count_reg_n_0_[8]\,
      I2 => \ow4_red[3]_INST_0_i_5_n_0\,
      I3 => \r11_v_count_reg_n_0_[9]\,
      I4 => \r11_v_count[9]_i_2_n_0\,
      I5 => \r11_v_count_reg_n_0_[6]\,
      O => \r11_v_count[7]_i_1_n_0\
    );
\r11_v_count[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C0C060C"
    )
        port map (
      I0 => \r11_v_count_reg_n_0_[7]\,
      I1 => \r11_v_count_reg_n_0_[8]\,
      I2 => \r11_v_count_reg_n_0_[9]\,
      I3 => \r11_v_count_reg_n_0_[6]\,
      I4 => \r11_v_count[9]_i_2_n_0\,
      O => \r11_v_count[8]_i_1_n_0\
    );
\r11_v_count[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100018801000100"
    )
        port map (
      I0 => \r11_v_count_reg_n_0_[7]\,
      I1 => \r11_v_count_reg_n_0_[8]\,
      I2 => \ow4_red[3]_INST_0_i_5_n_0\,
      I3 => \r11_v_count_reg_n_0_[9]\,
      I4 => \r11_v_count[9]_i_2_n_0\,
      I5 => \r11_v_count_reg_n_0_[6]\,
      O => \r11_v_count[9]_i_1_n_0\
    );
\r11_v_count[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \r11_v_count_reg_n_0_[1]\,
      I1 => \r11_v_count_reg_n_0_[0]\,
      I2 => \r11_v_count_reg_n_0_[2]\,
      I3 => \r11_v_count_reg_n_0_[4]\,
      I4 => \r11_v_count_reg_n_0_[3]\,
      I5 => \r11_v_count_reg_n_0_[5]\,
      O => \r11_v_count[9]_i_2_n_0\
    );
\r11_v_count_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => iw_pix_clk,
      CE => \r11_active_x[10]_i_1_n_0\,
      D => \r11_v_count[0]_i_1_n_0\,
      Q => \r11_v_count_reg_n_0_[0]\,
      S => '0'
    );
\r11_v_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_pix_clk,
      CE => \r11_active_x[10]_i_1_n_0\,
      D => \r11_v_count[1]_i_1_n_0\,
      Q => \r11_v_count_reg_n_0_[1]\,
      R => '0'
    );
\r11_v_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_pix_clk,
      CE => \r11_active_x[10]_i_1_n_0\,
      D => \r11_v_count[2]_i_1_n_0\,
      Q => \r11_v_count_reg_n_0_[2]\,
      R => r11_v_count
    );
\r11_v_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_pix_clk,
      CE => \r11_active_x[10]_i_1_n_0\,
      D => p_1_in(3),
      Q => \r11_v_count_reg_n_0_[3]\,
      R => r11_v_count
    );
\r11_v_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_pix_clk,
      CE => \r11_active_x[10]_i_1_n_0\,
      D => \r11_v_count[4]_i_1_n_0\,
      Q => \r11_v_count_reg_n_0_[4]\,
      R => r11_v_count
    );
\r11_v_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_pix_clk,
      CE => \r11_active_x[10]_i_1_n_0\,
      D => p_1_in(5),
      Q => \r11_v_count_reg_n_0_[5]\,
      R => r11_v_count
    );
\r11_v_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_pix_clk,
      CE => \r11_active_x[10]_i_1_n_0\,
      D => \r11_v_count[6]_i_1_n_0\,
      Q => \r11_v_count_reg_n_0_[6]\,
      R => '0'
    );
\r11_v_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_pix_clk,
      CE => \r11_active_x[10]_i_1_n_0\,
      D => \r11_v_count[7]_i_1_n_0\,
      Q => \r11_v_count_reg_n_0_[7]\,
      R => '0'
    );
\r11_v_count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_pix_clk,
      CE => \r11_active_x[10]_i_1_n_0\,
      D => \r11_v_count[8]_i_1_n_0\,
      Q => \r11_v_count_reg_n_0_[8]\,
      R => '0'
    );
\r11_v_count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_pix_clk,
      CE => \r11_active_x[10]_i_1_n_0\,
      D => \r11_v_count[9]_i_1_n_0\,
      Q => \r11_v_count_reg_n_0_[9]\,
      R => '0'
    );
\r4_blue_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => iw_pix_clk,
      CE => '1',
      D => iw4_blue(0),
      Q => r4_blue(0),
      R => r4_red0
    );
\r4_blue_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => iw_pix_clk,
      CE => '1',
      D => iw4_blue(1),
      Q => r4_blue(1),
      R => r4_red0
    );
\r4_blue_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => iw_pix_clk,
      CE => '1',
      D => iw4_blue(2),
      Q => r4_blue(2),
      R => r4_red0
    );
\r4_blue_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_pix_clk,
      CE => '1',
      D => iw4_blue(3),
      Q => r4_blue(3),
      R => r4_red0
    );
\r4_green_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => iw_pix_clk,
      CE => '1',
      D => iw4_green(0),
      Q => r4_green(0),
      R => r4_red0
    );
\r4_green_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => iw_pix_clk,
      CE => '1',
      D => iw4_green(1),
      Q => r4_green(1),
      R => r4_red0
    );
\r4_green_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => iw_pix_clk,
      CE => '1',
      D => iw4_green(2),
      Q => r4_green(2),
      R => r4_red0
    );
\r4_green_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_pix_clk,
      CE => '1',
      D => iw4_green(3),
      Q => r4_green(3),
      R => r4_red0
    );
r4_red2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => r4_red2_carry_n_0,
      CO(2) => r4_red2_carry_n_1,
      CO(1) => r4_red2_carry_n_2,
      CO(0) => r4_red2_carry_n_3,
      CYINIT => '1',
      DI(3) => r4_red2_carry_i_1_n_0,
      DI(2) => r4_red2_carry_i_2_n_0,
      DI(1) => r4_red2_carry_i_3_n_0,
      DI(0) => r4_red2_carry_i_4_n_0,
      O(3 downto 0) => NLW_r4_red2_carry_O_UNCONNECTED(3 downto 0),
      S(3) => r4_red2_carry_i_5_n_0,
      S(2) => r4_red2_carry_i_6_n_0,
      S(1) => r4_red2_carry_i_7_n_0,
      S(0) => r4_red2_carry_i_8_n_0
    );
\r4_red2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => r4_red2_carry_n_0,
      CO(3 downto 2) => \NLW_r4_red2_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => r4_red21_in,
      CO(0) => \r4_red2_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \r4_red2_carry__0_i_1_n_0\,
      DI(0) => \r4_red2_carry__0_i_2_n_0\,
      O(3 downto 0) => \NLW_r4_red2_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \r4_red2_carry__0_i_3_n_0\,
      S(0) => \r4_red2_carry__0_i_4_n_0\
    );
\r4_red2_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^ow11_curr_pixel_y\(10),
      I1 => iw11_y_pos(10),
      O => \r4_red2_carry__0_i_1_n_0\
    );
\r4_red2_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2B22"
    )
        port map (
      I0 => \^ow11_curr_pixel_y\(9),
      I1 => iw11_y_pos(9),
      I2 => iw11_y_pos(8),
      I3 => \^ow11_curr_pixel_y\(8),
      O => \r4_red2_carry__0_i_2_n_0\
    );
\r4_red2_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => iw11_y_pos(10),
      I1 => \^ow11_curr_pixel_y\(10),
      O => \r4_red2_carry__0_i_3_n_0\
    );
\r4_red2_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => iw11_y_pos(8),
      I1 => \^ow11_curr_pixel_y\(8),
      I2 => iw11_y_pos(9),
      I3 => \^ow11_curr_pixel_y\(9),
      O => \r4_red2_carry__0_i_4_n_0\
    );
r4_red2_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2B22"
    )
        port map (
      I0 => \^ow11_curr_pixel_y\(7),
      I1 => iw11_y_pos(7),
      I2 => iw11_y_pos(6),
      I3 => \^ow11_curr_pixel_y\(6),
      O => r4_red2_carry_i_1_n_0
    );
r4_red2_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2B22"
    )
        port map (
      I0 => \^ow11_curr_pixel_y\(5),
      I1 => iw11_y_pos(5),
      I2 => iw11_y_pos(4),
      I3 => \^ow11_curr_pixel_y\(4),
      O => r4_red2_carry_i_2_n_0
    );
r4_red2_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40F4"
    )
        port map (
      I0 => iw11_y_pos(2),
      I1 => \^ow11_curr_pixel_y\(2),
      I2 => \^ow11_curr_pixel_y\(3),
      I3 => iw11_y_pos(3),
      O => r4_red2_carry_i_3_n_0
    );
r4_red2_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40F4"
    )
        port map (
      I0 => iw11_y_pos(0),
      I1 => \^ow11_curr_pixel_y\(0),
      I2 => \^ow11_curr_pixel_y\(1),
      I3 => iw11_y_pos(1),
      O => r4_red2_carry_i_4_n_0
    );
r4_red2_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => iw11_y_pos(6),
      I1 => \^ow11_curr_pixel_y\(6),
      I2 => iw11_y_pos(7),
      I3 => \^ow11_curr_pixel_y\(7),
      O => r4_red2_carry_i_5_n_0
    );
r4_red2_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => iw11_y_pos(4),
      I1 => \^ow11_curr_pixel_y\(4),
      I2 => iw11_y_pos(5),
      I3 => \^ow11_curr_pixel_y\(5),
      O => r4_red2_carry_i_6_n_0
    );
r4_red2_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => iw11_y_pos(3),
      I1 => \^ow11_curr_pixel_y\(3),
      I2 => iw11_y_pos(2),
      I3 => \^ow11_curr_pixel_y\(2),
      O => r4_red2_carry_i_7_n_0
    );
r4_red2_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^ow11_curr_pixel_y\(1),
      I1 => iw11_y_pos(1),
      I2 => iw11_y_pos(0),
      I3 => \^ow11_curr_pixel_y\(0),
      O => r4_red2_carry_i_8_n_0
    );
\r4_red2_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \r4_red2_inferred__0/i__carry_n_0\,
      CO(2) => \r4_red2_inferred__0/i__carry_n_1\,
      CO(1) => \r4_red2_inferred__0/i__carry_n_2\,
      CO(0) => \r4_red2_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3) => \i__carry_i_1_n_0\,
      DI(2) => \i__carry_i_2_n_0\,
      DI(1) => \i__carry_i_3_n_0\,
      DI(0) => \i__carry_i_4_n_0\,
      O(3 downto 0) => \NLW_r4_red2_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5_n_0\,
      S(2) => \i__carry_i_6_n_0\,
      S(1) => \i__carry_i_7_n_0\,
      S(0) => \i__carry_i_8_n_0\
    );
\r4_red2_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \r4_red2_inferred__0/i__carry_n_0\,
      CO(3 downto 2) => \NLW_r4_red2_inferred__0/i__carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => r4_red22_in,
      CO(0) => \r4_red2_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \i__carry__0_i_1_n_0\,
      DI(0) => \i__carry__0_i_2_n_0\,
      O(3 downto 0) => \NLW_r4_red2_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \i__carry__0_i_3_n_0\,
      S(0) => \i__carry__0_i_4_n_0\
    );
\r4_red[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \_inferred__1/i___0_carry__1_n_0\,
      I1 => r4_red21_in,
      I2 => r4_red22_in,
      I3 => \_inferred__0/i___0_carry__1_n_0\,
      O => r4_red0
    );
\r4_red_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => iw_pix_clk,
      CE => '1',
      D => iw4_red(0),
      Q => r4_red(0),
      R => r4_red0
    );
\r4_red_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => iw_pix_clk,
      CE => '1',
      D => iw4_red(1),
      Q => r4_red(1),
      R => r4_red0
    );
\r4_red_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => iw_pix_clk,
      CE => '1',
      D => iw4_red(2),
      Q => r4_red(2),
      R => r4_red0
    );
\r4_red_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iw_pix_clk,
      CE => '1',
      D => iw4_red(3),
      Q => r4_red(3),
      R => r4_red0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uvod_svga_0_0 is
  port (
    iw_pix_clk : in STD_LOGIC;
    iw4_red : in STD_LOGIC_VECTOR ( 3 downto 0 );
    iw4_green : in STD_LOGIC_VECTOR ( 3 downto 0 );
    iw4_blue : in STD_LOGIC_VECTOR ( 3 downto 0 );
    iw11_x_pos : in STD_LOGIC_VECTOR ( 10 downto 0 );
    iw11_y_pos : in STD_LOGIC_VECTOR ( 10 downto 0 );
    ow4_red : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ow4_green : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ow4_blue : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ow11_curr_pixel_x : out STD_LOGIC_VECTOR ( 10 downto 0 );
    ow11_curr_pixel_y : out STD_LOGIC_VECTOR ( 10 downto 0 );
    ow_hsync : out STD_LOGIC;
    ow_vsync : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of uvod_svga_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of uvod_svga_0_0 : entity is "uvod_svga_0_0,svga,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of uvod_svga_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of uvod_svga_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of uvod_svga_0_0 : entity is "svga,Vivado 2019.1";
end uvod_svga_0_0;

architecture STRUCTURE of uvod_svga_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of iw_pix_clk : signal is "xilinx.com:signal:clock:1.0 iw_pix_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of iw_pix_clk : signal is "XIL_INTERFACENAME iw_pix_clk, FREQ_HZ 40000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
begin
inst: entity work.uvod_svga_0_0_svga
     port map (
      iw11_x_pos(10 downto 0) => iw11_x_pos(10 downto 0),
      iw11_y_pos(10 downto 0) => iw11_y_pos(10 downto 0),
      iw4_blue(3 downto 0) => iw4_blue(3 downto 0),
      iw4_green(3 downto 0) => iw4_green(3 downto 0),
      iw4_red(3 downto 0) => iw4_red(3 downto 0),
      iw_pix_clk => iw_pix_clk,
      ow11_curr_pixel_x(10 downto 0) => ow11_curr_pixel_x(10 downto 0),
      ow11_curr_pixel_y(10 downto 0) => ow11_curr_pixel_y(10 downto 0),
      ow4_blue(3 downto 0) => ow4_blue(3 downto 0),
      ow4_green(3 downto 0) => ow4_green(3 downto 0),
      ow4_red(3 downto 0) => ow4_red(3 downto 0),
      ow_hsync => ow_hsync,
      ow_vsync => ow_vsync
    );
end STRUCTURE;
