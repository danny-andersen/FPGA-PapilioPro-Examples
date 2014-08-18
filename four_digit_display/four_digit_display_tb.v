`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:03:33 07/17/2014
// Design Name:   four_digit_display
// Module Name:   C:/Users/S243372/Dropbox/Workspaces/Projects_FPGA/four_digit_display/four_digit_display_tb.v
// Project Name:  four_digit_display
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: four_digit_display
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module four_digit_display_tb;

	// Inputs
	reg [3:0] digit0;
	reg [3:0] digit1;
	reg [3:0] digit2;
	reg [3:0] digit3;
	reg clk;
	reg rst;

	// Outputs
	wire [7:0] segments;
	wire [3:0] digit_select;

	// Instantiate the Unit Under Test (UUT)
	four_digit_display uut (
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
		rst = 0;

		// Wait 100 ns for global reset to finish
		#100;
		rst = 1;
		#100
		rst = 0;
        
		// Add stimulus here
		digit0 = 1;
		digit1 = 1;
		digit2 = 1;
		digit3 = 1;
		#200;
		digit0 = 2;
		digit1 = 2;
		digit2 = 2;
		digit3 = 2;
		#200
		digit0 = 3;
		digit1 = 3;
		digit2 = 3;
		digit3 = 3;
		#200
		digit0 = 4;
		digit1 = 4;
		digit2 = 4;
		digit3 = 4;

	end
      
endmodule

