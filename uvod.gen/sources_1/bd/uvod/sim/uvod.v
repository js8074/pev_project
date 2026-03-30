//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
//Date        : Mon Mar 30 16:40:27 2026
//Host        : LRNV-INSTALL running 64-bit major release  (build 9200)
//Command     : generate_target uvod.bd
//Design      : uvod
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "uvod,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=uvod,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=9,numReposBlks=9,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=8,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "uvod.hwdef" *) 
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_12MHZ CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_12MHZ, CLK_DOMAIN uvod_CLK_12MHz, FREQ_HZ 12000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input CLK_12MHz;
  output [3:0]GREEN;
  output HSYNC;
  output LED2;
  output LED3;
  output LED4;
  output LED5;
  output [3:0]RED;
  output TXF;
  output VSYNC;

  wire [3:0]BLUE;
  wire BTN0;
  wire BTN1;
  wire BTN2;
  wire BTN3;
  wire CLK_12MHz;
  wire [3:0]GREEN;
  wire HSYNC;
  wire LED2;
  wire LED3;
  wire LED4;
  wire LED5;
  wire [3:0]RED;
  wire TXF;
  wire VSYNC;
  wire clk_wiz_0_CLK_40MHZ;
  wire clk_wiz_0_clk_out1;
  wire debounce_0_ow_pressed;
  wire debounce_1_ow_pressed;
  wire debounce_2_ow_pressed;
  wire debounce_3_ow_pressed;
  wire [10:0]svga_0_ow_cursor_x;
  wire [10:0]svga_0_ow_cursor_y;
  wire [10:0]top_0_ow11_x_pos;
  wire [10:0]top_0_ow11_y_pos;
  wire [3:0]top_0_ow4_blue;
  wire [3:0]top_0_ow4_green;
  wire [3:0]top_0_ow4_red;
  wire [7:0]top_0_ow8_tx_byte;
  wire top_0_ow_tx_start;
  wire uart_tx_byte_0_ow_tx_done;

  uvod_VGA_DRAW_0_0 VGA_DRAW_0
       (.B_OUT(BLUE),
        .CLK(clk_wiz_0_CLK_40MHZ),
        .G_OUT(GREEN),
        .R_OUT(RED),
        .X_IN(svga_0_ow_cursor_x),
        .Y_IN(svga_0_ow_cursor_y));
  uvod_clk_wiz_1_0 clk_wiz_1
       (.CLK_200M(clk_wiz_0_clk_out1),
        .CLK_40M(clk_wiz_0_CLK_40MHZ),
        .clk_in1(CLK_12MHz));
  uvod_debounce_0_0 debounce_0
       (.iw_button(BTN0),
        .iw_clk(clk_wiz_0_clk_out1),
        .ow_pressed(debounce_0_ow_pressed));
  uvod_debounce_0_1 debounce_1
       (.iw_button(BTN1),
        .iw_clk(clk_wiz_0_clk_out1),
        .ow_pressed(debounce_1_ow_pressed));
  uvod_debounce_1_0 debounce_2
       (.iw_button(BTN2),
        .iw_clk(clk_wiz_0_clk_out1),
        .ow_pressed(debounce_2_ow_pressed));
  uvod_debounce_2_0 debounce_3
       (.iw_button(BTN3),
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
        .ow_hsync(HSYNC),
        .ow_vsync(VSYNC));
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
        .ow_led2(LED2),
        .ow_led3(LED3),
        .ow_led4(LED4),
        .ow_led5(LED5),
        .ow_tx_start(top_0_ow_tx_start));
  uvod_uart_tx_byte_0_0 uart_tx_byte_0
       (.iw8_tx_byte(top_0_ow8_tx_byte),
        .iw_clk(clk_wiz_0_clk_out1),
        .iw_tx_start(top_0_ow_tx_start),
        .ow_tx_done(uart_tx_byte_0_ow_tx_done),
        .ow_tx_pin(TXF));
endmodule
