`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:15:23 07/12/2014 
// Design Name: 
// Module Name:    scrolling_display 
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
module scrolling_display(
	input [7:0] ascii, //byte to strobe in
	input	dsn,  //data strobe
	input clearn, //Clear buffer
	input clk,
	input rstn,
	output [7:0] segments, //dp, g, f, e, d, c, b, a
	output [3:0] digit_select,  //3 = MSB == AN0 on logicstart wing
	output [7:0] leds,		//debug leds
	//Memory controller block pass throughs
	output ack,
	output clk_out,
	output clke,
	output csn,
	output rasn,
	output casn,
	output wen,
	output [1:0] bank,
	output damh,
	output daml,
	output [11:0] mem_addr,
	inout [15:0] data
    );

	parameter SCROLL_CLK_BITS = 22;  //32M / 2^^22 ~= 8
	parameter DISPLAY_CLK_BITS = 15; // 32MHz / 2^^15 ~= 1KHz
	parameter BUF_LEN = 8;
	parameter BUF_BITS = 3;
	parameter STORE_LEN = 4194304; //4M x 16 bits
	parameter STORE_BITS = 22;
	parameter ZERO_ADDR = 22'b0;
	//Mem Client state machine
	parameter IDLE = 3'b000;
	parameter WRITE_REQ = 3'b001; //char in buffer waiting to be written
	parameter WRITING = 3'b010; //writing a char
	parameter READ_REQ = 3'b011; //read char into display buffer
	parameter READING = 3'b100; //reading chars into display buffer

	wire enable;
	wire scroll_clk;
	wire clk_disp;
	wire rst;
	reg [7:0] display_buf[0:BUF_LEN-1]; //Display buffer
	reg [BUF_BITS-1:0] buf_ptr; //Current position in display buffer
	reg [7:0] input_buf; //Store buffer - used to buffer received byte before they are written
	reg [STORE_BITS:0] stored_len; //Number of bytes stored in memory
	reg [STORE_BITS:0] display_store_ptr; //Current display ptr into stored data (byte boundary)
	reg [STORE_BITS-1:0] stored_ptr; //ptr to next 16bit word to read in from store into display buffer
	reg [2:0] mem_client_state;
	reg [7:0] digit0;
	reg [7:0] digit1;
	reg [7:0] digit2;
	reg [7:0] digit3;
	wire write_req;
   reg [1:0] ds_sreg;
	wire buf_empty;
	wire read_req;
   reg [1:0] rd_sreg;                                                                           
	wire clear_sync;
   reg [1:0] clr_sreg;
	reg read_cnt;
	//mem store lines
	reg addr_req; 
	wire [15:0] data_inout; //data lines to mem controller
	reg [15:0] data_out; //used to drive data lines when writing
	reg req;
	reg write; 
	wire ack;
	
	// Instantiate the display
	four_char_display display (
		 .digit0(digit0), 
		 .digit1(digit1), 
		 .digit2(digit2), 
		 .digit3(digit3), 
		 .clk(clk_disp), 
		 .rst(rst), 
		 .segments(segments), 
		 .digit_select(digit_select)
		 );

	//Generate 4Hz (ish) clock from 32MHz
	clock_gen #(.BITS(SCROLL_CLK_BITS)) four_hz (
    .clk_in(clk), 
    .rst(rst), 
    .clk_out(scroll_clk)
    );

	//Generate 1KHz (ish) clock from 32MHz
	clock_gen #(.BITS(DISPLAY_CLK_BITS)) one_khz (
    .clk_in(clk), 
    .rst(rst), 
    .clk_out(clk_disp)
    );

	//Use SDRAM chip for storage. Nice.
	memory_controller display_memory (
		.clk_in(clk),
		.rstn(rstn), 
		//Request lines
		.addr_req_in(addr_req), 
		.data_inout(data_inout),
		.msb(msb),
		.lsb(lsb),
		.req(req),
		.write(write), 
		.ack(ack),
		//Memory chip lines
		.clk_out(clk_out), 
		.clke(clke), 
		.csn(csn), 
		.rasn(rasn), 
		.casn(casn), 
		.wen(wen), 
		.bank(bank), 
		.damh(damh), 
		.daml(daml), 
		.mem_addr(mem_addr), 
		.data(data)
	);

	assign rst = ~rstn;
	
	assign leds[4:0] = buf_ptr[4:0];
	assign leds[5] = clear_sync;
	//assign leds[6] = ;
	assign leds[7] = scroll_clk;

	//Only drive inout wires when writing
	assign data_inout = write ? data_out : 16'bz;

	assign write_req = ds_sreg[0] & ~ds_sreg[1];
	assign read_req = rd_sreg[0] & ~rd_sreg[1];
	assign buf_empty = stored_len > 8 && (buf_ptr == 4 || buf_ptr == 0);

   always @(posedge clk)
	 begin
		if (rst)
		 begin
			ds_sreg <= 2'b00;
			rd_sreg <= 2'b00;
		 end
		else
		 begin
			//Sync the incoming ds into a one shot but latch it if mem_client is not in an idle state
			ds_sreg <= mem_client_state == IDLE ? {ds_sreg[0], ~dsn} : ds_sreg;
			if (~dsn)
			 begin
				//Buffer incoming ascii on ds edge
				input_buf <= ascii;
			 end
			else
			 begin
				//Otherwise latch last state
				input_buf <= input_buf;
			 end
			 //Determine if a read is required and can be performed (state is IDLE and no write) and then latch it until it happens and one shot it once it has
			rd_sreg <= mem_client_state == IDLE && (!write_req || dsn) ? {rd_sreg[0], ~buf_empty} : rd_sreg;
		 end
   end
	
	//Sync the incoming clear into a one shot
	assign clear_sync = clr_sreg[0] & ~clr_sreg[1];
   always @(posedge clk) 
	 begin
		if (rst)
		 begin
		  clr_sreg <= 2'b00;
		 end
		else
		 begin
		  clr_sreg <= {clr_sreg[0], ~clearn};
		 end
    end

	//Read into memory or update display buffer or clear all
	always @(posedge clk)
	begin
		if (rst)
		 begin
			stored_len <= 0;
			mem_client_state <= IDLE;
		 end
		else
		 begin
			if (clear_sync)
			 begin //Clear out buffer on clear
				stored_len <= 0;
				input_buf_ptr <= 0;
			 end
			else 
			 begin
				case (mem_client_state)
					IDLE : begin
						if (write_req) //New byte - add to store
						 begin
							//Back space - delete last char
							if (ascii == 8'h7F || ascii == 8'h08)
							 begin
								if (stored_len != 0)
								 begin
									stored_len <= stored_len - 1'b1;
								 end
							 end
							else
							 begin
								stored_len <= stored_len + 1'b1;
								if (stored_len < BUF_LEN)
								 begin
									display_buf[stored_len] <= input_buf;
								 end
								//Add to memory buffer
								mem_client_state <= WRITE_REQ;
							 end
						 end
						else if (read_req)
						 begin
							//Get the next four chars
							mem_client_state <= READ_REQ;
						 end
						else
						 begin
							mem_client_state <= IDLE;
						 end
					 end
					WRITE_REQ : begin //Make write req to end of store
						write <= 1'b1;
						addr_req <= stored_len >> 1;
						req <= 1'b1;
						data_out <= input_buf;
						//Set mask according to whether msb or lsb (bigendian style)
						msb <= stored_len & 1'b1;
						lsb <= ~(stored_len & 1'b1);
						mem_client_state <= WRITING;
					 end
					WRITING : begin //Writing chars from input buffer - wait for ack
						mem_client_state <= ack ? IDLE : WRITING;
						write <= 1'b0;
						addr_req <= 22'b0;
						msb <= 1'b0;
						lsb <= 1'b0;
						data_out <= 16'b0;
					 end
					READ_REQ : begin //Make read req for 4 bytes == 2 x 16 bit reads
						if (display_store_ptr == stored_len + 3)
						 begin
							//At end of store - wrap around
							addr_req <= 0;
							stored_ptr <= 2;
						 end
						else
						 begin
							addr_req <= (display_store_ptr + 4) >> 1;
							stored_ptr <= ((display_store_ptr + 4) >> 1) + 1;
						 end
						write <= 1'b0;
						req <= 1'b1;
						msb <= 1'b0;
						lsb <= 1'b0;
						mem_client_state <= READING;
					 end
					READING : begin //Reading bytes into display buffer
						 if (ack)
						  begin
							if (read_cnt == 1'b0)
							 begin //Read in first two bytes to display buffer in locations not being used
								if (buf_ptr == 0)
								 begin //Load into location 4 and 5
									display_buf[4] <= data_inout & 16'h00ff;
									display_buf[5] <= data_inout & 16'hff00;
								 end
								else
								 begin //Load into location 0 and 1
									display_buf[0] <= data_inout & 16'h00ff;
									display_buf[1] <= data_inout & 16'hff00;
								 end
								//Do the next one
								addr_req <= stored_ptr;
								stored_ptr <= 1'b0;
								write <= 1'b0;
								req <= 1'b1;
								mem_client_state <= READING;
								read_cnt <= 1'b1;
							 end
							else //We are done
								if (buf_ptr == 0)
								 begin //Load into location 6 and 7
									display_buf[6] <= data_inout & 16'h00ff;
									display_buf[7] <= data_inout & 16'hff00;
								 end
								else
								 begin //Load into location 2 and 3
									display_buf[2] <= data_inout & 16'h00ff;
									display_buf[3] <= data_inout & 16'hff00;
								 end
								write <= 1'b0;
								addr_req <= 22'b0;
								msb <= 1'b0;
								lsb <= 1'b0;
								data_out <= 16'b0;
								mem_client_state <= IDLE;
								read_cnt <= 1'b0;
							end
						else
						 begin //NOP while we wait
							write <= 1'b0;
							addr_req <= 22'b0;
							msb <= 1'b0;
							lsb <= 1'b0;
							data_out <= 16'b0;
							mem_client_state <= READING;
						 end
					 end
					default : begin
						mem_client_state <= IDLE;
					 end
				endcase;
			end
 		 end
	end

	//Scroll display 
	always @(posedge scroll_clk or posedge rst)
	begin
		if (rst)
			begin
				buf_ptr <= 0;
				display_store_ptr <= 1'b1;
				digit0 <= 8'h20; //Blank
				digit1 <= 8'h20; //Blank
				digit2 <= 8'h20; //Blank
				digit3 <= 8'h20; //Blank
			end
		else
		  begin
			case (stored_len) //Static or scrolling display
			4:
 			 begin
				digit3 <= display_buf[3];
				digit2 <= display_buf[2];
				digit1 <= display_buf[1];
				digit0 <= display_buf[0];
				buf_ptr <= 5'h4;
			 end
			3:
			  begin
				digit3 <= display_buf[2];
				digit2 <= display_buf[1];
				digit1 <= display_buf[0];
				digit0 <= 8'h20; //Blank
				buf_ptr <= 5'h3;
			  end
			2:
			  begin
				digit3 <= display_buf[1];
				digit2 <= display_buf[0];
				digit1 <= 8'h20; //Blank
				digit0 <= 8'h20; //Blank
				buf_ptr <= 5'h2;
			  end
			1:
			  begin
				digit3 <= display_buf[0];
				digit2 <= 8'h20; //Blank
				digit1 <= 8'h20; //Blank
				digit0 <= 8'h20; //Blank
				buf_ptr <= 5'h1;
			  end
			0:
			  begin
				digit3 <= 8'h20; //Blank
				digit2 <= 8'h20; //Blank
				digit1 <= 8'h20; //Blank
				digit0 <= 8'h20; //Blank
				buf_ptr <= 5'h0;
			  end
			default: //Scrolling display
			  begin
				if (display_store_ptr < stored_len) //More to scroll
				 begin
					digit3 <= display_buf[buf_ptr];
					digit2 <= (buf_ptr > 0) ? display_buf[buf_ptr - 1] : 8'h20;
					digit1 <= (buf_ptr > 1) ? display_buf[buf_ptr - 2] : 8'h20;
					digit0 <= (buf_ptr > 2) ? display_buf[buf_ptr - 3] : 8'h20;
					buf_ptr <= buf_ptr == BUF_LEN - 1 ? 0 : buf_ptr + 1'b1;
					display_store_ptr <= display_store_ptr + 1'b1;
				 end
				else if (display_store_ptr == stored_len) //Coming to the end - do blanks
				 begin
					digit3 <= 8'h20; //Blank
					digit2 <= display_buf[buf_ptr - 1];
					digit1 <= display_buf[buf_ptr - 2];
					digit0 <= display_buf[buf_ptr - 3];
					buf_ptr <= buf_ptr == BUF_LEN - 1 ? 0 : buf_ptr + 1'b1;
					display_store_ptr <= display_store_ptr + 1'b1;
				 end
				else if (display_store_ptr == stored_len + 1)
				 begin
					digit3 <= 8'h20; //Blank
					digit2 <= 8'h20; //Blank
					digit1 <= display_buf[buf_ptr - 2];
					digit0 <= display_buf[buf_ptr - 3];
					buf_ptr <= buf_ptr == BUF_LEN - 1 ? 0 : buf_ptr + 1'b1;
					display_store_ptr <= display_store_ptr + 1'b1;
				 end
				else if (display_store_ptr == stored_len + 2)
				 begin
					digit3 <= 8'h20; //Blank
					digit2 <= 8'h20; //Blank
					digit1 <= 8'h20; //Blank
					digit0 <= display_buf[buf_ptr - 3];
					buf_ptr <= buf_ptr == BUF_LEN - 1 ? 0 : buf_ptr + 1'b1;
					display_store_ptr <= display_store_ptr + 1'b1;
				 end
				else if (display_store_ptr  == stored_len + 3)
				 begin
					digit3 <= display_buf[0]; //Start again
					digit2 <= 8'h20; //Blank
					digit1 <= 8'h20; //Blank
					digit0 <= 8'h20; //Blank
					buf_ptr <= 1'b1;
					display_store_ptr <= 1'b1;
				 end
			  end //scrolling display
			endcase
		  end //Not reset
	end //always

endmodule
