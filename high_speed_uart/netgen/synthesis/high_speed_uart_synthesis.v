////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: high_speed_uart_synthesis.v
// /___/   /\     Timestamp: Sat Jul 26 18:15:28 2014
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim high_speed_uart.ngc high_speed_uart_synthesis.v 
// Device	: xc6slx9-2-tqg144
// Input file	: high_speed_uart.ngc
// Output file	: C:\Users\S243372\Dropbox\Workspaces\Projects_FPGA\high_speed_uart\netgen\synthesis\high_speed_uart_synthesis.v
// # of Modules	: 1
// Design Name	: high_speed_uart
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

module high_speed_uart (
  rx, tx_ready, clk, rst, ready, frame_err, tx, tx_send, rx_byte
);
  input rx;
  input tx_ready;
  input clk;
  input rst;
  output ready;
  output frame_err;
  output tx;
  input [7 : 0] tx_send;
  output [7 : 0] rx_byte;
  wire tx_send_7_IBUF_0;
  wire tx_send_6_IBUF_1;
  wire tx_send_5_IBUF_2;
  wire tx_send_4_IBUF_3;
  wire tx_send_3_IBUF_4;
  wire tx_send_2_IBUF_5;
  wire tx_send_1_IBUF_6;
  wire tx_send_0_IBUF_7;
  wire rx_IBUF_8;
  wire tx_ready_IBUF_9;
  wire clk_BUFGP_10;
  wire rst_IBUF_11;
  wire rx_1_12;
  wire tx_ready_held_13;
  wire sample_clk_BUFG_14;
  wire rx_bit_15;
  wire sample_locked_16;
  wire start_flag_17;
  wire ready_OBUF_22;
  wire frame_err_OBUF_23;
  wire rx_state_FSM_FFd1_24;
  wire rx_state_FSM_FFd2_25;
  wire rx_state_FSM_FFd3_26;
  wire \rx_state[2]_GND_1_o_Mux_38_o ;
  wire \rx_state[2]_GND_1_o_Mux_39_o ;
  wire tx_OBUF_29;
  wire rx_byte_7_30;
  wire rx_byte_6_31;
  wire rx_byte_5_32;
  wire rx_byte_4_33;
  wire rx_byte_3_34;
  wire rx_byte_2_35;
  wire rx_byte_1_36;
  wire rx_byte_0_37;
  wire tx_state_FSM_FFd1_46;
  wire \GND_1_o_clk_divide_tx[7]_mux_50_OUT<3> ;
  wire \GND_1_o_clk_divide_tx[7]_mux_50_OUT<2> ;
  wire \GND_1_o_clk_divide_tx[7]_mux_50_OUT<1> ;
  wire \GND_1_o_clk_divide_tx[7]_mux_50_OUT<0> ;
  wire rx_bit_GND_1_o_equal_30_o;
  wire \rx_state[2]_GND_1_o_wide_mux_37_OUT<7> ;
  wire \rx_state[2]_GND_1_o_wide_mux_37_OUT<6> ;
  wire \rx_state[2]_GND_1_o_wide_mux_37_OUT<5> ;
  wire \rx_state[2]_GND_1_o_wide_mux_37_OUT<4> ;
  wire \rx_state[2]_GND_1_o_wide_mux_37_OUT<3> ;
  wire \rx_state[2]_GND_1_o_wide_mux_37_OUT<2> ;
  wire \rx_state[2]_GND_1_o_wide_mux_37_OUT<1> ;
  wire \rx_state[2]_GND_1_o_wide_mux_37_OUT<0> ;
  wire \rx_state[2]_GND_1_o_wide_mux_41_OUT<1> ;
  wire \rx_state[2]_GND_1_o_wide_mux_41_OUT<0> ;
  wire \rx_state[2]_GND_1_o_wide_mux_40_OUT<2> ;
  wire \rx_state[2]_GND_1_o_wide_mux_40_OUT<1> ;
  wire \rx_state[2]_GND_1_o_wide_mux_40_OUT<0> ;
  wire _n0241;
  wire GND_1_o_GND_1_o_equal_3_o;
  wire GND_1_o_GND_1_o_equal_16_o;
  wire \tx_bit_counter[2]_tx_copy[7]_Mux_57_o ;
  wire GND_1_o_GND_1_o_equal_57_o;
  wire \sample_locked_rx_state[2]_AND_1_o_inv_0 ;
  wire tx_ready_0;
  wire N1_inv;
  wire _n0287_inv;
  wire _n0274_inv;
  wire \tx_state_FSM_FFd2-In_90 ;
  wire \tx_state_FSM_FFd1-In ;
  wire tx_state_FSM_FFd2_92;
  wire \rx_state_FSM_FFd3-In ;
  wire \rx_state_FSM_FFd2-In ;
  wire \rx_state_FSM_FFd1-In ;
  wire Sh;
  wire Sh1;
  wire Sh2;
  wire Sh3;
  wire Mcount_clk_divide_val;
  wire \Madd_clk_divide_tx[7]_GND_1_o_add_48_OUT_lut<4> ;
  wire \Mmux_tx_bit_counter[2]_tx_copy[7]_Mux_57_o_4_121 ;
  wire \Mmux_tx_bit_counter[2]_tx_copy[7]_Mux_57_o_3_122 ;
  wire \Mmux_rx_state[2]_GND_1_o_wide_mux_40_OUT311 ;
  wire N8;
  wire sample_locked_glue_set_153;
  wire tx_ready_held_glue_set_154;
  wire \Mcount_clk_divide_cy<1>_rt_155 ;
  wire \Mcount_clk_divide_cy<2>_rt_156 ;
  wire \Mcount_clk_divide_xor<3>_rt_157 ;
  wire N12;
  wire sample_clk_159;
  wire N14;
  wire N15;
  wire N16;
  wire N17;
  wire [3 : 0] clk_divide;
  wire [7 : 0] tx_copy;
  wire [7 : 0] _n0214;
  wire [2 : 0] _n0232;
  wire [3 : 0] _n0250;
  wire [3 : 0] Result;
  wire [3 : 0] clk_divide_tx;
  wire [2 : 0] bit_counter;
  wire [1 : 0] sample_counter;
  wire [2 : 0] tx_bit_counter;
  wire [3 : 0] tx_counter;
  wire [0 : 0] Mcount_clk_divide_lut;
  wire [2 : 0] Mcount_clk_divide_cy;
  VCC   XST_VCC (
    .P(N1_inv)
  );
  GND   XST_GND (
    .G(\Madd_clk_divide_tx[7]_GND_1_o_add_48_OUT_lut<4> )
  );
  FDS   rx_1 (
    .C(clk_BUFGP_10),
    .D(rx_IBUF_8),
    .S(rst_IBUF_11),
    .Q(rx_1_12)
  );
  FDR   sample_clk (
    .C(clk_BUFGP_10),
    .D(GND_1_o_GND_1_o_equal_3_o),
    .R(rst_IBUF_11),
    .Q(sample_clk_159)
  );
  FDR   start_flag (
    .C(clk_BUFGP_10),
    .D(rx_bit_GND_1_o_equal_30_o),
    .R(\sample_locked_rx_state[2]_AND_1_o_inv_0 ),
    .Q(start_flag_17)
  );
  FDS   rx_bit (
    .C(clk_BUFGP_10),
    .D(rx_1_12),
    .S(rst_IBUF_11),
    .Q(rx_bit_15)
  );
  FDR   clk_divide_tx_0 (
    .C(clk_BUFGP_10),
    .D(\GND_1_o_clk_divide_tx[7]_mux_50_OUT<0> ),
    .R(tx_ready_0),
    .Q(clk_divide_tx[0])
  );
  FDR   clk_divide_tx_1 (
    .C(clk_BUFGP_10),
    .D(\GND_1_o_clk_divide_tx[7]_mux_50_OUT<1> ),
    .R(tx_ready_0),
    .Q(clk_divide_tx[1])
  );
  FDR   clk_divide_tx_2 (
    .C(clk_BUFGP_10),
    .D(\GND_1_o_clk_divide_tx[7]_mux_50_OUT<2> ),
    .R(tx_ready_0),
    .Q(clk_divide_tx[2])
  );
  FDR   clk_divide_tx_3 (
    .C(clk_BUFGP_10),
    .D(\GND_1_o_clk_divide_tx[7]_mux_50_OUT<3> ),
    .R(tx_ready_0),
    .Q(clk_divide_tx[3])
  );
  FDC   ready_11 (
    .C(sample_clk_BUFG_14),
    .CLR(rst_IBUF_11),
    .D(\rx_state[2]_GND_1_o_Mux_38_o ),
    .Q(ready_OBUF_22)
  );
  FDC   frame_err_12 (
    .C(sample_clk_BUFG_14),
    .CLR(rst_IBUF_11),
    .D(\rx_state[2]_GND_1_o_Mux_39_o ),
    .Q(frame_err_OBUF_23)
  );
  FDCE   tx_copy_0 (
    .C(sample_clk_BUFG_14),
    .CE(_n0287_inv),
    .CLR(rst_IBUF_11),
    .D(_n0214[0]),
    .Q(tx_copy[0])
  );
  FDCE   tx_copy_1 (
    .C(sample_clk_BUFG_14),
    .CE(_n0287_inv),
    .CLR(rst_IBUF_11),
    .D(_n0214[1]),
    .Q(tx_copy[1])
  );
  FDCE   tx_copy_2 (
    .C(sample_clk_BUFG_14),
    .CE(_n0287_inv),
    .CLR(rst_IBUF_11),
    .D(_n0214[2]),
    .Q(tx_copy[2])
  );
  FDCE   tx_copy_3 (
    .C(sample_clk_BUFG_14),
    .CE(_n0287_inv),
    .CLR(rst_IBUF_11),
    .D(_n0214[3]),
    .Q(tx_copy[3])
  );
  FDCE   tx_copy_4 (
    .C(sample_clk_BUFG_14),
    .CE(_n0287_inv),
    .CLR(rst_IBUF_11),
    .D(_n0214[4]),
    .Q(tx_copy[4])
  );
  FDCE   tx_copy_5 (
    .C(sample_clk_BUFG_14),
    .CE(_n0287_inv),
    .CLR(rst_IBUF_11),
    .D(_n0214[5]),
    .Q(tx_copy[5])
  );
  FDCE   tx_copy_6 (
    .C(sample_clk_BUFG_14),
    .CE(_n0287_inv),
    .CLR(rst_IBUF_11),
    .D(_n0214[6]),
    .Q(tx_copy[6])
  );
  FDCE   tx_copy_7 (
    .C(sample_clk_BUFG_14),
    .CE(_n0287_inv),
    .CLR(rst_IBUF_11),
    .D(_n0214[7]),
    .Q(tx_copy[7])
  );
  FDCE   rx_byte_0 (
    .C(sample_clk_BUFG_14),
    .CE(_n0274_inv),
    .CLR(rst_IBUF_11),
    .D(\rx_state[2]_GND_1_o_wide_mux_37_OUT<0> ),
    .Q(rx_byte_0_37)
  );
  FDCE   rx_byte_1 (
    .C(sample_clk_BUFG_14),
    .CE(_n0274_inv),
    .CLR(rst_IBUF_11),
    .D(\rx_state[2]_GND_1_o_wide_mux_37_OUT<1> ),
    .Q(rx_byte_1_36)
  );
  FDCE   rx_byte_2 (
    .C(sample_clk_BUFG_14),
    .CE(_n0274_inv),
    .CLR(rst_IBUF_11),
    .D(\rx_state[2]_GND_1_o_wide_mux_37_OUT<2> ),
    .Q(rx_byte_2_35)
  );
  FDCE   rx_byte_3 (
    .C(sample_clk_BUFG_14),
    .CE(_n0274_inv),
    .CLR(rst_IBUF_11),
    .D(\rx_state[2]_GND_1_o_wide_mux_37_OUT<3> ),
    .Q(rx_byte_3_34)
  );
  FDCE   rx_byte_4 (
    .C(sample_clk_BUFG_14),
    .CE(_n0274_inv),
    .CLR(rst_IBUF_11),
    .D(\rx_state[2]_GND_1_o_wide_mux_37_OUT<4> ),
    .Q(rx_byte_4_33)
  );
  FDCE   rx_byte_5 (
    .C(sample_clk_BUFG_14),
    .CE(_n0274_inv),
    .CLR(rst_IBUF_11),
    .D(\rx_state[2]_GND_1_o_wide_mux_37_OUT<5> ),
    .Q(rx_byte_5_32)
  );
  FDCE   rx_byte_6 (
    .C(sample_clk_BUFG_14),
    .CE(_n0274_inv),
    .CLR(rst_IBUF_11),
    .D(\rx_state[2]_GND_1_o_wide_mux_37_OUT<6> ),
    .Q(rx_byte_6_31)
  );
  FDCE   rx_byte_7 (
    .C(sample_clk_BUFG_14),
    .CE(_n0274_inv),
    .CLR(rst_IBUF_11),
    .D(\rx_state[2]_GND_1_o_wide_mux_37_OUT<7> ),
    .Q(rx_byte_7_30)
  );
  FDC   bit_counter_0 (
    .C(sample_clk_BUFG_14),
    .CLR(rst_IBUF_11),
    .D(\rx_state[2]_GND_1_o_wide_mux_40_OUT<0> ),
    .Q(bit_counter[0])
  );
  FDC   bit_counter_1 (
    .C(sample_clk_BUFG_14),
    .CLR(rst_IBUF_11),
    .D(\rx_state[2]_GND_1_o_wide_mux_40_OUT<1> ),
    .Q(bit_counter[1])
  );
  FDC   bit_counter_2 (
    .C(sample_clk_BUFG_14),
    .CLR(rst_IBUF_11),
    .D(\rx_state[2]_GND_1_o_wide_mux_40_OUT<2> ),
    .Q(bit_counter[2])
  );
  FDC   sample_counter_0 (
    .C(sample_clk_BUFG_14),
    .CLR(rst_IBUF_11),
    .D(\rx_state[2]_GND_1_o_wide_mux_41_OUT<0> ),
    .Q(sample_counter[0])
  );
  FDC   sample_counter_1 (
    .C(sample_clk_BUFG_14),
    .CLR(rst_IBUF_11),
    .D(\rx_state[2]_GND_1_o_wide_mux_41_OUT<1> ),
    .Q(sample_counter[1])
  );
  FDC   tx_state_FSM_FFd1 (
    .C(sample_clk_BUFG_14),
    .CLR(rst_IBUF_11),
    .D(\tx_state_FSM_FFd1-In ),
    .Q(tx_state_FSM_FFd1_46)
  );
  FDC   tx_state_FSM_FFd2 (
    .C(sample_clk_BUFG_14),
    .CLR(rst_IBUF_11),
    .D(\tx_state_FSM_FFd2-In_90 ),
    .Q(tx_state_FSM_FFd2_92)
  );
  FDC   rx_state_FSM_FFd1 (
    .C(sample_clk_BUFG_14),
    .CLR(rst_IBUF_11),
    .D(\rx_state_FSM_FFd1-In ),
    .Q(rx_state_FSM_FFd1_24)
  );
  FDC   rx_state_FSM_FFd3 (
    .C(sample_clk_BUFG_14),
    .CLR(rst_IBUF_11),
    .D(\rx_state_FSM_FFd3-In ),
    .Q(rx_state_FSM_FFd3_26)
  );
  FDC   rx_state_FSM_FFd2 (
    .C(sample_clk_BUFG_14),
    .CLR(rst_IBUF_11),
    .D(\rx_state_FSM_FFd2-In ),
    .Q(rx_state_FSM_FFd2_25)
  );
  FDR   clk_divide_1 (
    .C(clk_BUFGP_10),
    .D(Result[1]),
    .R(Mcount_clk_divide_val),
    .Q(clk_divide[1])
  );
  FDR   clk_divide_0 (
    .C(clk_BUFGP_10),
    .D(Result[0]),
    .R(Mcount_clk_divide_val),
    .Q(clk_divide[0])
  );
  FDR   clk_divide_2 (
    .C(clk_BUFGP_10),
    .D(Result[2]),
    .R(Mcount_clk_divide_val),
    .Q(clk_divide[2])
  );
  FDR   clk_divide_3 (
    .C(clk_BUFGP_10),
    .D(Result[3]),
    .R(Mcount_clk_divide_val),
    .Q(clk_divide[3])
  );
  MUXF7   \Mmux_tx_bit_counter[2]_tx_copy[7]_Mux_57_o_2_f7  (
    .I0(\Mmux_tx_bit_counter[2]_tx_copy[7]_Mux_57_o_4_121 ),
    .I1(\Mmux_tx_bit_counter[2]_tx_copy[7]_Mux_57_o_3_122 ),
    .S(tx_bit_counter[2]),
    .O(\tx_bit_counter[2]_tx_copy[7]_Mux_57_o )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_tx_bit_counter[2]_tx_copy[7]_Mux_57_o_4  (
    .I0(tx_copy[0]),
    .I1(tx_copy[1]),
    .I2(tx_copy[3]),
    .I3(tx_copy[2]),
    .I4(tx_bit_counter[0]),
    .I5(tx_bit_counter[1]),
    .O(\Mmux_tx_bit_counter[2]_tx_copy[7]_Mux_57_o_4_121 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Mmux_tx_bit_counter[2]_tx_copy[7]_Mux_57_o_3  (
    .I0(tx_copy[4]),
    .I1(tx_copy[5]),
    .I2(tx_copy[7]),
    .I3(tx_copy[6]),
    .I4(tx_bit_counter[0]),
    .I5(tx_bit_counter[1]),
    .O(\Mmux_tx_bit_counter[2]_tx_copy[7]_Mux_57_o_3_122 )
  );
  MUXCY   \Mcount_clk_divide_cy<0>  (
    .CI(\Madd_clk_divide_tx[7]_GND_1_o_add_48_OUT_lut<4> ),
    .DI(N1_inv),
    .S(Mcount_clk_divide_lut[0]),
    .O(Mcount_clk_divide_cy[0])
  );
  XORCY   \Mcount_clk_divide_xor<0>  (
    .CI(\Madd_clk_divide_tx[7]_GND_1_o_add_48_OUT_lut<4> ),
    .LI(Mcount_clk_divide_lut[0]),
    .O(Result[0])
  );
  MUXCY   \Mcount_clk_divide_cy<1>  (
    .CI(Mcount_clk_divide_cy[0]),
    .DI(\Madd_clk_divide_tx[7]_GND_1_o_add_48_OUT_lut<4> ),
    .S(\Mcount_clk_divide_cy<1>_rt_155 ),
    .O(Mcount_clk_divide_cy[1])
  );
  XORCY   \Mcount_clk_divide_xor<1>  (
    .CI(Mcount_clk_divide_cy[0]),
    .LI(\Mcount_clk_divide_cy<1>_rt_155 ),
    .O(Result[1])
  );
  MUXCY   \Mcount_clk_divide_cy<2>  (
    .CI(Mcount_clk_divide_cy[1]),
    .DI(\Madd_clk_divide_tx[7]_GND_1_o_add_48_OUT_lut<4> ),
    .S(\Mcount_clk_divide_cy<2>_rt_156 ),
    .O(Mcount_clk_divide_cy[2])
  );
  XORCY   \Mcount_clk_divide_xor<2>  (
    .CI(Mcount_clk_divide_cy[1]),
    .LI(\Mcount_clk_divide_cy<2>_rt_156 ),
    .O(Result[2])
  );
  XORCY   \Mcount_clk_divide_xor<3>  (
    .CI(Mcount_clk_divide_cy[2]),
    .LI(\Mcount_clk_divide_xor<3>_rt_157 ),
    .O(Result[3])
  );
  LUT5 #(
    .INIT ( 32'hFFFEFFFF ))
  \sample_locked_rx_state[2]_AND_1_o_inv11  (
    .I0(rx_state_FSM_FFd3_26),
    .I1(rx_state_FSM_FFd1_24),
    .I2(rx_state_FSM_FFd2_25),
    .I3(rst_IBUF_11),
    .I4(sample_locked_16),
    .O(\sample_locked_rx_state[2]_AND_1_o_inv_0 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  tx_ready_01 (
    .I0(tx_ready_IBUF_9),
    .I1(rst_IBUF_11),
    .O(tx_ready_0)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \rx_state__n0297<1>1  (
    .I0(rx_state_FSM_FFd3_26),
    .I1(rx_state_FSM_FFd1_24),
    .O(\rx_state[2]_GND_1_o_Mux_39_o )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \rx_state__n0297<0>1  (
    .I0(rx_state_FSM_FFd3_26),
    .I1(rx_state_FSM_FFd1_24),
    .O(\rx_state[2]_GND_1_o_Mux_38_o )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  Sh4 (
    .I0(rx_bit_15),
    .I1(bit_counter[1]),
    .I2(bit_counter[0]),
    .O(Sh)
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  Sh11 (
    .I0(rx_bit_15),
    .I1(bit_counter[1]),
    .I2(bit_counter[0]),
    .O(Sh1)
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  Sh21 (
    .I0(rx_bit_15),
    .I1(bit_counter[1]),
    .I2(bit_counter[0]),
    .O(Sh2)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  Sh31 (
    .I0(rx_bit_15),
    .I1(bit_counter[1]),
    .I2(bit_counter[0]),
    .O(Sh3)
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  Mmux__n021481 (
    .I0(tx_state_FSM_FFd1_46),
    .I1(tx_ready_held_13),
    .I2(tx_send_7_IBUF_0),
    .O(_n0214[7])
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  Mmux__n021471 (
    .I0(tx_state_FSM_FFd1_46),
    .I1(tx_ready_held_13),
    .I2(tx_send_6_IBUF_1),
    .O(_n0214[6])
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  Mmux__n021461 (
    .I0(tx_state_FSM_FFd1_46),
    .I1(tx_ready_held_13),
    .I2(tx_send_5_IBUF_2),
    .O(_n0214[5])
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  Mmux__n021451 (
    .I0(tx_state_FSM_FFd1_46),
    .I1(tx_ready_held_13),
    .I2(tx_send_4_IBUF_3),
    .O(_n0214[4])
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  Mmux__n021441 (
    .I0(tx_state_FSM_FFd1_46),
    .I1(tx_ready_held_13),
    .I2(tx_send_3_IBUF_4),
    .O(_n0214[3])
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  Mmux__n021431 (
    .I0(tx_state_FSM_FFd1_46),
    .I1(tx_ready_held_13),
    .I2(tx_send_2_IBUF_5),
    .O(_n0214[2])
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  Mmux__n021421 (
    .I0(tx_state_FSM_FFd1_46),
    .I1(tx_ready_held_13),
    .I2(tx_send_1_IBUF_6),
    .O(_n0214[1])
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  Mmux__n021411 (
    .I0(tx_state_FSM_FFd1_46),
    .I1(tx_ready_held_13),
    .I2(tx_send_0_IBUF_7),
    .O(_n0214[0])
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \GND_1_o_GND_1_o_equal_3_o<7>1  (
    .I0(clk_divide[3]),
    .I1(clk_divide[0]),
    .I2(clk_divide[1]),
    .I3(clk_divide[2]),
    .O(GND_1_o_GND_1_o_equal_3_o)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \GND_1_o_GND_1_o_equal_16_o<3>1  (
    .I0(sample_counter[0]),
    .I1(sample_counter[1]),
    .O(GND_1_o_GND_1_o_equal_16_o)
  );
  LUT6 #(
    .INIT ( 64'h0000A60000000A00 ))
  \Mmux_rx_state[2]_GND_1_o_wide_mux_40_OUT21  (
    .I0(bit_counter[1]),
    .I1(bit_counter[0]),
    .I2(rx_state_FSM_FFd3_26),
    .I3(rx_state_FSM_FFd2_25),
    .I4(rx_state_FSM_FFd1_24),
    .I5(GND_1_o_GND_1_o_equal_16_o),
    .O(\rx_state[2]_GND_1_o_wide_mux_40_OUT<1> )
  );
  LUT6 #(
    .INIT ( 64'h2020002020020002 ))
  \Mmux_rx_state[2]_GND_1_o_wide_mux_40_OUT31  (
    .I0(rx_state_FSM_FFd2_25),
    .I1(rx_state_FSM_FFd1_24),
    .I2(bit_counter[2]),
    .I3(rx_state_FSM_FFd3_26),
    .I4(GND_1_o_GND_1_o_equal_16_o),
    .I5(\Mmux_rx_state[2]_GND_1_o_wide_mux_40_OUT311 ),
    .O(\rx_state[2]_GND_1_o_wide_mux_40_OUT<2> )
  );
  LUT4 #(
    .INIT ( 16'h60C0 ))
  Mmux__n023221 (
    .I0(tx_bit_counter[0]),
    .I1(tx_bit_counter[1]),
    .I2(tx_state_FSM_FFd2_92),
    .I3(GND_1_o_GND_1_o_equal_57_o),
    .O(_n0232[1])
  );
  LUT5 #(
    .INIT ( 32'h14101400 ))
  \Mmux_rx_state[2]_GND_1_o_wide_mux_41_OUT21  (
    .I0(rx_state_FSM_FFd1_24),
    .I1(sample_counter[1]),
    .I2(sample_counter[0]),
    .I3(rx_state_FSM_FFd2_25),
    .I4(rx_state_FSM_FFd3_26),
    .O(\rx_state[2]_GND_1_o_wide_mux_41_OUT<1> )
  );
  LUT5 #(
    .INIT ( 32'h00E000A0 ))
  \Mmux_rx_state[2]_GND_1_o_wide_mux_37_OUT81  (
    .I0(rx_byte_7_30),
    .I1(bit_counter[2]),
    .I2(rx_state_FSM_FFd2_25),
    .I3(rx_state_FSM_FFd1_24),
    .I4(Sh3),
    .O(\rx_state[2]_GND_1_o_wide_mux_37_OUT<7> )
  );
  LUT5 #(
    .INIT ( 32'h00E000A0 ))
  \Mmux_rx_state[2]_GND_1_o_wide_mux_37_OUT71  (
    .I0(rx_byte_6_31),
    .I1(bit_counter[2]),
    .I2(rx_state_FSM_FFd2_25),
    .I3(rx_state_FSM_FFd1_24),
    .I4(Sh2),
    .O(\rx_state[2]_GND_1_o_wide_mux_37_OUT<6> )
  );
  LUT5 #(
    .INIT ( 32'h00E000A0 ))
  \Mmux_rx_state[2]_GND_1_o_wide_mux_37_OUT61  (
    .I0(rx_byte_5_32),
    .I1(bit_counter[2]),
    .I2(rx_state_FSM_FFd2_25),
    .I3(rx_state_FSM_FFd1_24),
    .I4(Sh1),
    .O(\rx_state[2]_GND_1_o_wide_mux_37_OUT<5> )
  );
  LUT5 #(
    .INIT ( 32'h00E000A0 ))
  \Mmux_rx_state[2]_GND_1_o_wide_mux_37_OUT51  (
    .I0(rx_byte_4_33),
    .I1(bit_counter[2]),
    .I2(rx_state_FSM_FFd2_25),
    .I3(rx_state_FSM_FFd1_24),
    .I4(Sh),
    .O(\rx_state[2]_GND_1_o_wide_mux_37_OUT<4> )
  );
  LUT5 #(
    .INIT ( 32'h00B000A0 ))
  \Mmux_rx_state[2]_GND_1_o_wide_mux_37_OUT41  (
    .I0(rx_byte_3_34),
    .I1(bit_counter[2]),
    .I2(rx_state_FSM_FFd2_25),
    .I3(rx_state_FSM_FFd1_24),
    .I4(Sh3),
    .O(\rx_state[2]_GND_1_o_wide_mux_37_OUT<3> )
  );
  LUT5 #(
    .INIT ( 32'h00B000A0 ))
  \Mmux_rx_state[2]_GND_1_o_wide_mux_37_OUT31  (
    .I0(rx_byte_2_35),
    .I1(bit_counter[2]),
    .I2(rx_state_FSM_FFd2_25),
    .I3(rx_state_FSM_FFd1_24),
    .I4(Sh2),
    .O(\rx_state[2]_GND_1_o_wide_mux_37_OUT<2> )
  );
  LUT5 #(
    .INIT ( 32'h00B000A0 ))
  \Mmux_rx_state[2]_GND_1_o_wide_mux_37_OUT21  (
    .I0(rx_byte_1_36),
    .I1(bit_counter[2]),
    .I2(rx_state_FSM_FFd2_25),
    .I3(rx_state_FSM_FFd1_24),
    .I4(Sh1),
    .O(\rx_state[2]_GND_1_o_wide_mux_37_OUT<1> )
  );
  LUT5 #(
    .INIT ( 32'h00B000A0 ))
  \Mmux_rx_state[2]_GND_1_o_wide_mux_37_OUT11  (
    .I0(rx_byte_0_37),
    .I1(bit_counter[2]),
    .I2(rx_state_FSM_FFd2_25),
    .I3(rx_state_FSM_FFd1_24),
    .I4(Sh),
    .O(\rx_state[2]_GND_1_o_wide_mux_37_OUT<0> )
  );
  LUT5 #(
    .INIT ( 32'h11110100 ))
  \Mmux_rx_state[2]_GND_1_o_wide_mux_41_OUT11  (
    .I0(sample_counter[0]),
    .I1(rx_state_FSM_FFd1_24),
    .I2(sample_counter[1]),
    .I3(rx_state_FSM_FFd3_26),
    .I4(rx_state_FSM_FFd2_25),
    .O(\rx_state[2]_GND_1_o_wide_mux_41_OUT<0> )
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \Mmux_GND_1_o_clk_divide_tx[7]_mux_50_OUT21  (
    .I0(tx_ready_held_13),
    .I1(clk_divide_tx[0]),
    .I2(clk_divide_tx[1]),
    .O(\GND_1_o_clk_divide_tx[7]_mux_50_OUT<1> )
  );
  LUT5 #(
    .INIT ( 32'h6A00AA00 ))
  Mmux__n023231 (
    .I0(tx_bit_counter[2]),
    .I1(tx_bit_counter[1]),
    .I2(tx_bit_counter[0]),
    .I3(tx_state_FSM_FFd2_92),
    .I4(GND_1_o_GND_1_o_equal_57_o),
    .O(_n0232[2])
  );
  LUT6 #(
    .INIT ( 64'h2AAA2AAA2AAA2EAA ))
  \rx_state_FSM_FFd2-In1  (
    .I0(rx_state_FSM_FFd2_25),
    .I1(sample_counter[1]),
    .I2(sample_counter[0]),
    .I3(rx_state_FSM_FFd3_26),
    .I4(rx_bit_15),
    .I5(rx_state_FSM_FFd1_24),
    .O(\rx_state_FSM_FFd2-In )
  );
  LUT6 #(
    .INIT ( 64'h0E000F00F000F000 ))
  Mmux__n023211 (
    .I0(tx_bit_counter[2]),
    .I1(tx_bit_counter[1]),
    .I2(tx_bit_counter[0]),
    .I3(tx_state_FSM_FFd2_92),
    .I4(tx_state_FSM_FFd1_46),
    .I5(GND_1_o_GND_1_o_equal_57_o),
    .O(_n0232[0])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \GND_1_o_GND_1_o_equal_57_o<3>1  (
    .I0(tx_counter[3]),
    .I1(tx_counter[2]),
    .I2(tx_counter[1]),
    .I3(tx_counter[0]),
    .O(GND_1_o_GND_1_o_equal_57_o)
  );
  LUT3 #(
    .INIT ( 8'h54 ))
  Mmux__n025011 (
    .I0(tx_counter[0]),
    .I1(tx_state_FSM_FFd1_46),
    .I2(tx_state_FSM_FFd2_92),
    .O(_n0250[0])
  );
  LUT4 #(
    .INIT ( 16'h6660 ))
  Mmux__n025021 (
    .I0(tx_counter[0]),
    .I1(tx_counter[1]),
    .I2(tx_state_FSM_FFd1_46),
    .I3(tx_state_FSM_FFd2_92),
    .O(_n0250[1])
  );
  LUT6 #(
    .INIT ( 64'h7F807F807F800000 ))
  Mmux__n025041 (
    .I0(tx_counter[0]),
    .I1(tx_counter[1]),
    .I2(tx_counter[2]),
    .I3(tx_counter[3]),
    .I4(tx_state_FSM_FFd1_46),
    .I5(tx_state_FSM_FFd2_92),
    .O(_n0250[3])
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \tx_state_FSM_FFd2-In_SW0  (
    .I0(tx_bit_counter[1]),
    .I1(tx_bit_counter[0]),
    .O(N8)
  );
  LUT6 #(
    .INIT ( 64'hF0FAC0FAF0FAF0FA ))
  \tx_state_FSM_FFd2-In  (
    .I0(tx_ready_held_13),
    .I1(tx_bit_counter[2]),
    .I2(tx_state_FSM_FFd2_92),
    .I3(tx_state_FSM_FFd1_46),
    .I4(N8),
    .I5(GND_1_o_GND_1_o_equal_57_o),
    .O(\tx_state_FSM_FFd2-In_90 )
  );
  IBUF   tx_send_7_IBUF (
    .I(tx_send[7]),
    .O(tx_send_7_IBUF_0)
  );
  IBUF   tx_send_6_IBUF (
    .I(tx_send[6]),
    .O(tx_send_6_IBUF_1)
  );
  IBUF   tx_send_5_IBUF (
    .I(tx_send[5]),
    .O(tx_send_5_IBUF_2)
  );
  IBUF   tx_send_4_IBUF (
    .I(tx_send[4]),
    .O(tx_send_4_IBUF_3)
  );
  IBUF   tx_send_3_IBUF (
    .I(tx_send[3]),
    .O(tx_send_3_IBUF_4)
  );
  IBUF   tx_send_2_IBUF (
    .I(tx_send[2]),
    .O(tx_send_2_IBUF_5)
  );
  IBUF   tx_send_1_IBUF (
    .I(tx_send[1]),
    .O(tx_send_1_IBUF_6)
  );
  IBUF   tx_send_0_IBUF (
    .I(tx_send[0]),
    .O(tx_send_0_IBUF_7)
  );
  IBUF   rx_IBUF (
    .I(rx),
    .O(rx_IBUF_8)
  );
  IBUF   tx_ready_IBUF (
    .I(tx_ready),
    .O(tx_ready_IBUF_9)
  );
  IBUF   rst_IBUF (
    .I(rst),
    .O(rst_IBUF_11)
  );
  OBUF   rx_byte_7_OBUF (
    .I(rx_byte_7_30),
    .O(rx_byte[7])
  );
  OBUF   rx_byte_6_OBUF (
    .I(rx_byte_6_31),
    .O(rx_byte[6])
  );
  OBUF   rx_byte_5_OBUF (
    .I(rx_byte_5_32),
    .O(rx_byte[5])
  );
  OBUF   rx_byte_4_OBUF (
    .I(rx_byte_4_33),
    .O(rx_byte[4])
  );
  OBUF   rx_byte_3_OBUF (
    .I(rx_byte_3_34),
    .O(rx_byte[3])
  );
  OBUF   rx_byte_2_OBUF (
    .I(rx_byte_2_35),
    .O(rx_byte[2])
  );
  OBUF   rx_byte_1_OBUF (
    .I(rx_byte_1_36),
    .O(rx_byte[1])
  );
  OBUF   rx_byte_0_OBUF (
    .I(rx_byte_0_37),
    .O(rx_byte[0])
  );
  OBUF   ready_OBUF (
    .I(ready_OBUF_22),
    .O(ready)
  );
  OBUF   frame_err_OBUF (
    .I(frame_err_OBUF_23),
    .O(frame_err)
  );
  OBUF   tx_OBUF (
    .I(tx_OBUF_29),
    .O(tx)
  );
  FDR   sample_locked (
    .C(clk_BUFGP_10),
    .D(sample_locked_glue_set_153),
    .R(rst_IBUF_11),
    .Q(sample_locked_16)
  );
  FDR   tx_ready_held (
    .C(clk_BUFGP_10),
    .D(tx_ready_held_glue_set_154),
    .R(rst_IBUF_11),
    .Q(tx_ready_held_13)
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_clk_divide_cy<1>_rt  (
    .I0(clk_divide[1]),
    .O(\Mcount_clk_divide_cy<1>_rt_155 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_clk_divide_cy<2>_rt  (
    .I0(clk_divide[2]),
    .O(\Mcount_clk_divide_cy<2>_rt_156 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_clk_divide_xor<3>_rt  (
    .I0(clk_divide[3]),
    .O(\Mcount_clk_divide_xor<3>_rt_157 )
  );
  LUT4 #(
    .INIT ( 16'h7FFF ))
  \Mmux_rx_state[2]_GND_1_o_wide_mux_40_OUT3111  (
    .I0(bit_counter[1]),
    .I1(bit_counter[0]),
    .I2(sample_counter[1]),
    .I3(sample_counter[0]),
    .O(\Mmux_rx_state[2]_GND_1_o_wide_mux_40_OUT311 )
  );
  LUT4 #(
    .INIT ( 16'hFEFF ))
  Mmux__n024111_SW2 (
    .I0(tx_bit_counter[2]),
    .I1(tx_bit_counter[1]),
    .I2(tx_bit_counter[0]),
    .I3(tx_state_FSM_FFd1_46),
    .O(N12)
  );
  LUT5 #(
    .INIT ( 32'hAAABAAAA ))
  Mcount_clk_divide_val1 (
    .I0(rst_IBUF_11),
    .I1(clk_divide[2]),
    .I2(clk_divide[1]),
    .I3(clk_divide[0]),
    .I4(clk_divide[3]),
    .O(Mcount_clk_divide_val)
  );
  LUT5 #(
    .INIT ( 32'hFF0008FF ))
  _n0274_inv1 (
    .I0(sample_counter[1]),
    .I1(sample_counter[0]),
    .I2(rx_state_FSM_FFd3_26),
    .I3(rx_state_FSM_FFd2_25),
    .I4(rx_state_FSM_FFd1_24),
    .O(_n0274_inv)
  );
  LUT5 #(
    .INIT ( 32'hFFFF0008 ))
  sample_locked_glue_set (
    .I0(clk_divide[0]),
    .I1(clk_divide[1]),
    .I2(clk_divide[3]),
    .I3(clk_divide[2]),
    .I4(sample_locked_16),
    .O(sample_locked_glue_set_153)
  );
  LUT4 #(
    .INIT ( 16'h2888 ))
  \Mmux_GND_1_o_clk_divide_tx[7]_mux_50_OUT31  (
    .I0(tx_ready_held_13),
    .I1(clk_divide_tx[2]),
    .I2(clk_divide_tx[1]),
    .I3(clk_divide_tx[0]),
    .O(\GND_1_o_clk_divide_tx[7]_mux_50_OUT<2> )
  );
  LUT5 #(
    .INIT ( 32'h28888880 ))
  \Mmux_GND_1_o_clk_divide_tx[7]_mux_50_OUT41  (
    .I0(tx_ready_held_13),
    .I1(clk_divide_tx[3]),
    .I2(clk_divide_tx[2]),
    .I3(clk_divide_tx[1]),
    .I4(clk_divide_tx[0]),
    .O(\GND_1_o_clk_divide_tx[7]_mux_50_OUT<3> )
  );
  LUT5 #(
    .INIT ( 32'h6660AAA0 ))
  Mmux__n025031 (
    .I0(tx_counter[2]),
    .I1(tx_counter[0]),
    .I2(tx_state_FSM_FFd2_92),
    .I3(tx_state_FSM_FFd1_46),
    .I4(tx_counter[1]),
    .O(_n0250[2])
  );
  LUT5 #(
    .INIT ( 32'h44404444 ))
  \Mmux_GND_1_o_clk_divide_tx[7]_mux_50_OUT11  (
    .I0(clk_divide_tx[0]),
    .I1(tx_ready_held_13),
    .I2(clk_divide_tx[2]),
    .I3(clk_divide_tx[1]),
    .I4(clk_divide_tx[3]),
    .O(\GND_1_o_clk_divide_tx[7]_mux_50_OUT<0> )
  );
  LUT6 #(
    .INIT ( 64'hEAAAAAAA2AAAAAAA ))
  \tx_state_FSM_FFd1-In1  (
    .I0(tx_state_FSM_FFd1_46),
    .I1(tx_counter[3]),
    .I2(tx_counter[0]),
    .I3(tx_counter[1]),
    .I4(tx_counter[2]),
    .I5(tx_state_FSM_FFd2_92),
    .O(\tx_state_FSM_FFd1-In )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \rx_state_FSM_FFd1-In1  (
    .I0(sample_counter[0]),
    .I1(sample_counter[1]),
    .I2(rx_state_FSM_FFd3_26),
    .I3(rx_state_FSM_FFd2_25),
    .O(\rx_state_FSM_FFd1-In )
  );
  LUT6 #(
    .INIT ( 64'h2000000002222000 ))
  \Mmux_rx_state[2]_GND_1_o_wide_mux_40_OUT11  (
    .I0(rx_state_FSM_FFd2_25),
    .I1(rx_state_FSM_FFd1_24),
    .I2(sample_counter[0]),
    .I3(sample_counter[1]),
    .I4(bit_counter[0]),
    .I5(rx_state_FSM_FFd3_26),
    .O(\rx_state[2]_GND_1_o_wide_mux_40_OUT<0> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFAAAAAAA2 ))
  tx_ready_held_glue_set (
    .I0(tx_ready_held_13),
    .I1(clk_divide_tx[3]),
    .I2(clk_divide_tx[2]),
    .I3(clk_divide_tx[1]),
    .I4(clk_divide_tx[0]),
    .I5(tx_ready_IBUF_9),
    .O(tx_ready_held_glue_set_154)
  );
  FDC   tx_counter_0 (
    .C(sample_clk_BUFG_14),
    .CLR(rst_IBUF_11),
    .D(_n0250[0]),
    .Q(tx_counter[0])
  );
  FDC   tx_counter_1 (
    .C(sample_clk_BUFG_14),
    .CLR(rst_IBUF_11),
    .D(_n0250[1]),
    .Q(tx_counter[1])
  );
  FDC   tx_counter_2 (
    .C(sample_clk_BUFG_14),
    .CLR(rst_IBUF_11),
    .D(_n0250[2]),
    .Q(tx_counter[2])
  );
  FDC   tx_counter_3 (
    .C(sample_clk_BUFG_14),
    .CLR(rst_IBUF_11),
    .D(_n0250[3]),
    .Q(tx_counter[3])
  );
  FDC   tx_bit_counter_0 (
    .C(sample_clk_BUFG_14),
    .CLR(rst_IBUF_11),
    .D(_n0232[0]),
    .Q(tx_bit_counter[0])
  );
  FDC   tx_bit_counter_1 (
    .C(sample_clk_BUFG_14),
    .CLR(rst_IBUF_11),
    .D(_n0232[1]),
    .Q(tx_bit_counter[1])
  );
  FDC   tx_bit_counter_2 (
    .C(sample_clk_BUFG_14),
    .CLR(rst_IBUF_11),
    .D(_n0232[2]),
    .Q(tx_bit_counter[2])
  );
  FDP   tx_141 (
    .C(sample_clk_BUFG_14),
    .D(_n0241),
    .PRE(rst_IBUF_11),
    .Q(tx_OBUF_29)
  );
  BUFG   sample_clk_BUFG (
    .O(sample_clk_BUFG_14),
    .I(sample_clk_159)
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_10)
  );
  INV   \Mcount_clk_divide_lut<0>_INV_0  (
    .I(clk_divide[0]),
    .O(Mcount_clk_divide_lut[0])
  );
  INV   rx_bit_GND_1_o_equal_30_o1_INV_0 (
    .I(rx_bit_15),
    .O(rx_bit_GND_1_o_equal_30_o)
  );
  INV   _n0287_inv1_INV_0 (
    .I(tx_state_FSM_FFd2_92),
    .O(_n0287_inv)
  );
  MUXF7   \rx_state_FSM_FFd3-In3  (
    .I0(N14),
    .I1(N15),
    .S(rx_state_FSM_FFd3_26),
    .O(\rx_state_FSM_FFd3-In )
  );
  LUT5 #(
    .INIT ( 32'h10BA1010 ))
  \rx_state_FSM_FFd3-In3_F  (
    .I0(rx_state_FSM_FFd2_25),
    .I1(rx_state_FSM_FFd1_24),
    .I2(start_flag_17),
    .I3(\Mmux_rx_state[2]_GND_1_o_wide_mux_40_OUT311 ),
    .I4(bit_counter[2]),
    .O(N14)
  );
  LUT5 #(
    .INIT ( 32'h2AAA7FAF ))
  \rx_state_FSM_FFd3-In3_G  (
    .I0(rx_state_FSM_FFd2_25),
    .I1(rx_bit_15),
    .I2(sample_counter[1]),
    .I3(sample_counter[0]),
    .I4(rx_state_FSM_FFd1_24),
    .O(N15)
  );
  MUXF7   Mmux__n024112 (
    .I0(N16),
    .I1(N17),
    .S(\tx_bit_counter[2]_tx_copy[7]_Mux_57_o ),
    .O(_n0241)
  );
  LUT6 #(
    .INIT ( 64'h51F15151FBF1FB51 ))
  Mmux__n024112_F (
    .I0(tx_state_FSM_FFd2_92),
    .I1(tx_ready_held_13),
    .I2(tx_state_FSM_FFd1_46),
    .I3(GND_1_o_GND_1_o_equal_57_o),
    .I4(tx_OBUF_29),
    .I5(N12),
    .O(N16)
  );
  LUT5 #(
    .INIT ( 32'hFBFBF151 ))
  Mmux__n024112_G (
    .I0(tx_state_FSM_FFd2_92),
    .I1(tx_ready_held_13),
    .I2(tx_state_FSM_FFd1_46),
    .I3(tx_OBUF_29),
    .I4(GND_1_o_GND_1_o_equal_57_o),
    .O(N17)
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

