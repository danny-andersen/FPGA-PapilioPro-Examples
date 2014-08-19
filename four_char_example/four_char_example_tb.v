`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:07:02 07/16/2014
// Design Name:   four_char_example
// Module Name:   C:/Users/S243372/Dropbox/Workspaces/Projects_FPGA/four_char_example/four_char_example_tb.v
// Project Name:  four_char_example
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: four_char_example
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module four_char_example_tb;

	// Inputs
	reg clk;
	reg rstn;

	// Outputs
	wire [7:0] segments;
	wire [7:0] leds;
	wire [3:0] digit_select;

	// Instantiate the Unit Under Test (UUT)
	four_char_example uut (
		.clk(clk), 
		.rstn(rstn), 
		.segments(segments), 
		.leds(leds), 
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
		clk = 0;
		rstn = 0;

		// Wait 100 ns for global reset to finish
		#100;
      rstn = 1;  
		// Add stimulus here

	end
      
endmodule

