`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:11:07 06/29/2014
// Design Name:   led_flash
// Module Name:   /home/danny/Papilio/Projects/Led_flasher/led_flasher.v
// Project Name:  Led_flasher
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: led_flash
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module led_flasher;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire led_out;

	// Instantiate the Unit Under Test (UUT)
	led_flash uut (
		.clk(clk), 
		.rst(rst), 
		.led_out(led_out)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

