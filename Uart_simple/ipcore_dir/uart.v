// file: uart.v
// (c) Copyright 2009 - 2011 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
//----------------------------------------------------------------------------
// User entered comments
//----------------------------------------------------------------------------
// None
//----------------------------------------------------------------------------

`timescale 1ps/1ps

(* CORE_GENERATION_INFO = "uart,selectio_wiz_v4_1,{component_name=uart,bus_dir=SEPARATE,bus_sig_type=SINGLE,bus_io_std=LVCMOS18,use_serialization=true,use_phase_detector=false,serialization_factor=8,enable_bitslip=false,enable_train=false,system_data_width=1,bus_in_delay=NONE,bus_out_delay=NONE,clk_sig_type=SINGLE,clk_io_std=LVCMOS18,clk_buf=BUFIO2,active_edge=RISING,clk_delay=NONE,v6_bus_in_delay=NONE,v6_bus_out_delay=NONE,v6_clk_buf=BUFIO,v6_active_edge=NOT_APP,v6_ddr_alignment=SAME_EDGE_PIPELINED,v6_oddr_alignment=SAME_EDGE,ddr_alignment=C0,v6_interface_type=NETWORKING,interface_type=NETWORKING,v6_bus_in_tap=0,v6_bus_out_tap=0,v6_clk_io_std=LVCMOS18,v6_clk_sig_type=SINGLE}" *)

module uart
   // width of the data for the system
 #(parameter sys_w = 1,
   // width of the data for the device
   parameter dev_w = 8)
 (
  // From the system into the device
  input  [sys_w-1:0] DATA_IN_FROM_PINS,
  output [dev_w-1:0] DATA_IN_TO_DEVICE,
  // From the device out to the system
  input  [dev_w-1:0] DATA_OUT_FROM_DEVICE,
  output [sys_w-1:0] DATA_OUT_TO_PINS,
  input              CLK_IN,        // Single ended clock from IOB
  output             CLK_DIV_OUT,   // Slow clock output
  input              IO_RESET);
  localparam         num_serial_bits = dev_w/sys_w;
  // Signal declarations
  ////------------------------------
  wire               clock_enable = 1'b1;
  // After the buffer
  wire   [sys_w-1:0] data_in_from_pins_int;
  // Between the delay and serdes
  wire [sys_w-1:0]  data_in_from_pins_delay;
  // Before the buffer
  wire   [sys_w-1:0] data_out_to_pins_int;
  // Between the delay and serdes
  wire   [sys_w-1:0] data_out_to_pins_predelay;
  // Array to use intermediately from the serdes to the internal
  //  devices. bus "0" is the leftmost bus
  wire [sys_w-1:0]  iserdes_q[0:7];   // fills in starting with 0
  wire [sys_w-1:0]  oserdes_d[0:7];   // fills in starting with 7
  // Create the clock logic

  IBUFG
    #(.IOSTANDARD ("LVCMOS18"))
   ibufg_clk_inst
     (.I          (CLK_IN),
      .O          (clk_in_int));

  // Set up the clock for use in the serdes
  BUFIO2 #(
      .DIVIDE_BYPASS ("FALSE"),
      .I_INVERT      ("FALSE"),
      .USE_DOUBLER   ("FALSE"),
      .DIVIDE        (8))
   bufio2_inst
     (.DIVCLK       (clk_div),
      .IOCLK        (clk_in_int_buf),
      .SERDESSTROBE (serdesstrobe),
      .I            (clk_in_int)
   );
   // Buffer up the divided clock
   BUFG clkdiv_buf_inst
    (.O (CLK_DIV_OUT),
     .I (clk_div));

  // We have multiple bits- step over every bit, instantiating the required elements
  genvar pin_count;
  genvar slice_count;
  generate for (pin_count = 0; pin_count < sys_w; pin_count = pin_count + 1) begin: pins
    // Instantiate the buffers
    ////------------------------------
    // Instantiate a buffer for every bit of the data bus
    OBUF
      #(.IOSTANDARD ("LVCMOS18"))
     obuf_inst
       (.O          (DATA_OUT_TO_PINS    [pin_count]),
        .I          (data_out_to_pins_int[pin_count]));
    IBUF
      #(.IOSTANDARD ("LVCMOS18"))
     ibuf_inst
       (.I          (DATA_IN_FROM_PINS    [pin_count]),
        .O          (data_in_from_pins_int[pin_count]));

    // Pass through the delay
    ////-------------------------------
   assign data_in_from_pins_delay[pin_count] = data_in_from_pins_int[pin_count];
   assign data_out_to_pins_int[pin_count]    = data_out_to_pins_predelay[pin_count];
 
     // Instantiate the serdes primitive
     ////------------------------------
     // local wire only for use in this generate loop
     wire cascade_shift;
     wire [sys_w-1:0] icascade;
     wire [sys_w-1:0] slave_shiftout;

     // decalare the iserdes
     ISERDES2
       #(.BITSLIP_ENABLE ("FALSE"),
         .DATA_RATE      ("SDR"),
         .DATA_WIDTH     (num_serial_bits),
         .INTERFACE_TYPE ("NETWORKING"),
         .SERDES_MODE    ("MASTER"))
      iserdes2_master
       (.Q1         (iserdes_q[3][pin_count]),
        .Q2         (iserdes_q[2][pin_count]),
        .Q3         (iserdes_q[1][pin_count]),
        .Q4         (iserdes_q[0][pin_count]),
        .SHIFTOUT   (icascade[pin_count]),
        .INCDEC     (),
        .VALID      (),
        .BITSLIP    (1'b0),
        .CE0        (clock_enable),  // 1-bit Clock enable input
        .CLK0       (clk_in_int_buf),// 1-bit IO Clock network input. Optionally Invertible. This is the primary clock
                                     // input used when the clock doubler circuit is not engaged (see DATA_RATE
                                     // attribute).
        .CLK1       (1'b0),
        .CLKDIV     (CLK_DIV_OUT),                        // 1-bit Global clock network input. This is the clock for the fabric domain.
        .D          (data_in_from_pins_delay[pin_count]), // 1-bit Input signal from IOB.
        .IOCE       (serdesstrobe),                       // 1-bit Data strobe signal derived from BUFIO CE. Strobes data capture for
                                                          // NETWORKING and NETWORKING_PIPELINES alignment modes.

        .RST        (IO_RESET),        // 1-bit Asynchronous reset only.
        .SHIFTIN    (),
        // unused connections
        .FABRICOUT  (),
        .CFB0       (),
        .CFB1       (),
        .DFB        ());

     ISERDES2
       #(.BITSLIP_ENABLE ("FALSE"),
         .DATA_RATE      ("SDR"),
         .DATA_WIDTH     (num_serial_bits),
         .INTERFACE_TYPE ("NETWORKING"),
         .SERDES_MODE    ("SLAVE"))

      iserdes2_slave
       (.Q1         (iserdes_q[7][pin_count]),
        .Q2         (iserdes_q[6][pin_count]),
        .Q3         (iserdes_q[5][pin_count]),
        .Q4         (iserdes_q[4][pin_count]),
        .SHIFTOUT   (),
        .INCDEC     (),
        .VALID      (),
        .BITSLIP    (1'b0),
        .CE0        (clock_enable),   // 1-bit Clock enable input
        .CLK0       (clk_in_int_buf), // 1-bit IO Clock network input. Optionally Invertible. This is the primary clock
                                      // input used when the clock doubler circuit is not engaged (see DATA_RATE
                                      // attribute).
        .CLK1       (1'b0),
        .CLKDIV     (CLK_DIV_OUT),    // 1-bit Global clock network input. This is the clock for the fabric domain.
        .D          (1'b0),           // 1-bit Input signal from IOB.
        .IOCE       (serdesstrobe),   // 1-bit Data strobe signal derived from BUFIO CE. Strobes data capture for
                                      // NETWORKING and NETWORKING_PIPELINES alignment modes.

        .RST        (IO_RESET),       // 1-bit Asynchronous reset only.
        .SHIFTIN    (icascade[pin_count]),
        // unused connections
        .FABRICOUT  (),
        .CFB0       (),
        .CFB1       (),
        .DFB        ());



     // local wire only for use in this generate loop
     wire cascade_ms_d;
     wire cascade_ms_t;
     wire cascade_sm_d;
     wire cascade_sm_t;

     // declare the oserdes
     OSERDES2
       #(.DATA_RATE_OQ   ("SDR"),
         .DATA_RATE_OT   ("SDR"),
         .TRAIN_PATTERN  (0),
         .DATA_WIDTH     (num_serial_bits),
         .SERDES_MODE    ("MASTER"),
         .OUTPUT_MODE    ("SINGLE_ENDED"))
      oserdes2_master
       (.D1         (oserdes_d[3][pin_count]),
        .D2         (oserdes_d[2][pin_count]),
        .D3         (oserdes_d[1][pin_count]),
        .D4         (oserdes_d[0][pin_count]),
        .T1         (1'b0),
        .T2         (1'b0),
        .T3         (1'b0),
        .T4         (1'b0),
        .SHIFTIN1   (1'b1),
        .SHIFTIN2   (1'b1),
        .SHIFTIN3   (cascade_sm_d),
        .SHIFTIN4   (cascade_sm_t),
        .SHIFTOUT1  (cascade_ms_d),
        .SHIFTOUT2  (cascade_ms_t),
        .SHIFTOUT3  (),
        .SHIFTOUT4  (),
        .TRAIN      (1'b0),
        .OCE        (clock_enable),
        .CLK0       (clk_in_int_buf),
        .CLK1       (1'b0),
        .CLKDIV     (CLK_DIV_OUT),
        .OQ         (data_out_to_pins_predelay[pin_count]),
        .TQ         (),
        .IOCE       (serdesstrobe),
        .TCE        (clock_enable),
        .RST        (IO_RESET));


     OSERDES2
       #(.DATA_RATE_OQ   ("SDR"),
         .DATA_RATE_OT   ("SDR"),
         .DATA_WIDTH     (num_serial_bits),
         .SERDES_MODE    ("SLAVE"),
         .TRAIN_PATTERN  (0),
         .OUTPUT_MODE    ("SINGLE_ENDED"))
      oserdes2_slave
       (.D1         (oserdes_d[7][pin_count]),
        .D2         (oserdes_d[6][pin_count]),
        .D3         (oserdes_d[5][pin_count]),
        .D4         (oserdes_d[4][pin_count]),
        .T1         (1'b0),
        .T2         (1'b0),
        .T3         (1'b0),
        .T4         (1'b0),
        .SHIFTIN1   (cascade_ms_d),
        .SHIFTIN2   (cascade_ms_t),
        .SHIFTIN3   (1'b1),
        .SHIFTIN4   (1'b1),
        .SHIFTOUT1  (),
        .SHIFTOUT2  (),
        .SHIFTOUT3  (cascade_sm_d),
        .SHIFTOUT4  (cascade_sm_t),
        .TRAIN      (1'b0),
        .OCE        (clock_enable),
        .CLK0       (clk_in_int_buf),
        .CLK1       (1'b0),
        .CLKDIV     (CLK_DIV_OUT),
        .OQ         (),
        .TQ         (),
        .IOCE       (serdesstrobe),
        .TCE        (clock_enable),
        .RST        (IO_RESET));
     // Concatenate the serdes outputs together. Keep the timesliced
     //   bits together, and placing the earliest bits on the right
     //   ie, if data comes in 0, 1, 2, 3, 4, 5, 6, 7, ...
     //       the output will be 3210, 7654, ...
     ////---------------------------------------------------------
     for (slice_count = 0; slice_count < num_serial_bits; slice_count = slice_count + 1) begin: in_slices
        // This places the first data in time on the right
        assign DATA_IN_TO_DEVICE[slice_count] =
          iserdes_q[num_serial_bits-slice_count-1];
        // To place the first data in time on the left, use the
        //   following code, instead
        // assign DATA_IN_TO_DEVICE[slice_count] =
        //   iserdes_q[slice_count];
     end
     for (slice_count = 0; slice_count < num_serial_bits; slice_count = slice_count + 1) begin: out_slices
        // This places the first data in time on the right
        assign oserdes_d[8-slice_count-1] =
           DATA_OUT_FROM_DEVICE[slice_count];
        // To place the first data in time on the left, use the
        //   following code, instead
        // assign oserdes_d[slice_count] =
        //    DATA_OUT_FROM_DEVICE[slice_count];
     end
  end
  endgenerate

endmodule
