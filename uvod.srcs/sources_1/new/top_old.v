`timescale 1ns / 1ps

module top(

input wire iw_clk,

input wire iw_btn0,
input wire iw_btn1,
input wire iw_btn2,
input wire iw_btn3,

output wire ow_led2,
output wire ow_led3,
output wire ow_led4,
output wire ow_led5);

reg r_btn01;
reg r_btn02;
reg r_btn0;
wire w_btn0;

reg r_btn11;
reg r_btn12;
reg r_btn1;
wire w_btn1;

reg r_btn21;
reg r_btn22;
reg r_btn2;
wire w_btn2;

reg r_btn31;
reg r_btn32;
reg r_btn3;
wire w_btn3;

reg r_led2;
reg r_led3;
reg r_led4;
reg r_led5;

reg[3:0] r4_State2;
reg[3:0] r4_State3;
reg[3:0] r4_State4;
reg[3:0] r4_State5;

assign ow_led2 = r_led2;
assign ow_led3 = r_led3;
assign ow_led4 = r_led4;
assign ow_led5 = r_led5;

initial begin
    r_btn01 <= 0;
    r_btn02 <= 0;
    r_btn0 <= 0;

    r_btn11 <= 0;
    r_btn12 <= 0;
    r_btn1 <= 0;
    
    r_btn21 <= 0;
    r_btn22 <= 0;
    r_btn2 <= 0;
    
    r_btn31 <= 0;
    r_btn32 <= 0;
    r_btn3 <= 0;
    
    r_led2 <= 0;
    r_led3 <= 0;
    r_led4 <= 0;
    r_led5 <= 0;
    
    r4_State2 <= 0;
    r4_State3 <= 0;
    r4_State4 <= 0;
    r4_State5 <= 0;
end

always @ (negedge iw_clk) begin

    r_btn01 <= iw_btn0;
    r_btn02 <= r_btn01;
    r_btn0 <= r_btn02;

    r_btn11 <= iw_btn1;
    r_btn12 <= r_btn11;
    r_btn1 <= r_btn12;

    r_btn21 <= iw_btn2;
    r_btn22 <= r_btn21;
    r_btn2 <= r_btn22;

    r_btn31 <= iw_btn3;
    r_btn32 <= r_btn31;
    r_btn3 <= r_btn32;
end

assign w_btn0 = r_btn0;
assign w_btn1 = r_btn1;
assign w_btn2 = r_btn2;
assign w_btn3 = r_btn3;

always @ ( negedge iw_clk ) begin

    case( r4_State2)

        // state 0
        0 : begin
            r_led2 <= 0;
                // r_led3 <= 0;
                // r_led4 <= 0;
                // r_led5 <= 0;

            r4_State2 <= 1;
        end
    
        // state 1
        1 : begin 
            if( w_btn0 == 1 ) begin

                if( r_led2 == 0 )
                    r_led2 <= 1;
                        // r_led3 <= 1;
                        // r_led4 <= 1;
                        // r_led5 <= 1;
                else
                    r_led2 <= 0;
                        // r_led3 <= 0;
                        // r_led4 <= 0;
                        // r_led5 <= 0;
                r4_State2 <= 2;
            end  
        end

        //State 2
        2 : begin 
            if( w_btn0 == 0)
                r4_State2 <= 1;
        end

        //default
        default : begin 
            r4_State2 <= 0;
        end 

    endcase
end
endmodule
