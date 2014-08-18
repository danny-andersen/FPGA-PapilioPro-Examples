////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: led_flash_synthesis.v
// /___/   /\     Timestamp: Fri Jul 11 17:07:03 2014
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim led_flash.ngc led_flash_synthesis.v 
// Device	: xc6slx9-2-tqg144
// Input file	: led_flash.ngc
// Output file	: C:\Users\S243372\Dropbox\Workspaces\Projects_FPGA\Led_flasher\netgen\synthesis\led_flash_synthesis.v
// # of Modules	: 1
// Design Name	: led_flash
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

module led_flash (
  clk, rstn, led_out, led_out0, led_out1, led_out2
);
  input clk;
  input rstn;
  output led_out;
  output led_out0;
  output led_out1;
  output led_out2;
  wire rstn_IBUF_1;
  wire clk_dcm;
  wire enable;
  wire rst;
  wire \div1/out1_5 ;
  wire \div2/out1_6 ;
  wire \div3/out1_7 ;
  wire \clk_divider/clkfbout_buf ;
  wire \clk_divider/clkout0 ;
  wire \clk_divider/clkfbout ;
  wire \clk_divider/clkin1 ;
  wire \div2/Mcount_clear_counter5 ;
  wire \div2/Mcount_clear_counter4 ;
  wire \div2/Mcount_clear_counter3 ;
  wire \div2/Mcount_clear_counter2 ;
  wire \div2/Mcount_clear_counter1 ;
  wire \div2/Mcount_clear_counter ;
  wire \div2/_n0047_inv ;
  wire \div2/Mcount_counter6 ;
  wire \div2/Mcount_counter5 ;
  wire \div2/Mcount_counter4 ;
  wire \div2/Mcount_counter3 ;
  wire \div2/Mcount_counter2 ;
  wire \div2/Mcount_counter1 ;
  wire \div2/Mcount_counter ;
  wire \div2/_n0056_inv ;
  wire \div2/GND_6_o_GND_6_o_equal_4_o ;
  wire \div2/out1_PWR_6_o_MUX_10_o ;
  wire \div1/Mcount_clear_counter5 ;
  wire \div1/Mcount_clear_counter4 ;
  wire \div1/Mcount_clear_counter3 ;
  wire \div1/Mcount_clear_counter2 ;
  wire \div1/Mcount_clear_counter1 ;
  wire \div1/Mcount_clear_counter ;
  wire \div1/_n0047_inv ;
  wire \div1/Mcount_counter6 ;
  wire \div1/Mcount_counter5 ;
  wire \div1/Mcount_counter4 ;
  wire \div1/Mcount_counter3 ;
  wire \div1/Mcount_counter2 ;
  wire \div1/Mcount_counter1 ;
  wire \div1/Mcount_counter ;
  wire \div1/_n0056_inv ;
  wire \div1/GND_6_o_GND_6_o_equal_4_o ;
  wire \div1/out1_PWR_6_o_MUX_10_o ;
  wire \div3/Mcount_counter_xor<1>111 ;
  wire \div3/Mcount_counter_xor<5>11 ;
  wire \div3/_n0056_inv1_77 ;
  wire \div3/Mcount_clear_counter3 ;
  wire \div3/Mcount_clear_counter2 ;
  wire \div3/Mcount_clear_counter1 ;
  wire \div3/Mcount_clear_counter ;
  wire \div3/_n0047_inv ;
  wire \div3/Mcount_counter6 ;
  wire \div3/Mcount_counter5 ;
  wire \div3/Mcount_counter4 ;
  wire \div3/Mcount_counter3 ;
  wire \div3/Mcount_counter2 ;
  wire \div3/Mcount_counter1 ;
  wire \div3/Mcount_counter ;
  wire N2;
  wire N4;
  wire N6;
  wire N8;
  wire N10;
  wire N12;
  wire N14;
  wire \div2/out1_rstpot_113 ;
  wire \div1/out1_rstpot_114 ;
  wire \div3/out1_rstpot_115 ;
  wire N16;
  wire N18;
  wire N20;
  wire N22;
  wire \NLW_clk_divider/pll_base_inst_CLKOUT3_UNCONNECTED ;
  wire \NLW_clk_divider/pll_base_inst_CLKOUT1_UNCONNECTED ;
  wire \NLW_clk_divider/pll_base_inst_CLKOUT4_UNCONNECTED ;
  wire \NLW_clk_divider/pll_base_inst_CLKOUT5_UNCONNECTED ;
  wire \NLW_clk_divider/pll_base_inst_CLKOUT2_UNCONNECTED ;
  wire [5 : 0] \div2/clear_counter ;
  wire [4 : 4] \div2/Mcount_counter_cy ;
  wire [6 : 0] \div2/counter ;
  wire [6 : 6] \div1/Mcount_clear_counter_lut ;
  wire [5 : 0] \div1/clear_counter ;
  wire [4 : 4] \div1/Mcount_counter_cy ;
  wire [6 : 0] \div1/counter ;
  wire [3 : 0] \div3/clear_counter ;
  wire [6 : 0] \div3/counter ;
  GND   XST_GND (
    .G(\div1/Mcount_clear_counter_lut [6])
  );
  BUFG   \clk_divider/clkout1_buf  (
    .O(clk_dcm),
    .I(\clk_divider/clkout0 )
  );
  BUFG   \clk_divider/clkf_buf  (
    .O(\clk_divider/clkfbout_buf ),
    .I(\clk_divider/clkfbout )
  );
  IBUFG #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IBUF_DELAY_VALUE ( "0" ),
    .IBUF_LOW_PWR ( "TRUE" ),
    .IOSTANDARD ( "DEFAULT" ))
  \clk_divider/clkin1_buf  (
    .I(clk),
    .O(\clk_divider/clkin1 )
  );
  FDCE   \div2/clear_counter_5  (
    .C(\div1/out1_5 ),
    .CE(\div2/_n0047_inv ),
    .CLR(rst),
    .D(\div2/Mcount_clear_counter5 ),
    .Q(\div2/clear_counter [5])
  );
  FDCE   \div2/clear_counter_4  (
    .C(\div1/out1_5 ),
    .CE(\div2/_n0047_inv ),
    .CLR(rst),
    .D(\div2/Mcount_clear_counter4 ),
    .Q(\div2/clear_counter [4])
  );
  FDCE   \div2/clear_counter_3  (
    .C(\div1/out1_5 ),
    .CE(\div2/_n0047_inv ),
    .CLR(rst),
    .D(\div2/Mcount_clear_counter3 ),
    .Q(\div2/clear_counter [3])
  );
  FDCE   \div2/clear_counter_2  (
    .C(\div1/out1_5 ),
    .CE(\div2/_n0047_inv ),
    .CLR(rst),
    .D(\div2/Mcount_clear_counter2 ),
    .Q(\div2/clear_counter [2])
  );
  FDCE   \div2/clear_counter_1  (
    .C(\div1/out1_5 ),
    .CE(\div2/_n0047_inv ),
    .CLR(rst),
    .D(\div2/Mcount_clear_counter1 ),
    .Q(\div2/clear_counter [1])
  );
  FDCE   \div2/clear_counter_0  (
    .C(\div1/out1_5 ),
    .CE(\div2/_n0047_inv ),
    .CLR(rst),
    .D(\div2/Mcount_clear_counter ),
    .Q(\div2/clear_counter [0])
  );
  FDCE   \div2/counter_6  (
    .C(\div1/out1_5 ),
    .CE(enable),
    .CLR(rst),
    .D(\div2/Mcount_counter6 ),
    .Q(\div2/counter [6])
  );
  FDCE   \div2/counter_5  (
    .C(\div1/out1_5 ),
    .CE(enable),
    .CLR(rst),
    .D(\div2/Mcount_counter5 ),
    .Q(\div2/counter [5])
  );
  FDCE   \div2/counter_4  (
    .C(\div1/out1_5 ),
    .CE(enable),
    .CLR(rst),
    .D(\div2/Mcount_counter4 ),
    .Q(\div2/counter [4])
  );
  FDCE   \div2/counter_3  (
    .C(\div1/out1_5 ),
    .CE(enable),
    .CLR(rst),
    .D(\div2/Mcount_counter3 ),
    .Q(\div2/counter [3])
  );
  FDCE   \div2/counter_2  (
    .C(\div1/out1_5 ),
    .CE(enable),
    .CLR(rst),
    .D(\div2/Mcount_counter2 ),
    .Q(\div2/counter [2])
  );
  FDCE   \div2/counter_1  (
    .C(\div1/out1_5 ),
    .CE(enable),
    .CLR(rst),
    .D(\div2/Mcount_counter1 ),
    .Q(\div2/counter [1])
  );
  FDCE   \div2/counter_0  (
    .C(\div1/out1_5 ),
    .CE(enable),
    .CLR(rst),
    .D(\div2/Mcount_counter ),
    .Q(\div2/counter [0])
  );
  FDCE   \div1/clear_counter_5  (
    .C(clk_dcm),
    .CE(\div1/_n0047_inv ),
    .CLR(rst),
    .D(\div1/Mcount_clear_counter5 ),
    .Q(\div1/clear_counter [5])
  );
  FDCE   \div1/clear_counter_4  (
    .C(clk_dcm),
    .CE(\div1/_n0047_inv ),
    .CLR(rst),
    .D(\div1/Mcount_clear_counter4 ),
    .Q(\div1/clear_counter [4])
  );
  FDCE   \div1/clear_counter_3  (
    .C(clk_dcm),
    .CE(\div1/_n0047_inv ),
    .CLR(rst),
    .D(\div1/Mcount_clear_counter3 ),
    .Q(\div1/clear_counter [3])
  );
  FDCE   \div1/clear_counter_2  (
    .C(clk_dcm),
    .CE(\div1/_n0047_inv ),
    .CLR(rst),
    .D(\div1/Mcount_clear_counter2 ),
    .Q(\div1/clear_counter [2])
  );
  FDCE   \div1/clear_counter_1  (
    .C(clk_dcm),
    .CE(\div1/_n0047_inv ),
    .CLR(rst),
    .D(\div1/Mcount_clear_counter1 ),
    .Q(\div1/clear_counter [1])
  );
  FDCE   \div1/clear_counter_0  (
    .C(clk_dcm),
    .CE(\div1/_n0047_inv ),
    .CLR(rst),
    .D(\div1/Mcount_clear_counter ),
    .Q(\div1/clear_counter [0])
  );
  FDCE   \div1/counter_6  (
    .C(clk_dcm),
    .CE(enable),
    .CLR(rst),
    .D(\div1/Mcount_counter6 ),
    .Q(\div1/counter [6])
  );
  FDCE   \div1/counter_5  (
    .C(clk_dcm),
    .CE(enable),
    .CLR(rst),
    .D(\div1/Mcount_counter5 ),
    .Q(\div1/counter [5])
  );
  FDCE   \div1/counter_4  (
    .C(clk_dcm),
    .CE(enable),
    .CLR(rst),
    .D(\div1/Mcount_counter4 ),
    .Q(\div1/counter [4])
  );
  FDCE   \div1/counter_3  (
    .C(clk_dcm),
    .CE(enable),
    .CLR(rst),
    .D(\div1/Mcount_counter3 ),
    .Q(\div1/counter [3])
  );
  FDCE   \div1/counter_2  (
    .C(clk_dcm),
    .CE(enable),
    .CLR(rst),
    .D(\div1/Mcount_counter2 ),
    .Q(\div1/counter [2])
  );
  FDCE   \div1/counter_1  (
    .C(clk_dcm),
    .CE(enable),
    .CLR(rst),
    .D(\div1/Mcount_counter1 ),
    .Q(\div1/counter [1])
  );
  FDCE   \div1/counter_0  (
    .C(clk_dcm),
    .CE(enable),
    .CLR(rst),
    .D(\div1/Mcount_counter ),
    .Q(\div1/counter [0])
  );
  FDCE   \div3/clear_counter_3  (
    .C(\div2/out1_6 ),
    .CE(\div3/_n0047_inv ),
    .CLR(rst),
    .D(\div3/Mcount_clear_counter3 ),
    .Q(\div3/clear_counter [3])
  );
  FDCE   \div3/clear_counter_2  (
    .C(\div2/out1_6 ),
    .CE(\div3/_n0047_inv ),
    .CLR(rst),
    .D(\div3/Mcount_clear_counter2 ),
    .Q(\div3/clear_counter [2])
  );
  FDCE   \div3/clear_counter_1  (
    .C(\div2/out1_6 ),
    .CE(\div3/_n0047_inv ),
    .CLR(rst),
    .D(\div3/Mcount_clear_counter1 ),
    .Q(\div3/clear_counter [1])
  );
  FDCE   \div3/clear_counter_0  (
    .C(\div2/out1_6 ),
    .CE(\div3/_n0047_inv ),
    .CLR(rst),
    .D(\div3/Mcount_clear_counter ),
    .Q(\div3/clear_counter [0])
  );
  FDCE   \div3/counter_6  (
    .C(\div2/out1_6 ),
    .CE(enable),
    .CLR(rst),
    .D(\div3/Mcount_counter6 ),
    .Q(\div3/counter [6])
  );
  FDCE   \div3/counter_5  (
    .C(\div2/out1_6 ),
    .CE(enable),
    .CLR(rst),
    .D(\div3/Mcount_counter5 ),
    .Q(\div3/counter [5])
  );
  FDCE   \div3/counter_4  (
    .C(\div2/out1_6 ),
    .CE(enable),
    .CLR(rst),
    .D(\div3/Mcount_counter4 ),
    .Q(\div3/counter [4])
  );
  FDCE   \div3/counter_3  (
    .C(\div2/out1_6 ),
    .CE(enable),
    .CLR(rst),
    .D(\div3/Mcount_counter3 ),
    .Q(\div3/counter [3])
  );
  FDCE   \div3/counter_2  (
    .C(\div2/out1_6 ),
    .CE(enable),
    .CLR(rst),
    .D(\div3/Mcount_counter2 ),
    .Q(\div3/counter [2])
  );
  FDCE   \div3/counter_1  (
    .C(\div2/out1_6 ),
    .CE(enable),
    .CLR(rst),
    .D(\div3/Mcount_counter1 ),
    .Q(\div3/counter [1])
  );
  FDCE   \div3/counter_0  (
    .C(\div2/out1_6 ),
    .CE(enable),
    .CLR(rst),
    .D(\div3/Mcount_counter ),
    .Q(\div3/counter [0])
  );
  LUT3 #(
    .INIT ( 8'h9A ))
  \div2/Mcount_clear_counter_xor<1>11  (
    .I0(\div2/clear_counter [0]),
    .I1(\div2/GND_6_o_GND_6_o_equal_4_o ),
    .I2(\div2/clear_counter [1]),
    .O(\div2/Mcount_clear_counter1 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \div2/_n0047_inv1  (
    .I0(enable),
    .I1(\div2/out1_6 ),
    .O(\div2/_n0047_inv )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \div2/Mcount_counter_xor<1>11  (
    .I0(\div2/counter [1]),
    .I1(\div2/counter [0]),
    .O(\div2/Mcount_counter1 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000080000 ))
  \div2/GND_6_o_GND_6_o_equal_4_o<6>1  (
    .I0(\div2/clear_counter [5]),
    .I1(\div2/clear_counter [4]),
    .I2(\div2/clear_counter [3]),
    .I3(\div2/clear_counter [2]),
    .I4(\div2/clear_counter [1]),
    .I5(\div2/clear_counter [0]),
    .O(\div2/GND_6_o_GND_6_o_equal_4_o )
  );
  LUT3 #(
    .INIT ( 8'h9A ))
  \div1/Mcount_clear_counter_xor<1>11  (
    .I0(\div1/clear_counter [0]),
    .I1(\div1/GND_6_o_GND_6_o_equal_4_o ),
    .I2(\div1/clear_counter [1]),
    .O(\div1/Mcount_clear_counter1 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \div1/_n0047_inv1  (
    .I0(enable),
    .I1(\div1/out1_5 ),
    .O(\div1/_n0047_inv )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \div1/Mcount_counter_xor<1>11  (
    .I0(\div1/counter [1]),
    .I1(\div1/counter [0]),
    .O(\div1/Mcount_counter1 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000080000 ))
  \div1/GND_6_o_GND_6_o_equal_4_o<6>1  (
    .I0(\div1/clear_counter [5]),
    .I1(\div1/clear_counter [4]),
    .I2(\div1/clear_counter [3]),
    .I3(\div1/clear_counter [2]),
    .I4(\div1/clear_counter [1]),
    .I5(\div1/clear_counter [0]),
    .O(\div1/GND_6_o_GND_6_o_equal_4_o )
  );
  LUT5 #(
    .INIT ( 32'h6A68AAAA ))
  \div3/Mcount_counter_xor<3>11  (
    .I0(\div3/counter [3]),
    .I1(\div3/counter [2]),
    .I2(\div3/counter [1]),
    .I3(\div3/Mcount_counter_xor<1>111 ),
    .I4(\div3/counter [0]),
    .O(\div3/Mcount_counter3 )
  );
  LUT4 #(
    .INIT ( 16'h6AA2 ))
  \div3/Mcount_clear_counter_xor<3>11  (
    .I0(\div3/clear_counter [3]),
    .I1(\div3/clear_counter [2]),
    .I2(\div3/clear_counter [1]),
    .I3(\div3/clear_counter [0]),
    .O(\div3/Mcount_clear_counter3 )
  );
  LUT3 #(
    .INIT ( 8'hA6 ))
  \div3/Mcount_counter_xor<6>11  (
    .I0(\div3/counter [6]),
    .I1(\div3/counter [5]),
    .I2(\div3/Mcount_counter_xor<5>11 ),
    .O(\div3/Mcount_counter6 )
  );
  LUT3 #(
    .INIT ( 8'hFB ))
  \div3/Mcount_counter_xor<1>1111  (
    .I0(\div3/counter [6]),
    .I1(\div3/counter [4]),
    .I2(\div3/counter [5]),
    .O(\div3/Mcount_counter_xor<1>111 )
  );
  LUT4 #(
    .INIT ( 16'h668A ))
  \div3/Mcount_clear_counter_xor<2>11  (
    .I0(\div3/clear_counter [2]),
    .I1(\div3/clear_counter [0]),
    .I2(\div3/clear_counter [3]),
    .I3(\div3/clear_counter [1]),
    .O(\div3/Mcount_clear_counter2 )
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \div3/Mcount_counter_xor<2>11  (
    .I0(\div3/counter [2]),
    .I1(\div3/counter [0]),
    .I2(\div3/counter [1]),
    .O(\div3/Mcount_counter2 )
  );
  LUT5 #(
    .INIT ( 32'h7FFFFFFF ))
  \div3/Mcount_counter_xor<5>111  (
    .I0(\div3/counter [4]),
    .I1(\div3/counter [3]),
    .I2(\div3/counter [2]),
    .I3(\div3/counter [1]),
    .I4(\div3/counter [0]),
    .O(\div3/Mcount_counter_xor<5>11 )
  );
  LUT4 #(
    .INIT ( 16'h5515 ))
  \div3/Mcount_clear_counter_xor<0>11  (
    .I0(\div3/clear_counter [0]),
    .I1(\div3/clear_counter [2]),
    .I2(\div3/clear_counter [3]),
    .I3(\div3/clear_counter [1]),
    .O(\div3/Mcount_clear_counter )
  );
  LUT5 #(
    .INIT ( 32'h66646666 ))
  \div3/Mcount_counter_xor<1>11  (
    .I0(\div3/counter [0]),
    .I1(\div3/counter [1]),
    .I2(\div3/counter [2]),
    .I3(\div3/Mcount_counter_xor<1>111 ),
    .I4(\div3/counter [3]),
    .O(\div3/Mcount_counter1 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \div3/Mcount_clear_counter_xor<1>11  (
    .I0(\div3/clear_counter [1]),
    .I1(\div3/clear_counter [0]),
    .O(\div3/Mcount_clear_counter1 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \div3/_n0047_inv1  (
    .I0(enable),
    .I1(\div3/out1_7 ),
    .O(\div3/_n0047_inv )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \div2/out1_PWR_6_o_MUX_10_o<6>_SW0  (
    .I0(\div2/counter [4]),
    .I1(\div2/counter [3]),
    .O(N2)
  );
  LUT6 #(
    .INIT ( 64'h0000000000080000 ))
  \div2/out1_PWR_6_o_MUX_10_o<6>  (
    .I0(\div2/counter [6]),
    .I1(\div2/counter [5]),
    .I2(\div2/counter [0]),
    .I3(\div2/counter [1]),
    .I4(\div2/counter [2]),
    .I5(N2),
    .O(\div2/out1_PWR_6_o_MUX_10_o )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \div1/out1_PWR_6_o_MUX_10_o<6>_SW0  (
    .I0(\div1/counter [4]),
    .I1(\div1/counter [3]),
    .O(N4)
  );
  LUT6 #(
    .INIT ( 64'h0000000000080000 ))
  \div1/out1_PWR_6_o_MUX_10_o<6>  (
    .I0(\div1/counter [6]),
    .I1(\div1/counter [5]),
    .I2(\div1/counter [0]),
    .I3(\div1/counter [1]),
    .I4(\div1/counter [2]),
    .I5(N4),
    .O(\div1/out1_PWR_6_o_MUX_10_o )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \div3/Mcount_counter_xor<4>1_SW0  (
    .I0(\div3/counter [6]),
    .I1(\div3/counter [5]),
    .O(N6)
  );
  LUT6 #(
    .INIT ( 64'h6A68AAAAAAAAAAAA ))
  \div3/Mcount_counter_xor<4>1  (
    .I0(\div3/counter [4]),
    .I1(\div3/counter [1]),
    .I2(\div3/counter [2]),
    .I3(N6),
    .I4(\div3/counter [3]),
    .I5(\div3/counter [0]),
    .O(\div3/Mcount_counter4 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \div3/_n0056_inv_SW0  (
    .I0(\div3/clear_counter [1]),
    .I1(\div3/clear_counter [0]),
    .O(N8)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \div3/_n0056_inv1_SW0  (
    .I0(\div3/counter [1]),
    .I1(\div3/counter [2]),
    .O(N10)
  );
  LUT6 #(
    .INIT ( 64'h0000000000080000 ))
  \div3/_n0056_inv1  (
    .I0(\div3/counter [4]),
    .I1(\div3/counter [3]),
    .I2(\div3/counter [6]),
    .I3(\div3/counter [5]),
    .I4(\div3/counter [0]),
    .I5(N10),
    .O(\div3/_n0056_inv1_77 )
  );
  IBUF   rstn_IBUF (
    .I(rstn),
    .O(rstn_IBUF_1)
  );
  OBUF   led_out_OBUF (
    .I(\div3/out1_7 ),
    .O(led_out)
  );
  OBUF   led_out0_OBUF (
    .I(\div3/out1_7 ),
    .O(led_out0)
  );
  OBUF   led_out1_OBUF (
    .I(\div1/Mcount_clear_counter_lut [6]),
    .O(led_out1)
  );
  OBUF   led_out2_OBUF (
    .I(\div1/Mcount_clear_counter_lut [6]),
    .O(led_out2)
  );
  LUT5 #(
    .INIT ( 32'h80000000 ))
  \div2/Mcount_counter_cy<4>11  (
    .I0(\div2/counter [4]),
    .I1(\div2/counter [3]),
    .I2(\div2/counter [2]),
    .I3(\div2/counter [1]),
    .I4(\div2/counter [0]),
    .O(\div2/Mcount_counter_cy [4])
  );
  LUT5 #(
    .INIT ( 32'h80000000 ))
  \div1/Mcount_counter_cy<4>11  (
    .I0(\div1/counter [4]),
    .I1(\div1/counter [3]),
    .I2(\div1/counter [2]),
    .I3(\div1/counter [1]),
    .I4(\div1/counter [0]),
    .O(\div1/Mcount_counter_cy [4])
  );
  LUT6 #(
    .INIT ( 64'h6AAAAAA2AAAAAAAA ))
  \div2/Mcount_clear_counter_xor<5>11  (
    .I0(\div2/clear_counter [5]),
    .I1(\div2/clear_counter [4]),
    .I2(\div2/clear_counter [0]),
    .I3(\div2/clear_counter [2]),
    .I4(\div2/clear_counter [3]),
    .I5(\div2/clear_counter [1]),
    .O(\div2/Mcount_clear_counter5 )
  );
  LUT6 #(
    .INIT ( 64'h6AAAAAA2AAAAAAAA ))
  \div1/Mcount_clear_counter_xor<5>11  (
    .I0(\div1/clear_counter [5]),
    .I1(\div1/clear_counter [4]),
    .I2(\div1/clear_counter [0]),
    .I3(\div1/clear_counter [2]),
    .I4(\div1/clear_counter [3]),
    .I5(\div1/clear_counter [1]),
    .O(\div1/Mcount_clear_counter5 )
  );
  LUT5 #(
    .INIT ( 32'h6AAAAAAA ))
  \div2/Mcount_counter_xor<4>11  (
    .I0(\div2/counter [4]),
    .I1(\div2/counter [0]),
    .I2(\div2/counter [1]),
    .I3(\div2/counter [2]),
    .I4(\div2/counter [3]),
    .O(\div2/Mcount_counter4 )
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \div2/Mcount_counter_xor<3>11  (
    .I0(\div2/counter [3]),
    .I1(\div2/counter [0]),
    .I2(\div2/counter [1]),
    .I3(\div2/counter [2]),
    .O(\div2/Mcount_counter3 )
  );
  LUT5 #(
    .INIT ( 32'h6AAAAAAA ))
  \div1/Mcount_counter_xor<4>11  (
    .I0(\div1/counter [4]),
    .I1(\div1/counter [0]),
    .I2(\div1/counter [1]),
    .I3(\div1/counter [2]),
    .I4(\div1/counter [3]),
    .O(\div1/Mcount_counter4 )
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \div1/Mcount_counter_xor<3>11  (
    .I0(\div1/counter [3]),
    .I1(\div1/counter [0]),
    .I2(\div1/counter [1]),
    .I3(\div1/counter [2]),
    .O(\div1/Mcount_counter3 )
  );
  LUT6 #(
    .INIT ( 64'h6666A8AA6666AAAA ))
  \div2/Mcount_counter_xor<2>11  (
    .I0(\div2/counter [2]),
    .I1(\div2/counter [0]),
    .I2(N2),
    .I3(\div2/counter [6]),
    .I4(\div2/counter [1]),
    .I5(\div2/counter [5]),
    .O(\div2/Mcount_counter2 )
  );
  LUT6 #(
    .INIT ( 64'h6666A8AA6666AAAA ))
  \div1/Mcount_counter_xor<2>11  (
    .I0(\div1/counter [2]),
    .I1(\div1/counter [0]),
    .I2(N4),
    .I3(\div1/counter [6]),
    .I4(\div1/counter [1]),
    .I5(\div1/counter [5]),
    .O(\div1/Mcount_counter2 )
  );
  LUT6 #(
    .INIT ( 64'h5555515555555555 ))
  \div2/Mcount_counter_xor<0>11  (
    .I0(\div2/counter [0]),
    .I1(\div2/counter [6]),
    .I2(N2),
    .I3(\div2/counter [5]),
    .I4(\div2/counter [1]),
    .I5(\div2/counter [2]),
    .O(\div2/Mcount_counter )
  );
  LUT6 #(
    .INIT ( 64'h5555515555555555 ))
  \div1/Mcount_counter_xor<0>11  (
    .I0(\div1/counter [0]),
    .I1(\div1/counter [6]),
    .I2(N4),
    .I3(\div1/counter [5]),
    .I4(\div1/counter [1]),
    .I5(\div1/counter [2]),
    .O(\div1/Mcount_counter )
  );
  LUT4 #(
    .INIT ( 16'hFFF7 ))
  \div2/out1_PWR_6_o_MUX_10_o<6>_SW1  (
    .I0(\div2/counter [5]),
    .I1(\div2/counter [2]),
    .I2(\div2/counter [1]),
    .I3(\div2/counter [0]),
    .O(N12)
  );
  LUT6 #(
    .INIT ( 64'hA0A0A0A800000088 ))
  \div2/_n0056_inv1  (
    .I0(enable),
    .I1(\div2/counter [6]),
    .I2(\div2/out1_6 ),
    .I3(N2),
    .I4(N12),
    .I5(\div2/GND_6_o_GND_6_o_equal_4_o ),
    .O(\div2/_n0056_inv )
  );
  LUT4 #(
    .INIT ( 16'hFFF7 ))
  \div1/out1_PWR_6_o_MUX_10_o<6>_SW1  (
    .I0(\div1/counter [5]),
    .I1(\div1/counter [2]),
    .I2(\div1/counter [1]),
    .I3(\div1/counter [0]),
    .O(N14)
  );
  LUT6 #(
    .INIT ( 64'hA0A0A0A800000088 ))
  \div1/_n0056_inv1  (
    .I0(enable),
    .I1(\div1/counter [6]),
    .I2(\div1/out1_5 ),
    .I3(N4),
    .I4(N14),
    .I5(\div1/GND_6_o_GND_6_o_equal_4_o ),
    .O(\div1/_n0056_inv )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \div2/out1_rstpot  (
    .I0(\div2/out1_6 ),
    .I1(\div2/out1_PWR_6_o_MUX_10_o ),
    .I2(\div2/_n0056_inv ),
    .O(\div2/out1_rstpot_113 )
  );
  FDC   \div2/out1  (
    .C(\div1/out1_5 ),
    .CLR(rst),
    .D(\div2/out1_rstpot_113 ),
    .Q(\div2/out1_6 )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \div1/out1_rstpot  (
    .I0(\div1/out1_5 ),
    .I1(\div1/out1_PWR_6_o_MUX_10_o ),
    .I2(\div1/_n0056_inv ),
    .O(\div1/out1_rstpot_114 )
  );
  FDC   \div1/out1  (
    .C(clk_dcm),
    .CLR(rst),
    .D(\div1/out1_rstpot_114 ),
    .Q(\div1/out1_5 )
  );
  FDC   \div3/out1  (
    .C(\div2/out1_6 ),
    .CLR(rst),
    .D(\div3/out1_rstpot_115 ),
    .Q(\div3/out1_7 )
  );
  LUT6 #(
    .INIT ( 64'hFAFAFAFAAA2AAAAA ))
  \div3/out1_rstpot  (
    .I0(\div3/out1_7 ),
    .I1(\div3/clear_counter [3]),
    .I2(enable),
    .I3(N8),
    .I4(\div3/clear_counter [2]),
    .I5(\div3/_n0056_inv1_77 ),
    .O(\div3/out1_rstpot_115 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \div1/out1_PWR_6_o_MUX_10_o<6>_SW2  (
    .I0(\div1/counter [1]),
    .I1(\div1/counter [0]),
    .O(N16)
  );
  LUT6 #(
    .INIT ( 64'h66666666CCCCCC4C ))
  \div1/Mcount_counter_xor<6>11  (
    .I0(\div1/counter [5]),
    .I1(\div1/counter [6]),
    .I2(\div1/counter [2]),
    .I3(N4),
    .I4(N16),
    .I5(\div1/Mcount_counter_cy [4]),
    .O(\div1/Mcount_counter6 )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \div1/out1_PWR_6_o_MUX_10_o<6>_SW3  (
    .I0(\div1/counter [6]),
    .I1(\div1/counter [0]),
    .O(N18)
  );
  LUT6 #(
    .INIT ( 64'h5555555DAAAAAAA2 ))
  \div1/Mcount_counter_xor<5>11  (
    .I0(\div1/counter [5]),
    .I1(\div1/counter [2]),
    .I2(\div1/counter [1]),
    .I3(N18),
    .I4(N4),
    .I5(\div1/Mcount_counter_cy [4]),
    .O(\div1/Mcount_counter5 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \div2/out1_PWR_6_o_MUX_10_o<6>_SW2  (
    .I0(\div2/counter [1]),
    .I1(\div2/counter [0]),
    .O(N20)
  );
  LUT6 #(
    .INIT ( 64'h66666666CCCCCC4C ))
  \div2/Mcount_counter_xor<6>11  (
    .I0(\div2/counter [5]),
    .I1(\div2/counter [6]),
    .I2(\div2/counter [2]),
    .I3(N2),
    .I4(N20),
    .I5(\div2/Mcount_counter_cy [4]),
    .O(\div2/Mcount_counter6 )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \div2/out1_PWR_6_o_MUX_10_o<6>_SW3  (
    .I0(\div2/counter [6]),
    .I1(\div2/counter [0]),
    .O(N22)
  );
  LUT6 #(
    .INIT ( 64'h5555555DAAAAAAA2 ))
  \div2/Mcount_counter_xor<5>11  (
    .I0(\div2/counter [5]),
    .I1(\div2/counter [2]),
    .I2(\div2/counter [1]),
    .I3(N22),
    .I4(N2),
    .I5(\div2/Mcount_counter_cy [4]),
    .O(\div2/Mcount_counter5 )
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \div2/Mcount_clear_counter_xor<3>11  (
    .I0(\div2/clear_counter [3]),
    .I1(\div2/clear_counter [2]),
    .I2(\div2/clear_counter [1]),
    .I3(\div2/clear_counter [0]),
    .O(\div2/Mcount_clear_counter3 )
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \div2/Mcount_clear_counter_xor<2>11  (
    .I0(\div2/clear_counter [2]),
    .I1(\div2/clear_counter [1]),
    .I2(\div2/clear_counter [0]),
    .O(\div2/Mcount_clear_counter2 )
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \div1/Mcount_clear_counter_xor<3>11  (
    .I0(\div1/clear_counter [3]),
    .I1(\div1/clear_counter [2]),
    .I2(\div1/clear_counter [1]),
    .I3(\div1/clear_counter [0]),
    .O(\div1/Mcount_clear_counter3 )
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \div1/Mcount_clear_counter_xor<2>11  (
    .I0(\div1/clear_counter [2]),
    .I1(\div1/clear_counter [1]),
    .I2(\div1/clear_counter [0]),
    .O(\div1/Mcount_clear_counter2 )
  );
  LUT6 #(
    .INIT ( 64'h66AAAA8AAAAAAAAA ))
  \div2/Mcount_clear_counter_xor<4>11  (
    .I0(\div2/clear_counter [4]),
    .I1(\div2/clear_counter [0]),
    .I2(\div2/clear_counter [5]),
    .I3(\div2/clear_counter [2]),
    .I4(\div2/clear_counter [3]),
    .I5(\div2/clear_counter [1]),
    .O(\div2/Mcount_clear_counter4 )
  );
  LUT6 #(
    .INIT ( 64'h66AAAA8AAAAAAAAA ))
  \div1/Mcount_clear_counter_xor<4>11  (
    .I0(\div1/clear_counter [4]),
    .I1(\div1/clear_counter [0]),
    .I2(\div1/clear_counter [5]),
    .I3(\div1/clear_counter [2]),
    .I4(\div1/clear_counter [3]),
    .I5(\div1/clear_counter [1]),
    .O(\div1/Mcount_clear_counter4 )
  );
  LUT6 #(
    .INIT ( 64'h5555515555555555 ))
  \div2/Mcount_clear_counter_xor<0>11  (
    .I0(\div2/clear_counter [0]),
    .I1(\div2/clear_counter [5]),
    .I2(\div2/clear_counter [3]),
    .I3(\div2/clear_counter [4]),
    .I4(\div2/clear_counter [2]),
    .I5(\div2/clear_counter [1]),
    .O(\div2/Mcount_clear_counter )
  );
  LUT6 #(
    .INIT ( 64'h5555515555555555 ))
  \div1/Mcount_clear_counter_xor<0>11  (
    .I0(\div1/clear_counter [0]),
    .I1(\div1/clear_counter [5]),
    .I2(\div1/clear_counter [3]),
    .I3(\div1/clear_counter [4]),
    .I4(\div1/clear_counter [2]),
    .I5(\div1/clear_counter [1]),
    .O(\div1/Mcount_clear_counter )
  );
  LUT6 #(
    .INIT ( 64'h6AAAAAAAAAAAAAAA ))
  \div3/Mcount_counter_xor<5>12  (
    .I0(\div3/counter [5]),
    .I1(\div3/counter [0]),
    .I2(\div3/counter [1]),
    .I3(\div3/counter [2]),
    .I4(\div3/counter [3]),
    .I5(\div3/counter [4]),
    .O(\div3/Mcount_counter5 )
  );
  INV   rst1_INV_0 (
    .I(rstn_IBUF_1),
    .O(rst)
  );
  INV   \div3/Mcount_counter_xor<0>11_INV_0  (
    .I(\div3/counter [0]),
    .O(\div3/Mcount_counter )
  );
  PLL_BASE #(
    .BANDWIDTH ( "OPTIMIZED" ),
    .CLK_FEEDBACK ( "CLKFBOUT" ),
    .COMPENSATION ( "SYSTEM_SYNCHRONOUS" ),
    .RESET_ON_LOSS_OF_LOCK ( "FALSE" ),
    .CLKFBOUT_MULT ( 13 ),
    .CLKOUT0_DIVIDE ( 128 ),
    .CLKOUT1_DIVIDE ( 1 ),
    .CLKOUT2_DIVIDE ( 1 ),
    .CLKOUT3_DIVIDE ( 1 ),
    .CLKOUT4_DIVIDE ( 1 ),
    .CLKOUT5_DIVIDE ( 1 ),
    .DIVCLK_DIVIDE ( 1 ),
    .CLKFBOUT_PHASE ( 0.000000 ),
    .CLKIN_PERIOD ( 31.250000 ),
    .CLKOUT0_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT0_PHASE ( 0.000000 ),
    .CLKOUT1_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT1_PHASE ( 0.000000 ),
    .CLKOUT2_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT2_PHASE ( 0.000000 ),
    .CLKOUT3_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT3_PHASE ( 0.000000 ),
    .CLKOUT4_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT4_PHASE ( 0.000000 ),
    .CLKOUT5_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT5_PHASE ( 0.000000 ),
    .REF_JITTER ( 0.010000 ))
  \clk_divider/pll_base_inst  (
    .CLKIN(\clk_divider/clkin1 ),
    .CLKFBIN(\clk_divider/clkfbout_buf ),
    .CLKOUT0(\clk_divider/clkout0 ),
    .CLKFBOUT(\clk_divider/clkfbout ),
    .RST(rst),
    .LOCKED(enable),
    .CLKOUT3(\NLW_clk_divider/pll_base_inst_CLKOUT3_UNCONNECTED ),
    .CLKOUT1(\NLW_clk_divider/pll_base_inst_CLKOUT1_UNCONNECTED ),
    .CLKOUT4(\NLW_clk_divider/pll_base_inst_CLKOUT4_UNCONNECTED ),
    .CLKOUT5(\NLW_clk_divider/pll_base_inst_CLKOUT5_UNCONNECTED ),
    .CLKOUT2(\NLW_clk_divider/pll_base_inst_CLKOUT2_UNCONNECTED )
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

