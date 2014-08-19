`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:15:24 06/25/2014 
// Design Name: 
// Module Name:    divider 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
// Sets its output high when the DIVIDE number of clocks has been reached
// Sets output low again when CLEAR_COUNT number of clocks have passed again
// Note CLEAR_COUNT < DIVIDE
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module divider(enable, clk, rst, out1
    );
	 input enable;
	 input clk;
	 input rst;
	 output out1;
	 
	 parameter DIVIDE_BITS=4;
	 parameter DIVIDE=10;
	 parameter CLEAR_BITS=4;
	 parameter CLEAR_COUNT=9;
	 
	 reg out1;
	 reg [DIVIDE_BITS-1:0] counter;
	 reg [CLEAR_BITS-1:0] clear_counter;
	 
	 always @(posedge clk or posedge rst)
	 begin
		//Clear counter and output on reset or not enable
		if (rst)
		 begin
			out1 <= 0;
			counter <= 0;
			clear_counter <= 0;
		 end
		else if (enable == 1'b1)
		 begin
			//Check if clear count reached
			if (out1 == 1'b1)
			 begin
					if (clear_counter == CLEAR_COUNT-1)
					 begin
						out1 <= 1'b0;
						clear_counter <= 0;
					 end
					else
					 begin
						out1 <= out1;
						clear_counter <= clear_counter + 1'b1;
					 end
			 end
			else if (counter == DIVIDE)
				//Check if max count is reached
				 begin
					out1 <= 1'b1;
					counter <= 0;
				 end
			else
			 begin
 				 out1 <= out1;
				 counter <= counter + 1'b1;
			 end
		 end //if enabled
		else
		 begin
			out1 <= 0;
			counter <= 0;
			clear_counter <= 0;
		 end

	end //always
		
endmodule
