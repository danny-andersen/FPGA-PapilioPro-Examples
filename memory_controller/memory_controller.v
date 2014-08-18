`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// /Create Date:    19:36:00 07/27/2014 
// Design Name: 
// Module Name:    memory_controller 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
// A memory controller for a MT48LC16M4A2-7E 64Mbit SDRAM as 4Mb x 16bits, organised as 4096 rows, 256 cols and 4 banks
// This is a dumb controller in that only one request can be outstanding at any one time, i.e. requests cannot be pipelined
// All inputs should be sync to the input clock. Address and data (if write) should be valid for the posedge of clk that req is high. 
// ack is high when the request is complete and valid data is output (if a read) and another request can be sent

// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module memory_controller(
	input clk_in,
	input rstn,

	//Inputs and outputs to controller from using module
	input [21:0] addr_req_in, //4MBytes addressable
	inout [15:0] data_inout,
	input req,  //Request - address and data valid (if write)
	input write,  //High if write, low if read
	output reg ack, //Request (read or write) complete - data valid if read
	
	//Outputs to Memory device
	output clk_out,
	output reg clke,
	output reg csn,
	output reg rasn,
	output reg casn,
	output reg wen,
	output reg [1:0] bank,
	output damh,
	output daml,
	output reg [11:0] mem_addr,
	inout [15:0] data  
    );

	parameter REFRESH_PERIOD_CNT=490; //Need a refresh cycle every 500 clks (15.625us)
	parameter RESET_DELAY_CNT=3200; //Delay needed from reset
	parameter REFRESH_TIME_RFC=3; //Time taken to do an auto refresh 66ns ( just over 2 clocks)
	parameter PRECHARGE_TIME_RP=1; //Precharge time 20ns -> 1clk
	parameter MODE_REGISTER_TIME_MRD=2; //Load mode register time - 2 clks
	parameter ACTIVE_TIME_RCD=1; //Time taken to make a row active 15ns -> 1clk
	parameter MODE_REGISTER = 12'b0010000100000; //Write burst=1, Std Op, CAS=2, Seq, BL=1 (no burst)
	parameter ZERO_ADDR = 12'b0000000000000; //Default Addr line
	parameter ZERO_CAS = 12'b010000000000; //A10 = high all banks pre-charged
	parameter PRECHARGE_ALL = 12'b010000000000; //A10 = high all banks pre-charged
	parameter PRECHARGE_SEL = 12'b000000000000; //A10 = low selected banks pre-charged
	parameter AUTO_PRECHARGE = 4'b0100; //A10 = high auto pre-charge row after op
	parameter NO_AUTO_PRECHARGE = 4'b0000; //A10 = low no auto pre-charge, row remains active
	parameter CAS_LATENCY = 2; //two clock cycle CAS latency
	
	//Initialisation state machine
	parameter INIT_POST_RESET = 4'b0000;
	parameter INIT_CLKE = 4'b0001; //clke = high
	parameter INIT_NOP = 4'b0010; //csn = Low, rasn, casn, wen high
	parameter INIT_PRECHARGE_ALL = 4'b0011; //rasn=0, casn=1, wen=0
	parameter INIT_REFRESH_1 = 4'b0100; //rasn=0, casn=0, wen=1
	parameter INIT_REFRESH_2 = 4'b0101; //rasn=0, casn=0, wen=1
	parameter INIT_LMR = 4'b0110; //Load mode register - rasn=0, casn=0, wen=0
	parameter INIT_LMR_NOP = 4'b0111; //Load mode register delay NOP
	parameter INIT_COMPLETE = 4'b1000; //csn = Low, rasn, casn, wen high
	
	//Normal Op State machine states
	parameter IDLE = 3'b000;
	parameter ACTIVE_ROW = 3'b001; //rasn=0,casn=1,wen=1
	parameter READING = 3'b010; //rasn=1,casn=0,wen=1
	parameter WRITING = 3'b011; //rasn=1,casn=0,wen=0
	parameter PRECHARGING = 3'b100; //rasn=0,casn=1,wen=0
	parameter REFRESHING = 3'b101; //rasn=0. casn=0, wen=1
	parameter INIT = 3'b110; //See init state machine
	parameter ROW_ACTIVE = 3'b111; //Row is active - can read or write

	
	parameter NO_REQ = 2'b00;
	parameter READ_REQ = 2'b01;
	parameter WRITE_REQ = 2'b10;
	
	wire enable;
	wire rst;
	reg init_enable;
	wire refresh_time;
	wire init_time;
	reg [3:0] init_state;
	reg [2:0] op_state;
	reg [1:0] state_clk_count;
	reg [1:0] req_in_prog; //Handling a request - cleared when ack sent
	reg [21:0] addr_req; //latched addr
	reg [15:0] data_req; //latched data if write
	wire row_cmp; //Set if addr change
	wire row_change; //Set if there is a change of row from last time (and so needs a pre-charge - active cycle)
	reg row_diff; //Latched change in row
	
	reg refresh_req; //Refresh is required or in progress
	
	BUFG BUFG_inst (
      .O(clk), // 1-bit output: Clock buffer output
      .I(clk_in)  // 1-bit input: Clock buffer input
   );
	
	divider #(.DIVIDE(REFRESH_PERIOD_CNT),.DIVIDE_BITS(9),.CLEAR_COUNT(1),.CLEAR_BITS(1)) refresh_clk (
    .enable(enable), 
    .clk(clk), 
    .rst(rst),
    .out1(refresh_time)
    );
	
	divider #(.DIVIDE(RESET_DELAY_CNT),.DIVIDE_BITS(12),.CLEAR_COUNT(1),.CLEAR_BITS(1)) init_clk (
    .enable(init_enable), 
    .clk(clk), 
    .rst(rst),
    .out1(init_time)
    );

	assign enable = 1'b1;
	assign rst = ~rstn;
	//If a read req, drive data out from memory, otherwise z
	assign data_inout = (req_in_prog == READ_REQ && !write) ? data : 16'bz;
	assign row_cmp_fail = req && (addr_req[21:8] != addr_req_in[21:8]);
	assign row_change = row_diff || row_cmp_fail;
	assign clk_out = clk_in;
	assign damh = 1'b0; //not used
	assign daml = 1'b0; //not used
	
	//Set long lived flags
	always @(posedge clk)
	 begin
		if (rst)
		 begin
			req_in_prog <= NO_REQ;
			refresh_req <= 1'b0;
			row_diff <= 1'b0;
			addr_req <= 21'b0;
		 end
		else
		 begin
			if (req) //new request
			 begin
				if ((op_state == ACTIVE_ROW || op_state == READING || op_state == WRITING) && row_cmp_fail)
				 begin
					//Change of row address
					row_diff <= 1'b1;
				 end
				else
				 begin
					row_diff <= 1'b0;
				 end
				addr_req <= addr_req_in;
				if (write)
				 begin
					req_in_prog <= WRITE_REQ;
					data_req <= data_inout;
				 end
				else
				 begin
					req_in_prog <= READ_REQ;
					data_req <= 0;
				 end
			 end
			else if (op_state == READING || op_state == WRITING) //request being worked on - clear state ready for next
			 begin
				req_in_prog <= NO_REQ;
				addr_req <= addr_req; //Remember last address
				data_req <= data_req;
				row_diff <= row_diff;
			 end
			else
			 begin
				req_in_prog <= req_in_prog;
				addr_req <= addr_req;
				data_req <= data_req;
				if (op_state == PRECHARGING)
				 begin
					row_diff <= 1'b0; //Clear the fact that the row has changed as the row has been closed
				 end
				else
				 begin
					row_diff <= row_diff;
				 end;
			 end
			if (refresh_time) //time for a refresh
			 begin
				refresh_req <= 1'b1;
			 end
			else if (op_state == REFRESHING || init_state != INIT_COMPLETE) //refresh under way or we can ignore
			 begin
				refresh_req <= 1'b0;
			 end
			else
			 begin
				refresh_req <= refresh_req;
			 end
		 end
	 end

	//Initialisation and operational block
	always @(posedge clk)
	 begin
		if (rst)
		 begin
			init_enable <= 0;
			init_state <= INIT_POST_RESET;
			op_state <= IDLE;
			clke <= 1'b0;
			csn <= 1'b1;
			rasn <= 1'b1;
			casn <= 1'b1;
			wen <= 1'b1;
			state_clk_count <= 2'b00;
			mem_addr <= ZERO_ADDR;
			bank <= 2'b00;
			ack <= 1'b0; 
		 end
		else
		 begin
			case (init_state)
				INIT_POST_RESET: begin
					init_enable <= 1'b1; //Start init counter
					init_state <= INIT_CLKE;
					//default all other signals
					op_state <= IDLE;
					clke <= 1'b0;
					csn <= 1'b1;
					rasn <= 1'b1;
					casn <= 1'b1;
					wen <= 1'b1;
					state_clk_count <= 2'b00;
					mem_addr <= ZERO_ADDR;
					bank <= 2'b00;
					ack <= 1'b0; 
				  end
				INIT_CLKE : begin 
					init_enable <= 1'b1; //Start init counter
					init_state <= INIT_NOP;
					clke <= 1'b1; //Enable clk in
					//default all other signals
					op_state <= IDLE;
					csn <= 1'b1;
					rasn <= 1'b1;
					casn <= 1'b1;
					wen <= 1'b1;
					state_clk_count <= 2'b00;
					mem_addr <= ZERO_ADDR;
					bank <= 2'b00;
					ack <= 1'b0; 
				 end
				INIT_NOP: begin //csn = Low, rasn, casn, wen high
					init_enable <= 1'b1; //Start init counter
					init_state <= INIT_PRECHARGE_ALL;
					clke <= 1'b1;
					csn <= 1'b0;
					rasn <= 1'b1;
					casn <= 1'b1;
					wen <= 1'b1;
					op_state <= IDLE;
					state_clk_count <= 2'b00;
					mem_addr <= ZERO_ADDR;
					bank <= 2'b00;
					ack <= 1'b0; 
				 end
				INIT_PRECHARGE_ALL : begin //Wait until init time is up and then do a pre-charge
					clke <= 1'b1;
					csn <= 1'b0;
					ack <= 1'b0; 
					op_state <= IDLE;
					bank <= 2'b00;
					state_clk_count <= 2'b00;
					if (init_time == 1'b0)
						begin
							//Do another NOP
							init_enable <= 1'b1; 
							init_state <= INIT_PRECHARGE_ALL;
							rasn <= 1'b1;
							casn <= 1'b1;
							wen <= 1'b1;
							op_state <= IDLE;
							mem_addr <= ZERO_ADDR;
						end
					else
						//Precharge all - rasn=0, casn=1, wen=0
						begin
							init_enable <= 1'b0; //Dont need init timer any more - turn it off 
							init_state <= INIT_REFRESH_1; //Next state
							rasn <= 1'b0;
							casn <= 1'b1;
							wen <= 1'b0;
							mem_addr <= PRECHARGE_ALL;
						end
					end
				INIT_REFRESH_1 : begin
					clke <= 1'b1;
					csn <= 1'b0;
					init_enable <= 1'b0; 
					ack <= 1'b0; 
					op_state <= IDLE;
					bank <= 2'b00;
					mem_addr <= ZERO_ADDR;
					if (state_clk_count == 2'b00) 
					 begin
							//Do the first refresh
							init_state <= INIT_REFRESH_1;
							//rasn=0, casn=0, wen=1
							rasn <= 1'b0;
							casn <= 1'b0;
							wen <= 1'b1;
							state_clk_count <= 2'b01;
					 end
					else if (state_clk_count == REFRESH_TIME_RFC)
					 begin
							//Do the second refresh after the first has completed
							init_state <= INIT_REFRESH_2; 
							//rasn=0, casn=0, wen=1
							rasn <= 1'b0;
							casn <= 1'b0;
							wen <= 1'b1;
							state_clk_count <= 2'b00;
					 end
					else
					 begin
							//Do a NOP
							init_state <= INIT_REFRESH_1; 
							rasn <= 1'b1;
							casn <= 1'b1;
							wen <= 1'b1;
							state_clk_count <= state_clk_count + 1'b1;
					 end
				 end
				INIT_REFRESH_2 : begin
					clke <= 1'b1;
					csn <= 1'b0;
					init_enable <= 1'b0; 
					ack <= 1'b0; 
					op_state <= IDLE;
					bank <= 2'b00;
					mem_addr <= ZERO_ADDR;
					if (state_clk_count == REFRESH_TIME_RFC) 
					 begin
							//Load mode register after refresh has completed
							init_state <= INIT_LMR; 
							rasn <= 1'b0;
							casn <= 1'b0;
							wen <= 1'b0;
							state_clk_count <= 2'b00;
					 end
					else
					 begin
							init_state <= INIT_REFRESH_2; 
							//Do a NOP for three clocks
							rasn <= 1'b1;
							casn <= 1'b1;
							wen <= 1'b1;
							state_clk_count <= state_clk_count + 1'b1;
					 end
				 end
				INIT_LMR: begin //Wait MRD
					clke <= 1'b1;
					csn <= 1'b0;
					init_enable <= 1'b0; 
					ack <= 1'b0; 
					op_state <= IDLE;
					bank <= 2'b00;
					mem_addr <= ZERO_ADDR;
					rasn <= 1'b1;
					casn <= 1'b1;
					wen <= 1'b1;
					if (state_clk_count == MODE_REGISTER_TIME_MRD)
					 begin
							//Device is now ready for use
							init_state <= INIT_COMPLETE; 
							state_clk_count <= 2'b00;
					 end
					else
					 begin
							init_state <= INIT_LMR; 
							//Wait for tMRD
							state_clk_count <= state_clk_count + 1'b1;
					 end
				 end
				INIT_COMPLETE: begin
					clke <= 1'b1;
					csn <= 1'b0;
					init_enable <= 1'b0; 
					init_state <= INIT_COMPLETE; 
					//Do Normal Op state machine
					case (op_state)
						IDLE: begin
							state_clk_count <= 2'b00;
							ack <= 1'b0; 
							if (req || (req_in_prog != NO_REQ && !ack))
							 begin
								//New request
								//Activate row
								//rasn=0,casn=1,wen=1
								rasn <= 1'b0;
								casn <= 1'b1;
								wen <= 1'b1;
								op_state <= ACTIVE_ROW;
								if (req)
								 begin
									//Take row addr from input
									mem_addr <= addr_req_in[19:8];
									bank <= addr_req_in[21:20];
								 end
								else
								 begin
									//Take row addr from latched input
									mem_addr <= addr_req[19:8];
									bank <= addr_req[21:20];
								 end
							 end
							else if (refresh_time || refresh_req)
							 begin
								//Do a refresh cycle
								//rasn=0, casn=0, wen=1
								rasn <= 1'b0;
								casn <= 1'b0;
								wen <= 1'b1;
								op_state <= REFRESHING;
								mem_addr <= ZERO_ADDR;
								bank <= 2'b00;
							 end
							else
							 begin
								//NOP
								rasn <= 1'b1;
								casn <= 1'b1;
								wen <= 1'b1;
								op_state <= IDLE;
								mem_addr <= ZERO_ADDR;
								bank <= 2'b00;
							 end
						 end
						ACTIVE_ROW : begin
							state_clk_count <= 2'b00;
							if (refresh_time || refresh_req) //Refresh takes priority
							 begin
								//Close row and do a refresh cycle
								//rasn=0,casn=1,wen=0
								rasn <= 1'b0;
								casn <= 1'b1;
								wen <= 1'b0;
								op_state <= PRECHARGING;
								mem_addr <= ZERO_ADDR;
								bank <= 2'b00;
								ack <= 1'b0; 
							 end
							else if (req || (req_in_prog != NO_REQ))
							 begin
								if (row_change)
								 begin
									//Cant process the request in this state - close the current row
									rasn <= 1'b0;
									casn <= 1'b1;
									wen <= 1'b0;
									op_state <= PRECHARGING;
									mem_addr <= ZERO_ADDR;
									bank <= 2'b00;
									ack <= 1'b0; 
								 end
								else
								 begin
									//Read / write command
									//rasn=1,casn=0,
									rasn <= 1'b1;
									casn <= 1'b0;
									if ((req && write) || (req_in_prog == WRITE_REQ))
									 begin
										wen <= 1'b0;
										op_state <= WRITING; //Device remains in active state 
										ack <= 1'b1; //Request completed
									 end
									else //read req
									 begin
										wen <= 1'b1;
										op_state <= READING;
										ack <= 1'b0; 
									 end
									if (req)
									 begin
										//Take col addr from input
										mem_addr <= {NO_AUTO_PRECHARGE, addr_req_in[7:0]};
										bank <= addr_req_in[21:20];
									 end
									else
									 begin
										//Take col addr from latched input
										mem_addr <= {NO_AUTO_PRECHARGE, addr_req[7:0]};
										bank <= addr_req[21:20];
									 end
								 end //Do Read / write
							 end //Do req
							else
							 begin
								//NOP
								rasn <= 1'b1;
								casn <= 1'b1;
								wen <= 1'b1;
								op_state <= ACTIVE_ROW;
								mem_addr <= ZERO_ADDR;
								bank <= 2'b00;
								ack <= 1'b0; 
							 end
						 end
						WRITING : begin
							//Single NOPs - this could be done without a NOP to increase write performance (i.e. remove this state completely)
							rasn <= 1'b1;
							casn <= 1'b1;
							wen <= 1'b1;
							mem_addr <= ZERO_ADDR;
							bank <= 2'b00;
							op_state <= ACTIVE_ROW;
							state_clk_count <= 0;
							ack <= 1'b0;
						 end
						READING : begin
							//NOPs while waiting
							rasn <= 1'b1;
							casn <= 1'b1;
							wen <= 1'b1;
							mem_addr <= ZERO_ADDR;
							bank <= 2'b00;
							if (state_clk_count == CAS_LATENCY - 1)
							 begin
								//Data should be valid by next posedge of clk - assert ack now
								ack <= 1'b1;
								op_state <= READING;
								state_clk_count <= state_clk_count + 1'b1;
							 end
							else if (state_clk_count == CAS_LATENCY)
							 begin
								//Read now complete
								op_state <= ACTIVE_ROW;
								state_clk_count <= 0;
								ack <= 1'b0;
							 end
							else
							 begin
								//Wait for CAS latency to complete
								ack <= 1'b0;
								op_state <= READING;
								state_clk_count <= state_clk_count + 1'b1;
							 end
						 end
						PRECHARGING : begin //rasn=0,casn=1,wen=0
							//Single NOP
							rasn <= 1'b1;
							casn <= 1'b1;
							wen <= 1'b1;
							op_state <= IDLE;
							mem_addr <= ZERO_ADDR;
							bank <= 2'b00;
							ack <= 1'b0; 
						 end
						REFRESHING : begin //rasn=0. casn=0, wen=1
							ack <= 1'b0; 
							bank <= 2'b00;
							mem_addr <= ZERO_ADDR;
							//NOP
							rasn <= 1'b1;
							casn <= 1'b1;
							wen <= 1'b1;
							if (state_clk_count == (REFRESH_TIME_RFC - 1)) 
							 begin
									op_state <= IDLE; 
									state_clk_count <= 2'b00;
							 end
							else
							 begin
									op_state <= REFRESHING; 
									state_clk_count <= state_clk_count + 1'b1;
							 end
						 end
						default : begin
							state_clk_count <= 2'b00;
							ack <= 1'b0; 
							//NOP
							rasn <= 1'b1;
							casn <= 1'b1;
							wen <= 1'b1;
							op_state <= IDLE;
							mem_addr <= ZERO_ADDR;
							bank <= 2'b00;
						 end
					endcase
				 end
				default : begin
					init_state <= INIT_COMPLETE; 
					init_enable <= 1'b1; 
					clke <= 1'b1;
					csn <= 1'b0;
					rasn <= 1'b1;
					casn <= 1'b1;
					wen <= 1'b1;
					op_state <= IDLE;
					state_clk_count <= 2'b00;
					mem_addr <= ZERO_ADDR;
					bank <= 2'b00;
				 end
			endcase
		 end
	 end
	
endmodule
