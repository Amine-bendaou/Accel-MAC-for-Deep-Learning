// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Wed Sep 17 16:37:18 2025
// Host        : OASIS2 running 64-bit Ubuntu 24.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/intern/Downloads/Nexys-A7-100T-DMA-Audio-2018.2-1/vivado_proj_debug/Nexys-A7-100T-DMA-Audio.srcs/sources_1/bd/design_1/ip/design_1_top_FPMult_Test_0_1/design_1_top_FPMult_Test_0_1_sim_netlist.v
// Design      : design_1_top_FPMult_Test_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_top_FPMult_Test_0_1,top_FPMult_Test,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "top_FPMult_Test,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module design_1_top_FPMult_Test_0_1
   (clk,
    rst,
    start,
    X_in,
    Y_in,
    done,
    R);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 81247969, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN design_1_mig_7series_0_1_ui_clk, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input start;
  input [15:0]X_in;
  input [15:0]Y_in;
  output done;
  output [15:0]R;

  wire [15:0]R;
  wire [15:0]X_in;
  wire [15:0]Y_in;
  wire clk;
  wire done;
  wire rst;
  wire start;

  design_1_top_FPMult_Test_0_1_top_FPMult_Test inst
       (.R(R),
        .X_in(X_in),
        .Y_in(Y_in),
        .clk(clk),
        .done(done),
        .rst(rst),
        .start(start));
endmodule

(* ORIG_REF_NAME = "FPMult16" *) 
module design_1_top_FPMult_Test_0_1_FPMult16
   (D,
    Q,
    \R_final_reg[14] ,
    \R_final_reg[14]_0 ,
    \R_final_reg[14]_1 );
  output [14:0]D;
  input [14:0]Q;
  input [14:0]\R_final_reg[14] ;
  input \R_final_reg[14]_0 ;
  input \R_final_reg[14]_1 ;

  wire [14:0]D;
  wire [14:0]Q;
  wire [14:0]\R_final_reg[14] ;
  wire \R_final_reg[14]_0 ;
  wire \R_final_reg[14]_1 ;

  design_1_top_FPMult_Test_0_1_IntMultiplier_11x11_22_Freq100_uid5 SignificandMultiplication
       (.D(D),
        .Q(Q),
        .\R_final_reg[14] (\R_final_reg[14] ),
        .\R_final_reg[14]_0 (\R_final_reg[14]_0 ),
        .\R_final_reg[14]_1 (\R_final_reg[14]_1 ));
endmodule

(* ORIG_REF_NAME = "IntMultiplier_11x11_22_Freq100_uid5" *) 
module design_1_top_FPMult_Test_0_1_IntMultiplier_11x11_22_Freq100_uid5
   (D,
    Q,
    \R_final_reg[14] ,
    \R_final_reg[14]_0 ,
    \R_final_reg[14]_1 );
  output [14:0]D;
  input [14:0]Q;
  input [14:0]\R_final_reg[14] ;
  input \R_final_reg[14]_0 ;
  input \R_final_reg[14]_1 ;

  wire [14:0]D;
  wire [14:0]Q;
  wire [21:0]RR__0;
  wire \R_final[11]_i_2_n_0 ;
  wire \R_final[11]_i_3_n_0 ;
  wire \R_final[11]_i_4_n_0 ;
  wire \R_final[11]_i_5_n_0 ;
  wire \R_final[14]_i_2_n_0 ;
  wire \R_final[14]_i_3_n_0 ;
  wire \R_final[14]_i_4_n_0 ;
  wire \R_final[14]_i_6_n_0 ;
  wire \R_final[3]_i_10_n_0 ;
  wire \R_final[3]_i_11_n_0 ;
  wire \R_final[3]_i_3_n_0 ;
  wire \R_final[3]_i_4_n_0 ;
  wire \R_final[3]_i_5_n_0 ;
  wire \R_final[3]_i_6_n_0 ;
  wire \R_final[3]_i_7_n_0 ;
  wire \R_final[3]_i_8_n_0 ;
  wire \R_final[3]_i_9_n_0 ;
  wire \R_final[7]_i_2_n_0 ;
  wire \R_final[7]_i_3_n_0 ;
  wire \R_final[7]_i_4_n_0 ;
  wire \R_final[7]_i_5_n_0 ;
  wire \R_final_reg[11]_i_1_n_0 ;
  wire \R_final_reg[11]_i_1_n_1 ;
  wire \R_final_reg[11]_i_1_n_2 ;
  wire \R_final_reg[11]_i_1_n_3 ;
  wire [14:0]\R_final_reg[14] ;
  wire \R_final_reg[14]_0 ;
  wire \R_final_reg[14]_1 ;
  wire \R_final_reg[14]_i_1_n_2 ;
  wire \R_final_reg[14]_i_1_n_3 ;
  wire \R_final_reg[3]_i_1_n_0 ;
  wire \R_final_reg[3]_i_1_n_1 ;
  wire \R_final_reg[3]_i_1_n_2 ;
  wire \R_final_reg[3]_i_1_n_3 ;
  wire \R_final_reg[7]_i_1_n_0 ;
  wire \R_final_reg[7]_i_1_n_1 ;
  wire \R_final_reg[7]_i_1_n_2 ;
  wire \R_final_reg[7]_i_1_n_3 ;
  wire p_0_in;
  wire NLW_RR_CARRYCASCOUT_UNCONNECTED;
  wire NLW_RR_MULTSIGNOUT_UNCONNECTED;
  wire NLW_RR_OVERFLOW_UNCONNECTED;
  wire NLW_RR_PATTERNBDETECT_UNCONNECTED;
  wire NLW_RR_PATTERNDETECT_UNCONNECTED;
  wire NLW_RR_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_RR_ACOUT_UNCONNECTED;
  wire [17:0]NLW_RR_BCOUT_UNCONNECTED;
  wire [3:0]NLW_RR_CARRYOUT_UNCONNECTED;
  wire [47:22]NLW_RR_P_UNCONNECTED;
  wire [47:0]NLW_RR_PCOUT_UNCONNECTED;
  wire [3:2]\NLW_R_final_reg[14]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_R_final_reg[14]_i_1_O_UNCONNECTED ;

  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    RR
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,\R_final_reg[14] [9:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_RR_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,Q[9:0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_RR_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_RR_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_RR_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_RR_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_RR_OVERFLOW_UNCONNECTED),
        .P({NLW_RR_P_UNCONNECTED[47:22],RR__0}),
        .PATTERNBDETECT(NLW_RR_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_RR_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_RR_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_RR_UNDERFLOW_UNCONNECTED));
  LUT5 #(
    .INIT(32'h69C3C396)) 
    \R_final[11]_i_2 
       (.I0(\R_final_reg[14] [10]),
        .I1(\R_final_reg[14] [11]),
        .I2(Q[11]),
        .I3(RR__0[21]),
        .I4(Q[10]),
        .O(\R_final[11]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \R_final[11]_i_3 
       (.I0(RR__0[21]),
        .I1(Q[10]),
        .I2(\R_final_reg[14] [10]),
        .O(\R_final[11]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \R_final[11]_i_4 
       (.I0(RR__0[20]),
        .I1(RR__0[21]),
        .I2(RR__0[19]),
        .O(\R_final[11]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \R_final[11]_i_5 
       (.I0(RR__0[19]),
        .I1(RR__0[21]),
        .I2(RR__0[18]),
        .O(\R_final[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h4BB42DD22DD2B44B)) 
    \R_final[14]_i_2 
       (.I0(\R_final_reg[14]_0 ),
        .I1(\R_final[14]_i_6_n_0 ),
        .I2(\R_final_reg[14] [14]),
        .I3(Q[14]),
        .I4(\R_final_reg[14] [13]),
        .I5(Q[13]),
        .O(\R_final[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h69969696)) 
    \R_final[14]_i_3 
       (.I0(\R_final[14]_i_6_n_0 ),
        .I1(\R_final_reg[14] [13]),
        .I2(Q[13]),
        .I3(\R_final_reg[14] [12]),
        .I4(Q[12]),
        .O(\R_final[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h807F01FE01FE7F80)) 
    \R_final[14]_i_4 
       (.I0(Q[10]),
        .I1(RR__0[21]),
        .I2(\R_final_reg[14] [10]),
        .I3(\R_final_reg[14]_1 ),
        .I4(\R_final_reg[14] [11]),
        .I5(Q[11]),
        .O(\R_final[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFE8080000000)) 
    \R_final[14]_i_6 
       (.I0(Q[10]),
        .I1(RR__0[21]),
        .I2(\R_final_reg[14] [10]),
        .I3(\R_final_reg[14] [11]),
        .I4(Q[11]),
        .I5(\R_final_reg[14]_1 ),
        .O(\R_final[14]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFEEE)) 
    \R_final[3]_i_10 
       (.I0(RR__0[8]),
        .I1(RR__0[6]),
        .I2(RR__0[21]),
        .I3(RR__0[9]),
        .O(\R_final[3]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \R_final[3]_i_11 
       (.I0(RR__0[21]),
        .I1(RR__0[10]),
        .O(\R_final[3]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \R_final[3]_i_2 
       (.I0(RR__0[11]),
        .I1(RR__0[21]),
        .I2(RR__0[10]),
        .O(p_0_in));
  LUT3 #(
    .INIT(8'hB8)) 
    \R_final[3]_i_3 
       (.I0(RR__0[14]),
        .I1(RR__0[21]),
        .I2(RR__0[13]),
        .O(\R_final[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \R_final[3]_i_4 
       (.I0(RR__0[13]),
        .I1(RR__0[21]),
        .I2(RR__0[12]),
        .O(\R_final[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \R_final[3]_i_5 
       (.I0(RR__0[12]),
        .I1(RR__0[21]),
        .I2(RR__0[11]),
        .O(\R_final[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5555555A6666666A)) 
    \R_final[3]_i_6 
       (.I0(p_0_in),
        .I1(\R_final[3]_i_7_n_0 ),
        .I2(\R_final[3]_i_8_n_0 ),
        .I3(\R_final[3]_i_9_n_0 ),
        .I4(\R_final[3]_i_10_n_0 ),
        .I5(\R_final[3]_i_11_n_0 ),
        .O(\R_final[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \R_final[3]_i_7 
       (.I0(RR__0[9]),
        .I1(RR__0[21]),
        .O(\R_final[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFFFEEE)) 
    \R_final[3]_i_8 
       (.I0(RR__0[5]),
        .I1(RR__0[4]),
        .I2(RR__0[11]),
        .I3(RR__0[21]),
        .I4(RR__0[10]),
        .I5(RR__0[7]),
        .O(\R_final[3]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \R_final[3]_i_9 
       (.I0(RR__0[1]),
        .I1(RR__0[0]),
        .I2(RR__0[3]),
        .I3(RR__0[2]),
        .O(\R_final[3]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \R_final[7]_i_2 
       (.I0(RR__0[18]),
        .I1(RR__0[21]),
        .I2(RR__0[17]),
        .O(\R_final[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \R_final[7]_i_3 
       (.I0(RR__0[17]),
        .I1(RR__0[21]),
        .I2(RR__0[16]),
        .O(\R_final[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \R_final[7]_i_4 
       (.I0(RR__0[16]),
        .I1(RR__0[21]),
        .I2(RR__0[15]),
        .O(\R_final[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \R_final[7]_i_5 
       (.I0(RR__0[15]),
        .I1(RR__0[21]),
        .I2(RR__0[14]),
        .O(\R_final[7]_i_5_n_0 ));
  CARRY4 \R_final_reg[11]_i_1 
       (.CI(\R_final_reg[7]_i_1_n_0 ),
        .CO({\R_final_reg[11]_i_1_n_0 ,\R_final_reg[11]_i_1_n_1 ,\R_final_reg[11]_i_1_n_2 ,\R_final_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(D[11:8]),
        .S({\R_final[11]_i_2_n_0 ,\R_final[11]_i_3_n_0 ,\R_final[11]_i_4_n_0 ,\R_final[11]_i_5_n_0 }));
  CARRY4 \R_final_reg[14]_i_1 
       (.CI(\R_final_reg[11]_i_1_n_0 ),
        .CO({\NLW_R_final_reg[14]_i_1_CO_UNCONNECTED [3:2],\R_final_reg[14]_i_1_n_2 ,\R_final_reg[14]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_R_final_reg[14]_i_1_O_UNCONNECTED [3],D[14:12]}),
        .S({1'b0,\R_final[14]_i_2_n_0 ,\R_final[14]_i_3_n_0 ,\R_final[14]_i_4_n_0 }));
  CARRY4 \R_final_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\R_final_reg[3]_i_1_n_0 ,\R_final_reg[3]_i_1_n_1 ,\R_final_reg[3]_i_1_n_2 ,\R_final_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,p_0_in}),
        .O(D[3:0]),
        .S({\R_final[3]_i_3_n_0 ,\R_final[3]_i_4_n_0 ,\R_final[3]_i_5_n_0 ,\R_final[3]_i_6_n_0 }));
  CARRY4 \R_final_reg[7]_i_1 
       (.CI(\R_final_reg[3]_i_1_n_0 ),
        .CO({\R_final_reg[7]_i_1_n_0 ,\R_final_reg[7]_i_1_n_1 ,\R_final_reg[7]_i_1_n_2 ,\R_final_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(D[7:4]),
        .S({\R_final[7]_i_2_n_0 ,\R_final[7]_i_3_n_0 ,\R_final[7]_i_4_n_0 ,\R_final[7]_i_5_n_0 }));
endmodule

(* ORIG_REF_NAME = "top_FPMult_Test" *) 
module design_1_top_FPMult_Test_0_1_top_FPMult_Test
   (done,
    R,
    start,
    Y_in,
    clk,
    rst,
    X_in);
  output done;
  output [15:0]R;
  input start;
  input [15:0]Y_in;
  input clk;
  input rst;
  input [15:0]X_in;

  wire [9:0]A;
  wire [9:0]B;
  wire [15:0]R;
  wire \R_final[14]_i_5_n_0 ;
  wire \R_final[14]_i_7_n_0 ;
  wire [15:15]R_sig;
  wire [15:15]X;
  wire [15:0]X_in;
  wire \X_sig_reg_n_0_[10] ;
  wire \X_sig_reg_n_0_[11] ;
  wire \X_sig_reg_n_0_[12] ;
  wire \X_sig_reg_n_0_[13] ;
  wire \X_sig_reg_n_0_[14] ;
  wire [15:15]Y;
  wire [15:0]Y_in;
  wire \Y_sig_reg_n_0_[10] ;
  wire \Y_sig_reg_n_0_[11] ;
  wire \Y_sig_reg_n_0_[12] ;
  wire \Y_sig_reg_n_0_[13] ;
  wire \Y_sig_reg_n_0_[14] ;
  wire clk;
  wire done;
  wire [14:0]expSigPostRound;
  wire rst;
  wire start;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \R_final[14]_i_5 
       (.I0(\X_sig_reg_n_0_[12] ),
        .I1(\Y_sig_reg_n_0_[12] ),
        .O(\R_final[14]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \R_final[14]_i_7 
       (.I0(\X_sig_reg_n_0_[12] ),
        .I1(\Y_sig_reg_n_0_[12] ),
        .O(\R_final[14]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \R_final[15]_i_1 
       (.I0(Y),
        .I1(X),
        .O(R_sig));
  FDCE \R_final_reg[0] 
       (.C(clk),
        .CE(start),
        .CLR(rst),
        .D(expSigPostRound[0]),
        .Q(R[0]));
  FDCE \R_final_reg[10] 
       (.C(clk),
        .CE(start),
        .CLR(rst),
        .D(expSigPostRound[10]),
        .Q(R[10]));
  FDCE \R_final_reg[11] 
       (.C(clk),
        .CE(start),
        .CLR(rst),
        .D(expSigPostRound[11]),
        .Q(R[11]));
  FDCE \R_final_reg[12] 
       (.C(clk),
        .CE(start),
        .CLR(rst),
        .D(expSigPostRound[12]),
        .Q(R[12]));
  FDCE \R_final_reg[13] 
       (.C(clk),
        .CE(start),
        .CLR(rst),
        .D(expSigPostRound[13]),
        .Q(R[13]));
  FDCE \R_final_reg[14] 
       (.C(clk),
        .CE(start),
        .CLR(rst),
        .D(expSigPostRound[14]),
        .Q(R[14]));
  FDCE \R_final_reg[15] 
       (.C(clk),
        .CE(start),
        .CLR(rst),
        .D(R_sig),
        .Q(R[15]));
  FDCE \R_final_reg[1] 
       (.C(clk),
        .CE(start),
        .CLR(rst),
        .D(expSigPostRound[1]),
        .Q(R[1]));
  FDCE \R_final_reg[2] 
       (.C(clk),
        .CE(start),
        .CLR(rst),
        .D(expSigPostRound[2]),
        .Q(R[2]));
  FDCE \R_final_reg[3] 
       (.C(clk),
        .CE(start),
        .CLR(rst),
        .D(expSigPostRound[3]),
        .Q(R[3]));
  FDCE \R_final_reg[4] 
       (.C(clk),
        .CE(start),
        .CLR(rst),
        .D(expSigPostRound[4]),
        .Q(R[4]));
  FDCE \R_final_reg[5] 
       (.C(clk),
        .CE(start),
        .CLR(rst),
        .D(expSigPostRound[5]),
        .Q(R[5]));
  FDCE \R_final_reg[6] 
       (.C(clk),
        .CE(start),
        .CLR(rst),
        .D(expSigPostRound[6]),
        .Q(R[6]));
  FDCE \R_final_reg[7] 
       (.C(clk),
        .CE(start),
        .CLR(rst),
        .D(expSigPostRound[7]),
        .Q(R[7]));
  FDCE \R_final_reg[8] 
       (.C(clk),
        .CE(start),
        .CLR(rst),
        .D(expSigPostRound[8]),
        .Q(R[8]));
  FDCE \R_final_reg[9] 
       (.C(clk),
        .CE(start),
        .CLR(rst),
        .D(expSigPostRound[9]),
        .Q(R[9]));
  FDCE \X_sig_reg[0] 
       (.C(clk),
        .CE(start),
        .CLR(rst),
        .D(X_in[0]),
        .Q(A[0]));
  FDCE \X_sig_reg[10] 
       (.C(clk),
        .CE(start),
        .CLR(rst),
        .D(X_in[10]),
        .Q(\X_sig_reg_n_0_[10] ));
  FDCE \X_sig_reg[11] 
       (.C(clk),
        .CE(start),
        .CLR(rst),
        .D(X_in[11]),
        .Q(\X_sig_reg_n_0_[11] ));
  FDCE \X_sig_reg[12] 
       (.C(clk),
        .CE(start),
        .CLR(rst),
        .D(X_in[12]),
        .Q(\X_sig_reg_n_0_[12] ));
  FDCE \X_sig_reg[13] 
       (.C(clk),
        .CE(start),
        .CLR(rst),
        .D(X_in[13]),
        .Q(\X_sig_reg_n_0_[13] ));
  FDCE \X_sig_reg[14] 
       (.C(clk),
        .CE(start),
        .CLR(rst),
        .D(X_in[14]),
        .Q(\X_sig_reg_n_0_[14] ));
  FDCE \X_sig_reg[15] 
       (.C(clk),
        .CE(start),
        .CLR(rst),
        .D(X_in[15]),
        .Q(X));
  FDCE \X_sig_reg[1] 
       (.C(clk),
        .CE(start),
        .CLR(rst),
        .D(X_in[1]),
        .Q(A[1]));
  FDCE \X_sig_reg[2] 
       (.C(clk),
        .CE(start),
        .CLR(rst),
        .D(X_in[2]),
        .Q(A[2]));
  FDCE \X_sig_reg[3] 
       (.C(clk),
        .CE(start),
        .CLR(rst),
        .D(X_in[3]),
        .Q(A[3]));
  FDCE \X_sig_reg[4] 
       (.C(clk),
        .CE(start),
        .CLR(rst),
        .D(X_in[4]),
        .Q(A[4]));
  FDCE \X_sig_reg[5] 
       (.C(clk),
        .CE(start),
        .CLR(rst),
        .D(X_in[5]),
        .Q(A[5]));
  FDCE \X_sig_reg[6] 
       (.C(clk),
        .CE(start),
        .CLR(rst),
        .D(X_in[6]),
        .Q(A[6]));
  FDCE \X_sig_reg[7] 
       (.C(clk),
        .CE(start),
        .CLR(rst),
        .D(X_in[7]),
        .Q(A[7]));
  FDCE \X_sig_reg[8] 
       (.C(clk),
        .CE(start),
        .CLR(rst),
        .D(X_in[8]),
        .Q(A[8]));
  FDCE \X_sig_reg[9] 
       (.C(clk),
        .CE(start),
        .CLR(rst),
        .D(X_in[9]),
        .Q(A[9]));
  FDCE \Y_sig_reg[0] 
       (.C(clk),
        .CE(start),
        .CLR(rst),
        .D(Y_in[0]),
        .Q(B[0]));
  FDCE \Y_sig_reg[10] 
       (.C(clk),
        .CE(start),
        .CLR(rst),
        .D(Y_in[10]),
        .Q(\Y_sig_reg_n_0_[10] ));
  FDCE \Y_sig_reg[11] 
       (.C(clk),
        .CE(start),
        .CLR(rst),
        .D(Y_in[11]),
        .Q(\Y_sig_reg_n_0_[11] ));
  FDCE \Y_sig_reg[12] 
       (.C(clk),
        .CE(start),
        .CLR(rst),
        .D(Y_in[12]),
        .Q(\Y_sig_reg_n_0_[12] ));
  FDCE \Y_sig_reg[13] 
       (.C(clk),
        .CE(start),
        .CLR(rst),
        .D(Y_in[13]),
        .Q(\Y_sig_reg_n_0_[13] ));
  FDCE \Y_sig_reg[14] 
       (.C(clk),
        .CE(start),
        .CLR(rst),
        .D(Y_in[14]),
        .Q(\Y_sig_reg_n_0_[14] ));
  FDCE \Y_sig_reg[15] 
       (.C(clk),
        .CE(start),
        .CLR(rst),
        .D(Y_in[15]),
        .Q(Y));
  FDCE \Y_sig_reg[1] 
       (.C(clk),
        .CE(start),
        .CLR(rst),
        .D(Y_in[1]),
        .Q(B[1]));
  FDCE \Y_sig_reg[2] 
       (.C(clk),
        .CE(start),
        .CLR(rst),
        .D(Y_in[2]),
        .Q(B[2]));
  FDCE \Y_sig_reg[3] 
       (.C(clk),
        .CE(start),
        .CLR(rst),
        .D(Y_in[3]),
        .Q(B[3]));
  FDCE \Y_sig_reg[4] 
       (.C(clk),
        .CE(start),
        .CLR(rst),
        .D(Y_in[4]),
        .Q(B[4]));
  FDCE \Y_sig_reg[5] 
       (.C(clk),
        .CE(start),
        .CLR(rst),
        .D(Y_in[5]),
        .Q(B[5]));
  FDCE \Y_sig_reg[6] 
       (.C(clk),
        .CE(start),
        .CLR(rst),
        .D(Y_in[6]),
        .Q(B[6]));
  FDCE \Y_sig_reg[7] 
       (.C(clk),
        .CE(start),
        .CLR(rst),
        .D(Y_in[7]),
        .Q(B[7]));
  FDCE \Y_sig_reg[8] 
       (.C(clk),
        .CE(start),
        .CLR(rst),
        .D(Y_in[8]),
        .Q(B[8]));
  FDCE \Y_sig_reg[9] 
       (.C(clk),
        .CE(start),
        .CLR(rst),
        .D(Y_in[9]),
        .Q(B[9]));
  FDCE fsm_done_reg
       (.C(clk),
        .CE(start),
        .CLR(rst),
        .D(1'b1),
        .Q(done));
  design_1_top_FPMult_Test_0_1_FPMult16 uut
       (.D(expSigPostRound),
        .Q({\Y_sig_reg_n_0_[14] ,\Y_sig_reg_n_0_[13] ,\Y_sig_reg_n_0_[12] ,\Y_sig_reg_n_0_[11] ,\Y_sig_reg_n_0_[10] ,B}),
        .\R_final_reg[14] ({\X_sig_reg_n_0_[14] ,\X_sig_reg_n_0_[13] ,\X_sig_reg_n_0_[12] ,\X_sig_reg_n_0_[11] ,\X_sig_reg_n_0_[10] ,A}),
        .\R_final_reg[14]_0 (\R_final[14]_i_5_n_0 ),
        .\R_final_reg[14]_1 (\R_final[14]_i_7_n_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
