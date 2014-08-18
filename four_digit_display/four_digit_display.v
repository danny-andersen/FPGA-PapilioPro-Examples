`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:57:31 07/11/2014 
// Design Name: 
// Module Name:    four_digit_display 
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
module four_digit_display(
	input [3:0] digit0,  //LSB
	input [3:0] digit1,
	input [3:0] digit2,
	input [3:0] digit3,  //MSB
	input clk,
	input rst,
	output reg [7:0] segments, //dp, g, f, e, d, c, b, a
	output reg [3:0] digit_select  //3 = MSB == AN0 on logicstart wing
    );

	reg [1:0] display_cnt;
	
	always @(posedge clk or posedge rst)
	begin
		if (rst)
 		 begin
			display_cnt <= 0;
			segments <= set_segments(0);
			digit_select <= 4'b1111;
		 end
		else
		 begin
			case (display_cnt)
				2'b00: begin
					segments <= set_segments(digit0);
					digit_select <= 4'b1110;
					end
				2'b01: begin
					segments <= set_segments(digit1);
					digit_select <= 4'b1101;
					end
				2'b10: begin
					segments <= set_segments(digit2);
					digit_select <= 4'b1011;
					end
				2'b11: begin
					segments <= set_segments(digit3);
					digit_select <= 4'b0111;
					end
				default: begin
					segments <= set_segments(0);
					digit_select <= 4'b1111;
					end
			endcase
			display_cnt <= display_cnt + 1'b1;
		 end
	end					
	
	function [7:0] set_segments;
		input [7:0] value;
		
		begin
		 case (value) //Note: 0 is ON 1 is OFF
			4'h0: set_segments = 8'b11000000;
			4'h1: set_segments = 8'b11111001;
			4'h2: set_segments = 8'b10100100;
			4'h3: set_segments = 8'b10110000;
			4'h4: set_segments = 8'b10011001;
			4'h5: set_segments = 8'b10010010;
			4'h6: set_segments = 8'b10000010;
			4'h7: set_segments = 8'b11111000;
			4'h8: set_segments = 8'b10000000;
			4'h9: set_segments = 8'b10011000;
			4'hA: set_segments = 8'b10001000;
			4'hB: set_segments = 8'b10000011;
			4'hC: set_segments = 8'b11000110;
			4'hD: set_segments = 8'b10100001;
			4'hE: set_segments = 8'b10000110;
			4'hF: set_segments = 8'b10001110;
			default: set_segments = 8'b10110110;
		  endcase
		end
	endfunction
endmodule
