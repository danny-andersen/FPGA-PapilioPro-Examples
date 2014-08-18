`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:58:57 07/12/2014
// Design Name:   four_char_display
// Module Name:   C:/Users/S243372/Dropbox/Workspaces/Projects_FPGA/four_char_display/four_char_display_tb.v
// Project Name:  four_char_display
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: four_char_display
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module four_char_display_tb;

	// Inputs
	reg [7:0] digit0;
	reg [7:0] digit1;
	reg [7:0] digit2;
	reg [7:0] digit3;
	reg clk;
	reg rst;

	// Outputs
	wire [7:0] segments;
	wire [3:0] digit_select;

	// Instantiate the Unit Under Test (UUT)
	four_char_display uut (
		.digit0(digit0), 
		.digit1(digit1), 
		.digit2(digit2), 
		.digit3(digit3), 
		.clk(clk), 
		.rst(rst), 
		.segments(segments), 
		.digit_select(digit_select)
	);

   parameter PERIOD = 31.25; //31.25ns = 32MHz

   always begin
      clk = 1'b0;
      #(PERIOD/2) clk = 1'b1;
      #(PERIOD/2);
   end  

	initial begin
		// Initialize Inputs
		digit0 = 0;
		digit1 = 0;
		digit2 = 0;
		digit3 = 0;
		clk = 0;
		rst = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		rst = 1;
		#100;
		rst = 0;
      
		// Add stimulus here
		digit0 = 8'h48; //H
		digit1 = 8'h45; //E
		digit2 <= 8'h4C; //L
		digit3 <= 8'h4F; //0
		
		#500
		
		$finish;

	end
      
endmodule

