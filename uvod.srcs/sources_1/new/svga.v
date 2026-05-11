
`timescale 1ns / 1ps

//*****************************************************************
//*****************************************************************
module svga(

    input wire iw_pix_clk,          //40 MHz for SVGA
    
    input wire[3:0] iw4_red,
    input wire[3:0] iw4_green,
    input wire[3:0] iw4_blue,
    
    input wire[3:0] iw4_result_left,
    input wire[3:0] iw4_result_right,
    
    input wire[10:0] iw11_x_pos,
    input wire[10:0] iw11_y_pos,
    
    input wire[10:0] iw11_block_left_pos,
    input wire[10:0] iw11_block_right_pos,
    
    //*****************************************************************
    
    output wire[3:0] ow4_red,
    output wire[3:0] ow4_green,
    output wire[3:0] ow4_blue,
    
    output wire ow_hsync,           //Horizontal sync
    output wire ow_vsync);          //Vertical sync
    

    //*****************************************************************
    // Cursor
    //*****************************************************************
    localparam CursorSize = 10;
    localparam BlockWidth = 10;
    localparam BlockHeight = 100;
    localparam BlockDistance = 10;
    localparam BlockMargin = 5;
    localparam PositionDisplayX = 340;
    localparam WidthDisplayX = 40;
    localparam PositionDisplayY = 40;
    localparam WidthDisplayY = 60;
    
    //*****************************************************************
    // SVGA 800 x 600
    //*****************************************************************
    localparam Ha =  800;
    localparam Hf =   40;
    localparam Hs =  128;
    localparam Hb =   88;
	localparam Ht = 1056;
	
	localparam Va =  600;
    localparam Vf =    1;
    localparam Vs =    4;
    localparam Vb =   23;
    localparam Vt =  628;
    
    //*****************************************************************
    //*****************************************************************
    reg[3:0] r4_red;      
    reg[3:0] r4_green;    
    reg[3:0] r4_blue;      
    
    reg[10:0] r11_h_count;
    reg[10:0] r11_v_count;
    
    reg[10:0] r11_active_x;
    reg[10:0] r11_active_y;
    
    wire w_hsync;
    wire w_vsync;   
    
    wire w_hactive;
    wire w_vactive;
    
    reg [0:39] zero [0:59];
    reg [0:39] one [0:59];
    reg [0:39] two [0:59];
    reg [0:39] three [0:59];
    reg [0:39] four [0:59];
    reg [0:39] five [0:59];
    reg [0:39] six [0:59];
    reg [0:39] seven [0:59];
    reg [0:39] eight [0:59];
    reg [0:39] nine [0:59];
    
    reg [0:39] r40x60_result_left [0:59];
    reg [0:39] r40x60_result_right [0:59];
    
    
    //*****************************************************************    
    // Assign
    //*****************************************************************
    assign w_hsync  = (r11_h_count <= Hs) ? 0 : 1;
    assign ow_hsync = ~w_hsync;                    
    
    assign w_hactive = ( (r11_h_count > (Hs + Hb)) && (r11_h_count <= (Hs + Hb + Ha)) ) ? 1 : 0;
    
    assign w_vsync  = (r11_v_count <= Vs) ? 0 : 1;
    assign ow_vsync = ~w_vsync;
    
    assign w_vactive = ( (r11_v_count > (Vs + Vb)) && (r11_v_count <= (Vs + Vb + Va)) ) ? 1 : 0;
    
    assign ow4_red   = (w_hactive & w_vactive) ? r4_red   : 0;
    assign ow4_green = (w_hactive & w_vactive) ? r4_green : 0;
    assign ow4_blue  = (w_hactive & w_vactive) ? r4_blue  : 0;
   
   
    //*****************************************************************
    //*****************************************************************
    initial begin
    
        r4_red   <= 7;      
        r4_green <= 7;    
        r4_blue  <= 7;      
    
        r11_h_count <= 1;
        r11_v_count <= 1;
        
        r11_active_x <= 1;
        r11_active_y <= 1; 
        
        $readmemb("zero.mem", zero);
        $readmemb("one.mem", one);
        $readmemb("two.mem", two);
        $readmemb("three.mem", three);
        $readmemb("four.mem", four);
        $readmemb("five.mem", five);
        $readmemb("six.mem", six);
        $readmemb("seven.mem", seven);
        $readmemb("eight.mem", eight);
        $readmemb("nine.mem", nine);
    end
    
    
    //*****************************************************************
    //*****************************************************************
    always @ ( posedge iw_pix_clk ) begin
    
        if( (r11_active_x >= iw11_x_pos && r11_active_x < (iw11_x_pos + CursorSize)) && (r11_active_y >= iw11_y_pos && r11_active_y < (iw11_y_pos + CursorSize))  ) begin
            
            r4_red   <= 0;      
            r4_green <= 0;    
            r4_blue  <= 0;  
        end 
        
        else if( ((r11_active_x >= BlockDistance) && (r11_active_x < (BlockDistance + BlockWidth))) && ((r11_active_y >= iw11_block_left_pos) && (r11_active_y < (iw11_block_left_pos + BlockHeight)))  ) begin
            
            r4_red   <= 0;      
            r4_green <= 0;    
            r4_blue  <= 0;  
        end 
        
        else if( ((r11_active_x >= (Ha - BlockDistance - BlockWidth)) && (r11_active_x < (Ha - BlockDistance))) && ((r11_active_y >= iw11_block_right_pos) && (r11_active_y < (iw11_block_right_pos + BlockHeight)))  ) begin
            
            r4_red   <= 0;      
            r4_green <= 0;    
            r4_blue  <= 0;  
        end
        
        else if((r11_active_y <= BlockMargin) || (r11_active_y >= (Va - BlockMargin))  ) begin
            
            r4_red   <= 5;      
            r4_green <= 5;    
            r4_blue  <= 5;  
        end
        
        else if((r11_active_x > ((Ha/2)-5)) && (r11_active_x <= ((Ha/2)+5)) && (r11_active_y > (PositionDisplayY+10)) && (r11_active_y <= (PositionDisplayY + 20))  ) begin
            r4_red   <= 0;      
            r4_green <= 0;    
            r4_blue  <= 0;
        end
        
        else if((r11_active_x > ((Ha/2)-5)) && (r11_active_x <= ((Ha/2)+5)) && (r11_active_y > (PositionDisplayY+40)) && (r11_active_y <= (PositionDisplayY + 50))  ) begin
            r4_red   <= 0;      
            r4_green <= 0;    
            r4_blue  <= 0;
        end
        
        else if((r11_active_x > PositionDisplayX) && (r11_active_x <= (PositionDisplayX + WidthDisplayX)) && (r11_active_y > PositionDisplayY) && (r11_active_y <= (PositionDisplayY + WidthDisplayY))  ) begin
            if (iw4_result_left == 0) begin
                if (zero[r11_active_y - PositionDisplayY - 1][r11_active_x - PositionDisplayX - 1]) begin
                    r4_red   <= 0;      
                    r4_green <= 0;    
                    r4_blue  <= 0; 
                end
                else begin
                    r4_red   <= iw4_red;      
                    r4_green <= iw4_green;    
                    r4_blue  <= iw4_blue;    
                end
            end
            else if (iw4_result_left == 1) begin
                if (one[r11_active_y - PositionDisplayY - 1][r11_active_x - PositionDisplayX - 1]) begin
                    r4_red   <= 0;      
                    r4_green <= 0;    
                    r4_blue  <= 0; 
                end
                else begin
                    r4_red   <= iw4_red;      
                    r4_green <= iw4_green;    
                    r4_blue  <= iw4_blue;    
                end
            end
            else if (iw4_result_left == 2) begin
                if (two[r11_active_y - PositionDisplayY - 1][r11_active_x - PositionDisplayX - 1]) begin
                    r4_red   <= 0;      
                    r4_green <= 0;    
                    r4_blue  <= 0; 
                end
                else begin
                    r4_red   <= iw4_red;      
                    r4_green <= iw4_green;    
                    r4_blue  <= iw4_blue;    
                end
            end
            else if (iw4_result_left == 3) begin
                if (three[r11_active_y - PositionDisplayY - 1][r11_active_x - PositionDisplayX - 1]) begin
                    r4_red   <= 0;      
                    r4_green <= 0;    
                    r4_blue  <= 0; 
                end
                else begin
                    r4_red   <= iw4_red;      
                    r4_green <= iw4_green;    
                    r4_blue  <= iw4_blue;    
                end
            end   
            else if (iw4_result_left == 4) begin
                if (four[r11_active_y - PositionDisplayY - 1][r11_active_x - PositionDisplayX - 1]) begin
                    r4_red   <= 0;      
                    r4_green <= 0;    
                    r4_blue  <= 0; 
                end
                else begin
                    r4_red   <= iw4_red;      
                    r4_green <= iw4_green;    
                    r4_blue  <= iw4_blue;    
                end
            end
            else if (iw4_result_left == 5) begin
                if (five[r11_active_y - PositionDisplayY - 1][r11_active_x - PositionDisplayX - 1]) begin
                    r4_red   <= 0;      
                    r4_green <= 0;    
                    r4_blue  <= 0; 
                end
                else begin
                    r4_red   <= iw4_red;      
                    r4_green <= iw4_green;    
                    r4_blue  <= iw4_blue;    
                end
            end
            else if (iw4_result_left == 6) begin
                if (six[r11_active_y - PositionDisplayY - 1][r11_active_x - PositionDisplayX - 1]) begin
                    r4_red   <= 0;      
                    r4_green <= 0;    
                    r4_blue  <= 0; 
                end
                else begin
                    r4_red   <= iw4_red;      
                    r4_green <= iw4_green;    
                    r4_blue  <= iw4_blue;    
                end
            end
            else if (iw4_result_left == 7) begin
                if (seven[r11_active_y - PositionDisplayY - 1][r11_active_x - PositionDisplayX - 1]) begin
                    r4_red   <= 0;      
                    r4_green <= 0;    
                    r4_blue  <= 0; 
                end
                else begin
                    r4_red   <= iw4_red;      
                    r4_green <= iw4_green;    
                    r4_blue  <= iw4_blue;    
                end
            end
            else if (iw4_result_left == 8) begin
                if (eight[r11_active_y - PositionDisplayY - 1][r11_active_x - PositionDisplayX - 1]) begin
                    r4_red   <= 0;      
                    r4_green <= 0;    
                    r4_blue  <= 0; 
                end
                else begin
                    r4_red   <= iw4_red;      
                    r4_green <= iw4_green;    
                    r4_blue  <= iw4_blue;    
                end
            end
            else if (iw4_result_left == 9) begin
                if (nine[r11_active_y - PositionDisplayY - 1][r11_active_x - PositionDisplayX - 1]) begin
                    r4_red   <= 0;      
                    r4_green <= 0;    
                    r4_blue  <= 0; 
                end
                else begin
                    r4_red   <= iw4_red;      
                    r4_green <= iw4_green;    
                    r4_blue  <= iw4_blue;    
                end 
            end
        end
        
        else if((r11_active_x > (PositionDisplayX + 2*WidthDisplayX)) && (r11_active_x <= (PositionDisplayX + 3*WidthDisplayX)) && (r11_active_y > PositionDisplayY) && (r11_active_y <= (PositionDisplayY + WidthDisplayY))  ) begin
            if (iw4_result_right == 0) begin
                if (zero[r11_active_y - PositionDisplayY - 1][r11_active_x - PositionDisplayX - 2*WidthDisplayX - 1]) begin
                    r4_red   <= 0;      
                    r4_green <= 0;    
                    r4_blue  <= 0; 
                end
                else begin
                    r4_red   <= iw4_red;      
                    r4_green <= iw4_green;    
                    r4_blue  <= iw4_blue;    
                end
            end
            else if (iw4_result_right == 1) begin
                if (one[r11_active_y - PositionDisplayY - 1][r11_active_x - PositionDisplayX - 2*WidthDisplayX - 1]) begin
                    r4_red   <= 0;      
                    r4_green <= 0;    
                    r4_blue  <= 0; 
                end
                else begin
                    r4_red   <= iw4_red;      
                    r4_green <= iw4_green;    
                    r4_blue  <= iw4_blue;    
                end
            end
            else if (iw4_result_right == 2) begin
                if (two[r11_active_y - PositionDisplayY - 1][r11_active_x - PositionDisplayX - 2*WidthDisplayX - 1]) begin
                    r4_red   <= 0;      
                    r4_green <= 0;    
                    r4_blue  <= 0; 
                end
                else begin
                    r4_red   <= iw4_red;      
                    r4_green <= iw4_green;    
                    r4_blue  <= iw4_blue;    
                end
            end
            else if (iw4_result_right == 3) begin
                if (three[r11_active_y - PositionDisplayY - 1][r11_active_x - PositionDisplayX - 2*WidthDisplayX - 1]) begin
                    r4_red   <= 0;      
                    r4_green <= 0;    
                    r4_blue  <= 0; 
                end
                else begin
                    r4_red   <= iw4_red;      
                    r4_green <= iw4_green;    
                    r4_blue  <= iw4_blue;    
                end
            end   
            else if (iw4_result_right == 4) begin
                if (four[r11_active_y - PositionDisplayY - 1][r11_active_x - PositionDisplayX - 2*WidthDisplayX - 1]) begin
                    r4_red   <= 0;      
                    r4_green <= 0;    
                    r4_blue  <= 0; 
                end
                else begin
                    r4_red   <= iw4_red;      
                    r4_green <= iw4_green;    
                    r4_blue  <= iw4_blue;    
                end
            end
            else if (iw4_result_right == 5) begin
                if (five[r11_active_y - PositionDisplayY - 1][r11_active_x - PositionDisplayX - 2*WidthDisplayX - 1]) begin
                    r4_red   <= 0;      
                    r4_green <= 0;    
                    r4_blue  <= 0; 
                end
                else begin
                    r4_red   <= iw4_red;      
                    r4_green <= iw4_green;    
                    r4_blue  <= iw4_blue;    
                end
            end
            else if (iw4_result_right == 6) begin
                if (six[r11_active_y - PositionDisplayY - 1][r11_active_x - PositionDisplayX - 2*WidthDisplayX - 1]) begin
                    r4_red   <= 0;      
                    r4_green <= 0;    
                    r4_blue  <= 0; 
                end
                else begin
                    r4_red   <= iw4_red;      
                    r4_green <= iw4_green;    
                    r4_blue  <= iw4_blue;    
                end
            end
            else if (iw4_result_right == 7) begin
                if (seven[r11_active_y - PositionDisplayY - 1][r11_active_x - PositionDisplayX - 2*WidthDisplayX - 1]) begin
                    r4_red   <= 0;      
                    r4_green <= 0;    
                    r4_blue  <= 0; 
                end
                else begin
                    r4_red   <= iw4_red;      
                    r4_green <= iw4_green;    
                    r4_blue  <= iw4_blue;    
                end
            end
            else if (iw4_result_right == 8) begin
                if (eight[r11_active_y - PositionDisplayY - 1][r11_active_x - PositionDisplayX - 2*WidthDisplayX - 1]) begin
                    r4_red   <= 0;      
                    r4_green <= 0;    
                    r4_blue  <= 0; 
                end
                else begin
                    r4_red   <= iw4_red;      
                    r4_green <= iw4_green;    
                    r4_blue  <= iw4_blue;    
                end
            end
            else if (iw4_result_right == 9) begin
                if (nine[r11_active_y - PositionDisplayY - 1][r11_active_x - PositionDisplayX - 2*WidthDisplayX - 1]) begin
                    r4_red   <= 0;      
                    r4_green <= 0;    
                    r4_blue  <= 0; 
                end
                else begin
                    r4_red   <= iw4_red;      
                    r4_green <= iw4_green;    
                    r4_blue  <= iw4_blue;    
                end 
            end
        end
            
        //*****************************************************************
            
        else begin
                
            r4_red   <= iw4_red;      
            r4_green <= iw4_green;    
            r4_blue  <= iw4_blue;    
        end           
    end
    
    //*****************************************************************
    //*****************************************************************
    always @ ( posedge iw_pix_clk ) begin
        
        if( r11_h_count < Ht ) begin
            r11_h_count <= r11_h_count + 1;
            
           if( w_hactive == 1 )
                r11_active_x <= r11_active_x + 1;
        end
   
        //*****************************************************************
         
        else begin
        
            r11_h_count <= 1; 
            r11_active_x <= 1;
            
            //*****************************************************************

            if( r11_v_count < Vt) begin
                r11_v_count <= r11_v_count + 1;
            
                //*****************************************************************
                
                if( w_vactive == 1 )
                    r11_active_y <= r11_active_y + 1;
            end
                
            //*****************************************************************
                
            else begin
            
                r11_v_count <= 1;  
                r11_active_y <= 1;
            end        
        end
    end
    
endmodule