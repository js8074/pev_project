//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Thu Mar 19 22:20:53 2026
//Host        : DESKTOP-TPP71AQ running 64-bit major release  (build 9200)
//Command     : generate_target uvod.bd
//Design      : uvod
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "uvod,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=uvod,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=9,numReposBlks=9,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=8,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "uvod.hwdef" *) 
module uvod
   (BLUE,
    BTN0,
    BTN1,
    BTN2,
    BTN3,
    CLK_12MHz,
    GREEN,
    HSYNC,
    LED2,
    LED3,
    LED4,
    LED5,
    RED,
    TXF,
    VSYNC);
  output [3:0]BLUE;
  input BTN0;
  input BTN1;
  input BTN2;
  input BTN3;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_12MHZ CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_12MHZ, CLK_DOMAIN uvod_CLK_12MHz, FREQ_HZ 12000000, INSERT_VIP 0, PHASE 0.000" *) input CLK_12MHz;
  output [3:0]GREEN;
  output HSYNC;
  output LED2;
  output LED3;
  output LED4;
  output LED5;
  output [3:0]RED;
  output TXF;
  output VSYNC;

  wire CLK_12MHz_1;
  wire [3:0]VGA_DRAW_0_B_OUT;
  wire [3:0]VGA_DRAW_0_G_OUT;
  wire [3:0]VGA_DRAW_0_R_OUT;
  wire clk_wiz_0_CLK_40MHZ;
  wire clk_wiz_0_clk_out1;
  wire debounce_0_ow_pressed;
  wire debounce_1_ow_pressed;
  wire debounce_2_ow_pressed;
  wire debounce_3_ow_pressed;
  wire iw_button_0_1;
  wire iw_button_1_1;
  wire iw_button_2_1;
  wire iw_button_3_1;
  wire [10:0]svga_0_ow_cursor_x;
  wire [10:0]svga_0_ow_cursor_y;
  wire svga_0_ow_hsync;
  wire svga_0_ow_vsync;
  wire [10:0]top_0_ow11_x_pos;
  wire [10:0]top_0_ow11_y_pos;
  wire [3:0]top_0_ow4_blue;
  wire [3:0]top_0_ow4_green;
  wire [3:0]top_0_ow4_red;
  wire [7:0]top_0_ow8_tx_byte;
  wire top_0_ow_led2;
  wire top_0_ow_led3;
  wire top_0_ow_led4;
  wire top_0_ow_led5;
  wire top_0_ow_tx_start;
  wire uart_tx_byte_0_ow_tx_done;
  wire uart_tx_byte_0_ow_tx_pin;

  assign BLUE[3:0] = VGA_DRAW_0_B_OUT;
  assign CLK_12MHz_1 = CLK_12MHz;
  assign GREEN[3:0] = VGA_DRAW_0_G_OUT;
  assign HSYNC = svga_0_ow_hsync;
  assign LED2 = top_0_ow_led2;
  assign LED3 = top_0_ow_led3;
  assign LED4 = top_0_ow_led4;
  assign LED5 = top_0_ow_led5;
  assign RED[3:0] = VGA_DRAW_0_R_OUT;
  assign TXF = uart_tx_byte_0_ow_tx_pin;
  assign VSYNC = svga_0_ow_vsync;
  assign iw_button_0_1 = BTN0;
  assign iw_button_1_1 = BTN1;
  assign iw_button_2_1 = BTN2;
  assign iw_button_3_1 = BTN3;
  uvod_VGA_DRAW_0_0 VGA_DRAW_0
       (.B_OUT(VGA_DRAW_0_B_OUT),
        .CLK(clk_wiz_0_CLK_40MHZ),
        .G_OUT(VGA_DRAW_0_G_OUT),
        .R_OUT(VGA_DRAW_0_R_OUT),
        .X_IN(svga_0_ow_cursor_x),
        .Y_IN(svga_0_ow_cursor_y));
  uvod_clk_wiz_0_0 clk_wiz_0
       (.CLK_200MHZ(clk_wiz_0_clk_out1),
        .CLK_40MHZ(clk_wiz_0_CLK_40MHZ),
        .clk_in1(CLK_12MHz_1));
  uvod_debounce_0_0 debounce_0
       (.iw_button(iw_button_0_1),
        .iw_clk(clk_wiz_0_clk_out1),
        .ow_pressed(debounce_0_ow_pressed));
  uvod_debounce_0_1 debounce_1
       (.iw_button(iw_button_1_1),
        .iw_clk(clk_wiz_0_clk_out1),
        .ow_pressed(debounce_1_ow_pressed));
  uvod_debounce_1_0 debounce_2
       (.iw_button(iw_button_2_1),
        .iw_clk(clk_wiz_0_clk_out1),
        .ow_pressed(debounce_2_ow_pressed));
  uvod_debounce_2_0 debounce_3
       (.iw_button(iw_button_3_1),
        .iw_clk(clk_wiz_0_clk_out1),
        .ow_pressed(debounce_3_ow_pressed));
  uvod_svga_0_0 svga_0
       (.iw11_x_pos(top_0_ow11_x_pos),
        .iw11_y_pos(top_0_ow11_y_pos),
        .iw4_blue(top_0_ow4_blue),
        .iw4_green(top_0_ow4_green),
        .iw4_red(top_0_ow4_red),
        .iw_pix_clk(clk_wiz_0_CLK_40MHZ),
        .ow11_curr_pixel_x(svga_0_ow_cursor_x),
        .ow11_curr_pixel_y(svga_0_ow_cursor_y),
        .ow_hsync(svga_0_ow_hsync),
        .ow_vsync(svga_0_ow_vsync));
  uvod_top_0_0 top_0
       (.iw_btn0(debounce_0_ow_pressed),
        .iw_btn1(debounce_1_ow_pressed),
        .iw_btn2(debounce_2_ow_pressed),
        .iw_btn3(debounce_3_ow_pressed),
        .iw_clk(clk_wiz_0_clk_out1),
        .iw_tx_done(uart_tx_byte_0_ow_tx_done),
        .ow11_x_pos(top_0_ow11_x_pos),
        .ow11_y_pos(top_0_ow11_y_pos),
        .ow4_blue(top_0_ow4_blue),
        .ow4_green(top_0_ow4_green),
        .ow4_red(top_0_ow4_red),
        .ow8_tx_byte(top_0_ow8_tx_byte),
        .ow_led2(top_0_ow_led2),
        .ow_led3(top_0_ow_led3),
        .ow_led4(top_0_ow_led4),
        .ow_led5(top_0_ow_led5),
        .ow_tx_start(top_0_ow_tx_start));
  uvod_uart_tx_byte_0_0 uart_tx_byte_0
       (.iw8_tx_byte(top_0_ow8_tx_byte),
        .iw_clk(clk_wiz_0_clk_out1),
        .iw_tx_start(top_0_ow_tx_start),
        .ow_tx_done(uart_tx_byte_0_ow_tx_done),
        .ow_tx_pin(uart_tx_byte_0_ow_tx_pin));
endmodule
