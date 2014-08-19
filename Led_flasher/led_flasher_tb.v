`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:15:58 06/29/2014
// Design Name:   led_flash
// Module Name:   /home/danny/Papilio/Projects/Led_flasher/led_flasher_tb.v
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

module led_flasher_tb;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire led_out;

	// Instantiate the Unit Under Test (UUT)
	//Speed up the simulation by removing the final divider
	led_flash #(.FINAL_DIVIDE(1)) uut (
		.clk(clk), 
		.rst(rst), 
		.led_out(led_out)
	);

   parameter PERIOD = 31.25; //= 32MHz

   always begin
      clk = 1'b0;
      #(PERIOD/2) clk = 1'b1;
      #(PERIOD/2);
   end  

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;

		// Wait 100 ns for global reset to finish
		#100;
		rst = 1'b0;
		#100;

		// Add stimulus here

	end
      
endmodule

