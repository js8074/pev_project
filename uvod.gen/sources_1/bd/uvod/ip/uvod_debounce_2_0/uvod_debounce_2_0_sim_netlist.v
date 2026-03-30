// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Mon Mar 30 16:41:34 2026
// Host        : LRNV-INSTALL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/vaje/Downloads/pev_project/uvod.gen/sources_1/bd/uvod/ip/uvod_debounce_2_0/uvod_debounce_2_0_sim_netlist.v
// Design      : uvod_debounce_2_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s25csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "uvod_debounce_2_0,debounce,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "debounce,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module uvod_debounce_2_0
   (iw_clk,
    iw_button,
    ow_pressed);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 iw_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME iw_clk, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0" *) input iw_clk;
  input iw_button;
  output ow_pressed;

  wire iw_button;
  wire iw_clk;
  wire ow_pressed;

  uvod_debounce_2_0_debounce inst
       (.iw_button(iw_button),
        .iw_clk(iw_clk),
        .r_pressed_reg_0(ow_pressed));
endmodule

(* ORIG_REF_NAME = "debounce" *) 
module uvod_debounce_2_0_debounce
   (r_pressed_reg_0,
    iw_clk,
    iw_button);
  output r_pressed_reg_0;
  input iw_clk;
  input iw_button;

  wire iw_button;
  wire iw_clk;
  wire [20:0]r23_counter;
  wire [20:1]r23_counter0;
  wire r23_counter0_carry__0_n_0;
  wire r23_counter0_carry__0_n_1;
  wire r23_counter0_carry__0_n_2;
  wire r23_counter0_carry__0_n_3;
  wire r23_counter0_carry__1_n_0;
  wire r23_counter0_carry__1_n_1;
  wire r23_counter0_carry__1_n_2;
  wire r23_counter0_carry__1_n_3;
  wire r23_counter0_carry__2_n_0;
  wire r23_counter0_carry__2_n_1;
  wire r23_counter0_carry__2_n_2;
  wire r23_counter0_carry__2_n_3;
  wire r23_counter0_carry__3_n_1;
  wire r23_counter0_carry__3_n_2;
  wire r23_counter0_carry__3_n_3;
  wire r23_counter0_carry_n_0;
  wire r23_counter0_carry_n_1;
  wire r23_counter0_carry_n_2;
  wire r23_counter0_carry_n_3;
  wire \r23_counter[20]_i_2_n_0 ;
  wire \r23_counter_reg_n_0_[0] ;
  wire \r23_counter_reg_n_0_[10] ;
  wire \r23_counter_reg_n_0_[11] ;
  wire \r23_counter_reg_n_0_[12] ;
  wire \r23_counter_reg_n_0_[13] ;
  wire \r23_counter_reg_n_0_[14] ;
  wire \r23_counter_reg_n_0_[15] ;
  wire \r23_counter_reg_n_0_[16] ;
  wire \r23_counter_reg_n_0_[17] ;
  wire \r23_counter_reg_n_0_[18] ;
  wire \r23_counter_reg_n_0_[19] ;
  wire \r23_counter_reg_n_0_[1] ;
  wire \r23_counter_reg_n_0_[20] ;
  wire \r23_counter_reg_n_0_[2] ;
  wire \r23_counter_reg_n_0_[3] ;
  wire \r23_counter_reg_n_0_[4] ;
  wire \r23_counter_reg_n_0_[5] ;
  wire \r23_counter_reg_n_0_[6] ;
  wire \r23_counter_reg_n_0_[7] ;
  wire \r23_counter_reg_n_0_[8] ;
  wire \r23_counter_reg_n_0_[9] ;
  wire r_pressed_i_1_n_0;
  wire r_pressed_i_2_n_0;
  wire r_pressed_i_3_n_0;
  wire r_pressed_i_4_n_0;
  wire r_pressed_reg_0;
  wire [3:3]NLW_r23_counter0_carry__3_CO_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r23_counter0_carry
       (.CI(1'b0),
        .CO({r23_counter0_carry_n_0,r23_counter0_carry_n_1,r23_counter0_carry_n_2,r23_counter0_carry_n_3}),
        .CYINIT(\r23_counter_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(r23_counter0[4:1]),
        .S({\r23_counter_reg_n_0_[4] ,\r23_counter_reg_n_0_[3] ,\r23_counter_reg_n_0_[2] ,\r23_counter_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r23_counter0_carry__0
       (.CI(r23_counter0_carry_n_0),
        .CO({r23_counter0_carry__0_n_0,r23_counter0_carry__0_n_1,r23_counter0_carry__0_n_2,r23_counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(r23_counter0[8:5]),
        .S({\r23_counter_reg_n_0_[8] ,\r23_counter_reg_n_0_[7] ,\r23_counter_reg_n_0_[6] ,\r23_counter_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r23_counter0_carry__1
       (.CI(r23_counter0_carry__0_n_0),
        .CO({r23_counter0_carry__1_n_0,r23_counter0_carry__1_n_1,r23_counter0_carry__1_n_2,r23_counter0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(r23_counter0[12:9]),
        .S({\r23_counter_reg_n_0_[12] ,\r23_counter_reg_n_0_[11] ,\r23_counter_reg_n_0_[10] ,\r23_counter_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r23_counter0_carry__2
       (.CI(r23_counter0_carry__1_n_0),
        .CO({r23_counter0_carry__2_n_0,r23_counter0_carry__2_n_1,r23_counter0_carry__2_n_2,r23_counter0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(r23_counter0[16:13]),
        .S({\r23_counter_reg_n_0_[16] ,\r23_counter_reg_n_0_[15] ,\r23_counter_reg_n_0_[14] ,\r23_counter_reg_n_0_[13] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r23_counter0_carry__3
       (.CI(r23_counter0_carry__2_n_0),
        .CO({NLW_r23_counter0_carry__3_CO_UNCONNECTED[3],r23_counter0_carry__3_n_1,r23_counter0_carry__3_n_2,r23_counter0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(r23_counter0[20:17]),
        .S({\r23_counter_reg_n_0_[20] ,\r23_counter_reg_n_0_[19] ,\r23_counter_reg_n_0_[18] ,\r23_counter_reg_n_0_[17] }));
  LUT6 #(
    .INIT(64'h0606060606060006)) 
    \r23_counter[0]_i_1 
       (.I0(r_pressed_reg_0),
        .I1(iw_button),
        .I2(\r23_counter_reg_n_0_[0] ),
        .I3(\r23_counter_reg_n_0_[17] ),
        .I4(r_pressed_i_2_n_0),
        .I5(\r23_counter[20]_i_2_n_0 ),
        .O(r23_counter[0]));
  LUT6 #(
    .INIT(64'h6666660600000000)) 
    \r23_counter[10]_i_1 
       (.I0(r_pressed_reg_0),
        .I1(iw_button),
        .I2(\r23_counter_reg_n_0_[17] ),
        .I3(r_pressed_i_2_n_0),
        .I4(\r23_counter[20]_i_2_n_0 ),
        .I5(r23_counter0[10]),
        .O(r23_counter[10]));
  LUT6 #(
    .INIT(64'h6666660600000000)) 
    \r23_counter[11]_i_1 
       (.I0(r_pressed_reg_0),
        .I1(iw_button),
        .I2(\r23_counter_reg_n_0_[17] ),
        .I3(r_pressed_i_2_n_0),
        .I4(\r23_counter[20]_i_2_n_0 ),
        .I5(r23_counter0[11]),
        .O(r23_counter[11]));
  LUT6 #(
    .INIT(64'h6666660600000000)) 
    \r23_counter[12]_i_1 
       (.I0(r_pressed_reg_0),
        .I1(iw_button),
        .I2(\r23_counter_reg_n_0_[17] ),
        .I3(r_pressed_i_2_n_0),
        .I4(\r23_counter[20]_i_2_n_0 ),
        .I5(r23_counter0[12]),
        .O(r23_counter[12]));
  LUT6 #(
    .INIT(64'h6666660600000000)) 
    \r23_counter[13]_i_1 
       (.I0(r_pressed_reg_0),
        .I1(iw_button),
        .I2(\r23_counter_reg_n_0_[17] ),
        .I3(r_pressed_i_2_n_0),
        .I4(\r23_counter[20]_i_2_n_0 ),
        .I5(r23_counter0[13]),
        .O(r23_counter[13]));
  LUT6 #(
    .INIT(64'h6666660600000000)) 
    \r23_counter[14]_i_1 
       (.I0(r_pressed_reg_0),
        .I1(iw_button),
        .I2(\r23_counter_reg_n_0_[17] ),
        .I3(r_pressed_i_2_n_0),
        .I4(\r23_counter[20]_i_2_n_0 ),
        .I5(r23_counter0[14]),
        .O(r23_counter[14]));
  LUT6 #(
    .INIT(64'h6666660600000000)) 
    \r23_counter[15]_i_1 
       (.I0(r_pressed_reg_0),
        .I1(iw_button),
        .I2(\r23_counter_reg_n_0_[17] ),
        .I3(r_pressed_i_2_n_0),
        .I4(\r23_counter[20]_i_2_n_0 ),
        .I5(r23_counter0[15]),
        .O(r23_counter[15]));
  LUT6 #(
    .INIT(64'h6666660600000000)) 
    \r23_counter[16]_i_1 
       (.I0(r_pressed_reg_0),
        .I1(iw_button),
        .I2(\r23_counter_reg_n_0_[17] ),
        .I3(r_pressed_i_2_n_0),
        .I4(\r23_counter[20]_i_2_n_0 ),
        .I5(r23_counter0[16]),
        .O(r23_counter[16]));
  LUT6 #(
    .INIT(64'h6666660600000000)) 
    \r23_counter[17]_i_1 
       (.I0(r_pressed_reg_0),
        .I1(iw_button),
        .I2(\r23_counter_reg_n_0_[17] ),
        .I3(r_pressed_i_2_n_0),
        .I4(\r23_counter[20]_i_2_n_0 ),
        .I5(r23_counter0[17]),
        .O(r23_counter[17]));
  LUT6 #(
    .INIT(64'h6666660600000000)) 
    \r23_counter[18]_i_1 
       (.I0(r_pressed_reg_0),
        .I1(iw_button),
        .I2(\r23_counter_reg_n_0_[17] ),
        .I3(r_pressed_i_2_n_0),
        .I4(\r23_counter[20]_i_2_n_0 ),
        .I5(r23_counter0[18]),
        .O(r23_counter[18]));
  LUT6 #(
    .INIT(64'h6666660600000000)) 
    \r23_counter[19]_i_1 
       (.I0(r_pressed_reg_0),
        .I1(iw_button),
        .I2(\r23_counter_reg_n_0_[17] ),
        .I3(r_pressed_i_2_n_0),
        .I4(\r23_counter[20]_i_2_n_0 ),
        .I5(r23_counter0[19]),
        .O(r23_counter[19]));
  LUT6 #(
    .INIT(64'h6666660600000000)) 
    \r23_counter[1]_i_1 
       (.I0(r_pressed_reg_0),
        .I1(iw_button),
        .I2(\r23_counter_reg_n_0_[17] ),
        .I3(r_pressed_i_2_n_0),
        .I4(\r23_counter[20]_i_2_n_0 ),
        .I5(r23_counter0[1]),
        .O(r23_counter[1]));
  LUT6 #(
    .INIT(64'h6666660600000000)) 
    \r23_counter[20]_i_1 
       (.I0(r_pressed_reg_0),
        .I1(iw_button),
        .I2(\r23_counter_reg_n_0_[17] ),
        .I3(r_pressed_i_2_n_0),
        .I4(\r23_counter[20]_i_2_n_0 ),
        .I5(r23_counter0[20]),
        .O(r23_counter[20]));
  LUT2 #(
    .INIT(4'h7)) 
    \r23_counter[20]_i_2 
       (.I0(\r23_counter_reg_n_0_[18] ),
        .I1(\r23_counter_reg_n_0_[19] ),
        .O(\r23_counter[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6666660600000000)) 
    \r23_counter[2]_i_1 
       (.I0(r_pressed_reg_0),
        .I1(iw_button),
        .I2(\r23_counter_reg_n_0_[17] ),
        .I3(r_pressed_i_2_n_0),
        .I4(\r23_counter[20]_i_2_n_0 ),
        .I5(r23_counter0[2]),
        .O(r23_counter[2]));
  LUT6 #(
    .INIT(64'h6666660600000000)) 
    \r23_counter[3]_i_1 
       (.I0(r_pressed_reg_0),
        .I1(iw_button),
        .I2(\r23_counter_reg_n_0_[17] ),
        .I3(r_pressed_i_2_n_0),
        .I4(\r23_counter[20]_i_2_n_0 ),
        .I5(r23_counter0[3]),
        .O(r23_counter[3]));
  LUT6 #(
    .INIT(64'h6666660600000000)) 
    \r23_counter[4]_i_1 
       (.I0(r_pressed_reg_0),
        .I1(iw_button),
        .I2(\r23_counter_reg_n_0_[17] ),
        .I3(r_pressed_i_2_n_0),
        .I4(\r23_counter[20]_i_2_n_0 ),
        .I5(r23_counter0[4]),
        .O(r23_counter[4]));
  LUT6 #(
    .INIT(64'h6666660600000000)) 
    \r23_counter[5]_i_1 
       (.I0(r_pressed_reg_0),
        .I1(iw_button),
        .I2(\r23_counter_reg_n_0_[17] ),
        .I3(r_pressed_i_2_n_0),
        .I4(\r23_counter[20]_i_2_n_0 ),
        .I5(r23_counter0[5]),
        .O(r23_counter[5]));
  LUT6 #(
    .INIT(64'h6666660600000000)) 
    \r23_counter[6]_i_1 
       (.I0(r_pressed_reg_0),
        .I1(iw_button),
        .I2(\r23_counter_reg_n_0_[17] ),
        .I3(r_pressed_i_2_n_0),
        .I4(\r23_counter[20]_i_2_n_0 ),
        .I5(r23_counter0[6]),
        .O(r23_counter[6]));
  LUT6 #(
    .INIT(64'h6666660600000000)) 
    \r23_counter[7]_i_1 
       (.I0(r_pressed_reg_0),
        .I1(iw_button),
        .I2(\r23_counter_reg_n_0_[17] ),
        .I3(r_pressed_i_2_n_0),
        .I4(\r23_counter[20]_i_2_n_0 ),
        .I5(r23_counter0[7]),
        .O(r23_counter[7]));
  LUT6 #(
    .INIT(64'h6666660600000000)) 
    \r23_counter[8]_i_1 
       (.I0(r_pressed_reg_0),
        .I1(iw_button),
        .I2(\r23_counter_reg_n_0_[17] ),
        .I3(r_pressed_i_2_n_0),
        .I4(\r23_counter[20]_i_2_n_0 ),
        .I5(r23_counter0[8]),
        .O(r23_counter[8]));
  LUT6 #(
    .INIT(64'h6666660600000000)) 
    \r23_counter[9]_i_1 
       (.I0(r_pressed_reg_0),
        .I1(iw_button),
        .I2(\r23_counter_reg_n_0_[17] ),
        .I3(r_pressed_i_2_n_0),
        .I4(\r23_counter[20]_i_2_n_0 ),
        .I5(r23_counter0[9]),
        .O(r23_counter[9]));
  FDRE #(
    .INIT(1'b0)) 
    \r23_counter_reg[0] 
       (.C(iw_clk),
        .CE(1'b1),
        .D(r23_counter[0]),
        .Q(\r23_counter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r23_counter_reg[10] 
       (.C(iw_clk),
        .CE(1'b1),
        .D(r23_counter[10]),
        .Q(\r23_counter_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r23_counter_reg[11] 
       (.C(iw_clk),
        .CE(1'b1),
        .D(r23_counter[11]),
        .Q(\r23_counter_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r23_counter_reg[12] 
       (.C(iw_clk),
        .CE(1'b1),
        .D(r23_counter[12]),
        .Q(\r23_counter_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r23_counter_reg[13] 
       (.C(iw_clk),
        .CE(1'b1),
        .D(r23_counter[13]),
        .Q(\r23_counter_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r23_counter_reg[14] 
       (.C(iw_clk),
        .CE(1'b1),
        .D(r23_counter[14]),
        .Q(\r23_counter_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r23_counter_reg[15] 
       (.C(iw_clk),
        .CE(1'b1),
        .D(r23_counter[15]),
        .Q(\r23_counter_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r23_counter_reg[16] 
       (.C(iw_clk),
        .CE(1'b1),
        .D(r23_counter[16]),
        .Q(\r23_counter_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r23_counter_reg[17] 
       (.C(iw_clk),
        .CE(1'b1),
        .D(r23_counter[17]),
        .Q(\r23_counter_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r23_counter_reg[18] 
       (.C(iw_clk),
        .CE(1'b1),
        .D(r23_counter[18]),
        .Q(\r23_counter_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r23_counter_reg[19] 
       (.C(iw_clk),
        .CE(1'b1),
        .D(r23_counter[19]),
        .Q(\r23_counter_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r23_counter_reg[1] 
       (.C(iw_clk),
        .CE(1'b1),
        .D(r23_counter[1]),
        .Q(\r23_counter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r23_counter_reg[20] 
       (.C(iw_clk),
        .CE(1'b1),
        .D(r23_counter[20]),
        .Q(\r23_counter_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r23_counter_reg[2] 
       (.C(iw_clk),
        .CE(1'b1),
        .D(r23_counter[2]),
        .Q(\r23_counter_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r23_counter_reg[3] 
       (.C(iw_clk),
        .CE(1'b1),
        .D(r23_counter[3]),
        .Q(\r23_counter_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r23_counter_reg[4] 
       (.C(iw_clk),
        .CE(1'b1),
        .D(r23_counter[4]),
        .Q(\r23_counter_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r23_counter_reg[5] 
       (.C(iw_clk),
        .CE(1'b1),
        .D(r23_counter[5]),
        .Q(\r23_counter_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r23_counter_reg[6] 
       (.C(iw_clk),
        .CE(1'b1),
        .D(r23_counter[6]),
        .Q(\r23_counter_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r23_counter_reg[7] 
       (.C(iw_clk),
        .CE(1'b1),
        .D(r23_counter[7]),
        .Q(\r23_counter_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r23_counter_reg[8] 
       (.C(iw_clk),
        .CE(1'b1),
        .D(r23_counter[8]),
        .Q(\r23_counter_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r23_counter_reg[9] 
       (.C(iw_clk),
        .CE(1'b1),
        .D(r23_counter[9]),
        .Q(\r23_counter_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAACAAAAAAAAAAA)) 
    r_pressed_i_1
       (.I0(r_pressed_reg_0),
        .I1(iw_button),
        .I2(\r23_counter_reg_n_0_[19] ),
        .I3(\r23_counter_reg_n_0_[18] ),
        .I4(r_pressed_i_2_n_0),
        .I5(\r23_counter_reg_n_0_[17] ),
        .O(r_pressed_i_1_n_0));
  LUT6 #(
    .INIT(64'h555555557777777F)) 
    r_pressed_i_2
       (.I0(\r23_counter_reg_n_0_[20] ),
        .I1(\r23_counter_reg_n_0_[15] ),
        .I2(r_pressed_i_3_n_0),
        .I3(r_pressed_i_4_n_0),
        .I4(\r23_counter_reg_n_0_[11] ),
        .I5(\r23_counter_reg_n_0_[16] ),
        .O(r_pressed_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    r_pressed_i_3
       (.I0(\r23_counter_reg_n_0_[12] ),
        .I1(\r23_counter_reg_n_0_[13] ),
        .O(r_pressed_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFEAAAA)) 
    r_pressed_i_4
       (.I0(\r23_counter_reg_n_0_[14] ),
        .I1(\r23_counter_reg_n_0_[8] ),
        .I2(\r23_counter_reg_n_0_[7] ),
        .I3(\r23_counter_reg_n_0_[9] ),
        .I4(\r23_counter_reg_n_0_[10] ),
        .O(r_pressed_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    r_pressed_reg
       (.C(iw_clk),
        .CE(1'b1),
        .D(r_pressed_i_1_n_0),
        .Q(r_pressed_reg_0),
        .R(1'b0));
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
