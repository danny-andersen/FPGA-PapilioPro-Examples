`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:28:41 07/12/2014 
// Design Name: 
// Module Name:    four_char_display 
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
module four_char_display(
	input [7:0] digit0,  //LSB
	input [7:0] digit1,
	input [7:0] digit2,
	input [7:0] digit3,  //MSB
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
		 case (value)
			8'h20: set_segments = 8'b11111111; //Space
			8'h21: set_segments = 8'b01111001; //!
			8'h2d: set_segments = 8'b10111111; //-
			8'h2e: set_segments = 8'b01111111; //.
			8'h30: set_segments = 8'b11000000; //0
			8'h31: set_segments = 8'b11111001; //1
			8'h32: set_segments = 8'b10100100; //2
			8'h33: set_segments = 8'b10110000; //3
			8'h34: set_segments = 8'b10011001; //4
			8'h35: set_segments = 8'b10010010; //5
			8'h36: set_segments = 8'b10000010; //6
			8'h37: set_segments = 8'b11111000; //7
			8'h38: set_segments = 8'b10000000; //8
			8'h39: set_segments = 8'b10011000; //9
			8'h41: set_segments = 8'b10001000; //A
			8'h42: set_segments = 8'b10000011; //B
			8'h43: set_segments = 8'b11000110; //C
			8'h44: set_segments = 8'b10100001; //D
			8'h45: set_segments = 8'b10000110; //E
			8'h46: set_segments = 8'b10001110; //F
			8'h47: set_segments = 8'b10000010; //G
			8'h48: set_segments = 8'b10001001; //H
			8'h49: set_segments = 8'b11001111; //I
			8'h4a: set_segments = 8'b11110001; //J
			8'h4b: set_segments = 8'b10001001; //K
			8'h4C: set_segments = 8'b11000111; //L
			8'h4D: set_segments = 8'b11001000; //M
			8'h4E: set_segments = 8'b11001000; //N
			8'h4F: set_segments = 8'b11000000; //0
			8'h50: set_segments = 8'b10001100; //P
			8'h51: set_segments = 8'b01000000; //Q
			8'h52: set_segments = 8'b10001000; //R
			8'h53: set_segments = 8'b10010010; //S
			8'h54: set_segments = 8'b10001111; //T
			8'h55: set_segments = 8'b11000001; //U
			8'h56: set_segments = 8'b11000001; //V
			8'h57: set_segments = 8'b11000001; //W
			8'h58: set_segments = 8'b10001001; //X
			8'h59: set_segments = 8'b10010001; //Y
			8'h5A: set_segments = 8'b10100100; //Z
			8'h61: set_segments = 8'b10001000; //a
			8'h62: set_segments = 8'b10000011; //b
			8'h63: set_segments = 8'b11000110; //c
			8'h64: set_segments = 8'b10100001; //d
			8'h65: set_segments = 8'b10000110; //e
			8'h66: set_segments = 8'b10001110; //f
			8'h67: set_segments = 8'b10000010; //g
			8'h68: set_segments = 8'b10001011; //h
			8'h69: set_segments = 8'b11001111; //i
			8'h6a: set_segments = 8'b11110001; //j
			8'h6b: set_segments = 8'b10001001; //k
			8'h6C: set_segments = 8'b11000111; //l
			8'h6D: set_segments = 8'b11001000; //m
			8'h6E: set_segments = 8'b11001000; //n
			8'h6F: set_segments = 8'b11000000; //o
			8'h70: set_segments = 8'b10001100; //p
			8'h71: set_segments = 8'b01000000; //q
			8'h72: set_segments = 8'b10001000; //r
			8'h73: set_segments = 8'b10010010; //s
			8'h74: set_segments = 8'b10001111; //t
			8'h75: set_segments = 8'b11000001; //u
			8'h76: set_segments = 8'b11000001; //v
			8'h77: set_segments = 8'b11000001; //w
			8'h78: set_segments = 8'b10001001; //x
			8'h79: set_segments = 8'b10010001; //y
			8'h7A: set_segments = 8'b10100100; //z
			default: set_segments = 8'b10111111; //-
		endcase
		end
	endfunction
endmodule
