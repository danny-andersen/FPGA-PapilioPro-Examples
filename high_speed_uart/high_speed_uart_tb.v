`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:11:58 07/26/2014
// Design Name:   high_speed_uart
// Module Name:   C:/Users/S243372/Dropbox/Workspaces/Projects_FPGA/high_speed_uart/high_speed_uart_tb.v
// Project Name:  high_speed_uart
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: high_speed_uart
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module high_speed_uart_tb;

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
	high_speed_uart uut (
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
   parameter BIT_PERIOD = 1085; //921600 Baud bit period 

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
		rst = 1'b1;

		// Wait 100 ns for global reset to finish
		#100;
		rst = 1'b1;
		//Reset needs to be on for at least SP2 3 clk sample periods
		#BIT_PERIOD;
  		rst = 1'b0;
  
		// Add stimulus here
		//Byte 1: 11011001 = 0xD9 = 217  
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
		#(BIT_PERIOD/2);
		if (rx_byte == 8'b11011001)
		 begin
			$display("%t: SUCCESS: RX1: Expected: %b and got %b", $time, 8'b11011001, rx_byte);
			rx_out1 = 1;
		 end
		else
			$display("%t: FAILED: RX1: Expected: %b but got %b", $time, 8'b11011001, rx_byte);
		#(BIT_PERIOD/2);
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
		#(BIT_PERIOD /2);
		if (rx_byte == 8'b00110010)
		 begin
			$display("%t: SUCCESS: RX2: Expected: %b and got %b", $time, 8'b000110010, rx_byte);
			rx_out2 = 1;
		 end
		else
			$display("%t: FAILED: RX2: Expected: %b but got %b", $time, 8'b000110010, rx_byte);
	end

	//Test tx
	initial 
		begin
			tx_ready <= 0;
			#(BIT_PERIOD*2); //wait for reset to finish
			tx_byte <= 8'h55;
			tx_ready <= 1;
			#(CLK_PERIOD);
			tx_ready <= 0;
			#(BIT_PERIOD) //START bit
			//Check bits are sent
			#(BIT_PERIOD/2); //sample half way
			tx_count = 0;
			tx_out[0] = tx;
			#(BIT_PERIOD)
			tx_count = 1;
			tx_out[1] = tx;
			#(BIT_PERIOD)
			tx_count = 2;
			tx_out[2] = tx;
			#(BIT_PERIOD)
			tx_count = 3;
			tx_out[3] = tx;
			#(BIT_PERIOD)
			tx_count = 4;
			tx_out[4] = tx;
			#(BIT_PERIOD)
			tx_count = 5;
			tx_out[5] = tx;
			#(BIT_PERIOD)
			tx_count = 6;
			tx_out[6] = tx;
			#(BIT_PERIOD)
			tx_count = 7;
			tx_out[7] = tx;
			if (tx_out == 8'h55)
				tx_out1 = 1;
			else
				$display("FAILED: TX1: Expected: %b but got %b", 8'h55, tx_out);
			tx_out <= 8'h0;
			#(BIT_PERIOD/2) //END of last bit
			#(BIT_PERIOD) //STOP bit
			tx_byte <= 8'hAA;
			tx_ready <= 1;
			#(CLK_PERIOD);
			tx_ready = 0;
			#(BIT_PERIOD); //START bit
			//Check bits are sent
			#(BIT_PERIOD/2); //Sample after half a bit
			tx_count = 0;
			tx_out[0] = tx;
			#(BIT_PERIOD)
			tx_count = 1;
			tx_out[1] = tx;
			#(BIT_PERIOD)
			tx_count = 2;
			tx_out[2] = tx;
			#(BIT_PERIOD)
			tx_count = 3;
			tx_out[3] = tx;
			#(BIT_PERIOD)
			tx_count = 4;
			tx_out[4] = tx;
			#(BIT_PERIOD)
			tx_count = 5;
			tx_out[5] = tx;
			#(BIT_PERIOD)
			tx_count = 6;
			tx_out[6] = tx;
			#(BIT_PERIOD)
			tx_count = 7;
			tx_out[7] = tx;
			if (tx_out == 8'hAA)
				tx_out2 = 1;
			else
				$display("FAILED: TX2: Expected: %b but got %b", 8'hAA, tx_out);

		end
	
	initial
		begin
		$monitor("%t: ready: %d frame_err: %d rx_byte: %b tx: %b", $time, ready, frame_err, rx_byte, tx);
		//Wait for 2 bytes to be sent
		#(BIT_PERIOD*12*2)
		//Check results
		if (rx_out1 && rx_out2 && tx_out1 && tx_out2)
			begin
			$display("SUCCESS: All outputs from uut correct!");
			end
		else	
			begin
			$display("Not all outputs as expected: rx_out1: %d, rx_out2: %d, tx_out1: %d, tx_out2 %d", rx_out1, rx_out2, tx_out1, tx_out2);
			end
		end
endmodule

