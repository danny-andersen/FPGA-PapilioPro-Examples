`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:45:46 06/26/2014
// Design Name:   divider
// Module Name:   /home/danny/Papilio/Projects/Clock_Divider/divider_tb.v
// Project Name:  Clock_Divider
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: divider
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module divider_tb;

	// Inputs
	reg enable;
	reg clk;
	reg rst;

	// Outputs
	wire out1;

	// Instantiate the Unit Under Test (UUT)
	divider #(.DIVIDE_BITS(7),.DIVIDE(100),.CLEAR_COUNT(50)) uut (
		.enable(enable), 
		.clk(clk), 
		.rst(rst), 
		.out1(out1)
	);


   parameter PERIOD = 30; //30ns = 30MHz

   always begin
      clk = 1'b0;
      #(PERIOD/2) clk = 1'b1;
      #(PERIOD/2);
   end  
	
	initial begin
		// Initialize Inputs
		enable = 1'b0;
		rst = 1'b1;

		// Wait 100 ns for global reset to finish
		#100;
		rst = 1'b0;
		#100;
    enable = 1'b1;  
		// Add stimulus here
	end

initial
	begin
		$monitor("%t: out: %d", $time, out1);
	end
   
endmodule

