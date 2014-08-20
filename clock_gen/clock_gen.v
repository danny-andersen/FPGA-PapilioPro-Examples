`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:13:02 07/17/2014 
// Design Name: 
// Module Name:    clock_gen 
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
module clock_gen(
    input clk_in,
    input rst,
    output clk_out
    );

	parameter BITS = 8;
	
	reg [BITS-1:0] counter;
	assign clk_out = counter[BITS-1];
	
	always @(posedge clk_in or posedge rst)
		begin
			if (rst)
			 begin
				counter <= 0;
			 end
			else
			 begin
				counter <= counter + 1'b1;
			 end
		end
		
			

endmodule
