// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Mon Mar 30 16:41:33 2026
// Host        : LRNV-INSTALL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/vaje/Downloads/pev_project/uvod.gen/sources_1/bd/uvod/ip/uvod_uart_tx_byte_0_0/uvod_uart_tx_byte_0_0_sim_netlist.v
// Design      : uvod_uart_tx_byte_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s25csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "uvod_uart_tx_byte_0_0,uart_tx_byte,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "uart_tx_byte,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module uvod_uart_tx_byte_0_0
   (iw_clk,
    iw_tx_start,
    iw8_tx_byte,
    ow_tx_pin,
    ow_tx_done);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 iw_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME iw_clk, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0" *) input iw_clk;
  input iw_tx_start;
  input [7:0]iw8_tx_byte;
  output ow_tx_pin;
  output ow_tx_done;

  wire [7:0]iw8_tx_byte;
  wire iw_clk;
  wire iw_tx_start;
  wire ow_tx_done;
  wire ow_tx_pin;

  uvod_uart_tx_byte_0_0_uart_tx_byte inst
       (.iw8_tx_byte(iw8_tx_byte),
        .iw_clk(iw_clk),
        .iw_tx_start(iw_tx_start),
        .ow_tx_done(ow_tx_done),
        .ow_tx_pin(ow_tx_pin));
endmodule

(* ORIG_REF_NAME = "uart_tx_byte" *) 
module uvod_uart_tx_byte_0_0_uart_tx_byte
   (ow_tx_pin,
    ow_tx_done,
    iw_tx_start,
    iw_clk,
    iw8_tx_byte);
  output ow_tx_pin;
  output ow_tx_done;
  input iw_tx_start;
  input iw_clk;
  input [7:0]iw8_tx_byte;

  wire \FSM_sequential_r3_State[0]_i_1_n_0 ;
  wire \FSM_sequential_r3_State[1]_i_1_n_0 ;
  wire \FSM_sequential_r3_State[2]_i_1_n_0 ;
  wire \FSM_sequential_r3_State[2]_i_2_n_0 ;
  wire \FSM_sequential_r3_State[2]_i_3_n_0 ;
  wire \FSM_sequential_r3_State[2]_i_4_n_0 ;
  wire [7:0]iw8_tx_byte;
  wire iw_clk;
  wire iw_tx_start;
  wire ow_tx_done;
  wire ow_tx_pin;
  wire [3:0]p_0_in;
  wire r10_tx_buffer;
  wire \r10_tx_buffer_reg_n_0_[1] ;
  wire \r10_tx_buffer_reg_n_0_[2] ;
  wire \r10_tx_buffer_reg_n_0_[3] ;
  wire \r10_tx_buffer_reg_n_0_[4] ;
  wire \r10_tx_buffer_reg_n_0_[5] ;
  wire \r10_tx_buffer_reg_n_0_[6] ;
  wire \r10_tx_buffer_reg_n_0_[7] ;
  wire \r10_tx_buffer_reg_n_0_[8] ;
  wire \r10_tx_buffer_reg_n_0_[9] ;
  wire [2:0]r3_State;
  wire r4_bit_index;
  wire [3:0]r4_bit_index_reg;
  wire r9_clock_div;
  wire \r9_clock_div[0]_i_1_n_0 ;
  wire \r9_clock_div[1]_i_1_n_0 ;
  wire \r9_clock_div[2]_i_1_n_0 ;
  wire \r9_clock_div[3]_i_1_n_0 ;
  wire \r9_clock_div[4]_i_1_n_0 ;
  wire \r9_clock_div[5]_i_1_n_0 ;
  wire \r9_clock_div[5]_i_2_n_0 ;
  wire \r9_clock_div[6]_i_1_n_0 ;
  wire \r9_clock_div[7]_i_2_n_0 ;
  wire \r9_clock_div[7]_i_3_n_0 ;
  wire [7:1]r9_clock_div_reg;
  wire \r9_clock_div_reg_n_0_[0] ;
  wire r_tx_done_i_1_n_0;
  wire r_tx_pin0;
  wire r_tx_pin_i_1_n_0;
  wire r_tx_pin_i_3_n_0;
  wire r_tx_pin_i_4_n_0;
  wire r_tx_pin_i_5_n_0;
  wire r_tx_pin_i_6_n_0;
  wire r_tx_pin_reg_i_2_n_0;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hABFB5555)) 
    \FSM_sequential_r3_State[0]_i_1 
       (.I0(r3_State[2]),
        .I1(iw_tx_start),
        .I2(r3_State[1]),
        .I3(\FSM_sequential_r3_State[2]_i_3_n_0 ),
        .I4(r3_State[0]),
        .O(\FSM_sequential_r3_State[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEE30FF30FF00FF00)) 
    \FSM_sequential_r3_State[1]_i_1 
       (.I0(\FSM_sequential_r3_State[2]_i_2_n_0 ),
        .I1(r3_State[2]),
        .I2(iw_tx_start),
        .I3(r3_State[1]),
        .I4(\FSM_sequential_r3_State[2]_i_3_n_0 ),
        .I5(r3_State[0]),
        .O(\FSM_sequential_r3_State[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hDCCCC0C0)) 
    \FSM_sequential_r3_State[2]_i_1 
       (.I0(\FSM_sequential_r3_State[2]_i_2_n_0 ),
        .I1(r3_State[2]),
        .I2(r3_State[1]),
        .I3(\FSM_sequential_r3_State[2]_i_3_n_0 ),
        .I4(r3_State[0]),
        .O(\FSM_sequential_r3_State[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h01FF)) 
    \FSM_sequential_r3_State[2]_i_2 
       (.I0(r4_bit_index_reg[0]),
        .I1(r4_bit_index_reg[1]),
        .I2(r4_bit_index_reg[2]),
        .I3(r4_bit_index_reg[3]),
        .O(\FSM_sequential_r3_State[2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \FSM_sequential_r3_State[2]_i_3 
       (.I0(r9_clock_div_reg[7]),
        .I1(r9_clock_div_reg[6]),
        .I2(\FSM_sequential_r3_State[2]_i_4_n_0 ),
        .O(\FSM_sequential_r3_State[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00010101)) 
    \FSM_sequential_r3_State[2]_i_4 
       (.I0(r9_clock_div_reg[4]),
        .I1(r9_clock_div_reg[5]),
        .I2(r9_clock_div_reg[3]),
        .I3(r9_clock_div_reg[2]),
        .I4(r9_clock_div_reg[1]),
        .O(\FSM_sequential_r3_State[2]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:000,iSTATE0:001,iSTATE1:011,iSTATE2:100,iSTATE3:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_r3_State_reg[0] 
       (.C(iw_clk),
        .CE(1'b1),
        .D(\FSM_sequential_r3_State[0]_i_1_n_0 ),
        .Q(r3_State[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:000,iSTATE0:001,iSTATE1:011,iSTATE2:100,iSTATE3:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_r3_State_reg[1] 
       (.C(iw_clk),
        .CE(1'b1),
        .D(\FSM_sequential_r3_State[1]_i_1_n_0 ),
        .Q(r3_State[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:000,iSTATE0:001,iSTATE1:011,iSTATE2:100,iSTATE3:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_r3_State_reg[2] 
       (.C(iw_clk),
        .CE(1'b1),
        .D(\FSM_sequential_r3_State[2]_i_1_n_0 ),
        .Q(r3_State[2]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h01)) 
    \r10_tx_buffer[9]_i_1 
       (.I0(r3_State[1]),
        .I1(r3_State[0]),
        .I2(r3_State[2]),
        .O(r_tx_pin0));
  LUT4 #(
    .INIT(16'h1000)) 
    \r10_tx_buffer[9]_i_2 
       (.I0(r3_State[1]),
        .I1(r3_State[2]),
        .I2(r3_State[0]),
        .I3(iw_tx_start),
        .O(r10_tx_buffer));
  FDRE #(
    .INIT(1'b0)) 
    \r10_tx_buffer_reg[1] 
       (.C(iw_clk),
        .CE(r10_tx_buffer),
        .D(iw8_tx_byte[0]),
        .Q(\r10_tx_buffer_reg_n_0_[1] ),
        .R(r_tx_pin0));
  FDRE #(
    .INIT(1'b0)) 
    \r10_tx_buffer_reg[2] 
       (.C(iw_clk),
        .CE(r10_tx_buffer),
        .D(iw8_tx_byte[1]),
        .Q(\r10_tx_buffer_reg_n_0_[2] ),
        .R(r_tx_pin0));
  FDRE #(
    .INIT(1'b0)) 
    \r10_tx_buffer_reg[3] 
       (.C(iw_clk),
        .CE(r10_tx_buffer),
        .D(iw8_tx_byte[2]),
        .Q(\r10_tx_buffer_reg_n_0_[3] ),
        .R(r_tx_pin0));
  FDRE #(
    .INIT(1'b0)) 
    \r10_tx_buffer_reg[4] 
       (.C(iw_clk),
        .CE(r10_tx_buffer),
        .D(iw8_tx_byte[3]),
        .Q(\r10_tx_buffer_reg_n_0_[4] ),
        .R(r_tx_pin0));
  FDRE #(
    .INIT(1'b0)) 
    \r10_tx_buffer_reg[5] 
       (.C(iw_clk),
        .CE(r10_tx_buffer),
        .D(iw8_tx_byte[4]),
        .Q(\r10_tx_buffer_reg_n_0_[5] ),
        .R(r_tx_pin0));
  FDRE #(
    .INIT(1'b0)) 
    \r10_tx_buffer_reg[6] 
       (.C(iw_clk),
        .CE(r10_tx_buffer),
        .D(iw8_tx_byte[5]),
        .Q(\r10_tx_buffer_reg_n_0_[6] ),
        .R(r_tx_pin0));
  FDRE #(
    .INIT(1'b0)) 
    \r10_tx_buffer_reg[7] 
       (.C(iw_clk),
        .CE(r10_tx_buffer),
        .D(iw8_tx_byte[6]),
        .Q(\r10_tx_buffer_reg_n_0_[7] ),
        .R(r_tx_pin0));
  FDRE #(
    .INIT(1'b0)) 
    \r10_tx_buffer_reg[8] 
       (.C(iw_clk),
        .CE(r10_tx_buffer),
        .D(iw8_tx_byte[7]),
        .Q(\r10_tx_buffer_reg_n_0_[8] ),
        .R(r_tx_pin0));
  FDRE #(
    .INIT(1'b0)) 
    \r10_tx_buffer_reg[9] 
       (.C(iw_clk),
        .CE(r10_tx_buffer),
        .D(1'b1),
        .Q(\r10_tx_buffer_reg_n_0_[9] ),
        .R(r_tx_pin0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \r4_bit_index[0]_i_1 
       (.I0(r4_bit_index_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r4_bit_index[1]_i_1 
       (.I0(r4_bit_index_reg[0]),
        .I1(r4_bit_index_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \r4_bit_index[2]_i_1 
       (.I0(r4_bit_index_reg[0]),
        .I1(r4_bit_index_reg[1]),
        .I2(r4_bit_index_reg[2]),
        .O(p_0_in[2]));
  LUT5 #(
    .INIT(32'h08000000)) 
    \r4_bit_index[3]_i_1 
       (.I0(\FSM_sequential_r3_State[2]_i_3_n_0 ),
        .I1(\FSM_sequential_r3_State[2]_i_2_n_0 ),
        .I2(r3_State[2]),
        .I3(r3_State[0]),
        .I4(r3_State[1]),
        .O(r4_bit_index));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \r4_bit_index[3]_i_2 
       (.I0(r4_bit_index_reg[1]),
        .I1(r4_bit_index_reg[0]),
        .I2(r4_bit_index_reg[2]),
        .I3(r4_bit_index_reg[3]),
        .O(p_0_in[3]));
  FDRE #(
    .INIT(1'b0)) 
    \r4_bit_index_reg[0] 
       (.C(iw_clk),
        .CE(r4_bit_index),
        .D(p_0_in[0]),
        .Q(r4_bit_index_reg[0]),
        .R(r_tx_pin0));
  FDRE #(
    .INIT(1'b0)) 
    \r4_bit_index_reg[1] 
       (.C(iw_clk),
        .CE(r4_bit_index),
        .D(p_0_in[1]),
        .Q(r4_bit_index_reg[1]),
        .R(r_tx_pin0));
  FDRE #(
    .INIT(1'b0)) 
    \r4_bit_index_reg[2] 
       (.C(iw_clk),
        .CE(r4_bit_index),
        .D(p_0_in[2]),
        .Q(r4_bit_index_reg[2]),
        .R(r_tx_pin0));
  FDRE #(
    .INIT(1'b0)) 
    \r4_bit_index_reg[3] 
       (.C(iw_clk),
        .CE(r4_bit_index),
        .D(p_0_in[3]),
        .Q(r4_bit_index_reg[3]),
        .R(r_tx_pin0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \r9_clock_div[0]_i_1 
       (.I0(\r9_clock_div_reg_n_0_[0] ),
        .I1(\FSM_sequential_r3_State[2]_i_3_n_0 ),
        .O(\r9_clock_div[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \r9_clock_div[1]_i_1 
       (.I0(r9_clock_div_reg[1]),
        .I1(\r9_clock_div_reg_n_0_[0] ),
        .I2(\FSM_sequential_r3_State[2]_i_3_n_0 ),
        .O(\r9_clock_div[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \r9_clock_div[2]_i_1 
       (.I0(r9_clock_div_reg[2]),
        .I1(r9_clock_div_reg[1]),
        .I2(\r9_clock_div_reg_n_0_[0] ),
        .I3(\FSM_sequential_r3_State[2]_i_3_n_0 ),
        .O(\r9_clock_div[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \r9_clock_div[3]_i_1 
       (.I0(r9_clock_div_reg[3]),
        .I1(r9_clock_div_reg[2]),
        .I2(\r9_clock_div_reg_n_0_[0] ),
        .I3(r9_clock_div_reg[1]),
        .I4(\FSM_sequential_r3_State[2]_i_3_n_0 ),
        .O(\r9_clock_div[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000006AAAAAAA)) 
    \r9_clock_div[4]_i_1 
       (.I0(r9_clock_div_reg[4]),
        .I1(r9_clock_div_reg[3]),
        .I2(r9_clock_div_reg[1]),
        .I3(\r9_clock_div_reg_n_0_[0] ),
        .I4(r9_clock_div_reg[2]),
        .I5(\FSM_sequential_r3_State[2]_i_3_n_0 ),
        .O(\r9_clock_div[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h06)) 
    \r9_clock_div[5]_i_1 
       (.I0(r9_clock_div_reg[5]),
        .I1(\r9_clock_div[5]_i_2_n_0 ),
        .I2(\FSM_sequential_r3_State[2]_i_3_n_0 ),
        .O(\r9_clock_div[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \r9_clock_div[5]_i_2 
       (.I0(r9_clock_div_reg[4]),
        .I1(r9_clock_div_reg[2]),
        .I2(\r9_clock_div_reg_n_0_[0] ),
        .I3(r9_clock_div_reg[1]),
        .I4(r9_clock_div_reg[3]),
        .O(\r9_clock_div[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \r9_clock_div[6]_i_1 
       (.I0(r9_clock_div_reg[6]),
        .I1(\r9_clock_div[7]_i_3_n_0 ),
        .I2(\FSM_sequential_r3_State[2]_i_3_n_0 ),
        .O(\r9_clock_div[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \r9_clock_div[7]_i_1 
       (.I0(r3_State[2]),
        .I1(r3_State[0]),
        .I2(r3_State[1]),
        .O(r9_clock_div));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \r9_clock_div[7]_i_2 
       (.I0(r9_clock_div_reg[7]),
        .I1(r9_clock_div_reg[6]),
        .I2(\r9_clock_div[7]_i_3_n_0 ),
        .I3(\FSM_sequential_r3_State[2]_i_3_n_0 ),
        .O(\r9_clock_div[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \r9_clock_div[7]_i_3 
       (.I0(r9_clock_div_reg[5]),
        .I1(r9_clock_div_reg[3]),
        .I2(r9_clock_div_reg[1]),
        .I3(\r9_clock_div_reg_n_0_[0] ),
        .I4(r9_clock_div_reg[2]),
        .I5(r9_clock_div_reg[4]),
        .O(\r9_clock_div[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r9_clock_div_reg[0] 
       (.C(iw_clk),
        .CE(r9_clock_div),
        .D(\r9_clock_div[0]_i_1_n_0 ),
        .Q(\r9_clock_div_reg_n_0_[0] ),
        .R(r_tx_pin0));
  FDRE #(
    .INIT(1'b0)) 
    \r9_clock_div_reg[1] 
       (.C(iw_clk),
        .CE(r9_clock_div),
        .D(\r9_clock_div[1]_i_1_n_0 ),
        .Q(r9_clock_div_reg[1]),
        .R(r_tx_pin0));
  FDRE #(
    .INIT(1'b0)) 
    \r9_clock_div_reg[2] 
       (.C(iw_clk),
        .CE(r9_clock_div),
        .D(\r9_clock_div[2]_i_1_n_0 ),
        .Q(r9_clock_div_reg[2]),
        .R(r_tx_pin0));
  FDRE #(
    .INIT(1'b0)) 
    \r9_clock_div_reg[3] 
       (.C(iw_clk),
        .CE(r9_clock_div),
        .D(\r9_clock_div[3]_i_1_n_0 ),
        .Q(r9_clock_div_reg[3]),
        .R(r_tx_pin0));
  FDRE #(
    .INIT(1'b0)) 
    \r9_clock_div_reg[4] 
       (.C(iw_clk),
        .CE(r9_clock_div),
        .D(\r9_clock_div[4]_i_1_n_0 ),
        .Q(r9_clock_div_reg[4]),
        .R(r_tx_pin0));
  FDRE #(
    .INIT(1'b0)) 
    \r9_clock_div_reg[5] 
       (.C(iw_clk),
        .CE(r9_clock_div),
        .D(\r9_clock_div[5]_i_1_n_0 ),
        .Q(r9_clock_div_reg[5]),
        .R(r_tx_pin0));
  FDRE #(
    .INIT(1'b0)) 
    \r9_clock_div_reg[6] 
       (.C(iw_clk),
        .CE(r9_clock_div),
        .D(\r9_clock_div[6]_i_1_n_0 ),
        .Q(r9_clock_div_reg[6]),
        .R(r_tx_pin0));
  FDRE #(
    .INIT(1'b0)) 
    \r9_clock_div_reg[7] 
       (.C(iw_clk),
        .CE(r9_clock_div),
        .D(\r9_clock_div[7]_i_2_n_0 ),
        .Q(r9_clock_div_reg[7]),
        .R(r_tx_pin0));
  LUT4 #(
    .INIT(16'hFE02)) 
    r_tx_done_i_1
       (.I0(r3_State[2]),
        .I1(r3_State[0]),
        .I2(r3_State[1]),
        .I3(ow_tx_done),
        .O(r_tx_done_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    r_tx_done_reg
       (.C(iw_clk),
        .CE(1'b1),
        .D(r_tx_done_i_1_n_0),
        .Q(ow_tx_done),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAAFC0CAAAAFFFF)) 
    r_tx_pin_i_1
       (.I0(ow_tx_pin),
        .I1(r_tx_pin_reg_i_2_n_0),
        .I2(r4_bit_index_reg[3]),
        .I3(r_tx_pin_i_3_n_0),
        .I4(r_tx_pin_i_4_n_0),
        .I5(r3_State[1]),
        .O(r_tx_pin_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    r_tx_pin_i_3
       (.I0(\r10_tx_buffer_reg_n_0_[9] ),
        .I1(r4_bit_index_reg[0]),
        .I2(\r10_tx_buffer_reg_n_0_[8] ),
        .O(r_tx_pin_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    r_tx_pin_i_4
       (.I0(r3_State[2]),
        .I1(r3_State[0]),
        .O(r_tx_pin_i_4_n_0));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    r_tx_pin_i_5
       (.I0(\r10_tx_buffer_reg_n_0_[3] ),
        .I1(\r10_tx_buffer_reg_n_0_[2] ),
        .I2(r4_bit_index_reg[1]),
        .I3(r4_bit_index_reg[0]),
        .I4(\r10_tx_buffer_reg_n_0_[1] ),
        .O(r_tx_pin_i_5_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    r_tx_pin_i_6
       (.I0(\r10_tx_buffer_reg_n_0_[7] ),
        .I1(\r10_tx_buffer_reg_n_0_[6] ),
        .I2(r4_bit_index_reg[1]),
        .I3(\r10_tx_buffer_reg_n_0_[5] ),
        .I4(r4_bit_index_reg[0]),
        .I5(\r10_tx_buffer_reg_n_0_[4] ),
        .O(r_tx_pin_i_6_n_0));
  FDRE #(
    .INIT(1'b1)) 
    r_tx_pin_reg
       (.C(iw_clk),
        .CE(1'b1),
        .D(r_tx_pin_i_1_n_0),
        .Q(ow_tx_pin),
        .R(1'b0));
  MUXF7 r_tx_pin_reg_i_2
       (.I0(r_tx_pin_i_5_n_0),
        .I1(r_tx_pin_i_6_n_0),
        .O(r_tx_pin_reg_i_2_n_0),
        .S(r4_bit_index_reg[2]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
