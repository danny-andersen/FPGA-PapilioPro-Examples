////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: host_display_synthesis.v
// /___/   /\     Timestamp: Fri Jul 25 14:43:18 2014
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim host_display.ngc host_display_synthesis.v 
// Device	: xc6slx9-2-tqg144
// Input file	: host_display.ngc
// Output file	: C:\Users\S243372\Dropbox\Workspaces\Projects_FPGA\host_display\netgen\synthesis\host_display_synthesis.v
// # of Modules	: 1
// Design Name	: host_display
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

module host_display (
  rx, clk_in, rstn, tx, base_led, leds, segments, digit_select
);
  input rx;
  input clk_in;
  input rstn;
  output tx;
  output base_led;
  output [7 : 0] leds;
  output [7 : 0] segments;
  output [3 : 0] digit_select;
  wire rx_IBUF_0;
  wire clk_in_IBUFG_1;
  wire rstn_IBUF_2;
  wire \uart/ready_11 ;
  wire \uart/frame_err_12 ;
  wire \uart/tx_13 ;
  wire base_led_OBUF_14;
  wire clk;
  wire leds_5_OBUF_28;
  wire tx_ready_34;
  wire data_in_37;
  wire clearn_38;
  wire clear_on_next_39;
  wire _n0051;
  wire \rx_byte[7]_rx_byte[7]_OR_179_o_49 ;
  wire N0;
  wire N1;
  wire \ready_reg<1>_0 ;
  wire ready_pulse_inv1_0;
  wire \uart/Mmux__n022812 ;
  wire \uart/Mcount_clk_divide_val11 ;
  wire \uart/Mmux_rx_state[2]_GND_3_o_wide_mux_37_OUT12 ;
  wire \uart/Mmux_rx_state[2]_GND_3_o_wide_mux_37_OUT31_57 ;
  wire \uart/Mmux_rx_state[2]_GND_3_o_wide_mux_37_OUT21_58 ;
  wire \uart/rx_state_FSM_FFd3-In51 ;
  wire \uart/Mmux_GND_3_o_clk_divide_tx[7]_mux_50_OUT41 ;
  wire \uart/Mcount_clk_divide_val1_61 ;
  wire \uart/Mmux__n023711_62 ;
  wire \uart/rx_state_FSM_FFd3-In3_63 ;
  wire \uart/rx_state_FSM_FFd3-In2 ;
  wire \uart/Mmux_GND_3_o_clk_divide_tx[7]_mux_50_OUT511 ;
  wire \uart/Mmux__n022811 ;
  wire \uart/Mmux_tx_bit_counter[2]_tx_copy[7]_Mux_57_o_3_75 ;
  wire \uart/Mmux_tx_bit_counter[2]_tx_copy[7]_Mux_57_o_4_76 ;
  wire \uart/Mcount_clk_divide_val ;
  wire \uart/rx_state_FSM_FFd1-In ;
  wire \uart/rx_state_FSM_FFd2-In_109 ;
  wire \uart/rx_state_FSM_FFd3-In ;
  wire \uart/tx_state_FSM_FFd2_111 ;
  wire \uart/tx_state_FSM_FFd1-In ;
  wire \uart/tx_state_FSM_FFd2-In ;
  wire \uart/_n0270_inv ;
  wire \uart/_n0283_inv ;
  wire \uart/tx_ready_0 ;
  wire \uart/sample_locked_rx_state[2]_AND_1_o_inv_0 ;
  wire \uart/tx_bit_counter[2]_tx_copy[7]_Mux_57_o ;
  wire \uart/clk_divide[7]_GND_3_o_equal_2_o ;
  wire \uart/_n0237 ;
  wire \uart/rx_state[2]_GND_3_o_wide_mux_41_OUT<0> ;
  wire \uart/rx_state[2]_GND_3_o_wide_mux_41_OUT<1> ;
  wire \uart/rx_state[2]_GND_3_o_wide_mux_41_OUT<2> ;
  wire \uart/rx_state[2]_GND_3_o_wide_mux_41_OUT<3> ;
  wire \uart/rx_state[2]_GND_3_o_wide_mux_40_OUT<0> ;
  wire \uart/rx_state[2]_GND_3_o_wide_mux_40_OUT<1> ;
  wire \uart/rx_state[2]_GND_3_o_wide_mux_40_OUT<2> ;
  wire \uart/rx_state[2]_GND_3_o_wide_mux_37_OUT<0> ;
  wire \uart/rx_state[2]_GND_3_o_wide_mux_37_OUT<1> ;
  wire \uart/rx_state[2]_GND_3_o_wide_mux_37_OUT<2> ;
  wire \uart/rx_state[2]_GND_3_o_wide_mux_37_OUT<3> ;
  wire \uart/rx_state[2]_GND_3_o_wide_mux_37_OUT<4> ;
  wire \uart/rx_state[2]_GND_3_o_wide_mux_37_OUT<5> ;
  wire \uart/rx_state[2]_GND_3_o_wide_mux_37_OUT<6> ;
  wire \uart/rx_state[2]_GND_3_o_wide_mux_37_OUT<7> ;
  wire \uart/rx_bit_GND_3_o_equal_30_o ;
  wire \uart/GND_3_o_GND_3_o_MUX_54_o ;
  wire \uart/GND_3_o_clk_divide_tx[7]_mux_50_OUT<0> ;
  wire \uart/GND_3_o_clk_divide_tx[7]_mux_50_OUT<1> ;
  wire \uart/GND_3_o_clk_divide_tx[7]_mux_50_OUT<2> ;
  wire \uart/GND_3_o_clk_divide_tx[7]_mux_50_OUT<3> ;
  wire \uart/GND_3_o_clk_divide_tx[7]_mux_50_OUT<4> ;
  wire \uart/GND_3_o_clk_divide_tx[7]_mux_50_OUT<5> ;
  wire \uart/GND_3_o_clk_divide_tx[7]_mux_50_OUT<6> ;
  wire \uart/GND_3_o_clk_divide_tx[7]_mux_50_OUT<7> ;
  wire \uart/tx_state_FSM_FFd1_161 ;
  wire \uart/rx_state[2]_GND_3_o_Mux_39_o ;
  wire \uart/rx_state[2]_GND_3_o_Mux_38_o ;
  wire \uart/rx_state_FSM_FFd3_172 ;
  wire \uart/rx_state_FSM_FFd2_173 ;
  wire \uart/rx_state_FSM_FFd1_174 ;
  wire \uart/start_flag_183 ;
  wire \uart/sample_locked_184 ;
  wire \uart/rx_bit_185 ;
  wire \uart/sample_clk_BUFG_186 ;
  wire \uart/tx_ready_held_187 ;
  wire \uart/rx_1_188 ;
  wire \display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT10221_189 ;
  wire \display/Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT12_out1 ;
  wire \display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT13 ;
  wire \display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT101_192 ;
  wire \display/GND_5_o_GND_5_o_equal_77_o61 ;
  wire \display/buf_ptr[4]_buf_len[4]_LessThan_53_o26 ;
  wire \display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT17 ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<106>1 ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<102>1 ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<243>1 ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<224>2 ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<225>1 ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<220>2 ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<221>1 ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<223>1 ;
  wire \display/Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT61_204 ;
  wire \display/Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT111 ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<0>11 ;
  wire \display/buf_ptr[4]_buf_len[4]_LessThan_53_o721 ;
  wire \display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT11_208 ;
  wire \display/Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT11_209 ;
  wire \display/GND_5_o_GND_5_o_equal_77_o1_210 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_7_211 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_8_212 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_81_213 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_9_214 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_3_215 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_82_216 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_91_217 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_92_218 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_10_219 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_4_220 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_71_221 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_83_222 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_84_223 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_93_224 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_31_225 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_85_226 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_94_227 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_95_228 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_101_229 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_41_230 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_72_231 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_86_232 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_87_233 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_96_234 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_32_235 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_88_236 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_97_237 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_98_238 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_102_239 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_42_240 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_73_241 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_89_242 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_810_243 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_99_244 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_33_245 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_811_246 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_910_247 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_911_248 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_103_249 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_43_250 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_74_251 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_812_252 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_813_253 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_912_254 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_34_255 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_814_256 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_913_257 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_914_258 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_104_259 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_44_260 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_75_261 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_815_262 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_816_263 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_915_264 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_35_265 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_817_266 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_916_267 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_917_268 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_105_269 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_45_270 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_76_271 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_818_272 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_819_273 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_918_274 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_36_275 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_820_276 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_919_277 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_920_278 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_106_279 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_46_280 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_77_281 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_821_282 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_822_283 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_921_284 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_37_285 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_823_286 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_922_287 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_923_288 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_107_289 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_47_290 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_7_291 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_8_292 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_81_293 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_9_294 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_3_295 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_82_296 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_91_297 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_92_298 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_10_299 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_4_300 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_71_301 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_83_302 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_84_303 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_93_304 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_31_305 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_85_306 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_94_307 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_95_308 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_101_309 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_41_310 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_72_311 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_86_312 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_87_313 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_96_314 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_32_315 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_88_316 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_97_317 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_98_318 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_102_319 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_42_320 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_73_321 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_89_322 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_810_323 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_99_324 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_33_325 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_811_326 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_910_327 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_911_328 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_103_329 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_43_330 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_74_331 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_812_332 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_813_333 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_912_334 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_34_335 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_814_336 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_913_337 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_914_338 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_104_339 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_44_340 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_75_341 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_815_342 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_816_343 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_915_344 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_35_345 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_817_346 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_916_347 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_917_348 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_105_349 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_45_350 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_76_351 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_818_352 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_819_353 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_918_354 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_36_355 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_820_356 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_919_357 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_920_358 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_106_359 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_46_360 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_77_361 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_821_362 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_822_363 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_921_364 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_37_365 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_823_366 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_922_367 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_923_368 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_107_369 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_47_370 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_7_371 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_8_372 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_81_373 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_9_374 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_3_375 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_82_376 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_91_377 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_92_378 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_10_379 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_4_380 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_71_381 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_83_382 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_84_383 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_93_384 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_31_385 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_85_386 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_94_387 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_95_388 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_101_389 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_41_390 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_72_391 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_86_392 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_87_393 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_96_394 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_32_395 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_88_396 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_97_397 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_98_398 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_102_399 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_42_400 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_73_401 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_89_402 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_810_403 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_99_404 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_33_405 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_811_406 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_910_407 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_911_408 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_103_409 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_43_410 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_74_411 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_812_412 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_813_413 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_912_414 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_34_415 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_814_416 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_913_417 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_914_418 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_104_419 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_44_420 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_75_421 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_815_422 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_816_423 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_915_424 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_35_425 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_817_426 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_916_427 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_917_428 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_105_429 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_45_430 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_76_431 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_818_432 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_819_433 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_918_434 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_36_435 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_820_436 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_919_437 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_920_438 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_106_439 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_46_440 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_77_441 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_821_442 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_822_443 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_921_444 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_37_445 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_823_446 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_922_447 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_923_448 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_107_449 ;
  wire \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_47_450 ;
  wire \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_7_481 ;
  wire \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_8_482 ;
  wire \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_81_483 ;
  wire \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_9_484 ;
  wire \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_3_485 ;
  wire \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_82_486 ;
  wire \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_91_487 ;
  wire \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_92_488 ;
  wire \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_10_489 ;
  wire \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_4_490 ;
  wire \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_71_491 ;
  wire \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_83_492 ;
  wire \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_84_493 ;
  wire \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_93_494 ;
  wire \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_31_495 ;
  wire \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_85_496 ;
  wire \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_94_497 ;
  wire \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_95_498 ;
  wire \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_101_499 ;
  wire \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_41_500 ;
  wire \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_72_501 ;
  wire \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_86_502 ;
  wire \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_87_503 ;
  wire \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_96_504 ;
  wire \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_32_505 ;
  wire \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_88_506 ;
  wire \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_97_507 ;
  wire \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_98_508 ;
  wire \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_102_509 ;
  wire \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_42_510 ;
  wire \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_73_511 ;
  wire \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_89_512 ;
  wire \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_810_513 ;
  wire \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_99_514 ;
  wire \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_33_515 ;
  wire \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_811_516 ;
  wire \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_910_517 ;
  wire \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_911_518 ;
  wire \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_103_519 ;
  wire \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_43_520 ;
  wire \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_74_521 ;
  wire \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_812_522 ;
  wire \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_813_523 ;
  wire \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_912_524 ;
  wire \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_34_525 ;
  wire \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_814_526 ;
  wire \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_913_527 ;
  wire \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_914_528 ;
  wire \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_104_529 ;
  wire \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_44_530 ;
  wire \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_75_531 ;
  wire \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_815_532 ;
  wire \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_816_533 ;
  wire \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_915_534 ;
  wire \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_35_535 ;
  wire \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_817_536 ;
  wire \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_916_537 ;
  wire \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_917_538 ;
  wire \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_105_539 ;
  wire \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_45_540 ;
  wire \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_76_541 ;
  wire \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_818_542 ;
  wire \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_819_543 ;
  wire \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_918_544 ;
  wire \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_36_545 ;
  wire \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_820_546 ;
  wire \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_919_547 ;
  wire \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_920_548 ;
  wire \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_106_549 ;
  wire \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_46_550 ;
  wire \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_77_551 ;
  wire \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_821_552 ;
  wire \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_822_553 ;
  wire \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_921_554 ;
  wire \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_37_555 ;
  wire \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_823_556 ;
  wire \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_922_557 ;
  wire \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_923_558 ;
  wire \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_107_559 ;
  wire \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_47_560 ;
  wire \display/Madd_buf_ptr[4]_GND_5_o_add_86_OUT_cy<2> ;
  wire \display/_n0393_inv ;
  wire \display/Reset_OR_DriverANDClockEnable ;
  wire \display/ds_sync1 ;
  wire \display/buf_len[4]_GND_5_o_mux_42_OUT<2>1_609 ;
  wire \display/buf_len[4]_GND_5_o_mux_42_OUT<0>1_610 ;
  wire \display/_n0432_inv ;
  wire \display/_n0274 ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<0> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<1> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<2> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<3> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<4> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<5> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<6> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<7> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<8> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<9> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<10> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<11> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<12> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<13> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<14> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<15> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<16> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<17> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<18> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<19> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<20> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<21> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<22> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<23> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<24> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<25> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<26> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<27> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<28> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<29> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<30> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<31> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<32> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<33> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<34> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<35> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<36> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<37> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<38> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<39> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<40> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<41> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<42> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<43> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<44> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<45> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<46> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<47> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<48> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<49> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<50> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<51> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<52> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<53> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<54> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<55> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<56> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<57> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<58> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<59> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<60> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<61> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<62> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<63> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<64> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<65> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<66> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<67> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<68> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<69> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<70> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<71> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<72> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<73> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<74> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<75> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<76> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<77> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<78> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<79> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<80> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<81> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<82> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<83> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<84> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<85> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<86> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<87> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<88> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<89> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<90> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<91> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<92> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<93> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<94> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<95> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<96> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<97> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<98> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<99> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<100> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<101> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<102> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<103> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<104> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<105> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<106> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<107> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<108> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<109> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<110> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<111> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<112> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<113> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<114> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<115> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<116> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<117> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<118> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<119> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<120> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<121> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<122> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<123> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<124> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<125> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<126> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<127> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<128> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<129> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<130> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<131> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<132> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<133> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<134> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<135> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<136> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<137> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<138> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<139> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<140> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<141> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<142> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<143> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<144> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<145> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<146> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<147> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<148> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<149> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<150> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<151> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<152> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<153> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<154> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<155> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<156> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<157> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<158> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<159> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<160> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<161> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<162> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<163> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<164> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<165> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<166> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<167> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<168> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<169> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<170> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<171> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<172> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<173> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<174> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<175> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<176> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<177> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<178> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<179> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<180> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<181> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<182> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<183> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<184> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<185> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<186> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<187> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<188> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<189> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<190> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<191> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<192> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<193> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<194> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<195> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<196> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<197> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<198> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<199> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<200> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<201> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<202> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<203> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<204> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<205> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<206> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<207> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<208> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<209> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<210> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<211> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<212> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<213> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<214> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<215> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<216> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<217> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<218> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<219> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<220> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<221> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<222> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<223> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<224> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<225> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<226> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<227> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<228> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<229> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<230> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<231> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<232> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<233> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<234> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<235> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<236> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<237> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<238> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<239> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<240> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<241> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<242> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<243> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<244> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<245> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<246> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<247> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<248> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<249> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<250> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<251> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<252> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<253> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<254> ;
  wire \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<255> ;
  wire \display/buf_len[4]_Decoder_9_OUT<0> ;
  wire \display/buf_len[4]_GND_5_o_select_124_OUT<0> ;
  wire \display/buf_len[4]_GND_5_o_select_124_OUT<1> ;
  wire \display/buf_len[4]_GND_5_o_select_124_OUT<2> ;
  wire \display/buf_len[4]_GND_5_o_select_124_OUT<3> ;
  wire \display/buf_len[4]_GND_5_o_select_124_OUT<4> ;
  wire \display/buf_len[4]_ascii_buf[0][7]_select_123_OUT<0> ;
  wire \display/buf_len[4]_ascii_buf[0][7]_select_123_OUT<1> ;
  wire \display/buf_len[4]_ascii_buf[0][7]_select_123_OUT<2> ;
  wire \display/buf_len[4]_ascii_buf[0][7]_select_123_OUT<3> ;
  wire \display/buf_len[4]_ascii_buf[0][7]_select_123_OUT<4> ;
  wire \display/buf_len[4]_ascii_buf[0][7]_select_123_OUT<5> ;
  wire \display/buf_len[4]_ascii_buf[0][7]_select_123_OUT<6> ;
  wire \display/buf_len[4]_ascii_buf[0][7]_select_123_OUT<7> ;
  wire \display/buf_len[4]_ascii_buf[1][7]_select_122_OUT<0> ;
  wire \display/buf_len[4]_ascii_buf[1][7]_select_122_OUT<1> ;
  wire \display/buf_len[4]_ascii_buf[1][7]_select_122_OUT<2> ;
  wire \display/buf_len[4]_ascii_buf[1][7]_select_122_OUT<3> ;
  wire \display/buf_len[4]_ascii_buf[1][7]_select_122_OUT<4> ;
  wire \display/buf_len[4]_ascii_buf[1][7]_select_122_OUT<5> ;
  wire \display/buf_len[4]_ascii_buf[1][7]_select_122_OUT<6> ;
  wire \display/buf_len[4]_ascii_buf[1][7]_select_122_OUT<7> ;
  wire \display/buf_len[4]_ascii_buf[3][7]_select_120_OUT<0> ;
  wire \display/buf_len[4]_ascii_buf[3][7]_select_120_OUT<1> ;
  wire \display/buf_len[4]_ascii_buf[3][7]_select_120_OUT<2> ;
  wire \display/buf_len[4]_ascii_buf[3][7]_select_120_OUT<3> ;
  wire \display/buf_len[4]_ascii_buf[3][7]_select_120_OUT<4> ;
  wire \display/buf_len[4]_ascii_buf[3][7]_select_120_OUT<5> ;
  wire \display/buf_len[4]_ascii_buf[3][7]_select_120_OUT<6> ;
  wire \display/buf_len[4]_ascii_buf[3][7]_select_120_OUT<7> ;
  wire \display/buf_len[4]_ascii_buf[2][7]_select_121_OUT<0> ;
  wire \display/buf_len[4]_ascii_buf[2][7]_select_121_OUT<1> ;
  wire \display/buf_len[4]_ascii_buf[2][7]_select_121_OUT<2> ;
  wire \display/buf_len[4]_ascii_buf[2][7]_select_121_OUT<3> ;
  wire \display/buf_len[4]_ascii_buf[2][7]_select_121_OUT<4> ;
  wire \display/buf_len[4]_ascii_buf[2][7]_select_121_OUT<5> ;
  wire \display/buf_len[4]_ascii_buf[2][7]_select_121_OUT<6> ;
  wire \display/buf_len[4]_ascii_buf[2][7]_select_121_OUT<7> ;
  wire \display/GND_5_o_GND_5_o_equal_89_o ;
  wire \display/GND_5_o_GND_5_o_equal_84_o ;
  wire \display/GND_5_o_GND_5_o_equal_77_o ;
  wire \display/buf_len[4]_Decoder_9_OUT<1> ;
  wire \display/buf_len[4]_Decoder_9_OUT<2> ;
  wire \display/buf_len[4]_Decoder_9_OUT<3> ;
  wire \display/buf_len[4]_Decoder_9_OUT<4> ;
  wire \display/buf_len[4]_Decoder_9_OUT<5> ;
  wire \display/buf_len[4]_Decoder_9_OUT<6> ;
  wire \display/buf_len[4]_Decoder_9_OUT<7> ;
  wire \display/buf_len[4]_Decoder_9_OUT<8> ;
  wire \display/buf_len[4]_Decoder_9_OUT<9> ;
  wire \display/buf_len[4]_Decoder_9_OUT<10> ;
  wire \display/buf_len[4]_Decoder_9_OUT<11> ;
  wire \display/buf_len[4]_Decoder_9_OUT<13> ;
  wire \display/buf_len[4]_Decoder_9_OUT<14> ;
  wire \display/buf_len[4]_Decoder_9_OUT<15> ;
  wire \display/buf_len[4]_Decoder_9_OUT<16> ;
  wire \display/buf_len[4]_Decoder_9_OUT<17> ;
  wire \display/buf_len[4]_Decoder_9_OUT<18> ;
  wire \display/buf_len[4]_Decoder_9_OUT<19> ;
  wire \display/buf_len[4]_Decoder_9_OUT<21> ;
  wire \display/buf_len[4]_Decoder_9_OUT<22> ;
  wire \display/buf_len[4]_Decoder_9_OUT<23> ;
  wire \display/buf_len[4]_Decoder_9_OUT<24> ;
  wire \display/buf_len[4]_Decoder_9_OUT<25> ;
  wire \display/buf_len[4]_Decoder_9_OUT<26> ;
  wire \display/buf_len[4]_Decoder_9_OUT<27> ;
  wire \display/buf_len[4]_Decoder_9_OUT<29> ;
  wire \display/buf_len[4]_Decoder_9_OUT<30> ;
  wire \display/buf_len[4]_Decoder_9_OUT<31> ;
  wire \display/GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT<0> ;
  wire \display/GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT<1> ;
  wire \display/GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT<2> ;
  wire \display/GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT<3> ;
  wire \display/GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT<4> ;
  wire \display/GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT<5> ;
  wire \display/GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT<6> ;
  wire \display/GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT<7> ;
  wire \display/GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT<0> ;
  wire \display/GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT<1> ;
  wire \display/GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT<2> ;
  wire \display/GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT<3> ;
  wire \display/GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT<4> ;
  wire \display/GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT<5> ;
  wire \display/GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT<6> ;
  wire \display/GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT<7> ;
  wire \display/GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT<5> ;
  wire \display/buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT<0> ;
  wire \display/buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT<1> ;
  wire \display/buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT<2> ;
  wire \display/buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT<3> ;
  wire \display/buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT<4> ;
  wire \display/buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT<5> ;
  wire \display/buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT<6> ;
  wire \display/buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT<7> ;
  wire \display/buf_ptr[4]_GND_5_o_add_86_OUT<1> ;
  wire \display/buf_ptr[4]_buf_len[4]_equal_68_o ;
  wire \display/buf_ptr[4]_buf_len[4]_LessThan_53_o ;
  wire \display/buf_len[4]_GND_5_o_mux_42_OUT<1> ;
  wire \display/buf_len[4]_GND_5_o_mux_42_OUT<3> ;
  wire \display/buf_len[4]_GND_5_o_mux_42_OUT<4> ;
  wire \display/_n0343 ;
  wire \display/rst ;
  wire \display/init_1013 ;
  wire \display/four_hz/counter_22_BUFG_1275 ;
  wire \display/clearn_INV_16_o ;
  wire \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT2213 ;
  wire \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT2223 ;
  wire \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT31212 ;
  wire \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT523 ;
  wire \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT511_1281 ;
  wire \display/display/digit3[7]_PWR_5_o_select_223_OUT<3>4 ;
  wire \display/display/digit2[7]_PWR_5_o_select_167_OUT<3>4 ;
  wire \display/display/digit1[7]_PWR_5_o_select_111_OUT<3>4 ;
  wire \display/display/digit0[7]_PWR_5_o_select_55_OUT<3>4 ;
  wire \display/display/digit3[7]_PWR_5_o_select_223_OUT<3>2 ;
  wire \display/display/digit0[7]_PWR_5_o_select_55_OUT<3>2 ;
  wire \display/display/digit2[7]_PWR_5_o_select_167_OUT<3>2 ;
  wire \display/display/digit1[7]_PWR_5_o_select_111_OUT<3>2 ;
  wire \display/display/digit3[7]_PWR_5_o_select_223_OUT<5>2 ;
  wire \display/display/digit2[7]_PWR_5_o_select_167_OUT<5>2 ;
  wire \display/display/digit1[7]_PWR_5_o_select_111_OUT<5>2 ;
  wire \display/display/digit0[7]_PWR_5_o_select_55_OUT<5>2 ;
  wire \display/display/digit3[7]_PWR_5_o_select_223_OUT<7>2 ;
  wire \display/display/digit2[7]_PWR_5_o_select_167_OUT<7>2 ;
  wire \display/display/digit1[7]_PWR_5_o_select_111_OUT<7>2 ;
  wire \display/display/digit0[7]_PWR_5_o_select_55_OUT<7>2 ;
  wire \display/display/Mram_display_cnt[1]_GND_6_o_wide_mux_225_OUT3 ;
  wire \display/display/Mram_display_cnt[1]_GND_6_o_wide_mux_225_OUT2 ;
  wire \display/display/Mram_display_cnt[1]_GND_6_o_wide_mux_225_OUT1 ;
  wire \display/display/Mram_display_cnt[1]_GND_6_o_wide_mux_225_OUT ;
  wire \display/display/display_cnt[1]_digit3[7]_wide_mux_224_OUT<0> ;
  wire \display/display/display_cnt[1]_digit3[7]_wide_mux_224_OUT<1> ;
  wire \display/display/display_cnt[1]_digit3[7]_wide_mux_224_OUT<2> ;
  wire \display/display/display_cnt[1]_digit3[7]_wide_mux_224_OUT<3> ;
  wire \display/display/display_cnt[1]_digit3[7]_wide_mux_224_OUT<4> ;
  wire \display/display/display_cnt[1]_digit3[7]_wide_mux_224_OUT<5> ;
  wire \display/display/display_cnt[1]_digit3[7]_wide_mux_224_OUT<6> ;
  wire \display/display/display_cnt[1]_digit3[7]_wide_mux_224_OUT<7> ;
  wire N2;
  wire \uart/Mmux__n02371 ;
  wire \uart/Mmux__n023712_1316 ;
  wire N4;
  wire N8;
  wire N10;
  wire N12;
  wire N14;
  wire N16;
  wire \display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT81 ;
  wire \display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT82_1324 ;
  wire \display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT83_1325 ;
  wire \display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT61 ;
  wire \display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT62_1327 ;
  wire \display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT63_1328 ;
  wire \display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT41 ;
  wire \display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT42_1330 ;
  wire \display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT43_1331 ;
  wire \display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT21 ;
  wire \display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT22_1333 ;
  wire \display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT23_1334 ;
  wire \display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT161 ;
  wire \display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT162_1336 ;
  wire \display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT163_1337 ;
  wire \display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT141 ;
  wire \display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT142_1339 ;
  wire \display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT143_1340 ;
  wire \display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT102 ;
  wire \display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT103_1342 ;
  wire \display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT104_1343 ;
  wire \display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT8 ;
  wire \display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT81_1345 ;
  wire \display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT82_1346 ;
  wire \display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT6 ;
  wire \display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT61_1348 ;
  wire \display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT62_1349 ;
  wire \display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT4 ;
  wire \display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT41_1351 ;
  wire \display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT42_1352 ;
  wire \display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT2 ;
  wire \display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT21_1354 ;
  wire \display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT22_1355 ;
  wire \display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT16 ;
  wire \display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT161_1357 ;
  wire \display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT162_1358 ;
  wire \display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT14 ;
  wire \display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT141_1360 ;
  wire \display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT142_1361 ;
  wire \display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT10 ;
  wire \display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT101_1363 ;
  wire \display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT102_1364 ;
  wire N20;
  wire \display/Mmux_buf_len[4]_GND_5_o_select_124_OUT31 ;
  wire N22;
  wire \display/Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT6 ;
  wire \display/Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT63_1369 ;
  wire \display/Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT64_1370 ;
  wire \display/Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT65_1371 ;
  wire N24;
  wire \display/Mmux_buf_len[4]_GND_5_o_select_124_OUT5 ;
  wire \display/Mmux_buf_len[4]_GND_5_o_select_124_OUT51_1374 ;
  wire \display/Mmux_buf_len[4]_GND_5_o_select_124_OUT52_1375 ;
  wire \display/Mmux_buf_len[4]_GND_5_o_select_124_OUT4 ;
  wire \display/Mmux_buf_len[4]_GND_5_o_select_124_OUT41_1377 ;
  wire N26;
  wire \display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT6 ;
  wire \display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT61 ;
  wire \display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT63_1381 ;
  wire \display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT64_1382 ;
  wire \display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT68_1383 ;
  wire \display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT12 ;
  wire \display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT121_1385 ;
  wire \display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT122_1386 ;
  wire \display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT123_1387 ;
  wire \display/GND_5_o_GND_5_o_equal_89_o6 ;
  wire \display/GND_5_o_GND_5_o_equal_89_o61_1389 ;
  wire N28;
  wire N30;
  wire N32;
  wire N34;
  wire N36;
  wire N38;
  wire N40;
  wire N42;
  wire \display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT12 ;
  wire \display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT121_1399 ;
  wire \display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT122_1400 ;
  wire \display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT123_1401 ;
  wire \display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT124_1402 ;
  wire N46;
  wire N48;
  wire N50;
  wire N52;
  wire N54;
  wire N56;
  wire N58;
  wire N60;
  wire \display/Mmux_buf_len[4]_GND_5_o_select_124_OUT2 ;
  wire \display/display/digit3[7]_PWR_5_o_select_223_OUT<7>21_1412 ;
  wire \display/display/digit2[7]_PWR_5_o_select_167_OUT<7>21_1413 ;
  wire \display/display/digit1[7]_PWR_5_o_select_111_OUT<7>21_1414 ;
  wire \display/display/digit0[7]_PWR_5_o_select_55_OUT<7>21_1415 ;
  wire \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT7 ;
  wire \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT72 ;
  wire \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT73_1418 ;
  wire \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT74_1419 ;
  wire \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT76 ;
  wire \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT77_1421 ;
  wire \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT78_1422 ;
  wire \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT710 ;
  wire \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT711_1424 ;
  wire \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT712_1425 ;
  wire \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT714 ;
  wire \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT715_1427 ;
  wire \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT5111_1428 ;
  wire \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT5112_1429 ;
  wire \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT41 ;
  wire \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT43 ;
  wire \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT44_1432 ;
  wire \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT46 ;
  wire \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT48 ;
  wire \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT49_1435 ;
  wire \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT51 ;
  wire \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT53 ;
  wire \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT55 ;
  wire \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT57 ;
  wire \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT59 ;
  wire \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT510_1441 ;
  wire \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT512_1442 ;
  wire \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT1 ;
  wire \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT11_1444 ;
  wire \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT12_1445 ;
  wire \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT13_1446 ;
  wire \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT14_1447 ;
  wire \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT15_1448 ;
  wire \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT16_1449 ;
  wire \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT17_1450 ;
  wire \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT32 ;
  wire \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT35 ;
  wire \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT37 ;
  wire \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT38_1454 ;
  wire \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT39_1455 ;
  wire \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT312 ;
  wire \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT22 ;
  wire \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT25 ;
  wire \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT26_1459 ;
  wire \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT27_1460 ;
  wire \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT28_1461 ;
  wire \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT29_1462 ;
  wire \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT210_1463 ;
  wire \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT211_1464 ;
  wire \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT8 ;
  wire \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT81_1466 ;
  wire \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT83 ;
  wire \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT84_1468 ;
  wire \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT61 ;
  wire \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT63 ;
  wire \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT64_1471 ;
  wire \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT66 ;
  wire \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT68 ;
  wire \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT69_1474 ;
  wire \display/display/digit3[7]_PWR_5_o_select_223_OUT<5>21_1475 ;
  wire \display/display/digit2[7]_PWR_5_o_select_167_OUT<5>21_1476 ;
  wire \display/display/digit1[7]_PWR_5_o_select_111_OUT<5>21_1477 ;
  wire \display/display/digit0[7]_PWR_5_o_select_55_OUT<5>21_1478 ;
  wire data_in_glue_set_1504;
  wire clearn_glue_set_1505;
  wire \uart/tx_ready_held_glue_set_1506 ;
  wire \uart/sample_locked_glue_set_1507 ;
  wire \display/init_glue_set_1508 ;
  wire \uart/Mcount_clk_divide_cy<6>_rt_1509 ;
  wire \uart/Mcount_clk_divide_cy<5>_rt_1510 ;
  wire \uart/Mcount_clk_divide_cy<4>_rt_1511 ;
  wire \uart/Mcount_clk_divide_cy<3>_rt_1512 ;
  wire \uart/Mcount_clk_divide_cy<2>_rt_1513 ;
  wire \uart/Mcount_clk_divide_cy<1>_rt_1514 ;
  wire \display/four_hz/Mcount_counter_cy<21>_rt_1515 ;
  wire \display/four_hz/Mcount_counter_cy<20>_rt_1516 ;
  wire \display/four_hz/Mcount_counter_cy<19>_rt_1517 ;
  wire \display/four_hz/Mcount_counter_cy<18>_rt_1518 ;
  wire \display/four_hz/Mcount_counter_cy<17>_rt_1519 ;
  wire \display/four_hz/Mcount_counter_cy<16>_rt_1520 ;
  wire \display/four_hz/Mcount_counter_cy<15>_rt_1521 ;
  wire \display/four_hz/Mcount_counter_cy<14>_rt_1522 ;
  wire \display/four_hz/Mcount_counter_cy<13>_rt_1523 ;
  wire \display/four_hz/Mcount_counter_cy<12>_rt_1524 ;
  wire \display/four_hz/Mcount_counter_cy<11>_rt_1525 ;
  wire \display/four_hz/Mcount_counter_cy<10>_rt_1526 ;
  wire \display/four_hz/Mcount_counter_cy<9>_rt_1527 ;
  wire \display/four_hz/Mcount_counter_cy<8>_rt_1528 ;
  wire \display/four_hz/Mcount_counter_cy<7>_rt_1529 ;
  wire \display/four_hz/Mcount_counter_cy<6>_rt_1530 ;
  wire \display/four_hz/Mcount_counter_cy<5>_rt_1531 ;
  wire \display/four_hz/Mcount_counter_cy<4>_rt_1532 ;
  wire \display/four_hz/Mcount_counter_cy<3>_rt_1533 ;
  wire \display/four_hz/Mcount_counter_cy<2>_rt_1534 ;
  wire \display/four_hz/Mcount_counter_cy<1>_rt_1535 ;
  wire \uart/Mcount_clk_divide_xor<7>_rt_1536 ;
  wire \display/four_hz/Mcount_counter_xor<22>_rt_1537 ;
  wire N62;
  wire N64;
  wire N66;
  wire N67;
  wire N70;
  wire N71;
  wire N74;
  wire N75;
  wire N77;
  wire N79;
  wire N84;
  wire N86;
  wire N88;
  wire N90;
  wire N104;
  wire N105;
  wire N107;
  wire N108;
  wire N109;
  wire \display/buf_ptr_0_1_1557 ;
  wire \display/buf_ptr_1_1_1558 ;
  wire \display/buf_ptr_2_1_1559 ;
  wire \display/buf_ptr_1_2_1560 ;
  wire \display/buf_ptr_1_3_1561 ;
  wire \display/buf_ptr_0_2_1562 ;
  wire \display/buf_ptr_0_3_1563 ;
  wire \display/buf_ptr_3_1_1564 ;
  wire \display/buf_ptr_4_1_1565 ;
  wire \display/buf_ptr_2_2_1566 ;
  wire \display/buf_ptr_3_2_1567 ;
  wire \display/GND_5_o_GND_5_o_equal_89_o63_1568 ;
  wire \display/buf_ptr_4_2_1569 ;
  wire \display/GND_5_o_GND_5_o_equal_84_o63_1570 ;
  wire \display/buf_ptr_1_4_1571 ;
  wire \display/buf_ptr[4]_buf_len[4]_LessThan_53_o1_1572 ;
  wire \display/buf_ptr_3_3_1573 ;
  wire \display/buf_ptr[4]_GND_5_o_add_86_OUT<1>1_1574 ;
  wire \display/buf_ptr[4]_GND_5_o_add_86_OUT<1>11 ;
  wire \display/buf_ptr_0_4_1576 ;
  wire \display/buf_ptr_0_5_1577 ;
  wire \display/buf_ptr_2_3_1578 ;
  wire \display/_n0393_inv1_1579 ;
  wire \display/_n0393_inv11 ;
  wire \display/buf_ptr[4]_buf_len[4]_equal_68_o5_1581 ;
  wire \uart/sample_clk_1583 ;
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
  wire [7 : 0] \uart/rx_byte ;
  wire [7 : 0] \display/display/segments ;
  wire [3 : 0] \display/display/digit_select ;
  wire [4 : 0] \display/buf_ptr ;
  wire [1 : 0] ready_reg;
  wire [7 : 0] tx_send;
  wire [6 : 0] \uart/Mcount_clk_divide_cy ;
  wire [0 : 0] \uart/Mcount_clk_divide_lut ;
  wire [3 : 0] \uart/tx_counter ;
  wire [2 : 0] \uart/tx_bit_counter ;
  wire [3 : 0] \uart/sample_counter ;
  wire [2 : 0] \uart/bit_counter ;
  wire [7 : 0] \uart/clk_divide_tx ;
  wire [7 : 0] \uart/Result ;
  wire [3 : 0] \uart/_n0219 ;
  wire [2 : 0] \uart/_n0228 ;
  wire [7 : 0] \uart/_n0246 ;
  wire [7 : 0] \uart/tx_copy ;
  wire [7 : 0] \uart/clk_divide ;
  wire [21 : 0] \display/four_hz/Mcount_counter_cy ;
  wire [0 : 0] \display/four_hz/Mcount_counter_lut ;
  wire [1 : 1] \display/Madd__n0272_cy ;
  wire [4 : 0] \display/buf_len ;
  wire [2 : 2] \display/Madd__n0266_cy ;
  wire [22 : 0] \display/four_hz/counter ;
  wire [22 : 0] \display/Result ;
  wire [3 : 3] \display/_n0266 ;
  wire [4 : 2] \display/GND_5_o_GND_5_o_sub_85_OUT ;
  wire [4 : 2] \display/GND_5_o_GND_5_o_sub_78_OUT ;
  wire [4 : 2] \display/GND_5_o_GND_5_o_sub_69_OUT ;
  wire [7 : 0] \display/digit0 ;
  wire [7 : 0] \display/digit3 ;
  wire [7 : 0] \display/digit2 ;
  wire [7 : 0] \display/digit1 ;
  wire [255 : 0] \display/ascii_buf_31 ;
  wire [1 : 0] \display/ds_sreg ;
  wire [1 : 0] \display/clr_sreg ;
  wire [1 : 0] \display/display/display_cnt ;
  wire [1 : 0] \display/display/Result ;
  VCC   XST_VCC (
    .P(N0)
  );
  GND   XST_GND (
    .G(N1)
  );
  FDR   tx_ready (
    .C(clk),
    .D(ready_reg[0]),
    .R(\ready_reg<1>_0 ),
    .Q(tx_ready_34)
  );
  FDR   tx_send_0 (
    .C(clk),
    .D(\uart/rx_byte [0]),
    .R(ready_pulse_inv1_0),
    .Q(tx_send[0])
  );
  FDR   tx_send_1 (
    .C(clk),
    .D(\uart/rx_byte [1]),
    .R(ready_pulse_inv1_0),
    .Q(tx_send[1])
  );
  FDR   tx_send_2 (
    .C(clk),
    .D(\uart/rx_byte [2]),
    .R(ready_pulse_inv1_0),
    .Q(tx_send[2])
  );
  FDR   tx_send_3 (
    .C(clk),
    .D(\uart/rx_byte [3]),
    .R(ready_pulse_inv1_0),
    .Q(tx_send[3])
  );
  FDR   tx_send_4 (
    .C(clk),
    .D(\uart/rx_byte [4]),
    .R(ready_pulse_inv1_0),
    .Q(tx_send[4])
  );
  FDR   tx_send_5 (
    .C(clk),
    .D(\uart/rx_byte [5]),
    .R(ready_pulse_inv1_0),
    .Q(tx_send[5])
  );
  FDR   tx_send_6 (
    .C(clk),
    .D(\uart/rx_byte [6]),
    .R(ready_pulse_inv1_0),
    .Q(tx_send[6])
  );
  FDR   tx_send_7 (
    .C(clk),
    .D(\uart/rx_byte [7]),
    .R(ready_pulse_inv1_0),
    .Q(tx_send[7])
  );
  FDR   clear_on_next (
    .C(clk),
    .D(\rx_byte[7]_rx_byte[7]_OR_179_o_49 ),
    .R(ready_pulse_inv1_0),
    .Q(clear_on_next_39)
  );
  FDR   ready_reg_0 (
    .C(clk),
    .D(\uart/ready_11 ),
    .R(\display/rst ),
    .Q(ready_reg[0])
  );
  FDR   ready_reg_1 (
    .C(clk),
    .D(ready_reg[0]),
    .R(\display/rst ),
    .Q(ready_reg[1])
  );
  BUFG   BUFG_inst (
    .O(clk),
    .I(clk_in_IBUFG_1)
  );
  XORCY   \uart/Mcount_clk_divide_xor<7>  (
    .CI(\uart/Mcount_clk_divide_cy [6]),
    .LI(\uart/Mcount_clk_divide_xor<7>_rt_1536 ),
    .O(\uart/Result [7])
  );
  XORCY   \uart/Mcount_clk_divide_xor<6>  (
    .CI(\uart/Mcount_clk_divide_cy [5]),
    .LI(\uart/Mcount_clk_divide_cy<6>_rt_1509 ),
    .O(\uart/Result [6])
  );
  MUXCY   \uart/Mcount_clk_divide_cy<6>  (
    .CI(\uart/Mcount_clk_divide_cy [5]),
    .DI(N1),
    .S(\uart/Mcount_clk_divide_cy<6>_rt_1509 ),
    .O(\uart/Mcount_clk_divide_cy [6])
  );
  XORCY   \uart/Mcount_clk_divide_xor<5>  (
    .CI(\uart/Mcount_clk_divide_cy [4]),
    .LI(\uart/Mcount_clk_divide_cy<5>_rt_1510 ),
    .O(\uart/Result [5])
  );
  MUXCY   \uart/Mcount_clk_divide_cy<5>  (
    .CI(\uart/Mcount_clk_divide_cy [4]),
    .DI(N1),
    .S(\uart/Mcount_clk_divide_cy<5>_rt_1510 ),
    .O(\uart/Mcount_clk_divide_cy [5])
  );
  XORCY   \uart/Mcount_clk_divide_xor<4>  (
    .CI(\uart/Mcount_clk_divide_cy [3]),
    .LI(\uart/Mcount_clk_divide_cy<4>_rt_1511 ),
    .O(\uart/Result [4])
  );
  MUXCY   \uart/Mcount_clk_divide_cy<4>  (
    .CI(\uart/Mcount_clk_divide_cy [3]),
    .DI(N1),
    .S(\uart/Mcount_clk_divide_cy<4>_rt_1511 ),
    .O(\uart/Mcount_clk_divide_cy [4])
  );
  XORCY   \uart/Mcount_clk_divide_xor<3>  (
    .CI(\uart/Mcount_clk_divide_cy [2]),
    .LI(\uart/Mcount_clk_divide_cy<3>_rt_1512 ),
    .O(\uart/Result [3])
  );
  MUXCY   \uart/Mcount_clk_divide_cy<3>  (
    .CI(\uart/Mcount_clk_divide_cy [2]),
    .DI(N1),
    .S(\uart/Mcount_clk_divide_cy<3>_rt_1512 ),
    .O(\uart/Mcount_clk_divide_cy [3])
  );
  XORCY   \uart/Mcount_clk_divide_xor<2>  (
    .CI(\uart/Mcount_clk_divide_cy [1]),
    .LI(\uart/Mcount_clk_divide_cy<2>_rt_1513 ),
    .O(\uart/Result [2])
  );
  MUXCY   \uart/Mcount_clk_divide_cy<2>  (
    .CI(\uart/Mcount_clk_divide_cy [1]),
    .DI(N1),
    .S(\uart/Mcount_clk_divide_cy<2>_rt_1513 ),
    .O(\uart/Mcount_clk_divide_cy [2])
  );
  XORCY   \uart/Mcount_clk_divide_xor<1>  (
    .CI(\uart/Mcount_clk_divide_cy [0]),
    .LI(\uart/Mcount_clk_divide_cy<1>_rt_1514 ),
    .O(\uart/Result [1])
  );
  MUXCY   \uart/Mcount_clk_divide_cy<1>  (
    .CI(\uart/Mcount_clk_divide_cy [0]),
    .DI(N1),
    .S(\uart/Mcount_clk_divide_cy<1>_rt_1514 ),
    .O(\uart/Mcount_clk_divide_cy [1])
  );
  XORCY   \uart/Mcount_clk_divide_xor<0>  (
    .CI(N1),
    .LI(\uart/Mcount_clk_divide_lut [0]),
    .O(\uart/Result [0])
  );
  MUXCY   \uart/Mcount_clk_divide_cy<0>  (
    .CI(N1),
    .DI(N0),
    .S(\uart/Mcount_clk_divide_lut [0]),
    .O(\uart/Mcount_clk_divide_cy [0])
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \uart/Mmux_tx_bit_counter[2]_tx_copy[7]_Mux_57_o_3  (
    .I0(\uart/tx_bit_counter [1]),
    .I1(\uart/tx_bit_counter [0]),
    .I2(\uart/tx_copy [6]),
    .I3(\uart/tx_copy [7]),
    .I4(\uart/tx_copy [5]),
    .I5(\uart/tx_copy [4]),
    .O(\uart/Mmux_tx_bit_counter[2]_tx_copy[7]_Mux_57_o_3_75 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \uart/Mmux_tx_bit_counter[2]_tx_copy[7]_Mux_57_o_4  (
    .I0(\uart/tx_bit_counter [1]),
    .I1(\uart/tx_bit_counter [0]),
    .I2(\uart/tx_copy [2]),
    .I3(\uart/tx_copy [3]),
    .I4(\uart/tx_copy [1]),
    .I5(\uart/tx_copy [0]),
    .O(\uart/Mmux_tx_bit_counter[2]_tx_copy[7]_Mux_57_o_4_76 )
  );
  MUXF7   \uart/Mmux_tx_bit_counter[2]_tx_copy[7]_Mux_57_o_2_f7  (
    .I0(\uart/Mmux_tx_bit_counter[2]_tx_copy[7]_Mux_57_o_4_76 ),
    .I1(\uart/Mmux_tx_bit_counter[2]_tx_copy[7]_Mux_57_o_3_75 ),
    .S(\uart/tx_bit_counter [2]),
    .O(\uart/tx_bit_counter[2]_tx_copy[7]_Mux_57_o )
  );
  FDR   \uart/clk_divide_6  (
    .C(clk),
    .D(\uart/Result [6]),
    .R(\uart/Mcount_clk_divide_val ),
    .Q(\uart/clk_divide [6])
  );
  FDR   \uart/clk_divide_5  (
    .C(clk),
    .D(\uart/Result [5]),
    .R(\uart/Mcount_clk_divide_val ),
    .Q(\uart/clk_divide [5])
  );
  FDR   \uart/clk_divide_7  (
    .C(clk),
    .D(\uart/Result [7]),
    .R(\uart/Mcount_clk_divide_val ),
    .Q(\uart/clk_divide [7])
  );
  FDR   \uart/clk_divide_3  (
    .C(clk),
    .D(\uart/Result [3]),
    .R(\uart/Mcount_clk_divide_val ),
    .Q(\uart/clk_divide [3])
  );
  FDR   \uart/clk_divide_2  (
    .C(clk),
    .D(\uart/Result [2]),
    .R(\uart/Mcount_clk_divide_val ),
    .Q(\uart/clk_divide [2])
  );
  FDR   \uart/clk_divide_4  (
    .C(clk),
    .D(\uart/Result [4]),
    .R(\uart/Mcount_clk_divide_val ),
    .Q(\uart/clk_divide [4])
  );
  FDR   \uart/clk_divide_0  (
    .C(clk),
    .D(\uart/Result [0]),
    .R(\uart/Mcount_clk_divide_val ),
    .Q(\uart/clk_divide [0])
  );
  FDR   \uart/clk_divide_1  (
    .C(clk),
    .D(\uart/Result [1]),
    .R(\uart/Mcount_clk_divide_val ),
    .Q(\uart/clk_divide [1])
  );
  FDC   \uart/rx_state_FSM_FFd2  (
    .C(\uart/sample_clk_BUFG_186 ),
    .CLR(\display/rst ),
    .D(\uart/rx_state_FSM_FFd2-In_109 ),
    .Q(\uart/rx_state_FSM_FFd2_173 )
  );
  FDC   \uart/rx_state_FSM_FFd3  (
    .C(\uart/sample_clk_BUFG_186 ),
    .CLR(\display/rst ),
    .D(\uart/rx_state_FSM_FFd3-In ),
    .Q(\uart/rx_state_FSM_FFd3_172 )
  );
  FDC   \uart/rx_state_FSM_FFd1  (
    .C(\uart/sample_clk_BUFG_186 ),
    .CLR(\display/rst ),
    .D(\uart/rx_state_FSM_FFd1-In ),
    .Q(\uart/rx_state_FSM_FFd1_174 )
  );
  FDC   \uart/tx_state_FSM_FFd2  (
    .C(\uart/sample_clk_BUFG_186 ),
    .CLR(\display/rst ),
    .D(\uart/tx_state_FSM_FFd2-In ),
    .Q(\uart/tx_state_FSM_FFd2_111 )
  );
  FDC   \uart/tx_state_FSM_FFd1  (
    .C(\uart/sample_clk_BUFG_186 ),
    .CLR(\display/rst ),
    .D(\uart/tx_state_FSM_FFd1-In ),
    .Q(\uart/tx_state_FSM_FFd1_161 )
  );
  FDC   \uart/sample_counter_3  (
    .C(\uart/sample_clk_BUFG_186 ),
    .CLR(\display/rst ),
    .D(\uart/rx_state[2]_GND_3_o_wide_mux_41_OUT<3> ),
    .Q(\uart/sample_counter [3])
  );
  FDC   \uart/sample_counter_2  (
    .C(\uart/sample_clk_BUFG_186 ),
    .CLR(\display/rst ),
    .D(\uart/rx_state[2]_GND_3_o_wide_mux_41_OUT<2> ),
    .Q(\uart/sample_counter [2])
  );
  FDC   \uart/sample_counter_1  (
    .C(\uart/sample_clk_BUFG_186 ),
    .CLR(\display/rst ),
    .D(\uart/rx_state[2]_GND_3_o_wide_mux_41_OUT<1> ),
    .Q(\uart/sample_counter [1])
  );
  FDC   \uart/sample_counter_0  (
    .C(\uart/sample_clk_BUFG_186 ),
    .CLR(\display/rst ),
    .D(\uart/rx_state[2]_GND_3_o_wide_mux_41_OUT<0> ),
    .Q(\uart/sample_counter [0])
  );
  FDC   \uart/bit_counter_2  (
    .C(\uart/sample_clk_BUFG_186 ),
    .CLR(\display/rst ),
    .D(\uart/rx_state[2]_GND_3_o_wide_mux_40_OUT<2> ),
    .Q(\uart/bit_counter [2])
  );
  FDC   \uart/bit_counter_1  (
    .C(\uart/sample_clk_BUFG_186 ),
    .CLR(\display/rst ),
    .D(\uart/rx_state[2]_GND_3_o_wide_mux_40_OUT<1> ),
    .Q(\uart/bit_counter [1])
  );
  FDC   \uart/bit_counter_0  (
    .C(\uart/sample_clk_BUFG_186 ),
    .CLR(\display/rst ),
    .D(\uart/rx_state[2]_GND_3_o_wide_mux_40_OUT<0> ),
    .Q(\uart/bit_counter [0])
  );
  FDCE   \uart/rx_byte_7  (
    .C(\uart/sample_clk_BUFG_186 ),
    .CE(\uart/_n0270_inv ),
    .CLR(\display/rst ),
    .D(\uart/rx_state[2]_GND_3_o_wide_mux_37_OUT<7> ),
    .Q(\uart/rx_byte [7])
  );
  FDCE   \uart/rx_byte_6  (
    .C(\uart/sample_clk_BUFG_186 ),
    .CE(\uart/_n0270_inv ),
    .CLR(\display/rst ),
    .D(\uart/rx_state[2]_GND_3_o_wide_mux_37_OUT<6> ),
    .Q(\uart/rx_byte [6])
  );
  FDCE   \uart/rx_byte_5  (
    .C(\uart/sample_clk_BUFG_186 ),
    .CE(\uart/_n0270_inv ),
    .CLR(\display/rst ),
    .D(\uart/rx_state[2]_GND_3_o_wide_mux_37_OUT<5> ),
    .Q(\uart/rx_byte [5])
  );
  FDCE   \uart/rx_byte_4  (
    .C(\uart/sample_clk_BUFG_186 ),
    .CE(\uart/_n0270_inv ),
    .CLR(\display/rst ),
    .D(\uart/rx_state[2]_GND_3_o_wide_mux_37_OUT<4> ),
    .Q(\uart/rx_byte [4])
  );
  FDCE   \uart/rx_byte_3  (
    .C(\uart/sample_clk_BUFG_186 ),
    .CE(\uart/_n0270_inv ),
    .CLR(\display/rst ),
    .D(\uart/rx_state[2]_GND_3_o_wide_mux_37_OUT<3> ),
    .Q(\uart/rx_byte [3])
  );
  FDCE   \uart/rx_byte_2  (
    .C(\uart/sample_clk_BUFG_186 ),
    .CE(\uart/_n0270_inv ),
    .CLR(\display/rst ),
    .D(\uart/rx_state[2]_GND_3_o_wide_mux_37_OUT<2> ),
    .Q(\uart/rx_byte [2])
  );
  FDCE   \uart/rx_byte_1  (
    .C(\uart/sample_clk_BUFG_186 ),
    .CE(\uart/_n0270_inv ),
    .CLR(\display/rst ),
    .D(\uart/rx_state[2]_GND_3_o_wide_mux_37_OUT<1> ),
    .Q(\uart/rx_byte [1])
  );
  FDCE   \uart/rx_byte_0  (
    .C(\uart/sample_clk_BUFG_186 ),
    .CE(\uart/_n0270_inv ),
    .CLR(\display/rst ),
    .D(\uart/rx_state[2]_GND_3_o_wide_mux_37_OUT<0> ),
    .Q(\uart/rx_byte [0])
  );
  FDCE   \uart/tx_copy_7  (
    .C(\uart/sample_clk_BUFG_186 ),
    .CE(\uart/_n0283_inv ),
    .CLR(\display/rst ),
    .D(\uart/_n0246 [7]),
    .Q(\uart/tx_copy [7])
  );
  FDCE   \uart/tx_copy_6  (
    .C(\uart/sample_clk_BUFG_186 ),
    .CE(\uart/_n0283_inv ),
    .CLR(\display/rst ),
    .D(\uart/_n0246 [6]),
    .Q(\uart/tx_copy [6])
  );
  FDCE   \uart/tx_copy_5  (
    .C(\uart/sample_clk_BUFG_186 ),
    .CE(\uart/_n0283_inv ),
    .CLR(\display/rst ),
    .D(\uart/_n0246 [5]),
    .Q(\uart/tx_copy [5])
  );
  FDCE   \uart/tx_copy_4  (
    .C(\uart/sample_clk_BUFG_186 ),
    .CE(\uart/_n0283_inv ),
    .CLR(\display/rst ),
    .D(\uart/_n0246 [4]),
    .Q(\uart/tx_copy [4])
  );
  FDCE   \uart/tx_copy_3  (
    .C(\uart/sample_clk_BUFG_186 ),
    .CE(\uart/_n0283_inv ),
    .CLR(\display/rst ),
    .D(\uart/_n0246 [3]),
    .Q(\uart/tx_copy [3])
  );
  FDCE   \uart/tx_copy_2  (
    .C(\uart/sample_clk_BUFG_186 ),
    .CE(\uart/_n0283_inv ),
    .CLR(\display/rst ),
    .D(\uart/_n0246 [2]),
    .Q(\uart/tx_copy [2])
  );
  FDCE   \uart/tx_copy_1  (
    .C(\uart/sample_clk_BUFG_186 ),
    .CE(\uart/_n0283_inv ),
    .CLR(\display/rst ),
    .D(\uart/_n0246 [1]),
    .Q(\uart/tx_copy [1])
  );
  FDCE   \uart/tx_copy_0  (
    .C(\uart/sample_clk_BUFG_186 ),
    .CE(\uart/_n0283_inv ),
    .CLR(\display/rst ),
    .D(\uart/_n0246 [0]),
    .Q(\uart/tx_copy [0])
  );
  FDC   \uart/frame_err  (
    .C(\uart/sample_clk_BUFG_186 ),
    .CLR(\display/rst ),
    .D(\uart/rx_state[2]_GND_3_o_Mux_39_o ),
    .Q(\uart/frame_err_12 )
  );
  FDC   \uart/ready  (
    .C(\uart/sample_clk_BUFG_186 ),
    .CLR(\display/rst ),
    .D(\uart/rx_state[2]_GND_3_o_Mux_38_o ),
    .Q(\uart/ready_11 )
  );
  FDR   \uart/clk_divide_tx_7  (
    .C(clk),
    .D(\uart/GND_3_o_clk_divide_tx[7]_mux_50_OUT<7> ),
    .R(\uart/tx_ready_0 ),
    .Q(\uart/clk_divide_tx [7])
  );
  FDR   \uart/clk_divide_tx_6  (
    .C(clk),
    .D(\uart/GND_3_o_clk_divide_tx[7]_mux_50_OUT<6> ),
    .R(\uart/tx_ready_0 ),
    .Q(\uart/clk_divide_tx [6])
  );
  FDR   \uart/clk_divide_tx_5  (
    .C(clk),
    .D(\uart/GND_3_o_clk_divide_tx[7]_mux_50_OUT<5> ),
    .R(\uart/tx_ready_0 ),
    .Q(\uart/clk_divide_tx [5])
  );
  FDR   \uart/clk_divide_tx_4  (
    .C(clk),
    .D(\uart/GND_3_o_clk_divide_tx[7]_mux_50_OUT<4> ),
    .R(\uart/tx_ready_0 ),
    .Q(\uart/clk_divide_tx [4])
  );
  FDR   \uart/clk_divide_tx_3  (
    .C(clk),
    .D(\uart/GND_3_o_clk_divide_tx[7]_mux_50_OUT<3> ),
    .R(\uart/tx_ready_0 ),
    .Q(\uart/clk_divide_tx [3])
  );
  FDR   \uart/clk_divide_tx_2  (
    .C(clk),
    .D(\uart/GND_3_o_clk_divide_tx[7]_mux_50_OUT<2> ),
    .R(\uart/tx_ready_0 ),
    .Q(\uart/clk_divide_tx [2])
  );
  FDR   \uart/clk_divide_tx_1  (
    .C(clk),
    .D(\uart/GND_3_o_clk_divide_tx[7]_mux_50_OUT<1> ),
    .R(\uart/tx_ready_0 ),
    .Q(\uart/clk_divide_tx [1])
  );
  FDR   \uart/clk_divide_tx_0  (
    .C(clk),
    .D(\uart/GND_3_o_clk_divide_tx[7]_mux_50_OUT<0> ),
    .R(\uart/tx_ready_0 ),
    .Q(\uart/clk_divide_tx [0])
  );
  FDS   \uart/rx_bit  (
    .C(clk),
    .D(\uart/rx_1_188 ),
    .S(\display/rst ),
    .Q(\uart/rx_bit_185 )
  );
  FDR   \uart/start_flag  (
    .C(clk),
    .D(\uart/rx_bit_GND_3_o_equal_30_o ),
    .R(\uart/sample_locked_rx_state[2]_AND_1_o_inv_0 ),
    .Q(\uart/start_flag_183 )
  );
  FDR   \uart/sample_clk  (
    .C(clk),
    .D(\uart/Mcount_clk_divide_val1_61 ),
    .R(\display/rst ),
    .Q(\uart/sample_clk_1583 )
  );
  FDS   \uart/rx_1  (
    .C(clk),
    .D(rx_IBUF_0),
    .S(\display/rst ),
    .Q(\uart/rx_1_188 )
  );
  LUT6 #(
    .INIT ( 64'hFEDC7654BA983210 ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_3  (
    .I0(\display/GND_5_o_GND_5_o_sub_85_OUT [2]),
    .I1(\display/GND_5_o_GND_5_o_sub_85_OUT [3]),
    .I2(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_7_211 ),
    .I3(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_8_212 ),
    .I4(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_9_214 ),
    .I5(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_81_213 ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_3_215 )
  );
  LUT6 #(
    .INIT ( 64'hFEDC7654BA983210 ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_4  (
    .I0(\display/GND_5_o_GND_5_o_sub_85_OUT [2]),
    .I1(\display/GND_5_o_GND_5_o_sub_85_OUT [3]),
    .I2(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_82_216 ),
    .I3(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_91_217 ),
    .I4(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_10_219 ),
    .I5(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_92_218 ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_4_220 )
  );
  MUXF7   \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_2_f7  (
    .I0(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_4_220 ),
    .I1(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_3_215 ),
    .S(\display/GND_5_o_GND_5_o_sub_85_OUT [4]),
    .O(\display/GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT<0> )
  );
  LUT6 #(
    .INIT ( 64'hFEDC7654BA983210 ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_31  (
    .I0(\display/GND_5_o_GND_5_o_sub_85_OUT [2]),
    .I1(\display/GND_5_o_GND_5_o_sub_85_OUT [3]),
    .I2(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_71_221 ),
    .I3(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_83_222 ),
    .I4(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_93_224 ),
    .I5(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_84_223 ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_31_225 )
  );
  LUT6 #(
    .INIT ( 64'hFEDC7654BA983210 ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_41  (
    .I0(\display/GND_5_o_GND_5_o_sub_85_OUT [2]),
    .I1(\display/GND_5_o_GND_5_o_sub_85_OUT [3]),
    .I2(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_85_226 ),
    .I3(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_94_227 ),
    .I4(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_101_229 ),
    .I5(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_95_228 ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_41_230 )
  );
  MUXF7   \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_2_f7_0  (
    .I0(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_41_230 ),
    .I1(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_31_225 ),
    .S(\display/GND_5_o_GND_5_o_sub_85_OUT [4]),
    .O(\display/GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT<1> )
  );
  LUT6 #(
    .INIT ( 64'hFEDC7654BA983210 ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_32  (
    .I0(\display/GND_5_o_GND_5_o_sub_85_OUT [2]),
    .I1(\display/GND_5_o_GND_5_o_sub_85_OUT [3]),
    .I2(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_72_231 ),
    .I3(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_86_232 ),
    .I4(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_96_234 ),
    .I5(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_87_233 ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_32_235 )
  );
  LUT6 #(
    .INIT ( 64'hFEDC7654BA983210 ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_42  (
    .I0(\display/GND_5_o_GND_5_o_sub_85_OUT [2]),
    .I1(\display/GND_5_o_GND_5_o_sub_85_OUT [3]),
    .I2(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_88_236 ),
    .I3(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_97_237 ),
    .I4(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_102_239 ),
    .I5(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_98_238 ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_42_240 )
  );
  MUXF7   \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_2_f7_1  (
    .I0(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_42_240 ),
    .I1(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_32_235 ),
    .S(\display/GND_5_o_GND_5_o_sub_85_OUT [4]),
    .O(\display/GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT<2> )
  );
  LUT6 #(
    .INIT ( 64'hFEDC7654BA983210 ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_33  (
    .I0(\display/GND_5_o_GND_5_o_sub_85_OUT [2]),
    .I1(\display/GND_5_o_GND_5_o_sub_85_OUT [3]),
    .I2(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_73_241 ),
    .I3(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_89_242 ),
    .I4(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_99_244 ),
    .I5(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_810_243 ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_33_245 )
  );
  LUT6 #(
    .INIT ( 64'hFEDC7654BA983210 ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_43  (
    .I0(\display/GND_5_o_GND_5_o_sub_85_OUT [2]),
    .I1(\display/GND_5_o_GND_5_o_sub_85_OUT [3]),
    .I2(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_811_246 ),
    .I3(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_910_247 ),
    .I4(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_103_249 ),
    .I5(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_911_248 ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_43_250 )
  );
  MUXF7   \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_2_f7_2  (
    .I0(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_43_250 ),
    .I1(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_33_245 ),
    .S(\display/GND_5_o_GND_5_o_sub_85_OUT [4]),
    .O(\display/GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT<3> )
  );
  LUT6 #(
    .INIT ( 64'hFEDC7654BA983210 ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_34  (
    .I0(\display/GND_5_o_GND_5_o_sub_85_OUT [2]),
    .I1(\display/GND_5_o_GND_5_o_sub_85_OUT [3]),
    .I2(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_74_251 ),
    .I3(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_812_252 ),
    .I4(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_912_254 ),
    .I5(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_813_253 ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_34_255 )
  );
  LUT6 #(
    .INIT ( 64'hFEDC7654BA983210 ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_44  (
    .I0(\display/GND_5_o_GND_5_o_sub_85_OUT [2]),
    .I1(\display/GND_5_o_GND_5_o_sub_85_OUT [3]),
    .I2(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_814_256 ),
    .I3(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_913_257 ),
    .I4(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_104_259 ),
    .I5(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_914_258 ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_44_260 )
  );
  MUXF7   \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_2_f7_3  (
    .I0(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_44_260 ),
    .I1(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_34_255 ),
    .S(\display/GND_5_o_GND_5_o_sub_85_OUT [4]),
    .O(\display/GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT<4> )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_35  (
    .I0(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_75_261 ),
    .I1(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_815_262 ),
    .I2(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_915_264 ),
    .I3(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_816_263 ),
    .I4(\display/GND_5_o_GND_5_o_sub_85_OUT [2]),
    .I5(\display/GND_5_o_GND_5_o_sub_85_OUT [3]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_35_265 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_45  (
    .I0(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_817_266 ),
    .I1(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_916_267 ),
    .I2(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_105_269 ),
    .I3(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_917_268 ),
    .I4(\display/GND_5_o_GND_5_o_sub_85_OUT [2]),
    .I5(\display/GND_5_o_GND_5_o_sub_85_OUT [3]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_45_270 )
  );
  MUXF7   \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_2_f7_4  (
    .I0(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_45_270 ),
    .I1(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_35_265 ),
    .S(\display/GND_5_o_GND_5_o_sub_85_OUT [4]),
    .O(\display/GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT<5> )
  );
  LUT6 #(
    .INIT ( 64'hFEDC7654BA983210 ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_36  (
    .I0(\display/GND_5_o_GND_5_o_sub_85_OUT [2]),
    .I1(\display/GND_5_o_GND_5_o_sub_85_OUT [3]),
    .I2(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_76_271 ),
    .I3(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_818_272 ),
    .I4(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_918_274 ),
    .I5(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_819_273 ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_36_275 )
  );
  LUT6 #(
    .INIT ( 64'hFEDC7654BA983210 ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_46  (
    .I0(\display/GND_5_o_GND_5_o_sub_85_OUT [2]),
    .I1(\display/GND_5_o_GND_5_o_sub_85_OUT [3]),
    .I2(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_820_276 ),
    .I3(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_919_277 ),
    .I4(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_106_279 ),
    .I5(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_920_278 ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_46_280 )
  );
  MUXF7   \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_2_f7_5  (
    .I0(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_46_280 ),
    .I1(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_36_275 ),
    .S(\display/GND_5_o_GND_5_o_sub_85_OUT [4]),
    .O(\display/GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT<6> )
  );
  LUT6 #(
    .INIT ( 64'hFEDC7654BA983210 ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_37  (
    .I0(\display/GND_5_o_GND_5_o_sub_85_OUT [2]),
    .I1(\display/GND_5_o_GND_5_o_sub_85_OUT [3]),
    .I2(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_77_281 ),
    .I3(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_821_282 ),
    .I4(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_921_284 ),
    .I5(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_822_283 ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_37_285 )
  );
  LUT6 #(
    .INIT ( 64'hFEDC7654BA983210 ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_47  (
    .I0(\display/GND_5_o_GND_5_o_sub_85_OUT [2]),
    .I1(\display/GND_5_o_GND_5_o_sub_85_OUT [3]),
    .I2(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_823_286 ),
    .I3(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_922_287 ),
    .I4(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_107_289 ),
    .I5(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_923_288 ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_47_290 )
  );
  MUXF7   \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_2_f7_6  (
    .I0(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_47_290 ),
    .I1(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_37_285 ),
    .S(\display/GND_5_o_GND_5_o_sub_85_OUT [4]),
    .O(\display/GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT<7> )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_3  (
    .I0(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_7_291 ),
    .I1(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_8_292 ),
    .I2(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_9_294 ),
    .I3(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_81_293 ),
    .I4(\display/GND_5_o_GND_5_o_sub_78_OUT [2]),
    .I5(\display/GND_5_o_GND_5_o_sub_78_OUT [3]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_3_295 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_4  (
    .I0(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_82_296 ),
    .I1(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_91_297 ),
    .I2(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_10_299 ),
    .I3(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_92_298 ),
    .I4(\display/GND_5_o_GND_5_o_sub_78_OUT [2]),
    .I5(\display/GND_5_o_GND_5_o_sub_78_OUT [3]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_4_300 )
  );
  MUXF7   \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_2_f7  (
    .I0(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_4_300 ),
    .I1(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_3_295 ),
    .S(\display/GND_5_o_GND_5_o_sub_78_OUT [4]),
    .O(\display/GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT<0> )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_31  (
    .I0(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_71_301 ),
    .I1(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_83_302 ),
    .I2(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_93_304 ),
    .I3(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_84_303 ),
    .I4(\display/GND_5_o_GND_5_o_sub_78_OUT [2]),
    .I5(\display/GND_5_o_GND_5_o_sub_78_OUT [3]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_31_305 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_41  (
    .I0(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_85_306 ),
    .I1(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_94_307 ),
    .I2(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_101_309 ),
    .I3(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_95_308 ),
    .I4(\display/GND_5_o_GND_5_o_sub_78_OUT [2]),
    .I5(\display/GND_5_o_GND_5_o_sub_78_OUT [3]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_41_310 )
  );
  MUXF7   \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_2_f7_0  (
    .I0(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_41_310 ),
    .I1(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_31_305 ),
    .S(\display/GND_5_o_GND_5_o_sub_78_OUT [4]),
    .O(\display/GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT<1> )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_32  (
    .I0(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_72_311 ),
    .I1(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_86_312 ),
    .I2(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_96_314 ),
    .I3(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_87_313 ),
    .I4(\display/GND_5_o_GND_5_o_sub_78_OUT [2]),
    .I5(\display/GND_5_o_GND_5_o_sub_78_OUT [3]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_32_315 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_42  (
    .I0(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_88_316 ),
    .I1(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_97_317 ),
    .I2(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_102_319 ),
    .I3(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_98_318 ),
    .I4(\display/GND_5_o_GND_5_o_sub_78_OUT [2]),
    .I5(\display/GND_5_o_GND_5_o_sub_78_OUT [3]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_42_320 )
  );
  MUXF7   \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_2_f7_1  (
    .I0(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_42_320 ),
    .I1(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_32_315 ),
    .S(\display/GND_5_o_GND_5_o_sub_78_OUT [4]),
    .O(\display/GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT<2> )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_33  (
    .I0(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_73_321 ),
    .I1(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_89_322 ),
    .I2(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_99_324 ),
    .I3(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_810_323 ),
    .I4(\display/GND_5_o_GND_5_o_sub_78_OUT [2]),
    .I5(\display/GND_5_o_GND_5_o_sub_78_OUT [3]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_33_325 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_43  (
    .I0(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_811_326 ),
    .I1(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_910_327 ),
    .I2(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_103_329 ),
    .I3(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_911_328 ),
    .I4(\display/GND_5_o_GND_5_o_sub_78_OUT [2]),
    .I5(\display/GND_5_o_GND_5_o_sub_78_OUT [3]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_43_330 )
  );
  MUXF7   \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_2_f7_2  (
    .I0(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_43_330 ),
    .I1(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_33_325 ),
    .S(\display/GND_5_o_GND_5_o_sub_78_OUT [4]),
    .O(\display/GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT<3> )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_34  (
    .I0(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_74_331 ),
    .I1(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_812_332 ),
    .I2(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_912_334 ),
    .I3(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_813_333 ),
    .I4(\display/GND_5_o_GND_5_o_sub_78_OUT [2]),
    .I5(\display/GND_5_o_GND_5_o_sub_78_OUT [3]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_34_335 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_44  (
    .I0(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_814_336 ),
    .I1(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_913_337 ),
    .I2(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_104_339 ),
    .I3(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_914_338 ),
    .I4(\display/GND_5_o_GND_5_o_sub_78_OUT [2]),
    .I5(\display/GND_5_o_GND_5_o_sub_78_OUT [3]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_44_340 )
  );
  MUXF7   \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_2_f7_3  (
    .I0(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_44_340 ),
    .I1(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_34_335 ),
    .S(\display/GND_5_o_GND_5_o_sub_78_OUT [4]),
    .O(\display/GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT<4> )
  );
  LUT6 #(
    .INIT ( 64'hCCCCF0F0AAAAFF00 ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_35  (
    .I0(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_815_342 ),
    .I1(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_915_344 ),
    .I2(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_816_343 ),
    .I3(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_75_341 ),
    .I4(\display/GND_5_o_GND_5_o_sub_78_OUT [2]),
    .I5(\display/GND_5_o_GND_5_o_sub_78_OUT [3]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_35_345 )
  );
  LUT6 #(
    .INIT ( 64'hCCCCF0F0AAAAFF00 ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_45  (
    .I0(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_916_347 ),
    .I1(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_105_349 ),
    .I2(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_917_348 ),
    .I3(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_817_346 ),
    .I4(\display/GND_5_o_GND_5_o_sub_78_OUT [2]),
    .I5(\display/GND_5_o_GND_5_o_sub_78_OUT [3]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_45_350 )
  );
  MUXF7   \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_2_f7_4  (
    .I0(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_45_350 ),
    .I1(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_35_345 ),
    .S(\display/GND_5_o_GND_5_o_sub_78_OUT [4]),
    .O(\display/GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT<5> )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_36  (
    .I0(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_76_351 ),
    .I1(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_818_352 ),
    .I2(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_918_354 ),
    .I3(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_819_353 ),
    .I4(\display/GND_5_o_GND_5_o_sub_78_OUT [2]),
    .I5(\display/GND_5_o_GND_5_o_sub_78_OUT [3]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_36_355 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_46  (
    .I0(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_820_356 ),
    .I1(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_919_357 ),
    .I2(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_106_359 ),
    .I3(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_920_358 ),
    .I4(\display/GND_5_o_GND_5_o_sub_78_OUT [2]),
    .I5(\display/GND_5_o_GND_5_o_sub_78_OUT [3]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_46_360 )
  );
  MUXF7   \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_2_f7_5  (
    .I0(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_46_360 ),
    .I1(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_36_355 ),
    .S(\display/GND_5_o_GND_5_o_sub_78_OUT [4]),
    .O(\display/GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT<6> )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_37  (
    .I0(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_77_361 ),
    .I1(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_821_362 ),
    .I2(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_921_364 ),
    .I3(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_822_363 ),
    .I4(\display/GND_5_o_GND_5_o_sub_78_OUT [2]),
    .I5(\display/GND_5_o_GND_5_o_sub_78_OUT [3]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_37_365 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_47  (
    .I0(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_823_366 ),
    .I1(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_922_367 ),
    .I2(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_107_369 ),
    .I3(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_923_368 ),
    .I4(\display/GND_5_o_GND_5_o_sub_78_OUT [2]),
    .I5(\display/GND_5_o_GND_5_o_sub_78_OUT [3]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_47_370 )
  );
  MUXF7   \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_2_f7_6  (
    .I0(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_47_370 ),
    .I1(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_37_365 ),
    .S(\display/GND_5_o_GND_5_o_sub_78_OUT [4]),
    .O(\display/GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT<7> )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_3  (
    .I0(\display/GND_5_o_GND_5_o_sub_69_OUT [3]),
    .I1(\display/GND_5_o_GND_5_o_sub_69_OUT [2]),
    .I2(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_81_373 ),
    .I3(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_9_374 ),
    .I4(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_8_372 ),
    .I5(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_7_371 ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_3_375 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_4  (
    .I0(\display/GND_5_o_GND_5_o_sub_69_OUT [3]),
    .I1(\display/GND_5_o_GND_5_o_sub_69_OUT [2]),
    .I2(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_92_378 ),
    .I3(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_10_379 ),
    .I4(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_91_377 ),
    .I5(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_82_376 ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_4_380 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_31  (
    .I0(\display/GND_5_o_GND_5_o_sub_69_OUT [3]),
    .I1(\display/GND_5_o_GND_5_o_sub_69_OUT [2]),
    .I2(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_84_383 ),
    .I3(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_93_384 ),
    .I4(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_83_382 ),
    .I5(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_71_381 ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_31_385 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_41  (
    .I0(\display/GND_5_o_GND_5_o_sub_69_OUT [3]),
    .I1(\display/GND_5_o_GND_5_o_sub_69_OUT [2]),
    .I2(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_95_388 ),
    .I3(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_101_389 ),
    .I4(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_94_387 ),
    .I5(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_85_386 ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_41_390 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_32  (
    .I0(\display/GND_5_o_GND_5_o_sub_69_OUT [3]),
    .I1(\display/GND_5_o_GND_5_o_sub_69_OUT [2]),
    .I2(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_87_393 ),
    .I3(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_96_394 ),
    .I4(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_86_392 ),
    .I5(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_72_391 ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_32_395 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_42  (
    .I0(\display/GND_5_o_GND_5_o_sub_69_OUT [3]),
    .I1(\display/GND_5_o_GND_5_o_sub_69_OUT [2]),
    .I2(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_98_398 ),
    .I3(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_102_399 ),
    .I4(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_97_397 ),
    .I5(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_88_396 ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_42_400 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_33  (
    .I0(\display/GND_5_o_GND_5_o_sub_69_OUT [3]),
    .I1(\display/GND_5_o_GND_5_o_sub_69_OUT [2]),
    .I2(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_810_403 ),
    .I3(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_99_404 ),
    .I4(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_89_402 ),
    .I5(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_73_401 ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_33_405 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_43  (
    .I0(\display/GND_5_o_GND_5_o_sub_69_OUT [3]),
    .I1(\display/GND_5_o_GND_5_o_sub_69_OUT [2]),
    .I2(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_911_408 ),
    .I3(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_103_409 ),
    .I4(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_910_407 ),
    .I5(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_811_406 ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_43_410 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_34  (
    .I0(\display/GND_5_o_GND_5_o_sub_69_OUT [3]),
    .I1(\display/GND_5_o_GND_5_o_sub_69_OUT [2]),
    .I2(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_813_413 ),
    .I3(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_912_414 ),
    .I4(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_812_412 ),
    .I5(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_74_411 ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_34_415 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_44  (
    .I0(\display/GND_5_o_GND_5_o_sub_69_OUT [3]),
    .I1(\display/GND_5_o_GND_5_o_sub_69_OUT [2]),
    .I2(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_914_418 ),
    .I3(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_104_419 ),
    .I4(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_913_417 ),
    .I5(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_814_416 ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_44_420 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_35  (
    .I0(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_75_421 ),
    .I1(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_815_422 ),
    .I2(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_915_424 ),
    .I3(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_816_423 ),
    .I4(\display/GND_5_o_GND_5_o_sub_69_OUT [2]),
    .I5(\display/GND_5_o_GND_5_o_sub_69_OUT [3]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_35_425 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_45  (
    .I0(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_817_426 ),
    .I1(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_916_427 ),
    .I2(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_105_429 ),
    .I3(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_917_428 ),
    .I4(\display/GND_5_o_GND_5_o_sub_69_OUT [2]),
    .I5(\display/GND_5_o_GND_5_o_sub_69_OUT [3]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_45_430 )
  );
  MUXF7   \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_2_f7_4  (
    .I0(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_45_430 ),
    .I1(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_35_425 ),
    .S(\display/GND_5_o_GND_5_o_sub_69_OUT [4]),
    .O(\display/GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT<5> )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_36  (
    .I0(\display/GND_5_o_GND_5_o_sub_69_OUT [3]),
    .I1(\display/GND_5_o_GND_5_o_sub_69_OUT [2]),
    .I2(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_819_433 ),
    .I3(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_918_434 ),
    .I4(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_818_432 ),
    .I5(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_76_431 ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_36_435 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_46  (
    .I0(\display/GND_5_o_GND_5_o_sub_69_OUT [3]),
    .I1(\display/GND_5_o_GND_5_o_sub_69_OUT [2]),
    .I2(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_920_438 ),
    .I3(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_106_439 ),
    .I4(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_919_437 ),
    .I5(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_820_436 ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_46_440 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_37  (
    .I0(\display/GND_5_o_GND_5_o_sub_69_OUT [3]),
    .I1(\display/GND_5_o_GND_5_o_sub_69_OUT [2]),
    .I2(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_822_443 ),
    .I3(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_921_444 ),
    .I4(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_821_442 ),
    .I5(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_77_441 ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_37_445 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_47  (
    .I0(\display/GND_5_o_GND_5_o_sub_69_OUT [3]),
    .I1(\display/GND_5_o_GND_5_o_sub_69_OUT [2]),
    .I2(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_923_448 ),
    .I3(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_107_449 ),
    .I4(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_922_447 ),
    .I5(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_823_446 ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_47_450 )
  );
  XORCY   \display/four_hz/Mcount_counter_xor<22>  (
    .CI(\display/four_hz/Mcount_counter_cy [21]),
    .LI(\display/four_hz/Mcount_counter_xor<22>_rt_1537 ),
    .O(\display/Result [22])
  );
  XORCY   \display/four_hz/Mcount_counter_xor<21>  (
    .CI(\display/four_hz/Mcount_counter_cy [20]),
    .LI(\display/four_hz/Mcount_counter_cy<21>_rt_1515 ),
    .O(\display/Result [21])
  );
  MUXCY   \display/four_hz/Mcount_counter_cy<21>  (
    .CI(\display/four_hz/Mcount_counter_cy [20]),
    .DI(N1),
    .S(\display/four_hz/Mcount_counter_cy<21>_rt_1515 ),
    .O(\display/four_hz/Mcount_counter_cy [21])
  );
  XORCY   \display/four_hz/Mcount_counter_xor<20>  (
    .CI(\display/four_hz/Mcount_counter_cy [19]),
    .LI(\display/four_hz/Mcount_counter_cy<20>_rt_1516 ),
    .O(\display/Result [20])
  );
  MUXCY   \display/four_hz/Mcount_counter_cy<20>  (
    .CI(\display/four_hz/Mcount_counter_cy [19]),
    .DI(N1),
    .S(\display/four_hz/Mcount_counter_cy<20>_rt_1516 ),
    .O(\display/four_hz/Mcount_counter_cy [20])
  );
  XORCY   \display/four_hz/Mcount_counter_xor<19>  (
    .CI(\display/four_hz/Mcount_counter_cy [18]),
    .LI(\display/four_hz/Mcount_counter_cy<19>_rt_1517 ),
    .O(\display/Result [19])
  );
  MUXCY   \display/four_hz/Mcount_counter_cy<19>  (
    .CI(\display/four_hz/Mcount_counter_cy [18]),
    .DI(N1),
    .S(\display/four_hz/Mcount_counter_cy<19>_rt_1517 ),
    .O(\display/four_hz/Mcount_counter_cy [19])
  );
  XORCY   \display/four_hz/Mcount_counter_xor<18>  (
    .CI(\display/four_hz/Mcount_counter_cy [17]),
    .LI(\display/four_hz/Mcount_counter_cy<18>_rt_1518 ),
    .O(\display/Result [18])
  );
  MUXCY   \display/four_hz/Mcount_counter_cy<18>  (
    .CI(\display/four_hz/Mcount_counter_cy [17]),
    .DI(N1),
    .S(\display/four_hz/Mcount_counter_cy<18>_rt_1518 ),
    .O(\display/four_hz/Mcount_counter_cy [18])
  );
  XORCY   \display/four_hz/Mcount_counter_xor<17>  (
    .CI(\display/four_hz/Mcount_counter_cy [16]),
    .LI(\display/four_hz/Mcount_counter_cy<17>_rt_1519 ),
    .O(\display/Result [17])
  );
  MUXCY   \display/four_hz/Mcount_counter_cy<17>  (
    .CI(\display/four_hz/Mcount_counter_cy [16]),
    .DI(N1),
    .S(\display/four_hz/Mcount_counter_cy<17>_rt_1519 ),
    .O(\display/four_hz/Mcount_counter_cy [17])
  );
  XORCY   \display/four_hz/Mcount_counter_xor<16>  (
    .CI(\display/four_hz/Mcount_counter_cy [15]),
    .LI(\display/four_hz/Mcount_counter_cy<16>_rt_1520 ),
    .O(\display/Result [16])
  );
  MUXCY   \display/four_hz/Mcount_counter_cy<16>  (
    .CI(\display/four_hz/Mcount_counter_cy [15]),
    .DI(N1),
    .S(\display/four_hz/Mcount_counter_cy<16>_rt_1520 ),
    .O(\display/four_hz/Mcount_counter_cy [16])
  );
  XORCY   \display/four_hz/Mcount_counter_xor<15>  (
    .CI(\display/four_hz/Mcount_counter_cy [14]),
    .LI(\display/four_hz/Mcount_counter_cy<15>_rt_1521 ),
    .O(\display/Result [15])
  );
  MUXCY   \display/four_hz/Mcount_counter_cy<15>  (
    .CI(\display/four_hz/Mcount_counter_cy [14]),
    .DI(N1),
    .S(\display/four_hz/Mcount_counter_cy<15>_rt_1521 ),
    .O(\display/four_hz/Mcount_counter_cy [15])
  );
  XORCY   \display/four_hz/Mcount_counter_xor<14>  (
    .CI(\display/four_hz/Mcount_counter_cy [13]),
    .LI(\display/four_hz/Mcount_counter_cy<14>_rt_1522 ),
    .O(\display/Result [14])
  );
  MUXCY   \display/four_hz/Mcount_counter_cy<14>  (
    .CI(\display/four_hz/Mcount_counter_cy [13]),
    .DI(N1),
    .S(\display/four_hz/Mcount_counter_cy<14>_rt_1522 ),
    .O(\display/four_hz/Mcount_counter_cy [14])
  );
  XORCY   \display/four_hz/Mcount_counter_xor<13>  (
    .CI(\display/four_hz/Mcount_counter_cy [12]),
    .LI(\display/four_hz/Mcount_counter_cy<13>_rt_1523 ),
    .O(\display/Result [13])
  );
  MUXCY   \display/four_hz/Mcount_counter_cy<13>  (
    .CI(\display/four_hz/Mcount_counter_cy [12]),
    .DI(N1),
    .S(\display/four_hz/Mcount_counter_cy<13>_rt_1523 ),
    .O(\display/four_hz/Mcount_counter_cy [13])
  );
  XORCY   \display/four_hz/Mcount_counter_xor<12>  (
    .CI(\display/four_hz/Mcount_counter_cy [11]),
    .LI(\display/four_hz/Mcount_counter_cy<12>_rt_1524 ),
    .O(\display/Result [12])
  );
  MUXCY   \display/four_hz/Mcount_counter_cy<12>  (
    .CI(\display/four_hz/Mcount_counter_cy [11]),
    .DI(N1),
    .S(\display/four_hz/Mcount_counter_cy<12>_rt_1524 ),
    .O(\display/four_hz/Mcount_counter_cy [12])
  );
  XORCY   \display/four_hz/Mcount_counter_xor<11>  (
    .CI(\display/four_hz/Mcount_counter_cy [10]),
    .LI(\display/four_hz/Mcount_counter_cy<11>_rt_1525 ),
    .O(\display/Result [11])
  );
  MUXCY   \display/four_hz/Mcount_counter_cy<11>  (
    .CI(\display/four_hz/Mcount_counter_cy [10]),
    .DI(N1),
    .S(\display/four_hz/Mcount_counter_cy<11>_rt_1525 ),
    .O(\display/four_hz/Mcount_counter_cy [11])
  );
  XORCY   \display/four_hz/Mcount_counter_xor<10>  (
    .CI(\display/four_hz/Mcount_counter_cy [9]),
    .LI(\display/four_hz/Mcount_counter_cy<10>_rt_1526 ),
    .O(\display/Result [10])
  );
  MUXCY   \display/four_hz/Mcount_counter_cy<10>  (
    .CI(\display/four_hz/Mcount_counter_cy [9]),
    .DI(N1),
    .S(\display/four_hz/Mcount_counter_cy<10>_rt_1526 ),
    .O(\display/four_hz/Mcount_counter_cy [10])
  );
  XORCY   \display/four_hz/Mcount_counter_xor<9>  (
    .CI(\display/four_hz/Mcount_counter_cy [8]),
    .LI(\display/four_hz/Mcount_counter_cy<9>_rt_1527 ),
    .O(\display/Result [9])
  );
  MUXCY   \display/four_hz/Mcount_counter_cy<9>  (
    .CI(\display/four_hz/Mcount_counter_cy [8]),
    .DI(N1),
    .S(\display/four_hz/Mcount_counter_cy<9>_rt_1527 ),
    .O(\display/four_hz/Mcount_counter_cy [9])
  );
  XORCY   \display/four_hz/Mcount_counter_xor<8>  (
    .CI(\display/four_hz/Mcount_counter_cy [7]),
    .LI(\display/four_hz/Mcount_counter_cy<8>_rt_1528 ),
    .O(\display/Result [8])
  );
  MUXCY   \display/four_hz/Mcount_counter_cy<8>  (
    .CI(\display/four_hz/Mcount_counter_cy [7]),
    .DI(N1),
    .S(\display/four_hz/Mcount_counter_cy<8>_rt_1528 ),
    .O(\display/four_hz/Mcount_counter_cy [8])
  );
  XORCY   \display/four_hz/Mcount_counter_xor<7>  (
    .CI(\display/four_hz/Mcount_counter_cy [6]),
    .LI(\display/four_hz/Mcount_counter_cy<7>_rt_1529 ),
    .O(\display/Result [7])
  );
  MUXCY   \display/four_hz/Mcount_counter_cy<7>  (
    .CI(\display/four_hz/Mcount_counter_cy [6]),
    .DI(N1),
    .S(\display/four_hz/Mcount_counter_cy<7>_rt_1529 ),
    .O(\display/four_hz/Mcount_counter_cy [7])
  );
  XORCY   \display/four_hz/Mcount_counter_xor<6>  (
    .CI(\display/four_hz/Mcount_counter_cy [5]),
    .LI(\display/four_hz/Mcount_counter_cy<6>_rt_1530 ),
    .O(\display/Result [6])
  );
  MUXCY   \display/four_hz/Mcount_counter_cy<6>  (
    .CI(\display/four_hz/Mcount_counter_cy [5]),
    .DI(N1),
    .S(\display/four_hz/Mcount_counter_cy<6>_rt_1530 ),
    .O(\display/four_hz/Mcount_counter_cy [6])
  );
  XORCY   \display/four_hz/Mcount_counter_xor<5>  (
    .CI(\display/four_hz/Mcount_counter_cy [4]),
    .LI(\display/four_hz/Mcount_counter_cy<5>_rt_1531 ),
    .O(\display/Result [5])
  );
  MUXCY   \display/four_hz/Mcount_counter_cy<5>  (
    .CI(\display/four_hz/Mcount_counter_cy [4]),
    .DI(N1),
    .S(\display/four_hz/Mcount_counter_cy<5>_rt_1531 ),
    .O(\display/four_hz/Mcount_counter_cy [5])
  );
  XORCY   \display/four_hz/Mcount_counter_xor<4>  (
    .CI(\display/four_hz/Mcount_counter_cy [3]),
    .LI(\display/four_hz/Mcount_counter_cy<4>_rt_1532 ),
    .O(\display/Result [4])
  );
  MUXCY   \display/four_hz/Mcount_counter_cy<4>  (
    .CI(\display/four_hz/Mcount_counter_cy [3]),
    .DI(N1),
    .S(\display/four_hz/Mcount_counter_cy<4>_rt_1532 ),
    .O(\display/four_hz/Mcount_counter_cy [4])
  );
  XORCY   \display/four_hz/Mcount_counter_xor<3>  (
    .CI(\display/four_hz/Mcount_counter_cy [2]),
    .LI(\display/four_hz/Mcount_counter_cy<3>_rt_1533 ),
    .O(\display/Result [3])
  );
  MUXCY   \display/four_hz/Mcount_counter_cy<3>  (
    .CI(\display/four_hz/Mcount_counter_cy [2]),
    .DI(N1),
    .S(\display/four_hz/Mcount_counter_cy<3>_rt_1533 ),
    .O(\display/four_hz/Mcount_counter_cy [3])
  );
  XORCY   \display/four_hz/Mcount_counter_xor<2>  (
    .CI(\display/four_hz/Mcount_counter_cy [1]),
    .LI(\display/four_hz/Mcount_counter_cy<2>_rt_1534 ),
    .O(\display/Result [2])
  );
  MUXCY   \display/four_hz/Mcount_counter_cy<2>  (
    .CI(\display/four_hz/Mcount_counter_cy [1]),
    .DI(N1),
    .S(\display/four_hz/Mcount_counter_cy<2>_rt_1534 ),
    .O(\display/four_hz/Mcount_counter_cy [2])
  );
  XORCY   \display/four_hz/Mcount_counter_xor<1>  (
    .CI(\display/four_hz/Mcount_counter_cy [0]),
    .LI(\display/four_hz/Mcount_counter_cy<1>_rt_1535 ),
    .O(\display/Result [1])
  );
  MUXCY   \display/four_hz/Mcount_counter_cy<1>  (
    .CI(\display/four_hz/Mcount_counter_cy [0]),
    .DI(N1),
    .S(\display/four_hz/Mcount_counter_cy<1>_rt_1535 ),
    .O(\display/four_hz/Mcount_counter_cy [1])
  );
  XORCY   \display/four_hz/Mcount_counter_xor<0>  (
    .CI(N1),
    .LI(\display/four_hz/Mcount_counter_lut [0]),
    .O(\display/Result [0])
  );
  MUXCY   \display/four_hz/Mcount_counter_cy<0>  (
    .CI(N1),
    .DI(N0),
    .S(\display/four_hz/Mcount_counter_lut [0]),
    .O(\display/four_hz/Mcount_counter_cy [0])
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_7  (
    .I0(\display/ascii_buf_31 [120]),
    .I1(\display/ascii_buf_31 [112]),
    .I2(\display/ascii_buf_31 [96]),
    .I3(\display/ascii_buf_31 [104]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_7_481 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_8  (
    .I0(\display/ascii_buf_31 [88]),
    .I1(\display/ascii_buf_31 [80]),
    .I2(\display/ascii_buf_31 [64]),
    .I3(\display/ascii_buf_31 [72]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_8_482 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_81  (
    .I0(\display/ascii_buf_31 [56]),
    .I1(\display/ascii_buf_31 [48]),
    .I2(\display/ascii_buf_31 [32]),
    .I3(\display/ascii_buf_31 [40]),
    .I4(\display/buf_ptr_0_4_1576 ),
    .I5(\display/buf_ptr [1]),
    .O(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_81_483 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_9  (
    .I0(\display/ascii_buf_31 [24]),
    .I1(\display/ascii_buf_31 [16]),
    .I2(\display/ascii_buf_31 [0]),
    .I3(\display/ascii_buf_31 [8]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_9_484 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_3  (
    .I0(\display/buf_ptr [3]),
    .I1(\display/buf_ptr [2]),
    .I2(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_81_483 ),
    .I3(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_9_484 ),
    .I4(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_8_482 ),
    .I5(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_7_481 ),
    .O(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_3_485 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_82  (
    .I0(\display/ascii_buf_31 [248]),
    .I1(\display/ascii_buf_31 [240]),
    .I2(\display/ascii_buf_31 [224]),
    .I3(\display/ascii_buf_31 [232]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_82_486 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_91  (
    .I0(\display/ascii_buf_31 [216]),
    .I1(\display/ascii_buf_31 [208]),
    .I2(\display/ascii_buf_31 [192]),
    .I3(\display/ascii_buf_31 [200]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_91_487 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_92  (
    .I0(\display/ascii_buf_31 [184]),
    .I1(\display/ascii_buf_31 [176]),
    .I2(\display/ascii_buf_31 [160]),
    .I3(\display/ascii_buf_31 [168]),
    .I4(\display/buf_ptr_0_4_1576 ),
    .I5(\display/buf_ptr [1]),
    .O(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_92_488 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_10  (
    .I0(\display/ascii_buf_31 [152]),
    .I1(\display/ascii_buf_31 [144]),
    .I2(\display/ascii_buf_31 [128]),
    .I3(\display/ascii_buf_31 [136]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_10_489 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_4  (
    .I0(\display/buf_ptr [3]),
    .I1(\display/buf_ptr [2]),
    .I2(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_92_488 ),
    .I3(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_10_489 ),
    .I4(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_91_487 ),
    .I5(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_82_486 ),
    .O(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_4_490 )
  );
  MUXF7   \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_2_f7  (
    .I0(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_4_490 ),
    .I1(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_3_485 ),
    .S(\display/buf_ptr [4]),
    .O(\display/buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT<0> )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_71  (
    .I0(\display/ascii_buf_31 [121]),
    .I1(\display/ascii_buf_31 [113]),
    .I2(\display/ascii_buf_31 [97]),
    .I3(\display/ascii_buf_31 [105]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_71_491 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_83  (
    .I0(\display/ascii_buf_31 [89]),
    .I1(\display/ascii_buf_31 [81]),
    .I2(\display/ascii_buf_31 [65]),
    .I3(\display/ascii_buf_31 [73]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_83_492 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_84  (
    .I0(\display/ascii_buf_31 [57]),
    .I1(\display/ascii_buf_31 [49]),
    .I2(\display/ascii_buf_31 [33]),
    .I3(\display/ascii_buf_31 [41]),
    .I4(\display/buf_ptr_0_4_1576 ),
    .I5(\display/buf_ptr [1]),
    .O(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_84_493 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_93  (
    .I0(\display/ascii_buf_31 [25]),
    .I1(\display/ascii_buf_31 [17]),
    .I2(\display/ascii_buf_31 [1]),
    .I3(\display/ascii_buf_31 [9]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_93_494 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_31  (
    .I0(\display/buf_ptr [3]),
    .I1(\display/buf_ptr [2]),
    .I2(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_84_493 ),
    .I3(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_93_494 ),
    .I4(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_83_492 ),
    .I5(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_71_491 ),
    .O(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_31_495 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_85  (
    .I0(\display/ascii_buf_31 [249]),
    .I1(\display/ascii_buf_31 [241]),
    .I2(\display/ascii_buf_31 [225]),
    .I3(\display/ascii_buf_31 [233]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_85_496 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_94  (
    .I0(\display/ascii_buf_31 [217]),
    .I1(\display/ascii_buf_31 [209]),
    .I2(\display/ascii_buf_31 [193]),
    .I3(\display/ascii_buf_31 [201]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_94_497 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_95  (
    .I0(\display/ascii_buf_31 [185]),
    .I1(\display/ascii_buf_31 [177]),
    .I2(\display/ascii_buf_31 [161]),
    .I3(\display/ascii_buf_31 [169]),
    .I4(\display/buf_ptr_0_4_1576 ),
    .I5(\display/buf_ptr [1]),
    .O(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_95_498 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_101  (
    .I0(\display/ascii_buf_31 [153]),
    .I1(\display/ascii_buf_31 [145]),
    .I2(\display/ascii_buf_31 [129]),
    .I3(\display/ascii_buf_31 [137]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_101_499 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_41  (
    .I0(\display/buf_ptr [3]),
    .I1(\display/buf_ptr [2]),
    .I2(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_95_498 ),
    .I3(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_101_499 ),
    .I4(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_94_497 ),
    .I5(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_85_496 ),
    .O(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_41_500 )
  );
  MUXF7   \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_2_f7_0  (
    .I0(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_41_500 ),
    .I1(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_31_495 ),
    .S(\display/buf_ptr [4]),
    .O(\display/buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT<1> )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_72  (
    .I0(\display/ascii_buf_31 [122]),
    .I1(\display/ascii_buf_31 [114]),
    .I2(\display/ascii_buf_31 [98]),
    .I3(\display/ascii_buf_31 [106]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_72_501 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_86  (
    .I0(\display/ascii_buf_31 [90]),
    .I1(\display/ascii_buf_31 [82]),
    .I2(\display/ascii_buf_31 [66]),
    .I3(\display/ascii_buf_31 [74]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_86_502 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_87  (
    .I0(\display/ascii_buf_31 [58]),
    .I1(\display/ascii_buf_31 [50]),
    .I2(\display/ascii_buf_31 [34]),
    .I3(\display/ascii_buf_31 [42]),
    .I4(\display/buf_ptr_0_4_1576 ),
    .I5(\display/buf_ptr [1]),
    .O(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_87_503 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_96  (
    .I0(\display/ascii_buf_31 [26]),
    .I1(\display/ascii_buf_31 [18]),
    .I2(\display/ascii_buf_31 [2]),
    .I3(\display/ascii_buf_31 [10]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_96_504 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_32  (
    .I0(\display/buf_ptr [3]),
    .I1(\display/buf_ptr [2]),
    .I2(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_87_503 ),
    .I3(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_96_504 ),
    .I4(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_86_502 ),
    .I5(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_72_501 ),
    .O(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_32_505 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_88  (
    .I0(\display/ascii_buf_31 [250]),
    .I1(\display/ascii_buf_31 [242]),
    .I2(\display/ascii_buf_31 [226]),
    .I3(\display/ascii_buf_31 [234]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_88_506 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_97  (
    .I0(\display/ascii_buf_31 [218]),
    .I1(\display/ascii_buf_31 [210]),
    .I2(\display/ascii_buf_31 [194]),
    .I3(\display/ascii_buf_31 [202]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_97_507 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_98  (
    .I0(\display/ascii_buf_31 [186]),
    .I1(\display/ascii_buf_31 [178]),
    .I2(\display/ascii_buf_31 [162]),
    .I3(\display/ascii_buf_31 [170]),
    .I4(\display/buf_ptr_0_4_1576 ),
    .I5(\display/buf_ptr [1]),
    .O(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_98_508 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_102  (
    .I0(\display/ascii_buf_31 [154]),
    .I1(\display/ascii_buf_31 [146]),
    .I2(\display/ascii_buf_31 [130]),
    .I3(\display/ascii_buf_31 [138]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_102_509 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_42  (
    .I0(\display/buf_ptr [3]),
    .I1(\display/buf_ptr [2]),
    .I2(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_98_508 ),
    .I3(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_102_509 ),
    .I4(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_97_507 ),
    .I5(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_88_506 ),
    .O(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_42_510 )
  );
  MUXF7   \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_2_f7_1  (
    .I0(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_42_510 ),
    .I1(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_32_505 ),
    .S(\display/buf_ptr [4]),
    .O(\display/buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT<2> )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_73  (
    .I0(\display/ascii_buf_31 [123]),
    .I1(\display/ascii_buf_31 [115]),
    .I2(\display/ascii_buf_31 [99]),
    .I3(\display/ascii_buf_31 [107]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_73_511 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_89  (
    .I0(\display/ascii_buf_31 [91]),
    .I1(\display/ascii_buf_31 [83]),
    .I2(\display/ascii_buf_31 [67]),
    .I3(\display/ascii_buf_31 [75]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_89_512 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_810  (
    .I0(\display/ascii_buf_31 [59]),
    .I1(\display/ascii_buf_31 [51]),
    .I2(\display/ascii_buf_31 [35]),
    .I3(\display/ascii_buf_31 [43]),
    .I4(\display/buf_ptr_0_4_1576 ),
    .I5(\display/buf_ptr [1]),
    .O(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_810_513 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_99  (
    .I0(\display/ascii_buf_31 [27]),
    .I1(\display/ascii_buf_31 [19]),
    .I2(\display/ascii_buf_31 [3]),
    .I3(\display/ascii_buf_31 [11]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_99_514 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_33  (
    .I0(\display/buf_ptr [3]),
    .I1(\display/buf_ptr [2]),
    .I2(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_810_513 ),
    .I3(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_99_514 ),
    .I4(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_89_512 ),
    .I5(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_73_511 ),
    .O(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_33_515 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_811  (
    .I0(\display/ascii_buf_31 [251]),
    .I1(\display/ascii_buf_31 [243]),
    .I2(\display/ascii_buf_31 [227]),
    .I3(\display/ascii_buf_31 [235]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_811_516 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_910  (
    .I0(\display/ascii_buf_31 [219]),
    .I1(\display/ascii_buf_31 [211]),
    .I2(\display/ascii_buf_31 [195]),
    .I3(\display/ascii_buf_31 [203]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_910_517 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_911  (
    .I0(\display/ascii_buf_31 [187]),
    .I1(\display/ascii_buf_31 [179]),
    .I2(\display/ascii_buf_31 [163]),
    .I3(\display/ascii_buf_31 [171]),
    .I4(\display/buf_ptr_0_4_1576 ),
    .I5(\display/buf_ptr [1]),
    .O(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_911_518 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_103  (
    .I0(\display/ascii_buf_31 [155]),
    .I1(\display/ascii_buf_31 [147]),
    .I2(\display/ascii_buf_31 [131]),
    .I3(\display/ascii_buf_31 [139]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_103_519 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_43  (
    .I0(\display/buf_ptr [3]),
    .I1(\display/buf_ptr [2]),
    .I2(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_911_518 ),
    .I3(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_103_519 ),
    .I4(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_910_517 ),
    .I5(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_811_516 ),
    .O(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_43_520 )
  );
  MUXF7   \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_2_f7_2  (
    .I0(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_43_520 ),
    .I1(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_33_515 ),
    .S(\display/buf_ptr [4]),
    .O(\display/buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT<3> )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_74  (
    .I0(\display/ascii_buf_31 [124]),
    .I1(\display/ascii_buf_31 [116]),
    .I2(\display/ascii_buf_31 [100]),
    .I3(\display/ascii_buf_31 [108]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_74_521 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_812  (
    .I0(\display/ascii_buf_31 [92]),
    .I1(\display/ascii_buf_31 [84]),
    .I2(\display/ascii_buf_31 [68]),
    .I3(\display/ascii_buf_31 [76]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_812_522 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_813  (
    .I0(\display/ascii_buf_31 [60]),
    .I1(\display/ascii_buf_31 [52]),
    .I2(\display/ascii_buf_31 [36]),
    .I3(\display/ascii_buf_31 [44]),
    .I4(\display/buf_ptr_0_4_1576 ),
    .I5(\display/buf_ptr [1]),
    .O(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_813_523 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_912  (
    .I0(\display/ascii_buf_31 [28]),
    .I1(\display/ascii_buf_31 [20]),
    .I2(\display/ascii_buf_31 [4]),
    .I3(\display/ascii_buf_31 [12]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_912_524 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_34  (
    .I0(\display/buf_ptr [3]),
    .I1(\display/buf_ptr [2]),
    .I2(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_813_523 ),
    .I3(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_912_524 ),
    .I4(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_812_522 ),
    .I5(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_74_521 ),
    .O(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_34_525 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_814  (
    .I0(\display/ascii_buf_31 [252]),
    .I1(\display/ascii_buf_31 [244]),
    .I2(\display/ascii_buf_31 [228]),
    .I3(\display/ascii_buf_31 [236]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_814_526 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_913  (
    .I0(\display/ascii_buf_31 [220]),
    .I1(\display/ascii_buf_31 [212]),
    .I2(\display/ascii_buf_31 [196]),
    .I3(\display/ascii_buf_31 [204]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_913_527 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_914  (
    .I0(\display/ascii_buf_31 [188]),
    .I1(\display/ascii_buf_31 [180]),
    .I2(\display/ascii_buf_31 [164]),
    .I3(\display/ascii_buf_31 [172]),
    .I4(\display/buf_ptr_0_4_1576 ),
    .I5(\display/buf_ptr [1]),
    .O(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_914_528 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_104  (
    .I0(\display/ascii_buf_31 [156]),
    .I1(\display/ascii_buf_31 [148]),
    .I2(\display/ascii_buf_31 [132]),
    .I3(\display/ascii_buf_31 [140]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_104_529 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_44  (
    .I0(\display/buf_ptr [3]),
    .I1(\display/buf_ptr [2]),
    .I2(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_914_528 ),
    .I3(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_104_529 ),
    .I4(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_913_527 ),
    .I5(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_814_526 ),
    .O(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_44_530 )
  );
  MUXF7   \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_2_f7_3  (
    .I0(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_44_530 ),
    .I1(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_34_525 ),
    .S(\display/buf_ptr [4]),
    .O(\display/buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT<4> )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_75  (
    .I0(\display/ascii_buf_31 [125]),
    .I1(\display/ascii_buf_31 [117]),
    .I2(\display/ascii_buf_31 [101]),
    .I3(\display/ascii_buf_31 [109]),
    .I4(\display/buf_ptr_0_2_1562 ),
    .I5(\display/buf_ptr_1_4_1571 ),
    .O(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_75_531 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_815  (
    .I0(\display/ascii_buf_31 [93]),
    .I1(\display/ascii_buf_31 [85]),
    .I2(\display/ascii_buf_31 [69]),
    .I3(\display/ascii_buf_31 [77]),
    .I4(\display/buf_ptr_1_2_1560 ),
    .I5(\display/buf_ptr_0_2_1562 ),
    .O(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_815_532 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_816  (
    .I0(\display/ascii_buf_31 [61]),
    .I1(\display/ascii_buf_31 [53]),
    .I2(\display/ascii_buf_31 [37]),
    .I3(\display/ascii_buf_31 [45]),
    .I4(\display/buf_ptr_1_4_1571 ),
    .I5(\display/buf_ptr_0_5_1577 ),
    .O(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_816_533 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_915  (
    .I0(\display/ascii_buf_31 [29]),
    .I1(\display/ascii_buf_31 [21]),
    .I2(\display/ascii_buf_31 [5]),
    .I3(\display/ascii_buf_31 [13]),
    .I4(\display/buf_ptr_1_2_1560 ),
    .I5(\display/buf_ptr_0_3_1563 ),
    .O(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_915_534 )
  );
  LUT6 #(
    .INIT ( 64'hFB73EA62D951C840 ))
  \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_35  (
    .I0(\display/buf_ptr [3]),
    .I1(\display/buf_ptr [2]),
    .I2(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_815_532 ),
    .I3(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_915_534 ),
    .I4(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_75_531 ),
    .I5(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_816_533 ),
    .O(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_35_535 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_817  (
    .I0(\display/ascii_buf_31 [253]),
    .I1(\display/ascii_buf_31 [245]),
    .I2(\display/ascii_buf_31 [229]),
    .I3(\display/ascii_buf_31 [237]),
    .I4(\display/buf_ptr_0_2_1562 ),
    .I5(\display/buf_ptr_1_4_1571 ),
    .O(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_817_536 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_916  (
    .I0(\display/ascii_buf_31 [221]),
    .I1(\display/ascii_buf_31 [213]),
    .I2(\display/ascii_buf_31 [197]),
    .I3(\display/ascii_buf_31 [205]),
    .I4(\display/buf_ptr_1_2_1560 ),
    .I5(\display/buf_ptr_0_2_1562 ),
    .O(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_916_537 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_917  (
    .I0(\display/ascii_buf_31 [189]),
    .I1(\display/ascii_buf_31 [181]),
    .I2(\display/ascii_buf_31 [165]),
    .I3(\display/ascii_buf_31 [173]),
    .I4(\display/buf_ptr_1_4_1571 ),
    .I5(\display/buf_ptr_0_5_1577 ),
    .O(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_917_538 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_105  (
    .I0(\display/ascii_buf_31 [157]),
    .I1(\display/ascii_buf_31 [149]),
    .I2(\display/ascii_buf_31 [133]),
    .I3(\display/ascii_buf_31 [141]),
    .I4(\display/buf_ptr_1_2_1560 ),
    .I5(\display/buf_ptr_0_2_1562 ),
    .O(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_105_539 )
  );
  LUT6 #(
    .INIT ( 64'hFB73EA62D951C840 ))
  \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_45  (
    .I0(\display/buf_ptr [3]),
    .I1(\display/buf_ptr [2]),
    .I2(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_916_537 ),
    .I3(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_105_539 ),
    .I4(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_817_536 ),
    .I5(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_917_538 ),
    .O(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_45_540 )
  );
  MUXF7   \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_2_f7_4  (
    .I0(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_45_540 ),
    .I1(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_35_535 ),
    .S(\display/buf_ptr [4]),
    .O(\display/buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT<5> )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_76  (
    .I0(\display/ascii_buf_31 [126]),
    .I1(\display/ascii_buf_31 [118]),
    .I2(\display/ascii_buf_31 [102]),
    .I3(\display/ascii_buf_31 [110]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_76_541 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_818  (
    .I0(\display/ascii_buf_31 [94]),
    .I1(\display/ascii_buf_31 [86]),
    .I2(\display/ascii_buf_31 [70]),
    .I3(\display/ascii_buf_31 [78]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_818_542 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_819  (
    .I0(\display/ascii_buf_31 [62]),
    .I1(\display/ascii_buf_31 [54]),
    .I2(\display/ascii_buf_31 [38]),
    .I3(\display/ascii_buf_31 [46]),
    .I4(\display/buf_ptr_0_4_1576 ),
    .I5(\display/buf_ptr [1]),
    .O(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_819_543 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_918  (
    .I0(\display/ascii_buf_31 [30]),
    .I1(\display/ascii_buf_31 [22]),
    .I2(\display/ascii_buf_31 [6]),
    .I3(\display/ascii_buf_31 [14]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_918_544 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_36  (
    .I0(\display/buf_ptr [3]),
    .I1(\display/buf_ptr [2]),
    .I2(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_819_543 ),
    .I3(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_918_544 ),
    .I4(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_818_542 ),
    .I5(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_76_541 ),
    .O(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_36_545 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_820  (
    .I0(\display/ascii_buf_31 [254]),
    .I1(\display/ascii_buf_31 [246]),
    .I2(\display/ascii_buf_31 [230]),
    .I3(\display/ascii_buf_31 [238]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_820_546 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_919  (
    .I0(\display/ascii_buf_31 [222]),
    .I1(\display/ascii_buf_31 [214]),
    .I2(\display/ascii_buf_31 [198]),
    .I3(\display/ascii_buf_31 [206]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_919_547 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_920  (
    .I0(\display/ascii_buf_31 [190]),
    .I1(\display/ascii_buf_31 [182]),
    .I2(\display/ascii_buf_31 [166]),
    .I3(\display/ascii_buf_31 [174]),
    .I4(\display/buf_ptr_0_4_1576 ),
    .I5(\display/buf_ptr [1]),
    .O(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_920_548 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_106  (
    .I0(\display/ascii_buf_31 [158]),
    .I1(\display/ascii_buf_31 [150]),
    .I2(\display/ascii_buf_31 [134]),
    .I3(\display/ascii_buf_31 [142]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_106_549 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_46  (
    .I0(\display/buf_ptr [3]),
    .I1(\display/buf_ptr [2]),
    .I2(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_920_548 ),
    .I3(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_106_549 ),
    .I4(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_919_547 ),
    .I5(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_820_546 ),
    .O(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_46_550 )
  );
  MUXF7   \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_2_f7_5  (
    .I0(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_46_550 ),
    .I1(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_36_545 ),
    .S(\display/buf_ptr [4]),
    .O(\display/buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT<6> )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_77  (
    .I0(\display/ascii_buf_31 [127]),
    .I1(\display/ascii_buf_31 [119]),
    .I2(\display/ascii_buf_31 [103]),
    .I3(\display/ascii_buf_31 [111]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_77_551 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_821  (
    .I0(\display/ascii_buf_31 [95]),
    .I1(\display/ascii_buf_31 [87]),
    .I2(\display/ascii_buf_31 [71]),
    .I3(\display/ascii_buf_31 [79]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_821_552 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_822  (
    .I0(\display/ascii_buf_31 [63]),
    .I1(\display/ascii_buf_31 [55]),
    .I2(\display/ascii_buf_31 [39]),
    .I3(\display/ascii_buf_31 [47]),
    .I4(\display/buf_ptr_0_5_1577 ),
    .I5(\display/buf_ptr [1]),
    .O(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_822_553 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_921  (
    .I0(\display/ascii_buf_31 [31]),
    .I1(\display/ascii_buf_31 [23]),
    .I2(\display/ascii_buf_31 [7]),
    .I3(\display/ascii_buf_31 [15]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_921_554 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_37  (
    .I0(\display/buf_ptr [3]),
    .I1(\display/buf_ptr [2]),
    .I2(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_822_553 ),
    .I3(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_921_554 ),
    .I4(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_821_552 ),
    .I5(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_77_551 ),
    .O(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_37_555 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_823  (
    .I0(\display/ascii_buf_31 [255]),
    .I1(\display/ascii_buf_31 [247]),
    .I2(\display/ascii_buf_31 [231]),
    .I3(\display/ascii_buf_31 [239]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_823_556 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_922  (
    .I0(\display/ascii_buf_31 [223]),
    .I1(\display/ascii_buf_31 [215]),
    .I2(\display/ascii_buf_31 [199]),
    .I3(\display/ascii_buf_31 [207]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_922_557 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_923  (
    .I0(\display/ascii_buf_31 [191]),
    .I1(\display/ascii_buf_31 [183]),
    .I2(\display/ascii_buf_31 [167]),
    .I3(\display/ascii_buf_31 [175]),
    .I4(\display/buf_ptr_0_4_1576 ),
    .I5(\display/buf_ptr [1]),
    .O(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_923_558 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_107  (
    .I0(\display/ascii_buf_31 [159]),
    .I1(\display/ascii_buf_31 [151]),
    .I2(\display/ascii_buf_31 [135]),
    .I3(\display/ascii_buf_31 [143]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_107_559 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_47  (
    .I0(\display/buf_ptr [3]),
    .I1(\display/buf_ptr [2]),
    .I2(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_923_558 ),
    .I3(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_107_559 ),
    .I4(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_922_557 ),
    .I5(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_823_556 ),
    .O(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_47_560 )
  );
  MUXF7   \display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_2_f7_6  (
    .I0(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_47_560 ),
    .I1(\display/Mmux_buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT_37_555 ),
    .S(\display/buf_ptr [4]),
    .O(\display/buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT<7> )
  );
  FDC   \display/four_hz/counter_22  (
    .C(clk),
    .CLR(\display/rst ),
    .D(\display/Result [22]),
    .Q(\display/four_hz/counter [22])
  );
  FDC   \display/four_hz/counter_21  (
    .C(clk),
    .CLR(\display/rst ),
    .D(\display/Result [21]),
    .Q(\display/four_hz/counter [21])
  );
  FDC   \display/four_hz/counter_20  (
    .C(clk),
    .CLR(\display/rst ),
    .D(\display/Result [20]),
    .Q(\display/four_hz/counter [20])
  );
  FDC   \display/four_hz/counter_19  (
    .C(clk),
    .CLR(\display/rst ),
    .D(\display/Result [19]),
    .Q(\display/four_hz/counter [19])
  );
  FDC   \display/four_hz/counter_18  (
    .C(clk),
    .CLR(\display/rst ),
    .D(\display/Result [18]),
    .Q(\display/four_hz/counter [18])
  );
  FDC   \display/four_hz/counter_17  (
    .C(clk),
    .CLR(\display/rst ),
    .D(\display/Result [17]),
    .Q(\display/four_hz/counter [17])
  );
  FDC   \display/four_hz/counter_16  (
    .C(clk),
    .CLR(\display/rst ),
    .D(\display/Result [16]),
    .Q(\display/four_hz/counter [16])
  );
  FDC   \display/four_hz/counter_15  (
    .C(clk),
    .CLR(\display/rst ),
    .D(\display/Result [15]),
    .Q(\display/four_hz/counter [15])
  );
  FDC   \display/four_hz/counter_14  (
    .C(clk),
    .CLR(\display/rst ),
    .D(\display/Result [14]),
    .Q(\display/four_hz/counter [14])
  );
  FDC   \display/four_hz/counter_13  (
    .C(clk),
    .CLR(\display/rst ),
    .D(\display/Result [13]),
    .Q(\display/four_hz/counter [13])
  );
  FDC   \display/four_hz/counter_12  (
    .C(clk),
    .CLR(\display/rst ),
    .D(\display/Result [12]),
    .Q(\display/four_hz/counter [12])
  );
  FDC   \display/four_hz/counter_11  (
    .C(clk),
    .CLR(\display/rst ),
    .D(\display/Result [11]),
    .Q(\display/four_hz/counter [11])
  );
  FDC   \display/four_hz/counter_10  (
    .C(clk),
    .CLR(\display/rst ),
    .D(\display/Result [10]),
    .Q(\display/four_hz/counter [10])
  );
  FDC   \display/four_hz/counter_9  (
    .C(clk),
    .CLR(\display/rst ),
    .D(\display/Result [9]),
    .Q(\display/four_hz/counter [9])
  );
  FDC   \display/four_hz/counter_8  (
    .C(clk),
    .CLR(\display/rst ),
    .D(\display/Result [8]),
    .Q(\display/four_hz/counter [8])
  );
  FDC   \display/four_hz/counter_7  (
    .C(clk),
    .CLR(\display/rst ),
    .D(\display/Result [7]),
    .Q(\display/four_hz/counter [7])
  );
  FDC   \display/four_hz/counter_6  (
    .C(clk),
    .CLR(\display/rst ),
    .D(\display/Result [6]),
    .Q(\display/four_hz/counter [6])
  );
  FDC   \display/four_hz/counter_5  (
    .C(clk),
    .CLR(\display/rst ),
    .D(\display/Result [5]),
    .Q(\display/four_hz/counter [5])
  );
  FDC   \display/four_hz/counter_4  (
    .C(clk),
    .CLR(\display/rst ),
    .D(\display/Result [4]),
    .Q(\display/four_hz/counter [4])
  );
  FDC   \display/four_hz/counter_3  (
    .C(clk),
    .CLR(\display/rst ),
    .D(\display/Result [3]),
    .Q(\display/four_hz/counter [3])
  );
  FDC   \display/four_hz/counter_2  (
    .C(clk),
    .CLR(\display/rst ),
    .D(\display/Result [2]),
    .Q(\display/four_hz/counter [2])
  );
  FDC   \display/four_hz/counter_1  (
    .C(clk),
    .CLR(\display/rst ),
    .D(\display/Result [1]),
    .Q(\display/four_hz/counter [1])
  );
  FDC   \display/four_hz/counter_0  (
    .C(clk),
    .CLR(\display/rst ),
    .D(\display/Result [0]),
    .Q(\display/four_hz/counter [0])
  );
  FDCE   \display/digit0_7  (
    .C(\display/four_hz/counter_22_BUFG_1275 ),
    .CE(\display/_n0393_inv1_1579 ),
    .CLR(\display/rst ),
    .D(\display/buf_len[4]_ascii_buf[0][7]_select_123_OUT<7> ),
    .Q(\display/digit0 [7])
  );
  FDCE   \display/digit0_6  (
    .C(\display/four_hz/counter_22_BUFG_1275 ),
    .CE(\display/_n0393_inv1_1579 ),
    .CLR(\display/rst ),
    .D(\display/buf_len[4]_ascii_buf[0][7]_select_123_OUT<6> ),
    .Q(\display/digit0 [6])
  );
  FDPE   \display/digit0_5  (
    .C(\display/four_hz/counter_22_BUFG_1275 ),
    .CE(\display/_n0393_inv1_1579 ),
    .D(\display/buf_len[4]_ascii_buf[0][7]_select_123_OUT<5> ),
    .PRE(\display/rst ),
    .Q(\display/digit0 [5])
  );
  FDCE   \display/digit0_4  (
    .C(\display/four_hz/counter_22_BUFG_1275 ),
    .CE(\display/_n0393_inv1_1579 ),
    .CLR(\display/rst ),
    .D(\display/buf_len[4]_ascii_buf[0][7]_select_123_OUT<4> ),
    .Q(\display/digit0 [4])
  );
  FDCE   \display/digit0_3  (
    .C(\display/four_hz/counter_22_BUFG_1275 ),
    .CE(\display/_n0393_inv1_1579 ),
    .CLR(\display/rst ),
    .D(\display/buf_len[4]_ascii_buf[0][7]_select_123_OUT<3> ),
    .Q(\display/digit0 [3])
  );
  FDCE   \display/digit0_2  (
    .C(\display/four_hz/counter_22_BUFG_1275 ),
    .CE(\display/_n0393_inv1_1579 ),
    .CLR(\display/rst ),
    .D(\display/buf_len[4]_ascii_buf[0][7]_select_123_OUT<2> ),
    .Q(\display/digit0 [2])
  );
  FDCE   \display/digit0_1  (
    .C(\display/four_hz/counter_22_BUFG_1275 ),
    .CE(\display/_n0393_inv1_1579 ),
    .CLR(\display/rst ),
    .D(\display/buf_len[4]_ascii_buf[0][7]_select_123_OUT<1> ),
    .Q(\display/digit0 [1])
  );
  FDCE   \display/digit0_0  (
    .C(\display/four_hz/counter_22_BUFG_1275 ),
    .CE(\display/_n0393_inv1_1579 ),
    .CLR(\display/rst ),
    .D(\display/buf_len[4]_ascii_buf[0][7]_select_123_OUT<0> ),
    .Q(\display/digit0 [0])
  );
  FDCE   \display/digit1_7  (
    .C(\display/four_hz/counter_22_BUFG_1275 ),
    .CE(\display/_n0393_inv1_1579 ),
    .CLR(\display/rst ),
    .D(\display/buf_len[4]_ascii_buf[1][7]_select_122_OUT<7> ),
    .Q(\display/digit1 [7])
  );
  FDCE   \display/digit1_6  (
    .C(\display/four_hz/counter_22_BUFG_1275 ),
    .CE(\display/_n0393_inv1_1579 ),
    .CLR(\display/rst ),
    .D(\display/buf_len[4]_ascii_buf[1][7]_select_122_OUT<6> ),
    .Q(\display/digit1 [6])
  );
  FDPE   \display/digit1_5  (
    .C(\display/four_hz/counter_22_BUFG_1275 ),
    .CE(\display/_n0393_inv1_1579 ),
    .D(\display/buf_len[4]_ascii_buf[1][7]_select_122_OUT<5> ),
    .PRE(\display/rst ),
    .Q(\display/digit1 [5])
  );
  FDCE   \display/digit1_4  (
    .C(\display/four_hz/counter_22_BUFG_1275 ),
    .CE(\display/_n0393_inv1_1579 ),
    .CLR(\display/rst ),
    .D(\display/buf_len[4]_ascii_buf[1][7]_select_122_OUT<4> ),
    .Q(\display/digit1 [4])
  );
  FDCE   \display/digit1_3  (
    .C(\display/four_hz/counter_22_BUFG_1275 ),
    .CE(\display/_n0393_inv1_1579 ),
    .CLR(\display/rst ),
    .D(\display/buf_len[4]_ascii_buf[1][7]_select_122_OUT<3> ),
    .Q(\display/digit1 [3])
  );
  FDCE   \display/digit1_2  (
    .C(\display/four_hz/counter_22_BUFG_1275 ),
    .CE(\display/_n0393_inv1_1579 ),
    .CLR(\display/rst ),
    .D(\display/buf_len[4]_ascii_buf[1][7]_select_122_OUT<2> ),
    .Q(\display/digit1 [2])
  );
  FDCE   \display/digit1_1  (
    .C(\display/four_hz/counter_22_BUFG_1275 ),
    .CE(\display/_n0393_inv1_1579 ),
    .CLR(\display/rst ),
    .D(\display/buf_len[4]_ascii_buf[1][7]_select_122_OUT<1> ),
    .Q(\display/digit1 [1])
  );
  FDCE   \display/digit1_0  (
    .C(\display/four_hz/counter_22_BUFG_1275 ),
    .CE(\display/_n0393_inv1_1579 ),
    .CLR(\display/rst ),
    .D(\display/buf_len[4]_ascii_buf[1][7]_select_122_OUT<0> ),
    .Q(\display/digit1 [0])
  );
  FDCE   \display/digit3_7  (
    .C(\display/four_hz/counter_22_BUFG_1275 ),
    .CE(\display/_n0393_inv1_1579 ),
    .CLR(\display/rst ),
    .D(\display/buf_len[4]_ascii_buf[3][7]_select_120_OUT<7> ),
    .Q(\display/digit3 [7])
  );
  FDCE   \display/digit3_6  (
    .C(\display/four_hz/counter_22_BUFG_1275 ),
    .CE(\display/_n0393_inv1_1579 ),
    .CLR(\display/rst ),
    .D(\display/buf_len[4]_ascii_buf[3][7]_select_120_OUT<6> ),
    .Q(\display/digit3 [6])
  );
  FDPE   \display/digit3_5  (
    .C(\display/four_hz/counter_22_BUFG_1275 ),
    .CE(\display/_n0393_inv1_1579 ),
    .D(\display/buf_len[4]_ascii_buf[3][7]_select_120_OUT<5> ),
    .PRE(\display/rst ),
    .Q(\display/digit3 [5])
  );
  FDCE   \display/digit3_4  (
    .C(\display/four_hz/counter_22_BUFG_1275 ),
    .CE(\display/_n0393_inv1_1579 ),
    .CLR(\display/rst ),
    .D(\display/buf_len[4]_ascii_buf[3][7]_select_120_OUT<4> ),
    .Q(\display/digit3 [4])
  );
  FDCE   \display/digit3_3  (
    .C(\display/four_hz/counter_22_BUFG_1275 ),
    .CE(\display/_n0393_inv1_1579 ),
    .CLR(\display/rst ),
    .D(\display/buf_len[4]_ascii_buf[3][7]_select_120_OUT<3> ),
    .Q(\display/digit3 [3])
  );
  FDCE   \display/digit3_2  (
    .C(\display/four_hz/counter_22_BUFG_1275 ),
    .CE(\display/_n0393_inv1_1579 ),
    .CLR(\display/rst ),
    .D(\display/buf_len[4]_ascii_buf[3][7]_select_120_OUT<2> ),
    .Q(\display/digit3 [2])
  );
  FDCE   \display/digit3_1  (
    .C(\display/four_hz/counter_22_BUFG_1275 ),
    .CE(\display/_n0393_inv1_1579 ),
    .CLR(\display/rst ),
    .D(\display/buf_len[4]_ascii_buf[3][7]_select_120_OUT<1> ),
    .Q(\display/digit3 [1])
  );
  FDCE   \display/digit3_0  (
    .C(\display/four_hz/counter_22_BUFG_1275 ),
    .CE(\display/_n0393_inv1_1579 ),
    .CLR(\display/rst ),
    .D(\display/buf_len[4]_ascii_buf[3][7]_select_120_OUT<0> ),
    .Q(\display/digit3 [0])
  );
  FDCE   \display/digit2_7  (
    .C(\display/four_hz/counter_22_BUFG_1275 ),
    .CE(\display/_n0393_inv11 ),
    .CLR(\display/rst ),
    .D(\display/buf_len[4]_ascii_buf[2][7]_select_121_OUT<7> ),
    .Q(\display/digit2 [7])
  );
  FDCE   \display/digit2_6  (
    .C(\display/four_hz/counter_22_BUFG_1275 ),
    .CE(\display/_n0393_inv11 ),
    .CLR(\display/rst ),
    .D(\display/buf_len[4]_ascii_buf[2][7]_select_121_OUT<6> ),
    .Q(\display/digit2 [6])
  );
  FDPE   \display/digit2_5  (
    .C(\display/four_hz/counter_22_BUFG_1275 ),
    .CE(\display/_n0393_inv11 ),
    .D(\display/buf_len[4]_ascii_buf[2][7]_select_121_OUT<5> ),
    .PRE(\display/rst ),
    .Q(\display/digit2 [5])
  );
  FDCE   \display/digit2_4  (
    .C(\display/four_hz/counter_22_BUFG_1275 ),
    .CE(\display/_n0393_inv11 ),
    .CLR(\display/rst ),
    .D(\display/buf_len[4]_ascii_buf[2][7]_select_121_OUT<4> ),
    .Q(\display/digit2 [4])
  );
  FDCE   \display/digit2_3  (
    .C(\display/four_hz/counter_22_BUFG_1275 ),
    .CE(\display/_n0393_inv11 ),
    .CLR(\display/rst ),
    .D(\display/buf_len[4]_ascii_buf[2][7]_select_121_OUT<3> ),
    .Q(\display/digit2 [3])
  );
  FDCE   \display/digit2_2  (
    .C(\display/four_hz/counter_22_BUFG_1275 ),
    .CE(\display/_n0393_inv11 ),
    .CLR(\display/rst ),
    .D(\display/buf_len[4]_ascii_buf[2][7]_select_121_OUT<2> ),
    .Q(\display/digit2 [2])
  );
  FDCE   \display/digit2_1  (
    .C(\display/four_hz/counter_22_BUFG_1275 ),
    .CE(\display/_n0393_inv11 ),
    .CLR(\display/rst ),
    .D(\display/buf_len[4]_ascii_buf[2][7]_select_121_OUT<1> ),
    .Q(\display/digit2 [1])
  );
  FDCE   \display/digit2_0  (
    .C(\display/four_hz/counter_22_BUFG_1275 ),
    .CE(\display/_n0393_inv11 ),
    .CLR(\display/rst ),
    .D(\display/buf_len[4]_ascii_buf[2][7]_select_121_OUT<0> ),
    .Q(\display/digit2 [0])
  );
  FDCE   \display/buf_ptr_4  (
    .C(\display/four_hz/counter_22_BUFG_1275 ),
    .CE(\display/_n0393_inv ),
    .CLR(\display/rst ),
    .D(\display/buf_len[4]_GND_5_o_select_124_OUT<4> ),
    .Q(\display/buf_ptr [4])
  );
  FDCE   \display/buf_ptr_3  (
    .C(\display/four_hz/counter_22_BUFG_1275 ),
    .CE(\display/_n0393_inv ),
    .CLR(\display/rst ),
    .D(\display/buf_len[4]_GND_5_o_select_124_OUT<3> ),
    .Q(\display/buf_ptr [3])
  );
  FDCE   \display/buf_ptr_2  (
    .C(\display/four_hz/counter_22_BUFG_1275 ),
    .CE(\display/_n0393_inv ),
    .CLR(\display/rst ),
    .D(\display/buf_len[4]_GND_5_o_select_124_OUT<2> ),
    .Q(\display/buf_ptr [2])
  );
  FDCE   \display/buf_ptr_1  (
    .C(\display/four_hz/counter_22_BUFG_1275 ),
    .CE(\display/_n0393_inv ),
    .CLR(\display/rst ),
    .D(\display/buf_len[4]_GND_5_o_select_124_OUT<1> ),
    .Q(\display/buf_ptr [1])
  );
  FDCE   \display/buf_ptr_0  (
    .C(\display/four_hz/counter_22_BUFG_1275 ),
    .CE(\display/_n0393_inv ),
    .CLR(\display/rst ),
    .D(\display/buf_len[4]_GND_5_o_select_124_OUT<0> ),
    .Q(\display/buf_ptr [0])
  );
  FDRE   \display/buf_len_4  (
    .C(clk),
    .CE(\display/ds_sync1 ),
    .D(\display/buf_len[4]_GND_5_o_mux_42_OUT<4> ),
    .R(\display/Reset_OR_DriverANDClockEnable ),
    .Q(\display/buf_len [4])
  );
  FDRE   \display/buf_len_3  (
    .C(clk),
    .CE(\display/ds_sync1 ),
    .D(\display/buf_len[4]_GND_5_o_mux_42_OUT<3> ),
    .R(\display/Reset_OR_DriverANDClockEnable ),
    .Q(\display/buf_len [3])
  );
  FDRE   \display/buf_len_2  (
    .C(clk),
    .CE(\display/ds_sync1 ),
    .D(\display/buf_len[4]_GND_5_o_mux_42_OUT<2>1_609 ),
    .R(\display/_n0343 ),
    .Q(\display/buf_len [2])
  );
  FDRE   \display/buf_len_1  (
    .C(clk),
    .CE(\display/ds_sync1 ),
    .D(\display/buf_len[4]_GND_5_o_mux_42_OUT<1> ),
    .R(\display/Reset_OR_DriverANDClockEnable ),
    .Q(\display/buf_len [1])
  );
  FDRE   \display/buf_len_0  (
    .C(clk),
    .CE(\display/ds_sync1 ),
    .D(\display/buf_len[4]_GND_5_o_mux_42_OUT<0>1_610 ),
    .R(\display/_n0343 ),
    .Q(\display/buf_len [0])
  );
  FDE   \display/ascii_buf_31_255  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<255> ),
    .Q(\display/ascii_buf_31 [255])
  );
  FDE   \display/ascii_buf_31_254  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<254> ),
    .Q(\display/ascii_buf_31 [254])
  );
  FDE   \display/ascii_buf_31_253  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<253> ),
    .Q(\display/ascii_buf_31 [253])
  );
  FDE   \display/ascii_buf_31_252  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<252> ),
    .Q(\display/ascii_buf_31 [252])
  );
  FDE   \display/ascii_buf_31_251  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<251> ),
    .Q(\display/ascii_buf_31 [251])
  );
  FDE   \display/ascii_buf_31_250  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<250> ),
    .Q(\display/ascii_buf_31 [250])
  );
  FDE   \display/ascii_buf_31_249  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<249> ),
    .Q(\display/ascii_buf_31 [249])
  );
  FDE   \display/ascii_buf_31_248  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<248> ),
    .Q(\display/ascii_buf_31 [248])
  );
  FDE   \display/ascii_buf_31_247  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<247> ),
    .Q(\display/ascii_buf_31 [247])
  );
  FDE   \display/ascii_buf_31_246  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<246> ),
    .Q(\display/ascii_buf_31 [246])
  );
  FDE   \display/ascii_buf_31_245  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<245> ),
    .Q(\display/ascii_buf_31 [245])
  );
  FDE   \display/ascii_buf_31_244  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<244> ),
    .Q(\display/ascii_buf_31 [244])
  );
  FDE   \display/ascii_buf_31_243  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<243> ),
    .Q(\display/ascii_buf_31 [243])
  );
  FDE   \display/ascii_buf_31_242  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<242> ),
    .Q(\display/ascii_buf_31 [242])
  );
  FDE   \display/ascii_buf_31_241  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<241> ),
    .Q(\display/ascii_buf_31 [241])
  );
  FDE   \display/ascii_buf_31_240  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<240> ),
    .Q(\display/ascii_buf_31 [240])
  );
  FDE   \display/ascii_buf_31_239  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<239> ),
    .Q(\display/ascii_buf_31 [239])
  );
  FDE   \display/ascii_buf_31_238  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<238> ),
    .Q(\display/ascii_buf_31 [238])
  );
  FDE   \display/ascii_buf_31_237  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<237> ),
    .Q(\display/ascii_buf_31 [237])
  );
  FDE   \display/ascii_buf_31_236  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<236> ),
    .Q(\display/ascii_buf_31 [236])
  );
  FDE   \display/ascii_buf_31_235  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<235> ),
    .Q(\display/ascii_buf_31 [235])
  );
  FDE   \display/ascii_buf_31_234  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<234> ),
    .Q(\display/ascii_buf_31 [234])
  );
  FDE   \display/ascii_buf_31_233  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<233> ),
    .Q(\display/ascii_buf_31 [233])
  );
  FDE   \display/ascii_buf_31_232  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<232> ),
    .Q(\display/ascii_buf_31 [232])
  );
  FDE   \display/ascii_buf_31_231  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<231> ),
    .Q(\display/ascii_buf_31 [231])
  );
  FDE   \display/ascii_buf_31_230  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<230> ),
    .Q(\display/ascii_buf_31 [230])
  );
  FDE   \display/ascii_buf_31_229  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<229> ),
    .Q(\display/ascii_buf_31 [229])
  );
  FDE   \display/ascii_buf_31_228  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<228> ),
    .Q(\display/ascii_buf_31 [228])
  );
  FDE   \display/ascii_buf_31_227  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<227> ),
    .Q(\display/ascii_buf_31 [227])
  );
  FDE   \display/ascii_buf_31_226  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<226> ),
    .Q(\display/ascii_buf_31 [226])
  );
  FDE   \display/ascii_buf_31_225  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<225> ),
    .Q(\display/ascii_buf_31 [225])
  );
  FDE   \display/ascii_buf_31_224  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<224> ),
    .Q(\display/ascii_buf_31 [224])
  );
  FDE   \display/ascii_buf_31_223  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<223> ),
    .Q(\display/ascii_buf_31 [223])
  );
  FDE   \display/ascii_buf_31_222  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<222> ),
    .Q(\display/ascii_buf_31 [222])
  );
  FDE   \display/ascii_buf_31_221  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<221> ),
    .Q(\display/ascii_buf_31 [221])
  );
  FDE   \display/ascii_buf_31_220  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<220> ),
    .Q(\display/ascii_buf_31 [220])
  );
  FDE   \display/ascii_buf_31_219  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<219> ),
    .Q(\display/ascii_buf_31 [219])
  );
  FDE   \display/ascii_buf_31_218  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<218> ),
    .Q(\display/ascii_buf_31 [218])
  );
  FDE   \display/ascii_buf_31_217  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<217> ),
    .Q(\display/ascii_buf_31 [217])
  );
  FDE   \display/ascii_buf_31_216  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<216> ),
    .Q(\display/ascii_buf_31 [216])
  );
  FDE   \display/ascii_buf_31_215  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<215> ),
    .Q(\display/ascii_buf_31 [215])
  );
  FDE   \display/ascii_buf_31_214  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<214> ),
    .Q(\display/ascii_buf_31 [214])
  );
  FDE   \display/ascii_buf_31_213  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<213> ),
    .Q(\display/ascii_buf_31 [213])
  );
  FDE   \display/ascii_buf_31_212  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<212> ),
    .Q(\display/ascii_buf_31 [212])
  );
  FDE   \display/ascii_buf_31_211  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<211> ),
    .Q(\display/ascii_buf_31 [211])
  );
  FDE   \display/ascii_buf_31_210  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<210> ),
    .Q(\display/ascii_buf_31 [210])
  );
  FDE   \display/ascii_buf_31_209  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<209> ),
    .Q(\display/ascii_buf_31 [209])
  );
  FDE   \display/ascii_buf_31_208  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<208> ),
    .Q(\display/ascii_buf_31 [208])
  );
  FDE   \display/ascii_buf_31_207  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<207> ),
    .Q(\display/ascii_buf_31 [207])
  );
  FDE   \display/ascii_buf_31_206  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<206> ),
    .Q(\display/ascii_buf_31 [206])
  );
  FDE   \display/ascii_buf_31_205  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<205> ),
    .Q(\display/ascii_buf_31 [205])
  );
  FDE   \display/ascii_buf_31_204  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<204> ),
    .Q(\display/ascii_buf_31 [204])
  );
  FDE   \display/ascii_buf_31_203  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<203> ),
    .Q(\display/ascii_buf_31 [203])
  );
  FDE   \display/ascii_buf_31_202  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<202> ),
    .Q(\display/ascii_buf_31 [202])
  );
  FDE   \display/ascii_buf_31_201  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<201> ),
    .Q(\display/ascii_buf_31 [201])
  );
  FDE   \display/ascii_buf_31_200  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<200> ),
    .Q(\display/ascii_buf_31 [200])
  );
  FDE   \display/ascii_buf_31_199  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<199> ),
    .Q(\display/ascii_buf_31 [199])
  );
  FDE   \display/ascii_buf_31_198  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<198> ),
    .Q(\display/ascii_buf_31 [198])
  );
  FDE   \display/ascii_buf_31_197  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<197> ),
    .Q(\display/ascii_buf_31 [197])
  );
  FDE   \display/ascii_buf_31_196  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<196> ),
    .Q(\display/ascii_buf_31 [196])
  );
  FDE   \display/ascii_buf_31_195  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<195> ),
    .Q(\display/ascii_buf_31 [195])
  );
  FDE   \display/ascii_buf_31_194  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<194> ),
    .Q(\display/ascii_buf_31 [194])
  );
  FDE   \display/ascii_buf_31_193  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<193> ),
    .Q(\display/ascii_buf_31 [193])
  );
  FDE   \display/ascii_buf_31_192  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<192> ),
    .Q(\display/ascii_buf_31 [192])
  );
  FDE   \display/ascii_buf_31_191  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<191> ),
    .Q(\display/ascii_buf_31 [191])
  );
  FDE   \display/ascii_buf_31_190  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<190> ),
    .Q(\display/ascii_buf_31 [190])
  );
  FDE   \display/ascii_buf_31_189  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<189> ),
    .Q(\display/ascii_buf_31 [189])
  );
  FDE   \display/ascii_buf_31_188  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<188> ),
    .Q(\display/ascii_buf_31 [188])
  );
  FDE   \display/ascii_buf_31_187  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<187> ),
    .Q(\display/ascii_buf_31 [187])
  );
  FDE   \display/ascii_buf_31_186  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<186> ),
    .Q(\display/ascii_buf_31 [186])
  );
  FDE   \display/ascii_buf_31_185  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<185> ),
    .Q(\display/ascii_buf_31 [185])
  );
  FDE   \display/ascii_buf_31_184  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<184> ),
    .Q(\display/ascii_buf_31 [184])
  );
  FDE   \display/ascii_buf_31_183  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<183> ),
    .Q(\display/ascii_buf_31 [183])
  );
  FDE   \display/ascii_buf_31_182  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<182> ),
    .Q(\display/ascii_buf_31 [182])
  );
  FDE   \display/ascii_buf_31_181  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<181> ),
    .Q(\display/ascii_buf_31 [181])
  );
  FDE   \display/ascii_buf_31_180  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<180> ),
    .Q(\display/ascii_buf_31 [180])
  );
  FDE   \display/ascii_buf_31_179  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<179> ),
    .Q(\display/ascii_buf_31 [179])
  );
  FDE   \display/ascii_buf_31_178  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<178> ),
    .Q(\display/ascii_buf_31 [178])
  );
  FDE   \display/ascii_buf_31_177  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<177> ),
    .Q(\display/ascii_buf_31 [177])
  );
  FDE   \display/ascii_buf_31_176  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<176> ),
    .Q(\display/ascii_buf_31 [176])
  );
  FDE   \display/ascii_buf_31_175  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<175> ),
    .Q(\display/ascii_buf_31 [175])
  );
  FDE   \display/ascii_buf_31_174  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<174> ),
    .Q(\display/ascii_buf_31 [174])
  );
  FDE   \display/ascii_buf_31_173  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<173> ),
    .Q(\display/ascii_buf_31 [173])
  );
  FDE   \display/ascii_buf_31_172  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<172> ),
    .Q(\display/ascii_buf_31 [172])
  );
  FDE   \display/ascii_buf_31_171  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<171> ),
    .Q(\display/ascii_buf_31 [171])
  );
  FDE   \display/ascii_buf_31_170  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<170> ),
    .Q(\display/ascii_buf_31 [170])
  );
  FDE   \display/ascii_buf_31_169  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<169> ),
    .Q(\display/ascii_buf_31 [169])
  );
  FDE   \display/ascii_buf_31_168  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<168> ),
    .Q(\display/ascii_buf_31 [168])
  );
  FDE   \display/ascii_buf_31_167  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<167> ),
    .Q(\display/ascii_buf_31 [167])
  );
  FDE   \display/ascii_buf_31_166  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<166> ),
    .Q(\display/ascii_buf_31 [166])
  );
  FDE   \display/ascii_buf_31_165  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<165> ),
    .Q(\display/ascii_buf_31 [165])
  );
  FDE   \display/ascii_buf_31_164  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<164> ),
    .Q(\display/ascii_buf_31 [164])
  );
  FDE   \display/ascii_buf_31_163  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<163> ),
    .Q(\display/ascii_buf_31 [163])
  );
  FDE   \display/ascii_buf_31_162  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<162> ),
    .Q(\display/ascii_buf_31 [162])
  );
  FDE   \display/ascii_buf_31_161  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<161> ),
    .Q(\display/ascii_buf_31 [161])
  );
  FDE   \display/ascii_buf_31_160  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<160> ),
    .Q(\display/ascii_buf_31 [160])
  );
  FDE   \display/ascii_buf_31_159  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<159> ),
    .Q(\display/ascii_buf_31 [159])
  );
  FDE   \display/ascii_buf_31_158  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<158> ),
    .Q(\display/ascii_buf_31 [158])
  );
  FDE   \display/ascii_buf_31_157  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<157> ),
    .Q(\display/ascii_buf_31 [157])
  );
  FDE   \display/ascii_buf_31_156  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<156> ),
    .Q(\display/ascii_buf_31 [156])
  );
  FDE   \display/ascii_buf_31_155  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<155> ),
    .Q(\display/ascii_buf_31 [155])
  );
  FDE   \display/ascii_buf_31_154  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<154> ),
    .Q(\display/ascii_buf_31 [154])
  );
  FDE   \display/ascii_buf_31_153  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<153> ),
    .Q(\display/ascii_buf_31 [153])
  );
  FDE   \display/ascii_buf_31_152  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<152> ),
    .Q(\display/ascii_buf_31 [152])
  );
  FDE   \display/ascii_buf_31_151  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<151> ),
    .Q(\display/ascii_buf_31 [151])
  );
  FDE   \display/ascii_buf_31_150  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<150> ),
    .Q(\display/ascii_buf_31 [150])
  );
  FDE   \display/ascii_buf_31_149  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<149> ),
    .Q(\display/ascii_buf_31 [149])
  );
  FDE   \display/ascii_buf_31_148  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<148> ),
    .Q(\display/ascii_buf_31 [148])
  );
  FDE   \display/ascii_buf_31_147  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<147> ),
    .Q(\display/ascii_buf_31 [147])
  );
  FDE   \display/ascii_buf_31_146  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<146> ),
    .Q(\display/ascii_buf_31 [146])
  );
  FDE   \display/ascii_buf_31_145  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<145> ),
    .Q(\display/ascii_buf_31 [145])
  );
  FDE   \display/ascii_buf_31_144  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<144> ),
    .Q(\display/ascii_buf_31 [144])
  );
  FDE   \display/ascii_buf_31_143  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<143> ),
    .Q(\display/ascii_buf_31 [143])
  );
  FDE   \display/ascii_buf_31_142  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<142> ),
    .Q(\display/ascii_buf_31 [142])
  );
  FDE   \display/ascii_buf_31_141  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<141> ),
    .Q(\display/ascii_buf_31 [141])
  );
  FDE   \display/ascii_buf_31_140  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<140> ),
    .Q(\display/ascii_buf_31 [140])
  );
  FDE   \display/ascii_buf_31_139  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<139> ),
    .Q(\display/ascii_buf_31 [139])
  );
  FDE   \display/ascii_buf_31_138  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<138> ),
    .Q(\display/ascii_buf_31 [138])
  );
  FDE   \display/ascii_buf_31_137  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<137> ),
    .Q(\display/ascii_buf_31 [137])
  );
  FDE   \display/ascii_buf_31_136  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<136> ),
    .Q(\display/ascii_buf_31 [136])
  );
  FDE   \display/ascii_buf_31_135  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<135> ),
    .Q(\display/ascii_buf_31 [135])
  );
  FDE   \display/ascii_buf_31_134  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<134> ),
    .Q(\display/ascii_buf_31 [134])
  );
  FDE   \display/ascii_buf_31_133  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<133> ),
    .Q(\display/ascii_buf_31 [133])
  );
  FDE   \display/ascii_buf_31_132  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<132> ),
    .Q(\display/ascii_buf_31 [132])
  );
  FDE   \display/ascii_buf_31_131  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<131> ),
    .Q(\display/ascii_buf_31 [131])
  );
  FDE   \display/ascii_buf_31_130  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<130> ),
    .Q(\display/ascii_buf_31 [130])
  );
  FDE   \display/ascii_buf_31_129  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<129> ),
    .Q(\display/ascii_buf_31 [129])
  );
  FDE   \display/ascii_buf_31_128  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<128> ),
    .Q(\display/ascii_buf_31 [128])
  );
  FDE   \display/ascii_buf_31_127  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<127> ),
    .Q(\display/ascii_buf_31 [127])
  );
  FDE   \display/ascii_buf_31_126  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<126> ),
    .Q(\display/ascii_buf_31 [126])
  );
  FDE   \display/ascii_buf_31_125  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<125> ),
    .Q(\display/ascii_buf_31 [125])
  );
  FDE   \display/ascii_buf_31_124  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<124> ),
    .Q(\display/ascii_buf_31 [124])
  );
  FDE   \display/ascii_buf_31_123  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<123> ),
    .Q(\display/ascii_buf_31 [123])
  );
  FDE   \display/ascii_buf_31_122  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<122> ),
    .Q(\display/ascii_buf_31 [122])
  );
  FDE   \display/ascii_buf_31_121  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<121> ),
    .Q(\display/ascii_buf_31 [121])
  );
  FDE   \display/ascii_buf_31_120  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<120> ),
    .Q(\display/ascii_buf_31 [120])
  );
  FDE   \display/ascii_buf_31_119  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<119> ),
    .Q(\display/ascii_buf_31 [119])
  );
  FDE   \display/ascii_buf_31_118  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<118> ),
    .Q(\display/ascii_buf_31 [118])
  );
  FDE   \display/ascii_buf_31_117  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<117> ),
    .Q(\display/ascii_buf_31 [117])
  );
  FDE   \display/ascii_buf_31_116  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<116> ),
    .Q(\display/ascii_buf_31 [116])
  );
  FDE   \display/ascii_buf_31_115  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<115> ),
    .Q(\display/ascii_buf_31 [115])
  );
  FDE   \display/ascii_buf_31_114  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<114> ),
    .Q(\display/ascii_buf_31 [114])
  );
  FDE   \display/ascii_buf_31_113  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<113> ),
    .Q(\display/ascii_buf_31 [113])
  );
  FDE   \display/ascii_buf_31_112  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<112> ),
    .Q(\display/ascii_buf_31 [112])
  );
  FDE   \display/ascii_buf_31_111  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<111> ),
    .Q(\display/ascii_buf_31 [111])
  );
  FDE   \display/ascii_buf_31_110  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<110> ),
    .Q(\display/ascii_buf_31 [110])
  );
  FDE   \display/ascii_buf_31_109  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<109> ),
    .Q(\display/ascii_buf_31 [109])
  );
  FDE   \display/ascii_buf_31_108  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<108> ),
    .Q(\display/ascii_buf_31 [108])
  );
  FDE   \display/ascii_buf_31_107  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<107> ),
    .Q(\display/ascii_buf_31 [107])
  );
  FDE   \display/ascii_buf_31_106  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<106> ),
    .Q(\display/ascii_buf_31 [106])
  );
  FDE   \display/ascii_buf_31_105  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<105> ),
    .Q(\display/ascii_buf_31 [105])
  );
  FDE   \display/ascii_buf_31_104  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<104> ),
    .Q(\display/ascii_buf_31 [104])
  );
  FDE   \display/ascii_buf_31_103  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<103> ),
    .Q(\display/ascii_buf_31 [103])
  );
  FDE   \display/ascii_buf_31_102  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<102> ),
    .Q(\display/ascii_buf_31 [102])
  );
  FDE   \display/ascii_buf_31_101  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<101> ),
    .Q(\display/ascii_buf_31 [101])
  );
  FDE   \display/ascii_buf_31_100  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<100> ),
    .Q(\display/ascii_buf_31 [100])
  );
  FDE   \display/ascii_buf_31_99  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<99> ),
    .Q(\display/ascii_buf_31 [99])
  );
  FDE   \display/ascii_buf_31_98  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<98> ),
    .Q(\display/ascii_buf_31 [98])
  );
  FDE   \display/ascii_buf_31_97  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<97> ),
    .Q(\display/ascii_buf_31 [97])
  );
  FDE   \display/ascii_buf_31_96  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<96> ),
    .Q(\display/ascii_buf_31 [96])
  );
  FDE   \display/ascii_buf_31_95  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<95> ),
    .Q(\display/ascii_buf_31 [95])
  );
  FDE   \display/ascii_buf_31_94  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<94> ),
    .Q(\display/ascii_buf_31 [94])
  );
  FDE   \display/ascii_buf_31_93  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<93> ),
    .Q(\display/ascii_buf_31 [93])
  );
  FDE   \display/ascii_buf_31_92  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<92> ),
    .Q(\display/ascii_buf_31 [92])
  );
  FDE   \display/ascii_buf_31_91  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<91> ),
    .Q(\display/ascii_buf_31 [91])
  );
  FDE   \display/ascii_buf_31_90  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<90> ),
    .Q(\display/ascii_buf_31 [90])
  );
  FDE   \display/ascii_buf_31_89  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<89> ),
    .Q(\display/ascii_buf_31 [89])
  );
  FDE   \display/ascii_buf_31_88  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<88> ),
    .Q(\display/ascii_buf_31 [88])
  );
  FDE   \display/ascii_buf_31_87  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<87> ),
    .Q(\display/ascii_buf_31 [87])
  );
  FDE   \display/ascii_buf_31_86  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<86> ),
    .Q(\display/ascii_buf_31 [86])
  );
  FDE   \display/ascii_buf_31_85  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<85> ),
    .Q(\display/ascii_buf_31 [85])
  );
  FDE   \display/ascii_buf_31_84  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<84> ),
    .Q(\display/ascii_buf_31 [84])
  );
  FDE   \display/ascii_buf_31_83  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<83> ),
    .Q(\display/ascii_buf_31 [83])
  );
  FDE   \display/ascii_buf_31_82  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<82> ),
    .Q(\display/ascii_buf_31 [82])
  );
  FDE   \display/ascii_buf_31_81  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<81> ),
    .Q(\display/ascii_buf_31 [81])
  );
  FDE   \display/ascii_buf_31_80  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<80> ),
    .Q(\display/ascii_buf_31 [80])
  );
  FDE   \display/ascii_buf_31_79  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<79> ),
    .Q(\display/ascii_buf_31 [79])
  );
  FDE   \display/ascii_buf_31_78  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<78> ),
    .Q(\display/ascii_buf_31 [78])
  );
  FDE   \display/ascii_buf_31_77  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<77> ),
    .Q(\display/ascii_buf_31 [77])
  );
  FDE   \display/ascii_buf_31_76  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<76> ),
    .Q(\display/ascii_buf_31 [76])
  );
  FDE   \display/ascii_buf_31_75  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<75> ),
    .Q(\display/ascii_buf_31 [75])
  );
  FDE   \display/ascii_buf_31_74  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<74> ),
    .Q(\display/ascii_buf_31 [74])
  );
  FDE   \display/ascii_buf_31_73  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<73> ),
    .Q(\display/ascii_buf_31 [73])
  );
  FDE   \display/ascii_buf_31_72  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<72> ),
    .Q(\display/ascii_buf_31 [72])
  );
  FDE   \display/ascii_buf_31_71  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<71> ),
    .Q(\display/ascii_buf_31 [71])
  );
  FDE   \display/ascii_buf_31_70  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<70> ),
    .Q(\display/ascii_buf_31 [70])
  );
  FDE   \display/ascii_buf_31_69  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<69> ),
    .Q(\display/ascii_buf_31 [69])
  );
  FDE   \display/ascii_buf_31_68  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<68> ),
    .Q(\display/ascii_buf_31 [68])
  );
  FDE   \display/ascii_buf_31_67  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<67> ),
    .Q(\display/ascii_buf_31 [67])
  );
  FDE   \display/ascii_buf_31_66  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<66> ),
    .Q(\display/ascii_buf_31 [66])
  );
  FDE   \display/ascii_buf_31_65  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<65> ),
    .Q(\display/ascii_buf_31 [65])
  );
  FDE   \display/ascii_buf_31_64  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<64> ),
    .Q(\display/ascii_buf_31 [64])
  );
  FDE   \display/ascii_buf_31_63  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<63> ),
    .Q(\display/ascii_buf_31 [63])
  );
  FDE   \display/ascii_buf_31_62  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<62> ),
    .Q(\display/ascii_buf_31 [62])
  );
  FDE   \display/ascii_buf_31_61  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<61> ),
    .Q(\display/ascii_buf_31 [61])
  );
  FDE   \display/ascii_buf_31_60  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<60> ),
    .Q(\display/ascii_buf_31 [60])
  );
  FDE   \display/ascii_buf_31_59  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<59> ),
    .Q(\display/ascii_buf_31 [59])
  );
  FDE   \display/ascii_buf_31_58  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<58> ),
    .Q(\display/ascii_buf_31 [58])
  );
  FDE   \display/ascii_buf_31_57  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<57> ),
    .Q(\display/ascii_buf_31 [57])
  );
  FDE   \display/ascii_buf_31_56  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<56> ),
    .Q(\display/ascii_buf_31 [56])
  );
  FDE   \display/ascii_buf_31_55  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<55> ),
    .Q(\display/ascii_buf_31 [55])
  );
  FDE   \display/ascii_buf_31_54  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<54> ),
    .Q(\display/ascii_buf_31 [54])
  );
  FDE   \display/ascii_buf_31_53  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<53> ),
    .Q(\display/ascii_buf_31 [53])
  );
  FDE   \display/ascii_buf_31_52  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<52> ),
    .Q(\display/ascii_buf_31 [52])
  );
  FDE   \display/ascii_buf_31_51  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<51> ),
    .Q(\display/ascii_buf_31 [51])
  );
  FDE   \display/ascii_buf_31_50  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<50> ),
    .Q(\display/ascii_buf_31 [50])
  );
  FDE   \display/ascii_buf_31_49  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<49> ),
    .Q(\display/ascii_buf_31 [49])
  );
  FDE   \display/ascii_buf_31_48  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<48> ),
    .Q(\display/ascii_buf_31 [48])
  );
  FDE   \display/ascii_buf_31_47  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<47> ),
    .Q(\display/ascii_buf_31 [47])
  );
  FDE   \display/ascii_buf_31_46  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<46> ),
    .Q(\display/ascii_buf_31 [46])
  );
  FDE   \display/ascii_buf_31_45  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<45> ),
    .Q(\display/ascii_buf_31 [45])
  );
  FDE   \display/ascii_buf_31_44  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<44> ),
    .Q(\display/ascii_buf_31 [44])
  );
  FDE   \display/ascii_buf_31_43  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<43> ),
    .Q(\display/ascii_buf_31 [43])
  );
  FDE   \display/ascii_buf_31_42  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<42> ),
    .Q(\display/ascii_buf_31 [42])
  );
  FDE   \display/ascii_buf_31_41  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<41> ),
    .Q(\display/ascii_buf_31 [41])
  );
  FDE   \display/ascii_buf_31_40  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<40> ),
    .Q(\display/ascii_buf_31 [40])
  );
  FDE   \display/ascii_buf_31_39  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<39> ),
    .Q(\display/ascii_buf_31 [39])
  );
  FDE   \display/ascii_buf_31_38  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<38> ),
    .Q(\display/ascii_buf_31 [38])
  );
  FDE   \display/ascii_buf_31_37  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<37> ),
    .Q(\display/ascii_buf_31 [37])
  );
  FDE   \display/ascii_buf_31_36  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<36> ),
    .Q(\display/ascii_buf_31 [36])
  );
  FDE   \display/ascii_buf_31_35  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<35> ),
    .Q(\display/ascii_buf_31 [35])
  );
  FDE   \display/ascii_buf_31_34  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<34> ),
    .Q(\display/ascii_buf_31 [34])
  );
  FDE   \display/ascii_buf_31_33  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<33> ),
    .Q(\display/ascii_buf_31 [33])
  );
  FDE   \display/ascii_buf_31_32  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<32> ),
    .Q(\display/ascii_buf_31 [32])
  );
  FDE   \display/ascii_buf_31_31  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<31> ),
    .Q(\display/ascii_buf_31 [31])
  );
  FDE   \display/ascii_buf_31_30  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<30> ),
    .Q(\display/ascii_buf_31 [30])
  );
  FDE   \display/ascii_buf_31_29  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<29> ),
    .Q(\display/ascii_buf_31 [29])
  );
  FDE   \display/ascii_buf_31_28  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<28> ),
    .Q(\display/ascii_buf_31 [28])
  );
  FDE   \display/ascii_buf_31_27  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<27> ),
    .Q(\display/ascii_buf_31 [27])
  );
  FDE   \display/ascii_buf_31_26  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<26> ),
    .Q(\display/ascii_buf_31 [26])
  );
  FDE   \display/ascii_buf_31_25  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<25> ),
    .Q(\display/ascii_buf_31 [25])
  );
  FDE   \display/ascii_buf_31_24  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<24> ),
    .Q(\display/ascii_buf_31 [24])
  );
  FDE   \display/ascii_buf_31_23  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<23> ),
    .Q(\display/ascii_buf_31 [23])
  );
  FDE   \display/ascii_buf_31_22  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<22> ),
    .Q(\display/ascii_buf_31 [22])
  );
  FDE   \display/ascii_buf_31_21  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<21> ),
    .Q(\display/ascii_buf_31 [21])
  );
  FDE   \display/ascii_buf_31_20  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<20> ),
    .Q(\display/ascii_buf_31 [20])
  );
  FDE   \display/ascii_buf_31_19  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<19> ),
    .Q(\display/ascii_buf_31 [19])
  );
  FDE   \display/ascii_buf_31_18  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<18> ),
    .Q(\display/ascii_buf_31 [18])
  );
  FDE   \display/ascii_buf_31_17  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<17> ),
    .Q(\display/ascii_buf_31 [17])
  );
  FDE   \display/ascii_buf_31_16  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<16> ),
    .Q(\display/ascii_buf_31 [16])
  );
  FDE   \display/ascii_buf_31_15  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<15> ),
    .Q(\display/ascii_buf_31 [15])
  );
  FDE   \display/ascii_buf_31_14  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<14> ),
    .Q(\display/ascii_buf_31 [14])
  );
  FDE   \display/ascii_buf_31_13  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<13> ),
    .Q(\display/ascii_buf_31 [13])
  );
  FDE   \display/ascii_buf_31_12  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<12> ),
    .Q(\display/ascii_buf_31 [12])
  );
  FDE   \display/ascii_buf_31_11  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<11> ),
    .Q(\display/ascii_buf_31 [11])
  );
  FDE   \display/ascii_buf_31_10  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<10> ),
    .Q(\display/ascii_buf_31 [10])
  );
  FDE   \display/ascii_buf_31_9  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<9> ),
    .Q(\display/ascii_buf_31 [9])
  );
  FDE   \display/ascii_buf_31_8  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<8> ),
    .Q(\display/ascii_buf_31 [8])
  );
  FDE   \display/ascii_buf_31_7  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<7> ),
    .Q(\display/ascii_buf_31 [7])
  );
  FDE   \display/ascii_buf_31_6  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<6> ),
    .Q(\display/ascii_buf_31 [6])
  );
  FDE   \display/ascii_buf_31_5  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<5> ),
    .Q(\display/ascii_buf_31 [5])
  );
  FDE   \display/ascii_buf_31_4  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<4> ),
    .Q(\display/ascii_buf_31 [4])
  );
  FDE   \display/ascii_buf_31_3  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<3> ),
    .Q(\display/ascii_buf_31 [3])
  );
  FDE   \display/ascii_buf_31_2  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<2> ),
    .Q(\display/ascii_buf_31 [2])
  );
  FDE   \display/ascii_buf_31_1  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<1> ),
    .Q(\display/ascii_buf_31 [1])
  );
  FDE   \display/ascii_buf_31_0  (
    .C(clk),
    .CE(\display/_n0432_inv ),
    .D(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<0> ),
    .Q(\display/ascii_buf_31 [0])
  );
  FDR   \display/ds_sreg_1  (
    .C(clk),
    .D(\display/ds_sreg [0]),
    .R(\display/rst ),
    .Q(\display/ds_sreg [1])
  );
  FDR   \display/ds_sreg_0  (
    .C(clk),
    .D(data_in_37),
    .R(\display/rst ),
    .Q(\display/ds_sreg [0])
  );
  FDR   \display/clr_sreg_1  (
    .C(clk),
    .D(\display/clr_sreg [0]),
    .R(\display/rst ),
    .Q(\display/clr_sreg [1])
  );
  FDR   \display/clr_sreg_0  (
    .C(clk),
    .D(\display/clearn_INV_16_o ),
    .R(\display/rst ),
    .Q(\display/clr_sreg [0])
  );
  FDC   \display/display/display_cnt_1  (
    .C(\display/four_hz/counter [14]),
    .CLR(\display/rst ),
    .D(\display/display/Result [1]),
    .Q(\display/display/display_cnt [1])
  );
  FDC   \display/display/display_cnt_0  (
    .C(\display/four_hz/counter [14]),
    .CLR(\display/rst ),
    .D(\display/display/Result [0]),
    .Q(\display/display/display_cnt [0])
  );
  FDP   \display/display/segments_7  (
    .C(\display/four_hz/counter [14]),
    .D(\display/display/display_cnt[1]_digit3[7]_wide_mux_224_OUT<7> ),
    .PRE(\display/rst ),
    .Q(\display/display/segments [7])
  );
  FDC   \display/display/segments_6  (
    .C(\display/four_hz/counter [14]),
    .CLR(\display/rst ),
    .D(\display/display/display_cnt[1]_digit3[7]_wide_mux_224_OUT<6> ),
    .Q(\display/display/segments [6])
  );
  FDP   \display/display/segments_5  (
    .C(\display/four_hz/counter [14]),
    .D(\display/display/display_cnt[1]_digit3[7]_wide_mux_224_OUT<5> ),
    .PRE(\display/rst ),
    .Q(\display/display/segments [5])
  );
  FDP   \display/display/segments_4  (
    .C(\display/four_hz/counter [14]),
    .D(\display/display/display_cnt[1]_digit3[7]_wide_mux_224_OUT<4> ),
    .PRE(\display/rst ),
    .Q(\display/display/segments [4])
  );
  FDP   \display/display/segments_3  (
    .C(\display/four_hz/counter [14]),
    .D(\display/display/display_cnt[1]_digit3[7]_wide_mux_224_OUT<3> ),
    .PRE(\display/rst ),
    .Q(\display/display/segments [3])
  );
  FDP   \display/display/segments_2  (
    .C(\display/four_hz/counter [14]),
    .D(\display/display/display_cnt[1]_digit3[7]_wide_mux_224_OUT<2> ),
    .PRE(\display/rst ),
    .Q(\display/display/segments [2])
  );
  FDP   \display/display/segments_1  (
    .C(\display/four_hz/counter [14]),
    .D(\display/display/display_cnt[1]_digit3[7]_wide_mux_224_OUT<1> ),
    .PRE(\display/rst ),
    .Q(\display/display/segments [1])
  );
  FDP   \display/display/segments_0  (
    .C(\display/four_hz/counter [14]),
    .D(\display/display/display_cnt[1]_digit3[7]_wide_mux_224_OUT<0> ),
    .PRE(\display/rst ),
    .Q(\display/display/segments [0])
  );
  FDP   \display/display/digit_select_3  (
    .C(\display/four_hz/counter [14]),
    .D(\display/display/Mram_display_cnt[1]_GND_6_o_wide_mux_225_OUT3 ),
    .PRE(\display/rst ),
    .Q(\display/display/digit_select [3])
  );
  FDP   \display/display/digit_select_2  (
    .C(\display/four_hz/counter [14]),
    .D(\display/display/Mram_display_cnt[1]_GND_6_o_wide_mux_225_OUT2 ),
    .PRE(\display/rst ),
    .Q(\display/display/digit_select [2])
  );
  FDP   \display/display/digit_select_1  (
    .C(\display/four_hz/counter [14]),
    .D(\display/display/Mram_display_cnt[1]_GND_6_o_wide_mux_225_OUT1 ),
    .PRE(\display/rst ),
    .Q(\display/display/digit_select [1])
  );
  FDP   \display/display/digit_select_0  (
    .C(\display/four_hz/counter [14]),
    .D(\display/display/Mram_display_cnt[1]_GND_6_o_wide_mux_225_OUT ),
    .PRE(\display/rst ),
    .Q(\display/display/digit_select [0])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \ready_reg<1>1  (
    .I0(rstn_IBUF_2),
    .I1(ready_reg[1]),
    .O(\ready_reg<1>_0 )
  );
  LUT3 #(
    .INIT ( 8'hBF ))
  ready_pulse_inv1_01 (
    .I0(ready_reg[1]),
    .I1(ready_reg[0]),
    .I2(rstn_IBUF_2),
    .O(ready_pulse_inv1_0)
  );
  LUT6 #(
    .INIT ( 64'h1540154015400000 ))
  \uart/Mmux_rx_state[2]_GND_3_o_wide_mux_41_OUT31  (
    .I0(\uart/rx_state_FSM_FFd1_174 ),
    .I1(\uart/sample_counter [0]),
    .I2(\uart/sample_counter [1]),
    .I3(\uart/sample_counter [2]),
    .I4(\uart/rx_state_FSM_FFd3_172 ),
    .I5(\uart/rx_state_FSM_FFd2_173 ),
    .O(\uart/rx_state[2]_GND_3_o_wide_mux_41_OUT<2> )
  );
  LUT5 #(
    .INIT ( 32'h41404100 ))
  \uart/Mmux_rx_state[2]_GND_3_o_wide_mux_41_OUT41  (
    .I0(\uart/rx_state_FSM_FFd1_174 ),
    .I1(\uart/sample_counter [3]),
    .I2(\uart/rx_state_FSM_FFd3-In2 ),
    .I3(\uart/rx_state_FSM_FFd2_173 ),
    .I4(\uart/rx_state_FSM_FFd3_172 ),
    .O(\uart/rx_state[2]_GND_3_o_wide_mux_41_OUT<3> )
  );
  LUT5 #(
    .INIT ( 32'h14141400 ))
  \uart/Mmux_rx_state[2]_GND_3_o_wide_mux_41_OUT21  (
    .I0(\uart/rx_state_FSM_FFd1_174 ),
    .I1(\uart/sample_counter [0]),
    .I2(\uart/sample_counter [1]),
    .I3(\uart/rx_state_FSM_FFd3_172 ),
    .I4(\uart/rx_state_FSM_FFd2_173 ),
    .O(\uart/rx_state[2]_GND_3_o_wide_mux_41_OUT<1> )
  );
  LUT4 #(
    .INIT ( 16'h1110 ))
  \uart/Mmux_rx_state[2]_GND_3_o_wide_mux_41_OUT11  (
    .I0(\uart/sample_counter [0]),
    .I1(\uart/rx_state_FSM_FFd1_174 ),
    .I2(\uart/rx_state_FSM_FFd3_172 ),
    .I3(\uart/rx_state_FSM_FFd2_173 ),
    .O(\uart/rx_state[2]_GND_3_o_wide_mux_41_OUT<0> )
  );
  LUT6 #(
    .INIT ( 64'h7F807F807F800000 ))
  \uart/Mmux__n021941  (
    .I0(\uart/tx_counter [0]),
    .I1(\uart/tx_counter [1]),
    .I2(\uart/tx_counter [2]),
    .I3(\uart/tx_counter [3]),
    .I4(\uart/tx_state_FSM_FFd1_161 ),
    .I5(\uart/tx_state_FSM_FFd2_111 ),
    .O(\uart/_n0219 [3])
  );
  LUT5 #(
    .INIT ( 32'h78787800 ))
  \uart/Mmux__n021931  (
    .I0(\uart/tx_counter [0]),
    .I1(\uart/tx_counter [1]),
    .I2(\uart/tx_counter [2]),
    .I3(\uart/tx_state_FSM_FFd1_161 ),
    .I4(\uart/tx_state_FSM_FFd2_111 ),
    .O(\uart/_n0219 [2])
  );
  LUT4 #(
    .INIT ( 16'h6660 ))
  \uart/Mmux__n021921  (
    .I0(\uart/tx_counter [0]),
    .I1(\uart/tx_counter [1]),
    .I2(\uart/tx_state_FSM_FFd1_161 ),
    .I3(\uart/tx_state_FSM_FFd2_111 ),
    .O(\uart/_n0219 [1])
  );
  LUT3 #(
    .INIT ( 8'h54 ))
  \uart/Mmux__n021911  (
    .I0(\uart/tx_counter [0]),
    .I1(\uart/tx_state_FSM_FFd1_161 ),
    .I2(\uart/tx_state_FSM_FFd2_111 ),
    .O(\uart/_n0219 [0])
  );
  LUT5 #(
    .INIT ( 32'h01000000 ))
  \uart/Mmux_rx_state[2]_GND_3_o_wide_mux_37_OUT121  (
    .I0(\uart/bit_counter [0]),
    .I1(\uart/bit_counter [1]),
    .I2(\uart/rx_state_FSM_FFd1_174 ),
    .I3(\uart/rx_state_FSM_FFd2_173 ),
    .I4(\uart/rx_bit_185 ),
    .O(\uart/Mmux_rx_state[2]_GND_3_o_wide_mux_37_OUT12 )
  );
  LUT5 #(
    .INIT ( 32'h04000000 ))
  \uart/Mmux_rx_state[2]_GND_3_o_wide_mux_37_OUT311  (
    .I0(\uart/bit_counter [0]),
    .I1(\uart/bit_counter [1]),
    .I2(\uart/rx_state_FSM_FFd1_174 ),
    .I3(\uart/rx_state_FSM_FFd2_173 ),
    .I4(\uart/rx_bit_185 ),
    .O(\uart/Mmux_rx_state[2]_GND_3_o_wide_mux_37_OUT31_57 )
  );
  LUT5 #(
    .INIT ( 32'h04000000 ))
  \uart/Mmux_rx_state[2]_GND_3_o_wide_mux_37_OUT211  (
    .I0(\uart/bit_counter [1]),
    .I1(\uart/bit_counter [0]),
    .I2(\uart/rx_state_FSM_FFd1_174 ),
    .I3(\uart/rx_state_FSM_FFd2_173 ),
    .I4(\uart/rx_bit_185 ),
    .O(\uart/Mmux_rx_state[2]_GND_3_o_wide_mux_37_OUT21_58 )
  );
  LUT6 #(
    .INIT ( 64'h80888088A2888088 ))
  \uart/Mmux_GND_3_o_clk_divide_tx[7]_mux_50_OUT61  (
    .I0(\uart/tx_ready_held_187 ),
    .I1(\uart/clk_divide_tx [5]),
    .I2(\uart/Mmux_GND_3_o_clk_divide_tx[7]_mux_50_OUT511 ),
    .I3(\uart/clk_divide_tx [4]),
    .I4(\uart/clk_divide_tx [3]),
    .I5(\uart/Mmux_GND_3_o_clk_divide_tx[7]_mux_50_OUT41 ),
    .O(\uart/GND_3_o_clk_divide_tx[7]_mux_50_OUT<5> )
  );
  LUT6 #(
    .INIT ( 64'h80808088A280A288 ))
  \uart/Mmux_GND_3_o_clk_divide_tx[7]_mux_50_OUT51  (
    .I0(\uart/tx_ready_held_187 ),
    .I1(\uart/clk_divide_tx [4]),
    .I2(\uart/Mmux_GND_3_o_clk_divide_tx[7]_mux_50_OUT511 ),
    .I3(\uart/clk_divide_tx [3]),
    .I4(\uart/clk_divide_tx [5]),
    .I5(\uart/Mmux_GND_3_o_clk_divide_tx[7]_mux_50_OUT41 ),
    .O(\uart/GND_3_o_clk_divide_tx[7]_mux_50_OUT<4> )
  );
  LUT6 #(
    .INIT ( 64'h8888888828888888 ))
  \uart/Mmux_GND_3_o_clk_divide_tx[7]_mux_50_OUT71  (
    .I0(\uart/tx_ready_held_187 ),
    .I1(\uart/clk_divide_tx [6]),
    .I2(\uart/clk_divide_tx [5]),
    .I3(\uart/clk_divide_tx [3]),
    .I4(\uart/clk_divide_tx [4]),
    .I5(\uart/Mmux_GND_3_o_clk_divide_tx[7]_mux_50_OUT41 ),
    .O(\uart/GND_3_o_clk_divide_tx[7]_mux_50_OUT<6> )
  );
  LUT5 #(
    .INIT ( 32'h80000000 ))
  \uart/Mmux__n0237111  (
    .I0(\uart/tx_counter [3]),
    .I1(\uart/tx_state_FSM_FFd2_111 ),
    .I2(\uart/tx_counter [2]),
    .I3(\uart/tx_counter [0]),
    .I4(\uart/tx_counter [1]),
    .O(\uart/Mmux__n023711_62 )
  );
  LUT6 #(
    .INIT ( 64'h7F7F7F7EFFFFFFFF ))
  \uart/Mmux_GND_3_o_clk_divide_tx[7]_mux_50_OUT5111  (
    .I0(\uart/clk_divide_tx [1]),
    .I1(\uart/clk_divide_tx [3]),
    .I2(\uart/clk_divide_tx [0]),
    .I3(\uart/clk_divide_tx [7]),
    .I4(\uart/clk_divide_tx [6]),
    .I5(\uart/clk_divide_tx [2]),
    .O(\uart/Mmux_GND_3_o_clk_divide_tx[7]_mux_50_OUT511 )
  );
  LUT6 #(
    .INIT ( 64'h0020200200202020 ))
  \uart/Mmux_rx_state[2]_GND_3_o_wide_mux_40_OUT21  (
    .I0(\uart/rx_state_FSM_FFd2_173 ),
    .I1(\uart/rx_state_FSM_FFd1_174 ),
    .I2(\uart/bit_counter [1]),
    .I3(\uart/rx_state_FSM_FFd3_172 ),
    .I4(\uart/rx_state_FSM_FFd3-In3_63 ),
    .I5(\uart/bit_counter [0]),
    .O(\uart/rx_state[2]_GND_3_o_wide_mux_40_OUT<1> )
  );
  LUT4 #(
    .INIT ( 16'h999D ))
  \uart/_n0270_inv1  (
    .I0(\uart/rx_state_FSM_FFd1_174 ),
    .I1(\uart/rx_state_FSM_FFd2_173 ),
    .I2(\uart/rx_state_FSM_FFd3_172 ),
    .I3(\uart/rx_state_FSM_FFd3-In3_63 ),
    .O(\uart/_n0270_inv )
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \uart/Mmux_GND_3_o_clk_divide_tx[7]_mux_50_OUT21  (
    .I0(\uart/tx_ready_held_187 ),
    .I1(\uart/clk_divide_tx [0]),
    .I2(\uart/clk_divide_tx [1]),
    .O(\uart/GND_3_o_clk_divide_tx[7]_mux_50_OUT<1> )
  );
  LUT5 #(
    .INIT ( 32'hD5888088 ))
  \uart/Mmux__n022821  (
    .I0(\uart/tx_bit_counter [1]),
    .I1(\uart/tx_state_FSM_FFd2_111 ),
    .I2(\uart/Mmux__n022811 ),
    .I3(\uart/tx_bit_counter [0]),
    .I4(\uart/Mmux__n023711_62 ),
    .O(\uart/_n0228 [1])
  );
  LUT5 #(
    .INIT ( 32'h22222000 ))
  \uart/Mmux_rx_state[2]_GND_3_o_wide_mux_37_OUT81  (
    .I0(\uart/rx_state_FSM_FFd2_173 ),
    .I1(\uart/rx_state_FSM_FFd1_174 ),
    .I2(\uart/rx_bit_185 ),
    .I3(\uart/rx_state_FSM_FFd3-In51 ),
    .I4(\uart/rx_byte [7]),
    .O(\uart/rx_state[2]_GND_3_o_wide_mux_37_OUT<7> )
  );
  LUT5 #(
    .INIT ( 32'hEA404040 ))
  \uart/Mmux__n022813  (
    .I0(\uart/tx_bit_counter [0]),
    .I1(\uart/Mmux__n023711_62 ),
    .I2(\uart/Mmux__n022812 ),
    .I3(\uart/Mmux__n022811 ),
    .I4(\uart/tx_state_FSM_FFd2_111 ),
    .O(\uart/_n0228 [0])
  );
  LUT3 #(
    .INIT ( 8'hFB ))
  \uart/Mmux__n0228121  (
    .I0(\uart/tx_bit_counter [2]),
    .I1(\uart/tx_state_FSM_FFd1_161 ),
    .I2(\uart/tx_bit_counter [1]),
    .O(\uart/Mmux__n022812 )
  );
  LUT6 #(
    .INIT ( 64'hD588888880888888 ))
  \uart/Mmux__n022831  (
    .I0(\uart/tx_bit_counter [2]),
    .I1(\uart/tx_state_FSM_FFd2_111 ),
    .I2(\uart/Mmux__n022811 ),
    .I3(\uart/tx_bit_counter [1]),
    .I4(\uart/tx_bit_counter [0]),
    .I5(\uart/Mmux__n023711_62 ),
    .O(\uart/_n0228 [2])
  );
  LUT6 #(
    .INIT ( 64'hAAA8AAA8FFFFAAA8 ))
  \uart/tx_state_FSM_FFd2-In1  (
    .I0(\uart/tx_state_FSM_FFd2_111 ),
    .I1(\uart/Mmux__n022812 ),
    .I2(\uart/tx_bit_counter [0]),
    .I3(\uart/Mmux__n022811 ),
    .I4(\uart/tx_ready_held_187 ),
    .I5(\uart/tx_state_FSM_FFd1_161 ),
    .O(\uart/tx_state_FSM_FFd2-In )
  );
  LUT6 #(
    .INIT ( 64'h1000000000000000 ))
  \uart/Mcount_clk_divide_val12  (
    .I0(\uart/clk_divide [0]),
    .I1(\uart/clk_divide [1]),
    .I2(\uart/clk_divide [2]),
    .I3(\uart/clk_divide [4]),
    .I4(\uart/clk_divide [5]),
    .I5(\uart/Mcount_clk_divide_val11 ),
    .O(\uart/Mcount_clk_divide_val1_61 )
  );
  LUT6 #(
    .INIT ( 64'h0000000800000000 ))
  \uart/clk_divide[7]_GND_3_o_equal_2_o<7>1  (
    .I0(\uart/clk_divide [0]),
    .I1(\uart/clk_divide [1]),
    .I2(\uart/clk_divide [2]),
    .I3(\uart/clk_divide [4]),
    .I4(\uart/clk_divide [5]),
    .I5(\uart/Mcount_clk_divide_val11 ),
    .O(\uart/clk_divide[7]_GND_3_o_equal_2_o )
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \uart/Mcount_clk_divide_val111  (
    .I0(\uart/clk_divide [6]),
    .I1(\uart/clk_divide [3]),
    .I2(\uart/clk_divide [7]),
    .O(\uart/Mcount_clk_divide_val11 )
  );
  LUT5 #(
    .INIT ( 32'h4444F444 ))
  \uart/Mmux_rx_state[2]_GND_3_o_wide_mux_37_OUT11  (
    .I0(\uart/bit_counter [2]),
    .I1(\uart/Mmux_rx_state[2]_GND_3_o_wide_mux_37_OUT12 ),
    .I2(\uart/rx_state_FSM_FFd2_173 ),
    .I3(\uart/rx_byte [0]),
    .I4(\uart/rx_state_FSM_FFd1_174 ),
    .O(\uart/rx_state[2]_GND_3_o_wide_mux_37_OUT<0> )
  );
  LUT5 #(
    .INIT ( 32'h8888F888 ))
  \uart/Mmux_rx_state[2]_GND_3_o_wide_mux_37_OUT51  (
    .I0(\uart/Mmux_rx_state[2]_GND_3_o_wide_mux_37_OUT12 ),
    .I1(\uart/bit_counter [2]),
    .I2(\uart/rx_byte [4]),
    .I3(\uart/rx_state_FSM_FFd2_173 ),
    .I4(\uart/rx_state_FSM_FFd1_174 ),
    .O(\uart/rx_state[2]_GND_3_o_wide_mux_37_OUT<4> )
  );
  LUT5 #(
    .INIT ( 32'h4444F444 ))
  \uart/Mmux_rx_state[2]_GND_3_o_wide_mux_37_OUT31  (
    .I0(\uart/bit_counter [2]),
    .I1(\uart/Mmux_rx_state[2]_GND_3_o_wide_mux_37_OUT31_57 ),
    .I2(\uart/rx_state_FSM_FFd2_173 ),
    .I3(\uart/rx_byte [2]),
    .I4(\uart/rx_state_FSM_FFd1_174 ),
    .O(\uart/rx_state[2]_GND_3_o_wide_mux_37_OUT<2> )
  );
  LUT5 #(
    .INIT ( 32'h8888F888 ))
  \uart/Mmux_rx_state[2]_GND_3_o_wide_mux_37_OUT71  (
    .I0(\uart/Mmux_rx_state[2]_GND_3_o_wide_mux_37_OUT31_57 ),
    .I1(\uart/bit_counter [2]),
    .I2(\uart/rx_byte [6]),
    .I3(\uart/rx_state_FSM_FFd2_173 ),
    .I4(\uart/rx_state_FSM_FFd1_174 ),
    .O(\uart/rx_state[2]_GND_3_o_wide_mux_37_OUT<6> )
  );
  LUT5 #(
    .INIT ( 32'h4444F444 ))
  \uart/Mmux_rx_state[2]_GND_3_o_wide_mux_37_OUT21  (
    .I0(\uart/bit_counter [2]),
    .I1(\uart/Mmux_rx_state[2]_GND_3_o_wide_mux_37_OUT21_58 ),
    .I2(\uart/rx_state_FSM_FFd2_173 ),
    .I3(\uart/rx_byte [1]),
    .I4(\uart/rx_state_FSM_FFd1_174 ),
    .O(\uart/rx_state[2]_GND_3_o_wide_mux_37_OUT<1> )
  );
  LUT5 #(
    .INIT ( 32'h8888F888 ))
  \uart/Mmux_rx_state[2]_GND_3_o_wide_mux_37_OUT61  (
    .I0(\uart/Mmux_rx_state[2]_GND_3_o_wide_mux_37_OUT21_58 ),
    .I1(\uart/bit_counter [2]),
    .I2(\uart/rx_byte [5]),
    .I3(\uart/rx_state_FSM_FFd2_173 ),
    .I4(\uart/rx_state_FSM_FFd1_174 ),
    .O(\uart/rx_state[2]_GND_3_o_wide_mux_37_OUT<5> )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \uart/rx_state_FSM_FFd3-In511  (
    .I0(\uart/bit_counter [0]),
    .I1(\uart/bit_counter [1]),
    .I2(\uart/bit_counter [2]),
    .O(\uart/rx_state_FSM_FFd3-In51 )
  );
  LUT3 #(
    .INIT ( 8'h7F ))
  \uart/Mmux_GND_3_o_clk_divide_tx[7]_mux_50_OUT411  (
    .I0(\uart/clk_divide_tx [2]),
    .I1(\uart/clk_divide_tx [0]),
    .I2(\uart/clk_divide_tx [1]),
    .O(\uart/Mmux_GND_3_o_clk_divide_tx[7]_mux_50_OUT41 )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \uart/Mcount_clk_divide_val1  (
    .I0(rstn_IBUF_2),
    .I1(\uart/Mcount_clk_divide_val1_61 ),
    .O(\uart/Mcount_clk_divide_val )
  );
  LUT4 #(
    .INIT ( 16'h7FFF ))
  \uart/rx_state_FSM_FFd3-In31  (
    .I0(\uart/sample_counter [2]),
    .I1(\uart/sample_counter [3]),
    .I2(\uart/sample_counter [0]),
    .I3(\uart/sample_counter [1]),
    .O(\uart/rx_state_FSM_FFd3-In3_63 )
  );
  LUT3 #(
    .INIT ( 8'h7F ))
  \uart/rx_state_FSM_FFd3-In21  (
    .I0(\uart/sample_counter [2]),
    .I1(\uart/sample_counter [0]),
    .I2(\uart/sample_counter [1]),
    .O(\uart/rx_state_FSM_FFd3-In2 )
  );
  LUT4 #(
    .INIT ( 16'h7FFF ))
  \uart/Mmux__n0228111  (
    .I0(\uart/tx_counter [2]),
    .I1(\uart/tx_counter [3]),
    .I2(\uart/tx_counter [0]),
    .I3(\uart/tx_counter [1]),
    .O(\uart/Mmux__n022811 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFFFBF ))
  \uart/sample_locked_rx_state[2]_AND_1_o_inv11  (
    .I0(\uart/rx_state_FSM_FFd2_173 ),
    .I1(rstn_IBUF_2),
    .I2(\uart/sample_locked_184 ),
    .I3(\uart/rx_state_FSM_FFd1_174 ),
    .I4(\uart/rx_state_FSM_FFd3_172 ),
    .O(\uart/sample_locked_rx_state[2]_AND_1_o_inv_0 )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \uart/Mmux__n024611  (
    .I0(tx_send[0]),
    .I1(\uart/tx_ready_held_187 ),
    .I2(\uart/tx_state_FSM_FFd1_161 ),
    .O(\uart/_n0246 [0])
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \uart/Mmux__n024621  (
    .I0(tx_send[1]),
    .I1(\uart/tx_ready_held_187 ),
    .I2(\uart/tx_state_FSM_FFd1_161 ),
    .O(\uart/_n0246 [1])
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \uart/Mmux__n024631  (
    .I0(tx_send[2]),
    .I1(\uart/tx_ready_held_187 ),
    .I2(\uart/tx_state_FSM_FFd1_161 ),
    .O(\uart/_n0246 [2])
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \uart/Mmux__n024641  (
    .I0(tx_send[3]),
    .I1(\uart/tx_ready_held_187 ),
    .I2(\uart/tx_state_FSM_FFd1_161 ),
    .O(\uart/_n0246 [3])
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \uart/Mmux__n024651  (
    .I0(tx_send[4]),
    .I1(\uart/tx_ready_held_187 ),
    .I2(\uart/tx_state_FSM_FFd1_161 ),
    .O(\uart/_n0246 [4])
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \uart/Mmux__n024661  (
    .I0(tx_send[5]),
    .I1(\uart/tx_ready_held_187 ),
    .I2(\uart/tx_state_FSM_FFd1_161 ),
    .O(\uart/_n0246 [5])
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \uart/Mmux__n024671  (
    .I0(tx_send[6]),
    .I1(\uart/tx_ready_held_187 ),
    .I2(\uart/tx_state_FSM_FFd1_161 ),
    .O(\uart/_n0246 [6])
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \uart/Mmux__n024681  (
    .I0(tx_send[7]),
    .I1(\uart/tx_ready_held_187 ),
    .I2(\uart/tx_state_FSM_FFd1_161 ),
    .O(\uart/_n0246 [7])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \uart/rx_state__n0297<0>1  (
    .I0(\uart/rx_state_FSM_FFd3_172 ),
    .I1(\uart/rx_state_FSM_FFd1_174 ),
    .O(\uart/rx_state[2]_GND_3_o_Mux_38_o )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \uart/rx_state__n0297<1>1  (
    .I0(\uart/rx_state_FSM_FFd3_172 ),
    .I1(\uart/rx_state_FSM_FFd1_174 ),
    .O(\uart/rx_state[2]_GND_3_o_Mux_39_o )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \uart/tx_ready_01  (
    .I0(rstn_IBUF_2),
    .I1(tx_ready_34),
    .O(\uart/tx_ready_0 )
  );
  LUT6 #(
    .INIT ( 64'hEAAAEA2AAAAAAAAA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<26>1  (
    .I0(\display/ascii_buf_31 [26]),
    .I1(\display/buf_len [4]),
    .I2(\display/buf_len [3]),
    .I3(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<106>1 ),
    .I4(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<0>11 ),
    .I5(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT17 ),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<26> )
  );
  LUT6 #(
    .INIT ( 64'hEAAAEA2AAAAAAAAA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<30>1  (
    .I0(\display/ascii_buf_31 [30]),
    .I1(\display/buf_len [4]),
    .I2(\display/buf_len [3]),
    .I3(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<102>1 ),
    .I4(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<0>11 ),
    .I5(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT17 ),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<30> )
  );
  LUT6 #(
    .INIT ( 64'hEAAAEA2AAAAAAAAA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<27>1  (
    .I0(\display/ascii_buf_31 [27]),
    .I1(\display/buf_len [4]),
    .I2(\display/buf_len [3]),
    .I3(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<243>1 ),
    .I4(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<0>11 ),
    .I5(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT17 ),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<27> )
  );
  LUT6 #(
    .INIT ( 64'hEAAAEA2AAAAAAAAA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<24>1  (
    .I0(\display/ascii_buf_31 [24]),
    .I1(\display/buf_len [4]),
    .I2(\display/buf_len [3]),
    .I3(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<224>2 ),
    .I4(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<0>11 ),
    .I5(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT17 ),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<24> )
  );
  LUT6 #(
    .INIT ( 64'hEAAAEA2AAAAAAAAA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<25>1  (
    .I0(\display/ascii_buf_31 [25]),
    .I1(\display/buf_len [4]),
    .I2(\display/buf_len [3]),
    .I3(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<225>1 ),
    .I4(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<0>11 ),
    .I5(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT17 ),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<25> )
  );
  LUT6 #(
    .INIT ( 64'hEAAAEA2AAAAAAAAA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<28>1  (
    .I0(\display/ascii_buf_31 [28]),
    .I1(\display/buf_len [4]),
    .I2(\display/buf_len [3]),
    .I3(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<220>2 ),
    .I4(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<0>11 ),
    .I5(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT17 ),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<28> )
  );
  LUT6 #(
    .INIT ( 64'hEAAAEA2AAAAAAAAA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<29>1  (
    .I0(\display/ascii_buf_31 [29]),
    .I1(\display/buf_len [4]),
    .I2(\display/buf_len [3]),
    .I3(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<221>1 ),
    .I4(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<0>11 ),
    .I5(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT17 ),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<29> )
  );
  LUT6 #(
    .INIT ( 64'hEAAAEA2AAAAAAAAA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<31>1  (
    .I0(\display/ascii_buf_31 [31]),
    .I1(\display/buf_len [4]),
    .I2(\display/buf_len [3]),
    .I3(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<223>1 ),
    .I4(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<0>11 ),
    .I5(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT17 ),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<31> )
  );
  LUT6 #(
    .INIT ( 64'hAEAAAEA2AAAAAAAA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<90>1  (
    .I0(\display/ascii_buf_31 [90]),
    .I1(\display/buf_len [4]),
    .I2(\display/buf_len [3]),
    .I3(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<106>1 ),
    .I4(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<0>11 ),
    .I5(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT17 ),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<90> )
  );
  LUT6 #(
    .INIT ( 64'hAEAAAEA2AAAAAAAA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<94>1  (
    .I0(\display/ascii_buf_31 [94]),
    .I1(\display/buf_len [4]),
    .I2(\display/buf_len [3]),
    .I3(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<102>1 ),
    .I4(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<0>11 ),
    .I5(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT17 ),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<94> )
  );
  LUT6 #(
    .INIT ( 64'hAEAAAEA2AAAAAAAA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<91>1  (
    .I0(\display/ascii_buf_31 [91]),
    .I1(\display/buf_len [4]),
    .I2(\display/buf_len [3]),
    .I3(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<243>1 ),
    .I4(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<0>11 ),
    .I5(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT17 ),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<91> )
  );
  LUT6 #(
    .INIT ( 64'hAEAAAEA2AAAAAAAA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<88>1  (
    .I0(\display/ascii_buf_31 [88]),
    .I1(\display/buf_len [4]),
    .I2(\display/buf_len [3]),
    .I3(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<224>2 ),
    .I4(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<0>11 ),
    .I5(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT17 ),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<88> )
  );
  LUT6 #(
    .INIT ( 64'hAEAAAEA2AAAAAAAA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<89>1  (
    .I0(\display/ascii_buf_31 [89]),
    .I1(\display/buf_len [4]),
    .I2(\display/buf_len [3]),
    .I3(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<225>1 ),
    .I4(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<0>11 ),
    .I5(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT17 ),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<89> )
  );
  LUT6 #(
    .INIT ( 64'hAEAAAEA2AAAAAAAA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<92>1  (
    .I0(\display/ascii_buf_31 [92]),
    .I1(\display/buf_len [4]),
    .I2(\display/buf_len [3]),
    .I3(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<220>2 ),
    .I4(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<0>11 ),
    .I5(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT17 ),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<92> )
  );
  LUT6 #(
    .INIT ( 64'hAEAAAEA2AAAAAAAA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<93>1  (
    .I0(\display/ascii_buf_31 [93]),
    .I1(\display/buf_len [4]),
    .I2(\display/buf_len [3]),
    .I3(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<221>1 ),
    .I4(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<0>11 ),
    .I5(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT17 ),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<93> )
  );
  LUT6 #(
    .INIT ( 64'hAEAAAEA2AAAAAAAA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<95>1  (
    .I0(\display/ascii_buf_31 [95]),
    .I1(\display/buf_len [4]),
    .I2(\display/buf_len [3]),
    .I3(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<223>1 ),
    .I4(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<0>11 ),
    .I5(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT17 ),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<95> )
  );
  LUT6 #(
    .INIT ( 64'hBAAABA8AAAAAAAAA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<154>1  (
    .I0(\display/ascii_buf_31 [154]),
    .I1(\display/buf_len [4]),
    .I2(\display/buf_len [3]),
    .I3(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<106>1 ),
    .I4(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<0>11 ),
    .I5(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT17 ),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<154> )
  );
  LUT6 #(
    .INIT ( 64'hBAAABA8AAAAAAAAA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<158>1  (
    .I0(\display/ascii_buf_31 [158]),
    .I1(\display/buf_len [4]),
    .I2(\display/buf_len [3]),
    .I3(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<102>1 ),
    .I4(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<0>11 ),
    .I5(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT17 ),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<158> )
  );
  LUT6 #(
    .INIT ( 64'hBAAABA8AAAAAAAAA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<155>1  (
    .I0(\display/ascii_buf_31 [155]),
    .I1(\display/buf_len [4]),
    .I2(\display/buf_len [3]),
    .I3(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<243>1 ),
    .I4(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<0>11 ),
    .I5(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT17 ),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<155> )
  );
  LUT6 #(
    .INIT ( 64'hBAAABA8AAAAAAAAA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<152>1  (
    .I0(\display/ascii_buf_31 [152]),
    .I1(\display/buf_len [4]),
    .I2(\display/buf_len [3]),
    .I3(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<224>2 ),
    .I4(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<0>11 ),
    .I5(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT17 ),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<152> )
  );
  LUT6 #(
    .INIT ( 64'hBAAABA8AAAAAAAAA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<153>1  (
    .I0(\display/ascii_buf_31 [153]),
    .I1(\display/buf_len [4]),
    .I2(\display/buf_len [3]),
    .I3(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<225>1 ),
    .I4(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<0>11 ),
    .I5(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT17 ),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<153> )
  );
  LUT6 #(
    .INIT ( 64'hBAAABA8AAAAAAAAA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<156>1  (
    .I0(\display/ascii_buf_31 [156]),
    .I1(\display/buf_len [4]),
    .I2(\display/buf_len [3]),
    .I3(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<220>2 ),
    .I4(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<0>11 ),
    .I5(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT17 ),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<156> )
  );
  LUT6 #(
    .INIT ( 64'hBAAABA8AAAAAAAAA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<157>1  (
    .I0(\display/ascii_buf_31 [157]),
    .I1(\display/buf_len [4]),
    .I2(\display/buf_len [3]),
    .I3(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<221>1 ),
    .I4(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<0>11 ),
    .I5(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT17 ),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<157> )
  );
  LUT6 #(
    .INIT ( 64'hBAAABA8AAAAAAAAA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<159>1  (
    .I0(\display/ascii_buf_31 [159]),
    .I1(\display/buf_len [4]),
    .I2(\display/buf_len [3]),
    .I3(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<223>1 ),
    .I4(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<0>11 ),
    .I5(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT17 ),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<159> )
  );
  LUT5 #(
    .INIT ( 32'h888A8880 ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<255>1  (
    .I0(rstn_IBUF_2),
    .I1(\uart/rx_byte [7]),
    .I2(\display/buf_len[4]_Decoder_9_OUT<0> ),
    .I3(\display/init_1013 ),
    .I4(\display/ascii_buf_31 [255]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<255> )
  );
  LUT5 #(
    .INIT ( 32'h888A8880 ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<253>1  (
    .I0(rstn_IBUF_2),
    .I1(\uart/rx_byte [5]),
    .I2(\display/buf_len[4]_Decoder_9_OUT<0> ),
    .I3(\display/init_1013 ),
    .I4(\display/ascii_buf_31 [253]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<253> )
  );
  LUT5 #(
    .INIT ( 32'h888A8880 ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<252>1  (
    .I0(rstn_IBUF_2),
    .I1(\uart/rx_byte [4]),
    .I2(\display/buf_len[4]_Decoder_9_OUT<0> ),
    .I3(\display/init_1013 ),
    .I4(\display/ascii_buf_31 [252]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<252> )
  );
  LUT5 #(
    .INIT ( 32'h888A8880 ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<250>1  (
    .I0(rstn_IBUF_2),
    .I1(\uart/rx_byte [2]),
    .I2(\display/buf_len[4]_Decoder_9_OUT<0> ),
    .I3(\display/init_1013 ),
    .I4(\display/ascii_buf_31 [250]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<250> )
  );
  LUT5 #(
    .INIT ( 32'h888A8880 ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<249>1  (
    .I0(rstn_IBUF_2),
    .I1(\uart/rx_byte [1]),
    .I2(\display/buf_len[4]_Decoder_9_OUT<0> ),
    .I3(\display/init_1013 ),
    .I4(\display/ascii_buf_31 [249]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<249> )
  );
  LUT5 #(
    .INIT ( 32'h888A8880 ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<248>1  (
    .I0(rstn_IBUF_2),
    .I1(\uart/rx_byte [0]),
    .I2(\display/buf_len[4]_Decoder_9_OUT<0> ),
    .I3(\display/init_1013 ),
    .I4(\display/ascii_buf_31 [248]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<248> )
  );
  LUT5 #(
    .INIT ( 32'hABA8FFFF ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<251>1  (
    .I0(\uart/rx_byte [3]),
    .I1(\display/init_1013 ),
    .I2(\display/buf_len[4]_Decoder_9_OUT<0> ),
    .I3(\display/ascii_buf_31 [251]),
    .I4(rstn_IBUF_2),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<251> )
  );
  LUT5 #(
    .INIT ( 32'hABA8FFFF ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<254>1  (
    .I0(\uart/rx_byte [6]),
    .I1(\display/init_1013 ),
    .I2(\display/buf_len[4]_Decoder_9_OUT<0> ),
    .I3(\display/ascii_buf_31 [254]),
    .I4(rstn_IBUF_2),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<254> )
  );
  LUT5 #(
    .INIT ( 32'hBA8AFFFF ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<240>1  (
    .I0(\display/ascii_buf_31 [240]),
    .I1(\display/init_1013 ),
    .I2(\display/buf_len[4]_Decoder_9_OUT<1> ),
    .I3(\uart/rx_byte [0]),
    .I4(rstn_IBUF_2),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<240> )
  );
  LUT5 #(
    .INIT ( 32'hBA8AFFFF ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<242>1  (
    .I0(\display/ascii_buf_31 [242]),
    .I1(\display/init_1013 ),
    .I2(\display/buf_len[4]_Decoder_9_OUT<1> ),
    .I3(\uart/rx_byte [2]),
    .I4(rstn_IBUF_2),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<242> )
  );
  LUT5 #(
    .INIT ( 32'hBA8AFFFF ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<246>1  (
    .I0(\display/ascii_buf_31 [246]),
    .I1(\display/init_1013 ),
    .I2(\display/buf_len[4]_Decoder_9_OUT<1> ),
    .I3(\uart/rx_byte [6]),
    .I4(rstn_IBUF_2),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<246> )
  );
  LUT5 #(
    .INIT ( 32'hBA8AFFFF ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<234>1  (
    .I0(\display/ascii_buf_31 [234]),
    .I1(\display/init_1013 ),
    .I2(\display/buf_len[4]_Decoder_9_OUT<2> ),
    .I3(\uart/rx_byte [2]),
    .I4(rstn_IBUF_2),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<234> )
  );
  LUT5 #(
    .INIT ( 32'hBA8AFFFF ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<235>1  (
    .I0(\display/ascii_buf_31 [235]),
    .I1(\display/init_1013 ),
    .I2(\display/buf_len[4]_Decoder_9_OUT<2> ),
    .I3(\uart/rx_byte [3]),
    .I4(rstn_IBUF_2),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<235> )
  );
  LUT5 #(
    .INIT ( 32'hBA8AFFFF ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<238>1  (
    .I0(\display/ascii_buf_31 [238]),
    .I1(\display/init_1013 ),
    .I2(\display/buf_len[4]_Decoder_9_OUT<2> ),
    .I3(\uart/rx_byte [6]),
    .I4(rstn_IBUF_2),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<238> )
  );
  LUT5 #(
    .INIT ( 32'hBA8AFFFF ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<226>1  (
    .I0(\display/ascii_buf_31 [226]),
    .I1(\display/init_1013 ),
    .I2(\display/buf_len[4]_Decoder_9_OUT<3> ),
    .I3(\uart/rx_byte [2]),
    .I4(rstn_IBUF_2),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<226> )
  );
  LUT5 #(
    .INIT ( 32'hBA8AFFFF ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<227>1  (
    .I0(\display/ascii_buf_31 [227]),
    .I1(\display/init_1013 ),
    .I2(\display/buf_len[4]_Decoder_9_OUT<3> ),
    .I3(\uart/rx_byte [3]),
    .I4(rstn_IBUF_2),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<227> )
  );
  LUT5 #(
    .INIT ( 32'hBA8AFFFF ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<230>1  (
    .I0(\display/ascii_buf_31 [230]),
    .I1(\display/init_1013 ),
    .I2(\display/buf_len[4]_Decoder_9_OUT<3> ),
    .I3(\uart/rx_byte [6]),
    .I4(rstn_IBUF_2),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<230> )
  );
  LUT5 #(
    .INIT ( 32'hBA8AFFFF ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<216>1  (
    .I0(\display/ascii_buf_31 [216]),
    .I1(\display/init_1013 ),
    .I2(\display/buf_len[4]_Decoder_9_OUT<4> ),
    .I3(\uart/rx_byte [0]),
    .I4(rstn_IBUF_2),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<216> )
  );
  LUT5 #(
    .INIT ( 32'hBA8AFFFF ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<217>1  (
    .I0(\display/ascii_buf_31 [217]),
    .I1(\display/init_1013 ),
    .I2(\display/buf_len[4]_Decoder_9_OUT<4> ),
    .I3(\uart/rx_byte [1]),
    .I4(rstn_IBUF_2),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<217> )
  );
  LUT5 #(
    .INIT ( 32'hBA8AFFFF ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<218>1  (
    .I0(\display/ascii_buf_31 [218]),
    .I1(\display/init_1013 ),
    .I2(\display/buf_len[4]_Decoder_9_OUT<4> ),
    .I3(\uart/rx_byte [2]),
    .I4(rstn_IBUF_2),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<218> )
  );
  LUT5 #(
    .INIT ( 32'hBA8AFFFF ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<219>1  (
    .I0(\display/ascii_buf_31 [219]),
    .I1(\display/init_1013 ),
    .I2(\display/buf_len[4]_Decoder_9_OUT<4> ),
    .I3(\uart/rx_byte [3]),
    .I4(rstn_IBUF_2),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<219> )
  );
  LUT5 #(
    .INIT ( 32'hBA8AFFFF ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<222>1  (
    .I0(\display/ascii_buf_31 [222]),
    .I1(\display/init_1013 ),
    .I2(\display/buf_len[4]_Decoder_9_OUT<4> ),
    .I3(\uart/rx_byte [6]),
    .I4(rstn_IBUF_2),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<222> )
  );
  LUT5 #(
    .INIT ( 32'h00000100 ))
  \display/buf_len[4]_Decoder_9_OUT<1><4>1  (
    .I0(\display/buf_len [3]),
    .I1(\display/buf_len [4]),
    .I2(\display/buf_len [2]),
    .I3(\display/buf_len [0]),
    .I4(\display/buf_len [1]),
    .O(\display/buf_len[4]_Decoder_9_OUT<1> )
  );
  LUT5 #(
    .INIT ( 32'h01000000 ))
  \display/buf_len[4]_Decoder_9_OUT<9><4>1  (
    .I0(\display/buf_len [4]),
    .I1(\display/buf_len [2]),
    .I2(\display/buf_len [1]),
    .I3(\display/buf_len [0]),
    .I4(\display/buf_len [3]),
    .O(\display/buf_len[4]_Decoder_9_OUT<9> )
  );
  LUT5 #(
    .INIT ( 32'h01000000 ))
  \display/buf_len[4]_Decoder_9_OUT<17><4>1  (
    .I0(\display/buf_len [3]),
    .I1(\display/buf_len [2]),
    .I2(\display/buf_len [1]),
    .I3(\display/buf_len [0]),
    .I4(\display/buf_len [4]),
    .O(\display/buf_len[4]_Decoder_9_OUT<17> )
  );
  LUT5 #(
    .INIT ( 32'h04000000 ))
  \display/buf_len[4]_Decoder_9_OUT<25><4>1  (
    .I0(\display/buf_len [2]),
    .I1(\display/buf_len [3]),
    .I2(\display/buf_len [1]),
    .I3(\display/buf_len [0]),
    .I4(\display/buf_len [4]),
    .O(\display/buf_len[4]_Decoder_9_OUT<25> )
  );
  LUT4 #(
    .INIT ( 16'hAAA9 ))
  \display/Msub_GND_5_o_GND_5_o_sub_78_OUT<4:0>_xor<4>11  (
    .I0(\display/buf_ptr [4]),
    .I1(\display/buf_ptr [3]),
    .I2(\display/buf_ptr [2]),
    .I3(\display/buf_ptr [1]),
    .O(\display/GND_5_o_GND_5_o_sub_78_OUT [4])
  );
  LUT3 #(
    .INIT ( 8'hC9 ))
  \display/Msub_GND_5_o_GND_5_o_sub_78_OUT<4:0>_xor<3>11  (
    .I0(\display/buf_ptr [2]),
    .I1(\display/buf_ptr [3]),
    .I2(\display/buf_ptr [1]),
    .O(\display/GND_5_o_GND_5_o_sub_78_OUT [3])
  );
  LUT5 #(
    .INIT ( 32'hF0F0F087 ))
  \display/Msub_GND_5_o_GND_5_o_sub_85_OUT<4:0>_xor<4>11  (
    .I0(\display/buf_ptr_1_4_1571 ),
    .I1(\display/buf_ptr_0_5_1577 ),
    .I2(\display/buf_ptr [4]),
    .I3(\display/buf_ptr [2]),
    .I4(\display/buf_ptr [3]),
    .O(\display/GND_5_o_GND_5_o_sub_85_OUT [4])
  );
  LUT4 #(
    .INIT ( 16'hF087 ))
  \display/Msub_GND_5_o_GND_5_o_sub_85_OUT<4:0>_xor<3>11  (
    .I0(\display/buf_ptr_0_2_1562 ),
    .I1(\display/buf_ptr_1_4_1571 ),
    .I2(\display/buf_ptr [3]),
    .I3(\display/buf_ptr [2]),
    .O(\display/GND_5_o_GND_5_o_sub_85_OUT [3])
  );
  LUT5 #(
    .INIT ( 32'hF0F0F0E1 ))
  \display/Msub_GND_5_o_GND_5_o_sub_69_OUT<4:0>_xor<4>11  (
    .I0(\display/buf_ptr_1_4_1571 ),
    .I1(\display/buf_ptr_0_5_1577 ),
    .I2(\display/buf_ptr [4]),
    .I3(\display/buf_ptr [2]),
    .I4(\display/buf_ptr [3]),
    .O(\display/GND_5_o_GND_5_o_sub_69_OUT [4])
  );
  LUT4 #(
    .INIT ( 16'hAAA9 ))
  \display/Msub_GND_5_o_GND_5_o_sub_69_OUT<4:0>_xor<3>11  (
    .I0(\display/buf_ptr_3_3_1573 ),
    .I1(\display/buf_ptr_2_3_1578 ),
    .I2(\display/buf_ptr_1_2_1560 ),
    .I3(\display/buf_ptr_0_2_1562 ),
    .O(\display/GND_5_o_GND_5_o_sub_69_OUT [3])
  );
  LUT5 #(
    .INIT ( 32'h01000000 ))
  \display/buf_len[4]_Decoder_9_OUT<18><4>1  (
    .I0(\display/buf_len [0]),
    .I1(\display/buf_len [3]),
    .I2(\display/buf_len [2]),
    .I3(\display/buf_len [1]),
    .I4(\display/buf_len [4]),
    .O(\display/buf_len[4]_Decoder_9_OUT<18> )
  );
  LUT5 #(
    .INIT ( 32'h04000000 ))
  \display/buf_len[4]_Decoder_9_OUT<19><4>1  (
    .I0(\display/buf_len [3]),
    .I1(\display/buf_len [0]),
    .I2(\display/buf_len [2]),
    .I3(\display/buf_len [1]),
    .I4(\display/buf_len [4]),
    .O(\display/buf_len[4]_Decoder_9_OUT<19> )
  );
  LUT5 #(
    .INIT ( 32'h04000000 ))
  \display/buf_len[4]_Decoder_9_OUT<26><4>1  (
    .I0(\display/buf_len [0]),
    .I1(\display/buf_len [3]),
    .I2(\display/buf_len [2]),
    .I3(\display/buf_len [1]),
    .I4(\display/buf_len [4]),
    .O(\display/buf_len[4]_Decoder_9_OUT<26> )
  );
  LUT5 #(
    .INIT ( 32'h08000000 ))
  \display/buf_len[4]_Decoder_9_OUT<27><4>1  (
    .I0(\display/buf_len [0]),
    .I1(\display/buf_len [3]),
    .I2(\display/buf_len [2]),
    .I3(\display/buf_len [1]),
    .I4(\display/buf_len [4]),
    .O(\display/buf_len[4]_Decoder_9_OUT<27> )
  );
  LUT5 #(
    .INIT ( 32'h04000000 ))
  \display/buf_len[4]_Decoder_9_OUT<7><4>1  (
    .I0(\display/buf_len [3]),
    .I1(\display/buf_len [2]),
    .I2(\display/buf_len [4]),
    .I3(\display/buf_len [1]),
    .I4(\display/buf_len [0]),
    .O(\display/buf_len[4]_Decoder_9_OUT<7> )
  );
  LUT5 #(
    .INIT ( 32'h08000000 ))
  \display/buf_len[4]_Decoder_9_OUT<15><4>1  (
    .I0(\display/buf_len [2]),
    .I1(\display/buf_len [3]),
    .I2(\display/buf_len [4]),
    .I3(\display/buf_len [1]),
    .I4(\display/buf_len [0]),
    .O(\display/buf_len[4]_Decoder_9_OUT<15> )
  );
  LUT5 #(
    .INIT ( 32'h08000000 ))
  \display/buf_len[4]_Decoder_9_OUT<23><4>1  (
    .I0(\display/buf_len [2]),
    .I1(\display/buf_len [4]),
    .I2(\display/buf_len [3]),
    .I3(\display/buf_len [1]),
    .I4(\display/buf_len [0]),
    .O(\display/buf_len[4]_Decoder_9_OUT<23> )
  );
  LUT5 #(
    .INIT ( 32'h80000000 ))
  \display/buf_len[4]_Decoder_9_OUT<31><4>1  (
    .I0(\display/buf_len [3]),
    .I1(\display/buf_len [4]),
    .I2(\display/buf_len [2]),
    .I3(\display/buf_len [1]),
    .I4(\display/buf_len [0]),
    .O(\display/buf_len[4]_Decoder_9_OUT<31> )
  );
  LUT5 #(
    .INIT ( 32'h01000000 ))
  \display/buf_len[4]_Decoder_9_OUT<6><4>1  (
    .I0(\display/buf_len [3]),
    .I1(\display/buf_len [4]),
    .I2(\display/buf_len [0]),
    .I3(\display/buf_len [1]),
    .I4(\display/buf_len [2]),
    .O(\display/buf_len[4]_Decoder_9_OUT<6> )
  );
  LUT5 #(
    .INIT ( 32'h04000000 ))
  \display/buf_len[4]_Decoder_9_OUT<14><4>1  (
    .I0(\display/buf_len [4]),
    .I1(\display/buf_len [2]),
    .I2(\display/buf_len [0]),
    .I3(\display/buf_len [1]),
    .I4(\display/buf_len [3]),
    .O(\display/buf_len[4]_Decoder_9_OUT<14> )
  );
  LUT5 #(
    .INIT ( 32'h04000000 ))
  \display/buf_len[4]_Decoder_9_OUT<22><4>1  (
    .I0(\display/buf_len [3]),
    .I1(\display/buf_len [2]),
    .I2(\display/buf_len [0]),
    .I3(\display/buf_len [1]),
    .I4(\display/buf_len [4]),
    .O(\display/buf_len[4]_Decoder_9_OUT<22> )
  );
  LUT5 #(
    .INIT ( 32'h08000000 ))
  \display/buf_len[4]_Decoder_9_OUT<30><4>1  (
    .I0(\display/buf_len [2]),
    .I1(\display/buf_len [4]),
    .I2(\display/buf_len [0]),
    .I3(\display/buf_len [1]),
    .I4(\display/buf_len [3]),
    .O(\display/buf_len[4]_Decoder_9_OUT<30> )
  );
  LUT5 #(
    .INIT ( 32'h01000000 ))
  \display/buf_len[4]_Decoder_9_OUT<5><4>1  (
    .I0(\display/buf_len [3]),
    .I1(\display/buf_len [4]),
    .I2(\display/buf_len [1]),
    .I3(\display/buf_len [2]),
    .I4(\display/buf_len [0]),
    .O(\display/buf_len[4]_Decoder_9_OUT<5> )
  );
  LUT5 #(
    .INIT ( 32'h04000000 ))
  \display/buf_len[4]_Decoder_9_OUT<13><4>1  (
    .I0(\display/buf_len [4]),
    .I1(\display/buf_len [2]),
    .I2(\display/buf_len [1]),
    .I3(\display/buf_len [3]),
    .I4(\display/buf_len [0]),
    .O(\display/buf_len[4]_Decoder_9_OUT<13> )
  );
  LUT5 #(
    .INIT ( 32'h04000000 ))
  \display/buf_len[4]_Decoder_9_OUT<21><4>1  (
    .I0(\display/buf_len [3]),
    .I1(\display/buf_len [2]),
    .I2(\display/buf_len [1]),
    .I3(\display/buf_len [4]),
    .I4(\display/buf_len [0]),
    .O(\display/buf_len[4]_Decoder_9_OUT<21> )
  );
  LUT5 #(
    .INIT ( 32'h08000000 ))
  \display/buf_len[4]_Decoder_9_OUT<29><4>1  (
    .I0(\display/buf_len [2]),
    .I1(\display/buf_len [4]),
    .I2(\display/buf_len [1]),
    .I3(\display/buf_len [3]),
    .I4(\display/buf_len [0]),
    .O(\display/buf_len[4]_Decoder_9_OUT<29> )
  );
  LUT5 #(
    .INIT ( 32'h00000100 ))
  \display/buf_len[4]_Decoder_9_OUT<2><4>1  (
    .I0(\display/buf_len [0]),
    .I1(\display/buf_len [3]),
    .I2(\display/buf_len [2]),
    .I3(\display/buf_len [1]),
    .I4(\display/buf_len [4]),
    .O(\display/buf_len[4]_Decoder_9_OUT<2> )
  );
  LUT5 #(
    .INIT ( 32'h01000000 ))
  \display/buf_len[4]_Decoder_9_OUT<3><4>1  (
    .I0(\display/buf_len [3]),
    .I1(\display/buf_len [2]),
    .I2(\display/buf_len [4]),
    .I3(\display/buf_len [1]),
    .I4(\display/buf_len [0]),
    .O(\display/buf_len[4]_Decoder_9_OUT<3> )
  );
  LUT5 #(
    .INIT ( 32'h01000000 ))
  \display/buf_len[4]_Decoder_9_OUT<10><4>1  (
    .I0(\display/buf_len [0]),
    .I1(\display/buf_len [2]),
    .I2(\display/buf_len [4]),
    .I3(\display/buf_len [1]),
    .I4(\display/buf_len [3]),
    .O(\display/buf_len[4]_Decoder_9_OUT<10> )
  );
  LUT5 #(
    .INIT ( 32'h04000000 ))
  \display/buf_len[4]_Decoder_9_OUT<11><4>1  (
    .I0(\display/buf_len [2]),
    .I1(\display/buf_len [0]),
    .I2(\display/buf_len [4]),
    .I3(\display/buf_len [1]),
    .I4(\display/buf_len [3]),
    .O(\display/buf_len[4]_Decoder_9_OUT<11> )
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  \display/buf_len[4]_Decoder_9_OUT<0><4>1  (
    .I0(\display/buf_len [3]),
    .I1(\display/buf_len [4]),
    .I2(\display/buf_len [2]),
    .I3(\display/buf_len [1]),
    .I4(\display/buf_len [0]),
    .O(\display/buf_len[4]_Decoder_9_OUT<0> )
  );
  LUT5 #(
    .INIT ( 32'h00000100 ))
  \display/buf_len[4]_Decoder_9_OUT<8><4>1  (
    .I0(\display/buf_len [4]),
    .I1(\display/buf_len [2]),
    .I2(\display/buf_len [1]),
    .I3(\display/buf_len [3]),
    .I4(\display/buf_len [0]),
    .O(\display/buf_len[4]_Decoder_9_OUT<8> )
  );
  LUT5 #(
    .INIT ( 32'h00000100 ))
  \display/buf_len[4]_Decoder_9_OUT<16><4>1  (
    .I0(\display/buf_len [3]),
    .I1(\display/buf_len [2]),
    .I2(\display/buf_len [1]),
    .I3(\display/buf_len [4]),
    .I4(\display/buf_len [0]),
    .O(\display/buf_len[4]_Decoder_9_OUT<16> )
  );
  LUT5 #(
    .INIT ( 32'h01000000 ))
  \display/buf_len[4]_Decoder_9_OUT<24><4>1  (
    .I0(\display/buf_len [2]),
    .I1(\display/buf_len [1]),
    .I2(\display/buf_len [0]),
    .I3(\display/buf_len [4]),
    .I4(\display/buf_len [3]),
    .O(\display/buf_len[4]_Decoder_9_OUT<24> )
  );
  LUT3 #(
    .INIT ( 8'h95 ))
  \display/Msub_GND_5_o_GND_5_o_sub_85_OUT<4:0>_xor<2>11  (
    .I0(\display/buf_ptr_2_3_1578 ),
    .I1(\display/buf_ptr_1_2_1560 ),
    .I2(\display/buf_ptr_0_2_1562 ),
    .O(\display/GND_5_o_GND_5_o_sub_85_OUT [2])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \display/Madd_buf_ptr[4]_GND_5_o_add_86_OUT_cy<2>11  (
    .I0(\display/buf_ptr [2]),
    .I1(\display/buf_ptr [1]),
    .I2(\display/buf_ptr [0]),
    .O(\display/Madd_buf_ptr[4]_GND_5_o_add_86_OUT_cy<2> )
  );
  LUT3 #(
    .INIT ( 8'hA9 ))
  \display/Msub_GND_5_o_GND_5_o_sub_69_OUT<4:0>_xor<2>11  (
    .I0(\display/buf_ptr_2_3_1578 ),
    .I1(\display/buf_ptr_1_2_1560 ),
    .I2(\display/buf_ptr_0_2_1562 ),
    .O(\display/GND_5_o_GND_5_o_sub_69_OUT [2])
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \display/Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT1111  (
    .I0(\display/buf_ptr[4]_buf_len[4]_equal_68_o5_1581 ),
    .I1(\display/GND_5_o_GND_5_o_equal_77_o ),
    .I2(\display/GND_5_o_GND_5_o_equal_84_o ),
    .O(\display/Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT111 )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \display/buf_ptr[4]_buf_len[4]_LessThan_53_o261  (
    .I0(\display/buf_ptr[4]_buf_len[4]_LessThan_53_o1_1572 ),
    .I1(\display/GND_5_o_GND_5_o_equal_77_o ),
    .I2(\display/buf_ptr[4]_buf_len[4]_equal_68_o5_1581 ),
    .O(\display/buf_ptr[4]_buf_len[4]_LessThan_53_o26 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \display/GND_5_o_GND_5_o_equal_77_o611  (
    .I0(\display/buf_len [0]),
    .I1(\display/buf_len [1]),
    .I2(\display/buf_ptr_1_1_1558 ),
    .O(\display/GND_5_o_GND_5_o_equal_77_o61 )
  );
  LUT3 #(
    .INIT ( 8'h14 ))
  \display/Mmux_buf_len[4]_GND_5_o_mux_42_OUT21  (
    .I0(\display/init_1013 ),
    .I1(\display/buf_len [0]),
    .I2(\display/buf_len [1]),
    .O(\display/buf_len[4]_GND_5_o_mux_42_OUT<1> )
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \display/Madd__n0266_xor<2>11  (
    .I0(\display/buf_len [2]),
    .I1(\display/buf_len [0]),
    .I2(\display/buf_len [1]),
    .O(\display/_n0266 [3])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \display/Madd__n0266_cy<2>11  (
    .I0(\display/buf_len [2]),
    .I1(\display/buf_len [1]),
    .I2(\display/buf_len [0]),
    .O(\display/Madd__n0266_cy [2])
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT171  (
    .I0(\display/buf_len [1]),
    .I1(\display/buf_len [0]),
    .I2(\display/buf_len [2]),
    .O(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT17 )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<106>11  (
    .I0(\uart/rx_byte [2]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<106>1 )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<102>11  (
    .I0(\uart/rx_byte [6]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<102>1 )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<243>11  (
    .I0(\uart/rx_byte [3]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<243>1 )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<224>21  (
    .I0(\uart/rx_byte [0]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<224>2 )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<225>11  (
    .I0(\uart/rx_byte [1]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<225>1 )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<220>21  (
    .I0(\uart/rx_byte [4]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<220>2 )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<221>11  (
    .I0(\uart/rx_byte [5]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<221>1 )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<223>11  (
    .I0(\uart/rx_byte [7]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<223>1 )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<0>111  (
    .I0(rstn_IBUF_2),
    .I1(\display/init_1013 ),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<0>11 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \display/GND_5_o_GND_5_o_equal_77_o1  (
    .I0(\display/buf_len [0]),
    .I1(\display/buf_ptr_0_1_1557 ),
    .O(\display/GND_5_o_GND_5_o_equal_77_o1_210 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \display/Madd__n0272_cy<1>11  (
    .I0(\display/buf_len [1]),
    .I1(\display/buf_len [0]),
    .O(\display/Madd__n0272_cy [1])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \display/Msub_GND_5_o_GND_5_o_sub_78_OUT<4:0>_xor<2>11  (
    .I0(\display/buf_ptr [2]),
    .I1(\display/buf_ptr [1]),
    .O(\display/GND_5_o_GND_5_o_sub_78_OUT [2])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \display/buf_ptr[4]_GND_5_o_add_86_OUT<1>1  (
    .I0(\display/buf_ptr_1_3_1561 ),
    .I1(\display/buf_ptr_0_3_1563 ),
    .O(\display/buf_ptr[4]_GND_5_o_add_86_OUT<1> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFD ))
  \display/_n0393_inv1  (
    .I0(\display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT6 ),
    .I1(\display/buf_ptr[4]_buf_len[4]_LessThan_53_o1_1572 ),
    .I2(\display/GND_5_o_GND_5_o_equal_84_o63_1570 ),
    .I3(\display/GND_5_o_GND_5_o_equal_77_o ),
    .I4(\display/buf_ptr[4]_buf_len[4]_equal_68_o ),
    .I5(\display/GND_5_o_GND_5_o_equal_89_o ),
    .O(\display/_n0393_inv )
  );
  LUT3 #(
    .INIT ( 8'hBF ))
  \display/buf_len[4]_GND_5_o_mux_42_OUT<0>1  (
    .I0(\display/init_1013 ),
    .I1(\display/buf_len [0]),
    .I2(rstn_IBUF_2),
    .O(\display/buf_len[4]_GND_5_o_mux_42_OUT<0>1_610 )
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  \display/_n0274<4>1  (
    .I0(\display/buf_ptr_0_5_1577 ),
    .I1(\display/buf_ptr [4]),
    .I2(\display/buf_ptr [2]),
    .I3(\display/buf_ptr [3]),
    .I4(\display/buf_ptr [1]),
    .O(\display/_n0274 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \display/_n0287<4>1  (
    .I0(\display/buf_len [4]),
    .I1(\display/buf_len [3]),
    .O(\display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT6 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \display/clear_sync1  (
    .I0(\display/clr_sreg [1]),
    .I1(\display/clr_sreg [0]),
    .O(leds_5_OBUF_28)
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT22131  (
    .I0(\display/digit2 [0]),
    .I1(\display/digit2 [2]),
    .I2(\display/digit2 [1]),
    .O(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT2213 )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT22231  (
    .I0(\display/digit0 [0]),
    .I1(\display/digit0 [2]),
    .I2(\display/digit0 [1]),
    .O(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT2223 )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT312121  (
    .I0(\display/digit1 [4]),
    .I1(\display/digit1 [6]),
    .I2(\display/digit1 [1]),
    .O(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT31212 )
  );
  LUT3 #(
    .INIT ( 8'hF1 ))
  \display/display/digit3[7]_PWR_5_o_select_223_OUT<3>21  (
    .I0(\display/digit3 [5]),
    .I1(\display/digit3 [6]),
    .I2(\display/digit3 [7]),
    .O(\display/display/digit3[7]_PWR_5_o_select_223_OUT<3>2 )
  );
  LUT3 #(
    .INIT ( 8'hF1 ))
  \display/display/digit0[7]_PWR_5_o_select_55_OUT<3>21  (
    .I0(\display/digit0 [5]),
    .I1(\display/digit0 [6]),
    .I2(\display/digit0 [7]),
    .O(\display/display/digit0[7]_PWR_5_o_select_55_OUT<3>2 )
  );
  LUT3 #(
    .INIT ( 8'hF1 ))
  \display/display/digit2[7]_PWR_5_o_select_167_OUT<3>21  (
    .I0(\display/digit2 [5]),
    .I1(\display/digit2 [6]),
    .I2(\display/digit2 [7]),
    .O(\display/display/digit2[7]_PWR_5_o_select_167_OUT<3>2 )
  );
  LUT3 #(
    .INIT ( 8'hF1 ))
  \display/display/digit1[7]_PWR_5_o_select_111_OUT<3>21  (
    .I0(\display/digit1 [5]),
    .I1(\display/digit1 [6]),
    .I2(\display/digit1 [7]),
    .O(\display/display/digit1[7]_PWR_5_o_select_111_OUT<3>2 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \display/display/Mcount_display_cnt_xor<1>11  (
    .I0(\display/display/display_cnt [1]),
    .I1(\display/display/display_cnt [0]),
    .O(\display/display/Result [1])
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \display/display/Mram_display_cnt[1]_GND_6_o_wide_mux_225_OUT31  (
    .I0(\display/display/display_cnt [0]),
    .I1(\display/display/display_cnt [1]),
    .O(\display/display/Mram_display_cnt[1]_GND_6_o_wide_mux_225_OUT3 )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \display/display/Mram_display_cnt[1]_GND_6_o_wide_mux_225_OUT21  (
    .I0(\display/display/display_cnt [1]),
    .I1(\display/display/display_cnt [0]),
    .O(\display/display/Mram_display_cnt[1]_GND_6_o_wide_mux_225_OUT2 )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \display/display/Mram_display_cnt[1]_GND_6_o_wide_mux_225_OUT111  (
    .I0(\display/display/display_cnt [0]),
    .I1(\display/display/display_cnt [1]),
    .O(\display/display/Mram_display_cnt[1]_GND_6_o_wide_mux_225_OUT1 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \display/display/Mram_display_cnt[1]_GND_6_o_wide_mux_225_OUT11  (
    .I0(\display/display/display_cnt [1]),
    .I1(\display/display/display_cnt [0]),
    .O(\display/display/Mram_display_cnt[1]_GND_6_o_wide_mux_225_OUT )
  );
  LUT3 #(
    .INIT ( 8'hE7 ))
  \rx_byte[7]_rx_byte[7]_OR_179_o_SW0  (
    .I0(\uart/rx_byte [0]),
    .I1(\uart/rx_byte [2]),
    .I2(\uart/rx_byte [1]),
    .O(N2)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000002 ))
  \rx_byte[7]_rx_byte[7]_OR_179_o  (
    .I0(\uart/rx_byte [3]),
    .I1(\uart/rx_byte [6]),
    .I2(\uart/rx_byte [5]),
    .I3(\uart/rx_byte [4]),
    .I4(\uart/rx_byte [7]),
    .I5(N2),
    .O(\rx_byte[7]_rx_byte[7]_OR_179_o_49 )
  );
  LUT5 #(
    .INIT ( 32'hA222B333 ))
  \uart/Mmux__n023711  (
    .I0(\uart/tx_state_FSM_FFd1_161 ),
    .I1(\uart/tx_state_FSM_FFd2_111 ),
    .I2(\uart/tx_13 ),
    .I3(\uart/Mmux__n022811 ),
    .I4(\uart/tx_ready_held_187 ),
    .O(\uart/Mmux__n02371 )
  );
  LUT6 #(
    .INIT ( 64'hFFFF001000100010 ))
  \uart/Mmux__n023712  (
    .I0(\uart/tx_bit_counter [2]),
    .I1(\uart/tx_bit_counter [1]),
    .I2(\uart/tx_state_FSM_FFd1_161 ),
    .I3(\uart/tx_bit_counter [0]),
    .I4(\uart/tx_bit_counter[2]_tx_copy[7]_Mux_57_o ),
    .I5(\uart/tx_state_FSM_FFd2_111 ),
    .O(\uart/Mmux__n023712_1316 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF80000000 ))
  \uart/Mmux__n023713  (
    .I0(\uart/Mmux__n023712_1316 ),
    .I1(\uart/tx_counter [2]),
    .I2(\uart/tx_counter [3]),
    .I3(\uart/tx_counter [0]),
    .I4(\uart/tx_counter [1]),
    .I5(\uart/Mmux__n02371 ),
    .O(\uart/_n0237 )
  );
  LUT4 #(
    .INIT ( 16'hF7FF ))
  \uart/Mmux_GND_3_o_GND_3_o_MUX_54_o1_SW0  (
    .I0(\uart/clk_divide_tx [2]),
    .I1(\uart/clk_divide_tx [5]),
    .I2(\uart/clk_divide_tx [1]),
    .I3(\uart/clk_divide_tx [4]),
    .O(N4)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAAAAAAAA8 ))
  \uart/Mmux_GND_3_o_GND_3_o_MUX_54_o1  (
    .I0(\uart/tx_ready_held_187 ),
    .I1(\uart/clk_divide_tx [7]),
    .I2(\uart/clk_divide_tx [6]),
    .I3(\uart/clk_divide_tx [3]),
    .I4(\uart/clk_divide_tx [0]),
    .I5(N4),
    .O(\uart/GND_3_o_GND_3_o_MUX_54_o )
  );
  LUT6 #(
    .INIT ( 64'h4444444444444440 ))
  \uart/Mmux_GND_3_o_clk_divide_tx[7]_mux_50_OUT1  (
    .I0(\uart/clk_divide_tx [0]),
    .I1(\uart/tx_ready_held_187 ),
    .I2(\uart/clk_divide_tx [7]),
    .I3(\uart/clk_divide_tx [6]),
    .I4(\uart/clk_divide_tx [3]),
    .I5(N4),
    .O(\uart/GND_3_o_clk_divide_tx[7]_mux_50_OUT<0> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \uart/Mmux_GND_3_o_clk_divide_tx[7]_mux_50_OUT8_SW0  (
    .I0(\uart/clk_divide_tx [5]),
    .I1(\uart/clk_divide_tx [4]),
    .O(N8)
  );
  LUT6 #(
    .INIT ( 64'h8888888828888888 ))
  \uart/Mmux_GND_3_o_clk_divide_tx[7]_mux_50_OUT8  (
    .I0(\uart/tx_ready_held_187 ),
    .I1(\uart/clk_divide_tx [7]),
    .I2(N8),
    .I3(\uart/clk_divide_tx [6]),
    .I4(\uart/clk_divide_tx [3]),
    .I5(\uart/Mmux_GND_3_o_clk_divide_tx[7]_mux_50_OUT41 ),
    .O(\uart/GND_3_o_clk_divide_tx[7]_mux_50_OUT<7> )
  );
  LUT4 #(
    .INIT ( 16'hFFBF ))
  \uart/Mmux_GND_3_o_clk_divide_tx[7]_mux_50_OUT3_SW0  (
    .I0(\uart/clk_divide_tx [6]),
    .I1(\uart/clk_divide_tx [5]),
    .I2(\uart/clk_divide_tx [4]),
    .I3(\uart/clk_divide_tx [3]),
    .O(N10)
  );
  LUT6 #(
    .INIT ( 64'h2828888828288880 ))
  \uart/Mmux_GND_3_o_clk_divide_tx[7]_mux_50_OUT3  (
    .I0(\uart/tx_ready_held_187 ),
    .I1(\uart/clk_divide_tx [2]),
    .I2(\uart/clk_divide_tx [0]),
    .I3(\uart/clk_divide_tx [7]),
    .I4(\uart/clk_divide_tx [1]),
    .I5(N10),
    .O(\uart/GND_3_o_clk_divide_tx[7]_mux_50_OUT<2> )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \uart/Mmux_rx_state[2]_GND_3_o_wide_mux_37_OUT4_SW0  (
    .I0(\uart/bit_counter [2]),
    .I1(\uart/rx_bit_185 ),
    .O(N12)
  );
  LUT6 #(
    .INIT ( 64'h2222222220000000 ))
  \uart/Mmux_rx_state[2]_GND_3_o_wide_mux_37_OUT4  (
    .I0(\uart/rx_state_FSM_FFd2_173 ),
    .I1(\uart/rx_state_FSM_FFd1_174 ),
    .I2(\uart/bit_counter [0]),
    .I3(\uart/bit_counter [1]),
    .I4(N12),
    .I5(\uart/rx_byte [3]),
    .O(\uart/rx_state[2]_GND_3_o_wide_mux_37_OUT<3> )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \uart/Mmux_rx_state[2]_GND_3_o_wide_mux_40_OUT3_SW0  (
    .I0(\uart/rx_state_FSM_FFd2_173 ),
    .I1(\uart/rx_state_FSM_FFd1_174 ),
    .O(N14)
  );
  LUT6 #(
    .INIT ( 64'h1010415010105050 ))
  \uart/Mmux_rx_state[2]_GND_3_o_wide_mux_40_OUT3  (
    .I0(N14),
    .I1(\uart/rx_state_FSM_FFd3_172 ),
    .I2(\uart/bit_counter [2]),
    .I3(\uart/bit_counter [1]),
    .I4(\uart/rx_state_FSM_FFd3-In3_63 ),
    .I5(\uart/bit_counter [0]),
    .O(\uart/rx_state[2]_GND_3_o_wide_mux_40_OUT<2> )
  );
  LUT3 #(
    .INIT ( 8'h7F ))
  \uart/rx_state_FSM_FFd2-In_SW0  (
    .I0(\uart/sample_counter [0]),
    .I1(\uart/sample_counter [1]),
    .I2(\uart/rx_state_FSM_FFd3_172 ),
    .O(N16)
  );
  LUT6 #(
    .INIT ( 64'hAA2AAA2AAA2AAA2E ))
  \uart/rx_state_FSM_FFd2-In  (
    .I0(\uart/rx_state_FSM_FFd2_173 ),
    .I1(\uart/sample_counter [2]),
    .I2(\uart/sample_counter [3]),
    .I3(N16),
    .I4(\uart/rx_state_FSM_FFd1_174 ),
    .I5(\uart/rx_bit_185 ),
    .O(\uart/rx_state_FSM_FFd2-In_109 )
  );
  LUT6 #(
    .INIT ( 64'h0020002020020020 ))
  \uart/Mmux_rx_state[2]_GND_3_o_wide_mux_40_OUT1  (
    .I0(\uart/rx_state_FSM_FFd2_173 ),
    .I1(\uart/rx_state_FSM_FFd1_174 ),
    .I2(\uart/bit_counter [0]),
    .I3(\uart/rx_state_FSM_FFd3_172 ),
    .I4(\uart/sample_counter [3]),
    .I5(\uart/rx_state_FSM_FFd3-In2 ),
    .O(\uart/rx_state[2]_GND_3_o_wide_mux_40_OUT<0> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFEAAAFFFFC000 ))
  \display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT85  (
    .I0(\display/ascii_buf_31 [251]),
    .I1(\display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT13 ),
    .I2(\display/buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT<3> ),
    .I3(\display/buf_ptr[4]_buf_len[4]_LessThan_53_o ),
    .I4(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT83_1325 ),
    .I5(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT101_192 ),
    .O(\display/buf_len[4]_ascii_buf[3][7]_select_120_OUT<3> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFEAAAFFFFC000 ))
  \display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT65  (
    .I0(\display/ascii_buf_31 [250]),
    .I1(\display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT13 ),
    .I2(\display/buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT<2> ),
    .I3(\display/buf_ptr[4]_buf_len[4]_LessThan_53_o ),
    .I4(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT63_1328 ),
    .I5(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT101_192 ),
    .O(\display/buf_len[4]_ascii_buf[3][7]_select_120_OUT<2> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFEAAAFFFFC000 ))
  \display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT45  (
    .I0(\display/ascii_buf_31 [249]),
    .I1(\display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT13 ),
    .I2(\display/buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT<1> ),
    .I3(\display/buf_ptr[4]_buf_len[4]_LessThan_53_o ),
    .I4(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT43_1331 ),
    .I5(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT101_192 ),
    .O(\display/buf_len[4]_ascii_buf[3][7]_select_120_OUT<1> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFEAAAFFFFC000 ))
  \display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT25  (
    .I0(\display/ascii_buf_31 [248]),
    .I1(\display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT13 ),
    .I2(\display/buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT<0> ),
    .I3(\display/buf_ptr[4]_buf_len[4]_LessThan_53_o ),
    .I4(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT23_1334 ),
    .I5(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT101_192 ),
    .O(\display/buf_len[4]_ascii_buf[3][7]_select_120_OUT<0> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFEAAAFFFFC000 ))
  \display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT165  (
    .I0(\display/ascii_buf_31 [255]),
    .I1(\display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT13 ),
    .I2(\display/buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT<7> ),
    .I3(\display/buf_ptr[4]_buf_len[4]_LessThan_53_o ),
    .I4(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT163_1337 ),
    .I5(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT101_192 ),
    .O(\display/buf_len[4]_ascii_buf[3][7]_select_120_OUT<7> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFEAAAFFFFC000 ))
  \display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT145  (
    .I0(\display/ascii_buf_31 [254]),
    .I1(\display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT13 ),
    .I2(\display/buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT<6> ),
    .I3(\display/buf_ptr[4]_buf_len[4]_LessThan_53_o ),
    .I4(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT143_1340 ),
    .I5(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT101_192 ),
    .O(\display/buf_len[4]_ascii_buf[3][7]_select_120_OUT<6> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFEAAAFFFFC000 ))
  \display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT106  (
    .I0(\display/ascii_buf_31 [252]),
    .I1(\display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT13 ),
    .I2(\display/buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT<4> ),
    .I3(\display/buf_ptr[4]_buf_len[4]_LessThan_53_o ),
    .I4(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT104_1343 ),
    .I5(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT101_192 ),
    .O(\display/buf_len[4]_ascii_buf[3][7]_select_120_OUT<4> )
  );
  LUT5 #(
    .INIT ( 32'h22200200 ))
  \display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT81  (
    .I0(\display/buf_len [1]),
    .I1(\display/buf_len [2]),
    .I2(\display/buf_len [0]),
    .I3(\display/ascii_buf_31 [251]),
    .I4(\display/ascii_buf_31 [243]),
    .O(\display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT8 )
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT82  (
    .I0(\display/buf_len [1]),
    .I1(\display/buf_len [0]),
    .I2(\display/ascii_buf_31 [235]),
    .O(\display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT81_1345 )
  );
  LUT6 #(
    .INIT ( 64'h00FA00EA00EA00EA ))
  \display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT83  (
    .I0(\display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT8 ),
    .I1(\display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT81_1345 ),
    .I2(\display/buf_len [2]),
    .I3(\display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT6 ),
    .I4(\display/digit2 [3]),
    .I5(\display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT10221_189 ),
    .O(\display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT82_1346 )
  );
  LUT5 #(
    .INIT ( 32'h22200200 ))
  \display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT61  (
    .I0(\display/buf_len [1]),
    .I1(\display/buf_len [2]),
    .I2(\display/buf_len [0]),
    .I3(\display/ascii_buf_31 [250]),
    .I4(\display/ascii_buf_31 [242]),
    .O(\display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT6 )
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT62  (
    .I0(\display/buf_len [1]),
    .I1(\display/buf_len [0]),
    .I2(\display/ascii_buf_31 [234]),
    .O(\display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT61_1348 )
  );
  LUT6 #(
    .INIT ( 64'h00FA00EA00EA00EA ))
  \display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT63  (
    .I0(\display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT6 ),
    .I1(\display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT61_1348 ),
    .I2(\display/buf_len [2]),
    .I3(\display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT6 ),
    .I4(\display/digit2 [2]),
    .I5(\display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT10221_189 ),
    .O(\display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT62_1349 )
  );
  LUT5 #(
    .INIT ( 32'h22200200 ))
  \display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT41  (
    .I0(\display/buf_len [1]),
    .I1(\display/buf_len [2]),
    .I2(\display/buf_len [0]),
    .I3(\display/ascii_buf_31 [249]),
    .I4(\display/ascii_buf_31 [241]),
    .O(\display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT4 )
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT42  (
    .I0(\display/buf_len [1]),
    .I1(\display/buf_len [0]),
    .I2(\display/ascii_buf_31 [233]),
    .O(\display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT41_1351 )
  );
  LUT6 #(
    .INIT ( 64'h00FA00EA00EA00EA ))
  \display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT43  (
    .I0(\display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT4 ),
    .I1(\display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT41_1351 ),
    .I2(\display/buf_len [2]),
    .I3(\display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT6 ),
    .I4(\display/digit2 [1]),
    .I5(\display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT10221_189 ),
    .O(\display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT42_1352 )
  );
  LUT5 #(
    .INIT ( 32'h22200200 ))
  \display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT21  (
    .I0(\display/buf_len [1]),
    .I1(\display/buf_len [2]),
    .I2(\display/buf_len [0]),
    .I3(\display/ascii_buf_31 [248]),
    .I4(\display/ascii_buf_31 [240]),
    .O(\display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT2 )
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT22  (
    .I0(\display/buf_len [1]),
    .I1(\display/buf_len [0]),
    .I2(\display/ascii_buf_31 [232]),
    .O(\display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT21_1354 )
  );
  LUT6 #(
    .INIT ( 64'h00FA00EA00EA00EA ))
  \display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT23  (
    .I0(\display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT2 ),
    .I1(\display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT21_1354 ),
    .I2(\display/buf_len [2]),
    .I3(\display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT6 ),
    .I4(\display/digit2 [0]),
    .I5(\display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT10221_189 ),
    .O(\display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT22_1355 )
  );
  LUT5 #(
    .INIT ( 32'h22200200 ))
  \display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT161  (
    .I0(\display/buf_len [1]),
    .I1(\display/buf_len [2]),
    .I2(\display/buf_len [0]),
    .I3(\display/ascii_buf_31 [255]),
    .I4(\display/ascii_buf_31 [247]),
    .O(\display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT16 )
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT162  (
    .I0(\display/buf_len [1]),
    .I1(\display/buf_len [0]),
    .I2(\display/ascii_buf_31 [239]),
    .O(\display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT161_1357 )
  );
  LUT6 #(
    .INIT ( 64'h00FA00EA00EA00EA ))
  \display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT163  (
    .I0(\display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT16 ),
    .I1(\display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT161_1357 ),
    .I2(\display/buf_len [2]),
    .I3(\display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT6 ),
    .I4(\display/digit2 [7]),
    .I5(\display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT10221_189 ),
    .O(\display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT162_1358 )
  );
  LUT5 #(
    .INIT ( 32'h22200200 ))
  \display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT141  (
    .I0(\display/buf_len [1]),
    .I1(\display/buf_len [2]),
    .I2(\display/buf_len [0]),
    .I3(\display/ascii_buf_31 [254]),
    .I4(\display/ascii_buf_31 [246]),
    .O(\display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT14 )
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT142  (
    .I0(\display/buf_len [1]),
    .I1(\display/buf_len [0]),
    .I2(\display/ascii_buf_31 [238]),
    .O(\display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT141_1360 )
  );
  LUT6 #(
    .INIT ( 64'h00FA00EA00EA00EA ))
  \display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT143  (
    .I0(\display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT14 ),
    .I1(\display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT141_1360 ),
    .I2(\display/buf_len [2]),
    .I3(\display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT6 ),
    .I4(\display/digit2 [6]),
    .I5(\display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT10221_189 ),
    .O(\display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT142_1361 )
  );
  LUT5 #(
    .INIT ( 32'h22200200 ))
  \display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT101  (
    .I0(\display/buf_len [1]),
    .I1(\display/buf_len [2]),
    .I2(\display/buf_len [0]),
    .I3(\display/ascii_buf_31 [252]),
    .I4(\display/ascii_buf_31 [244]),
    .O(\display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT10 )
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT102  (
    .I0(\display/buf_len [1]),
    .I1(\display/buf_len [0]),
    .I2(\display/ascii_buf_31 [236]),
    .O(\display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT101_1363 )
  );
  LUT6 #(
    .INIT ( 64'h00FA00EA00EA00EA ))
  \display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT103  (
    .I0(\display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT10 ),
    .I1(\display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT101_1363 ),
    .I2(\display/buf_len [2]),
    .I3(\display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT6 ),
    .I4(\display/digit2 [4]),
    .I5(\display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT10221_189 ),
    .O(\display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT102_1364 )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT101_SW0  (
    .I0(\display/buf_len [0]),
    .I1(\display/buf_len [1]),
    .O(N20)
  );
  LUT6 #(
    .INIT ( 64'hFCDDCCDD00110011 ))
  \display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT101  (
    .I0(N20),
    .I1(\display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT6 ),
    .I2(\display/Madd__n0272_cy [1]),
    .I3(\display/buf_len [2]),
    .I4(\display/GND_5_o_GND_5_o_equal_89_o ),
    .I5(\display/Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT61_204 ),
    .O(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT101_192 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \display/Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT11_SW0  (
    .I0(\display/buf_ptr [1]),
    .I1(\display/buf_ptr [0]),
    .O(N22)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT11_SW0  (
    .I0(\display/buf_ptr [4]),
    .I1(\display/buf_ptr [1]),
    .O(N24)
  );
  LUT6 #(
    .INIT ( 64'hFFEEFFEEFFFFF0F0 ))
  \display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT11  (
    .I0(\display/buf_ptr [2]),
    .I1(\display/buf_ptr [3]),
    .I2(\display/GND_5_o_GND_5_o_equal_77_o ),
    .I3(N24),
    .I4(\display/buf_ptr[4]_buf_len[4]_equal_68_o ),
    .I5(\display/buf_ptr[4]_buf_len[4]_LessThan_53_o ),
    .O(\display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT11_208 )
  );
  LUT6 #(
    .INIT ( 64'hFF88FF8088880000 ))
  \display/Mmux_buf_len[4]_GND_5_o_select_124_OUT54  (
    .I0(\display/Madd__n0272_cy [1]),
    .I1(\display/buf_len [2]),
    .I2(\display/Mmux_buf_len[4]_GND_5_o_select_124_OUT52_1375 ),
    .I3(\display/Mmux_buf_len[4]_GND_5_o_select_124_OUT5 ),
    .I4(\display/Mmux_buf_len[4]_GND_5_o_select_124_OUT51_1374 ),
    .I5(\display/buf_ptr[4]_buf_len[4]_LessThan_53_o721 ),
    .O(\display/buf_len[4]_GND_5_o_select_124_OUT<4> )
  );
  LUT6 #(
    .INIT ( 64'hAEEA0EE0AAAA0000 ))
  \display/Mmux_buf_len[4]_GND_5_o_select_124_OUT43  (
    .I0(\display/Mmux_buf_len[4]_GND_5_o_select_124_OUT4 ),
    .I1(\display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT6 ),
    .I2(\display/buf_ptr [3]),
    .I3(\display/Madd_buf_ptr[4]_GND_5_o_add_86_OUT_cy<2> ),
    .I4(\display/Mmux_buf_len[4]_GND_5_o_select_124_OUT41_1377 ),
    .I5(\display/buf_ptr[4]_buf_len[4]_LessThan_53_o721 ),
    .O(\display/buf_len[4]_GND_5_o_select_124_OUT<3> )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT10221_SW0  (
    .I0(\display/buf_len [1]),
    .I1(\display/buf_len [0]),
    .O(N26)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT10221  (
    .I0(N26),
    .I1(\display/GND_5_o_GND_5_o_equal_89_o63_1568 ),
    .I2(\display/buf_ptr[4]_buf_len[4]_LessThan_53_o1_1572 ),
    .I3(\display/GND_5_o_GND_5_o_equal_84_o63_1570 ),
    .I4(\display/GND_5_o_GND_5_o_equal_77_o ),
    .I5(\display/buf_ptr[4]_buf_len[4]_equal_68_o ),
    .O(\display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT10221_189 )
  );
  LUT6 #(
    .INIT ( 64'h1115011511110111 ))
  \display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT62  (
    .I0(\display/buf_len [4]),
    .I1(\display/buf_len [2]),
    .I2(\display/buf_len [0]),
    .I3(\display/buf_len [1]),
    .I4(\display/ascii_buf_31 [253]),
    .I5(\display/ascii_buf_31 [245]),
    .O(\display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT61 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT63  (
    .I0(\display/buf_len [3]),
    .I1(\display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT61 ),
    .O(\display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT63_1381 )
  );
  LUT5 #(
    .INIT ( 32'h00000100 ))
  \display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT64  (
    .I0(\display/buf_ptr [4]),
    .I1(\display/buf_ptr [3]),
    .I2(\display/buf_ptr [2]),
    .I3(\display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT13 ),
    .I4(\display/buf_ptr [1]),
    .O(\display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT64_1382 )
  );
  LUT6 #(
    .INIT ( 64'h5140777751405555 ))
  \display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT121  (
    .I0(\display/buf_len [2]),
    .I1(\display/buf_len [0]),
    .I2(\display/ascii_buf_31 [245]),
    .I3(\display/ascii_buf_31 [253]),
    .I4(\display/buf_len [1]),
    .I5(\display/ascii_buf_31 [237]),
    .O(\display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT12 )
  );
  LUT6 #(
    .INIT ( 64'hEEEEEEEEE2E222EE ))
  \display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT122  (
    .I0(\display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT12 ),
    .I1(\display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT6 ),
    .I2(\display/_n0274 ),
    .I3(\display/buf_ptr[4]_buf_len[4]_equal_68_o ),
    .I4(\display/buf_ptr[4]_buf_len[4]_LessThan_53_o ),
    .I5(\display/GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT<5> ),
    .O(\display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT121_1385 )
  );
  LUT4 #(
    .INIT ( 16'hFCA0 ))
  \display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT123  (
    .I0(\display/_n0274 ),
    .I1(\display/buf_ptr[4]_buf_len[4]_equal_68_o ),
    .I2(\display/buf_ptr[4]_buf_len[4]_LessThan_53_o ),
    .I3(\display/GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT<5> ),
    .O(\display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT122_1386 )
  );
  LUT6 #(
    .INIT ( 64'h000000000F0F0F0E ))
  \display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT124  (
    .I0(\display/digit2 [5]),
    .I1(\display/GND_5_o_GND_5_o_equal_77_o ),
    .I2(\display/buf_ptr[4]_buf_len[4]_equal_68_o ),
    .I3(\display/GND_5_o_GND_5_o_equal_89_o ),
    .I4(\display/GND_5_o_GND_5_o_equal_84_o ),
    .I5(\display/buf_ptr[4]_buf_len[4]_LessThan_53_o ),
    .O(\display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT123_1387 )
  );
  LUT6 #(
    .INIT ( 64'h0000284200801401 ))
  \display/GND_5_o_GND_5_o_equal_89_o61  (
    .I0(\display/buf_len [3]),
    .I1(\display/Madd__n0272_cy [1]),
    .I2(\display/buf_len [2]),
    .I3(\display/buf_ptr_2_1_1559 ),
    .I4(\display/buf_ptr_4_1_1565 ),
    .I5(\display/buf_ptr_3_1_1564 ),
    .O(\display/GND_5_o_GND_5_o_equal_89_o6 )
  );
  LUT6 #(
    .INIT ( 64'h0D00050008000000 ))
  \display/GND_5_o_GND_5_o_equal_89_o63  (
    .I0(\display/buf_len [4]),
    .I1(\display/buf_ptr [4]),
    .I2(\display/GND_5_o_GND_5_o_equal_77_o61 ),
    .I3(\display/GND_5_o_GND_5_o_equal_77_o1_210 ),
    .I4(\display/GND_5_o_GND_5_o_equal_89_o61_1389 ),
    .I5(\display/GND_5_o_GND_5_o_equal_89_o6 ),
    .O(\display/GND_5_o_GND_5_o_equal_89_o )
  );
  LUT4 #(
    .INIT ( 16'h7BDE ))
  \display/buf_ptr[4]_buf_len[4]_equal_68_o5_SW0  (
    .I0(\display/buf_len [2]),
    .I1(\display/buf_len [4]),
    .I2(\display/buf_ptr_2_2_1566 ),
    .I3(\display/buf_ptr_4_1_1565 ),
    .O(N28)
  );
  LUT6 #(
    .INIT ( 64'h0140010000400000 ))
  \display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT8_SW0  (
    .I0(\display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT6 ),
    .I1(\display/buf_len [0]),
    .I2(\display/buf_len [1]),
    .I3(\display/buf_len [2]),
    .I4(\display/ascii_buf_31 [255]),
    .I5(\display/ascii_buf_31 [247]),
    .O(N30)
  );
  LUT6 #(
    .INIT ( 64'hFEFAFAFAEEAAAAAA ))
  \display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT8  (
    .I0(N30),
    .I1(\display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT13 ),
    .I2(\display/digit1 [7]),
    .I3(\display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT11_208 ),
    .I4(\display/GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT<7> ),
    .I5(\display/Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT12_out1 ),
    .O(\display/buf_len[4]_ascii_buf[1][7]_select_122_OUT<7> )
  );
  LUT6 #(
    .INIT ( 64'h0140010000400000 ))
  \display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT7_SW0  (
    .I0(\display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT6 ),
    .I1(\display/buf_len [0]),
    .I2(\display/buf_len [1]),
    .I3(\display/buf_len [2]),
    .I4(\display/ascii_buf_31 [254]),
    .I5(\display/ascii_buf_31 [246]),
    .O(N32)
  );
  LUT6 #(
    .INIT ( 64'hFEFAFAFAEEAAAAAA ))
  \display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT7  (
    .I0(N32),
    .I1(\display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT13 ),
    .I2(\display/digit1 [6]),
    .I3(\display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT11_208 ),
    .I4(\display/GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT<6> ),
    .I5(\display/Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT12_out1 ),
    .O(\display/buf_len[4]_ascii_buf[1][7]_select_122_OUT<6> )
  );
  LUT6 #(
    .INIT ( 64'h0140010000400000 ))
  \display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT5_SW0  (
    .I0(\display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT6 ),
    .I1(\display/buf_len [0]),
    .I2(\display/buf_len [1]),
    .I3(\display/buf_len [2]),
    .I4(\display/ascii_buf_31 [252]),
    .I5(\display/ascii_buf_31 [244]),
    .O(N34)
  );
  LUT6 #(
    .INIT ( 64'hFEFAFAFAEEAAAAAA ))
  \display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT5  (
    .I0(N34),
    .I1(\display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT13 ),
    .I2(\display/digit1 [4]),
    .I3(\display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT11_208 ),
    .I4(\display/GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT<4> ),
    .I5(\display/Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT12_out1 ),
    .O(\display/buf_len[4]_ascii_buf[1][7]_select_122_OUT<4> )
  );
  LUT6 #(
    .INIT ( 64'h0140010000400000 ))
  \display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT4_SW0  (
    .I0(\display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT6 ),
    .I1(\display/buf_len [0]),
    .I2(\display/buf_len [1]),
    .I3(\display/buf_len [2]),
    .I4(\display/ascii_buf_31 [251]),
    .I5(\display/ascii_buf_31 [243]),
    .O(N36)
  );
  LUT6 #(
    .INIT ( 64'hFEFAFAFAEEAAAAAA ))
  \display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT4  (
    .I0(N36),
    .I1(\display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT13 ),
    .I2(\display/digit1 [3]),
    .I3(\display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT11_208 ),
    .I4(\display/GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT<3> ),
    .I5(\display/Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT12_out1 ),
    .O(\display/buf_len[4]_ascii_buf[1][7]_select_122_OUT<3> )
  );
  LUT6 #(
    .INIT ( 64'h0140010000400000 ))
  \display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT3_SW0  (
    .I0(\display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT6 ),
    .I1(\display/buf_len [0]),
    .I2(\display/buf_len [1]),
    .I3(\display/buf_len [2]),
    .I4(\display/ascii_buf_31 [250]),
    .I5(\display/ascii_buf_31 [242]),
    .O(N38)
  );
  LUT6 #(
    .INIT ( 64'hFEFAFAFAEEAAAAAA ))
  \display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT3  (
    .I0(N38),
    .I1(\display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT13 ),
    .I2(\display/digit1 [2]),
    .I3(\display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT11_208 ),
    .I4(\display/GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT<2> ),
    .I5(\display/Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT12_out1 ),
    .O(\display/buf_len[4]_ascii_buf[1][7]_select_122_OUT<2> )
  );
  LUT6 #(
    .INIT ( 64'h0140010000400000 ))
  \display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT2_SW0  (
    .I0(\display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT6 ),
    .I1(\display/buf_len [0]),
    .I2(\display/buf_len [1]),
    .I3(\display/buf_len [2]),
    .I4(\display/ascii_buf_31 [249]),
    .I5(\display/ascii_buf_31 [241]),
    .O(N40)
  );
  LUT6 #(
    .INIT ( 64'hFEFAFAFAEEAAAAAA ))
  \display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT2  (
    .I0(N40),
    .I1(\display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT13 ),
    .I2(\display/digit1 [1]),
    .I3(\display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT11_208 ),
    .I4(\display/GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT<1> ),
    .I5(\display/Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT12_out1 ),
    .O(\display/buf_len[4]_ascii_buf[1][7]_select_122_OUT<1> )
  );
  LUT6 #(
    .INIT ( 64'h0140010000400000 ))
  \display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT1_SW0  (
    .I0(\display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT6 ),
    .I1(\display/buf_len [0]),
    .I2(\display/buf_len [1]),
    .I3(\display/buf_len [2]),
    .I4(\display/ascii_buf_31 [248]),
    .I5(\display/ascii_buf_31 [240]),
    .O(N42)
  );
  LUT6 #(
    .INIT ( 64'hFEFAFAFAEEAAAAAA ))
  \display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT1  (
    .I0(N42),
    .I1(\display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT13 ),
    .I2(\display/digit1 [0]),
    .I3(\display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT11_208 ),
    .I4(\display/GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT<0> ),
    .I5(\display/Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT12_out1 ),
    .O(\display/buf_len[4]_ascii_buf[1][7]_select_122_OUT<0> )
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT121  (
    .I0(\display/buf_len [3]),
    .I1(\display/buf_len [4]),
    .I2(\display/digit3 [5]),
    .O(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT12 )
  );
  LUT6 #(
    .INIT ( 64'hFFFF00FFFFAC00AC ))
  \display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT122  (
    .I0(\display/ascii_buf_31 [253]),
    .I1(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT12 ),
    .I2(\display/GND_5_o_GND_5_o_equal_89_o ),
    .I3(\display/buf_ptr[4]_buf_len[4]_LessThan_53_o ),
    .I4(\display/buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT<5> ),
    .I5(\display/Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT111 ),
    .O(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT121_1399 )
  );
  LUT6 #(
    .INIT ( 64'hFCFC00FCFCA800A8 ))
  \display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT123  (
    .I0(\display/ascii_buf_31 [253]),
    .I1(\display/buf_len [4]),
    .I2(\display/buf_len [3]),
    .I3(\display/buf_ptr[4]_buf_len[4]_LessThan_53_o ),
    .I4(\display/buf_ptr[4]_ascii_buf[31][7]_wide_mux_53_OUT<5> ),
    .I5(\display/Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT111 ),
    .O(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT122_1400 )
  );
  LUT6 #(
    .INIT ( 64'h5545150551411101 ))
  \display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT124  (
    .I0(\display/buf_len [2]),
    .I1(\display/buf_len [1]),
    .I2(\display/buf_len [0]),
    .I3(\display/ascii_buf_31 [253]),
    .I4(\display/ascii_buf_31 [237]),
    .I5(\display/ascii_buf_31 [245]),
    .O(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT123_1401 )
  );
  LUT6 #(
    .INIT ( 64'h1111111100000100 ))
  \display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT125  (
    .I0(\display/buf_len [4]),
    .I1(\display/buf_len [3]),
    .I2(\display/buf_len [1]),
    .I3(\display/ascii_buf_31 [229]),
    .I4(\display/buf_len [0]),
    .I5(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT123_1401 ),
    .O(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT124_1402 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFEAAFFFFAAAA ))
  \display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT126  (
    .I0(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT124_1402 ),
    .I1(\display/buf_len [1]),
    .I2(\display/buf_len [0]),
    .I3(\display/buf_len [2]),
    .I4(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT122_1400 ),
    .I5(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT121_1399 ),
    .O(\display/buf_len[4]_ascii_buf[3][7]_select_120_OUT<5> )
  );
  LUT6 #(
    .INIT ( 64'hFEFAFAFAEEAAAAAA ))
  \display/Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT4  (
    .I0(N46),
    .I1(\display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT13 ),
    .I2(\display/digit0 [3]),
    .I3(\display/Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT11_209 ),
    .I4(\display/GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT<3> ),
    .I5(\display/Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT12_out1 ),
    .O(\display/buf_len[4]_ascii_buf[0][7]_select_123_OUT<3> )
  );
  LUT6 #(
    .INIT ( 64'hFEFAFAFAEEAAAAAA ))
  \display/Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT7  (
    .I0(N48),
    .I1(\display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT13 ),
    .I2(\display/digit0 [6]),
    .I3(\display/Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT11_209 ),
    .I4(\display/GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT<6> ),
    .I5(\display/Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT12_out1 ),
    .O(\display/buf_len[4]_ascii_buf[0][7]_select_123_OUT<6> )
  );
  LUT6 #(
    .INIT ( 64'hFEFAFAFAEEAAAAAA ))
  \display/Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT1  (
    .I0(N50),
    .I1(\display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT13 ),
    .I2(\display/digit0 [0]),
    .I3(\display/Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT11_209 ),
    .I4(\display/GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT<0> ),
    .I5(\display/Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT12_out1 ),
    .O(\display/buf_len[4]_ascii_buf[0][7]_select_123_OUT<0> )
  );
  LUT6 #(
    .INIT ( 64'hFEFAFAFAEEAAAAAA ))
  \display/Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT2  (
    .I0(N52),
    .I1(\display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT13 ),
    .I2(\display/digit0 [1]),
    .I3(\display/Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT11_209 ),
    .I4(\display/GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT<1> ),
    .I5(\display/Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT12_out1 ),
    .O(\display/buf_len[4]_ascii_buf[0][7]_select_123_OUT<1> )
  );
  LUT6 #(
    .INIT ( 64'hFEFAFAFAEEAAAAAA ))
  \display/Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT8  (
    .I0(N54),
    .I1(\display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT13 ),
    .I2(\display/digit0 [7]),
    .I3(\display/Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT11_209 ),
    .I4(\display/GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT<7> ),
    .I5(\display/Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT12_out1 ),
    .O(\display/buf_len[4]_ascii_buf[0][7]_select_123_OUT<7> )
  );
  LUT6 #(
    .INIT ( 64'hFEFAFAFAEEAAAAAA ))
  \display/Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT5  (
    .I0(N56),
    .I1(\display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT13 ),
    .I2(\display/digit0 [4]),
    .I3(\display/Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT11_209 ),
    .I4(\display/GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT<4> ),
    .I5(\display/Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT12_out1 ),
    .O(\display/buf_len[4]_ascii_buf[0][7]_select_123_OUT<4> )
  );
  LUT6 #(
    .INIT ( 64'hFEFAFAFAEEAAAAAA ))
  \display/Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT3  (
    .I0(N58),
    .I1(\display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT13 ),
    .I2(\display/digit0 [2]),
    .I3(\display/Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT11_209 ),
    .I4(\display/GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT<2> ),
    .I5(\display/Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT12_out1 ),
    .O(\display/buf_len[4]_ascii_buf[0][7]_select_123_OUT<2> )
  );
  LUT6 #(
    .INIT ( 64'h008088A8AAEAEEFE ))
  \display/buf_ptr[4]_buf_len[4]_LessThan_53_o1_SW0  (
    .I0(\display/buf_len [2]),
    .I1(\display/buf_len [1]),
    .I2(\display/buf_len [0]),
    .I3(\display/buf_ptr_0_1_1557 ),
    .I4(\display/buf_ptr_1_1_1558 ),
    .I5(\display/buf_ptr_2_1_1559 ),
    .O(N60)
  );
  LUT5 #(
    .INIT ( 32'h8EAF0A8E ))
  \display/buf_ptr[4]_buf_len[4]_LessThan_53_o1  (
    .I0(\display/buf_len [4]),
    .I1(\display/buf_len [3]),
    .I2(\display/buf_ptr [4]),
    .I3(\display/buf_ptr [3]),
    .I4(N60),
    .O(\display/buf_ptr[4]_buf_len[4]_LessThan_53_o )
  );
  LUT6 #(
    .INIT ( 64'hA3A282802F2F0A0A ))
  \display/display/digit3[7]_PWR_5_o_select_223_OUT<7>21  (
    .I0(\display/digit3 [2]),
    .I1(\display/digit3 [1]),
    .I2(\display/digit3 [4]),
    .I3(\display/digit3 [0]),
    .I4(\display/digit3 [3]),
    .I5(\display/digit3 [6]),
    .O(\display/display/digit3[7]_PWR_5_o_select_223_OUT<7>21_1412 )
  );
  LUT6 #(
    .INIT ( 64'hA3A282802F2F0A0A ))
  \display/display/digit2[7]_PWR_5_o_select_167_OUT<7>21  (
    .I0(\display/digit2 [2]),
    .I1(\display/digit2 [1]),
    .I2(\display/digit2 [4]),
    .I3(\display/digit2 [0]),
    .I4(\display/digit2 [3]),
    .I5(\display/digit2 [6]),
    .O(\display/display/digit2[7]_PWR_5_o_select_167_OUT<7>21_1413 )
  );
  LUT6 #(
    .INIT ( 64'hA3A282802F2F0A0A ))
  \display/display/digit1[7]_PWR_5_o_select_111_OUT<7>21  (
    .I0(\display/digit1 [2]),
    .I1(\display/digit1 [1]),
    .I2(\display/digit1 [4]),
    .I3(\display/digit1 [0]),
    .I4(\display/digit1 [3]),
    .I5(\display/digit1 [6]),
    .O(\display/display/digit1[7]_PWR_5_o_select_111_OUT<7>21_1414 )
  );
  LUT6 #(
    .INIT ( 64'hA3A282802F2F0A0A ))
  \display/display/digit0[7]_PWR_5_o_select_55_OUT<7>21  (
    .I0(\display/digit0 [2]),
    .I1(\display/digit0 [1]),
    .I2(\display/digit0 [4]),
    .I3(\display/digit0 [0]),
    .I4(\display/digit0 [3]),
    .I5(\display/digit0 [6]),
    .O(\display/display/digit0[7]_PWR_5_o_select_55_OUT<7>21_1415 )
  );
  LUT5 #(
    .INIT ( 32'h10105410 ))
  \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT74  (
    .I0(\display/digit3 [7]),
    .I1(\display/digit3 [3]),
    .I2(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT72 ),
    .I3(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT7 ),
    .I4(\display/digit3 [4]),
    .O(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT73_1418 )
  );
  LUT5 #(
    .INIT ( 32'h10105410 ))
  \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT78  (
    .I0(\display/digit1 [7]),
    .I1(\display/digit1 [3]),
    .I2(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT76 ),
    .I3(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT74_1419 ),
    .I4(\display/digit1 [4]),
    .O(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT77_1421 )
  );
  LUT5 #(
    .INIT ( 32'h10105410 ))
  \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT712  (
    .I0(\display/digit2 [7]),
    .I1(\display/digit2 [3]),
    .I2(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT710 ),
    .I3(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT78_1422 ),
    .I4(\display/digit2 [4]),
    .O(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT711_1424 )
  );
  LUT5 #(
    .INIT ( 32'h10105410 ))
  \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT716  (
    .I0(\display/digit0 [7]),
    .I1(\display/digit0 [3]),
    .I2(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT714 ),
    .I3(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT712_1425 ),
    .I4(\display/digit0 [4]),
    .O(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT715_1427 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT717  (
    .I0(\display/display/display_cnt [0]),
    .I1(\display/display/display_cnt [1]),
    .I2(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT77_1421 ),
    .I3(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT73_1418 ),
    .I4(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT711_1424 ),
    .I5(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT715_1427 ),
    .O(\display/display/display_cnt[1]_digit3[7]_wide_mux_224_OUT<6> )
  );
  LUT5 #(
    .INIT ( 32'h22200200 ))
  \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT5111  (
    .I0(\display/digit3 [2]),
    .I1(\display/digit3 [1]),
    .I2(\display/digit3 [0]),
    .I3(\display/digit3 [4]),
    .I4(\display/digit3 [3]),
    .O(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT5111_1428 )
  );
  LUT5 #(
    .INIT ( 32'h22200200 ))
  \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT5112  (
    .I0(\display/digit1 [2]),
    .I1(\display/digit1 [1]),
    .I2(\display/digit1 [0]),
    .I3(\display/digit1 [4]),
    .I4(\display/digit1 [3]),
    .O(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT5112_1429 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT5113  (
    .I0(\display/display/display_cnt [1]),
    .I1(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT5112_1429 ),
    .I2(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT5111_1428 ),
    .O(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT511_1281 )
  );
  LUT5 #(
    .INIT ( 32'hFDFDFDA8 ))
  \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT411  (
    .I0(\display/display/display_cnt [0]),
    .I1(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT511_1281 ),
    .I2(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT49_1435 ),
    .I3(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT523 ),
    .I4(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT44_1432 ),
    .O(\display/display/display_cnt[1]_digit3[7]_wide_mux_224_OUT<3> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFDDFDAAAA88A8 ))
  \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT512  (
    .I0(\display/display/display_cnt [1]),
    .I1(\display/display/digit2[7]_PWR_5_o_select_167_OUT<3>4 ),
    .I2(\display/digit2 [0]),
    .I3(\display/digit2 [6]),
    .I4(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT57 ),
    .I5(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT510_1441 ),
    .O(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT512_1442 )
  );
  LUT5 #(
    .INIT ( 32'hFDFDFDA8 ))
  \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT513  (
    .I0(\display/display/display_cnt [0]),
    .I1(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT511_1281 ),
    .I2(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT55 ),
    .I3(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT523 ),
    .I4(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT512_1442 ),
    .O(\display/display/display_cnt[1]_digit3[7]_wide_mux_224_OUT<4> )
  );
  LUT5 #(
    .INIT ( 32'h40415540 ))
  \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT11  (
    .I0(\display/digit3 [1]),
    .I1(\display/digit3 [6]),
    .I2(\display/digit3 [3]),
    .I3(\display/digit3 [2]),
    .I4(\display/digit3 [0]),
    .O(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT1 )
  );
  LUT5 #(
    .INIT ( 32'h40415540 ))
  \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT13  (
    .I0(\display/digit1 [1]),
    .I1(\display/digit1 [6]),
    .I2(\display/digit1 [3]),
    .I3(\display/digit1 [2]),
    .I4(\display/digit1 [0]),
    .O(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT12_1445 )
  );
  LUT5 #(
    .INIT ( 32'h40415540 ))
  \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT15  (
    .I0(\display/digit2 [1]),
    .I1(\display/digit2 [6]),
    .I2(\display/digit2 [3]),
    .I3(\display/digit2 [2]),
    .I4(\display/digit2 [0]),
    .O(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT14_1447 )
  );
  LUT5 #(
    .INIT ( 32'h40415540 ))
  \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT17  (
    .I0(\display/digit0 [1]),
    .I1(\display/digit0 [6]),
    .I2(\display/digit0 [3]),
    .I3(\display/digit0 [2]),
    .I4(\display/digit0 [0]),
    .O(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT16_1449 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT19  (
    .I0(\display/display/display_cnt [0]),
    .I1(\display/display/display_cnt [1]),
    .I2(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT13_1446 ),
    .I3(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT11_1444 ),
    .I4(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT15_1448 ),
    .I5(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT17_1450 ),
    .O(\display/display/display_cnt[1]_digit3[7]_wide_mux_224_OUT<0> )
  );
  LUT5 #(
    .INIT ( 32'h88A80020 ))
  \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT38  (
    .I0(\display/digit1 [1]),
    .I1(\display/digit1 [4]),
    .I2(\display/digit1 [0]),
    .I3(\display/digit1 [2]),
    .I4(\display/digit1 [3]),
    .O(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT37 )
  );
  LUT6 #(
    .INIT ( 64'h5555555555551110 ))
  \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT310  (
    .I0(\display/display/display_cnt [1]),
    .I1(\display/digit1 [0]),
    .I2(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT31212 ),
    .I3(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT38_1454 ),
    .I4(\display/display/digit1[7]_PWR_5_o_select_111_OUT<7>2 ),
    .I5(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT37 ),
    .O(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT39_1455 )
  );
  LUT6 #(
    .INIT ( 64'h22A2008022A2AAAA ))
  \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT27  (
    .I0(\display/digit2 [1]),
    .I1(\display/digit2 [6]),
    .I2(\display/digit2 [0]),
    .I3(\display/digit2 [2]),
    .I4(\display/digit2 [3]),
    .I5(\display/digit2 [4]),
    .O(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT26_1459 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFAEAEFFAE ))
  \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT29  (
    .I0(\display/display/digit2[7]_PWR_5_o_select_167_OUT<7>2 ),
    .I1(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT2213 ),
    .I2(\display/digit2 [6]),
    .I3(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT27_1460 ),
    .I4(\display/digit2 [0]),
    .I5(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT26_1459 ),
    .O(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT28_1461 )
  );
  LUT6 #(
    .INIT ( 64'h22A2008022A2AAAA ))
  \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT210  (
    .I0(\display/digit0 [1]),
    .I1(\display/digit0 [6]),
    .I2(\display/digit0 [0]),
    .I3(\display/digit0 [2]),
    .I4(\display/digit0 [3]),
    .I5(\display/digit0 [4]),
    .O(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT29_1462 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFAEAEFFAE ))
  \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT212  (
    .I0(\display/display/digit0[7]_PWR_5_o_select_55_OUT<7>2 ),
    .I1(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT2223 ),
    .I2(\display/digit0 [6]),
    .I3(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT210_1463 ),
    .I4(\display/digit0 [0]),
    .I5(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT29_1462 ),
    .O(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT211_1464 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT213  (
    .I0(\display/display/display_cnt [0]),
    .I1(\display/display/display_cnt [1]),
    .I2(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT25 ),
    .I3(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT22 ),
    .I4(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT28_1461 ),
    .I5(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT211_1464 ),
    .O(\display/display/display_cnt[1]_digit3[7]_wide_mux_224_OUT<1> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFF7EFFFFFFD ))
  \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT81  (
    .I0(\display/digit3 [0]),
    .I1(\display/digit3 [6]),
    .I2(\display/digit3 [1]),
    .I3(\display/digit3 [2]),
    .I4(\display/digit3 [3]),
    .I5(\display/digit3 [4]),
    .O(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT8 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFF7EFFFFFFD ))
  \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT82  (
    .I0(\display/digit1 [0]),
    .I1(\display/digit1 [6]),
    .I2(\display/digit1 [1]),
    .I3(\display/digit1 [2]),
    .I4(\display/digit1 [3]),
    .I5(\display/digit1 [4]),
    .O(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT81_1466 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFF7EFFFFFFD ))
  \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT84  (
    .I0(\display/digit2 [0]),
    .I1(\display/digit2 [6]),
    .I2(\display/digit2 [1]),
    .I3(\display/digit2 [2]),
    .I4(\display/digit2 [3]),
    .I5(\display/digit2 [4]),
    .O(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT83 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFF7EFFFFFFD ))
  \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT85  (
    .I0(\display/digit0 [0]),
    .I1(\display/digit0 [6]),
    .I2(\display/digit0 [1]),
    .I3(\display/digit0 [2]),
    .I4(\display/digit0 [3]),
    .I5(\display/digit0 [4]),
    .O(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT84_1468 )
  );
  LUT5 #(
    .INIT ( 32'hFDFDFDA8 ))
  \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT65  (
    .I0(\display/display/display_cnt [1]),
    .I1(\display/display/digit3[7]_PWR_5_o_select_223_OUT<3>4 ),
    .I2(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT61 ),
    .I3(\display/display/digit1[7]_PWR_5_o_select_111_OUT<3>4 ),
    .I4(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT63 ),
    .O(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT64_1471 )
  );
  LUT5 #(
    .INIT ( 32'hFDFDFDA8 ))
  \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT610  (
    .I0(\display/display/display_cnt [1]),
    .I1(\display/display/digit2[7]_PWR_5_o_select_167_OUT<3>4 ),
    .I2(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT66 ),
    .I3(\display/display/digit0[7]_PWR_5_o_select_55_OUT<3>4 ),
    .I4(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT68 ),
    .O(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT69_1474 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT611  (
    .I0(\display/display/display_cnt [0]),
    .I1(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT69_1474 ),
    .I2(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT64_1471 ),
    .O(\display/display/display_cnt[1]_digit3[7]_wide_mux_224_OUT<5> )
  );
  LUT6 #(
    .INIT ( 64'hA8A0A8A808008888 ))
  \display/display/digit3[7]_PWR_5_o_select_223_OUT<5>21  (
    .I0(\display/digit3 [3]),
    .I1(\display/digit3 [1]),
    .I2(\display/digit3 [2]),
    .I3(\display/digit3 [0]),
    .I4(\display/digit3 [6]),
    .I5(\display/digit3 [4]),
    .O(\display/display/digit3[7]_PWR_5_o_select_223_OUT<5>21_1475 )
  );
  LUT6 #(
    .INIT ( 64'hA8A0A8A808008888 ))
  \display/display/digit2[7]_PWR_5_o_select_167_OUT<5>21  (
    .I0(\display/digit2 [3]),
    .I1(\display/digit2 [1]),
    .I2(\display/digit2 [2]),
    .I3(\display/digit2 [0]),
    .I4(\display/digit2 [6]),
    .I5(\display/digit2 [4]),
    .O(\display/display/digit2[7]_PWR_5_o_select_167_OUT<5>21_1476 )
  );
  LUT6 #(
    .INIT ( 64'hA8A0A8A808008888 ))
  \display/display/digit1[7]_PWR_5_o_select_111_OUT<5>21  (
    .I0(\display/digit1 [3]),
    .I1(\display/digit1 [1]),
    .I2(\display/digit1 [2]),
    .I3(\display/digit1 [0]),
    .I4(\display/digit1 [6]),
    .I5(\display/digit1 [4]),
    .O(\display/display/digit1[7]_PWR_5_o_select_111_OUT<5>21_1477 )
  );
  LUT6 #(
    .INIT ( 64'hA8A0A8A808008888 ))
  \display/display/digit0[7]_PWR_5_o_select_55_OUT<5>21  (
    .I0(\display/digit0 [3]),
    .I1(\display/digit0 [1]),
    .I2(\display/digit0 [2]),
    .I3(\display/digit0 [0]),
    .I4(\display/digit0 [6]),
    .I5(\display/digit0 [4]),
    .O(\display/display/digit0[7]_PWR_5_o_select_55_OUT<5>21_1478 )
  );
  IBUF   rx_IBUF (
    .I(rx),
    .O(rx_IBUF_0)
  );
  IBUFG   clk_in_IBUFG (
    .I(clk_in),
    .O(clk_in_IBUFG_1)
  );
  IBUF   rstn_IBUF (
    .I(rstn),
    .O(rstn_IBUF_2)
  );
  OBUF   leds_7_OBUF (
    .I(\uart/ready_11 ),
    .O(leds[7])
  );
  OBUF   leds_6_OBUF (
    .I(\uart/frame_err_12 ),
    .O(leds[6])
  );
  OBUF   leds_5_OBUF (
    .I(leds_5_OBUF_28),
    .O(leds[5])
  );
  OBUF   leds_4_OBUF (
    .I(\display/buf_ptr [4]),
    .O(leds[4])
  );
  OBUF   leds_3_OBUF (
    .I(\display/buf_ptr [3]),
    .O(leds[3])
  );
  OBUF   leds_2_OBUF (
    .I(\display/buf_ptr [2]),
    .O(leds[2])
  );
  OBUF   leds_1_OBUF (
    .I(\display/buf_ptr [1]),
    .O(leds[1])
  );
  OBUF   leds_0_OBUF (
    .I(\display/buf_ptr [0]),
    .O(leds[0])
  );
  OBUF   segments_7_OBUF (
    .I(\display/display/segments [7]),
    .O(segments[7])
  );
  OBUF   segments_6_OBUF (
    .I(\display/display/segments [6]),
    .O(segments[6])
  );
  OBUF   segments_5_OBUF (
    .I(\display/display/segments [5]),
    .O(segments[5])
  );
  OBUF   segments_4_OBUF (
    .I(\display/display/segments [4]),
    .O(segments[4])
  );
  OBUF   segments_3_OBUF (
    .I(\display/display/segments [3]),
    .O(segments[3])
  );
  OBUF   segments_2_OBUF (
    .I(\display/display/segments [2]),
    .O(segments[2])
  );
  OBUF   segments_1_OBUF (
    .I(\display/display/segments [1]),
    .O(segments[1])
  );
  OBUF   segments_0_OBUF (
    .I(\display/display/segments [0]),
    .O(segments[0])
  );
  OBUF   digit_select_3_OBUF (
    .I(\display/display/digit_select [3]),
    .O(digit_select[3])
  );
  OBUF   digit_select_2_OBUF (
    .I(\display/display/digit_select [2]),
    .O(digit_select[2])
  );
  OBUF   digit_select_1_OBUF (
    .I(\display/display/digit_select [1]),
    .O(digit_select[1])
  );
  OBUF   digit_select_0_OBUF (
    .I(\display/display/digit_select [0]),
    .O(digit_select[0])
  );
  OBUF   tx_OBUF (
    .I(\uart/tx_13 ),
    .O(tx)
  );
  OBUF   base_led_OBUF (
    .I(base_led_OBUF_14),
    .O(base_led)
  );
  FDR   data_in (
    .C(clk),
    .D(data_in_glue_set_1504),
    .R(\display/rst ),
    .Q(data_in_37)
  );
  FDR   clearn (
    .C(clk),
    .D(clearn_glue_set_1505),
    .R(_n0051),
    .Q(clearn_38)
  );
  FDR   \uart/tx_ready_held  (
    .C(clk),
    .D(\uart/tx_ready_held_glue_set_1506 ),
    .R(\display/rst ),
    .Q(\uart/tx_ready_held_187 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \uart/tx_ready_held_glue_set  (
    .I0(\uart/GND_3_o_GND_3_o_MUX_54_o ),
    .I1(tx_ready_34),
    .O(\uart/tx_ready_held_glue_set_1506 )
  );
  FDR   \uart/sample_locked  (
    .C(clk),
    .D(\uart/sample_locked_glue_set_1507 ),
    .R(\display/rst ),
    .Q(\uart/sample_locked_184 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \uart/sample_locked_glue_set  (
    .I0(\uart/sample_locked_184 ),
    .I1(\uart/clk_divide[7]_GND_3_o_equal_2_o ),
    .O(\uart/sample_locked_glue_set_1507 )
  );
  FDR   \display/init  (
    .C(clk),
    .D(\display/init_glue_set_1508 ),
    .R(\display/_n0343 ),
    .Q(\display/init_1013 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uart/Mcount_clk_divide_cy<6>_rt  (
    .I0(\uart/clk_divide [6]),
    .O(\uart/Mcount_clk_divide_cy<6>_rt_1509 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uart/Mcount_clk_divide_cy<5>_rt  (
    .I0(\uart/clk_divide [5]),
    .O(\uart/Mcount_clk_divide_cy<5>_rt_1510 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uart/Mcount_clk_divide_cy<4>_rt  (
    .I0(\uart/clk_divide [4]),
    .O(\uart/Mcount_clk_divide_cy<4>_rt_1511 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uart/Mcount_clk_divide_cy<3>_rt  (
    .I0(\uart/clk_divide [3]),
    .O(\uart/Mcount_clk_divide_cy<3>_rt_1512 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uart/Mcount_clk_divide_cy<2>_rt  (
    .I0(\uart/clk_divide [2]),
    .O(\uart/Mcount_clk_divide_cy<2>_rt_1513 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uart/Mcount_clk_divide_cy<1>_rt  (
    .I0(\uart/clk_divide [1]),
    .O(\uart/Mcount_clk_divide_cy<1>_rt_1514 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \display/four_hz/Mcount_counter_cy<21>_rt  (
    .I0(\display/four_hz/counter [21]),
    .O(\display/four_hz/Mcount_counter_cy<21>_rt_1515 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \display/four_hz/Mcount_counter_cy<20>_rt  (
    .I0(\display/four_hz/counter [20]),
    .O(\display/four_hz/Mcount_counter_cy<20>_rt_1516 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \display/four_hz/Mcount_counter_cy<19>_rt  (
    .I0(\display/four_hz/counter [19]),
    .O(\display/four_hz/Mcount_counter_cy<19>_rt_1517 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \display/four_hz/Mcount_counter_cy<18>_rt  (
    .I0(\display/four_hz/counter [18]),
    .O(\display/four_hz/Mcount_counter_cy<18>_rt_1518 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \display/four_hz/Mcount_counter_cy<17>_rt  (
    .I0(\display/four_hz/counter [17]),
    .O(\display/four_hz/Mcount_counter_cy<17>_rt_1519 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \display/four_hz/Mcount_counter_cy<16>_rt  (
    .I0(\display/four_hz/counter [16]),
    .O(\display/four_hz/Mcount_counter_cy<16>_rt_1520 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \display/four_hz/Mcount_counter_cy<15>_rt  (
    .I0(\display/four_hz/counter [15]),
    .O(\display/four_hz/Mcount_counter_cy<15>_rt_1521 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \display/four_hz/Mcount_counter_cy<14>_rt  (
    .I0(\display/four_hz/counter [14]),
    .O(\display/four_hz/Mcount_counter_cy<14>_rt_1522 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \display/four_hz/Mcount_counter_cy<13>_rt  (
    .I0(\display/four_hz/counter [13]),
    .O(\display/four_hz/Mcount_counter_cy<13>_rt_1523 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \display/four_hz/Mcount_counter_cy<12>_rt  (
    .I0(\display/four_hz/counter [12]),
    .O(\display/four_hz/Mcount_counter_cy<12>_rt_1524 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \display/four_hz/Mcount_counter_cy<11>_rt  (
    .I0(\display/four_hz/counter [11]),
    .O(\display/four_hz/Mcount_counter_cy<11>_rt_1525 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \display/four_hz/Mcount_counter_cy<10>_rt  (
    .I0(\display/four_hz/counter [10]),
    .O(\display/four_hz/Mcount_counter_cy<10>_rt_1526 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \display/four_hz/Mcount_counter_cy<9>_rt  (
    .I0(\display/four_hz/counter [9]),
    .O(\display/four_hz/Mcount_counter_cy<9>_rt_1527 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \display/four_hz/Mcount_counter_cy<8>_rt  (
    .I0(\display/four_hz/counter [8]),
    .O(\display/four_hz/Mcount_counter_cy<8>_rt_1528 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \display/four_hz/Mcount_counter_cy<7>_rt  (
    .I0(\display/four_hz/counter [7]),
    .O(\display/four_hz/Mcount_counter_cy<7>_rt_1529 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \display/four_hz/Mcount_counter_cy<6>_rt  (
    .I0(\display/four_hz/counter [6]),
    .O(\display/four_hz/Mcount_counter_cy<6>_rt_1530 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \display/four_hz/Mcount_counter_cy<5>_rt  (
    .I0(\display/four_hz/counter [5]),
    .O(\display/four_hz/Mcount_counter_cy<5>_rt_1531 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \display/four_hz/Mcount_counter_cy<4>_rt  (
    .I0(\display/four_hz/counter [4]),
    .O(\display/four_hz/Mcount_counter_cy<4>_rt_1532 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \display/four_hz/Mcount_counter_cy<3>_rt  (
    .I0(\display/four_hz/counter [3]),
    .O(\display/four_hz/Mcount_counter_cy<3>_rt_1533 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \display/four_hz/Mcount_counter_cy<2>_rt  (
    .I0(\display/four_hz/counter [2]),
    .O(\display/four_hz/Mcount_counter_cy<2>_rt_1534 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \display/four_hz/Mcount_counter_cy<1>_rt  (
    .I0(\display/four_hz/counter [1]),
    .O(\display/four_hz/Mcount_counter_cy<1>_rt_1535 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uart/Mcount_clk_divide_xor<7>_rt  (
    .I0(\uart/clk_divide [7]),
    .O(\uart/Mcount_clk_divide_xor<7>_rt_1536 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \display/four_hz/Mcount_counter_xor<22>_rt  (
    .I0(\display/four_hz/counter [22]),
    .O(\display/four_hz/Mcount_counter_xor<22>_rt_1537 )
  );
  LUT3 #(
    .INIT ( 8'hF7 ))
  \display/Mmux_buf_len[4]_GND_5_o_select_124_OUT31_SW0  (
    .I0(\display/buf_len [2]),
    .I1(\display/buf_ptr [2]),
    .I2(\display/GND_5_o_GND_5_o_equal_89_o ),
    .O(N62)
  );
  LUT6 #(
    .INIT ( 64'hF2F3F2F222332222 ))
  \display/Mmux_buf_len[4]_GND_5_o_select_124_OUT33  (
    .I0(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT17 ),
    .I1(\display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT6 ),
    .I2(\display/Mmux_buf_len[4]_GND_5_o_select_124_OUT31 ),
    .I3(N62),
    .I4(\display/Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT61_204 ),
    .I5(\display/buf_ptr[4]_buf_len[4]_LessThan_53_o721 ),
    .O(\display/buf_len[4]_GND_5_o_select_124_OUT<2> )
  );
  LUT6 #(
    .INIT ( 64'h4444444444444544 ))
  \display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT84  (
    .I0(\display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT6 ),
    .I1(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT81 ),
    .I2(\display/GND_5_o_GND_5_o_equal_89_o ),
    .I3(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT82_1324 ),
    .I4(\display/GND_5_o_GND_5_o_equal_84_o ),
    .I5(\display/buf_ptr[4]_buf_len[4]_LessThan_53_o26 ),
    .O(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT83_1325 )
  );
  LUT6 #(
    .INIT ( 64'h4444444444444544 ))
  \display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT64  (
    .I0(\display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT6 ),
    .I1(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT61 ),
    .I2(\display/GND_5_o_GND_5_o_equal_89_o ),
    .I3(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT62_1327 ),
    .I4(\display/GND_5_o_GND_5_o_equal_84_o ),
    .I5(\display/buf_ptr[4]_buf_len[4]_LessThan_53_o26 ),
    .O(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT63_1328 )
  );
  LUT6 #(
    .INIT ( 64'h4444444444444544 ))
  \display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT44  (
    .I0(\display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT6 ),
    .I1(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT41 ),
    .I2(\display/GND_5_o_GND_5_o_equal_89_o ),
    .I3(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT42_1330 ),
    .I4(\display/GND_5_o_GND_5_o_equal_84_o ),
    .I5(\display/buf_ptr[4]_buf_len[4]_LessThan_53_o26 ),
    .O(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT43_1331 )
  );
  LUT6 #(
    .INIT ( 64'h4444444444444544 ))
  \display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT24  (
    .I0(\display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT6 ),
    .I1(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT21 ),
    .I2(\display/GND_5_o_GND_5_o_equal_89_o ),
    .I3(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT22_1333 ),
    .I4(\display/GND_5_o_GND_5_o_equal_84_o ),
    .I5(\display/buf_ptr[4]_buf_len[4]_LessThan_53_o26 ),
    .O(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT23_1334 )
  );
  LUT6 #(
    .INIT ( 64'h4444444444444544 ))
  \display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT164  (
    .I0(\display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT6 ),
    .I1(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT161 ),
    .I2(\display/GND_5_o_GND_5_o_equal_89_o ),
    .I3(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT162_1336 ),
    .I4(\display/GND_5_o_GND_5_o_equal_84_o ),
    .I5(\display/buf_ptr[4]_buf_len[4]_LessThan_53_o26 ),
    .O(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT163_1337 )
  );
  LUT6 #(
    .INIT ( 64'h4444444444444544 ))
  \display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT144  (
    .I0(\display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT6 ),
    .I1(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT141 ),
    .I2(\display/GND_5_o_GND_5_o_equal_89_o ),
    .I3(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT142_1339 ),
    .I4(\display/GND_5_o_GND_5_o_equal_84_o ),
    .I5(\display/buf_ptr[4]_buf_len[4]_LessThan_53_o26 ),
    .O(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT143_1340 )
  );
  LUT6 #(
    .INIT ( 64'h4444444444444544 ))
  \display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT105  (
    .I0(\display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT6 ),
    .I1(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT102 ),
    .I2(\display/GND_5_o_GND_5_o_equal_89_o ),
    .I3(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT103_1342 ),
    .I4(\display/GND_5_o_GND_5_o_equal_84_o ),
    .I5(\display/buf_ptr[4]_buf_len[4]_LessThan_53_o26 ),
    .O(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT104_1343 )
  );
  LUT5 #(
    .INIT ( 32'hD7BDEBFE ))
  \display/GND_5_o_GND_5_o_equal_77_o6_SW0_SW0  (
    .I0(\display/buf_len [4]),
    .I1(\display/Madd__n0266_cy [2]),
    .I2(\display/buf_len [3]),
    .I3(\display/buf_ptr_3_2_1567 ),
    .I4(\display/buf_ptr_4_2_1569 ),
    .O(N64)
  );
  LUT6 #(
    .INIT ( 64'hFAF3FAFAAA33AAAA ))
  \display/Mmux_buf_len[4]_GND_5_o_select_124_OUT23  (
    .I0(N66),
    .I1(N67),
    .I2(\display/Mmux_buf_len[4]_GND_5_o_select_124_OUT2 ),
    .I3(\display/GND_5_o_GND_5_o_equal_89_o ),
    .I4(\display/Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT61_204 ),
    .I5(\display/buf_ptr[4]_buf_len[4]_LessThan_53_o721 ),
    .O(\display/buf_len[4]_GND_5_o_select_124_OUT<1> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFEEEEE000 ))
  \display/Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT66  (
    .I0(\display/buf_len [1]),
    .I1(\display/buf_len [0]),
    .I2(\display/buf_ptr[4]_buf_len[4]_LessThan_53_o721 ),
    .I3(\display/GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT<5> ),
    .I4(\display/Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT65_1371 ),
    .I5(\display/Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT64_1370 ),
    .O(\display/buf_len[4]_ascii_buf[0][7]_select_123_OUT<5> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFA8A8A800 ))
  \display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT125  (
    .I0(\display/buf_len [2]),
    .I1(\display/buf_len [0]),
    .I2(\display/buf_len [1]),
    .I3(\display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT123_1387 ),
    .I4(\display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT122_1386 ),
    .I5(\display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT121_1385 ),
    .O(\display/buf_len[4]_ascii_buf[2][7]_select_121_OUT<5> )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \display/Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT611  (
    .I0(\display/buf_ptr[4]_buf_len[4]_LessThan_53_o1_1572 ),
    .I1(\display/GND_5_o_GND_5_o_equal_84_o63_1570 ),
    .I2(\display/GND_5_o_GND_5_o_equal_77_o ),
    .I3(\display/buf_ptr[4]_buf_len[4]_equal_68_o5_1581 ),
    .O(\display/Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT61_204 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000008241 ))
  \display/buf_ptr[4]_buf_len[4]_equal_68_o5  (
    .I0(\display/buf_len [3]),
    .I1(\display/buf_len [1]),
    .I2(\display/buf_ptr_1_3_1561 ),
    .I3(\display/buf_ptr_3_3_1573 ),
    .I4(\display/GND_5_o_GND_5_o_equal_77_o1_210 ),
    .I5(N28),
    .O(\display/buf_ptr[4]_buf_len[4]_equal_68_o )
  );
  LUT6 #(
    .INIT ( 64'h0000281400000000 ))
  \display/GND_5_o_GND_5_o_equal_77_o6  (
    .I0(\display/_n0266 [3]),
    .I1(\display/buf_len [0]),
    .I2(\display/buf_ptr_0_3_1563 ),
    .I3(\display/buf_ptr_2_3_1578 ),
    .I4(N64),
    .I5(\display/GND_5_o_GND_5_o_equal_77_o61 ),
    .O(\display/GND_5_o_GND_5_o_equal_77_o )
  );
  LUT6 #(
    .INIT ( 64'hBFDFFBFDEFF7FEFF ))
  \display/GND_5_o_GND_5_o_equal_84_o63_SW0  (
    .I0(\display/buf_len [2]),
    .I1(\display/buf_len [3]),
    .I2(\display/buf_len [4]),
    .I3(\display/buf_ptr_2_1_1559 ),
    .I4(\display/buf_ptr_4_1_1565 ),
    .I5(\display/buf_ptr_3_1_1564 ),
    .O(N74)
  );
  LUT6 #(
    .INIT ( 64'h7FF7BFFBDFFDEFFE ))
  \display/GND_5_o_GND_5_o_equal_84_o63_SW1  (
    .I0(\display/buf_len [4]),
    .I1(\display/buf_len [3]),
    .I2(\display/buf_len [2]),
    .I3(\display/buf_ptr_2_1_1559 ),
    .I4(\display/buf_ptr_4_1_1565 ),
    .I5(\display/buf_ptr_3_1_1564 ),
    .O(N75)
  );
  LUT6 #(
    .INIT ( 64'h0000201008042814 ))
  \display/GND_5_o_GND_5_o_equal_84_o63  (
    .I0(\display/buf_len [0]),
    .I1(\display/buf_len [1]),
    .I2(\display/buf_ptr_1_3_1561 ),
    .I3(\display/buf_ptr_0_3_1563 ),
    .I4(N75),
    .I5(N74),
    .O(\display/GND_5_o_GND_5_o_equal_84_o )
  );
  LUT5 #(
    .INIT ( 32'hEEEFEEEE ))
  \display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT68_SW0  (
    .I0(\display/buf_len [4]),
    .I1(\display/buf_len [3]),
    .I2(\display/buf_ptr [4]),
    .I3(\display/buf_ptr [3]),
    .I4(N60),
    .O(N77)
  );
  LUT6 #(
    .INIT ( 64'h0003000300030002 ))
  \display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT68  (
    .I0(\display/digit1 [5]),
    .I1(N77),
    .I2(\display/buf_ptr[4]_buf_len[4]_equal_68_o ),
    .I3(\display/GND_5_o_GND_5_o_equal_77_o ),
    .I4(\display/GND_5_o_GND_5_o_equal_89_o ),
    .I5(\display/GND_5_o_GND_5_o_equal_84_o ),
    .O(\display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT68_1383 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \display/buf_ptr[4]_buf_len[4]_LessThan_53_o7211  (
    .I0(\display/buf_ptr[4]_buf_len[4]_equal_68_o ),
    .I1(\display/GND_5_o_GND_5_o_equal_77_o ),
    .I2(\display/GND_5_o_GND_5_o_equal_84_o ),
    .I3(\display/buf_ptr[4]_buf_len[4]_LessThan_53_o ),
    .O(\display/buf_ptr[4]_buf_len[4]_LessThan_53_o721 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000302 ))
  \display/Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT65  (
    .I0(\display/digit0 [5]),
    .I1(\display/GND_5_o_GND_5_o_equal_77_o ),
    .I2(\display/buf_ptr[4]_buf_len[4]_equal_68_o ),
    .I3(\display/GND_5_o_GND_5_o_equal_89_o ),
    .I4(\display/GND_5_o_GND_5_o_equal_84_o ),
    .I5(\display/buf_ptr[4]_buf_len[4]_LessThan_53_o ),
    .O(\display/Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT65_1371 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_7  (
    .I0(\display/ascii_buf_31 [96]),
    .I1(\display/ascii_buf_31 [104]),
    .I2(\display/ascii_buf_31 [120]),
    .I3(\display/ascii_buf_31 [112]),
    .I4(\display/buf_ptr [0]),
    .I5(\display/buf_ptr[4]_GND_5_o_add_86_OUT<1> ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_7_371 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_8  (
    .I0(\display/ascii_buf_31 [64]),
    .I1(\display/ascii_buf_31 [72]),
    .I2(\display/ascii_buf_31 [88]),
    .I3(\display/ascii_buf_31 [80]),
    .I4(\display/buf_ptr [0]),
    .I5(\display/buf_ptr[4]_GND_5_o_add_86_OUT<1>1_1574 ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_8_372 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_81  (
    .I0(\display/ascii_buf_31 [32]),
    .I1(\display/ascii_buf_31 [40]),
    .I2(\display/ascii_buf_31 [56]),
    .I3(\display/ascii_buf_31 [48]),
    .I4(\display/buf_ptr [0]),
    .I5(\display/buf_ptr[4]_GND_5_o_add_86_OUT<1>11 ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_81_373 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_9  (
    .I0(\display/ascii_buf_31 [0]),
    .I1(\display/ascii_buf_31 [8]),
    .I2(\display/ascii_buf_31 [24]),
    .I3(\display/ascii_buf_31 [16]),
    .I4(\display/buf_ptr [0]),
    .I5(\display/buf_ptr[4]_GND_5_o_add_86_OUT<1>11 ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_9_374 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_71  (
    .I0(\display/ascii_buf_31 [97]),
    .I1(\display/ascii_buf_31 [105]),
    .I2(\display/ascii_buf_31 [121]),
    .I3(\display/ascii_buf_31 [113]),
    .I4(\display/buf_ptr [0]),
    .I5(\display/buf_ptr[4]_GND_5_o_add_86_OUT<1> ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_71_381 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_83  (
    .I0(\display/ascii_buf_31 [65]),
    .I1(\display/ascii_buf_31 [73]),
    .I2(\display/ascii_buf_31 [89]),
    .I3(\display/ascii_buf_31 [81]),
    .I4(\display/buf_ptr [0]),
    .I5(\display/buf_ptr[4]_GND_5_o_add_86_OUT<1>1_1574 ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_83_382 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_84  (
    .I0(\display/ascii_buf_31 [33]),
    .I1(\display/ascii_buf_31 [41]),
    .I2(\display/ascii_buf_31 [57]),
    .I3(\display/ascii_buf_31 [49]),
    .I4(\display/buf_ptr [0]),
    .I5(\display/buf_ptr[4]_GND_5_o_add_86_OUT<1>11 ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_84_383 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_93  (
    .I0(\display/ascii_buf_31 [1]),
    .I1(\display/ascii_buf_31 [9]),
    .I2(\display/ascii_buf_31 [25]),
    .I3(\display/ascii_buf_31 [17]),
    .I4(\display/buf_ptr [0]),
    .I5(\display/buf_ptr[4]_GND_5_o_add_86_OUT<1>11 ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_93_384 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_72  (
    .I0(\display/ascii_buf_31 [98]),
    .I1(\display/ascii_buf_31 [106]),
    .I2(\display/ascii_buf_31 [122]),
    .I3(\display/ascii_buf_31 [114]),
    .I4(\display/buf_ptr [0]),
    .I5(\display/buf_ptr[4]_GND_5_o_add_86_OUT<1> ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_72_391 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_86  (
    .I0(\display/ascii_buf_31 [66]),
    .I1(\display/ascii_buf_31 [74]),
    .I2(\display/ascii_buf_31 [90]),
    .I3(\display/ascii_buf_31 [82]),
    .I4(\display/buf_ptr [0]),
    .I5(\display/buf_ptr[4]_GND_5_o_add_86_OUT<1>1_1574 ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_86_392 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_87  (
    .I0(\display/ascii_buf_31 [34]),
    .I1(\display/ascii_buf_31 [42]),
    .I2(\display/ascii_buf_31 [58]),
    .I3(\display/ascii_buf_31 [50]),
    .I4(\display/buf_ptr [0]),
    .I5(\display/buf_ptr[4]_GND_5_o_add_86_OUT<1>11 ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_87_393 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_96  (
    .I0(\display/ascii_buf_31 [2]),
    .I1(\display/ascii_buf_31 [10]),
    .I2(\display/ascii_buf_31 [26]),
    .I3(\display/ascii_buf_31 [18]),
    .I4(\display/buf_ptr [0]),
    .I5(\display/buf_ptr[4]_GND_5_o_add_86_OUT<1>11 ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_96_394 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_73  (
    .I0(\display/ascii_buf_31 [99]),
    .I1(\display/ascii_buf_31 [107]),
    .I2(\display/ascii_buf_31 [123]),
    .I3(\display/ascii_buf_31 [115]),
    .I4(\display/buf_ptr [0]),
    .I5(\display/buf_ptr[4]_GND_5_o_add_86_OUT<1> ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_73_401 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_89  (
    .I0(\display/ascii_buf_31 [67]),
    .I1(\display/ascii_buf_31 [75]),
    .I2(\display/ascii_buf_31 [91]),
    .I3(\display/ascii_buf_31 [83]),
    .I4(\display/buf_ptr [0]),
    .I5(\display/buf_ptr[4]_GND_5_o_add_86_OUT<1>1_1574 ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_89_402 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_810  (
    .I0(\display/ascii_buf_31 [35]),
    .I1(\display/ascii_buf_31 [43]),
    .I2(\display/ascii_buf_31 [59]),
    .I3(\display/ascii_buf_31 [51]),
    .I4(\display/buf_ptr [0]),
    .I5(\display/buf_ptr[4]_GND_5_o_add_86_OUT<1>11 ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_810_403 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_99  (
    .I0(\display/ascii_buf_31 [3]),
    .I1(\display/ascii_buf_31 [11]),
    .I2(\display/ascii_buf_31 [27]),
    .I3(\display/ascii_buf_31 [19]),
    .I4(\display/buf_ptr [0]),
    .I5(\display/buf_ptr[4]_GND_5_o_add_86_OUT<1>11 ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_99_404 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_74  (
    .I0(\display/ascii_buf_31 [100]),
    .I1(\display/ascii_buf_31 [108]),
    .I2(\display/ascii_buf_31 [124]),
    .I3(\display/ascii_buf_31 [116]),
    .I4(\display/buf_ptr [0]),
    .I5(\display/buf_ptr[4]_GND_5_o_add_86_OUT<1> ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_74_411 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_812  (
    .I0(\display/ascii_buf_31 [68]),
    .I1(\display/ascii_buf_31 [76]),
    .I2(\display/ascii_buf_31 [92]),
    .I3(\display/ascii_buf_31 [84]),
    .I4(\display/buf_ptr [0]),
    .I5(\display/buf_ptr[4]_GND_5_o_add_86_OUT<1>1_1574 ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_812_412 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_813  (
    .I0(\display/ascii_buf_31 [36]),
    .I1(\display/ascii_buf_31 [44]),
    .I2(\display/ascii_buf_31 [60]),
    .I3(\display/ascii_buf_31 [52]),
    .I4(\display/buf_ptr [0]),
    .I5(\display/buf_ptr[4]_GND_5_o_add_86_OUT<1>11 ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_813_413 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_912  (
    .I0(\display/ascii_buf_31 [4]),
    .I1(\display/ascii_buf_31 [12]),
    .I2(\display/ascii_buf_31 [28]),
    .I3(\display/ascii_buf_31 [20]),
    .I4(\display/buf_ptr [0]),
    .I5(\display/buf_ptr[4]_GND_5_o_add_86_OUT<1>11 ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_912_414 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_76  (
    .I0(\display/ascii_buf_31 [102]),
    .I1(\display/ascii_buf_31 [110]),
    .I2(\display/ascii_buf_31 [126]),
    .I3(\display/ascii_buf_31 [118]),
    .I4(\display/buf_ptr [0]),
    .I5(\display/buf_ptr[4]_GND_5_o_add_86_OUT<1>1_1574 ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_76_431 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_818  (
    .I0(\display/ascii_buf_31 [70]),
    .I1(\display/ascii_buf_31 [78]),
    .I2(\display/ascii_buf_31 [94]),
    .I3(\display/ascii_buf_31 [86]),
    .I4(\display/buf_ptr [0]),
    .I5(\display/buf_ptr[4]_GND_5_o_add_86_OUT<1>1_1574 ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_818_432 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_819  (
    .I0(\display/ascii_buf_31 [38]),
    .I1(\display/ascii_buf_31 [46]),
    .I2(\display/ascii_buf_31 [62]),
    .I3(\display/ascii_buf_31 [54]),
    .I4(\display/buf_ptr [0]),
    .I5(\display/buf_ptr[4]_GND_5_o_add_86_OUT<1>11 ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_819_433 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_918  (
    .I0(\display/ascii_buf_31 [6]),
    .I1(\display/ascii_buf_31 [14]),
    .I2(\display/ascii_buf_31 [30]),
    .I3(\display/ascii_buf_31 [22]),
    .I4(\display/buf_ptr [0]),
    .I5(\display/buf_ptr[4]_GND_5_o_add_86_OUT<1>11 ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_918_434 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_77  (
    .I0(\display/ascii_buf_31 [103]),
    .I1(\display/ascii_buf_31 [111]),
    .I2(\display/ascii_buf_31 [127]),
    .I3(\display/ascii_buf_31 [119]),
    .I4(\display/buf_ptr [0]),
    .I5(\display/buf_ptr[4]_GND_5_o_add_86_OUT<1>1_1574 ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_77_441 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_821  (
    .I0(\display/ascii_buf_31 [71]),
    .I1(\display/ascii_buf_31 [79]),
    .I2(\display/ascii_buf_31 [95]),
    .I3(\display/ascii_buf_31 [87]),
    .I4(\display/buf_ptr [0]),
    .I5(\display/buf_ptr[4]_GND_5_o_add_86_OUT<1>1_1574 ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_821_442 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_822  (
    .I0(\display/ascii_buf_31 [39]),
    .I1(\display/ascii_buf_31 [47]),
    .I2(\display/ascii_buf_31 [63]),
    .I3(\display/ascii_buf_31 [55]),
    .I4(\display/buf_ptr [0]),
    .I5(\display/buf_ptr[4]_GND_5_o_add_86_OUT<1>11 ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_822_443 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_921  (
    .I0(\display/ascii_buf_31 [7]),
    .I1(\display/ascii_buf_31 [15]),
    .I2(\display/ascii_buf_31 [31]),
    .I3(\display/ascii_buf_31 [23]),
    .I4(\display/buf_ptr [0]),
    .I5(\display/buf_ptr[4]_GND_5_o_add_86_OUT<1>11 ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_921_444 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_82  (
    .I0(\display/ascii_buf_31 [224]),
    .I1(\display/ascii_buf_31 [232]),
    .I2(\display/ascii_buf_31 [248]),
    .I3(\display/ascii_buf_31 [240]),
    .I4(\display/buf_ptr [0]),
    .I5(\display/buf_ptr[4]_GND_5_o_add_86_OUT<1> ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_82_376 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_91  (
    .I0(\display/ascii_buf_31 [192]),
    .I1(\display/ascii_buf_31 [200]),
    .I2(\display/ascii_buf_31 [216]),
    .I3(\display/ascii_buf_31 [208]),
    .I4(\display/buf_ptr [0]),
    .I5(\display/buf_ptr[4]_GND_5_o_add_86_OUT<1> ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_91_377 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_92  (
    .I0(\display/ascii_buf_31 [160]),
    .I1(\display/ascii_buf_31 [168]),
    .I2(\display/ascii_buf_31 [184]),
    .I3(\display/ascii_buf_31 [176]),
    .I4(\display/buf_ptr [0]),
    .I5(\display/buf_ptr[4]_GND_5_o_add_86_OUT<1>1_1574 ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_92_378 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_10  (
    .I0(\display/ascii_buf_31 [128]),
    .I1(\display/ascii_buf_31 [136]),
    .I2(\display/ascii_buf_31 [152]),
    .I3(\display/ascii_buf_31 [144]),
    .I4(\display/buf_ptr [0]),
    .I5(\display/buf_ptr[4]_GND_5_o_add_86_OUT<1>1_1574 ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_10_379 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_85  (
    .I0(\display/ascii_buf_31 [225]),
    .I1(\display/ascii_buf_31 [233]),
    .I2(\display/ascii_buf_31 [249]),
    .I3(\display/ascii_buf_31 [241]),
    .I4(\display/buf_ptr [0]),
    .I5(\display/buf_ptr[4]_GND_5_o_add_86_OUT<1> ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_85_386 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_94  (
    .I0(\display/ascii_buf_31 [193]),
    .I1(\display/ascii_buf_31 [201]),
    .I2(\display/ascii_buf_31 [217]),
    .I3(\display/ascii_buf_31 [209]),
    .I4(\display/buf_ptr [0]),
    .I5(\display/buf_ptr[4]_GND_5_o_add_86_OUT<1> ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_94_387 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_95  (
    .I0(\display/ascii_buf_31 [161]),
    .I1(\display/ascii_buf_31 [169]),
    .I2(\display/ascii_buf_31 [185]),
    .I3(\display/ascii_buf_31 [177]),
    .I4(\display/buf_ptr [0]),
    .I5(\display/buf_ptr[4]_GND_5_o_add_86_OUT<1>1_1574 ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_95_388 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_101  (
    .I0(\display/ascii_buf_31 [129]),
    .I1(\display/ascii_buf_31 [137]),
    .I2(\display/ascii_buf_31 [153]),
    .I3(\display/ascii_buf_31 [145]),
    .I4(\display/buf_ptr [0]),
    .I5(\display/buf_ptr[4]_GND_5_o_add_86_OUT<1>1_1574 ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_101_389 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_88  (
    .I0(\display/ascii_buf_31 [226]),
    .I1(\display/ascii_buf_31 [234]),
    .I2(\display/ascii_buf_31 [250]),
    .I3(\display/ascii_buf_31 [242]),
    .I4(\display/buf_ptr [0]),
    .I5(\display/buf_ptr[4]_GND_5_o_add_86_OUT<1> ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_88_396 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_97  (
    .I0(\display/ascii_buf_31 [194]),
    .I1(\display/ascii_buf_31 [202]),
    .I2(\display/ascii_buf_31 [218]),
    .I3(\display/ascii_buf_31 [210]),
    .I4(\display/buf_ptr [0]),
    .I5(\display/buf_ptr[4]_GND_5_o_add_86_OUT<1> ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_97_397 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_98  (
    .I0(\display/ascii_buf_31 [162]),
    .I1(\display/ascii_buf_31 [170]),
    .I2(\display/ascii_buf_31 [186]),
    .I3(\display/ascii_buf_31 [178]),
    .I4(\display/buf_ptr [0]),
    .I5(\display/buf_ptr[4]_GND_5_o_add_86_OUT<1>1_1574 ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_98_398 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_102  (
    .I0(\display/ascii_buf_31 [130]),
    .I1(\display/ascii_buf_31 [138]),
    .I2(\display/ascii_buf_31 [154]),
    .I3(\display/ascii_buf_31 [146]),
    .I4(\display/buf_ptr [0]),
    .I5(\display/buf_ptr[4]_GND_5_o_add_86_OUT<1>1_1574 ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_102_399 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_811  (
    .I0(\display/ascii_buf_31 [227]),
    .I1(\display/ascii_buf_31 [235]),
    .I2(\display/ascii_buf_31 [251]),
    .I3(\display/ascii_buf_31 [243]),
    .I4(\display/buf_ptr [0]),
    .I5(\display/buf_ptr[4]_GND_5_o_add_86_OUT<1> ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_811_406 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_910  (
    .I0(\display/ascii_buf_31 [195]),
    .I1(\display/ascii_buf_31 [203]),
    .I2(\display/ascii_buf_31 [219]),
    .I3(\display/ascii_buf_31 [211]),
    .I4(\display/buf_ptr [0]),
    .I5(\display/buf_ptr[4]_GND_5_o_add_86_OUT<1> ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_910_407 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_911  (
    .I0(\display/ascii_buf_31 [163]),
    .I1(\display/ascii_buf_31 [171]),
    .I2(\display/ascii_buf_31 [187]),
    .I3(\display/ascii_buf_31 [179]),
    .I4(\display/buf_ptr [0]),
    .I5(\display/buf_ptr[4]_GND_5_o_add_86_OUT<1>11 ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_911_408 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_103  (
    .I0(\display/ascii_buf_31 [131]),
    .I1(\display/ascii_buf_31 [139]),
    .I2(\display/ascii_buf_31 [155]),
    .I3(\display/ascii_buf_31 [147]),
    .I4(\display/buf_ptr [0]),
    .I5(\display/buf_ptr[4]_GND_5_o_add_86_OUT<1>1_1574 ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_103_409 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_814  (
    .I0(\display/ascii_buf_31 [228]),
    .I1(\display/ascii_buf_31 [236]),
    .I2(\display/ascii_buf_31 [252]),
    .I3(\display/ascii_buf_31 [244]),
    .I4(\display/buf_ptr [0]),
    .I5(\display/buf_ptr[4]_GND_5_o_add_86_OUT<1> ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_814_416 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_913  (
    .I0(\display/ascii_buf_31 [196]),
    .I1(\display/ascii_buf_31 [204]),
    .I2(\display/ascii_buf_31 [220]),
    .I3(\display/ascii_buf_31 [212]),
    .I4(\display/buf_ptr [0]),
    .I5(\display/buf_ptr[4]_GND_5_o_add_86_OUT<1> ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_913_417 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_914  (
    .I0(\display/ascii_buf_31 [164]),
    .I1(\display/ascii_buf_31 [172]),
    .I2(\display/ascii_buf_31 [188]),
    .I3(\display/ascii_buf_31 [180]),
    .I4(\display/buf_ptr [0]),
    .I5(\display/buf_ptr[4]_GND_5_o_add_86_OUT<1>11 ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_914_418 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_104  (
    .I0(\display/ascii_buf_31 [132]),
    .I1(\display/ascii_buf_31 [140]),
    .I2(\display/ascii_buf_31 [156]),
    .I3(\display/ascii_buf_31 [148]),
    .I4(\display/buf_ptr [0]),
    .I5(\display/buf_ptr[4]_GND_5_o_add_86_OUT<1>1_1574 ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_104_419 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_820  (
    .I0(\display/ascii_buf_31 [230]),
    .I1(\display/ascii_buf_31 [238]),
    .I2(\display/ascii_buf_31 [254]),
    .I3(\display/ascii_buf_31 [246]),
    .I4(\display/buf_ptr [0]),
    .I5(\display/buf_ptr[4]_GND_5_o_add_86_OUT<1> ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_820_436 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_919  (
    .I0(\display/ascii_buf_31 [198]),
    .I1(\display/ascii_buf_31 [206]),
    .I2(\display/ascii_buf_31 [222]),
    .I3(\display/ascii_buf_31 [214]),
    .I4(\display/buf_ptr [0]),
    .I5(\display/buf_ptr[4]_GND_5_o_add_86_OUT<1> ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_919_437 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_920  (
    .I0(\display/ascii_buf_31 [166]),
    .I1(\display/ascii_buf_31 [174]),
    .I2(\display/ascii_buf_31 [190]),
    .I3(\display/ascii_buf_31 [182]),
    .I4(\display/buf_ptr [0]),
    .I5(\display/buf_ptr[4]_GND_5_o_add_86_OUT<1>11 ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_920_438 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_106  (
    .I0(\display/ascii_buf_31 [134]),
    .I1(\display/ascii_buf_31 [142]),
    .I2(\display/ascii_buf_31 [158]),
    .I3(\display/ascii_buf_31 [150]),
    .I4(\display/buf_ptr [0]),
    .I5(\display/buf_ptr[4]_GND_5_o_add_86_OUT<1>1_1574 ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_106_439 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_823  (
    .I0(\display/ascii_buf_31 [231]),
    .I1(\display/ascii_buf_31 [239]),
    .I2(\display/ascii_buf_31 [255]),
    .I3(\display/ascii_buf_31 [247]),
    .I4(\display/buf_ptr [0]),
    .I5(\display/buf_ptr[4]_GND_5_o_add_86_OUT<1> ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_823_446 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_922  (
    .I0(\display/ascii_buf_31 [199]),
    .I1(\display/ascii_buf_31 [207]),
    .I2(\display/ascii_buf_31 [223]),
    .I3(\display/ascii_buf_31 [215]),
    .I4(\display/buf_ptr [0]),
    .I5(\display/buf_ptr[4]_GND_5_o_add_86_OUT<1> ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_922_447 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_923  (
    .I0(\display/ascii_buf_31 [167]),
    .I1(\display/ascii_buf_31 [175]),
    .I2(\display/ascii_buf_31 [191]),
    .I3(\display/ascii_buf_31 [183]),
    .I4(\display/buf_ptr [0]),
    .I5(\display/buf_ptr[4]_GND_5_o_add_86_OUT<1>11 ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_923_448 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_107  (
    .I0(\display/ascii_buf_31 [135]),
    .I1(\display/ascii_buf_31 [143]),
    .I2(\display/ascii_buf_31 [159]),
    .I3(\display/ascii_buf_31 [151]),
    .I4(\display/buf_ptr [0]),
    .I5(\display/buf_ptr[4]_GND_5_o_add_86_OUT<1>1_1574 ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_107_449 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_75  (
    .I0(\display/ascii_buf_31 [117]),
    .I1(\display/ascii_buf_31 [109]),
    .I2(\display/ascii_buf_31 [125]),
    .I3(\display/ascii_buf_31 [101]),
    .I4(\display/buf_ptr_1_3_1561 ),
    .I5(\display/buf_ptr_0_3_1563 ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_75_261 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_815  (
    .I0(\display/ascii_buf_31 [85]),
    .I1(\display/ascii_buf_31 [77]),
    .I2(\display/ascii_buf_31 [93]),
    .I3(\display/ascii_buf_31 [69]),
    .I4(\display/buf_ptr_1_2_1560 ),
    .I5(\display/buf_ptr_0_3_1563 ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_815_262 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_816  (
    .I0(\display/ascii_buf_31 [53]),
    .I1(\display/ascii_buf_31 [45]),
    .I2(\display/ascii_buf_31 [61]),
    .I3(\display/ascii_buf_31 [37]),
    .I4(\display/buf_ptr_0_2_1562 ),
    .I5(\display/buf_ptr_1_4_1571 ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_816_263 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_915  (
    .I0(\display/ascii_buf_31 [21]),
    .I1(\display/ascii_buf_31 [13]),
    .I2(\display/ascii_buf_31 [29]),
    .I3(\display/ascii_buf_31 [5]),
    .I4(\display/buf_ptr_1_2_1560 ),
    .I5(\display/buf_ptr_0_2_1562 ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_915_264 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_75  (
    .I0(\display/ascii_buf_31 [101]),
    .I1(\display/ascii_buf_31 [125]),
    .I2(\display/ascii_buf_31 [109]),
    .I3(\display/ascii_buf_31 [117]),
    .I4(\display/buf_ptr_1_3_1561 ),
    .I5(\display/buf_ptr_0_3_1563 ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_75_421 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_815  (
    .I0(\display/ascii_buf_31 [69]),
    .I1(\display/ascii_buf_31 [93]),
    .I2(\display/ascii_buf_31 [77]),
    .I3(\display/ascii_buf_31 [85]),
    .I4(\display/buf_ptr_1_3_1561 ),
    .I5(\display/buf_ptr_0_3_1563 ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_815_422 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_816  (
    .I0(\display/ascii_buf_31 [37]),
    .I1(\display/ascii_buf_31 [61]),
    .I2(\display/ascii_buf_31 [45]),
    .I3(\display/ascii_buf_31 [53]),
    .I4(\display/buf_ptr_1_4_1571 ),
    .I5(\display/buf_ptr_0_5_1577 ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_816_423 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_915  (
    .I0(\display/ascii_buf_31 [5]),
    .I1(\display/ascii_buf_31 [29]),
    .I2(\display/ascii_buf_31 [13]),
    .I3(\display/ascii_buf_31 [21]),
    .I4(\display/buf_ptr_1_4_1571 ),
    .I5(\display/buf_ptr_0_5_1577 ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_915_424 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_75  (
    .I0(\display/ascii_buf_31 [109]),
    .I1(\display/ascii_buf_31 [125]),
    .I2(\display/ascii_buf_31 [117]),
    .I3(\display/ascii_buf_31 [101]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_75_341 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_815  (
    .I0(\display/ascii_buf_31 [77]),
    .I1(\display/ascii_buf_31 [93]),
    .I2(\display/ascii_buf_31 [85]),
    .I3(\display/ascii_buf_31 [69]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_815_342 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_816  (
    .I0(\display/ascii_buf_31 [45]),
    .I1(\display/ascii_buf_31 [61]),
    .I2(\display/ascii_buf_31 [53]),
    .I3(\display/ascii_buf_31 [37]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_816_343 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_915  (
    .I0(\display/ascii_buf_31 [13]),
    .I1(\display/ascii_buf_31 [29]),
    .I2(\display/ascii_buf_31 [21]),
    .I3(\display/ascii_buf_31 [5]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_915_344 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_817  (
    .I0(\display/ascii_buf_31 [245]),
    .I1(\display/ascii_buf_31 [237]),
    .I2(\display/ascii_buf_31 [253]),
    .I3(\display/ascii_buf_31 [229]),
    .I4(\display/buf_ptr_1_3_1561 ),
    .I5(\display/buf_ptr_0_3_1563 ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_817_266 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_916  (
    .I0(\display/ascii_buf_31 [213]),
    .I1(\display/ascii_buf_31 [205]),
    .I2(\display/ascii_buf_31 [221]),
    .I3(\display/ascii_buf_31 [197]),
    .I4(\display/buf_ptr_1_2_1560 ),
    .I5(\display/buf_ptr_0_3_1563 ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_916_267 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_917  (
    .I0(\display/ascii_buf_31 [181]),
    .I1(\display/ascii_buf_31 [173]),
    .I2(\display/ascii_buf_31 [189]),
    .I3(\display/ascii_buf_31 [165]),
    .I4(\display/buf_ptr_0_2_1562 ),
    .I5(\display/buf_ptr_1_4_1571 ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_917_268 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_105  (
    .I0(\display/ascii_buf_31 [149]),
    .I1(\display/ascii_buf_31 [141]),
    .I2(\display/ascii_buf_31 [157]),
    .I3(\display/ascii_buf_31 [133]),
    .I4(\display/buf_ptr_1_2_1560 ),
    .I5(\display/buf_ptr_0_2_1562 ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_105_269 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_817  (
    .I0(\display/ascii_buf_31 [229]),
    .I1(\display/ascii_buf_31 [253]),
    .I2(\display/ascii_buf_31 [237]),
    .I3(\display/ascii_buf_31 [245]),
    .I4(\display/buf_ptr_1_3_1561 ),
    .I5(\display/buf_ptr_0_3_1563 ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_817_426 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_916  (
    .I0(\display/ascii_buf_31 [197]),
    .I1(\display/ascii_buf_31 [221]),
    .I2(\display/ascii_buf_31 [205]),
    .I3(\display/ascii_buf_31 [213]),
    .I4(\display/buf_ptr_1_3_1561 ),
    .I5(\display/buf_ptr_0_3_1563 ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_916_427 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_917  (
    .I0(\display/ascii_buf_31 [165]),
    .I1(\display/ascii_buf_31 [189]),
    .I2(\display/ascii_buf_31 [173]),
    .I3(\display/ascii_buf_31 [181]),
    .I4(\display/buf_ptr_1_4_1571 ),
    .I5(\display/buf_ptr_0_5_1577 ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_917_428 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_105  (
    .I0(\display/ascii_buf_31 [133]),
    .I1(\display/ascii_buf_31 [157]),
    .I2(\display/ascii_buf_31 [141]),
    .I3(\display/ascii_buf_31 [149]),
    .I4(\display/buf_ptr_1_4_1571 ),
    .I5(\display/buf_ptr_0_5_1577 ),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_105_429 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_817  (
    .I0(\display/ascii_buf_31 [237]),
    .I1(\display/ascii_buf_31 [253]),
    .I2(\display/ascii_buf_31 [245]),
    .I3(\display/ascii_buf_31 [229]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_817_346 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_916  (
    .I0(\display/ascii_buf_31 [205]),
    .I1(\display/ascii_buf_31 [221]),
    .I2(\display/ascii_buf_31 [213]),
    .I3(\display/ascii_buf_31 [197]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_916_347 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_917  (
    .I0(\display/ascii_buf_31 [173]),
    .I1(\display/ascii_buf_31 [189]),
    .I2(\display/ascii_buf_31 [181]),
    .I3(\display/ascii_buf_31 [165]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_917_348 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_105  (
    .I0(\display/ascii_buf_31 [141]),
    .I1(\display/ascii_buf_31 [157]),
    .I2(\display/ascii_buf_31 [149]),
    .I3(\display/ascii_buf_31 [133]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_105_349 )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \display/Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT1111_SW0  (
    .I0(\display/buf_ptr [4]),
    .I1(\display/buf_ptr [3]),
    .I2(\display/buf_ptr [2]),
    .O(N79)
  );
  LUT6 #(
    .INIT ( 64'hFFAAFFAAFFFFFCFC ))
  \display/Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT11  (
    .I0(N79),
    .I1(\display/GND_5_o_GND_5_o_equal_77_o ),
    .I2(\display/buf_ptr[4]_buf_len[4]_equal_68_o ),
    .I3(N22),
    .I4(\display/GND_5_o_GND_5_o_equal_84_o ),
    .I5(\display/buf_ptr[4]_buf_len[4]_LessThan_53_o ),
    .O(\display/Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT11_209 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \display/Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT121  (
    .I0(N84),
    .I1(\display/GND_5_o_GND_5_o_equal_77_o ),
    .I2(\display/buf_ptr[4]_buf_len[4]_equal_68_o ),
    .I3(\display/GND_5_o_GND_5_o_equal_89_o ),
    .I4(\display/GND_5_o_GND_5_o_equal_84_o ),
    .I5(\display/buf_ptr[4]_buf_len[4]_LessThan_53_o ),
    .O(\display/Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT12_out1 )
  );
  LUT3 #(
    .INIT ( 8'hFB ))
  \display/buf_ptr[4]_buf_len[4]_LessThan_53_o261_SW1  (
    .I0(\display/buf_len [4]),
    .I1(\display/buf_ptr [4]),
    .I2(\display/buf_len [3]),
    .O(N86)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \display/Mmux_buf_len[4]_GND_5_o_select_124_OUT52  (
    .I0(N86),
    .I1(\display/GND_5_o_GND_5_o_equal_77_o ),
    .I2(\display/buf_ptr[4]_buf_len[4]_equal_68_o ),
    .I3(\display/GND_5_o_GND_5_o_equal_89_o ),
    .I4(\display/GND_5_o_GND_5_o_equal_84_o ),
    .I5(\display/buf_ptr[4]_buf_len[4]_LessThan_53_o ),
    .O(\display/Mmux_buf_len[4]_GND_5_o_select_124_OUT51_1374 )
  );
  LUT3 #(
    .INIT ( 8'hFB ))
  \display/buf_ptr[4]_buf_len[4]_LessThan_53_o261_SW2  (
    .I0(\display/buf_len [4]),
    .I1(\display/buf_ptr [3]),
    .I2(\display/buf_len [3]),
    .O(N88)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \display/Mmux_buf_len[4]_GND_5_o_select_124_OUT42  (
    .I0(N88),
    .I1(\display/GND_5_o_GND_5_o_equal_77_o ),
    .I2(\display/buf_ptr[4]_buf_len[4]_equal_68_o ),
    .I3(\display/GND_5_o_GND_5_o_equal_89_o ),
    .I4(\display/GND_5_o_GND_5_o_equal_84_o ),
    .I5(\display/buf_ptr[4]_buf_len[4]_LessThan_53_o ),
    .O(\display/Mmux_buf_len[4]_GND_5_o_select_124_OUT41_1377 )
  );
  LUT3 #(
    .INIT ( 8'hC5 ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_2_f7_2_SW0  (
    .I0(\display/buf_ptr[4]_buf_len[4]_equal_68_o ),
    .I1(\display/_n0274 ),
    .I2(\display/buf_ptr[4]_buf_len[4]_LessThan_53_o ),
    .O(N90)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF22022000 ))
  \display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT84  (
    .I0(\display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT13 ),
    .I1(N90),
    .I2(\display/GND_5_o_GND_5_o_sub_69_OUT [4]),
    .I3(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_33_405 ),
    .I4(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_43_410 ),
    .I5(\display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT82_1346 ),
    .O(\display/buf_len[4]_ascii_buf[2][7]_select_121_OUT<3> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF22022000 ))
  \display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT64  (
    .I0(\display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT13 ),
    .I1(N90),
    .I2(\display/GND_5_o_GND_5_o_sub_69_OUT [4]),
    .I3(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_32_395 ),
    .I4(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_42_400 ),
    .I5(\display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT62_1349 ),
    .O(\display/buf_len[4]_ascii_buf[2][7]_select_121_OUT<2> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF22022000 ))
  \display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT44  (
    .I0(\display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT13 ),
    .I1(N90),
    .I2(\display/GND_5_o_GND_5_o_sub_69_OUT [4]),
    .I3(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_31_385 ),
    .I4(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_41_390 ),
    .I5(\display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT42_1352 ),
    .O(\display/buf_len[4]_ascii_buf[2][7]_select_121_OUT<1> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF22022000 ))
  \display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT24  (
    .I0(\display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT13 ),
    .I1(N90),
    .I2(\display/GND_5_o_GND_5_o_sub_69_OUT [4]),
    .I3(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_3_375 ),
    .I4(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_4_380 ),
    .I5(\display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT22_1355 ),
    .O(\display/buf_len[4]_ascii_buf[2][7]_select_121_OUT<0> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF22022000 ))
  \display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT164  (
    .I0(\display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT13 ),
    .I1(N90),
    .I2(\display/GND_5_o_GND_5_o_sub_69_OUT [4]),
    .I3(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_37_445 ),
    .I4(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_47_450 ),
    .I5(\display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT162_1358 ),
    .O(\display/buf_len[4]_ascii_buf[2][7]_select_121_OUT<7> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF22022000 ))
  \display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT144  (
    .I0(\display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT13 ),
    .I1(N90),
    .I2(\display/GND_5_o_GND_5_o_sub_69_OUT [4]),
    .I3(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_36_435 ),
    .I4(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_46_440 ),
    .I5(\display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT142_1361 ),
    .O(\display/buf_len[4]_ascii_buf[2][7]_select_121_OUT<6> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF22022000 ))
  \display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT104  (
    .I0(\display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT13 ),
    .I1(N90),
    .I2(\display/GND_5_o_GND_5_o_sub_69_OUT [4]),
    .I3(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_34_415 ),
    .I4(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_69_OUT_44_420 ),
    .I5(\display/Mmux_buf_len[4]_ascii_buf[2][7]_select_121_OUT102_1364 ),
    .O(\display/buf_len[4]_ascii_buf[2][7]_select_121_OUT<4> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFEAAFEAAFEAA ))
  \display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT69_SW1  (
    .I0(\display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT63_1381 ),
    .I1(\display/buf_len [0]),
    .I2(\display/buf_len [1]),
    .I3(\display/buf_len [2]),
    .I4(\display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT64_1382 ),
    .I5(\display/buf_ptr[4]_buf_len[4]_LessThan_53_o ),
    .O(N105)
  );
  LUT6 #(
    .INIT ( 64'hFAFAFAEEF0CCFAEE ))
  \display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT69  (
    .I0(\display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT6 ),
    .I1(N104),
    .I2(N105),
    .I3(\display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT68_1383 ),
    .I4(\display/buf_ptr[4]_buf_len[4]_LessThan_53_o26 ),
    .I5(\display/GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT<5> ),
    .O(\display/buf_len[4]_ascii_buf[1][7]_select_122_OUT<5> )
  );
  LUT6 #(
    .INIT ( 64'hFFEEFF00FFEEFF0E ))
  \display/Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT64  (
    .I0(\display/buf_len [3]),
    .I1(\display/buf_len [4]),
    .I2(\display/GND_5_o_GND_5_o_equal_84_o ),
    .I3(\display/Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT63_1369 ),
    .I4(\display/GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT<5> ),
    .I5(\display/buf_ptr[4]_buf_len[4]_LessThan_53_o26 ),
    .O(\display/Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT64_1370 )
  );
  LUT6 #(
    .INIT ( 64'h02A8540201540001 ))
  \display/GND_5_o_GND_5_o_equal_89_o62  (
    .I0(\display/buf_len [3]),
    .I1(\display/buf_len [0]),
    .I2(\display/buf_len [1]),
    .I3(\display/buf_len [2]),
    .I4(\display/buf_ptr_2_2_1566 ),
    .I5(\display/buf_ptr_3_1_1564 ),
    .O(\display/GND_5_o_GND_5_o_equal_89_o61_1389 )
  );
  FDP   \uart/tx  (
    .C(\uart/sample_clk_BUFG_186 ),
    .D(\uart/_n0237 ),
    .PRE(\display/rst ),
    .Q(\uart/tx_13 )
  );
  FDC   \uart/tx_bit_counter_2  (
    .C(\uart/sample_clk_BUFG_186 ),
    .CLR(\display/rst ),
    .D(\uart/_n0228 [2]),
    .Q(\uart/tx_bit_counter [2])
  );
  FDC   \uart/tx_bit_counter_1  (
    .C(\uart/sample_clk_BUFG_186 ),
    .CLR(\display/rst ),
    .D(\uart/_n0228 [1]),
    .Q(\uart/tx_bit_counter [1])
  );
  FDC   \uart/tx_bit_counter_0  (
    .C(\uart/sample_clk_BUFG_186 ),
    .CLR(\display/rst ),
    .D(\uart/_n0228 [0]),
    .Q(\uart/tx_bit_counter [0])
  );
  FDC   \uart/tx_counter_3  (
    .C(\uart/sample_clk_BUFG_186 ),
    .CLR(\display/rst ),
    .D(\uart/_n0219 [3]),
    .Q(\uart/tx_counter [3])
  );
  FDC   \uart/tx_counter_2  (
    .C(\uart/sample_clk_BUFG_186 ),
    .CLR(\display/rst ),
    .D(\uart/_n0219 [2]),
    .Q(\uart/tx_counter [2])
  );
  FDC   \uart/tx_counter_1  (
    .C(\uart/sample_clk_BUFG_186 ),
    .CLR(\display/rst ),
    .D(\uart/_n0219 [1]),
    .Q(\uart/tx_counter [1])
  );
  FDC   \uart/tx_counter_0  (
    .C(\uart/sample_clk_BUFG_186 ),
    .CLR(\display/rst ),
    .D(\uart/_n0219 [0]),
    .Q(\uart/tx_counter [0])
  );
  MUXF7   \display/Mmux_buf_len[4]_GND_5_o_select_124_OUT11_SW2  (
    .I0(N107),
    .I1(N108),
    .S(\display/GND_5_o_GND_5_o_equal_89_o ),
    .O(N71)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000EEE ))
  \display/Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT63_SW0  (
    .I0(\display/Madd__n0272_cy [1]),
    .I1(\display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT6 ),
    .I2(\display/buf_ptr_1_4_1571 ),
    .I3(\display/buf_ptr_0_5_1577 ),
    .I4(\display/buf_ptr [2]),
    .I5(\display/buf_ptr [3]),
    .O(N109)
  );
  LUT6 #(
    .INIT ( 64'hAAFFAAFEAAAAAAAA ))
  \display/Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT63  (
    .I0(\display/Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT6 ),
    .I1(\display/buf_len [3]),
    .I2(\display/buf_len [4]),
    .I3(\display/buf_ptr [4]),
    .I4(N60),
    .I5(N109),
    .O(\display/Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT63_1369 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_7  (
    .I0(\display/ascii_buf_31 [112]),
    .I1(\display/ascii_buf_31 [104]),
    .I2(\display/ascii_buf_31 [120]),
    .I3(\display/ascii_buf_31 [96]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_7_211 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_8  (
    .I0(\display/ascii_buf_31 [80]),
    .I1(\display/ascii_buf_31 [72]),
    .I2(\display/ascii_buf_31 [88]),
    .I3(\display/ascii_buf_31 [64]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_8_212 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_81  (
    .I0(\display/ascii_buf_31 [48]),
    .I1(\display/ascii_buf_31 [40]),
    .I2(\display/ascii_buf_31 [56]),
    .I3(\display/ascii_buf_31 [32]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_81_213 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_9  (
    .I0(\display/ascii_buf_31 [16]),
    .I1(\display/ascii_buf_31 [8]),
    .I2(\display/ascii_buf_31 [24]),
    .I3(\display/ascii_buf_31 [0]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_9_214 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_71  (
    .I0(\display/ascii_buf_31 [113]),
    .I1(\display/ascii_buf_31 [105]),
    .I2(\display/ascii_buf_31 [121]),
    .I3(\display/ascii_buf_31 [97]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_71_221 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_83  (
    .I0(\display/ascii_buf_31 [81]),
    .I1(\display/ascii_buf_31 [73]),
    .I2(\display/ascii_buf_31 [89]),
    .I3(\display/ascii_buf_31 [65]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_83_222 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_84  (
    .I0(\display/ascii_buf_31 [49]),
    .I1(\display/ascii_buf_31 [41]),
    .I2(\display/ascii_buf_31 [57]),
    .I3(\display/ascii_buf_31 [33]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_84_223 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_93  (
    .I0(\display/ascii_buf_31 [17]),
    .I1(\display/ascii_buf_31 [9]),
    .I2(\display/ascii_buf_31 [25]),
    .I3(\display/ascii_buf_31 [1]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_93_224 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_72  (
    .I0(\display/ascii_buf_31 [114]),
    .I1(\display/ascii_buf_31 [106]),
    .I2(\display/ascii_buf_31 [122]),
    .I3(\display/ascii_buf_31 [98]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_72_231 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_86  (
    .I0(\display/ascii_buf_31 [82]),
    .I1(\display/ascii_buf_31 [74]),
    .I2(\display/ascii_buf_31 [90]),
    .I3(\display/ascii_buf_31 [66]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_86_232 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_87  (
    .I0(\display/ascii_buf_31 [50]),
    .I1(\display/ascii_buf_31 [42]),
    .I2(\display/ascii_buf_31 [58]),
    .I3(\display/ascii_buf_31 [34]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_87_233 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_96  (
    .I0(\display/ascii_buf_31 [18]),
    .I1(\display/ascii_buf_31 [10]),
    .I2(\display/ascii_buf_31 [26]),
    .I3(\display/ascii_buf_31 [2]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_96_234 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_73  (
    .I0(\display/ascii_buf_31 [115]),
    .I1(\display/ascii_buf_31 [107]),
    .I2(\display/ascii_buf_31 [123]),
    .I3(\display/ascii_buf_31 [99]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_73_241 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_89  (
    .I0(\display/ascii_buf_31 [83]),
    .I1(\display/ascii_buf_31 [75]),
    .I2(\display/ascii_buf_31 [91]),
    .I3(\display/ascii_buf_31 [67]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_89_242 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_810  (
    .I0(\display/ascii_buf_31 [51]),
    .I1(\display/ascii_buf_31 [43]),
    .I2(\display/ascii_buf_31 [59]),
    .I3(\display/ascii_buf_31 [35]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_810_243 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_99  (
    .I0(\display/ascii_buf_31 [19]),
    .I1(\display/ascii_buf_31 [11]),
    .I2(\display/ascii_buf_31 [27]),
    .I3(\display/ascii_buf_31 [3]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_99_244 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_74  (
    .I0(\display/ascii_buf_31 [116]),
    .I1(\display/ascii_buf_31 [108]),
    .I2(\display/ascii_buf_31 [124]),
    .I3(\display/ascii_buf_31 [100]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_74_251 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_812  (
    .I0(\display/ascii_buf_31 [84]),
    .I1(\display/ascii_buf_31 [76]),
    .I2(\display/ascii_buf_31 [92]),
    .I3(\display/ascii_buf_31 [68]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_812_252 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_813  (
    .I0(\display/ascii_buf_31 [52]),
    .I1(\display/ascii_buf_31 [44]),
    .I2(\display/ascii_buf_31 [60]),
    .I3(\display/ascii_buf_31 [36]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_813_253 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_912  (
    .I0(\display/ascii_buf_31 [20]),
    .I1(\display/ascii_buf_31 [12]),
    .I2(\display/ascii_buf_31 [28]),
    .I3(\display/ascii_buf_31 [4]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_912_254 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_76  (
    .I0(\display/ascii_buf_31 [118]),
    .I1(\display/ascii_buf_31 [110]),
    .I2(\display/ascii_buf_31 [126]),
    .I3(\display/ascii_buf_31 [102]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_76_271 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_818  (
    .I0(\display/ascii_buf_31 [86]),
    .I1(\display/ascii_buf_31 [78]),
    .I2(\display/ascii_buf_31 [94]),
    .I3(\display/ascii_buf_31 [70]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_818_272 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_819  (
    .I0(\display/ascii_buf_31 [54]),
    .I1(\display/ascii_buf_31 [46]),
    .I2(\display/ascii_buf_31 [62]),
    .I3(\display/ascii_buf_31 [38]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_819_273 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_918  (
    .I0(\display/ascii_buf_31 [22]),
    .I1(\display/ascii_buf_31 [14]),
    .I2(\display/ascii_buf_31 [30]),
    .I3(\display/ascii_buf_31 [6]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_918_274 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_77  (
    .I0(\display/ascii_buf_31 [119]),
    .I1(\display/ascii_buf_31 [111]),
    .I2(\display/ascii_buf_31 [127]),
    .I3(\display/ascii_buf_31 [103]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_77_281 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_821  (
    .I0(\display/ascii_buf_31 [87]),
    .I1(\display/ascii_buf_31 [79]),
    .I2(\display/ascii_buf_31 [95]),
    .I3(\display/ascii_buf_31 [71]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_821_282 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_822  (
    .I0(\display/ascii_buf_31 [55]),
    .I1(\display/ascii_buf_31 [47]),
    .I2(\display/ascii_buf_31 [63]),
    .I3(\display/ascii_buf_31 [39]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_822_283 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_921  (
    .I0(\display/ascii_buf_31 [23]),
    .I1(\display/ascii_buf_31 [15]),
    .I2(\display/ascii_buf_31 [31]),
    .I3(\display/ascii_buf_31 [7]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_921_284 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_7  (
    .I0(\display/ascii_buf_31 [104]),
    .I1(\display/ascii_buf_31 [120]),
    .I2(\display/ascii_buf_31 [112]),
    .I3(\display/ascii_buf_31 [96]),
    .I4(\display/buf_ptr_0_5_1577 ),
    .I5(\display/buf_ptr [1]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_7_291 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_8  (
    .I0(\display/ascii_buf_31 [72]),
    .I1(\display/ascii_buf_31 [88]),
    .I2(\display/ascii_buf_31 [80]),
    .I3(\display/ascii_buf_31 [64]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_8_292 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_81  (
    .I0(\display/ascii_buf_31 [40]),
    .I1(\display/ascii_buf_31 [56]),
    .I2(\display/ascii_buf_31 [48]),
    .I3(\display/ascii_buf_31 [32]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_81_293 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_9  (
    .I0(\display/ascii_buf_31 [8]),
    .I1(\display/ascii_buf_31 [24]),
    .I2(\display/ascii_buf_31 [16]),
    .I3(\display/ascii_buf_31 [0]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_9_294 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_71  (
    .I0(\display/ascii_buf_31 [105]),
    .I1(\display/ascii_buf_31 [121]),
    .I2(\display/ascii_buf_31 [113]),
    .I3(\display/ascii_buf_31 [97]),
    .I4(\display/buf_ptr_0_5_1577 ),
    .I5(\display/buf_ptr [1]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_71_301 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_83  (
    .I0(\display/ascii_buf_31 [73]),
    .I1(\display/ascii_buf_31 [89]),
    .I2(\display/ascii_buf_31 [81]),
    .I3(\display/ascii_buf_31 [65]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_83_302 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_84  (
    .I0(\display/ascii_buf_31 [41]),
    .I1(\display/ascii_buf_31 [57]),
    .I2(\display/ascii_buf_31 [49]),
    .I3(\display/ascii_buf_31 [33]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_84_303 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_93  (
    .I0(\display/ascii_buf_31 [9]),
    .I1(\display/ascii_buf_31 [25]),
    .I2(\display/ascii_buf_31 [17]),
    .I3(\display/ascii_buf_31 [1]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_93_304 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_72  (
    .I0(\display/ascii_buf_31 [106]),
    .I1(\display/ascii_buf_31 [122]),
    .I2(\display/ascii_buf_31 [114]),
    .I3(\display/ascii_buf_31 [98]),
    .I4(\display/buf_ptr_0_5_1577 ),
    .I5(\display/buf_ptr [1]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_72_311 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_86  (
    .I0(\display/ascii_buf_31 [74]),
    .I1(\display/ascii_buf_31 [90]),
    .I2(\display/ascii_buf_31 [82]),
    .I3(\display/ascii_buf_31 [66]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_86_312 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_87  (
    .I0(\display/ascii_buf_31 [42]),
    .I1(\display/ascii_buf_31 [58]),
    .I2(\display/ascii_buf_31 [50]),
    .I3(\display/ascii_buf_31 [34]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_87_313 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_96  (
    .I0(\display/ascii_buf_31 [10]),
    .I1(\display/ascii_buf_31 [26]),
    .I2(\display/ascii_buf_31 [18]),
    .I3(\display/ascii_buf_31 [2]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_96_314 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_73  (
    .I0(\display/ascii_buf_31 [107]),
    .I1(\display/ascii_buf_31 [123]),
    .I2(\display/ascii_buf_31 [115]),
    .I3(\display/ascii_buf_31 [99]),
    .I4(\display/buf_ptr_0_5_1577 ),
    .I5(\display/buf_ptr [1]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_73_321 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_89  (
    .I0(\display/ascii_buf_31 [75]),
    .I1(\display/ascii_buf_31 [91]),
    .I2(\display/ascii_buf_31 [83]),
    .I3(\display/ascii_buf_31 [67]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_89_322 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_810  (
    .I0(\display/ascii_buf_31 [43]),
    .I1(\display/ascii_buf_31 [59]),
    .I2(\display/ascii_buf_31 [51]),
    .I3(\display/ascii_buf_31 [35]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_810_323 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_99  (
    .I0(\display/ascii_buf_31 [11]),
    .I1(\display/ascii_buf_31 [27]),
    .I2(\display/ascii_buf_31 [19]),
    .I3(\display/ascii_buf_31 [3]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_99_324 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_74  (
    .I0(\display/ascii_buf_31 [108]),
    .I1(\display/ascii_buf_31 [124]),
    .I2(\display/ascii_buf_31 [116]),
    .I3(\display/ascii_buf_31 [100]),
    .I4(\display/buf_ptr_0_5_1577 ),
    .I5(\display/buf_ptr [1]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_74_331 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_812  (
    .I0(\display/ascii_buf_31 [76]),
    .I1(\display/ascii_buf_31 [92]),
    .I2(\display/ascii_buf_31 [84]),
    .I3(\display/ascii_buf_31 [68]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_812_332 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_813  (
    .I0(\display/ascii_buf_31 [44]),
    .I1(\display/ascii_buf_31 [60]),
    .I2(\display/ascii_buf_31 [52]),
    .I3(\display/ascii_buf_31 [36]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_813_333 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_912  (
    .I0(\display/ascii_buf_31 [12]),
    .I1(\display/ascii_buf_31 [28]),
    .I2(\display/ascii_buf_31 [20]),
    .I3(\display/ascii_buf_31 [4]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_912_334 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_76  (
    .I0(\display/ascii_buf_31 [110]),
    .I1(\display/ascii_buf_31 [126]),
    .I2(\display/ascii_buf_31 [118]),
    .I3(\display/ascii_buf_31 [102]),
    .I4(\display/buf_ptr_0_5_1577 ),
    .I5(\display/buf_ptr [1]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_76_351 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_818  (
    .I0(\display/ascii_buf_31 [78]),
    .I1(\display/ascii_buf_31 [94]),
    .I2(\display/ascii_buf_31 [86]),
    .I3(\display/ascii_buf_31 [70]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_818_352 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_819  (
    .I0(\display/ascii_buf_31 [46]),
    .I1(\display/ascii_buf_31 [62]),
    .I2(\display/ascii_buf_31 [54]),
    .I3(\display/ascii_buf_31 [38]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_819_353 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_918  (
    .I0(\display/ascii_buf_31 [14]),
    .I1(\display/ascii_buf_31 [30]),
    .I2(\display/ascii_buf_31 [22]),
    .I3(\display/ascii_buf_31 [6]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_918_354 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_77  (
    .I0(\display/ascii_buf_31 [111]),
    .I1(\display/ascii_buf_31 [127]),
    .I2(\display/ascii_buf_31 [119]),
    .I3(\display/ascii_buf_31 [103]),
    .I4(\display/buf_ptr_0_5_1577 ),
    .I5(\display/buf_ptr [1]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_77_361 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_821  (
    .I0(\display/ascii_buf_31 [79]),
    .I1(\display/ascii_buf_31 [95]),
    .I2(\display/ascii_buf_31 [87]),
    .I3(\display/ascii_buf_31 [71]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_821_362 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_822  (
    .I0(\display/ascii_buf_31 [47]),
    .I1(\display/ascii_buf_31 [63]),
    .I2(\display/ascii_buf_31 [55]),
    .I3(\display/ascii_buf_31 [39]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_822_363 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_921  (
    .I0(\display/ascii_buf_31 [15]),
    .I1(\display/ascii_buf_31 [31]),
    .I2(\display/ascii_buf_31 [23]),
    .I3(\display/ascii_buf_31 [7]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_921_364 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_82  (
    .I0(\display/ascii_buf_31 [240]),
    .I1(\display/ascii_buf_31 [232]),
    .I2(\display/ascii_buf_31 [248]),
    .I3(\display/ascii_buf_31 [224]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_82_216 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_91  (
    .I0(\display/ascii_buf_31 [208]),
    .I1(\display/ascii_buf_31 [200]),
    .I2(\display/ascii_buf_31 [216]),
    .I3(\display/ascii_buf_31 [192]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_91_217 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_92  (
    .I0(\display/ascii_buf_31 [176]),
    .I1(\display/ascii_buf_31 [168]),
    .I2(\display/ascii_buf_31 [184]),
    .I3(\display/ascii_buf_31 [160]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_92_218 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_10  (
    .I0(\display/ascii_buf_31 [144]),
    .I1(\display/ascii_buf_31 [136]),
    .I2(\display/ascii_buf_31 [152]),
    .I3(\display/ascii_buf_31 [128]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_10_219 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_85  (
    .I0(\display/ascii_buf_31 [241]),
    .I1(\display/ascii_buf_31 [233]),
    .I2(\display/ascii_buf_31 [249]),
    .I3(\display/ascii_buf_31 [225]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_85_226 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_94  (
    .I0(\display/ascii_buf_31 [209]),
    .I1(\display/ascii_buf_31 [201]),
    .I2(\display/ascii_buf_31 [217]),
    .I3(\display/ascii_buf_31 [193]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_94_227 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_95  (
    .I0(\display/ascii_buf_31 [177]),
    .I1(\display/ascii_buf_31 [169]),
    .I2(\display/ascii_buf_31 [185]),
    .I3(\display/ascii_buf_31 [161]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_95_228 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_101  (
    .I0(\display/ascii_buf_31 [145]),
    .I1(\display/ascii_buf_31 [137]),
    .I2(\display/ascii_buf_31 [153]),
    .I3(\display/ascii_buf_31 [129]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_101_229 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_88  (
    .I0(\display/ascii_buf_31 [242]),
    .I1(\display/ascii_buf_31 [234]),
    .I2(\display/ascii_buf_31 [250]),
    .I3(\display/ascii_buf_31 [226]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_88_236 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_97  (
    .I0(\display/ascii_buf_31 [210]),
    .I1(\display/ascii_buf_31 [202]),
    .I2(\display/ascii_buf_31 [218]),
    .I3(\display/ascii_buf_31 [194]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_97_237 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_98  (
    .I0(\display/ascii_buf_31 [178]),
    .I1(\display/ascii_buf_31 [170]),
    .I2(\display/ascii_buf_31 [186]),
    .I3(\display/ascii_buf_31 [162]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_98_238 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_102  (
    .I0(\display/ascii_buf_31 [146]),
    .I1(\display/ascii_buf_31 [138]),
    .I2(\display/ascii_buf_31 [154]),
    .I3(\display/ascii_buf_31 [130]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_102_239 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_811  (
    .I0(\display/ascii_buf_31 [243]),
    .I1(\display/ascii_buf_31 [235]),
    .I2(\display/ascii_buf_31 [251]),
    .I3(\display/ascii_buf_31 [227]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_811_246 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_910  (
    .I0(\display/ascii_buf_31 [211]),
    .I1(\display/ascii_buf_31 [203]),
    .I2(\display/ascii_buf_31 [219]),
    .I3(\display/ascii_buf_31 [195]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_910_247 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_911  (
    .I0(\display/ascii_buf_31 [179]),
    .I1(\display/ascii_buf_31 [171]),
    .I2(\display/ascii_buf_31 [187]),
    .I3(\display/ascii_buf_31 [163]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_911_248 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_103  (
    .I0(\display/ascii_buf_31 [147]),
    .I1(\display/ascii_buf_31 [139]),
    .I2(\display/ascii_buf_31 [155]),
    .I3(\display/ascii_buf_31 [131]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_103_249 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_814  (
    .I0(\display/ascii_buf_31 [244]),
    .I1(\display/ascii_buf_31 [236]),
    .I2(\display/ascii_buf_31 [252]),
    .I3(\display/ascii_buf_31 [228]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_814_256 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_913  (
    .I0(\display/ascii_buf_31 [212]),
    .I1(\display/ascii_buf_31 [204]),
    .I2(\display/ascii_buf_31 [220]),
    .I3(\display/ascii_buf_31 [196]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_913_257 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_914  (
    .I0(\display/ascii_buf_31 [180]),
    .I1(\display/ascii_buf_31 [172]),
    .I2(\display/ascii_buf_31 [188]),
    .I3(\display/ascii_buf_31 [164]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_914_258 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_104  (
    .I0(\display/ascii_buf_31 [148]),
    .I1(\display/ascii_buf_31 [140]),
    .I2(\display/ascii_buf_31 [156]),
    .I3(\display/ascii_buf_31 [132]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_104_259 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_820  (
    .I0(\display/ascii_buf_31 [246]),
    .I1(\display/ascii_buf_31 [238]),
    .I2(\display/ascii_buf_31 [254]),
    .I3(\display/ascii_buf_31 [230]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_820_276 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_919  (
    .I0(\display/ascii_buf_31 [214]),
    .I1(\display/ascii_buf_31 [206]),
    .I2(\display/ascii_buf_31 [222]),
    .I3(\display/ascii_buf_31 [198]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_919_277 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_920  (
    .I0(\display/ascii_buf_31 [182]),
    .I1(\display/ascii_buf_31 [174]),
    .I2(\display/ascii_buf_31 [190]),
    .I3(\display/ascii_buf_31 [166]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_920_278 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_106  (
    .I0(\display/ascii_buf_31 [150]),
    .I1(\display/ascii_buf_31 [142]),
    .I2(\display/ascii_buf_31 [158]),
    .I3(\display/ascii_buf_31 [134]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_106_279 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_823  (
    .I0(\display/ascii_buf_31 [247]),
    .I1(\display/ascii_buf_31 [239]),
    .I2(\display/ascii_buf_31 [255]),
    .I3(\display/ascii_buf_31 [231]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_823_286 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_922  (
    .I0(\display/ascii_buf_31 [215]),
    .I1(\display/ascii_buf_31 [207]),
    .I2(\display/ascii_buf_31 [223]),
    .I3(\display/ascii_buf_31 [199]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_922_287 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_923  (
    .I0(\display/ascii_buf_31 [183]),
    .I1(\display/ascii_buf_31 [175]),
    .I2(\display/ascii_buf_31 [191]),
    .I3(\display/ascii_buf_31 [167]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_923_288 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_107  (
    .I0(\display/ascii_buf_31 [151]),
    .I1(\display/ascii_buf_31 [143]),
    .I2(\display/ascii_buf_31 [159]),
    .I3(\display/ascii_buf_31 [135]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_85_OUT_107_289 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_82  (
    .I0(\display/ascii_buf_31 [232]),
    .I1(\display/ascii_buf_31 [248]),
    .I2(\display/ascii_buf_31 [240]),
    .I3(\display/ascii_buf_31 [224]),
    .I4(\display/buf_ptr_0_4_1576 ),
    .I5(\display/buf_ptr [1]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_82_296 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_91  (
    .I0(\display/ascii_buf_31 [200]),
    .I1(\display/ascii_buf_31 [216]),
    .I2(\display/ascii_buf_31 [208]),
    .I3(\display/ascii_buf_31 [192]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_91_297 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_92  (
    .I0(\display/ascii_buf_31 [168]),
    .I1(\display/ascii_buf_31 [184]),
    .I2(\display/ascii_buf_31 [176]),
    .I3(\display/ascii_buf_31 [160]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_92_298 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_10  (
    .I0(\display/ascii_buf_31 [136]),
    .I1(\display/ascii_buf_31 [152]),
    .I2(\display/ascii_buf_31 [144]),
    .I3(\display/ascii_buf_31 [128]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_10_299 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_85  (
    .I0(\display/ascii_buf_31 [233]),
    .I1(\display/ascii_buf_31 [249]),
    .I2(\display/ascii_buf_31 [241]),
    .I3(\display/ascii_buf_31 [225]),
    .I4(\display/buf_ptr_0_4_1576 ),
    .I5(\display/buf_ptr [1]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_85_306 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_94  (
    .I0(\display/ascii_buf_31 [201]),
    .I1(\display/ascii_buf_31 [217]),
    .I2(\display/ascii_buf_31 [209]),
    .I3(\display/ascii_buf_31 [193]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_94_307 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_95  (
    .I0(\display/ascii_buf_31 [169]),
    .I1(\display/ascii_buf_31 [185]),
    .I2(\display/ascii_buf_31 [177]),
    .I3(\display/ascii_buf_31 [161]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_95_308 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_101  (
    .I0(\display/ascii_buf_31 [137]),
    .I1(\display/ascii_buf_31 [153]),
    .I2(\display/ascii_buf_31 [145]),
    .I3(\display/ascii_buf_31 [129]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_101_309 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_88  (
    .I0(\display/ascii_buf_31 [234]),
    .I1(\display/ascii_buf_31 [250]),
    .I2(\display/ascii_buf_31 [242]),
    .I3(\display/ascii_buf_31 [226]),
    .I4(\display/buf_ptr_0_4_1576 ),
    .I5(\display/buf_ptr [1]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_88_316 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_97  (
    .I0(\display/ascii_buf_31 [202]),
    .I1(\display/ascii_buf_31 [218]),
    .I2(\display/ascii_buf_31 [210]),
    .I3(\display/ascii_buf_31 [194]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_97_317 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_98  (
    .I0(\display/ascii_buf_31 [170]),
    .I1(\display/ascii_buf_31 [186]),
    .I2(\display/ascii_buf_31 [178]),
    .I3(\display/ascii_buf_31 [162]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_98_318 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_102  (
    .I0(\display/ascii_buf_31 [138]),
    .I1(\display/ascii_buf_31 [154]),
    .I2(\display/ascii_buf_31 [146]),
    .I3(\display/ascii_buf_31 [130]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_102_319 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_811  (
    .I0(\display/ascii_buf_31 [235]),
    .I1(\display/ascii_buf_31 [251]),
    .I2(\display/ascii_buf_31 [243]),
    .I3(\display/ascii_buf_31 [227]),
    .I4(\display/buf_ptr_0_4_1576 ),
    .I5(\display/buf_ptr [1]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_811_326 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_910  (
    .I0(\display/ascii_buf_31 [203]),
    .I1(\display/ascii_buf_31 [219]),
    .I2(\display/ascii_buf_31 [211]),
    .I3(\display/ascii_buf_31 [195]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_910_327 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_911  (
    .I0(\display/ascii_buf_31 [171]),
    .I1(\display/ascii_buf_31 [187]),
    .I2(\display/ascii_buf_31 [179]),
    .I3(\display/ascii_buf_31 [163]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_911_328 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_103  (
    .I0(\display/ascii_buf_31 [139]),
    .I1(\display/ascii_buf_31 [155]),
    .I2(\display/ascii_buf_31 [147]),
    .I3(\display/ascii_buf_31 [131]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_103_329 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_814  (
    .I0(\display/ascii_buf_31 [236]),
    .I1(\display/ascii_buf_31 [252]),
    .I2(\display/ascii_buf_31 [244]),
    .I3(\display/ascii_buf_31 [228]),
    .I4(\display/buf_ptr_0_4_1576 ),
    .I5(\display/buf_ptr [1]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_814_336 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_913  (
    .I0(\display/ascii_buf_31 [204]),
    .I1(\display/ascii_buf_31 [220]),
    .I2(\display/ascii_buf_31 [212]),
    .I3(\display/ascii_buf_31 [196]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_913_337 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_914  (
    .I0(\display/ascii_buf_31 [172]),
    .I1(\display/ascii_buf_31 [188]),
    .I2(\display/ascii_buf_31 [180]),
    .I3(\display/ascii_buf_31 [164]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_914_338 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_104  (
    .I0(\display/ascii_buf_31 [140]),
    .I1(\display/ascii_buf_31 [156]),
    .I2(\display/ascii_buf_31 [148]),
    .I3(\display/ascii_buf_31 [132]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_104_339 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_820  (
    .I0(\display/ascii_buf_31 [238]),
    .I1(\display/ascii_buf_31 [254]),
    .I2(\display/ascii_buf_31 [246]),
    .I3(\display/ascii_buf_31 [230]),
    .I4(\display/buf_ptr_0_4_1576 ),
    .I5(\display/buf_ptr [1]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_820_356 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_919  (
    .I0(\display/ascii_buf_31 [206]),
    .I1(\display/ascii_buf_31 [222]),
    .I2(\display/ascii_buf_31 [214]),
    .I3(\display/ascii_buf_31 [198]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_919_357 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_920  (
    .I0(\display/ascii_buf_31 [174]),
    .I1(\display/ascii_buf_31 [190]),
    .I2(\display/ascii_buf_31 [182]),
    .I3(\display/ascii_buf_31 [166]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_920_358 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_106  (
    .I0(\display/ascii_buf_31 [142]),
    .I1(\display/ascii_buf_31 [158]),
    .I2(\display/ascii_buf_31 [150]),
    .I3(\display/ascii_buf_31 [134]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_106_359 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_823  (
    .I0(\display/ascii_buf_31 [239]),
    .I1(\display/ascii_buf_31 [255]),
    .I2(\display/ascii_buf_31 [247]),
    .I3(\display/ascii_buf_31 [231]),
    .I4(\display/buf_ptr_0_4_1576 ),
    .I5(\display/buf_ptr [1]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_823_366 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_922  (
    .I0(\display/ascii_buf_31 [207]),
    .I1(\display/ascii_buf_31 [223]),
    .I2(\display/ascii_buf_31 [215]),
    .I3(\display/ascii_buf_31 [199]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_922_367 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_923  (
    .I0(\display/ascii_buf_31 [175]),
    .I1(\display/ascii_buf_31 [191]),
    .I2(\display/ascii_buf_31 [183]),
    .I3(\display/ascii_buf_31 [167]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_923_368 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_107  (
    .I0(\display/ascii_buf_31 [143]),
    .I1(\display/ascii_buf_31 [159]),
    .I2(\display/ascii_buf_31 [151]),
    .I3(\display/ascii_buf_31 [135]),
    .I4(\display/buf_ptr [1]),
    .I5(\display/buf_ptr [0]),
    .O(\display/Mmux_GND_5_o_ascii_buf[31][7]_wide_mux_78_OUT_107_369 )
  );
  LUT4 #(
    .INIT ( 16'hF444 ))
  \display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT69_SW0  (
    .I0(\display/buf_len [3]),
    .I1(\display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT61 ),
    .I2(\display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT64_1382 ),
    .I3(\display/buf_ptr[4]_buf_len[4]_LessThan_53_o ),
    .O(N104)
  );
  LUT5 #(
    .INIT ( 32'h2202FFDF ))
  data_in_glue_set (
    .I0(ready_reg[0]),
    .I1(ready_reg[1]),
    .I2(clear_on_next_39),
    .I3(\rx_byte[7]_rx_byte[7]_OR_179_o_49 ),
    .I4(clearn_38),
    .O(data_in_glue_set_1504)
  );
  LUT4 #(
    .INIT ( 16'hF7FF ))
  clearn_glue_set (
    .I0(clear_on_next_39),
    .I1(ready_reg[0]),
    .I2(ready_reg[1]),
    .I3(rstn_IBUF_2),
    .O(clearn_glue_set_1505)
  );
  LUT6 #(
    .INIT ( 64'hDADADCD880D58B53 ))
  \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT62  (
    .I0(\display/digit3 [2]),
    .I1(\display/digit3 [4]),
    .I2(\display/digit3 [1]),
    .I3(\display/digit3 [6]),
    .I4(\display/digit3 [0]),
    .I5(\display/digit3 [3]),
    .O(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT61 )
  );
  LUT6 #(
    .INIT ( 64'hDADADCD880D58B53 ))
  \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT64  (
    .I0(\display/digit1 [2]),
    .I1(\display/digit1 [4]),
    .I2(\display/digit1 [1]),
    .I3(\display/digit1 [6]),
    .I4(\display/digit1 [0]),
    .I5(\display/digit1 [3]),
    .O(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT63 )
  );
  LUT6 #(
    .INIT ( 64'hDADADCD880D58B53 ))
  \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT67  (
    .I0(\display/digit2 [2]),
    .I1(\display/digit2 [4]),
    .I2(\display/digit2 [1]),
    .I3(\display/digit2 [6]),
    .I4(\display/digit2 [0]),
    .I5(\display/digit2 [3]),
    .O(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT66 )
  );
  LUT6 #(
    .INIT ( 64'hDADADCD880D58B53 ))
  \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT69  (
    .I0(\display/digit0 [2]),
    .I1(\display/digit0 [4]),
    .I2(\display/digit0 [1]),
    .I3(\display/digit0 [6]),
    .I4(\display/digit0 [0]),
    .I5(\display/digit0 [3]),
    .O(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT68 )
  );
  LUT6 #(
    .INIT ( 64'hCEAAC6AA88888101 ))
  \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT52  (
    .I0(\display/digit3 [1]),
    .I1(\display/digit3 [4]),
    .I2(\display/digit3 [2]),
    .I3(\display/digit3 [6]),
    .I4(\display/digit3 [0]),
    .I5(\display/digit3 [3]),
    .O(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT51 )
  );
  LUT6 #(
    .INIT ( 64'hCEAAC6AA88888101 ))
  \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT54  (
    .I0(\display/digit1 [1]),
    .I1(\display/digit1 [4]),
    .I2(\display/digit1 [2]),
    .I3(\display/digit1 [6]),
    .I4(\display/digit1 [0]),
    .I5(\display/digit1 [3]),
    .O(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT53 )
  );
  LUT6 #(
    .INIT ( 64'hCEAAC6AA88888101 ))
  \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT58  (
    .I0(\display/digit2 [1]),
    .I1(\display/digit2 [4]),
    .I2(\display/digit2 [2]),
    .I3(\display/digit2 [6]),
    .I4(\display/digit2 [0]),
    .I5(\display/digit2 [3]),
    .O(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT57 )
  );
  LUT6 #(
    .INIT ( 64'hCEAAC6AA88888101 ))
  \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT510  (
    .I0(\display/digit0 [1]),
    .I1(\display/digit0 [4]),
    .I2(\display/digit0 [2]),
    .I3(\display/digit0 [6]),
    .I4(\display/digit0 [0]),
    .I5(\display/digit0 [3]),
    .O(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT59 )
  );
  LUT6 #(
    .INIT ( 64'h1C180C0814100400 ))
  \display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT82  (
    .I0(\display/buf_len [0]),
    .I1(\display/buf_len [1]),
    .I2(\display/buf_len [2]),
    .I3(\display/ascii_buf_31 [243]),
    .I4(\display/ascii_buf_31 [227]),
    .I5(\display/ascii_buf_31 [235]),
    .O(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT81 )
  );
  LUT6 #(
    .INIT ( 64'h1C180C0814100400 ))
  \display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT62  (
    .I0(\display/buf_len [0]),
    .I1(\display/buf_len [1]),
    .I2(\display/buf_len [2]),
    .I3(\display/ascii_buf_31 [242]),
    .I4(\display/ascii_buf_31 [226]),
    .I5(\display/ascii_buf_31 [234]),
    .O(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT61 )
  );
  LUT6 #(
    .INIT ( 64'h1C180C0814100400 ))
  \display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT42  (
    .I0(\display/buf_len [0]),
    .I1(\display/buf_len [1]),
    .I2(\display/buf_len [2]),
    .I3(\display/ascii_buf_31 [241]),
    .I4(\display/ascii_buf_31 [225]),
    .I5(\display/ascii_buf_31 [233]),
    .O(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT41 )
  );
  LUT6 #(
    .INIT ( 64'h1C180C0814100400 ))
  \display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT22  (
    .I0(\display/buf_len [0]),
    .I1(\display/buf_len [1]),
    .I2(\display/buf_len [2]),
    .I3(\display/ascii_buf_31 [240]),
    .I4(\display/ascii_buf_31 [224]),
    .I5(\display/ascii_buf_31 [232]),
    .O(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT21 )
  );
  LUT6 #(
    .INIT ( 64'h1C180C0814100400 ))
  \display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT162  (
    .I0(\display/buf_len [0]),
    .I1(\display/buf_len [1]),
    .I2(\display/buf_len [2]),
    .I3(\display/ascii_buf_31 [247]),
    .I4(\display/ascii_buf_31 [231]),
    .I5(\display/ascii_buf_31 [239]),
    .O(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT161 )
  );
  LUT6 #(
    .INIT ( 64'h1C180C0814100400 ))
  \display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT142  (
    .I0(\display/buf_len [0]),
    .I1(\display/buf_len [1]),
    .I2(\display/buf_len [2]),
    .I3(\display/ascii_buf_31 [246]),
    .I4(\display/ascii_buf_31 [230]),
    .I5(\display/ascii_buf_31 [238]),
    .O(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT141 )
  );
  LUT6 #(
    .INIT ( 64'h1C180C0814100400 ))
  \display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT103  (
    .I0(\display/buf_len [0]),
    .I1(\display/buf_len [1]),
    .I2(\display/buf_len [2]),
    .I3(\display/ascii_buf_31 [244]),
    .I4(\display/ascii_buf_31 [228]),
    .I5(\display/ascii_buf_31 [236]),
    .O(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT102 )
  );
  LUT5 #(
    .INIT ( 32'h2202FFFF ))
  \display/_n0432_inv1  (
    .I0(\display/ds_sreg [0]),
    .I1(\display/ds_sreg [1]),
    .I2(\display/clr_sreg [0]),
    .I3(\display/clr_sreg [1]),
    .I4(rstn_IBUF_2),
    .O(\display/_n0432_inv )
  );
  LUT5 #(
    .INIT ( 32'h00000100 ))
  \display/buf_len[4]_Decoder_9_OUT<4><4>1  (
    .I0(\display/buf_len [3]),
    .I1(\display/buf_len [4]),
    .I2(\display/buf_len [1]),
    .I3(\display/buf_len [2]),
    .I4(\display/buf_len [0]),
    .O(\display/buf_len[4]_Decoder_9_OUT<4> )
  );
  LUT6 #(
    .INIT ( 64'h2888888888888888 ))
  \display/Mmux_buf_len[4]_GND_5_o_select_124_OUT51  (
    .I0(\display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT6 ),
    .I1(\display/buf_ptr [4]),
    .I2(\display/buf_ptr [2]),
    .I3(\display/buf_ptr [1]),
    .I4(\display/buf_ptr [0]),
    .I5(\display/buf_ptr [3]),
    .O(\display/Mmux_buf_len[4]_GND_5_o_select_124_OUT5 )
  );
  LUT5 #(
    .INIT ( 32'h6AAAAAAA ))
  \display/Mmux_buf_len[4]_GND_5_o_select_124_OUT53  (
    .I0(\display/buf_ptr [4]),
    .I1(\display/buf_ptr [2]),
    .I2(\display/buf_ptr [1]),
    .I3(\display/buf_ptr [0]),
    .I4(\display/buf_ptr [3]),
    .O(\display/Mmux_buf_len[4]_GND_5_o_select_124_OUT52_1375 )
  );
  LUT6 #(
    .INIT ( 64'h6666666666606060 ))
  \display/Mmux_buf_len[4]_GND_5_o_select_124_OUT21  (
    .I0(\display/buf_ptr [1]),
    .I1(\display/buf_ptr [0]),
    .I2(\display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT6 ),
    .I3(\display/buf_len [0]),
    .I4(\display/buf_len [2]),
    .I5(\display/buf_len [1]),
    .O(\display/Mmux_buf_len[4]_GND_5_o_select_124_OUT2 )
  );
  LUT4 #(
    .INIT ( 16'h0080 ))
  _n00511 (
    .I0(rstn_IBUF_2),
    .I1(\rx_byte[7]_rx_byte[7]_OR_179_o_49 ),
    .I2(ready_reg[0]),
    .I3(ready_reg[1]),
    .O(_n0051)
  );
  LUT3 #(
    .INIT ( 8'h75 ))
  \display/Reset_OR_DriverANDClockEnable1  (
    .I0(rstn_IBUF_2),
    .I1(\display/clr_sreg [1]),
    .I2(\display/clr_sreg [0]),
    .O(\display/Reset_OR_DriverANDClockEnable )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \display/_n03431  (
    .I0(\display/clr_sreg [0]),
    .I1(rstn_IBUF_2),
    .I2(\display/clr_sreg [1]),
    .O(\display/_n0343 )
  );
  LUT3 #(
    .INIT ( 8'h75 ))
  \display/ds_sync11  (
    .I0(rstn_IBUF_2),
    .I1(\display/ds_sreg [1]),
    .I2(\display/ds_sreg [0]),
    .O(\display/ds_sync1 )
  );
  LUT5 #(
    .INIT ( 32'h28888888 ))
  \uart/Mmux_GND_3_o_clk_divide_tx[7]_mux_50_OUT42  (
    .I0(\uart/tx_ready_held_187 ),
    .I1(\uart/clk_divide_tx [3]),
    .I2(\uart/clk_divide_tx [2]),
    .I3(\uart/clk_divide_tx [0]),
    .I4(\uart/clk_divide_tx [1]),
    .O(\uart/GND_3_o_clk_divide_tx[7]_mux_50_OUT<3> )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \uart/rx_state_FSM_FFd1-In1  (
    .I0(\uart/rx_state_FSM_FFd3_172 ),
    .I1(\uart/rx_state_FSM_FFd2_173 ),
    .I2(\uart/sample_counter [2]),
    .I3(\uart/sample_counter [3]),
    .I4(\uart/sample_counter [0]),
    .I5(\uart/sample_counter [1]),
    .O(\uart/rx_state_FSM_FFd1-In )
  );
  LUT6 #(
    .INIT ( 64'h1444444444444444 ))
  \display/Mmux_buf_len[4]_GND_5_o_mux_42_OUT51  (
    .I0(\display/init_1013 ),
    .I1(\display/buf_len [4]),
    .I2(\display/buf_len [2]),
    .I3(\display/buf_len [1]),
    .I4(\display/buf_len [0]),
    .I5(\display/buf_len [3]),
    .O(\display/buf_len[4]_GND_5_o_mux_42_OUT<4> )
  );
  LUT5 #(
    .INIT ( 32'h14444444 ))
  \display/Mmux_buf_len[4]_GND_5_o_mux_42_OUT41  (
    .I0(\display/init_1013 ),
    .I1(\display/buf_len [3]),
    .I2(\display/buf_len [2]),
    .I3(\display/buf_len [1]),
    .I4(\display/buf_len [0]),
    .O(\display/buf_len[4]_GND_5_o_mux_42_OUT<3> )
  );
  LUT5 #(
    .INIT ( 32'h1444FFFF ))
  \display/buf_len[4]_GND_5_o_mux_42_OUT<2>1  (
    .I0(\display/init_1013 ),
    .I1(\display/buf_len [2]),
    .I2(\display/buf_len [1]),
    .I3(\display/buf_len [0]),
    .I4(rstn_IBUF_2),
    .O(\display/buf_len[4]_GND_5_o_mux_42_OUT<2>1_609 )
  );
  LUT5 #(
    .INIT ( 32'h88A88808 ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<220>1  (
    .I0(rstn_IBUF_2),
    .I1(\display/ascii_buf_31 [220]),
    .I2(\display/buf_len[4]_Decoder_9_OUT<4> ),
    .I3(\display/init_1013 ),
    .I4(\uart/rx_byte [4]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<220> )
  );
  LUT5 #(
    .INIT ( 32'h88A88808 ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<221>2  (
    .I0(rstn_IBUF_2),
    .I1(\display/ascii_buf_31 [221]),
    .I2(\display/buf_len[4]_Decoder_9_OUT<4> ),
    .I3(\display/init_1013 ),
    .I4(\uart/rx_byte [5]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<221> )
  );
  LUT5 #(
    .INIT ( 32'h88A88808 ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<223>2  (
    .I0(rstn_IBUF_2),
    .I1(\display/ascii_buf_31 [223]),
    .I2(\display/buf_len[4]_Decoder_9_OUT<4> ),
    .I3(\display/init_1013 ),
    .I4(\uart/rx_byte [7]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<223> )
  );
  LUT4 #(
    .INIT ( 16'h8880 ))
  \display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT83  (
    .I0(\display/digit3 [3]),
    .I1(\display/buf_len [2]),
    .I2(\display/buf_len [1]),
    .I3(\display/buf_len [0]),
    .O(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT82_1324 )
  );
  LUT4 #(
    .INIT ( 16'h8880 ))
  \display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT63  (
    .I0(\display/digit3 [2]),
    .I1(\display/buf_len [2]),
    .I2(\display/buf_len [1]),
    .I3(\display/buf_len [0]),
    .O(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT62_1327 )
  );
  LUT4 #(
    .INIT ( 16'h8880 ))
  \display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT43  (
    .I0(\display/digit3 [1]),
    .I1(\display/buf_len [2]),
    .I2(\display/buf_len [1]),
    .I3(\display/buf_len [0]),
    .O(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT42_1330 )
  );
  LUT4 #(
    .INIT ( 16'h8880 ))
  \display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT23  (
    .I0(\display/digit3 [0]),
    .I1(\display/buf_len [2]),
    .I2(\display/buf_len [1]),
    .I3(\display/buf_len [0]),
    .O(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT22_1333 )
  );
  LUT4 #(
    .INIT ( 16'h8880 ))
  \display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT163  (
    .I0(\display/digit3 [7]),
    .I1(\display/buf_len [2]),
    .I2(\display/buf_len [1]),
    .I3(\display/buf_len [0]),
    .O(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT162_1336 )
  );
  LUT4 #(
    .INIT ( 16'h8880 ))
  \display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT143  (
    .I0(\display/digit3 [6]),
    .I1(\display/buf_len [2]),
    .I2(\display/buf_len [1]),
    .I3(\display/buf_len [0]),
    .O(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT142_1339 )
  );
  LUT4 #(
    .INIT ( 16'h8880 ))
  \display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT104  (
    .I0(\display/digit3 [4]),
    .I1(\display/buf_len [2]),
    .I2(\display/buf_len [1]),
    .I3(\display/buf_len [0]),
    .O(\display/Mmux_buf_len[4]_ascii_buf[3][7]_select_120_OUT103_1342 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFCA8A ))
  \display/Mmux_buf_len[4]_GND_5_o_select_124_OUT11_SW2_F  (
    .I0(\display/buf_len [0]),
    .I1(\display/buf_ptr [0]),
    .I2(\display/buf_len [2]),
    .I3(\display/buf_len [1]),
    .I4(\display/buf_len [4]),
    .I5(\display/buf_len [3]),
    .O(N107)
  );
  LUT5 #(
    .INIT ( 32'h88A88808 ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<243>2  (
    .I0(rstn_IBUF_2),
    .I1(\display/ascii_buf_31 [243]),
    .I2(\display/buf_len[4]_Decoder_9_OUT<1> ),
    .I3(\display/init_1013 ),
    .I4(\uart/rx_byte [3]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<243> )
  );
  LUT5 #(
    .INIT ( 32'h88A88808 ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<241>1  (
    .I0(rstn_IBUF_2),
    .I1(\display/ascii_buf_31 [241]),
    .I2(\display/buf_len[4]_Decoder_9_OUT<1> ),
    .I3(\display/init_1013 ),
    .I4(\uart/rx_byte [1]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<241> )
  );
  LUT5 #(
    .INIT ( 32'h88A88808 ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<244>1  (
    .I0(rstn_IBUF_2),
    .I1(\display/ascii_buf_31 [244]),
    .I2(\display/buf_len[4]_Decoder_9_OUT<1> ),
    .I3(\display/init_1013 ),
    .I4(\uart/rx_byte [4]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<244> )
  );
  LUT5 #(
    .INIT ( 32'h88A88808 ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<245>1  (
    .I0(rstn_IBUF_2),
    .I1(\display/ascii_buf_31 [245]),
    .I2(\display/buf_len[4]_Decoder_9_OUT<1> ),
    .I3(\display/init_1013 ),
    .I4(\uart/rx_byte [5]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<245> )
  );
  LUT5 #(
    .INIT ( 32'h88A88808 ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<247>1  (
    .I0(rstn_IBUF_2),
    .I1(\display/ascii_buf_31 [247]),
    .I2(\display/buf_len[4]_Decoder_9_OUT<1> ),
    .I3(\display/init_1013 ),
    .I4(\uart/rx_byte [7]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<247> )
  );
  LUT5 #(
    .INIT ( 32'h88A88808 ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<232>1  (
    .I0(rstn_IBUF_2),
    .I1(\display/ascii_buf_31 [232]),
    .I2(\display/buf_len[4]_Decoder_9_OUT<2> ),
    .I3(\display/init_1013 ),
    .I4(\uart/rx_byte [0]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<232> )
  );
  LUT5 #(
    .INIT ( 32'h88A88808 ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<233>1  (
    .I0(rstn_IBUF_2),
    .I1(\display/ascii_buf_31 [233]),
    .I2(\display/buf_len[4]_Decoder_9_OUT<2> ),
    .I3(\display/init_1013 ),
    .I4(\uart/rx_byte [1]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<233> )
  );
  LUT5 #(
    .INIT ( 32'h88A88808 ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<236>1  (
    .I0(rstn_IBUF_2),
    .I1(\display/ascii_buf_31 [236]),
    .I2(\display/buf_len[4]_Decoder_9_OUT<2> ),
    .I3(\display/init_1013 ),
    .I4(\uart/rx_byte [4]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<236> )
  );
  LUT5 #(
    .INIT ( 32'h88A88808 ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<237>1  (
    .I0(rstn_IBUF_2),
    .I1(\display/ascii_buf_31 [237]),
    .I2(\display/buf_len[4]_Decoder_9_OUT<2> ),
    .I3(\display/init_1013 ),
    .I4(\uart/rx_byte [5]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<237> )
  );
  LUT5 #(
    .INIT ( 32'h88A88808 ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<239>1  (
    .I0(rstn_IBUF_2),
    .I1(\display/ascii_buf_31 [239]),
    .I2(\display/buf_len[4]_Decoder_9_OUT<2> ),
    .I3(\display/init_1013 ),
    .I4(\uart/rx_byte [7]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<239> )
  );
  LUT5 #(
    .INIT ( 32'h88A88808 ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<224>1  (
    .I0(rstn_IBUF_2),
    .I1(\display/ascii_buf_31 [224]),
    .I2(\display/buf_len[4]_Decoder_9_OUT<3> ),
    .I3(\display/init_1013 ),
    .I4(\uart/rx_byte [0]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<224> )
  );
  LUT5 #(
    .INIT ( 32'h88A88808 ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<225>2  (
    .I0(rstn_IBUF_2),
    .I1(\display/ascii_buf_31 [225]),
    .I2(\display/buf_len[4]_Decoder_9_OUT<3> ),
    .I3(\display/init_1013 ),
    .I4(\uart/rx_byte [1]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<225> )
  );
  LUT5 #(
    .INIT ( 32'h88A88808 ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<228>1  (
    .I0(rstn_IBUF_2),
    .I1(\display/ascii_buf_31 [228]),
    .I2(\display/buf_len[4]_Decoder_9_OUT<3> ),
    .I3(\display/init_1013 ),
    .I4(\uart/rx_byte [4]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<228> )
  );
  LUT5 #(
    .INIT ( 32'h88A88808 ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<229>1  (
    .I0(rstn_IBUF_2),
    .I1(\display/ascii_buf_31 [229]),
    .I2(\display/buf_len[4]_Decoder_9_OUT<3> ),
    .I3(\display/init_1013 ),
    .I4(\uart/rx_byte [5]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<229> )
  );
  LUT5 #(
    .INIT ( 32'h88A88808 ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<231>1  (
    .I0(rstn_IBUF_2),
    .I1(\display/ascii_buf_31 [231]),
    .I2(\display/buf_len[4]_Decoder_9_OUT<3> ),
    .I3(\display/init_1013 ),
    .I4(\uart/rx_byte [7]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<231> )
  );
  LUT6 #(
    .INIT ( 64'hAAA8AAABAAA8ABAB ))
  \display/Mmux_buf_len[4]_GND_5_o_select_124_OUT11_SW1  (
    .I0(\display/buf_ptr [0]),
    .I1(\display/buf_len [3]),
    .I2(\display/buf_len [4]),
    .I3(\display/buf_len [2]),
    .I4(\display/buf_len [0]),
    .I5(\display/buf_len [1]),
    .O(N70)
  );
  LUT6 #(
    .INIT ( 64'h7878787878787800 ))
  \display/Mmux_buf_len[4]_GND_5_o_select_124_OUT32  (
    .I0(\display/buf_ptr [0]),
    .I1(\display/buf_ptr [1]),
    .I2(\display/buf_ptr [2]),
    .I3(\display/buf_len [4]),
    .I4(\display/buf_len [3]),
    .I5(\display/buf_len [2]),
    .O(\display/Mmux_buf_len[4]_GND_5_o_select_124_OUT31 )
  );
  LUT6 #(
    .INIT ( 64'hFFFDFFFDFFFDAAA8 ))
  \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT45  (
    .I0(\display/display/display_cnt [1]),
    .I1(\display/display/digit2[7]_PWR_5_o_select_167_OUT<3>4 ),
    .I2(\display/display/digit2[7]_PWR_5_o_select_167_OUT<5>21_1476 ),
    .I3(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT41 ),
    .I4(\display/display/digit0[7]_PWR_5_o_select_55_OUT<5>2 ),
    .I5(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT43 ),
    .O(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT44_1432 )
  );
  LUT6 #(
    .INIT ( 64'hFFFDFFFDFFFDAAA8 ))
  \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT410  (
    .I0(\display/display/display_cnt [1]),
    .I1(\display/display/digit3[7]_PWR_5_o_select_223_OUT<3>4 ),
    .I2(\display/display/digit3[7]_PWR_5_o_select_223_OUT<5>21_1475 ),
    .I3(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT46 ),
    .I4(\display/display/digit1[7]_PWR_5_o_select_111_OUT<5>2 ),
    .I5(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT48 ),
    .O(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT49_1435 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFF15DD ))
  \display/Mmux_buf_len[4]_GND_5_o_select_124_OUT22_SW1  (
    .I0(\display/buf_len [1]),
    .I1(\display/buf_len [2]),
    .I2(\display/buf_len [0]),
    .I3(\display/buf_ptr [1]),
    .I4(\display/buf_len [4]),
    .I5(\display/buf_len [3]),
    .O(N67)
  );
  LUT5 #(
    .INIT ( 32'hB228A228 ))
  \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT71  (
    .I0(\display/digit3 [6]),
    .I1(\display/digit3 [0]),
    .I2(\display/digit3 [1]),
    .I3(\display/digit3 [2]),
    .I4(\display/digit3 [5]),
    .O(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT7 )
  );
  LUT5 #(
    .INIT ( 32'hB228A228 ))
  \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT75  (
    .I0(\display/digit1 [6]),
    .I1(\display/digit1 [0]),
    .I2(\display/digit1 [1]),
    .I3(\display/digit1 [2]),
    .I4(\display/digit1 [5]),
    .O(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT74_1419 )
  );
  LUT5 #(
    .INIT ( 32'hB228A228 ))
  \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT79  (
    .I0(\display/digit2 [6]),
    .I1(\display/digit2 [0]),
    .I2(\display/digit2 [1]),
    .I3(\display/digit2 [2]),
    .I4(\display/digit2 [5]),
    .O(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT78_1422 )
  );
  LUT5 #(
    .INIT ( 32'hB228A228 ))
  \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT713  (
    .I0(\display/digit0 [6]),
    .I1(\display/digit0 [0]),
    .I2(\display/digit0 [1]),
    .I3(\display/digit0 [2]),
    .I4(\display/digit0 [5]),
    .O(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT712_1425 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFF80FFFFFF91 ))
  \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT12  (
    .I0(\display/digit3 [2]),
    .I1(\display/digit3 [4]),
    .I2(\display/digit3 [6]),
    .I3(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT1 ),
    .I4(\display/display/digit3[7]_PWR_5_o_select_223_OUT<5>2 ),
    .I5(\display/digit3 [0]),
    .O(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT11_1444 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFF80FFFFFF91 ))
  \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT14  (
    .I0(\display/digit1 [2]),
    .I1(\display/digit1 [4]),
    .I2(\display/digit1 [6]),
    .I3(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT12_1445 ),
    .I4(\display/display/digit1[7]_PWR_5_o_select_111_OUT<5>2 ),
    .I5(\display/digit1 [0]),
    .O(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT13_1446 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFF80FFFFFF91 ))
  \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT16  (
    .I0(\display/digit2 [2]),
    .I1(\display/digit2 [4]),
    .I2(\display/digit2 [6]),
    .I3(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT14_1447 ),
    .I4(\display/display/digit2[7]_PWR_5_o_select_167_OUT<5>2 ),
    .I5(\display/digit2 [0]),
    .O(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT15_1448 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFF80FFFFFF91 ))
  \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT18  (
    .I0(\display/digit0 [2]),
    .I1(\display/digit0 [4]),
    .I2(\display/digit0 [6]),
    .I3(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT16_1449 ),
    .I4(\display/display/digit0[7]_PWR_5_o_select_55_OUT<5>2 ),
    .I5(\display/digit0 [0]),
    .O(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT17_1450 )
  );
  LUT5 #(
    .INIT ( 32'h0202029B ))
  \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT39  (
    .I0(\display/digit1 [1]),
    .I1(\display/digit1 [2]),
    .I2(\display/digit1 [6]),
    .I3(\display/digit1 [3]),
    .I4(\display/digit1 [4]),
    .O(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT38_1454 )
  );
  LUT5 #(
    .INIT ( 32'h80F58885 ))
  \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT28  (
    .I0(\display/digit2 [4]),
    .I1(\display/digit2 [6]),
    .I2(\display/digit2 [2]),
    .I3(\display/digit2 [3]),
    .I4(\display/digit2 [1]),
    .O(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT27_1460 )
  );
  LUT5 #(
    .INIT ( 32'h80F58885 ))
  \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT211  (
    .I0(\display/digit0 [4]),
    .I1(\display/digit0 [6]),
    .I2(\display/digit0 [2]),
    .I3(\display/digit0 [3]),
    .I4(\display/digit0 [1]),
    .O(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT210_1463 )
  );
  LUT5 #(
    .INIT ( 32'hFFFEFEFE ))
  \display/Mmux_buf_len[4]_GND_5_o_select_124_OUT11_SW2_G  (
    .I0(\display/buf_len [0]),
    .I1(\display/buf_len [4]),
    .I2(\display/buf_len [3]),
    .I3(\display/buf_len [1]),
    .I4(\display/buf_len [2]),
    .O(N108)
  );
  LUT4 #(
    .INIT ( 16'hFF15 ))
  \display/display/digit2[7]_PWR_5_o_select_167_OUT<3>41  (
    .I0(\display/digit2 [6]),
    .I1(\display/digit2 [4]),
    .I2(\display/digit2 [5]),
    .I3(\display/digit2 [7]),
    .O(\display/display/digit2[7]_PWR_5_o_select_167_OUT<3>4 )
  );
  LUT4 #(
    .INIT ( 16'hFF15 ))
  \display/display/digit1[7]_PWR_5_o_select_111_OUT<3>41  (
    .I0(\display/digit1 [6]),
    .I1(\display/digit1 [4]),
    .I2(\display/digit1 [5]),
    .I3(\display/digit1 [7]),
    .O(\display/display/digit1[7]_PWR_5_o_select_111_OUT<3>4 )
  );
  LUT4 #(
    .INIT ( 16'hFF15 ))
  \display/display/digit0[7]_PWR_5_o_select_55_OUT<3>41  (
    .I0(\display/digit0 [6]),
    .I1(\display/digit0 [4]),
    .I2(\display/digit0 [5]),
    .I3(\display/digit0 [7]),
    .O(\display/display/digit0[7]_PWR_5_o_select_55_OUT<3>4 )
  );
  LUT6 #(
    .INIT ( 64'h0000010011111111 ))
  \display/Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT61  (
    .I0(\display/buf_len [4]),
    .I1(\display/buf_len [3]),
    .I2(\display/buf_len [0]),
    .I3(\display/ascii_buf_31 [253]),
    .I4(\display/buf_len [1]),
    .I5(\display/buf_len [2]),
    .O(\display/Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT6 )
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \display/Mmux_buf_len[4]_GND_5_o_select_124_OUT41  (
    .I0(\display/buf_len [2]),
    .I1(\display/buf_len [1]),
    .I2(\display/buf_len [0]),
    .O(\display/Mmux_buf_len[4]_GND_5_o_select_124_OUT4 )
  );
  LUT4 #(
    .INIT ( 16'hFFF1 ))
  \display/display/digit2[7]_PWR_5_o_select_167_OUT<7>22  (
    .I0(\display/digit2 [5]),
    .I1(\display/digit2 [6]),
    .I2(\display/digit2 [7]),
    .I3(\display/display/digit2[7]_PWR_5_o_select_167_OUT<7>21_1413 ),
    .O(\display/display/digit2[7]_PWR_5_o_select_167_OUT<7>2 )
  );
  LUT4 #(
    .INIT ( 16'hFFF1 ))
  \display/display/digit1[7]_PWR_5_o_select_111_OUT<7>22  (
    .I0(\display/digit1 [5]),
    .I1(\display/digit1 [6]),
    .I2(\display/digit1 [7]),
    .I3(\display/display/digit1[7]_PWR_5_o_select_111_OUT<7>21_1414 ),
    .O(\display/display/digit1[7]_PWR_5_o_select_111_OUT<7>2 )
  );
  LUT4 #(
    .INIT ( 16'hFFF1 ))
  \display/display/digit0[7]_PWR_5_o_select_55_OUT<7>22  (
    .I0(\display/digit0 [5]),
    .I1(\display/digit0 [6]),
    .I2(\display/digit0 [7]),
    .I3(\display/display/digit0[7]_PWR_5_o_select_55_OUT<7>21_1415 ),
    .O(\display/display/digit0[7]_PWR_5_o_select_55_OUT<7>2 )
  );
  LUT4 #(
    .INIT ( 16'h0100 ))
  \display/Mmux_buf_len[4]_GND_5_o_select_124_OUT22_SW0  (
    .I0(\display/buf_len [2]),
    .I1(\display/buf_len [4]),
    .I2(\display/buf_len [3]),
    .I3(\display/buf_len [1]),
    .O(N66)
  );
  LUT6 #(
    .INIT ( 64'h208B080300880800 ))
  \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT73  (
    .I0(\display/digit3 [0]),
    .I1(\display/digit3 [6]),
    .I2(\display/digit3 [2]),
    .I3(\display/digit3 [1]),
    .I4(\display/digit3 [4]),
    .I5(\display/digit3 [5]),
    .O(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT72 )
  );
  LUT6 #(
    .INIT ( 64'h208B080300880800 ))
  \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT77  (
    .I0(\display/digit1 [0]),
    .I1(\display/digit1 [6]),
    .I2(\display/digit1 [2]),
    .I3(\display/digit1 [1]),
    .I4(\display/digit1 [4]),
    .I5(\display/digit1 [5]),
    .O(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT76 )
  );
  LUT6 #(
    .INIT ( 64'h208B080300880800 ))
  \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT711  (
    .I0(\display/digit2 [0]),
    .I1(\display/digit2 [6]),
    .I2(\display/digit2 [2]),
    .I3(\display/digit2 [1]),
    .I4(\display/digit2 [4]),
    .I5(\display/digit2 [5]),
    .O(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT710 )
  );
  LUT6 #(
    .INIT ( 64'h208B080300880800 ))
  \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT715  (
    .I0(\display/digit0 [0]),
    .I1(\display/digit0 [6]),
    .I2(\display/digit0 [2]),
    .I3(\display/digit0 [1]),
    .I4(\display/digit0 [4]),
    .I5(\display/digit0 [5]),
    .O(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT714 )
  );
  LUT6 #(
    .INIT ( 64'h819019198F901919 ))
  \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT42  (
    .I0(\display/digit2 [1]),
    .I1(\display/digit2 [2]),
    .I2(\display/digit2 [0]),
    .I3(\display/digit2 [6]),
    .I4(\display/digit2 [4]),
    .I5(\display/digit2 [3]),
    .O(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT41 )
  );
  LUT6 #(
    .INIT ( 64'h819019198F901919 ))
  \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT44  (
    .I0(\display/digit0 [1]),
    .I1(\display/digit0 [2]),
    .I2(\display/digit0 [0]),
    .I3(\display/digit0 [6]),
    .I4(\display/digit0 [4]),
    .I5(\display/digit0 [3]),
    .O(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT43 )
  );
  LUT6 #(
    .INIT ( 64'h819019198F901919 ))
  \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT47  (
    .I0(\display/digit3 [1]),
    .I1(\display/digit3 [2]),
    .I2(\display/digit3 [0]),
    .I3(\display/digit3 [6]),
    .I4(\display/digit3 [4]),
    .I5(\display/digit3 [3]),
    .O(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT46 )
  );
  LUT6 #(
    .INIT ( 64'h819019198F901919 ))
  \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT49  (
    .I0(\display/digit1 [1]),
    .I1(\display/digit1 [2]),
    .I2(\display/digit1 [0]),
    .I3(\display/digit1 [6]),
    .I4(\display/digit1 [4]),
    .I5(\display/digit1 [3]),
    .O(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT48 )
  );
  LUT4 #(
    .INIT ( 16'h8AFF ))
  \display/init_glue_set  (
    .I0(\display/init_1013 ),
    .I1(\display/ds_sreg [1]),
    .I2(\display/ds_sreg [0]),
    .I3(rstn_IBUF_2),
    .O(\display/init_glue_set_1508 )
  );
  LUT6 #(
    .INIT ( 64'hEAAAAAAA2AAAAAAA ))
  \uart/tx_state_FSM_FFd1-In1  (
    .I0(\uart/tx_state_FSM_FFd1_161 ),
    .I1(\uart/tx_counter [2]),
    .I2(\uart/tx_counter [3]),
    .I3(\uart/tx_counter [0]),
    .I4(\uart/tx_counter [1]),
    .I5(\uart/tx_state_FSM_FFd2_111 ),
    .O(\uart/tx_state_FSM_FFd1-In )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<82>1  (
    .I0(\display/ascii_buf_31 [82]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<21> ),
    .I4(\uart/rx_byte [2]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<82> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<86>1  (
    .I0(\display/ascii_buf_31 [86]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<21> ),
    .I4(\uart/rx_byte [6]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<86> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<83>1  (
    .I0(\display/ascii_buf_31 [83]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<21> ),
    .I4(\uart/rx_byte [3]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<83> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<80>1  (
    .I0(\display/ascii_buf_31 [80]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<21> ),
    .I4(\uart/rx_byte [0]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<80> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<81>1  (
    .I0(\display/ascii_buf_31 [81]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<21> ),
    .I4(\uart/rx_byte [1]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<81> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<84>1  (
    .I0(\display/ascii_buf_31 [84]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<21> ),
    .I4(\uart/rx_byte [4]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<84> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<85>1  (
    .I0(\display/ascii_buf_31 [85]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<21> ),
    .I4(\uart/rx_byte [5]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<85> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<87>1  (
    .I0(\display/ascii_buf_31 [87]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<21> ),
    .I4(\uart/rx_byte [7]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<87> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<74>1  (
    .I0(\display/ascii_buf_31 [74]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<22> ),
    .I4(\uart/rx_byte [2]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<74> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<78>1  (
    .I0(\display/ascii_buf_31 [78]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<22> ),
    .I4(\uart/rx_byte [6]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<78> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<75>1  (
    .I0(\display/ascii_buf_31 [75]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<22> ),
    .I4(\uart/rx_byte [3]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<75> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<72>1  (
    .I0(\display/ascii_buf_31 [72]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<22> ),
    .I4(\uart/rx_byte [0]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<72> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<73>1  (
    .I0(\display/ascii_buf_31 [73]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<22> ),
    .I4(\uart/rx_byte [1]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<73> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<76>1  (
    .I0(\display/ascii_buf_31 [76]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<22> ),
    .I4(\uart/rx_byte [4]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<76> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<77>1  (
    .I0(\display/ascii_buf_31 [77]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<22> ),
    .I4(\uart/rx_byte [5]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<77> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<79>1  (
    .I0(\display/ascii_buf_31 [79]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<22> ),
    .I4(\uart/rx_byte [7]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<79> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<66>1  (
    .I0(\display/ascii_buf_31 [66]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<23> ),
    .I4(\uart/rx_byte [2]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<66> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<70>1  (
    .I0(\display/ascii_buf_31 [70]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<23> ),
    .I4(\uart/rx_byte [6]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<70> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<67>1  (
    .I0(\display/ascii_buf_31 [67]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<23> ),
    .I4(\uart/rx_byte [3]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<67> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<64>1  (
    .I0(\display/ascii_buf_31 [64]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<23> ),
    .I4(\uart/rx_byte [0]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<64> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<65>1  (
    .I0(\display/ascii_buf_31 [65]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<23> ),
    .I4(\uart/rx_byte [1]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<65> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<68>1  (
    .I0(\display/ascii_buf_31 [68]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<23> ),
    .I4(\uart/rx_byte [4]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<68> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<69>1  (
    .I0(\display/ascii_buf_31 [69]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<23> ),
    .I4(\uart/rx_byte [5]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<69> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<71>1  (
    .I0(\display/ascii_buf_31 [71]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<23> ),
    .I4(\uart/rx_byte [7]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<71> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<58>1  (
    .I0(\display/ascii_buf_31 [58]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<24> ),
    .I4(\uart/rx_byte [2]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<58> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<62>1  (
    .I0(\display/ascii_buf_31 [62]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<24> ),
    .I4(\uart/rx_byte [6]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<62> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<59>1  (
    .I0(\display/ascii_buf_31 [59]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<24> ),
    .I4(\uart/rx_byte [3]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<59> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<56>1  (
    .I0(\display/ascii_buf_31 [56]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<24> ),
    .I4(\uart/rx_byte [0]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<56> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<57>1  (
    .I0(\display/ascii_buf_31 [57]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<24> ),
    .I4(\uart/rx_byte [1]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<57> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<60>1  (
    .I0(\display/ascii_buf_31 [60]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<24> ),
    .I4(\uart/rx_byte [4]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<60> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<61>1  (
    .I0(\display/ascii_buf_31 [61]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<24> ),
    .I4(\uart/rx_byte [5]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<61> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<63>1  (
    .I0(\display/ascii_buf_31 [63]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<24> ),
    .I4(\uart/rx_byte [7]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<63> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<50>1  (
    .I0(\display/ascii_buf_31 [50]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<25> ),
    .I4(\uart/rx_byte [2]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<50> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<54>1  (
    .I0(\display/ascii_buf_31 [54]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<25> ),
    .I4(\uart/rx_byte [6]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<54> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<51>1  (
    .I0(\display/ascii_buf_31 [51]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<25> ),
    .I4(\uart/rx_byte [3]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<51> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<48>1  (
    .I0(\display/ascii_buf_31 [48]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<25> ),
    .I4(\uart/rx_byte [0]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<48> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<49>1  (
    .I0(\display/ascii_buf_31 [49]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<25> ),
    .I4(\uart/rx_byte [1]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<49> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<52>1  (
    .I0(\display/ascii_buf_31 [52]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<25> ),
    .I4(\uart/rx_byte [4]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<52> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<53>1  (
    .I0(\display/ascii_buf_31 [53]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<25> ),
    .I4(\uart/rx_byte [5]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<53> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<55>1  (
    .I0(\display/ascii_buf_31 [55]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<25> ),
    .I4(\uart/rx_byte [7]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<55> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<42>1  (
    .I0(\display/ascii_buf_31 [42]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<26> ),
    .I4(\uart/rx_byte [2]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<42> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<46>1  (
    .I0(\display/ascii_buf_31 [46]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<26> ),
    .I4(\uart/rx_byte [6]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<46> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<43>1  (
    .I0(\display/ascii_buf_31 [43]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<26> ),
    .I4(\uart/rx_byte [3]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<43> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<40>1  (
    .I0(\display/ascii_buf_31 [40]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<26> ),
    .I4(\uart/rx_byte [0]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<40> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<41>1  (
    .I0(\display/ascii_buf_31 [41]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<26> ),
    .I4(\uart/rx_byte [1]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<41> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<44>1  (
    .I0(\display/ascii_buf_31 [44]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<26> ),
    .I4(\uart/rx_byte [4]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<44> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<45>1  (
    .I0(\display/ascii_buf_31 [45]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<26> ),
    .I4(\uart/rx_byte [5]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<45> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<47>1  (
    .I0(\display/ascii_buf_31 [47]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<26> ),
    .I4(\uart/rx_byte [7]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<47> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<34>1  (
    .I0(\display/ascii_buf_31 [34]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<27> ),
    .I4(\uart/rx_byte [2]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<34> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<38>1  (
    .I0(\display/ascii_buf_31 [38]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<27> ),
    .I4(\uart/rx_byte [6]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<38> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<35>1  (
    .I0(\display/ascii_buf_31 [35]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<27> ),
    .I4(\uart/rx_byte [3]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<35> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<32>1  (
    .I0(\display/ascii_buf_31 [32]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<27> ),
    .I4(\uart/rx_byte [0]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<32> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<33>1  (
    .I0(\display/ascii_buf_31 [33]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<27> ),
    .I4(\uart/rx_byte [1]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<33> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<36>1  (
    .I0(\display/ascii_buf_31 [36]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<27> ),
    .I4(\uart/rx_byte [4]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<36> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<37>1  (
    .I0(\display/ascii_buf_31 [37]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<27> ),
    .I4(\uart/rx_byte [5]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<37> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<39>1  (
    .I0(\display/ascii_buf_31 [39]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<27> ),
    .I4(\uart/rx_byte [7]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<39> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<210>1  (
    .I0(\display/ascii_buf_31 [210]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<5> ),
    .I4(\uart/rx_byte [2]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<210> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<214>1  (
    .I0(\display/ascii_buf_31 [214]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<5> ),
    .I4(\uart/rx_byte [6]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<214> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<211>1  (
    .I0(\display/ascii_buf_31 [211]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<5> ),
    .I4(\uart/rx_byte [3]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<211> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<208>1  (
    .I0(\display/ascii_buf_31 [208]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<5> ),
    .I4(\uart/rx_byte [0]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<208> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<209>1  (
    .I0(\display/ascii_buf_31 [209]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<5> ),
    .I4(\uart/rx_byte [1]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<209> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<212>1  (
    .I0(\display/ascii_buf_31 [212]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<5> ),
    .I4(\uart/rx_byte [4]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<212> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<213>1  (
    .I0(\display/ascii_buf_31 [213]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<5> ),
    .I4(\uart/rx_byte [5]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<213> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<215>1  (
    .I0(\display/ascii_buf_31 [215]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<5> ),
    .I4(\uart/rx_byte [7]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<215> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<202>1  (
    .I0(\display/ascii_buf_31 [202]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<6> ),
    .I4(\uart/rx_byte [2]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<202> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<206>1  (
    .I0(\display/ascii_buf_31 [206]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<6> ),
    .I4(\uart/rx_byte [6]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<206> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<203>1  (
    .I0(\display/ascii_buf_31 [203]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<6> ),
    .I4(\uart/rx_byte [3]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<203> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<200>1  (
    .I0(\display/ascii_buf_31 [200]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<6> ),
    .I4(\uart/rx_byte [0]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<200> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<201>1  (
    .I0(\display/ascii_buf_31 [201]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<6> ),
    .I4(\uart/rx_byte [1]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<201> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<204>1  (
    .I0(\display/ascii_buf_31 [204]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<6> ),
    .I4(\uart/rx_byte [4]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<204> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<205>1  (
    .I0(\display/ascii_buf_31 [205]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<6> ),
    .I4(\uart/rx_byte [5]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<205> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<207>1  (
    .I0(\display/ascii_buf_31 [207]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<6> ),
    .I4(\uart/rx_byte [7]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<207> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<194>1  (
    .I0(\display/ascii_buf_31 [194]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<7> ),
    .I4(\uart/rx_byte [2]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<194> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<198>1  (
    .I0(\display/ascii_buf_31 [198]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<7> ),
    .I4(\uart/rx_byte [6]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<198> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<195>1  (
    .I0(\display/ascii_buf_31 [195]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<7> ),
    .I4(\uart/rx_byte [3]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<195> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<192>1  (
    .I0(\display/ascii_buf_31 [192]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<7> ),
    .I4(\uart/rx_byte [0]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<192> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<193>1  (
    .I0(\display/ascii_buf_31 [193]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<7> ),
    .I4(\uart/rx_byte [1]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<193> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<196>1  (
    .I0(\display/ascii_buf_31 [196]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<7> ),
    .I4(\uart/rx_byte [4]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<196> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<197>1  (
    .I0(\display/ascii_buf_31 [197]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<7> ),
    .I4(\uart/rx_byte [5]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<197> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<199>1  (
    .I0(\display/ascii_buf_31 [199]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<7> ),
    .I4(\uart/rx_byte [7]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<199> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<186>1  (
    .I0(\display/ascii_buf_31 [186]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<8> ),
    .I4(\uart/rx_byte [2]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<186> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<190>1  (
    .I0(\display/ascii_buf_31 [190]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<8> ),
    .I4(\uart/rx_byte [6]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<190> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<187>1  (
    .I0(\display/ascii_buf_31 [187]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<8> ),
    .I4(\uart/rx_byte [3]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<187> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<184>1  (
    .I0(\display/ascii_buf_31 [184]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<8> ),
    .I4(\uart/rx_byte [0]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<184> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<185>1  (
    .I0(\display/ascii_buf_31 [185]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<8> ),
    .I4(\uart/rx_byte [1]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<185> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<188>1  (
    .I0(\display/ascii_buf_31 [188]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<8> ),
    .I4(\uart/rx_byte [4]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<188> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<189>1  (
    .I0(\display/ascii_buf_31 [189]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<8> ),
    .I4(\uart/rx_byte [5]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<189> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<191>1  (
    .I0(\display/ascii_buf_31 [191]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<8> ),
    .I4(\uart/rx_byte [7]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<191> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<178>1  (
    .I0(\display/ascii_buf_31 [178]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<9> ),
    .I4(\uart/rx_byte [2]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<178> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<182>1  (
    .I0(\display/ascii_buf_31 [182]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<9> ),
    .I4(\uart/rx_byte [6]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<182> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<179>1  (
    .I0(\display/ascii_buf_31 [179]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<9> ),
    .I4(\uart/rx_byte [3]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<179> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<176>1  (
    .I0(\display/ascii_buf_31 [176]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<9> ),
    .I4(\uart/rx_byte [0]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<176> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<177>1  (
    .I0(\display/ascii_buf_31 [177]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<9> ),
    .I4(\uart/rx_byte [1]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<177> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<180>1  (
    .I0(\display/ascii_buf_31 [180]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<9> ),
    .I4(\uart/rx_byte [4]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<180> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<181>1  (
    .I0(\display/ascii_buf_31 [181]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<9> ),
    .I4(\uart/rx_byte [5]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<181> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<183>1  (
    .I0(\display/ascii_buf_31 [183]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<9> ),
    .I4(\uart/rx_byte [7]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<183> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<18>1  (
    .I0(\display/ascii_buf_31 [18]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<29> ),
    .I4(\uart/rx_byte [2]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<18> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<22>1  (
    .I0(\display/ascii_buf_31 [22]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<29> ),
    .I4(\uart/rx_byte [6]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<22> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<19>1  (
    .I0(\display/ascii_buf_31 [19]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<29> ),
    .I4(\uart/rx_byte [3]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<19> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<16>1  (
    .I0(\display/ascii_buf_31 [16]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<29> ),
    .I4(\uart/rx_byte [0]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<16> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<17>1  (
    .I0(\display/ascii_buf_31 [17]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<29> ),
    .I4(\uart/rx_byte [1]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<17> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<20>1  (
    .I0(\display/ascii_buf_31 [20]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<29> ),
    .I4(\uart/rx_byte [4]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<20> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<21>1  (
    .I0(\display/ascii_buf_31 [21]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<29> ),
    .I4(\uart/rx_byte [5]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<21> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<23>1  (
    .I0(\display/ascii_buf_31 [23]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<29> ),
    .I4(\uart/rx_byte [7]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<23> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<170>1  (
    .I0(\display/ascii_buf_31 [170]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<10> ),
    .I4(\uart/rx_byte [2]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<170> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<174>1  (
    .I0(\display/ascii_buf_31 [174]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<10> ),
    .I4(\uart/rx_byte [6]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<174> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<171>1  (
    .I0(\display/ascii_buf_31 [171]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<10> ),
    .I4(\uart/rx_byte [3]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<171> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<168>1  (
    .I0(\display/ascii_buf_31 [168]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<10> ),
    .I4(\uart/rx_byte [0]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<168> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<169>1  (
    .I0(\display/ascii_buf_31 [169]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<10> ),
    .I4(\uart/rx_byte [1]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<169> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<172>1  (
    .I0(\display/ascii_buf_31 [172]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<10> ),
    .I4(\uart/rx_byte [4]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<172> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<173>1  (
    .I0(\display/ascii_buf_31 [173]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<10> ),
    .I4(\uart/rx_byte [5]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<173> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<175>1  (
    .I0(\display/ascii_buf_31 [175]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<10> ),
    .I4(\uart/rx_byte [7]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<175> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<162>1  (
    .I0(\display/ascii_buf_31 [162]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<11> ),
    .I4(\uart/rx_byte [2]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<162> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<166>1  (
    .I0(\display/ascii_buf_31 [166]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<11> ),
    .I4(\uart/rx_byte [6]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<166> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<163>1  (
    .I0(\display/ascii_buf_31 [163]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<11> ),
    .I4(\uart/rx_byte [3]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<163> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<160>1  (
    .I0(\display/ascii_buf_31 [160]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<11> ),
    .I4(\uart/rx_byte [0]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<160> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<161>1  (
    .I0(\display/ascii_buf_31 [161]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<11> ),
    .I4(\uart/rx_byte [1]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<161> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<164>1  (
    .I0(\display/ascii_buf_31 [164]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<11> ),
    .I4(\uart/rx_byte [4]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<164> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<165>1  (
    .I0(\display/ascii_buf_31 [165]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<11> ),
    .I4(\uart/rx_byte [5]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<165> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<167>1  (
    .I0(\display/ascii_buf_31 [167]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<11> ),
    .I4(\uart/rx_byte [7]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<167> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<146>1  (
    .I0(\display/ascii_buf_31 [146]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<13> ),
    .I4(\uart/rx_byte [2]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<146> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<150>1  (
    .I0(\display/ascii_buf_31 [150]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<13> ),
    .I4(\uart/rx_byte [6]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<150> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<147>1  (
    .I0(\display/ascii_buf_31 [147]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<13> ),
    .I4(\uart/rx_byte [3]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<147> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<144>1  (
    .I0(\display/ascii_buf_31 [144]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<13> ),
    .I4(\uart/rx_byte [0]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<144> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<145>1  (
    .I0(\display/ascii_buf_31 [145]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<13> ),
    .I4(\uart/rx_byte [1]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<145> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<148>1  (
    .I0(\display/ascii_buf_31 [148]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<13> ),
    .I4(\uart/rx_byte [4]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<148> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<149>1  (
    .I0(\display/ascii_buf_31 [149]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<13> ),
    .I4(\uart/rx_byte [5]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<149> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<151>1  (
    .I0(\display/ascii_buf_31 [151]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<13> ),
    .I4(\uart/rx_byte [7]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<151> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<138>1  (
    .I0(\display/ascii_buf_31 [138]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<14> ),
    .I4(\uart/rx_byte [2]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<138> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<142>1  (
    .I0(\display/ascii_buf_31 [142]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<14> ),
    .I4(\uart/rx_byte [6]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<142> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<139>1  (
    .I0(\display/ascii_buf_31 [139]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<14> ),
    .I4(\uart/rx_byte [3]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<139> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<136>1  (
    .I0(\display/ascii_buf_31 [136]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<14> ),
    .I4(\uart/rx_byte [0]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<136> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<137>1  (
    .I0(\display/ascii_buf_31 [137]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<14> ),
    .I4(\uart/rx_byte [1]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<137> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<140>1  (
    .I0(\display/ascii_buf_31 [140]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<14> ),
    .I4(\uart/rx_byte [4]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<140> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<141>1  (
    .I0(\display/ascii_buf_31 [141]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<14> ),
    .I4(\uart/rx_byte [5]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<141> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<143>1  (
    .I0(\display/ascii_buf_31 [143]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<14> ),
    .I4(\uart/rx_byte [7]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<143> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<130>1  (
    .I0(\display/ascii_buf_31 [130]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<15> ),
    .I4(\uart/rx_byte [2]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<130> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<134>1  (
    .I0(\display/ascii_buf_31 [134]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<15> ),
    .I4(\uart/rx_byte [6]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<134> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<131>1  (
    .I0(\display/ascii_buf_31 [131]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<15> ),
    .I4(\uart/rx_byte [3]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<131> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<128>1  (
    .I0(\display/ascii_buf_31 [128]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<15> ),
    .I4(\uart/rx_byte [0]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<128> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<129>1  (
    .I0(\display/ascii_buf_31 [129]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<15> ),
    .I4(\uart/rx_byte [1]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<129> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<132>1  (
    .I0(\display/ascii_buf_31 [132]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<15> ),
    .I4(\uart/rx_byte [4]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<132> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<133>1  (
    .I0(\display/ascii_buf_31 [133]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<15> ),
    .I4(\uart/rx_byte [5]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<133> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<135>1  (
    .I0(\display/ascii_buf_31 [135]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<15> ),
    .I4(\uart/rx_byte [7]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<135> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<122>1  (
    .I0(\display/ascii_buf_31 [122]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<16> ),
    .I4(\uart/rx_byte [2]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<122> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<126>1  (
    .I0(\display/ascii_buf_31 [126]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<16> ),
    .I4(\uart/rx_byte [6]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<126> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<123>1  (
    .I0(\display/ascii_buf_31 [123]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<16> ),
    .I4(\uart/rx_byte [3]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<123> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<120>1  (
    .I0(\display/ascii_buf_31 [120]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<16> ),
    .I4(\uart/rx_byte [0]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<120> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<121>1  (
    .I0(\display/ascii_buf_31 [121]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<16> ),
    .I4(\uart/rx_byte [1]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<121> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<124>1  (
    .I0(\display/ascii_buf_31 [124]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<16> ),
    .I4(\uart/rx_byte [4]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<124> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<125>1  (
    .I0(\display/ascii_buf_31 [125]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<16> ),
    .I4(\uart/rx_byte [5]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<125> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<127>1  (
    .I0(\display/ascii_buf_31 [127]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<16> ),
    .I4(\uart/rx_byte [7]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<127> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<114>1  (
    .I0(\display/ascii_buf_31 [114]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<17> ),
    .I4(\uart/rx_byte [2]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<114> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<118>1  (
    .I0(\display/ascii_buf_31 [118]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<17> ),
    .I4(\uart/rx_byte [6]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<118> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<115>1  (
    .I0(\display/ascii_buf_31 [115]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<17> ),
    .I4(\uart/rx_byte [3]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<115> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<112>1  (
    .I0(\display/ascii_buf_31 [112]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<17> ),
    .I4(\uart/rx_byte [0]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<112> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<113>1  (
    .I0(\display/ascii_buf_31 [113]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<17> ),
    .I4(\uart/rx_byte [1]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<113> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<116>1  (
    .I0(\display/ascii_buf_31 [116]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<17> ),
    .I4(\uart/rx_byte [4]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<116> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<117>1  (
    .I0(\display/ascii_buf_31 [117]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<17> ),
    .I4(\uart/rx_byte [5]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<117> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<119>1  (
    .I0(\display/ascii_buf_31 [119]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<17> ),
    .I4(\uart/rx_byte [7]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<119> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<10>1  (
    .I0(\display/ascii_buf_31 [10]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<30> ),
    .I4(\uart/rx_byte [2]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<10> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<14>1  (
    .I0(\display/ascii_buf_31 [14]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<30> ),
    .I4(\uart/rx_byte [6]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<14> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<11>1  (
    .I0(\display/ascii_buf_31 [11]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<30> ),
    .I4(\uart/rx_byte [3]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<11> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<8>1  (
    .I0(\display/ascii_buf_31 [8]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<30> ),
    .I4(\uart/rx_byte [0]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<8> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<9>1  (
    .I0(\display/ascii_buf_31 [9]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<30> ),
    .I4(\uart/rx_byte [1]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<9> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<12>1  (
    .I0(\display/ascii_buf_31 [12]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<30> ),
    .I4(\uart/rx_byte [4]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<12> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<13>1  (
    .I0(\display/ascii_buf_31 [13]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<30> ),
    .I4(\uart/rx_byte [5]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<13> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<15>1  (
    .I0(\display/ascii_buf_31 [15]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<30> ),
    .I4(\uart/rx_byte [7]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<15> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<106>2  (
    .I0(\display/ascii_buf_31 [106]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<18> ),
    .I4(\uart/rx_byte [2]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<106> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<110>1  (
    .I0(\display/ascii_buf_31 [110]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<18> ),
    .I4(\uart/rx_byte [6]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<110> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<107>1  (
    .I0(\display/ascii_buf_31 [107]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<18> ),
    .I4(\uart/rx_byte [3]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<107> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<104>1  (
    .I0(\display/ascii_buf_31 [104]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<18> ),
    .I4(\uart/rx_byte [0]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<104> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<105>1  (
    .I0(\display/ascii_buf_31 [105]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<18> ),
    .I4(\uart/rx_byte [1]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<105> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<108>1  (
    .I0(\display/ascii_buf_31 [108]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<18> ),
    .I4(\uart/rx_byte [4]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<108> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<109>1  (
    .I0(\display/ascii_buf_31 [109]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<18> ),
    .I4(\uart/rx_byte [5]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<109> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<111>1  (
    .I0(\display/ascii_buf_31 [111]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<18> ),
    .I4(\uart/rx_byte [7]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<111> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<98>1  (
    .I0(\display/ascii_buf_31 [98]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<19> ),
    .I4(\uart/rx_byte [2]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<98> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<102>2  (
    .I0(\display/ascii_buf_31 [102]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<19> ),
    .I4(\uart/rx_byte [6]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<102> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<99>1  (
    .I0(\display/ascii_buf_31 [99]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<19> ),
    .I4(\uart/rx_byte [3]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<99> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<96>1  (
    .I0(\display/ascii_buf_31 [96]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<19> ),
    .I4(\uart/rx_byte [0]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<96> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<97>1  (
    .I0(\display/ascii_buf_31 [97]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<19> ),
    .I4(\uart/rx_byte [1]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<97> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<100>1  (
    .I0(\display/ascii_buf_31 [100]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<19> ),
    .I4(\uart/rx_byte [4]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<100> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<101>1  (
    .I0(\display/ascii_buf_31 [101]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<19> ),
    .I4(\uart/rx_byte [5]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<101> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<103>1  (
    .I0(\display/ascii_buf_31 [103]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<19> ),
    .I4(\uart/rx_byte [7]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<103> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<2>1  (
    .I0(\display/ascii_buf_31 [2]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<31> ),
    .I4(\uart/rx_byte [2]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<2> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<6>1  (
    .I0(\display/ascii_buf_31 [6]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<31> ),
    .I4(\uart/rx_byte [6]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<6> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<3>1  (
    .I0(\display/ascii_buf_31 [3]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<31> ),
    .I4(\uart/rx_byte [3]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<3> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<0>1  (
    .I0(\display/ascii_buf_31 [0]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<31> ),
    .I4(\uart/rx_byte [0]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<0> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<1>1  (
    .I0(\display/ascii_buf_31 [1]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<31> ),
    .I4(\uart/rx_byte [1]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<1> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<4>1  (
    .I0(\display/ascii_buf_31 [4]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<31> ),
    .I4(\uart/rx_byte [4]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<4> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<5>1  (
    .I0(\display/ascii_buf_31 [5]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<31> ),
    .I4(\uart/rx_byte [5]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<5> )
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  \display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<7>1  (
    .I0(\display/ascii_buf_31 [7]),
    .I1(rstn_IBUF_2),
    .I2(\display/init_1013 ),
    .I3(\display/buf_len[4]_Decoder_9_OUT<31> ),
    .I4(\uart/rx_byte [7]),
    .O(\display/ascii_buf[0][7]_GND_5_o_mux_49_OUT<7> )
  );
  LUT4 #(
    .INIT ( 16'hFF15 ))
  \display/display/digit3[7]_PWR_5_o_select_223_OUT<3>41  (
    .I0(\display/digit3 [6]),
    .I1(\display/digit3 [4]),
    .I2(\display/digit3 [5]),
    .I3(\display/digit3 [7]),
    .O(\display/display/digit3[7]_PWR_5_o_select_223_OUT<3>4 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFF5515 ))
  \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT511  (
    .I0(\display/digit0 [6]),
    .I1(\display/digit0 [4]),
    .I2(\display/digit0 [5]),
    .I3(\display/digit0 [0]),
    .I4(\display/digit0 [7]),
    .I5(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT59 ),
    .O(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT510_1441 )
  );
  LUT4 #(
    .INIT ( 16'hFFF1 ))
  \display/display/digit3[7]_PWR_5_o_select_223_OUT<7>22  (
    .I0(\display/digit3 [5]),
    .I1(\display/digit3 [6]),
    .I2(\display/digit3 [7]),
    .I3(\display/display/digit3[7]_PWR_5_o_select_223_OUT<7>21_1412 ),
    .O(\display/display/digit3[7]_PWR_5_o_select_223_OUT<7>2 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFFF15 ))
  \display/display/digit2[7]_PWR_5_o_select_167_OUT<5>22  (
    .I0(\display/digit2 [6]),
    .I1(\display/digit2 [4]),
    .I2(\display/digit2 [5]),
    .I3(\display/digit2 [7]),
    .I4(\display/display/digit2[7]_PWR_5_o_select_167_OUT<5>21_1476 ),
    .O(\display/display/digit2[7]_PWR_5_o_select_167_OUT<5>2 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFFF15 ))
  \display/display/digit1[7]_PWR_5_o_select_111_OUT<5>22  (
    .I0(\display/digit1 [6]),
    .I1(\display/digit1 [4]),
    .I2(\display/digit1 [5]),
    .I3(\display/digit1 [7]),
    .I4(\display/display/digit1[7]_PWR_5_o_select_111_OUT<5>21_1477 ),
    .O(\display/display/digit1[7]_PWR_5_o_select_111_OUT<5>2 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFFF15 ))
  \display/display/digit0[7]_PWR_5_o_select_55_OUT<5>22  (
    .I0(\display/digit0 [6]),
    .I1(\display/digit0 [4]),
    .I2(\display/digit0 [5]),
    .I3(\display/digit0 [7]),
    .I4(\display/display/digit0[7]_PWR_5_o_select_55_OUT<5>21_1478 ),
    .O(\display/display/digit0[7]_PWR_5_o_select_55_OUT<5>2 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFFFA8 ))
  \display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT131  (
    .I0(\display/buf_len [2]),
    .I1(\display/buf_len [1]),
    .I2(\display/buf_len [0]),
    .I3(\display/buf_len [3]),
    .I4(\display/buf_len [4]),
    .O(\display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT13 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000001000 ))
  \display/Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT4_SW0  (
    .I0(\display/buf_len [1]),
    .I1(\display/buf_len [0]),
    .I2(\display/ascii_buf_31 [251]),
    .I3(\display/buf_len [2]),
    .I4(\display/buf_len [4]),
    .I5(\display/buf_len [3]),
    .O(N46)
  );
  LUT6 #(
    .INIT ( 64'h0000000000001000 ))
  \display/Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT7_SW0  (
    .I0(\display/buf_len [1]),
    .I1(\display/buf_len [0]),
    .I2(\display/ascii_buf_31 [254]),
    .I3(\display/buf_len [2]),
    .I4(\display/buf_len [4]),
    .I5(\display/buf_len [3]),
    .O(N48)
  );
  LUT6 #(
    .INIT ( 64'h0000000000001000 ))
  \display/Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT1_SW0  (
    .I0(\display/buf_len [1]),
    .I1(\display/buf_len [0]),
    .I2(\display/ascii_buf_31 [248]),
    .I3(\display/buf_len [2]),
    .I4(\display/buf_len [4]),
    .I5(\display/buf_len [3]),
    .O(N50)
  );
  LUT6 #(
    .INIT ( 64'h0000000000001000 ))
  \display/Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT2_SW0  (
    .I0(\display/buf_len [1]),
    .I1(\display/buf_len [0]),
    .I2(\display/ascii_buf_31 [249]),
    .I3(\display/buf_len [2]),
    .I4(\display/buf_len [4]),
    .I5(\display/buf_len [3]),
    .O(N52)
  );
  LUT6 #(
    .INIT ( 64'h0000000000001000 ))
  \display/Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT8_SW0  (
    .I0(\display/buf_len [1]),
    .I1(\display/buf_len [0]),
    .I2(\display/ascii_buf_31 [255]),
    .I3(\display/buf_len [2]),
    .I4(\display/buf_len [4]),
    .I5(\display/buf_len [3]),
    .O(N54)
  );
  LUT6 #(
    .INIT ( 64'h0000000000001000 ))
  \display/Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT5_SW0  (
    .I0(\display/buf_len [1]),
    .I1(\display/buf_len [0]),
    .I2(\display/ascii_buf_31 [252]),
    .I3(\display/buf_len [2]),
    .I4(\display/buf_len [4]),
    .I5(\display/buf_len [3]),
    .O(N56)
  );
  LUT6 #(
    .INIT ( 64'h0000000000001000 ))
  \display/Mmux_buf_len[4]_ascii_buf[0][7]_select_123_OUT3_SW0  (
    .I0(\display/buf_len [1]),
    .I1(\display/buf_len [0]),
    .I2(\display/ascii_buf_31 [250]),
    .I3(\display/buf_len [2]),
    .I4(\display/buf_len [4]),
    .I5(\display/buf_len [3]),
    .O(N58)
  );
  LUT5 #(
    .INIT ( 32'hFFFFF1FF ))
  \display/buf_ptr[4]_buf_len[4]_LessThan_53_o261_SW0  (
    .I0(\display/buf_len [0]),
    .I1(\display/buf_len [1]),
    .I2(\display/buf_len [4]),
    .I3(\display/buf_len [2]),
    .I4(\display/buf_len [3]),
    .O(N84)
  );
  LUT6 #(
    .INIT ( 64'h8CAC062588AA022B ))
  \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT36  (
    .I0(\display/digit0 [1]),
    .I1(\display/digit0 [4]),
    .I2(\display/digit0 [0]),
    .I3(\display/digit0 [2]),
    .I4(\display/digit0 [3]),
    .I5(\display/digit0 [6]),
    .O(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT35 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFFF15 ))
  \display/display/digit3[7]_PWR_5_o_select_223_OUT<5>22  (
    .I0(\display/digit3 [6]),
    .I1(\display/digit3 [4]),
    .I2(\display/digit3 [5]),
    .I3(\display/digit3 [7]),
    .I4(\display/display/digit3[7]_PWR_5_o_select_223_OUT<5>21_1475 ),
    .O(\display/display/digit3[7]_PWR_5_o_select_223_OUT<5>2 )
  );
  LUT6 #(
    .INIT ( 64'h8CAC062588AA022B ))
  \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT33  (
    .I0(\display/digit2 [1]),
    .I1(\display/digit2 [4]),
    .I2(\display/digit2 [0]),
    .I3(\display/digit2 [2]),
    .I4(\display/digit2 [3]),
    .I5(\display/digit2 [6]),
    .O(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT32 )
  );
  LUT6 #(
    .INIT ( 64'h8CAC062588AA022B ))
  \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT313  (
    .I0(\display/digit3 [1]),
    .I1(\display/digit3 [4]),
    .I2(\display/digit3 [0]),
    .I3(\display/digit3 [2]),
    .I4(\display/digit3 [3]),
    .I5(\display/digit3 [6]),
    .O(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT312 )
  );
  FDCE   \display/buf_ptr_0_1  (
    .C(\display/four_hz/counter_22_BUFG_1275 ),
    .CE(\display/_n0393_inv ),
    .CLR(\display/rst ),
    .D(\display/buf_len[4]_GND_5_o_select_124_OUT<0> ),
    .Q(\display/buf_ptr_0_1_1557 )
  );
  FDCE   \display/buf_ptr_1_1  (
    .C(\display/four_hz/counter_22_BUFG_1275 ),
    .CE(\display/_n0393_inv ),
    .CLR(\display/rst ),
    .D(\display/buf_len[4]_GND_5_o_select_124_OUT<1> ),
    .Q(\display/buf_ptr_1_1_1558 )
  );
  LUT6 #(
    .INIT ( 64'h5555555755555554 ))
  \display/Mmux_buf_len[4]_GND_5_o_select_124_OUT13  (
    .I0(N70),
    .I1(\display/buf_ptr[4]_buf_len[4]_equal_68_o ),
    .I2(\display/GND_5_o_GND_5_o_equal_77_o ),
    .I3(\display/buf_ptr[4]_buf_len[4]_LessThan_53_o ),
    .I4(\display/GND_5_o_GND_5_o_equal_84_o ),
    .I5(N71),
    .O(\display/buf_len[4]_GND_5_o_select_124_OUT<0> )
  );
  FDCE   \display/buf_ptr_2_1  (
    .C(\display/four_hz/counter_22_BUFG_1275 ),
    .CE(\display/_n0393_inv ),
    .CLR(\display/rst ),
    .D(\display/buf_len[4]_GND_5_o_select_124_OUT<2> ),
    .Q(\display/buf_ptr_2_1_1559 )
  );
  FDCE   \display/buf_ptr_1_2  (
    .C(\display/four_hz/counter_22_BUFG_1275 ),
    .CE(\display/_n0393_inv ),
    .CLR(\display/rst ),
    .D(\display/buf_len[4]_GND_5_o_select_124_OUT<1> ),
    .Q(\display/buf_ptr_1_2_1560 )
  );
  FDCE   \display/buf_ptr_1_3  (
    .C(\display/four_hz/counter_22_BUFG_1275 ),
    .CE(\display/_n0393_inv ),
    .CLR(\display/rst ),
    .D(\display/buf_len[4]_GND_5_o_select_124_OUT<1> ),
    .Q(\display/buf_ptr_1_3_1561 )
  );
  FDCE   \display/buf_ptr_0_2  (
    .C(\display/four_hz/counter_22_BUFG_1275 ),
    .CE(\display/_n0393_inv ),
    .CLR(\display/rst ),
    .D(\display/buf_len[4]_GND_5_o_select_124_OUT<0> ),
    .Q(\display/buf_ptr_0_2_1562 )
  );
  FDCE   \display/buf_ptr_0_3  (
    .C(\display/four_hz/counter_22_BUFG_1275 ),
    .CE(\display/_n0393_inv ),
    .CLR(\display/rst ),
    .D(\display/buf_len[4]_GND_5_o_select_124_OUT<0> ),
    .Q(\display/buf_ptr_0_3_1563 )
  );
  FDCE   \display/buf_ptr_3_1  (
    .C(\display/four_hz/counter_22_BUFG_1275 ),
    .CE(\display/_n0393_inv ),
    .CLR(\display/rst ),
    .D(\display/buf_len[4]_GND_5_o_select_124_OUT<3> ),
    .Q(\display/buf_ptr_3_1_1564 )
  );
  FDCE   \display/buf_ptr_4_1  (
    .C(\display/four_hz/counter_22_BUFG_1275 ),
    .CE(\display/_n0393_inv ),
    .CLR(\display/rst ),
    .D(\display/buf_len[4]_GND_5_o_select_124_OUT<4> ),
    .Q(\display/buf_ptr_4_1_1565 )
  );
  FDCE   \display/buf_ptr_2_2  (
    .C(\display/four_hz/counter_22_BUFG_1275 ),
    .CE(\display/_n0393_inv ),
    .CLR(\display/rst ),
    .D(\display/buf_len[4]_GND_5_o_select_124_OUT<2> ),
    .Q(\display/buf_ptr_2_2_1566 )
  );
  FDCE   \display/buf_ptr_3_2  (
    .C(\display/four_hz/counter_22_BUFG_1275 ),
    .CE(\display/_n0393_inv ),
    .CLR(\display/rst ),
    .D(\display/buf_len[4]_GND_5_o_select_124_OUT<3> ),
    .Q(\display/buf_ptr_3_2_1567 )
  );
  LUT6 #(
    .INIT ( 64'h0D00050008000000 ))
  \display/GND_5_o_GND_5_o_equal_89_o63_1  (
    .I0(\display/buf_len [4]),
    .I1(\display/buf_ptr [4]),
    .I2(\display/GND_5_o_GND_5_o_equal_77_o61 ),
    .I3(\display/GND_5_o_GND_5_o_equal_77_o1_210 ),
    .I4(\display/GND_5_o_GND_5_o_equal_89_o61_1389 ),
    .I5(\display/GND_5_o_GND_5_o_equal_89_o6 ),
    .O(\display/GND_5_o_GND_5_o_equal_89_o63_1568 )
  );
  FDCE   \display/buf_ptr_4_2  (
    .C(\display/four_hz/counter_22_BUFG_1275 ),
    .CE(\display/_n0393_inv ),
    .CLR(\display/rst ),
    .D(\display/buf_len[4]_GND_5_o_select_124_OUT<4> ),
    .Q(\display/buf_ptr_4_2_1569 )
  );
  LUT6 #(
    .INIT ( 64'h0000201008042814 ))
  \display/GND_5_o_GND_5_o_equal_84_o63_1  (
    .I0(\display/buf_len [0]),
    .I1(\display/buf_len [1]),
    .I2(\display/buf_ptr_1_3_1561 ),
    .I3(\display/buf_ptr_0_3_1563 ),
    .I4(N75),
    .I5(N74),
    .O(\display/GND_5_o_GND_5_o_equal_84_o63_1570 )
  );
  FDCE   \display/buf_ptr_1_4  (
    .C(\display/four_hz/counter_22_BUFG_1275 ),
    .CE(\display/_n0393_inv ),
    .CLR(\display/rst ),
    .D(\display/buf_len[4]_GND_5_o_select_124_OUT<1> ),
    .Q(\display/buf_ptr_1_4_1571 )
  );
  LUT5 #(
    .INIT ( 32'h8EAF0A8E ))
  \display/buf_ptr[4]_buf_len[4]_LessThan_53_o1_1  (
    .I0(\display/buf_len [4]),
    .I1(\display/buf_len [3]),
    .I2(\display/buf_ptr [4]),
    .I3(\display/buf_ptr [3]),
    .I4(N60),
    .O(\display/buf_ptr[4]_buf_len[4]_LessThan_53_o1_1572 )
  );
  FDCE   \display/buf_ptr_3_3  (
    .C(\display/four_hz/counter_22_BUFG_1275 ),
    .CE(\display/_n0393_inv ),
    .CLR(\display/rst ),
    .D(\display/buf_len[4]_GND_5_o_select_124_OUT<3> ),
    .Q(\display/buf_ptr_3_3_1573 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \display/buf_ptr[4]_GND_5_o_add_86_OUT<1>1_1  (
    .I0(\display/buf_ptr_1_3_1561 ),
    .I1(\display/buf_ptr_0_3_1563 ),
    .O(\display/buf_ptr[4]_GND_5_o_add_86_OUT<1>1_1574 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \display/buf_ptr[4]_GND_5_o_add_86_OUT<1>1_2  (
    .I0(\display/buf_ptr_1_3_1561 ),
    .I1(\display/buf_ptr_0_3_1563 ),
    .O(\display/buf_ptr[4]_GND_5_o_add_86_OUT<1>11 )
  );
  FDCE   \display/buf_ptr_0_4  (
    .C(\display/four_hz/counter_22_BUFG_1275 ),
    .CE(\display/_n0393_inv ),
    .CLR(\display/rst ),
    .D(\display/buf_len[4]_GND_5_o_select_124_OUT<0> ),
    .Q(\display/buf_ptr_0_4_1576 )
  );
  FDCE   \display/buf_ptr_0_5  (
    .C(\display/four_hz/counter_22_BUFG_1275 ),
    .CE(\display/_n0393_inv ),
    .CLR(\display/rst ),
    .D(\display/buf_len[4]_GND_5_o_select_124_OUT<0> ),
    .Q(\display/buf_ptr_0_5_1577 )
  );
  FDCE   \display/buf_ptr_2_3  (
    .C(\display/four_hz/counter_22_BUFG_1275 ),
    .CE(\display/_n0393_inv ),
    .CLR(\display/rst ),
    .D(\display/buf_len[4]_GND_5_o_select_124_OUT<2> ),
    .Q(\display/buf_ptr_2_3_1578 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFD ))
  \display/_n0393_inv1_1  (
    .I0(\display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT6 ),
    .I1(\display/buf_ptr[4]_buf_len[4]_LessThan_53_o1_1572 ),
    .I2(\display/GND_5_o_GND_5_o_equal_84_o63_1570 ),
    .I3(\display/GND_5_o_GND_5_o_equal_77_o ),
    .I4(\display/buf_ptr[4]_buf_len[4]_equal_68_o ),
    .I5(\display/GND_5_o_GND_5_o_equal_89_o ),
    .O(\display/_n0393_inv1_1579 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFD ))
  \display/_n0393_inv1_2  (
    .I0(\display/Mmux_buf_len[4]_ascii_buf[1][7]_select_122_OUT6 ),
    .I1(\display/buf_ptr[4]_buf_len[4]_LessThan_53_o1_1572 ),
    .I2(\display/GND_5_o_GND_5_o_equal_84_o63_1570 ),
    .I3(\display/GND_5_o_GND_5_o_equal_77_o ),
    .I4(\display/buf_ptr[4]_buf_len[4]_equal_68_o ),
    .I5(\display/GND_5_o_GND_5_o_equal_89_o ),
    .O(\display/_n0393_inv11 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000008241 ))
  \display/buf_ptr[4]_buf_len[4]_equal_68_o5_1  (
    .I0(\display/buf_len [3]),
    .I1(\display/buf_len [1]),
    .I2(\display/buf_ptr_1_3_1561 ),
    .I3(\display/buf_ptr_3_3_1573 ),
    .I4(\display/GND_5_o_GND_5_o_equal_77_o1_210 ),
    .I5(N28),
    .O(\display/buf_ptr[4]_buf_len[4]_equal_68_o5_1581 )
  );
  BUFG   \display/four_hz/counter_22_BUFG  (
    .O(\display/four_hz/counter_22_BUFG_1275 ),
    .I(\display/four_hz/counter [22])
  );
  BUFG   \uart/sample_clk_BUFG  (
    .O(\uart/sample_clk_BUFG_186 ),
    .I(\uart/sample_clk_1583 )
  );
  INV   \uart/Mcount_clk_divide_lut<0>_INV_0  (
    .I(\uart/clk_divide [0]),
    .O(\uart/Mcount_clk_divide_lut [0])
  );
  INV   \display/four_hz/Mcount_counter_lut<0>_INV_0  (
    .I(\display/four_hz/counter [0]),
    .O(\display/four_hz/Mcount_counter_lut [0])
  );
  INV   base_led1_INV_0 (
    .I(rx_IBUF_0),
    .O(base_led_OBUF_14)
  );
  INV   rst1_INV_0 (
    .I(rstn_IBUF_2),
    .O(\display/rst )
  );
  INV   \uart/_n0283_inv1_INV_0  (
    .I(\uart/tx_state_FSM_FFd2_111 ),
    .O(\uart/_n0283_inv )
  );
  INV   \uart/rx_bit_GND_3_o_equal_30_o1_INV_0  (
    .I(\uart/rx_bit_185 ),
    .O(\uart/rx_bit_GND_3_o_equal_30_o )
  );
  INV   \display/clearn_INV_16_o1_INV_0  (
    .I(clearn_38),
    .O(\display/clearn_INV_16_o )
  );
  INV   \display/display/Mcount_display_cnt_xor<0>11_INV_0  (
    .I(\display/display/display_cnt [0]),
    .O(\display/display/Result [0])
  );
  MUXF7   \uart/rx_state_FSM_FFd3-In3  (
    .I0(N111),
    .I1(N112),
    .S(\uart/rx_state_FSM_FFd3_172 ),
    .O(\uart/rx_state_FSM_FFd3-In )
  );
  LUT5 #(
    .INIT ( 32'h10BA1010 ))
  \uart/rx_state_FSM_FFd3-In3_F  (
    .I0(\uart/rx_state_FSM_FFd2_173 ),
    .I1(\uart/rx_state_FSM_FFd1_174 ),
    .I2(\uart/start_flag_183 ),
    .I3(\uart/rx_state_FSM_FFd3-In3_63 ),
    .I4(\uart/rx_state_FSM_FFd3-In51 ),
    .O(N111)
  );
  LUT5 #(
    .INIT ( 32'hAA2AFF7A ))
  \uart/rx_state_FSM_FFd3-In3_G  (
    .I0(\uart/rx_state_FSM_FFd2_173 ),
    .I1(\uart/rx_bit_185 ),
    .I2(\uart/sample_counter [3]),
    .I3(\uart/rx_state_FSM_FFd3-In2 ),
    .I4(\uart/rx_state_FSM_FFd1_174 ),
    .O(N112)
  );
  MUXF7   \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT87  (
    .I0(N113),
    .I1(N114),
    .S(\display/display/display_cnt [0]),
    .O(\display/display/display_cnt[1]_digit3[7]_wide_mux_224_OUT<7> )
  );
  LUT5 #(
    .INIT ( 32'hFDFDFDA8 ))
  \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT87_F  (
    .I0(\display/display/display_cnt [1]),
    .I1(\display/display/digit2[7]_PWR_5_o_select_167_OUT<3>2 ),
    .I2(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT83 ),
    .I3(\display/display/digit0[7]_PWR_5_o_select_55_OUT<3>2 ),
    .I4(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT84_1468 ),
    .O(N113)
  );
  LUT5 #(
    .INIT ( 32'hFDFDFDA8 ))
  \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT87_G  (
    .I0(\display/display/display_cnt [1]),
    .I1(\display/display/digit3[7]_PWR_5_o_select_223_OUT<3>2 ),
    .I2(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT8 ),
    .I3(\display/display/digit1[7]_PWR_5_o_select_111_OUT<3>2 ),
    .I4(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT81_1466 ),
    .O(N114)
  );
  MUXF7   \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT5233  (
    .I0(N115),
    .I1(N116),
    .S(\display/display/display_cnt [1]),
    .O(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT523 )
  );
  LUT5 #(
    .INIT ( 32'h22200200 ))
  \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT5233_F  (
    .I0(\display/digit0 [2]),
    .I1(\display/digit0 [1]),
    .I2(\display/digit0 [0]),
    .I3(\display/digit0 [4]),
    .I4(\display/digit0 [3]),
    .O(N115)
  );
  LUT5 #(
    .INIT ( 32'h22200200 ))
  \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT5233_G  (
    .I0(\display/digit2 [2]),
    .I1(\display/digit2 [1]),
    .I2(\display/digit2 [0]),
    .I3(\display/digit2 [4]),
    .I4(\display/digit2 [3]),
    .O(N116)
  );
  MUXF7   \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT56  (
    .I0(N117),
    .I1(N118),
    .S(\display/display/display_cnt [1]),
    .O(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT55 )
  );
  LUT4 #(
    .INIT ( 16'hFFAE ))
  \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT56_F  (
    .I0(\display/display/digit1[7]_PWR_5_o_select_111_OUT<3>4 ),
    .I1(\display/digit1 [0]),
    .I2(\display/digit1 [6]),
    .I3(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT53 ),
    .O(N117)
  );
  LUT5 #(
    .INIT ( 32'hFFFFFF51 ))
  \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT56_G  (
    .I0(\display/digit3 [6]),
    .I1(\display/digit3 [4]),
    .I2(\display/digit3 [0]),
    .I3(\display/display/digit3[7]_PWR_5_o_select_223_OUT<3>2 ),
    .I4(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT51 ),
    .O(N118)
  );
  MUXF7   \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT314  (
    .I0(N119),
    .I1(N120),
    .S(\display/display/display_cnt [0]),
    .O(\display/display/display_cnt[1]_digit3[7]_wide_mux_224_OUT<2> )
  );
  LUT5 #(
    .INIT ( 32'hFDFDFDA8 ))
  \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT314_F  (
    .I0(\display/display/display_cnt [1]),
    .I1(\display/display/digit2[7]_PWR_5_o_select_167_OUT<7>2 ),
    .I2(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT32 ),
    .I3(\display/display/digit0[7]_PWR_5_o_select_55_OUT<7>2 ),
    .I4(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT35 ),
    .O(N119)
  );
  LUT5 #(
    .INIT ( 32'hFFFFAAA8 ))
  \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT314_G  (
    .I0(\display/display/display_cnt [1]),
    .I1(\display/display/digit3[7]_PWR_5_o_select_223_OUT<3>2 ),
    .I2(\display/display/digit3[7]_PWR_5_o_select_223_OUT<7>21_1412 ),
    .I3(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT312 ),
    .I4(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT39_1455 ),
    .O(N120)
  );
  MUXF7   \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT23  (
    .I0(N121),
    .I1(N122),
    .S(\display/digit3 [0]),
    .O(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT22 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFA482A3B ))
  \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT23_F  (
    .I0(\display/digit3 [1]),
    .I1(\display/digit3 [3]),
    .I2(\display/digit3 [6]),
    .I3(\display/digit3 [2]),
    .I4(\display/digit3 [4]),
    .I5(\display/display/digit3[7]_PWR_5_o_select_223_OUT<7>2 ),
    .O(N121)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF3A183ABA ))
  \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT23_G  (
    .I0(\display/digit3 [1]),
    .I1(\display/digit3 [6]),
    .I2(\display/digit3 [2]),
    .I3(\display/digit3 [3]),
    .I4(\display/digit3 [4]),
    .I5(\display/display/digit3[7]_PWR_5_o_select_223_OUT<7>2 ),
    .O(N122)
  );
  MUXF7   \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT26  (
    .I0(N123),
    .I1(N124),
    .S(\display/digit1 [0]),
    .O(\display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT25 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFA482A3B ))
  \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT26_F  (
    .I0(\display/digit1 [1]),
    .I1(\display/digit1 [3]),
    .I2(\display/digit1 [6]),
    .I3(\display/digit1 [2]),
    .I4(\display/digit1 [4]),
    .I5(\display/display/digit1[7]_PWR_5_o_select_111_OUT<7>2 ),
    .O(N123)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF3A183ABA ))
  \display/display/Mmux_display_cnt[1]_digit3[7]_wide_mux_224_OUT26_G  (
    .I0(\display/digit1 [1]),
    .I1(\display/digit1 [6]),
    .I2(\display/digit1 [2]),
    .I3(\display/digit1 [3]),
    .I4(\display/digit1 [4]),
    .I5(\display/display/digit1[7]_PWR_5_o_select_111_OUT<7>2 ),
    .O(N124)
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

