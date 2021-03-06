////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 14.6
//  \   \         Application : xaw2verilog
//  /   /         Filename : CLOCK_TRNG.v
// /___/   /\     Timestamp : 07/17/2014 00:21:13
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: xaw2verilog -intstyle C:/Users/praveen/Dropbox/PUF_Praveen_Bak/ipcore_dir/CLOCK_TRNG.xaw -st CLOCK_TRNG.v
//Design Name: CLOCK_TRNG
//Device: xc5vlx110t-1ff1136
//
// Module CLOCK_TRNG
// Generated by Xilinx Architecture Wizard
// Written for synthesis tool: XST
// For block PLL_ADV_INST, Estimated PLL Jitter for CLKOUT0 = 0.191 ns
// For block PLL_ADV_INST, Estimated PLL Jitter for CLKOUT1 = 0.219 ns
// For block PLL_ADV_INST, Estimated PLL Jitter for CLKOUT2 = 0.126 ns
// For block PLL_ADV_INST, Estimated PLL Jitter for CLKOUT3 = 0.119 ns
`timescale 1ns / 1ps

module CLOCK_TRNG(CLKIN1_IN, 
                  CLKOUT0_OUT, 
                  CLKOUT1_OUT, 
                  CLKOUT2_OUT, 
                  CLKOUT3_OUT);

    input CLKIN1_IN;
   output CLKOUT0_OUT;
   output CLKOUT1_OUT;
   output CLKOUT2_OUT;
   output CLKOUT3_OUT;
   
   wire CLKFBOUT_CLKFBIN;
   wire CLKOUT0_BUF;
   wire CLKOUT1_BUF;
   wire CLKOUT2_BUF;
   wire CLKOUT3_BUF;
   wire GND_BIT;
   wire [4:0] GND_BUS_5;
   wire [15:0] GND_BUS_16;
   wire VCC_BIT;
   
   assign GND_BIT = 0;
   assign GND_BUS_5 = 5'b00000;
   assign GND_BUS_16 = 16'b0000000000000000;
   assign VCC_BIT = 1;
   BUFG  CLKOUT0_BUFG_INST (.I(CLKOUT0_BUF), 
                           .O(CLKOUT0_OUT));
   BUFG  CLKOUT1_BUFG_INST (.I(CLKOUT1_BUF), 
                           .O(CLKOUT1_OUT));
   BUFG  CLKOUT2_BUFG_INST (.I(CLKOUT2_BUF), 
                           .O(CLKOUT2_OUT));
   BUFG  CLKOUT3_BUFG_INST (.I(CLKOUT3_BUF), 
                           .O(CLKOUT3_OUT));
   PLL_ADV #( .BANDWIDTH("OPTIMIZED"), .CLKIN1_PERIOD(6.000), 
         .CLKIN2_PERIOD(10.000), .CLKOUT0_DIVIDE(32), .CLKOUT1_DIVIDE(64), 
         .CLKOUT2_DIVIDE(4), .CLKOUT3_DIVIDE(3), .CLKOUT0_PHASE(0.000), 
         .CLKOUT1_PHASE(0.000), .CLKOUT2_PHASE(0.000), .CLKOUT3_PHASE(0.000), 
         .CLKOUT0_DUTY_CYCLE(0.500), .CLKOUT1_DUTY_CYCLE(0.500), 
         .CLKOUT2_DUTY_CYCLE(0.500), .CLKOUT3_DUTY_CYCLE(0.500), 
         .COMPENSATION("SYSTEM_SYNCHRONOUS"), .DIVCLK_DIVIDE(1), 
         .CLKFBOUT_MULT(3), .CLKFBOUT_PHASE(0.0), .REF_JITTER(0.000000) ) 
         PLL_ADV_INST (.CLKFBIN(CLKFBOUT_CLKFBIN), 
                         .CLKINSEL(VCC_BIT), 
                         .CLKIN1(CLKIN1_IN), 
                         .CLKIN2(GND_BIT), 
                         .DADDR(GND_BUS_5[4:0]), 
                         .DCLK(GND_BIT), 
                         .DEN(GND_BIT), 
                         .DI(GND_BUS_16[15:0]), 
                         .DWE(GND_BIT), 
                         .REL(GND_BIT), 
                         .RST(GND_BIT), 
                         .CLKFBDCM(), 
                         .CLKFBOUT(CLKFBOUT_CLKFBIN), 
                         .CLKOUTDCM0(), 
                         .CLKOUTDCM1(), 
                         .CLKOUTDCM2(), 
                         .CLKOUTDCM3(), 
                         .CLKOUTDCM4(), 
                         .CLKOUTDCM5(), 
                         .CLKOUT0(CLKOUT0_BUF), 
                         .CLKOUT1(CLKOUT1_BUF), 
                         .CLKOUT2(CLKOUT2_BUF), 
                         .CLKOUT3(CLKOUT3_BUF), 
                         .CLKOUT4(), 
                         .CLKOUT5(), 
                         .DO(), 
                         .DRDY(), 
                         .LOCKED());
endmodule
