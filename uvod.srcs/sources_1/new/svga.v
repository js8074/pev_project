
`timescale 1ns / 1ps

//*****************************************************************
//*****************************************************************
module svga(

    input wire iw_pix_clk,          //40 MHz for SVGA
    
    input wire[3:0] iw4_red,
    input wire[3:0] iw4_green,
    input wire[3:0] iw4_blue,
    
    input wire[10:0] iw11_x_pos,
    input wire[10:0] iw11_y_pos,
    
    //*****************************************************************
    
    output wire[3:0] ow4_red,
    output wire[3:0] ow4_green,
    output wire[3:0] ow4_blue,
    
    // output wire[10:0] ow_cursor_x,
    // output wire[10:0] ow_cursor_y,

    output wire[10:0] ow11_curr_pixel_x,
    output wire[10:0] ow11_curr_pixel_y,

    output wire ow_hsync,           //Horizontal sync
    output wire ow_vsync);          //Vertical sync

    
    

    //*****************************************************************
    // Cursor
    //*****************************************************************
    localparam CursorSize = 10;
    
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
    // VGA 640 x 480
    //*****************************************************************
    /*
    localparam Ha = 640;
    localparam Hf =  16;
    localparam Hs =  96;
    localparam Hb =  48;
	localparam Ht = 800;
	
	localparam Va =  480;
    localparam Vf =   10;
    localparam Vs =    2;
    localparam Vb =   33;
    localparam Vt =  525;
    */
    
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
    end
    
    
    //*****************************************************************
    //*****************************************************************
    always @ ( posedge iw_pix_clk ) begin
    
        if( (r11_active_x >= iw11_x_pos && r11_active_x < (iw11_x_pos + CursorSize)) && (r11_active_y >= iw11_y_pos && r11_active_y < (iw11_y_pos + CursorSize))  ) begin
            
            r4_red   <= 0;      
            r4_green <= 0;    
            r4_blue  <= 0;  
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

assign ow11_curr_pixel_x = r11_active_x;
assign ow11_curr_pixel_y = r11_active_y;

endmodule
