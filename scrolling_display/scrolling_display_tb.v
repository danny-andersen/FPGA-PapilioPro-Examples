`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:55:50 07/12/2014
// Design Name:   scrolling_display
// Module Name:   C:/Users/S243372/Dropbox/Workspaces/Projects_FPGA/scrolling_display/scrolling_display_tb.v
// Project Name:  scrolling_display
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: scrolling_display
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module scrolling_display_tb;

	// Inputs
	reg [7:0] ascii;
	reg dsn;
	reg clearn;
	reg clk;
	reg rstn;

	// Outputs
	wire [7:0] segments;
	wire [3:0] digit_select;
	wire [7:0] leds;

	// Instantiate the Unit Under Test (UUT)
	// Change the clk generation bits so that we have a fast sim time
	scrolling_display #(.SCROLL_CLK_BITS(8),.DISPLAY_CLK_BITS(4)) uut (
		.ascii(ascii),
		.dsn(dsn),
		.clearn(clearn),
		.clk(clk),
		.rstn(rstn), 
		.segments(segments), 
		.digit_select(digit_select),
		.leds(leds)		//debug leds
	);
	
   parameter PERIOD = 31.25; //31.25ns = 32MHz

   always begin
      clk = 1'b0;
      #(PERIOD/2) clk = 1'b1;
      #(PERIOD/2);
   end

	initial begin
		// Initialize Inputs
		ascii = 0;
		dsn = 1;
		clearn = 1;
		clk = 0;
		rstn = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		rstn = 0;
		#100;
		rstn = 1;
		
		// Add stimulus here
		#50000  //Give a chance for default byte pattern to be shown
		//Add in new bytes
		ascii <= 8'h30;
		dsn <= 0;
		#(PERIOD *2)
		dsn <= 1;
		#(PERIOD *2)
		ascii <= 8'h31;
		dsn <= 0;
		#(PERIOD *2)
		dsn <= 1;
		#(PERIOD *2)
		ascii <= 8'h32;
		dsn <= 0;
		#(PERIOD *2)
		dsn <= 1;
		#(PERIOD *2)
		ascii <= 8'h33;
		dsn <= 0;
		#(PERIOD *2)
		dsn <= 1;
		#(PERIOD *2)
		ascii <= 8'h34;
		dsn <= 0;
		#(PERIOD *2)
		dsn <= 1;
		#(PERIOD *2)
		ascii <= 8'h35;
		dsn <= 0;
		#(PERIOD *2)
		dsn <= 1;
		#(PERIOD *2)
		ascii <= 8'h36;
		dsn <= 0;
		#(PERIOD *2)
		dsn <= 1;
		#(PERIOD *2)
		ascii <= 8'h37;
		dsn <= 0;
		#(PERIOD *2)
		dsn <= 1;
		#(PERIOD *2)
		#150000  //Give a chance for byte pattern to be shown
		//Clear display
		clearn = 0;
		#(PERIOD * 2);
		clearn = 1;
		#50000;
		$finish;
	end
      
endmodule

