-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Tue Mar 17 23:09:09 2026
-- Host        : DESKTOP-TPP71AQ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/workspace/PEV/uvod/uvod.srcs/sources_1/bd/uvod/ip/uvod_top_0_0/uvod_top_0_0_sim_netlist.vhdl
-- Design      : uvod_top_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7s25csga324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uvod_top_0_0_top is
  port (
    Q : out STD_LOGIC_VECTOR ( 8 downto 0 );
    ow8_tx_byte : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ow11_y_pos : out STD_LOGIC_VECTOR ( 8 downto 0 );
    ow4_red : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ow4_green : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ow4_blue : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ow_led2 : out STD_LOGIC;
    ow_led3 : out STD_LOGIC;
    ow_led4 : out STD_LOGIC;
    ow_led5 : out STD_LOGIC;
    ow_tx_start : out STD_LOGIC;
    iw_btn0 : in STD_LOGIC;
    r_btn0_reg_0 : in STD_LOGIC;
    iw_clk : in STD_LOGIC;
    iw_tx_done : in STD_LOGIC;
    iw_btn1 : in STD_LOGIC;
    iw_btn2 : in STD_LOGIC;
    iw_btn3 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of uvod_top_0_0_top : entity is "top";
end uvod_top_0_0_top;

architecture STRUCTURE of uvod_top_0_0_top is
  signal \FSM_onehot_r4_State2[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_r4_State2[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_r4_State3[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_r4_State3[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_r4_State4[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_r4_State4[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_r4_State5[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_r4_State5[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_r4_UartState[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_r4_UartState[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_r4_UartState[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_r4_UartState[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_r4_UartState[2]_i_1_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^ow11_y_pos\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^ow4_blue\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^ow4_green\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^ow4_red\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^ow8_tx_byte\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^ow_led2\ : STD_LOGIC;
  signal \^ow_led3\ : STD_LOGIC;
  signal \^ow_led4\ : STD_LOGIC;
  signal \^ow_led5\ : STD_LOGIC;
  signal \^ow_tx_start\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \p_0_in__2\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \p_0_in__3\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 6 downto 4 );
  signal r11_x_pos : STD_LOGIC;
  signal \r11_x_pos[1]_i_1_n_0\ : STD_LOGIC;
  signal \r11_x_pos[2]_i_1_n_0\ : STD_LOGIC;
  signal \r11_x_pos[3]_i_1_n_0\ : STD_LOGIC;
  signal \r11_x_pos[7]_i_1_n_0\ : STD_LOGIC;
  signal \r11_x_pos[8]_i_1_n_0\ : STD_LOGIC;
  signal \r11_x_pos[9]_i_1_n_0\ : STD_LOGIC;
  signal \r11_x_pos[9]_i_2_n_0\ : STD_LOGIC;
  signal \r11_x_pos[9]_i_3_n_0\ : STD_LOGIC;
  signal \r11_x_pos[9]_i_4_n_0\ : STD_LOGIC;
  signal \r11_x_pos[9]_i_5_n_0\ : STD_LOGIC;
  signal \r11_x_pos[9]_i_6_n_0\ : STD_LOGIC;
  signal \r11_x_pos[9]_i_7_n_0\ : STD_LOGIC;
  signal \r11_x_pos[9]_i_8_n_0\ : STD_LOGIC;
  signal r11_y_pos : STD_LOGIC;
  signal \r11_y_pos[9]_i_3_n_0\ : STD_LOGIC;
  signal \r11_y_pos[9]_i_4_n_0\ : STD_LOGIC;
  signal \r11_y_pos[9]_i_5_n_0\ : STD_LOGIC;
  signal \r28_svga_prescaler[0]_i_2_n_0\ : STD_LOGIC;
  signal r28_svga_prescaler_reg : STD_LOGIC_VECTOR ( 23 downto 7 );
  signal \r28_svga_prescaler_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \r28_svga_prescaler_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \r28_svga_prescaler_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \r28_svga_prescaler_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \r28_svga_prescaler_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \r28_svga_prescaler_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \r28_svga_prescaler_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \r28_svga_prescaler_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \r28_svga_prescaler_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \r28_svga_prescaler_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \r28_svga_prescaler_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \r28_svga_prescaler_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \r28_svga_prescaler_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \r28_svga_prescaler_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \r28_svga_prescaler_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \r28_svga_prescaler_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \r28_svga_prescaler_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \r28_svga_prescaler_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \r28_svga_prescaler_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \r28_svga_prescaler_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \r28_svga_prescaler_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \r28_svga_prescaler_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \r28_svga_prescaler_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \r28_svga_prescaler_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \r28_svga_prescaler_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \r28_svga_prescaler_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \r28_svga_prescaler_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \r28_svga_prescaler_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \r28_svga_prescaler_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \r28_svga_prescaler_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \r28_svga_prescaler_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \r28_svga_prescaler_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \r28_svga_prescaler_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \r28_svga_prescaler_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \r28_svga_prescaler_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \r28_svga_prescaler_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \r28_svga_prescaler_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \r28_svga_prescaler_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \r28_svga_prescaler_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \r28_svga_prescaler_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \r28_svga_prescaler_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \r28_svga_prescaler_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \r28_svga_prescaler_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \r28_svga_prescaler_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \r28_svga_prescaler_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \r28_svga_prescaler_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \r28_svga_prescaler_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \r28_svga_prescaler_reg_n_0_[0]\ : STD_LOGIC;
  signal \r28_svga_prescaler_reg_n_0_[1]\ : STD_LOGIC;
  signal \r28_svga_prescaler_reg_n_0_[2]\ : STD_LOGIC;
  signal \r28_svga_prescaler_reg_n_0_[3]\ : STD_LOGIC;
  signal \r28_svga_prescaler_reg_n_0_[4]\ : STD_LOGIC;
  signal \r28_svga_prescaler_reg_n_0_[5]\ : STD_LOGIC;
  signal \r28_svga_prescaler_reg_n_0_[6]\ : STD_LOGIC;
  signal r4_State2 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal r4_State3 : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal r4_State4 : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal r4_State5 : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal r4_UartState : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \r4_blue[3]_i_1_n_0\ : STD_LOGIC;
  signal \r4_green[3]_i_1_n_0\ : STD_LOGIC;
  signal \r4_red[3]_i_1_n_0\ : STD_LOGIC;
  signal r8_tx_byte : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \r8_tx_byte[4]_i_2_n_0\ : STD_LOGIC;
  signal \r8_tx_byte[5]_i_2_n_0\ : STD_LOGIC;
  signal \r8_tx_byte[7]_i_3_n_0\ : STD_LOGIC;
  signal \r8_tx_byte[7]_i_4_n_0\ : STD_LOGIC;
  signal \r8_tx_byte[7]_i_5_n_0\ : STD_LOGIC;
  signal r8_tx_byte_0 : STD_LOGIC;
  signal r8_tx_bytes_count : STD_LOGIC;
  signal r8_tx_bytes_count0 : STD_LOGIC;
  signal \r8_tx_bytes_count[7]_i_4_n_0\ : STD_LOGIC;
  signal r8_tx_bytes_count_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal r_btn0 : STD_LOGIC;
  signal r_btn02_reg_srl2_n_0 : STD_LOGIC;
  signal r_btn1 : STD_LOGIC;
  signal r_btn11 : STD_LOGIC;
  signal r_btn12 : STD_LOGIC;
  signal r_btn2 : STD_LOGIC;
  signal r_btn21 : STD_LOGIC;
  signal r_btn22 : STD_LOGIC;
  signal r_btn3 : STD_LOGIC;
  signal r_btn31 : STD_LOGIC;
  signal r_btn32 : STD_LOGIC;
  signal r_led2_i_1_n_0 : STD_LOGIC;
  signal r_led3_i_1_n_0 : STD_LOGIC;
  signal r_led4_i_1_n_0 : STD_LOGIC;
  signal r_led5_i_1_n_0 : STD_LOGIC;
  signal r_tx_start_i_1_n_0 : STD_LOGIC;
  signal \NLW_r28_svga_prescaler_reg[20]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_r4_State2[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \FSM_onehot_r4_State2[2]_i_1\ : label is "soft_lutpair10";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_r4_State2_reg[0]\ : label is "iSTATE:001,iSTATE0:010,iSTATE1:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_r4_State2_reg[1]\ : label is "iSTATE:001,iSTATE0:010,iSTATE1:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_r4_State2_reg[2]\ : label is "iSTATE:001,iSTATE0:010,iSTATE1:100,";
  attribute SOFT_HLUTNM of \FSM_onehot_r4_State3[1]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \FSM_onehot_r4_State3[2]_i_1\ : label is "soft_lutpair18";
  attribute FSM_ENCODED_STATES of \FSM_onehot_r4_State3_reg[1]\ : label is "iSTATE:001,iSTATE0:010,iSTATE1:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_r4_State3_reg[2]\ : label is "iSTATE:001,iSTATE0:010,iSTATE1:100,";
  attribute SOFT_HLUTNM of \FSM_onehot_r4_State4[1]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \FSM_onehot_r4_State4[2]_i_1\ : label is "soft_lutpair16";
  attribute FSM_ENCODED_STATES of \FSM_onehot_r4_State4_reg[1]\ : label is "iSTATE:001,iSTATE0:010,iSTATE1:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_r4_State4_reg[2]\ : label is "iSTATE:001,iSTATE0:010,iSTATE1:100,";
  attribute SOFT_HLUTNM of \FSM_onehot_r4_State5[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \FSM_onehot_r4_State5[2]_i_1\ : label is "soft_lutpair8";
  attribute FSM_ENCODED_STATES of \FSM_onehot_r4_State5_reg[1]\ : label is "iSTATE:001,iSTATE0:010,iSTATE1:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_r4_State5_reg[2]\ : label is "iSTATE:001,iSTATE0:010,iSTATE1:100,";
  attribute SOFT_HLUTNM of \FSM_sequential_r4_UartState[1]_i_3\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \FSM_sequential_r4_UartState[2]_i_1\ : label is "soft_lutpair9";
  attribute FSM_ENCODED_STATES of \FSM_sequential_r4_UartState_reg[0]\ : label is "iSTATE:000,iSTATE0:001,iSTATE1:010,iSTATE2:011,iSTATE3:101,iSTATE4:110,iSTATE5:100,iSTATE6:111";
  attribute FSM_ENCODED_STATES of \FSM_sequential_r4_UartState_reg[1]\ : label is "iSTATE:000,iSTATE0:001,iSTATE1:010,iSTATE2:011,iSTATE3:101,iSTATE4:110,iSTATE5:100,iSTATE6:111";
  attribute FSM_ENCODED_STATES of \FSM_sequential_r4_UartState_reg[2]\ : label is "iSTATE:000,iSTATE0:001,iSTATE1:010,iSTATE2:011,iSTATE3:101,iSTATE4:110,iSTATE5:100,iSTATE6:111";
  attribute SOFT_HLUTNM of \r11_x_pos[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \r11_x_pos[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \r11_x_pos[4]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \r11_x_pos[5]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \r11_x_pos[7]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \r11_x_pos[8]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \r11_x_pos[9]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \r11_y_pos[2]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \r11_y_pos[3]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \r11_y_pos[4]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \r11_y_pos[5]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \r11_y_pos[8]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \r11_y_pos[9]_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \r11_y_pos[9]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \r4_blue[0]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \r4_blue[1]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \r4_blue[2]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \r4_blue[3]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \r4_green[0]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \r4_green[1]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \r4_green[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \r4_green[3]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \r4_red[0]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \r4_red[1]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \r4_red[2]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \r4_red[3]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \r8_tx_byte[0]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \r8_tx_byte[1]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \r8_tx_byte[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \r8_tx_byte[3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \r8_tx_byte[4]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \r8_tx_byte[5]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \r8_tx_byte[6]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \r8_tx_byte[7]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \r8_tx_byte[7]_i_3\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \r8_tx_byte[7]_i_4\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \r8_tx_bytes_count[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \r8_tx_bytes_count[2]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \r8_tx_bytes_count[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \r8_tx_bytes_count[4]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \r8_tx_bytes_count[6]_i_1\ : label is "soft_lutpair14";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of r_btn02_reg_srl2 : label is "MLO";
  attribute srl_name : string;
  attribute srl_name of r_btn02_reg_srl2 : label is "\inst/r_btn02_reg_srl2 ";
  attribute SOFT_HLUTNM of r_tx_start_i_1 : label is "soft_lutpair9";
begin
  Q(8 downto 0) <= \^q\(8 downto 0);
  ow11_y_pos(8 downto 0) <= \^ow11_y_pos\(8 downto 0);
  ow4_blue(3 downto 0) <= \^ow4_blue\(3 downto 0);
  ow4_green(3 downto 0) <= \^ow4_green\(3 downto 0);
  ow4_red(3 downto 0) <= \^ow4_red\(3 downto 0);
  ow8_tx_byte(7 downto 0) <= \^ow8_tx_byte\(7 downto 0);
  ow_led2 <= \^ow_led2\;
  ow_led3 <= \^ow_led3\;
  ow_led4 <= \^ow_led4\;
  ow_led5 <= \^ow_led5\;
  ow_tx_start <= \^ow_tx_start\;
\FSM_onehot_r4_State2[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFAE"
    )
        port map (
      I0 => r4_State2(0),
      I1 => r4_State2(2),
      I2 => r_btn0,
      I3 => r4_State2(1),
      O => \FSM_onehot_r4_State2[1]_i_1_n_0\
    );
\FSM_onehot_r4_State2[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE40"
    )
        port map (
      I0 => r4_State2(0),
      I1 => r4_State2(2),
      I2 => r_btn0,
      I3 => r4_State2(1),
      O => \FSM_onehot_r4_State2[2]_i_1_n_0\
    );
\FSM_onehot_r4_State2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => '0',
      Q => r4_State2(0),
      R => '0'
    );
\FSM_onehot_r4_State2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => \FSM_onehot_r4_State2[1]_i_1_n_0\,
      Q => r4_State2(1),
      R => '0'
    );
\FSM_onehot_r4_State2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => \FSM_onehot_r4_State2[2]_i_1_n_0\,
      Q => r4_State2(2),
      R => '0'
    );
\FSM_onehot_r4_State3[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFCE"
    )
        port map (
      I0 => r4_State3(2),
      I1 => r4_State2(0),
      I2 => r_btn1,
      I3 => r4_State3(1),
      O => \FSM_onehot_r4_State3[1]_i_1_n_0\
    );
\FSM_onehot_r4_State3[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE20"
    )
        port map (
      I0 => r4_State3(2),
      I1 => r4_State2(0),
      I2 => r_btn1,
      I3 => r4_State3(1),
      O => \FSM_onehot_r4_State3[2]_i_1_n_0\
    );
\FSM_onehot_r4_State3_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => \FSM_onehot_r4_State3[1]_i_1_n_0\,
      Q => r4_State3(1),
      R => '0'
    );
\FSM_onehot_r4_State3_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => \FSM_onehot_r4_State3[2]_i_1_n_0\,
      Q => r4_State3(2),
      R => '0'
    );
\FSM_onehot_r4_State4[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFCE"
    )
        port map (
      I0 => r4_State4(2),
      I1 => r4_State2(0),
      I2 => r_btn2,
      I3 => r4_State4(1),
      O => \FSM_onehot_r4_State4[1]_i_1_n_0\
    );
\FSM_onehot_r4_State4[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE20"
    )
        port map (
      I0 => r4_State4(2),
      I1 => r4_State2(0),
      I2 => r_btn2,
      I3 => r4_State4(1),
      O => \FSM_onehot_r4_State4[2]_i_1_n_0\
    );
\FSM_onehot_r4_State4_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => \FSM_onehot_r4_State4[1]_i_1_n_0\,
      Q => r4_State4(1),
      R => '0'
    );
\FSM_onehot_r4_State4_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => \FSM_onehot_r4_State4[2]_i_1_n_0\,
      Q => r4_State4(2),
      R => '0'
    );
\FSM_onehot_r4_State5[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFCE"
    )
        port map (
      I0 => r4_State5(2),
      I1 => r4_State2(0),
      I2 => r_btn3,
      I3 => r4_State5(1),
      O => \FSM_onehot_r4_State5[1]_i_1_n_0\
    );
\FSM_onehot_r4_State5[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE20"
    )
        port map (
      I0 => r4_State5(2),
      I1 => r4_State2(0),
      I2 => r_btn3,
      I3 => r4_State5(1),
      O => \FSM_onehot_r4_State5[2]_i_1_n_0\
    );
\FSM_onehot_r4_State5_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => \FSM_onehot_r4_State5[1]_i_1_n_0\,
      Q => r4_State5(1),
      R => '0'
    );
\FSM_onehot_r4_State5_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => \FSM_onehot_r4_State5[2]_i_1_n_0\,
      Q => r4_State5(2),
      R => '0'
    );
\FSM_sequential_r4_UartState[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0B0B3B3B033B033B"
    )
        port map (
      I0 => \FSM_sequential_r4_UartState[1]_i_2_n_0\,
      I1 => r4_UartState(1),
      I2 => r4_UartState(0),
      I3 => iw_btn0,
      I4 => iw_tx_done,
      I5 => r4_UartState(2),
      O => \FSM_sequential_r4_UartState[0]_i_1_n_0\
    );
\FSM_sequential_r4_UartState[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"383808083C083C08"
    )
        port map (
      I0 => \FSM_sequential_r4_UartState[1]_i_2_n_0\,
      I1 => r4_UartState(1),
      I2 => r4_UartState(0),
      I3 => iw_btn0,
      I4 => iw_tx_done,
      I5 => r4_UartState(2),
      O => \FSM_sequential_r4_UartState[1]_i_1_n_0\
    );
\FSM_sequential_r4_UartState[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000002FFFFFFFF"
    )
        port map (
      I0 => \FSM_sequential_r4_UartState[1]_i_3_n_0\,
      I1 => r8_tx_bytes_count_reg(7),
      I2 => r8_tx_bytes_count_reg(6),
      I3 => r8_tx_bytes_count_reg(5),
      I4 => r8_tx_bytes_count_reg(4),
      I5 => r4_UartState(2),
      O => \FSM_sequential_r4_UartState[1]_i_2_n_0\
    );
\FSM_sequential_r4_UartState[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => r8_tx_bytes_count_reg(0),
      I1 => r8_tx_bytes_count_reg(1),
      I2 => r8_tx_bytes_count_reg(2),
      I3 => r8_tx_bytes_count_reg(3),
      O => \FSM_sequential_r4_UartState[1]_i_3_n_0\
    );
\FSM_sequential_r4_UartState[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => r4_UartState(1),
      I1 => r4_UartState(0),
      I2 => r4_UartState(2),
      O => \FSM_sequential_r4_UartState[2]_i_1_n_0\
    );
\FSM_sequential_r4_UartState_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => \FSM_sequential_r4_UartState[0]_i_1_n_0\,
      Q => r4_UartState(0),
      R => '0'
    );
\FSM_sequential_r4_UartState_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => \FSM_sequential_r4_UartState[1]_i_1_n_0\,
      Q => r4_UartState(1),
      R => '0'
    );
\FSM_sequential_r4_UartState_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => \FSM_sequential_r4_UartState[2]_i_1_n_0\,
      Q => r4_UartState(2),
      R => '0'
    );
\r11_x_pos[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00BF"
    )
        port map (
      I0 => \r11_x_pos[9]_i_7_n_0\,
      I1 => \^q\(7),
      I2 => \^q\(8),
      I3 => \^q\(0),
      O => \r11_x_pos[1]_i_1_n_0\
    );
\r11_x_pos[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00BFBF00"
    )
        port map (
      I0 => \r11_x_pos[9]_i_7_n_0\,
      I1 => \^q\(7),
      I2 => \^q\(8),
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => \r11_x_pos[2]_i_1_n_0\
    );
\r11_x_pos[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF00000000BFBFBF"
    )
        port map (
      I0 => \r11_x_pos[9]_i_7_n_0\,
      I1 => \^q\(7),
      I2 => \^q\(8),
      I3 => \^q\(1),
      I4 => \^q\(0),
      I5 => \^q\(2),
      O => \r11_x_pos[3]_i_1_n_0\
    );
\r11_x_pos[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"07F8"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => p_1_in(4)
    );
\r11_x_pos[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5777A888"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(4),
      O => p_1_in(5)
    );
\r11_x_pos[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \r11_x_pos[9]_i_1_n_0\,
      I1 => \r11_x_pos[9]_i_7_n_0\,
      I2 => \^q\(7),
      I3 => \^q\(8),
      O => r11_x_pos
    );
\r11_x_pos[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07FFFFFFF8000000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => \^q\(4),
      I5 => \^q\(5),
      O => p_1_in(6)
    );
\r11_x_pos[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BF0000BF"
    )
        port map (
      I0 => \r11_x_pos[9]_i_7_n_0\,
      I1 => \^q\(7),
      I2 => \^q\(8),
      I3 => \r11_x_pos[9]_i_8_n_0\,
      I4 => \^q\(6),
      O => \r11_x_pos[7]_i_1_n_0\
    );
\r11_x_pos[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8C8C338C"
    )
        port map (
      I0 => \r11_x_pos[9]_i_7_n_0\,
      I1 => \^q\(7),
      I2 => \^q\(8),
      I3 => \^q\(6),
      I4 => \r11_x_pos[9]_i_8_n_0\,
      O => \r11_x_pos[8]_i_1_n_0\
    );
\r11_x_pos[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFAAA8"
    )
        port map (
      I0 => \r11_x_pos[9]_i_3_n_0\,
      I1 => r28_svga_prescaler_reg(13),
      I2 => r28_svga_prescaler_reg(14),
      I3 => \r11_x_pos[9]_i_4_n_0\,
      I4 => \r11_x_pos[9]_i_5_n_0\,
      I5 => \r11_x_pos[9]_i_6_n_0\,
      O => \r11_x_pos[9]_i_1_n_0\
    );
\r11_x_pos[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B03CB0B0"
    )
        port map (
      I0 => \r11_x_pos[9]_i_7_n_0\,
      I1 => \^q\(7),
      I2 => \^q\(8),
      I3 => \r11_x_pos[9]_i_8_n_0\,
      I4 => \^q\(6),
      O => \r11_x_pos[9]_i_2_n_0\
    );
\r11_x_pos[9]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => r28_svga_prescaler_reg(20),
      I1 => r28_svga_prescaler_reg(23),
      I2 => r28_svga_prescaler_reg(19),
      I3 => r28_svga_prescaler_reg(15),
      O => \r11_x_pos[9]_i_3_n_0\
    );
\r11_x_pos[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAEAEAAA00000000"
    )
        port map (
      I0 => r28_svga_prescaler_reg(11),
      I1 => r28_svga_prescaler_reg(10),
      I2 => r28_svga_prescaler_reg(9),
      I3 => r28_svga_prescaler_reg(7),
      I4 => r28_svga_prescaler_reg(8),
      I5 => r28_svga_prescaler_reg(12),
      O => \r11_x_pos[9]_i_4_n_0\
    );
\r11_x_pos[9]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0000000"
    )
        port map (
      I0 => r28_svga_prescaler_reg(17),
      I1 => r28_svga_prescaler_reg(18),
      I2 => r28_svga_prescaler_reg(19),
      I3 => r28_svga_prescaler_reg(23),
      I4 => r28_svga_prescaler_reg(20),
      O => \r11_x_pos[9]_i_5_n_0\
    );
\r11_x_pos[9]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEE0000EEEE0000"
    )
        port map (
      I0 => r28_svga_prescaler_reg(22),
      I1 => r28_svga_prescaler_reg(21),
      I2 => r28_svga_prescaler_reg(16),
      I3 => r28_svga_prescaler_reg(19),
      I4 => r28_svga_prescaler_reg(23),
      I5 => r28_svga_prescaler_reg(20),
      O => \r11_x_pos[9]_i_6_n_0\
    );
\r11_x_pos[9]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000100010101"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(5),
      I2 => \^q\(6),
      I3 => \^q\(3),
      I4 => \^q\(2),
      I5 => \^q\(1),
      O => \r11_x_pos[9]_i_7_n_0\
    );
\r11_x_pos[9]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07FFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => \^q\(4),
      I5 => \^q\(5),
      O => \r11_x_pos[9]_i_8_n_0\
    );
\r11_x_pos_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => \r11_x_pos[9]_i_1_n_0\,
      D => \r11_x_pos[1]_i_1_n_0\,
      Q => \^q\(0),
      R => '0'
    );
\r11_x_pos_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => \r11_x_pos[9]_i_1_n_0\,
      D => \r11_x_pos[2]_i_1_n_0\,
      Q => \^q\(1),
      R => '0'
    );
\r11_x_pos_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => \r11_x_pos[9]_i_1_n_0\,
      D => \r11_x_pos[3]_i_1_n_0\,
      Q => \^q\(2),
      R => '0'
    );
\r11_x_pos_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => \r11_x_pos[9]_i_1_n_0\,
      D => p_1_in(4),
      Q => \^q\(3),
      R => r11_x_pos
    );
\r11_x_pos_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => \r11_x_pos[9]_i_1_n_0\,
      D => p_1_in(5),
      Q => \^q\(4),
      R => r11_x_pos
    );
\r11_x_pos_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => \r11_x_pos[9]_i_1_n_0\,
      D => p_1_in(6),
      Q => \^q\(5),
      R => r11_x_pos
    );
\r11_x_pos_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => \r11_x_pos[9]_i_1_n_0\,
      D => \r11_x_pos[7]_i_1_n_0\,
      Q => \^q\(6),
      R => '0'
    );
\r11_x_pos_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => \r11_x_pos[9]_i_1_n_0\,
      D => \r11_x_pos[8]_i_1_n_0\,
      Q => \^q\(7),
      R => '0'
    );
\r11_x_pos_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => \r11_x_pos[9]_i_1_n_0\,
      D => \r11_x_pos[9]_i_2_n_0\,
      Q => \^q\(8),
      R => '0'
    );
\r11_y_pos[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^ow11_y_pos\(0),
      O => p_0_in(1)
    );
\r11_y_pos[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^ow11_y_pos\(0),
      I1 => \^ow11_y_pos\(1),
      O => p_0_in(2)
    );
\r11_y_pos[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"87"
    )
        port map (
      I0 => \^ow11_y_pos\(1),
      I1 => \^ow11_y_pos\(0),
      I2 => \^ow11_y_pos\(2),
      O => p_0_in(3)
    );
\r11_y_pos[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"07F8"
    )
        port map (
      I0 => \^ow11_y_pos\(0),
      I1 => \^ow11_y_pos\(1),
      I2 => \^ow11_y_pos\(2),
      I3 => \^ow11_y_pos\(3),
      O => p_0_in(4)
    );
\r11_y_pos[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5777A888"
    )
        port map (
      I0 => \^ow11_y_pos\(3),
      I1 => \^ow11_y_pos\(2),
      I2 => \^ow11_y_pos\(1),
      I3 => \^ow11_y_pos\(0),
      I4 => \^ow11_y_pos\(4),
      O => p_0_in(5)
    );
\r11_y_pos[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07FFFFFFF8000000"
    )
        port map (
      I0 => \^ow11_y_pos\(0),
      I1 => \^ow11_y_pos\(1),
      I2 => \^ow11_y_pos\(2),
      I3 => \^ow11_y_pos\(3),
      I4 => \^ow11_y_pos\(4),
      I5 => \^ow11_y_pos\(5),
      O => p_0_in(6)
    );
\r11_y_pos[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \r11_y_pos[9]_i_5_n_0\,
      I1 => \^ow11_y_pos\(6),
      O => p_0_in(7)
    );
\r11_y_pos[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => \^ow11_y_pos\(6),
      I1 => \r11_y_pos[9]_i_5_n_0\,
      I2 => \^ow11_y_pos\(7),
      O => p_0_in(8)
    );
\r11_y_pos[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0000000E000000"
    )
        port map (
      I0 => \^ow11_y_pos\(7),
      I1 => \^ow11_y_pos\(6),
      I2 => \r11_y_pos[9]_i_3_n_0\,
      I3 => \r11_x_pos[9]_i_1_n_0\,
      I4 => \^ow11_y_pos\(8),
      I5 => \r11_y_pos[9]_i_4_n_0\,
      O => r11_y_pos
    );
\r11_y_pos[9]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => \^ow11_y_pos\(7),
      I1 => \r11_y_pos[9]_i_5_n_0\,
      I2 => \^ow11_y_pos\(6),
      I3 => \^ow11_y_pos\(8),
      O => p_0_in(9)
    );
\r11_y_pos[9]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(7),
      I2 => \r11_x_pos[9]_i_7_n_0\,
      O => \r11_y_pos[9]_i_3_n_0\
    );
\r11_y_pos[9]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEE0000"
    )
        port map (
      I0 => \^ow11_y_pos\(3),
      I1 => \^ow11_y_pos\(4),
      I2 => \^ow11_y_pos\(1),
      I3 => \^ow11_y_pos\(2),
      I4 => \^ow11_y_pos\(5),
      O => \r11_y_pos[9]_i_4_n_0\
    );
\r11_y_pos[9]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07FFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^ow11_y_pos\(0),
      I1 => \^ow11_y_pos\(1),
      I2 => \^ow11_y_pos\(2),
      I3 => \^ow11_y_pos\(3),
      I4 => \^ow11_y_pos\(4),
      I5 => \^ow11_y_pos\(5),
      O => \r11_y_pos[9]_i_5_n_0\
    );
\r11_y_pos_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => r11_x_pos,
      D => p_0_in(1),
      Q => \^ow11_y_pos\(0),
      R => r11_y_pos
    );
\r11_y_pos_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => r11_x_pos,
      D => p_0_in(2),
      Q => \^ow11_y_pos\(1),
      R => r11_y_pos
    );
\r11_y_pos_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => r11_x_pos,
      D => p_0_in(3),
      Q => \^ow11_y_pos\(2),
      R => r11_y_pos
    );
\r11_y_pos_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => r11_x_pos,
      D => p_0_in(4),
      Q => \^ow11_y_pos\(3),
      R => r11_y_pos
    );
\r11_y_pos_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => r11_x_pos,
      D => p_0_in(5),
      Q => \^ow11_y_pos\(4),
      R => r11_y_pos
    );
\r11_y_pos_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => r11_x_pos,
      D => p_0_in(6),
      Q => \^ow11_y_pos\(5),
      R => r11_y_pos
    );
\r11_y_pos_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => r11_x_pos,
      D => p_0_in(7),
      Q => \^ow11_y_pos\(6),
      R => r11_y_pos
    );
\r11_y_pos_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => r11_x_pos,
      D => p_0_in(8),
      Q => \^ow11_y_pos\(7),
      R => r11_y_pos
    );
\r11_y_pos_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => r11_x_pos,
      D => p_0_in(9),
      Q => \^ow11_y_pos\(8),
      R => r11_y_pos
    );
\r28_svga_prescaler[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r28_svga_prescaler_reg_n_0_[0]\,
      O => \r28_svga_prescaler[0]_i_2_n_0\
    );
\r28_svga_prescaler_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => \r28_svga_prescaler_reg[0]_i_1_n_7\,
      Q => \r28_svga_prescaler_reg_n_0_[0]\,
      R => \r11_x_pos[9]_i_1_n_0\
    );
\r28_svga_prescaler_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \r28_svga_prescaler_reg[0]_i_1_n_0\,
      CO(2) => \r28_svga_prescaler_reg[0]_i_1_n_1\,
      CO(1) => \r28_svga_prescaler_reg[0]_i_1_n_2\,
      CO(0) => \r28_svga_prescaler_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \r28_svga_prescaler_reg[0]_i_1_n_4\,
      O(2) => \r28_svga_prescaler_reg[0]_i_1_n_5\,
      O(1) => \r28_svga_prescaler_reg[0]_i_1_n_6\,
      O(0) => \r28_svga_prescaler_reg[0]_i_1_n_7\,
      S(3) => \r28_svga_prescaler_reg_n_0_[3]\,
      S(2) => \r28_svga_prescaler_reg_n_0_[2]\,
      S(1) => \r28_svga_prescaler_reg_n_0_[1]\,
      S(0) => \r28_svga_prescaler[0]_i_2_n_0\
    );
\r28_svga_prescaler_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => \r28_svga_prescaler_reg[8]_i_1_n_5\,
      Q => r28_svga_prescaler_reg(10),
      R => \r11_x_pos[9]_i_1_n_0\
    );
\r28_svga_prescaler_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => \r28_svga_prescaler_reg[8]_i_1_n_4\,
      Q => r28_svga_prescaler_reg(11),
      R => \r11_x_pos[9]_i_1_n_0\
    );
\r28_svga_prescaler_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => \r28_svga_prescaler_reg[12]_i_1_n_7\,
      Q => r28_svga_prescaler_reg(12),
      R => \r11_x_pos[9]_i_1_n_0\
    );
\r28_svga_prescaler_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r28_svga_prescaler_reg[8]_i_1_n_0\,
      CO(3) => \r28_svga_prescaler_reg[12]_i_1_n_0\,
      CO(2) => \r28_svga_prescaler_reg[12]_i_1_n_1\,
      CO(1) => \r28_svga_prescaler_reg[12]_i_1_n_2\,
      CO(0) => \r28_svga_prescaler_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r28_svga_prescaler_reg[12]_i_1_n_4\,
      O(2) => \r28_svga_prescaler_reg[12]_i_1_n_5\,
      O(1) => \r28_svga_prescaler_reg[12]_i_1_n_6\,
      O(0) => \r28_svga_prescaler_reg[12]_i_1_n_7\,
      S(3 downto 0) => r28_svga_prescaler_reg(15 downto 12)
    );
\r28_svga_prescaler_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => \r28_svga_prescaler_reg[12]_i_1_n_6\,
      Q => r28_svga_prescaler_reg(13),
      R => \r11_x_pos[9]_i_1_n_0\
    );
\r28_svga_prescaler_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => \r28_svga_prescaler_reg[12]_i_1_n_5\,
      Q => r28_svga_prescaler_reg(14),
      R => \r11_x_pos[9]_i_1_n_0\
    );
\r28_svga_prescaler_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => \r28_svga_prescaler_reg[12]_i_1_n_4\,
      Q => r28_svga_prescaler_reg(15),
      R => \r11_x_pos[9]_i_1_n_0\
    );
\r28_svga_prescaler_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => \r28_svga_prescaler_reg[16]_i_1_n_7\,
      Q => r28_svga_prescaler_reg(16),
      R => \r11_x_pos[9]_i_1_n_0\
    );
\r28_svga_prescaler_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r28_svga_prescaler_reg[12]_i_1_n_0\,
      CO(3) => \r28_svga_prescaler_reg[16]_i_1_n_0\,
      CO(2) => \r28_svga_prescaler_reg[16]_i_1_n_1\,
      CO(1) => \r28_svga_prescaler_reg[16]_i_1_n_2\,
      CO(0) => \r28_svga_prescaler_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r28_svga_prescaler_reg[16]_i_1_n_4\,
      O(2) => \r28_svga_prescaler_reg[16]_i_1_n_5\,
      O(1) => \r28_svga_prescaler_reg[16]_i_1_n_6\,
      O(0) => \r28_svga_prescaler_reg[16]_i_1_n_7\,
      S(3 downto 0) => r28_svga_prescaler_reg(19 downto 16)
    );
\r28_svga_prescaler_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => \r28_svga_prescaler_reg[16]_i_1_n_6\,
      Q => r28_svga_prescaler_reg(17),
      R => \r11_x_pos[9]_i_1_n_0\
    );
\r28_svga_prescaler_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => \r28_svga_prescaler_reg[16]_i_1_n_5\,
      Q => r28_svga_prescaler_reg(18),
      R => \r11_x_pos[9]_i_1_n_0\
    );
\r28_svga_prescaler_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => \r28_svga_prescaler_reg[16]_i_1_n_4\,
      Q => r28_svga_prescaler_reg(19),
      R => \r11_x_pos[9]_i_1_n_0\
    );
\r28_svga_prescaler_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => \r28_svga_prescaler_reg[0]_i_1_n_6\,
      Q => \r28_svga_prescaler_reg_n_0_[1]\,
      R => \r11_x_pos[9]_i_1_n_0\
    );
\r28_svga_prescaler_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => \r28_svga_prescaler_reg[20]_i_1_n_7\,
      Q => r28_svga_prescaler_reg(20),
      R => \r11_x_pos[9]_i_1_n_0\
    );
\r28_svga_prescaler_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r28_svga_prescaler_reg[16]_i_1_n_0\,
      CO(3) => \NLW_r28_svga_prescaler_reg[20]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \r28_svga_prescaler_reg[20]_i_1_n_1\,
      CO(1) => \r28_svga_prescaler_reg[20]_i_1_n_2\,
      CO(0) => \r28_svga_prescaler_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r28_svga_prescaler_reg[20]_i_1_n_4\,
      O(2) => \r28_svga_prescaler_reg[20]_i_1_n_5\,
      O(1) => \r28_svga_prescaler_reg[20]_i_1_n_6\,
      O(0) => \r28_svga_prescaler_reg[20]_i_1_n_7\,
      S(3 downto 0) => r28_svga_prescaler_reg(23 downto 20)
    );
\r28_svga_prescaler_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => \r28_svga_prescaler_reg[20]_i_1_n_6\,
      Q => r28_svga_prescaler_reg(21),
      R => \r11_x_pos[9]_i_1_n_0\
    );
\r28_svga_prescaler_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => \r28_svga_prescaler_reg[20]_i_1_n_5\,
      Q => r28_svga_prescaler_reg(22),
      R => \r11_x_pos[9]_i_1_n_0\
    );
\r28_svga_prescaler_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => \r28_svga_prescaler_reg[20]_i_1_n_4\,
      Q => r28_svga_prescaler_reg(23),
      R => \r11_x_pos[9]_i_1_n_0\
    );
\r28_svga_prescaler_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => \r28_svga_prescaler_reg[0]_i_1_n_5\,
      Q => \r28_svga_prescaler_reg_n_0_[2]\,
      R => \r11_x_pos[9]_i_1_n_0\
    );
\r28_svga_prescaler_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => \r28_svga_prescaler_reg[0]_i_1_n_4\,
      Q => \r28_svga_prescaler_reg_n_0_[3]\,
      R => \r11_x_pos[9]_i_1_n_0\
    );
\r28_svga_prescaler_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => \r28_svga_prescaler_reg[4]_i_1_n_7\,
      Q => \r28_svga_prescaler_reg_n_0_[4]\,
      R => \r11_x_pos[9]_i_1_n_0\
    );
\r28_svga_prescaler_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r28_svga_prescaler_reg[0]_i_1_n_0\,
      CO(3) => \r28_svga_prescaler_reg[4]_i_1_n_0\,
      CO(2) => \r28_svga_prescaler_reg[4]_i_1_n_1\,
      CO(1) => \r28_svga_prescaler_reg[4]_i_1_n_2\,
      CO(0) => \r28_svga_prescaler_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r28_svga_prescaler_reg[4]_i_1_n_4\,
      O(2) => \r28_svga_prescaler_reg[4]_i_1_n_5\,
      O(1) => \r28_svga_prescaler_reg[4]_i_1_n_6\,
      O(0) => \r28_svga_prescaler_reg[4]_i_1_n_7\,
      S(3) => r28_svga_prescaler_reg(7),
      S(2) => \r28_svga_prescaler_reg_n_0_[6]\,
      S(1) => \r28_svga_prescaler_reg_n_0_[5]\,
      S(0) => \r28_svga_prescaler_reg_n_0_[4]\
    );
\r28_svga_prescaler_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => \r28_svga_prescaler_reg[4]_i_1_n_6\,
      Q => \r28_svga_prescaler_reg_n_0_[5]\,
      R => \r11_x_pos[9]_i_1_n_0\
    );
\r28_svga_prescaler_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => \r28_svga_prescaler_reg[4]_i_1_n_5\,
      Q => \r28_svga_prescaler_reg_n_0_[6]\,
      R => \r11_x_pos[9]_i_1_n_0\
    );
\r28_svga_prescaler_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => \r28_svga_prescaler_reg[4]_i_1_n_4\,
      Q => r28_svga_prescaler_reg(7),
      R => \r11_x_pos[9]_i_1_n_0\
    );
\r28_svga_prescaler_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => \r28_svga_prescaler_reg[8]_i_1_n_7\,
      Q => r28_svga_prescaler_reg(8),
      R => \r11_x_pos[9]_i_1_n_0\
    );
\r28_svga_prescaler_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r28_svga_prescaler_reg[4]_i_1_n_0\,
      CO(3) => \r28_svga_prescaler_reg[8]_i_1_n_0\,
      CO(2) => \r28_svga_prescaler_reg[8]_i_1_n_1\,
      CO(1) => \r28_svga_prescaler_reg[8]_i_1_n_2\,
      CO(0) => \r28_svga_prescaler_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r28_svga_prescaler_reg[8]_i_1_n_4\,
      O(2) => \r28_svga_prescaler_reg[8]_i_1_n_5\,
      O(1) => \r28_svga_prescaler_reg[8]_i_1_n_6\,
      O(0) => \r28_svga_prescaler_reg[8]_i_1_n_7\,
      S(3 downto 0) => r28_svga_prescaler_reg(11 downto 8)
    );
\r28_svga_prescaler_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => \r28_svga_prescaler_reg[8]_i_1_n_6\,
      Q => r28_svga_prescaler_reg(9),
      R => \r11_x_pos[9]_i_1_n_0\
    );
\r4_blue[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^ow4_blue\(0),
      O => \p_0_in__3\(0)
    );
\r4_blue[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^ow4_blue\(0),
      I1 => \^ow4_blue\(1),
      O => \p_0_in__3\(1)
    );
\r4_blue[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^ow4_blue\(2),
      I1 => \^ow4_blue\(0),
      I2 => \^ow4_blue\(1),
      O => \p_0_in__3\(2)
    );
\r4_blue[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r4_State5(1),
      I1 => r_btn3,
      O => \r4_blue[3]_i_1_n_0\
    );
\r4_blue[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^ow4_blue\(2),
      I1 => \^ow4_blue\(0),
      I2 => \^ow4_blue\(1),
      I3 => \^ow4_blue\(3),
      O => \p_0_in__3\(3)
    );
\r4_blue_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => \r4_blue[3]_i_1_n_0\,
      D => \p_0_in__3\(0),
      Q => \^ow4_blue\(0),
      R => '0'
    );
\r4_blue_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => \r4_blue[3]_i_1_n_0\,
      D => \p_0_in__3\(1),
      Q => \^ow4_blue\(1),
      R => '0'
    );
\r4_blue_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => \r4_blue[3]_i_1_n_0\,
      D => \p_0_in__3\(2),
      Q => \^ow4_blue\(2),
      R => '0'
    );
\r4_blue_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => \r4_blue[3]_i_1_n_0\,
      D => \p_0_in__3\(3),
      Q => \^ow4_blue\(3),
      R => '0'
    );
\r4_green[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^ow4_green\(0),
      O => \p_0_in__2\(0)
    );
\r4_green[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^ow4_green\(0),
      I1 => \^ow4_green\(1),
      O => \p_0_in__2\(1)
    );
\r4_green[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^ow4_green\(2),
      I1 => \^ow4_green\(0),
      I2 => \^ow4_green\(1),
      O => \p_0_in__2\(2)
    );
\r4_green[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r4_State4(1),
      I1 => r_btn2,
      O => \r4_green[3]_i_1_n_0\
    );
\r4_green[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^ow4_green\(2),
      I1 => \^ow4_green\(0),
      I2 => \^ow4_green\(1),
      I3 => \^ow4_green\(3),
      O => \p_0_in__2\(3)
    );
\r4_green_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => \r4_green[3]_i_1_n_0\,
      D => \p_0_in__2\(0),
      Q => \^ow4_green\(0),
      R => '0'
    );
\r4_green_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => \r4_green[3]_i_1_n_0\,
      D => \p_0_in__2\(1),
      Q => \^ow4_green\(1),
      R => '0'
    );
\r4_green_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => \r4_green[3]_i_1_n_0\,
      D => \p_0_in__2\(2),
      Q => \^ow4_green\(2),
      R => '0'
    );
\r4_green_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => \r4_green[3]_i_1_n_0\,
      D => \p_0_in__2\(3),
      Q => \^ow4_green\(3),
      R => '0'
    );
\r4_red[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^ow4_red\(0),
      O => \p_0_in__1\(0)
    );
\r4_red[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^ow4_red\(0),
      I1 => \^ow4_red\(1),
      O => \p_0_in__1\(1)
    );
\r4_red[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^ow4_red\(2),
      I1 => \^ow4_red\(0),
      I2 => \^ow4_red\(1),
      O => \p_0_in__1\(2)
    );
\r4_red[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r4_State3(1),
      I1 => r_btn1,
      O => \r4_red[3]_i_1_n_0\
    );
\r4_red[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^ow4_red\(2),
      I1 => \^ow4_red\(0),
      I2 => \^ow4_red\(1),
      I3 => \^ow4_red\(3),
      O => \p_0_in__1\(3)
    );
\r4_red_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => \r4_red[3]_i_1_n_0\,
      D => \p_0_in__1\(0),
      Q => \^ow4_red\(0),
      R => '0'
    );
\r4_red_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => \r4_red[3]_i_1_n_0\,
      D => \p_0_in__1\(1),
      Q => \^ow4_red\(1),
      R => '0'
    );
\r4_red_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => \r4_red[3]_i_1_n_0\,
      D => \p_0_in__1\(2),
      Q => \^ow4_red\(2),
      R => '0'
    );
\r4_red_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => \r4_red[3]_i_1_n_0\,
      D => \p_0_in__1\(3),
      Q => \^ow4_red\(3),
      R => '0'
    );
\r8_tx_byte[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => r4_UartState(2),
      I1 => \^ow8_tx_byte\(0),
      O => r8_tx_byte(0)
    );
\r8_tx_byte[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => \^ow8_tx_byte\(0),
      I1 => r4_UartState(2),
      I2 => \^ow8_tx_byte\(1),
      O => r8_tx_byte(1)
    );
\r8_tx_byte[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7080"
    )
        port map (
      I0 => \^ow8_tx_byte\(1),
      I1 => \^ow8_tx_byte\(0),
      I2 => r4_UartState(2),
      I3 => \^ow8_tx_byte\(2),
      O => r8_tx_byte(2)
    );
\r8_tx_byte[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F008000"
    )
        port map (
      I0 => \^ow8_tx_byte\(2),
      I1 => \^ow8_tx_byte\(0),
      I2 => \^ow8_tx_byte\(1),
      I3 => r4_UartState(2),
      I4 => \^ow8_tx_byte\(3),
      O => r8_tx_byte(3)
    );
\r8_tx_byte[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EBAA"
    )
        port map (
      I0 => r4_UartState(0),
      I1 => \r8_tx_byte[4]_i_2_n_0\,
      I2 => \^ow8_tx_byte\(4),
      I3 => r4_UartState(1),
      O => r8_tx_byte(4)
    );
\r8_tx_byte[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^ow8_tx_byte\(3),
      I1 => \^ow8_tx_byte\(1),
      I2 => \^ow8_tx_byte\(0),
      I3 => \^ow8_tx_byte\(2),
      O => \r8_tx_byte[4]_i_2_n_0\
    );
\r8_tx_byte[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BEAA"
    )
        port map (
      I0 => r4_UartState(0),
      I1 => \r8_tx_byte[5]_i_2_n_0\,
      I2 => \^ow8_tx_byte\(5),
      I3 => r4_UartState(1),
      O => r8_tx_byte(5)
    );
\r8_tx_byte[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \^ow8_tx_byte\(4),
      I1 => \^ow8_tx_byte\(2),
      I2 => \^ow8_tx_byte\(0),
      I3 => \^ow8_tx_byte\(1),
      I4 => \^ow8_tx_byte\(3),
      O => \r8_tx_byte[5]_i_2_n_0\
    );
\r8_tx_byte[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"84"
    )
        port map (
      I0 => \r8_tx_byte[7]_i_5_n_0\,
      I1 => r4_UartState(2),
      I2 => \^ow8_tx_byte\(6),
      O => r8_tx_byte(6)
    );
\r8_tx_byte[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F00E00F"
    )
        port map (
      I0 => \r8_tx_byte[7]_i_3_n_0\,
      I1 => \r8_tx_byte[7]_i_4_n_0\,
      I2 => r4_UartState(2),
      I3 => r4_UartState(1),
      I4 => r4_UartState(0),
      O => r8_tx_byte_0
    );
\r8_tx_byte[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B040"
    )
        port map (
      I0 => \r8_tx_byte[7]_i_5_n_0\,
      I1 => \^ow8_tx_byte\(6),
      I2 => r4_UartState(2),
      I3 => \^ow8_tx_byte\(7),
      O => r8_tx_byte(7)
    );
\r8_tx_byte[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => r8_tx_bytes_count_reg(0),
      I1 => r8_tx_bytes_count_reg(7),
      I2 => r8_tx_bytes_count_reg(2),
      I3 => r8_tx_bytes_count_reg(5),
      O => \r8_tx_byte[7]_i_3_n_0\
    );
\r8_tx_byte[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => r8_tx_bytes_count_reg(4),
      I1 => r8_tx_bytes_count_reg(6),
      I2 => r8_tx_bytes_count_reg(3),
      I3 => r8_tx_bytes_count_reg(1),
      O => \r8_tx_byte[7]_i_4_n_0\
    );
\r8_tx_byte[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^ow8_tx_byte\(5),
      I1 => \^ow8_tx_byte\(3),
      I2 => \^ow8_tx_byte\(1),
      I3 => \^ow8_tx_byte\(0),
      I4 => \^ow8_tx_byte\(2),
      I5 => \^ow8_tx_byte\(4),
      O => \r8_tx_byte[7]_i_5_n_0\
    );
\r8_tx_byte_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => r8_tx_byte_0,
      D => r8_tx_byte(0),
      Q => \^ow8_tx_byte\(0),
      R => '0'
    );
\r8_tx_byte_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => r8_tx_byte_0,
      D => r8_tx_byte(1),
      Q => \^ow8_tx_byte\(1),
      R => '0'
    );
\r8_tx_byte_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => r8_tx_byte_0,
      D => r8_tx_byte(2),
      Q => \^ow8_tx_byte\(2),
      R => '0'
    );
\r8_tx_byte_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => r8_tx_byte_0,
      D => r8_tx_byte(3),
      Q => \^ow8_tx_byte\(3),
      R => '0'
    );
\r8_tx_byte_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => r8_tx_byte_0,
      D => r8_tx_byte(4),
      Q => \^ow8_tx_byte\(4),
      R => '0'
    );
\r8_tx_byte_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => r8_tx_byte_0,
      D => r8_tx_byte(5),
      Q => \^ow8_tx_byte\(5),
      R => '0'
    );
\r8_tx_byte_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => r8_tx_byte_0,
      D => r8_tx_byte(6),
      Q => \^ow8_tx_byte\(6),
      R => '0'
    );
\r8_tx_byte_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => r8_tx_byte_0,
      D => r8_tx_byte(7),
      Q => \^ow8_tx_byte\(7),
      R => '0'
    );
\r8_tx_bytes_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r8_tx_bytes_count_reg(0),
      O => \p_0_in__0\(0)
    );
\r8_tx_bytes_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => r8_tx_bytes_count_reg(0),
      I1 => r8_tx_bytes_count_reg(1),
      O => \p_0_in__0\(1)
    );
\r8_tx_bytes_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => r8_tx_bytes_count_reg(0),
      I1 => r8_tx_bytes_count_reg(1),
      I2 => r8_tx_bytes_count_reg(2),
      O => \p_0_in__0\(2)
    );
\r8_tx_bytes_count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => r8_tx_bytes_count_reg(2),
      I1 => r8_tx_bytes_count_reg(1),
      I2 => r8_tx_bytes_count_reg(0),
      I3 => r8_tx_bytes_count_reg(3),
      O => \p_0_in__0\(3)
    );
\r8_tx_bytes_count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => r8_tx_bytes_count_reg(3),
      I1 => r8_tx_bytes_count_reg(0),
      I2 => r8_tx_bytes_count_reg(1),
      I3 => r8_tx_bytes_count_reg(2),
      I4 => r8_tx_bytes_count_reg(4),
      O => \p_0_in__0\(4)
    );
\r8_tx_bytes_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => r8_tx_bytes_count_reg(2),
      I1 => r8_tx_bytes_count_reg(1),
      I2 => r8_tx_bytes_count_reg(0),
      I3 => r8_tx_bytes_count_reg(3),
      I4 => r8_tx_bytes_count_reg(4),
      I5 => r8_tx_bytes_count_reg(5),
      O => \p_0_in__0\(5)
    );
\r8_tx_bytes_count[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \r8_tx_bytes_count[7]_i_4_n_0\,
      I1 => r8_tx_bytes_count_reg(6),
      O => \p_0_in__0\(6)
    );
\r8_tx_bytes_count[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => r4_UartState(1),
      I1 => r4_UartState(0),
      I2 => r4_UartState(2),
      O => r8_tx_bytes_count0
    );
\r8_tx_bytes_count[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => r4_UartState(0),
      I1 => iw_tx_done,
      I2 => r4_UartState(1),
      I3 => r4_UartState(2),
      O => r8_tx_bytes_count
    );
\r8_tx_bytes_count[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => r8_tx_bytes_count_reg(6),
      I1 => \r8_tx_bytes_count[7]_i_4_n_0\,
      I2 => r8_tx_bytes_count_reg(7),
      O => \p_0_in__0\(7)
    );
\r8_tx_bytes_count[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => r8_tx_bytes_count_reg(5),
      I1 => r8_tx_bytes_count_reg(2),
      I2 => r8_tx_bytes_count_reg(1),
      I3 => r8_tx_bytes_count_reg(0),
      I4 => r8_tx_bytes_count_reg(3),
      I5 => r8_tx_bytes_count_reg(4),
      O => \r8_tx_bytes_count[7]_i_4_n_0\
    );
\r8_tx_bytes_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => r8_tx_bytes_count,
      D => \p_0_in__0\(0),
      Q => r8_tx_bytes_count_reg(0),
      R => r8_tx_bytes_count0
    );
\r8_tx_bytes_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => r8_tx_bytes_count,
      D => \p_0_in__0\(1),
      Q => r8_tx_bytes_count_reg(1),
      R => r8_tx_bytes_count0
    );
\r8_tx_bytes_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => r8_tx_bytes_count,
      D => \p_0_in__0\(2),
      Q => r8_tx_bytes_count_reg(2),
      R => r8_tx_bytes_count0
    );
\r8_tx_bytes_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => r8_tx_bytes_count,
      D => \p_0_in__0\(3),
      Q => r8_tx_bytes_count_reg(3),
      R => r8_tx_bytes_count0
    );
\r8_tx_bytes_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => r8_tx_bytes_count,
      D => \p_0_in__0\(4),
      Q => r8_tx_bytes_count_reg(4),
      R => r8_tx_bytes_count0
    );
\r8_tx_bytes_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => r8_tx_bytes_count,
      D => \p_0_in__0\(5),
      Q => r8_tx_bytes_count_reg(5),
      R => r8_tx_bytes_count0
    );
\r8_tx_bytes_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => r8_tx_bytes_count,
      D => \p_0_in__0\(6),
      Q => r8_tx_bytes_count_reg(6),
      R => r8_tx_bytes_count0
    );
\r8_tx_bytes_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => r8_tx_bytes_count,
      D => \p_0_in__0\(7),
      Q => r8_tx_bytes_count_reg(7),
      R => r8_tx_bytes_count0
    );
r_btn02_reg_srl2: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '1'
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => r_btn0_reg_0,
      D => iw_btn0,
      Q => r_btn02_reg_srl2_n_0
    );
r_btn0_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => r_btn02_reg_srl2_n_0,
      Q => r_btn0,
      R => '0'
    );
r_btn11_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => iw_btn1,
      Q => r_btn11,
      R => '0'
    );
r_btn12_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => r_btn11,
      Q => r_btn12,
      R => '0'
    );
r_btn1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => r_btn12,
      Q => r_btn1,
      R => '0'
    );
r_btn21_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => iw_btn2,
      Q => r_btn21,
      R => '0'
    );
r_btn22_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => r_btn21,
      Q => r_btn22,
      R => '0'
    );
r_btn2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => r_btn22,
      Q => r_btn2,
      R => '0'
    );
r_btn31_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => iw_btn3,
      Q => r_btn31,
      R => '0'
    );
r_btn32_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => r_btn31,
      Q => r_btn32,
      R => '0'
    );
r_btn3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => r_btn32,
      Q => r_btn3,
      R => '0'
    );
r_led2_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"15E0"
    )
        port map (
      I0 => r4_State2(0),
      I1 => r_btn0,
      I2 => r4_State2(1),
      I3 => \^ow_led2\,
      O => r_led2_i_1_n_0
    );
r_led2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => r_led2_i_1_n_0,
      Q => \^ow_led2\,
      R => '0'
    );
r_led3_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"07A8"
    )
        port map (
      I0 => r4_State3(1),
      I1 => r_btn1,
      I2 => r4_State2(0),
      I3 => \^ow_led3\,
      O => r_led3_i_1_n_0
    );
r_led3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => r_led3_i_1_n_0,
      Q => \^ow_led3\,
      R => '0'
    );
r_led4_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"07A8"
    )
        port map (
      I0 => r4_State4(1),
      I1 => r_btn2,
      I2 => r4_State2(0),
      I3 => \^ow_led4\,
      O => r_led4_i_1_n_0
    );
r_led4_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => r_led4_i_1_n_0,
      Q => \^ow_led4\,
      R => '0'
    );
r_led5_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"07A8"
    )
        port map (
      I0 => r4_State5(1),
      I1 => r_btn3,
      I2 => r4_State2(0),
      I3 => \^ow_led5\,
      O => r_led5_i_1_n_0
    );
r_led5_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => r_led5_i_1_n_0,
      Q => \^ow_led5\,
      R => '0'
    );
r_tx_start_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A2AC"
    )
        port map (
      I0 => \^ow_tx_start\,
      I1 => r4_UartState(2),
      I2 => r4_UartState(1),
      I3 => r4_UartState(0),
      O => r_tx_start_i_1_n_0
    );
r_tx_start_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => iw_clk,
      CE => '1',
      D => r_tx_start_i_1_n_0,
      Q => \^ow_tx_start\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uvod_top_0_0 is
  port (
    iw_clk : in STD_LOGIC;
    iw_btn0 : in STD_LOGIC;
    iw_btn1 : in STD_LOGIC;
    iw_btn2 : in STD_LOGIC;
    iw_btn3 : in STD_LOGIC;
    ow_led2 : out STD_LOGIC;
    ow_led3 : out STD_LOGIC;
    ow_led4 : out STD_LOGIC;
    ow_led5 : out STD_LOGIC;
    ow_tx_start : out STD_LOGIC;
    ow8_tx_byte : out STD_LOGIC_VECTOR ( 7 downto 0 );
    iw_tx_done : in STD_LOGIC;
    ow4_red : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ow4_green : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ow4_blue : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ow11_x_pos : out STD_LOGIC_VECTOR ( 10 downto 0 );
    ow11_y_pos : out STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of uvod_top_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of uvod_top_0_0 : entity is "uvod_top_0_0,top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of uvod_top_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of uvod_top_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of uvod_top_0_0 : entity is "top,Vivado 2019.1";
end uvod_top_0_0;

architecture STRUCTURE of uvod_top_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^ow11_x_pos\ : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal \^ow11_y_pos\ : STD_LOGIC_VECTOR ( 9 downto 1 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of iw_clk : signal is "xilinx.com:signal:clock:1.0 iw_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of iw_clk : signal is "XIL_INTERFACENAME iw_clk, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
begin
  ow11_x_pos(10) <= \<const0>\;
  ow11_x_pos(9 downto 1) <= \^ow11_x_pos\(9 downto 1);
  ow11_x_pos(0) <= \<const1>\;
  ow11_y_pos(10) <= \<const0>\;
  ow11_y_pos(9 downto 1) <= \^ow11_y_pos\(9 downto 1);
  ow11_y_pos(0) <= \<const1>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.uvod_top_0_0_top
     port map (
      Q(8 downto 0) => \^ow11_x_pos\(9 downto 1),
      iw_btn0 => iw_btn0,
      iw_btn1 => iw_btn1,
      iw_btn2 => iw_btn2,
      iw_btn3 => iw_btn3,
      iw_clk => iw_clk,
      iw_tx_done => iw_tx_done,
      ow11_y_pos(8 downto 0) => \^ow11_y_pos\(9 downto 1),
      ow4_blue(3 downto 0) => ow4_blue(3 downto 0),
      ow4_green(3 downto 0) => ow4_green(3 downto 0),
      ow4_red(3 downto 0) => ow4_red(3 downto 0),
      ow8_tx_byte(7 downto 0) => ow8_tx_byte(7 downto 0),
      ow_led2 => ow_led2,
      ow_led3 => ow_led3,
      ow_led4 => ow_led4,
      ow_led5 => ow_led5,
      ow_tx_start => ow_tx_start,
      r_btn0_reg_0 => iw_clk
    );
end STRUCTURE;
