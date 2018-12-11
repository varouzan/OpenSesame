// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Mon Nov 26 16:42:05 2018
// Host        : danmanPC running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub
//               /home/danman/sauce/vivado/opensesame/opensesame.srcs/sources_1/bd/design_1/ip/design_1_mult2x2_0_0/design_1_mult2x2_0_0_stub.v
// Design      : design_1_mult2x2_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "mult2x2,Vivado 2018.2" *)
module design_1_mult2x2_0_0(f1, f2, P)
/* synthesis syn_black_box black_box_pad_pin="f1[1:0],f2[1:0],P[3:0]" */;
  input [1:0]f1;
  input [1:0]f2;
  output [3:0]P;
endmodule
