// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Thu Mar 19 22:11:48 2026
// Host        : DESKTOP-TPP71AQ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/workspace/PEV/uvod/uvod.srcs/sources_1/bd/uvod/ip/uvod_VGA_DRAW_0_0/uvod_VGA_DRAW_0_0_sim_netlist.v
// Design      : uvod_VGA_DRAW_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s25csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "uvod_VGA_DRAW_0_0,VGA_DRAW,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "VGA_DRAW,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module uvod_VGA_DRAW_0_0
   (CLK,
    X_IN,
    Y_IN,
    R_OUT,
    G_OUT,
    B_OUT);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK, FREQ_HZ 40000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input CLK;
  input [10:0]X_IN;
  input [10:0]Y_IN;
  output [3:0]R_OUT;
  output [3:0]G_OUT;
  output [3:0]B_OUT;

  wire [3:0]B_OUT;
  wire CLK;
  wire [3:0]G_OUT;
  wire [3:0]R_OUT;
  wire [10:0]X_IN;
  wire [10:0]Y_IN;

  uvod_VGA_DRAW_0_0_VGA_DRAW inst
       (.B_OUT(B_OUT),
        .CLK(CLK),
        .G_OUT(G_OUT),
        .R_OUT(R_OUT),
        .X_IN(X_IN[10:2]),
        .Y_IN(Y_IN[10:2]));
endmodule

(* ORIG_REF_NAME = "VGA_DRAW" *) 
module uvod_VGA_DRAW_0_0_VGA_DRAW
   (R_OUT,
    G_OUT,
    B_OUT,
    Y_IN,
    CLK,
    X_IN);
  output [3:0]R_OUT;
  output [3:0]G_OUT;
  output [3:0]B_OUT;
  input [8:0]Y_IN;
  input CLK;
  input [8:0]X_IN;

  wire [3:0]B_OUT;
  wire \B_OUT[0]_i_1_n_0 ;
  wire \B_OUT[1]_i_1_n_0 ;
  wire \B_OUT[1]_i_3_n_0 ;
  wire \B_OUT[2]_i_1_n_0 ;
  wire \B_OUT[2]_i_3_n_0 ;
  wire \B_OUT[3]_i_1_n_0 ;
  wire \B_OUT[3]_i_2_n_0 ;
  wire \B_OUT[3]_i_4_n_0 ;
  wire \B_OUT[3]_i_5_n_0 ;
  wire \B_OUT[3]_i_6_n_0 ;
  wire \B_OUT[3]_i_7_n_0 ;
  wire CLK;
  wire [3:0]G_OUT;
  wire \G_OUT[0]_i_1_n_0 ;
  wire \G_OUT[1]_i_1_n_0 ;
  wire \G_OUT[1]_i_3_n_0 ;
  wire \G_OUT[2]_i_1_n_0 ;
  wire \G_OUT[2]_i_3_n_0 ;
  wire \G_OUT[3]_i_1_n_0 ;
  wire \G_OUT[3]_i_2_n_0 ;
  wire \G_OUT[3]_i_4_n_0 ;
  wire \G_OUT[3]_i_5_n_0 ;
  wire \G_OUT[3]_i_6_n_0 ;
  wire \G_OUT[3]_i_7_n_0 ;
  wire [3:0]R_OUT;
  wire \R_OUT[0]_i_1_n_0 ;
  wire \R_OUT[1]_i_1_n_0 ;
  wire \R_OUT[1]_i_3_n_0 ;
  wire \R_OUT[2]_i_1_n_0 ;
  wire \R_OUT[2]_i_3_n_0 ;
  wire \R_OUT[3]_i_1_n_0 ;
  wire \R_OUT[3]_i_2_n_0 ;
  wire \R_OUT[3]_i_3_n_0 ;
  wire \R_OUT[3]_i_5_n_0 ;
  wire \R_OUT[3]_i_7_n_0 ;
  wire \R_OUT[3]_i_8_n_0 ;
  wire \R_OUT[3]_i_9_n_0 ;
  wire [3:3]SET_BRIGHTNESS;
  wire [8:0]X_IN;
  wire [8:0]Y_IN;
  wire [3:0]p_1_in;
  wire [3:0]p_1_in0_in;
  wire [3:0]p_1_in2_in;

  LUT5 #(
    .INIT(32'h00007E81)) 
    \B_OUT[0]_i_1 
       (.I0(Y_IN[5]),
        .I1(Y_IN[4]),
        .I2(Y_IN[0]),
        .I3(p_1_in[0]),
        .I4(\B_OUT[3]_i_6_n_0 ),
        .O(\B_OUT[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h2664)) 
    \B_OUT[0]_i_2 
       (.I0(X_IN[5]),
        .I1(X_IN[6]),
        .I2(X_IN[4]),
        .I3(X_IN[0]),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'h00000000AA6969AA)) 
    \B_OUT[1]_i_1 
       (.I0(p_1_in[1]),
        .I1(Y_IN[4]),
        .I2(Y_IN[5]),
        .I3(Y_IN[1]),
        .I4(\B_OUT[1]_i_3_n_0 ),
        .I5(\B_OUT[3]_i_6_n_0 ),
        .O(\B_OUT[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h2664)) 
    \B_OUT[1]_i_2 
       (.I0(X_IN[5]),
        .I1(X_IN[6]),
        .I2(X_IN[4]),
        .I3(X_IN[1]),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'h55FD7F5500541500)) 
    \B_OUT[1]_i_3 
       (.I0(Y_IN[5]),
        .I1(X_IN[0]),
        .I2(X_IN[4]),
        .I3(X_IN[6]),
        .I4(X_IN[5]),
        .I5(Y_IN[0]),
        .O(\B_OUT[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AA6969AA)) 
    \B_OUT[2]_i_1 
       (.I0(p_1_in[2]),
        .I1(Y_IN[4]),
        .I2(Y_IN[5]),
        .I3(Y_IN[2]),
        .I4(\B_OUT[2]_i_3_n_0 ),
        .I5(\B_OUT[3]_i_6_n_0 ),
        .O(\B_OUT[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h2664)) 
    \B_OUT[2]_i_2 
       (.I0(X_IN[5]),
        .I1(X_IN[6]),
        .I2(X_IN[4]),
        .I3(X_IN[2]),
        .O(p_1_in[2]));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    \B_OUT[2]_i_3 
       (.I0(Y_IN[5]),
        .I1(p_1_in[0]),
        .I2(Y_IN[0]),
        .I3(Y_IN[1]),
        .I4(p_1_in[1]),
        .O(\B_OUT[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8080800080000000)) 
    \B_OUT[3]_i_1 
       (.I0(Y_IN[4]),
        .I1(Y_IN[5]),
        .I2(\R_OUT[3]_i_3_n_0 ),
        .I3(Y_IN[3]),
        .I4(p_1_in[3]),
        .I5(\B_OUT[3]_i_4_n_0 ),
        .O(\B_OUT[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \B_OUT[3]_i_2 
       (.I0(\B_OUT[3]_i_5_n_0 ),
        .I1(\B_OUT[3]_i_6_n_0 ),
        .O(\B_OUT[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h2664)) 
    \B_OUT[3]_i_3 
       (.I0(X_IN[5]),
        .I1(X_IN[6]),
        .I2(X_IN[4]),
        .I3(X_IN[3]),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'hFFFFF880F8800000)) 
    \B_OUT[3]_i_4 
       (.I0(Y_IN[0]),
        .I1(p_1_in[0]),
        .I2(Y_IN[1]),
        .I3(p_1_in[1]),
        .I4(Y_IN[2]),
        .I5(p_1_in[2]),
        .O(\B_OUT[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hC3FFFFA53C00005A)) 
    \B_OUT[3]_i_5 
       (.I0(\B_OUT[3]_i_7_n_0 ),
        .I1(\B_OUT[3]_i_4_n_0 ),
        .I2(Y_IN[3]),
        .I3(Y_IN[5]),
        .I4(Y_IN[4]),
        .I5(p_1_in[3]),
        .O(\B_OUT[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000017FFFFFFFF)) 
    \B_OUT[3]_i_6 
       (.I0(Y_IN[3]),
        .I1(p_1_in[3]),
        .I2(\B_OUT[3]_i_7_n_0 ),
        .I3(Y_IN[5]),
        .I4(Y_IN[4]),
        .I5(\R_OUT[3]_i_3_n_0 ),
        .O(\B_OUT[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEE0FEE00000)) 
    \B_OUT[3]_i_7 
       (.I0(p_1_in[0]),
        .I1(Y_IN[0]),
        .I2(Y_IN[1]),
        .I3(p_1_in[1]),
        .I4(Y_IN[2]),
        .I5(p_1_in[2]),
        .O(\B_OUT[3]_i_7_n_0 ));
  FDSE \B_OUT_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\B_OUT[0]_i_1_n_0 ),
        .Q(B_OUT[0]),
        .S(\B_OUT[3]_i_1_n_0 ));
  FDSE \B_OUT_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\B_OUT[1]_i_1_n_0 ),
        .Q(B_OUT[1]),
        .S(\B_OUT[3]_i_1_n_0 ));
  FDSE \B_OUT_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\B_OUT[2]_i_1_n_0 ),
        .Q(B_OUT[2]),
        .S(\B_OUT[3]_i_1_n_0 ));
  FDSE \B_OUT_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\B_OUT[3]_i_2_n_0 ),
        .Q(B_OUT[3]),
        .S(\B_OUT[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00007E81)) 
    \G_OUT[0]_i_1 
       (.I0(Y_IN[5]),
        .I1(Y_IN[4]),
        .I2(Y_IN[0]),
        .I3(p_1_in0_in[0]),
        .I4(\G_OUT[3]_i_6_n_0 ),
        .O(\G_OUT[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hC78E)) 
    \G_OUT[0]_i_2 
       (.I0(X_IN[4]),
        .I1(X_IN[5]),
        .I2(X_IN[6]),
        .I3(X_IN[0]),
        .O(p_1_in0_in[0]));
  LUT6 #(
    .INIT(64'h00000000AA6969AA)) 
    \G_OUT[1]_i_1 
       (.I0(p_1_in0_in[1]),
        .I1(Y_IN[4]),
        .I2(Y_IN[5]),
        .I3(Y_IN[1]),
        .I4(\G_OUT[1]_i_3_n_0 ),
        .I5(\G_OUT[3]_i_6_n_0 ),
        .O(\G_OUT[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hC78E)) 
    \G_OUT[1]_i_2 
       (.I0(X_IN[4]),
        .I1(X_IN[5]),
        .I2(X_IN[6]),
        .I3(X_IN[1]),
        .O(p_1_in0_in[1]));
  LUT6 #(
    .INIT(64'hF75FDF5D51054504)) 
    \G_OUT[1]_i_3 
       (.I0(Y_IN[5]),
        .I1(X_IN[0]),
        .I2(X_IN[6]),
        .I3(X_IN[5]),
        .I4(X_IN[4]),
        .I5(Y_IN[0]),
        .O(\G_OUT[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AA6969AA)) 
    \G_OUT[2]_i_1 
       (.I0(p_1_in0_in[2]),
        .I1(Y_IN[4]),
        .I2(Y_IN[5]),
        .I3(Y_IN[2]),
        .I4(\G_OUT[2]_i_3_n_0 ),
        .I5(\G_OUT[3]_i_6_n_0 ),
        .O(\G_OUT[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hC78E)) 
    \G_OUT[2]_i_2 
       (.I0(X_IN[4]),
        .I1(X_IN[5]),
        .I2(X_IN[6]),
        .I3(X_IN[2]),
        .O(p_1_in0_in[2]));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    \G_OUT[2]_i_3 
       (.I0(Y_IN[5]),
        .I1(p_1_in0_in[0]),
        .I2(Y_IN[0]),
        .I3(Y_IN[1]),
        .I4(p_1_in0_in[1]),
        .O(\G_OUT[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8080800080000000)) 
    \G_OUT[3]_i_1 
       (.I0(Y_IN[4]),
        .I1(Y_IN[5]),
        .I2(\R_OUT[3]_i_3_n_0 ),
        .I3(Y_IN[3]),
        .I4(p_1_in0_in[3]),
        .I5(\G_OUT[3]_i_4_n_0 ),
        .O(\G_OUT[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \G_OUT[3]_i_2 
       (.I0(\G_OUT[3]_i_5_n_0 ),
        .I1(\G_OUT[3]_i_6_n_0 ),
        .O(\G_OUT[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hC78E)) 
    \G_OUT[3]_i_3 
       (.I0(X_IN[4]),
        .I1(X_IN[5]),
        .I2(X_IN[6]),
        .I3(X_IN[3]),
        .O(p_1_in0_in[3]));
  LUT6 #(
    .INIT(64'hFFFFF880F8800000)) 
    \G_OUT[3]_i_4 
       (.I0(Y_IN[0]),
        .I1(p_1_in0_in[0]),
        .I2(Y_IN[1]),
        .I3(p_1_in0_in[1]),
        .I4(Y_IN[2]),
        .I5(p_1_in0_in[2]),
        .O(\G_OUT[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hC3FFFFA53C00005A)) 
    \G_OUT[3]_i_5 
       (.I0(\G_OUT[3]_i_7_n_0 ),
        .I1(\G_OUT[3]_i_4_n_0 ),
        .I2(Y_IN[3]),
        .I3(Y_IN[5]),
        .I4(Y_IN[4]),
        .I5(p_1_in0_in[3]),
        .O(\G_OUT[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000017FFFFFFFF)) 
    \G_OUT[3]_i_6 
       (.I0(Y_IN[3]),
        .I1(p_1_in0_in[3]),
        .I2(\G_OUT[3]_i_7_n_0 ),
        .I3(Y_IN[5]),
        .I4(Y_IN[4]),
        .I5(\R_OUT[3]_i_3_n_0 ),
        .O(\G_OUT[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEE0FEE00000)) 
    \G_OUT[3]_i_7 
       (.I0(p_1_in0_in[0]),
        .I1(Y_IN[0]),
        .I2(Y_IN[1]),
        .I3(p_1_in0_in[1]),
        .I4(Y_IN[2]),
        .I5(p_1_in0_in[2]),
        .O(\G_OUT[3]_i_7_n_0 ));
  FDSE \G_OUT_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\G_OUT[0]_i_1_n_0 ),
        .Q(G_OUT[0]),
        .S(\G_OUT[3]_i_1_n_0 ));
  FDSE \G_OUT_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\G_OUT[1]_i_1_n_0 ),
        .Q(G_OUT[1]),
        .S(\G_OUT[3]_i_1_n_0 ));
  FDSE \G_OUT_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\G_OUT[2]_i_1_n_0 ),
        .Q(G_OUT[2]),
        .S(\G_OUT[3]_i_1_n_0 ));
  FDSE \G_OUT_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\G_OUT[3]_i_2_n_0 ),
        .Q(G_OUT[3]),
        .S(\G_OUT[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00007E81)) 
    \R_OUT[0]_i_1 
       (.I0(Y_IN[5]),
        .I1(Y_IN[4]),
        .I2(Y_IN[0]),
        .I3(p_1_in2_in[0]),
        .I4(\R_OUT[3]_i_7_n_0 ),
        .O(\R_OUT[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h71E3)) 
    \R_OUT[0]_i_2 
       (.I0(X_IN[4]),
        .I1(X_IN[5]),
        .I2(X_IN[6]),
        .I3(X_IN[0]),
        .O(p_1_in2_in[0]));
  LUT6 #(
    .INIT(64'h00000000AA6969AA)) 
    \R_OUT[1]_i_1 
       (.I0(p_1_in2_in[1]),
        .I1(Y_IN[4]),
        .I2(Y_IN[5]),
        .I3(Y_IN[1]),
        .I4(\R_OUT[1]_i_3_n_0 ),
        .I5(\R_OUT[3]_i_7_n_0 ),
        .O(\R_OUT[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h71E3)) 
    \R_OUT[1]_i_2 
       (.I0(X_IN[4]),
        .I1(X_IN[5]),
        .I2(X_IN[6]),
        .I3(X_IN[1]),
        .O(p_1_in2_in[1]));
  LUT6 #(
    .INIT(64'h75F7F5DF10515045)) 
    \R_OUT[1]_i_3 
       (.I0(Y_IN[5]),
        .I1(X_IN[0]),
        .I2(X_IN[6]),
        .I3(X_IN[5]),
        .I4(X_IN[4]),
        .I5(Y_IN[0]),
        .O(\R_OUT[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AA6969AA)) 
    \R_OUT[2]_i_1 
       (.I0(p_1_in2_in[2]),
        .I1(Y_IN[4]),
        .I2(Y_IN[5]),
        .I3(Y_IN[2]),
        .I4(\R_OUT[2]_i_3_n_0 ),
        .I5(\R_OUT[3]_i_7_n_0 ),
        .O(\R_OUT[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h71E3)) 
    \R_OUT[2]_i_2 
       (.I0(X_IN[4]),
        .I1(X_IN[5]),
        .I2(X_IN[6]),
        .I3(X_IN[2]),
        .O(p_1_in2_in[2]));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    \R_OUT[2]_i_3 
       (.I0(Y_IN[5]),
        .I1(p_1_in2_in[0]),
        .I2(Y_IN[0]),
        .I3(p_1_in2_in[1]),
        .I4(Y_IN[1]),
        .O(\R_OUT[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8080800080000000)) 
    \R_OUT[3]_i_1 
       (.I0(Y_IN[4]),
        .I1(Y_IN[5]),
        .I2(\R_OUT[3]_i_3_n_0 ),
        .I3(Y_IN[3]),
        .I4(p_1_in2_in[3]),
        .I5(\R_OUT[3]_i_5_n_0 ),
        .O(\R_OUT[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \R_OUT[3]_i_2 
       (.I0(SET_BRIGHTNESS),
        .I1(\R_OUT[3]_i_7_n_0 ),
        .O(\R_OUT[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \R_OUT[3]_i_3 
       (.I0(Y_IN[6]),
        .I1(Y_IN[7]),
        .I2(Y_IN[8]),
        .I3(\R_OUT[3]_i_8_n_0 ),
        .I4(X_IN[7]),
        .I5(X_IN[8]),
        .O(\R_OUT[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h71E3)) 
    \R_OUT[3]_i_4 
       (.I0(X_IN[4]),
        .I1(X_IN[5]),
        .I2(X_IN[6]),
        .I3(X_IN[3]),
        .O(p_1_in2_in[3]));
  LUT6 #(
    .INIT(64'hFFFFF880F8800000)) 
    \R_OUT[3]_i_5 
       (.I0(Y_IN[0]),
        .I1(p_1_in2_in[0]),
        .I2(p_1_in2_in[1]),
        .I3(Y_IN[1]),
        .I4(p_1_in2_in[2]),
        .I5(Y_IN[2]),
        .O(\R_OUT[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hC3FFFFA53C00005A)) 
    \R_OUT[3]_i_6 
       (.I0(\R_OUT[3]_i_9_n_0 ),
        .I1(\R_OUT[3]_i_5_n_0 ),
        .I2(Y_IN[3]),
        .I3(Y_IN[5]),
        .I4(Y_IN[4]),
        .I5(p_1_in2_in[3]),
        .O(SET_BRIGHTNESS));
  LUT6 #(
    .INIT(64'h00000017FFFFFFFF)) 
    \R_OUT[3]_i_7 
       (.I0(p_1_in2_in[3]),
        .I1(Y_IN[3]),
        .I2(\R_OUT[3]_i_9_n_0 ),
        .I3(Y_IN[5]),
        .I4(Y_IN[4]),
        .I5(\R_OUT[3]_i_3_n_0 ),
        .O(\R_OUT[3]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \R_OUT[3]_i_8 
       (.I0(X_IN[5]),
        .I1(X_IN[6]),
        .O(\R_OUT[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEE0FEE00000)) 
    \R_OUT[3]_i_9 
       (.I0(p_1_in2_in[0]),
        .I1(Y_IN[0]),
        .I2(p_1_in2_in[1]),
        .I3(Y_IN[1]),
        .I4(p_1_in2_in[2]),
        .I5(Y_IN[2]),
        .O(\R_OUT[3]_i_9_n_0 ));
  FDSE \R_OUT_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\R_OUT[0]_i_1_n_0 ),
        .Q(R_OUT[0]),
        .S(\R_OUT[3]_i_1_n_0 ));
  FDSE \R_OUT_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\R_OUT[1]_i_1_n_0 ),
        .Q(R_OUT[1]),
        .S(\R_OUT[3]_i_1_n_0 ));
  FDSE \R_OUT_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\R_OUT[2]_i_1_n_0 ),
        .Q(R_OUT[2]),
        .S(\R_OUT[3]_i_1_n_0 ));
  FDSE \R_OUT_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\R_OUT[3]_i_2_n_0 ),
        .Q(R_OUT[3]),
        .S(\R_OUT[3]_i_1_n_0 ));
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
