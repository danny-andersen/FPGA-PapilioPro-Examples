`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:41:27 07/13/2014 
// Design Name: 
// Module Name:    four_char_example 
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
module four_char_example(
	input clk,
	input rstn,
	output [7:0] segments,
	output reg [7:0] leds,
	output [3:0] digit_select
    );

	wire rst;
	wire q_clk;
	reg [7:0] digit0;
	reg [7:0] digit1;
	reg [7:0] digit2;
	reg [7:0] digit3;

	divider clock_div (
		 .enable(enable), 
		 .clk(clk), 
		 .rst(rst), 
		 .out1(q_clk)
		 );

	four_char_display display (
    .digit0(digit0), 
    .digit1(digit1), 
    .digit2(digit2), 
    .digit3(digit3), 
    .clk(clk), 
    .rst(rst),
    .segments(segments), 
    .digit_select(digit_select)
    );

	assign rst = ~rstn;
	
	always @(posedge rst)
		begin
			digit0 <= 8'h30;
			digit1 <= 8'h31;
			digit2 <= 8'h32;
			digit3 <= 8'h33;
			leds <= 8'b10101010;
		end

endmodule
