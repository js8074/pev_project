// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Tue Mar 17 23:09:09 2026
// Host        : DESKTOP-TPP71AQ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/workspace/PEV/uvod/uvod.srcs/sources_1/bd/uvod/ip/uvod_top_0_0/uvod_top_0_0_sim_netlist.v
// Design      : uvod_top_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s25csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "uvod_top_0_0,top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "top,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module uvod_top_0_0
   (iw_clk,
    iw_btn0,
    iw_btn1,
    iw_btn2,
    iw_btn3,
    ow_led2,
    ow_led3,
    ow_led4,
    ow_led5,
    ow_tx_start,
    ow8_tx_byte,
    iw_tx_done,
    ow4_red,
    ow4_green,
    ow4_blue,
    ow11_x_pos,
    ow11_y_pos);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 iw_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME iw_clk, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input iw_clk;
  input iw_btn0;
  input iw_btn1;
  input iw_btn2;
  input iw_btn3;
  output ow_led2;
  output ow_led3;
  output ow_led4;
  output ow_led5;
  output ow_tx_start;
  output [7:0]ow8_tx_byte;
  input iw_tx_done;
  output [3:0]ow4_red;
  output [3:0]ow4_green;
  output [3:0]ow4_blue;
  output [10:0]ow11_x_pos;
  output [10:0]ow11_y_pos;

  wire \<const0> ;
  wire \<const1> ;
  wire iw_btn0;
  wire iw_btn1;
  wire iw_btn2;
  wire iw_btn3;
  wire iw_clk;
  wire iw_tx_done;
  wire [9:1]\^ow11_x_pos ;
  wire [9:1]\^ow11_y_pos ;
  wire [3:0]ow4_blue;
  wire [3:0]ow4_green;
  wire [3:0]ow4_red;
  wire [7:0]ow8_tx_byte;
  wire ow_led2;
  wire ow_led3;
  wire ow_led4;
  wire ow_led5;
  wire ow_tx_start;

  assign ow11_x_pos[10] = \<const0> ;
  assign ow11_x_pos[9:1] = \^ow11_x_pos [9:1];
  assign ow11_x_pos[0] = \<const1> ;
  assign ow11_y_pos[10] = \<const0> ;
  assign ow11_y_pos[9:1] = \^ow11_y_pos [9:1];
  assign ow11_y_pos[0] = \<const1> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  uvod_top_0_0_top inst
       (.Q(\^ow11_x_pos ),
        .iw_btn0(iw_btn0),
        .iw_btn1(iw_btn1),
        .iw_btn2(iw_btn2),
        .iw_btn3(iw_btn3),
        .iw_clk(iw_clk),
        .iw_tx_done(iw_tx_done),
        .ow11_y_pos(\^ow11_y_pos ),
        .ow4_blue(ow4_blue),
        .ow4_green(ow4_green),
        .ow4_red(ow4_red),
        .ow8_tx_byte(ow8_tx_byte),
        .ow_led2(ow_led2),
        .ow_led3(ow_led3),
        .ow_led4(ow_led4),
        .ow_led5(ow_led5),
        .ow_tx_start(ow_tx_start),
        .r_btn0_reg_0(iw_clk));
endmodule

(* ORIG_REF_NAME = "top" *) 
module uvod_top_0_0_top
   (Q,
    ow8_tx_byte,
    ow11_y_pos,
    ow4_red,
    ow4_green,
    ow4_blue,
    ow_led2,
    ow_led3,
    ow_led4,
    ow_led5,
    ow_tx_start,
    iw_btn0,
    r_btn0_reg_0,
    iw_clk,
    iw_tx_done,
    iw_btn1,
    iw_btn2,
    iw_btn3);
  output [8:0]Q;
  output [7:0]ow8_tx_byte;
  output [8:0]ow11_y_pos;
  output [3:0]ow4_red;
  output [3:0]ow4_green;
  output [3:0]ow4_blue;
  output ow_led2;
  output ow_led3;
  output ow_led4;
  output ow_led5;
  output ow_tx_start;
  input iw_btn0;
  input r_btn0_reg_0;
  input iw_clk;
  input iw_tx_done;
  input iw_btn1;
  input iw_btn2;
  input iw_btn3;

  wire \FSM_onehot_r4_State2[1]_i_1_n_0 ;
  wire \FSM_onehot_r4_State2[2]_i_1_n_0 ;
  wire \FSM_onehot_r4_State3[1]_i_1_n_0 ;
  wire \FSM_onehot_r4_State3[2]_i_1_n_0 ;
  wire \FSM_onehot_r4_State4[1]_i_1_n_0 ;
  wire \FSM_onehot_r4_State4[2]_i_1_n_0 ;
  wire \FSM_onehot_r4_State5[1]_i_1_n_0 ;
  wire \FSM_onehot_r4_State5[2]_i_1_n_0 ;
  wire \FSM_sequential_r4_UartState[0]_i_1_n_0 ;
  wire \FSM_sequential_r4_UartState[1]_i_1_n_0 ;
  wire \FSM_sequential_r4_UartState[1]_i_2_n_0 ;
  wire \FSM_sequential_r4_UartState[1]_i_3_n_0 ;
  wire \FSM_sequential_r4_UartState[2]_i_1_n_0 ;
  wire [8:0]Q;
  wire iw_btn0;
  wire iw_btn1;
  wire iw_btn2;
  wire iw_btn3;
  wire iw_clk;
  wire iw_tx_done;
  wire [8:0]ow11_y_pos;
  wire [3:0]ow4_blue;
  wire [3:0]ow4_green;
  wire [3:0]ow4_red;
  wire [7:0]ow8_tx_byte;
  wire ow_led2;
  wire ow_led3;
  wire ow_led4;
  wire ow_led5;
  wire ow_tx_start;
  wire [9:1]p_0_in;
  wire [7:0]p_0_in__0;
  wire [3:0]p_0_in__1;
  wire [3:0]p_0_in__2;
  wire [3:0]p_0_in__3;
  wire [6:4]p_1_in;
  wire r11_x_pos;
  wire \r11_x_pos[1]_i_1_n_0 ;
  wire \r11_x_pos[2]_i_1_n_0 ;
  wire \r11_x_pos[3]_i_1_n_0 ;
  wire \r11_x_pos[7]_i_1_n_0 ;
  wire \r11_x_pos[8]_i_1_n_0 ;
  wire \r11_x_pos[9]_i_1_n_0 ;
  wire \r11_x_pos[9]_i_2_n_0 ;
  wire \r11_x_pos[9]_i_3_n_0 ;
  wire \r11_x_pos[9]_i_4_n_0 ;
  wire \r11_x_pos[9]_i_5_n_0 ;
  wire \r11_x_pos[9]_i_6_n_0 ;
  wire \r11_x_pos[9]_i_7_n_0 ;
  wire \r11_x_pos[9]_i_8_n_0 ;
  wire r11_y_pos;
  wire \r11_y_pos[9]_i_3_n_0 ;
  wire \r11_y_pos[9]_i_4_n_0 ;
  wire \r11_y_pos[9]_i_5_n_0 ;
  wire \r28_svga_prescaler[0]_i_2_n_0 ;
  wire [23:7]r28_svga_prescaler_reg;
  wire \r28_svga_prescaler_reg[0]_i_1_n_0 ;
  wire \r28_svga_prescaler_reg[0]_i_1_n_1 ;
  wire \r28_svga_prescaler_reg[0]_i_1_n_2 ;
  wire \r28_svga_prescaler_reg[0]_i_1_n_3 ;
  wire \r28_svga_prescaler_reg[0]_i_1_n_4 ;
  wire \r28_svga_prescaler_reg[0]_i_1_n_5 ;
  wire \r28_svga_prescaler_reg[0]_i_1_n_6 ;
  wire \r28_svga_prescaler_reg[0]_i_1_n_7 ;
  wire \r28_svga_prescaler_reg[12]_i_1_n_0 ;
  wire \r28_svga_prescaler_reg[12]_i_1_n_1 ;
  wire \r28_svga_prescaler_reg[12]_i_1_n_2 ;
  wire \r28_svga_prescaler_reg[12]_i_1_n_3 ;
  wire \r28_svga_prescaler_reg[12]_i_1_n_4 ;
  wire \r28_svga_prescaler_reg[12]_i_1_n_5 ;
  wire \r28_svga_prescaler_reg[12]_i_1_n_6 ;
  wire \r28_svga_prescaler_reg[12]_i_1_n_7 ;
  wire \r28_svga_prescaler_reg[16]_i_1_n_0 ;
  wire \r28_svga_prescaler_reg[16]_i_1_n_1 ;
  wire \r28_svga_prescaler_reg[16]_i_1_n_2 ;
  wire \r28_svga_prescaler_reg[16]_i_1_n_3 ;
  wire \r28_svga_prescaler_reg[16]_i_1_n_4 ;
  wire \r28_svga_prescaler_reg[16]_i_1_n_5 ;
  wire \r28_svga_prescaler_reg[16]_i_1_n_6 ;
  wire \r28_svga_prescaler_reg[16]_i_1_n_7 ;
  wire \r28_svga_prescaler_reg[20]_i_1_n_1 ;
  wire \r28_svga_prescaler_reg[20]_i_1_n_2 ;
  wire \r28_svga_prescaler_reg[20]_i_1_n_3 ;
  wire \r28_svga_prescaler_reg[20]_i_1_n_4 ;
  wire \r28_svga_prescaler_reg[20]_i_1_n_5 ;
  wire \r28_svga_prescaler_reg[20]_i_1_n_6 ;
  wire \r28_svga_prescaler_reg[20]_i_1_n_7 ;
  wire \r28_svga_prescaler_reg[4]_i_1_n_0 ;
  wire \r28_svga_prescaler_reg[4]_i_1_n_1 ;
  wire \r28_svga_prescaler_reg[4]_i_1_n_2 ;
  wire \r28_svga_prescaler_reg[4]_i_1_n_3 ;
  wire \r28_svga_prescaler_reg[4]_i_1_n_4 ;
  wire \r28_svga_prescaler_reg[4]_i_1_n_5 ;
  wire \r28_svga_prescaler_reg[4]_i_1_n_6 ;
  wire \r28_svga_prescaler_reg[4]_i_1_n_7 ;
  wire \r28_svga_prescaler_reg[8]_i_1_n_0 ;
  wire \r28_svga_prescaler_reg[8]_i_1_n_1 ;
  wire \r28_svga_prescaler_reg[8]_i_1_n_2 ;
  wire \r28_svga_prescaler_reg[8]_i_1_n_3 ;
  wire \r28_svga_prescaler_reg[8]_i_1_n_4 ;
  wire \r28_svga_prescaler_reg[8]_i_1_n_5 ;
  wire \r28_svga_prescaler_reg[8]_i_1_n_6 ;
  wire \r28_svga_prescaler_reg[8]_i_1_n_7 ;
  wire \r28_svga_prescaler_reg_n_0_[0] ;
  wire \r28_svga_prescaler_reg_n_0_[1] ;
  wire \r28_svga_prescaler_reg_n_0_[2] ;
  wire \r28_svga_prescaler_reg_n_0_[3] ;
  wire \r28_svga_prescaler_reg_n_0_[4] ;
  wire \r28_svga_prescaler_reg_n_0_[5] ;
  wire \r28_svga_prescaler_reg_n_0_[6] ;
  wire [2:0]r4_State2;
  wire [2:1]r4_State3;
  wire [2:1]r4_State4;
  wire [2:1]r4_State5;
  wire [2:0]r4_UartState;
  wire \r4_blue[3]_i_1_n_0 ;
  wire \r4_green[3]_i_1_n_0 ;
  wire \r4_red[3]_i_1_n_0 ;
  wire [7:0]r8_tx_byte;
  wire \r8_tx_byte[4]_i_2_n_0 ;
  wire \r8_tx_byte[5]_i_2_n_0 ;
  wire \r8_tx_byte[7]_i_3_n_0 ;
  wire \r8_tx_byte[7]_i_4_n_0 ;
  wire \r8_tx_byte[7]_i_5_n_0 ;
  wire r8_tx_byte_0;
  wire r8_tx_bytes_count;
  wire r8_tx_bytes_count0;
  wire \r8_tx_bytes_count[7]_i_4_n_0 ;
  wire [7:0]r8_tx_bytes_count_reg;
  wire r_btn0;
  wire r_btn02_reg_srl2_n_0;
  wire r_btn0_reg_0;
  wire r_btn1;
  wire r_btn11;
  wire r_btn12;
  wire r_btn2;
  wire r_btn21;
  wire r_btn22;
  wire r_btn3;
  wire r_btn31;
  wire r_btn32;
  wire r_led2_i_1_n_0;
  wire r_led3_i_1_n_0;
  wire r_led4_i_1_n_0;
  wire r_led5_i_1_n_0;
  wire r_tx_start_i_1_n_0;
  wire [3:3]\NLW_r28_svga_prescaler_reg[20]_i_1_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hEFAE)) 
    \FSM_onehot_r4_State2[1]_i_1 
       (.I0(r4_State2[0]),
        .I1(r4_State2[2]),
        .I2(r_btn0),
        .I3(r4_State2[1]),
        .O(\FSM_onehot_r4_State2[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFE40)) 
    \FSM_onehot_r4_State2[2]_i_1 
       (.I0(r4_State2[0]),
        .I1(r4_State2[2]),
        .I2(r_btn0),
        .I3(r4_State2[1]),
        .O(\FSM_onehot_r4_State2[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:001,iSTATE0:010,iSTATE1:100," *) 
  FDRE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_r4_State2_reg[0] 
       (.C(iw_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(r4_State2[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:001,iSTATE0:010,iSTATE1:100," *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_r4_State2_reg[1] 
       (.C(iw_clk),
        .CE(1'b1),
        .D(\FSM_onehot_r4_State2[1]_i_1_n_0 ),
        .Q(r4_State2[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:001,iSTATE0:010,iSTATE1:100," *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_r4_State2_reg[2] 
       (.C(iw_clk),
        .CE(1'b1),
        .D(\FSM_onehot_r4_State2[2]_i_1_n_0 ),
        .Q(r4_State2[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hEFCE)) 
    \FSM_onehot_r4_State3[1]_i_1 
       (.I0(r4_State3[2]),
        .I1(r4_State2[0]),
        .I2(r_btn1),
        .I3(r4_State3[1]),
        .O(\FSM_onehot_r4_State3[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hFE20)) 
    \FSM_onehot_r4_State3[2]_i_1 
       (.I0(r4_State3[2]),
        .I1(r4_State2[0]),
        .I2(r_btn1),
        .I3(r4_State3[1]),
        .O(\FSM_onehot_r4_State3[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:001,iSTATE0:010,iSTATE1:100," *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_r4_State3_reg[1] 
       (.C(iw_clk),
        .CE(1'b1),
        .D(\FSM_onehot_r4_State3[1]_i_1_n_0 ),
        .Q(r4_State3[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:001,iSTATE0:010,iSTATE1:100," *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_r4_State3_reg[2] 
       (.C(iw_clk),
        .CE(1'b1),
        .D(\FSM_onehot_r4_State3[2]_i_1_n_0 ),
        .Q(r4_State3[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hEFCE)) 
    \FSM_onehot_r4_State4[1]_i_1 
       (.I0(r4_State4[2]),
        .I1(r4_State2[0]),
        .I2(r_btn2),
        .I3(r4_State4[1]),
        .O(\FSM_onehot_r4_State4[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hFE20)) 
    \FSM_onehot_r4_State4[2]_i_1 
       (.I0(r4_State4[2]),
        .I1(r4_State2[0]),
        .I2(r_btn2),
        .I3(r4_State4[1]),
        .O(\FSM_onehot_r4_State4[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:001,iSTATE0:010,iSTATE1:100," *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_r4_State4_reg[1] 
       (.C(iw_clk),
        .CE(1'b1),
        .D(\FSM_onehot_r4_State4[1]_i_1_n_0 ),
        .Q(r4_State4[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:001,iSTATE0:010,iSTATE1:100," *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_r4_State4_reg[2] 
       (.C(iw_clk),
        .CE(1'b1),
        .D(\FSM_onehot_r4_State4[2]_i_1_n_0 ),
        .Q(r4_State4[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hEFCE)) 
    \FSM_onehot_r4_State5[1]_i_1 
       (.I0(r4_State5[2]),
        .I1(r4_State2[0]),
        .I2(r_btn3),
        .I3(r4_State5[1]),
        .O(\FSM_onehot_r4_State5[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFE20)) 
    \FSM_onehot_r4_State5[2]_i_1 
       (.I0(r4_State5[2]),
        .I1(r4_State2[0]),
        .I2(r_btn3),
        .I3(r4_State5[1]),
        .O(\FSM_onehot_r4_State5[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:001,iSTATE0:010,iSTATE1:100," *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_r4_State5_reg[1] 
       (.C(iw_clk),
        .CE(1'b1),
        .D(\FSM_onehot_r4_State5[1]_i_1_n_0 ),
        .Q(r4_State5[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:001,iSTATE0:010,iSTATE1:100," *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_r4_State5_reg[2] 
       (.C(iw_clk),
        .CE(1'b1),
        .D(\FSM_onehot_r4_State5[2]_i_1_n_0 ),
        .Q(r4_State5[2]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0B0B3B3B033B033B)) 
    \FSM_sequential_r4_UartState[0]_i_1 
       (.I0(\FSM_sequential_r4_UartState[1]_i_2_n_0 ),
        .I1(r4_UartState[1]),
        .I2(r4_UartState[0]),
        .I3(iw_btn0),
        .I4(iw_tx_done),
        .I5(r4_UartState[2]),
        .O(\FSM_sequential_r4_UartState[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h383808083C083C08)) 
    \FSM_sequential_r4_UartState[1]_i_1 
       (.I0(\FSM_sequential_r4_UartState[1]_i_2_n_0 ),
        .I1(r4_UartState[1]),
        .I2(r4_UartState[0]),
        .I3(iw_btn0),
        .I4(iw_tx_done),
        .I5(r4_UartState[2]),
        .O(\FSM_sequential_r4_UartState[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000002FFFFFFFF)) 
    \FSM_sequential_r4_UartState[1]_i_2 
       (.I0(\FSM_sequential_r4_UartState[1]_i_3_n_0 ),
        .I1(r8_tx_bytes_count_reg[7]),
        .I2(r8_tx_bytes_count_reg[6]),
        .I3(r8_tx_bytes_count_reg[5]),
        .I4(r8_tx_bytes_count_reg[4]),
        .I5(r4_UartState[2]),
        .O(\FSM_sequential_r4_UartState[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \FSM_sequential_r4_UartState[1]_i_3 
       (.I0(r8_tx_bytes_count_reg[0]),
        .I1(r8_tx_bytes_count_reg[1]),
        .I2(r8_tx_bytes_count_reg[2]),
        .I3(r8_tx_bytes_count_reg[3]),
        .O(\FSM_sequential_r4_UartState[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \FSM_sequential_r4_UartState[2]_i_1 
       (.I0(r4_UartState[1]),
        .I1(r4_UartState[0]),
        .I2(r4_UartState[2]),
        .O(\FSM_sequential_r4_UartState[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:000,iSTATE0:001,iSTATE1:010,iSTATE2:011,iSTATE3:101,iSTATE4:110,iSTATE5:100,iSTATE6:111" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_sequential_r4_UartState_reg[0] 
       (.C(iw_clk),
        .CE(1'b1),
        .D(\FSM_sequential_r4_UartState[0]_i_1_n_0 ),
        .Q(r4_UartState[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:000,iSTATE0:001,iSTATE1:010,iSTATE2:011,iSTATE3:101,iSTATE4:110,iSTATE5:100,iSTATE6:111" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_sequential_r4_UartState_reg[1] 
       (.C(iw_clk),
        .CE(1'b1),
        .D(\FSM_sequential_r4_UartState[1]_i_1_n_0 ),
        .Q(r4_UartState[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:000,iSTATE0:001,iSTATE1:010,iSTATE2:011,iSTATE3:101,iSTATE4:110,iSTATE5:100,iSTATE6:111" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_sequential_r4_UartState_reg[2] 
       (.C(iw_clk),
        .CE(1'b1),
        .D(\FSM_sequential_r4_UartState[2]_i_1_n_0 ),
        .Q(r4_UartState[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h00BF)) 
    \r11_x_pos[1]_i_1 
       (.I0(\r11_x_pos[9]_i_7_n_0 ),
        .I1(Q[7]),
        .I2(Q[8]),
        .I3(Q[0]),
        .O(\r11_x_pos[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00BFBF00)) 
    \r11_x_pos[2]_i_1 
       (.I0(\r11_x_pos[9]_i_7_n_0 ),
        .I1(Q[7]),
        .I2(Q[8]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\r11_x_pos[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF00000000BFBFBF)) 
    \r11_x_pos[3]_i_1 
       (.I0(\r11_x_pos[9]_i_7_n_0 ),
        .I1(Q[7]),
        .I2(Q[8]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(\r11_x_pos[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h07F8)) 
    \r11_x_pos[4]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h5777A888)) 
    \r11_x_pos[5]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[4]),
        .O(p_1_in[5]));
  LUT4 #(
    .INIT(16'h2000)) 
    \r11_x_pos[6]_i_1 
       (.I0(\r11_x_pos[9]_i_1_n_0 ),
        .I1(\r11_x_pos[9]_i_7_n_0 ),
        .I2(Q[7]),
        .I3(Q[8]),
        .O(r11_x_pos));
  LUT6 #(
    .INIT(64'h07FFFFFFF8000000)) 
    \r11_x_pos[6]_i_2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(p_1_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hBF0000BF)) 
    \r11_x_pos[7]_i_1 
       (.I0(\r11_x_pos[9]_i_7_n_0 ),
        .I1(Q[7]),
        .I2(Q[8]),
        .I3(\r11_x_pos[9]_i_8_n_0 ),
        .I4(Q[6]),
        .O(\r11_x_pos[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h8C8C338C)) 
    \r11_x_pos[8]_i_1 
       (.I0(\r11_x_pos[9]_i_7_n_0 ),
        .I1(Q[7]),
        .I2(Q[8]),
        .I3(Q[6]),
        .I4(\r11_x_pos[9]_i_8_n_0 ),
        .O(\r11_x_pos[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAAA8)) 
    \r11_x_pos[9]_i_1 
       (.I0(\r11_x_pos[9]_i_3_n_0 ),
        .I1(r28_svga_prescaler_reg[13]),
        .I2(r28_svga_prescaler_reg[14]),
        .I3(\r11_x_pos[9]_i_4_n_0 ),
        .I4(\r11_x_pos[9]_i_5_n_0 ),
        .I5(\r11_x_pos[9]_i_6_n_0 ),
        .O(\r11_x_pos[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hB03CB0B0)) 
    \r11_x_pos[9]_i_2 
       (.I0(\r11_x_pos[9]_i_7_n_0 ),
        .I1(Q[7]),
        .I2(Q[8]),
        .I3(\r11_x_pos[9]_i_8_n_0 ),
        .I4(Q[6]),
        .O(\r11_x_pos[9]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \r11_x_pos[9]_i_3 
       (.I0(r28_svga_prescaler_reg[20]),
        .I1(r28_svga_prescaler_reg[23]),
        .I2(r28_svga_prescaler_reg[19]),
        .I3(r28_svga_prescaler_reg[15]),
        .O(\r11_x_pos[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEAEAEAAA00000000)) 
    \r11_x_pos[9]_i_4 
       (.I0(r28_svga_prescaler_reg[11]),
        .I1(r28_svga_prescaler_reg[10]),
        .I2(r28_svga_prescaler_reg[9]),
        .I3(r28_svga_prescaler_reg[7]),
        .I4(r28_svga_prescaler_reg[8]),
        .I5(r28_svga_prescaler_reg[12]),
        .O(\r11_x_pos[9]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hE0000000)) 
    \r11_x_pos[9]_i_5 
       (.I0(r28_svga_prescaler_reg[17]),
        .I1(r28_svga_prescaler_reg[18]),
        .I2(r28_svga_prescaler_reg[19]),
        .I3(r28_svga_prescaler_reg[23]),
        .I4(r28_svga_prescaler_reg[20]),
        .O(\r11_x_pos[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFEEE0000EEEE0000)) 
    \r11_x_pos[9]_i_6 
       (.I0(r28_svga_prescaler_reg[22]),
        .I1(r28_svga_prescaler_reg[21]),
        .I2(r28_svga_prescaler_reg[16]),
        .I3(r28_svga_prescaler_reg[19]),
        .I4(r28_svga_prescaler_reg[23]),
        .I5(r28_svga_prescaler_reg[20]),
        .O(\r11_x_pos[9]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0001000100010101)) 
    \r11_x_pos[9]_i_7 
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[6]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(\r11_x_pos[9]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h07FFFFFFFFFFFFFF)) 
    \r11_x_pos[9]_i_8 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(\r11_x_pos[9]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r11_x_pos_reg[1] 
       (.C(iw_clk),
        .CE(\r11_x_pos[9]_i_1_n_0 ),
        .D(\r11_x_pos[1]_i_1_n_0 ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r11_x_pos_reg[2] 
       (.C(iw_clk),
        .CE(\r11_x_pos[9]_i_1_n_0 ),
        .D(\r11_x_pos[2]_i_1_n_0 ),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r11_x_pos_reg[3] 
       (.C(iw_clk),
        .CE(\r11_x_pos[9]_i_1_n_0 ),
        .D(\r11_x_pos[3]_i_1_n_0 ),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r11_x_pos_reg[4] 
       (.C(iw_clk),
        .CE(\r11_x_pos[9]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(Q[3]),
        .R(r11_x_pos));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r11_x_pos_reg[5] 
       (.C(iw_clk),
        .CE(\r11_x_pos[9]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(Q[4]),
        .R(r11_x_pos));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r11_x_pos_reg[6] 
       (.C(iw_clk),
        .CE(\r11_x_pos[9]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(Q[5]),
        .R(r11_x_pos));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r11_x_pos_reg[7] 
       (.C(iw_clk),
        .CE(\r11_x_pos[9]_i_1_n_0 ),
        .D(\r11_x_pos[7]_i_1_n_0 ),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r11_x_pos_reg[8] 
       (.C(iw_clk),
        .CE(\r11_x_pos[9]_i_1_n_0 ),
        .D(\r11_x_pos[8]_i_1_n_0 ),
        .Q(Q[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r11_x_pos_reg[9] 
       (.C(iw_clk),
        .CE(\r11_x_pos[9]_i_1_n_0 ),
        .D(\r11_x_pos[9]_i_2_n_0 ),
        .Q(Q[8]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \r11_y_pos[1]_i_1 
       (.I0(ow11_y_pos[0]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r11_y_pos[2]_i_1 
       (.I0(ow11_y_pos[0]),
        .I1(ow11_y_pos[1]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h87)) 
    \r11_y_pos[3]_i_1 
       (.I0(ow11_y_pos[1]),
        .I1(ow11_y_pos[0]),
        .I2(ow11_y_pos[2]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h07F8)) 
    \r11_y_pos[4]_i_1 
       (.I0(ow11_y_pos[0]),
        .I1(ow11_y_pos[1]),
        .I2(ow11_y_pos[2]),
        .I3(ow11_y_pos[3]),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h5777A888)) 
    \r11_y_pos[5]_i_1 
       (.I0(ow11_y_pos[3]),
        .I1(ow11_y_pos[2]),
        .I2(ow11_y_pos[1]),
        .I3(ow11_y_pos[0]),
        .I4(ow11_y_pos[4]),
        .O(p_0_in[5]));
  LUT6 #(
    .INIT(64'h07FFFFFFF8000000)) 
    \r11_y_pos[6]_i_1 
       (.I0(ow11_y_pos[0]),
        .I1(ow11_y_pos[1]),
        .I2(ow11_y_pos[2]),
        .I3(ow11_y_pos[3]),
        .I4(ow11_y_pos[4]),
        .I5(ow11_y_pos[5]),
        .O(p_0_in[6]));
  LUT2 #(
    .INIT(4'h9)) 
    \r11_y_pos[7]_i_1 
       (.I0(\r11_y_pos[9]_i_5_n_0 ),
        .I1(ow11_y_pos[6]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \r11_y_pos[8]_i_1 
       (.I0(ow11_y_pos[6]),
        .I1(\r11_y_pos[9]_i_5_n_0 ),
        .I2(ow11_y_pos[7]),
        .O(p_0_in[8]));
  LUT6 #(
    .INIT(64'h0F0000000E000000)) 
    \r11_y_pos[9]_i_1 
       (.I0(ow11_y_pos[7]),
        .I1(ow11_y_pos[6]),
        .I2(\r11_y_pos[9]_i_3_n_0 ),
        .I3(\r11_x_pos[9]_i_1_n_0 ),
        .I4(ow11_y_pos[8]),
        .I5(\r11_y_pos[9]_i_4_n_0 ),
        .O(r11_y_pos));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \r11_y_pos[9]_i_2 
       (.I0(ow11_y_pos[7]),
        .I1(\r11_y_pos[9]_i_5_n_0 ),
        .I2(ow11_y_pos[6]),
        .I3(ow11_y_pos[8]),
        .O(p_0_in[9]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \r11_y_pos[9]_i_3 
       (.I0(Q[8]),
        .I1(Q[7]),
        .I2(\r11_x_pos[9]_i_7_n_0 ),
        .O(\r11_y_pos[9]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFEEE0000)) 
    \r11_y_pos[9]_i_4 
       (.I0(ow11_y_pos[3]),
        .I1(ow11_y_pos[4]),
        .I2(ow11_y_pos[1]),
        .I3(ow11_y_pos[2]),
        .I4(ow11_y_pos[5]),
        .O(\r11_y_pos[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h07FFFFFFFFFFFFFF)) 
    \r11_y_pos[9]_i_5 
       (.I0(ow11_y_pos[0]),
        .I1(ow11_y_pos[1]),
        .I2(ow11_y_pos[2]),
        .I3(ow11_y_pos[3]),
        .I4(ow11_y_pos[4]),
        .I5(ow11_y_pos[5]),
        .O(\r11_y_pos[9]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r11_y_pos_reg[1] 
       (.C(iw_clk),
        .CE(r11_x_pos),
        .D(p_0_in[1]),
        .Q(ow11_y_pos[0]),
        .R(r11_y_pos));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r11_y_pos_reg[2] 
       (.C(iw_clk),
        .CE(r11_x_pos),
        .D(p_0_in[2]),
        .Q(ow11_y_pos[1]),
        .R(r11_y_pos));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r11_y_pos_reg[3] 
       (.C(iw_clk),
        .CE(r11_x_pos),
        .D(p_0_in[3]),
        .Q(ow11_y_pos[2]),
        .R(r11_y_pos));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r11_y_pos_reg[4] 
       (.C(iw_clk),
        .CE(r11_x_pos),
        .D(p_0_in[4]),
        .Q(ow11_y_pos[3]),
        .R(r11_y_pos));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r11_y_pos_reg[5] 
       (.C(iw_clk),
        .CE(r11_x_pos),
        .D(p_0_in[5]),
        .Q(ow11_y_pos[4]),
        .R(r11_y_pos));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r11_y_pos_reg[6] 
       (.C(iw_clk),
        .CE(r11_x_pos),
        .D(p_0_in[6]),
        .Q(ow11_y_pos[5]),
        .R(r11_y_pos));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r11_y_pos_reg[7] 
       (.C(iw_clk),
        .CE(r11_x_pos),
        .D(p_0_in[7]),
        .Q(ow11_y_pos[6]),
        .R(r11_y_pos));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r11_y_pos_reg[8] 
       (.C(iw_clk),
        .CE(r11_x_pos),
        .D(p_0_in[8]),
        .Q(ow11_y_pos[7]),
        .R(r11_y_pos));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r11_y_pos_reg[9] 
       (.C(iw_clk),
        .CE(r11_x_pos),
        .D(p_0_in[9]),
        .Q(ow11_y_pos[8]),
        .R(r11_y_pos));
  LUT1 #(
    .INIT(2'h1)) 
    \r28_svga_prescaler[0]_i_2 
       (.I0(\r28_svga_prescaler_reg_n_0_[0] ),
        .O(\r28_svga_prescaler[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r28_svga_prescaler_reg[0] 
       (.C(iw_clk),
        .CE(1'b1),
        .D(\r28_svga_prescaler_reg[0]_i_1_n_7 ),
        .Q(\r28_svga_prescaler_reg_n_0_[0] ),
        .R(\r11_x_pos[9]_i_1_n_0 ));
  CARRY4 \r28_svga_prescaler_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\r28_svga_prescaler_reg[0]_i_1_n_0 ,\r28_svga_prescaler_reg[0]_i_1_n_1 ,\r28_svga_prescaler_reg[0]_i_1_n_2 ,\r28_svga_prescaler_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\r28_svga_prescaler_reg[0]_i_1_n_4 ,\r28_svga_prescaler_reg[0]_i_1_n_5 ,\r28_svga_prescaler_reg[0]_i_1_n_6 ,\r28_svga_prescaler_reg[0]_i_1_n_7 }),
        .S({\r28_svga_prescaler_reg_n_0_[3] ,\r28_svga_prescaler_reg_n_0_[2] ,\r28_svga_prescaler_reg_n_0_[1] ,\r28_svga_prescaler[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r28_svga_prescaler_reg[10] 
       (.C(iw_clk),
        .CE(1'b1),
        .D(\r28_svga_prescaler_reg[8]_i_1_n_5 ),
        .Q(r28_svga_prescaler_reg[10]),
        .R(\r11_x_pos[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r28_svga_prescaler_reg[11] 
       (.C(iw_clk),
        .CE(1'b1),
        .D(\r28_svga_prescaler_reg[8]_i_1_n_4 ),
        .Q(r28_svga_prescaler_reg[11]),
        .R(\r11_x_pos[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r28_svga_prescaler_reg[12] 
       (.C(iw_clk),
        .CE(1'b1),
        .D(\r28_svga_prescaler_reg[12]_i_1_n_7 ),
        .Q(r28_svga_prescaler_reg[12]),
        .R(\r11_x_pos[9]_i_1_n_0 ));
  CARRY4 \r28_svga_prescaler_reg[12]_i_1 
       (.CI(\r28_svga_prescaler_reg[8]_i_1_n_0 ),
        .CO({\r28_svga_prescaler_reg[12]_i_1_n_0 ,\r28_svga_prescaler_reg[12]_i_1_n_1 ,\r28_svga_prescaler_reg[12]_i_1_n_2 ,\r28_svga_prescaler_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r28_svga_prescaler_reg[12]_i_1_n_4 ,\r28_svga_prescaler_reg[12]_i_1_n_5 ,\r28_svga_prescaler_reg[12]_i_1_n_6 ,\r28_svga_prescaler_reg[12]_i_1_n_7 }),
        .S(r28_svga_prescaler_reg[15:12]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r28_svga_prescaler_reg[13] 
       (.C(iw_clk),
        .CE(1'b1),
        .D(\r28_svga_prescaler_reg[12]_i_1_n_6 ),
        .Q(r28_svga_prescaler_reg[13]),
        .R(\r11_x_pos[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r28_svga_prescaler_reg[14] 
       (.C(iw_clk),
        .CE(1'b1),
        .D(\r28_svga_prescaler_reg[12]_i_1_n_5 ),
        .Q(r28_svga_prescaler_reg[14]),
        .R(\r11_x_pos[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r28_svga_prescaler_reg[15] 
       (.C(iw_clk),
        .CE(1'b1),
        .D(\r28_svga_prescaler_reg[12]_i_1_n_4 ),
        .Q(r28_svga_prescaler_reg[15]),
        .R(\r11_x_pos[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r28_svga_prescaler_reg[16] 
       (.C(iw_clk),
        .CE(1'b1),
        .D(\r28_svga_prescaler_reg[16]_i_1_n_7 ),
        .Q(r28_svga_prescaler_reg[16]),
        .R(\r11_x_pos[9]_i_1_n_0 ));
  CARRY4 \r28_svga_prescaler_reg[16]_i_1 
       (.CI(\r28_svga_prescaler_reg[12]_i_1_n_0 ),
        .CO({\r28_svga_prescaler_reg[16]_i_1_n_0 ,\r28_svga_prescaler_reg[16]_i_1_n_1 ,\r28_svga_prescaler_reg[16]_i_1_n_2 ,\r28_svga_prescaler_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r28_svga_prescaler_reg[16]_i_1_n_4 ,\r28_svga_prescaler_reg[16]_i_1_n_5 ,\r28_svga_prescaler_reg[16]_i_1_n_6 ,\r28_svga_prescaler_reg[16]_i_1_n_7 }),
        .S(r28_svga_prescaler_reg[19:16]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r28_svga_prescaler_reg[17] 
       (.C(iw_clk),
        .CE(1'b1),
        .D(\r28_svga_prescaler_reg[16]_i_1_n_6 ),
        .Q(r28_svga_prescaler_reg[17]),
        .R(\r11_x_pos[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r28_svga_prescaler_reg[18] 
       (.C(iw_clk),
        .CE(1'b1),
        .D(\r28_svga_prescaler_reg[16]_i_1_n_5 ),
        .Q(r28_svga_prescaler_reg[18]),
        .R(\r11_x_pos[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r28_svga_prescaler_reg[19] 
       (.C(iw_clk),
        .CE(1'b1),
        .D(\r28_svga_prescaler_reg[16]_i_1_n_4 ),
        .Q(r28_svga_prescaler_reg[19]),
        .R(\r11_x_pos[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r28_svga_prescaler_reg[1] 
       (.C(iw_clk),
        .CE(1'b1),
        .D(\r28_svga_prescaler_reg[0]_i_1_n_6 ),
        .Q(\r28_svga_prescaler_reg_n_0_[1] ),
        .R(\r11_x_pos[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r28_svga_prescaler_reg[20] 
       (.C(iw_clk),
        .CE(1'b1),
        .D(\r28_svga_prescaler_reg[20]_i_1_n_7 ),
        .Q(r28_svga_prescaler_reg[20]),
        .R(\r11_x_pos[9]_i_1_n_0 ));
  CARRY4 \r28_svga_prescaler_reg[20]_i_1 
       (.CI(\r28_svga_prescaler_reg[16]_i_1_n_0 ),
        .CO({\NLW_r28_svga_prescaler_reg[20]_i_1_CO_UNCONNECTED [3],\r28_svga_prescaler_reg[20]_i_1_n_1 ,\r28_svga_prescaler_reg[20]_i_1_n_2 ,\r28_svga_prescaler_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r28_svga_prescaler_reg[20]_i_1_n_4 ,\r28_svga_prescaler_reg[20]_i_1_n_5 ,\r28_svga_prescaler_reg[20]_i_1_n_6 ,\r28_svga_prescaler_reg[20]_i_1_n_7 }),
        .S(r28_svga_prescaler_reg[23:20]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r28_svga_prescaler_reg[21] 
       (.C(iw_clk),
        .CE(1'b1),
        .D(\r28_svga_prescaler_reg[20]_i_1_n_6 ),
        .Q(r28_svga_prescaler_reg[21]),
        .R(\r11_x_pos[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r28_svga_prescaler_reg[22] 
       (.C(iw_clk),
        .CE(1'b1),
        .D(\r28_svga_prescaler_reg[20]_i_1_n_5 ),
        .Q(r28_svga_prescaler_reg[22]),
        .R(\r11_x_pos[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r28_svga_prescaler_reg[23] 
       (.C(iw_clk),
        .CE(1'b1),
        .D(\r28_svga_prescaler_reg[20]_i_1_n_4 ),
        .Q(r28_svga_prescaler_reg[23]),
        .R(\r11_x_pos[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r28_svga_prescaler_reg[2] 
       (.C(iw_clk),
        .CE(1'b1),
        .D(\r28_svga_prescaler_reg[0]_i_1_n_5 ),
        .Q(\r28_svga_prescaler_reg_n_0_[2] ),
        .R(\r11_x_pos[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r28_svga_prescaler_reg[3] 
       (.C(iw_clk),
        .CE(1'b1),
        .D(\r28_svga_prescaler_reg[0]_i_1_n_4 ),
        .Q(\r28_svga_prescaler_reg_n_0_[3] ),
        .R(\r11_x_pos[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r28_svga_prescaler_reg[4] 
       (.C(iw_clk),
        .CE(1'b1),
        .D(\r28_svga_prescaler_reg[4]_i_1_n_7 ),
        .Q(\r28_svga_prescaler_reg_n_0_[4] ),
        .R(\r11_x_pos[9]_i_1_n_0 ));
  CARRY4 \r28_svga_prescaler_reg[4]_i_1 
       (.CI(\r28_svga_prescaler_reg[0]_i_1_n_0 ),
        .CO({\r28_svga_prescaler_reg[4]_i_1_n_0 ,\r28_svga_prescaler_reg[4]_i_1_n_1 ,\r28_svga_prescaler_reg[4]_i_1_n_2 ,\r28_svga_prescaler_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r28_svga_prescaler_reg[4]_i_1_n_4 ,\r28_svga_prescaler_reg[4]_i_1_n_5 ,\r28_svga_prescaler_reg[4]_i_1_n_6 ,\r28_svga_prescaler_reg[4]_i_1_n_7 }),
        .S({r28_svga_prescaler_reg[7],\r28_svga_prescaler_reg_n_0_[6] ,\r28_svga_prescaler_reg_n_0_[5] ,\r28_svga_prescaler_reg_n_0_[4] }));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r28_svga_prescaler_reg[5] 
       (.C(iw_clk),
        .CE(1'b1),
        .D(\r28_svga_prescaler_reg[4]_i_1_n_6 ),
        .Q(\r28_svga_prescaler_reg_n_0_[5] ),
        .R(\r11_x_pos[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r28_svga_prescaler_reg[6] 
       (.C(iw_clk),
        .CE(1'b1),
        .D(\r28_svga_prescaler_reg[4]_i_1_n_5 ),
        .Q(\r28_svga_prescaler_reg_n_0_[6] ),
        .R(\r11_x_pos[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r28_svga_prescaler_reg[7] 
       (.C(iw_clk),
        .CE(1'b1),
        .D(\r28_svga_prescaler_reg[4]_i_1_n_4 ),
        .Q(r28_svga_prescaler_reg[7]),
        .R(\r11_x_pos[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r28_svga_prescaler_reg[8] 
       (.C(iw_clk),
        .CE(1'b1),
        .D(\r28_svga_prescaler_reg[8]_i_1_n_7 ),
        .Q(r28_svga_prescaler_reg[8]),
        .R(\r11_x_pos[9]_i_1_n_0 ));
  CARRY4 \r28_svga_prescaler_reg[8]_i_1 
       (.CI(\r28_svga_prescaler_reg[4]_i_1_n_0 ),
        .CO({\r28_svga_prescaler_reg[8]_i_1_n_0 ,\r28_svga_prescaler_reg[8]_i_1_n_1 ,\r28_svga_prescaler_reg[8]_i_1_n_2 ,\r28_svga_prescaler_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r28_svga_prescaler_reg[8]_i_1_n_4 ,\r28_svga_prescaler_reg[8]_i_1_n_5 ,\r28_svga_prescaler_reg[8]_i_1_n_6 ,\r28_svga_prescaler_reg[8]_i_1_n_7 }),
        .S(r28_svga_prescaler_reg[11:8]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r28_svga_prescaler_reg[9] 
       (.C(iw_clk),
        .CE(1'b1),
        .D(\r28_svga_prescaler_reg[8]_i_1_n_6 ),
        .Q(r28_svga_prescaler_reg[9]),
        .R(\r11_x_pos[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \r4_blue[0]_i_1 
       (.I0(ow4_blue[0]),
        .O(p_0_in__3[0]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r4_blue[1]_i_1 
       (.I0(ow4_blue[0]),
        .I1(ow4_blue[1]),
        .O(p_0_in__3[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \r4_blue[2]_i_1 
       (.I0(ow4_blue[2]),
        .I1(ow4_blue[0]),
        .I2(ow4_blue[1]),
        .O(p_0_in__3[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \r4_blue[3]_i_1 
       (.I0(r4_State5[1]),
        .I1(r_btn3),
        .O(\r4_blue[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \r4_blue[3]_i_2 
       (.I0(ow4_blue[2]),
        .I1(ow4_blue[0]),
        .I2(ow4_blue[1]),
        .I3(ow4_blue[3]),
        .O(p_0_in__3[3]));
  FDRE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \r4_blue_reg[0] 
       (.C(iw_clk),
        .CE(\r4_blue[3]_i_1_n_0 ),
        .D(p_0_in__3[0]),
        .Q(ow4_blue[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \r4_blue_reg[1] 
       (.C(iw_clk),
        .CE(\r4_blue[3]_i_1_n_0 ),
        .D(p_0_in__3[1]),
        .Q(ow4_blue[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \r4_blue_reg[2] 
       (.C(iw_clk),
        .CE(\r4_blue[3]_i_1_n_0 ),
        .D(p_0_in__3[2]),
        .Q(ow4_blue[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \r4_blue_reg[3] 
       (.C(iw_clk),
        .CE(\r4_blue[3]_i_1_n_0 ),
        .D(p_0_in__3[3]),
        .Q(ow4_blue[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \r4_green[0]_i_1 
       (.I0(ow4_green[0]),
        .O(p_0_in__2[0]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r4_green[1]_i_1 
       (.I0(ow4_green[0]),
        .I1(ow4_green[1]),
        .O(p_0_in__2[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \r4_green[2]_i_1 
       (.I0(ow4_green[2]),
        .I1(ow4_green[0]),
        .I2(ow4_green[1]),
        .O(p_0_in__2[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \r4_green[3]_i_1 
       (.I0(r4_State4[1]),
        .I1(r_btn2),
        .O(\r4_green[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \r4_green[3]_i_2 
       (.I0(ow4_green[2]),
        .I1(ow4_green[0]),
        .I2(ow4_green[1]),
        .I3(ow4_green[3]),
        .O(p_0_in__2[3]));
  FDRE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \r4_green_reg[0] 
       (.C(iw_clk),
        .CE(\r4_green[3]_i_1_n_0 ),
        .D(p_0_in__2[0]),
        .Q(ow4_green[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \r4_green_reg[1] 
       (.C(iw_clk),
        .CE(\r4_green[3]_i_1_n_0 ),
        .D(p_0_in__2[1]),
        .Q(ow4_green[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \r4_green_reg[2] 
       (.C(iw_clk),
        .CE(\r4_green[3]_i_1_n_0 ),
        .D(p_0_in__2[2]),
        .Q(ow4_green[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \r4_green_reg[3] 
       (.C(iw_clk),
        .CE(\r4_green[3]_i_1_n_0 ),
        .D(p_0_in__2[3]),
        .Q(ow4_green[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \r4_red[0]_i_1 
       (.I0(ow4_red[0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r4_red[1]_i_1 
       (.I0(ow4_red[0]),
        .I1(ow4_red[1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \r4_red[2]_i_1 
       (.I0(ow4_red[2]),
        .I1(ow4_red[0]),
        .I2(ow4_red[1]),
        .O(p_0_in__1[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \r4_red[3]_i_1 
       (.I0(r4_State3[1]),
        .I1(r_btn1),
        .O(\r4_red[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \r4_red[3]_i_2 
       (.I0(ow4_red[2]),
        .I1(ow4_red[0]),
        .I2(ow4_red[1]),
        .I3(ow4_red[3]),
        .O(p_0_in__1[3]));
  FDRE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \r4_red_reg[0] 
       (.C(iw_clk),
        .CE(\r4_red[3]_i_1_n_0 ),
        .D(p_0_in__1[0]),
        .Q(ow4_red[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \r4_red_reg[1] 
       (.C(iw_clk),
        .CE(\r4_red[3]_i_1_n_0 ),
        .D(p_0_in__1[1]),
        .Q(ow4_red[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \r4_red_reg[2] 
       (.C(iw_clk),
        .CE(\r4_red[3]_i_1_n_0 ),
        .D(p_0_in__1[2]),
        .Q(ow4_red[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \r4_red_reg[3] 
       (.C(iw_clk),
        .CE(\r4_red[3]_i_1_n_0 ),
        .D(p_0_in__1[3]),
        .Q(ow4_red[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r8_tx_byte[0]_i_1 
       (.I0(r4_UartState[2]),
        .I1(ow8_tx_byte[0]),
        .O(r8_tx_byte[0]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h48)) 
    \r8_tx_byte[1]_i_1 
       (.I0(ow8_tx_byte[0]),
        .I1(r4_UartState[2]),
        .I2(ow8_tx_byte[1]),
        .O(r8_tx_byte[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \r8_tx_byte[2]_i_1 
       (.I0(ow8_tx_byte[1]),
        .I1(ow8_tx_byte[0]),
        .I2(r4_UartState[2]),
        .I3(ow8_tx_byte[2]),
        .O(r8_tx_byte[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \r8_tx_byte[3]_i_1 
       (.I0(ow8_tx_byte[2]),
        .I1(ow8_tx_byte[0]),
        .I2(ow8_tx_byte[1]),
        .I3(r4_UartState[2]),
        .I4(ow8_tx_byte[3]),
        .O(r8_tx_byte[3]));
  LUT4 #(
    .INIT(16'hEBAA)) 
    \r8_tx_byte[4]_i_1 
       (.I0(r4_UartState[0]),
        .I1(\r8_tx_byte[4]_i_2_n_0 ),
        .I2(ow8_tx_byte[4]),
        .I3(r4_UartState[1]),
        .O(r8_tx_byte[4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \r8_tx_byte[4]_i_2 
       (.I0(ow8_tx_byte[3]),
        .I1(ow8_tx_byte[1]),
        .I2(ow8_tx_byte[0]),
        .I3(ow8_tx_byte[2]),
        .O(\r8_tx_byte[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hBEAA)) 
    \r8_tx_byte[5]_i_1 
       (.I0(r4_UartState[0]),
        .I1(\r8_tx_byte[5]_i_2_n_0 ),
        .I2(ow8_tx_byte[5]),
        .I3(r4_UartState[1]),
        .O(r8_tx_byte[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \r8_tx_byte[5]_i_2 
       (.I0(ow8_tx_byte[4]),
        .I1(ow8_tx_byte[2]),
        .I2(ow8_tx_byte[0]),
        .I3(ow8_tx_byte[1]),
        .I4(ow8_tx_byte[3]),
        .O(\r8_tx_byte[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h84)) 
    \r8_tx_byte[6]_i_1 
       (.I0(\r8_tx_byte[7]_i_5_n_0 ),
        .I1(r4_UartState[2]),
        .I2(ow8_tx_byte[6]),
        .O(r8_tx_byte[6]));
  LUT5 #(
    .INIT(32'h0F00E00F)) 
    \r8_tx_byte[7]_i_1 
       (.I0(\r8_tx_byte[7]_i_3_n_0 ),
        .I1(\r8_tx_byte[7]_i_4_n_0 ),
        .I2(r4_UartState[2]),
        .I3(r4_UartState[1]),
        .I4(r4_UartState[0]),
        .O(r8_tx_byte_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hB040)) 
    \r8_tx_byte[7]_i_2 
       (.I0(\r8_tx_byte[7]_i_5_n_0 ),
        .I1(ow8_tx_byte[6]),
        .I2(r4_UartState[2]),
        .I3(ow8_tx_byte[7]),
        .O(r8_tx_byte[7]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \r8_tx_byte[7]_i_3 
       (.I0(r8_tx_bytes_count_reg[0]),
        .I1(r8_tx_bytes_count_reg[7]),
        .I2(r8_tx_bytes_count_reg[2]),
        .I3(r8_tx_bytes_count_reg[5]),
        .O(\r8_tx_byte[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    \r8_tx_byte[7]_i_4 
       (.I0(r8_tx_bytes_count_reg[4]),
        .I1(r8_tx_bytes_count_reg[6]),
        .I2(r8_tx_bytes_count_reg[3]),
        .I3(r8_tx_bytes_count_reg[1]),
        .O(\r8_tx_byte[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \r8_tx_byte[7]_i_5 
       (.I0(ow8_tx_byte[5]),
        .I1(ow8_tx_byte[3]),
        .I2(ow8_tx_byte[1]),
        .I3(ow8_tx_byte[0]),
        .I4(ow8_tx_byte[2]),
        .I5(ow8_tx_byte[4]),
        .O(\r8_tx_byte[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r8_tx_byte_reg[0] 
       (.C(iw_clk),
        .CE(r8_tx_byte_0),
        .D(r8_tx_byte[0]),
        .Q(ow8_tx_byte[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r8_tx_byte_reg[1] 
       (.C(iw_clk),
        .CE(r8_tx_byte_0),
        .D(r8_tx_byte[1]),
        .Q(ow8_tx_byte[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r8_tx_byte_reg[2] 
       (.C(iw_clk),
        .CE(r8_tx_byte_0),
        .D(r8_tx_byte[2]),
        .Q(ow8_tx_byte[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r8_tx_byte_reg[3] 
       (.C(iw_clk),
        .CE(r8_tx_byte_0),
        .D(r8_tx_byte[3]),
        .Q(ow8_tx_byte[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r8_tx_byte_reg[4] 
       (.C(iw_clk),
        .CE(r8_tx_byte_0),
        .D(r8_tx_byte[4]),
        .Q(ow8_tx_byte[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r8_tx_byte_reg[5] 
       (.C(iw_clk),
        .CE(r8_tx_byte_0),
        .D(r8_tx_byte[5]),
        .Q(ow8_tx_byte[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r8_tx_byte_reg[6] 
       (.C(iw_clk),
        .CE(r8_tx_byte_0),
        .D(r8_tx_byte[6]),
        .Q(ow8_tx_byte[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r8_tx_byte_reg[7] 
       (.C(iw_clk),
        .CE(r8_tx_byte_0),
        .D(r8_tx_byte[7]),
        .Q(ow8_tx_byte[7]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \r8_tx_bytes_count[0]_i_1 
       (.I0(r8_tx_bytes_count_reg[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r8_tx_bytes_count[1]_i_1 
       (.I0(r8_tx_bytes_count_reg[0]),
        .I1(r8_tx_bytes_count_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \r8_tx_bytes_count[2]_i_1 
       (.I0(r8_tx_bytes_count_reg[0]),
        .I1(r8_tx_bytes_count_reg[1]),
        .I2(r8_tx_bytes_count_reg[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \r8_tx_bytes_count[3]_i_1 
       (.I0(r8_tx_bytes_count_reg[2]),
        .I1(r8_tx_bytes_count_reg[1]),
        .I2(r8_tx_bytes_count_reg[0]),
        .I3(r8_tx_bytes_count_reg[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \r8_tx_bytes_count[4]_i_1 
       (.I0(r8_tx_bytes_count_reg[3]),
        .I1(r8_tx_bytes_count_reg[0]),
        .I2(r8_tx_bytes_count_reg[1]),
        .I3(r8_tx_bytes_count_reg[2]),
        .I4(r8_tx_bytes_count_reg[4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \r8_tx_bytes_count[5]_i_1 
       (.I0(r8_tx_bytes_count_reg[2]),
        .I1(r8_tx_bytes_count_reg[1]),
        .I2(r8_tx_bytes_count_reg[0]),
        .I3(r8_tx_bytes_count_reg[3]),
        .I4(r8_tx_bytes_count_reg[4]),
        .I5(r8_tx_bytes_count_reg[5]),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \r8_tx_bytes_count[6]_i_1 
       (.I0(\r8_tx_bytes_count[7]_i_4_n_0 ),
        .I1(r8_tx_bytes_count_reg[6]),
        .O(p_0_in__0[6]));
  LUT3 #(
    .INIT(8'h01)) 
    \r8_tx_bytes_count[7]_i_1 
       (.I0(r4_UartState[1]),
        .I1(r4_UartState[0]),
        .I2(r4_UartState[2]),
        .O(r8_tx_bytes_count0));
  LUT4 #(
    .INIT(16'h0800)) 
    \r8_tx_bytes_count[7]_i_2 
       (.I0(r4_UartState[0]),
        .I1(iw_tx_done),
        .I2(r4_UartState[1]),
        .I3(r4_UartState[2]),
        .O(r8_tx_bytes_count));
  LUT3 #(
    .INIT(8'hD2)) 
    \r8_tx_bytes_count[7]_i_3 
       (.I0(r8_tx_bytes_count_reg[6]),
        .I1(\r8_tx_bytes_count[7]_i_4_n_0 ),
        .I2(r8_tx_bytes_count_reg[7]),
        .O(p_0_in__0[7]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \r8_tx_bytes_count[7]_i_4 
       (.I0(r8_tx_bytes_count_reg[5]),
        .I1(r8_tx_bytes_count_reg[2]),
        .I2(r8_tx_bytes_count_reg[1]),
        .I3(r8_tx_bytes_count_reg[0]),
        .I4(r8_tx_bytes_count_reg[3]),
        .I5(r8_tx_bytes_count_reg[4]),
        .O(\r8_tx_bytes_count[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r8_tx_bytes_count_reg[0] 
       (.C(iw_clk),
        .CE(r8_tx_bytes_count),
        .D(p_0_in__0[0]),
        .Q(r8_tx_bytes_count_reg[0]),
        .R(r8_tx_bytes_count0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r8_tx_bytes_count_reg[1] 
       (.C(iw_clk),
        .CE(r8_tx_bytes_count),
        .D(p_0_in__0[1]),
        .Q(r8_tx_bytes_count_reg[1]),
        .R(r8_tx_bytes_count0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r8_tx_bytes_count_reg[2] 
       (.C(iw_clk),
        .CE(r8_tx_bytes_count),
        .D(p_0_in__0[2]),
        .Q(r8_tx_bytes_count_reg[2]),
        .R(r8_tx_bytes_count0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r8_tx_bytes_count_reg[3] 
       (.C(iw_clk),
        .CE(r8_tx_bytes_count),
        .D(p_0_in__0[3]),
        .Q(r8_tx_bytes_count_reg[3]),
        .R(r8_tx_bytes_count0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r8_tx_bytes_count_reg[4] 
       (.C(iw_clk),
        .CE(r8_tx_bytes_count),
        .D(p_0_in__0[4]),
        .Q(r8_tx_bytes_count_reg[4]),
        .R(r8_tx_bytes_count0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r8_tx_bytes_count_reg[5] 
       (.C(iw_clk),
        .CE(r8_tx_bytes_count),
        .D(p_0_in__0[5]),
        .Q(r8_tx_bytes_count_reg[5]),
        .R(r8_tx_bytes_count0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r8_tx_bytes_count_reg[6] 
       (.C(iw_clk),
        .CE(r8_tx_bytes_count),
        .D(p_0_in__0[6]),
        .Q(r8_tx_bytes_count_reg[6]),
        .R(r8_tx_bytes_count0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \r8_tx_bytes_count_reg[7] 
       (.C(iw_clk),
        .CE(r8_tx_bytes_count),
        .D(p_0_in__0[7]),
        .Q(r8_tx_bytes_count_reg[7]),
        .R(r8_tx_bytes_count0));
  (* OPT_MODIFIED = "MLO" *) 
  (* srl_name = "\inst/r_btn02_reg_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b1)) 
    r_btn02_reg_srl2
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(r_btn0_reg_0),
        .D(iw_btn0),
        .Q(r_btn02_reg_srl2_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    r_btn0_reg
       (.C(iw_clk),
        .CE(1'b1),
        .D(r_btn02_reg_srl2_n_0),
        .Q(r_btn0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    r_btn11_reg
       (.C(iw_clk),
        .CE(1'b1),
        .D(iw_btn1),
        .Q(r_btn11),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    r_btn12_reg
       (.C(iw_clk),
        .CE(1'b1),
        .D(r_btn11),
        .Q(r_btn12),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    r_btn1_reg
       (.C(iw_clk),
        .CE(1'b1),
        .D(r_btn12),
        .Q(r_btn1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    r_btn21_reg
       (.C(iw_clk),
        .CE(1'b1),
        .D(iw_btn2),
        .Q(r_btn21),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    r_btn22_reg
       (.C(iw_clk),
        .CE(1'b1),
        .D(r_btn21),
        .Q(r_btn22),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    r_btn2_reg
       (.C(iw_clk),
        .CE(1'b1),
        .D(r_btn22),
        .Q(r_btn2),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    r_btn31_reg
       (.C(iw_clk),
        .CE(1'b1),
        .D(iw_btn3),
        .Q(r_btn31),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    r_btn32_reg
       (.C(iw_clk),
        .CE(1'b1),
        .D(r_btn31),
        .Q(r_btn32),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    r_btn3_reg
       (.C(iw_clk),
        .CE(1'b1),
        .D(r_btn32),
        .Q(r_btn3),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h15E0)) 
    r_led2_i_1
       (.I0(r4_State2[0]),
        .I1(r_btn0),
        .I2(r4_State2[1]),
        .I3(ow_led2),
        .O(r_led2_i_1_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    r_led2_reg
       (.C(iw_clk),
        .CE(1'b1),
        .D(r_led2_i_1_n_0),
        .Q(ow_led2),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h07A8)) 
    r_led3_i_1
       (.I0(r4_State3[1]),
        .I1(r_btn1),
        .I2(r4_State2[0]),
        .I3(ow_led3),
        .O(r_led3_i_1_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    r_led3_reg
       (.C(iw_clk),
        .CE(1'b1),
        .D(r_led3_i_1_n_0),
        .Q(ow_led3),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h07A8)) 
    r_led4_i_1
       (.I0(r4_State4[1]),
        .I1(r_btn2),
        .I2(r4_State2[0]),
        .I3(ow_led4),
        .O(r_led4_i_1_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    r_led4_reg
       (.C(iw_clk),
        .CE(1'b1),
        .D(r_led4_i_1_n_0),
        .Q(ow_led4),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h07A8)) 
    r_led5_i_1
       (.I0(r4_State5[1]),
        .I1(r_btn3),
        .I2(r4_State2[0]),
        .I3(ow_led5),
        .O(r_led5_i_1_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    r_led5_reg
       (.C(iw_clk),
        .CE(1'b1),
        .D(r_led5_i_1_n_0),
        .Q(ow_led5),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hA2AC)) 
    r_tx_start_i_1
       (.I0(ow_tx_start),
        .I1(r4_UartState[2]),
        .I2(r4_UartState[1]),
        .I3(r4_UartState[0]),
        .O(r_tx_start_i_1_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    r_tx_start_reg
       (.C(iw_clk),
        .CE(1'b1),
        .D(r_tx_start_i_1_n_0),
        .Q(ow_tx_start),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
