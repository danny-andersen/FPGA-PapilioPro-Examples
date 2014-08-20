`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   07:16:58 07/17/2014
// Design Name:   clock_gen
// Module Name:   C:/Users/S243372/Dropbox/Workspaces/Projects_FPGA/clock_gen/clock_gen_tb.v
// Project Name:  clock_gen
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: clock_gen
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module clock_gen_tb;

	// Inputs
	reg clk_in;
	reg rst;

	// Outputs
	wire clk_out;

	// Instantiate the Unit Under Test (UUT)
	clock_gen uut (
		.clk_in(clk_in), 
		.rst(rst), 
		.clk_out(clk_out)
	);

	parameter CLOCK_PERIOD = 32.25; //32 MHz
	
	always 
		begin
			clk_in <= 1'b0;
			#(CLOCK_PERIOD / 2);
			clk_in <= 1'b1;
			#(CLOCK_PERIOD / 2);
		end
		
	integer test_res = 0;
	
	initial begin
		// Initialize Inputs
		rst = 1'b0;

		// Wait 100 ns for global reset to finish
		#100;
      rst = 1'b1;
		#100;
		// Add stimulus here
		rst = 1'b0;
		//Wait for BITS clock periods
		#(CLOCK_PERIOD * 2**8 / 2)
		$display("%t: Output clock %b", $time, clk_out);
		if (clk_out == 1)
		 begin
				test_res = test_res + 1;
		 end
		//Wait for BITS clock periods
		#(CLOCK_PERIOD * 2**8 / 2)
		$display("%t: Output clock %b", $time, clk_out);
		if (clk_out == 0)
		 begin
				test_res = test_res + 1;
		 end
		if (test_res == 2)
		 begin
			$display("Output clock correct");
		 end
		else
		 begin
			$display("Output clock failed");
		 end
		$finish;
	end

	initial
		begin
			$monitor("%t: Clock out; %b", $time, clk_out);
		end
		
endmodule

