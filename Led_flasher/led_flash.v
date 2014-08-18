`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:49:19 06/27/2014 
// Design Name: 
// Module Name:    led_flash 
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
module led_flash(
    input clk,
	 input rstn,
    output led_out,
    output led_out0,
    output led_out1,
    output led_out2
    );

	parameter FINAL_DIVIDE = 25; //Final divide factor 100 => 325Hz -> 3.25HZ
	
	wire enable;
	wire clk_dcm;
	wire div1_out;
	wire div2_out;
	wire div3_out;
	wire div4_out;
	wire rst;

	assign rst= ~rstn; //Invert reset input
	assign led_out = div3_out;
	assign led_out0 = led_out; //Replicate led flash on base board to logic start board
	assign led_out1 = div4_out;
	assign led_out2 = div5_out;
	
	//Use DCM primitive to divide input clock down to 3.25Mhz (configured using DCM wizard)
	dcm1 clk_divider
		(// Clock in ports
		 .CLK_IN1(clk),      // IN -> 32MHz
		 // Clock out ports
		 .CLK_OUT1(clk_dcm),     // OUT -> 3.25 MHz
		 // Status and control signals
		 .RESET(rst),// IN
		 .LOCKED(enable));      // OUT
	
	//Divide clock by 100 -->32.5KHz
	divider #(.DIVIDE_BITS(7),.DIVIDE(100),.CLEAR_COUNT(50)) div1(
 		.enable(enable), 
		.clk(clk_dcm), 
		.rst(rst), 
		.out1(div1_out)
		);

	//Divide clock by 100 -->325Hz
	divider #(.DIVIDE_BITS(7),.DIVIDE(100),.CLEAR_COUNT(50)) div2(
 		.enable(enable), 
		.clk(div1_out), 
		.rst(rst), 
		.out1(div2_out)
		);

	//Divide clock by 25 --> 12.25Hz
	divider #(.DIVIDE_BITS(7),.DIVIDE(FINAL_DIVIDE),.CLEAR_COUNT(FINAL_DIVIDE/2)) div3(
 		.enable(enable), 
		.clk(div2_out), 
		.rst(rst), 
		.out1(div3_out)
		);

	//Divide clock by 12 --> 6.25Hz
	divider #(.DIVIDE_BITS(2),.DIVIDE(2),.CLEAR_COUNT(1)) div4(
 		.enable(enable), 
		.clk(div3_out), 
		.rst(rst), 
		.out1(div4_out)
		);

	//Divide clock by 12 --> 6.25Hz
	divider #(.DIVIDE_BITS(2),.DIVIDE(2),.CLEAR_COUNT(1)) div5(
 		.enable(enable), 
		.clk(div4_out), 
		.rst(rst), 
		.out1(div5_out)
		);
endmodule
