`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:15:23 07/12/2014 
// Design Name: 
// Module Name:    scrolling_display 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module scrolling_display(
	input [7:0] ascii, //byte to strobe in
	input	dsn,  //data strobe
	input clearn, //Clear buffer
	input clk,
	input rstn,
	output [7:0] segments, //dp, g, f, e, d, c, b, a
	output [3:0] digit_select,  //3 = MSB == AN0 on logicstart wing
	output [7:0] leds		//debug leds
    );

	wire enable;
	wire scroll_clk;
	wire clk_disp;
	wire rst;
	reg init;
	reg [7:0] ascii_buf[0:31];
	reg [4:0] buf_len;
	reg [4:0] buf_ptr;  //Current position in buf of lsb digit of display
	reg [7:0] digit0;
	reg [7:0] digit1;
	reg [7:0] digit2;
	reg [7:0] digit3;
	wire ds_sync;
   reg [1:0] ds_sreg;                                                                           
	wire clear_sync;
   reg [1:0] clr_sreg;                                                                           
	
	assign rst = ~rstn;
	
	assign leds[4:0] = buf_ptr[4:0];
	assign leds[5] = clear_sync;
	assign leds[6] = init;
	assign leds[7] = scroll_clk;

	// Instantiate the display
	four_char_display display (
		 .digit0(digit0), 
		 .digit1(digit1), 
		 .digit2(digit2), 
		 .digit3(digit3), 
		 .clk(clk_disp), 
		 .rst(rst), 
		 .segments(segments), 
		 .digit_select(digit_select)
		 );

	parameter SCROLL_CLK_BITS = 22;  //32M / 2^^22 ~= 8
	parameter DISPLAY_CLK_BITS = 15; // 32MHz / 2^^15 ~= 1KHz
	
	//Generate 4Hz (ish) clock from 32MHz
	clock_gen #(.BITS(SCROLL_CLK_BITS)) four_hz (
    .clk_in(clk), 
    .rst(rst), 
    .clk_out(scroll_clk)
    );

	//Generate 1KHz (ish) clock from 32MHz
	clock_gen #(.BITS(DISPLAY_CLK_BITS)) one_khz (
    .clk_in(clk), 
    .rst(rst), 
    .clk_out(clk_disp)
    );

	//Sync the incoming ds into a one shot
	assign ds_sync = ds_sreg[0] & ~ds_sreg[1];
   always @(posedge clk)
	 begin
		if (rst)
		 begin
			ds_sreg <= 2'b00;
		 end
		else
		 begin
			ds_sreg <= {ds_sreg[0], ~dsn};
		 end
   end
	
	//Sync the incoming clear into a one shot
	assign clear_sync = clr_sreg[0] & ~clr_sreg[1];
   always @(posedge clk) 
	 begin
		if (rst)
		 begin
		  clr_sreg <= 2'b00;
		 end
		else
		 begin
		  clr_sreg <= {clr_sreg[0], ~clearn};
		 end
    end

	//Read into buffer or clear
	
	always @(posedge clk)
	begin
		if (rst)
		 begin
			init <= 1'b1;
			//Set default display of "Hello"
			//buf_len <= 1'b00000;
			buf_len <= 5;
			ascii_buf[0] <= 8'h48;
			ascii_buf[1] <= 8'h45;
			ascii_buf[2] <= 8'h4c;
			ascii_buf[3] <= 8'h4c;
			ascii_buf[4] <= 8'h4f;
		 end
		else
		 begin
			if (clear_sync)
			 begin //Clear out buffer on clear
				init <= 1'b0;
				buf_len <= 1'b00000;
			 end
			else if (ds_sync) //New byte
			 begin
				//Add new byte to buffer
				if (init)
				 begin
					//Clear out initial bytes and add new one to start
					init <= 1'b0;
					if (ascii == 8'h7F || ascii == 8'h08)
					 begin
						buf_len <= 0;
					 end
					else
					 begin
						buf_len <= 1'b1;
						ascii_buf[0] <= ascii;
					 end
				 end
				else
				 begin
					init <= 1'b0;
					if (ascii == 8'h7F || ascii == 8'h08)
					 begin
						if (buf_len != 0)
						 begin
							buf_len <= buf_len - 1'b1;
						 end
					 end
					else
					 begin
						buf_len <= buf_len + 1'b1;
						ascii_buf[buf_len] <= ascii;
					 end
				 end
			 end
			else
			 begin //prevent latches
				init <= init;
				buf_len <= buf_len;
			 end
 		 end
	end

	//Scroll display 
	always @(posedge scroll_clk or posedge rst)
	begin
		if (rst)
			begin
				buf_ptr <= 0;
				digit0 <= 8'h20; //Blank
				digit1 <= 8'h20; //Blank
				digit2 <= 8'h20; //Blank
				digit3 <= 8'h20; //Blank
			end
		else
		  begin
			case (buf_len) //Static or scrolling display
			4:
 			 begin
				digit3 <= ascii_buf[3];
				digit2 <= ascii_buf[2];
				digit1 <= ascii_buf[1];
				digit0 <= ascii_buf[0];
				buf_ptr <= 5'h4;
			 end
			3:
			  begin
				digit3 <= ascii_buf[2];
				digit2 <= ascii_buf[1];
				digit1 <= ascii_buf[0];
				digit0 <= 8'h20; //Blank
				buf_ptr <= 5'h3;
			  end
			2:
			  begin
				digit3 <= ascii_buf[1];
				digit2 <= ascii_buf[0];
				digit1 <= 8'h20; //Blank
				digit0 <= 8'h20; //Blank
				buf_ptr <= 5'h2;
			  end
			1:
			  begin
				digit3 <= ascii_buf[0];
				digit2 <= 8'h20; //Blank
				digit1 <= 8'h20; //Blank
				digit0 <= 8'h20; //Blank
				buf_ptr <= 5'h1;
			  end
			0:
			  begin
				digit3 <= 8'h20; //Blank
				digit2 <= 8'h20; //Blank
				digit1 <= 8'h20; //Blank
				digit0 <= 8'h20; //Blank
				buf_ptr <= 5'h0;
			  end
			default: //Scrolling display
			  begin
				if (buf_ptr < buf_len) //More to scroll
				 begin
					digit3 <= ascii_buf[buf_ptr];
					digit2 <= (buf_ptr > 0) ? ascii_buf[buf_ptr - 1] : 8'h20;
					digit1 <= (buf_ptr > 1) ? ascii_buf[buf_ptr - 2] : 8'h20;
					digit0 <= (buf_ptr > 2) ? ascii_buf[buf_ptr - 3] : 8'h20;
					buf_ptr <= buf_ptr + 1'b1;
				 end
				else if (buf_ptr == buf_len) //Coming to the end - do blanks
				 begin
					digit3 <= 8'h20; //Blank
					digit2 <= ascii_buf[buf_ptr - 1];
					digit1 <= ascii_buf[buf_ptr - 2];
					digit0 <= ascii_buf[buf_ptr - 3];
					buf_ptr <= buf_ptr + 1'b1;
				 end
				else if (buf_ptr == buf_len + 1)
				 begin
					digit3 <= 8'h20; //Blank
					digit2 <= 8'h20; //Blank
					digit1 <= ascii_buf[buf_ptr - 2];
					digit0 <= ascii_buf[buf_ptr - 3];
					buf_ptr <= buf_ptr + 1'b1;
				 end
				else if (buf_ptr == buf_len + 2)
				 begin
					digit3 <= 8'h20; //Blank
					digit2 <= 8'h20; //Blank
					digit1 <= 8'h20; //Blank
					digit0 <= ascii_buf[buf_ptr - 3];
					buf_ptr <= buf_ptr + 1'b1;
				 end
				else if (buf_ptr == buf_len + 3)
				 begin
					digit3 <= ascii_buf[0]; //Start again
					digit2 <= 8'h20; //Blank
					digit1 <= 8'h20; //Blank
					digit0 <= 8'h20; //Blank
					buf_ptr <= 1'b1;
				 end
			  end //scrolling display
			endcase
		  end //Not reset
	end //always

endmodule
