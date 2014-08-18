////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: divider_synthesis.v
// /___/   /\     Timestamp: Wed Aug 06 14:01:30 2014
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim divider.ngc divider_synthesis.v 
// Device	: xc6slx9-2-tqg144
// Input file	: divider.ngc
// Output file	: C:\Users\S243372\Dropbox\Workspaces\Projects_FPGA\memory_controller\netgen\synthesis\divider_synthesis.v
// # of Modules	: 1
// Design Name	: divider
// Xilinx        : C:\Data\Xilinx_ISE\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module divider (
  enable, clk, rst, out1
);
  input enable;
  input clk;
  input rst;
  output out1;
  wire enable_IBUF_0;
  wire clk_BUFGP_1;
  wire rst_IBUF_2;
  wire out1_OBUF_7;
  wire out1_PWR_1_o_MUX_7_o;
  wire Mcount_counter;
  wire Mcount_counter1;
  wire Mcount_counter2;
  wire Mcount_counter3;
  wire out1_rstpot_20;
  wire clear_counter_0_dpot_21;
  wire clear_counter_1_dpot_22;
  wire clear_counter_2_dpot_23;
  wire [3 : 0] counter;
  wire [2 : 0] clear_counter;
  FDCE   counter_0 (
    .C(clk_BUFGP_1),
    .CE(enable_IBUF_0),
    .CLR(rst_IBUF_2),
    .D(Mcount_counter),
    .Q(counter[0])
  );
  FDCE   counter_1 (
    .C(clk_BUFGP_1),
    .CE(enable_IBUF_0),
    .CLR(rst_IBUF_2),
    .D(Mcount_counter1),
    .Q(counter[1])
  );
  FDCE   counter_2 (
    .C(clk_BUFGP_1),
    .CE(enable_IBUF_0),
    .CLR(rst_IBUF_2),
    .D(Mcount_counter2),
    .Q(counter[2])
  );
  FDCE   counter_3 (
    .C(clk_BUFGP_1),
    .CE(enable_IBUF_0),
    .CLR(rst_IBUF_2),
    .D(Mcount_counter3),
    .Q(counter[3])
  );
  FDCE   clear_counter_0 (
    .C(clk_BUFGP_1),
    .CE(out1_OBUF_7),
    .CLR(rst_IBUF_2),
    .D(clear_counter_0_dpot_21),
    .Q(clear_counter[0])
  );
  FDCE   clear_counter_1 (
    .C(clk_BUFGP_1),
    .CE(out1_OBUF_7),
    .CLR(rst_IBUF_2),
    .D(clear_counter_1_dpot_22),
    .Q(clear_counter[1])
  );
  FDCE   clear_counter_2 (
    .C(clk_BUFGP_1),
    .CE(out1_OBUF_7),
    .CLR(rst_IBUF_2),
    .D(clear_counter_2_dpot_23),
    .Q(clear_counter[2])
  );
  LUT4 #(
    .INIT ( 16'h0020 ))
  \out1_PWR_1_o_MUX_7_o<3>1  (
    .I0(counter[3]),
    .I1(counter[2]),
    .I2(counter[1]),
    .I3(counter[0]),
    .O(out1_PWR_1_o_MUX_7_o)
  );
  IBUF   enable_IBUF (
    .I(enable),
    .O(enable_IBUF_0)
  );
  IBUF   rst_IBUF (
    .I(rst),
    .O(rst_IBUF_2)
  );
  OBUF   out1_OBUF (
    .I(out1_OBUF_7),
    .O(out1)
  );
  FDC   out1_12 (
    .C(clk_BUFGP_1),
    .CLR(rst_IBUF_2),
    .D(out1_rstpot_20),
    .Q(out1_OBUF_7)
  );
  LUT6 #(
    .INIT ( 64'hFAFAFAFAAA2AAAAA ))
  out1_rstpot (
    .I0(out1_OBUF_7),
    .I1(clear_counter[0]),
    .I2(enable_IBUF_0),
    .I3(clear_counter[1]),
    .I4(clear_counter[2]),
    .I5(out1_PWR_1_o_MUX_7_o),
    .O(out1_rstpot_20)
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \Mcount_counter_xor<2>11  (
    .I0(counter[2]),
    .I1(counter[1]),
    .I2(counter[0]),
    .O(Mcount_counter2)
  );
  LUT4 #(
    .INIT ( 16'h6AA2 ))
  \Mcount_counter_xor<3>11  (
    .I0(counter[3]),
    .I1(counter[1]),
    .I2(counter[2]),
    .I3(counter[0]),
    .O(Mcount_counter3)
  );
  LUT4 #(
    .INIT ( 16'h6626 ))
  \Mcount_counter_xor<1>11  (
    .I0(counter[0]),
    .I1(counter[1]),
    .I2(counter[3]),
    .I3(counter[2]),
    .O(Mcount_counter1)
  );
  LUT4 #(
    .INIT ( 16'h4555 ))
  \Mcount_counter_xor<0>11  (
    .I0(counter[0]),
    .I1(counter[2]),
    .I2(counter[3]),
    .I3(counter[1]),
    .O(Mcount_counter)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  clear_counter_0_dpot (
    .I0(enable_IBUF_0),
    .I1(clear_counter[0]),
    .O(clear_counter_0_dpot_21)
  );
  LUT4 #(
    .INIT ( 16'h2A6A ))
  clear_counter_1_dpot (
    .I0(clear_counter[1]),
    .I1(enable_IBUF_0),
    .I2(clear_counter[0]),
    .I3(clear_counter[2]),
    .O(clear_counter_1_dpot_22)
  );
  LUT4 #(
    .INIT ( 16'h6A2A ))
  clear_counter_2_dpot (
    .I0(clear_counter[2]),
    .I1(enable_IBUF_0),
    .I2(clear_counter[0]),
    .I3(clear_counter[1]),
    .O(clear_counter_2_dpot_23)
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_1)
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

