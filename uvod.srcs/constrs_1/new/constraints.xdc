
## FPGA Configuration I/O Options
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]

set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
set_property CONFIG_MODE SPIx4 [current_design]

set_property -dict {PACKAGE_PIN F14 IOSTANDARD LVCMOS33} [get_ports CLK_12MHz]
create_clock -period 83.333 -name sys_clk_pin -waveform {0.000 41.667} -add [get_ports CLK_12MHz]

## LED
set_property -dict {PACKAGE_PIN E18 IOSTANDARD LVCMOS33} [get_ports LED2]
set_property -dict {PACKAGE_PIN F13 IOSTANDARD LVCMOS33} [get_ports LED3]
set_property -dict {PACKAGE_PIN E13 IOSTANDARD LVCMOS33} [get_ports LED4]
set_property -dict {PACKAGE_PIN H15 IOSTANDARD LVCMOS33} [get_ports LED5]

#set_property -dict { PACKAGE_PIN J15   IOSTANDARD LVCMOS33 } [get_ports { RGB0_Red }];
#set_property -dict { PACKAGE_PIN G17   IOSTANDARD LVCMOS33 } [get_ports { RGB0_Green }];
#set_property -dict { PACKAGE_PIN F15   IOSTANDARD LVCMOS33 } [get_ports { RGB0_Blue }];

#set_property -dict { PACKAGE_PIN E15   IOSTANDARD LVCMOS33 } [get_ports { RGB1_Red }];
#set_property -dict { PACKAGE_PIN F18   IOSTANDARD LVCMOS33 } [get_ports { RGB1_Green }];
#set_property -dict { PACKAGE_PIN E14   IOSTANDARD LVCMOS33 } [get_ports { RGB1_Blue }];

## Button
set_property -dict {PACKAGE_PIN G15 IOSTANDARD LVCMOS33} [get_ports BTN0]
set_property -dict {PACKAGE_PIN K16 IOSTANDARD LVCMOS33} [get_ports BTN1]
set_property -dict {PACKAGE_PIN J16 IOSTANDARD LVCMOS33} [get_ports BTN2]
set_property -dict {PACKAGE_PIN H13 IOSTANDARD LVCMOS33} [get_ports BTN3]

## Switch
#set_property -dict { PACKAGE_PIN H14   IOSTANDARD LVCMOS33 } [get_ports { SW0 }];

## Uart
#set_property -dict { PACKAGE_PIN T12   IOSTANDARD LVCMOS33 } [get_ports { RXF }];      #PMOD-JD-pin4 = JD4/CK_IO30
#set_property -dict { PACKAGE_PIN V13   IOSTANDARD LVCMOS33 } [get_ports { TXF }];      #PMOD-JD-pin3 = JD3/CK_IO31

#set_property -dict { PACKAGE_PIN V12   IOSTANDARD LVCMOS33 } [get_ports { RXF }];     #TXD on FT2232 on ARTY-S7 Micro USB
set_property -dict {PACKAGE_PIN R12 IOSTANDARD LVCMOS33} [get_ports TXF]

## JA: PMOD-VGA
set_property -dict {PACKAGE_PIN L17 IOSTANDARD LVCMOS33} [get_ports {RED[0]}]
set_property -dict {PACKAGE_PIN L18 IOSTANDARD LVCMOS33} [get_ports {RED[1]}]

set_property -dict {PACKAGE_PIN M14 IOSTANDARD LVCMOS33} [get_ports {RED[2]}]
set_property -dict {PACKAGE_PIN N14 IOSTANDARD LVCMOS33} [get_ports {RED[3]}]

set_property -dict {PACKAGE_PIN M16 IOSTANDARD LVCMOS33} [get_ports {BLUE[0]}]
set_property -dict {PACKAGE_PIN M17 IOSTANDARD LVCMOS33} [get_ports {BLUE[1]}]

set_property -dict {PACKAGE_PIN M18 IOSTANDARD LVCMOS33} [get_ports {BLUE[2]}]
set_property -dict {PACKAGE_PIN N18 IOSTANDARD LVCMOS33} [get_ports {BLUE[3]}]

## JB: PMOD-VGA
set_property -dict {PACKAGE_PIN P17 IOSTANDARD LVCMOS33} [get_ports {GREEN[0]}]
set_property -dict {PACKAGE_PIN P18 IOSTANDARD LVCMOS33} [get_ports {GREEN[1]}]

set_property -dict {PACKAGE_PIN R18 IOSTANDARD LVCMOS33} [get_ports {GREEN[2]}]
set_property -dict {PACKAGE_PIN T18 IOSTANDARD LVCMOS33} [get_ports {GREEN[3]}]

set_property -dict {PACKAGE_PIN P14 IOSTANDARD LVCMOS33} [get_ports HSYNC]
set_property -dict {PACKAGE_PIN P15 IOSTANDARD LVCMOS33} [get_ports VSYNC]

## JD: PMOD-I2C RH/T    PMOD PINS 1-7
set_property -dict { PACKAGE_PIN V13   IOSTANDARD LVCMOS33 } [get_ports { SCL }];       #JD3/CK_IO31
set_property -dict { PACKAGE_PIN T12   IOSTANDARD LVCMOS33 } [get_ports { SDA }];       #JD4/CK_IO30


