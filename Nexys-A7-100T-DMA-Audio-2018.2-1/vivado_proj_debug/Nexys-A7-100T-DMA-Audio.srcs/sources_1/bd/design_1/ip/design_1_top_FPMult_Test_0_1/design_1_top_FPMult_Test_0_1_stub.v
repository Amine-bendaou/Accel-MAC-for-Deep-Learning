// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Wed Sep 17 16:37:18 2025
// Host        : OASIS2 running 64-bit Ubuntu 24.04.2 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/intern/Downloads/Nexys-A7-100T-DMA-Audio-2018.2-1/vivado_proj_debug/Nexys-A7-100T-DMA-Audio.srcs/sources_1/bd/design_1/ip/design_1_top_FPMult_Test_0_1/design_1_top_FPMult_Test_0_1_stub.v
// Design      : design_1_top_FPMult_Test_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "design_1_top_FPMult_Test_0_1,top_FPMult_Test,{}" *) (* CORE_GENERATION_INFO = "design_1_top_FPMult_Test_0_1,top_FPMult_Test,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=top_FPMult_Test,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,EXP_WIDTH=5,MANT_WIDTH=10}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "top_FPMult_Test,Vivado 2025.1" *) 
module design_1_top_FPMult_Test_0_1(clk, rst, start, X_in, Y_in, done, R)
/* synthesis syn_black_box black_box_pad_pin="rst,start,X_in[15:0],Y_in[15:0],done,R[15:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 81247969, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN design_1_mig_7series_0_1_ui_clk, INSERT_VIP 0" *) input clk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input start;
  input [15:0]X_in;
  input [15:0]Y_in;
  output done;
  output [15:0]R;
endmodule
