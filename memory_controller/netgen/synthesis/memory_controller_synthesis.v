////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: memory_controller_synthesis.v
// /___/   /\     Timestamp: Wed Aug 06 22:28:55 2014
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim memory_controller.ngc memory_controller_synthesis.v 
// Device	: xc6slx9-2-tqg144
// Input file	: memory_controller.ngc
// Output file	: C:\Users\S243372\Dropbox\Workspaces\Projects_FPGA\memory_controller\netgen\synthesis\memory_controller_synthesis.v
// # of Modules	: 1
// Design Name	: memory_controller
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

module memory_controller (
  clk_in, rstn, req, write, ack, clk, clke, csn, rasn, casn, wen, damh, daml, addr_req_in, data, data_inout, bank, mem_addr
);
  input clk_in;
  input rstn;
  input req;
  input write;
  output ack;
  output clk;
  output clke;
  output csn;
  output rasn;
  output casn;
  output wen;
  output damh;
  output daml;
  input [21 : 0] addr_req_in;
  inout [15 : 0] data;
  inout [15 : 0] data_inout;
  output [1 : 0] bank;
  output [11 : 0] mem_addr;
  wire addr_req_in_21_IBUF_0;
  wire addr_req_in_20_IBUF_1;
  wire addr_req_in_19_IBUF_2;
  wire addr_req_in_18_IBUF_3;
  wire addr_req_in_17_IBUF_4;
  wire addr_req_in_16_IBUF_5;
  wire addr_req_in_15_IBUF_6;
  wire addr_req_in_14_IBUF_7;
  wire addr_req_in_13_IBUF_8;
  wire addr_req_in_12_IBUF_9;
  wire addr_req_in_11_IBUF_10;
  wire addr_req_in_10_IBUF_11;
  wire addr_req_in_9_IBUF_12;
  wire addr_req_in_8_IBUF_13;
  wire addr_req_in_7_IBUF_14;
  wire addr_req_in_6_IBUF_15;
  wire addr_req_in_5_IBUF_16;
  wire addr_req_in_4_IBUF_17;
  wire addr_req_in_3_IBUF_18;
  wire addr_req_in_2_IBUF_19;
  wire addr_req_in_1_IBUF_20;
  wire addr_req_in_0_IBUF_21;
  wire data_15_IBUF_22;
  wire data_14_IBUF_23;
  wire data_13_IBUF_24;
  wire data_12_IBUF_25;
  wire data_11_IBUF_26;
  wire data_10_IBUF_27;
  wire data_9_IBUF_28;
  wire data_8_IBUF_29;
  wire data_7_IBUF_30;
  wire data_6_IBUF_31;
  wire data_5_IBUF_32;
  wire data_4_IBUF_33;
  wire data_3_IBUF_34;
  wire data_2_IBUF_35;
  wire data_1_IBUF_36;
  wire data_0_IBUF_37;
  wire clk_in_IBUFG_38;
  wire rstn_IBUF_39;
  wire req_IBUF_40;
  wire write_IBUF_41;
  wire clk_OBUF_64;
  wire rst;
  wire init_enable_66;
  wire clke_OBUF_67;
  wire mem_addr_11_68;
  wire mem_addr_10_69;
  wire mem_addr_9_70;
  wire mem_addr_8_71;
  wire mem_addr_7_72;
  wire mem_addr_6_73;
  wire mem_addr_5_74;
  wire mem_addr_4_75;
  wire mem_addr_3_76;
  wire mem_addr_2_77;
  wire mem_addr_1_78;
  wire mem_addr_0_79;
  wire ack_OBUF_80;
  wire csn_OBUF_81;
  wire rasn_OBUF_82;
  wire casn_OBUF_83;
  wire wen_OBUF_84;
  wire row_diff_85;
  wire bank_1_86;
  wire bank_0_87;
  wire refresh_req_88;
  wire \req_req_in_prog[1]_OR_57_o ;
  wire write_INV_5_o;
  wire \addr_req[21]_addr_req_in[21]_not_equal_2_o ;
  wire \refresh_clk/out1_110 ;
  wire \init_clk/out1_111 ;
  wire init_state_FSM_FFd1_112;
  wire init_state_FSM_FFd8_113;
  wire init_state_FSM_FFd7_114;
  wire init_state_FSM_FFd6_115;
  wire init_state_FSM_FFd5_116;
  wire init_state_FSM_FFd4_117;
  wire init_state_FSM_FFd3_118;
  wire init_state_FSM_FFd2_119;
  wire op_state_FSM_FFd1_120;
  wire op_state_FSM_FFd2_121;
  wire op_state_FSM_FFd3_122;
  wire refresh_time_refresh_req_OR_59_o;
  wire \req_req_in_prog[1]_OR_61_o ;
  wire \init_state[3]_INV_25_o ;
  wire \init_state[3]_init_state[3]_OR_92_o ;
  wire \op_state[2]_GND_1_o_wide_mux_83_OUT<1> ;
  wire \op_state[2]_GND_1_o_wide_mux_83_OUT<0> ;
  wire \op_state[2]_GND_1_o_wide_mux_82_OUT<11> ;
  wire \op_state[2]_GND_1_o_wide_mux_82_OUT<9> ;
  wire \op_state[2]_GND_1_o_wide_mux_82_OUT<8> ;
  wire \op_state[2]_GND_1_o_wide_mux_82_OUT<7> ;
  wire \op_state[2]_GND_1_o_wide_mux_82_OUT<6> ;
  wire \op_state[2]_GND_1_o_wide_mux_82_OUT<5> ;
  wire \op_state[2]_GND_1_o_wide_mux_82_OUT<4> ;
  wire \op_state[2]_GND_1_o_wide_mux_82_OUT<3> ;
  wire \op_state[2]_GND_1_o_wide_mux_82_OUT<2> ;
  wire \op_state[2]_GND_1_o_wide_mux_82_OUT<1> ;
  wire \op_state[2]_GND_1_o_wide_mux_82_OUT<0> ;
  wire \init_state[3]_GND_1_o_Select_110_o ;
  wire \init_state[3]_PWR_1_o_Select_101_o ;
  wire \init_state[3]_PWR_1_o_Select_103_o ;
  wire \init_state[3]_PWR_1_o_Select_105_o ;
  wire \init_state[3]_PWR_1_o_Select_95_o ;
  wire \init_state[3]_GND_1_o_select_107_OUT<10> ;
  wire \init_state[3]_GND_1_o_select_106_OUT<1> ;
  wire \init_state[3]_GND_1_o_select_106_OUT<0> ;
  wire enable;
  wire N1;
  wire \req_in_prog[1]_write_AND_1_o_inv ;
  wire req1_151;
  wire Reset_OR_DriverANDClockEnable;
  wire \init_state_FSM_FFd5-In ;
  wire \init_state_FSM_FFd4-In ;
  wire \init_state_FSM_FFd3-In ;
  wire \init_state_FSM_FFd2-In ;
  wire \init_state_FSM_FFd1-In ;
  wire \op_state_FSM_FFd1-In2 ;
  wire \op_state_FSM_FFd2-In2 ;
  wire \op_state_FSM_FFd3-In1 ;
  wire \init_state/n0041_0 ;
  wire \Mcompar_addr_req[21]_addr_req_in[21]_not_equal_2_o_lut<0>_162 ;
  wire \Mcompar_addr_req[21]_addr_req_in[21]_not_equal_2_o_cy<0>_163 ;
  wire \Mcompar_addr_req[21]_addr_req_in[21]_not_equal_2_o_lut<1>_164 ;
  wire \Mcompar_addr_req[21]_addr_req_in[21]_not_equal_2_o_cy<1>_165 ;
  wire \Mcompar_addr_req[21]_addr_req_in[21]_not_equal_2_o_lut<2>_166 ;
  wire \Mcompar_addr_req[21]_addr_req_in[21]_not_equal_2_o_cy<2>_167 ;
  wire \Mcompar_addr_req[21]_addr_req_in[21]_not_equal_2_o_lut<3>_168 ;
  wire \Mcompar_addr_req[21]_addr_req_in[21]_not_equal_2_o_cy<3>_169 ;
  wire \Mcompar_addr_req[21]_addr_req_in[21]_not_equal_2_o_lut<4>_170 ;
  wire \Mmux_op_state[2]_GND_1_o_wide_mux_82_OUT1911 ;
  wire \init_state_init_state[3]_GND_1_o_select_106_OUT<0>1 ;
  wire \init_state_init_state[3]_PWR_1_o_Select_103_o2_175 ;
  wire \refresh_clk/Mcount_counter8 ;
  wire \refresh_clk/Mcount_counter7 ;
  wire \refresh_clk/Mcount_counter6 ;
  wire \refresh_clk/Mcount_counter5 ;
  wire \refresh_clk/Mcount_counter4 ;
  wire \refresh_clk/Mcount_counter3 ;
  wire \refresh_clk/Mcount_counter2 ;
  wire \refresh_clk/Mcount_counter1 ;
  wire \refresh_clk/Mcount_counter ;
  wire \refresh_clk/GND_3_o_GND_3_o_equal_5_o_inv ;
  wire \refresh_clk/out1_inv ;
  wire \init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<10>_212 ;
  wire \init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<9>_213 ;
  wire \init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<8>_214 ;
  wire \init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<7>_215 ;
  wire \init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<6>_216 ;
  wire \init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<5>_217 ;
  wire \init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<4>_218 ;
  wire \init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<3>_219 ;
  wire \init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<2>_220 ;
  wire \init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<1>_221 ;
  wire \init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<0>_222 ;
  wire \init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_lut<0> ;
  wire \init_clk/_n0039_inv ;
  wire \init_clk/counter[11]_GND_4_o_add_5_OUT<0> ;
  wire \init_clk/counter[11]_GND_4_o_add_5_OUT<1> ;
  wire \init_clk/counter[11]_GND_4_o_add_5_OUT<2> ;
  wire \init_clk/counter[11]_GND_4_o_add_5_OUT<3> ;
  wire \init_clk/counter[11]_GND_4_o_add_5_OUT<4> ;
  wire \init_clk/counter[11]_GND_4_o_add_5_OUT<5> ;
  wire \init_clk/counter[11]_GND_4_o_add_5_OUT<6> ;
  wire \init_clk/counter[11]_GND_4_o_add_5_OUT<7> ;
  wire \init_clk/counter[11]_GND_4_o_add_5_OUT<8> ;
  wire \init_clk/counter[11]_GND_4_o_add_5_OUT<9> ;
  wire \init_clk/counter[11]_GND_4_o_add_5_OUT<10> ;
  wire \init_clk/counter[11]_GND_4_o_add_5_OUT<11> ;
  wire \init_clk/GND_4_o_counter[11]_mux_8_OUT<0> ;
  wire \init_clk/GND_4_o_counter[11]_mux_8_OUT<1> ;
  wire \init_clk/GND_4_o_counter[11]_mux_8_OUT<2> ;
  wire \init_clk/GND_4_o_counter[11]_mux_8_OUT<3> ;
  wire \init_clk/GND_4_o_counter[11]_mux_8_OUT<4> ;
  wire \init_clk/GND_4_o_counter[11]_mux_8_OUT<5> ;
  wire \init_clk/GND_4_o_counter[11]_mux_8_OUT<6> ;
  wire \init_clk/GND_4_o_counter[11]_mux_8_OUT<7> ;
  wire \init_clk/GND_4_o_counter[11]_mux_8_OUT<8> ;
  wire \init_clk/GND_4_o_counter[11]_mux_8_OUT<9> ;
  wire \init_clk/GND_4_o_counter[11]_mux_8_OUT<10> ;
  wire \init_clk/GND_4_o_counter[11]_mux_8_OUT<11> ;
  wire \Mmux_op_state[2]_GND_1_o_wide_mux_82_OUT18 ;
  wire \Mmux_op_state[2]_GND_1_o_wide_mux_82_OUT181_262 ;
  wire \Mmux_op_state[2]_GND_1_o_wide_mux_82_OUT16 ;
  wire \Mmux_op_state[2]_GND_1_o_wide_mux_82_OUT161_264 ;
  wire \Mmux_op_state[2]_GND_1_o_wide_mux_82_OUT14 ;
  wire \Mmux_op_state[2]_GND_1_o_wide_mux_82_OUT141_266 ;
  wire \Mmux_op_state[2]_GND_1_o_wide_mux_82_OUT12 ;
  wire \Mmux_op_state[2]_GND_1_o_wide_mux_82_OUT121_268 ;
  wire \Mmux_op_state[2]_GND_1_o_wide_mux_82_OUT10 ;
  wire \Mmux_op_state[2]_GND_1_o_wide_mux_82_OUT101_270 ;
  wire \Mmux_op_state[2]_GND_1_o_wide_mux_82_OUT8 ;
  wire \Mmux_op_state[2]_GND_1_o_wide_mux_82_OUT81_272 ;
  wire \Mmux_op_state[2]_GND_1_o_wide_mux_82_OUT6 ;
  wire \Mmux_op_state[2]_GND_1_o_wide_mux_82_OUT61_274 ;
  wire \Mmux_op_state[2]_GND_1_o_wide_mux_82_OUT2 ;
  wire \Mmux_op_state[2]_GND_1_o_wide_mux_82_OUT21_276 ;
  wire \init_state_init_state[3]_GND_1_o_Select_110_o ;
  wire \init_state_init_state[3]_GND_1_o_Select_110_o1_278 ;
  wire N3;
  wire N5;
  wire N7;
  wire \init_state_init_state[3]_PWR_1_o_Select_103_o ;
  wire \init_state_init_state[3]_PWR_1_o_Select_103_o1_283 ;
  wire \op_state_FSM_FFd3-In11_284 ;
  wire \op_state_FSM_FFd3-In12_285 ;
  wire \op_state_FSM_FFd1-In21 ;
  wire \op_state_FSM_FFd1-In22_287 ;
  wire \init_state_init_state[3]_PWR_1_o_Select_105_o ;
  wire N9;
  wire \init_clk/GND_4_o_GND_4_o_equal_5_o<11>1_291 ;
  wire refresh_req_glue_set_355;
  wire \init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<10>_rt_356 ;
  wire \init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<9>_rt_357 ;
  wire \init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<8>_rt_358 ;
  wire \init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<7>_rt_359 ;
  wire \init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<6>_rt_360 ;
  wire \init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<5>_rt_361 ;
  wire \init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<4>_rt_362 ;
  wire \init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<3>_rt_363 ;
  wire \init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<2>_rt_364 ;
  wire \init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<1>_rt_365 ;
  wire \init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_xor<11>_rt_366 ;
  wire \refresh_clk/out1_rstpot_367 ;
  wire \init_clk/out1_rstpot_368 ;
  wire row_diff_rstpot_369;
  wire N43;
  wire N45;
  wire N47;
  wire N48;
  wire N53;
  wire N54;
  wire N56;
  wire N57;
  wire N59;
  wire N60;
  wire N62;
  wire N63;
  wire N65;
  wire N66;
  wire N68;
  wire N69;
  wire N71;
  wire N72;
  wire N74;
  wire N75;
  wire N77;
  wire N79;
  wire N81;
  wire N83;
  wire N85;
  wire N87;
  wire N89;
  wire N91;
  wire N93;
  wire N94;
  wire N96;
  wire N97;
  wire N99;
  wire N100;
  wire N102;
  wire N104;
  wire N108;
  wire \Mmux_op_state[2]_GND_1_o_wide_mux_83_OUT21_lut_407 ;
  wire \addr_req[21]_addr_req_in[21]_not_equal_2_o_l1 ;
  wire \Mmux_op_state[2]_GND_1_o_wide_mux_83_OUT21_lut1_409 ;
  wire N112;
  wire N114;
  wire N116;
  wire N117;
  wire \refresh_clk/Mcount_counter_cy<0>_rt_414 ;
  wire op_state_FSM_FFd2_1_415;
  wire refresh_time_refresh_req_OR_59_o1_416;
  wire [21 : 0] addr_req;
  wire [1 : 0] req_in_prog;
  wire [1 : 0] state_clk_count;
  wire [8 : 1] \refresh_clk/Mcount_counter_lut ;
  wire [7 : 0] \refresh_clk/Mcount_counter_cy ;
  wire [8 : 0] \refresh_clk/counter ;
  wire [11 : 0] \init_clk/counter ;
  wire [11 : 11] \init_clk/GND_4_o_GND_4_o_equal_5_o ;
  VCC   XST_VCC (
    .P(enable)
  );
  GND   XST_GND (
    .G(N1)
  );
  FDRE   addr_req_0 (
    .C(clk_OBUF_64),
    .CE(req_IBUF_40),
    .D(addr_req_in_0_IBUF_21),
    .R(rst),
    .Q(addr_req[0])
  );
  FDRE   addr_req_1 (
    .C(clk_OBUF_64),
    .CE(req_IBUF_40),
    .D(addr_req_in_1_IBUF_20),
    .R(rst),
    .Q(addr_req[1])
  );
  FDRE   addr_req_2 (
    .C(clk_OBUF_64),
    .CE(req_IBUF_40),
    .D(addr_req_in_2_IBUF_19),
    .R(rst),
    .Q(addr_req[2])
  );
  FDRE   addr_req_3 (
    .C(clk_OBUF_64),
    .CE(req_IBUF_40),
    .D(addr_req_in_3_IBUF_18),
    .R(rst),
    .Q(addr_req[3])
  );
  FDRE   addr_req_4 (
    .C(clk_OBUF_64),
    .CE(req_IBUF_40),
    .D(addr_req_in_4_IBUF_17),
    .R(rst),
    .Q(addr_req[4])
  );
  FDRE   addr_req_5 (
    .C(clk_OBUF_64),
    .CE(req_IBUF_40),
    .D(addr_req_in_5_IBUF_16),
    .R(rst),
    .Q(addr_req[5])
  );
  FDRE   addr_req_6 (
    .C(clk_OBUF_64),
    .CE(req_IBUF_40),
    .D(addr_req_in_6_IBUF_15),
    .R(rst),
    .Q(addr_req[6])
  );
  FDRE   addr_req_7 (
    .C(clk_OBUF_64),
    .CE(req_IBUF_40),
    .D(addr_req_in_7_IBUF_14),
    .R(rst),
    .Q(addr_req[7])
  );
  FDRE   addr_req_8 (
    .C(clk_OBUF_64),
    .CE(req_IBUF_40),
    .D(addr_req_in_8_IBUF_13),
    .R(rst),
    .Q(addr_req[8])
  );
  FDRE   addr_req_9 (
    .C(clk_OBUF_64),
    .CE(req_IBUF_40),
    .D(addr_req_in_9_IBUF_12),
    .R(rst),
    .Q(addr_req[9])
  );
  FDRE   addr_req_10 (
    .C(clk_OBUF_64),
    .CE(req_IBUF_40),
    .D(addr_req_in_10_IBUF_11),
    .R(rst),
    .Q(addr_req[10])
  );
  FDRE   addr_req_11 (
    .C(clk_OBUF_64),
    .CE(req_IBUF_40),
    .D(addr_req_in_11_IBUF_10),
    .R(rst),
    .Q(addr_req[11])
  );
  FDRE   addr_req_12 (
    .C(clk_OBUF_64),
    .CE(req_IBUF_40),
    .D(addr_req_in_12_IBUF_9),
    .R(rst),
    .Q(addr_req[12])
  );
  FDRE   addr_req_13 (
    .C(clk_OBUF_64),
    .CE(req_IBUF_40),
    .D(addr_req_in_13_IBUF_8),
    .R(rst),
    .Q(addr_req[13])
  );
  FDRE   addr_req_14 (
    .C(clk_OBUF_64),
    .CE(req_IBUF_40),
    .D(addr_req_in_14_IBUF_7),
    .R(rst),
    .Q(addr_req[14])
  );
  FDRE   addr_req_15 (
    .C(clk_OBUF_64),
    .CE(req_IBUF_40),
    .D(addr_req_in_15_IBUF_6),
    .R(rst),
    .Q(addr_req[15])
  );
  FDRE   addr_req_16 (
    .C(clk_OBUF_64),
    .CE(req_IBUF_40),
    .D(addr_req_in_16_IBUF_5),
    .R(rst),
    .Q(addr_req[16])
  );
  FDRE   addr_req_17 (
    .C(clk_OBUF_64),
    .CE(req_IBUF_40),
    .D(addr_req_in_17_IBUF_4),
    .R(rst),
    .Q(addr_req[17])
  );
  FDRE   addr_req_18 (
    .C(clk_OBUF_64),
    .CE(req_IBUF_40),
    .D(addr_req_in_18_IBUF_3),
    .R(rst),
    .Q(addr_req[18])
  );
  FDRE   addr_req_19 (
    .C(clk_OBUF_64),
    .CE(req_IBUF_40),
    .D(addr_req_in_19_IBUF_2),
    .R(rst),
    .Q(addr_req[19])
  );
  FDRE   addr_req_20 (
    .C(clk_OBUF_64),
    .CE(req_IBUF_40),
    .D(addr_req_in_20_IBUF_1),
    .R(rst),
    .Q(addr_req[20])
  );
  FDRE   addr_req_21 (
    .C(clk_OBUF_64),
    .CE(req_IBUF_40),
    .D(addr_req_in_21_IBUF_0),
    .R(rst),
    .Q(addr_req[21])
  );
  FDR   init_enable (
    .C(clk_OBUF_64),
    .D(\init_state[3]_PWR_1_o_Select_95_o ),
    .R(rst),
    .Q(init_enable_66)
  );
  FDR   mem_addr_0 (
    .C(clk_OBUF_64),
    .D(\op_state[2]_GND_1_o_wide_mux_82_OUT<0> ),
    .R(\init_state/n0041_0 ),
    .Q(mem_addr_0_79)
  );
  FDR   mem_addr_1 (
    .C(clk_OBUF_64),
    .D(\op_state[2]_GND_1_o_wide_mux_82_OUT<1> ),
    .R(\init_state/n0041_0 ),
    .Q(mem_addr_1_78)
  );
  FDR   mem_addr_2 (
    .C(clk_OBUF_64),
    .D(\op_state[2]_GND_1_o_wide_mux_82_OUT<2> ),
    .R(\init_state/n0041_0 ),
    .Q(mem_addr_2_77)
  );
  FDR   mem_addr_3 (
    .C(clk_OBUF_64),
    .D(\op_state[2]_GND_1_o_wide_mux_82_OUT<3> ),
    .R(\init_state/n0041_0 ),
    .Q(mem_addr_3_76)
  );
  FDR   mem_addr_4 (
    .C(clk_OBUF_64),
    .D(\op_state[2]_GND_1_o_wide_mux_82_OUT<4> ),
    .R(\init_state/n0041_0 ),
    .Q(mem_addr_4_75)
  );
  FDR   mem_addr_5 (
    .C(clk_OBUF_64),
    .D(\op_state[2]_GND_1_o_wide_mux_82_OUT<5> ),
    .R(\init_state/n0041_0 ),
    .Q(mem_addr_5_74)
  );
  FDR   mem_addr_6 (
    .C(clk_OBUF_64),
    .D(\op_state[2]_GND_1_o_wide_mux_82_OUT<6> ),
    .R(\init_state/n0041_0 ),
    .Q(mem_addr_6_73)
  );
  FDR   mem_addr_7 (
    .C(clk_OBUF_64),
    .D(\op_state[2]_GND_1_o_wide_mux_82_OUT<7> ),
    .R(\init_state/n0041_0 ),
    .Q(mem_addr_7_72)
  );
  FDR   mem_addr_8 (
    .C(clk_OBUF_64),
    .D(\op_state[2]_GND_1_o_wide_mux_82_OUT<8> ),
    .R(\init_state/n0041_0 ),
    .Q(mem_addr_8_71)
  );
  FDR   mem_addr_9 (
    .C(clk_OBUF_64),
    .D(\op_state[2]_GND_1_o_wide_mux_82_OUT<9> ),
    .R(\init_state/n0041_0 ),
    .Q(mem_addr_9_70)
  );
  FDR   mem_addr_10 (
    .C(clk_OBUF_64),
    .D(\init_state[3]_GND_1_o_select_107_OUT<10> ),
    .R(rst),
    .Q(mem_addr_10_69)
  );
  FDR   mem_addr_11 (
    .C(clk_OBUF_64),
    .D(\op_state[2]_GND_1_o_wide_mux_82_OUT<11> ),
    .R(\init_state/n0041_0 ),
    .Q(mem_addr_11_68)
  );
  FDR   clke_38 (
    .C(clk_OBUF_64),
    .D(\init_state[3]_INV_25_o ),
    .R(rst),
    .Q(clke_OBUF_67)
  );
  FDR   state_clk_count_0 (
    .C(clk_OBUF_64),
    .D(\init_state[3]_GND_1_o_select_106_OUT<0> ),
    .R(rst),
    .Q(state_clk_count[0])
  );
  FDR   state_clk_count_1 (
    .C(clk_OBUF_64),
    .D(\init_state[3]_GND_1_o_select_106_OUT<1> ),
    .R(rst),
    .Q(state_clk_count[1])
  );
  FDS   rasn_41 (
    .C(clk_OBUF_64),
    .D(\init_state[3]_PWR_1_o_Select_101_o ),
    .S(rst),
    .Q(rasn_OBUF_82)
  );
  FDR   ack_42 (
    .C(clk_OBUF_64),
    .D(\init_state[3]_GND_1_o_Select_110_o ),
    .R(rst),
    .Q(ack_OBUF_80)
  );
  FDS   csn_43 (
    .C(clk_OBUF_64),
    .D(\init_state[3]_init_state[3]_OR_92_o ),
    .S(rst),
    .Q(csn_OBUF_81)
  );
  FDS   casn_44 (
    .C(clk_OBUF_64),
    .D(\init_state[3]_PWR_1_o_Select_103_o ),
    .S(rst),
    .Q(casn_OBUF_83)
  );
  FDS   wen_45 (
    .C(clk_OBUF_64),
    .D(\init_state[3]_PWR_1_o_Select_105_o ),
    .S(rst),
    .Q(wen_OBUF_84)
  );
  FDRE   req_in_prog_0 (
    .C(clk_OBUF_64),
    .CE(req1_151),
    .D(write_INV_5_o),
    .R(Reset_OR_DriverANDClockEnable),
    .Q(req_in_prog[0])
  );
  FDRE   req_in_prog_1 (
    .C(clk_OBUF_64),
    .CE(req1_151),
    .D(write_IBUF_41),
    .R(Reset_OR_DriverANDClockEnable),
    .Q(req_in_prog[1])
  );
  FDR   bank_0 (
    .C(clk_OBUF_64),
    .D(\op_state[2]_GND_1_o_wide_mux_83_OUT<0> ),
    .R(\init_state/n0041_0 ),
    .Q(bank_0_87)
  );
  FDR   bank_1 (
    .C(clk_OBUF_64),
    .D(\op_state[2]_GND_1_o_wide_mux_83_OUT<1> ),
    .R(\init_state/n0041_0 ),
    .Q(bank_1_86)
  );
  FDS   init_state_FSM_FFd8 (
    .C(clk_OBUF_64),
    .D(N1),
    .S(rst),
    .Q(init_state_FSM_FFd8_113)
  );
  FDR   init_state_FSM_FFd4 (
    .C(clk_OBUF_64),
    .D(\init_state_FSM_FFd4-In ),
    .R(rst),
    .Q(init_state_FSM_FFd4_117)
  );
  FDR   init_state_FSM_FFd5 (
    .C(clk_OBUF_64),
    .D(\init_state_FSM_FFd5-In ),
    .R(rst),
    .Q(init_state_FSM_FFd5_116)
  );
  FDR   init_state_FSM_FFd3 (
    .C(clk_OBUF_64),
    .D(\init_state_FSM_FFd3-In ),
    .R(rst),
    .Q(init_state_FSM_FFd3_118)
  );
  FDR   init_state_FSM_FFd2 (
    .C(clk_OBUF_64),
    .D(\init_state_FSM_FFd2-In ),
    .R(rst),
    .Q(init_state_FSM_FFd2_119)
  );
  FDR   init_state_FSM_FFd1 (
    .C(clk_OBUF_64),
    .D(\init_state_FSM_FFd1-In ),
    .R(rst),
    .Q(init_state_FSM_FFd1_112)
  );
  FDR   op_state_FSM_FFd3 (
    .C(clk_OBUF_64),
    .D(\op_state_FSM_FFd3-In1 ),
    .R(\init_state/n0041_0 ),
    .Q(op_state_FSM_FFd3_122)
  );
  FDR   op_state_FSM_FFd2 (
    .C(clk_OBUF_64),
    .D(\op_state_FSM_FFd2-In2 ),
    .R(\init_state/n0041_0 ),
    .Q(op_state_FSM_FFd2_121)
  );
  FDR   op_state_FSM_FFd1 (
    .C(clk_OBUF_64),
    .D(\op_state_FSM_FFd1-In2 ),
    .R(\init_state/n0041_0 ),
    .Q(op_state_FSM_FFd1_120)
  );
  FDR   init_state_FSM_FFd7 (
    .C(clk_OBUF_64),
    .D(init_state_FSM_FFd8_113),
    .R(rst),
    .Q(init_state_FSM_FFd7_114)
  );
  FDR   init_state_FSM_FFd6 (
    .C(clk_OBUF_64),
    .D(init_state_FSM_FFd7_114),
    .R(rst),
    .Q(init_state_FSM_FFd6_115)
  );
  LUT6 #(
    .INIT ( 64'h8040201008040201 ))
  \Mcompar_addr_req[21]_addr_req_in[21]_not_equal_2_o_lut<0>  (
    .I0(addr_req_in_10_IBUF_11),
    .I1(addr_req_in_9_IBUF_12),
    .I2(addr_req_in_8_IBUF_13),
    .I3(addr_req[10]),
    .I4(addr_req[9]),
    .I5(addr_req[8]),
    .O(\Mcompar_addr_req[21]_addr_req_in[21]_not_equal_2_o_lut<0>_162 )
  );
  MUXCY   \Mcompar_addr_req[21]_addr_req_in[21]_not_equal_2_o_cy<0>  (
    .CI(enable),
    .DI(N1),
    .S(\Mcompar_addr_req[21]_addr_req_in[21]_not_equal_2_o_lut<0>_162 ),
    .O(\Mcompar_addr_req[21]_addr_req_in[21]_not_equal_2_o_cy<0>_163 )
  );
  LUT6 #(
    .INIT ( 64'h8040201008040201 ))
  \Mcompar_addr_req[21]_addr_req_in[21]_not_equal_2_o_lut<1>  (
    .I0(addr_req_in_13_IBUF_8),
    .I1(addr_req_in_12_IBUF_9),
    .I2(addr_req_in_11_IBUF_10),
    .I3(addr_req[13]),
    .I4(addr_req[12]),
    .I5(addr_req[11]),
    .O(\Mcompar_addr_req[21]_addr_req_in[21]_not_equal_2_o_lut<1>_164 )
  );
  MUXCY   \Mcompar_addr_req[21]_addr_req_in[21]_not_equal_2_o_cy<1>  (
    .CI(\Mcompar_addr_req[21]_addr_req_in[21]_not_equal_2_o_cy<0>_163 ),
    .DI(N1),
    .S(\Mcompar_addr_req[21]_addr_req_in[21]_not_equal_2_o_lut<1>_164 ),
    .O(\Mcompar_addr_req[21]_addr_req_in[21]_not_equal_2_o_cy<1>_165 )
  );
  LUT6 #(
    .INIT ( 64'h8040201008040201 ))
  \Mcompar_addr_req[21]_addr_req_in[21]_not_equal_2_o_lut<2>  (
    .I0(addr_req_in_16_IBUF_5),
    .I1(addr_req_in_15_IBUF_6),
    .I2(addr_req_in_14_IBUF_7),
    .I3(addr_req[16]),
    .I4(addr_req[15]),
    .I5(addr_req[14]),
    .O(\Mcompar_addr_req[21]_addr_req_in[21]_not_equal_2_o_lut<2>_166 )
  );
  MUXCY   \Mcompar_addr_req[21]_addr_req_in[21]_not_equal_2_o_cy<2>  (
    .CI(\Mcompar_addr_req[21]_addr_req_in[21]_not_equal_2_o_cy<1>_165 ),
    .DI(N1),
    .S(\Mcompar_addr_req[21]_addr_req_in[21]_not_equal_2_o_lut<2>_166 ),
    .O(\Mcompar_addr_req[21]_addr_req_in[21]_not_equal_2_o_cy<2>_167 )
  );
  LUT6 #(
    .INIT ( 64'h8040201008040201 ))
  \Mcompar_addr_req[21]_addr_req_in[21]_not_equal_2_o_lut<3>  (
    .I0(addr_req_in_19_IBUF_2),
    .I1(addr_req_in_18_IBUF_3),
    .I2(addr_req_in_17_IBUF_4),
    .I3(addr_req[19]),
    .I4(addr_req[18]),
    .I5(addr_req[17]),
    .O(\Mcompar_addr_req[21]_addr_req_in[21]_not_equal_2_o_lut<3>_168 )
  );
  MUXCY   \Mcompar_addr_req[21]_addr_req_in[21]_not_equal_2_o_cy<3>  (
    .CI(\Mcompar_addr_req[21]_addr_req_in[21]_not_equal_2_o_cy<2>_167 ),
    .DI(N1),
    .S(\Mcompar_addr_req[21]_addr_req_in[21]_not_equal_2_o_lut<3>_168 ),
    .O(\Mcompar_addr_req[21]_addr_req_in[21]_not_equal_2_o_cy<3>_169 )
  );
  LUT4 #(
    .INIT ( 16'h8421 ))
  \Mcompar_addr_req[21]_addr_req_in[21]_not_equal_2_o_lut<4>  (
    .I0(addr_req_in_21_IBUF_0),
    .I1(addr_req_in_20_IBUF_1),
    .I2(addr_req[21]),
    .I3(addr_req[20]),
    .O(\Mcompar_addr_req[21]_addr_req_in[21]_not_equal_2_o_lut<4>_170 )
  );
  MUXCY   \Mcompar_addr_req[21]_addr_req_in[21]_not_equal_2_o_cy<4>  (
    .CI(\Mcompar_addr_req[21]_addr_req_in[21]_not_equal_2_o_cy<3>_169 ),
    .DI(N1),
    .S(\Mcompar_addr_req[21]_addr_req_in[21]_not_equal_2_o_lut<4>_170 ),
    .O(\addr_req[21]_addr_req_in[21]_not_equal_2_o )
  );
  BUFG   BUFG_inst (
    .O(clk_OBUF_64),
    .I(clk_in_IBUFG_38)
  );
  FDCE   \refresh_clk/counter_8  (
    .C(clk_OBUF_64),
    .CE(\refresh_clk/out1_inv ),
    .CLR(rst),
    .D(\refresh_clk/Mcount_counter8 ),
    .Q(\refresh_clk/counter [8])
  );
  FDCE   \refresh_clk/counter_7  (
    .C(clk_OBUF_64),
    .CE(\refresh_clk/out1_inv ),
    .CLR(rst),
    .D(\refresh_clk/Mcount_counter7 ),
    .Q(\refresh_clk/counter [7])
  );
  FDCE   \refresh_clk/counter_6  (
    .C(clk_OBUF_64),
    .CE(\refresh_clk/out1_inv ),
    .CLR(rst),
    .D(\refresh_clk/Mcount_counter6 ),
    .Q(\refresh_clk/counter [6])
  );
  FDCE   \refresh_clk/counter_5  (
    .C(clk_OBUF_64),
    .CE(\refresh_clk/out1_inv ),
    .CLR(rst),
    .D(\refresh_clk/Mcount_counter5 ),
    .Q(\refresh_clk/counter [5])
  );
  FDCE   \refresh_clk/counter_4  (
    .C(clk_OBUF_64),
    .CE(\refresh_clk/out1_inv ),
    .CLR(rst),
    .D(\refresh_clk/Mcount_counter4 ),
    .Q(\refresh_clk/counter [4])
  );
  FDCE   \refresh_clk/counter_3  (
    .C(clk_OBUF_64),
    .CE(\refresh_clk/out1_inv ),
    .CLR(rst),
    .D(\refresh_clk/Mcount_counter3 ),
    .Q(\refresh_clk/counter [3])
  );
  FDCE   \refresh_clk/counter_2  (
    .C(clk_OBUF_64),
    .CE(\refresh_clk/out1_inv ),
    .CLR(rst),
    .D(\refresh_clk/Mcount_counter2 ),
    .Q(\refresh_clk/counter [2])
  );
  FDCE   \refresh_clk/counter_1  (
    .C(clk_OBUF_64),
    .CE(\refresh_clk/out1_inv ),
    .CLR(rst),
    .D(\refresh_clk/Mcount_counter1 ),
    .Q(\refresh_clk/counter [1])
  );
  FDCE   \refresh_clk/counter_0  (
    .C(clk_OBUF_64),
    .CE(\refresh_clk/out1_inv ),
    .CLR(rst),
    .D(\refresh_clk/Mcount_counter ),
    .Q(\refresh_clk/counter [0])
  );
  XORCY   \refresh_clk/Mcount_counter_xor<8>  (
    .CI(\refresh_clk/Mcount_counter_cy [7]),
    .LI(\refresh_clk/Mcount_counter_lut [8]),
    .O(\refresh_clk/Mcount_counter8 )
  );
  XORCY   \refresh_clk/Mcount_counter_xor<7>  (
    .CI(\refresh_clk/Mcount_counter_cy [6]),
    .LI(\refresh_clk/Mcount_counter_lut [7]),
    .O(\refresh_clk/Mcount_counter7 )
  );
  MUXCY   \refresh_clk/Mcount_counter_cy<7>  (
    .CI(\refresh_clk/Mcount_counter_cy [6]),
    .DI(N1),
    .S(\refresh_clk/Mcount_counter_lut [7]),
    .O(\refresh_clk/Mcount_counter_cy [7])
  );
  XORCY   \refresh_clk/Mcount_counter_xor<6>  (
    .CI(\refresh_clk/Mcount_counter_cy [5]),
    .LI(\refresh_clk/Mcount_counter_lut [6]),
    .O(\refresh_clk/Mcount_counter6 )
  );
  MUXCY   \refresh_clk/Mcount_counter_cy<6>  (
    .CI(\refresh_clk/Mcount_counter_cy [5]),
    .DI(N1),
    .S(\refresh_clk/Mcount_counter_lut [6]),
    .O(\refresh_clk/Mcount_counter_cy [6])
  );
  XORCY   \refresh_clk/Mcount_counter_xor<5>  (
    .CI(\refresh_clk/Mcount_counter_cy [4]),
    .LI(\refresh_clk/Mcount_counter_lut [5]),
    .O(\refresh_clk/Mcount_counter5 )
  );
  MUXCY   \refresh_clk/Mcount_counter_cy<5>  (
    .CI(\refresh_clk/Mcount_counter_cy [4]),
    .DI(N1),
    .S(\refresh_clk/Mcount_counter_lut [5]),
    .O(\refresh_clk/Mcount_counter_cy [5])
  );
  XORCY   \refresh_clk/Mcount_counter_xor<4>  (
    .CI(\refresh_clk/Mcount_counter_cy [3]),
    .LI(\refresh_clk/Mcount_counter_lut [4]),
    .O(\refresh_clk/Mcount_counter4 )
  );
  MUXCY   \refresh_clk/Mcount_counter_cy<4>  (
    .CI(\refresh_clk/Mcount_counter_cy [3]),
    .DI(N1),
    .S(\refresh_clk/Mcount_counter_lut [4]),
    .O(\refresh_clk/Mcount_counter_cy [4])
  );
  XORCY   \refresh_clk/Mcount_counter_xor<3>  (
    .CI(\refresh_clk/Mcount_counter_cy [2]),
    .LI(\refresh_clk/Mcount_counter_lut [3]),
    .O(\refresh_clk/Mcount_counter3 )
  );
  MUXCY   \refresh_clk/Mcount_counter_cy<3>  (
    .CI(\refresh_clk/Mcount_counter_cy [2]),
    .DI(N1),
    .S(\refresh_clk/Mcount_counter_lut [3]),
    .O(\refresh_clk/Mcount_counter_cy [3])
  );
  XORCY   \refresh_clk/Mcount_counter_xor<2>  (
    .CI(\refresh_clk/Mcount_counter_cy [1]),
    .LI(\refresh_clk/Mcount_counter_lut [2]),
    .O(\refresh_clk/Mcount_counter2 )
  );
  MUXCY   \refresh_clk/Mcount_counter_cy<2>  (
    .CI(\refresh_clk/Mcount_counter_cy [1]),
    .DI(N1),
    .S(\refresh_clk/Mcount_counter_lut [2]),
    .O(\refresh_clk/Mcount_counter_cy [2])
  );
  XORCY   \refresh_clk/Mcount_counter_xor<1>  (
    .CI(\refresh_clk/Mcount_counter_cy [0]),
    .LI(\refresh_clk/Mcount_counter_lut [1]),
    .O(\refresh_clk/Mcount_counter1 )
  );
  MUXCY   \refresh_clk/Mcount_counter_cy<1>  (
    .CI(\refresh_clk/Mcount_counter_cy [0]),
    .DI(N1),
    .S(\refresh_clk/Mcount_counter_lut [1]),
    .O(\refresh_clk/Mcount_counter_cy [1])
  );
  XORCY   \refresh_clk/Mcount_counter_xor<0>  (
    .CI(\refresh_clk/GND_3_o_GND_3_o_equal_5_o_inv ),
    .LI(\refresh_clk/Mcount_counter_cy<0>_rt_414 ),
    .O(\refresh_clk/Mcount_counter )
  );
  MUXCY   \refresh_clk/Mcount_counter_cy<0>  (
    .CI(\refresh_clk/GND_3_o_GND_3_o_equal_5_o_inv ),
    .DI(N1),
    .S(\refresh_clk/Mcount_counter_cy<0>_rt_414 ),
    .O(\refresh_clk/Mcount_counter_cy [0])
  );
  XORCY   \init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_xor<11>  (
    .CI(\init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<10>_212 ),
    .LI(\init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_xor<11>_rt_366 ),
    .O(\init_clk/counter[11]_GND_4_o_add_5_OUT<11> )
  );
  XORCY   \init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_xor<10>  (
    .CI(\init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<9>_213 ),
    .LI(\init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<10>_rt_356 ),
    .O(\init_clk/counter[11]_GND_4_o_add_5_OUT<10> )
  );
  MUXCY   \init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<10>  (
    .CI(\init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<9>_213 ),
    .DI(N1),
    .S(\init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<10>_rt_356 ),
    .O(\init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<10>_212 )
  );
  XORCY   \init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_xor<9>  (
    .CI(\init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<8>_214 ),
    .LI(\init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<9>_rt_357 ),
    .O(\init_clk/counter[11]_GND_4_o_add_5_OUT<9> )
  );
  MUXCY   \init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<9>  (
    .CI(\init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<8>_214 ),
    .DI(N1),
    .S(\init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<9>_rt_357 ),
    .O(\init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<9>_213 )
  );
  XORCY   \init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_xor<8>  (
    .CI(\init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<7>_215 ),
    .LI(\init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<8>_rt_358 ),
    .O(\init_clk/counter[11]_GND_4_o_add_5_OUT<8> )
  );
  MUXCY   \init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<8>  (
    .CI(\init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<7>_215 ),
    .DI(N1),
    .S(\init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<8>_rt_358 ),
    .O(\init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<8>_214 )
  );
  XORCY   \init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_xor<7>  (
    .CI(\init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<6>_216 ),
    .LI(\init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<7>_rt_359 ),
    .O(\init_clk/counter[11]_GND_4_o_add_5_OUT<7> )
  );
  MUXCY   \init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<7>  (
    .CI(\init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<6>_216 ),
    .DI(N1),
    .S(\init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<7>_rt_359 ),
    .O(\init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<7>_215 )
  );
  XORCY   \init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_xor<6>  (
    .CI(\init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<5>_217 ),
    .LI(\init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<6>_rt_360 ),
    .O(\init_clk/counter[11]_GND_4_o_add_5_OUT<6> )
  );
  MUXCY   \init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<6>  (
    .CI(\init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<5>_217 ),
    .DI(N1),
    .S(\init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<6>_rt_360 ),
    .O(\init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<6>_216 )
  );
  XORCY   \init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_xor<5>  (
    .CI(\init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<4>_218 ),
    .LI(\init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<5>_rt_361 ),
    .O(\init_clk/counter[11]_GND_4_o_add_5_OUT<5> )
  );
  MUXCY   \init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<5>  (
    .CI(\init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<4>_218 ),
    .DI(N1),
    .S(\init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<5>_rt_361 ),
    .O(\init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<5>_217 )
  );
  XORCY   \init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_xor<4>  (
    .CI(\init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<3>_219 ),
    .LI(\init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<4>_rt_362 ),
    .O(\init_clk/counter[11]_GND_4_o_add_5_OUT<4> )
  );
  MUXCY   \init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<4>  (
    .CI(\init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<3>_219 ),
    .DI(N1),
    .S(\init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<4>_rt_362 ),
    .O(\init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<4>_218 )
  );
  XORCY   \init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_xor<3>  (
    .CI(\init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<2>_220 ),
    .LI(\init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<3>_rt_363 ),
    .O(\init_clk/counter[11]_GND_4_o_add_5_OUT<3> )
  );
  MUXCY   \init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<3>  (
    .CI(\init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<2>_220 ),
    .DI(N1),
    .S(\init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<3>_rt_363 ),
    .O(\init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<3>_219 )
  );
  XORCY   \init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_xor<2>  (
    .CI(\init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<1>_221 ),
    .LI(\init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<2>_rt_364 ),
    .O(\init_clk/counter[11]_GND_4_o_add_5_OUT<2> )
  );
  MUXCY   \init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<2>  (
    .CI(\init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<1>_221 ),
    .DI(N1),
    .S(\init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<2>_rt_364 ),
    .O(\init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<2>_220 )
  );
  XORCY   \init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_xor<1>  (
    .CI(\init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<0>_222 ),
    .LI(\init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<1>_rt_365 ),
    .O(\init_clk/counter[11]_GND_4_o_add_5_OUT<1> )
  );
  MUXCY   \init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<1>  (
    .CI(\init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<0>_222 ),
    .DI(N1),
    .S(\init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<1>_rt_365 ),
    .O(\init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<1>_221 )
  );
  XORCY   \init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_xor<0>  (
    .CI(N1),
    .LI(\init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_lut<0> ),
    .O(\init_clk/counter[11]_GND_4_o_add_5_OUT<0> )
  );
  MUXCY   \init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<0>  (
    .CI(N1),
    .DI(enable),
    .S(\init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_lut<0> ),
    .O(\init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<0>_222 )
  );
  FDCE   \init_clk/counter_11  (
    .C(clk_OBUF_64),
    .CE(\init_clk/_n0039_inv ),
    .CLR(rst),
    .D(\init_clk/GND_4_o_counter[11]_mux_8_OUT<11> ),
    .Q(\init_clk/counter [11])
  );
  FDCE   \init_clk/counter_10  (
    .C(clk_OBUF_64),
    .CE(\init_clk/_n0039_inv ),
    .CLR(rst),
    .D(\init_clk/GND_4_o_counter[11]_mux_8_OUT<10> ),
    .Q(\init_clk/counter [10])
  );
  FDCE   \init_clk/counter_9  (
    .C(clk_OBUF_64),
    .CE(\init_clk/_n0039_inv ),
    .CLR(rst),
    .D(\init_clk/GND_4_o_counter[11]_mux_8_OUT<9> ),
    .Q(\init_clk/counter [9])
  );
  FDCE   \init_clk/counter_8  (
    .C(clk_OBUF_64),
    .CE(\init_clk/_n0039_inv ),
    .CLR(rst),
    .D(\init_clk/GND_4_o_counter[11]_mux_8_OUT<8> ),
    .Q(\init_clk/counter [8])
  );
  FDCE   \init_clk/counter_7  (
    .C(clk_OBUF_64),
    .CE(\init_clk/_n0039_inv ),
    .CLR(rst),
    .D(\init_clk/GND_4_o_counter[11]_mux_8_OUT<7> ),
    .Q(\init_clk/counter [7])
  );
  FDCE   \init_clk/counter_6  (
    .C(clk_OBUF_64),
    .CE(\init_clk/_n0039_inv ),
    .CLR(rst),
    .D(\init_clk/GND_4_o_counter[11]_mux_8_OUT<6> ),
    .Q(\init_clk/counter [6])
  );
  FDCE   \init_clk/counter_5  (
    .C(clk_OBUF_64),
    .CE(\init_clk/_n0039_inv ),
    .CLR(rst),
    .D(\init_clk/GND_4_o_counter[11]_mux_8_OUT<5> ),
    .Q(\init_clk/counter [5])
  );
  FDCE   \init_clk/counter_4  (
    .C(clk_OBUF_64),
    .CE(\init_clk/_n0039_inv ),
    .CLR(rst),
    .D(\init_clk/GND_4_o_counter[11]_mux_8_OUT<4> ),
    .Q(\init_clk/counter [4])
  );
  FDCE   \init_clk/counter_3  (
    .C(clk_OBUF_64),
    .CE(\init_clk/_n0039_inv ),
    .CLR(rst),
    .D(\init_clk/GND_4_o_counter[11]_mux_8_OUT<3> ),
    .Q(\init_clk/counter [3])
  );
  FDCE   \init_clk/counter_2  (
    .C(clk_OBUF_64),
    .CE(\init_clk/_n0039_inv ),
    .CLR(rst),
    .D(\init_clk/GND_4_o_counter[11]_mux_8_OUT<2> ),
    .Q(\init_clk/counter [2])
  );
  FDCE   \init_clk/counter_1  (
    .C(clk_OBUF_64),
    .CE(\init_clk/_n0039_inv ),
    .CLR(rst),
    .D(\init_clk/GND_4_o_counter[11]_mux_8_OUT<1> ),
    .Q(\init_clk/counter [1])
  );
  FDCE   \init_clk/counter_0  (
    .C(clk_OBUF_64),
    .CE(\init_clk/_n0039_inv ),
    .CLR(rst),
    .D(\init_clk/GND_4_o_counter[11]_mux_8_OUT<0> ),
    .Q(\init_clk/counter [0])
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \req_req_in_prog[1]_OR_60_o1  (
    .I0(req_IBUF_40),
    .I1(req_in_prog[0]),
    .I2(req_in_prog[1]),
    .O(\op_state_FSM_FFd1-In21 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  refresh_time_refresh_req_OR_59_o1 (
    .I0(refresh_req_88),
    .I1(\refresh_clk/out1_110 ),
    .O(refresh_time_refresh_req_OR_59_o)
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \req_req_in_prog[1]_OR_61_o1  (
    .I0(req_in_prog[1]),
    .I1(req_in_prog[0]),
    .I2(write_IBUF_41),
    .I3(req_IBUF_40),
    .O(\req_req_in_prog[1]_OR_61_o )
  );
  LUT3 #(
    .INIT ( 8'hFD ))
  \req_in_prog[1]_write_AND_1_o_inv1  (
    .I0(req_in_prog[0]),
    .I1(req_in_prog[1]),
    .I2(write_IBUF_41),
    .O(\req_in_prog[1]_write_AND_1_o_inv )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \init_state_init_state[3]_init_state[3]_OR_92_o1  (
    .I0(init_state_FSM_FFd7_114),
    .I1(init_state_FSM_FFd8_113),
    .O(\init_state[3]_init_state[3]_OR_92_o )
  );
  LUT3 #(
    .INIT ( 8'hBA ))
  \init_state_FSM_FFd5-In1  (
    .I0(init_state_FSM_FFd6_115),
    .I1(\init_clk/out1_111 ),
    .I2(init_state_FSM_FFd5_116),
    .O(\init_state_FSM_FFd5-In )
  );
  LUT4 #(
    .INIT ( 16'hFF08 ))
  \init_state_FSM_FFd1-In1  (
    .I0(init_state_FSM_FFd2_119),
    .I1(state_clk_count[1]),
    .I2(state_clk_count[0]),
    .I3(init_state_FSM_FFd1_112),
    .O(\init_state_FSM_FFd1-In )
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \init_state/n0041_01  (
    .I0(init_state_FSM_FFd1_112),
    .I1(rstn_IBUF_39),
    .O(\init_state/n0041_0 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  req1 (
    .I0(op_state_FSM_FFd2_121),
    .I1(req_IBUF_40),
    .O(req1_151)
  );
  LUT4 #(
    .INIT ( 16'h0100 ))
  \Mmux_op_state[2]_GND_1_o_wide_mux_82_OUT19111  (
    .I0(op_state_FSM_FFd2_121),
    .I1(op_state_FSM_FFd3_122),
    .I2(op_state_FSM_FFd1_120),
    .I3(\req_req_in_prog[1]_OR_57_o ),
    .O(\Mmux_op_state[2]_GND_1_o_wide_mux_82_OUT1911 )
  );
  LUT3 #(
    .INIT ( 8'h2F ))
  Reset_OR_DriverANDClockEnable1 (
    .I0(op_state_FSM_FFd2_121),
    .I1(req_IBUF_40),
    .I2(rstn_IBUF_39),
    .O(Reset_OR_DriverANDClockEnable)
  );
  LUT5 #(
    .INIT ( 32'hAAEAAEAA ))
  \init_state_init_state[3]_GND_1_o_select_106_OUT<0>11  (
    .I0(init_state_FSM_FFd2_119),
    .I1(init_state_FSM_FFd1_112),
    .I2(op_state_FSM_FFd1_120),
    .I3(op_state_FSM_FFd2_121),
    .I4(op_state_FSM_FFd3_122),
    .O(\init_state_init_state[3]_GND_1_o_select_106_OUT<0>1 )
  );
  LUT5 #(
    .INIT ( 32'hFF2A2A2A ))
  \init_state_FSM_FFd4-In1  (
    .I0(init_state_FSM_FFd4_117),
    .I1(state_clk_count[0]),
    .I2(state_clk_count[1]),
    .I3(init_state_FSM_FFd5_116),
    .I4(\init_clk/out1_111 ),
    .O(\init_state_FSM_FFd4-In )
  );
  LUT4 #(
    .INIT ( 16'hEA2A ))
  \init_state_FSM_FFd3-In1  (
    .I0(init_state_FSM_FFd3_118),
    .I1(state_clk_count[0]),
    .I2(state_clk_count[1]),
    .I3(init_state_FSM_FFd4_117),
    .O(\init_state_FSM_FFd3-In )
  );
  LUT4 #(
    .INIT ( 16'hB800 ))
  \Mmux_op_state[2]_GND_1_o_wide_mux_82_OUT191  (
    .I0(addr_req_in_16_IBUF_5),
    .I1(req_IBUF_40),
    .I2(addr_req[16]),
    .I3(\Mmux_op_state[2]_GND_1_o_wide_mux_82_OUT1911 ),
    .O(\op_state[2]_GND_1_o_wide_mux_82_OUT<8> )
  );
  LUT4 #(
    .INIT ( 16'hB800 ))
  \Mmux_op_state[2]_GND_1_o_wide_mux_82_OUT201  (
    .I0(addr_req_in_17_IBUF_4),
    .I1(req_IBUF_40),
    .I2(addr_req[17]),
    .I3(\Mmux_op_state[2]_GND_1_o_wide_mux_82_OUT1911 ),
    .O(\op_state[2]_GND_1_o_wide_mux_82_OUT<9> )
  );
  LUT4 #(
    .INIT ( 16'hB800 ))
  \Mmux_op_state[2]_GND_1_o_wide_mux_82_OUT41  (
    .I0(addr_req_in_19_IBUF_2),
    .I1(req_IBUF_40),
    .I2(addr_req[19]),
    .I3(\Mmux_op_state[2]_GND_1_o_wide_mux_82_OUT1911 ),
    .O(\op_state[2]_GND_1_o_wide_mux_82_OUT<11> )
  );
  LUT4 #(
    .INIT ( 16'hBBBA ))
  \req_req_in_prog[1]_OR_57_o1  (
    .I0(req_IBUF_40),
    .I1(ack_OBUF_80),
    .I2(req_in_prog[1]),
    .I3(req_in_prog[0]),
    .O(\req_req_in_prog[1]_OR_57_o )
  );
  LUT4 #(
    .INIT ( 16'hCA8A ))
  \init_state_FSM_FFd2-In1  (
    .I0(init_state_FSM_FFd2_119),
    .I1(state_clk_count[0]),
    .I2(state_clk_count[1]),
    .I3(init_state_FSM_FFd3_118),
    .O(\init_state_FSM_FFd2-In )
  );
  LUT5 #(
    .INIT ( 32'hFFFFEEFE ))
  \init_state_init_state[3]_PWR_1_o_Select_95_o1  (
    .I0(init_state_FSM_FFd6_115),
    .I1(init_state_FSM_FFd8_113),
    .I2(init_state_FSM_FFd5_116),
    .I3(\init_clk/out1_111 ),
    .I4(init_state_FSM_FFd7_114),
    .O(\init_state[3]_PWR_1_o_Select_95_o )
  );
  LUT5 #(
    .INIT ( 32'hAAFEFEEE ))
  \init_state_init_state[3]_PWR_1_o_Select_103_o21  (
    .I0(init_state_FSM_FFd2_119),
    .I1(init_state_FSM_FFd3_118),
    .I2(init_state_FSM_FFd4_117),
    .I3(state_clk_count[1]),
    .I4(state_clk_count[0]),
    .O(\init_state_init_state[3]_PWR_1_o_Select_103_o2_175 )
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \init_clk/_n0039_inv1  (
    .I0(init_enable_66),
    .I1(\init_clk/out1_111 ),
    .O(\init_clk/_n0039_inv )
  );
  LUT5 #(
    .INIT ( 32'h00B80000 ))
  \Mmux_op_state[2]_GND_1_o_wide_mux_82_OUT181  (
    .I0(addr_req_in_15_IBUF_6),
    .I1(req_IBUF_40),
    .I2(addr_req[15]),
    .I3(op_state_FSM_FFd3_122),
    .I4(\req_req_in_prog[1]_OR_57_o ),
    .O(\Mmux_op_state[2]_GND_1_o_wide_mux_82_OUT18 )
  );
  LUT4 #(
    .INIT ( 16'hB800 ))
  \Mmux_op_state[2]_GND_1_o_wide_mux_82_OUT182  (
    .I0(addr_req_in_7_IBUF_14),
    .I1(req_IBUF_40),
    .I2(addr_req[7]),
    .I3(op_state_FSM_FFd3_122),
    .O(\Mmux_op_state[2]_GND_1_o_wide_mux_82_OUT181_262 )
  );
  LUT5 #(
    .INIT ( 32'h00B80000 ))
  \Mmux_op_state[2]_GND_1_o_wide_mux_82_OUT161  (
    .I0(addr_req_in_14_IBUF_7),
    .I1(req_IBUF_40),
    .I2(addr_req[14]),
    .I3(op_state_FSM_FFd3_122),
    .I4(\req_req_in_prog[1]_OR_57_o ),
    .O(\Mmux_op_state[2]_GND_1_o_wide_mux_82_OUT16 )
  );
  LUT4 #(
    .INIT ( 16'hB800 ))
  \Mmux_op_state[2]_GND_1_o_wide_mux_82_OUT162  (
    .I0(addr_req_in_6_IBUF_15),
    .I1(req_IBUF_40),
    .I2(addr_req[6]),
    .I3(op_state_FSM_FFd3_122),
    .O(\Mmux_op_state[2]_GND_1_o_wide_mux_82_OUT161_264 )
  );
  LUT5 #(
    .INIT ( 32'h00B80000 ))
  \Mmux_op_state[2]_GND_1_o_wide_mux_82_OUT141  (
    .I0(addr_req_in_13_IBUF_8),
    .I1(req_IBUF_40),
    .I2(addr_req[13]),
    .I3(op_state_FSM_FFd3_122),
    .I4(\req_req_in_prog[1]_OR_57_o ),
    .O(\Mmux_op_state[2]_GND_1_o_wide_mux_82_OUT14 )
  );
  LUT4 #(
    .INIT ( 16'hB800 ))
  \Mmux_op_state[2]_GND_1_o_wide_mux_82_OUT142  (
    .I0(addr_req_in_5_IBUF_16),
    .I1(req_IBUF_40),
    .I2(addr_req[5]),
    .I3(op_state_FSM_FFd3_122),
    .O(\Mmux_op_state[2]_GND_1_o_wide_mux_82_OUT141_266 )
  );
  LUT5 #(
    .INIT ( 32'h00B80000 ))
  \Mmux_op_state[2]_GND_1_o_wide_mux_82_OUT121  (
    .I0(addr_req_in_12_IBUF_9),
    .I1(req_IBUF_40),
    .I2(addr_req[12]),
    .I3(op_state_FSM_FFd3_122),
    .I4(\req_req_in_prog[1]_OR_57_o ),
    .O(\Mmux_op_state[2]_GND_1_o_wide_mux_82_OUT12 )
  );
  LUT4 #(
    .INIT ( 16'hB800 ))
  \Mmux_op_state[2]_GND_1_o_wide_mux_82_OUT122  (
    .I0(addr_req_in_4_IBUF_17),
    .I1(req_IBUF_40),
    .I2(addr_req[4]),
    .I3(op_state_FSM_FFd3_122),
    .O(\Mmux_op_state[2]_GND_1_o_wide_mux_82_OUT121_268 )
  );
  LUT5 #(
    .INIT ( 32'h00B80000 ))
  \Mmux_op_state[2]_GND_1_o_wide_mux_82_OUT101  (
    .I0(addr_req_in_11_IBUF_10),
    .I1(req_IBUF_40),
    .I2(addr_req[11]),
    .I3(op_state_FSM_FFd3_122),
    .I4(\req_req_in_prog[1]_OR_57_o ),
    .O(\Mmux_op_state[2]_GND_1_o_wide_mux_82_OUT10 )
  );
  LUT4 #(
    .INIT ( 16'hB800 ))
  \Mmux_op_state[2]_GND_1_o_wide_mux_82_OUT102  (
    .I0(addr_req_in_3_IBUF_18),
    .I1(req_IBUF_40),
    .I2(addr_req[3]),
    .I3(op_state_FSM_FFd3_122),
    .O(\Mmux_op_state[2]_GND_1_o_wide_mux_82_OUT101_270 )
  );
  LUT5 #(
    .INIT ( 32'h00B80000 ))
  \Mmux_op_state[2]_GND_1_o_wide_mux_82_OUT81  (
    .I0(addr_req_in_10_IBUF_11),
    .I1(req_IBUF_40),
    .I2(addr_req[10]),
    .I3(op_state_FSM_FFd3_122),
    .I4(\req_req_in_prog[1]_OR_57_o ),
    .O(\Mmux_op_state[2]_GND_1_o_wide_mux_82_OUT8 )
  );
  LUT4 #(
    .INIT ( 16'hB800 ))
  \Mmux_op_state[2]_GND_1_o_wide_mux_82_OUT82  (
    .I0(addr_req_in_2_IBUF_19),
    .I1(req_IBUF_40),
    .I2(addr_req[2]),
    .I3(op_state_FSM_FFd3_122),
    .O(\Mmux_op_state[2]_GND_1_o_wide_mux_82_OUT81_272 )
  );
  LUT5 #(
    .INIT ( 32'h00B80000 ))
  \Mmux_op_state[2]_GND_1_o_wide_mux_82_OUT61  (
    .I0(addr_req_in_9_IBUF_12),
    .I1(req_IBUF_40),
    .I2(addr_req[9]),
    .I3(op_state_FSM_FFd3_122),
    .I4(\req_req_in_prog[1]_OR_57_o ),
    .O(\Mmux_op_state[2]_GND_1_o_wide_mux_82_OUT6 )
  );
  LUT4 #(
    .INIT ( 16'hB800 ))
  \Mmux_op_state[2]_GND_1_o_wide_mux_82_OUT62  (
    .I0(addr_req_in_1_IBUF_20),
    .I1(req_IBUF_40),
    .I2(addr_req[1]),
    .I3(op_state_FSM_FFd3_122),
    .O(\Mmux_op_state[2]_GND_1_o_wide_mux_82_OUT61_274 )
  );
  LUT5 #(
    .INIT ( 32'h00B80000 ))
  \Mmux_op_state[2]_GND_1_o_wide_mux_82_OUT21  (
    .I0(addr_req_in_8_IBUF_13),
    .I1(req_IBUF_40),
    .I2(addr_req[8]),
    .I3(op_state_FSM_FFd3_122),
    .I4(\req_req_in_prog[1]_OR_57_o ),
    .O(\Mmux_op_state[2]_GND_1_o_wide_mux_82_OUT2 )
  );
  LUT4 #(
    .INIT ( 16'hB800 ))
  \Mmux_op_state[2]_GND_1_o_wide_mux_82_OUT22  (
    .I0(addr_req_in_0_IBUF_21),
    .I1(req_IBUF_40),
    .I2(addr_req[0]),
    .I3(op_state_FSM_FFd3_122),
    .O(\Mmux_op_state[2]_GND_1_o_wide_mux_82_OUT21_276 )
  );
  LUT4 #(
    .INIT ( 16'h0040 ))
  \init_state_init_state[3]_GND_1_o_Select_110_o1  (
    .I0(state_clk_count[1]),
    .I1(state_clk_count[0]),
    .I2(op_state_FSM_FFd2_1_415),
    .I3(op_state_FSM_FFd3_122),
    .O(\init_state_init_state[3]_GND_1_o_Select_110_o )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \init_state_init_state[3]_GND_1_o_select_107_OUT<10>_SW0  (
    .I0(init_state_FSM_FFd5_116),
    .I1(\init_clk/out1_111 ),
    .O(N3)
  );
  LUT6 #(
    .INIT ( 64'hFFFFB800FFFF0000 ))
  \init_state_init_state[3]_GND_1_o_select_107_OUT<10>  (
    .I0(addr_req_in_18_IBUF_3),
    .I1(req_IBUF_40),
    .I2(addr_req[18]),
    .I3(init_state_FSM_FFd1_112),
    .I4(N3),
    .I5(\Mmux_op_state[2]_GND_1_o_wide_mux_82_OUT1911 ),
    .O(\init_state[3]_GND_1_o_select_107_OUT<10> )
  );
  LUT4 #(
    .INIT ( 16'hFDFF ))
  \init_state_init_state[3]_GND_1_o_select_106_OUT<0>_SW0  (
    .I0(init_state_FSM_FFd1_112),
    .I1(op_state_FSM_FFd2_121),
    .I2(op_state_FSM_FFd3_122),
    .I3(op_state_FSM_FFd1_120),
    .O(N5)
  );
  LUT6 #(
    .INIT ( 64'h00EFFFEF00EEFFEE ))
  \init_state_init_state[3]_GND_1_o_select_106_OUT<0>  (
    .I0(init_state_FSM_FFd4_117),
    .I1(init_state_FSM_FFd3_118),
    .I2(state_clk_count[1]),
    .I3(state_clk_count[0]),
    .I4(N5),
    .I5(\init_state_init_state[3]_GND_1_o_select_106_OUT<0>1 ),
    .O(\init_state[3]_GND_1_o_select_106_OUT<0> )
  );
  LUT4 #(
    .INIT ( 16'h0020 ))
  \init_state_init_state[3]_GND_1_o_select_106_OUT<1>_SW0  (
    .I0(op_state_FSM_FFd1_120),
    .I1(op_state_FSM_FFd3_122),
    .I2(init_state_FSM_FFd1_112),
    .I3(op_state_FSM_FFd2_121),
    .O(N7)
  );
  LUT6 #(
    .INIT ( 64'hEEEE6664EEEA6660 ))
  \init_state_init_state[3]_GND_1_o_select_106_OUT<1>  (
    .I0(state_clk_count[1]),
    .I1(state_clk_count[0]),
    .I2(init_state_FSM_FFd3_118),
    .I3(init_state_FSM_FFd4_117),
    .I4(N7),
    .I5(\init_state_init_state[3]_GND_1_o_select_106_OUT<0>1 ),
    .O(\init_state[3]_GND_1_o_select_106_OUT<1> )
  );
  LUT5 #(
    .INIT ( 32'hFFFFFFFE ))
  \init_state_init_state[3]_PWR_1_o_Select_103_o1  (
    .I0(init_state_FSM_FFd6_115),
    .I1(init_state_FSM_FFd7_114),
    .I2(init_state_FSM_FFd8_113),
    .I3(init_state_FSM_FFd5_116),
    .I4(\init_state_init_state[3]_PWR_1_o_Select_103_o2_175 ),
    .O(\init_state_init_state[3]_PWR_1_o_Select_103_o )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \op_state_FSM_FFd3-In11  (
    .I0(op_state_FSM_FFd2_1_415),
    .I1(state_clk_count[1]),
    .I2(state_clk_count[0]),
    .O(\op_state_FSM_FFd3-In11_284 )
  );
  LUT6 #(
    .INIT ( 64'hFFFF0101FFFF0100 ))
  \op_state_FSM_FFd3-In12  (
    .I0(op_state_FSM_FFd1_120),
    .I1(op_state_FSM_FFd2_121),
    .I2(op_state_FSM_FFd3_122),
    .I3(refresh_time_refresh_req_OR_59_o),
    .I4(\op_state_FSM_FFd3-In11_284 ),
    .I5(\req_req_in_prog[1]_OR_57_o ),
    .O(\op_state_FSM_FFd3-In12_285 )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \op_state_FSM_FFd1-In22  (
    .I0(state_clk_count[1]),
    .I1(state_clk_count[0]),
    .O(\op_state_FSM_FFd1-In22_287 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFEEFEFEFE ))
  \init_state_init_state[3]_PWR_1_o_Select_105_o1  (
    .I0(init_state_FSM_FFd2_119),
    .I1(init_state_FSM_FFd4_117),
    .I2(init_state_FSM_FFd3_118),
    .I3(state_clk_count[1]),
    .I4(state_clk_count[0]),
    .I5(\init_state[3]_PWR_1_o_Select_95_o ),
    .O(\init_state_init_state[3]_PWR_1_o_Select_105_o )
  );
  LUT4 #(
    .INIT ( 16'hFFFD ))
  \refresh_clk/GND_3_o_GND_3_o_equal_5_o<8>_SW0  (
    .I0(\refresh_clk/counter [1]),
    .I1(\refresh_clk/counter [2]),
    .I2(\refresh_clk/counter [0]),
    .I3(\refresh_clk/counter [4]),
    .O(N9)
  );
  LUT6 #(
    .INIT ( 64'h0100000000000000 ))
  \init_clk/GND_4_o_GND_4_o_equal_5_o<11>1  (
    .I0(\init_clk/counter [0]),
    .I1(\init_clk/counter [1]),
    .I2(\init_clk/counter [2]),
    .I3(\init_clk/counter [11]),
    .I4(\init_clk/counter [10]),
    .I5(\init_clk/counter [7]),
    .O(\init_clk/GND_4_o_GND_4_o_equal_5_o [11])
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \init_clk/GND_4_o_GND_4_o_equal_5_o<11>2  (
    .I0(\init_clk/counter [4]),
    .I1(\init_clk/counter [3]),
    .I2(\init_clk/counter [5]),
    .I3(\init_clk/counter [6]),
    .I4(\init_clk/counter [8]),
    .I5(\init_clk/counter [9]),
    .O(\init_clk/GND_4_o_GND_4_o_equal_5_o<11>1_291 )
  );
  IBUF   addr_req_in_21_IBUF (
    .I(addr_req_in[21]),
    .O(addr_req_in_21_IBUF_0)
  );
  IBUF   addr_req_in_20_IBUF (
    .I(addr_req_in[20]),
    .O(addr_req_in_20_IBUF_1)
  );
  IBUF   addr_req_in_19_IBUF (
    .I(addr_req_in[19]),
    .O(addr_req_in_19_IBUF_2)
  );
  IBUF   addr_req_in_18_IBUF (
    .I(addr_req_in[18]),
    .O(addr_req_in_18_IBUF_3)
  );
  IBUF   addr_req_in_17_IBUF (
    .I(addr_req_in[17]),
    .O(addr_req_in_17_IBUF_4)
  );
  IBUF   addr_req_in_16_IBUF (
    .I(addr_req_in[16]),
    .O(addr_req_in_16_IBUF_5)
  );
  IBUF   addr_req_in_15_IBUF (
    .I(addr_req_in[15]),
    .O(addr_req_in_15_IBUF_6)
  );
  IBUF   addr_req_in_14_IBUF (
    .I(addr_req_in[14]),
    .O(addr_req_in_14_IBUF_7)
  );
  IBUF   addr_req_in_13_IBUF (
    .I(addr_req_in[13]),
    .O(addr_req_in_13_IBUF_8)
  );
  IBUF   addr_req_in_12_IBUF (
    .I(addr_req_in[12]),
    .O(addr_req_in_12_IBUF_9)
  );
  IBUF   addr_req_in_11_IBUF (
    .I(addr_req_in[11]),
    .O(addr_req_in_11_IBUF_10)
  );
  IBUF   addr_req_in_10_IBUF (
    .I(addr_req_in[10]),
    .O(addr_req_in_10_IBUF_11)
  );
  IBUF   addr_req_in_9_IBUF (
    .I(addr_req_in[9]),
    .O(addr_req_in_9_IBUF_12)
  );
  IBUF   addr_req_in_8_IBUF (
    .I(addr_req_in[8]),
    .O(addr_req_in_8_IBUF_13)
  );
  IBUF   addr_req_in_7_IBUF (
    .I(addr_req_in[7]),
    .O(addr_req_in_7_IBUF_14)
  );
  IBUF   addr_req_in_6_IBUF (
    .I(addr_req_in[6]),
    .O(addr_req_in_6_IBUF_15)
  );
  IBUF   addr_req_in_5_IBUF (
    .I(addr_req_in[5]),
    .O(addr_req_in_5_IBUF_16)
  );
  IBUF   addr_req_in_4_IBUF (
    .I(addr_req_in[4]),
    .O(addr_req_in_4_IBUF_17)
  );
  IBUF   addr_req_in_3_IBUF (
    .I(addr_req_in[3]),
    .O(addr_req_in_3_IBUF_18)
  );
  IBUF   addr_req_in_2_IBUF (
    .I(addr_req_in[2]),
    .O(addr_req_in_2_IBUF_19)
  );
  IBUF   addr_req_in_1_IBUF (
    .I(addr_req_in[1]),
    .O(addr_req_in_1_IBUF_20)
  );
  IBUF   addr_req_in_0_IBUF (
    .I(addr_req_in[0]),
    .O(addr_req_in_0_IBUF_21)
  );
  IBUF   data_15_IBUF (
    .I(data[15]),
    .O(data_15_IBUF_22)
  );
  IBUF   data_14_IBUF (
    .I(data[14]),
    .O(data_14_IBUF_23)
  );
  IBUF   data_13_IBUF (
    .I(data[13]),
    .O(data_13_IBUF_24)
  );
  IBUF   data_12_IBUF (
    .I(data[12]),
    .O(data_12_IBUF_25)
  );
  IBUF   data_11_IBUF (
    .I(data[11]),
    .O(data_11_IBUF_26)
  );
  IBUF   data_10_IBUF (
    .I(data[10]),
    .O(data_10_IBUF_27)
  );
  IBUF   data_9_IBUF (
    .I(data[9]),
    .O(data_9_IBUF_28)
  );
  IBUF   data_8_IBUF (
    .I(data[8]),
    .O(data_8_IBUF_29)
  );
  IBUF   data_7_IBUF (
    .I(data[7]),
    .O(data_7_IBUF_30)
  );
  IBUF   data_6_IBUF (
    .I(data[6]),
    .O(data_6_IBUF_31)
  );
  IBUF   data_5_IBUF (
    .I(data[5]),
    .O(data_5_IBUF_32)
  );
  IBUF   data_4_IBUF (
    .I(data[4]),
    .O(data_4_IBUF_33)
  );
  IBUF   data_3_IBUF (
    .I(data[3]),
    .O(data_3_IBUF_34)
  );
  IBUF   data_2_IBUF (
    .I(data[2]),
    .O(data_2_IBUF_35)
  );
  IBUF   data_1_IBUF (
    .I(data[1]),
    .O(data_1_IBUF_36)
  );
  IBUF   data_0_IBUF (
    .I(data[0]),
    .O(data_0_IBUF_37)
  );
  IBUFG   clk_in_IBUFG (
    .I(clk_in),
    .O(clk_in_IBUFG_38)
  );
  IBUF   rstn_IBUF (
    .I(rstn),
    .O(rstn_IBUF_39)
  );
  IBUF   req_IBUF (
    .I(req),
    .O(req_IBUF_40)
  );
  IBUF   write_IBUF (
    .I(write),
    .O(write_IBUF_41)
  );
  OBUFT   data_inout_15_OBUFT (
    .I(data_15_IBUF_22),
    .T(\req_in_prog[1]_write_AND_1_o_inv ),
    .O(data_inout[15])
  );
  OBUFT   data_inout_14_OBUFT (
    .I(data_14_IBUF_23),
    .T(\req_in_prog[1]_write_AND_1_o_inv ),
    .O(data_inout[14])
  );
  OBUFT   data_inout_13_OBUFT (
    .I(data_13_IBUF_24),
    .T(\req_in_prog[1]_write_AND_1_o_inv ),
    .O(data_inout[13])
  );
  OBUFT   data_inout_12_OBUFT (
    .I(data_12_IBUF_25),
    .T(\req_in_prog[1]_write_AND_1_o_inv ),
    .O(data_inout[12])
  );
  OBUFT   data_inout_11_OBUFT (
    .I(data_11_IBUF_26),
    .T(\req_in_prog[1]_write_AND_1_o_inv ),
    .O(data_inout[11])
  );
  OBUFT   data_inout_10_OBUFT (
    .I(data_10_IBUF_27),
    .T(\req_in_prog[1]_write_AND_1_o_inv ),
    .O(data_inout[10])
  );
  OBUFT   data_inout_9_OBUFT (
    .I(data_9_IBUF_28),
    .T(\req_in_prog[1]_write_AND_1_o_inv ),
    .O(data_inout[9])
  );
  OBUFT   data_inout_8_OBUFT (
    .I(data_8_IBUF_29),
    .T(\req_in_prog[1]_write_AND_1_o_inv ),
    .O(data_inout[8])
  );
  OBUFT   data_inout_7_OBUFT (
    .I(data_7_IBUF_30),
    .T(\req_in_prog[1]_write_AND_1_o_inv ),
    .O(data_inout[7])
  );
  OBUFT   data_inout_6_OBUFT (
    .I(data_6_IBUF_31),
    .T(\req_in_prog[1]_write_AND_1_o_inv ),
    .O(data_inout[6])
  );
  OBUFT   data_inout_5_OBUFT (
    .I(data_5_IBUF_32),
    .T(\req_in_prog[1]_write_AND_1_o_inv ),
    .O(data_inout[5])
  );
  OBUFT   data_inout_4_OBUFT (
    .I(data_4_IBUF_33),
    .T(\req_in_prog[1]_write_AND_1_o_inv ),
    .O(data_inout[4])
  );
  OBUFT   data_inout_3_OBUFT (
    .I(data_3_IBUF_34),
    .T(\req_in_prog[1]_write_AND_1_o_inv ),
    .O(data_inout[3])
  );
  OBUFT   data_inout_2_OBUFT (
    .I(data_2_IBUF_35),
    .T(\req_in_prog[1]_write_AND_1_o_inv ),
    .O(data_inout[2])
  );
  OBUFT   data_inout_1_OBUFT (
    .I(data_1_IBUF_36),
    .T(\req_in_prog[1]_write_AND_1_o_inv ),
    .O(data_inout[1])
  );
  OBUFT   data_inout_0_OBUFT (
    .I(data_0_IBUF_37),
    .T(\req_in_prog[1]_write_AND_1_o_inv ),
    .O(data_inout[0])
  );
  OBUF   bank_1_OBUF (
    .I(bank_1_86),
    .O(bank[1])
  );
  OBUF   bank_0_OBUF (
    .I(bank_0_87),
    .O(bank[0])
  );
  OBUF   mem_addr_11_OBUF (
    .I(mem_addr_11_68),
    .O(mem_addr[11])
  );
  OBUF   mem_addr_10_OBUF (
    .I(mem_addr_10_69),
    .O(mem_addr[10])
  );
  OBUF   mem_addr_9_OBUF (
    .I(mem_addr_9_70),
    .O(mem_addr[9])
  );
  OBUF   mem_addr_8_OBUF (
    .I(mem_addr_8_71),
    .O(mem_addr[8])
  );
  OBUF   mem_addr_7_OBUF (
    .I(mem_addr_7_72),
    .O(mem_addr[7])
  );
  OBUF   mem_addr_6_OBUF (
    .I(mem_addr_6_73),
    .O(mem_addr[6])
  );
  OBUF   mem_addr_5_OBUF (
    .I(mem_addr_5_74),
    .O(mem_addr[5])
  );
  OBUF   mem_addr_4_OBUF (
    .I(mem_addr_4_75),
    .O(mem_addr[4])
  );
  OBUF   mem_addr_3_OBUF (
    .I(mem_addr_3_76),
    .O(mem_addr[3])
  );
  OBUF   mem_addr_2_OBUF (
    .I(mem_addr_2_77),
    .O(mem_addr[2])
  );
  OBUF   mem_addr_1_OBUF (
    .I(mem_addr_1_78),
    .O(mem_addr[1])
  );
  OBUF   mem_addr_0_OBUF (
    .I(mem_addr_0_79),
    .O(mem_addr[0])
  );
  OBUF   ack_OBUF (
    .I(ack_OBUF_80),
    .O(ack)
  );
  OBUF   clk_OBUF (
    .I(clk_OBUF_64),
    .O(clk)
  );
  OBUF   clke_OBUF (
    .I(clke_OBUF_67),
    .O(clke)
  );
  OBUF   csn_OBUF (
    .I(csn_OBUF_81),
    .O(csn)
  );
  OBUF   rasn_OBUF (
    .I(rasn_OBUF_82),
    .O(rasn)
  );
  OBUF   casn_OBUF (
    .I(casn_OBUF_83),
    .O(casn)
  );
  OBUF   wen_OBUF (
    .I(wen_OBUF_84),
    .O(wen)
  );
  FDR   refresh_req (
    .C(clk_OBUF_64),
    .D(refresh_req_glue_set_355),
    .R(rst),
    .Q(refresh_req_88)
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<10>_rt  (
    .I0(\init_clk/counter [10]),
    .O(\init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<10>_rt_356 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<9>_rt  (
    .I0(\init_clk/counter [9]),
    .O(\init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<9>_rt_357 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<8>_rt  (
    .I0(\init_clk/counter [8]),
    .O(\init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<8>_rt_358 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<7>_rt  (
    .I0(\init_clk/counter [7]),
    .O(\init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<7>_rt_359 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<6>_rt  (
    .I0(\init_clk/counter [6]),
    .O(\init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<6>_rt_360 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<5>_rt  (
    .I0(\init_clk/counter [5]),
    .O(\init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<5>_rt_361 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<4>_rt  (
    .I0(\init_clk/counter [4]),
    .O(\init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<4>_rt_362 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<3>_rt  (
    .I0(\init_clk/counter [3]),
    .O(\init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<3>_rt_363 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<2>_rt  (
    .I0(\init_clk/counter [2]),
    .O(\init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<2>_rt_364 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<1>_rt  (
    .I0(\init_clk/counter [1]),
    .O(\init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_cy<1>_rt_365 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_xor<11>_rt  (
    .I0(\init_clk/counter [11]),
    .O(\init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_xor<11>_rt_366 )
  );
  FDC   \refresh_clk/out1  (
    .C(clk_OBUF_64),
    .CLR(rst),
    .D(\refresh_clk/out1_rstpot_367 ),
    .Q(\refresh_clk/out1_110 )
  );
  FDC   \init_clk/out1  (
    .C(clk_OBUF_64),
    .CLR(rst),
    .D(\init_clk/out1_rstpot_368 ),
    .Q(\init_clk/out1_111 )
  );
  FD   row_diff (
    .C(clk_OBUF_64),
    .D(row_diff_rstpot_369),
    .Q(row_diff_85)
  );
  LUT3 #(
    .INIT ( 8'h27 ))
  \Mmux_op_state[2]_GND_1_o_wide_mux_83_OUT121_SW0  (
    .I0(req_IBUF_40),
    .I1(addr_req_in_21_IBUF_0),
    .I2(addr_req[21]),
    .O(N43)
  );
  LUT3 #(
    .INIT ( 8'h27 ))
  \Mmux_op_state[2]_GND_1_o_wide_mux_83_OUT121_SW1  (
    .I0(req_IBUF_40),
    .I1(addr_req_in_20_IBUF_1),
    .I2(addr_req[20]),
    .O(N45)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFA8FFFFFFAA ))
  \init_state_init_state[3]_PWR_1_o_Select_101_o1_SW0  (
    .I0(init_state_FSM_FFd1_112),
    .I1(op_state_FSM_FFd1_120),
    .I2(op_state_FSM_FFd2_121),
    .I3(\init_state[3]_PWR_1_o_Select_95_o ),
    .I4(\init_state_init_state[3]_PWR_1_o_Select_103_o2_175 ),
    .I5(refresh_time_refresh_req_OR_59_o),
    .O(N53)
  );
  LUT5 #(
    .INIT ( 32'hFFFFFFA8 ))
  \init_state_init_state[3]_PWR_1_o_Select_101_o1_SW1  (
    .I0(init_state_FSM_FFd1_112),
    .I1(op_state_FSM_FFd2_121),
    .I2(op_state_FSM_FFd1_120),
    .I3(\init_state[3]_PWR_1_o_Select_95_o ),
    .I4(\init_state_init_state[3]_PWR_1_o_Select_103_o2_175 ),
    .O(N54)
  );
  LUT6 #(
    .INIT ( 64'hA8AAA8AAA8AAAAAA ))
  \init_state_init_state[3]_PWR_1_o_Select_105_o2_SW1  (
    .I0(init_state_FSM_FFd1_112),
    .I1(op_state_FSM_FFd1_120),
    .I2(op_state_FSM_FFd2_121),
    .I3(op_state_FSM_FFd3_122),
    .I4(refresh_time_refresh_req_OR_59_o),
    .I5(\op_state_FSM_FFd1-In21 ),
    .O(N57)
  );
  LUT4 #(
    .INIT ( 16'hFF4F ))
  \op_state_FSM_FFd2-In211_SW0  (
    .I0(state_clk_count[0]),
    .I1(state_clk_count[1]),
    .I2(op_state_FSM_FFd2_121),
    .I3(op_state_FSM_FFd3_122),
    .O(N59)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFF04444FFFF ))
  \op_state_FSM_FFd2-In211_SW1  (
    .I0(state_clk_count[0]),
    .I1(state_clk_count[1]),
    .I2(row_diff_85),
    .I3(op_state_FSM_FFd1_120),
    .I4(op_state_FSM_FFd2_121),
    .I5(op_state_FSM_FFd3_122),
    .O(N60)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFEFFFFFFFF ))
  \op_state_FSM_FFd2-In211_SW2  (
    .I0(row_diff_85),
    .I1(op_state_FSM_FFd1_120),
    .I2(op_state_FSM_FFd2_121),
    .I3(N43),
    .I4(refresh_time_refresh_req_OR_59_o1_416),
    .I5(\op_state_FSM_FFd1-In21 ),
    .O(N62)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFEFFFFFFFF ))
  \op_state_FSM_FFd2-In211_SW4  (
    .I0(row_diff_85),
    .I1(op_state_FSM_FFd1_120),
    .I2(op_state_FSM_FFd2_121),
    .I3(N45),
    .I4(refresh_time_refresh_req_OR_59_o),
    .I5(\op_state_FSM_FFd1-In21 ),
    .O(N65)
  );
  LUT5 #(
    .INIT ( 32'hF5F5FDFF ))
  \Mmux_op_state[2]_PWR_1_o_Mux_79_o111_SW9  (
    .I0(init_state_FSM_FFd1_112),
    .I1(row_diff_85),
    .I2(op_state_FSM_FFd1_120),
    .I3(\op_state_FSM_FFd1-In21 ),
    .I4(\init_state_init_state[3]_GND_1_o_Select_110_o ),
    .O(N94)
  );
  LUT3 #(
    .INIT ( 8'hBF ))
  \Mmux_row_diff_op_state[2]_MUX_56_o11_SW0  (
    .I0(req_IBUF_40),
    .I1(row_diff_85),
    .I2(rstn_IBUF_39),
    .O(N99)
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \Mmux_row_diff_op_state[2]_MUX_56_o11_SW1  (
    .I0(rstn_IBUF_39),
    .I1(row_diff_85),
    .I2(req_IBUF_40),
    .O(N100)
  );
  LUT6 #(
    .INIT ( 64'hCFDFCFFFCCDFCCFF ))
  row_change1_SW2 (
    .I0(row_diff_85),
    .I1(op_state_FSM_FFd2_121),
    .I2(op_state_FSM_FFd3_122),
    .I3(refresh_time_refresh_req_OR_59_o),
    .I4(\op_state_FSM_FFd1-In21 ),
    .I5(\req_req_in_prog[1]_OR_57_o ),
    .O(N71)
  );
  LUT6 #(
    .INIT ( 64'hAAAA2AAAAAAAAAAA ))
  \refresh_clk/Mcount_counter_lut<3>  (
    .I0(\refresh_clk/counter [3]),
    .I1(\refresh_clk/counter [8]),
    .I2(\refresh_clk/counter [7]),
    .I3(\refresh_clk/counter [6]),
    .I4(N9),
    .I5(\refresh_clk/counter [5]),
    .O(\refresh_clk/Mcount_counter_lut [3])
  );
  LUT6 #(
    .INIT ( 64'hAAAA2AAAAAAAAAAA ))
  \refresh_clk/Mcount_counter_lut<5>  (
    .I0(\refresh_clk/counter [5]),
    .I1(\refresh_clk/counter [8]),
    .I2(\refresh_clk/counter [7]),
    .I3(\refresh_clk/counter [6]),
    .I4(N9),
    .I5(\refresh_clk/counter [3]),
    .O(\refresh_clk/Mcount_counter_lut [5])
  );
  LUT6 #(
    .INIT ( 64'hAAAA2AAAAAAAAAAA ))
  \refresh_clk/Mcount_counter_lut<6>  (
    .I0(\refresh_clk/counter [6]),
    .I1(\refresh_clk/counter [8]),
    .I2(\refresh_clk/counter [7]),
    .I3(\refresh_clk/counter [5]),
    .I4(N9),
    .I5(\refresh_clk/counter [3]),
    .O(\refresh_clk/Mcount_counter_lut [6])
  );
  LUT6 #(
    .INIT ( 64'hAAAA2AAAAAAAAAAA ))
  \refresh_clk/Mcount_counter_lut<7>  (
    .I0(\refresh_clk/counter [7]),
    .I1(\refresh_clk/counter [8]),
    .I2(\refresh_clk/counter [6]),
    .I3(\refresh_clk/counter [5]),
    .I4(N9),
    .I5(\refresh_clk/counter [3]),
    .O(\refresh_clk/Mcount_counter_lut [7])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF7FFFFFFF ))
  \refresh_clk/GND_3_o_GND_3_o_equal_5_o_inv1  (
    .I0(\refresh_clk/counter [6]),
    .I1(\refresh_clk/counter [7]),
    .I2(\refresh_clk/counter [3]),
    .I3(\refresh_clk/counter [5]),
    .I4(\refresh_clk/counter [8]),
    .I5(N9),
    .O(\refresh_clk/GND_3_o_GND_3_o_equal_5_o_inv )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  row_change1_SW3_SW0 (
    .I0(req_IBUF_40),
    .I1(row_diff_85),
    .O(N102)
  );
  LUT6 #(
    .INIT ( 64'hBBFBBBFFAAFBAAFF ))
  row_change1_SW3 (
    .I0(op_state_FSM_FFd2_121),
    .I1(op_state_FSM_FFd3_122),
    .I2(N102),
    .I3(refresh_time_refresh_req_OR_59_o),
    .I4(\op_state_FSM_FFd1-In21 ),
    .I5(\req_req_in_prog[1]_OR_57_o ),
    .O(N72)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \refresh_clk/GND_3_o_GND_3_o_equal_5_o<8>_SW1  (
    .I0(\refresh_clk/counter [5]),
    .I1(\refresh_clk/counter [3]),
    .O(N104)
  );
  LUT6 #(
    .INIT ( 64'hAAAA2AAAAAAAAAAA ))
  \refresh_clk/Mcount_counter_lut<1>  (
    .I0(\refresh_clk/counter [1]),
    .I1(\refresh_clk/counter [8]),
    .I2(\refresh_clk/counter [7]),
    .I3(\refresh_clk/counter [6]),
    .I4(N9),
    .I5(N104),
    .O(\refresh_clk/Mcount_counter_lut [1])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \refresh_clk/GND_3_o_GND_3_o_equal_5_o<8>_SW3  (
    .I0(\refresh_clk/counter [7]),
    .I1(\refresh_clk/counter [6]),
    .O(N108)
  );
  LUT6 #(
    .INIT ( 64'hAAAA2AAAAAAAAAAA ))
  \refresh_clk/Mcount_counter_lut<2>  (
    .I0(\refresh_clk/counter [2]),
    .I1(\refresh_clk/counter [5]),
    .I2(\refresh_clk/counter [3]),
    .I3(\refresh_clk/counter [8]),
    .I4(N9),
    .I5(N108),
    .O(\refresh_clk/Mcount_counter_lut [2])
  );
  LUT6 #(
    .INIT ( 64'hAAAA2AAAAAAAAAAA ))
  \refresh_clk/Mcount_counter_lut<4>  (
    .I0(\refresh_clk/counter [4]),
    .I1(\refresh_clk/counter [5]),
    .I2(\refresh_clk/counter [3]),
    .I3(\refresh_clk/counter [8]),
    .I4(N9),
    .I5(N108),
    .O(\refresh_clk/Mcount_counter_lut [4])
  );
  MUXCY   \Mmux_op_state[2]_GND_1_o_wide_mux_83_OUT21_cy  (
    .CI(\addr_req[21]_addr_req_in[21]_not_equal_2_o ),
    .DI(N1),
    .S(\Mmux_op_state[2]_GND_1_o_wide_mux_83_OUT21_lut_407 ),
    .O(\addr_req[21]_addr_req_in[21]_not_equal_2_o_l1 )
  );
  LUT5 #(
    .INIT ( 32'hFFCFBB8B ))
  \Mmux_op_state[2]_GND_1_o_wide_mux_83_OUT21_lut1  (
    .I0(req_IBUF_40),
    .I1(op_state_FSM_FFd3_122),
    .I2(\req_req_in_prog[1]_OR_57_o ),
    .I3(N63),
    .I4(N62),
    .O(\Mmux_op_state[2]_GND_1_o_wide_mux_83_OUT21_lut1_409 )
  );
  MUXCY   \Mmux_op_state[2]_GND_1_o_wide_mux_83_OUT21_cy1  (
    .CI(\addr_req[21]_addr_req_in[21]_not_equal_2_o_l1 ),
    .DI(enable),
    .S(\Mmux_op_state[2]_GND_1_o_wide_mux_83_OUT21_lut1_409 ),
    .O(\op_state[2]_GND_1_o_wide_mux_83_OUT<1> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFF31FFCEFF00 ))
  \init_state_init_state[3]_PWR_1_o_Select_105_o3  (
    .I0(req_IBUF_40),
    .I1(\req_req_in_prog[1]_OR_61_o ),
    .I2(\addr_req[21]_addr_req_in[21]_not_equal_2_o ),
    .I3(\init_state_init_state[3]_PWR_1_o_Select_105_o ),
    .I4(N57),
    .I5(N56),
    .O(\init_state[3]_PWR_1_o_Select_105_o )
  );
  LUT6 #(
    .INIT ( 64'h00CF00EF30FF10FF ))
  \op_state_FSM_FFd2-In21  (
    .I0(req_IBUF_40),
    .I1(refresh_time_refresh_req_OR_59_o),
    .I2(\op_state_FSM_FFd1-In21 ),
    .I3(N59),
    .I4(\addr_req[21]_addr_req_in[21]_not_equal_2_o ),
    .I5(N60),
    .O(\op_state_FSM_FFd2-In2 )
  );
  LUT6 #(
    .INIT ( 64'h00300030CCFC4474 ))
  \Mmux_op_state[2]_GND_1_o_wide_mux_83_OUT11  (
    .I0(req_IBUF_40),
    .I1(op_state_FSM_FFd3_122),
    .I2(\req_req_in_prog[1]_OR_57_o ),
    .I3(N66),
    .I4(\addr_req[21]_addr_req_in[21]_not_equal_2_o ),
    .I5(N65),
    .O(\op_state[2]_GND_1_o_wide_mux_83_OUT<0> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFCEC4DF80 ))
  \op_state_FSM_FFd3-In15  (
    .I0(\addr_req[21]_addr_req_in[21]_not_equal_2_o ),
    .I1(N48),
    .I2(N68),
    .I3(N47),
    .I4(N69),
    .I5(\op_state_FSM_FFd3-In12_285 ),
    .O(\op_state_FSM_FFd3-In1 )
  );
  LUT6 #(
    .INIT ( 64'h8080D58080D5D5D5 ))
  \op_state_FSM_FFd1-In24  (
    .I0(op_state_FSM_FFd1_120),
    .I1(op_state_FSM_FFd3_122),
    .I2(\op_state_FSM_FFd1-In22_287 ),
    .I3(\addr_req[21]_addr_req_in[21]_not_equal_2_o ),
    .I4(N71),
    .I5(N72),
    .O(\op_state_FSM_FFd1-In2 )
  );
  LUT6 #(
    .INIT ( 64'hFFFF02F7FD080000 ))
  \init_state_init_state[3]_PWR_1_o_Select_101_o2  (
    .I0(req_IBUF_40),
    .I1(N75),
    .I2(\addr_req[21]_addr_req_in[21]_not_equal_2_o ),
    .I3(N74),
    .I4(N54),
    .I5(N53),
    .O(\init_state[3]_PWR_1_o_Select_101_o )
  );
  LUT6 #(
    .INIT ( 64'h0303030300000301 ))
  \Mmux_op_state[2]_GND_1_o_wide_mux_82_OUT183  (
    .I0(req_IBUF_40),
    .I1(op_state_FSM_FFd1_120),
    .I2(op_state_FSM_FFd2_121),
    .I3(\addr_req[21]_addr_req_in[21]_not_equal_2_o ),
    .I4(N77),
    .I5(\Mmux_op_state[2]_GND_1_o_wide_mux_82_OUT18 ),
    .O(\op_state[2]_GND_1_o_wide_mux_82_OUT<7> )
  );
  LUT6 #(
    .INIT ( 64'h0303030300000301 ))
  \Mmux_op_state[2]_GND_1_o_wide_mux_82_OUT163  (
    .I0(req_IBUF_40),
    .I1(op_state_FSM_FFd1_120),
    .I2(op_state_FSM_FFd2_121),
    .I3(\addr_req[21]_addr_req_in[21]_not_equal_2_o ),
    .I4(N79),
    .I5(\Mmux_op_state[2]_GND_1_o_wide_mux_82_OUT16 ),
    .O(\op_state[2]_GND_1_o_wide_mux_82_OUT<6> )
  );
  LUT6 #(
    .INIT ( 64'h0303030300000301 ))
  \Mmux_op_state[2]_GND_1_o_wide_mux_82_OUT143  (
    .I0(req_IBUF_40),
    .I1(op_state_FSM_FFd1_120),
    .I2(op_state_FSM_FFd2_121),
    .I3(\addr_req[21]_addr_req_in[21]_not_equal_2_o ),
    .I4(N81),
    .I5(\Mmux_op_state[2]_GND_1_o_wide_mux_82_OUT14 ),
    .O(\op_state[2]_GND_1_o_wide_mux_82_OUT<5> )
  );
  LUT6 #(
    .INIT ( 64'h0303030300000301 ))
  \Mmux_op_state[2]_GND_1_o_wide_mux_82_OUT123  (
    .I0(req_IBUF_40),
    .I1(op_state_FSM_FFd1_120),
    .I2(op_state_FSM_FFd2_121),
    .I3(\addr_req[21]_addr_req_in[21]_not_equal_2_o ),
    .I4(N83),
    .I5(\Mmux_op_state[2]_GND_1_o_wide_mux_82_OUT12 ),
    .O(\op_state[2]_GND_1_o_wide_mux_82_OUT<4> )
  );
  LUT6 #(
    .INIT ( 64'h0303030300000301 ))
  \Mmux_op_state[2]_GND_1_o_wide_mux_82_OUT103  (
    .I0(req_IBUF_40),
    .I1(op_state_FSM_FFd1_120),
    .I2(op_state_FSM_FFd2_121),
    .I3(\addr_req[21]_addr_req_in[21]_not_equal_2_o ),
    .I4(N85),
    .I5(\Mmux_op_state[2]_GND_1_o_wide_mux_82_OUT10 ),
    .O(\op_state[2]_GND_1_o_wide_mux_82_OUT<3> )
  );
  LUT6 #(
    .INIT ( 64'h0303030300000301 ))
  \Mmux_op_state[2]_GND_1_o_wide_mux_82_OUT83  (
    .I0(req_IBUF_40),
    .I1(op_state_FSM_FFd1_120),
    .I2(op_state_FSM_FFd2_121),
    .I3(\addr_req[21]_addr_req_in[21]_not_equal_2_o ),
    .I4(N87),
    .I5(\Mmux_op_state[2]_GND_1_o_wide_mux_82_OUT8 ),
    .O(\op_state[2]_GND_1_o_wide_mux_82_OUT<2> )
  );
  LUT6 #(
    .INIT ( 64'h0303030300000301 ))
  \Mmux_op_state[2]_GND_1_o_wide_mux_82_OUT63  (
    .I0(req_IBUF_40),
    .I1(op_state_FSM_FFd1_120),
    .I2(op_state_FSM_FFd2_121),
    .I3(\addr_req[21]_addr_req_in[21]_not_equal_2_o ),
    .I4(N89),
    .I5(\Mmux_op_state[2]_GND_1_o_wide_mux_82_OUT6 ),
    .O(\op_state[2]_GND_1_o_wide_mux_82_OUT<1> )
  );
  LUT6 #(
    .INIT ( 64'h0303030300000301 ))
  \Mmux_op_state[2]_GND_1_o_wide_mux_82_OUT23  (
    .I0(req_IBUF_40),
    .I1(op_state_FSM_FFd1_120),
    .I2(op_state_FSM_FFd2_121),
    .I3(\addr_req[21]_addr_req_in[21]_not_equal_2_o ),
    .I4(N91),
    .I5(\Mmux_op_state[2]_GND_1_o_wide_mux_82_OUT2 ),
    .O(\op_state[2]_GND_1_o_wide_mux_82_OUT<0> )
  );
  LUT6 #(
    .INIT ( 64'h4454555577575555 ))
  \init_state_init_state[3]_GND_1_o_Select_110_o3  (
    .I0(N93),
    .I1(refresh_time_refresh_req_OR_59_o),
    .I2(req_IBUF_40),
    .I3(\addr_req[21]_addr_req_in[21]_not_equal_2_o ),
    .I4(\init_state_init_state[3]_GND_1_o_Select_110_o1_278 ),
    .I5(N94),
    .O(\init_state[3]_GND_1_o_Select_110_o )
  );
  LUT6 #(
    .INIT ( 64'hFAFAFAFAFAF8F2F0 ))
  \init_state_init_state[3]_PWR_1_o_Select_103_o3  (
    .I0(init_state_FSM_FFd1_112),
    .I1(\addr_req[21]_addr_req_in[21]_not_equal_2_o ),
    .I2(\init_state_init_state[3]_PWR_1_o_Select_103_o ),
    .I3(N97),
    .I4(N96),
    .I5(\init_state_init_state[3]_PWR_1_o_Select_103_o1_283 ),
    .O(\init_state[3]_PWR_1_o_Select_103_o )
  );
  LUT6 #(
    .INIT ( 64'h0000FDFDDC00FD21 ))
  row_diff_rstpot (
    .I0(op_state_FSM_FFd1_120),
    .I1(op_state_FSM_FFd2_121),
    .I2(op_state_FSM_FFd3_122),
    .I3(N100),
    .I4(N99),
    .I5(\addr_req[21]_addr_req_in[21]_not_equal_2_o ),
    .O(row_diff_rstpot_369)
  );
  LUT5 #(
    .INIT ( 32'hFFFFFF47 ))
  \op_state_FSM_FFd2-In211_SW3  (
    .I0(addr_req_in_21_IBUF_0),
    .I1(req_IBUF_40),
    .I2(addr_req[21]),
    .I3(op_state_FSM_FFd1_120),
    .I4(op_state_FSM_FFd2_121),
    .O(N63)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \op_state_FSM_FFd2-In211_SW2_SW0  (
    .I0(op_state_FSM_FFd1_120),
    .I1(op_state_FSM_FFd2_121),
    .O(N112)
  );
  LUT6 #(
    .INIT ( 64'h0000000000040000 ))
  \Mmux_op_state[2]_GND_1_o_wide_mux_83_OUT21_lut  (
    .I0(row_diff_85),
    .I1(op_state_FSM_FFd3_122),
    .I2(N43),
    .I3(refresh_time_refresh_req_OR_59_o),
    .I4(\op_state_FSM_FFd1-In21 ),
    .I5(N112),
    .O(\Mmux_op_state[2]_GND_1_o_wide_mux_83_OUT21_lut_407 )
  );
  LUT6 #(
    .INIT ( 64'hAAAA2AAAAAAAAAAA ))
  \refresh_clk/Mcount_counter_lut<8>  (
    .I0(\refresh_clk/counter [8]),
    .I1(\refresh_clk/counter [5]),
    .I2(\refresh_clk/counter [3]),
    .I3(\refresh_clk/counter [7]),
    .I4(N9),
    .I5(\refresh_clk/counter [6]),
    .O(\refresh_clk/Mcount_counter_lut [8])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \refresh_clk/GND_3_o_GND_3_o_equal_5_o<8>_SW5  (
    .I0(\refresh_clk/counter [7]),
    .I1(\refresh_clk/counter [6]),
    .I2(\refresh_clk/counter [8]),
    .O(N114)
  );
  LUT4 #(
    .INIT ( 16'hFFF8 ))
  row_change1_SW1 (
    .I0(req_in_prog[1]),
    .I1(row_diff_85),
    .I2(req_in_prog[0]),
    .I3(req_IBUF_40),
    .O(N69)
  );
  LUT5 #(
    .INIT ( 32'hFF2AFA3A ))
  row_change1_SW0 (
    .I0(req_in_prog[0]),
    .I1(write_IBUF_41),
    .I2(req_IBUF_40),
    .I3(row_diff_85),
    .I4(req_in_prog[1]),
    .O(N68)
  );
  LUT6 #(
    .INIT ( 64'hFFFA0000BBBABBBA ))
  row_change1_SW4 (
    .I0(req_IBUF_40),
    .I1(ack_OBUF_80),
    .I2(req_in_prog[1]),
    .I3(req_in_prog[0]),
    .I4(row_diff_85),
    .I5(op_state_FSM_FFd3_122),
    .O(N74)
  );
  LUT5 #(
    .INIT ( 32'hFFFABBBA ))
  row_change1_SW5 (
    .I0(req_IBUF_40),
    .I1(ack_OBUF_80),
    .I2(req_in_prog[0]),
    .I3(req_in_prog[1]),
    .I4(op_state_FSM_FFd3_122),
    .O(N75)
  );
  LUT6 #(
    .INIT ( 64'h00008F8800000000 ))
  \init_state_init_state[3]_GND_1_o_Select_110_o2  (
    .I0(write_IBUF_41),
    .I1(req_IBUF_40),
    .I2(req_in_prog[0]),
    .I3(req_in_prog[1]),
    .I4(op_state_FSM_FFd2_121),
    .I5(op_state_FSM_FFd3_122),
    .O(\init_state_init_state[3]_GND_1_o_Select_110_o1_278 )
  );
  LUT5 #(
    .INIT ( 32'hFFB00000 ))
  \op_state_FSM_FFd3-In14_SW1  (
    .I0(state_clk_count[0]),
    .I1(state_clk_count[1]),
    .I2(op_state_FSM_FFd1_120),
    .I3(op_state_FSM_FFd2_121),
    .I4(op_state_FSM_FFd3_122),
    .O(N48)
  );
  LUT5 #(
    .INIT ( 32'hFFFFFF47 ))
  \op_state_FSM_FFd2-In211_SW5  (
    .I0(addr_req_in_20_IBUF_1),
    .I1(req_IBUF_40),
    .I2(addr_req[20]),
    .I3(op_state_FSM_FFd1_120),
    .I4(op_state_FSM_FFd2_121),
    .O(N66)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFF7FFFF ))
  \Mmux_op_state[2]_PWR_1_o_Mux_79_o111_SW8  (
    .I0(init_state_FSM_FFd1_112),
    .I1(state_clk_count[0]),
    .I2(state_clk_count[1]),
    .I3(op_state_FSM_FFd1_120),
    .I4(op_state_FSM_FFd2_121),
    .I5(op_state_FSM_FFd3_122),
    .O(N93)
  );
  LUT4 #(
    .INIT ( 16'h0888 ))
  \init_clk/Mmux_GND_4_o_counter[11]_mux_8_OUT13  (
    .I0(init_enable_66),
    .I1(\init_clk/counter[11]_GND_4_o_add_5_OUT<0> ),
    .I2(\init_clk/GND_4_o_GND_4_o_equal_5_o [11]),
    .I3(\init_clk/GND_4_o_GND_4_o_equal_5_o<11>1_291 ),
    .O(\init_clk/GND_4_o_counter[11]_mux_8_OUT<0> )
  );
  LUT4 #(
    .INIT ( 16'h0888 ))
  \init_clk/Mmux_GND_4_o_counter[11]_mux_8_OUT41  (
    .I0(init_enable_66),
    .I1(\init_clk/counter[11]_GND_4_o_add_5_OUT<1> ),
    .I2(\init_clk/GND_4_o_GND_4_o_equal_5_o [11]),
    .I3(\init_clk/GND_4_o_GND_4_o_equal_5_o<11>1_291 ),
    .O(\init_clk/GND_4_o_counter[11]_mux_8_OUT<1> )
  );
  LUT4 #(
    .INIT ( 16'h0888 ))
  \init_clk/Mmux_GND_4_o_counter[11]_mux_8_OUT51  (
    .I0(init_enable_66),
    .I1(\init_clk/counter[11]_GND_4_o_add_5_OUT<2> ),
    .I2(\init_clk/GND_4_o_GND_4_o_equal_5_o [11]),
    .I3(\init_clk/GND_4_o_GND_4_o_equal_5_o<11>1_291 ),
    .O(\init_clk/GND_4_o_counter[11]_mux_8_OUT<2> )
  );
  LUT4 #(
    .INIT ( 16'h0888 ))
  \init_clk/Mmux_GND_4_o_counter[11]_mux_8_OUT61  (
    .I0(init_enable_66),
    .I1(\init_clk/counter[11]_GND_4_o_add_5_OUT<3> ),
    .I2(\init_clk/GND_4_o_GND_4_o_equal_5_o [11]),
    .I3(\init_clk/GND_4_o_GND_4_o_equal_5_o<11>1_291 ),
    .O(\init_clk/GND_4_o_counter[11]_mux_8_OUT<3> )
  );
  LUT4 #(
    .INIT ( 16'h0888 ))
  \init_clk/Mmux_GND_4_o_counter[11]_mux_8_OUT71  (
    .I0(init_enable_66),
    .I1(\init_clk/counter[11]_GND_4_o_add_5_OUT<4> ),
    .I2(\init_clk/GND_4_o_GND_4_o_equal_5_o [11]),
    .I3(\init_clk/GND_4_o_GND_4_o_equal_5_o<11>1_291 ),
    .O(\init_clk/GND_4_o_counter[11]_mux_8_OUT<4> )
  );
  LUT4 #(
    .INIT ( 16'h0888 ))
  \init_clk/Mmux_GND_4_o_counter[11]_mux_8_OUT81  (
    .I0(init_enable_66),
    .I1(\init_clk/counter[11]_GND_4_o_add_5_OUT<5> ),
    .I2(\init_clk/GND_4_o_GND_4_o_equal_5_o [11]),
    .I3(\init_clk/GND_4_o_GND_4_o_equal_5_o<11>1_291 ),
    .O(\init_clk/GND_4_o_counter[11]_mux_8_OUT<5> )
  );
  LUT4 #(
    .INIT ( 16'h0888 ))
  \init_clk/Mmux_GND_4_o_counter[11]_mux_8_OUT91  (
    .I0(init_enable_66),
    .I1(\init_clk/counter[11]_GND_4_o_add_5_OUT<6> ),
    .I2(\init_clk/GND_4_o_GND_4_o_equal_5_o [11]),
    .I3(\init_clk/GND_4_o_GND_4_o_equal_5_o<11>1_291 ),
    .O(\init_clk/GND_4_o_counter[11]_mux_8_OUT<6> )
  );
  LUT4 #(
    .INIT ( 16'h0888 ))
  \init_clk/Mmux_GND_4_o_counter[11]_mux_8_OUT101  (
    .I0(init_enable_66),
    .I1(\init_clk/counter[11]_GND_4_o_add_5_OUT<7> ),
    .I2(\init_clk/GND_4_o_GND_4_o_equal_5_o [11]),
    .I3(\init_clk/GND_4_o_GND_4_o_equal_5_o<11>1_291 ),
    .O(\init_clk/GND_4_o_counter[11]_mux_8_OUT<7> )
  );
  LUT4 #(
    .INIT ( 16'h0888 ))
  \init_clk/Mmux_GND_4_o_counter[11]_mux_8_OUT111  (
    .I0(init_enable_66),
    .I1(\init_clk/counter[11]_GND_4_o_add_5_OUT<8> ),
    .I2(\init_clk/GND_4_o_GND_4_o_equal_5_o [11]),
    .I3(\init_clk/GND_4_o_GND_4_o_equal_5_o<11>1_291 ),
    .O(\init_clk/GND_4_o_counter[11]_mux_8_OUT<8> )
  );
  LUT4 #(
    .INIT ( 16'h0888 ))
  \init_clk/Mmux_GND_4_o_counter[11]_mux_8_OUT121  (
    .I0(init_enable_66),
    .I1(\init_clk/counter[11]_GND_4_o_add_5_OUT<9> ),
    .I2(\init_clk/GND_4_o_GND_4_o_equal_5_o [11]),
    .I3(\init_clk/GND_4_o_GND_4_o_equal_5_o<11>1_291 ),
    .O(\init_clk/GND_4_o_counter[11]_mux_8_OUT<9> )
  );
  LUT4 #(
    .INIT ( 16'h0888 ))
  \init_clk/Mmux_GND_4_o_counter[11]_mux_8_OUT21  (
    .I0(init_enable_66),
    .I1(\init_clk/counter[11]_GND_4_o_add_5_OUT<10> ),
    .I2(\init_clk/GND_4_o_GND_4_o_equal_5_o [11]),
    .I3(\init_clk/GND_4_o_GND_4_o_equal_5_o<11>1_291 ),
    .O(\init_clk/GND_4_o_counter[11]_mux_8_OUT<10> )
  );
  LUT4 #(
    .INIT ( 16'h0888 ))
  \init_clk/Mmux_GND_4_o_counter[11]_mux_8_OUT31  (
    .I0(init_enable_66),
    .I1(\init_clk/counter[11]_GND_4_o_add_5_OUT<11> ),
    .I2(\init_clk/GND_4_o_GND_4_o_equal_5_o [11]),
    .I3(\init_clk/GND_4_o_GND_4_o_equal_5_o<11>1_291 ),
    .O(\init_clk/GND_4_o_counter[11]_mux_8_OUT<11> )
  );
  LUT6 #(
    .INIT ( 64'hAAAA8088AAAAA2AA ))
  \op_state_FSM_FFd3-In14_SW0  (
    .I0(op_state_FSM_FFd3_122),
    .I1(op_state_FSM_FFd1_120),
    .I2(state_clk_count[0]),
    .I3(state_clk_count[1]),
    .I4(op_state_FSM_FFd2_121),
    .I5(refresh_time_refresh_req_OR_59_o),
    .O(N47)
  );
  LUT6 #(
    .INIT ( 64'hFFFF0000FFAB0000 ))
  \Mmux_op_state[2]_PWR_1_o_Mux_79_o111_SW11  (
    .I0(req_IBUF_40),
    .I1(req_in_prog[0]),
    .I2(req_in_prog[1]),
    .I3(row_diff_85),
    .I4(op_state_FSM_FFd3_122),
    .I5(refresh_time_refresh_req_OR_59_o),
    .O(N97)
  );
  LUT6 #(
    .INIT ( 64'hFFF0FFFFFFF0FFF1 ))
  \init_state_init_state[3]_PWR_1_o_Select_103_o2  (
    .I0(refresh_req_88),
    .I1(\refresh_clk/out1_110 ),
    .I2(op_state_FSM_FFd1_120),
    .I3(op_state_FSM_FFd2_121),
    .I4(op_state_FSM_FFd3_122),
    .I5(\req_req_in_prog[1]_OR_57_o ),
    .O(\init_state_init_state[3]_PWR_1_o_Select_103_o1_283 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFF01FFFFFFFF ))
  \Mmux_op_state[2]_PWR_1_o_Mux_79_o111_SW0  (
    .I0(req_IBUF_40),
    .I1(req_in_prog[1]),
    .I2(req_in_prog[0]),
    .I3(row_diff_85),
    .I4(refresh_time_refresh_req_OR_59_o),
    .I5(\Mmux_op_state[2]_GND_1_o_wide_mux_82_OUT181_262 ),
    .O(N77)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFF01FFFFFFFF ))
  \Mmux_op_state[2]_PWR_1_o_Mux_79_o111_SW1  (
    .I0(req_IBUF_40),
    .I1(req_in_prog[1]),
    .I2(req_in_prog[0]),
    .I3(row_diff_85),
    .I4(refresh_time_refresh_req_OR_59_o),
    .I5(\Mmux_op_state[2]_GND_1_o_wide_mux_82_OUT161_264 ),
    .O(N79)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFF01FFFFFFFF ))
  \Mmux_op_state[2]_PWR_1_o_Mux_79_o111_SW2  (
    .I0(req_IBUF_40),
    .I1(req_in_prog[1]),
    .I2(req_in_prog[0]),
    .I3(row_diff_85),
    .I4(refresh_time_refresh_req_OR_59_o),
    .I5(\Mmux_op_state[2]_GND_1_o_wide_mux_82_OUT141_266 ),
    .O(N81)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFF01FFFFFFFF ))
  \Mmux_op_state[2]_PWR_1_o_Mux_79_o111_SW3  (
    .I0(req_IBUF_40),
    .I1(req_in_prog[1]),
    .I2(req_in_prog[0]),
    .I3(row_diff_85),
    .I4(refresh_time_refresh_req_OR_59_o),
    .I5(\Mmux_op_state[2]_GND_1_o_wide_mux_82_OUT121_268 ),
    .O(N83)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFF01FFFFFFFF ))
  \Mmux_op_state[2]_PWR_1_o_Mux_79_o111_SW4  (
    .I0(req_IBUF_40),
    .I1(req_in_prog[1]),
    .I2(req_in_prog[0]),
    .I3(row_diff_85),
    .I4(refresh_time_refresh_req_OR_59_o),
    .I5(\Mmux_op_state[2]_GND_1_o_wide_mux_82_OUT101_270 ),
    .O(N85)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFF01FFFFFFFF ))
  \Mmux_op_state[2]_PWR_1_o_Mux_79_o111_SW5  (
    .I0(req_IBUF_40),
    .I1(req_in_prog[1]),
    .I2(req_in_prog[0]),
    .I3(row_diff_85),
    .I4(refresh_time_refresh_req_OR_59_o),
    .I5(\Mmux_op_state[2]_GND_1_o_wide_mux_82_OUT81_272 ),
    .O(N87)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFF01FFFFFFFF ))
  \Mmux_op_state[2]_PWR_1_o_Mux_79_o111_SW6  (
    .I0(req_IBUF_40),
    .I1(req_in_prog[1]),
    .I2(req_in_prog[0]),
    .I3(row_diff_85),
    .I4(refresh_time_refresh_req_OR_59_o),
    .I5(\Mmux_op_state[2]_GND_1_o_wide_mux_82_OUT61_274 ),
    .O(N89)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFF01FFFFFFFF ))
  \Mmux_op_state[2]_PWR_1_o_Mux_79_o111_SW7  (
    .I0(req_IBUF_40),
    .I1(req_in_prog[1]),
    .I2(req_in_prog[0]),
    .I3(row_diff_85),
    .I4(refresh_time_refresh_req_OR_59_o),
    .I5(\Mmux_op_state[2]_GND_1_o_wide_mux_82_OUT21_276 ),
    .O(N91)
  );
  LUT5 #(
    .INIT ( 32'hFE00FF00 ))
  \Mmux_op_state[2]_PWR_1_o_Mux_79_o111_SW10  (
    .I0(refresh_req_88),
    .I1(\refresh_clk/out1_110 ),
    .I2(row_diff_85),
    .I3(op_state_FSM_FFd3_122),
    .I4(\op_state_FSM_FFd1-In21 ),
    .O(N96)
  );
  LUT4 #(
    .INIT ( 16'h2000 ))
  \init_clk/out1_rstpot  (
    .I0(init_enable_66),
    .I1(\init_clk/out1_111 ),
    .I2(\init_clk/GND_4_o_GND_4_o_equal_5_o [11]),
    .I3(\init_clk/GND_4_o_GND_4_o_equal_5_o<11>1_291 ),
    .O(\init_clk/out1_rstpot_368 )
  );
  MUXF7   \init_state_init_state[3]_PWR_1_o_Select_105_o2_SW0  (
    .I0(N116),
    .I1(N117),
    .S(refresh_time_refresh_req_OR_59_o),
    .O(N56)
  );
  LUT6 #(
    .INIT ( 64'hAAA2AAAAAAAAAAAA ))
  \init_state_init_state[3]_PWR_1_o_Select_105_o2_SW0_F  (
    .I0(init_state_FSM_FFd1_112),
    .I1(row_diff_85),
    .I2(op_state_FSM_FFd1_120),
    .I3(op_state_FSM_FFd2_121),
    .I4(op_state_FSM_FFd3_122),
    .I5(\op_state_FSM_FFd1-In21 ),
    .O(N116)
  );
  LUT4 #(
    .INIT ( 16'hAA8A ))
  \init_state_init_state[3]_PWR_1_o_Select_105_o2_SW0_G  (
    .I0(init_state_FSM_FFd1_112),
    .I1(op_state_FSM_FFd2_121),
    .I2(op_state_FSM_FFd3_122),
    .I3(op_state_FSM_FFd1_120),
    .O(N117)
  );
  LUT5 #(
    .INIT ( 32'hFFFF0888 ))
  refresh_req_glue_set (
    .I0(init_state_FSM_FFd1_112),
    .I1(refresh_req_88),
    .I2(op_state_FSM_FFd1_120),
    .I3(op_state_FSM_FFd3_122),
    .I4(\refresh_clk/out1_110 ),
    .O(refresh_req_glue_set_355)
  );
  LUT5 #(
    .INIT ( 32'h10000000 ))
  \refresh_clk/out1_rstpot  (
    .I0(\refresh_clk/out1_110 ),
    .I1(N9),
    .I2(\refresh_clk/counter [5]),
    .I3(\refresh_clk/counter [3]),
    .I4(N114),
    .O(\refresh_clk/out1_rstpot_367 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \refresh_clk/Mcount_counter_cy<0>_rt  (
    .I0(\refresh_clk/counter [0]),
    .O(\refresh_clk/Mcount_counter_cy<0>_rt_414 )
  );
  FDR   op_state_FSM_FFd2_1 (
    .C(clk_OBUF_64),
    .D(\op_state_FSM_FFd2-In2 ),
    .R(\init_state/n0041_0 ),
    .Q(op_state_FSM_FFd2_1_415)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  refresh_time_refresh_req_OR_59_o1_1 (
    .I0(refresh_req_88),
    .I1(\refresh_clk/out1_110 ),
    .O(refresh_time_refresh_req_OR_59_o1_416)
  );
  INV   \init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_lut<0>_INV_0  (
    .I(\init_clk/counter [0]),
    .O(\init_clk/Madd_counter[11]_GND_4_o_add_5_OUT_lut<0> )
  );
  INV   rst1_INV_0 (
    .I(rstn_IBUF_39),
    .O(rst)
  );
  INV   write_INV_5_o1_INV_0 (
    .I(write_IBUF_41),
    .O(write_INV_5_o)
  );
  INV   \init_state[3]_INV_25_o1_INV_0  (
    .I(init_state_FSM_FFd8_113),
    .O(\init_state[3]_INV_25_o )
  );
  INV   \refresh_clk/out1_inv1_INV_0  (
    .I(\refresh_clk/out1_110 ),
    .O(\refresh_clk/out1_inv )
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

