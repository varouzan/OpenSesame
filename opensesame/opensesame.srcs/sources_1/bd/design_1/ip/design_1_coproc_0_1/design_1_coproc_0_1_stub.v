// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Sun Dec 16 20:20:39 2018
// Host        : danmanPC running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub
//               /home/danman/sauce/vivado/OpenSesame/opensesame/opensesame.srcs/sources_1/bd/design_1/ip/design_1_coproc_0_1/design_1_coproc_0_1_stub.v
// Design      : design_1_coproc_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "coproc,Vivado 2018.2" *)
module design_1_coproc_0_1(instruction, input_data, key, clk, output_data, 
  dirty)
/* synthesis syn_black_box black_box_pad_pin="instruction[31:0],input_data[4095:0],key[127:0],clk,output_data[4095:0],dirty" */;
  input [31:0]instruction;
  input [4095:0]input_data;
  input [127:0]key;
  input clk;
  output [4095:0]output_data;
  output dirty;
endmodule
