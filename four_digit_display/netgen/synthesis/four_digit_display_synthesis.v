////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: four_digit_display_synthesis.v
// /___/   /\     Timestamp: Sat Jul 12 10:26:24 2014
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim four_digit_display.ngc four_digit_display_synthesis.v 
// Device	: xc6slx4-2-tqg144
// Input file	: four_digit_display.ngc
// Output file	: C:\Users\S243372\Dropbox\Workspaces\Projects_FPGA\four_digit_display\netgen\synthesis\four_digit_display_synthesis.v
// # of Modules	: 1
// Design Name	: four_digit_display
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

module four_digit_display (
  clk, rst, digit0, digit1, digit2, digit3, segments, digit_select
);
  input clk;
  input rst;
  input [3 : 0] digit0;
  input [3 : 0] digit1;
  input [3 : 0] digit2;
  input [3 : 0] digit3;
  output [7 : 0] segments;
  output [3 : 0] digit_select;
  wire digit0_0_IBUF_0;
  wire digit1_0_IBUF_1;
  wire clk_BUFGP_2;
  wire rst_IBUF_3;
  wire segments_0_4;
  wire segments_2_OBUF_5;
  wire digit_select_3_OBUF_6;
  wire digit_select_1_7;
  wire digit_select_0_8;
  wire \display_cnt[1]_GND_1_o_wide_mux_4_OUT<0> ;
  wire rst_inv;
  wire \Mram_display_cnt[1]_GND_1_o_wide_mux_5_OUT ;
  wire \Mram_display_cnt[1]_GND_1_o_wide_mux_5_OUT1 ;
  wire [1 : 0] Result;
  wire [1 : 0] display_cnt;
  VCC   XST_VCC (
    .P(segments_2_OBUF_5)
  );
  GND   XST_GND (
    .G(digit_select_3_OBUF_6)
  );
  FDE   segments_0 (
    .C(clk_BUFGP_2),
    .CE(rst_inv),
    .D(\display_cnt[1]_GND_1_o_wide_mux_4_OUT<0> ),
    .Q(segments_0_4)
  );
  FDE   digit_select_0 (
    .C(clk_BUFGP_2),
    .CE(rst_inv),
    .D(\Mram_display_cnt[1]_GND_1_o_wide_mux_5_OUT ),
    .Q(digit_select_0_8)
  );
  FDE   digit_select_1 (
    .C(clk_BUFGP_2),
    .CE(rst_inv),
    .D(\Mram_display_cnt[1]_GND_1_o_wide_mux_5_OUT1 ),
    .Q(digit_select_1_7)
  );
  FDC   display_cnt_0 (
    .C(clk_BUFGP_2),
    .CLR(rst_IBUF_3),
    .D(Result[0]),
    .Q(display_cnt[0])
  );
  FDC   display_cnt_1 (
    .C(clk_BUFGP_2),
    .CLR(rst_IBUF_3),
    .D(Result[1]),
    .Q(display_cnt[1])
  );
  LUT4 #(
    .INIT ( 16'hF5F3 ))
  \display_cnt[1]_GND_1_o_wide_mux_4_OUT<0>1  (
    .I0(digit1_0_IBUF_1),
    .I1(digit0_0_IBUF_0),
    .I2(display_cnt[1]),
    .I3(display_cnt[0]),
    .O(\display_cnt[1]_GND_1_o_wide_mux_4_OUT<0> )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \Mram_display_cnt[1]_GND_1_o_wide_mux_5_OUT12  (
    .I0(display_cnt[1]),
    .I1(display_cnt[0]),
    .O(\Mram_display_cnt[1]_GND_1_o_wide_mux_5_OUT )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \Mram_display_cnt[1]_GND_1_o_wide_mux_5_OUT111  (
    .I0(display_cnt[1]),
    .I1(display_cnt[0]),
    .O(\Mram_display_cnt[1]_GND_1_o_wide_mux_5_OUT1 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Mcount_display_cnt_xor<1>11  (
    .I0(display_cnt[1]),
    .I1(display_cnt[0]),
    .O(Result[1])
  );
  IBUF   digit0_0_IBUF (
    .I(digit0[0]),
    .O(digit0_0_IBUF_0)
  );
  IBUF   digit1_0_IBUF (
    .I(digit1[0]),
    .O(digit1_0_IBUF_1)
  );
  IBUF   rst_IBUF (
    .I(rst),
    .O(rst_IBUF_3)
  );
  OBUF   segments_7_OBUF (
    .I(digit_select_3_OBUF_6),
    .O(segments[7])
  );
  OBUF   segments_6_OBUF (
    .I(digit_select_3_OBUF_6),
    .O(segments[6])
  );
  OBUF   segments_5_OBUF (
    .I(segments_0_4),
    .O(segments[5])
  );
  OBUF   segments_4_OBUF (
    .I(segments_0_4),
    .O(segments[4])
  );
  OBUF   segments_3_OBUF (
    .I(segments_0_4),
    .O(segments[3])
  );
  OBUF   segments_2_OBUF (
    .I(segments_2_OBUF_5),
    .O(segments[2])
  );
  OBUF   segments_1_OBUF (
    .I(segments_2_OBUF_5),
    .O(segments[1])
  );
  OBUF   segments_0_OBUF (
    .I(segments_0_4),
    .O(segments[0])
  );
  OBUF   digit_select_3_OBUF (
    .I(digit_select_3_OBUF_6),
    .O(digit_select[3])
  );
  OBUF   digit_select_2_OBUF (
    .I(digit_select_3_OBUF_6),
    .O(digit_select[2])
  );
  OBUF   digit_select_1_OBUF (
    .I(digit_select_1_7),
    .O(digit_select[1])
  );
  OBUF   digit_select_0_OBUF (
    .I(digit_select_0_8),
    .O(digit_select[0])
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_2)
  );
  INV   rst_inv1_INV_0 (
    .I(rst_IBUF_3),
    .O(rst_inv)
  );
  INV   \Mcount_display_cnt_xor<0>11_INV_0  (
    .I(display_cnt[0]),
    .O(Result[0])
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

