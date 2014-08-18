////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: uart_simple_synthesis.v
// /___/   /\     Timestamp: Tue Jul 22 19:55:52 2014
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim uart_simple.ngc uart_simple_synthesis.v 
// Device	: xc6slx4-2-tqg144
// Input file	: uart_simple.ngc
// Output file	: C:\Users\S243372\Dropbox\Workspaces\Projects_FPGA\Uart_simple\netgen\synthesis\uart_simple_synthesis.v
// # of Modules	: 1
// Design Name	: uart_simple
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

module uart_simple (
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
  wire clk_IBUFG_10;
  wire rst_IBUF_11;
  wire rx_1_12;
  wire tx_state_FSM_FFd1_13;
  wire clk1_BUFG_14;
  wire clk_inter_BUFG_15;
  wire rx_bit_16;
  wire start_flag_17;
  wire ready_OBUF_18;
  wire frame_err_OBUF_19;
  wire rx_state_FSM_FFd1_20;
  wire rx_state_FSM_FFd2_21;
  wire rx_state_FSM_FFd3_22;
  wire \rx_state[2]_GND_1_o_Mux_33_o ;
  wire \rx_state[2]_GND_1_o_Mux_34_o ;
  wire rx_byte_7_25;
  wire rx_byte_6_26;
  wire rx_byte_5_27;
  wire rx_byte_4_28;
  wire rx_byte_3_29;
  wire rx_byte_2_30;
  wire rx_byte_1_31;
  wire rx_byte_0_32;
  wire tx_OBUF_41;
  wire sample_locked_42;
  wire _n0176;
  wire rx_bit_GND_1_o_equal_25_o;
  wire \rx_state[2]_GND_1_o_wide_mux_36_OUT<3> ;
  wire \rx_state[2]_GND_1_o_wide_mux_36_OUT<2> ;
  wire \rx_state[2]_GND_1_o_wide_mux_36_OUT<1> ;
  wire \rx_state[2]_GND_1_o_wide_mux_36_OUT<0> ;
  wire \rx_state[2]_GND_1_o_wide_mux_35_OUT<2> ;
  wire \rx_state[2]_GND_1_o_wide_mux_35_OUT<1> ;
  wire \rx_state[2]_GND_1_o_wide_mux_35_OUT<0> ;
  wire GND_1_o_GND_1_o_equal_11_o;
  wire \tx_bit_counter[2]_tx_copy[7]_Mux_44_o ;
  wire GND_1_o_GND_1_o_equal_44_o;
  wire psen;
  wire \sample_locked_rx_state[2]_AND_1_o_inv_0 ;
  wire _n0248_inv;
  wire Sh;
  wire Sh1;
  wire Sh2;
  wire Sh3;
  wire \tx_state_FSM_FFd2-In_79 ;
  wire \tx_state_FSM_FFd1-In ;
  wire tx_state_FSM_FFd2_81;
  wire \rx_state_FSM_FFd3-In ;
  wire \rx_state_FSM_FFd2-In ;
  wire \rx_state_FSM_FFd1-In ;
  wire \Mmux_tx_bit_counter[2]_tx_copy[7]_Mux_44_o_4_99 ;
  wire \Mmux_tx_bit_counter[2]_tx_copy[7]_Mux_44_o_3_100 ;
  wire clk_divide_1_BUFG_102;
  wire \Mmux_rx_state[2]_GND_1_o_wide_mux_36_OUT31_103 ;
  wire \Mmux_rx_state[2]_GND_1_o_wide_mux_35_OUT311 ;
  wire \GND_1_o_GND_1_o_equal_11_o<3>1_105 ;
  wire N7;
  wire clk1;
  wire clk_inter;
  wire sample_locked_rstpot_132;
  wire rx_byte_0_rstpot_133;
  wire rx_byte_1_rstpot_134;
  wire rx_byte_2_rstpot_135;
  wire rx_byte_3_rstpot_136;
  wire rx_byte_4_rstpot_137;
  wire rx_byte_5_rstpot_138;
  wire rx_byte_6_rstpot_139;
  wire rx_byte_7_rstpot_140;
  wire N11;
  wire N13;
  wire N21;
  wire N30;
  wire N31;
  wire N32;
  wire N33;
  wire NLW_DCM_SP1_CLK2X180_UNCONNECTED;
  wire NLW_DCM_SP1_PSCLK_UNCONNECTED;
  wire NLW_DCM_SP1_CLK2X_UNCONNECTED;
  wire NLW_DCM_SP1_CLKFX_UNCONNECTED;
  wire NLW_DCM_SP1_CLK180_UNCONNECTED;
  wire NLW_DCM_SP1_CLK270_UNCONNECTED;
  wire NLW_DCM_SP1_PSINCDEC_UNCONNECTED;
  wire NLW_DCM_SP1_CLKFX180_UNCONNECTED;
  wire NLW_DCM_SP1_PSDONE_UNCONNECTED;
  wire NLW_DCM_SP1_CLK90_UNCONNECTED;
  wire NLW_DCM_SP1_LOCKED_UNCONNECTED;
  wire NLW_DCM_SP1_DSSEN_UNCONNECTED;
  wire \NLW_DCM_SP1_STATUS<7>_UNCONNECTED ;
  wire \NLW_DCM_SP1_STATUS<6>_UNCONNECTED ;
  wire \NLW_DCM_SP1_STATUS<5>_UNCONNECTED ;
  wire \NLW_DCM_SP1_STATUS<4>_UNCONNECTED ;
  wire \NLW_DCM_SP1_STATUS<3>_UNCONNECTED ;
  wire \NLW_DCM_SP1_STATUS<2>_UNCONNECTED ;
  wire \NLW_DCM_SP1_STATUS<1>_UNCONNECTED ;
  wire \NLW_DCM_SP1_STATUS<0>_UNCONNECTED ;
  wire [7 : 0] tx_copy;
  wire [7 : 0] _n0212;
  wire [2 : 0] _n0203;
  wire [3 : 0] _n0185;
  wire [1 : 0] Result;
  wire [2 : 0] bit_counter;
  wire [3 : 0] sample_counter;
  wire [2 : 0] tx_bit_counter;
  wire [3 : 0] tx_counter;
  wire [1 : 0] clk_divide;
  GND   XST_GND (
    .G(psen)
  );
  FDS   rx_1 (
    .C(clk_IBUFG_10),
    .D(rx_IBUF_8),
    .S(rst_IBUF_11),
    .Q(rx_1_12)
  );
  FDR   start_flag (
    .C(clk_IBUFG_10),
    .D(rx_bit_GND_1_o_equal_25_o),
    .R(\sample_locked_rx_state[2]_AND_1_o_inv_0 ),
    .Q(start_flag_17)
  );
  FDS   rx_bit (
    .C(clk_IBUFG_10),
    .D(rx_1_12),
    .S(rst_IBUF_11),
    .Q(rx_bit_16)
  );
  FDC   ready_5 (
    .C(clk_divide_1_BUFG_102),
    .CLR(rst_IBUF_11),
    .D(\rx_state[2]_GND_1_o_Mux_33_o ),
    .Q(ready_OBUF_18)
  );
  FDC   frame_err_6 (
    .C(clk_divide_1_BUFG_102),
    .CLR(rst_IBUF_11),
    .D(\rx_state[2]_GND_1_o_Mux_34_o ),
    .Q(frame_err_OBUF_19)
  );
  FDCE   tx_copy_0 (
    .C(clk_divide_1_BUFG_102),
    .CE(_n0248_inv),
    .CLR(rst_IBUF_11),
    .D(_n0212[0]),
    .Q(tx_copy[0])
  );
  FDCE   tx_copy_1 (
    .C(clk_divide_1_BUFG_102),
    .CE(_n0248_inv),
    .CLR(rst_IBUF_11),
    .D(_n0212[1]),
    .Q(tx_copy[1])
  );
  FDCE   tx_copy_2 (
    .C(clk_divide_1_BUFG_102),
    .CE(_n0248_inv),
    .CLR(rst_IBUF_11),
    .D(_n0212[2]),
    .Q(tx_copy[2])
  );
  FDCE   tx_copy_3 (
    .C(clk_divide_1_BUFG_102),
    .CE(_n0248_inv),
    .CLR(rst_IBUF_11),
    .D(_n0212[3]),
    .Q(tx_copy[3])
  );
  FDCE   tx_copy_4 (
    .C(clk_divide_1_BUFG_102),
    .CE(_n0248_inv),
    .CLR(rst_IBUF_11),
    .D(_n0212[4]),
    .Q(tx_copy[4])
  );
  FDCE   tx_copy_5 (
    .C(clk_divide_1_BUFG_102),
    .CE(_n0248_inv),
    .CLR(rst_IBUF_11),
    .D(_n0212[5]),
    .Q(tx_copy[5])
  );
  FDCE   tx_copy_6 (
    .C(clk_divide_1_BUFG_102),
    .CE(_n0248_inv),
    .CLR(rst_IBUF_11),
    .D(_n0212[6]),
    .Q(tx_copy[6])
  );
  FDCE   tx_copy_7 (
    .C(clk_divide_1_BUFG_102),
    .CE(_n0248_inv),
    .CLR(rst_IBUF_11),
    .D(_n0212[7]),
    .Q(tx_copy[7])
  );
  FDC   bit_counter_0 (
    .C(clk_divide_1_BUFG_102),
    .CLR(rst_IBUF_11),
    .D(\rx_state[2]_GND_1_o_wide_mux_35_OUT<0> ),
    .Q(bit_counter[0])
  );
  FDC   bit_counter_1 (
    .C(clk_divide_1_BUFG_102),
    .CLR(rst_IBUF_11),
    .D(\rx_state[2]_GND_1_o_wide_mux_35_OUT<1> ),
    .Q(bit_counter[1])
  );
  FDC   bit_counter_2 (
    .C(clk_divide_1_BUFG_102),
    .CLR(rst_IBUF_11),
    .D(\rx_state[2]_GND_1_o_wide_mux_35_OUT<2> ),
    .Q(bit_counter[2])
  );
  FDC   sample_counter_0 (
    .C(clk_divide_1_BUFG_102),
    .CLR(rst_IBUF_11),
    .D(\rx_state[2]_GND_1_o_wide_mux_36_OUT<0> ),
    .Q(sample_counter[0])
  );
  FDC   sample_counter_1 (
    .C(clk_divide_1_BUFG_102),
    .CLR(rst_IBUF_11),
    .D(\rx_state[2]_GND_1_o_wide_mux_36_OUT<1> ),
    .Q(sample_counter[1])
  );
  FDC   sample_counter_2 (
    .C(clk_divide_1_BUFG_102),
    .CLR(rst_IBUF_11),
    .D(\rx_state[2]_GND_1_o_wide_mux_36_OUT<2> ),
    .Q(sample_counter[2])
  );
  FDC   sample_counter_3 (
    .C(clk_divide_1_BUFG_102),
    .CLR(rst_IBUF_11),
    .D(\rx_state[2]_GND_1_o_wide_mux_36_OUT<3> ),
    .Q(sample_counter[3])
  );
  FDC   clk_divide_0 (
    .C(clk_inter_BUFG_15),
    .CLR(rst_IBUF_11),
    .D(Result[0]),
    .Q(clk_divide[0])
  );
  FDC   clk_divide_1 (
    .C(clk_inter_BUFG_15),
    .CLR(rst_IBUF_11),
    .D(Result[1]),
    .Q(clk_divide[1])
  );
  FDC   tx_state_FSM_FFd2 (
    .C(clk_divide_1_BUFG_102),
    .CLR(rst_IBUF_11),
    .D(\tx_state_FSM_FFd2-In_79 ),
    .Q(tx_state_FSM_FFd2_81)
  );
  FDC   tx_state_FSM_FFd1 (
    .C(clk_divide_1_BUFG_102),
    .CLR(rst_IBUF_11),
    .D(\tx_state_FSM_FFd1-In ),
    .Q(tx_state_FSM_FFd1_13)
  );
  FDC   rx_state_FSM_FFd3 (
    .C(clk_divide_1_BUFG_102),
    .CLR(rst_IBUF_11),
    .D(\rx_state_FSM_FFd3-In ),
    .Q(rx_state_FSM_FFd3_22)
  );
  FDC   rx_state_FSM_FFd2 (
    .C(clk_divide_1_BUFG_102),
    .CLR(rst_IBUF_11),
    .D(\rx_state_FSM_FFd2-In ),
    .Q(rx_state_FSM_FFd2_21)
  );
  FDC   rx_state_FSM_FFd1 (
    .C(clk_divide_1_BUFG_102),
    .CLR(rst_IBUF_11),
    .D(\rx_state_FSM_FFd1-In ),
    .Q(rx_state_FSM_FFd1_20)
  );
  MUXF7   \Mmux_tx_bit_counter[2]_tx_copy[7]_Mux_44_o_2_f7  (
    .I0(\Mmux_tx_bit_counter[2]_tx_copy[7]_Mux_44_o_4_99 ),
    .I1(\Mmux_tx_bit_counter[2]_tx_copy[7]_Mux_44_o_3_100 ),
    .S(tx_bit_counter[2]),
    .O(\tx_bit_counter[2]_tx_copy[7]_Mux_44_o )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_tx_bit_counter[2]_tx_copy[7]_Mux_44_o_4  (
    .I0(tx_copy[0]),
    .I1(tx_copy[1]),
    .I2(tx_copy[3]),
    .I3(tx_copy[2]),
    .I4(tx_bit_counter[1]),
    .I5(tx_bit_counter[0]),
    .O(\Mmux_tx_bit_counter[2]_tx_copy[7]_Mux_44_o_4_99 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_tx_bit_counter[2]_tx_copy[7]_Mux_44_o_3  (
    .I0(tx_copy[4]),
    .I1(tx_copy[5]),
    .I2(tx_copy[7]),
    .I3(tx_copy[6]),
    .I4(tx_bit_counter[1]),
    .I5(tx_bit_counter[0]),
    .O(\Mmux_tx_bit_counter[2]_tx_copy[7]_Mux_44_o_3_100 )
  );
  DCM_SP #(
    .CLKIN_DIVIDE_BY_2 ( "FALSE" ),
    .CLKOUT_PHASE_SHIFT ( "NONE" ),
    .CLK_FEEDBACK ( "1X" ),
    .DESKEW_ADJUST ( "SYSTEM_SYNCHRONOUS" ),
    .DFS_FREQUENCY_MODE ( "LOW" ),
    .DLL_FREQUENCY_MODE ( "LOW" ),
    .DSS_MODE ( "NONE" ),
    .DUTY_CYCLE_CORRECTION ( "TRUE" ),
    .FACTORY_JF ( 16'h0000 ),
    .STARTUP_WAIT ( "FALSE" ),
    .CLKFX_DIVIDE ( 1 ),
    .CLKFX_MULTIPLY ( 4 ),
    .PHASE_SHIFT ( 0 ),
    .CLKIN_PERIOD ( 31.250000 ))
  DCM_SP1 (
    .CLK2X180(NLW_DCM_SP1_CLK2X180_UNCONNECTED),
    .PSCLK(NLW_DCM_SP1_PSCLK_UNCONNECTED),
    .CLK2X(NLW_DCM_SP1_CLK2X_UNCONNECTED),
    .CLKFX(NLW_DCM_SP1_CLKFX_UNCONNECTED),
    .CLK180(NLW_DCM_SP1_CLK180_UNCONNECTED),
    .CLK270(NLW_DCM_SP1_CLK270_UNCONNECTED),
    .RST(rst_IBUF_11),
    .PSINCDEC(NLW_DCM_SP1_PSINCDEC_UNCONNECTED),
    .CLKIN(clk_IBUFG_10),
    .CLKFB(clk1_BUFG_14),
    .PSEN(psen),
    .CLK0(clk1),
    .CLKFX180(NLW_DCM_SP1_CLKFX180_UNCONNECTED),
    .CLKDV(clk_inter),
    .PSDONE(NLW_DCM_SP1_PSDONE_UNCONNECTED),
    .CLK90(NLW_DCM_SP1_CLK90_UNCONNECTED),
    .LOCKED(NLW_DCM_SP1_LOCKED_UNCONNECTED),
    .DSSEN(NLW_DCM_SP1_DSSEN_UNCONNECTED),
    .STATUS({\NLW_DCM_SP1_STATUS<7>_UNCONNECTED , \NLW_DCM_SP1_STATUS<6>_UNCONNECTED , \NLW_DCM_SP1_STATUS<5>_UNCONNECTED , 
\NLW_DCM_SP1_STATUS<4>_UNCONNECTED , \NLW_DCM_SP1_STATUS<3>_UNCONNECTED , \NLW_DCM_SP1_STATUS<2>_UNCONNECTED , \NLW_DCM_SP1_STATUS<1>_UNCONNECTED , 
\NLW_DCM_SP1_STATUS<0>_UNCONNECTED })
  );
  LUT5 #(
    .INIT ( 32'hFFFFFEFF ))
  \sample_locked_rx_state[2]_AND_1_o_inv11  (
    .I0(rst_IBUF_11),
    .I1(rx_state_FSM_FFd2_21),
    .I2(rx_state_FSM_FFd1_20),
    .I3(sample_locked_42),
    .I4(rx_state_FSM_FFd3_22),
    .O(\sample_locked_rx_state[2]_AND_1_o_inv_0 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  Sh4 (
    .I0(rx_bit_16),
    .I1(bit_counter[1]),
    .I2(bit_counter[0]),
    .O(Sh)
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  Sh11 (
    .I0(rx_bit_16),
    .I1(bit_counter[1]),
    .I2(bit_counter[0]),
    .O(Sh1)
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  Sh21 (
    .I0(rx_bit_16),
    .I1(bit_counter[1]),
    .I2(bit_counter[0]),
    .O(Sh2)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  Sh31 (
    .I0(rx_bit_16),
    .I1(bit_counter[1]),
    .I2(bit_counter[0]),
    .O(Sh3)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \rx_state__n0260<1>1  (
    .I0(rx_state_FSM_FFd3_22),
    .I1(rx_state_FSM_FFd1_20),
    .O(\rx_state[2]_GND_1_o_Mux_34_o )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \rx_state__n0260<0>1  (
    .I0(rx_state_FSM_FFd3_22),
    .I1(rx_state_FSM_FFd1_20),
    .O(\rx_state[2]_GND_1_o_Mux_33_o )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  Mmux__n021281 (
    .I0(tx_state_FSM_FFd1_13),
    .I1(tx_ready_IBUF_9),
    .I2(tx_send_7_IBUF_0),
    .O(_n0212[7])
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  Mmux__n021271 (
    .I0(tx_state_FSM_FFd1_13),
    .I1(tx_ready_IBUF_9),
    .I2(tx_send_6_IBUF_1),
    .O(_n0212[6])
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  Mmux__n021261 (
    .I0(tx_state_FSM_FFd1_13),
    .I1(tx_ready_IBUF_9),
    .I2(tx_send_5_IBUF_2),
    .O(_n0212[5])
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  Mmux__n021251 (
    .I0(tx_state_FSM_FFd1_13),
    .I1(tx_ready_IBUF_9),
    .I2(tx_send_4_IBUF_3),
    .O(_n0212[4])
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  Mmux__n021241 (
    .I0(tx_state_FSM_FFd1_13),
    .I1(tx_ready_IBUF_9),
    .I2(tx_send_3_IBUF_4),
    .O(_n0212[3])
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  Mmux__n021231 (
    .I0(tx_state_FSM_FFd1_13),
    .I1(tx_ready_IBUF_9),
    .I2(tx_send_2_IBUF_5),
    .O(_n0212[2])
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  Mmux__n021221 (
    .I0(tx_state_FSM_FFd1_13),
    .I1(tx_ready_IBUF_9),
    .I2(tx_send_1_IBUF_6),
    .O(_n0212[1])
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  Mmux__n021211 (
    .I0(tx_state_FSM_FFd1_13),
    .I1(tx_ready_IBUF_9),
    .I2(tx_send_0_IBUF_7),
    .O(_n0212[0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Mcount_clk_divide_xor<1>11  (
    .I0(clk_divide[1]),
    .I1(clk_divide[0]),
    .O(Result[1])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \GND_1_o_GND_1_o_equal_11_o<3>11  (
    .I0(sample_counter[2]),
    .I1(sample_counter[1]),
    .I2(sample_counter[0]),
    .O(\GND_1_o_GND_1_o_equal_11_o<3>1_105 )
  );
  LUT4 #(
    .INIT ( 16'h1110 ))
  \Mmux_rx_state[2]_GND_1_o_wide_mux_36_OUT11  (
    .I0(sample_counter[0]),
    .I1(rx_state_FSM_FFd1_20),
    .I2(rx_state_FSM_FFd3_22),
    .I3(rx_state_FSM_FFd2_21),
    .O(\rx_state[2]_GND_1_o_wide_mux_36_OUT<0> )
  );
  LUT6 #(
    .INIT ( 64'h0000A60000000A00 ))
  \Mmux_rx_state[2]_GND_1_o_wide_mux_35_OUT21  (
    .I0(bit_counter[1]),
    .I1(bit_counter[0]),
    .I2(rx_state_FSM_FFd3_22),
    .I3(rx_state_FSM_FFd2_21),
    .I4(rx_state_FSM_FFd1_20),
    .I5(GND_1_o_GND_1_o_equal_11_o),
    .O(\rx_state[2]_GND_1_o_wide_mux_35_OUT<1> )
  );
  LUT6 #(
    .INIT ( 64'h2020002020020002 ))
  \Mmux_rx_state[2]_GND_1_o_wide_mux_35_OUT31  (
    .I0(rx_state_FSM_FFd2_21),
    .I1(rx_state_FSM_FFd1_20),
    .I2(bit_counter[2]),
    .I3(rx_state_FSM_FFd3_22),
    .I4(GND_1_o_GND_1_o_equal_11_o),
    .I5(\Mmux_rx_state[2]_GND_1_o_wide_mux_35_OUT311 ),
    .O(\rx_state[2]_GND_1_o_wide_mux_35_OUT<2> )
  );
  LUT4 #(
    .INIT ( 16'h60A0 ))
  Mmux__n020321 (
    .I0(tx_bit_counter[1]),
    .I1(tx_bit_counter[0]),
    .I2(tx_state_FSM_FFd2_81),
    .I3(GND_1_o_GND_1_o_equal_44_o),
    .O(_n0203[1])
  );
  LUT5 #(
    .INIT ( 32'h000E0E00 ))
  \Mmux_rx_state[2]_GND_1_o_wide_mux_36_OUT21  (
    .I0(rx_state_FSM_FFd3_22),
    .I1(rx_state_FSM_FFd2_21),
    .I2(rx_state_FSM_FFd1_20),
    .I3(sample_counter[0]),
    .I4(sample_counter[1]),
    .O(\rx_state[2]_GND_1_o_wide_mux_36_OUT<1> )
  );
  LUT5 #(
    .INIT ( 32'h6A00AA00 ))
  Mmux__n020331 (
    .I0(tx_bit_counter[2]),
    .I1(tx_bit_counter[1]),
    .I2(tx_bit_counter[0]),
    .I3(tx_state_FSM_FFd2_81),
    .I4(GND_1_o_GND_1_o_equal_44_o),
    .O(_n0203[2])
  );
  LUT5 #(
    .INIT ( 32'h7704FF00 ))
  \rx_state_FSM_FFd2-In1  (
    .I0(sample_counter[3]),
    .I1(rx_state_FSM_FFd3_22),
    .I2(rx_state_FSM_FFd1_20),
    .I3(rx_state_FSM_FFd2_21),
    .I4(\GND_1_o_GND_1_o_equal_11_o<3>1_105 ),
    .O(\rx_state_FSM_FFd2-In )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \GND_1_o_GND_1_o_equal_44_o<3>1  (
    .I0(tx_counter[3]),
    .I1(tx_counter[2]),
    .I2(tx_counter[1]),
    .I3(tx_counter[0]),
    .O(GND_1_o_GND_1_o_equal_44_o)
  );
  LUT6 #(
    .INIT ( 64'h00007F8000000000 ))
  \Mmux_rx_state[2]_GND_1_o_wide_mux_36_OUT41  (
    .I0(sample_counter[2]),
    .I1(sample_counter[1]),
    .I2(sample_counter[0]),
    .I3(sample_counter[3]),
    .I4(rx_state_FSM_FFd1_20),
    .I5(\Mmux_rx_state[2]_GND_1_o_wide_mux_36_OUT31_103 ),
    .O(\rx_state[2]_GND_1_o_wide_mux_36_OUT<3> )
  );
  LUT3 #(
    .INIT ( 8'h54 ))
  Mmux__n018511 (
    .I0(tx_counter[0]),
    .I1(tx_state_FSM_FFd1_13),
    .I2(tx_state_FSM_FFd2_81),
    .O(_n0185[0])
  );
  LUT4 #(
    .INIT ( 16'h6660 ))
  Mmux__n018521 (
    .I0(tx_counter[0]),
    .I1(tx_counter[1]),
    .I2(tx_state_FSM_FFd1_13),
    .I3(tx_state_FSM_FFd2_81),
    .O(_n0185[1])
  );
  LUT6 #(
    .INIT ( 64'h7F807F807F800000 ))
  Mmux__n018541 (
    .I0(tx_counter[0]),
    .I1(tx_counter[1]),
    .I2(tx_counter[2]),
    .I3(tx_counter[3]),
    .I4(tx_state_FSM_FFd1_13),
    .I5(tx_state_FSM_FFd2_81),
    .O(_n0185[3])
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \tx_state_FSM_FFd2-In_SW0  (
    .I0(tx_bit_counter[1]),
    .I1(tx_bit_counter[0]),
    .O(N7)
  );
  LUT6 #(
    .INIT ( 64'hF0FAC0FAF0FAF0FA ))
  \tx_state_FSM_FFd2-In  (
    .I0(tx_ready_IBUF_9),
    .I1(tx_bit_counter[2]),
    .I2(tx_state_FSM_FFd2_81),
    .I3(tx_state_FSM_FFd1_13),
    .I4(N7),
    .I5(GND_1_o_GND_1_o_equal_44_o),
    .O(\tx_state_FSM_FFd2-In_79 )
  );
  BUFG   clk1_BUFG (
    .O(clk1_BUFG_14),
    .I(clk1)
  );
  BUFG   clk_inter_BUFG (
    .O(clk_inter_BUFG_15),
    .I(clk_inter)
  );
  IBUFG   clk_IBUFG (
    .I(clk),
    .O(clk_IBUFG_10)
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
    .I(rx_byte_7_25),
    .O(rx_byte[7])
  );
  OBUF   rx_byte_6_OBUF (
    .I(rx_byte_6_26),
    .O(rx_byte[6])
  );
  OBUF   rx_byte_5_OBUF (
    .I(rx_byte_5_27),
    .O(rx_byte[5])
  );
  OBUF   rx_byte_4_OBUF (
    .I(rx_byte_4_28),
    .O(rx_byte[4])
  );
  OBUF   rx_byte_3_OBUF (
    .I(rx_byte_3_29),
    .O(rx_byte[3])
  );
  OBUF   rx_byte_2_OBUF (
    .I(rx_byte_2_30),
    .O(rx_byte[2])
  );
  OBUF   rx_byte_1_OBUF (
    .I(rx_byte_1_31),
    .O(rx_byte[1])
  );
  OBUF   rx_byte_0_OBUF (
    .I(rx_byte_0_32),
    .O(rx_byte[0])
  );
  OBUF   ready_OBUF (
    .I(ready_OBUF_18),
    .O(ready)
  );
  OBUF   frame_err_OBUF (
    .I(frame_err_OBUF_19),
    .O(frame_err)
  );
  OBUF   tx_OBUF (
    .I(tx_OBUF_41),
    .O(tx)
  );
  FDC   sample_locked (
    .C(clk_inter_BUFG_15),
    .CLR(rst_IBUF_11),
    .D(sample_locked_rstpot_132),
    .Q(sample_locked_42)
  );
  LUT6 #(
    .INIT ( 64'h00860000000A0000 ))
  \Mmux_rx_state[2]_GND_1_o_wide_mux_35_OUT11  (
    .I0(bit_counter[0]),
    .I1(sample_counter[3]),
    .I2(rx_state_FSM_FFd3_22),
    .I3(rx_state_FSM_FFd1_20),
    .I4(rx_state_FSM_FFd2_21),
    .I5(\GND_1_o_GND_1_o_equal_11_o<3>1_105 ),
    .O(\rx_state[2]_GND_1_o_wide_mux_35_OUT<0> )
  );
  LUT6 #(
    .INIT ( 64'h7FFF7FFFFF7F0000 ))
  \Mmux_rx_state[2]_GND_1_o_wide_mux_36_OUT311  (
    .I0(sample_counter[2]),
    .I1(sample_counter[1]),
    .I2(sample_counter[0]),
    .I3(sample_counter[3]),
    .I4(rx_state_FSM_FFd3_22),
    .I5(rx_state_FSM_FFd2_21),
    .O(\Mmux_rx_state[2]_GND_1_o_wide_mux_36_OUT31_103 )
  );
  LUT6 #(
    .INIT ( 64'h7FFFFFFFFFFFFFFF ))
  \Mmux_rx_state[2]_GND_1_o_wide_mux_35_OUT3111  (
    .I0(bit_counter[1]),
    .I1(bit_counter[0]),
    .I2(sample_counter[2]),
    .I3(sample_counter[1]),
    .I4(sample_counter[0]),
    .I5(sample_counter[3]),
    .O(\Mmux_rx_state[2]_GND_1_o_wide_mux_35_OUT311 )
  );
  FDC   rx_byte_0 (
    .C(clk_divide_1_BUFG_102),
    .CLR(rst_IBUF_11),
    .D(rx_byte_0_rstpot_133),
    .Q(rx_byte_0_32)
  );
  FDC   rx_byte_1 (
    .C(clk_divide_1_BUFG_102),
    .CLR(rst_IBUF_11),
    .D(rx_byte_1_rstpot_134),
    .Q(rx_byte_1_31)
  );
  FDC   rx_byte_2 (
    .C(clk_divide_1_BUFG_102),
    .CLR(rst_IBUF_11),
    .D(rx_byte_2_rstpot_135),
    .Q(rx_byte_2_30)
  );
  FDC   rx_byte_3 (
    .C(clk_divide_1_BUFG_102),
    .CLR(rst_IBUF_11),
    .D(rx_byte_3_rstpot_136),
    .Q(rx_byte_3_29)
  );
  FDC   rx_byte_4 (
    .C(clk_divide_1_BUFG_102),
    .CLR(rst_IBUF_11),
    .D(rx_byte_4_rstpot_137),
    .Q(rx_byte_4_28)
  );
  FDC   rx_byte_5 (
    .C(clk_divide_1_BUFG_102),
    .CLR(rst_IBUF_11),
    .D(rx_byte_5_rstpot_138),
    .Q(rx_byte_5_27)
  );
  FDC   rx_byte_6 (
    .C(clk_divide_1_BUFG_102),
    .CLR(rst_IBUF_11),
    .D(rx_byte_6_rstpot_139),
    .Q(rx_byte_6_26)
  );
  FDC   rx_byte_7 (
    .C(clk_divide_1_BUFG_102),
    .CLR(rst_IBUF_11),
    .D(rx_byte_7_rstpot_140),
    .Q(rx_byte_7_25)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \GND_1_o_GND_1_o_equal_11_o<3>1  (
    .I0(sample_counter[2]),
    .I1(sample_counter[1]),
    .I2(sample_counter[0]),
    .I3(sample_counter[3]),
    .O(GND_1_o_GND_1_o_equal_11_o)
  );
  LUT4 #(
    .INIT ( 16'hFEFF ))
  Mmux__n017611_SW2 (
    .I0(tx_bit_counter[2]),
    .I1(tx_bit_counter[1]),
    .I2(tx_bit_counter[0]),
    .I3(tx_state_FSM_FFd1_13),
    .O(N11)
  );
  LUT3 #(
    .INIT ( 8'h04 ))
  _n0235_inv1_SW0 (
    .I0(bit_counter[2]),
    .I1(sample_counter[3]),
    .I2(rx_state_FSM_FFd3_22),
    .O(N13)
  );
  LUT6 #(
    .INIT ( 64'h3828282828282828 ))
  rx_byte_0_rstpot (
    .I0(rx_byte_0_32),
    .I1(rx_state_FSM_FFd1_20),
    .I2(rx_state_FSM_FFd2_21),
    .I3(Sh),
    .I4(N13),
    .I5(\GND_1_o_GND_1_o_equal_11_o<3>1_105 ),
    .O(rx_byte_0_rstpot_133)
  );
  LUT6 #(
    .INIT ( 64'h3828282828282828 ))
  rx_byte_1_rstpot (
    .I0(rx_byte_1_31),
    .I1(rx_state_FSM_FFd1_20),
    .I2(rx_state_FSM_FFd2_21),
    .I3(Sh1),
    .I4(N13),
    .I5(\GND_1_o_GND_1_o_equal_11_o<3>1_105 ),
    .O(rx_byte_1_rstpot_134)
  );
  LUT6 #(
    .INIT ( 64'h3828282828282828 ))
  rx_byte_2_rstpot (
    .I0(rx_byte_2_30),
    .I1(rx_state_FSM_FFd1_20),
    .I2(rx_state_FSM_FFd2_21),
    .I3(Sh2),
    .I4(N13),
    .I5(\GND_1_o_GND_1_o_equal_11_o<3>1_105 ),
    .O(rx_byte_2_rstpot_135)
  );
  LUT6 #(
    .INIT ( 64'h3828282828282828 ))
  rx_byte_3_rstpot (
    .I0(rx_byte_3_29),
    .I1(rx_state_FSM_FFd1_20),
    .I2(rx_state_FSM_FFd2_21),
    .I3(Sh3),
    .I4(N13),
    .I5(\GND_1_o_GND_1_o_equal_11_o<3>1_105 ),
    .O(rx_byte_3_rstpot_136)
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  _n0235_inv1_SW4 (
    .I0(bit_counter[2]),
    .I1(sample_counter[3]),
    .I2(rx_state_FSM_FFd3_22),
    .O(N21)
  );
  LUT6 #(
    .INIT ( 64'h3828282828282828 ))
  rx_byte_4_rstpot (
    .I0(rx_byte_4_28),
    .I1(rx_state_FSM_FFd1_20),
    .I2(rx_state_FSM_FFd2_21),
    .I3(Sh),
    .I4(N21),
    .I5(\GND_1_o_GND_1_o_equal_11_o<3>1_105 ),
    .O(rx_byte_4_rstpot_137)
  );
  LUT6 #(
    .INIT ( 64'h3828282828282828 ))
  rx_byte_5_rstpot (
    .I0(rx_byte_5_27),
    .I1(rx_state_FSM_FFd1_20),
    .I2(rx_state_FSM_FFd2_21),
    .I3(Sh1),
    .I4(N21),
    .I5(\GND_1_o_GND_1_o_equal_11_o<3>1_105 ),
    .O(rx_byte_5_rstpot_138)
  );
  LUT6 #(
    .INIT ( 64'h3828282828282828 ))
  rx_byte_6_rstpot (
    .I0(rx_byte_6_26),
    .I1(rx_state_FSM_FFd1_20),
    .I2(rx_state_FSM_FFd2_21),
    .I3(Sh2),
    .I4(N21),
    .I5(\GND_1_o_GND_1_o_equal_11_o<3>1_105 ),
    .O(rx_byte_6_rstpot_139)
  );
  LUT6 #(
    .INIT ( 64'h3828282828282828 ))
  rx_byte_7_rstpot (
    .I0(rx_byte_7_25),
    .I1(rx_state_FSM_FFd1_20),
    .I2(rx_state_FSM_FFd2_21),
    .I3(Sh3),
    .I4(N21),
    .I5(\GND_1_o_GND_1_o_equal_11_o<3>1_105 ),
    .O(rx_byte_7_rstpot_140)
  );
  FDC   tx_counter_0 (
    .C(clk_divide_1_BUFG_102),
    .CLR(rst_IBUF_11),
    .D(_n0185[0]),
    .Q(tx_counter[0])
  );
  FDC   tx_counter_1 (
    .C(clk_divide_1_BUFG_102),
    .CLR(rst_IBUF_11),
    .D(_n0185[1]),
    .Q(tx_counter[1])
  );
  FDC   tx_counter_2 (
    .C(clk_divide_1_BUFG_102),
    .CLR(rst_IBUF_11),
    .D(_n0185[2]),
    .Q(tx_counter[2])
  );
  FDC   tx_counter_3 (
    .C(clk_divide_1_BUFG_102),
    .CLR(rst_IBUF_11),
    .D(_n0185[3]),
    .Q(tx_counter[3])
  );
  FDC   tx_bit_counter_0 (
    .C(clk_divide_1_BUFG_102),
    .CLR(rst_IBUF_11),
    .D(_n0203[0]),
    .Q(tx_bit_counter[0])
  );
  FDC   tx_bit_counter_1 (
    .C(clk_divide_1_BUFG_102),
    .CLR(rst_IBUF_11),
    .D(_n0203[1]),
    .Q(tx_bit_counter[1])
  );
  FDC   tx_bit_counter_2 (
    .C(clk_divide_1_BUFG_102),
    .CLR(rst_IBUF_11),
    .D(_n0203[2]),
    .Q(tx_bit_counter[2])
  );
  FDP   tx_120 (
    .C(clk_divide_1_BUFG_102),
    .D(_n0176),
    .PRE(rst_IBUF_11),
    .Q(tx_OBUF_41)
  );
  LUT3 #(
    .INIT ( 8'hEA ))
  sample_locked_rstpot (
    .I0(sample_locked_42),
    .I1(clk_divide[0]),
    .I2(clk_divide[1]),
    .O(sample_locked_rstpot_132)
  );
  LUT6 #(
    .INIT ( 64'h1540154015400000 ))
  \Mmux_rx_state[2]_GND_1_o_wide_mux_36_OUT31  (
    .I0(rx_state_FSM_FFd1_20),
    .I1(sample_counter[1]),
    .I2(sample_counter[0]),
    .I3(sample_counter[2]),
    .I4(rx_state_FSM_FFd2_21),
    .I5(rx_state_FSM_FFd3_22),
    .O(\rx_state[2]_GND_1_o_wide_mux_36_OUT<2> )
  );
  LUT5 #(
    .INIT ( 32'h6660AAA0 ))
  Mmux__n018531 (
    .I0(tx_counter[2]),
    .I1(tx_counter[0]),
    .I2(tx_state_FSM_FFd2_81),
    .I3(tx_state_FSM_FFd1_13),
    .I4(tx_counter[1]),
    .O(_n0185[2])
  );
  LUT6 #(
    .INIT ( 64'hEAAAAAAA2AAAAAAA ))
  \tx_state_FSM_FFd1-In1  (
    .I0(tx_state_FSM_FFd1_13),
    .I1(tx_counter[3]),
    .I2(tx_counter[0]),
    .I3(tx_counter[1]),
    .I4(tx_counter[2]),
    .I5(tx_state_FSM_FFd2_81),
    .O(\tx_state_FSM_FFd1-In )
  );
  LUT6 #(
    .INIT ( 64'h2888888888888888 ))
  Mmux__n020311 (
    .I0(tx_state_FSM_FFd2_81),
    .I1(tx_bit_counter[0]),
    .I2(tx_counter[3]),
    .I3(tx_counter[0]),
    .I4(tx_counter[1]),
    .I5(tx_counter[2]),
    .O(_n0203[0])
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \rx_state_FSM_FFd1-In1  (
    .I0(sample_counter[3]),
    .I1(sample_counter[0]),
    .I2(sample_counter[1]),
    .I3(sample_counter[2]),
    .I4(rx_state_FSM_FFd3_22),
    .I5(rx_state_FSM_FFd2_21),
    .O(\rx_state_FSM_FFd1-In )
  );
  MUXF7   \rx_state_FSM_FFd3-In3  (
    .I0(N30),
    .I1(N31),
    .S(rx_state_FSM_FFd3_22),
    .O(\rx_state_FSM_FFd3-In )
  );
  LUT5 #(
    .INIT ( 32'h10BA1010 ))
  \rx_state_FSM_FFd3-In3_F  (
    .I0(rx_state_FSM_FFd2_21),
    .I1(rx_state_FSM_FFd1_20),
    .I2(start_flag_17),
    .I3(\Mmux_rx_state[2]_GND_1_o_wide_mux_35_OUT311 ),
    .I4(bit_counter[2]),
    .O(N30)
  );
  LUT5 #(
    .INIT ( 32'h2AAA6EFF ))
  \rx_state_FSM_FFd3-In3_G  (
    .I0(rx_state_FSM_FFd2_21),
    .I1(sample_counter[3]),
    .I2(rx_bit_16),
    .I3(\GND_1_o_GND_1_o_equal_11_o<3>1_105 ),
    .I4(rx_state_FSM_FFd1_20),
    .O(N31)
  );
  MUXF7   Mmux__n017612 (
    .I0(N32),
    .I1(N33),
    .S(N11),
    .O(_n0176)
  );
  LUT5 #(
    .INIT ( 32'hFBFBF151 ))
  Mmux__n017612_F (
    .I0(tx_state_FSM_FFd2_81),
    .I1(tx_ready_IBUF_9),
    .I2(tx_state_FSM_FFd1_13),
    .I3(tx_OBUF_41),
    .I4(GND_1_o_GND_1_o_equal_44_o),
    .O(N32)
  );
  LUT6 #(
    .INIT ( 64'hFBF1FB5151F15151 ))
  Mmux__n017612_G (
    .I0(tx_state_FSM_FFd2_81),
    .I1(tx_ready_IBUF_9),
    .I2(tx_state_FSM_FFd1_13),
    .I3(GND_1_o_GND_1_o_equal_44_o),
    .I4(tx_OBUF_41),
    .I5(\tx_bit_counter[2]_tx_copy[7]_Mux_44_o ),
    .O(N33)
  );
  BUFG   clk_divide_1_BUFG (
    .O(clk_divide_1_BUFG_102),
    .I(clk_divide[1])
  );
  INV   rx_bit_GND_1_o_equal_25_o1_INV_0 (
    .I(rx_bit_16),
    .O(rx_bit_GND_1_o_equal_25_o)
  );
  INV   \Mcount_clk_divide_xor<0>11_INV_0  (
    .I(clk_divide[0]),
    .O(Result[0])
  );
  INV   _n0248_inv1_INV_0 (
    .I(tx_state_FSM_FFd2_81),
    .O(_n0248_inv)
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

