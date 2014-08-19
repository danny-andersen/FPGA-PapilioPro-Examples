`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:25:31 07/04/2014
// Design Name:   uart_simple
// Module Name:   C:/Users/S243372/Dropbox/Workspaces/Projects_FPGA/Uart_simple/uart_simple_tb.v
// Project Name:  Uart_simple
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: uart_simple
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module uart_simple_frame_err_tb;

	// Inputs
	reg rx;
	reg clk;
	reg rst;
	reg [7:0] tx_byte;
	reg tx_ready;

	// Outputs
	wire [7:0] rx_byte;
	wire tx;
	wire ready;
	wire frame_err;

	// Instantiate the Unit Under Test (UUT)
	uart_simple uut (
		.rx(rx), 
		.tx_send(tx_byte),
		.tx_ready(tx_ready),
		.clk(clk), 
		.rst(rst), 
		.rx_byte(rx_byte), 
		.ready(ready), 
		.frame_err(frame_err),
		.tx(tx)
	);

   parameter CLK_PERIOD = 31.25; //31.25ns = 32MHz
//   parameter BIT_PERIOD = 26000; //38400 Baud bit period = 26us
   parameter BIT_PERIOD = 13000; //38400 Baud bit period = 26us - set half the period to cause frame err

   always begin
      clk = 1'b0;
      #(CLK_PERIOD/2) clk = 1'b1;
      #(CLK_PERIOD/2);
   end  

	reg rx_out1 = 0;
	reg rx_out2 = 0;
	reg tx_out1 = 0;
	reg tx_out2 = 0;
	reg [7:0] tx_out = 8'b0;
	reg [7:0] tx_count = 0;
	
	//Text rx
	initial begin
		// Initialize Inputs
		rx = 1;
		rst = 1;

		// Wait 100 ns for global reset to finish
		#100;
		//Reset needs to be on for at least SP2 3 clk sample periods
		#4000;
  		rst = 1'b0;
  
		// Add stimulus here
		//Byte 1: 11011001 = 0xC9 = 217  
		rx = 1; //IDLE
		#(BIT_PERIOD);
		rx = 0; //START
		#(BIT_PERIOD);
		rx = 1; //Bit 0
		#(BIT_PERIOD);
		rx = 0; //Bit 1
		#(BIT_PERIOD);
		rx = 0; //Bit 2
		#(BIT_PERIOD);
		rx = 1; //Bit 3
		#(BIT_PERIOD);
		rx = 1; //Bit 4
		#(BIT_PERIOD);
		rx = 0; //Bit 5
		#(BIT_PERIOD);
		rx = 1; //Bit 6
		#(BIT_PERIOD);
		rx = 1; //Bit 7
		#(BIT_PERIOD);
		rx = 1; //STOP
		#(BIT_PERIOD);
		if (frame_err == 1)
			$display("%t: SUCCESS got frame_err", $time);
		else
			$display("%t: FAILED: No frame_err %b", $time, rx_byte);

		end
	
	initial
		begin
		$monitor("%t: ready: %d frame_err: %d rx_byte: %b", $time, ready, frame_err, rx_byte);
		end
endmodule

