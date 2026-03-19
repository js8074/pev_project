// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Tue Mar 17 23:09:09 2026
// Host        : DESKTOP-TPP71AQ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/workspace/PEV/uvod/uvod.srcs/sources_1/bd/uvod/ip/uvod_debounce_0_0/uvod_debounce_0_0_sim_netlist.v
// Design      : uvod_debounce_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s25csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "uvod_debounce_0_0,debounce,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "debounce,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module uvod_debounce_0_0
   (iw_clk,
    iw_button,
    ow_pressed);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 iw_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME iw_clk, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input iw_clk;
  input iw_button;
  output ow_pressed;

  wire iw_button;
  wire iw_clk;
  wire ow_pressed;

  uvod_debounce_0_0_debounce inst
       (.iw_button(iw_button),
        .iw_clk(iw_clk),
        .ow_pressed(ow_pressed));
endmodule

(* ORIG_REF_NAME = "debounce" *) 
module uvod_debounce_0_0_debounce
   (ow_pressed,
    iw_button,
    iw_clk);
  output ow_pressed;
  input iw_button;
  input iw_clk;

  wire iw_button;
  wire iw_clk;
  wire ow_pressed;
  wire [22:0]r23_counter;
  wire [22:1]r23_counter0;
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
  wire r23_counter0_carry__3_n_0;
  wire r23_counter0_carry__3_n_1;
  wire r23_counter0_carry__3_n_2;
  wire r23_counter0_carry__3_n_3;
  wire r23_counter0_carry__4_n_3;
  wire r23_counter0_carry_n_0;
  wire r23_counter0_carry_n_1;
  wire r23_counter0_carry_n_2;
  wire r23_counter0_carry_n_3;
  wire r23_counter1__14;
  wire \r23_counter[0]_i_1_n_0 ;
  wire \r23_counter[22]_i_1_n_0 ;
  wire r_pressed_i_1_n_0;
  wire r_pressed_i_3_n_0;
  wire r_pressed_i_4_n_0;
  wire r_pressed_i_5_n_0;
  wire r_pressed_i_6_n_0;
  wire [3:1]NLW_r23_counter0_carry__4_CO_UNCONNECTED;
  wire [3:2]NLW_r23_counter0_carry__4_O_UNCONNECTED;

  CARRY4 r23_counter0_carry
       (.CI(1'b0),
        .CO({r23_counter0_carry_n_0,r23_counter0_carry_n_1,r23_counter0_carry_n_2,r23_counter0_carry_n_3}),
        .CYINIT(r23_counter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(r23_counter0[4:1]),
        .S(r23_counter[4:1]));
  CARRY4 r23_counter0_carry__0
       (.CI(r23_counter0_carry_n_0),
        .CO({r23_counter0_carry__0_n_0,r23_counter0_carry__0_n_1,r23_counter0_carry__0_n_2,r23_counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(r23_counter0[8:5]),
        .S(r23_counter[8:5]));
  CARRY4 r23_counter0_carry__1
       (.CI(r23_counter0_carry__0_n_0),
        .CO({r23_counter0_carry__1_n_0,r23_counter0_carry__1_n_1,r23_counter0_carry__1_n_2,r23_counter0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(r23_counter0[12:9]),
        .S(r23_counter[12:9]));
  CARRY4 r23_counter0_carry__2
       (.CI(r23_counter0_carry__1_n_0),
        .CO({r23_counter0_carry__2_n_0,r23_counter0_carry__2_n_1,r23_counter0_carry__2_n_2,r23_counter0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(r23_counter0[16:13]),
        .S(r23_counter[16:13]));
  CARRY4 r23_counter0_carry__3
       (.CI(r23_counter0_carry__2_n_0),
        .CO({r23_counter0_carry__3_n_0,r23_counter0_carry__3_n_1,r23_counter0_carry__3_n_2,r23_counter0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(r23_counter0[20:17]),
        .S(r23_counter[20:17]));
  CARRY4 r23_counter0_carry__4
       (.CI(r23_counter0_carry__3_n_0),
        .CO({NLW_r23_counter0_carry__4_CO_UNCONNECTED[3:1],r23_counter0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_r23_counter0_carry__4_O_UNCONNECTED[3:2],r23_counter0[22:21]}),
        .S({1'b0,1'b0,r23_counter[22:21]}));
  LUT1 #(
    .INIT(2'h1)) 
    \r23_counter[0]_i_1 
       (.I0(r23_counter[0]),
        .O(\r23_counter[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hEB)) 
    \r23_counter[22]_i_1 
       (.I0(r23_counter1__14),
        .I1(ow_pressed),
        .I2(iw_button),
        .O(\r23_counter[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r23_counter_reg[0] 
       (.C(iw_clk),
        .CE(1'b1),
        .D(\r23_counter[0]_i_1_n_0 ),
        .Q(r23_counter[0]),
        .R(\r23_counter[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r23_counter_reg[10] 
       (.C(iw_clk),
        .CE(1'b1),
        .D(r23_counter0[10]),
        .Q(r23_counter[10]),
        .R(\r23_counter[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r23_counter_reg[11] 
       (.C(iw_clk),
        .CE(1'b1),
        .D(r23_counter0[11]),
        .Q(r23_counter[11]),
        .R(\r23_counter[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r23_counter_reg[12] 
       (.C(iw_clk),
        .CE(1'b1),
        .D(r23_counter0[12]),
        .Q(r23_counter[12]),
        .R(\r23_counter[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r23_counter_reg[13] 
       (.C(iw_clk),
        .CE(1'b1),
        .D(r23_counter0[13]),
        .Q(r23_counter[13]),
        .R(\r23_counter[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r23_counter_reg[14] 
       (.C(iw_clk),
        .CE(1'b1),
        .D(r23_counter0[14]),
        .Q(r23_counter[14]),
        .R(\r23_counter[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r23_counter_reg[15] 
       (.C(iw_clk),
        .CE(1'b1),
        .D(r23_counter0[15]),
        .Q(r23_counter[15]),
        .R(\r23_counter[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r23_counter_reg[16] 
       (.C(iw_clk),
        .CE(1'b1),
        .D(r23_counter0[16]),
        .Q(r23_counter[16]),
        .R(\r23_counter[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r23_counter_reg[17] 
       (.C(iw_clk),
        .CE(1'b1),
        .D(r23_counter0[17]),
        .Q(r23_counter[17]),
        .R(\r23_counter[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r23_counter_reg[18] 
       (.C(iw_clk),
        .CE(1'b1),
        .D(r23_counter0[18]),
        .Q(r23_counter[18]),
        .R(\r23_counter[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r23_counter_reg[19] 
       (.C(iw_clk),
        .CE(1'b1),
        .D(r23_counter0[19]),
        .Q(r23_counter[19]),
        .R(\r23_counter[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r23_counter_reg[1] 
       (.C(iw_clk),
        .CE(1'b1),
        .D(r23_counter0[1]),
        .Q(r23_counter[1]),
        .R(\r23_counter[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r23_counter_reg[20] 
       (.C(iw_clk),
        .CE(1'b1),
        .D(r23_counter0[20]),
        .Q(r23_counter[20]),
        .R(\r23_counter[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r23_counter_reg[21] 
       (.C(iw_clk),
        .CE(1'b1),
        .D(r23_counter0[21]),
        .Q(r23_counter[21]),
        .R(\r23_counter[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r23_counter_reg[22] 
       (.C(iw_clk),
        .CE(1'b1),
        .D(r23_counter0[22]),
        .Q(r23_counter[22]),
        .R(\r23_counter[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r23_counter_reg[2] 
       (.C(iw_clk),
        .CE(1'b1),
        .D(r23_counter0[2]),
        .Q(r23_counter[2]),
        .R(\r23_counter[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r23_counter_reg[3] 
       (.C(iw_clk),
        .CE(1'b1),
        .D(r23_counter0[3]),
        .Q(r23_counter[3]),
        .R(\r23_counter[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r23_counter_reg[4] 
       (.C(iw_clk),
        .CE(1'b1),
        .D(r23_counter0[4]),
        .Q(r23_counter[4]),
        .R(\r23_counter[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r23_counter_reg[5] 
       (.C(iw_clk),
        .CE(1'b1),
        .D(r23_counter0[5]),
        .Q(r23_counter[5]),
        .R(\r23_counter[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r23_counter_reg[6] 
       (.C(iw_clk),
        .CE(1'b1),
        .D(r23_counter0[6]),
        .Q(r23_counter[6]),
        .R(\r23_counter[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r23_counter_reg[7] 
       (.C(iw_clk),
        .CE(1'b1),
        .D(r23_counter0[7]),
        .Q(r23_counter[7]),
        .R(\r23_counter[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r23_counter_reg[8] 
       (.C(iw_clk),
        .CE(1'b1),
        .D(r23_counter0[8]),
        .Q(r23_counter[8]),
        .R(\r23_counter[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r23_counter_reg[9] 
       (.C(iw_clk),
        .CE(1'b1),
        .D(r23_counter0[9]),
        .Q(r23_counter[9]),
        .R(\r23_counter[22]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hCA)) 
    r_pressed_i_1
       (.I0(ow_pressed),
        .I1(iw_button),
        .I2(r23_counter1__14),
        .O(r_pressed_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFEAAAAAAAAAA)) 
    r_pressed_i_2
       (.I0(r_pressed_i_3_n_0),
        .I1(r_pressed_i_4_n_0),
        .I2(r_pressed_i_5_n_0),
        .I3(r23_counter[15]),
        .I4(r23_counter[16]),
        .I5(r_pressed_i_6_n_0),
        .O(r23_counter1__14));
  LUT2 #(
    .INIT(4'hE)) 
    r_pressed_i_3
       (.I0(r23_counter[21]),
        .I1(r23_counter[22]),
        .O(r_pressed_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFA8)) 
    r_pressed_i_4
       (.I0(r23_counter[10]),
        .I1(r23_counter[7]),
        .I2(r23_counter[9]),
        .I3(r23_counter[14]),
        .I4(r23_counter[11]),
        .O(r_pressed_i_4_n_0));
  LUT4 #(
    .INIT(16'hFEEE)) 
    r_pressed_i_5
       (.I0(r23_counter[13]),
        .I1(r23_counter[12]),
        .I2(r23_counter[8]),
        .I3(r23_counter[10]),
        .O(r_pressed_i_5_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    r_pressed_i_6
       (.I0(r23_counter[18]),
        .I1(r23_counter[17]),
        .I2(r23_counter[20]),
        .I3(r23_counter[19]),
        .O(r_pressed_i_6_n_0));
  FDRE #(
    .INIT(1'b0)) 
    r_pressed_reg
       (.C(iw_clk),
        .CE(1'b1),
        .D(r_pressed_i_1_n_0),
        .Q(ow_pressed),
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
