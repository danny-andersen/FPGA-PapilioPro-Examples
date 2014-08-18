`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:10:28 07/19/2014 
// Design Name: 
// Module Name:    host_display 
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
module host_display(
	input rx,
	input clk_in,
	input rstn,
	output tx,
	output base_led,
	output [7:0] leds,
	output [7:0] segments,
	output [3:0] digit_select
    );

	wire ready;
	wire ready_pulse;
	reg [1:0] ready_reg;
	wire frame_err;
	wire rst;
	wire [7:0] rx_byte;
	reg [7:0] rx_held;
	reg [7:0] tx_send;
	reg tx_ready;
	wire dsn;
	reg data_in;
	reg clear_on_next;
	reg clearn;
	wire [7:0] leds_display;
	wire clk;
	
	 BUFG BUFG_inst (
      .O(clk), // 1-bit output: Clock buffer output
      .I(clk_in)  // 1-bit input: Clock buffer input
   );
	
	//UART module to talk to host
	//921600
	high_speed_uart #(.BAUD_RATE(2000000)) uart (
    .rx(rx), 
    .tx_send(tx_send), 
    .tx_ready(tx_ready), 
    .clk(clk), 
    .rst(rst), 
    .rx_byte(rx_byte), 
    .ready(ready), 
    .frame_err(frame_err), 
    .tx(tx)
    );

/*
	uart_simple #(.BAUD_RATE(230400)) uart (
    .rx(rx), 				//Rx line
    .tx_send(tx_send),	// Tx byte to send back 
    .tx_ready(tx_ready), //Tx ready to send
    .clk(clk),
    .rst(rst), 
    .rx_byte(rx_byte),  // Received byte
    .ready(ready), 		// Byte ready to be read
    .frame_err(frame_err), //Framing error. Bad news
    .tx(tx)					//TX line of uart to host
    );
*/	

	scrolling_display display (
    .ascii(rx_held), 
    .dsn(dsn), 
    .clearn(clearn), 
    .clk(clk), 
    .rstn(rstn), 
    .segments(segments), 
    .digit_select(digit_select), 
    .leds(leds_display)
    );

	assign rst = ~rstn;
	//One shot data strobe
	//assign dsn = ~(data_in[0] && !data_in[1]);
	assign dsn = ~data_in;
	assign leds[7] = ready;
	assign leds[6] = frame_err;
	assign leds[5:0] = leds_display[5:0];
	assign base_led = ~rx;

/*
	//Turn data ready into a one shot
	assign ready_pulse = ready_reg[0] & !ready_reg[1];
	always @(posedge clk)
	 begin
		if (rst)
		 begin
			ready_reg <= 2'b00;
		 end
		else
		 begin
			ready_reg <= {ready_reg[0], ready};
		 end
	 end
*/	 
	//Drive display ds from single shot ready line 
	//A CR or LF indicates end of display and to clear display and start again on receipt of a new character
	always @(posedge clk)
	 begin
		if (rst)
		 begin
			data_in <= 1'b0;
			clear_on_next <= 1'b0; 
			clearn <= 1'b1;
			tx_send <= 8'b0;
			tx_ready <= 1'b0;
		 end
		else
		 begin
			if (ready)
			 begin
				if (rx_byte == 8'h0a || rx_byte == 8'h0d)
				 begin //End of line - on next character clear buffer before sending
				   clear_on_next <= 1'b1;
					clearn <= 1'b1;
					data_in <= 1'b0;
				 end
				else
				 begin
					if (clear_on_next == 1'b1)
					 begin //Clear data before strobe
						clear_on_next <= 1'b0;
						clearn <= 1'b0;
						data_in <= 1'b0;
					 end
					else
					 begin //Strobe in data
						clear_on_next <= 1'b0;
						clearn <= 1'b1;
						data_in <= 1'b1;
					 end
				 end
				rx_held <= rx_byte;
				//Echo back what was received
				tx_send <= rx_byte;
				tx_ready <= 1'b1;
			 end
			else if (!clearn)
			 begin //Cleared buffer, now strobe data
				clear_on_next <= 1'b0;
				data_in <= 1'b1;
				clearn <= 1'b1;
				tx_ready <= 1'b1;
				tx_send <= rx_byte;
			 end
			else
			 begin	
				data_in <= 1'b0;
				tx_ready <= 1'b0;
				tx_send <= tx_send;
				clearn <= 1'b1;
				clear_on_next <= clear_on_next;
			 end
		 end
	end

endmodule
