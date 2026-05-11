
`timescale 1ns / 1ps

//*****************************************************************
//*****************************************************************
module top(

    //*****************************************************************
    // CLOCK
    //*****************************************************************
    input wire iw_clk,
    
    //*****************************************************************
    // BUTTONS
    //*****************************************************************		
    input wire iw_btn0,
    input wire iw_btn1,
    input wire iw_btn2,
    input wire iw_btn3,
    
    //*****************************************************************
    // VGA
    //*****************************************************************		
    output wire[3:0] ow4_red,
    output wire[3:0] ow4_green,
    output wire[3:0] ow4_blue,
    
    output wire[3:0] ow4_result_left,
    output wire[3:0] ow4_result_right,
    
    output wire[10:0] ow11_x_pos,
    output wire[10:0] ow11_y_pos,
    
    output wire[10:0] ow11_block_left_pos,
    output wire[10:0] ow11_block_right_pos);
    
    //*****************************************************************
    //*****************************************************************
    
    localparam CursorSize = 10;
    localparam Ha = 800;
	localparam Va = 600;
	
	localparam BlockWidth = 10;
	localparam BlockHeight = 100;
    localparam BlockDistance = 10;
	localparam BlockMargin = 5;
	localparam BlockStep = 5;
	
	//*****************************************************************
    
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
    
    //*****************************************************************
    
    reg[3:0] r4_red;
    reg[3:0] r4_green;
    reg[3:0] r4_blue;
    
    reg[3:0] r4_result_left;
    reg[3:0] r4_result_right;
    
    reg[10:0] r11_x_pos;
    reg[10:0] r11_y_pos;
    
    reg[10:0] r11_block_left_pos;
    reg[10:0] r11_block_right_pos;
    
    reg[3:0] StepX;
    reg[2:0] StepY;
    reg DirX;
    reg DirY;
    
    reg[1:0] State;
    
    reg[27:0] r28_svga_prescaler;
    
    //*****************************************************************
    
    assign ow4_red   = r4_red;
    assign ow4_green = r4_green;
    assign ow4_blue  = r4_blue;
    
    assign ow4_result_left = r4_result_left;
    assign ow4_result_right = r4_result_right;
    
    assign ow11_x_pos = r11_x_pos;
    assign ow11_y_pos = r11_y_pos;
    
    assign ow11_block_left_pos = r11_block_left_pos;
    assign ow11_block_right_pos = r11_block_right_pos;
    
    //*****************************************************************
    //*****************************************************************
    // INITIAL
    //*****************************************************************
    //*****************************************************************
    initial begin

        r_btn01 <= 0;
        r_btn02 <= 0;
        r_btn0  <= 0;
   
        r_btn11 <= 0;
        r_btn12 <= 0;
        r_btn1  <= 0;
        
        r_btn21 <= 0;
        r_btn22 <= 0;
        r_btn2  <= 0;
    
        r_btn31 <= 0;
        r_btn32 <= 0;
        r_btn3  <= 0;

        //*****************************************************************
        
        r4_red   <= 15;
        r4_green <= 15;
        r4_blue  <= 15;
        
        r4_result_left <= 0;
        r4_result_right <= 0;
        
        StepX <= 6;
        StepY <= 0;
        
        DirX <= 1;
        DirY <= 1;
        
        r11_x_pos <= ((Ha/2) - (CursorSize/2));
        r11_y_pos <= ((Va/2) - (CursorSize/2));
        
        r11_block_left_pos <= ((Va/2) - (BlockHeight/2));
        r11_block_right_pos <= ((Va/2) - (BlockHeight/2));
    
        r28_svga_prescaler <= 0;
        
	end
	
	
	//*****************************************************************   
    //*****************************************************************
    // Synchronize external signals with internal clock
    //*****************************************************************
    //*****************************************************************
    always @ ( negedge iw_clk ) begin
    
        r_btn01 <= iw_btn0;
        r_btn02 <= r_btn01;
        r_btn0  <= r_btn02;
        
        r_btn11 <= iw_btn1;
        r_btn12 <= r_btn11;
        r_btn1  <= r_btn12;
       
        r_btn21 <= iw_btn2;
        r_btn22 <= r_btn21;
        r_btn2  <= r_btn22;
        
        r_btn31 <= iw_btn3;
        r_btn32 <= r_btn31;
        r_btn3  <= r_btn32;
    end
    
    //*****************************************************************
    
    assign w_btn0 = r_btn0;
    assign w_btn1 = r_btn1;
    assign w_btn2 = r_btn2;
    assign w_btn3 = r_btn3;
        
    //*****************************************************************
	//*****************************************************************
	// VGA
	//*****************************************************************
    //*****************************************************************    
    always @ ( negedge iw_clk ) begin
    
        // if( r28_svga_prescaler < 10_000_000 )                //50 ms
        if( r28_svga_prescaler < 6_000_000 )                //50 ms
            r28_svga_prescaler <= r28_svga_prescaler + 1;
            
        //*****************************************************************
            
        else begin
            
            r28_svga_prescaler <= 0;
            
            /*
            if( r11_x_pos < (Ha - CursorSize - 1) )
                r11_x_pos <= r11_x_pos + CursorSize;        //next column
                
            else begin    
                r11_x_pos <= 1;  
                
                if( r11_y_pos < (Va - CursorSize - 1) )     //next line
                    r11_y_pos <= r11_y_pos + CursorSize;
                else    
                    r11_y_pos <= 1;
            end 
            */
            if (State == 0) begin
            
                StepX <= 6;
                StepY <= 0;
        
                r11_x_pos <= ((Ha/2) - (CursorSize/2));
                r11_y_pos <= ((Va/2) - (CursorSize/2));
        
                r11_block_left_pos <= ((Va/2) - (BlockHeight/2));
                r11_block_right_pos <= ((Va/2) - (BlockHeight/2));
                if ((r4_result_right == 10) || (r4_result_left == 10))
                    State <= 2;
                if (w_btn0 == 1)
                    State <= 1;
            end
            else if (State == 1) begin
                if (r11_x_pos <= StepX) begin
                    DirX <= 1;
                    State <= 0; 
                    r4_result_right <= r4_result_right + 1;
                end
                if (r11_x_pos >= (Ha - CursorSize - StepX) && r11_x_pos < (2*Ha)) begin
                    DirX <= 0;
                    State <= 0;
                    r4_result_left <= r4_result_left + 1;
                end
            
                if (r11_y_pos <= (StepY + BlockMargin))
                    DirY <= 1;
                else if (r11_y_pos >= (Va - CursorSize - StepY - BlockMargin) && r11_y_pos < (2*Va))
                    DirY <= 0;
                
                if ( (r11_x_pos <= (BlockDistance + BlockWidth + StepX)) && ((r11_y_pos >= ow11_block_left_pos) && (r11_y_pos <= (ow11_block_left_pos + BlockHeight - CursorSize)))  ) begin
                    DirX <= 1;
                    StepY <= r11_block_left_pos[3:1];
                    DirY <= r11_block_left_pos[3];
                end
                else if ( (r11_x_pos >= (Ha - CursorSize - BlockDistance - BlockWidth - StepX)) && ((r11_y_pos >= ow11_block_right_pos) && (r11_y_pos <= (ow11_block_right_pos + BlockHeight - CursorSize)))  ) begin
                    DirX <= 0;
                    StepY <= r11_block_right_pos[3:1];
                    DirY <= r11_block_right_pos[3];
                end       
                
                if (DirX)
                    r11_x_pos <= r11_x_pos + StepX;
                else
                    r11_x_pos <= r11_x_pos - StepX;  
            
                if (DirY)
                    r11_y_pos <= r11_y_pos + StepY;
                else
                    r11_y_pos <= r11_y_pos - StepY;
            
            
                if( (r11_block_left_pos <= (Va - BlockMargin - BlockHeight - BlockStep)) && w_btn2 == 1 )
                    r11_block_left_pos <= r11_block_left_pos + BlockStep;
                else if ( (r11_block_left_pos >= (BlockMargin + BlockStep)) && (w_btn3 == 1) )
                    r11_block_left_pos <= r11_block_left_pos - BlockStep;
            
                if( (r11_block_right_pos <= (Va - BlockMargin - BlockHeight - BlockStep)) && (w_btn0 == 1))
                    r11_block_right_pos <= r11_block_right_pos + BlockStep; 
                else if ( (r11_block_right_pos >= (BlockMargin + BlockStep)) && (w_btn1 == 1) )    
                    r11_block_right_pos <= r11_block_right_pos - BlockStep;  
            end  
            if (State == 2) begin
                r4_result_left <= 0;
                r4_result_right <= 0;
            
                if (w_btn0 == 1)
                    State <= 0;
            end
        end      
    end
    
   
endmodule