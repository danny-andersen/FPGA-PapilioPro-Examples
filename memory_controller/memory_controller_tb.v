`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:53:57 08/06/2014
// Design Name:   memory_controller
// Module Name:   C:/Users/S243372/Dropbox/Workspaces/Projects_FPGA/memory_controller/memory_controller_tb.v
// Project Name:  memory_controller
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: memory_controller
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module memory_controller_tb;

	// Inputs
	reg clk_in;
	reg rstn;
	reg [21:0] addr_req_in;
	reg req;
	reg write;
	reg msb;
	reg lsb;

	// Outputs
	wire ack;
	wire clk;
	wire clke;
	wire csn;
	wire rasn;
	wire casn;
	wire wen;
	wire [1:0] bank;
	wire damh;
	wire daml;
	wire [11:0] mem_addr;

	// Bidirs
	wire [15:0] data_inout;
	wire [15:0] data;

	// Instantiate the Unit Under Test (UUT)
	memory_controller uut (
		.clk_in(clk_in), 
		.rstn(rstn), 
		.addr_req_in(addr_req_in), 
		.data_inout(data_inout),
		.msb(msb),
		.lsb(lsb),
		.req(req), 
		.write(write), 
		.ack(ack), 
		.clk(clk), 
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

   parameter PERIOD = 31.25; //31.25ns = 32MHz

	reg [15:0] data_out;
	
	assign data_inout = write ? data_out : 16'bz;
	
   always begin
      clk_in = 1'b0;
      #(PERIOD/2) clk_in = 1'b1;
      #(PERIOD/2);
   end  

	initial begin
		// Initialize Inputs
		rstn = 0;
		addr_req_in = 0;
		req = 0;
		write = 0;
		msb = 0;
		lsb = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		rstn = 1;
		addr_req_in = 22'h1;
		req = 1;
		#(PERIOD);
		req = 0;
			#110000 //Wait for device init
		addr_req_in = 22'h2;
		req = 1;
		#(PERIOD);
		req = 0;
		//Wait for ack
		while (!ack) begin
			#(PERIOD/2);
		end
		addr_req_in = 22'h3;
		req = 1;
		#(PERIOD);
		req = 0;
		//Wait for ack
		while (!ack) begin
			#(PERIOD/2);
		end
		//Change row
		addr_req_in = 22'h100;
		req = 1;
		#(PERIOD);
		req = 0;
		//Wait for ack (tRAS + tRP + tRCD + tCL = 2+1+1+2
		while (!ack) begin
			#(PERIOD/2);
		end
		#(PERIOD*5)
		//Do a write
		write = 1;
		addr_req_in = 22'h101;
		data_out = 16'haa55;
		req = 1;
		#(PERIOD);
		req = 0;
		// Wait for Ack
		while (!ack) begin
			#(PERIOD/2);
		end
		//Another write
		addr_req_in = 22'h102;
		data_out = 16'h1234;
		req = 1;
		#(PERIOD);
		req = 0;
		// Wait for Ack
		while (!ack) begin
			#(PERIOD/2);
		end
		//Finally do a read
		write = 0;
		addr_req_in = 22'h103;
		req = 1;
		#(PERIOD);
		req = 0;
		// Wait for Ack
		while (!ack) begin
			#(PERIOD/2);
		end
	end
	
	initial begin
		$display("%t: Req: %b Ack: %b", $time, req, ack);
	 end
      
endmodule

