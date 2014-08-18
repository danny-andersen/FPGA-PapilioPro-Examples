////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: scrolling_display_synthesis.v
// /___/   /\     Timestamp: Wed Jul 23 11:54:59 2014
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim scrolling_display.ngc scrolling_display_synthesis.v 
// Device	: xc6slx9-2-tqg144
// Input file	: scrolling_display.ngc
// Output file	: C:\Users\S243372\Dropbox\Workspaces\Projects_FPGA\scrolling_display\netgen\synthesis\scrolling_display_synthesis.v
// # of Modules	: 1
// Design Name	: scrolling_display
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

module scrolling_display (
  dsn, clearn, clk, rstn, ascii, segments, digit_select, leds
);
  input dsn;
  input clearn;
  input clk;
  input rstn;
  input [7 : 0] ascii;
  output [7 : 0] segments;
  output [3 : 0] digit_select;
  output [7 : 0] leds;
  wire ascii_7_IBUF_0;
  wire ascii_6_IBUF_1;
  wire ascii_5_IBUF_2;
  wire ascii_4_IBUF_3;
  wire ascii_3_IBUF_4;
  wire ascii_2_IBUF_5;
  wire ascii_1_IBUF_6;
  wire ascii_0_IBUF_7;
  wire dsn_IBUF_8;
  wire clearn_IBUF_9;
  wire clk_BUFGP_10;
  wire rstn_IBUF_11;
  wire dsn_INV_5_o;
  wire clearn_INV_7_o;
  wire \four_hz/counter_22_BUFG_14 ;
  wire init_276;
  wire _n0344;
  wire \buf_len[4]_GND_1_o_mux_44_OUT<4> ;
  wire \buf_len[4]_GND_1_o_mux_44_OUT<3> ;
  wire \buf_len[4]_GND_1_o_mux_44_OUT<1> ;
  wire \buf_ptr[4]_buf_len[4]_LessThan_53_o ;
  wire \buf_ptr[4]_buf_len[4]_equal_68_o ;
  wire \buf_ptr[4]_GND_1_o_add_86_OUT<1> ;
  wire leds_5_OBUF_337;
  wire \buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT<7> ;
  wire \buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT<6> ;
  wire \buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT<5> ;
  wire \buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT<4> ;
  wire \buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT<3> ;
  wire \buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT<2> ;
  wire \buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT<1> ;
  wire \buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT<0> ;
  wire \GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT<5> ;
  wire \GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT<7> ;
  wire \GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT<6> ;
  wire \GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT<5> ;
  wire \GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT<4> ;
  wire \GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT<3> ;
  wire \GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT<2> ;
  wire \GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT<1> ;
  wire \GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT<0> ;
  wire \GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT<7> ;
  wire \GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT<6> ;
  wire \GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT<5> ;
  wire \GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT<4> ;
  wire \GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT<3> ;
  wire \GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT<2> ;
  wire \GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT<1> ;
  wire \GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT<0> ;
  wire \buf_len[4]_Decoder_8_OUT<31> ;
  wire \buf_len[4]_Decoder_8_OUT<30> ;
  wire \buf_len[4]_Decoder_8_OUT<29> ;
  wire \buf_len[4]_Decoder_8_OUT<27> ;
  wire \buf_len[4]_Decoder_8_OUT<26> ;
  wire \buf_len[4]_Decoder_8_OUT<25> ;
  wire \buf_len[4]_Decoder_8_OUT<24> ;
  wire \buf_len[4]_Decoder_8_OUT<23> ;
  wire \buf_len[4]_Decoder_8_OUT<22> ;
  wire \buf_len[4]_Decoder_8_OUT<21> ;
  wire \buf_len[4]_Decoder_8_OUT<19> ;
  wire \buf_len[4]_Decoder_8_OUT<18> ;
  wire \buf_len[4]_Decoder_8_OUT<17> ;
  wire \buf_len[4]_Decoder_8_OUT<16> ;
  wire \buf_len[4]_Decoder_8_OUT<15> ;
  wire \buf_len[4]_Decoder_8_OUT<14> ;
  wire \buf_len[4]_Decoder_8_OUT<13> ;
  wire \buf_len[4]_Decoder_8_OUT<11> ;
  wire \buf_len[4]_Decoder_8_OUT<10> ;
  wire \buf_len[4]_Decoder_8_OUT<9> ;
  wire \buf_len[4]_Decoder_8_OUT<8> ;
  wire \buf_len[4]_Decoder_8_OUT<7> ;
  wire \buf_len[4]_Decoder_8_OUT<6> ;
  wire \buf_len[4]_Decoder_8_OUT<5> ;
  wire \buf_len[4]_Decoder_8_OUT<4> ;
  wire \buf_len[4]_Decoder_8_OUT<3> ;
  wire \buf_len[4]_Decoder_8_OUT<2> ;
  wire \buf_len[4]_Decoder_8_OUT<1> ;
  wire GND_1_o_GND_1_o_equal_89_o;
  wire GND_1_o_GND_1_o_equal_77_o;
  wire GND_1_o_GND_1_o_equal_84_o;
  wire \buf_len[4]_ascii_buf[2][7]_select_121_OUT<7> ;
  wire \buf_len[4]_ascii_buf[2][7]_select_121_OUT<6> ;
  wire \buf_len[4]_ascii_buf[2][7]_select_121_OUT<5> ;
  wire \buf_len[4]_ascii_buf[2][7]_select_121_OUT<4> ;
  wire \buf_len[4]_ascii_buf[2][7]_select_121_OUT<3> ;
  wire \buf_len[4]_ascii_buf[2][7]_select_121_OUT<2> ;
  wire \buf_len[4]_ascii_buf[2][7]_select_121_OUT<1> ;
  wire \buf_len[4]_ascii_buf[2][7]_select_121_OUT<0> ;
  wire \buf_len[4]_ascii_buf[3][7]_select_120_OUT<7> ;
  wire \buf_len[4]_ascii_buf[3][7]_select_120_OUT<6> ;
  wire \buf_len[4]_ascii_buf[3][7]_select_120_OUT<5> ;
  wire \buf_len[4]_ascii_buf[3][7]_select_120_OUT<4> ;
  wire \buf_len[4]_ascii_buf[3][7]_select_120_OUT<3> ;
  wire \buf_len[4]_ascii_buf[3][7]_select_120_OUT<2> ;
  wire \buf_len[4]_ascii_buf[3][7]_select_120_OUT<1> ;
  wire \buf_len[4]_ascii_buf[3][7]_select_120_OUT<0> ;
  wire \buf_len[4]_ascii_buf[1][7]_select_122_OUT<7> ;
  wire \buf_len[4]_ascii_buf[1][7]_select_122_OUT<6> ;
  wire \buf_len[4]_ascii_buf[1][7]_select_122_OUT<5> ;
  wire \buf_len[4]_ascii_buf[1][7]_select_122_OUT<4> ;
  wire \buf_len[4]_ascii_buf[1][7]_select_122_OUT<3> ;
  wire \buf_len[4]_ascii_buf[1][7]_select_122_OUT<2> ;
  wire \buf_len[4]_ascii_buf[1][7]_select_122_OUT<1> ;
  wire \buf_len[4]_ascii_buf[1][7]_select_122_OUT<0> ;
  wire \buf_len[4]_GND_1_o_select_124_OUT<4> ;
  wire \buf_len[4]_GND_1_o_select_124_OUT<3> ;
  wire \buf_len[4]_GND_1_o_select_124_OUT<2> ;
  wire \buf_len[4]_GND_1_o_select_124_OUT<1> ;
  wire \buf_len[4]_GND_1_o_select_124_OUT<0> ;
  wire \buf_len[4]_ascii_buf[0][7]_select_123_OUT<7> ;
  wire \buf_len[4]_ascii_buf[0][7]_select_123_OUT<6> ;
  wire \buf_len[4]_ascii_buf[0][7]_select_123_OUT<5> ;
  wire \buf_len[4]_ascii_buf[0][7]_select_123_OUT<4> ;
  wire \buf_len[4]_ascii_buf[0][7]_select_123_OUT<3> ;
  wire \buf_len[4]_ascii_buf[0][7]_select_123_OUT<2> ;
  wire \buf_len[4]_ascii_buf[0][7]_select_123_OUT<1> ;
  wire \buf_len[4]_ascii_buf[0][7]_select_123_OUT<0> ;
  wire \buf_len[4]_Decoder_8_OUT<0> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<255> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<254> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<253> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<252> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<251> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<250> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<249> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<248> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<247> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<246> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<245> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<244> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<243> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<242> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<241> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<240> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<239> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<238> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<237> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<236> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<235> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<234> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<233> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<232> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<231> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<230> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<229> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<228> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<227> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<226> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<225> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<224> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<223> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<222> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<221> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<220> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<219> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<218> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<217> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<216> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<215> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<214> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<213> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<212> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<211> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<210> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<209> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<208> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<207> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<206> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<205> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<204> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<203> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<202> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<201> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<200> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<199> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<198> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<197> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<196> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<195> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<194> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<193> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<192> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<191> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<190> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<189> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<188> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<187> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<186> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<185> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<184> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<183> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<182> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<181> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<180> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<179> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<178> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<177> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<176> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<175> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<174> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<173> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<172> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<171> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<170> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<169> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<168> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<167> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<166> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<165> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<164> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<163> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<162> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<161> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<160> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<159> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<158> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<157> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<156> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<155> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<154> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<153> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<152> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<151> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<150> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<149> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<148> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<147> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<146> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<145> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<144> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<143> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<142> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<141> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<140> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<139> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<138> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<137> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<136> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<135> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<134> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<133> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<132> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<131> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<130> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<129> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<128> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<127> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<126> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<125> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<124> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<123> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<122> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<121> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<120> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<119> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<118> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<117> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<116> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<115> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<114> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<113> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<112> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<111> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<110> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<109> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<108> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<107> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<106> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<105> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<104> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<103> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<102> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<101> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<100> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<99> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<98> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<97> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<96> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<95> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<94> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<93> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<92> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<91> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<90> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<89> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<88> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<87> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<86> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<85> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<84> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<83> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<82> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<81> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<80> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<79> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<78> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<77> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<76> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<75> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<74> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<73> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<72> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<71> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<70> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<69> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<68> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<67> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<66> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<65> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<64> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<63> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<62> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<61> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<60> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<59> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<58> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<57> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<56> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<55> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<54> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<53> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<52> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<51> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<50> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<49> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<48> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<47> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<46> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<45> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<44> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<43> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<42> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<41> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<40> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<39> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<38> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<37> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<36> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<35> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<34> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<33> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<32> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<31> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<30> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<29> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<28> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<27> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<26> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<25> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<24> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<23> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<22> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<21> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<20> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<19> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<18> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<17> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<16> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<15> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<14> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<13> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<12> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<11> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<10> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<9> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<8> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<7> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<6> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<5> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<4> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<3> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<2> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<1> ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<0> ;
  wire _n0269;
  wire N0;
  wire N1;
  wire _n0434_inv;
  wire \buf_len[4]_GND_1_o_mux_44_OUT<0>1_693 ;
  wire \buf_len[4]_GND_1_o_mux_44_OUT<2>1_694 ;
  wire _n0429_inv11;
  wire Reset_OR_DriverANDClockEnable;
  wire _n0410_inv;
  wire \Madd_buf_ptr[4]_GND_1_o_add_86_OUT_cy<2> ;
  wire \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_47_748 ;
  wire \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_107_749 ;
  wire \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_923_750 ;
  wire \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_922_751 ;
  wire \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_823_752 ;
  wire \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_37_753 ;
  wire \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_921_754 ;
  wire \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_822_755 ;
  wire \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_821_756 ;
  wire \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_77_757 ;
  wire \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_46_758 ;
  wire \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_106_759 ;
  wire \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_920_760 ;
  wire \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_919_761 ;
  wire \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_820_762 ;
  wire \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_36_763 ;
  wire \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_918_764 ;
  wire \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_819_765 ;
  wire \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_818_766 ;
  wire \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_76_767 ;
  wire \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_45_768 ;
  wire \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_105_769 ;
  wire \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_917_770 ;
  wire \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_916_771 ;
  wire \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_817_772 ;
  wire \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_35_773 ;
  wire \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_915_774 ;
  wire \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_816_775 ;
  wire \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_815_776 ;
  wire \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_75_777 ;
  wire \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_44_778 ;
  wire \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_104_779 ;
  wire \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_914_780 ;
  wire \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_913_781 ;
  wire \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_814_782 ;
  wire \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_34_783 ;
  wire \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_912_784 ;
  wire \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_813_785 ;
  wire \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_812_786 ;
  wire \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_74_787 ;
  wire \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_43_788 ;
  wire \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_103_789 ;
  wire \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_911_790 ;
  wire \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_910_791 ;
  wire \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_811_792 ;
  wire \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_33_793 ;
  wire \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_99_794 ;
  wire \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_810_795 ;
  wire \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_89_796 ;
  wire \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_73_797 ;
  wire \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_42_798 ;
  wire \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_102_799 ;
  wire \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_98_800 ;
  wire \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_97_801 ;
  wire \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_88_802 ;
  wire \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_32_803 ;
  wire \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_96_804 ;
  wire \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_87_805 ;
  wire \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_86_806 ;
  wire \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_72_807 ;
  wire \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_41_808 ;
  wire \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_101_809 ;
  wire \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_95_810 ;
  wire \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_94_811 ;
  wire \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_85_812 ;
  wire \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_31_813 ;
  wire \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_93_814 ;
  wire \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_84_815 ;
  wire \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_83_816 ;
  wire \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_71_817 ;
  wire \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_4_818 ;
  wire \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_10_819 ;
  wire \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_92_820 ;
  wire \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_91_821 ;
  wire \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_82_822 ;
  wire \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_3_823 ;
  wire \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_9_824 ;
  wire \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_81_825 ;
  wire \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_8_826 ;
  wire \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_7_827 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_47_858 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_107_859 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_923_860 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_922_861 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_823_862 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_37_863 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_921_864 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_822_865 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_821_866 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_77_867 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_46_868 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_106_869 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_920_870 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_919_871 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_820_872 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_36_873 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_918_874 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_819_875 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_818_876 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_76_877 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_45_878 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_105_879 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_917_880 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_916_881 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_817_882 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_35_883 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_915_884 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_816_885 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_815_886 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_75_887 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_44_888 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_104_889 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_914_890 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_913_891 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_814_892 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_34_893 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_912_894 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_813_895 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_812_896 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_74_897 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_43_898 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_103_899 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_911_900 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_910_901 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_811_902 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_33_903 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_99_904 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_810_905 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_89_906 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_73_907 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_42_908 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_102_909 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_98_910 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_97_911 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_88_912 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_32_913 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_96_914 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_87_915 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_86_916 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_72_917 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_41_918 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_101_919 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_95_920 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_94_921 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_85_922 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_31_923 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_93_924 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_84_925 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_83_926 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_71_927 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_4_928 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_10_929 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_92_930 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_91_931 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_82_932 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_3_933 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_9_934 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_81_935 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_8_936 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_7_937 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_47_938 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_107_939 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_923_940 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_922_941 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_823_942 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_37_943 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_921_944 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_822_945 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_821_946 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_77_947 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_46_948 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_106_949 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_920_950 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_919_951 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_820_952 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_36_953 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_918_954 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_819_955 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_818_956 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_76_957 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_45_958 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_105_959 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_917_960 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_916_961 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_817_962 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_35_963 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_915_964 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_816_965 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_815_966 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_75_967 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_44_968 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_104_969 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_914_970 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_913_971 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_814_972 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_34_973 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_912_974 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_813_975 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_812_976 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_74_977 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_43_978 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_103_979 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_911_980 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_910_981 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_811_982 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_33_983 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_99_984 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_810_985 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_89_986 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_73_987 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_42_988 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_102_989 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_98_990 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_97_991 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_88_992 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_32_993 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_96_994 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_87_995 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_86_996 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_72_997 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_41_998 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_101_999 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_95_1000 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_94_1001 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_85_1002 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_31_1003 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_93_1004 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_84_1005 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_83_1006 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_71_1007 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_4_1008 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_10_1009 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_92_1010 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_91_1011 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_82_1012 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_3_1013 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_9_1014 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_81_1015 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_8_1016 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_7_1017 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_47_1018 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_107_1019 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_923_1020 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_922_1021 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_823_1022 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_37_1023 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_921_1024 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_822_1025 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_821_1026 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_77_1027 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_46_1028 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_106_1029 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_920_1030 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_919_1031 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_820_1032 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_36_1033 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_918_1034 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_819_1035 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_818_1036 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_76_1037 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_45_1038 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_105_1039 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_917_1040 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_916_1041 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_817_1042 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_35_1043 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_915_1044 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_816_1045 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_815_1046 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_75_1047 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_44_1048 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_104_1049 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_914_1050 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_913_1051 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_814_1052 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_34_1053 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_912_1054 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_813_1055 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_812_1056 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_74_1057 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_43_1058 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_103_1059 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_911_1060 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_910_1061 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_811_1062 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_33_1063 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_99_1064 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_810_1065 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_89_1066 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_73_1067 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_42_1068 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_102_1069 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_98_1070 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_97_1071 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_88_1072 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_32_1073 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_96_1074 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_87_1075 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_86_1076 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_72_1077 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_41_1078 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_101_1079 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_95_1080 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_94_1081 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_85_1082 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_31_1083 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_93_1084 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_84_1085 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_83_1086 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_71_1087 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_4_1088 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_10_1089 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_92_1090 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_91_1091 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_82_1092 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_3_1093 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_9_1094 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_81_1095 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_8_1096 ;
  wire \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_7_1097 ;
  wire GND_1_o_GND_1_o_equal_77_o1_1098;
  wire \Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT11_1099 ;
  wire \Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT11_1100 ;
  wire \buf_ptr[4]_buf_len[4]_LessThan_53_o721 ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<0>11 ;
  wire \Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT111 ;
  wire \Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT61_1104 ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<223>1_1105 ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<221>1_1106 ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<220>2 ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<225>1_1108 ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<224>2 ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<243>1_1110 ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<102>1_1111 ;
  wire \ascii_buf[0][7]_GND_1_o_mux_49_OUT<106>1_1112 ;
  wire \Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT17 ;
  wire \buf_ptr[4]_buf_len[4]_LessThan_53_o26 ;
  wire GND_1_o_GND_1_o_equal_77_o61;
  wire \Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT101_1116 ;
  wire \Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT13 ;
  wire \Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT12_out1 ;
  wire \Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT10221_1119 ;
  wire \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT5111 ;
  wire \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT5211 ;
  wire \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT3213 ;
  wire \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT3123 ;
  wire \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT3223 ;
  wire \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT6124 ;
  wire \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT6224 ;
  wire \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT3222 ;
  wire \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT3212 ;
  wire \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT3122 ;
  wire \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT3112 ;
  wire \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT521_1131 ;
  wire \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT511_1132 ;
  wire \display/digit3[7]_PWR_2_o_select_215_OUT<3>1 ;
  wire \display/digit2[7]_PWR_2_o_select_161_OUT<3>1 ;
  wire \display/digit1[7]_PWR_2_o_select_107_OUT<3>1 ;
  wire \display/digit0[7]_PWR_2_o_select_53_OUT<3>1 ;
  wire \display/digit3[7]_PWR_2_o_select_215_OUT<5>2 ;
  wire \display/digit2[7]_PWR_2_o_select_161_OUT<5>2 ;
  wire \display/digit1[7]_PWR_2_o_select_107_OUT<5>2 ;
  wire \display/digit0[7]_PWR_2_o_select_53_OUT<5>2 ;
  wire \display/digit3[7]_PWR_2_o_select_215_OUT<6>2 ;
  wire \display/digit2[7]_PWR_2_o_select_161_OUT<6>2 ;
  wire \display/digit1[7]_PWR_2_o_select_107_OUT<6>2 ;
  wire \display/digit0[7]_PWR_2_o_select_53_OUT<6>2 ;
  wire \display/Mram_display_cnt[1]_GND_2_o_wide_mux_217_OUT3 ;
  wire \display/Mram_display_cnt[1]_GND_2_o_wide_mux_217_OUT2 ;
  wire \display/Mram_display_cnt[1]_GND_2_o_wide_mux_217_OUT1 ;
  wire \display/Mram_display_cnt[1]_GND_2_o_wide_mux_217_OUT ;
  wire \display/display_cnt[1]_digit3[7]_wide_mux_216_OUT<0> ;
  wire \display/display_cnt[1]_digit3[7]_wide_mux_216_OUT<1> ;
  wire \display/display_cnt[1]_digit3[7]_wide_mux_216_OUT<2> ;
  wire \display/display_cnt[1]_digit3[7]_wide_mux_216_OUT<3> ;
  wire \display/display_cnt[1]_digit3[7]_wide_mux_216_OUT<4> ;
  wire \display/display_cnt[1]_digit3[7]_wide_mux_216_OUT<5> ;
  wire \display/display_cnt[1]_digit3[7]_wide_mux_216_OUT<6> ;
  wire \display/display_cnt[1]_digit3[7]_wide_mux_216_OUT<7> ;
  wire \Mmux_buf_len[4]_GND_1_o_select_124_OUT2 ;
  wire N10;
  wire N12;
  wire N14;
  wire N16;
  wire N18;
  wire N20;
  wire N22;
  wire N24;
  wire \Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT12 ;
  wire \Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT121_1171 ;
  wire \Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT122_1172 ;
  wire \Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT123_1173 ;
  wire \Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT124_1174 ;
  wire N26;
  wire N28;
  wire N30;
  wire N32;
  wire N34;
  wire N36;
  wire N38;
  wire N40;
  wire N42;
  wire GND_1_o_GND_1_o_equal_89_o6;
  wire GND_1_o_GND_1_o_equal_89_o61_1185;
  wire GND_1_o_GND_1_o_equal_84_o6;
  wire GND_1_o_GND_1_o_equal_84_o61_1187;
  wire \Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT12 ;
  wire \Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT123 ;
  wire \Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT6 ;
  wire \Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT61 ;
  wire \Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT63_1192 ;
  wire \Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT64_1193 ;
  wire \Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT68_1194 ;
  wire \Mmux_buf_len[4]_GND_1_o_select_124_OUT4 ;
  wire \Mmux_buf_len[4]_GND_1_o_select_124_OUT41_1196 ;
  wire \Mmux_buf_len[4]_GND_1_o_select_124_OUT5 ;
  wire \Mmux_buf_len[4]_GND_1_o_select_124_OUT51_1198 ;
  wire \Mmux_buf_len[4]_GND_1_o_select_124_OUT52_1199 ;
  wire \Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT6 ;
  wire \Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT63_1201 ;
  wire \Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT64_1202 ;
  wire \Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT65_1203 ;
  wire N48;
  wire \Mmux_buf_len[4]_GND_1_o_select_124_OUT31 ;
  wire \Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT10 ;
  wire \Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT101_1207 ;
  wire \Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT102_1208 ;
  wire \Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT14 ;
  wire \Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT141_1210 ;
  wire \Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT142_1211 ;
  wire \Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT16 ;
  wire \Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT161_1213 ;
  wire \Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT162_1214 ;
  wire \Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT2 ;
  wire \Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT21_1216 ;
  wire \Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT22_1217 ;
  wire \Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT4 ;
  wire \Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT41_1219 ;
  wire \Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT42_1220 ;
  wire \Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT6 ;
  wire \Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT61_1222 ;
  wire \Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT62_1223 ;
  wire \Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT8 ;
  wire \Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT81_1225 ;
  wire \Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT82_1226 ;
  wire \Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT102 ;
  wire \Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT103_1228 ;
  wire \Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT104_1229 ;
  wire \Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT141 ;
  wire \Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT142_1231 ;
  wire \Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT143_1232 ;
  wire \Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT161 ;
  wire \Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT162_1234 ;
  wire \Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT163_1235 ;
  wire \Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT21 ;
  wire \Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT22_1237 ;
  wire \Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT23_1238 ;
  wire \Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT41 ;
  wire \Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT42_1240 ;
  wire \Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT43_1241 ;
  wire \Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT61 ;
  wire \Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT62_1243 ;
  wire \Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT63_1244 ;
  wire \Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT81 ;
  wire \Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT82_1246 ;
  wire \Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT83_1247 ;
  wire \display/digit3[7]_PWR_2_o_select_215_OUT<5>21_1248 ;
  wire \display/digit2[7]_PWR_2_o_select_161_OUT<6>21_1249 ;
  wire \display/digit2[7]_PWR_2_o_select_161_OUT<6>22_1250 ;
  wire \display/digit2[7]_PWR_2_o_select_161_OUT<5>21_1251 ;
  wire \display/digit1[7]_PWR_2_o_select_107_OUT<6>21_1252 ;
  wire \display/digit1[7]_PWR_2_o_select_107_OUT<6>22_1253 ;
  wire \display/digit1[7]_PWR_2_o_select_107_OUT<5>21_1254 ;
  wire \display/digit0[7]_PWR_2_o_select_53_OUT<6>21_1255 ;
  wire \display/digit0[7]_PWR_2_o_select_53_OUT<6>22_1256 ;
  wire \display/digit0[7]_PWR_2_o_select_53_OUT<5>21_1257 ;
  wire \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT7 ;
  wire \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT71_1259 ;
  wire \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT72_1260 ;
  wire \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT73_1261 ;
  wire \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT74_1262 ;
  wire \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT75_1263 ;
  wire \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT76_1264 ;
  wire \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT77_1265 ;
  wire \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT78_1266 ;
  wire \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT79_1267 ;
  wire \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT710_1268 ;
  wire \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT711_1269 ;
  wire \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT2 ;
  wire \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT21_1271 ;
  wire \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT22_1272 ;
  wire \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT23_1273 ;
  wire \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT24_1274 ;
  wire \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT25_1275 ;
  wire \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT26_1276 ;
  wire \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT27_1277 ;
  wire \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT28_1278 ;
  wire \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT29_1279 ;
  wire \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT210_1280 ;
  wire \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT211_1281 ;
  wire \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT31 ;
  wire \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT32_1283 ;
  wire \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT33_1284 ;
  wire \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT34_1285 ;
  wire \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT36 ;
  wire \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT38 ;
  wire \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT1 ;
  wire \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT11_1289 ;
  wire \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT14 ;
  wire \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT16 ;
  wire \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT17_1292 ;
  wire \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT18_1293 ;
  wire \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT19_1294 ;
  wire \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT110_1295 ;
  wire \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT52 ;
  wire \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT55 ;
  wire \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT56_1298 ;
  wire \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT59 ;
  wire \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT510_1300 ;
  wire \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT512_1301 ;
  wire \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT513_1302 ;
  wire \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT61 ;
  wire \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT62_1304 ;
  wire \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT65 ;
  wire \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT68 ;
  wire \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT69_1307 ;
  wire \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT612 ;
  wire \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT4 ;
  wire \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT41_1310 ;
  wire \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT43 ;
  wire \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT44_1312 ;
  wire \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT8 ;
  wire \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT81_1314 ;
  wire \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT82_1315 ;
  wire \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT83_1316 ;
  wire \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT84_1317 ;
  wire \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT85_1318 ;
  wire \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT86_1319 ;
  wire \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT87_1320 ;
  wire \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT88_1321 ;
  wire \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT89_1322 ;
  wire \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT810_1323 ;
  wire \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT811_1324 ;
  wire init_glue_set;
  wire \four_hz/Mcount_counter_cy<1>_rt_1358 ;
  wire \four_hz/Mcount_counter_cy<2>_rt_1359 ;
  wire \four_hz/Mcount_counter_cy<3>_rt_1360 ;
  wire \four_hz/Mcount_counter_cy<4>_rt_1361 ;
  wire \four_hz/Mcount_counter_cy<5>_rt_1362 ;
  wire \four_hz/Mcount_counter_cy<6>_rt_1363 ;
  wire \four_hz/Mcount_counter_cy<7>_rt_1364 ;
  wire \four_hz/Mcount_counter_cy<8>_rt_1365 ;
  wire \four_hz/Mcount_counter_cy<9>_rt_1366 ;
  wire \four_hz/Mcount_counter_cy<10>_rt_1367 ;
  wire \four_hz/Mcount_counter_cy<11>_rt_1368 ;
  wire \four_hz/Mcount_counter_cy<12>_rt_1369 ;
  wire \four_hz/Mcount_counter_cy<13>_rt_1370 ;
  wire \four_hz/Mcount_counter_cy<14>_rt_1371 ;
  wire \four_hz/Mcount_counter_cy<15>_rt_1372 ;
  wire \four_hz/Mcount_counter_cy<16>_rt_1373 ;
  wire \four_hz/Mcount_counter_cy<17>_rt_1374 ;
  wire \four_hz/Mcount_counter_cy<18>_rt_1375 ;
  wire \four_hz/Mcount_counter_cy<19>_rt_1376 ;
  wire \four_hz/Mcount_counter_cy<20>_rt_1377 ;
  wire \four_hz/Mcount_counter_cy<21>_rt_1378 ;
  wire \four_hz/Mcount_counter_xor<22>_rt_1379 ;
  wire N56;
  wire N58;
  wire N60;
  wire N61;
  wire N62;
  wire N64;
  wire N65;
  wire N68;
  wire N69;
  wire N72;
  wire N74;
  wire N76;
  wire N78;
  wire N79;
  wire N81;
  wire N82;
  wire N87;
  wire N101;
  wire N102;
  wire N104;
  wire N106;
  wire N108;
  wire N109;
  wire buf_ptr_0_1_1403;
  wire buf_ptr_1_1_1404;
  wire buf_ptr_1_2_1405;
  wire buf_ptr_0_2_1406;
  wire buf_ptr_3_1_1407;
  wire buf_ptr_2_1_1408;
  wire buf_ptr_4_1_1409;
  wire buf_ptr_1_3_1410;
  wire buf_ptr_3_2_1411;
  wire buf_ptr_4_2_1412;
  wire \buf_ptr[4]_buf_len[4]_LessThan_53_o1_1413 ;
  wire N110;
  wire N111;
  wire N112;
  wire N113;
  wire N114;
  wire N115;
  wire N116;
  wire N117;
  wire N118;
  wire N119;
  wire N120;
  wire N121;
  wire N122;
  wire N123;
  wire N124;
  wire N125;
  wire N126;
  wire N127;
  wire N128;
  wire N129;
  wire N130;
  wire N131;
  wire N132;
  wire N133;
  wire N134;
  wire N135;
  wire [22 : 0] \four_hz/counter ;
  wire [1 : 0] clr_sreg;
  wire [1 : 0] ds_sreg;
  wire [255 : 0] ascii_buf_31;
  wire [7 : 0] digit1;
  wire [7 : 0] digit2;
  wire [7 : 0] digit3;
  wire [7 : 0] digit0;
  wire [7 : 0] \display/segments ;
  wire [3 : 0] \display/digit_select ;
  wire [4 : 2] GND_1_o_GND_1_o_sub_69_OUT;
  wire [4 : 2] GND_1_o_GND_1_o_sub_78_OUT;
  wire [4 : 2] GND_1_o_GND_1_o_sub_85_OUT;
  wire [3 : 3] _n0272;
  wire [22 : 0] Result;
  wire [4 : 0] buf_ptr;
  wire [4 : 0] buf_len;
  wire [2 : 2] Madd__n0272_cy;
  wire [1 : 1] Madd__n0267_cy;
  wire [0 : 0] \four_hz/Mcount_counter_lut ;
  wire [21 : 0] \four_hz/Mcount_counter_cy ;
  wire [1 : 0] \display/display_cnt ;
  wire [1 : 0] \display/Result ;
  VCC   XST_VCC (
    .P(N0)
  );
  GND   XST_GND (
    .G(N1)
  );
  FDR   clr_sreg_0 (
    .C(clk_BUFGP_10),
    .D(clearn_INV_7_o),
    .R(init_glue_set),
    .Q(clr_sreg[0])
  );
  FDR   clr_sreg_1 (
    .C(clk_BUFGP_10),
    .D(clr_sreg[0]),
    .R(init_glue_set),
    .Q(clr_sreg[1])
  );
  FDR   ds_sreg_0 (
    .C(clk_BUFGP_10),
    .D(dsn_INV_5_o),
    .R(init_glue_set),
    .Q(ds_sreg[0])
  );
  FDR   ds_sreg_1 (
    .C(clk_BUFGP_10),
    .D(ds_sreg[0]),
    .R(init_glue_set),
    .Q(ds_sreg[1])
  );
  FDE   ascii_buf_31_0 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<0> ),
    .Q(ascii_buf_31[0])
  );
  FDE   ascii_buf_31_1 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<1> ),
    .Q(ascii_buf_31[1])
  );
  FDE   ascii_buf_31_2 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<2> ),
    .Q(ascii_buf_31[2])
  );
  FDE   ascii_buf_31_3 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<3> ),
    .Q(ascii_buf_31[3])
  );
  FDE   ascii_buf_31_4 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<4> ),
    .Q(ascii_buf_31[4])
  );
  FDE   ascii_buf_31_5 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<5> ),
    .Q(ascii_buf_31[5])
  );
  FDE   ascii_buf_31_6 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<6> ),
    .Q(ascii_buf_31[6])
  );
  FDE   ascii_buf_31_7 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<7> ),
    .Q(ascii_buf_31[7])
  );
  FDE   ascii_buf_31_8 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<8> ),
    .Q(ascii_buf_31[8])
  );
  FDE   ascii_buf_31_9 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<9> ),
    .Q(ascii_buf_31[9])
  );
  FDE   ascii_buf_31_10 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<10> ),
    .Q(ascii_buf_31[10])
  );
  FDE   ascii_buf_31_11 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<11> ),
    .Q(ascii_buf_31[11])
  );
  FDE   ascii_buf_31_12 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<12> ),
    .Q(ascii_buf_31[12])
  );
  FDE   ascii_buf_31_13 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<13> ),
    .Q(ascii_buf_31[13])
  );
  FDE   ascii_buf_31_14 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<14> ),
    .Q(ascii_buf_31[14])
  );
  FDE   ascii_buf_31_15 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<15> ),
    .Q(ascii_buf_31[15])
  );
  FDE   ascii_buf_31_16 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<16> ),
    .Q(ascii_buf_31[16])
  );
  FDE   ascii_buf_31_17 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<17> ),
    .Q(ascii_buf_31[17])
  );
  FDE   ascii_buf_31_18 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<18> ),
    .Q(ascii_buf_31[18])
  );
  FDE   ascii_buf_31_19 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<19> ),
    .Q(ascii_buf_31[19])
  );
  FDE   ascii_buf_31_20 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<20> ),
    .Q(ascii_buf_31[20])
  );
  FDE   ascii_buf_31_21 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<21> ),
    .Q(ascii_buf_31[21])
  );
  FDE   ascii_buf_31_22 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<22> ),
    .Q(ascii_buf_31[22])
  );
  FDE   ascii_buf_31_23 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<23> ),
    .Q(ascii_buf_31[23])
  );
  FDE   ascii_buf_31_24 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<24> ),
    .Q(ascii_buf_31[24])
  );
  FDE   ascii_buf_31_25 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<25> ),
    .Q(ascii_buf_31[25])
  );
  FDE   ascii_buf_31_26 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<26> ),
    .Q(ascii_buf_31[26])
  );
  FDE   ascii_buf_31_27 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<27> ),
    .Q(ascii_buf_31[27])
  );
  FDE   ascii_buf_31_28 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<28> ),
    .Q(ascii_buf_31[28])
  );
  FDE   ascii_buf_31_29 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<29> ),
    .Q(ascii_buf_31[29])
  );
  FDE   ascii_buf_31_30 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<30> ),
    .Q(ascii_buf_31[30])
  );
  FDE   ascii_buf_31_31 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<31> ),
    .Q(ascii_buf_31[31])
  );
  FDE   ascii_buf_31_32 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<32> ),
    .Q(ascii_buf_31[32])
  );
  FDE   ascii_buf_31_33 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<33> ),
    .Q(ascii_buf_31[33])
  );
  FDE   ascii_buf_31_34 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<34> ),
    .Q(ascii_buf_31[34])
  );
  FDE   ascii_buf_31_35 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<35> ),
    .Q(ascii_buf_31[35])
  );
  FDE   ascii_buf_31_36 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<36> ),
    .Q(ascii_buf_31[36])
  );
  FDE   ascii_buf_31_37 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<37> ),
    .Q(ascii_buf_31[37])
  );
  FDE   ascii_buf_31_38 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<38> ),
    .Q(ascii_buf_31[38])
  );
  FDE   ascii_buf_31_39 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<39> ),
    .Q(ascii_buf_31[39])
  );
  FDE   ascii_buf_31_40 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<40> ),
    .Q(ascii_buf_31[40])
  );
  FDE   ascii_buf_31_41 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<41> ),
    .Q(ascii_buf_31[41])
  );
  FDE   ascii_buf_31_42 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<42> ),
    .Q(ascii_buf_31[42])
  );
  FDE   ascii_buf_31_43 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<43> ),
    .Q(ascii_buf_31[43])
  );
  FDE   ascii_buf_31_44 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<44> ),
    .Q(ascii_buf_31[44])
  );
  FDE   ascii_buf_31_45 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<45> ),
    .Q(ascii_buf_31[45])
  );
  FDE   ascii_buf_31_46 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<46> ),
    .Q(ascii_buf_31[46])
  );
  FDE   ascii_buf_31_47 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<47> ),
    .Q(ascii_buf_31[47])
  );
  FDE   ascii_buf_31_48 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<48> ),
    .Q(ascii_buf_31[48])
  );
  FDE   ascii_buf_31_49 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<49> ),
    .Q(ascii_buf_31[49])
  );
  FDE   ascii_buf_31_50 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<50> ),
    .Q(ascii_buf_31[50])
  );
  FDE   ascii_buf_31_51 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<51> ),
    .Q(ascii_buf_31[51])
  );
  FDE   ascii_buf_31_52 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<52> ),
    .Q(ascii_buf_31[52])
  );
  FDE   ascii_buf_31_53 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<53> ),
    .Q(ascii_buf_31[53])
  );
  FDE   ascii_buf_31_54 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<54> ),
    .Q(ascii_buf_31[54])
  );
  FDE   ascii_buf_31_55 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<55> ),
    .Q(ascii_buf_31[55])
  );
  FDE   ascii_buf_31_56 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<56> ),
    .Q(ascii_buf_31[56])
  );
  FDE   ascii_buf_31_57 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<57> ),
    .Q(ascii_buf_31[57])
  );
  FDE   ascii_buf_31_58 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<58> ),
    .Q(ascii_buf_31[58])
  );
  FDE   ascii_buf_31_59 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<59> ),
    .Q(ascii_buf_31[59])
  );
  FDE   ascii_buf_31_60 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<60> ),
    .Q(ascii_buf_31[60])
  );
  FDE   ascii_buf_31_61 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<61> ),
    .Q(ascii_buf_31[61])
  );
  FDE   ascii_buf_31_62 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<62> ),
    .Q(ascii_buf_31[62])
  );
  FDE   ascii_buf_31_63 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<63> ),
    .Q(ascii_buf_31[63])
  );
  FDE   ascii_buf_31_64 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<64> ),
    .Q(ascii_buf_31[64])
  );
  FDE   ascii_buf_31_65 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<65> ),
    .Q(ascii_buf_31[65])
  );
  FDE   ascii_buf_31_66 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<66> ),
    .Q(ascii_buf_31[66])
  );
  FDE   ascii_buf_31_67 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<67> ),
    .Q(ascii_buf_31[67])
  );
  FDE   ascii_buf_31_68 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<68> ),
    .Q(ascii_buf_31[68])
  );
  FDE   ascii_buf_31_69 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<69> ),
    .Q(ascii_buf_31[69])
  );
  FDE   ascii_buf_31_70 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<70> ),
    .Q(ascii_buf_31[70])
  );
  FDE   ascii_buf_31_71 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<71> ),
    .Q(ascii_buf_31[71])
  );
  FDE   ascii_buf_31_72 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<72> ),
    .Q(ascii_buf_31[72])
  );
  FDE   ascii_buf_31_73 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<73> ),
    .Q(ascii_buf_31[73])
  );
  FDE   ascii_buf_31_74 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<74> ),
    .Q(ascii_buf_31[74])
  );
  FDE   ascii_buf_31_75 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<75> ),
    .Q(ascii_buf_31[75])
  );
  FDE   ascii_buf_31_76 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<76> ),
    .Q(ascii_buf_31[76])
  );
  FDE   ascii_buf_31_77 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<77> ),
    .Q(ascii_buf_31[77])
  );
  FDE   ascii_buf_31_78 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<78> ),
    .Q(ascii_buf_31[78])
  );
  FDE   ascii_buf_31_79 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<79> ),
    .Q(ascii_buf_31[79])
  );
  FDE   ascii_buf_31_80 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<80> ),
    .Q(ascii_buf_31[80])
  );
  FDE   ascii_buf_31_81 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<81> ),
    .Q(ascii_buf_31[81])
  );
  FDE   ascii_buf_31_82 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<82> ),
    .Q(ascii_buf_31[82])
  );
  FDE   ascii_buf_31_83 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<83> ),
    .Q(ascii_buf_31[83])
  );
  FDE   ascii_buf_31_84 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<84> ),
    .Q(ascii_buf_31[84])
  );
  FDE   ascii_buf_31_85 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<85> ),
    .Q(ascii_buf_31[85])
  );
  FDE   ascii_buf_31_86 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<86> ),
    .Q(ascii_buf_31[86])
  );
  FDE   ascii_buf_31_87 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<87> ),
    .Q(ascii_buf_31[87])
  );
  FDE   ascii_buf_31_88 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<88> ),
    .Q(ascii_buf_31[88])
  );
  FDE   ascii_buf_31_89 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<89> ),
    .Q(ascii_buf_31[89])
  );
  FDE   ascii_buf_31_90 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<90> ),
    .Q(ascii_buf_31[90])
  );
  FDE   ascii_buf_31_91 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<91> ),
    .Q(ascii_buf_31[91])
  );
  FDE   ascii_buf_31_92 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<92> ),
    .Q(ascii_buf_31[92])
  );
  FDE   ascii_buf_31_93 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<93> ),
    .Q(ascii_buf_31[93])
  );
  FDE   ascii_buf_31_94 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<94> ),
    .Q(ascii_buf_31[94])
  );
  FDE   ascii_buf_31_95 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<95> ),
    .Q(ascii_buf_31[95])
  );
  FDE   ascii_buf_31_96 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<96> ),
    .Q(ascii_buf_31[96])
  );
  FDE   ascii_buf_31_97 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<97> ),
    .Q(ascii_buf_31[97])
  );
  FDE   ascii_buf_31_98 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<98> ),
    .Q(ascii_buf_31[98])
  );
  FDE   ascii_buf_31_99 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<99> ),
    .Q(ascii_buf_31[99])
  );
  FDE   ascii_buf_31_100 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<100> ),
    .Q(ascii_buf_31[100])
  );
  FDE   ascii_buf_31_101 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<101> ),
    .Q(ascii_buf_31[101])
  );
  FDE   ascii_buf_31_102 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<102> ),
    .Q(ascii_buf_31[102])
  );
  FDE   ascii_buf_31_103 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<103> ),
    .Q(ascii_buf_31[103])
  );
  FDE   ascii_buf_31_104 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<104> ),
    .Q(ascii_buf_31[104])
  );
  FDE   ascii_buf_31_105 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<105> ),
    .Q(ascii_buf_31[105])
  );
  FDE   ascii_buf_31_106 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<106> ),
    .Q(ascii_buf_31[106])
  );
  FDE   ascii_buf_31_107 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<107> ),
    .Q(ascii_buf_31[107])
  );
  FDE   ascii_buf_31_108 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<108> ),
    .Q(ascii_buf_31[108])
  );
  FDE   ascii_buf_31_109 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<109> ),
    .Q(ascii_buf_31[109])
  );
  FDE   ascii_buf_31_110 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<110> ),
    .Q(ascii_buf_31[110])
  );
  FDE   ascii_buf_31_111 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<111> ),
    .Q(ascii_buf_31[111])
  );
  FDE   ascii_buf_31_112 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<112> ),
    .Q(ascii_buf_31[112])
  );
  FDE   ascii_buf_31_113 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<113> ),
    .Q(ascii_buf_31[113])
  );
  FDE   ascii_buf_31_114 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<114> ),
    .Q(ascii_buf_31[114])
  );
  FDE   ascii_buf_31_115 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<115> ),
    .Q(ascii_buf_31[115])
  );
  FDE   ascii_buf_31_116 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<116> ),
    .Q(ascii_buf_31[116])
  );
  FDE   ascii_buf_31_117 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<117> ),
    .Q(ascii_buf_31[117])
  );
  FDE   ascii_buf_31_118 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<118> ),
    .Q(ascii_buf_31[118])
  );
  FDE   ascii_buf_31_119 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<119> ),
    .Q(ascii_buf_31[119])
  );
  FDE   ascii_buf_31_120 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<120> ),
    .Q(ascii_buf_31[120])
  );
  FDE   ascii_buf_31_121 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<121> ),
    .Q(ascii_buf_31[121])
  );
  FDE   ascii_buf_31_122 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<122> ),
    .Q(ascii_buf_31[122])
  );
  FDE   ascii_buf_31_123 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<123> ),
    .Q(ascii_buf_31[123])
  );
  FDE   ascii_buf_31_124 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<124> ),
    .Q(ascii_buf_31[124])
  );
  FDE   ascii_buf_31_125 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<125> ),
    .Q(ascii_buf_31[125])
  );
  FDE   ascii_buf_31_126 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<126> ),
    .Q(ascii_buf_31[126])
  );
  FDE   ascii_buf_31_127 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<127> ),
    .Q(ascii_buf_31[127])
  );
  FDE   ascii_buf_31_128 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<128> ),
    .Q(ascii_buf_31[128])
  );
  FDE   ascii_buf_31_129 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<129> ),
    .Q(ascii_buf_31[129])
  );
  FDE   ascii_buf_31_130 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<130> ),
    .Q(ascii_buf_31[130])
  );
  FDE   ascii_buf_31_131 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<131> ),
    .Q(ascii_buf_31[131])
  );
  FDE   ascii_buf_31_132 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<132> ),
    .Q(ascii_buf_31[132])
  );
  FDE   ascii_buf_31_133 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<133> ),
    .Q(ascii_buf_31[133])
  );
  FDE   ascii_buf_31_134 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<134> ),
    .Q(ascii_buf_31[134])
  );
  FDE   ascii_buf_31_135 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<135> ),
    .Q(ascii_buf_31[135])
  );
  FDE   ascii_buf_31_136 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<136> ),
    .Q(ascii_buf_31[136])
  );
  FDE   ascii_buf_31_137 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<137> ),
    .Q(ascii_buf_31[137])
  );
  FDE   ascii_buf_31_138 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<138> ),
    .Q(ascii_buf_31[138])
  );
  FDE   ascii_buf_31_139 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<139> ),
    .Q(ascii_buf_31[139])
  );
  FDE   ascii_buf_31_140 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<140> ),
    .Q(ascii_buf_31[140])
  );
  FDE   ascii_buf_31_141 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<141> ),
    .Q(ascii_buf_31[141])
  );
  FDE   ascii_buf_31_142 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<142> ),
    .Q(ascii_buf_31[142])
  );
  FDE   ascii_buf_31_143 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<143> ),
    .Q(ascii_buf_31[143])
  );
  FDE   ascii_buf_31_144 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<144> ),
    .Q(ascii_buf_31[144])
  );
  FDE   ascii_buf_31_145 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<145> ),
    .Q(ascii_buf_31[145])
  );
  FDE   ascii_buf_31_146 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<146> ),
    .Q(ascii_buf_31[146])
  );
  FDE   ascii_buf_31_147 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<147> ),
    .Q(ascii_buf_31[147])
  );
  FDE   ascii_buf_31_148 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<148> ),
    .Q(ascii_buf_31[148])
  );
  FDE   ascii_buf_31_149 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<149> ),
    .Q(ascii_buf_31[149])
  );
  FDE   ascii_buf_31_150 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<150> ),
    .Q(ascii_buf_31[150])
  );
  FDE   ascii_buf_31_151 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<151> ),
    .Q(ascii_buf_31[151])
  );
  FDE   ascii_buf_31_152 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<152> ),
    .Q(ascii_buf_31[152])
  );
  FDE   ascii_buf_31_153 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<153> ),
    .Q(ascii_buf_31[153])
  );
  FDE   ascii_buf_31_154 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<154> ),
    .Q(ascii_buf_31[154])
  );
  FDE   ascii_buf_31_155 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<155> ),
    .Q(ascii_buf_31[155])
  );
  FDE   ascii_buf_31_156 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<156> ),
    .Q(ascii_buf_31[156])
  );
  FDE   ascii_buf_31_157 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<157> ),
    .Q(ascii_buf_31[157])
  );
  FDE   ascii_buf_31_158 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<158> ),
    .Q(ascii_buf_31[158])
  );
  FDE   ascii_buf_31_159 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<159> ),
    .Q(ascii_buf_31[159])
  );
  FDE   ascii_buf_31_160 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<160> ),
    .Q(ascii_buf_31[160])
  );
  FDE   ascii_buf_31_161 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<161> ),
    .Q(ascii_buf_31[161])
  );
  FDE   ascii_buf_31_162 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<162> ),
    .Q(ascii_buf_31[162])
  );
  FDE   ascii_buf_31_163 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<163> ),
    .Q(ascii_buf_31[163])
  );
  FDE   ascii_buf_31_164 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<164> ),
    .Q(ascii_buf_31[164])
  );
  FDE   ascii_buf_31_165 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<165> ),
    .Q(ascii_buf_31[165])
  );
  FDE   ascii_buf_31_166 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<166> ),
    .Q(ascii_buf_31[166])
  );
  FDE   ascii_buf_31_167 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<167> ),
    .Q(ascii_buf_31[167])
  );
  FDE   ascii_buf_31_168 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<168> ),
    .Q(ascii_buf_31[168])
  );
  FDE   ascii_buf_31_169 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<169> ),
    .Q(ascii_buf_31[169])
  );
  FDE   ascii_buf_31_170 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<170> ),
    .Q(ascii_buf_31[170])
  );
  FDE   ascii_buf_31_171 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<171> ),
    .Q(ascii_buf_31[171])
  );
  FDE   ascii_buf_31_172 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<172> ),
    .Q(ascii_buf_31[172])
  );
  FDE   ascii_buf_31_173 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<173> ),
    .Q(ascii_buf_31[173])
  );
  FDE   ascii_buf_31_174 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<174> ),
    .Q(ascii_buf_31[174])
  );
  FDE   ascii_buf_31_175 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<175> ),
    .Q(ascii_buf_31[175])
  );
  FDE   ascii_buf_31_176 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<176> ),
    .Q(ascii_buf_31[176])
  );
  FDE   ascii_buf_31_177 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<177> ),
    .Q(ascii_buf_31[177])
  );
  FDE   ascii_buf_31_178 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<178> ),
    .Q(ascii_buf_31[178])
  );
  FDE   ascii_buf_31_179 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<179> ),
    .Q(ascii_buf_31[179])
  );
  FDE   ascii_buf_31_180 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<180> ),
    .Q(ascii_buf_31[180])
  );
  FDE   ascii_buf_31_181 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<181> ),
    .Q(ascii_buf_31[181])
  );
  FDE   ascii_buf_31_182 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<182> ),
    .Q(ascii_buf_31[182])
  );
  FDE   ascii_buf_31_183 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<183> ),
    .Q(ascii_buf_31[183])
  );
  FDE   ascii_buf_31_184 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<184> ),
    .Q(ascii_buf_31[184])
  );
  FDE   ascii_buf_31_185 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<185> ),
    .Q(ascii_buf_31[185])
  );
  FDE   ascii_buf_31_186 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<186> ),
    .Q(ascii_buf_31[186])
  );
  FDE   ascii_buf_31_187 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<187> ),
    .Q(ascii_buf_31[187])
  );
  FDE   ascii_buf_31_188 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<188> ),
    .Q(ascii_buf_31[188])
  );
  FDE   ascii_buf_31_189 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<189> ),
    .Q(ascii_buf_31[189])
  );
  FDE   ascii_buf_31_190 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<190> ),
    .Q(ascii_buf_31[190])
  );
  FDE   ascii_buf_31_191 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<191> ),
    .Q(ascii_buf_31[191])
  );
  FDE   ascii_buf_31_192 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<192> ),
    .Q(ascii_buf_31[192])
  );
  FDE   ascii_buf_31_193 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<193> ),
    .Q(ascii_buf_31[193])
  );
  FDE   ascii_buf_31_194 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<194> ),
    .Q(ascii_buf_31[194])
  );
  FDE   ascii_buf_31_195 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<195> ),
    .Q(ascii_buf_31[195])
  );
  FDE   ascii_buf_31_196 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<196> ),
    .Q(ascii_buf_31[196])
  );
  FDE   ascii_buf_31_197 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<197> ),
    .Q(ascii_buf_31[197])
  );
  FDE   ascii_buf_31_198 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<198> ),
    .Q(ascii_buf_31[198])
  );
  FDE   ascii_buf_31_199 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<199> ),
    .Q(ascii_buf_31[199])
  );
  FDE   ascii_buf_31_200 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<200> ),
    .Q(ascii_buf_31[200])
  );
  FDE   ascii_buf_31_201 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<201> ),
    .Q(ascii_buf_31[201])
  );
  FDE   ascii_buf_31_202 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<202> ),
    .Q(ascii_buf_31[202])
  );
  FDE   ascii_buf_31_203 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<203> ),
    .Q(ascii_buf_31[203])
  );
  FDE   ascii_buf_31_204 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<204> ),
    .Q(ascii_buf_31[204])
  );
  FDE   ascii_buf_31_205 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<205> ),
    .Q(ascii_buf_31[205])
  );
  FDE   ascii_buf_31_206 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<206> ),
    .Q(ascii_buf_31[206])
  );
  FDE   ascii_buf_31_207 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<207> ),
    .Q(ascii_buf_31[207])
  );
  FDE   ascii_buf_31_208 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<208> ),
    .Q(ascii_buf_31[208])
  );
  FDE   ascii_buf_31_209 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<209> ),
    .Q(ascii_buf_31[209])
  );
  FDE   ascii_buf_31_210 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<210> ),
    .Q(ascii_buf_31[210])
  );
  FDE   ascii_buf_31_211 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<211> ),
    .Q(ascii_buf_31[211])
  );
  FDE   ascii_buf_31_212 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<212> ),
    .Q(ascii_buf_31[212])
  );
  FDE   ascii_buf_31_213 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<213> ),
    .Q(ascii_buf_31[213])
  );
  FDE   ascii_buf_31_214 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<214> ),
    .Q(ascii_buf_31[214])
  );
  FDE   ascii_buf_31_215 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<215> ),
    .Q(ascii_buf_31[215])
  );
  FDE   ascii_buf_31_216 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<216> ),
    .Q(ascii_buf_31[216])
  );
  FDE   ascii_buf_31_217 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<217> ),
    .Q(ascii_buf_31[217])
  );
  FDE   ascii_buf_31_218 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<218> ),
    .Q(ascii_buf_31[218])
  );
  FDE   ascii_buf_31_219 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<219> ),
    .Q(ascii_buf_31[219])
  );
  FDE   ascii_buf_31_220 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<220> ),
    .Q(ascii_buf_31[220])
  );
  FDE   ascii_buf_31_221 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<221> ),
    .Q(ascii_buf_31[221])
  );
  FDE   ascii_buf_31_222 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<222> ),
    .Q(ascii_buf_31[222])
  );
  FDE   ascii_buf_31_223 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<223> ),
    .Q(ascii_buf_31[223])
  );
  FDE   ascii_buf_31_224 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<224> ),
    .Q(ascii_buf_31[224])
  );
  FDE   ascii_buf_31_225 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<225> ),
    .Q(ascii_buf_31[225])
  );
  FDE   ascii_buf_31_226 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<226> ),
    .Q(ascii_buf_31[226])
  );
  FDE   ascii_buf_31_227 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<227> ),
    .Q(ascii_buf_31[227])
  );
  FDE   ascii_buf_31_228 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<228> ),
    .Q(ascii_buf_31[228])
  );
  FDE   ascii_buf_31_229 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<229> ),
    .Q(ascii_buf_31[229])
  );
  FDE   ascii_buf_31_230 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<230> ),
    .Q(ascii_buf_31[230])
  );
  FDE   ascii_buf_31_231 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<231> ),
    .Q(ascii_buf_31[231])
  );
  FDE   ascii_buf_31_232 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<232> ),
    .Q(ascii_buf_31[232])
  );
  FDE   ascii_buf_31_233 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<233> ),
    .Q(ascii_buf_31[233])
  );
  FDE   ascii_buf_31_234 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<234> ),
    .Q(ascii_buf_31[234])
  );
  FDE   ascii_buf_31_235 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<235> ),
    .Q(ascii_buf_31[235])
  );
  FDE   ascii_buf_31_236 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<236> ),
    .Q(ascii_buf_31[236])
  );
  FDE   ascii_buf_31_237 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<237> ),
    .Q(ascii_buf_31[237])
  );
  FDE   ascii_buf_31_238 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<238> ),
    .Q(ascii_buf_31[238])
  );
  FDE   ascii_buf_31_239 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<239> ),
    .Q(ascii_buf_31[239])
  );
  FDE   ascii_buf_31_240 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<240> ),
    .Q(ascii_buf_31[240])
  );
  FDE   ascii_buf_31_241 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<241> ),
    .Q(ascii_buf_31[241])
  );
  FDE   ascii_buf_31_242 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<242> ),
    .Q(ascii_buf_31[242])
  );
  FDE   ascii_buf_31_243 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<243> ),
    .Q(ascii_buf_31[243])
  );
  FDE   ascii_buf_31_244 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<244> ),
    .Q(ascii_buf_31[244])
  );
  FDE   ascii_buf_31_245 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<245> ),
    .Q(ascii_buf_31[245])
  );
  FDE   ascii_buf_31_246 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<246> ),
    .Q(ascii_buf_31[246])
  );
  FDE   ascii_buf_31_247 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<247> ),
    .Q(ascii_buf_31[247])
  );
  FDE   ascii_buf_31_248 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<248> ),
    .Q(ascii_buf_31[248])
  );
  FDE   ascii_buf_31_249 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<249> ),
    .Q(ascii_buf_31[249])
  );
  FDE   ascii_buf_31_250 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<250> ),
    .Q(ascii_buf_31[250])
  );
  FDE   ascii_buf_31_251 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<251> ),
    .Q(ascii_buf_31[251])
  );
  FDE   ascii_buf_31_252 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<252> ),
    .Q(ascii_buf_31[252])
  );
  FDE   ascii_buf_31_253 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<253> ),
    .Q(ascii_buf_31[253])
  );
  FDE   ascii_buf_31_254 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<254> ),
    .Q(ascii_buf_31[254])
  );
  FDE   ascii_buf_31_255 (
    .C(clk_BUFGP_10),
    .CE(_n0434_inv),
    .D(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<255> ),
    .Q(ascii_buf_31[255])
  );
  FDRE   buf_len_0 (
    .C(clk_BUFGP_10),
    .CE(_n0429_inv11),
    .D(\buf_len[4]_GND_1_o_mux_44_OUT<0>1_693 ),
    .R(_n0344),
    .Q(buf_len[0])
  );
  FDRE   buf_len_1 (
    .C(clk_BUFGP_10),
    .CE(_n0429_inv11),
    .D(\buf_len[4]_GND_1_o_mux_44_OUT<1> ),
    .R(Reset_OR_DriverANDClockEnable),
    .Q(buf_len[1])
  );
  FDRE   buf_len_2 (
    .C(clk_BUFGP_10),
    .CE(_n0429_inv11),
    .D(\buf_len[4]_GND_1_o_mux_44_OUT<2>1_694 ),
    .R(_n0344),
    .Q(buf_len[2])
  );
  FDRE   buf_len_3 (
    .C(clk_BUFGP_10),
    .CE(_n0429_inv11),
    .D(\buf_len[4]_GND_1_o_mux_44_OUT<3> ),
    .R(Reset_OR_DriverANDClockEnable),
    .Q(buf_len[3])
  );
  FDRE   buf_len_4 (
    .C(clk_BUFGP_10),
    .CE(_n0429_inv11),
    .D(\buf_len[4]_GND_1_o_mux_44_OUT<4> ),
    .R(Reset_OR_DriverANDClockEnable),
    .Q(buf_len[4])
  );
  FDCE   buf_ptr_0 (
    .C(\four_hz/counter_22_BUFG_14 ),
    .CE(_n0410_inv),
    .CLR(init_glue_set),
    .D(\buf_len[4]_GND_1_o_select_124_OUT<0> ),
    .Q(buf_ptr[0])
  );
  FDCE   buf_ptr_1 (
    .C(\four_hz/counter_22_BUFG_14 ),
    .CE(_n0410_inv),
    .CLR(init_glue_set),
    .D(\buf_len[4]_GND_1_o_select_124_OUT<1> ),
    .Q(buf_ptr[1])
  );
  FDCE   buf_ptr_2 (
    .C(\four_hz/counter_22_BUFG_14 ),
    .CE(_n0410_inv),
    .CLR(init_glue_set),
    .D(\buf_len[4]_GND_1_o_select_124_OUT<2> ),
    .Q(buf_ptr[2])
  );
  FDCE   buf_ptr_3 (
    .C(\four_hz/counter_22_BUFG_14 ),
    .CE(_n0410_inv),
    .CLR(init_glue_set),
    .D(\buf_len[4]_GND_1_o_select_124_OUT<3> ),
    .Q(buf_ptr[3])
  );
  FDCE   buf_ptr_4 (
    .C(\four_hz/counter_22_BUFG_14 ),
    .CE(_n0410_inv),
    .CLR(init_glue_set),
    .D(\buf_len[4]_GND_1_o_select_124_OUT<4> ),
    .Q(buf_ptr[4])
  );
  FDCE   digit2_0 (
    .C(\four_hz/counter_22_BUFG_14 ),
    .CE(_n0410_inv),
    .CLR(init_glue_set),
    .D(\buf_len[4]_ascii_buf[2][7]_select_121_OUT<0> ),
    .Q(digit2[0])
  );
  FDCE   digit2_1 (
    .C(\four_hz/counter_22_BUFG_14 ),
    .CE(_n0410_inv),
    .CLR(init_glue_set),
    .D(\buf_len[4]_ascii_buf[2][7]_select_121_OUT<1> ),
    .Q(digit2[1])
  );
  FDCE   digit2_2 (
    .C(\four_hz/counter_22_BUFG_14 ),
    .CE(_n0410_inv),
    .CLR(init_glue_set),
    .D(\buf_len[4]_ascii_buf[2][7]_select_121_OUT<2> ),
    .Q(digit2[2])
  );
  FDCE   digit2_3 (
    .C(\four_hz/counter_22_BUFG_14 ),
    .CE(_n0410_inv),
    .CLR(init_glue_set),
    .D(\buf_len[4]_ascii_buf[2][7]_select_121_OUT<3> ),
    .Q(digit2[3])
  );
  FDCE   digit2_4 (
    .C(\four_hz/counter_22_BUFG_14 ),
    .CE(_n0410_inv),
    .CLR(init_glue_set),
    .D(\buf_len[4]_ascii_buf[2][7]_select_121_OUT<4> ),
    .Q(digit2[4])
  );
  FDPE   digit2_5 (
    .C(\four_hz/counter_22_BUFG_14 ),
    .CE(_n0410_inv),
    .D(\buf_len[4]_ascii_buf[2][7]_select_121_OUT<5> ),
    .PRE(init_glue_set),
    .Q(digit2[5])
  );
  FDCE   digit2_6 (
    .C(\four_hz/counter_22_BUFG_14 ),
    .CE(_n0410_inv),
    .CLR(init_glue_set),
    .D(\buf_len[4]_ascii_buf[2][7]_select_121_OUT<6> ),
    .Q(digit2[6])
  );
  FDCE   digit2_7 (
    .C(\four_hz/counter_22_BUFG_14 ),
    .CE(_n0410_inv),
    .CLR(init_glue_set),
    .D(\buf_len[4]_ascii_buf[2][7]_select_121_OUT<7> ),
    .Q(digit2[7])
  );
  FDCE   digit3_0 (
    .C(\four_hz/counter_22_BUFG_14 ),
    .CE(_n0410_inv),
    .CLR(init_glue_set),
    .D(\buf_len[4]_ascii_buf[3][7]_select_120_OUT<0> ),
    .Q(digit3[0])
  );
  FDCE   digit3_1 (
    .C(\four_hz/counter_22_BUFG_14 ),
    .CE(_n0410_inv),
    .CLR(init_glue_set),
    .D(\buf_len[4]_ascii_buf[3][7]_select_120_OUT<1> ),
    .Q(digit3[1])
  );
  FDCE   digit3_2 (
    .C(\four_hz/counter_22_BUFG_14 ),
    .CE(_n0410_inv),
    .CLR(init_glue_set),
    .D(\buf_len[4]_ascii_buf[3][7]_select_120_OUT<2> ),
    .Q(digit3[2])
  );
  FDCE   digit3_3 (
    .C(\four_hz/counter_22_BUFG_14 ),
    .CE(_n0410_inv),
    .CLR(init_glue_set),
    .D(\buf_len[4]_ascii_buf[3][7]_select_120_OUT<3> ),
    .Q(digit3[3])
  );
  FDCE   digit3_4 (
    .C(\four_hz/counter_22_BUFG_14 ),
    .CE(_n0410_inv),
    .CLR(init_glue_set),
    .D(\buf_len[4]_ascii_buf[3][7]_select_120_OUT<4> ),
    .Q(digit3[4])
  );
  FDPE   digit3_5 (
    .C(\four_hz/counter_22_BUFG_14 ),
    .CE(_n0410_inv),
    .D(\buf_len[4]_ascii_buf[3][7]_select_120_OUT<5> ),
    .PRE(init_glue_set),
    .Q(digit3[5])
  );
  FDCE   digit3_6 (
    .C(\four_hz/counter_22_BUFG_14 ),
    .CE(_n0410_inv),
    .CLR(init_glue_set),
    .D(\buf_len[4]_ascii_buf[3][7]_select_120_OUT<6> ),
    .Q(digit3[6])
  );
  FDCE   digit3_7 (
    .C(\four_hz/counter_22_BUFG_14 ),
    .CE(_n0410_inv),
    .CLR(init_glue_set),
    .D(\buf_len[4]_ascii_buf[3][7]_select_120_OUT<7> ),
    .Q(digit3[7])
  );
  FDCE   digit1_0 (
    .C(\four_hz/counter_22_BUFG_14 ),
    .CE(_n0410_inv),
    .CLR(init_glue_set),
    .D(\buf_len[4]_ascii_buf[1][7]_select_122_OUT<0> ),
    .Q(digit1[0])
  );
  FDCE   digit1_1 (
    .C(\four_hz/counter_22_BUFG_14 ),
    .CE(_n0410_inv),
    .CLR(init_glue_set),
    .D(\buf_len[4]_ascii_buf[1][7]_select_122_OUT<1> ),
    .Q(digit1[1])
  );
  FDCE   digit1_2 (
    .C(\four_hz/counter_22_BUFG_14 ),
    .CE(_n0410_inv),
    .CLR(init_glue_set),
    .D(\buf_len[4]_ascii_buf[1][7]_select_122_OUT<2> ),
    .Q(digit1[2])
  );
  FDCE   digit1_3 (
    .C(\four_hz/counter_22_BUFG_14 ),
    .CE(_n0410_inv),
    .CLR(init_glue_set),
    .D(\buf_len[4]_ascii_buf[1][7]_select_122_OUT<3> ),
    .Q(digit1[3])
  );
  FDCE   digit1_4 (
    .C(\four_hz/counter_22_BUFG_14 ),
    .CE(_n0410_inv),
    .CLR(init_glue_set),
    .D(\buf_len[4]_ascii_buf[1][7]_select_122_OUT<4> ),
    .Q(digit1[4])
  );
  FDPE   digit1_5 (
    .C(\four_hz/counter_22_BUFG_14 ),
    .CE(_n0410_inv),
    .D(\buf_len[4]_ascii_buf[1][7]_select_122_OUT<5> ),
    .PRE(init_glue_set),
    .Q(digit1[5])
  );
  FDCE   digit1_6 (
    .C(\four_hz/counter_22_BUFG_14 ),
    .CE(_n0410_inv),
    .CLR(init_glue_set),
    .D(\buf_len[4]_ascii_buf[1][7]_select_122_OUT<6> ),
    .Q(digit1[6])
  );
  FDCE   digit1_7 (
    .C(\four_hz/counter_22_BUFG_14 ),
    .CE(_n0410_inv),
    .CLR(init_glue_set),
    .D(\buf_len[4]_ascii_buf[1][7]_select_122_OUT<7> ),
    .Q(digit1[7])
  );
  FDCE   digit0_0 (
    .C(\four_hz/counter_22_BUFG_14 ),
    .CE(_n0410_inv),
    .CLR(init_glue_set),
    .D(\buf_len[4]_ascii_buf[0][7]_select_123_OUT<0> ),
    .Q(digit0[0])
  );
  FDCE   digit0_1 (
    .C(\four_hz/counter_22_BUFG_14 ),
    .CE(_n0410_inv),
    .CLR(init_glue_set),
    .D(\buf_len[4]_ascii_buf[0][7]_select_123_OUT<1> ),
    .Q(digit0[1])
  );
  FDCE   digit0_2 (
    .C(\four_hz/counter_22_BUFG_14 ),
    .CE(_n0410_inv),
    .CLR(init_glue_set),
    .D(\buf_len[4]_ascii_buf[0][7]_select_123_OUT<2> ),
    .Q(digit0[2])
  );
  FDCE   digit0_3 (
    .C(\four_hz/counter_22_BUFG_14 ),
    .CE(_n0410_inv),
    .CLR(init_glue_set),
    .D(\buf_len[4]_ascii_buf[0][7]_select_123_OUT<3> ),
    .Q(digit0[3])
  );
  FDCE   digit0_4 (
    .C(\four_hz/counter_22_BUFG_14 ),
    .CE(_n0410_inv),
    .CLR(init_glue_set),
    .D(\buf_len[4]_ascii_buf[0][7]_select_123_OUT<4> ),
    .Q(digit0[4])
  );
  FDPE   digit0_5 (
    .C(\four_hz/counter_22_BUFG_14 ),
    .CE(_n0410_inv),
    .D(\buf_len[4]_ascii_buf[0][7]_select_123_OUT<5> ),
    .PRE(init_glue_set),
    .Q(digit0[5])
  );
  FDCE   digit0_6 (
    .C(\four_hz/counter_22_BUFG_14 ),
    .CE(_n0410_inv),
    .CLR(init_glue_set),
    .D(\buf_len[4]_ascii_buf[0][7]_select_123_OUT<6> ),
    .Q(digit0[6])
  );
  FDCE   digit0_7 (
    .C(\four_hz/counter_22_BUFG_14 ),
    .CE(_n0410_inv),
    .CLR(init_glue_set),
    .D(\buf_len[4]_ascii_buf[0][7]_select_123_OUT<7> ),
    .Q(digit0[7])
  );
  FDC   \four_hz/counter_0  (
    .C(clk_BUFGP_10),
    .CLR(init_glue_set),
    .D(Result[0]),
    .Q(\four_hz/counter [0])
  );
  FDC   \four_hz/counter_1  (
    .C(clk_BUFGP_10),
    .CLR(init_glue_set),
    .D(Result[1]),
    .Q(\four_hz/counter [1])
  );
  FDC   \four_hz/counter_2  (
    .C(clk_BUFGP_10),
    .CLR(init_glue_set),
    .D(Result[2]),
    .Q(\four_hz/counter [2])
  );
  FDC   \four_hz/counter_3  (
    .C(clk_BUFGP_10),
    .CLR(init_glue_set),
    .D(Result[3]),
    .Q(\four_hz/counter [3])
  );
  FDC   \four_hz/counter_4  (
    .C(clk_BUFGP_10),
    .CLR(init_glue_set),
    .D(Result[4]),
    .Q(\four_hz/counter [4])
  );
  FDC   \four_hz/counter_5  (
    .C(clk_BUFGP_10),
    .CLR(init_glue_set),
    .D(Result[5]),
    .Q(\four_hz/counter [5])
  );
  FDC   \four_hz/counter_6  (
    .C(clk_BUFGP_10),
    .CLR(init_glue_set),
    .D(Result[6]),
    .Q(\four_hz/counter [6])
  );
  FDC   \four_hz/counter_7  (
    .C(clk_BUFGP_10),
    .CLR(init_glue_set),
    .D(Result[7]),
    .Q(\four_hz/counter [7])
  );
  FDC   \four_hz/counter_8  (
    .C(clk_BUFGP_10),
    .CLR(init_glue_set),
    .D(Result[8]),
    .Q(\four_hz/counter [8])
  );
  FDC   \four_hz/counter_9  (
    .C(clk_BUFGP_10),
    .CLR(init_glue_set),
    .D(Result[9]),
    .Q(\four_hz/counter [9])
  );
  FDC   \four_hz/counter_10  (
    .C(clk_BUFGP_10),
    .CLR(init_glue_set),
    .D(Result[10]),
    .Q(\four_hz/counter [10])
  );
  FDC   \four_hz/counter_11  (
    .C(clk_BUFGP_10),
    .CLR(init_glue_set),
    .D(Result[11]),
    .Q(\four_hz/counter [11])
  );
  FDC   \four_hz/counter_12  (
    .C(clk_BUFGP_10),
    .CLR(init_glue_set),
    .D(Result[12]),
    .Q(\four_hz/counter [12])
  );
  FDC   \four_hz/counter_13  (
    .C(clk_BUFGP_10),
    .CLR(init_glue_set),
    .D(Result[13]),
    .Q(\four_hz/counter [13])
  );
  FDC   \four_hz/counter_14  (
    .C(clk_BUFGP_10),
    .CLR(init_glue_set),
    .D(Result[14]),
    .Q(\four_hz/counter [14])
  );
  FDC   \four_hz/counter_15  (
    .C(clk_BUFGP_10),
    .CLR(init_glue_set),
    .D(Result[15]),
    .Q(\four_hz/counter [15])
  );
  FDC   \four_hz/counter_16  (
    .C(clk_BUFGP_10),
    .CLR(init_glue_set),
    .D(Result[16]),
    .Q(\four_hz/counter [16])
  );
  FDC   \four_hz/counter_17  (
    .C(clk_BUFGP_10),
    .CLR(init_glue_set),
    .D(Result[17]),
    .Q(\four_hz/counter [17])
  );
  FDC   \four_hz/counter_18  (
    .C(clk_BUFGP_10),
    .CLR(init_glue_set),
    .D(Result[18]),
    .Q(\four_hz/counter [18])
  );
  FDC   \four_hz/counter_19  (
    .C(clk_BUFGP_10),
    .CLR(init_glue_set),
    .D(Result[19]),
    .Q(\four_hz/counter [19])
  );
  FDC   \four_hz/counter_20  (
    .C(clk_BUFGP_10),
    .CLR(init_glue_set),
    .D(Result[20]),
    .Q(\four_hz/counter [20])
  );
  FDC   \four_hz/counter_21  (
    .C(clk_BUFGP_10),
    .CLR(init_glue_set),
    .D(Result[21]),
    .Q(\four_hz/counter [21])
  );
  FDC   \four_hz/counter_22  (
    .C(clk_BUFGP_10),
    .CLR(init_glue_set),
    .D(Result[22]),
    .Q(\four_hz/counter [22])
  );
  MUXF7   \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_2_f7_6  (
    .I0(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_47_748 ),
    .I1(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_37_753 ),
    .S(buf_ptr[4]),
    .O(\buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT<7> )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_47  (
    .I0(buf_ptr[3]),
    .I1(buf_ptr[2]),
    .I2(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_923_750 ),
    .I3(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_107_749 ),
    .I4(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_922_751 ),
    .I5(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_823_752 ),
    .O(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_47_748 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_107  (
    .I0(ascii_buf_31[159]),
    .I1(ascii_buf_31[151]),
    .I2(ascii_buf_31[135]),
    .I3(ascii_buf_31[143]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_107_749 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_923  (
    .I0(ascii_buf_31[191]),
    .I1(ascii_buf_31[183]),
    .I2(ascii_buf_31[167]),
    .I3(ascii_buf_31[175]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_923_750 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_922  (
    .I0(ascii_buf_31[223]),
    .I1(ascii_buf_31[215]),
    .I2(ascii_buf_31[199]),
    .I3(ascii_buf_31[207]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_922_751 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_823  (
    .I0(ascii_buf_31[255]),
    .I1(ascii_buf_31[247]),
    .I2(ascii_buf_31[231]),
    .I3(ascii_buf_31[239]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_823_752 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_37  (
    .I0(buf_ptr[3]),
    .I1(buf_ptr[2]),
    .I2(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_822_755 ),
    .I3(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_921_754 ),
    .I4(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_821_756 ),
    .I5(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_77_757 ),
    .O(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_37_753 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_921  (
    .I0(ascii_buf_31[31]),
    .I1(ascii_buf_31[23]),
    .I2(ascii_buf_31[7]),
    .I3(ascii_buf_31[15]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_921_754 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_822  (
    .I0(ascii_buf_31[63]),
    .I1(ascii_buf_31[55]),
    .I2(ascii_buf_31[39]),
    .I3(ascii_buf_31[47]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_822_755 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_821  (
    .I0(ascii_buf_31[95]),
    .I1(ascii_buf_31[87]),
    .I2(ascii_buf_31[71]),
    .I3(ascii_buf_31[79]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_821_756 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_77  (
    .I0(ascii_buf_31[127]),
    .I1(ascii_buf_31[119]),
    .I2(ascii_buf_31[103]),
    .I3(ascii_buf_31[111]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_77_757 )
  );
  MUXF7   \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_2_f7_5  (
    .I0(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_46_758 ),
    .I1(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_36_763 ),
    .S(buf_ptr[4]),
    .O(\buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT<6> )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_46  (
    .I0(buf_ptr[3]),
    .I1(buf_ptr[2]),
    .I2(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_920_760 ),
    .I3(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_106_759 ),
    .I4(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_919_761 ),
    .I5(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_820_762 ),
    .O(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_46_758 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_106  (
    .I0(ascii_buf_31[158]),
    .I1(ascii_buf_31[150]),
    .I2(ascii_buf_31[134]),
    .I3(ascii_buf_31[142]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_106_759 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_920  (
    .I0(ascii_buf_31[190]),
    .I1(ascii_buf_31[182]),
    .I2(ascii_buf_31[166]),
    .I3(ascii_buf_31[174]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_920_760 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_919  (
    .I0(ascii_buf_31[222]),
    .I1(ascii_buf_31[214]),
    .I2(ascii_buf_31[198]),
    .I3(ascii_buf_31[206]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_919_761 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_820  (
    .I0(ascii_buf_31[254]),
    .I1(ascii_buf_31[246]),
    .I2(ascii_buf_31[230]),
    .I3(ascii_buf_31[238]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_820_762 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_36  (
    .I0(buf_ptr[3]),
    .I1(buf_ptr[2]),
    .I2(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_819_765 ),
    .I3(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_918_764 ),
    .I4(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_818_766 ),
    .I5(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_76_767 ),
    .O(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_36_763 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_918  (
    .I0(ascii_buf_31[30]),
    .I1(ascii_buf_31[22]),
    .I2(ascii_buf_31[6]),
    .I3(ascii_buf_31[14]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_918_764 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_819  (
    .I0(ascii_buf_31[62]),
    .I1(ascii_buf_31[54]),
    .I2(ascii_buf_31[38]),
    .I3(ascii_buf_31[46]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_819_765 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_818  (
    .I0(ascii_buf_31[94]),
    .I1(ascii_buf_31[86]),
    .I2(ascii_buf_31[70]),
    .I3(ascii_buf_31[78]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_818_766 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_76  (
    .I0(ascii_buf_31[126]),
    .I1(ascii_buf_31[118]),
    .I2(ascii_buf_31[102]),
    .I3(ascii_buf_31[110]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_76_767 )
  );
  MUXF7   \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_2_f7_4  (
    .I0(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_45_768 ),
    .I1(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_35_773 ),
    .S(buf_ptr[4]),
    .O(\buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT<5> )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_45  (
    .I0(buf_ptr[3]),
    .I1(buf_ptr[2]),
    .I2(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_917_770 ),
    .I3(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_105_769 ),
    .I4(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_916_771 ),
    .I5(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_817_772 ),
    .O(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_45_768 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_105  (
    .I0(ascii_buf_31[157]),
    .I1(ascii_buf_31[149]),
    .I2(ascii_buf_31[133]),
    .I3(ascii_buf_31[141]),
    .I4(buf_ptr_1_3_1410),
    .I5(buf_ptr[0]),
    .O(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_105_769 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_917  (
    .I0(ascii_buf_31[189]),
    .I1(ascii_buf_31[181]),
    .I2(ascii_buf_31[165]),
    .I3(ascii_buf_31[173]),
    .I4(buf_ptr_1_3_1410),
    .I5(buf_ptr[0]),
    .O(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_917_770 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_916  (
    .I0(ascii_buf_31[221]),
    .I1(ascii_buf_31[213]),
    .I2(ascii_buf_31[197]),
    .I3(ascii_buf_31[205]),
    .I4(buf_ptr_1_3_1410),
    .I5(buf_ptr[0]),
    .O(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_916_771 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_817  (
    .I0(ascii_buf_31[253]),
    .I1(ascii_buf_31[245]),
    .I2(ascii_buf_31[229]),
    .I3(ascii_buf_31[237]),
    .I4(buf_ptr_1_3_1410),
    .I5(buf_ptr[0]),
    .O(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_817_772 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_35  (
    .I0(buf_ptr[3]),
    .I1(buf_ptr[2]),
    .I2(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_816_775 ),
    .I3(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_915_774 ),
    .I4(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_815_776 ),
    .I5(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_75_777 ),
    .O(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_35_773 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_915  (
    .I0(ascii_buf_31[29]),
    .I1(ascii_buf_31[21]),
    .I2(ascii_buf_31[5]),
    .I3(ascii_buf_31[13]),
    .I4(buf_ptr_1_3_1410),
    .I5(buf_ptr[0]),
    .O(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_915_774 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_816  (
    .I0(ascii_buf_31[61]),
    .I1(ascii_buf_31[53]),
    .I2(ascii_buf_31[37]),
    .I3(ascii_buf_31[45]),
    .I4(buf_ptr_1_3_1410),
    .I5(buf_ptr[0]),
    .O(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_816_775 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_815  (
    .I0(ascii_buf_31[93]),
    .I1(ascii_buf_31[85]),
    .I2(ascii_buf_31[69]),
    .I3(ascii_buf_31[77]),
    .I4(buf_ptr_1_3_1410),
    .I5(buf_ptr[0]),
    .O(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_815_776 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_75  (
    .I0(ascii_buf_31[125]),
    .I1(ascii_buf_31[117]),
    .I2(ascii_buf_31[101]),
    .I3(ascii_buf_31[109]),
    .I4(buf_ptr_1_3_1410),
    .I5(buf_ptr[0]),
    .O(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_75_777 )
  );
  MUXF7   \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_2_f7_3  (
    .I0(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_44_778 ),
    .I1(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_34_783 ),
    .S(buf_ptr[4]),
    .O(\buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT<4> )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_44  (
    .I0(buf_ptr[3]),
    .I1(buf_ptr[2]),
    .I2(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_914_780 ),
    .I3(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_104_779 ),
    .I4(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_913_781 ),
    .I5(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_814_782 ),
    .O(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_44_778 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_104  (
    .I0(ascii_buf_31[156]),
    .I1(ascii_buf_31[148]),
    .I2(ascii_buf_31[132]),
    .I3(ascii_buf_31[140]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_104_779 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_914  (
    .I0(ascii_buf_31[188]),
    .I1(ascii_buf_31[180]),
    .I2(ascii_buf_31[164]),
    .I3(ascii_buf_31[172]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_914_780 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_913  (
    .I0(ascii_buf_31[220]),
    .I1(ascii_buf_31[212]),
    .I2(ascii_buf_31[196]),
    .I3(ascii_buf_31[204]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_913_781 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_814  (
    .I0(ascii_buf_31[252]),
    .I1(ascii_buf_31[244]),
    .I2(ascii_buf_31[228]),
    .I3(ascii_buf_31[236]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_814_782 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_34  (
    .I0(buf_ptr[3]),
    .I1(buf_ptr[2]),
    .I2(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_813_785 ),
    .I3(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_912_784 ),
    .I4(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_812_786 ),
    .I5(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_74_787 ),
    .O(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_34_783 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_912  (
    .I0(ascii_buf_31[28]),
    .I1(ascii_buf_31[20]),
    .I2(ascii_buf_31[4]),
    .I3(ascii_buf_31[12]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_912_784 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_813  (
    .I0(ascii_buf_31[60]),
    .I1(ascii_buf_31[52]),
    .I2(ascii_buf_31[36]),
    .I3(ascii_buf_31[44]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_813_785 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_812  (
    .I0(ascii_buf_31[92]),
    .I1(ascii_buf_31[84]),
    .I2(ascii_buf_31[68]),
    .I3(ascii_buf_31[76]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_812_786 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_74  (
    .I0(ascii_buf_31[124]),
    .I1(ascii_buf_31[116]),
    .I2(ascii_buf_31[100]),
    .I3(ascii_buf_31[108]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_74_787 )
  );
  MUXF7   \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_2_f7_2  (
    .I0(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_43_788 ),
    .I1(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_33_793 ),
    .S(buf_ptr[4]),
    .O(\buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT<3> )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_43  (
    .I0(buf_ptr[3]),
    .I1(buf_ptr[2]),
    .I2(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_911_790 ),
    .I3(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_103_789 ),
    .I4(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_910_791 ),
    .I5(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_811_792 ),
    .O(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_43_788 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_103  (
    .I0(ascii_buf_31[155]),
    .I1(ascii_buf_31[147]),
    .I2(ascii_buf_31[131]),
    .I3(ascii_buf_31[139]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_103_789 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_911  (
    .I0(ascii_buf_31[187]),
    .I1(ascii_buf_31[179]),
    .I2(ascii_buf_31[163]),
    .I3(ascii_buf_31[171]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_911_790 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_910  (
    .I0(ascii_buf_31[219]),
    .I1(ascii_buf_31[211]),
    .I2(ascii_buf_31[195]),
    .I3(ascii_buf_31[203]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_910_791 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_811  (
    .I0(ascii_buf_31[251]),
    .I1(ascii_buf_31[243]),
    .I2(ascii_buf_31[227]),
    .I3(ascii_buf_31[235]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_811_792 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_33  (
    .I0(buf_ptr[3]),
    .I1(buf_ptr[2]),
    .I2(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_810_795 ),
    .I3(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_99_794 ),
    .I4(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_89_796 ),
    .I5(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_73_797 ),
    .O(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_33_793 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_99  (
    .I0(ascii_buf_31[27]),
    .I1(ascii_buf_31[19]),
    .I2(ascii_buf_31[3]),
    .I3(ascii_buf_31[11]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_99_794 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_810  (
    .I0(ascii_buf_31[59]),
    .I1(ascii_buf_31[51]),
    .I2(ascii_buf_31[35]),
    .I3(ascii_buf_31[43]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_810_795 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_89  (
    .I0(ascii_buf_31[91]),
    .I1(ascii_buf_31[83]),
    .I2(ascii_buf_31[67]),
    .I3(ascii_buf_31[75]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_89_796 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_73  (
    .I0(ascii_buf_31[123]),
    .I1(ascii_buf_31[115]),
    .I2(ascii_buf_31[99]),
    .I3(ascii_buf_31[107]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_73_797 )
  );
  MUXF7   \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_2_f7_1  (
    .I0(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_42_798 ),
    .I1(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_32_803 ),
    .S(buf_ptr[4]),
    .O(\buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT<2> )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_42  (
    .I0(buf_ptr[3]),
    .I1(buf_ptr[2]),
    .I2(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_98_800 ),
    .I3(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_102_799 ),
    .I4(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_97_801 ),
    .I5(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_88_802 ),
    .O(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_42_798 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_102  (
    .I0(ascii_buf_31[154]),
    .I1(ascii_buf_31[146]),
    .I2(ascii_buf_31[130]),
    .I3(ascii_buf_31[138]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_102_799 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_98  (
    .I0(ascii_buf_31[186]),
    .I1(ascii_buf_31[178]),
    .I2(ascii_buf_31[162]),
    .I3(ascii_buf_31[170]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_98_800 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_97  (
    .I0(ascii_buf_31[218]),
    .I1(ascii_buf_31[210]),
    .I2(ascii_buf_31[194]),
    .I3(ascii_buf_31[202]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_97_801 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_88  (
    .I0(ascii_buf_31[250]),
    .I1(ascii_buf_31[242]),
    .I2(ascii_buf_31[226]),
    .I3(ascii_buf_31[234]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_88_802 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_32  (
    .I0(buf_ptr[3]),
    .I1(buf_ptr[2]),
    .I2(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_87_805 ),
    .I3(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_96_804 ),
    .I4(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_86_806 ),
    .I5(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_72_807 ),
    .O(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_32_803 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_96  (
    .I0(ascii_buf_31[26]),
    .I1(ascii_buf_31[18]),
    .I2(ascii_buf_31[2]),
    .I3(ascii_buf_31[10]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_96_804 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_87  (
    .I0(ascii_buf_31[58]),
    .I1(ascii_buf_31[50]),
    .I2(ascii_buf_31[34]),
    .I3(ascii_buf_31[42]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_87_805 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_86  (
    .I0(ascii_buf_31[90]),
    .I1(ascii_buf_31[82]),
    .I2(ascii_buf_31[66]),
    .I3(ascii_buf_31[74]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_86_806 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_72  (
    .I0(ascii_buf_31[122]),
    .I1(ascii_buf_31[114]),
    .I2(ascii_buf_31[98]),
    .I3(ascii_buf_31[106]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_72_807 )
  );
  MUXF7   \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_2_f7_0  (
    .I0(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_41_808 ),
    .I1(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_31_813 ),
    .S(buf_ptr[4]),
    .O(\buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT<1> )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_41  (
    .I0(buf_ptr[3]),
    .I1(buf_ptr[2]),
    .I2(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_95_810 ),
    .I3(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_101_809 ),
    .I4(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_94_811 ),
    .I5(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_85_812 ),
    .O(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_41_808 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_101  (
    .I0(ascii_buf_31[153]),
    .I1(ascii_buf_31[145]),
    .I2(ascii_buf_31[129]),
    .I3(ascii_buf_31[137]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_101_809 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_95  (
    .I0(ascii_buf_31[185]),
    .I1(ascii_buf_31[177]),
    .I2(ascii_buf_31[161]),
    .I3(ascii_buf_31[169]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_95_810 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_94  (
    .I0(ascii_buf_31[217]),
    .I1(ascii_buf_31[209]),
    .I2(ascii_buf_31[193]),
    .I3(ascii_buf_31[201]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_94_811 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_85  (
    .I0(ascii_buf_31[249]),
    .I1(ascii_buf_31[241]),
    .I2(ascii_buf_31[225]),
    .I3(ascii_buf_31[233]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_85_812 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_31  (
    .I0(buf_ptr[3]),
    .I1(buf_ptr[2]),
    .I2(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_84_815 ),
    .I3(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_93_814 ),
    .I4(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_83_816 ),
    .I5(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_71_817 ),
    .O(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_31_813 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_93  (
    .I0(ascii_buf_31[25]),
    .I1(ascii_buf_31[17]),
    .I2(ascii_buf_31[1]),
    .I3(ascii_buf_31[9]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_93_814 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_84  (
    .I0(ascii_buf_31[57]),
    .I1(ascii_buf_31[49]),
    .I2(ascii_buf_31[33]),
    .I3(ascii_buf_31[41]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_84_815 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_83  (
    .I0(ascii_buf_31[89]),
    .I1(ascii_buf_31[81]),
    .I2(ascii_buf_31[65]),
    .I3(ascii_buf_31[73]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_83_816 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_71  (
    .I0(ascii_buf_31[121]),
    .I1(ascii_buf_31[113]),
    .I2(ascii_buf_31[97]),
    .I3(ascii_buf_31[105]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_71_817 )
  );
  MUXF7   \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_2_f7  (
    .I0(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_4_818 ),
    .I1(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_3_823 ),
    .S(buf_ptr[4]),
    .O(\buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT<0> )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_4  (
    .I0(buf_ptr[3]),
    .I1(buf_ptr[2]),
    .I2(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_92_820 ),
    .I3(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_10_819 ),
    .I4(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_91_821 ),
    .I5(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_82_822 ),
    .O(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_4_818 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_10  (
    .I0(ascii_buf_31[152]),
    .I1(ascii_buf_31[144]),
    .I2(ascii_buf_31[128]),
    .I3(ascii_buf_31[136]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_10_819 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_92  (
    .I0(ascii_buf_31[184]),
    .I1(ascii_buf_31[176]),
    .I2(ascii_buf_31[160]),
    .I3(ascii_buf_31[168]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_92_820 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_91  (
    .I0(ascii_buf_31[216]),
    .I1(ascii_buf_31[208]),
    .I2(ascii_buf_31[192]),
    .I3(ascii_buf_31[200]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_91_821 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_82  (
    .I0(ascii_buf_31[248]),
    .I1(ascii_buf_31[240]),
    .I2(ascii_buf_31[224]),
    .I3(ascii_buf_31[232]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_82_822 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_3  (
    .I0(buf_ptr[3]),
    .I1(buf_ptr[2]),
    .I2(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_81_825 ),
    .I3(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_9_824 ),
    .I4(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_8_826 ),
    .I5(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_7_827 ),
    .O(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_3_823 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_9  (
    .I0(ascii_buf_31[24]),
    .I1(ascii_buf_31[16]),
    .I2(ascii_buf_31[0]),
    .I3(ascii_buf_31[8]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_9_824 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_81  (
    .I0(ascii_buf_31[56]),
    .I1(ascii_buf_31[48]),
    .I2(ascii_buf_31[32]),
    .I3(ascii_buf_31[40]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_81_825 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_8  (
    .I0(ascii_buf_31[88]),
    .I1(ascii_buf_31[80]),
    .I2(ascii_buf_31[64]),
    .I3(ascii_buf_31[72]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_8_826 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_7  (
    .I0(ascii_buf_31[120]),
    .I1(ascii_buf_31[112]),
    .I2(ascii_buf_31[96]),
    .I3(ascii_buf_31[104]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_7_827 )
  );
  MUXCY   \four_hz/Mcount_counter_cy<0>  (
    .CI(N1),
    .DI(N0),
    .S(\four_hz/Mcount_counter_lut [0]),
    .O(\four_hz/Mcount_counter_cy [0])
  );
  XORCY   \four_hz/Mcount_counter_xor<0>  (
    .CI(N1),
    .LI(\four_hz/Mcount_counter_lut [0]),
    .O(Result[0])
  );
  MUXCY   \four_hz/Mcount_counter_cy<1>  (
    .CI(\four_hz/Mcount_counter_cy [0]),
    .DI(N1),
    .S(\four_hz/Mcount_counter_cy<1>_rt_1358 ),
    .O(\four_hz/Mcount_counter_cy [1])
  );
  XORCY   \four_hz/Mcount_counter_xor<1>  (
    .CI(\four_hz/Mcount_counter_cy [0]),
    .LI(\four_hz/Mcount_counter_cy<1>_rt_1358 ),
    .O(Result[1])
  );
  MUXCY   \four_hz/Mcount_counter_cy<2>  (
    .CI(\four_hz/Mcount_counter_cy [1]),
    .DI(N1),
    .S(\four_hz/Mcount_counter_cy<2>_rt_1359 ),
    .O(\four_hz/Mcount_counter_cy [2])
  );
  XORCY   \four_hz/Mcount_counter_xor<2>  (
    .CI(\four_hz/Mcount_counter_cy [1]),
    .LI(\four_hz/Mcount_counter_cy<2>_rt_1359 ),
    .O(Result[2])
  );
  MUXCY   \four_hz/Mcount_counter_cy<3>  (
    .CI(\four_hz/Mcount_counter_cy [2]),
    .DI(N1),
    .S(\four_hz/Mcount_counter_cy<3>_rt_1360 ),
    .O(\four_hz/Mcount_counter_cy [3])
  );
  XORCY   \four_hz/Mcount_counter_xor<3>  (
    .CI(\four_hz/Mcount_counter_cy [2]),
    .LI(\four_hz/Mcount_counter_cy<3>_rt_1360 ),
    .O(Result[3])
  );
  MUXCY   \four_hz/Mcount_counter_cy<4>  (
    .CI(\four_hz/Mcount_counter_cy [3]),
    .DI(N1),
    .S(\four_hz/Mcount_counter_cy<4>_rt_1361 ),
    .O(\four_hz/Mcount_counter_cy [4])
  );
  XORCY   \four_hz/Mcount_counter_xor<4>  (
    .CI(\four_hz/Mcount_counter_cy [3]),
    .LI(\four_hz/Mcount_counter_cy<4>_rt_1361 ),
    .O(Result[4])
  );
  MUXCY   \four_hz/Mcount_counter_cy<5>  (
    .CI(\four_hz/Mcount_counter_cy [4]),
    .DI(N1),
    .S(\four_hz/Mcount_counter_cy<5>_rt_1362 ),
    .O(\four_hz/Mcount_counter_cy [5])
  );
  XORCY   \four_hz/Mcount_counter_xor<5>  (
    .CI(\four_hz/Mcount_counter_cy [4]),
    .LI(\four_hz/Mcount_counter_cy<5>_rt_1362 ),
    .O(Result[5])
  );
  MUXCY   \four_hz/Mcount_counter_cy<6>  (
    .CI(\four_hz/Mcount_counter_cy [5]),
    .DI(N1),
    .S(\four_hz/Mcount_counter_cy<6>_rt_1363 ),
    .O(\four_hz/Mcount_counter_cy [6])
  );
  XORCY   \four_hz/Mcount_counter_xor<6>  (
    .CI(\four_hz/Mcount_counter_cy [5]),
    .LI(\four_hz/Mcount_counter_cy<6>_rt_1363 ),
    .O(Result[6])
  );
  MUXCY   \four_hz/Mcount_counter_cy<7>  (
    .CI(\four_hz/Mcount_counter_cy [6]),
    .DI(N1),
    .S(\four_hz/Mcount_counter_cy<7>_rt_1364 ),
    .O(\four_hz/Mcount_counter_cy [7])
  );
  XORCY   \four_hz/Mcount_counter_xor<7>  (
    .CI(\four_hz/Mcount_counter_cy [6]),
    .LI(\four_hz/Mcount_counter_cy<7>_rt_1364 ),
    .O(Result[7])
  );
  MUXCY   \four_hz/Mcount_counter_cy<8>  (
    .CI(\four_hz/Mcount_counter_cy [7]),
    .DI(N1),
    .S(\four_hz/Mcount_counter_cy<8>_rt_1365 ),
    .O(\four_hz/Mcount_counter_cy [8])
  );
  XORCY   \four_hz/Mcount_counter_xor<8>  (
    .CI(\four_hz/Mcount_counter_cy [7]),
    .LI(\four_hz/Mcount_counter_cy<8>_rt_1365 ),
    .O(Result[8])
  );
  MUXCY   \four_hz/Mcount_counter_cy<9>  (
    .CI(\four_hz/Mcount_counter_cy [8]),
    .DI(N1),
    .S(\four_hz/Mcount_counter_cy<9>_rt_1366 ),
    .O(\four_hz/Mcount_counter_cy [9])
  );
  XORCY   \four_hz/Mcount_counter_xor<9>  (
    .CI(\four_hz/Mcount_counter_cy [8]),
    .LI(\four_hz/Mcount_counter_cy<9>_rt_1366 ),
    .O(Result[9])
  );
  MUXCY   \four_hz/Mcount_counter_cy<10>  (
    .CI(\four_hz/Mcount_counter_cy [9]),
    .DI(N1),
    .S(\four_hz/Mcount_counter_cy<10>_rt_1367 ),
    .O(\four_hz/Mcount_counter_cy [10])
  );
  XORCY   \four_hz/Mcount_counter_xor<10>  (
    .CI(\four_hz/Mcount_counter_cy [9]),
    .LI(\four_hz/Mcount_counter_cy<10>_rt_1367 ),
    .O(Result[10])
  );
  MUXCY   \four_hz/Mcount_counter_cy<11>  (
    .CI(\four_hz/Mcount_counter_cy [10]),
    .DI(N1),
    .S(\four_hz/Mcount_counter_cy<11>_rt_1368 ),
    .O(\four_hz/Mcount_counter_cy [11])
  );
  XORCY   \four_hz/Mcount_counter_xor<11>  (
    .CI(\four_hz/Mcount_counter_cy [10]),
    .LI(\four_hz/Mcount_counter_cy<11>_rt_1368 ),
    .O(Result[11])
  );
  MUXCY   \four_hz/Mcount_counter_cy<12>  (
    .CI(\four_hz/Mcount_counter_cy [11]),
    .DI(N1),
    .S(\four_hz/Mcount_counter_cy<12>_rt_1369 ),
    .O(\four_hz/Mcount_counter_cy [12])
  );
  XORCY   \four_hz/Mcount_counter_xor<12>  (
    .CI(\four_hz/Mcount_counter_cy [11]),
    .LI(\four_hz/Mcount_counter_cy<12>_rt_1369 ),
    .O(Result[12])
  );
  MUXCY   \four_hz/Mcount_counter_cy<13>  (
    .CI(\four_hz/Mcount_counter_cy [12]),
    .DI(N1),
    .S(\four_hz/Mcount_counter_cy<13>_rt_1370 ),
    .O(\four_hz/Mcount_counter_cy [13])
  );
  XORCY   \four_hz/Mcount_counter_xor<13>  (
    .CI(\four_hz/Mcount_counter_cy [12]),
    .LI(\four_hz/Mcount_counter_cy<13>_rt_1370 ),
    .O(Result[13])
  );
  MUXCY   \four_hz/Mcount_counter_cy<14>  (
    .CI(\four_hz/Mcount_counter_cy [13]),
    .DI(N1),
    .S(\four_hz/Mcount_counter_cy<14>_rt_1371 ),
    .O(\four_hz/Mcount_counter_cy [14])
  );
  XORCY   \four_hz/Mcount_counter_xor<14>  (
    .CI(\four_hz/Mcount_counter_cy [13]),
    .LI(\four_hz/Mcount_counter_cy<14>_rt_1371 ),
    .O(Result[14])
  );
  MUXCY   \four_hz/Mcount_counter_cy<15>  (
    .CI(\four_hz/Mcount_counter_cy [14]),
    .DI(N1),
    .S(\four_hz/Mcount_counter_cy<15>_rt_1372 ),
    .O(\four_hz/Mcount_counter_cy [15])
  );
  XORCY   \four_hz/Mcount_counter_xor<15>  (
    .CI(\four_hz/Mcount_counter_cy [14]),
    .LI(\four_hz/Mcount_counter_cy<15>_rt_1372 ),
    .O(Result[15])
  );
  MUXCY   \four_hz/Mcount_counter_cy<16>  (
    .CI(\four_hz/Mcount_counter_cy [15]),
    .DI(N1),
    .S(\four_hz/Mcount_counter_cy<16>_rt_1373 ),
    .O(\four_hz/Mcount_counter_cy [16])
  );
  XORCY   \four_hz/Mcount_counter_xor<16>  (
    .CI(\four_hz/Mcount_counter_cy [15]),
    .LI(\four_hz/Mcount_counter_cy<16>_rt_1373 ),
    .O(Result[16])
  );
  MUXCY   \four_hz/Mcount_counter_cy<17>  (
    .CI(\four_hz/Mcount_counter_cy [16]),
    .DI(N1),
    .S(\four_hz/Mcount_counter_cy<17>_rt_1374 ),
    .O(\four_hz/Mcount_counter_cy [17])
  );
  XORCY   \four_hz/Mcount_counter_xor<17>  (
    .CI(\four_hz/Mcount_counter_cy [16]),
    .LI(\four_hz/Mcount_counter_cy<17>_rt_1374 ),
    .O(Result[17])
  );
  MUXCY   \four_hz/Mcount_counter_cy<18>  (
    .CI(\four_hz/Mcount_counter_cy [17]),
    .DI(N1),
    .S(\four_hz/Mcount_counter_cy<18>_rt_1375 ),
    .O(\four_hz/Mcount_counter_cy [18])
  );
  XORCY   \four_hz/Mcount_counter_xor<18>  (
    .CI(\four_hz/Mcount_counter_cy [17]),
    .LI(\four_hz/Mcount_counter_cy<18>_rt_1375 ),
    .O(Result[18])
  );
  MUXCY   \four_hz/Mcount_counter_cy<19>  (
    .CI(\four_hz/Mcount_counter_cy [18]),
    .DI(N1),
    .S(\four_hz/Mcount_counter_cy<19>_rt_1376 ),
    .O(\four_hz/Mcount_counter_cy [19])
  );
  XORCY   \four_hz/Mcount_counter_xor<19>  (
    .CI(\four_hz/Mcount_counter_cy [18]),
    .LI(\four_hz/Mcount_counter_cy<19>_rt_1376 ),
    .O(Result[19])
  );
  MUXCY   \four_hz/Mcount_counter_cy<20>  (
    .CI(\four_hz/Mcount_counter_cy [19]),
    .DI(N1),
    .S(\four_hz/Mcount_counter_cy<20>_rt_1377 ),
    .O(\four_hz/Mcount_counter_cy [20])
  );
  XORCY   \four_hz/Mcount_counter_xor<20>  (
    .CI(\four_hz/Mcount_counter_cy [19]),
    .LI(\four_hz/Mcount_counter_cy<20>_rt_1377 ),
    .O(Result[20])
  );
  MUXCY   \four_hz/Mcount_counter_cy<21>  (
    .CI(\four_hz/Mcount_counter_cy [20]),
    .DI(N1),
    .S(\four_hz/Mcount_counter_cy<21>_rt_1378 ),
    .O(\four_hz/Mcount_counter_cy [21])
  );
  XORCY   \four_hz/Mcount_counter_xor<21>  (
    .CI(\four_hz/Mcount_counter_cy [20]),
    .LI(\four_hz/Mcount_counter_cy<21>_rt_1378 ),
    .O(Result[21])
  );
  XORCY   \four_hz/Mcount_counter_xor<22>  (
    .CI(\four_hz/Mcount_counter_cy [21]),
    .LI(\four_hz/Mcount_counter_xor<22>_rt_1379 ),
    .O(Result[22])
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_47  (
    .I0(GND_1_o_GND_1_o_sub_69_OUT[3]),
    .I1(GND_1_o_GND_1_o_sub_69_OUT[2]),
    .I2(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_923_860 ),
    .I3(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_107_859 ),
    .I4(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_922_861 ),
    .I5(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_823_862 ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_47_858 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_37  (
    .I0(GND_1_o_GND_1_o_sub_69_OUT[3]),
    .I1(GND_1_o_GND_1_o_sub_69_OUT[2]),
    .I2(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_822_865 ),
    .I3(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_921_864 ),
    .I4(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_821_866 ),
    .I5(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_77_867 ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_37_863 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_46  (
    .I0(GND_1_o_GND_1_o_sub_69_OUT[3]),
    .I1(GND_1_o_GND_1_o_sub_69_OUT[2]),
    .I2(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_920_870 ),
    .I3(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_106_869 ),
    .I4(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_919_871 ),
    .I5(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_820_872 ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_46_868 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_36  (
    .I0(GND_1_o_GND_1_o_sub_69_OUT[3]),
    .I1(GND_1_o_GND_1_o_sub_69_OUT[2]),
    .I2(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_819_875 ),
    .I3(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_918_874 ),
    .I4(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_818_876 ),
    .I5(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_76_877 ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_36_873 )
  );
  MUXF7   \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_2_f7_4  (
    .I0(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_45_878 ),
    .I1(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_35_883 ),
    .S(GND_1_o_GND_1_o_sub_69_OUT[4]),
    .O(\GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT<5> )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_45  (
    .I0(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_817_882 ),
    .I1(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_916_881 ),
    .I2(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_105_879 ),
    .I3(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_917_880 ),
    .I4(GND_1_o_GND_1_o_sub_69_OUT[2]),
    .I5(GND_1_o_GND_1_o_sub_69_OUT[3]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_45_878 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_35  (
    .I0(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_75_887 ),
    .I1(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_815_886 ),
    .I2(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_915_884 ),
    .I3(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_816_885 ),
    .I4(GND_1_o_GND_1_o_sub_69_OUT[2]),
    .I5(GND_1_o_GND_1_o_sub_69_OUT[3]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_35_883 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_44  (
    .I0(GND_1_o_GND_1_o_sub_69_OUT[3]),
    .I1(GND_1_o_GND_1_o_sub_69_OUT[2]),
    .I2(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_914_890 ),
    .I3(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_104_889 ),
    .I4(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_913_891 ),
    .I5(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_814_892 ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_44_888 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_34  (
    .I0(GND_1_o_GND_1_o_sub_69_OUT[3]),
    .I1(GND_1_o_GND_1_o_sub_69_OUT[2]),
    .I2(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_813_895 ),
    .I3(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_912_894 ),
    .I4(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_812_896 ),
    .I5(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_74_897 ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_34_893 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_43  (
    .I0(GND_1_o_GND_1_o_sub_69_OUT[3]),
    .I1(GND_1_o_GND_1_o_sub_69_OUT[2]),
    .I2(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_911_900 ),
    .I3(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_103_899 ),
    .I4(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_910_901 ),
    .I5(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_811_902 ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_43_898 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_33  (
    .I0(GND_1_o_GND_1_o_sub_69_OUT[3]),
    .I1(GND_1_o_GND_1_o_sub_69_OUT[2]),
    .I2(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_810_905 ),
    .I3(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_99_904 ),
    .I4(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_89_906 ),
    .I5(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_73_907 ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_33_903 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_42  (
    .I0(GND_1_o_GND_1_o_sub_69_OUT[3]),
    .I1(GND_1_o_GND_1_o_sub_69_OUT[2]),
    .I2(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_98_910 ),
    .I3(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_102_909 ),
    .I4(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_97_911 ),
    .I5(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_88_912 ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_42_908 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_32  (
    .I0(GND_1_o_GND_1_o_sub_69_OUT[3]),
    .I1(GND_1_o_GND_1_o_sub_69_OUT[2]),
    .I2(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_87_915 ),
    .I3(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_96_914 ),
    .I4(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_86_916 ),
    .I5(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_72_917 ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_32_913 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_41  (
    .I0(GND_1_o_GND_1_o_sub_69_OUT[3]),
    .I1(GND_1_o_GND_1_o_sub_69_OUT[2]),
    .I2(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_95_920 ),
    .I3(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_101_919 ),
    .I4(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_94_921 ),
    .I5(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_85_922 ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_41_918 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_31  (
    .I0(GND_1_o_GND_1_o_sub_69_OUT[3]),
    .I1(GND_1_o_GND_1_o_sub_69_OUT[2]),
    .I2(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_84_925 ),
    .I3(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_93_924 ),
    .I4(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_83_926 ),
    .I5(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_71_927 ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_31_923 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_4  (
    .I0(GND_1_o_GND_1_o_sub_69_OUT[3]),
    .I1(GND_1_o_GND_1_o_sub_69_OUT[2]),
    .I2(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_92_930 ),
    .I3(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_10_929 ),
    .I4(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_91_931 ),
    .I5(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_82_932 ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_4_928 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_3  (
    .I0(GND_1_o_GND_1_o_sub_69_OUT[3]),
    .I1(GND_1_o_GND_1_o_sub_69_OUT[2]),
    .I2(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_81_935 ),
    .I3(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_9_934 ),
    .I4(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_8_936 ),
    .I5(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_7_937 ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_3_933 )
  );
  MUXF7   \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_2_f7_6  (
    .I0(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_47_938 ),
    .I1(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_37_943 ),
    .S(GND_1_o_GND_1_o_sub_78_OUT[4]),
    .O(\GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT<7> )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_47  (
    .I0(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_823_942 ),
    .I1(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_922_941 ),
    .I2(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_107_939 ),
    .I3(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_923_940 ),
    .I4(GND_1_o_GND_1_o_sub_78_OUT[2]),
    .I5(GND_1_o_GND_1_o_sub_78_OUT[3]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_47_938 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_37  (
    .I0(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_77_947 ),
    .I1(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_821_946 ),
    .I2(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_921_944 ),
    .I3(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_822_945 ),
    .I4(GND_1_o_GND_1_o_sub_78_OUT[2]),
    .I5(GND_1_o_GND_1_o_sub_78_OUT[3]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_37_943 )
  );
  MUXF7   \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_2_f7_5  (
    .I0(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_46_948 ),
    .I1(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_36_953 ),
    .S(GND_1_o_GND_1_o_sub_78_OUT[4]),
    .O(\GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT<6> )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_46  (
    .I0(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_820_952 ),
    .I1(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_919_951 ),
    .I2(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_106_949 ),
    .I3(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_920_950 ),
    .I4(GND_1_o_GND_1_o_sub_78_OUT[2]),
    .I5(GND_1_o_GND_1_o_sub_78_OUT[3]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_46_948 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_36  (
    .I0(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_76_957 ),
    .I1(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_818_956 ),
    .I2(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_918_954 ),
    .I3(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_819_955 ),
    .I4(GND_1_o_GND_1_o_sub_78_OUT[2]),
    .I5(GND_1_o_GND_1_o_sub_78_OUT[3]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_36_953 )
  );
  MUXF7   \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_2_f7_4  (
    .I0(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_45_958 ),
    .I1(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_35_963 ),
    .S(GND_1_o_GND_1_o_sub_78_OUT[4]),
    .O(\GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT<5> )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_45  (
    .I0(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_817_962 ),
    .I1(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_916_961 ),
    .I2(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_105_959 ),
    .I3(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_917_960 ),
    .I4(GND_1_o_GND_1_o_sub_78_OUT[2]),
    .I5(GND_1_o_GND_1_o_sub_78_OUT[3]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_45_958 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_35  (
    .I0(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_75_967 ),
    .I1(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_815_966 ),
    .I2(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_915_964 ),
    .I3(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_816_965 ),
    .I4(GND_1_o_GND_1_o_sub_78_OUT[2]),
    .I5(GND_1_o_GND_1_o_sub_78_OUT[3]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_35_963 )
  );
  MUXF7   \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_2_f7_3  (
    .I0(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_44_968 ),
    .I1(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_34_973 ),
    .S(GND_1_o_GND_1_o_sub_78_OUT[4]),
    .O(\GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT<4> )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_44  (
    .I0(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_814_972 ),
    .I1(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_913_971 ),
    .I2(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_104_969 ),
    .I3(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_914_970 ),
    .I4(GND_1_o_GND_1_o_sub_78_OUT[2]),
    .I5(GND_1_o_GND_1_o_sub_78_OUT[3]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_44_968 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_34  (
    .I0(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_74_977 ),
    .I1(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_812_976 ),
    .I2(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_912_974 ),
    .I3(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_813_975 ),
    .I4(GND_1_o_GND_1_o_sub_78_OUT[2]),
    .I5(GND_1_o_GND_1_o_sub_78_OUT[3]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_34_973 )
  );
  MUXF7   \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_2_f7_2  (
    .I0(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_43_978 ),
    .I1(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_33_983 ),
    .S(GND_1_o_GND_1_o_sub_78_OUT[4]),
    .O(\GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT<3> )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_43  (
    .I0(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_811_982 ),
    .I1(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_910_981 ),
    .I2(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_103_979 ),
    .I3(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_911_980 ),
    .I4(GND_1_o_GND_1_o_sub_78_OUT[2]),
    .I5(GND_1_o_GND_1_o_sub_78_OUT[3]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_43_978 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_33  (
    .I0(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_73_987 ),
    .I1(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_89_986 ),
    .I2(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_99_984 ),
    .I3(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_810_985 ),
    .I4(GND_1_o_GND_1_o_sub_78_OUT[2]),
    .I5(GND_1_o_GND_1_o_sub_78_OUT[3]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_33_983 )
  );
  MUXF7   \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_2_f7_1  (
    .I0(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_42_988 ),
    .I1(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_32_993 ),
    .S(GND_1_o_GND_1_o_sub_78_OUT[4]),
    .O(\GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT<2> )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_42  (
    .I0(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_88_992 ),
    .I1(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_97_991 ),
    .I2(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_102_989 ),
    .I3(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_98_990 ),
    .I4(GND_1_o_GND_1_o_sub_78_OUT[2]),
    .I5(GND_1_o_GND_1_o_sub_78_OUT[3]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_42_988 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_32  (
    .I0(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_72_997 ),
    .I1(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_86_996 ),
    .I2(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_96_994 ),
    .I3(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_87_995 ),
    .I4(GND_1_o_GND_1_o_sub_78_OUT[2]),
    .I5(GND_1_o_GND_1_o_sub_78_OUT[3]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_32_993 )
  );
  MUXF7   \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_2_f7_0  (
    .I0(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_41_998 ),
    .I1(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_31_1003 ),
    .S(GND_1_o_GND_1_o_sub_78_OUT[4]),
    .O(\GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT<1> )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_41  (
    .I0(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_85_1002 ),
    .I1(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_94_1001 ),
    .I2(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_101_999 ),
    .I3(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_95_1000 ),
    .I4(GND_1_o_GND_1_o_sub_78_OUT[2]),
    .I5(GND_1_o_GND_1_o_sub_78_OUT[3]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_41_998 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_31  (
    .I0(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_71_1007 ),
    .I1(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_83_1006 ),
    .I2(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_93_1004 ),
    .I3(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_84_1005 ),
    .I4(GND_1_o_GND_1_o_sub_78_OUT[2]),
    .I5(GND_1_o_GND_1_o_sub_78_OUT[3]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_31_1003 )
  );
  MUXF7   \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_2_f7  (
    .I0(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_4_1008 ),
    .I1(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_3_1013 ),
    .S(GND_1_o_GND_1_o_sub_78_OUT[4]),
    .O(\GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT<0> )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_4  (
    .I0(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_82_1012 ),
    .I1(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_91_1011 ),
    .I2(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_10_1009 ),
    .I3(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_92_1010 ),
    .I4(GND_1_o_GND_1_o_sub_78_OUT[2]),
    .I5(GND_1_o_GND_1_o_sub_78_OUT[3]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_4_1008 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_3  (
    .I0(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_7_1017 ),
    .I1(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_8_1016 ),
    .I2(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_9_1014 ),
    .I3(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_81_1015 ),
    .I4(GND_1_o_GND_1_o_sub_78_OUT[2]),
    .I5(GND_1_o_GND_1_o_sub_78_OUT[3]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_3_1013 )
  );
  MUXF7   \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_2_f7_6  (
    .I0(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_47_1018 ),
    .I1(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_37_1023 ),
    .S(GND_1_o_GND_1_o_sub_85_OUT[4]),
    .O(\GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT<7> )
  );
  LUT6 #(
    .INIT ( 64'hFEDC7654BA983210 ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_47  (
    .I0(GND_1_o_GND_1_o_sub_85_OUT[2]),
    .I1(GND_1_o_GND_1_o_sub_85_OUT[3]),
    .I2(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_823_1022 ),
    .I3(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_922_1021 ),
    .I4(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_107_1019 ),
    .I5(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_923_1020 ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_47_1018 )
  );
  LUT6 #(
    .INIT ( 64'hFEDC7654BA983210 ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_37  (
    .I0(GND_1_o_GND_1_o_sub_85_OUT[2]),
    .I1(GND_1_o_GND_1_o_sub_85_OUT[3]),
    .I2(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_77_1027 ),
    .I3(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_821_1026 ),
    .I4(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_921_1024 ),
    .I5(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_822_1025 ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_37_1023 )
  );
  MUXF7   \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_2_f7_5  (
    .I0(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_46_1028 ),
    .I1(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_36_1033 ),
    .S(GND_1_o_GND_1_o_sub_85_OUT[4]),
    .O(\GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT<6> )
  );
  LUT6 #(
    .INIT ( 64'hFEDC7654BA983210 ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_46  (
    .I0(GND_1_o_GND_1_o_sub_85_OUT[2]),
    .I1(GND_1_o_GND_1_o_sub_85_OUT[3]),
    .I2(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_820_1032 ),
    .I3(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_919_1031 ),
    .I4(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_106_1029 ),
    .I5(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_920_1030 ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_46_1028 )
  );
  LUT6 #(
    .INIT ( 64'hFEDC7654BA983210 ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_36  (
    .I0(GND_1_o_GND_1_o_sub_85_OUT[2]),
    .I1(GND_1_o_GND_1_o_sub_85_OUT[3]),
    .I2(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_76_1037 ),
    .I3(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_818_1036 ),
    .I4(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_918_1034 ),
    .I5(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_819_1035 ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_36_1033 )
  );
  MUXF7   \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_2_f7_4  (
    .I0(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_45_1038 ),
    .I1(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_35_1043 ),
    .S(GND_1_o_GND_1_o_sub_85_OUT[4]),
    .O(\GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT<5> )
  );
  LUT6 #(
    .INIT ( 64'hFEDC7654BA983210 ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_45  (
    .I0(GND_1_o_GND_1_o_sub_85_OUT[2]),
    .I1(GND_1_o_GND_1_o_sub_85_OUT[3]),
    .I2(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_817_1042 ),
    .I3(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_916_1041 ),
    .I4(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_105_1039 ),
    .I5(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_917_1040 ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_45_1038 )
  );
  LUT6 #(
    .INIT ( 64'hFEDC7654BA983210 ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_35  (
    .I0(GND_1_o_GND_1_o_sub_85_OUT[2]),
    .I1(GND_1_o_GND_1_o_sub_85_OUT[3]),
    .I2(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_75_1047 ),
    .I3(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_815_1046 ),
    .I4(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_915_1044 ),
    .I5(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_816_1045 ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_35_1043 )
  );
  MUXF7   \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_2_f7_3  (
    .I0(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_44_1048 ),
    .I1(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_34_1053 ),
    .S(GND_1_o_GND_1_o_sub_85_OUT[4]),
    .O(\GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT<4> )
  );
  LUT6 #(
    .INIT ( 64'hFEDC7654BA983210 ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_44  (
    .I0(GND_1_o_GND_1_o_sub_85_OUT[2]),
    .I1(GND_1_o_GND_1_o_sub_85_OUT[3]),
    .I2(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_814_1052 ),
    .I3(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_913_1051 ),
    .I4(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_104_1049 ),
    .I5(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_914_1050 ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_44_1048 )
  );
  LUT6 #(
    .INIT ( 64'hFEDC7654BA983210 ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_34  (
    .I0(GND_1_o_GND_1_o_sub_85_OUT[2]),
    .I1(GND_1_o_GND_1_o_sub_85_OUT[3]),
    .I2(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_74_1057 ),
    .I3(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_812_1056 ),
    .I4(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_912_1054 ),
    .I5(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_813_1055 ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_34_1053 )
  );
  MUXF7   \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_2_f7_2  (
    .I0(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_43_1058 ),
    .I1(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_33_1063 ),
    .S(GND_1_o_GND_1_o_sub_85_OUT[4]),
    .O(\GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT<3> )
  );
  LUT6 #(
    .INIT ( 64'hFEDC7654BA983210 ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_43  (
    .I0(GND_1_o_GND_1_o_sub_85_OUT[2]),
    .I1(GND_1_o_GND_1_o_sub_85_OUT[3]),
    .I2(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_811_1062 ),
    .I3(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_910_1061 ),
    .I4(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_103_1059 ),
    .I5(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_911_1060 ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_43_1058 )
  );
  LUT6 #(
    .INIT ( 64'hFEDC7654BA983210 ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_33  (
    .I0(GND_1_o_GND_1_o_sub_85_OUT[2]),
    .I1(GND_1_o_GND_1_o_sub_85_OUT[3]),
    .I2(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_73_1067 ),
    .I3(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_89_1066 ),
    .I4(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_99_1064 ),
    .I5(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_810_1065 ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_33_1063 )
  );
  MUXF7   \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_2_f7_1  (
    .I0(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_42_1068 ),
    .I1(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_32_1073 ),
    .S(GND_1_o_GND_1_o_sub_85_OUT[4]),
    .O(\GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT<2> )
  );
  LUT6 #(
    .INIT ( 64'hFEDC7654BA983210 ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_42  (
    .I0(GND_1_o_GND_1_o_sub_85_OUT[2]),
    .I1(GND_1_o_GND_1_o_sub_85_OUT[3]),
    .I2(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_88_1072 ),
    .I3(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_97_1071 ),
    .I4(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_102_1069 ),
    .I5(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_98_1070 ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_42_1068 )
  );
  LUT6 #(
    .INIT ( 64'hFEDC7654BA983210 ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_32  (
    .I0(GND_1_o_GND_1_o_sub_85_OUT[2]),
    .I1(GND_1_o_GND_1_o_sub_85_OUT[3]),
    .I2(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_72_1077 ),
    .I3(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_86_1076 ),
    .I4(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_96_1074 ),
    .I5(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_87_1075 ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_32_1073 )
  );
  MUXF7   \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_2_f7_0  (
    .I0(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_41_1078 ),
    .I1(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_31_1083 ),
    .S(GND_1_o_GND_1_o_sub_85_OUT[4]),
    .O(\GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT<1> )
  );
  LUT6 #(
    .INIT ( 64'hFEDC7654BA983210 ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_41  (
    .I0(GND_1_o_GND_1_o_sub_85_OUT[2]),
    .I1(GND_1_o_GND_1_o_sub_85_OUT[3]),
    .I2(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_85_1082 ),
    .I3(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_94_1081 ),
    .I4(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_101_1079 ),
    .I5(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_95_1080 ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_41_1078 )
  );
  LUT6 #(
    .INIT ( 64'hFEDC7654BA983210 ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_31  (
    .I0(GND_1_o_GND_1_o_sub_85_OUT[2]),
    .I1(GND_1_o_GND_1_o_sub_85_OUT[3]),
    .I2(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_71_1087 ),
    .I3(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_83_1086 ),
    .I4(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_93_1084 ),
    .I5(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_84_1085 ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_31_1083 )
  );
  MUXF7   \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_2_f7  (
    .I0(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_4_1088 ),
    .I1(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_3_1093 ),
    .S(GND_1_o_GND_1_o_sub_85_OUT[4]),
    .O(\GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT<0> )
  );
  LUT6 #(
    .INIT ( 64'hFEDC7654BA983210 ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_4  (
    .I0(GND_1_o_GND_1_o_sub_85_OUT[2]),
    .I1(GND_1_o_GND_1_o_sub_85_OUT[3]),
    .I2(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_82_1092 ),
    .I3(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_91_1091 ),
    .I4(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_10_1089 ),
    .I5(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_92_1090 ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_4_1088 )
  );
  LUT6 #(
    .INIT ( 64'hFEDC7654BA983210 ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_3  (
    .I0(GND_1_o_GND_1_o_sub_85_OUT[2]),
    .I1(GND_1_o_GND_1_o_sub_85_OUT[3]),
    .I2(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_7_1097 ),
    .I3(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_8_1096 ),
    .I4(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_9_1094 ),
    .I5(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_81_1095 ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_3_1093 )
  );
  FDC   \display/display_cnt_1  (
    .C(\four_hz/counter [14]),
    .CLR(init_glue_set),
    .D(\display/Result [1]),
    .Q(\display/display_cnt [1])
  );
  FDC   \display/display_cnt_0  (
    .C(\four_hz/counter [14]),
    .CLR(init_glue_set),
    .D(\display/Result [0]),
    .Q(\display/display_cnt [0])
  );
  FDP   \display/segments_7  (
    .C(\four_hz/counter [14]),
    .D(\display/display_cnt[1]_digit3[7]_wide_mux_216_OUT<7> ),
    .PRE(init_glue_set),
    .Q(\display/segments [7])
  );
  FDC   \display/segments_6  (
    .C(\four_hz/counter [14]),
    .CLR(init_glue_set),
    .D(\display/display_cnt[1]_digit3[7]_wide_mux_216_OUT<6> ),
    .Q(\display/segments [6])
  );
  FDP   \display/segments_5  (
    .C(\four_hz/counter [14]),
    .D(\display/display_cnt[1]_digit3[7]_wide_mux_216_OUT<5> ),
    .PRE(init_glue_set),
    .Q(\display/segments [5])
  );
  FDP   \display/segments_4  (
    .C(\four_hz/counter [14]),
    .D(\display/display_cnt[1]_digit3[7]_wide_mux_216_OUT<4> ),
    .PRE(init_glue_set),
    .Q(\display/segments [4])
  );
  FDP   \display/segments_3  (
    .C(\four_hz/counter [14]),
    .D(\display/display_cnt[1]_digit3[7]_wide_mux_216_OUT<3> ),
    .PRE(init_glue_set),
    .Q(\display/segments [3])
  );
  FDP   \display/segments_2  (
    .C(\four_hz/counter [14]),
    .D(\display/display_cnt[1]_digit3[7]_wide_mux_216_OUT<2> ),
    .PRE(init_glue_set),
    .Q(\display/segments [2])
  );
  FDP   \display/segments_1  (
    .C(\four_hz/counter [14]),
    .D(\display/display_cnt[1]_digit3[7]_wide_mux_216_OUT<1> ),
    .PRE(init_glue_set),
    .Q(\display/segments [1])
  );
  FDP   \display/segments_0  (
    .C(\four_hz/counter [14]),
    .D(\display/display_cnt[1]_digit3[7]_wide_mux_216_OUT<0> ),
    .PRE(init_glue_set),
    .Q(\display/segments [0])
  );
  FDP   \display/digit_select_3  (
    .C(\four_hz/counter [14]),
    .D(\display/Mram_display_cnt[1]_GND_2_o_wide_mux_217_OUT3 ),
    .PRE(init_glue_set),
    .Q(\display/digit_select [3])
  );
  FDP   \display/digit_select_2  (
    .C(\four_hz/counter [14]),
    .D(\display/Mram_display_cnt[1]_GND_2_o_wide_mux_217_OUT2 ),
    .PRE(init_glue_set),
    .Q(\display/digit_select [2])
  );
  FDP   \display/digit_select_1  (
    .C(\four_hz/counter [14]),
    .D(\display/Mram_display_cnt[1]_GND_2_o_wide_mux_217_OUT1 ),
    .PRE(init_glue_set),
    .Q(\display/digit_select [1])
  );
  FDP   \display/digit_select_0  (
    .C(\four_hz/counter [14]),
    .D(\display/Mram_display_cnt[1]_GND_2_o_wide_mux_217_OUT ),
    .PRE(init_glue_set),
    .Q(\display/digit_select [0])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  clear_sync1 (
    .I0(clr_sreg[0]),
    .I1(clr_sreg[1]),
    .O(leds_5_OBUF_337)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \_n0288<4>1  (
    .I0(buf_len[4]),
    .I1(buf_len[3]),
    .O(\Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT6 )
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  \_n0269<4>1  (
    .I0(buf_ptr[4]),
    .I1(buf_ptr[3]),
    .I2(buf_ptr[2]),
    .I3(buf_ptr[1]),
    .I4(buf_ptr[0]),
    .O(_n0269)
  );
  LUT3 #(
    .INIT ( 8'hDF ))
  \buf_len[4]_GND_1_o_mux_44_OUT<0>1  (
    .I0(buf_len[0]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .O(\buf_len[4]_GND_1_o_mux_44_OUT<0>1_693 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFD ))
  _n0410_inv1 (
    .I0(\Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT6 ),
    .I1(GND_1_o_GND_1_o_equal_77_o),
    .I2(\buf_ptr[4]_buf_len[4]_equal_68_o ),
    .I3(\buf_ptr[4]_buf_len[4]_LessThan_53_o1_1413 ),
    .I4(GND_1_o_GND_1_o_equal_84_o),
    .I5(GND_1_o_GND_1_o_equal_89_o),
    .O(_n0410_inv)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \buf_ptr[4]_GND_1_o_add_86_OUT<1>1  (
    .I0(buf_ptr_1_2_1405),
    .I1(buf_ptr_0_2_1406),
    .O(\buf_ptr[4]_GND_1_o_add_86_OUT<1> )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Msub_GND_1_o_GND_1_o_sub_78_OUT<4:0>_xor<2>11  (
    .I0(buf_ptr[2]),
    .I1(buf_ptr[1]),
    .O(GND_1_o_GND_1_o_sub_78_OUT[2])
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \Madd__n0267_cy<1>11  (
    .I0(buf_len[1]),
    .I1(buf_len[0]),
    .O(Madd__n0267_cy[1])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  GND_1_o_GND_1_o_equal_77_o1 (
    .I0(buf_len[0]),
    .I1(buf_ptr_0_1_1403),
    .O(GND_1_o_GND_1_o_equal_77_o1_1098)
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<0>111  (
    .I0(init_276),
    .I1(rstn_IBUF_11),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<0>11 )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<223>11  (
    .I0(init_276),
    .I1(rstn_IBUF_11),
    .I2(ascii_7_IBUF_0),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<223>1_1105 )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<221>11  (
    .I0(init_276),
    .I1(rstn_IBUF_11),
    .I2(ascii_5_IBUF_2),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<221>1_1106 )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<220>21  (
    .I0(init_276),
    .I1(rstn_IBUF_11),
    .I2(ascii_4_IBUF_3),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<220>2 )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<225>11  (
    .I0(init_276),
    .I1(rstn_IBUF_11),
    .I2(ascii_1_IBUF_6),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<225>1_1108 )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<224>21  (
    .I0(init_276),
    .I1(rstn_IBUF_11),
    .I2(ascii_0_IBUF_7),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<224>2 )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<243>11  (
    .I0(init_276),
    .I1(rstn_IBUF_11),
    .I2(ascii_3_IBUF_4),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<243>1_1110 )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<102>11  (
    .I0(init_276),
    .I1(rstn_IBUF_11),
    .I2(ascii_6_IBUF_1),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<102>1_1111 )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<106>11  (
    .I0(init_276),
    .I1(rstn_IBUF_11),
    .I2(ascii_2_IBUF_5),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<106>1_1112 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT171  (
    .I0(buf_len[2]),
    .I1(buf_len[1]),
    .I2(buf_len[0]),
    .O(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT17 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \Madd__n0272_cy<2>11  (
    .I0(buf_len[2]),
    .I1(buf_len[1]),
    .I2(buf_len[0]),
    .O(Madd__n0272_cy[2])
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \Madd__n0272_xor<2>11  (
    .I0(buf_len[2]),
    .I1(buf_len[0]),
    .I2(buf_len[1]),
    .O(_n0272[3])
  );
  LUT3 #(
    .INIT ( 8'h14 ))
  \Mmux_buf_len[4]_GND_1_o_mux_44_OUT21  (
    .I0(init_276),
    .I1(buf_len[0]),
    .I2(buf_len[1]),
    .O(\buf_len[4]_GND_1_o_mux_44_OUT<1> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  GND_1_o_GND_1_o_equal_77_o611 (
    .I0(buf_len[0]),
    .I1(buf_len[1]),
    .I2(buf_ptr_1_2_1405),
    .O(GND_1_o_GND_1_o_equal_77_o61)
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \buf_ptr[4]_buf_len[4]_LessThan_53_o261  (
    .I0(\buf_ptr[4]_buf_len[4]_LessThan_53_o1_1413 ),
    .I1(GND_1_o_GND_1_o_equal_77_o),
    .I2(\buf_ptr[4]_buf_len[4]_equal_68_o ),
    .O(\buf_ptr[4]_buf_len[4]_LessThan_53_o26 )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT1111  (
    .I0(GND_1_o_GND_1_o_equal_77_o),
    .I1(\buf_ptr[4]_buf_len[4]_equal_68_o ),
    .I2(GND_1_o_GND_1_o_equal_84_o),
    .O(\Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT111 )
  );
  LUT3 #(
    .INIT ( 8'hA9 ))
  \Msub_GND_1_o_GND_1_o_sub_69_OUT<4:0>_xor<2>11  (
    .I0(buf_ptr[2]),
    .I1(buf_ptr[0]),
    .I2(buf_ptr[1]),
    .O(GND_1_o_GND_1_o_sub_69_OUT[2])
  );
  LUT4 #(
    .INIT ( 16'hFF4F ))
  _n0429_inv111 (
    .I0(ds_sreg[1]),
    .I1(ds_sreg[0]),
    .I2(rstn_IBUF_11),
    .I3(init_276),
    .O(_n0429_inv11)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \Madd_buf_ptr[4]_GND_1_o_add_86_OUT_cy<2>11  (
    .I0(buf_ptr[2]),
    .I1(buf_ptr[1]),
    .I2(buf_ptr[0]),
    .O(\Madd_buf_ptr[4]_GND_1_o_add_86_OUT_cy<2> )
  );
  LUT3 #(
    .INIT ( 8'h87 ))
  \Msub_GND_1_o_GND_1_o_sub_85_OUT<4:0>_xor<2>11  (
    .I0(buf_ptr_0_2_1406),
    .I1(buf_ptr_1_3_1410),
    .I2(buf_ptr[2]),
    .O(GND_1_o_GND_1_o_sub_85_OUT[2])
  );
  LUT5 #(
    .INIT ( 32'h00000008 ))
  \buf_len[4]_Decoder_8_OUT<24><4>1  (
    .I0(buf_len[3]),
    .I1(buf_len[4]),
    .I2(buf_len[2]),
    .I3(buf_len[1]),
    .I4(buf_len[0]),
    .O(\buf_len[4]_Decoder_8_OUT<24> )
  );
  LUT5 #(
    .INIT ( 32'h00000004 ))
  \buf_len[4]_Decoder_8_OUT<16><4>1  (
    .I0(buf_len[3]),
    .I1(buf_len[4]),
    .I2(buf_len[2]),
    .I3(buf_len[1]),
    .I4(buf_len[0]),
    .O(\buf_len[4]_Decoder_8_OUT<16> )
  );
  LUT5 #(
    .INIT ( 32'h00000004 ))
  \buf_len[4]_Decoder_8_OUT<8><4>1  (
    .I0(buf_len[4]),
    .I1(buf_len[3]),
    .I2(buf_len[2]),
    .I3(buf_len[1]),
    .I4(buf_len[0]),
    .O(\buf_len[4]_Decoder_8_OUT<8> )
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  \buf_len[4]_Decoder_8_OUT<0><4>1  (
    .I0(buf_len[3]),
    .I1(buf_len[4]),
    .I2(buf_len[2]),
    .I3(buf_len[1]),
    .I4(buf_len[0]),
    .O(\buf_len[4]_Decoder_8_OUT<0> )
  );
  LUT5 #(
    .INIT ( 32'h04000000 ))
  \buf_len[4]_Decoder_8_OUT<11><4>1  (
    .I0(buf_len[2]),
    .I1(buf_len[0]),
    .I2(buf_len[4]),
    .I3(buf_len[1]),
    .I4(buf_len[3]),
    .O(\buf_len[4]_Decoder_8_OUT<11> )
  );
  LUT5 #(
    .INIT ( 32'h00000008 ))
  \buf_len[4]_Decoder_8_OUT<10><4>1  (
    .I0(buf_len[3]),
    .I1(buf_len[1]),
    .I2(buf_len[0]),
    .I3(buf_len[2]),
    .I4(buf_len[4]),
    .O(\buf_len[4]_Decoder_8_OUT<10> )
  );
  LUT5 #(
    .INIT ( 32'h00000008 ))
  \buf_len[4]_Decoder_8_OUT<3><4>1  (
    .I0(buf_len[0]),
    .I1(buf_len[1]),
    .I2(buf_len[3]),
    .I3(buf_len[2]),
    .I4(buf_len[4]),
    .O(\buf_len[4]_Decoder_8_OUT<3> )
  );
  LUT5 #(
    .INIT ( 32'h00000004 ))
  \buf_len[4]_Decoder_8_OUT<2><4>1  (
    .I0(buf_len[0]),
    .I1(buf_len[1]),
    .I2(buf_len[3]),
    .I3(buf_len[2]),
    .I4(buf_len[4]),
    .O(\buf_len[4]_Decoder_8_OUT<2> )
  );
  LUT5 #(
    .INIT ( 32'h00800000 ))
  \buf_len[4]_Decoder_8_OUT<29><4>1  (
    .I0(buf_len[3]),
    .I1(buf_len[4]),
    .I2(buf_len[2]),
    .I3(buf_len[1]),
    .I4(buf_len[0]),
    .O(\buf_len[4]_Decoder_8_OUT<29> )
  );
  LUT5 #(
    .INIT ( 32'h04000000 ))
  \buf_len[4]_Decoder_8_OUT<21><4>1  (
    .I0(buf_len[3]),
    .I1(buf_len[2]),
    .I2(buf_len[1]),
    .I3(buf_len[4]),
    .I4(buf_len[0]),
    .O(\buf_len[4]_Decoder_8_OUT<21> )
  );
  LUT5 #(
    .INIT ( 32'h04000000 ))
  \buf_len[4]_Decoder_8_OUT<13><4>1  (
    .I0(buf_len[4]),
    .I1(buf_len[2]),
    .I2(buf_len[1]),
    .I3(buf_len[3]),
    .I4(buf_len[0]),
    .O(\buf_len[4]_Decoder_8_OUT<13> )
  );
  LUT5 #(
    .INIT ( 32'h00000008 ))
  \buf_len[4]_Decoder_8_OUT<5><4>1  (
    .I0(buf_len[0]),
    .I1(buf_len[2]),
    .I2(buf_len[3]),
    .I3(buf_len[4]),
    .I4(buf_len[1]),
    .O(\buf_len[4]_Decoder_8_OUT<5> )
  );
  LUT5 #(
    .INIT ( 32'h00800000 ))
  \buf_len[4]_Decoder_8_OUT<30><4>1  (
    .I0(buf_len[1]),
    .I1(buf_len[4]),
    .I2(buf_len[2]),
    .I3(buf_len[0]),
    .I4(buf_len[3]),
    .O(\buf_len[4]_Decoder_8_OUT<30> )
  );
  LUT5 #(
    .INIT ( 32'h04000000 ))
  \buf_len[4]_Decoder_8_OUT<22><4>1  (
    .I0(buf_len[3]),
    .I1(buf_len[2]),
    .I2(buf_len[0]),
    .I3(buf_len[1]),
    .I4(buf_len[4]),
    .O(\buf_len[4]_Decoder_8_OUT<22> )
  );
  LUT5 #(
    .INIT ( 32'h04000000 ))
  \buf_len[4]_Decoder_8_OUT<14><4>1  (
    .I0(buf_len[4]),
    .I1(buf_len[2]),
    .I2(buf_len[0]),
    .I3(buf_len[1]),
    .I4(buf_len[3]),
    .O(\buf_len[4]_Decoder_8_OUT<14> )
  );
  LUT5 #(
    .INIT ( 32'h00000008 ))
  \buf_len[4]_Decoder_8_OUT<6><4>1  (
    .I0(buf_len[2]),
    .I1(buf_len[1]),
    .I2(buf_len[3]),
    .I3(buf_len[4]),
    .I4(buf_len[0]),
    .O(\buf_len[4]_Decoder_8_OUT<6> )
  );
  LUT5 #(
    .INIT ( 32'h80000000 ))
  \buf_len[4]_Decoder_8_OUT<31><4>1  (
    .I0(buf_len[3]),
    .I1(buf_len[4]),
    .I2(buf_len[2]),
    .I3(buf_len[1]),
    .I4(buf_len[0]),
    .O(\buf_len[4]_Decoder_8_OUT<31> )
  );
  LUT5 #(
    .INIT ( 32'h00800000 ))
  \buf_len[4]_Decoder_8_OUT<23><4>1  (
    .I0(buf_len[1]),
    .I1(buf_len[4]),
    .I2(buf_len[2]),
    .I3(buf_len[3]),
    .I4(buf_len[0]),
    .O(\buf_len[4]_Decoder_8_OUT<23> )
  );
  LUT5 #(
    .INIT ( 32'h00800000 ))
  \buf_len[4]_Decoder_8_OUT<15><4>1  (
    .I0(buf_len[1]),
    .I1(buf_len[3]),
    .I2(buf_len[2]),
    .I3(buf_len[4]),
    .I4(buf_len[0]),
    .O(\buf_len[4]_Decoder_8_OUT<15> )
  );
  LUT5 #(
    .INIT ( 32'h04000000 ))
  \buf_len[4]_Decoder_8_OUT<7><4>1  (
    .I0(buf_len[3]),
    .I1(buf_len[2]),
    .I2(buf_len[4]),
    .I3(buf_len[1]),
    .I4(buf_len[0]),
    .O(\buf_len[4]_Decoder_8_OUT<7> )
  );
  LUT5 #(
    .INIT ( 32'h00800000 ))
  \buf_len[4]_Decoder_8_OUT<27><4>1  (
    .I0(buf_len[1]),
    .I1(buf_len[3]),
    .I2(buf_len[0]),
    .I3(buf_len[2]),
    .I4(buf_len[4]),
    .O(\buf_len[4]_Decoder_8_OUT<27> )
  );
  LUT5 #(
    .INIT ( 32'h04000000 ))
  \buf_len[4]_Decoder_8_OUT<26><4>1  (
    .I0(buf_len[0]),
    .I1(buf_len[3]),
    .I2(buf_len[2]),
    .I3(buf_len[1]),
    .I4(buf_len[4]),
    .O(\buf_len[4]_Decoder_8_OUT<26> )
  );
  LUT5 #(
    .INIT ( 32'h04000000 ))
  \buf_len[4]_Decoder_8_OUT<19><4>1  (
    .I0(buf_len[3]),
    .I1(buf_len[0]),
    .I2(buf_len[2]),
    .I3(buf_len[1]),
    .I4(buf_len[4]),
    .O(\buf_len[4]_Decoder_8_OUT<19> )
  );
  LUT5 #(
    .INIT ( 32'h00000008 ))
  \buf_len[4]_Decoder_8_OUT<18><4>1  (
    .I0(buf_len[4]),
    .I1(buf_len[1]),
    .I2(buf_len[0]),
    .I3(buf_len[3]),
    .I4(buf_len[2]),
    .O(\buf_len[4]_Decoder_8_OUT<18> )
  );
  LUT4 #(
    .INIT ( 16'hAAA9 ))
  \Msub_GND_1_o_GND_1_o_sub_69_OUT<4:0>_xor<3>11  (
    .I0(buf_ptr[3]),
    .I1(buf_ptr[2]),
    .I2(buf_ptr[1]),
    .I3(buf_ptr[0]),
    .O(GND_1_o_GND_1_o_sub_69_OUT[3])
  );
  LUT5 #(
    .INIT ( 32'hAAAAAAA9 ))
  \Msub_GND_1_o_GND_1_o_sub_69_OUT<4:0>_xor<4>11  (
    .I0(buf_ptr[4]),
    .I1(buf_ptr[3]),
    .I2(buf_ptr[2]),
    .I3(buf_ptr[1]),
    .I4(buf_ptr[0]),
    .O(GND_1_o_GND_1_o_sub_69_OUT[4])
  );
  LUT4 #(
    .INIT ( 16'hF087 ))
  \Msub_GND_1_o_GND_1_o_sub_85_OUT<4:0>_xor<3>11  (
    .I0(buf_ptr_0_2_1406),
    .I1(buf_ptr_1_3_1410),
    .I2(buf_ptr[3]),
    .I3(buf_ptr[2]),
    .O(GND_1_o_GND_1_o_sub_85_OUT[3])
  );
  LUT5 #(
    .INIT ( 32'hAAA9A9A9 ))
  \Msub_GND_1_o_GND_1_o_sub_85_OUT<4:0>_xor<4>11  (
    .I0(buf_ptr[4]),
    .I1(buf_ptr[2]),
    .I2(buf_ptr[3]),
    .I3(buf_ptr[0]),
    .I4(buf_ptr[1]),
    .O(GND_1_o_GND_1_o_sub_85_OUT[4])
  );
  LUT3 #(
    .INIT ( 8'hA9 ))
  \Msub_GND_1_o_GND_1_o_sub_78_OUT<4:0>_xor<3>11  (
    .I0(buf_ptr[3]),
    .I1(buf_ptr[2]),
    .I2(buf_ptr[1]),
    .O(GND_1_o_GND_1_o_sub_78_OUT[3])
  );
  LUT4 #(
    .INIT ( 16'hAAA9 ))
  \Msub_GND_1_o_GND_1_o_sub_78_OUT<4:0>_xor<4>11  (
    .I0(buf_ptr[4]),
    .I1(buf_ptr[3]),
    .I2(buf_ptr[2]),
    .I3(buf_ptr[1]),
    .O(GND_1_o_GND_1_o_sub_78_OUT[4])
  );
  LUT5 #(
    .INIT ( 32'h04000000 ))
  \buf_len[4]_Decoder_8_OUT<25><4>1  (
    .I0(buf_len[2]),
    .I1(buf_len[3]),
    .I2(buf_len[1]),
    .I3(buf_len[0]),
    .I4(buf_len[4]),
    .O(\buf_len[4]_Decoder_8_OUT<25> )
  );
  LUT5 #(
    .INIT ( 32'h00000008 ))
  \buf_len[4]_Decoder_8_OUT<17><4>1  (
    .I0(buf_len[4]),
    .I1(buf_len[0]),
    .I2(buf_len[3]),
    .I3(buf_len[2]),
    .I4(buf_len[1]),
    .O(\buf_len[4]_Decoder_8_OUT<17> )
  );
  LUT5 #(
    .INIT ( 32'h00000008 ))
  \buf_len[4]_Decoder_8_OUT<9><4>1  (
    .I0(buf_len[3]),
    .I1(buf_len[0]),
    .I2(buf_len[4]),
    .I3(buf_len[2]),
    .I4(buf_len[1]),
    .O(\buf_len[4]_Decoder_8_OUT<9> )
  );
  LUT5 #(
    .INIT ( 32'h00000004 ))
  \buf_len[4]_Decoder_8_OUT<1><4>1  (
    .I0(buf_len[3]),
    .I1(buf_len[0]),
    .I2(buf_len[4]),
    .I3(buf_len[2]),
    .I4(buf_len[1]),
    .O(\buf_len[4]_Decoder_8_OUT<1> )
  );
  LUT5 #(
    .INIT ( 32'hBA8AFFFF ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<222>1  (
    .I0(ascii_buf_31[222]),
    .I1(init_276),
    .I2(\buf_len[4]_Decoder_8_OUT<4> ),
    .I3(ascii_6_IBUF_1),
    .I4(rstn_IBUF_11),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<222> )
  );
  LUT5 #(
    .INIT ( 32'hBA8AFFFF ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<219>1  (
    .I0(ascii_buf_31[219]),
    .I1(init_276),
    .I2(\buf_len[4]_Decoder_8_OUT<4> ),
    .I3(ascii_3_IBUF_4),
    .I4(rstn_IBUF_11),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<219> )
  );
  LUT5 #(
    .INIT ( 32'hBA8AFFFF ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<218>1  (
    .I0(ascii_buf_31[218]),
    .I1(init_276),
    .I2(\buf_len[4]_Decoder_8_OUT<4> ),
    .I3(ascii_2_IBUF_5),
    .I4(rstn_IBUF_11),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<218> )
  );
  LUT5 #(
    .INIT ( 32'hBA8AFFFF ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<217>1  (
    .I0(ascii_buf_31[217]),
    .I1(init_276),
    .I2(\buf_len[4]_Decoder_8_OUT<4> ),
    .I3(ascii_1_IBUF_6),
    .I4(rstn_IBUF_11),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<217> )
  );
  LUT5 #(
    .INIT ( 32'hBA8AFFFF ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<216>1  (
    .I0(ascii_buf_31[216]),
    .I1(init_276),
    .I2(\buf_len[4]_Decoder_8_OUT<4> ),
    .I3(ascii_0_IBUF_7),
    .I4(rstn_IBUF_11),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<216> )
  );
  LUT5 #(
    .INIT ( 32'hBA8AFFFF ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<230>1  (
    .I0(ascii_buf_31[230]),
    .I1(init_276),
    .I2(\buf_len[4]_Decoder_8_OUT<3> ),
    .I3(ascii_6_IBUF_1),
    .I4(rstn_IBUF_11),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<230> )
  );
  LUT5 #(
    .INIT ( 32'hBA8AFFFF ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<227>1  (
    .I0(ascii_buf_31[227]),
    .I1(init_276),
    .I2(\buf_len[4]_Decoder_8_OUT<3> ),
    .I3(ascii_3_IBUF_4),
    .I4(rstn_IBUF_11),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<227> )
  );
  LUT5 #(
    .INIT ( 32'hBA8AFFFF ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<226>1  (
    .I0(ascii_buf_31[226]),
    .I1(init_276),
    .I2(\buf_len[4]_Decoder_8_OUT<3> ),
    .I3(ascii_2_IBUF_5),
    .I4(rstn_IBUF_11),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<226> )
  );
  LUT5 #(
    .INIT ( 32'hBA8AFFFF ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<238>1  (
    .I0(ascii_buf_31[238]),
    .I1(init_276),
    .I2(\buf_len[4]_Decoder_8_OUT<2> ),
    .I3(ascii_6_IBUF_1),
    .I4(rstn_IBUF_11),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<238> )
  );
  LUT5 #(
    .INIT ( 32'hBA8AFFFF ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<235>1  (
    .I0(ascii_buf_31[235]),
    .I1(init_276),
    .I2(\buf_len[4]_Decoder_8_OUT<2> ),
    .I3(ascii_3_IBUF_4),
    .I4(rstn_IBUF_11),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<235> )
  );
  LUT5 #(
    .INIT ( 32'hBA8AFFFF ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<234>1  (
    .I0(ascii_buf_31[234]),
    .I1(init_276),
    .I2(\buf_len[4]_Decoder_8_OUT<2> ),
    .I3(ascii_2_IBUF_5),
    .I4(rstn_IBUF_11),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<234> )
  );
  LUT5 #(
    .INIT ( 32'hBA8AFFFF ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<246>1  (
    .I0(ascii_buf_31[246]),
    .I1(init_276),
    .I2(\buf_len[4]_Decoder_8_OUT<1> ),
    .I3(ascii_6_IBUF_1),
    .I4(rstn_IBUF_11),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<246> )
  );
  LUT5 #(
    .INIT ( 32'hBA8AFFFF ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<242>1  (
    .I0(ascii_buf_31[242]),
    .I1(init_276),
    .I2(\buf_len[4]_Decoder_8_OUT<1> ),
    .I3(ascii_2_IBUF_5),
    .I4(rstn_IBUF_11),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<242> )
  );
  LUT5 #(
    .INIT ( 32'hBA8AFFFF ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<240>1  (
    .I0(ascii_buf_31[240]),
    .I1(init_276),
    .I2(\buf_len[4]_Decoder_8_OUT<1> ),
    .I3(ascii_0_IBUF_7),
    .I4(rstn_IBUF_11),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<240> )
  );
  LUT5 #(
    .INIT ( 32'hABA8FFFF ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<254>1  (
    .I0(ascii_6_IBUF_1),
    .I1(init_276),
    .I2(\buf_len[4]_Decoder_8_OUT<0> ),
    .I3(ascii_buf_31[254]),
    .I4(rstn_IBUF_11),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<254> )
  );
  LUT5 #(
    .INIT ( 32'hABA8FFFF ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<251>1  (
    .I0(ascii_3_IBUF_4),
    .I1(init_276),
    .I2(\buf_len[4]_Decoder_8_OUT<0> ),
    .I3(ascii_buf_31[251]),
    .I4(rstn_IBUF_11),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<251> )
  );
  LUT5 #(
    .INIT ( 32'h888A8880 ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<248>1  (
    .I0(rstn_IBUF_11),
    .I1(ascii_0_IBUF_7),
    .I2(\buf_len[4]_Decoder_8_OUT<0> ),
    .I3(init_276),
    .I4(ascii_buf_31[248]),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<248> )
  );
  LUT5 #(
    .INIT ( 32'h888A8880 ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<249>1  (
    .I0(rstn_IBUF_11),
    .I1(ascii_1_IBUF_6),
    .I2(\buf_len[4]_Decoder_8_OUT<0> ),
    .I3(init_276),
    .I4(ascii_buf_31[249]),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<249> )
  );
  LUT5 #(
    .INIT ( 32'h888A8880 ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<250>1  (
    .I0(rstn_IBUF_11),
    .I1(ascii_2_IBUF_5),
    .I2(\buf_len[4]_Decoder_8_OUT<0> ),
    .I3(init_276),
    .I4(ascii_buf_31[250]),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<250> )
  );
  LUT5 #(
    .INIT ( 32'h888A8880 ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<252>1  (
    .I0(rstn_IBUF_11),
    .I1(ascii_4_IBUF_3),
    .I2(\buf_len[4]_Decoder_8_OUT<0> ),
    .I3(init_276),
    .I4(ascii_buf_31[252]),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<252> )
  );
  LUT5 #(
    .INIT ( 32'h888A8880 ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<253>1  (
    .I0(rstn_IBUF_11),
    .I1(ascii_5_IBUF_2),
    .I2(\buf_len[4]_Decoder_8_OUT<0> ),
    .I3(init_276),
    .I4(ascii_buf_31[253]),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<253> )
  );
  LUT5 #(
    .INIT ( 32'h888A8880 ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<255>1  (
    .I0(rstn_IBUF_11),
    .I1(ascii_7_IBUF_0),
    .I2(\buf_len[4]_Decoder_8_OUT<0> ),
    .I3(init_276),
    .I4(ascii_buf_31[255]),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<255> )
  );
  LUT6 #(
    .INIT ( 64'hAFAAAAAAA8AAAAAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<159>1  (
    .I0(ascii_buf_31[159]),
    .I1(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<0>11 ),
    .I2(buf_len[4]),
    .I3(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT17 ),
    .I4(buf_len[3]),
    .I5(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<223>1_1105 ),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<159> )
  );
  LUT6 #(
    .INIT ( 64'hAFAAAAAAA8AAAAAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<157>1  (
    .I0(ascii_buf_31[157]),
    .I1(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<0>11 ),
    .I2(buf_len[4]),
    .I3(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT17 ),
    .I4(buf_len[3]),
    .I5(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<221>1_1106 ),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<157> )
  );
  LUT6 #(
    .INIT ( 64'hAFAAAAAAA8AAAAAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<156>1  (
    .I0(ascii_buf_31[156]),
    .I1(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<0>11 ),
    .I2(buf_len[4]),
    .I3(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT17 ),
    .I4(buf_len[3]),
    .I5(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<220>2 ),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<156> )
  );
  LUT6 #(
    .INIT ( 64'hAFAAAAAAA8AAAAAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<153>1  (
    .I0(ascii_buf_31[153]),
    .I1(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<0>11 ),
    .I2(buf_len[4]),
    .I3(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT17 ),
    .I4(buf_len[3]),
    .I5(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<225>1_1108 ),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<153> )
  );
  LUT6 #(
    .INIT ( 64'hAFAAAAAAA8AAAAAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<152>1  (
    .I0(ascii_buf_31[152]),
    .I1(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<0>11 ),
    .I2(buf_len[4]),
    .I3(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT17 ),
    .I4(buf_len[3]),
    .I5(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<224>2 ),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<152> )
  );
  LUT6 #(
    .INIT ( 64'hAFAAAAAAA8AAAAAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<155>1  (
    .I0(ascii_buf_31[155]),
    .I1(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<0>11 ),
    .I2(buf_len[4]),
    .I3(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT17 ),
    .I4(buf_len[3]),
    .I5(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<243>1_1110 ),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<155> )
  );
  LUT6 #(
    .INIT ( 64'hAFAAAAAAA8AAAAAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<158>1  (
    .I0(ascii_buf_31[158]),
    .I1(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<0>11 ),
    .I2(buf_len[4]),
    .I3(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT17 ),
    .I4(buf_len[3]),
    .I5(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<102>1_1111 ),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<158> )
  );
  LUT6 #(
    .INIT ( 64'hAFAAAAAAA8AAAAAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<154>1  (
    .I0(ascii_buf_31[154]),
    .I1(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<0>11 ),
    .I2(buf_len[4]),
    .I3(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT17 ),
    .I4(buf_len[3]),
    .I5(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<106>1_1112 ),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<154> )
  );
  LUT6 #(
    .INIT ( 64'hAFAAAAAAA8AAAAAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<95>1  (
    .I0(ascii_buf_31[95]),
    .I1(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<0>11 ),
    .I2(buf_len[3]),
    .I3(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT17 ),
    .I4(buf_len[4]),
    .I5(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<223>1_1105 ),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<95> )
  );
  LUT6 #(
    .INIT ( 64'hAFAAAAAAA8AAAAAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<93>1  (
    .I0(ascii_buf_31[93]),
    .I1(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<0>11 ),
    .I2(buf_len[3]),
    .I3(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT17 ),
    .I4(buf_len[4]),
    .I5(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<221>1_1106 ),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<93> )
  );
  LUT6 #(
    .INIT ( 64'hAFAAAAAAA8AAAAAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<92>1  (
    .I0(ascii_buf_31[92]),
    .I1(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<0>11 ),
    .I2(buf_len[3]),
    .I3(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT17 ),
    .I4(buf_len[4]),
    .I5(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<220>2 ),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<92> )
  );
  LUT6 #(
    .INIT ( 64'hAFAAAAAAA8AAAAAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<89>1  (
    .I0(ascii_buf_31[89]),
    .I1(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<0>11 ),
    .I2(buf_len[3]),
    .I3(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT17 ),
    .I4(buf_len[4]),
    .I5(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<225>1_1108 ),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<89> )
  );
  LUT6 #(
    .INIT ( 64'hAFAAAAAAA8AAAAAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<88>1  (
    .I0(ascii_buf_31[88]),
    .I1(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<0>11 ),
    .I2(buf_len[3]),
    .I3(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT17 ),
    .I4(buf_len[4]),
    .I5(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<224>2 ),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<88> )
  );
  LUT6 #(
    .INIT ( 64'hAFAAAAAAA8AAAAAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<91>1  (
    .I0(ascii_buf_31[91]),
    .I1(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<0>11 ),
    .I2(buf_len[3]),
    .I3(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT17 ),
    .I4(buf_len[4]),
    .I5(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<243>1_1110 ),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<91> )
  );
  LUT6 #(
    .INIT ( 64'hAFAAAAAAA8AAAAAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<94>1  (
    .I0(ascii_buf_31[94]),
    .I1(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<0>11 ),
    .I2(buf_len[3]),
    .I3(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT17 ),
    .I4(buf_len[4]),
    .I5(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<102>1_1111 ),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<94> )
  );
  LUT6 #(
    .INIT ( 64'hAFAAAAAAA8AAAAAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<90>1  (
    .I0(ascii_buf_31[90]),
    .I1(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<0>11 ),
    .I2(buf_len[3]),
    .I3(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT17 ),
    .I4(buf_len[4]),
    .I5(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<106>1_1112 ),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<90> )
  );
  LUT6 #(
    .INIT ( 64'hFAAAAAAA8AAAAAAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<31>1  (
    .I0(ascii_buf_31[31]),
    .I1(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<0>11 ),
    .I2(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT17 ),
    .I3(buf_len[4]),
    .I4(buf_len[3]),
    .I5(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<223>1_1105 ),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<31> )
  );
  LUT6 #(
    .INIT ( 64'hFAAAAAAA8AAAAAAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<29>1  (
    .I0(ascii_buf_31[29]),
    .I1(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<0>11 ),
    .I2(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT17 ),
    .I3(buf_len[4]),
    .I4(buf_len[3]),
    .I5(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<221>1_1106 ),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<29> )
  );
  LUT6 #(
    .INIT ( 64'hFAAAAAAA8AAAAAAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<28>1  (
    .I0(ascii_buf_31[28]),
    .I1(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<0>11 ),
    .I2(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT17 ),
    .I3(buf_len[4]),
    .I4(buf_len[3]),
    .I5(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<220>2 ),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<28> )
  );
  LUT6 #(
    .INIT ( 64'hFAAAAAAA8AAAAAAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<25>1  (
    .I0(ascii_buf_31[25]),
    .I1(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<0>11 ),
    .I2(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT17 ),
    .I3(buf_len[4]),
    .I4(buf_len[3]),
    .I5(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<225>1_1108 ),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<25> )
  );
  LUT6 #(
    .INIT ( 64'hFAAAAAAA8AAAAAAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<24>1  (
    .I0(ascii_buf_31[24]),
    .I1(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<0>11 ),
    .I2(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT17 ),
    .I3(buf_len[4]),
    .I4(buf_len[3]),
    .I5(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<224>2 ),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<24> )
  );
  LUT6 #(
    .INIT ( 64'hFAAAAAAA8AAAAAAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<27>1  (
    .I0(ascii_buf_31[27]),
    .I1(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<0>11 ),
    .I2(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT17 ),
    .I3(buf_len[4]),
    .I4(buf_len[3]),
    .I5(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<243>1_1110 ),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<27> )
  );
  LUT6 #(
    .INIT ( 64'hFAAAAAAA8AAAAAAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<30>1  (
    .I0(ascii_buf_31[30]),
    .I1(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<0>11 ),
    .I2(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT17 ),
    .I3(buf_len[4]),
    .I4(buf_len[3]),
    .I5(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<102>1_1111 ),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<30> )
  );
  LUT6 #(
    .INIT ( 64'hFAAAAAAA8AAAAAAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<26>1  (
    .I0(ascii_buf_31[26]),
    .I1(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<0>11 ),
    .I2(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT17 ),
    .I3(buf_len[4]),
    .I4(buf_len[3]),
    .I5(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<106>1_1112 ),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<26> )
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT51111  (
    .I0(digit3[0]),
    .I1(digit3[4]),
    .I2(digit3[3]),
    .O(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT5111 )
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT52111  (
    .I0(digit2[0]),
    .I1(digit2[4]),
    .I2(digit2[3]),
    .O(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT5211 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT32131  (
    .I0(digit2[1]),
    .I1(digit2[4]),
    .I2(digit2[2]),
    .O(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT3213 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT31231  (
    .I0(digit1[1]),
    .I1(digit1[4]),
    .I2(digit1[2]),
    .O(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT3123 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT32231  (
    .I0(digit0[1]),
    .I1(digit0[4]),
    .I2(digit0[2]),
    .O(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT3223 )
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT61241  (
    .I0(digit1[4]),
    .I1(digit1[3]),
    .I2(digit1[0]),
    .O(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT6124 )
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT62241  (
    .I0(digit0[4]),
    .I1(digit0[3]),
    .I2(digit0[0]),
    .O(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT6224 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT32221  (
    .I0(digit0[3]),
    .I1(digit0[4]),
    .I2(digit0[6]),
    .O(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT3222 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT32121  (
    .I0(digit2[3]),
    .I1(digit2[4]),
    .I2(digit2[6]),
    .O(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT3212 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT31221  (
    .I0(digit1[3]),
    .I1(digit1[4]),
    .I2(digit1[6]),
    .O(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT3122 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT31121  (
    .I0(digit3[3]),
    .I1(digit3[4]),
    .I2(digit3[6]),
    .O(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT3112 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFDD151515 ))
  \display/digit3[7]_PWR_2_o_select_215_OUT<3>11  (
    .I0(digit3[6]),
    .I1(digit3[4]),
    .I2(digit3[5]),
    .I3(digit3[3]),
    .I4(digit3[2]),
    .I5(digit3[7]),
    .O(\display/digit3[7]_PWR_2_o_select_215_OUT<3>1 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFDD151515 ))
  \display/digit2[7]_PWR_2_o_select_161_OUT<3>11  (
    .I0(digit2[6]),
    .I1(digit2[4]),
    .I2(digit2[5]),
    .I3(digit2[3]),
    .I4(digit2[2]),
    .I5(digit2[7]),
    .O(\display/digit2[7]_PWR_2_o_select_161_OUT<3>1 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFDD151515 ))
  \display/digit1[7]_PWR_2_o_select_107_OUT<3>11  (
    .I0(digit1[6]),
    .I1(digit1[4]),
    .I2(digit1[5]),
    .I3(digit1[3]),
    .I4(digit1[2]),
    .I5(digit1[7]),
    .O(\display/digit1[7]_PWR_2_o_select_107_OUT<3>1 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFDD151515 ))
  \display/digit0[7]_PWR_2_o_select_53_OUT<3>11  (
    .I0(digit0[6]),
    .I1(digit0[4]),
    .I2(digit0[5]),
    .I3(digit0[3]),
    .I4(digit0[2]),
    .I5(digit0[7]),
    .O(\display/digit0[7]_PWR_2_o_select_53_OUT<3>1 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \display/Mcount_display_cnt_xor<1>11  (
    .I0(\display/display_cnt [1]),
    .I1(\display/display_cnt [0]),
    .O(\display/Result [1])
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \display/Mram_display_cnt[1]_GND_2_o_wide_mux_217_OUT31  (
    .I0(\display/display_cnt [0]),
    .I1(\display/display_cnt [1]),
    .O(\display/Mram_display_cnt[1]_GND_2_o_wide_mux_217_OUT3 )
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \display/Mram_display_cnt[1]_GND_2_o_wide_mux_217_OUT21  (
    .I0(\display/display_cnt [0]),
    .I1(\display/display_cnt [1]),
    .O(\display/Mram_display_cnt[1]_GND_2_o_wide_mux_217_OUT2 )
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \display/Mram_display_cnt[1]_GND_2_o_wide_mux_217_OUT111  (
    .I0(\display/display_cnt [1]),
    .I1(\display/display_cnt [0]),
    .O(\display/Mram_display_cnt[1]_GND_2_o_wide_mux_217_OUT1 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \display/Mram_display_cnt[1]_GND_2_o_wide_mux_217_OUT11  (
    .I0(\display/display_cnt [1]),
    .I1(\display/display_cnt [0]),
    .O(\display/Mram_display_cnt[1]_GND_2_o_wide_mux_217_OUT )
  );
  LUT6 #(
    .INIT ( 64'h00A080A8AAFAEAFE ))
  \buf_ptr[4]_buf_len[4]_LessThan_53_o1_SW0  (
    .I0(buf_len[2]),
    .I1(buf_len[0]),
    .I2(buf_len[1]),
    .I3(buf_ptr_1_1_1404),
    .I4(buf_ptr_0_1_1403),
    .I5(buf_ptr_2_1_1408),
    .O(N10)
  );
  LUT5 #(
    .INIT ( 32'h8EAF0A8E ))
  \buf_ptr[4]_buf_len[4]_LessThan_53_o1  (
    .I0(buf_len[4]),
    .I1(buf_len[3]),
    .I2(buf_ptr[4]),
    .I3(buf_ptr[3]),
    .I4(N10),
    .O(\buf_ptr[4]_buf_len[4]_LessThan_53_o )
  );
  LUT6 #(
    .INIT ( 64'hFEFAFAFAEEAAAAAA ))
  \Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT3  (
    .I0(N12),
    .I1(\Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT13 ),
    .I2(digit0[2]),
    .I3(\GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT<2> ),
    .I4(\Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT11_1099 ),
    .I5(\Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT12_out1 ),
    .O(\buf_len[4]_ascii_buf[0][7]_select_123_OUT<2> )
  );
  LUT6 #(
    .INIT ( 64'hFEFAFAFAEEAAAAAA ))
  \Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT5  (
    .I0(N14),
    .I1(\Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT13 ),
    .I2(digit0[4]),
    .I3(\GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT<4> ),
    .I4(\Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT11_1099 ),
    .I5(\Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT12_out1 ),
    .O(\buf_len[4]_ascii_buf[0][7]_select_123_OUT<4> )
  );
  LUT6 #(
    .INIT ( 64'hFEFAFAFAEEAAAAAA ))
  \Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT1  (
    .I0(N16),
    .I1(\Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT13 ),
    .I2(digit0[0]),
    .I3(\GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT<0> ),
    .I4(\Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT11_1099 ),
    .I5(\Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT12_out1 ),
    .O(\buf_len[4]_ascii_buf[0][7]_select_123_OUT<0> )
  );
  LUT6 #(
    .INIT ( 64'hFEFAFAFAEEAAAAAA ))
  \Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT7  (
    .I0(N18),
    .I1(\Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT13 ),
    .I2(digit0[6]),
    .I3(\GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT<6> ),
    .I4(\Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT11_1099 ),
    .I5(\Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT12_out1 ),
    .O(\buf_len[4]_ascii_buf[0][7]_select_123_OUT<6> )
  );
  LUT6 #(
    .INIT ( 64'hFEFAFAFAEEAAAAAA ))
  \Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT2  (
    .I0(N20),
    .I1(\Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT13 ),
    .I2(digit0[1]),
    .I3(\GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT<1> ),
    .I4(\Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT11_1099 ),
    .I5(\Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT12_out1 ),
    .O(\buf_len[4]_ascii_buf[0][7]_select_123_OUT<1> )
  );
  LUT6 #(
    .INIT ( 64'hFEFAFAFAEEAAAAAA ))
  \Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT4  (
    .I0(N22),
    .I1(\Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT13 ),
    .I2(digit0[3]),
    .I3(\GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT<3> ),
    .I4(\Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT11_1099 ),
    .I5(\Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT12_out1 ),
    .O(\buf_len[4]_ascii_buf[0][7]_select_123_OUT<3> )
  );
  LUT6 #(
    .INIT ( 64'hFEFAFAFAEEAAAAAA ))
  \Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT8  (
    .I0(N24),
    .I1(\Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT13 ),
    .I2(digit0[7]),
    .I3(\GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT<7> ),
    .I4(\Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT11_1099 ),
    .I5(\Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT12_out1 ),
    .O(\buf_len[4]_ascii_buf[0][7]_select_123_OUT<7> )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT121  (
    .I0(digit3[5]),
    .I1(buf_len[3]),
    .I2(buf_len[4]),
    .O(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT12 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFAFC0F0F0A0C ))
  \Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT122  (
    .I0(ascii_buf_31[253]),
    .I1(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT12 ),
    .I2(\buf_ptr[4]_buf_len[4]_LessThan_53_o ),
    .I3(GND_1_o_GND_1_o_equal_89_o),
    .I4(\Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT111 ),
    .I5(\buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT<5> ),
    .O(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT121_1171 )
  );
  LUT6 #(
    .INIT ( 64'hFCFCFCA800FC00A8 ))
  \Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT123  (
    .I0(ascii_buf_31[253]),
    .I1(buf_len[4]),
    .I2(buf_len[3]),
    .I3(\buf_ptr[4]_buf_len[4]_LessThan_53_o ),
    .I4(\Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT111 ),
    .I5(\buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT<5> ),
    .O(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT122_1172 )
  );
  LUT6 #(
    .INIT ( 64'h5545150551411101 ))
  \Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT124  (
    .I0(buf_len[2]),
    .I1(buf_len[1]),
    .I2(buf_len[0]),
    .I3(ascii_buf_31[253]),
    .I4(ascii_buf_31[237]),
    .I5(ascii_buf_31[245]),
    .O(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT123_1173 )
  );
  LUT6 #(
    .INIT ( 64'h1111111100000100 ))
  \Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT125  (
    .I0(buf_len[4]),
    .I1(buf_len[3]),
    .I2(buf_len[1]),
    .I3(ascii_buf_31[229]),
    .I4(buf_len[0]),
    .I5(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT123_1173 ),
    .O(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT124_1174 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFEAAAAAA ))
  \Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT126  (
    .I0(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT124_1174 ),
    .I1(buf_len[1]),
    .I2(buf_len[0]),
    .I3(buf_len[2]),
    .I4(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT121_1171 ),
    .I5(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT122_1172 ),
    .O(\buf_len[4]_ascii_buf[3][7]_select_120_OUT<5> )
  );
  LUT5 #(
    .INIT ( 32'hB7EDDBFE ))
  GND_1_o_GND_1_o_equal_77_o6_SW0 (
    .I0(buf_len[3]),
    .I1(buf_len[4]),
    .I2(Madd__n0272_cy[2]),
    .I3(buf_ptr_4_2_1412),
    .I4(buf_ptr_3_2_1411),
    .O(N26)
  );
  LUT6 #(
    .INIT ( 64'h1004100000040000 ))
  \Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT1_SW0  (
    .I0(\Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT6 ),
    .I1(buf_len[2]),
    .I2(buf_len[0]),
    .I3(buf_len[1]),
    .I4(ascii_buf_31[240]),
    .I5(ascii_buf_31[248]),
    .O(N28)
  );
  LUT6 #(
    .INIT ( 64'hFEFAFAFAEEAAAAAA ))
  \Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT1  (
    .I0(N28),
    .I1(\Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT13 ),
    .I2(digit1[0]),
    .I3(\GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT<0> ),
    .I4(\Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT11_1100 ),
    .I5(\Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT12_out1 ),
    .O(\buf_len[4]_ascii_buf[1][7]_select_122_OUT<0> )
  );
  LUT6 #(
    .INIT ( 64'h1004100000040000 ))
  \Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT2_SW0  (
    .I0(\Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT6 ),
    .I1(buf_len[2]),
    .I2(buf_len[0]),
    .I3(buf_len[1]),
    .I4(ascii_buf_31[241]),
    .I5(ascii_buf_31[249]),
    .O(N30)
  );
  LUT6 #(
    .INIT ( 64'hFEFAFAFAEEAAAAAA ))
  \Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT2  (
    .I0(N30),
    .I1(\Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT13 ),
    .I2(digit1[1]),
    .I3(\GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT<1> ),
    .I4(\Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT11_1100 ),
    .I5(\Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT12_out1 ),
    .O(\buf_len[4]_ascii_buf[1][7]_select_122_OUT<1> )
  );
  LUT6 #(
    .INIT ( 64'h1004100000040000 ))
  \Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT3_SW0  (
    .I0(\Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT6 ),
    .I1(buf_len[2]),
    .I2(buf_len[0]),
    .I3(buf_len[1]),
    .I4(ascii_buf_31[242]),
    .I5(ascii_buf_31[250]),
    .O(N32)
  );
  LUT6 #(
    .INIT ( 64'hFEFAFAFAEEAAAAAA ))
  \Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT3  (
    .I0(N32),
    .I1(\Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT13 ),
    .I2(digit1[2]),
    .I3(\GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT<2> ),
    .I4(\Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT11_1100 ),
    .I5(\Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT12_out1 ),
    .O(\buf_len[4]_ascii_buf[1][7]_select_122_OUT<2> )
  );
  LUT6 #(
    .INIT ( 64'h1004100000040000 ))
  \Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT4_SW0  (
    .I0(\Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT6 ),
    .I1(buf_len[2]),
    .I2(buf_len[0]),
    .I3(buf_len[1]),
    .I4(ascii_buf_31[243]),
    .I5(ascii_buf_31[251]),
    .O(N34)
  );
  LUT6 #(
    .INIT ( 64'hFEFAFAFAEEAAAAAA ))
  \Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT4  (
    .I0(N34),
    .I1(\Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT13 ),
    .I2(digit1[3]),
    .I3(\GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT<3> ),
    .I4(\Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT11_1100 ),
    .I5(\Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT12_out1 ),
    .O(\buf_len[4]_ascii_buf[1][7]_select_122_OUT<3> )
  );
  LUT6 #(
    .INIT ( 64'h1004100000040000 ))
  \Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT5_SW0  (
    .I0(\Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT6 ),
    .I1(buf_len[2]),
    .I2(buf_len[0]),
    .I3(buf_len[1]),
    .I4(ascii_buf_31[244]),
    .I5(ascii_buf_31[252]),
    .O(N36)
  );
  LUT6 #(
    .INIT ( 64'hFEFAFAFAEEAAAAAA ))
  \Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT5  (
    .I0(N36),
    .I1(\Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT13 ),
    .I2(digit1[4]),
    .I3(\GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT<4> ),
    .I4(\Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT11_1100 ),
    .I5(\Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT12_out1 ),
    .O(\buf_len[4]_ascii_buf[1][7]_select_122_OUT<4> )
  );
  LUT6 #(
    .INIT ( 64'h1004100000040000 ))
  \Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT7_SW0  (
    .I0(\Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT6 ),
    .I1(buf_len[2]),
    .I2(buf_len[0]),
    .I3(buf_len[1]),
    .I4(ascii_buf_31[246]),
    .I5(ascii_buf_31[254]),
    .O(N38)
  );
  LUT6 #(
    .INIT ( 64'hFEFAFAFAEEAAAAAA ))
  \Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT7  (
    .I0(N38),
    .I1(\Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT13 ),
    .I2(digit1[6]),
    .I3(\GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT<6> ),
    .I4(\Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT11_1100 ),
    .I5(\Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT12_out1 ),
    .O(\buf_len[4]_ascii_buf[1][7]_select_122_OUT<6> )
  );
  LUT6 #(
    .INIT ( 64'h1004100000040000 ))
  \Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT8_SW0  (
    .I0(\Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT6 ),
    .I1(buf_len[2]),
    .I2(buf_len[0]),
    .I3(buf_len[1]),
    .I4(ascii_buf_31[247]),
    .I5(ascii_buf_31[255]),
    .O(N40)
  );
  LUT6 #(
    .INIT ( 64'hFEFAFAFAEEAAAAAA ))
  \Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT8  (
    .I0(N40),
    .I1(\Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT13 ),
    .I2(digit1[7]),
    .I3(\GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT<7> ),
    .I4(\Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT11_1100 ),
    .I5(\Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT12_out1 ),
    .O(\buf_len[4]_ascii_buf[1][7]_select_122_OUT<7> )
  );
  LUT4 #(
    .INIT ( 16'h7DBE ))
  \buf_ptr[4]_buf_len[4]_equal_68_o5_SW0  (
    .I0(buf_len[2]),
    .I1(buf_len[4]),
    .I2(buf_ptr_4_1_1409),
    .I3(buf_ptr_2_1_1408),
    .O(N42)
  );
  LUT6 #(
    .INIT ( 64'h0028001400428001 ))
  GND_1_o_GND_1_o_equal_89_o61 (
    .I0(buf_len[3]),
    .I1(buf_len[2]),
    .I2(Madd__n0267_cy[1]),
    .I3(buf_ptr_4_1_1409),
    .I4(buf_ptr_3_1_1407),
    .I5(buf_ptr_2_1_1408),
    .O(GND_1_o_GND_1_o_equal_89_o6)
  );
  LUT6 #(
    .INIT ( 64'h0028001400428001 ))
  GND_1_o_GND_1_o_equal_84_o61 (
    .I0(buf_len[3]),
    .I1(buf_len[1]),
    .I2(buf_len[2]),
    .I3(buf_ptr_4_1_1409),
    .I4(buf_ptr_3_1_1407),
    .I5(buf_ptr_2_1_1408),
    .O(GND_1_o_GND_1_o_equal_84_o6)
  );
  LUT5 #(
    .INIT ( 32'h28144201 ))
  GND_1_o_GND_1_o_equal_84_o62 (
    .I0(buf_len[3]),
    .I1(buf_len[1]),
    .I2(buf_len[2]),
    .I3(buf_ptr_3_1_1407),
    .I4(buf_ptr_2_1_1408),
    .O(GND_1_o_GND_1_o_equal_84_o61_1187)
  );
  LUT6 #(
    .INIT ( 64'h5140777751405555 ))
  \Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT121  (
    .I0(buf_len[2]),
    .I1(buf_len[0]),
    .I2(ascii_buf_31[245]),
    .I3(ascii_buf_31[253]),
    .I4(buf_len[1]),
    .I5(ascii_buf_31[237]),
    .O(\Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT12 )
  );
  LUT6 #(
    .INIT ( 64'h000F000F000F000E ))
  \Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT124  (
    .I0(digit2[5]),
    .I1(GND_1_o_GND_1_o_equal_77_o),
    .I2(\buf_ptr[4]_buf_len[4]_equal_68_o ),
    .I3(\buf_ptr[4]_buf_len[4]_LessThan_53_o1_1413 ),
    .I4(GND_1_o_GND_1_o_equal_84_o),
    .I5(GND_1_o_GND_1_o_equal_89_o),
    .O(\Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT123 )
  );
  LUT6 #(
    .INIT ( 64'h1115011511110111 ))
  \Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT62  (
    .I0(buf_len[4]),
    .I1(buf_len[2]),
    .I2(buf_len[0]),
    .I3(buf_len[1]),
    .I4(ascii_buf_31[253]),
    .I5(ascii_buf_31[245]),
    .O(\Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT61 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT63  (
    .I0(\Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT61 ),
    .I1(buf_len[3]),
    .O(\Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT63_1192 )
  );
  LUT5 #(
    .INIT ( 32'h00000004 ))
  \Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT64  (
    .I0(buf_ptr[4]),
    .I1(\Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT13 ),
    .I2(buf_ptr[3]),
    .I3(buf_ptr[2]),
    .I4(buf_ptr[1]),
    .O(\Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT64_1193 )
  );
  LUT6 #(
    .INIT ( 64'hAEEA0EE0AAAA0000 ))
  \Mmux_buf_len[4]_GND_1_o_select_124_OUT43  (
    .I0(\Mmux_buf_len[4]_GND_1_o_select_124_OUT4 ),
    .I1(\Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT6 ),
    .I2(buf_ptr[3]),
    .I3(\Madd_buf_ptr[4]_GND_1_o_add_86_OUT_cy<2> ),
    .I4(\Mmux_buf_len[4]_GND_1_o_select_124_OUT41_1196 ),
    .I5(\buf_ptr[4]_buf_len[4]_LessThan_53_o721 ),
    .O(\buf_len[4]_GND_1_o_select_124_OUT<3> )
  );
  LUT6 #(
    .INIT ( 64'hFF88FF8088880000 ))
  \Mmux_buf_len[4]_GND_1_o_select_124_OUT54  (
    .I0(buf_len[2]),
    .I1(Madd__n0267_cy[1]),
    .I2(\Mmux_buf_len[4]_GND_1_o_select_124_OUT52_1199 ),
    .I3(\Mmux_buf_len[4]_GND_1_o_select_124_OUT5 ),
    .I4(\Mmux_buf_len[4]_GND_1_o_select_124_OUT51_1198 ),
    .I5(\buf_ptr[4]_buf_len[4]_LessThan_53_o721 ),
    .O(\buf_len[4]_GND_1_o_select_124_OUT<4> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT11_SW0  (
    .I0(buf_ptr[1]),
    .I1(buf_ptr[0]),
    .O(N48)
  );
  LUT5 #(
    .INIT ( 32'h44400400 ))
  \Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT101  (
    .I0(buf_len[2]),
    .I1(buf_len[1]),
    .I2(buf_len[0]),
    .I3(ascii_buf_31[252]),
    .I4(ascii_buf_31[244]),
    .O(\Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT10 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT102  (
    .I0(ascii_buf_31[236]),
    .I1(buf_len[1]),
    .I2(buf_len[0]),
    .O(\Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT101_1207 )
  );
  LUT6 #(
    .INIT ( 64'h00FA00EA00EA00EA ))
  \Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT103  (
    .I0(\Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT10 ),
    .I1(\Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT101_1207 ),
    .I2(buf_len[2]),
    .I3(\Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT6 ),
    .I4(digit2[4]),
    .I5(\Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT10221_1119 ),
    .O(\Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT102_1208 )
  );
  LUT5 #(
    .INIT ( 32'h44400400 ))
  \Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT141  (
    .I0(buf_len[2]),
    .I1(buf_len[1]),
    .I2(buf_len[0]),
    .I3(ascii_buf_31[254]),
    .I4(ascii_buf_31[246]),
    .O(\Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT14 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT142  (
    .I0(ascii_buf_31[238]),
    .I1(buf_len[1]),
    .I2(buf_len[0]),
    .O(\Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT141_1210 )
  );
  LUT6 #(
    .INIT ( 64'h00FA00EA00EA00EA ))
  \Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT143  (
    .I0(\Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT14 ),
    .I1(\Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT141_1210 ),
    .I2(buf_len[2]),
    .I3(\Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT6 ),
    .I4(digit2[6]),
    .I5(\Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT10221_1119 ),
    .O(\Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT142_1211 )
  );
  LUT5 #(
    .INIT ( 32'h44400400 ))
  \Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT161  (
    .I0(buf_len[2]),
    .I1(buf_len[1]),
    .I2(buf_len[0]),
    .I3(ascii_buf_31[255]),
    .I4(ascii_buf_31[247]),
    .O(\Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT16 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT162  (
    .I0(ascii_buf_31[239]),
    .I1(buf_len[1]),
    .I2(buf_len[0]),
    .O(\Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT161_1213 )
  );
  LUT6 #(
    .INIT ( 64'h00FA00EA00EA00EA ))
  \Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT163  (
    .I0(\Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT16 ),
    .I1(\Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT161_1213 ),
    .I2(buf_len[2]),
    .I3(\Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT6 ),
    .I4(digit2[7]),
    .I5(\Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT10221_1119 ),
    .O(\Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT162_1214 )
  );
  LUT5 #(
    .INIT ( 32'h44400400 ))
  \Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT21  (
    .I0(buf_len[2]),
    .I1(buf_len[1]),
    .I2(buf_len[0]),
    .I3(ascii_buf_31[248]),
    .I4(ascii_buf_31[240]),
    .O(\Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT2 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT22  (
    .I0(ascii_buf_31[232]),
    .I1(buf_len[1]),
    .I2(buf_len[0]),
    .O(\Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT21_1216 )
  );
  LUT6 #(
    .INIT ( 64'h00FA00EA00EA00EA ))
  \Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT23  (
    .I0(\Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT2 ),
    .I1(\Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT21_1216 ),
    .I2(buf_len[2]),
    .I3(\Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT6 ),
    .I4(digit2[0]),
    .I5(\Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT10221_1119 ),
    .O(\Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT22_1217 )
  );
  LUT5 #(
    .INIT ( 32'h44400400 ))
  \Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT41  (
    .I0(buf_len[2]),
    .I1(buf_len[1]),
    .I2(buf_len[0]),
    .I3(ascii_buf_31[249]),
    .I4(ascii_buf_31[241]),
    .O(\Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT4 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT42  (
    .I0(ascii_buf_31[233]),
    .I1(buf_len[1]),
    .I2(buf_len[0]),
    .O(\Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT41_1219 )
  );
  LUT6 #(
    .INIT ( 64'h00FA00EA00EA00EA ))
  \Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT43  (
    .I0(\Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT4 ),
    .I1(\Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT41_1219 ),
    .I2(buf_len[2]),
    .I3(\Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT6 ),
    .I4(digit2[1]),
    .I5(\Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT10221_1119 ),
    .O(\Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT42_1220 )
  );
  LUT5 #(
    .INIT ( 32'h44400400 ))
  \Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT61  (
    .I0(buf_len[2]),
    .I1(buf_len[1]),
    .I2(buf_len[0]),
    .I3(ascii_buf_31[250]),
    .I4(ascii_buf_31[242]),
    .O(\Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT6 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT62  (
    .I0(ascii_buf_31[234]),
    .I1(buf_len[1]),
    .I2(buf_len[0]),
    .O(\Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT61_1222 )
  );
  LUT6 #(
    .INIT ( 64'h00FA00EA00EA00EA ))
  \Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT63  (
    .I0(\Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT6 ),
    .I1(\Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT61_1222 ),
    .I2(buf_len[2]),
    .I3(\Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT6 ),
    .I4(digit2[2]),
    .I5(\Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT10221_1119 ),
    .O(\Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT62_1223 )
  );
  LUT5 #(
    .INIT ( 32'h44400400 ))
  \Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT81  (
    .I0(buf_len[2]),
    .I1(buf_len[1]),
    .I2(buf_len[0]),
    .I3(ascii_buf_31[251]),
    .I4(ascii_buf_31[243]),
    .O(\Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT8 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT82  (
    .I0(ascii_buf_31[235]),
    .I1(buf_len[1]),
    .I2(buf_len[0]),
    .O(\Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT81_1225 )
  );
  LUT6 #(
    .INIT ( 64'h00FA00EA00EA00EA ))
  \Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT83  (
    .I0(\Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT8 ),
    .I1(\Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT81_1225 ),
    .I2(buf_len[2]),
    .I3(\Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT6 ),
    .I4(digit2[3]),
    .I5(\Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT10221_1119 ),
    .O(\Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT82_1226 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFEAAAFFFFC000 ))
  \Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT106  (
    .I0(ascii_buf_31[252]),
    .I1(\Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT13 ),
    .I2(\buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT<4> ),
    .I3(\buf_ptr[4]_buf_len[4]_LessThan_53_o ),
    .I4(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT104_1229 ),
    .I5(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT101_1116 ),
    .O(\buf_len[4]_ascii_buf[3][7]_select_120_OUT<4> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFEAAAFFFFC000 ))
  \Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT145  (
    .I0(ascii_buf_31[254]),
    .I1(\Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT13 ),
    .I2(\buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT<6> ),
    .I3(\buf_ptr[4]_buf_len[4]_LessThan_53_o ),
    .I4(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT143_1232 ),
    .I5(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT101_1116 ),
    .O(\buf_len[4]_ascii_buf[3][7]_select_120_OUT<6> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFEAAAFFFFC000 ))
  \Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT165  (
    .I0(ascii_buf_31[255]),
    .I1(\Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT13 ),
    .I2(\buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT<7> ),
    .I3(\buf_ptr[4]_buf_len[4]_LessThan_53_o ),
    .I4(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT163_1235 ),
    .I5(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT101_1116 ),
    .O(\buf_len[4]_ascii_buf[3][7]_select_120_OUT<7> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFEAAAFFFFC000 ))
  \Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT25  (
    .I0(ascii_buf_31[248]),
    .I1(\Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT13 ),
    .I2(\buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT<0> ),
    .I3(\buf_ptr[4]_buf_len[4]_LessThan_53_o ),
    .I4(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT23_1238 ),
    .I5(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT101_1116 ),
    .O(\buf_len[4]_ascii_buf[3][7]_select_120_OUT<0> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFEAAAFFFFC000 ))
  \Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT45  (
    .I0(ascii_buf_31[249]),
    .I1(\Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT13 ),
    .I2(\buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT<1> ),
    .I3(\buf_ptr[4]_buf_len[4]_LessThan_53_o ),
    .I4(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT43_1241 ),
    .I5(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT101_1116 ),
    .O(\buf_len[4]_ascii_buf[3][7]_select_120_OUT<1> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFEAAAFFFFC000 ))
  \Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT65  (
    .I0(ascii_buf_31[250]),
    .I1(\Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT13 ),
    .I2(\buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT<2> ),
    .I3(\buf_ptr[4]_buf_len[4]_LessThan_53_o ),
    .I4(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT63_1244 ),
    .I5(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT101_1116 ),
    .O(\buf_len[4]_ascii_buf[3][7]_select_120_OUT<2> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFEAAAFFFFC000 ))
  \Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT85  (
    .I0(ascii_buf_31[251]),
    .I1(\Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT13 ),
    .I2(\buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT<3> ),
    .I3(\buf_ptr[4]_buf_len[4]_LessThan_53_o ),
    .I4(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT83_1247 ),
    .I5(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT101_1116 ),
    .O(\buf_len[4]_ascii_buf[3][7]_select_120_OUT<3> )
  );
  LUT5 #(
    .INIT ( 32'h40555555 ))
  \display/digit3[7]_PWR_2_o_select_215_OUT<5>21  (
    .I0(digit3[6]),
    .I1(digit3[3]),
    .I2(digit3[1]),
    .I3(digit3[4]),
    .I4(digit3[5]),
    .O(\display/digit3[7]_PWR_2_o_select_215_OUT<5>21_1248 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFABAAAAAA ))
  \display/digit3[7]_PWR_2_o_select_215_OUT<5>22  (
    .I0(digit3[7]),
    .I1(digit3[1]),
    .I2(digit3[0]),
    .I3(digit3[2]),
    .I4(digit3[4]),
    .I5(\display/digit3[7]_PWR_2_o_select_215_OUT<5>21_1248 ),
    .O(\display/digit3[7]_PWR_2_o_select_215_OUT<5>2 )
  );
  LUT6 #(
    .INIT ( 64'h220A2202333B3333 ))
  \display/digit2[7]_PWR_2_o_select_161_OUT<6>21  (
    .I0(digit2[3]),
    .I1(digit2[6]),
    .I2(digit2[4]),
    .I3(digit2[1]),
    .I4(digit2[0]),
    .I5(digit2[5]),
    .O(\display/digit2[7]_PWR_2_o_select_161_OUT<6>21_1249 )
  );
  LUT6 #(
    .INIT ( 64'hA2A282A02A2A0A0A ))
  \display/digit2[7]_PWR_2_o_select_161_OUT<6>22  (
    .I0(digit2[2]),
    .I1(digit2[1]),
    .I2(digit2[4]),
    .I3(digit2[0]),
    .I4(digit2[3]),
    .I5(digit2[6]),
    .O(\display/digit2[7]_PWR_2_o_select_161_OUT<6>22_1250 )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \display/digit2[7]_PWR_2_o_select_161_OUT<6>23  (
    .I0(digit2[7]),
    .I1(\display/digit2[7]_PWR_2_o_select_161_OUT<6>21_1249 ),
    .I2(\display/digit2[7]_PWR_2_o_select_161_OUT<6>22_1250 ),
    .O(\display/digit2[7]_PWR_2_o_select_161_OUT<6>2 )
  );
  LUT5 #(
    .INIT ( 32'h40555555 ))
  \display/digit2[7]_PWR_2_o_select_161_OUT<5>21  (
    .I0(digit2[6]),
    .I1(digit2[3]),
    .I2(digit2[1]),
    .I3(digit2[4]),
    .I4(digit2[5]),
    .O(\display/digit2[7]_PWR_2_o_select_161_OUT<5>21_1251 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFABAAAAAA ))
  \display/digit2[7]_PWR_2_o_select_161_OUT<5>22  (
    .I0(digit2[7]),
    .I1(digit2[1]),
    .I2(digit2[0]),
    .I3(digit2[2]),
    .I4(digit2[4]),
    .I5(\display/digit2[7]_PWR_2_o_select_161_OUT<5>21_1251 ),
    .O(\display/digit2[7]_PWR_2_o_select_161_OUT<5>2 )
  );
  LUT6 #(
    .INIT ( 64'h220A2202333B3333 ))
  \display/digit1[7]_PWR_2_o_select_107_OUT<6>21  (
    .I0(digit1[3]),
    .I1(digit1[6]),
    .I2(digit1[4]),
    .I3(digit1[1]),
    .I4(digit1[0]),
    .I5(digit1[5]),
    .O(\display/digit1[7]_PWR_2_o_select_107_OUT<6>21_1252 )
  );
  LUT6 #(
    .INIT ( 64'hA2A282A02A2A0A0A ))
  \display/digit1[7]_PWR_2_o_select_107_OUT<6>22  (
    .I0(digit1[2]),
    .I1(digit1[1]),
    .I2(digit1[4]),
    .I3(digit1[0]),
    .I4(digit1[3]),
    .I5(digit1[6]),
    .O(\display/digit1[7]_PWR_2_o_select_107_OUT<6>22_1253 )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \display/digit1[7]_PWR_2_o_select_107_OUT<6>23  (
    .I0(digit1[7]),
    .I1(\display/digit1[7]_PWR_2_o_select_107_OUT<6>21_1252 ),
    .I2(\display/digit1[7]_PWR_2_o_select_107_OUT<6>22_1253 ),
    .O(\display/digit1[7]_PWR_2_o_select_107_OUT<6>2 )
  );
  LUT5 #(
    .INIT ( 32'h40555555 ))
  \display/digit1[7]_PWR_2_o_select_107_OUT<5>21  (
    .I0(digit1[6]),
    .I1(digit1[3]),
    .I2(digit1[1]),
    .I3(digit1[4]),
    .I4(digit1[5]),
    .O(\display/digit1[7]_PWR_2_o_select_107_OUT<5>21_1254 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFABAAAAAA ))
  \display/digit1[7]_PWR_2_o_select_107_OUT<5>22  (
    .I0(digit1[7]),
    .I1(digit1[1]),
    .I2(digit1[0]),
    .I3(digit1[2]),
    .I4(digit1[4]),
    .I5(\display/digit1[7]_PWR_2_o_select_107_OUT<5>21_1254 ),
    .O(\display/digit1[7]_PWR_2_o_select_107_OUT<5>2 )
  );
  LUT6 #(
    .INIT ( 64'h220A2202333B3333 ))
  \display/digit0[7]_PWR_2_o_select_53_OUT<6>21  (
    .I0(digit0[3]),
    .I1(digit0[6]),
    .I2(digit0[4]),
    .I3(digit0[1]),
    .I4(digit0[0]),
    .I5(digit0[5]),
    .O(\display/digit0[7]_PWR_2_o_select_53_OUT<6>21_1255 )
  );
  LUT6 #(
    .INIT ( 64'hA2A282A02A2A0A0A ))
  \display/digit0[7]_PWR_2_o_select_53_OUT<6>22  (
    .I0(digit0[2]),
    .I1(digit0[1]),
    .I2(digit0[4]),
    .I3(digit0[0]),
    .I4(digit0[3]),
    .I5(digit0[6]),
    .O(\display/digit0[7]_PWR_2_o_select_53_OUT<6>22_1256 )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \display/digit0[7]_PWR_2_o_select_53_OUT<6>23  (
    .I0(digit0[7]),
    .I1(\display/digit0[7]_PWR_2_o_select_53_OUT<6>21_1255 ),
    .I2(\display/digit0[7]_PWR_2_o_select_53_OUT<6>22_1256 ),
    .O(\display/digit0[7]_PWR_2_o_select_53_OUT<6>2 )
  );
  LUT5 #(
    .INIT ( 32'h40555555 ))
  \display/digit0[7]_PWR_2_o_select_53_OUT<5>21  (
    .I0(digit0[6]),
    .I1(digit0[3]),
    .I2(digit0[1]),
    .I3(digit0[4]),
    .I4(digit0[5]),
    .O(\display/digit0[7]_PWR_2_o_select_53_OUT<5>21_1257 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFABAAAAAA ))
  \display/digit0[7]_PWR_2_o_select_53_OUT<5>22  (
    .I0(digit0[7]),
    .I1(digit0[1]),
    .I2(digit0[0]),
    .I3(digit0[2]),
    .I4(digit0[4]),
    .I5(\display/digit0[7]_PWR_2_o_select_53_OUT<5>21_1257 ),
    .O(\display/digit0[7]_PWR_2_o_select_53_OUT<5>2 )
  );
  LUT6 #(
    .INIT ( 64'h4004544040044440 ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT71  (
    .I0(digit3[4]),
    .I1(digit3[6]),
    .I2(digit3[1]),
    .I3(digit3[2]),
    .I4(digit3[0]),
    .I5(digit3[5]),
    .O(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT7 )
  );
  LUT6 #(
    .INIT ( 64'h2208830322080000 ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT72  (
    .I0(digit3[0]),
    .I1(digit3[1]),
    .I2(digit3[2]),
    .I3(digit3[4]),
    .I4(digit3[6]),
    .I5(digit3[5]),
    .O(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT71_1259 )
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT73  (
    .I0(digit3[7]),
    .I1(digit3[3]),
    .I2(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT71_1259 ),
    .I3(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT7 ),
    .O(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT72_1260 )
  );
  LUT6 #(
    .INIT ( 64'h4004544040044440 ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT74  (
    .I0(digit1[4]),
    .I1(digit1[6]),
    .I2(digit1[1]),
    .I3(digit1[2]),
    .I4(digit1[0]),
    .I5(digit1[5]),
    .O(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT73_1261 )
  );
  LUT6 #(
    .INIT ( 64'h2208830322080000 ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT75  (
    .I0(digit1[0]),
    .I1(digit1[1]),
    .I2(digit1[2]),
    .I3(digit1[4]),
    .I4(digit1[6]),
    .I5(digit1[5]),
    .O(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT74_1262 )
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT76  (
    .I0(digit1[7]),
    .I1(digit1[3]),
    .I2(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT74_1262 ),
    .I3(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT73_1261 ),
    .O(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT75_1263 )
  );
  LUT6 #(
    .INIT ( 64'h4004544040044440 ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT77  (
    .I0(digit2[4]),
    .I1(digit2[6]),
    .I2(digit2[1]),
    .I3(digit2[2]),
    .I4(digit2[0]),
    .I5(digit2[5]),
    .O(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT76_1264 )
  );
  LUT6 #(
    .INIT ( 64'h2208830322080000 ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT78  (
    .I0(digit2[0]),
    .I1(digit2[1]),
    .I2(digit2[2]),
    .I3(digit2[4]),
    .I4(digit2[6]),
    .I5(digit2[5]),
    .O(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT77_1265 )
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT79  (
    .I0(digit2[7]),
    .I1(digit2[3]),
    .I2(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT77_1265 ),
    .I3(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT76_1264 ),
    .O(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT78_1266 )
  );
  LUT6 #(
    .INIT ( 64'h4004544040044440 ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT710  (
    .I0(digit0[4]),
    .I1(digit0[6]),
    .I2(digit0[1]),
    .I3(digit0[2]),
    .I4(digit0[0]),
    .I5(digit0[5]),
    .O(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT79_1267 )
  );
  LUT6 #(
    .INIT ( 64'h2208830322080000 ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT711  (
    .I0(digit0[0]),
    .I1(digit0[1]),
    .I2(digit0[2]),
    .I3(digit0[4]),
    .I4(digit0[6]),
    .I5(digit0[5]),
    .O(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT710_1268 )
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT712  (
    .I0(digit0[7]),
    .I1(digit0[3]),
    .I2(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT710_1268 ),
    .I3(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT79_1267 ),
    .O(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT711_1269 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT713  (
    .I0(\display/display_cnt [0]),
    .I1(\display/display_cnt [1]),
    .I2(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT75_1263 ),
    .I3(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT72_1260 ),
    .I4(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT78_1266 ),
    .I5(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT711_1269 ),
    .O(\display/display_cnt[1]_digit3[7]_wide_mux_216_OUT<6> )
  );
  LUT6 #(
    .INIT ( 64'h4F4F5F4F44445444 ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT21  (
    .I0(digit3[1]),
    .I1(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT3112 ),
    .I2(digit3[2]),
    .I3(digit3[0]),
    .I4(digit3[6]),
    .I5(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT5111 ),
    .O(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT2 )
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT23  (
    .I0(\display/digit3[7]_PWR_2_o_select_215_OUT<6>2 ),
    .I1(digit3[1]),
    .I2(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT21_1271 ),
    .I3(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT2 ),
    .O(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT22_1272 )
  );
  LUT6 #(
    .INIT ( 64'h4F4F5F4F44445444 ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT24  (
    .I0(digit1[1]),
    .I1(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT3122 ),
    .I2(digit1[2]),
    .I3(digit1[0]),
    .I4(digit1[6]),
    .I5(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT6124 ),
    .O(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT23_1273 )
  );
  LUT6 #(
    .INIT ( 64'h4F4F5F4F44445444 ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT27  (
    .I0(digit2[1]),
    .I1(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT3212 ),
    .I2(digit2[2]),
    .I3(digit2[0]),
    .I4(digit2[6]),
    .I5(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT5211 ),
    .O(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT26_1276 )
  );
  LUT6 #(
    .INIT ( 64'h4F4F5F4F44445444 ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT210  (
    .I0(digit0[1]),
    .I1(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT3222 ),
    .I2(digit0[2]),
    .I3(digit0[0]),
    .I4(digit0[6]),
    .I5(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT6224 ),
    .O(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT29_1279 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT213  (
    .I0(\display/display_cnt [0]),
    .I1(\display/display_cnt [1]),
    .I2(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT25_1275 ),
    .I3(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT22_1272 ),
    .I4(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT28_1278 ),
    .I5(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT211_1281 ),
    .O(\display/display_cnt[1]_digit3[7]_wide_mux_216_OUT<1> )
  );
  LUT5 #(
    .INIT ( 32'h0019222A ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT33  (
    .I0(digit1[1]),
    .I1(digit1[2]),
    .I2(digit1[4]),
    .I3(digit1[3]),
    .I4(digit1[6]),
    .O(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT32_1283 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFFBEA ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT34  (
    .I0(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT3122 ),
    .I1(digit1[0]),
    .I2(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT3123 ),
    .I3(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT32_1283 ),
    .I4(\display/digit1[7]_PWR_2_o_select_107_OUT<6>2 ),
    .O(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT33_1284 )
  );
  LUT5 #(
    .INIT ( 32'h0019222A ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT35  (
    .I0(digit2[1]),
    .I1(digit2[2]),
    .I2(digit2[4]),
    .I3(digit2[3]),
    .I4(digit2[6]),
    .O(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT34_1285 )
  );
  LUT5 #(
    .INIT ( 32'h0019222A ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT37  (
    .I0(digit0[1]),
    .I1(digit0[2]),
    .I2(digit0[4]),
    .I3(digit0[3]),
    .I4(digit0[6]),
    .O(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT36 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFF7D5AAAAA280 ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT310  (
    .I0(\display/display_cnt [0]),
    .I1(\display/display_cnt [1]),
    .I2(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT31 ),
    .I3(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT33_1284 ),
    .I4(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT511_1132 ),
    .I5(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT38 ),
    .O(\display/display_cnt[1]_digit3[7]_wide_mux_216_OUT<2> )
  );
  LUT6 #(
    .INIT ( 64'h4000400451115115 ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT12  (
    .I0(digit3[2]),
    .I1(digit3[0]),
    .I2(digit3[3]),
    .I3(digit3[1]),
    .I4(digit3[6]),
    .I5(digit3[4]),
    .O(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT11_1289 )
  );
  LUT6 #(
    .INIT ( 64'h4000400451115115 ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT18  (
    .I0(digit2[2]),
    .I1(digit2[0]),
    .I2(digit2[3]),
    .I3(digit2[1]),
    .I4(digit2[6]),
    .I5(digit2[4]),
    .O(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT17_1292 )
  );
  LUT6 #(
    .INIT ( 64'h4000400451115115 ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT110  (
    .I0(digit0[2]),
    .I1(digit0[0]),
    .I2(digit0[3]),
    .I3(digit0[1]),
    .I4(digit0[6]),
    .I5(digit0[4]),
    .O(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT19_1294 )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT111  (
    .I0(\display/digit0[7]_PWR_2_o_select_53_OUT<3>1 ),
    .I1(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT18_1293 ),
    .I2(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT19_1294 ),
    .O(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT110_1295 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFDFDFDA8 ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT57  (
    .I0(\display/display_cnt [1]),
    .I1(\display/digit2[7]_PWR_2_o_select_161_OUT<5>2 ),
    .I2(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT52 ),
    .I3(\display/digit0[7]_PWR_2_o_select_53_OUT<5>2 ),
    .I4(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT55 ),
    .I5(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT521_1131 ),
    .O(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT56_1298 )
  );
  LUT5 #(
    .INIT ( 32'h88888000 ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT512  (
    .I0(digit1[1]),
    .I1(digit1[4]),
    .I2(digit1[2]),
    .I3(digit1[6]),
    .I4(digit1[0]),
    .O(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT510_1300 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFF222 ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT514  (
    .I0(digit1[0]),
    .I1(digit1[6]),
    .I2(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT512_1301 ),
    .I3(digit1[3]),
    .I4(\display/digit1[7]_PWR_2_o_select_107_OUT<5>2 ),
    .I5(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT510_1300 ),
    .O(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT513_1302 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFF7D5AAAAA280 ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT515  (
    .I0(\display/display_cnt [0]),
    .I1(\display/display_cnt [1]),
    .I2(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT59 ),
    .I3(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT513_1302 ),
    .I4(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT511_1132 ),
    .I5(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT56_1298 ),
    .O(\display/display_cnt[1]_digit3[7]_wide_mux_216_OUT<4> )
  );
  LUT6 #(
    .INIT ( 64'h8880080088A20822 ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT63  (
    .I0(digit3[0]),
    .I1(digit3[2]),
    .I2(digit3[1]),
    .I3(digit3[3]),
    .I4(digit3[4]),
    .I5(digit3[6]),
    .O(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT62_1304 )
  );
  LUT6 #(
    .INIT ( 64'h8880080088A20822 ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT610  (
    .I0(digit2[0]),
    .I1(digit2[2]),
    .I2(digit2[1]),
    .I3(digit2[3]),
    .I4(digit2[4]),
    .I5(digit2[6]),
    .O(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT69_1307 )
  );
  LUT6 #(
    .INIT ( 64'hFD9D588FEC8A588F ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT41  (
    .I0(digit3[0]),
    .I1(digit3[3]),
    .I2(digit3[1]),
    .I3(digit3[2]),
    .I4(digit3[4]),
    .I5(digit3[6]),
    .O(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT4 )
  );
  LUT6 #(
    .INIT ( 64'hFD9D588FEC8A588F ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT42  (
    .I0(digit1[0]),
    .I1(digit1[3]),
    .I2(digit1[1]),
    .I3(digit1[2]),
    .I4(digit1[4]),
    .I5(digit1[6]),
    .O(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT41_1310 )
  );
  LUT6 #(
    .INIT ( 64'hFD9D588FEC8A588F ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT44  (
    .I0(digit2[0]),
    .I1(digit2[3]),
    .I2(digit2[1]),
    .I3(digit2[2]),
    .I4(digit2[4]),
    .I5(digit2[6]),
    .O(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT43 )
  );
  LUT6 #(
    .INIT ( 64'hFD9D588FEC8A588F ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT45  (
    .I0(digit0[0]),
    .I1(digit0[3]),
    .I2(digit0[1]),
    .I3(digit0[2]),
    .I4(digit0[4]),
    .I5(digit0[6]),
    .O(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT44_1312 )
  );
  LUT3 #(
    .INIT ( 8'h7F ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT81  (
    .I0(digit3[2]),
    .I1(digit3[3]),
    .I2(digit3[1]),
    .O(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT8 )
  );
  LUT5 #(
    .INIT ( 32'h7B7F7A7F ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT82  (
    .I0(digit3[6]),
    .I1(digit3[0]),
    .I2(digit3[4]),
    .I3(digit3[5]),
    .I4(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT8 ),
    .O(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT81_1314 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFAAA8 ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT83  (
    .I0(digit3[0]),
    .I1(digit3[1]),
    .I2(digit3[2]),
    .I3(digit3[3]),
    .I4(digit3[7]),
    .I5(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT81_1314 ),
    .O(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT82_1315 )
  );
  LUT3 #(
    .INIT ( 8'h7F ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT84  (
    .I0(digit1[2]),
    .I1(digit1[3]),
    .I2(digit1[1]),
    .O(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT83_1316 )
  );
  LUT5 #(
    .INIT ( 32'h7B7F7A7F ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT85  (
    .I0(digit1[6]),
    .I1(digit1[0]),
    .I2(digit1[4]),
    .I3(digit1[5]),
    .I4(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT83_1316 ),
    .O(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT84_1317 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFAAA8 ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT86  (
    .I0(digit1[0]),
    .I1(digit1[1]),
    .I2(digit1[2]),
    .I3(digit1[3]),
    .I4(digit1[7]),
    .I5(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT84_1317 ),
    .O(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT85_1318 )
  );
  LUT3 #(
    .INIT ( 8'h7F ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT87  (
    .I0(digit2[2]),
    .I1(digit2[3]),
    .I2(digit2[1]),
    .O(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT86_1319 )
  );
  LUT5 #(
    .INIT ( 32'h7B7F7A7F ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT88  (
    .I0(digit2[6]),
    .I1(digit2[0]),
    .I2(digit2[4]),
    .I3(digit2[5]),
    .I4(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT86_1319 ),
    .O(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT87_1320 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFAAA8 ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT89  (
    .I0(digit2[0]),
    .I1(digit2[1]),
    .I2(digit2[2]),
    .I3(digit2[3]),
    .I4(digit2[7]),
    .I5(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT87_1320 ),
    .O(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT88_1321 )
  );
  LUT3 #(
    .INIT ( 8'h7F ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT810  (
    .I0(digit0[2]),
    .I1(digit0[3]),
    .I2(digit0[1]),
    .O(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT89_1322 )
  );
  LUT5 #(
    .INIT ( 32'h7B7F7A7F ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT811  (
    .I0(digit0[6]),
    .I1(digit0[0]),
    .I2(digit0[4]),
    .I3(digit0[5]),
    .I4(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT89_1322 ),
    .O(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT810_1323 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFAAA8 ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT812  (
    .I0(digit0[0]),
    .I1(digit0[1]),
    .I2(digit0[2]),
    .I3(digit0[3]),
    .I4(digit0[7]),
    .I5(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT810_1323 ),
    .O(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT811_1324 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT813  (
    .I0(\display/display_cnt [0]),
    .I1(\display/display_cnt [1]),
    .I2(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT85_1318 ),
    .I3(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT82_1315 ),
    .I4(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT88_1321 ),
    .I5(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT811_1324 ),
    .O(\display/display_cnt[1]_digit3[7]_wide_mux_216_OUT<7> )
  );
  IBUF   ascii_7_IBUF (
    .I(ascii[7]),
    .O(ascii_7_IBUF_0)
  );
  IBUF   ascii_6_IBUF (
    .I(ascii[6]),
    .O(ascii_6_IBUF_1)
  );
  IBUF   ascii_5_IBUF (
    .I(ascii[5]),
    .O(ascii_5_IBUF_2)
  );
  IBUF   ascii_4_IBUF (
    .I(ascii[4]),
    .O(ascii_4_IBUF_3)
  );
  IBUF   ascii_3_IBUF (
    .I(ascii[3]),
    .O(ascii_3_IBUF_4)
  );
  IBUF   ascii_2_IBUF (
    .I(ascii[2]),
    .O(ascii_2_IBUF_5)
  );
  IBUF   ascii_1_IBUF (
    .I(ascii[1]),
    .O(ascii_1_IBUF_6)
  );
  IBUF   ascii_0_IBUF (
    .I(ascii[0]),
    .O(ascii_0_IBUF_7)
  );
  IBUF   dsn_IBUF (
    .I(dsn),
    .O(dsn_IBUF_8)
  );
  IBUF   clearn_IBUF (
    .I(clearn),
    .O(clearn_IBUF_9)
  );
  IBUF   rstn_IBUF (
    .I(rstn),
    .O(rstn_IBUF_11)
  );
  OBUF   segments_7_OBUF (
    .I(\display/segments [7]),
    .O(segments[7])
  );
  OBUF   segments_6_OBUF (
    .I(\display/segments [6]),
    .O(segments[6])
  );
  OBUF   segments_5_OBUF (
    .I(\display/segments [5]),
    .O(segments[5])
  );
  OBUF   segments_4_OBUF (
    .I(\display/segments [4]),
    .O(segments[4])
  );
  OBUF   segments_3_OBUF (
    .I(\display/segments [3]),
    .O(segments[3])
  );
  OBUF   segments_2_OBUF (
    .I(\display/segments [2]),
    .O(segments[2])
  );
  OBUF   segments_1_OBUF (
    .I(\display/segments [1]),
    .O(segments[1])
  );
  OBUF   segments_0_OBUF (
    .I(\display/segments [0]),
    .O(segments[0])
  );
  OBUF   digit_select_3_OBUF (
    .I(\display/digit_select [3]),
    .O(digit_select[3])
  );
  OBUF   digit_select_2_OBUF (
    .I(\display/digit_select [2]),
    .O(digit_select[2])
  );
  OBUF   digit_select_1_OBUF (
    .I(\display/digit_select [1]),
    .O(digit_select[1])
  );
  OBUF   digit_select_0_OBUF (
    .I(\display/digit_select [0]),
    .O(digit_select[0])
  );
  OBUF   leds_7_OBUF (
    .I(\four_hz/counter [22]),
    .O(leds[7])
  );
  OBUF   leds_6_OBUF (
    .I(init_276),
    .O(leds[6])
  );
  OBUF   leds_5_OBUF (
    .I(leds_5_OBUF_337),
    .O(leds[5])
  );
  OBUF   leds_4_OBUF (
    .I(buf_ptr[4]),
    .O(leds[4])
  );
  OBUF   leds_3_OBUF (
    .I(buf_ptr[3]),
    .O(leds[3])
  );
  OBUF   leds_2_OBUF (
    .I(buf_ptr[2]),
    .O(leds[2])
  );
  OBUF   leds_1_OBUF (
    .I(buf_ptr[1]),
    .O(leds[1])
  );
  OBUF   leds_0_OBUF (
    .I(buf_ptr[0]),
    .O(leds[0])
  );
  FDR   init (
    .C(clk_BUFGP_10),
    .D(init_glue_set),
    .R(_n0344),
    .Q(init_276)
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \four_hz/Mcount_counter_cy<1>_rt  (
    .I0(\four_hz/counter [1]),
    .O(\four_hz/Mcount_counter_cy<1>_rt_1358 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \four_hz/Mcount_counter_cy<2>_rt  (
    .I0(\four_hz/counter [2]),
    .O(\four_hz/Mcount_counter_cy<2>_rt_1359 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \four_hz/Mcount_counter_cy<3>_rt  (
    .I0(\four_hz/counter [3]),
    .O(\four_hz/Mcount_counter_cy<3>_rt_1360 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \four_hz/Mcount_counter_cy<4>_rt  (
    .I0(\four_hz/counter [4]),
    .O(\four_hz/Mcount_counter_cy<4>_rt_1361 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \four_hz/Mcount_counter_cy<5>_rt  (
    .I0(\four_hz/counter [5]),
    .O(\four_hz/Mcount_counter_cy<5>_rt_1362 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \four_hz/Mcount_counter_cy<6>_rt  (
    .I0(\four_hz/counter [6]),
    .O(\four_hz/Mcount_counter_cy<6>_rt_1363 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \four_hz/Mcount_counter_cy<7>_rt  (
    .I0(\four_hz/counter [7]),
    .O(\four_hz/Mcount_counter_cy<7>_rt_1364 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \four_hz/Mcount_counter_cy<8>_rt  (
    .I0(\four_hz/counter [8]),
    .O(\four_hz/Mcount_counter_cy<8>_rt_1365 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \four_hz/Mcount_counter_cy<9>_rt  (
    .I0(\four_hz/counter [9]),
    .O(\four_hz/Mcount_counter_cy<9>_rt_1366 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \four_hz/Mcount_counter_cy<10>_rt  (
    .I0(\four_hz/counter [10]),
    .O(\four_hz/Mcount_counter_cy<10>_rt_1367 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \four_hz/Mcount_counter_cy<11>_rt  (
    .I0(\four_hz/counter [11]),
    .O(\four_hz/Mcount_counter_cy<11>_rt_1368 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \four_hz/Mcount_counter_cy<12>_rt  (
    .I0(\four_hz/counter [12]),
    .O(\four_hz/Mcount_counter_cy<12>_rt_1369 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \four_hz/Mcount_counter_cy<13>_rt  (
    .I0(\four_hz/counter [13]),
    .O(\four_hz/Mcount_counter_cy<13>_rt_1370 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \four_hz/Mcount_counter_cy<14>_rt  (
    .I0(\four_hz/counter [14]),
    .O(\four_hz/Mcount_counter_cy<14>_rt_1371 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \four_hz/Mcount_counter_cy<15>_rt  (
    .I0(\four_hz/counter [15]),
    .O(\four_hz/Mcount_counter_cy<15>_rt_1372 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \four_hz/Mcount_counter_cy<16>_rt  (
    .I0(\four_hz/counter [16]),
    .O(\four_hz/Mcount_counter_cy<16>_rt_1373 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \four_hz/Mcount_counter_cy<17>_rt  (
    .I0(\four_hz/counter [17]),
    .O(\four_hz/Mcount_counter_cy<17>_rt_1374 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \four_hz/Mcount_counter_cy<18>_rt  (
    .I0(\four_hz/counter [18]),
    .O(\four_hz/Mcount_counter_cy<18>_rt_1375 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \four_hz/Mcount_counter_cy<19>_rt  (
    .I0(\four_hz/counter [19]),
    .O(\four_hz/Mcount_counter_cy<19>_rt_1376 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \four_hz/Mcount_counter_cy<20>_rt  (
    .I0(\four_hz/counter [20]),
    .O(\four_hz/Mcount_counter_cy<20>_rt_1377 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \four_hz/Mcount_counter_cy<21>_rt  (
    .I0(\four_hz/counter [21]),
    .O(\four_hz/Mcount_counter_cy<21>_rt_1378 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \four_hz/Mcount_counter_xor<22>_rt  (
    .I0(\four_hz/counter [22]),
    .O(\four_hz/Mcount_counter_xor<22>_rt_1379 )
  );
  LUT3 #(
    .INIT ( 8'hF7 ))
  \Mmux_buf_len[4]_GND_1_o_select_124_OUT31_SW0  (
    .I0(buf_len[2]),
    .I1(buf_ptr[2]),
    .I2(GND_1_o_GND_1_o_equal_89_o),
    .O(N56)
  );
  LUT6 #(
    .INIT ( 64'hF2F22222F3F23322 ))
  \Mmux_buf_len[4]_GND_1_o_select_124_OUT33  (
    .I0(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT17 ),
    .I1(\Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT6 ),
    .I2(\Mmux_buf_len[4]_GND_1_o_select_124_OUT31 ),
    .I3(\Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT61_1104 ),
    .I4(\buf_ptr[4]_buf_len[4]_LessThan_53_o721 ),
    .I5(N56),
    .O(\buf_len[4]_GND_1_o_select_124_OUT<2> )
  );
  LUT6 #(
    .INIT ( 64'h4444444444444544 ))
  \Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT105  (
    .I0(\Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT6 ),
    .I1(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT102 ),
    .I2(GND_1_o_GND_1_o_equal_89_o),
    .I3(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT103_1228 ),
    .I4(GND_1_o_GND_1_o_equal_84_o),
    .I5(\buf_ptr[4]_buf_len[4]_LessThan_53_o26 ),
    .O(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT104_1229 )
  );
  LUT6 #(
    .INIT ( 64'h4444444444444544 ))
  \Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT144  (
    .I0(\Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT6 ),
    .I1(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT141 ),
    .I2(GND_1_o_GND_1_o_equal_89_o),
    .I3(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT142_1231 ),
    .I4(GND_1_o_GND_1_o_equal_84_o),
    .I5(\buf_ptr[4]_buf_len[4]_LessThan_53_o26 ),
    .O(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT143_1232 )
  );
  LUT6 #(
    .INIT ( 64'h4444444444444544 ))
  \Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT164  (
    .I0(\Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT6 ),
    .I1(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT161 ),
    .I2(GND_1_o_GND_1_o_equal_89_o),
    .I3(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT162_1234 ),
    .I4(GND_1_o_GND_1_o_equal_84_o),
    .I5(\buf_ptr[4]_buf_len[4]_LessThan_53_o26 ),
    .O(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT163_1235 )
  );
  LUT6 #(
    .INIT ( 64'h4444444444444544 ))
  \Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT24  (
    .I0(\Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT6 ),
    .I1(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT21 ),
    .I2(GND_1_o_GND_1_o_equal_89_o),
    .I3(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT22_1237 ),
    .I4(GND_1_o_GND_1_o_equal_84_o),
    .I5(\buf_ptr[4]_buf_len[4]_LessThan_53_o26 ),
    .O(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT23_1238 )
  );
  LUT6 #(
    .INIT ( 64'h4444444444444544 ))
  \Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT44  (
    .I0(\Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT6 ),
    .I1(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT41 ),
    .I2(GND_1_o_GND_1_o_equal_89_o),
    .I3(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT42_1240 ),
    .I4(GND_1_o_GND_1_o_equal_84_o),
    .I5(\buf_ptr[4]_buf_len[4]_LessThan_53_o26 ),
    .O(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT43_1241 )
  );
  LUT6 #(
    .INIT ( 64'h4444444444444544 ))
  \Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT64  (
    .I0(\Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT6 ),
    .I1(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT61 ),
    .I2(GND_1_o_GND_1_o_equal_89_o),
    .I3(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT62_1243 ),
    .I4(GND_1_o_GND_1_o_equal_84_o),
    .I5(\buf_ptr[4]_buf_len[4]_LessThan_53_o26 ),
    .O(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT63_1244 )
  );
  LUT6 #(
    .INIT ( 64'h4444444444444544 ))
  \Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT84  (
    .I0(\Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT6 ),
    .I1(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT81 ),
    .I2(GND_1_o_GND_1_o_equal_89_o),
    .I3(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT82_1246 ),
    .I4(GND_1_o_GND_1_o_equal_84_o),
    .I5(\buf_ptr[4]_buf_len[4]_LessThan_53_o26 ),
    .O(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT83_1247 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT10221_SW0_SW0  (
    .I0(buf_len[1]),
    .I1(buf_len[0]),
    .O(N58)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT10221  (
    .I0(N58),
    .I1(GND_1_o_GND_1_o_equal_77_o),
    .I2(\buf_ptr[4]_buf_len[4]_equal_68_o ),
    .I3(\buf_ptr[4]_buf_len[4]_LessThan_53_o1_1413 ),
    .I4(GND_1_o_GND_1_o_equal_84_o),
    .I5(GND_1_o_GND_1_o_equal_89_o),
    .O(\Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT10221_1119 )
  );
  LUT6 #(
    .INIT ( 64'hFFF3FEF2EFE3EEE2 ))
  \Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT125  (
    .I0(\Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT12 ),
    .I1(\Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT6 ),
    .I2(\GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT<5> ),
    .I3(N61),
    .I4(N60),
    .I5(N62),
    .O(\buf_len[4]_ascii_buf[2][7]_select_121_OUT<5> )
  );
  LUT6 #(
    .INIT ( 64'hFAF3FAFAAA33AAAA ))
  \Mmux_buf_len[4]_GND_1_o_select_124_OUT23  (
    .I0(N64),
    .I1(N65),
    .I2(\Mmux_buf_len[4]_GND_1_o_select_124_OUT2 ),
    .I3(GND_1_o_GND_1_o_equal_89_o),
    .I4(\Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT61_1104 ),
    .I5(\buf_ptr[4]_buf_len[4]_LessThan_53_o721 ),
    .O(\buf_len[4]_GND_1_o_select_124_OUT<1> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFEEEEE000 ))
  \Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT66  (
    .I0(buf_len[1]),
    .I1(buf_len[0]),
    .I2(\buf_ptr[4]_buf_len[4]_LessThan_53_o721 ),
    .I3(\GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT<5> ),
    .I4(\Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT65_1203 ),
    .I5(\Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT64_1202 ),
    .O(\buf_len[4]_ascii_buf[0][7]_select_123_OUT<5> )
  );
  LUT6 #(
    .INIT ( 64'h0000000000002814 ))
  GND_1_o_GND_1_o_equal_77_o6 (
    .I0(_n0272[3]),
    .I1(buf_len[0]),
    .I2(buf_ptr_0_2_1406),
    .I3(buf_ptr[2]),
    .I4(N26),
    .I5(GND_1_o_GND_1_o_equal_77_o61),
    .O(GND_1_o_GND_1_o_equal_77_o)
  );
  LUT6 #(
    .INIT ( 64'h0000000000008241 ))
  \buf_ptr[4]_buf_len[4]_equal_68_o5  (
    .I0(buf_len[3]),
    .I1(buf_len[1]),
    .I2(buf_ptr_1_3_1410),
    .I3(buf_ptr[3]),
    .I4(N42),
    .I5(GND_1_o_GND_1_o_equal_77_o1_1098),
    .O(\buf_ptr[4]_buf_len[4]_equal_68_o )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT611  (
    .I0(GND_1_o_GND_1_o_equal_77_o),
    .I1(\buf_ptr[4]_buf_len[4]_equal_68_o ),
    .I2(\buf_ptr[4]_buf_len[4]_LessThan_53_o1_1413 ),
    .I3(GND_1_o_GND_1_o_equal_84_o),
    .O(\Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT61_1104 )
  );
  LUT5 #(
    .INIT ( 32'hEEEFEEEE ))
  \Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT68_SW0  (
    .I0(buf_len[4]),
    .I1(buf_len[3]),
    .I2(buf_ptr[4]),
    .I3(buf_ptr[3]),
    .I4(N10),
    .O(N72)
  );
  LUT6 #(
    .INIT ( 64'h0000003300000032 ))
  \Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT68  (
    .I0(digit1[5]),
    .I1(N72),
    .I2(GND_1_o_GND_1_o_equal_84_o),
    .I3(\buf_ptr[4]_buf_len[4]_equal_68_o ),
    .I4(GND_1_o_GND_1_o_equal_77_o),
    .I5(GND_1_o_GND_1_o_equal_89_o),
    .O(\Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT68_1194 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \buf_ptr[4]_buf_len[4]_LessThan_53_o7211  (
    .I0(GND_1_o_GND_1_o_equal_77_o),
    .I1(\buf_ptr[4]_buf_len[4]_equal_68_o ),
    .I2(\buf_ptr[4]_buf_len[4]_LessThan_53_o ),
    .I3(GND_1_o_GND_1_o_equal_84_o),
    .O(\buf_ptr[4]_buf_len[4]_LessThan_53_o721 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT11_SW0_SW0  (
    .I0(buf_ptr[3]),
    .I1(buf_ptr[2]),
    .O(N74)
  );
  LUT6 #(
    .INIT ( 64'hFEFEFEFEFFFFFF00 ))
  \Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT11  (
    .I0(buf_ptr[4]),
    .I1(buf_ptr[1]),
    .I2(N74),
    .I3(GND_1_o_GND_1_o_equal_77_o),
    .I4(\buf_ptr[4]_buf_len[4]_equal_68_o ),
    .I5(\buf_ptr[4]_buf_len[4]_LessThan_53_o ),
    .O(\Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT11_1100 )
  );
  LUT6 #(
    .INIT ( 64'h0000000300000002 ))
  \Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT65  (
    .I0(digit0[5]),
    .I1(GND_1_o_GND_1_o_equal_77_o),
    .I2(\buf_ptr[4]_buf_len[4]_equal_68_o ),
    .I3(\buf_ptr[4]_buf_len[4]_LessThan_53_o ),
    .I4(GND_1_o_GND_1_o_equal_84_o),
    .I5(GND_1_o_GND_1_o_equal_89_o),
    .O(\Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT65_1203 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_921  (
    .I0(ascii_buf_31[7]),
    .I1(ascii_buf_31[15]),
    .I2(ascii_buf_31[31]),
    .I3(ascii_buf_31[23]),
    .I4(buf_ptr[0]),
    .I5(\buf_ptr[4]_GND_1_o_add_86_OUT<1> ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_921_864 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_822  (
    .I0(ascii_buf_31[39]),
    .I1(ascii_buf_31[47]),
    .I2(ascii_buf_31[63]),
    .I3(ascii_buf_31[55]),
    .I4(buf_ptr[0]),
    .I5(\buf_ptr[4]_GND_1_o_add_86_OUT<1> ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_822_865 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_821  (
    .I0(ascii_buf_31[71]),
    .I1(ascii_buf_31[79]),
    .I2(ascii_buf_31[95]),
    .I3(ascii_buf_31[87]),
    .I4(buf_ptr[0]),
    .I5(\buf_ptr[4]_GND_1_o_add_86_OUT<1> ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_821_866 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_77  (
    .I0(ascii_buf_31[103]),
    .I1(ascii_buf_31[111]),
    .I2(ascii_buf_31[127]),
    .I3(ascii_buf_31[119]),
    .I4(buf_ptr[0]),
    .I5(\buf_ptr[4]_GND_1_o_add_86_OUT<1> ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_77_867 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_918  (
    .I0(ascii_buf_31[6]),
    .I1(ascii_buf_31[14]),
    .I2(ascii_buf_31[30]),
    .I3(ascii_buf_31[22]),
    .I4(buf_ptr[0]),
    .I5(\buf_ptr[4]_GND_1_o_add_86_OUT<1> ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_918_874 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_819  (
    .I0(ascii_buf_31[38]),
    .I1(ascii_buf_31[46]),
    .I2(ascii_buf_31[62]),
    .I3(ascii_buf_31[54]),
    .I4(buf_ptr[0]),
    .I5(\buf_ptr[4]_GND_1_o_add_86_OUT<1> ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_819_875 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_818  (
    .I0(ascii_buf_31[70]),
    .I1(ascii_buf_31[78]),
    .I2(ascii_buf_31[94]),
    .I3(ascii_buf_31[86]),
    .I4(buf_ptr[0]),
    .I5(\buf_ptr[4]_GND_1_o_add_86_OUT<1> ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_818_876 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_76  (
    .I0(ascii_buf_31[102]),
    .I1(ascii_buf_31[110]),
    .I2(ascii_buf_31[126]),
    .I3(ascii_buf_31[118]),
    .I4(buf_ptr[0]),
    .I5(\buf_ptr[4]_GND_1_o_add_86_OUT<1> ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_76_877 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_912  (
    .I0(ascii_buf_31[4]),
    .I1(ascii_buf_31[12]),
    .I2(ascii_buf_31[28]),
    .I3(ascii_buf_31[20]),
    .I4(buf_ptr[0]),
    .I5(\buf_ptr[4]_GND_1_o_add_86_OUT<1> ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_912_894 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_813  (
    .I0(ascii_buf_31[36]),
    .I1(ascii_buf_31[44]),
    .I2(ascii_buf_31[60]),
    .I3(ascii_buf_31[52]),
    .I4(buf_ptr[0]),
    .I5(\buf_ptr[4]_GND_1_o_add_86_OUT<1> ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_813_895 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_812  (
    .I0(ascii_buf_31[68]),
    .I1(ascii_buf_31[76]),
    .I2(ascii_buf_31[92]),
    .I3(ascii_buf_31[84]),
    .I4(buf_ptr[0]),
    .I5(\buf_ptr[4]_GND_1_o_add_86_OUT<1> ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_812_896 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_74  (
    .I0(ascii_buf_31[100]),
    .I1(ascii_buf_31[108]),
    .I2(ascii_buf_31[124]),
    .I3(ascii_buf_31[116]),
    .I4(buf_ptr[0]),
    .I5(\buf_ptr[4]_GND_1_o_add_86_OUT<1> ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_74_897 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_99  (
    .I0(ascii_buf_31[3]),
    .I1(ascii_buf_31[11]),
    .I2(ascii_buf_31[27]),
    .I3(ascii_buf_31[19]),
    .I4(buf_ptr[0]),
    .I5(\buf_ptr[4]_GND_1_o_add_86_OUT<1> ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_99_904 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_810  (
    .I0(ascii_buf_31[35]),
    .I1(ascii_buf_31[43]),
    .I2(ascii_buf_31[59]),
    .I3(ascii_buf_31[51]),
    .I4(buf_ptr[0]),
    .I5(\buf_ptr[4]_GND_1_o_add_86_OUT<1> ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_810_905 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_89  (
    .I0(ascii_buf_31[67]),
    .I1(ascii_buf_31[75]),
    .I2(ascii_buf_31[91]),
    .I3(ascii_buf_31[83]),
    .I4(buf_ptr[0]),
    .I5(\buf_ptr[4]_GND_1_o_add_86_OUT<1> ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_89_906 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_73  (
    .I0(ascii_buf_31[99]),
    .I1(ascii_buf_31[107]),
    .I2(ascii_buf_31[123]),
    .I3(ascii_buf_31[115]),
    .I4(buf_ptr[0]),
    .I5(\buf_ptr[4]_GND_1_o_add_86_OUT<1> ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_73_907 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_96  (
    .I0(ascii_buf_31[2]),
    .I1(ascii_buf_31[10]),
    .I2(ascii_buf_31[26]),
    .I3(ascii_buf_31[18]),
    .I4(buf_ptr[0]),
    .I5(\buf_ptr[4]_GND_1_o_add_86_OUT<1> ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_96_914 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_87  (
    .I0(ascii_buf_31[34]),
    .I1(ascii_buf_31[42]),
    .I2(ascii_buf_31[58]),
    .I3(ascii_buf_31[50]),
    .I4(buf_ptr[0]),
    .I5(\buf_ptr[4]_GND_1_o_add_86_OUT<1> ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_87_915 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_86  (
    .I0(ascii_buf_31[66]),
    .I1(ascii_buf_31[74]),
    .I2(ascii_buf_31[90]),
    .I3(ascii_buf_31[82]),
    .I4(buf_ptr[0]),
    .I5(\buf_ptr[4]_GND_1_o_add_86_OUT<1> ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_86_916 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_72  (
    .I0(ascii_buf_31[98]),
    .I1(ascii_buf_31[106]),
    .I2(ascii_buf_31[122]),
    .I3(ascii_buf_31[114]),
    .I4(buf_ptr[0]),
    .I5(\buf_ptr[4]_GND_1_o_add_86_OUT<1> ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_72_917 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_93  (
    .I0(ascii_buf_31[1]),
    .I1(ascii_buf_31[9]),
    .I2(ascii_buf_31[25]),
    .I3(ascii_buf_31[17]),
    .I4(buf_ptr[0]),
    .I5(\buf_ptr[4]_GND_1_o_add_86_OUT<1> ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_93_924 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_84  (
    .I0(ascii_buf_31[33]),
    .I1(ascii_buf_31[41]),
    .I2(ascii_buf_31[57]),
    .I3(ascii_buf_31[49]),
    .I4(buf_ptr[0]),
    .I5(\buf_ptr[4]_GND_1_o_add_86_OUT<1> ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_84_925 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_83  (
    .I0(ascii_buf_31[65]),
    .I1(ascii_buf_31[73]),
    .I2(ascii_buf_31[89]),
    .I3(ascii_buf_31[81]),
    .I4(buf_ptr[0]),
    .I5(\buf_ptr[4]_GND_1_o_add_86_OUT<1> ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_83_926 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_71  (
    .I0(ascii_buf_31[97]),
    .I1(ascii_buf_31[105]),
    .I2(ascii_buf_31[121]),
    .I3(ascii_buf_31[113]),
    .I4(buf_ptr[0]),
    .I5(\buf_ptr[4]_GND_1_o_add_86_OUT<1> ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_71_927 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_9  (
    .I0(ascii_buf_31[0]),
    .I1(ascii_buf_31[8]),
    .I2(ascii_buf_31[24]),
    .I3(ascii_buf_31[16]),
    .I4(buf_ptr[0]),
    .I5(\buf_ptr[4]_GND_1_o_add_86_OUT<1> ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_9_934 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_81  (
    .I0(ascii_buf_31[32]),
    .I1(ascii_buf_31[40]),
    .I2(ascii_buf_31[56]),
    .I3(ascii_buf_31[48]),
    .I4(buf_ptr[0]),
    .I5(\buf_ptr[4]_GND_1_o_add_86_OUT<1> ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_81_935 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_8  (
    .I0(ascii_buf_31[64]),
    .I1(ascii_buf_31[72]),
    .I2(ascii_buf_31[88]),
    .I3(ascii_buf_31[80]),
    .I4(buf_ptr[0]),
    .I5(\buf_ptr[4]_GND_1_o_add_86_OUT<1> ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_8_936 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_7  (
    .I0(ascii_buf_31[96]),
    .I1(ascii_buf_31[104]),
    .I2(ascii_buf_31[120]),
    .I3(ascii_buf_31[112]),
    .I4(buf_ptr[0]),
    .I5(\buf_ptr[4]_GND_1_o_add_86_OUT<1> ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_7_937 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_107  (
    .I0(ascii_buf_31[135]),
    .I1(ascii_buf_31[143]),
    .I2(ascii_buf_31[159]),
    .I3(ascii_buf_31[151]),
    .I4(buf_ptr[0]),
    .I5(\buf_ptr[4]_GND_1_o_add_86_OUT<1> ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_107_859 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_923  (
    .I0(ascii_buf_31[167]),
    .I1(ascii_buf_31[175]),
    .I2(ascii_buf_31[191]),
    .I3(ascii_buf_31[183]),
    .I4(buf_ptr[0]),
    .I5(\buf_ptr[4]_GND_1_o_add_86_OUT<1> ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_923_860 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_922  (
    .I0(ascii_buf_31[199]),
    .I1(ascii_buf_31[207]),
    .I2(ascii_buf_31[223]),
    .I3(ascii_buf_31[215]),
    .I4(buf_ptr[0]),
    .I5(\buf_ptr[4]_GND_1_o_add_86_OUT<1> ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_922_861 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_823  (
    .I0(ascii_buf_31[231]),
    .I1(ascii_buf_31[239]),
    .I2(ascii_buf_31[255]),
    .I3(ascii_buf_31[247]),
    .I4(buf_ptr[0]),
    .I5(\buf_ptr[4]_GND_1_o_add_86_OUT<1> ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_823_862 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_106  (
    .I0(ascii_buf_31[134]),
    .I1(ascii_buf_31[142]),
    .I2(ascii_buf_31[158]),
    .I3(ascii_buf_31[150]),
    .I4(buf_ptr[0]),
    .I5(\buf_ptr[4]_GND_1_o_add_86_OUT<1> ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_106_869 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_920  (
    .I0(ascii_buf_31[166]),
    .I1(ascii_buf_31[174]),
    .I2(ascii_buf_31[190]),
    .I3(ascii_buf_31[182]),
    .I4(buf_ptr[0]),
    .I5(\buf_ptr[4]_GND_1_o_add_86_OUT<1> ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_920_870 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_919  (
    .I0(ascii_buf_31[198]),
    .I1(ascii_buf_31[206]),
    .I2(ascii_buf_31[222]),
    .I3(ascii_buf_31[214]),
    .I4(buf_ptr[0]),
    .I5(\buf_ptr[4]_GND_1_o_add_86_OUT<1> ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_919_871 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_820  (
    .I0(ascii_buf_31[230]),
    .I1(ascii_buf_31[238]),
    .I2(ascii_buf_31[254]),
    .I3(ascii_buf_31[246]),
    .I4(buf_ptr[0]),
    .I5(\buf_ptr[4]_GND_1_o_add_86_OUT<1> ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_820_872 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_104  (
    .I0(ascii_buf_31[132]),
    .I1(ascii_buf_31[140]),
    .I2(ascii_buf_31[156]),
    .I3(ascii_buf_31[148]),
    .I4(buf_ptr[0]),
    .I5(\buf_ptr[4]_GND_1_o_add_86_OUT<1> ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_104_889 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_914  (
    .I0(ascii_buf_31[164]),
    .I1(ascii_buf_31[172]),
    .I2(ascii_buf_31[188]),
    .I3(ascii_buf_31[180]),
    .I4(buf_ptr[0]),
    .I5(\buf_ptr[4]_GND_1_o_add_86_OUT<1> ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_914_890 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_913  (
    .I0(ascii_buf_31[196]),
    .I1(ascii_buf_31[204]),
    .I2(ascii_buf_31[220]),
    .I3(ascii_buf_31[212]),
    .I4(buf_ptr[0]),
    .I5(\buf_ptr[4]_GND_1_o_add_86_OUT<1> ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_913_891 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_814  (
    .I0(ascii_buf_31[228]),
    .I1(ascii_buf_31[236]),
    .I2(ascii_buf_31[252]),
    .I3(ascii_buf_31[244]),
    .I4(buf_ptr[0]),
    .I5(\buf_ptr[4]_GND_1_o_add_86_OUT<1> ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_814_892 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_103  (
    .I0(ascii_buf_31[131]),
    .I1(ascii_buf_31[139]),
    .I2(ascii_buf_31[155]),
    .I3(ascii_buf_31[147]),
    .I4(buf_ptr[0]),
    .I5(\buf_ptr[4]_GND_1_o_add_86_OUT<1> ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_103_899 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_911  (
    .I0(ascii_buf_31[163]),
    .I1(ascii_buf_31[171]),
    .I2(ascii_buf_31[187]),
    .I3(ascii_buf_31[179]),
    .I4(buf_ptr[0]),
    .I5(\buf_ptr[4]_GND_1_o_add_86_OUT<1> ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_911_900 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_910  (
    .I0(ascii_buf_31[195]),
    .I1(ascii_buf_31[203]),
    .I2(ascii_buf_31[219]),
    .I3(ascii_buf_31[211]),
    .I4(buf_ptr[0]),
    .I5(\buf_ptr[4]_GND_1_o_add_86_OUT<1> ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_910_901 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_811  (
    .I0(ascii_buf_31[227]),
    .I1(ascii_buf_31[235]),
    .I2(ascii_buf_31[251]),
    .I3(ascii_buf_31[243]),
    .I4(buf_ptr[0]),
    .I5(\buf_ptr[4]_GND_1_o_add_86_OUT<1> ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_811_902 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_102  (
    .I0(ascii_buf_31[130]),
    .I1(ascii_buf_31[138]),
    .I2(ascii_buf_31[154]),
    .I3(ascii_buf_31[146]),
    .I4(buf_ptr[0]),
    .I5(\buf_ptr[4]_GND_1_o_add_86_OUT<1> ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_102_909 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_98  (
    .I0(ascii_buf_31[162]),
    .I1(ascii_buf_31[170]),
    .I2(ascii_buf_31[186]),
    .I3(ascii_buf_31[178]),
    .I4(buf_ptr[0]),
    .I5(\buf_ptr[4]_GND_1_o_add_86_OUT<1> ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_98_910 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_97  (
    .I0(ascii_buf_31[194]),
    .I1(ascii_buf_31[202]),
    .I2(ascii_buf_31[218]),
    .I3(ascii_buf_31[210]),
    .I4(buf_ptr[0]),
    .I5(\buf_ptr[4]_GND_1_o_add_86_OUT<1> ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_97_911 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_88  (
    .I0(ascii_buf_31[226]),
    .I1(ascii_buf_31[234]),
    .I2(ascii_buf_31[250]),
    .I3(ascii_buf_31[242]),
    .I4(buf_ptr[0]),
    .I5(\buf_ptr[4]_GND_1_o_add_86_OUT<1> ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_88_912 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_101  (
    .I0(ascii_buf_31[129]),
    .I1(ascii_buf_31[137]),
    .I2(ascii_buf_31[153]),
    .I3(ascii_buf_31[145]),
    .I4(buf_ptr[0]),
    .I5(\buf_ptr[4]_GND_1_o_add_86_OUT<1> ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_101_919 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_95  (
    .I0(ascii_buf_31[161]),
    .I1(ascii_buf_31[169]),
    .I2(ascii_buf_31[185]),
    .I3(ascii_buf_31[177]),
    .I4(buf_ptr[0]),
    .I5(\buf_ptr[4]_GND_1_o_add_86_OUT<1> ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_95_920 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_94  (
    .I0(ascii_buf_31[193]),
    .I1(ascii_buf_31[201]),
    .I2(ascii_buf_31[217]),
    .I3(ascii_buf_31[209]),
    .I4(buf_ptr[0]),
    .I5(\buf_ptr[4]_GND_1_o_add_86_OUT<1> ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_94_921 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_85  (
    .I0(ascii_buf_31[225]),
    .I1(ascii_buf_31[233]),
    .I2(ascii_buf_31[249]),
    .I3(ascii_buf_31[241]),
    .I4(buf_ptr[0]),
    .I5(\buf_ptr[4]_GND_1_o_add_86_OUT<1> ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_85_922 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_10  (
    .I0(ascii_buf_31[128]),
    .I1(ascii_buf_31[136]),
    .I2(ascii_buf_31[152]),
    .I3(ascii_buf_31[144]),
    .I4(buf_ptr[0]),
    .I5(\buf_ptr[4]_GND_1_o_add_86_OUT<1> ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_10_929 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_92  (
    .I0(ascii_buf_31[160]),
    .I1(ascii_buf_31[168]),
    .I2(ascii_buf_31[184]),
    .I3(ascii_buf_31[176]),
    .I4(buf_ptr[0]),
    .I5(\buf_ptr[4]_GND_1_o_add_86_OUT<1> ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_92_930 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_91  (
    .I0(ascii_buf_31[192]),
    .I1(ascii_buf_31[200]),
    .I2(ascii_buf_31[216]),
    .I3(ascii_buf_31[208]),
    .I4(buf_ptr[0]),
    .I5(\buf_ptr[4]_GND_1_o_add_86_OUT<1> ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_91_931 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_82  (
    .I0(ascii_buf_31[224]),
    .I1(ascii_buf_31[232]),
    .I2(ascii_buf_31[248]),
    .I3(ascii_buf_31[240]),
    .I4(buf_ptr[0]),
    .I5(\buf_ptr[4]_GND_1_o_add_86_OUT<1> ),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_82_932 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_915  (
    .I0(ascii_buf_31[21]),
    .I1(ascii_buf_31[13]),
    .I2(ascii_buf_31[29]),
    .I3(ascii_buf_31[5]),
    .I4(buf_ptr_1_3_1410),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_915_1044 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_816  (
    .I0(ascii_buf_31[53]),
    .I1(ascii_buf_31[45]),
    .I2(ascii_buf_31[61]),
    .I3(ascii_buf_31[37]),
    .I4(buf_ptr_1_3_1410),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_816_1045 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_815  (
    .I0(ascii_buf_31[85]),
    .I1(ascii_buf_31[77]),
    .I2(ascii_buf_31[93]),
    .I3(ascii_buf_31[69]),
    .I4(buf_ptr_1_3_1410),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_815_1046 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_75  (
    .I0(ascii_buf_31[117]),
    .I1(ascii_buf_31[109]),
    .I2(ascii_buf_31[125]),
    .I3(ascii_buf_31[101]),
    .I4(buf_ptr_1_3_1410),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_75_1047 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_915  (
    .I0(ascii_buf_31[13]),
    .I1(ascii_buf_31[29]),
    .I2(ascii_buf_31[21]),
    .I3(ascii_buf_31[5]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_915_964 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_816  (
    .I0(ascii_buf_31[45]),
    .I1(ascii_buf_31[61]),
    .I2(ascii_buf_31[53]),
    .I3(ascii_buf_31[37]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_816_965 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_815  (
    .I0(ascii_buf_31[77]),
    .I1(ascii_buf_31[93]),
    .I2(ascii_buf_31[85]),
    .I3(ascii_buf_31[69]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_815_966 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_75  (
    .I0(ascii_buf_31[109]),
    .I1(ascii_buf_31[125]),
    .I2(ascii_buf_31[117]),
    .I3(ascii_buf_31[101]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_75_967 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_105  (
    .I0(ascii_buf_31[149]),
    .I1(ascii_buf_31[141]),
    .I2(ascii_buf_31[157]),
    .I3(ascii_buf_31[133]),
    .I4(buf_ptr_1_3_1410),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_105_1039 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_917  (
    .I0(ascii_buf_31[181]),
    .I1(ascii_buf_31[173]),
    .I2(ascii_buf_31[189]),
    .I3(ascii_buf_31[165]),
    .I4(buf_ptr_1_3_1410),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_917_1040 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_916  (
    .I0(ascii_buf_31[213]),
    .I1(ascii_buf_31[205]),
    .I2(ascii_buf_31[221]),
    .I3(ascii_buf_31[197]),
    .I4(buf_ptr_1_3_1410),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_916_1041 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_817  (
    .I0(ascii_buf_31[245]),
    .I1(ascii_buf_31[237]),
    .I2(ascii_buf_31[253]),
    .I3(ascii_buf_31[229]),
    .I4(buf_ptr_1_3_1410),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_817_1042 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_105  (
    .I0(ascii_buf_31[141]),
    .I1(ascii_buf_31[157]),
    .I2(ascii_buf_31[149]),
    .I3(ascii_buf_31[133]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_105_959 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_917  (
    .I0(ascii_buf_31[173]),
    .I1(ascii_buf_31[189]),
    .I2(ascii_buf_31[181]),
    .I3(ascii_buf_31[165]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_917_960 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_916  (
    .I0(ascii_buf_31[205]),
    .I1(ascii_buf_31[221]),
    .I2(ascii_buf_31[213]),
    .I3(ascii_buf_31[197]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_916_961 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_817  (
    .I0(ascii_buf_31[237]),
    .I1(ascii_buf_31[253]),
    .I2(ascii_buf_31[245]),
    .I3(ascii_buf_31[229]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_817_962 )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT1111_SW0  (
    .I0(buf_ptr[4]),
    .I1(buf_ptr[3]),
    .I2(buf_ptr[2]),
    .O(N76)
  );
  LUT6 #(
    .INIT ( 64'hFAFAFFFFFAFAFFCC ))
  \Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT11  (
    .I0(N76),
    .I1(GND_1_o_GND_1_o_equal_77_o),
    .I2(N48),
    .I3(\buf_ptr[4]_buf_len[4]_equal_68_o ),
    .I4(\buf_ptr[4]_buf_len[4]_LessThan_53_o ),
    .I5(GND_1_o_GND_1_o_equal_84_o),
    .O(\Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT11_1099 )
  );
  LUT5 #(
    .INIT ( 32'hFFEFEFEF ))
  \Mmux_buf_len[4]_GND_1_o_select_124_OUT42_SW1  (
    .I0(buf_len[3]),
    .I1(buf_len[4]),
    .I2(buf_ptr[3]),
    .I3(GND_1_o_GND_1_o_equal_89_o6),
    .I4(GND_1_o_GND_1_o_equal_77_o61),
    .O(N79)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000207 ))
  \Mmux_buf_len[4]_GND_1_o_select_124_OUT42  (
    .I0(GND_1_o_GND_1_o_equal_77_o1_1098),
    .I1(N79),
    .I2(GND_1_o_GND_1_o_equal_77_o),
    .I3(N78),
    .I4(\buf_ptr[4]_buf_len[4]_equal_68_o ),
    .I5(\buf_ptr[4]_buf_len[4]_LessThan_53_o ),
    .O(\Mmux_buf_len[4]_GND_1_o_select_124_OUT41_1196 )
  );
  LUT5 #(
    .INIT ( 32'hFFEFEFEF ))
  \Mmux_buf_len[4]_GND_1_o_select_124_OUT52_SW1  (
    .I0(buf_len[3]),
    .I1(buf_len[4]),
    .I2(buf_ptr[4]),
    .I3(GND_1_o_GND_1_o_equal_89_o6),
    .I4(GND_1_o_GND_1_o_equal_77_o61),
    .O(N82)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000207 ))
  \Mmux_buf_len[4]_GND_1_o_select_124_OUT52  (
    .I0(GND_1_o_GND_1_o_equal_77_o1_1098),
    .I1(N82),
    .I2(GND_1_o_GND_1_o_equal_77_o),
    .I3(N81),
    .I4(\buf_ptr[4]_buf_len[4]_equal_68_o ),
    .I5(\buf_ptr[4]_buf_len[4]_LessThan_53_o ),
    .O(\Mmux_buf_len[4]_GND_1_o_select_124_OUT51_1198 )
  );
  LUT3 #(
    .INIT ( 8'hC5 ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_2_f7_3_SW0  (
    .I0(\buf_ptr[4]_buf_len[4]_equal_68_o ),
    .I1(_n0269),
    .I2(\buf_ptr[4]_buf_len[4]_LessThan_53_o ),
    .O(N87)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF22022000 ))
  \Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT104  (
    .I0(\Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT13 ),
    .I1(N87),
    .I2(GND_1_o_GND_1_o_sub_69_OUT[4]),
    .I3(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_34_893 ),
    .I4(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_44_888 ),
    .I5(\Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT102_1208 ),
    .O(\buf_len[4]_ascii_buf[2][7]_select_121_OUT<4> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF22022000 ))
  \Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT144  (
    .I0(\Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT13 ),
    .I1(N87),
    .I2(GND_1_o_GND_1_o_sub_69_OUT[4]),
    .I3(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_36_873 ),
    .I4(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_46_868 ),
    .I5(\Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT142_1211 ),
    .O(\buf_len[4]_ascii_buf[2][7]_select_121_OUT<6> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF22022000 ))
  \Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT164  (
    .I0(\Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT13 ),
    .I1(N87),
    .I2(GND_1_o_GND_1_o_sub_69_OUT[4]),
    .I3(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_37_863 ),
    .I4(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_47_858 ),
    .I5(\Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT162_1214 ),
    .O(\buf_len[4]_ascii_buf[2][7]_select_121_OUT<7> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF22022000 ))
  \Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT24  (
    .I0(\Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT13 ),
    .I1(N87),
    .I2(GND_1_o_GND_1_o_sub_69_OUT[4]),
    .I3(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_3_933 ),
    .I4(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_4_928 ),
    .I5(\Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT22_1217 ),
    .O(\buf_len[4]_ascii_buf[2][7]_select_121_OUT<0> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF22022000 ))
  \Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT44  (
    .I0(\Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT13 ),
    .I1(N87),
    .I2(GND_1_o_GND_1_o_sub_69_OUT[4]),
    .I3(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_31_923 ),
    .I4(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_41_918 ),
    .I5(\Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT42_1220 ),
    .O(\buf_len[4]_ascii_buf[2][7]_select_121_OUT<1> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF22022000 ))
  \Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT64  (
    .I0(\Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT13 ),
    .I1(N87),
    .I2(GND_1_o_GND_1_o_sub_69_OUT[4]),
    .I3(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_32_913 ),
    .I4(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_42_908 ),
    .I5(\Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT62_1223 ),
    .O(\buf_len[4]_ascii_buf[2][7]_select_121_OUT<2> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF22022000 ))
  \Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT84  (
    .I0(\Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT13 ),
    .I1(N87),
    .I2(GND_1_o_GND_1_o_sub_69_OUT[4]),
    .I3(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_33_903 ),
    .I4(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_43_898 ),
    .I5(\Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT82_1226 ),
    .O(\buf_len[4]_ascii_buf[2][7]_select_121_OUT<3> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFEAAFEAAFEAA ))
  \Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT69_SW1  (
    .I0(\Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT63_1192 ),
    .I1(buf_len[0]),
    .I2(buf_len[1]),
    .I3(buf_len[2]),
    .I4(\Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT64_1193 ),
    .I5(\buf_ptr[4]_buf_len[4]_LessThan_53_o ),
    .O(N102)
  );
  LUT6 #(
    .INIT ( 64'hFAFAFAEEF0FACCEE ))
  \Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT69  (
    .I0(\Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT6 ),
    .I1(N101),
    .I2(N102),
    .I3(\buf_ptr[4]_buf_len[4]_LessThan_53_o26 ),
    .I4(\Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT68_1194 ),
    .I5(\GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT<5> ),
    .O(\buf_len[4]_ascii_buf[1][7]_select_122_OUT<5> )
  );
  LUT6 #(
    .INIT ( 64'hFFEEFFEEFF00FF0E ))
  \Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT64  (
    .I0(buf_len[3]),
    .I1(buf_len[4]),
    .I2(GND_1_o_GND_1_o_equal_84_o),
    .I3(\Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT63_1201 ),
    .I4(\buf_ptr[4]_buf_len[4]_LessThan_53_o26 ),
    .I5(\GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT<5> ),
    .O(\Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT64_1202 )
  );
  LUT6 #(
    .INIT ( 64'hE0E0E0E0E0000000 ))
  \Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT125_SW0  (
    .I0(buf_len[1]),
    .I1(buf_len[0]),
    .I2(buf_len[2]),
    .I3(\buf_ptr[4]_buf_len[4]_LessThan_53_o ),
    .I4(_n0269),
    .I5(\Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT123 ),
    .O(N60)
  );
  LUT6 #(
    .INIT ( 64'hA8A8A8A8A8A8A800 ))
  \Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT125_SW2  (
    .I0(buf_len[2]),
    .I1(buf_len[0]),
    .I2(buf_len[1]),
    .I3(\buf_ptr[4]_buf_len[4]_equal_68_o ),
    .I4(\buf_ptr[4]_buf_len[4]_LessThan_53_o ),
    .I5(\Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT123 ),
    .O(N62)
  );
  LUT6 #(
    .INIT ( 64'h2228111444420001 ))
  GND_1_o_GND_1_o_equal_89_o62 (
    .I0(buf_len[3]),
    .I1(buf_len[2]),
    .I2(buf_len[0]),
    .I3(buf_len[1]),
    .I4(buf_ptr_3_1_1407),
    .I5(buf_ptr_2_1_1408),
    .O(GND_1_o_GND_1_o_equal_89_o61_1185)
  );
  LUT6 #(
    .INIT ( 64'hFEBAAABA00100010 ))
  \Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT101  (
    .I0(\Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT6 ),
    .I1(buf_len[1]),
    .I2(buf_len[0]),
    .I3(buf_len[2]),
    .I4(GND_1_o_GND_1_o_equal_89_o),
    .I5(\Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT61_1104 ),
    .O(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT101_1116 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT121  (
    .I0(N104),
    .I1(GND_1_o_GND_1_o_equal_77_o),
    .I2(\buf_ptr[4]_buf_len[4]_equal_68_o ),
    .I3(\buf_ptr[4]_buf_len[4]_LessThan_53_o ),
    .I4(GND_1_o_GND_1_o_equal_84_o),
    .I5(GND_1_o_GND_1_o_equal_89_o),
    .O(\Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT12_out1 )
  );
  LUT6 #(
    .INIT ( 64'h0000000E000E000E ))
  \Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT63_SW0  (
    .I0(Madd__n0267_cy[1]),
    .I1(\Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT6 ),
    .I2(buf_ptr[3]),
    .I3(buf_ptr[2]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(N106)
  );
  LUT6 #(
    .INIT ( 64'hAAFFAAFEAAAAAAAA ))
  \Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT63  (
    .I0(\Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT6 ),
    .I1(buf_len[3]),
    .I2(buf_len[4]),
    .I3(buf_ptr[4]),
    .I4(N10),
    .I5(N106),
    .O(\Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT63_1201 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_921  (
    .I0(ascii_buf_31[23]),
    .I1(ascii_buf_31[15]),
    .I2(ascii_buf_31[31]),
    .I3(ascii_buf_31[7]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_921_1024 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_822  (
    .I0(ascii_buf_31[55]),
    .I1(ascii_buf_31[47]),
    .I2(ascii_buf_31[63]),
    .I3(ascii_buf_31[39]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_822_1025 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_821  (
    .I0(ascii_buf_31[87]),
    .I1(ascii_buf_31[79]),
    .I2(ascii_buf_31[95]),
    .I3(ascii_buf_31[71]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_821_1026 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_77  (
    .I0(ascii_buf_31[119]),
    .I1(ascii_buf_31[111]),
    .I2(ascii_buf_31[127]),
    .I3(ascii_buf_31[103]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_77_1027 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_918  (
    .I0(ascii_buf_31[22]),
    .I1(ascii_buf_31[14]),
    .I2(ascii_buf_31[30]),
    .I3(ascii_buf_31[6]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_918_1034 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_819  (
    .I0(ascii_buf_31[54]),
    .I1(ascii_buf_31[46]),
    .I2(ascii_buf_31[62]),
    .I3(ascii_buf_31[38]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_819_1035 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_818  (
    .I0(ascii_buf_31[86]),
    .I1(ascii_buf_31[78]),
    .I2(ascii_buf_31[94]),
    .I3(ascii_buf_31[70]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_818_1036 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_76  (
    .I0(ascii_buf_31[118]),
    .I1(ascii_buf_31[110]),
    .I2(ascii_buf_31[126]),
    .I3(ascii_buf_31[102]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_76_1037 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_912  (
    .I0(ascii_buf_31[20]),
    .I1(ascii_buf_31[12]),
    .I2(ascii_buf_31[28]),
    .I3(ascii_buf_31[4]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_912_1054 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_813  (
    .I0(ascii_buf_31[52]),
    .I1(ascii_buf_31[44]),
    .I2(ascii_buf_31[60]),
    .I3(ascii_buf_31[36]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_813_1055 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_812  (
    .I0(ascii_buf_31[84]),
    .I1(ascii_buf_31[76]),
    .I2(ascii_buf_31[92]),
    .I3(ascii_buf_31[68]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_812_1056 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_74  (
    .I0(ascii_buf_31[116]),
    .I1(ascii_buf_31[108]),
    .I2(ascii_buf_31[124]),
    .I3(ascii_buf_31[100]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_74_1057 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_99  (
    .I0(ascii_buf_31[19]),
    .I1(ascii_buf_31[11]),
    .I2(ascii_buf_31[27]),
    .I3(ascii_buf_31[3]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_99_1064 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_810  (
    .I0(ascii_buf_31[51]),
    .I1(ascii_buf_31[43]),
    .I2(ascii_buf_31[59]),
    .I3(ascii_buf_31[35]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_810_1065 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_89  (
    .I0(ascii_buf_31[83]),
    .I1(ascii_buf_31[75]),
    .I2(ascii_buf_31[91]),
    .I3(ascii_buf_31[67]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_89_1066 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_73  (
    .I0(ascii_buf_31[115]),
    .I1(ascii_buf_31[107]),
    .I2(ascii_buf_31[123]),
    .I3(ascii_buf_31[99]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_73_1067 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_96  (
    .I0(ascii_buf_31[18]),
    .I1(ascii_buf_31[10]),
    .I2(ascii_buf_31[26]),
    .I3(ascii_buf_31[2]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_96_1074 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_87  (
    .I0(ascii_buf_31[50]),
    .I1(ascii_buf_31[42]),
    .I2(ascii_buf_31[58]),
    .I3(ascii_buf_31[34]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_87_1075 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_86  (
    .I0(ascii_buf_31[82]),
    .I1(ascii_buf_31[74]),
    .I2(ascii_buf_31[90]),
    .I3(ascii_buf_31[66]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_86_1076 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_72  (
    .I0(ascii_buf_31[114]),
    .I1(ascii_buf_31[106]),
    .I2(ascii_buf_31[122]),
    .I3(ascii_buf_31[98]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_72_1077 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_93  (
    .I0(ascii_buf_31[17]),
    .I1(ascii_buf_31[9]),
    .I2(ascii_buf_31[25]),
    .I3(ascii_buf_31[1]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_93_1084 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_84  (
    .I0(ascii_buf_31[49]),
    .I1(ascii_buf_31[41]),
    .I2(ascii_buf_31[57]),
    .I3(ascii_buf_31[33]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_84_1085 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_83  (
    .I0(ascii_buf_31[81]),
    .I1(ascii_buf_31[73]),
    .I2(ascii_buf_31[89]),
    .I3(ascii_buf_31[65]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_83_1086 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_71  (
    .I0(ascii_buf_31[113]),
    .I1(ascii_buf_31[105]),
    .I2(ascii_buf_31[121]),
    .I3(ascii_buf_31[97]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_71_1087 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_9  (
    .I0(ascii_buf_31[16]),
    .I1(ascii_buf_31[8]),
    .I2(ascii_buf_31[24]),
    .I3(ascii_buf_31[0]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_9_1094 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_81  (
    .I0(ascii_buf_31[48]),
    .I1(ascii_buf_31[40]),
    .I2(ascii_buf_31[56]),
    .I3(ascii_buf_31[32]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_81_1095 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_8  (
    .I0(ascii_buf_31[80]),
    .I1(ascii_buf_31[72]),
    .I2(ascii_buf_31[88]),
    .I3(ascii_buf_31[64]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_8_1096 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_7  (
    .I0(ascii_buf_31[112]),
    .I1(ascii_buf_31[104]),
    .I2(ascii_buf_31[120]),
    .I3(ascii_buf_31[96]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_7_1097 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_915  (
    .I0(ascii_buf_31[5]),
    .I1(ascii_buf_31[29]),
    .I2(ascii_buf_31[13]),
    .I3(ascii_buf_31[21]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_915_884 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_816  (
    .I0(ascii_buf_31[37]),
    .I1(ascii_buf_31[61]),
    .I2(ascii_buf_31[45]),
    .I3(ascii_buf_31[53]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_816_885 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_815  (
    .I0(ascii_buf_31[69]),
    .I1(ascii_buf_31[93]),
    .I2(ascii_buf_31[77]),
    .I3(ascii_buf_31[85]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_815_886 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_75  (
    .I0(ascii_buf_31[101]),
    .I1(ascii_buf_31[125]),
    .I2(ascii_buf_31[109]),
    .I3(ascii_buf_31[117]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_75_887 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_921  (
    .I0(ascii_buf_31[15]),
    .I1(ascii_buf_31[31]),
    .I2(ascii_buf_31[23]),
    .I3(ascii_buf_31[7]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_921_944 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_822  (
    .I0(ascii_buf_31[47]),
    .I1(ascii_buf_31[63]),
    .I2(ascii_buf_31[55]),
    .I3(ascii_buf_31[39]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_822_945 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_821  (
    .I0(ascii_buf_31[79]),
    .I1(ascii_buf_31[95]),
    .I2(ascii_buf_31[87]),
    .I3(ascii_buf_31[71]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_821_946 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_77  (
    .I0(ascii_buf_31[111]),
    .I1(ascii_buf_31[127]),
    .I2(ascii_buf_31[119]),
    .I3(ascii_buf_31[103]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_77_947 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_918  (
    .I0(ascii_buf_31[14]),
    .I1(ascii_buf_31[30]),
    .I2(ascii_buf_31[22]),
    .I3(ascii_buf_31[6]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_918_954 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_819  (
    .I0(ascii_buf_31[46]),
    .I1(ascii_buf_31[62]),
    .I2(ascii_buf_31[54]),
    .I3(ascii_buf_31[38]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_819_955 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_818  (
    .I0(ascii_buf_31[78]),
    .I1(ascii_buf_31[94]),
    .I2(ascii_buf_31[86]),
    .I3(ascii_buf_31[70]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_818_956 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_76  (
    .I0(ascii_buf_31[110]),
    .I1(ascii_buf_31[126]),
    .I2(ascii_buf_31[118]),
    .I3(ascii_buf_31[102]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_76_957 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_912  (
    .I0(ascii_buf_31[12]),
    .I1(ascii_buf_31[28]),
    .I2(ascii_buf_31[20]),
    .I3(ascii_buf_31[4]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_912_974 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_813  (
    .I0(ascii_buf_31[44]),
    .I1(ascii_buf_31[60]),
    .I2(ascii_buf_31[52]),
    .I3(ascii_buf_31[36]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_813_975 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_812  (
    .I0(ascii_buf_31[76]),
    .I1(ascii_buf_31[92]),
    .I2(ascii_buf_31[84]),
    .I3(ascii_buf_31[68]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_812_976 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_74  (
    .I0(ascii_buf_31[108]),
    .I1(ascii_buf_31[124]),
    .I2(ascii_buf_31[116]),
    .I3(ascii_buf_31[100]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_74_977 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_99  (
    .I0(ascii_buf_31[11]),
    .I1(ascii_buf_31[27]),
    .I2(ascii_buf_31[19]),
    .I3(ascii_buf_31[3]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_99_984 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_810  (
    .I0(ascii_buf_31[43]),
    .I1(ascii_buf_31[59]),
    .I2(ascii_buf_31[51]),
    .I3(ascii_buf_31[35]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_810_985 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_89  (
    .I0(ascii_buf_31[75]),
    .I1(ascii_buf_31[91]),
    .I2(ascii_buf_31[83]),
    .I3(ascii_buf_31[67]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_89_986 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_73  (
    .I0(ascii_buf_31[107]),
    .I1(ascii_buf_31[123]),
    .I2(ascii_buf_31[115]),
    .I3(ascii_buf_31[99]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_73_987 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_96  (
    .I0(ascii_buf_31[10]),
    .I1(ascii_buf_31[26]),
    .I2(ascii_buf_31[18]),
    .I3(ascii_buf_31[2]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_96_994 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_87  (
    .I0(ascii_buf_31[42]),
    .I1(ascii_buf_31[58]),
    .I2(ascii_buf_31[50]),
    .I3(ascii_buf_31[34]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_87_995 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_86  (
    .I0(ascii_buf_31[74]),
    .I1(ascii_buf_31[90]),
    .I2(ascii_buf_31[82]),
    .I3(ascii_buf_31[66]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_86_996 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_72  (
    .I0(ascii_buf_31[106]),
    .I1(ascii_buf_31[122]),
    .I2(ascii_buf_31[114]),
    .I3(ascii_buf_31[98]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_72_997 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_93  (
    .I0(ascii_buf_31[9]),
    .I1(ascii_buf_31[25]),
    .I2(ascii_buf_31[17]),
    .I3(ascii_buf_31[1]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_93_1004 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_84  (
    .I0(ascii_buf_31[41]),
    .I1(ascii_buf_31[57]),
    .I2(ascii_buf_31[49]),
    .I3(ascii_buf_31[33]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_84_1005 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_83  (
    .I0(ascii_buf_31[73]),
    .I1(ascii_buf_31[89]),
    .I2(ascii_buf_31[81]),
    .I3(ascii_buf_31[65]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_83_1006 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_71  (
    .I0(ascii_buf_31[105]),
    .I1(ascii_buf_31[121]),
    .I2(ascii_buf_31[113]),
    .I3(ascii_buf_31[97]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_71_1007 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_9  (
    .I0(ascii_buf_31[8]),
    .I1(ascii_buf_31[24]),
    .I2(ascii_buf_31[16]),
    .I3(ascii_buf_31[0]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_9_1014 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_81  (
    .I0(ascii_buf_31[40]),
    .I1(ascii_buf_31[56]),
    .I2(ascii_buf_31[48]),
    .I3(ascii_buf_31[32]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_81_1015 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_8  (
    .I0(ascii_buf_31[72]),
    .I1(ascii_buf_31[88]),
    .I2(ascii_buf_31[80]),
    .I3(ascii_buf_31[64]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_8_1016 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_7  (
    .I0(ascii_buf_31[104]),
    .I1(ascii_buf_31[120]),
    .I2(ascii_buf_31[112]),
    .I3(ascii_buf_31[96]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_7_1017 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_107  (
    .I0(ascii_buf_31[151]),
    .I1(ascii_buf_31[143]),
    .I2(ascii_buf_31[159]),
    .I3(ascii_buf_31[135]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_107_1019 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_923  (
    .I0(ascii_buf_31[183]),
    .I1(ascii_buf_31[175]),
    .I2(ascii_buf_31[191]),
    .I3(ascii_buf_31[167]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_923_1020 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_922  (
    .I0(ascii_buf_31[215]),
    .I1(ascii_buf_31[207]),
    .I2(ascii_buf_31[223]),
    .I3(ascii_buf_31[199]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_922_1021 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_823  (
    .I0(ascii_buf_31[247]),
    .I1(ascii_buf_31[239]),
    .I2(ascii_buf_31[255]),
    .I3(ascii_buf_31[231]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_823_1022 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_106  (
    .I0(ascii_buf_31[150]),
    .I1(ascii_buf_31[142]),
    .I2(ascii_buf_31[158]),
    .I3(ascii_buf_31[134]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_106_1029 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_920  (
    .I0(ascii_buf_31[182]),
    .I1(ascii_buf_31[174]),
    .I2(ascii_buf_31[190]),
    .I3(ascii_buf_31[166]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_920_1030 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_919  (
    .I0(ascii_buf_31[214]),
    .I1(ascii_buf_31[206]),
    .I2(ascii_buf_31[222]),
    .I3(ascii_buf_31[198]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_919_1031 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_820  (
    .I0(ascii_buf_31[246]),
    .I1(ascii_buf_31[238]),
    .I2(ascii_buf_31[254]),
    .I3(ascii_buf_31[230]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_820_1032 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_104  (
    .I0(ascii_buf_31[148]),
    .I1(ascii_buf_31[140]),
    .I2(ascii_buf_31[156]),
    .I3(ascii_buf_31[132]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_104_1049 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_914  (
    .I0(ascii_buf_31[180]),
    .I1(ascii_buf_31[172]),
    .I2(ascii_buf_31[188]),
    .I3(ascii_buf_31[164]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_914_1050 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_913  (
    .I0(ascii_buf_31[212]),
    .I1(ascii_buf_31[204]),
    .I2(ascii_buf_31[220]),
    .I3(ascii_buf_31[196]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_913_1051 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_814  (
    .I0(ascii_buf_31[244]),
    .I1(ascii_buf_31[236]),
    .I2(ascii_buf_31[252]),
    .I3(ascii_buf_31[228]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_814_1052 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_103  (
    .I0(ascii_buf_31[147]),
    .I1(ascii_buf_31[139]),
    .I2(ascii_buf_31[155]),
    .I3(ascii_buf_31[131]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_103_1059 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_911  (
    .I0(ascii_buf_31[179]),
    .I1(ascii_buf_31[171]),
    .I2(ascii_buf_31[187]),
    .I3(ascii_buf_31[163]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_911_1060 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_910  (
    .I0(ascii_buf_31[211]),
    .I1(ascii_buf_31[203]),
    .I2(ascii_buf_31[219]),
    .I3(ascii_buf_31[195]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_910_1061 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_811  (
    .I0(ascii_buf_31[243]),
    .I1(ascii_buf_31[235]),
    .I2(ascii_buf_31[251]),
    .I3(ascii_buf_31[227]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_811_1062 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_102  (
    .I0(ascii_buf_31[146]),
    .I1(ascii_buf_31[138]),
    .I2(ascii_buf_31[154]),
    .I3(ascii_buf_31[130]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_102_1069 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_98  (
    .I0(ascii_buf_31[178]),
    .I1(ascii_buf_31[170]),
    .I2(ascii_buf_31[186]),
    .I3(ascii_buf_31[162]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_98_1070 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_97  (
    .I0(ascii_buf_31[210]),
    .I1(ascii_buf_31[202]),
    .I2(ascii_buf_31[218]),
    .I3(ascii_buf_31[194]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_97_1071 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_88  (
    .I0(ascii_buf_31[242]),
    .I1(ascii_buf_31[234]),
    .I2(ascii_buf_31[250]),
    .I3(ascii_buf_31[226]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_88_1072 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_101  (
    .I0(ascii_buf_31[145]),
    .I1(ascii_buf_31[137]),
    .I2(ascii_buf_31[153]),
    .I3(ascii_buf_31[129]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_101_1079 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_95  (
    .I0(ascii_buf_31[177]),
    .I1(ascii_buf_31[169]),
    .I2(ascii_buf_31[185]),
    .I3(ascii_buf_31[161]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_95_1080 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_94  (
    .I0(ascii_buf_31[209]),
    .I1(ascii_buf_31[201]),
    .I2(ascii_buf_31[217]),
    .I3(ascii_buf_31[193]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_94_1081 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_85  (
    .I0(ascii_buf_31[241]),
    .I1(ascii_buf_31[233]),
    .I2(ascii_buf_31[249]),
    .I3(ascii_buf_31[225]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_85_1082 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_10  (
    .I0(ascii_buf_31[144]),
    .I1(ascii_buf_31[136]),
    .I2(ascii_buf_31[152]),
    .I3(ascii_buf_31[128]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_10_1089 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_92  (
    .I0(ascii_buf_31[176]),
    .I1(ascii_buf_31[168]),
    .I2(ascii_buf_31[184]),
    .I3(ascii_buf_31[160]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_92_1090 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_91  (
    .I0(ascii_buf_31[208]),
    .I1(ascii_buf_31[200]),
    .I2(ascii_buf_31[216]),
    .I3(ascii_buf_31[192]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_91_1091 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_82  (
    .I0(ascii_buf_31[240]),
    .I1(ascii_buf_31[232]),
    .I2(ascii_buf_31[248]),
    .I3(ascii_buf_31[224]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_85_OUT_82_1092 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_105  (
    .I0(ascii_buf_31[133]),
    .I1(ascii_buf_31[157]),
    .I2(ascii_buf_31[141]),
    .I3(ascii_buf_31[149]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_105_879 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_917  (
    .I0(ascii_buf_31[165]),
    .I1(ascii_buf_31[189]),
    .I2(ascii_buf_31[173]),
    .I3(ascii_buf_31[181]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_917_880 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_916  (
    .I0(ascii_buf_31[197]),
    .I1(ascii_buf_31[221]),
    .I2(ascii_buf_31[205]),
    .I3(ascii_buf_31[213]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_916_881 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_817  (
    .I0(ascii_buf_31[229]),
    .I1(ascii_buf_31[253]),
    .I2(ascii_buf_31[237]),
    .I3(ascii_buf_31[245]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_69_OUT_817_882 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_107  (
    .I0(ascii_buf_31[143]),
    .I1(ascii_buf_31[159]),
    .I2(ascii_buf_31[151]),
    .I3(ascii_buf_31[135]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_107_939 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_923  (
    .I0(ascii_buf_31[175]),
    .I1(ascii_buf_31[191]),
    .I2(ascii_buf_31[183]),
    .I3(ascii_buf_31[167]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_923_940 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_922  (
    .I0(ascii_buf_31[207]),
    .I1(ascii_buf_31[223]),
    .I2(ascii_buf_31[215]),
    .I3(ascii_buf_31[199]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_922_941 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_823  (
    .I0(ascii_buf_31[239]),
    .I1(ascii_buf_31[255]),
    .I2(ascii_buf_31[247]),
    .I3(ascii_buf_31[231]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_823_942 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_106  (
    .I0(ascii_buf_31[142]),
    .I1(ascii_buf_31[158]),
    .I2(ascii_buf_31[150]),
    .I3(ascii_buf_31[134]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_106_949 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_920  (
    .I0(ascii_buf_31[174]),
    .I1(ascii_buf_31[190]),
    .I2(ascii_buf_31[182]),
    .I3(ascii_buf_31[166]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_920_950 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_919  (
    .I0(ascii_buf_31[206]),
    .I1(ascii_buf_31[222]),
    .I2(ascii_buf_31[214]),
    .I3(ascii_buf_31[198]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_919_951 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_820  (
    .I0(ascii_buf_31[238]),
    .I1(ascii_buf_31[254]),
    .I2(ascii_buf_31[246]),
    .I3(ascii_buf_31[230]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_820_952 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_104  (
    .I0(ascii_buf_31[140]),
    .I1(ascii_buf_31[156]),
    .I2(ascii_buf_31[148]),
    .I3(ascii_buf_31[132]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_104_969 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_914  (
    .I0(ascii_buf_31[172]),
    .I1(ascii_buf_31[188]),
    .I2(ascii_buf_31[180]),
    .I3(ascii_buf_31[164]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_914_970 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_913  (
    .I0(ascii_buf_31[204]),
    .I1(ascii_buf_31[220]),
    .I2(ascii_buf_31[212]),
    .I3(ascii_buf_31[196]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_913_971 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_814  (
    .I0(ascii_buf_31[236]),
    .I1(ascii_buf_31[252]),
    .I2(ascii_buf_31[244]),
    .I3(ascii_buf_31[228]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_814_972 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_103  (
    .I0(ascii_buf_31[139]),
    .I1(ascii_buf_31[155]),
    .I2(ascii_buf_31[147]),
    .I3(ascii_buf_31[131]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_103_979 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_911  (
    .I0(ascii_buf_31[171]),
    .I1(ascii_buf_31[187]),
    .I2(ascii_buf_31[179]),
    .I3(ascii_buf_31[163]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_911_980 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_910  (
    .I0(ascii_buf_31[203]),
    .I1(ascii_buf_31[219]),
    .I2(ascii_buf_31[211]),
    .I3(ascii_buf_31[195]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_910_981 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_811  (
    .I0(ascii_buf_31[235]),
    .I1(ascii_buf_31[251]),
    .I2(ascii_buf_31[243]),
    .I3(ascii_buf_31[227]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_811_982 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_102  (
    .I0(ascii_buf_31[138]),
    .I1(ascii_buf_31[154]),
    .I2(ascii_buf_31[146]),
    .I3(ascii_buf_31[130]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_102_989 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_98  (
    .I0(ascii_buf_31[170]),
    .I1(ascii_buf_31[186]),
    .I2(ascii_buf_31[178]),
    .I3(ascii_buf_31[162]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_98_990 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_97  (
    .I0(ascii_buf_31[202]),
    .I1(ascii_buf_31[218]),
    .I2(ascii_buf_31[210]),
    .I3(ascii_buf_31[194]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_97_991 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_88  (
    .I0(ascii_buf_31[234]),
    .I1(ascii_buf_31[250]),
    .I2(ascii_buf_31[242]),
    .I3(ascii_buf_31[226]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_88_992 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_101  (
    .I0(ascii_buf_31[137]),
    .I1(ascii_buf_31[153]),
    .I2(ascii_buf_31[145]),
    .I3(ascii_buf_31[129]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_101_999 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_95  (
    .I0(ascii_buf_31[169]),
    .I1(ascii_buf_31[185]),
    .I2(ascii_buf_31[177]),
    .I3(ascii_buf_31[161]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_95_1000 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_94  (
    .I0(ascii_buf_31[201]),
    .I1(ascii_buf_31[217]),
    .I2(ascii_buf_31[209]),
    .I3(ascii_buf_31[193]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_94_1001 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_85  (
    .I0(ascii_buf_31[233]),
    .I1(ascii_buf_31[249]),
    .I2(ascii_buf_31[241]),
    .I3(ascii_buf_31[225]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_85_1002 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_10  (
    .I0(ascii_buf_31[136]),
    .I1(ascii_buf_31[152]),
    .I2(ascii_buf_31[144]),
    .I3(ascii_buf_31[128]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_10_1009 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_92  (
    .I0(ascii_buf_31[168]),
    .I1(ascii_buf_31[184]),
    .I2(ascii_buf_31[176]),
    .I3(ascii_buf_31[160]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_92_1010 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_91  (
    .I0(ascii_buf_31[200]),
    .I1(ascii_buf_31[216]),
    .I2(ascii_buf_31[208]),
    .I3(ascii_buf_31[192]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_91_1011 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_82  (
    .I0(ascii_buf_31[232]),
    .I1(ascii_buf_31[248]),
    .I2(ascii_buf_31[240]),
    .I3(ascii_buf_31[224]),
    .I4(buf_ptr[1]),
    .I5(buf_ptr[0]),
    .O(\Mmux_GND_1_o_ascii_buf[31][7]_wide_mux_78_OUT_82_1012 )
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT69_SW0  (
    .I0(\Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT61 ),
    .I1(buf_len[3]),
    .I2(\Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT64_1193 ),
    .I3(\buf_ptr[4]_buf_len[4]_LessThan_53_o ),
    .O(N101)
  );
  LUT6 #(
    .INIT ( 64'hEFFFFEFFEEFFEEFF ))
  \Mmux_buf_len[4]_GND_1_o_select_124_OUT42_SW0  (
    .I0(buf_len[3]),
    .I1(buf_len[4]),
    .I2(buf_len[1]),
    .I3(buf_ptr[3]),
    .I4(buf_ptr[1]),
    .I5(GND_1_o_GND_1_o_equal_84_o6),
    .O(N78)
  );
  LUT6 #(
    .INIT ( 64'hEFFFFEFFEEFFEEFF ))
  \Mmux_buf_len[4]_GND_1_o_select_124_OUT52_SW0  (
    .I0(buf_len[3]),
    .I1(buf_len[4]),
    .I2(buf_len[1]),
    .I3(buf_ptr[4]),
    .I4(buf_ptr[1]),
    .I5(GND_1_o_GND_1_o_equal_84_o6),
    .O(N81)
  );
  MUXF7   \Mmux_buf_len[4]_GND_1_o_select_124_OUT11_SW1  (
    .I0(N108),
    .I1(N109),
    .S(GND_1_o_GND_1_o_equal_89_o),
    .O(N68)
  );
  LUT6 #(
    .INIT ( 64'h1C180C0814100400 ))
  \Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT103  (
    .I0(buf_len[0]),
    .I1(buf_len[1]),
    .I2(buf_len[2]),
    .I3(ascii_buf_31[244]),
    .I4(ascii_buf_31[228]),
    .I5(ascii_buf_31[236]),
    .O(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT102 )
  );
  LUT6 #(
    .INIT ( 64'h1C180C0814100400 ))
  \Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT142  (
    .I0(buf_len[0]),
    .I1(buf_len[1]),
    .I2(buf_len[2]),
    .I3(ascii_buf_31[246]),
    .I4(ascii_buf_31[230]),
    .I5(ascii_buf_31[238]),
    .O(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT141 )
  );
  LUT6 #(
    .INIT ( 64'h1C180C0814100400 ))
  \Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT162  (
    .I0(buf_len[0]),
    .I1(buf_len[1]),
    .I2(buf_len[2]),
    .I3(ascii_buf_31[247]),
    .I4(ascii_buf_31[231]),
    .I5(ascii_buf_31[239]),
    .O(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT161 )
  );
  LUT6 #(
    .INIT ( 64'h1C180C0814100400 ))
  \Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT22  (
    .I0(buf_len[0]),
    .I1(buf_len[1]),
    .I2(buf_len[2]),
    .I3(ascii_buf_31[240]),
    .I4(ascii_buf_31[224]),
    .I5(ascii_buf_31[232]),
    .O(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT21 )
  );
  LUT6 #(
    .INIT ( 64'h1C180C0814100400 ))
  \Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT42  (
    .I0(buf_len[0]),
    .I1(buf_len[1]),
    .I2(buf_len[2]),
    .I3(ascii_buf_31[241]),
    .I4(ascii_buf_31[225]),
    .I5(ascii_buf_31[233]),
    .O(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT41 )
  );
  LUT6 #(
    .INIT ( 64'h1C180C0814100400 ))
  \Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT62  (
    .I0(buf_len[0]),
    .I1(buf_len[1]),
    .I2(buf_len[2]),
    .I3(ascii_buf_31[242]),
    .I4(ascii_buf_31[226]),
    .I5(ascii_buf_31[234]),
    .O(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT61 )
  );
  LUT6 #(
    .INIT ( 64'h1C180C0814100400 ))
  \Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT82  (
    .I0(buf_len[0]),
    .I1(buf_len[1]),
    .I2(buf_len[2]),
    .I3(ascii_buf_31[243]),
    .I4(ascii_buf_31[227]),
    .I5(ascii_buf_31[235]),
    .O(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT81 )
  );
  LUT5 #(
    .INIT ( 32'h00000004 ))
  \buf_len[4]_Decoder_8_OUT<4><4>1  (
    .I0(buf_len[1]),
    .I1(buf_len[2]),
    .I2(buf_len[0]),
    .I3(buf_len[3]),
    .I4(buf_len[4]),
    .O(\buf_len[4]_Decoder_8_OUT<4> )
  );
  LUT6 #(
    .INIT ( 64'h6666666666606060 ))
  \Mmux_buf_len[4]_GND_1_o_select_124_OUT21  (
    .I0(buf_ptr[1]),
    .I1(buf_ptr[0]),
    .I2(\Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT6 ),
    .I3(buf_len[0]),
    .I4(buf_len[2]),
    .I5(buf_len[1]),
    .O(\Mmux_buf_len[4]_GND_1_o_select_124_OUT2 )
  );
  LUT6 #(
    .INIT ( 64'h2888888888888888 ))
  \Mmux_buf_len[4]_GND_1_o_select_124_OUT51  (
    .I0(\Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT6 ),
    .I1(buf_ptr[4]),
    .I2(buf_ptr[2]),
    .I3(buf_ptr[1]),
    .I4(buf_ptr[0]),
    .I5(buf_ptr[3]),
    .O(\Mmux_buf_len[4]_GND_1_o_select_124_OUT5 )
  );
  LUT5 #(
    .INIT ( 32'h6AAAAAAA ))
  \Mmux_buf_len[4]_GND_1_o_select_124_OUT53  (
    .I0(buf_ptr[4]),
    .I1(buf_ptr[2]),
    .I2(buf_ptr[1]),
    .I3(buf_ptr[0]),
    .I4(buf_ptr[3]),
    .O(\Mmux_buf_len[4]_GND_1_o_select_124_OUT52_1199 )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  _n03441 (
    .I0(clr_sreg[1]),
    .I1(clr_sreg[0]),
    .I2(rstn_IBUF_11),
    .O(_n0344)
  );
  LUT3 #(
    .INIT ( 8'h75 ))
  Reset_OR_DriverANDClockEnable1 (
    .I0(rstn_IBUF_11),
    .I1(clr_sreg[1]),
    .I2(clr_sreg[0]),
    .O(Reset_OR_DriverANDClockEnable)
  );
  LUT6 #(
    .INIT ( 64'hFF55FFFF75557575 ))
  _n0434_inv1 (
    .I0(rstn_IBUF_11),
    .I1(ds_sreg[1]),
    .I2(ds_sreg[0]),
    .I3(clr_sreg[1]),
    .I4(clr_sreg[0]),
    .I5(init_276),
    .O(_n0434_inv)
  );
  LUT5 #(
    .INIT ( 32'h1444FFFF ))
  \buf_len[4]_GND_1_o_mux_44_OUT<2>1  (
    .I0(init_276),
    .I1(buf_len[2]),
    .I2(buf_len[1]),
    .I3(buf_len[0]),
    .I4(rstn_IBUF_11),
    .O(\buf_len[4]_GND_1_o_mux_44_OUT<2>1_694 )
  );
  LUT5 #(
    .INIT ( 32'h14444444 ))
  \Mmux_buf_len[4]_GND_1_o_mux_44_OUT41  (
    .I0(init_276),
    .I1(buf_len[3]),
    .I2(buf_len[2]),
    .I3(buf_len[1]),
    .I4(buf_len[0]),
    .O(\buf_len[4]_GND_1_o_mux_44_OUT<3> )
  );
  LUT6 #(
    .INIT ( 64'h1444444444444444 ))
  \Mmux_buf_len[4]_GND_1_o_mux_44_OUT51  (
    .I0(init_276),
    .I1(buf_len[4]),
    .I2(buf_len[3]),
    .I3(buf_len[2]),
    .I4(buf_len[1]),
    .I5(buf_len[0]),
    .O(\buf_len[4]_GND_1_o_mux_44_OUT<4> )
  );
  LUT5 #(
    .INIT ( 32'h88A88808 ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<223>1  (
    .I0(rstn_IBUF_11),
    .I1(ascii_buf_31[223]),
    .I2(\buf_len[4]_Decoder_8_OUT<4> ),
    .I3(init_276),
    .I4(ascii_7_IBUF_0),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<223> )
  );
  LUT5 #(
    .INIT ( 32'h88A88808 ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<221>1  (
    .I0(rstn_IBUF_11),
    .I1(ascii_buf_31[221]),
    .I2(\buf_len[4]_Decoder_8_OUT<4> ),
    .I3(init_276),
    .I4(ascii_5_IBUF_2),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<221> )
  );
  LUT5 #(
    .INIT ( 32'h88A88808 ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<220>1  (
    .I0(rstn_IBUF_11),
    .I1(ascii_buf_31[220]),
    .I2(\buf_len[4]_Decoder_8_OUT<4> ),
    .I3(init_276),
    .I4(ascii_4_IBUF_3),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<220> )
  );
  LUT4 #(
    .INIT ( 16'h8880 ))
  \Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT104  (
    .I0(digit3[4]),
    .I1(buf_len[2]),
    .I2(buf_len[1]),
    .I3(buf_len[0]),
    .O(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT103_1228 )
  );
  LUT4 #(
    .INIT ( 16'h8880 ))
  \Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT143  (
    .I0(digit3[6]),
    .I1(buf_len[2]),
    .I2(buf_len[1]),
    .I3(buf_len[0]),
    .O(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT142_1231 )
  );
  LUT4 #(
    .INIT ( 16'h8880 ))
  \Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT163  (
    .I0(digit3[7]),
    .I1(buf_len[2]),
    .I2(buf_len[1]),
    .I3(buf_len[0]),
    .O(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT162_1234 )
  );
  LUT4 #(
    .INIT ( 16'h8880 ))
  \Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT23  (
    .I0(digit3[0]),
    .I1(buf_len[2]),
    .I2(buf_len[1]),
    .I3(buf_len[0]),
    .O(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT22_1237 )
  );
  LUT4 #(
    .INIT ( 16'h8880 ))
  \Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT43  (
    .I0(digit3[1]),
    .I1(buf_len[2]),
    .I2(buf_len[1]),
    .I3(buf_len[0]),
    .O(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT42_1240 )
  );
  LUT4 #(
    .INIT ( 16'h8880 ))
  \Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT63  (
    .I0(digit3[2]),
    .I1(buf_len[2]),
    .I2(buf_len[1]),
    .I3(buf_len[0]),
    .O(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT62_1243 )
  );
  LUT4 #(
    .INIT ( 16'h8880 ))
  \Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT83  (
    .I0(digit3[3]),
    .I1(buf_len[2]),
    .I2(buf_len[1]),
    .I3(buf_len[0]),
    .O(\Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT82_1246 )
  );
  LUT5 #(
    .INIT ( 32'h88A88808 ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<231>1  (
    .I0(rstn_IBUF_11),
    .I1(ascii_buf_31[231]),
    .I2(\buf_len[4]_Decoder_8_OUT<3> ),
    .I3(init_276),
    .I4(ascii_7_IBUF_0),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<231> )
  );
  LUT5 #(
    .INIT ( 32'h88A88808 ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<229>1  (
    .I0(rstn_IBUF_11),
    .I1(ascii_buf_31[229]),
    .I2(\buf_len[4]_Decoder_8_OUT<3> ),
    .I3(init_276),
    .I4(ascii_5_IBUF_2),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<229> )
  );
  LUT5 #(
    .INIT ( 32'h88A88808 ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<228>1  (
    .I0(rstn_IBUF_11),
    .I1(ascii_buf_31[228]),
    .I2(\buf_len[4]_Decoder_8_OUT<3> ),
    .I3(init_276),
    .I4(ascii_4_IBUF_3),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<228> )
  );
  LUT5 #(
    .INIT ( 32'h88A88808 ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<225>1  (
    .I0(rstn_IBUF_11),
    .I1(ascii_buf_31[225]),
    .I2(\buf_len[4]_Decoder_8_OUT<3> ),
    .I3(init_276),
    .I4(ascii_1_IBUF_6),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<225> )
  );
  LUT5 #(
    .INIT ( 32'h88A88808 ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<224>1  (
    .I0(rstn_IBUF_11),
    .I1(ascii_buf_31[224]),
    .I2(\buf_len[4]_Decoder_8_OUT<3> ),
    .I3(init_276),
    .I4(ascii_0_IBUF_7),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<224> )
  );
  LUT5 #(
    .INIT ( 32'h88A88808 ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<239>1  (
    .I0(rstn_IBUF_11),
    .I1(ascii_buf_31[239]),
    .I2(\buf_len[4]_Decoder_8_OUT<2> ),
    .I3(init_276),
    .I4(ascii_7_IBUF_0),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<239> )
  );
  LUT5 #(
    .INIT ( 32'h88A88808 ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<237>1  (
    .I0(rstn_IBUF_11),
    .I1(ascii_buf_31[237]),
    .I2(\buf_len[4]_Decoder_8_OUT<2> ),
    .I3(init_276),
    .I4(ascii_5_IBUF_2),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<237> )
  );
  LUT5 #(
    .INIT ( 32'h88A88808 ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<236>1  (
    .I0(rstn_IBUF_11),
    .I1(ascii_buf_31[236]),
    .I2(\buf_len[4]_Decoder_8_OUT<2> ),
    .I3(init_276),
    .I4(ascii_4_IBUF_3),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<236> )
  );
  LUT5 #(
    .INIT ( 32'h88A88808 ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<233>1  (
    .I0(rstn_IBUF_11),
    .I1(ascii_buf_31[233]),
    .I2(\buf_len[4]_Decoder_8_OUT<2> ),
    .I3(init_276),
    .I4(ascii_1_IBUF_6),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<233> )
  );
  LUT5 #(
    .INIT ( 32'h88A88808 ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<232>1  (
    .I0(rstn_IBUF_11),
    .I1(ascii_buf_31[232]),
    .I2(\buf_len[4]_Decoder_8_OUT<2> ),
    .I3(init_276),
    .I4(ascii_0_IBUF_7),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<232> )
  );
  LUT5 #(
    .INIT ( 32'h88A88808 ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<247>1  (
    .I0(rstn_IBUF_11),
    .I1(ascii_buf_31[247]),
    .I2(\buf_len[4]_Decoder_8_OUT<1> ),
    .I3(init_276),
    .I4(ascii_7_IBUF_0),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<247> )
  );
  LUT5 #(
    .INIT ( 32'h88A88808 ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<245>1  (
    .I0(rstn_IBUF_11),
    .I1(ascii_buf_31[245]),
    .I2(\buf_len[4]_Decoder_8_OUT<1> ),
    .I3(init_276),
    .I4(ascii_5_IBUF_2),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<245> )
  );
  LUT5 #(
    .INIT ( 32'h88A88808 ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<244>1  (
    .I0(rstn_IBUF_11),
    .I1(ascii_buf_31[244]),
    .I2(\buf_len[4]_Decoder_8_OUT<1> ),
    .I3(init_276),
    .I4(ascii_4_IBUF_3),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<244> )
  );
  LUT5 #(
    .INIT ( 32'h88A88808 ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<241>1  (
    .I0(rstn_IBUF_11),
    .I1(ascii_buf_31[241]),
    .I2(\buf_len[4]_Decoder_8_OUT<1> ),
    .I3(init_276),
    .I4(ascii_1_IBUF_6),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<241> )
  );
  LUT5 #(
    .INIT ( 32'h88A88808 ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<243>1  (
    .I0(rstn_IBUF_11),
    .I1(ascii_buf_31[243]),
    .I2(\buf_len[4]_Decoder_8_OUT<1> ),
    .I3(init_276),
    .I4(ascii_3_IBUF_4),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<243> )
  );
  LUT6 #(
    .INIT ( 64'h5555555557575444 ))
  \Mmux_buf_len[4]_GND_1_o_select_124_OUT11_SW2  (
    .I0(buf_ptr[0]),
    .I1(buf_len[3]),
    .I2(buf_len[2]),
    .I3(buf_len[1]),
    .I4(buf_len[0]),
    .I5(buf_len[4]),
    .O(N69)
  );
  LUT6 #(
    .INIT ( 64'h00FEFE00FE00FE00 ))
  \Mmux_buf_len[4]_GND_1_o_select_124_OUT32  (
    .I0(buf_len[4]),
    .I1(buf_len[3]),
    .I2(buf_len[2]),
    .I3(buf_ptr[2]),
    .I4(buf_ptr[0]),
    .I5(buf_ptr[1]),
    .O(\Mmux_buf_len[4]_GND_1_o_select_124_OUT31 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFF15DD ))
  \Mmux_buf_len[4]_GND_1_o_select_124_OUT22_SW1  (
    .I0(buf_len[1]),
    .I1(buf_len[2]),
    .I2(buf_len[0]),
    .I3(buf_ptr[1]),
    .I4(buf_len[4]),
    .I5(buf_len[3]),
    .O(N65)
  );
  LUT5 #(
    .INIT ( 32'h55404A4A ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT513  (
    .I0(digit1[1]),
    .I1(digit1[6]),
    .I2(digit1[4]),
    .I3(digit1[0]),
    .I4(digit1[2]),
    .O(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT512_1301 )
  );
  LUT5 #(
    .INIT ( 32'h1F511151 ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT22  (
    .I0(digit3[3]),
    .I1(digit3[4]),
    .I2(digit3[2]),
    .I3(digit3[0]),
    .I4(digit3[6]),
    .O(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT21_1271 )
  );
  LUT5 #(
    .INIT ( 32'h1F511151 ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT25  (
    .I0(digit1[3]),
    .I1(digit1[4]),
    .I2(digit1[2]),
    .I3(digit1[0]),
    .I4(digit1[6]),
    .O(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT24_1274 )
  );
  LUT5 #(
    .INIT ( 32'h1F511151 ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT28  (
    .I0(digit2[3]),
    .I1(digit2[4]),
    .I2(digit2[2]),
    .I3(digit2[0]),
    .I4(digit2[6]),
    .O(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT27_1277 )
  );
  LUT5 #(
    .INIT ( 32'h1F511151 ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT211  (
    .I0(digit0[3]),
    .I1(digit0[4]),
    .I2(digit0[2]),
    .I3(digit0[0]),
    .I4(digit0[6]),
    .O(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT210_1280 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFCA8A ))
  \Mmux_buf_len[4]_GND_1_o_select_124_OUT11_SW1_F  (
    .I0(buf_len[0]),
    .I1(buf_ptr[0]),
    .I2(buf_len[2]),
    .I3(buf_len[1]),
    .I4(buf_len[4]),
    .I5(buf_len[3]),
    .O(N108)
  );
  LUT5 #(
    .INIT ( 32'hFFFFFEEE ))
  \Mmux_buf_len[4]_GND_1_o_select_124_OUT11_SW1_G  (
    .I0(buf_len[3]),
    .I1(buf_len[0]),
    .I2(buf_len[2]),
    .I3(buf_len[1]),
    .I4(buf_len[4]),
    .O(N109)
  );
  LUT6 #(
    .INIT ( 64'hF848FD4848485D48 ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT11  (
    .I0(digit3[1]),
    .I1(digit3[3]),
    .I2(digit3[6]),
    .I3(digit3[2]),
    .I4(digit3[0]),
    .I5(digit3[4]),
    .O(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT1 )
  );
  LUT6 #(
    .INIT ( 64'hF848FD4848485D48 ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT17  (
    .I0(digit2[1]),
    .I1(digit2[3]),
    .I2(digit2[6]),
    .I3(digit2[2]),
    .I4(digit2[0]),
    .I5(digit2[4]),
    .O(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT16 )
  );
  LUT6 #(
    .INIT ( 64'hF848FD4848485D48 ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT19  (
    .I0(digit0[1]),
    .I1(digit0[3]),
    .I2(digit0[6]),
    .I3(digit0[2]),
    .I4(digit0[0]),
    .I5(digit0[4]),
    .O(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT18_1293 )
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \Mmux_buf_len[4]_GND_1_o_select_124_OUT41  (
    .I0(buf_len[2]),
    .I1(buf_len[1]),
    .I2(buf_len[0]),
    .O(\Mmux_buf_len[4]_GND_1_o_select_124_OUT4 )
  );
  LUT6 #(
    .INIT ( 64'h0000010011111111 ))
  \Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT61  (
    .I0(buf_len[4]),
    .I1(buf_len[3]),
    .I2(buf_len[0]),
    .I3(ascii_buf_31[253]),
    .I4(buf_len[1]),
    .I5(buf_len[2]),
    .O(\Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT6 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFEFFFEFFFE ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT26  (
    .I0(\display/digit1[7]_PWR_2_o_select_107_OUT<6>21_1252 ),
    .I1(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT23_1273 ),
    .I2(\display/digit1[7]_PWR_2_o_select_107_OUT<6>22_1253 ),
    .I3(digit1[7]),
    .I4(digit1[1]),
    .I5(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT24_1274 ),
    .O(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT25_1275 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFEFFFEFFFE ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT29  (
    .I0(\display/digit2[7]_PWR_2_o_select_161_OUT<6>21_1249 ),
    .I1(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT26_1276 ),
    .I2(\display/digit2[7]_PWR_2_o_select_161_OUT<6>22_1250 ),
    .I3(digit2[7]),
    .I4(digit2[1]),
    .I5(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT27_1277 ),
    .O(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT28_1278 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFEFFFEFFFE ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT212  (
    .I0(\display/digit0[7]_PWR_2_o_select_53_OUT<6>21_1255 ),
    .I1(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT29_1279 ),
    .I2(\display/digit0[7]_PWR_2_o_select_53_OUT<6>22_1256 ),
    .I3(digit0[7]),
    .I4(digit0[1]),
    .I5(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT210_1280 ),
    .O(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT211_1281 )
  );
  LUT4 #(
    .INIT ( 16'h0100 ))
  \Mmux_buf_len[4]_GND_1_o_select_124_OUT22_SW0  (
    .I0(buf_len[2]),
    .I1(buf_len[4]),
    .I2(buf_len[3]),
    .I3(buf_len[1]),
    .O(N64)
  );
  LUT6 #(
    .INIT ( 64'h8080AF80C0D1AF91 ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT62  (
    .I0(digit3[3]),
    .I1(digit3[4]),
    .I2(digit3[6]),
    .I3(digit3[1]),
    .I4(digit3[2]),
    .I5(digit3[0]),
    .O(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT61 )
  );
  LUT6 #(
    .INIT ( 64'h8080AF80C0D1AF91 ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT69  (
    .I0(digit2[3]),
    .I1(digit2[4]),
    .I2(digit2[6]),
    .I3(digit2[1]),
    .I4(digit2[2]),
    .I5(digit2[0]),
    .O(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT68 )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<7>1  (
    .I0(ascii_buf_31[7]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<31> ),
    .I4(ascii_7_IBUF_0),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<7> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<5>1  (
    .I0(ascii_buf_31[5]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<31> ),
    .I4(ascii_5_IBUF_2),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<5> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<4>1  (
    .I0(ascii_buf_31[4]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<31> ),
    .I4(ascii_4_IBUF_3),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<4> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<1>1  (
    .I0(ascii_buf_31[1]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<31> ),
    .I4(ascii_1_IBUF_6),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<1> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<0>1  (
    .I0(ascii_buf_31[0]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<31> ),
    .I4(ascii_0_IBUF_7),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<0> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<3>1  (
    .I0(ascii_buf_31[3]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<31> ),
    .I4(ascii_3_IBUF_4),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<3> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<6>1  (
    .I0(ascii_buf_31[6]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<31> ),
    .I4(ascii_6_IBUF_1),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<6> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<2>1  (
    .I0(ascii_buf_31[2]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<31> ),
    .I4(ascii_2_IBUF_5),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<2> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<103>1  (
    .I0(ascii_buf_31[103]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<19> ),
    .I4(ascii_7_IBUF_0),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<103> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<101>1  (
    .I0(ascii_buf_31[101]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<19> ),
    .I4(ascii_5_IBUF_2),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<101> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<100>1  (
    .I0(ascii_buf_31[100]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<19> ),
    .I4(ascii_4_IBUF_3),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<100> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<97>1  (
    .I0(ascii_buf_31[97]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<19> ),
    .I4(ascii_1_IBUF_6),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<97> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<96>1  (
    .I0(ascii_buf_31[96]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<19> ),
    .I4(ascii_0_IBUF_7),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<96> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<99>1  (
    .I0(ascii_buf_31[99]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<19> ),
    .I4(ascii_3_IBUF_4),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<99> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<102>1  (
    .I0(ascii_buf_31[102]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<19> ),
    .I4(ascii_6_IBUF_1),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<102> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<98>1  (
    .I0(ascii_buf_31[98]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<19> ),
    .I4(ascii_2_IBUF_5),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<98> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<111>1  (
    .I0(ascii_buf_31[111]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<18> ),
    .I4(ascii_7_IBUF_0),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<111> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<109>1  (
    .I0(ascii_buf_31[109]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<18> ),
    .I4(ascii_5_IBUF_2),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<109> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<108>1  (
    .I0(ascii_buf_31[108]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<18> ),
    .I4(ascii_4_IBUF_3),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<108> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<105>1  (
    .I0(ascii_buf_31[105]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<18> ),
    .I4(ascii_1_IBUF_6),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<105> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<104>1  (
    .I0(ascii_buf_31[104]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<18> ),
    .I4(ascii_0_IBUF_7),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<104> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<107>1  (
    .I0(ascii_buf_31[107]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<18> ),
    .I4(ascii_3_IBUF_4),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<107> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<110>1  (
    .I0(ascii_buf_31[110]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<18> ),
    .I4(ascii_6_IBUF_1),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<110> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<106>1  (
    .I0(ascii_buf_31[106]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<18> ),
    .I4(ascii_2_IBUF_5),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<106> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<15>1  (
    .I0(ascii_buf_31[15]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<30> ),
    .I4(ascii_7_IBUF_0),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<15> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<13>1  (
    .I0(ascii_buf_31[13]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<30> ),
    .I4(ascii_5_IBUF_2),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<13> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<12>1  (
    .I0(ascii_buf_31[12]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<30> ),
    .I4(ascii_4_IBUF_3),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<12> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<9>1  (
    .I0(ascii_buf_31[9]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<30> ),
    .I4(ascii_1_IBUF_6),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<9> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<8>1  (
    .I0(ascii_buf_31[8]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<30> ),
    .I4(ascii_0_IBUF_7),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<8> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<11>1  (
    .I0(ascii_buf_31[11]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<30> ),
    .I4(ascii_3_IBUF_4),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<11> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<14>1  (
    .I0(ascii_buf_31[14]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<30> ),
    .I4(ascii_6_IBUF_1),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<14> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<10>1  (
    .I0(ascii_buf_31[10]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<30> ),
    .I4(ascii_2_IBUF_5),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<10> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<119>1  (
    .I0(ascii_buf_31[119]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<17> ),
    .I4(ascii_7_IBUF_0),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<119> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<117>1  (
    .I0(ascii_buf_31[117]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<17> ),
    .I4(ascii_5_IBUF_2),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<117> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<116>1  (
    .I0(ascii_buf_31[116]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<17> ),
    .I4(ascii_4_IBUF_3),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<116> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<113>1  (
    .I0(ascii_buf_31[113]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<17> ),
    .I4(ascii_1_IBUF_6),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<113> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<112>1  (
    .I0(ascii_buf_31[112]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<17> ),
    .I4(ascii_0_IBUF_7),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<112> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<115>1  (
    .I0(ascii_buf_31[115]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<17> ),
    .I4(ascii_3_IBUF_4),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<115> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<118>1  (
    .I0(ascii_buf_31[118]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<17> ),
    .I4(ascii_6_IBUF_1),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<118> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<114>1  (
    .I0(ascii_buf_31[114]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<17> ),
    .I4(ascii_2_IBUF_5),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<114> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<127>1  (
    .I0(ascii_buf_31[127]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<16> ),
    .I4(ascii_7_IBUF_0),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<127> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<125>1  (
    .I0(ascii_buf_31[125]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<16> ),
    .I4(ascii_5_IBUF_2),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<125> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<124>1  (
    .I0(ascii_buf_31[124]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<16> ),
    .I4(ascii_4_IBUF_3),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<124> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<121>1  (
    .I0(ascii_buf_31[121]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<16> ),
    .I4(ascii_1_IBUF_6),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<121> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<120>1  (
    .I0(ascii_buf_31[120]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<16> ),
    .I4(ascii_0_IBUF_7),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<120> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<123>1  (
    .I0(ascii_buf_31[123]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<16> ),
    .I4(ascii_3_IBUF_4),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<123> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<126>1  (
    .I0(ascii_buf_31[126]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<16> ),
    .I4(ascii_6_IBUF_1),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<126> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<122>1  (
    .I0(ascii_buf_31[122]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<16> ),
    .I4(ascii_2_IBUF_5),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<122> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<135>1  (
    .I0(ascii_buf_31[135]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<15> ),
    .I4(ascii_7_IBUF_0),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<135> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<133>1  (
    .I0(ascii_buf_31[133]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<15> ),
    .I4(ascii_5_IBUF_2),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<133> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<132>1  (
    .I0(ascii_buf_31[132]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<15> ),
    .I4(ascii_4_IBUF_3),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<132> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<129>1  (
    .I0(ascii_buf_31[129]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<15> ),
    .I4(ascii_1_IBUF_6),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<129> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<128>1  (
    .I0(ascii_buf_31[128]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<15> ),
    .I4(ascii_0_IBUF_7),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<128> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<131>1  (
    .I0(ascii_buf_31[131]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<15> ),
    .I4(ascii_3_IBUF_4),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<131> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<134>1  (
    .I0(ascii_buf_31[134]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<15> ),
    .I4(ascii_6_IBUF_1),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<134> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<130>1  (
    .I0(ascii_buf_31[130]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<15> ),
    .I4(ascii_2_IBUF_5),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<130> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<143>1  (
    .I0(ascii_buf_31[143]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<14> ),
    .I4(ascii_7_IBUF_0),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<143> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<141>1  (
    .I0(ascii_buf_31[141]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<14> ),
    .I4(ascii_5_IBUF_2),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<141> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<140>1  (
    .I0(ascii_buf_31[140]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<14> ),
    .I4(ascii_4_IBUF_3),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<140> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<137>1  (
    .I0(ascii_buf_31[137]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<14> ),
    .I4(ascii_1_IBUF_6),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<137> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<136>1  (
    .I0(ascii_buf_31[136]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<14> ),
    .I4(ascii_0_IBUF_7),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<136> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<139>1  (
    .I0(ascii_buf_31[139]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<14> ),
    .I4(ascii_3_IBUF_4),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<139> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<142>1  (
    .I0(ascii_buf_31[142]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<14> ),
    .I4(ascii_6_IBUF_1),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<142> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<138>1  (
    .I0(ascii_buf_31[138]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<14> ),
    .I4(ascii_2_IBUF_5),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<138> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<151>1  (
    .I0(ascii_buf_31[151]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<13> ),
    .I4(ascii_7_IBUF_0),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<151> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<149>1  (
    .I0(ascii_buf_31[149]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<13> ),
    .I4(ascii_5_IBUF_2),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<149> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<148>1  (
    .I0(ascii_buf_31[148]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<13> ),
    .I4(ascii_4_IBUF_3),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<148> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<145>1  (
    .I0(ascii_buf_31[145]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<13> ),
    .I4(ascii_1_IBUF_6),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<145> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<144>1  (
    .I0(ascii_buf_31[144]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<13> ),
    .I4(ascii_0_IBUF_7),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<144> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<147>1  (
    .I0(ascii_buf_31[147]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<13> ),
    .I4(ascii_3_IBUF_4),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<147> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<150>1  (
    .I0(ascii_buf_31[150]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<13> ),
    .I4(ascii_6_IBUF_1),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<150> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<146>1  (
    .I0(ascii_buf_31[146]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<13> ),
    .I4(ascii_2_IBUF_5),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<146> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<167>1  (
    .I0(ascii_buf_31[167]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<11> ),
    .I4(ascii_7_IBUF_0),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<167> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<165>1  (
    .I0(ascii_buf_31[165]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<11> ),
    .I4(ascii_5_IBUF_2),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<165> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<164>1  (
    .I0(ascii_buf_31[164]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<11> ),
    .I4(ascii_4_IBUF_3),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<164> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<161>1  (
    .I0(ascii_buf_31[161]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<11> ),
    .I4(ascii_1_IBUF_6),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<161> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<160>1  (
    .I0(ascii_buf_31[160]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<11> ),
    .I4(ascii_0_IBUF_7),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<160> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<163>1  (
    .I0(ascii_buf_31[163]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<11> ),
    .I4(ascii_3_IBUF_4),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<163> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<166>1  (
    .I0(ascii_buf_31[166]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<11> ),
    .I4(ascii_6_IBUF_1),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<166> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<162>1  (
    .I0(ascii_buf_31[162]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<11> ),
    .I4(ascii_2_IBUF_5),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<162> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<175>1  (
    .I0(ascii_buf_31[175]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<10> ),
    .I4(ascii_7_IBUF_0),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<175> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<173>1  (
    .I0(ascii_buf_31[173]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<10> ),
    .I4(ascii_5_IBUF_2),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<173> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<172>1  (
    .I0(ascii_buf_31[172]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<10> ),
    .I4(ascii_4_IBUF_3),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<172> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<169>1  (
    .I0(ascii_buf_31[169]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<10> ),
    .I4(ascii_1_IBUF_6),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<169> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<168>1  (
    .I0(ascii_buf_31[168]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<10> ),
    .I4(ascii_0_IBUF_7),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<168> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<171>1  (
    .I0(ascii_buf_31[171]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<10> ),
    .I4(ascii_3_IBUF_4),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<171> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<174>1  (
    .I0(ascii_buf_31[174]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<10> ),
    .I4(ascii_6_IBUF_1),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<174> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<170>1  (
    .I0(ascii_buf_31[170]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<10> ),
    .I4(ascii_2_IBUF_5),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<170> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<23>1  (
    .I0(ascii_buf_31[23]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<29> ),
    .I4(ascii_7_IBUF_0),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<23> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<21>1  (
    .I0(ascii_buf_31[21]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<29> ),
    .I4(ascii_5_IBUF_2),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<21> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<20>1  (
    .I0(ascii_buf_31[20]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<29> ),
    .I4(ascii_4_IBUF_3),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<20> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<17>1  (
    .I0(ascii_buf_31[17]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<29> ),
    .I4(ascii_1_IBUF_6),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<17> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<16>1  (
    .I0(ascii_buf_31[16]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<29> ),
    .I4(ascii_0_IBUF_7),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<16> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<19>1  (
    .I0(ascii_buf_31[19]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<29> ),
    .I4(ascii_3_IBUF_4),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<19> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<22>1  (
    .I0(ascii_buf_31[22]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<29> ),
    .I4(ascii_6_IBUF_1),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<22> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<18>1  (
    .I0(ascii_buf_31[18]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<29> ),
    .I4(ascii_2_IBUF_5),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<18> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<183>1  (
    .I0(ascii_buf_31[183]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<9> ),
    .I4(ascii_7_IBUF_0),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<183> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<181>1  (
    .I0(ascii_buf_31[181]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<9> ),
    .I4(ascii_5_IBUF_2),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<181> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<180>1  (
    .I0(ascii_buf_31[180]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<9> ),
    .I4(ascii_4_IBUF_3),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<180> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<177>1  (
    .I0(ascii_buf_31[177]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<9> ),
    .I4(ascii_1_IBUF_6),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<177> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<176>1  (
    .I0(ascii_buf_31[176]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<9> ),
    .I4(ascii_0_IBUF_7),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<176> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<179>1  (
    .I0(ascii_buf_31[179]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<9> ),
    .I4(ascii_3_IBUF_4),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<179> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<182>1  (
    .I0(ascii_buf_31[182]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<9> ),
    .I4(ascii_6_IBUF_1),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<182> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<178>1  (
    .I0(ascii_buf_31[178]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<9> ),
    .I4(ascii_2_IBUF_5),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<178> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<191>1  (
    .I0(ascii_buf_31[191]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<8> ),
    .I4(ascii_7_IBUF_0),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<191> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<189>1  (
    .I0(ascii_buf_31[189]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<8> ),
    .I4(ascii_5_IBUF_2),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<189> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<188>1  (
    .I0(ascii_buf_31[188]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<8> ),
    .I4(ascii_4_IBUF_3),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<188> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<185>1  (
    .I0(ascii_buf_31[185]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<8> ),
    .I4(ascii_1_IBUF_6),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<185> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<184>1  (
    .I0(ascii_buf_31[184]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<8> ),
    .I4(ascii_0_IBUF_7),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<184> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<187>1  (
    .I0(ascii_buf_31[187]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<8> ),
    .I4(ascii_3_IBUF_4),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<187> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<190>1  (
    .I0(ascii_buf_31[190]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<8> ),
    .I4(ascii_6_IBUF_1),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<190> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<186>1  (
    .I0(ascii_buf_31[186]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<8> ),
    .I4(ascii_2_IBUF_5),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<186> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<199>1  (
    .I0(ascii_buf_31[199]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<7> ),
    .I4(ascii_7_IBUF_0),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<199> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<197>1  (
    .I0(ascii_buf_31[197]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<7> ),
    .I4(ascii_5_IBUF_2),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<197> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<196>1  (
    .I0(ascii_buf_31[196]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<7> ),
    .I4(ascii_4_IBUF_3),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<196> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<193>1  (
    .I0(ascii_buf_31[193]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<7> ),
    .I4(ascii_1_IBUF_6),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<193> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<192>1  (
    .I0(ascii_buf_31[192]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<7> ),
    .I4(ascii_0_IBUF_7),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<192> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<195>1  (
    .I0(ascii_buf_31[195]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<7> ),
    .I4(ascii_3_IBUF_4),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<195> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<198>1  (
    .I0(ascii_buf_31[198]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<7> ),
    .I4(ascii_6_IBUF_1),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<198> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<194>1  (
    .I0(ascii_buf_31[194]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<7> ),
    .I4(ascii_2_IBUF_5),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<194> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<207>1  (
    .I0(ascii_buf_31[207]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<6> ),
    .I4(ascii_7_IBUF_0),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<207> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<205>1  (
    .I0(ascii_buf_31[205]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<6> ),
    .I4(ascii_5_IBUF_2),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<205> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<204>1  (
    .I0(ascii_buf_31[204]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<6> ),
    .I4(ascii_4_IBUF_3),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<204> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<201>1  (
    .I0(ascii_buf_31[201]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<6> ),
    .I4(ascii_1_IBUF_6),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<201> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<200>1  (
    .I0(ascii_buf_31[200]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<6> ),
    .I4(ascii_0_IBUF_7),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<200> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<203>1  (
    .I0(ascii_buf_31[203]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<6> ),
    .I4(ascii_3_IBUF_4),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<203> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<206>1  (
    .I0(ascii_buf_31[206]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<6> ),
    .I4(ascii_6_IBUF_1),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<206> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<202>1  (
    .I0(ascii_buf_31[202]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<6> ),
    .I4(ascii_2_IBUF_5),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<202> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<215>1  (
    .I0(ascii_buf_31[215]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<5> ),
    .I4(ascii_7_IBUF_0),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<215> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<213>1  (
    .I0(ascii_buf_31[213]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<5> ),
    .I4(ascii_5_IBUF_2),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<213> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<212>1  (
    .I0(ascii_buf_31[212]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<5> ),
    .I4(ascii_4_IBUF_3),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<212> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<209>1  (
    .I0(ascii_buf_31[209]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<5> ),
    .I4(ascii_1_IBUF_6),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<209> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<208>1  (
    .I0(ascii_buf_31[208]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<5> ),
    .I4(ascii_0_IBUF_7),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<208> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<211>1  (
    .I0(ascii_buf_31[211]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<5> ),
    .I4(ascii_3_IBUF_4),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<211> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<214>1  (
    .I0(ascii_buf_31[214]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<5> ),
    .I4(ascii_6_IBUF_1),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<214> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<210>1  (
    .I0(ascii_buf_31[210]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<5> ),
    .I4(ascii_2_IBUF_5),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<210> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<39>1  (
    .I0(ascii_buf_31[39]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<27> ),
    .I4(ascii_7_IBUF_0),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<39> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<37>1  (
    .I0(ascii_buf_31[37]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<27> ),
    .I4(ascii_5_IBUF_2),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<37> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<36>1  (
    .I0(ascii_buf_31[36]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<27> ),
    .I4(ascii_4_IBUF_3),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<36> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<33>1  (
    .I0(ascii_buf_31[33]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<27> ),
    .I4(ascii_1_IBUF_6),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<33> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<32>1  (
    .I0(ascii_buf_31[32]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<27> ),
    .I4(ascii_0_IBUF_7),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<32> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<35>1  (
    .I0(ascii_buf_31[35]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<27> ),
    .I4(ascii_3_IBUF_4),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<35> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<38>1  (
    .I0(ascii_buf_31[38]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<27> ),
    .I4(ascii_6_IBUF_1),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<38> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<34>1  (
    .I0(ascii_buf_31[34]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<27> ),
    .I4(ascii_2_IBUF_5),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<34> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<47>1  (
    .I0(ascii_buf_31[47]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<26> ),
    .I4(ascii_7_IBUF_0),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<47> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<45>1  (
    .I0(ascii_buf_31[45]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<26> ),
    .I4(ascii_5_IBUF_2),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<45> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<44>1  (
    .I0(ascii_buf_31[44]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<26> ),
    .I4(ascii_4_IBUF_3),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<44> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<41>1  (
    .I0(ascii_buf_31[41]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<26> ),
    .I4(ascii_1_IBUF_6),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<41> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<40>1  (
    .I0(ascii_buf_31[40]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<26> ),
    .I4(ascii_0_IBUF_7),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<40> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<43>1  (
    .I0(ascii_buf_31[43]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<26> ),
    .I4(ascii_3_IBUF_4),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<43> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<46>1  (
    .I0(ascii_buf_31[46]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<26> ),
    .I4(ascii_6_IBUF_1),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<46> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<42>1  (
    .I0(ascii_buf_31[42]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<26> ),
    .I4(ascii_2_IBUF_5),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<42> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<55>1  (
    .I0(ascii_buf_31[55]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<25> ),
    .I4(ascii_7_IBUF_0),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<55> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<53>1  (
    .I0(ascii_buf_31[53]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<25> ),
    .I4(ascii_5_IBUF_2),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<53> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<52>1  (
    .I0(ascii_buf_31[52]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<25> ),
    .I4(ascii_4_IBUF_3),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<52> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<49>1  (
    .I0(ascii_buf_31[49]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<25> ),
    .I4(ascii_1_IBUF_6),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<49> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<48>1  (
    .I0(ascii_buf_31[48]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<25> ),
    .I4(ascii_0_IBUF_7),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<48> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<51>1  (
    .I0(ascii_buf_31[51]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<25> ),
    .I4(ascii_3_IBUF_4),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<51> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<54>1  (
    .I0(ascii_buf_31[54]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<25> ),
    .I4(ascii_6_IBUF_1),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<54> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<50>1  (
    .I0(ascii_buf_31[50]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<25> ),
    .I4(ascii_2_IBUF_5),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<50> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<63>1  (
    .I0(ascii_buf_31[63]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<24> ),
    .I4(ascii_7_IBUF_0),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<63> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<61>1  (
    .I0(ascii_buf_31[61]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<24> ),
    .I4(ascii_5_IBUF_2),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<61> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<60>1  (
    .I0(ascii_buf_31[60]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<24> ),
    .I4(ascii_4_IBUF_3),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<60> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<57>1  (
    .I0(ascii_buf_31[57]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<24> ),
    .I4(ascii_1_IBUF_6),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<57> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<56>1  (
    .I0(ascii_buf_31[56]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<24> ),
    .I4(ascii_0_IBUF_7),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<56> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<59>1  (
    .I0(ascii_buf_31[59]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<24> ),
    .I4(ascii_3_IBUF_4),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<59> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<62>1  (
    .I0(ascii_buf_31[62]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<24> ),
    .I4(ascii_6_IBUF_1),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<62> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<58>1  (
    .I0(ascii_buf_31[58]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<24> ),
    .I4(ascii_2_IBUF_5),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<58> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<71>1  (
    .I0(ascii_buf_31[71]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<23> ),
    .I4(ascii_7_IBUF_0),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<71> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<69>1  (
    .I0(ascii_buf_31[69]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<23> ),
    .I4(ascii_5_IBUF_2),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<69> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<68>1  (
    .I0(ascii_buf_31[68]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<23> ),
    .I4(ascii_4_IBUF_3),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<68> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<65>1  (
    .I0(ascii_buf_31[65]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<23> ),
    .I4(ascii_1_IBUF_6),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<65> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<64>1  (
    .I0(ascii_buf_31[64]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<23> ),
    .I4(ascii_0_IBUF_7),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<64> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<67>1  (
    .I0(ascii_buf_31[67]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<23> ),
    .I4(ascii_3_IBUF_4),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<67> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<70>1  (
    .I0(ascii_buf_31[70]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<23> ),
    .I4(ascii_6_IBUF_1),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<70> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<66>1  (
    .I0(ascii_buf_31[66]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<23> ),
    .I4(ascii_2_IBUF_5),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<66> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<79>1  (
    .I0(ascii_buf_31[79]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<22> ),
    .I4(ascii_7_IBUF_0),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<79> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<77>1  (
    .I0(ascii_buf_31[77]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<22> ),
    .I4(ascii_5_IBUF_2),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<77> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<76>1  (
    .I0(ascii_buf_31[76]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<22> ),
    .I4(ascii_4_IBUF_3),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<76> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<73>1  (
    .I0(ascii_buf_31[73]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<22> ),
    .I4(ascii_1_IBUF_6),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<73> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<72>1  (
    .I0(ascii_buf_31[72]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<22> ),
    .I4(ascii_0_IBUF_7),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<72> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<75>1  (
    .I0(ascii_buf_31[75]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<22> ),
    .I4(ascii_3_IBUF_4),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<75> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<78>1  (
    .I0(ascii_buf_31[78]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<22> ),
    .I4(ascii_6_IBUF_1),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<78> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<74>1  (
    .I0(ascii_buf_31[74]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<22> ),
    .I4(ascii_2_IBUF_5),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<74> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<87>1  (
    .I0(ascii_buf_31[87]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<21> ),
    .I4(ascii_7_IBUF_0),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<87> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<85>1  (
    .I0(ascii_buf_31[85]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<21> ),
    .I4(ascii_5_IBUF_2),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<85> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<84>1  (
    .I0(ascii_buf_31[84]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<21> ),
    .I4(ascii_4_IBUF_3),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<84> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<81>1  (
    .I0(ascii_buf_31[81]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<21> ),
    .I4(ascii_1_IBUF_6),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<81> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<80>1  (
    .I0(ascii_buf_31[80]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<21> ),
    .I4(ascii_0_IBUF_7),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<80> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<83>1  (
    .I0(ascii_buf_31[83]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<21> ),
    .I4(ascii_3_IBUF_4),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<83> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<86>1  (
    .I0(ascii_buf_31[86]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<21> ),
    .I4(ascii_6_IBUF_1),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<86> )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \ascii_buf[0][7]_GND_1_o_mux_49_OUT<82>1  (
    .I0(ascii_buf_31[82]),
    .I1(init_276),
    .I2(rstn_IBUF_11),
    .I3(\buf_len[4]_Decoder_8_OUT<21> ),
    .I4(ascii_2_IBUF_5),
    .O(\ascii_buf[0][7]_GND_1_o_mux_49_OUT<82> )
  );
  LUT5 #(
    .INIT ( 32'hFFFFFFA8 ))
  \Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT621  (
    .I0(buf_len[2]),
    .I1(buf_len[1]),
    .I2(buf_len[0]),
    .I3(buf_len[4]),
    .I4(buf_len[3]),
    .O(\Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT13 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000001000 ))
  \Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT3_SW0  (
    .I0(buf_len[4]),
    .I1(buf_len[3]),
    .I2(ascii_buf_31[250]),
    .I3(buf_len[2]),
    .I4(buf_len[1]),
    .I5(buf_len[0]),
    .O(N12)
  );
  LUT6 #(
    .INIT ( 64'h0000000000001000 ))
  \Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT5_SW0  (
    .I0(buf_len[4]),
    .I1(buf_len[3]),
    .I2(ascii_buf_31[252]),
    .I3(buf_len[2]),
    .I4(buf_len[1]),
    .I5(buf_len[0]),
    .O(N14)
  );
  LUT6 #(
    .INIT ( 64'h0000000000001000 ))
  \Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT1_SW0  (
    .I0(buf_len[4]),
    .I1(buf_len[3]),
    .I2(ascii_buf_31[248]),
    .I3(buf_len[2]),
    .I4(buf_len[1]),
    .I5(buf_len[0]),
    .O(N16)
  );
  LUT6 #(
    .INIT ( 64'h0000000000001000 ))
  \Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT7_SW0  (
    .I0(buf_len[4]),
    .I1(buf_len[3]),
    .I2(ascii_buf_31[254]),
    .I3(buf_len[2]),
    .I4(buf_len[1]),
    .I5(buf_len[0]),
    .O(N18)
  );
  LUT6 #(
    .INIT ( 64'h0000000000001000 ))
  \Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT2_SW0  (
    .I0(buf_len[4]),
    .I1(buf_len[3]),
    .I2(ascii_buf_31[249]),
    .I3(buf_len[2]),
    .I4(buf_len[1]),
    .I5(buf_len[0]),
    .O(N20)
  );
  LUT6 #(
    .INIT ( 64'h0000000000001000 ))
  \Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT4_SW0  (
    .I0(buf_len[4]),
    .I1(buf_len[3]),
    .I2(ascii_buf_31[251]),
    .I3(buf_len[2]),
    .I4(buf_len[1]),
    .I5(buf_len[0]),
    .O(N22)
  );
  LUT6 #(
    .INIT ( 64'h0000000000001000 ))
  \Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT8_SW0  (
    .I0(buf_len[4]),
    .I1(buf_len[3]),
    .I2(ascii_buf_31[255]),
    .I3(buf_len[2]),
    .I4(buf_len[1]),
    .I5(buf_len[0]),
    .O(N24)
  );
  LUT5 #(
    .INIT ( 32'hFFF1FFFF ))
  \buf_ptr[4]_buf_len[4]_LessThan_53_o261_SW0  (
    .I0(buf_len[0]),
    .I1(buf_len[1]),
    .I2(buf_len[3]),
    .I3(buf_len[4]),
    .I4(buf_len[2]),
    .O(N104)
  );
  LUT6 #(
    .INIT ( 64'hCCAAAF85C0D1AF91 ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT66  (
    .I0(digit1[3]),
    .I1(digit1[4]),
    .I2(digit1[6]),
    .I3(digit1[1]),
    .I4(digit1[2]),
    .I5(digit1[0]),
    .O(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT65 )
  );
  LUT6 #(
    .INIT ( 64'hCCAAAF85C0D1AF91 ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT613  (
    .I0(digit0[3]),
    .I1(digit0[4]),
    .I2(digit0[6]),
    .I3(digit0[1]),
    .I4(digit0[2]),
    .I5(digit0[0]),
    .O(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT612 )
  );
  LUT6 #(
    .INIT ( 64'hEF2FE000EF8F2088 ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT53  (
    .I0(digit2[3]),
    .I1(digit2[1]),
    .I2(digit2[6]),
    .I3(digit2[4]),
    .I4(digit2[0]),
    .I5(digit2[2]),
    .O(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT52 )
  );
  LUT6 #(
    .INIT ( 64'hEF2FE000EF8F2088 ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT56  (
    .I0(digit0[3]),
    .I1(digit0[1]),
    .I2(digit0[6]),
    .I3(digit0[4]),
    .I4(digit0[0]),
    .I5(digit0[2]),
    .O(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT55 )
  );
  FDCE   buf_ptr_0_1 (
    .C(\four_hz/counter_22_BUFG_14 ),
    .CE(_n0410_inv),
    .CLR(init_glue_set),
    .D(\buf_len[4]_GND_1_o_select_124_OUT<0> ),
    .Q(buf_ptr_0_1_1403)
  );
  FDCE   buf_ptr_1_1 (
    .C(\four_hz/counter_22_BUFG_14 ),
    .CE(_n0410_inv),
    .CLR(init_glue_set),
    .D(\buf_len[4]_GND_1_o_select_124_OUT<1> ),
    .Q(buf_ptr_1_1_1404)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAABAAAAAAA8 ))
  \Mmux_buf_len[4]_GND_1_o_select_124_OUT13  (
    .I0(N69),
    .I1(\buf_ptr[4]_buf_len[4]_LessThan_53_o ),
    .I2(\buf_ptr[4]_buf_len[4]_equal_68_o ),
    .I3(GND_1_o_GND_1_o_equal_77_o),
    .I4(GND_1_o_GND_1_o_equal_84_o),
    .I5(N68),
    .O(\buf_len[4]_GND_1_o_select_124_OUT<0> )
  );
  FDCE   buf_ptr_1_2 (
    .C(\four_hz/counter_22_BUFG_14 ),
    .CE(_n0410_inv),
    .CLR(init_glue_set),
    .D(\buf_len[4]_GND_1_o_select_124_OUT<1> ),
    .Q(buf_ptr_1_2_1405)
  );
  FDCE   buf_ptr_0_2 (
    .C(\four_hz/counter_22_BUFG_14 ),
    .CE(_n0410_inv),
    .CLR(init_glue_set),
    .D(\buf_len[4]_GND_1_o_select_124_OUT<0> ),
    .Q(buf_ptr_0_2_1406)
  );
  FDCE   buf_ptr_3_1 (
    .C(\four_hz/counter_22_BUFG_14 ),
    .CE(_n0410_inv),
    .CLR(init_glue_set),
    .D(\buf_len[4]_GND_1_o_select_124_OUT<3> ),
    .Q(buf_ptr_3_1_1407)
  );
  FDCE   buf_ptr_2_1 (
    .C(\four_hz/counter_22_BUFG_14 ),
    .CE(_n0410_inv),
    .CLR(init_glue_set),
    .D(\buf_len[4]_GND_1_o_select_124_OUT<2> ),
    .Q(buf_ptr_2_1_1408)
  );
  FDCE   buf_ptr_4_1 (
    .C(\four_hz/counter_22_BUFG_14 ),
    .CE(_n0410_inv),
    .CLR(init_glue_set),
    .D(\buf_len[4]_GND_1_o_select_124_OUT<4> ),
    .Q(buf_ptr_4_1_1409)
  );
  FDCE   buf_ptr_1_3 (
    .C(\four_hz/counter_22_BUFG_14 ),
    .CE(_n0410_inv),
    .CLR(init_glue_set),
    .D(\buf_len[4]_GND_1_o_select_124_OUT<1> ),
    .Q(buf_ptr_1_3_1410)
  );
  FDCE   buf_ptr_3_2 (
    .C(\four_hz/counter_22_BUFG_14 ),
    .CE(_n0410_inv),
    .CLR(init_glue_set),
    .D(\buf_len[4]_GND_1_o_select_124_OUT<3> ),
    .Q(buf_ptr_3_2_1411)
  );
  FDCE   buf_ptr_4_2 (
    .C(\four_hz/counter_22_BUFG_14 ),
    .CE(_n0410_inv),
    .CLR(init_glue_set),
    .D(\buf_len[4]_GND_1_o_select_124_OUT<4> ),
    .Q(buf_ptr_4_2_1412)
  );
  LUT5 #(
    .INIT ( 32'h8EAF0A8E ))
  \buf_ptr[4]_buf_len[4]_LessThan_53_o1_1  (
    .I0(buf_len[4]),
    .I1(buf_len[3]),
    .I2(buf_ptr[4]),
    .I3(buf_ptr[3]),
    .I4(N10),
    .O(\buf_ptr[4]_buf_len[4]_LessThan_53_o1_1413 )
  );
  MUXF7   \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT113  (
    .I0(N110),
    .I1(N111),
    .S(\display/display_cnt [0]),
    .O(\display/display_cnt[1]_digit3[7]_wide_mux_216_OUT<0> )
  );
  LUT5 #(
    .INIT ( 32'hFFFDAAA8 ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT113_F  (
    .I0(\display/display_cnt [1]),
    .I1(\display/digit2[7]_PWR_2_o_select_161_OUT<3>1 ),
    .I2(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT16 ),
    .I3(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT17_1292 ),
    .I4(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT110_1295 ),
    .O(N110)
  );
  LUT5 #(
    .INIT ( 32'hFFFDAAA8 ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT113_G  (
    .I0(\display/display_cnt [1]),
    .I1(\display/digit3[7]_PWR_2_o_select_215_OUT<3>1 ),
    .I2(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT1 ),
    .I3(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT11_1289 ),
    .I4(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT14 ),
    .O(N111)
  );
  MUXF7   \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT615  (
    .I0(N112),
    .I1(N113),
    .S(\display/display_cnt [0]),
    .O(\display/display_cnt[1]_digit3[7]_wide_mux_216_OUT<5> )
  );
  LUT6 #(
    .INIT ( 64'hFFFDFFFDFFFDAAA8 ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT615_F  (
    .I0(\display/display_cnt [1]),
    .I1(\display/digit2[7]_PWR_2_o_select_161_OUT<3>1 ),
    .I2(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT68 ),
    .I3(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT69_1307 ),
    .I4(\display/digit0[7]_PWR_2_o_select_53_OUT<3>1 ),
    .I5(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT612 ),
    .O(N112)
  );
  LUT6 #(
    .INIT ( 64'hFFFDFFFDFFFDAAA8 ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT615_G  (
    .I0(\display/display_cnt [1]),
    .I1(\display/digit3[7]_PWR_2_o_select_215_OUT<3>1 ),
    .I2(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT61 ),
    .I3(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT62_1304 ),
    .I4(\display/digit1[7]_PWR_2_o_select_107_OUT<3>1 ),
    .I5(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT65 ),
    .O(N113)
  );
  MUXF7   \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT47  (
    .I0(N114),
    .I1(N115),
    .S(\display/display_cnt [0]),
    .O(\display/display_cnt[1]_digit3[7]_wide_mux_216_OUT<3> )
  );
  LUT5 #(
    .INIT ( 32'hFDFDFDA8 ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT47_F  (
    .I0(\display/display_cnt [1]),
    .I1(\display/digit2[7]_PWR_2_o_select_161_OUT<5>2 ),
    .I2(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT43 ),
    .I3(\display/digit0[7]_PWR_2_o_select_53_OUT<5>2 ),
    .I4(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT44_1312 ),
    .O(N114)
  );
  LUT5 #(
    .INIT ( 32'hFDFDFDA8 ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT47_G  (
    .I0(\display/display_cnt [1]),
    .I1(\display/digit3[7]_PWR_2_o_select_215_OUT<5>2 ),
    .I2(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT4 ),
    .I3(\display/digit1[7]_PWR_2_o_select_107_OUT<5>2 ),
    .I4(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT41_1310 ),
    .O(N115)
  );
  MUXF7   \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT39  (
    .I0(N116),
    .I1(N117),
    .S(\display/display_cnt [1]),
    .O(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT38 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFBEA ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT39_F  (
    .I0(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT3222 ),
    .I1(digit0[0]),
    .I2(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT3223 ),
    .I3(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT36 ),
    .I4(\display/digit0[7]_PWR_2_o_select_53_OUT<6>2 ),
    .I5(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT521_1131 ),
    .O(N116)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFBEA ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT39_G  (
    .I0(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT3212 ),
    .I1(digit2[0]),
    .I2(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT3213 ),
    .I3(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT34_1285 ),
    .I4(\display/digit2[7]_PWR_2_o_select_161_OUT<6>2 ),
    .I5(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT521_1131 ),
    .O(N117)
  );
  MUXF7   \display/digit3[7]_PWR_2_o_select_215_OUT<6>23  (
    .I0(N118),
    .I1(N119),
    .S(digit3[6]),
    .O(\display/digit3[7]_PWR_2_o_select_215_OUT<6>2 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFAE8EFFFF ))
  \display/digit3[7]_PWR_2_o_select_215_OUT<6>23_F  (
    .I0(digit3[3]),
    .I1(digit3[2]),
    .I2(digit3[4]),
    .I3(digit3[1]),
    .I4(digit3[5]),
    .I5(digit3[7]),
    .O(N118)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFAA328A20 ))
  \display/digit3[7]_PWR_2_o_select_215_OUT<6>23_G  (
    .I0(digit3[2]),
    .I1(digit3[1]),
    .I2(digit3[0]),
    .I3(digit3[4]),
    .I4(digit3[3]),
    .I5(digit3[7]),
    .O(N119)
  );
  MUXF7   \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT511  (
    .I0(N120),
    .I1(N121),
    .S(\display/display_cnt [1]),
    .O(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT511_1132 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT511_F  (
    .I0(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT6124 ),
    .I1(digit1[2]),
    .I2(digit1[1]),
    .O(N120)
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT511_G  (
    .I0(digit3[2]),
    .I1(digit3[1]),
    .I2(digit3[0]),
    .I3(digit3[4]),
    .I4(digit3[3]),
    .O(N121)
  );
  MUXF7   \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT510  (
    .I0(N122),
    .I1(N123),
    .S(digit3[0]),
    .O(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT59 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFC6800200 ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT510_F  (
    .I0(digit3[1]),
    .I1(digit3[4]),
    .I2(digit3[2]),
    .I3(digit3[3]),
    .I4(digit3[6]),
    .I5(\display/digit3[7]_PWR_2_o_select_215_OUT<5>2 ),
    .O(N122)
  );
  LUT6 #(
    .INIT ( 64'hFFFFCAE8FFFFFFFF ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT510_G  (
    .I0(digit3[3]),
    .I1(digit3[4]),
    .I2(digit3[1]),
    .I3(digit3[2]),
    .I4(\display/digit3[7]_PWR_2_o_select_215_OUT<5>2 ),
    .I5(digit3[6]),
    .O(N123)
  );
  MUXF7   \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT32  (
    .I0(N124),
    .I1(N125),
    .S(digit3[3]),
    .O(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT31 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF0419044C ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT32_F  (
    .I0(digit3[0]),
    .I1(digit3[1]),
    .I2(digit3[4]),
    .I3(digit3[2]),
    .I4(digit3[6]),
    .I5(\display/digit3[7]_PWR_2_o_select_215_OUT<6>2 ),
    .O(N124)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFF2F00222 ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT32_G  (
    .I0(digit3[1]),
    .I1(digit3[2]),
    .I2(digit3[4]),
    .I3(digit3[0]),
    .I4(digit3[6]),
    .I5(\display/digit3[7]_PWR_2_o_select_215_OUT<6>2 ),
    .O(N125)
  );
  MUXF7   \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT15  (
    .I0(N126),
    .I1(N127),
    .S(digit1[1]),
    .O(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT14 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFCCEF91AF ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT15_F  (
    .I0(digit1[2]),
    .I1(digit1[6]),
    .I2(digit1[4]),
    .I3(digit1[0]),
    .I4(digit1[3]),
    .I5(\display/digit1[7]_PWR_2_o_select_107_OUT<3>1 ),
    .O(N126)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFEA51F0F1 ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT15_G  (
    .I0(digit1[2]),
    .I1(digit1[0]),
    .I2(digit1[3]),
    .I3(digit1[4]),
    .I4(digit1[6]),
    .I5(\display/digit1[7]_PWR_2_o_select_107_OUT<3>1 ),
    .O(N127)
  );
  MUXF7   \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT521  (
    .I0(N128),
    .I1(N129),
    .S(\display/display_cnt [1]),
    .O(\display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT521_1131 )
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT521_F  (
    .I0(digit0[2]),
    .I1(digit0[1]),
    .I2(digit0[4]),
    .I3(digit0[3]),
    .I4(digit0[0]),
    .O(N128)
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  \display/Mmux_display_cnt[1]_digit3[7]_wide_mux_216_OUT521_G  (
    .I0(digit2[2]),
    .I1(digit2[1]),
    .I2(digit2[0]),
    .I3(digit2[4]),
    .I4(digit2[3]),
    .O(N129)
  );
  MUXF7   GND_1_o_GND_1_o_equal_84_o63 (
    .I0(N130),
    .I1(N131),
    .S(buf_len[4]),
    .O(GND_1_o_GND_1_o_equal_84_o)
  );
  LUT5 #(
    .INIT ( 32'h60060000 ))
  GND_1_o_GND_1_o_equal_84_o63_F (
    .I0(buf_ptr_1_1_1404),
    .I1(buf_len[1]),
    .I2(buf_ptr_0_1_1403),
    .I3(buf_len[0]),
    .I4(GND_1_o_GND_1_o_equal_84_o6),
    .O(N130)
  );
  LUT6 #(
    .INIT ( 64'h6006000000000000 ))
  GND_1_o_GND_1_o_equal_84_o63_G (
    .I0(buf_ptr_1_1_1404),
    .I1(buf_len[1]),
    .I2(buf_ptr_0_1_1403),
    .I3(buf_len[0]),
    .I4(buf_ptr[4]),
    .I5(GND_1_o_GND_1_o_equal_84_o61_1187),
    .O(N131)
  );
  MUXF7   GND_1_o_GND_1_o_equal_89_o63 (
    .I0(N132),
    .I1(N133),
    .S(buf_len[4]),
    .O(GND_1_o_GND_1_o_equal_89_o)
  );
  LUT5 #(
    .INIT ( 32'h20080820 ))
  GND_1_o_GND_1_o_equal_89_o63_F (
    .I0(GND_1_o_GND_1_o_equal_89_o6),
    .I1(buf_ptr_0_1_1403),
    .I2(buf_len[0]),
    .I3(buf_len[1]),
    .I4(buf_ptr_1_2_1405),
    .O(N132)
  );
  LUT6 #(
    .INIT ( 64'h0800008000800800 ))
  GND_1_o_GND_1_o_equal_89_o63_G (
    .I0(buf_ptr[4]),
    .I1(GND_1_o_GND_1_o_equal_89_o61_1185),
    .I2(buf_ptr_0_1_1403),
    .I3(buf_len[0]),
    .I4(buf_len[1]),
    .I5(buf_ptr_1_2_1405),
    .O(N133)
  );
  MUXF7   \Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT125_SW1  (
    .I0(N134),
    .I1(N135),
    .S(\buf_ptr[4]_buf_len[4]_LessThan_53_o ),
    .O(N61)
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  \Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT125_SW1_G  (
    .I0(buf_ptr[4]),
    .I1(buf_ptr[3]),
    .I2(buf_ptr[2]),
    .I3(buf_ptr[1]),
    .I4(buf_ptr[0]),
    .O(N135)
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_10)
  );
  BUFG   \four_hz/counter_22_BUFG  (
    .O(\four_hz/counter_22_BUFG_14 ),
    .I(\four_hz/counter [22])
  );
  INV   \four_hz/Mcount_counter_lut<0>_INV_0  (
    .I(\four_hz/counter [0]),
    .O(\four_hz/Mcount_counter_lut [0])
  );
  INV   dsn_INV_5_o1_INV_0 (
    .I(dsn_IBUF_8),
    .O(dsn_INV_5_o)
  );
  INV   clearn_INV_7_o1_INV_0 (
    .I(clearn_IBUF_9),
    .O(clearn_INV_7_o)
  );
  INV   rst1_INV_0 (
    .I(rstn_IBUF_11),
    .O(init_glue_set)
  );
  INV   \display/Mcount_display_cnt_xor<0>11_INV_0  (
    .I(\display/display_cnt [0]),
    .O(\display/Result [0])
  );
  INV   \Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT125_SW1_F_INV_0  (
    .I(\buf_ptr[4]_buf_len[4]_equal_68_o ),
    .O(N134)
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

