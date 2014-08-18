`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:47:28 07/02/2014 
// Design Name: 
// Module Name:    uart_simple 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: Simple UART that is good up to 230400 baud with a 32MHz source clock 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module uart_simple(
	input rx,
	input [7:0] tx_send,
	input tx_ready,
	input clk,
	input rst,
	output reg [7:0] rx_byte,
	output reg ready,
	output reg frame_err,
	output reg tx
    );

	reg [7:0] tx_copy;
	
	parameter CLOCK_RATE = 32000000; //32MHz
	parameter BAUD_RATE = 9600; //Bit rate to receive at
	parameter SAMPLE_COUNT = 16; //Sample rx bit every 16 clocks
	//Calculate the divider to get sample clock of <SAMPLE_COUNT> * BAUD RATE * 4 (to get a correct Divider)
//	parameter DIVIDER = CLOCK_RATE / (BAUD_RATE * 4 * SAMPLE_COUNT);
	parameter DIVIDER = CLOCK_RATE / (BAUD_RATE * SAMPLE_COUNT);
	parameter BITS_DIVIDER = 8; //Number of bits to support DIVIDER count
	
	reg [BITS_DIVIDER-1:0] clk_divide_tx;
	reg [BITS_DIVIDER-1:0] clk_divide;
	
	reg sample_clk;  //Use DCM and counter to divide 32MHz / (38400 * 16 * 4) = 13
	reg sample_locked; //Set when sample clock locked
	
	reg start_flag; //Set when start bit received, reset on next rx bit edge

	reg tx_ready_held;
	
	reg [2:0] bit_counter; //Number of bits received
	reg [3:0] sample_counter; //Clock counter to determine sample count
	reg [2:0] tx_bit_counter; //Number of bits sent
	reg [3:0] tx_counter; //Bit Timer for tx
	
	reg [2:0] rx_state;
	reg [2:0] tx_state;

	parameter IDLE = 3'b000;
	parameter START = 3'b001;
	parameter BUSY = 3'b010;
	parameter STOP = 3'b011;
	parameter READ = 3'b100;
	parameter FRAME_ERR = 3'b101;

	reg rx_1; //Output of first stage of rx bit sync
	reg rx_bit; //Output of second stage (should be stable)

/*	
   // DCM_SP: Digital Clock Manager
   //         Spartan-6
   // Xilinx HDL Language Template, version 14.7

   DCM_SP #(
      .CLKDV_DIVIDE(DIVIDER),                   // CLKDV divide value
      .CLKIN_PERIOD(31.25),                  // Input clock period specified in nS
      .CLK_FEEDBACK("1X")                  // Feedback source (NONE, 1X, 2X)
   )
   DCM_SP1 (
		.CLK0(clk1),
      .CLKIN(clk),       // 1-bit input: Clock input
      .CLKFB(clk1),       // 1-bit input: Clock feedback input
      .RST(rst),            // 1-bit input: Active high reset input
      .PSEN(psen),         // 1-bit input: Phase shift enable
      .CLKDV(clk_inter)       // 1-bit output: Divided clock output
   );
   // End of DCM_SP_inst instantiation

	assign psen = 1'b0;
*/	

/*	
	divider sample_clk_gen #(.DIVIDE(DIVIDER),.DIVIDE_BITS(BITS_DIVIDER), .CLEAR_COUNT(1)) (
    .enable(enable), 
    .clk(clk), 
    .rst(rst), 
    .out1(sample_clk)
    );
*/

	//Generate the sample clock 
	always @(posedge clk)
		begin
			if (rst)
			 begin
				clk_divide <= 0;
				sample_locked <= 0;
				sample_clk <= 0;
			 end
			else
			 begin
				if (clk_divide == 2'b11)
				 begin
					sample_locked <= 1; //Set the first time only
				 end
				else
				 begin
					sample_locked <= sample_locked;
				 end
				if (clk_divide == DIVIDER)
				 begin
					sample_clk <= 1'b1;
					clk_divide <= 0;
				 end
				else
				 begin
					sample_clk <= 1'b0;
					clk_divide <= clk_divide + 1'b1;
				 end
			 end
		end

	//Check the bit state - set start flag if idle and rx_bit is 0
	always @(posedge clk)
	begin
			if (rst)
			 begin
				rx_1 <= 1'b1;
				rx_bit <= 1'b1;
				start_flag <= 1'b0;
			 end
			else
			 begin
 				rx_1 <= rx;
				rx_bit <= rx_1;
				if (sample_locked && rx_state == IDLE)
				 begin
					//sample clock is locked and so can trust state of rx_edge
					start_flag <= ~rx_bit;
				 end
				else
				 begin
					start_flag <= 1'b0;
				 end
			 end
	end //always

	//rx block
	always @(posedge sample_clk or posedge rst)
	begin
		if (rst)
		 begin
			rx_state <= IDLE;
			rx_byte <= 8'b0;
			ready <= 0;
			frame_err <= 0;
			bit_counter <= 0;
			sample_counter <= 0;
		 end
		else
		 begin
			case (rx_state)
				IDLE: begin
					//Check if start bit
					bit_counter <= 0;
					sample_counter <= 0;
					ready <= 0;
					frame_err <= 0;
					rx_byte <= 8'b0;
					if (start_flag)
					 begin
						rx_state <= START;
					 end
					else
					 begin
						rx_state <= IDLE;
					 end
				 end
				START: begin
					bit_counter <= 0;
					ready <= 0;
					frame_err <= 0;
					rx_byte <= 8'b0;
					if (sample_counter == SAMPLE_COUNT/2)
					 begin
						//Half a bit sample offset - check start bit still low
						sample_counter <= 0;
						if (!rx_bit)
						 begin
							rx_state <= BUSY;
						 end
						else
						 begin
							rx_state <= IDLE; //False alarm
						 end
					 end
					else
					 begin
						sample_counter <= sample_counter + 1'b1;
						rx_state <= START;
					 end
				 end //START
				BUSY: begin
					ready <= 0;
					frame_err <= 0;
					if (sample_counter == SAMPLE_COUNT - 1)
					 begin
						//Read in next bit (mask with what we already have
						rx_byte <= rx_byte | (rx_bit << bit_counter);
						sample_counter <= 0;
						if (bit_counter == 3'b111)
						 begin
							//Completed the byte - check stop bit
							bit_counter <= 0;
							rx_state <= STOP;
						 end
						else
						 begin
							bit_counter <= bit_counter + 1'b1;
							rx_state <= BUSY;
						 end
					 end
					else
					 begin
						rx_byte <= rx_byte;
						sample_counter <= sample_counter + 1'b1;
						rx_state <= BUSY;
						bit_counter <= bit_counter;
					 end
				 end //BUSY
				STOP: begin
					ready <= 0;
					frame_err <= 0;
					if (sample_counter == SAMPLE_COUNT - 1)
					 begin
						sample_counter <= 0;
						if (rx_bit == 1'b1)
							rx_state <= READ;
						else if (rx_bit == 1'b0)
							rx_state <= FRAME_ERR;
						else
							rx_state <= STOP;
					 end
					else
					 begin
						sample_counter <= sample_counter + 1'b1;
						rx_state <= STOP;
						rx_byte <= rx_byte;
						bit_counter <= 0;
					 end
					end //STOP
				READ: begin
						frame_err <= 0;
						sample_counter <= 0;
						ready <= 1;
						rx_state <= IDLE;
						bit_counter <= 0;
						rx_byte <= rx_byte;
					end //READ
				FRAME_ERR: begin
						sample_counter <= 0;
						frame_err <= 1;
						ready <= 0;
						rx_state <= IDLE;
						bit_counter <= 0;
						rx_byte <= rx_byte;
					end //FRAME_ERR
				default: begin
						rx_state <= IDLE;
						rx_byte <= 8'b0;
						ready <= 0;
						frame_err <= 0;
						bit_counter <= 0;
						sample_counter <= 0;
					end
			endcase
		 end //not rst
		end //always
		
	//tx block
	//Hold the tx_ready line high for one sample_clk period
	always @(posedge clk)
  	 begin
		if (rst)
		 begin
			clk_divide_tx <= 0;
			tx_ready_held <= 1'b0;
		 end
		else
		 begin
			if (tx_ready)
			 begin
				clk_divide_tx <= 0;
				tx_ready_held <= 1'b1;
			 end
			else
			 begin
				if (tx_ready_held)
				 begin
					if (clk_divide_tx == DIVIDER)
					 begin
						clk_divide_tx <= 0;
						tx_ready_held <= 0;
					 end
					else
					 begin
						clk_divide_tx <= clk_divide_tx + 1'b1;
						tx_ready_held <= 1'b1;
					 end
				 end
				else
				 begin
					clk_divide_tx <= 0;
					tx_ready_held <= 1'b0;
				 end
			 end
		 end
	 end

	//TX the byte
	always @(posedge sample_clk or posedge rst)
	 begin
		if (rst)
		 begin
			tx_state <= IDLE;
			tx_copy <= 0;
			tx <= 1'b1;
			tx_counter <= 0;
			tx_bit_counter <= 0;
		 end
		else
		 begin
			case (tx_state)
				IDLE: begin
					if (tx_ready_held)
					 begin
						tx_copy <= tx_send;
						tx <= 1'b0; //Set start bit
						tx_state <= START;
						tx_counter <= 0;
						tx_bit_counter <= 0;
						end
					else
						begin
							tx_state <= IDLE;
							tx <= 1'b1;
							tx_counter <= 0;
							tx_bit_counter <= 0;
							tx_copy <= 0;
						end
					end
				START: begin
					if (tx_counter == 15)
					 begin //set the first bit
						tx <= tx_copy[tx_bit_counter]; 
						tx_bit_counter <= tx_bit_counter + 1'b1; //Set bit counter to point to next bit
 						tx_counter <= 0;
						tx_state <= BUSY;
						tx_copy <= tx_copy;
					 end
					else
					 begin
						tx_counter <= tx_counter + 1'b1;
						tx_state <= START;
						tx_bit_counter <= tx_bit_counter;
						tx_copy <= tx_copy;
						tx <= 1'b0;
					 end
					end
				BUSY: begin
					tx_copy <= tx_copy;
					if (tx_counter == 15)
					 begin
						tx_counter <= 0;
						if (tx_bit_counter == 0)
						 begin //Sent all 8 bits
							tx_state <= STOP;
							tx <= 1'b1;
							tx_bit_counter <= tx_bit_counter;
						 end
						else
						 begin //Send the next bit
							tx <= tx_copy[tx_bit_counter];
							tx_state <= BUSY;
							tx_bit_counter <= tx_bit_counter + 1'b1;
						 end	
					 end //counter == 15
					else
					 begin
						tx <= tx;
						tx_counter <= tx_counter + 1'b1;
						tx_bit_counter <= tx_bit_counter;
					 end
					end //BUSY
				STOP: begin
					tx_copy <= 0;
					tx_bit_counter <= 0;
					tx <= 1'b1;
					if (tx_counter == 15)
					 begin
						tx_counter <= 0;
						tx_state <= IDLE; //Done
					 end
					else
					 begin
						tx_state <= STOP;
						tx_counter <= tx_counter + 1'b1;
					 end
				 end
			endcase
		 end //if
	 end //always

endmodule
