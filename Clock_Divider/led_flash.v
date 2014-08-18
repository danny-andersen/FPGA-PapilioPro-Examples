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
	 input rst,
    output led_out
    );

	wire enable;
	wire clk_dcm;
	wire div1_out;
	wire div2_out;
	
	//Use DCM primitive to divide input clock down to 3.25Mhz
	dcm1 clk_divider
		(// Clock in ports
		 .CLK_IN1(clk),      // IN -> 32MHz
		 // Clock out ports
		 .CLK_OUT1(clk_dcm),     // OUT -> 3.25 MHz
		 // Status and control signals
		 .RESET(rst),// IN
		 .LOCKED(enable));      // OUT
	
	//Divide clock by 100 -->32.5KHz
	divider #(.DIVIDE_BITS(7),.DIVIDE(100)) div1(
 		.enable(enable), 
		.clk(clk_dcm), 
		.rst(rst), 
		.out1(div1_out)
		);

	//Divide clock by 100 -->325Hz
	divider #(.DIVIDE_BITS(7),.DIVIDE(100)) div2(
 		.enable(enable), 
		.clk(clk), 
		.rst(rst), 
		.out1(div2_out)
		);

	//Divide clock by 100 --> 3.25Hz
	divider #(.DIVIDE_BITS(7),.DIVIDE(100)) div3(
 		.enable(enable), 
		.clk(clk), 
		.rst(rst), 
		.out1(led_out)
		);
endmodule
