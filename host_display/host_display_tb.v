`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:45:37 07/19/2014
// Design Name:   host_display
// Module Name:   C:/Users/S243372/Dropbox/Workspaces/Projects_FPGA/host_display/host_display_tb.v
// Project Name:  host_display
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: host_display
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module host_display_tb;

	// Inputs
	reg rx;
	reg clk;
	reg rstn;

	// Outputs
	wire tx;
	wire [7:0] leds;
	wire [7:0] segments;
	wire [3:0] digit_select;
	wire base_led;

	// Instantiate the Unit Under Test (UUT)
	host_display uut (
		.rx(rx), 
		.clk_in(clk), 
		.rstn(rstn), 
		.tx(tx), 
		.base_led(base_led),
		.leds(leds), 
		.segments(segments), 
		.digit_select(digit_select)
	);

   parameter CLK_PERIOD = 31.25; //31.25ns = 32MHz
   parameter BIT_PERIOD = 26000; //38400 Baud bit period = 26us

   always begin
      clk = 1'b0;
      #(CLK_PERIOD/2) clk = 1'b1;
      #(CLK_PERIOD/2);
   end  

	initial 
	 begin
		// Initialize Inputs
		rx = 0;
		clk = 0;
		rstn = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		//Reset needs to be on for at least SP2 3 clk sample periods
		#4000;
  		rstn = 1'b1;
  
		//Byte 1: 11011001 = 0xD9  
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
		//Next Byte: 00110010 = 0x32 = 50
		rx = 0; //START
		#(BIT_PERIOD);
		rx = 0; //Bit 0
		#(BIT_PERIOD);
		rx = 1; //Bit 1
		#(BIT_PERIOD);
		rx = 0; //Bit 2
		#(BIT_PERIOD);
		rx = 0; //Bit 3
		#(BIT_PERIOD);
		rx = 1; //Bit 4
		#(BIT_PERIOD);
		rx = 1; //Bit 5
		#(BIT_PERIOD);
		rx = 0; //Bit 6
		#(BIT_PERIOD);
		rx = 0; //Bit 7
		#(BIT_PERIOD);
		rx = 1; //STOP
		#(BIT_PERIOD);
		//Clear display: 00001010 = 0x0a = \n 
		rx = 0; //START
		#(BIT_PERIOD);
		rx = 0; //Bit 0
		#(BIT_PERIOD);
		rx = 1; //Bit 1
		#(BIT_PERIOD);
		rx = 0; //Bit 2
		#(BIT_PERIOD);
		rx = 1; //Bit 3
		#(BIT_PERIOD);
		rx = 0; //Bit 4
		#(BIT_PERIOD);
		rx = 0; //Bit 5
		#(BIT_PERIOD);
		rx = 0; //Bit 6
		#(BIT_PERIOD);
		rx = 0; //Bit 7
		#(BIT_PERIOD);
		rx = 1; //STOP
		#(BIT_PERIOD);
		//First new Byte: 10100011 = 0xa3
		rx = 0; //START
		#(BIT_PERIOD);
		rx = 1; //Bit 0
		#(BIT_PERIOD);
		rx = 1; //Bit 1
		#(BIT_PERIOD);
		rx = 0; //Bit 2
		#(BIT_PERIOD);
		rx = 0; //Bit 3
		#(BIT_PERIOD);
		rx = 0; //Bit 4
		#(BIT_PERIOD);
		rx = 1; //Bit 5
		#(BIT_PERIOD);
		rx = 0; //Bit 6
		#(BIT_PERIOD);
		rx = 1; //Bit 7
		#(BIT_PERIOD);
		rx = 1; //STOP
		#(BIT_PERIOD);
		//Next Byte: 00100001 = 0x21
		rx = 0; //START
		#(BIT_PERIOD);
		rx = 1; //Bit 
		#(BIT_PERIOD);
		rx = 0; //Bit 1
		#(BIT_PERIOD);
		rx = 0; //Bit 2
		#(BIT_PERIOD);
		rx = 0; //Bit 3
		#(BIT_PERIOD);
		rx = 0; //Bit 4
		#(BIT_PERIOD);
		rx = 1; //Bit 5
		#(BIT_PERIOD);
		rx = 0; //Bit 6
		#(BIT_PERIOD);
		rx = 0; //Bit 7
		#(BIT_PERIOD);
		rx = 1; //STOP
		#(BIT_PERIOD);

	 end
	
endmodule

