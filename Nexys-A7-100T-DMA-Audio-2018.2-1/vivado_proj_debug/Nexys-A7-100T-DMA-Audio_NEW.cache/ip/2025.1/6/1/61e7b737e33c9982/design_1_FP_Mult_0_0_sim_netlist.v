// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Fri Sep 19 15:34:48 2025
// Host        : OASIS2 running 64-bit Ubuntu 24.04.2 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_FP_Mult_0_0_sim_netlist.v
// Design      : design_1_FP_Mult_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FPMult16
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_IntMultiplier_11x11_22_Freq100_uid5 SignificandMultiplication
       (.D(D),
        .Q(Q),
        .\R_final_reg[14] (\R_final_reg[14] ),
        .\R_final_reg[14]_0 (\R_final_reg[14]_0 ),
        .\R_final_reg[14]_1 (\R_final_reg[14]_1 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FP_Mult
   (axi_awready_reg,
    axi_arready_reg,
    axi_rvalid_reg,
    s00_axi_rdata,
    s00_axi_bvalid,
    s00_axi_wready,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_aclk,
    s00_axi_arvalid,
    s00_axi_rready,
    s00_axi_wdata,
    s00_axi_awaddr,
    s00_axi_aresetn,
    s00_axi_araddr,
    s00_axi_bready,
    s00_axi_wstrb);
  output axi_awready_reg;
  output axi_arready_reg;
  output axi_rvalid_reg;
  output [31:0]s00_axi_rdata;
  output s00_axi_bvalid;
  output s00_axi_wready;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_aclk;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_awaddr;
  input s00_axi_aresetn;
  input [1:0]s00_axi_araddr;
  input s00_axi_bready;
  input [3:0]s00_axi_wstrb;

  wire axi_arready_reg;
  wire axi_awready_reg;
  wire axi_rvalid_reg;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FP_Mult_slave_lite_v1_0_S00_AXI FP_Mult_slave_lite_v1_0_S00_AXI_inst
       (.axi_arready_reg_0(axi_arready_reg),
        .axi_awready_reg_0(axi_awready_reg),
        .axi_rvalid_reg_0(axi_rvalid_reg),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FP_Mult_slave_lite_v1_0_S00_AXI
   (axi_awready_reg_0,
    axi_arready_reg_0,
    axi_rvalid_reg_0,
    s00_axi_rdata,
    s00_axi_bvalid,
    s00_axi_wready,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_aclk,
    s00_axi_arvalid,
    s00_axi_rready,
    s00_axi_wdata,
    s00_axi_awaddr,
    s00_axi_aresetn,
    s00_axi_araddr,
    s00_axi_bready,
    s00_axi_wstrb);
  output axi_awready_reg_0;
  output axi_arready_reg_0;
  output axi_rvalid_reg_0;
  output [31:0]s00_axi_rdata;
  output s00_axi_bvalid;
  output s00_axi_wready;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_aclk;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_awaddr;
  input s00_axi_aresetn;
  input [1:0]s00_axi_araddr;
  input s00_axi_bready;
  input [3:0]s00_axi_wstrb;

  wire \FSM_onehot_state_write[1]_i_1_n_0 ;
  wire \FSM_onehot_state_write[2]_i_1_n_0 ;
  wire \FSM_onehot_state_write_reg_n_0_[1] ;
  wire \FSM_onehot_state_write_reg_n_0_[2] ;
  wire \FSM_sequential_state_read[0]_i_1_n_0 ;
  wire \FSM_sequential_state_read[1]_i_1_n_0 ;
  wire [15:0]X_in;
  wire [15:0]Y_in;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready0__0;
  wire axi_arready_i_1_n_0;
  wire axi_arready_reg_0;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire \axi_awaddr_reg_n_0_[2] ;
  wire \axi_awaddr_reg_n_0_[3] ;
  wire axi_awready_i_2_n_0;
  wire axi_awready_reg_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_bvalid_i_2_n_0;
  wire axi_bvalid_i_3_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_rvalid_reg_0;
  wire axi_wready;
  wire axi_wready_i_1_n_0;
  wire fsm_done;
  wire [3:2]mem_logic__1;
  wire my_fp_mult_n_1;
  wire [31:7]p_1_in;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [31:0]slv_reg1;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire [15:0]slv_reg3;
  wire [1:0]state_read;

  LUT6 #(
    .INIT(64'hFFFFBFAAFFFFBF00)) 
    \FSM_onehot_state_write[1]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awvalid),
        .I2(axi_awready_reg_0),
        .I3(\FSM_onehot_state_write_reg_n_0_[1] ),
        .I4(axi_wready),
        .I5(\FSM_onehot_state_write_reg_n_0_[2] ),
        .O(\FSM_onehot_state_write[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0F0F0800)) 
    \FSM_onehot_state_write[2]_i_1 
       (.I0(axi_awready_reg_0),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(\FSM_onehot_state_write_reg_n_0_[1] ),
        .I4(\FSM_onehot_state_write_reg_n_0_[2] ),
        .O(\FSM_onehot_state_write[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "idle:001,wdata:100,waddr:010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_write_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(axi_wready),
        .S(my_fp_mult_n_1));
  (* FSM_ENCODED_STATES = "idle:001,wdata:100,waddr:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_write_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state_write[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_write_reg_n_0_[1] ),
        .R(my_fp_mult_n_1));
  (* FSM_ENCODED_STATES = "idle:001,wdata:100,waddr:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_write_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state_write[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_write_reg_n_0_[2] ),
        .R(my_fp_mult_n_1));
  LUT6 #(
    .INIT(64'hFFFFF0007777FFFF)) 
    \FSM_sequential_state_read[0]_i_1 
       (.I0(s00_axi_arvalid),
        .I1(axi_arready_reg_0),
        .I2(s00_axi_rready),
        .I3(axi_rvalid_reg_0),
        .I4(state_read[0]),
        .I5(state_read[1]),
        .O(\FSM_sequential_state_read[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0FFF88880000)) 
    \FSM_sequential_state_read[1]_i_1 
       (.I0(axi_arready_reg_0),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rready),
        .I3(axi_rvalid_reg_0),
        .I4(state_read[0]),
        .I5(state_read[1]),
        .O(\FSM_sequential_state_read[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "idle:00,rdata:10,raddr:01" *) 
  FDRE \FSM_sequential_state_read_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_read[0]_i_1_n_0 ),
        .Q(state_read[0]),
        .R(my_fp_mult_n_1));
  (* FSM_ENCODED_STATES = "idle:00,rdata:10,raddr:01" *) 
  FDRE \FSM_sequential_state_read_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_read[1]_i_1_n_0 ),
        .Q(state_read[1]),
        .R(my_fp_mult_n_1));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_aresetn),
        .I2(axi_arready0__0),
        .I3(state_read[0]),
        .I4(state_read[1]),
        .I5(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_aresetn),
        .I2(axi_arready0__0),
        .I3(state_read[0]),
        .I4(state_read[1]),
        .I5(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \axi_araddr[3]_i_2 
       (.I0(s00_axi_arvalid),
        .I1(axi_arready_reg_0),
        .O(axi_arready0__0));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .R(1'b0));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hC4C4C4C4FFCFCFCF)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(axi_arready_reg_0),
        .I2(state_read[1]),
        .I3(s00_axi_rready),
        .I4(axi_rvalid_reg_0),
        .I5(state_read[0]),
        .O(axi_arready_i_1_n_0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready_i_1_n_0),
        .Q(axi_arready_reg_0),
        .R(my_fp_mult_n_1));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_aresetn),
        .I2(s00_axi_awvalid),
        .I3(axi_awready_reg_0),
        .I4(\FSM_onehot_state_write_reg_n_0_[1] ),
        .I5(\axi_awaddr_reg_n_0_[2] ),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_aresetn),
        .I2(s00_axi_awvalid),
        .I3(axi_awready_reg_0),
        .I4(\FSM_onehot_state_write_reg_n_0_[1] ),
        .I5(\axi_awaddr_reg_n_0_[3] ),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(\axi_awaddr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(\axi_awaddr_reg_n_0_[3] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFAFFEAEAFFFFEAEA)) 
    axi_awready_i_2
       (.I0(axi_wready),
        .I1(\FSM_onehot_state_write_reg_n_0_[2] ),
        .I2(s00_axi_wvalid),
        .I3(\FSM_onehot_state_write_reg_n_0_[1] ),
        .I4(axi_awready_reg_0),
        .I5(s00_axi_awvalid),
        .O(axi_awready_i_2_n_0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready_i_2_n_0),
        .Q(axi_awready_reg_0),
        .R(my_fp_mult_n_1));
  LUT6 #(
    .INIT(64'hAAA8ABA8BB88BB88)) 
    axi_bvalid_i_1
       (.I0(axi_bvalid_i_2_n_0),
        .I1(axi_bvalid_i_3_n_0),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_bvalid),
        .I4(s00_axi_bready),
        .I5(\FSM_onehot_state_write_reg_n_0_[2] ),
        .O(axi_bvalid_i_1_n_0));
  LUT6 #(
    .INIT(64'hFAEAEAEAEAEAEAEA)) 
    axi_bvalid_i_2
       (.I0(axi_wready),
        .I1(\FSM_onehot_state_write_reg_n_0_[2] ),
        .I2(s00_axi_wvalid),
        .I3(\FSM_onehot_state_write_reg_n_0_[1] ),
        .I4(s00_axi_awvalid),
        .I5(axi_awready_reg_0),
        .O(axi_bvalid_i_2_n_0));
  LUT6 #(
    .INIT(64'hAA80808080808080)) 
    axi_bvalid_i_3
       (.I0(\FSM_onehot_state_write_reg_n_0_[1] ),
        .I1(s00_axi_bvalid),
        .I2(s00_axi_bready),
        .I3(axi_awready_reg_0),
        .I4(s00_axi_awvalid),
        .I5(s00_axi_wvalid),
        .O(axi_bvalid_i_3_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(my_fp_mult_n_1));
  LUT6 #(
    .INIT(64'hF0FFFFFF00800080)) 
    axi_rvalid_i_1
       (.I0(axi_arready_reg_0),
        .I1(s00_axi_arvalid),
        .I2(state_read[0]),
        .I3(state_read[1]),
        .I4(s00_axi_rready),
        .I5(axi_rvalid_reg_0),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(axi_rvalid_reg_0),
        .R(my_fp_mult_n_1));
  LUT2 #(
    .INIT(4'hE)) 
    axi_wready_i_1
       (.I0(axi_wready),
        .I1(s00_axi_wready),
        .O(axi_wready_i_1_n_0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready_i_1_n_0),
        .Q(s00_axi_wready),
        .R(my_fp_mult_n_1));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top_FPMult_Test my_fp_mult
       (.Q(slv_reg1[0]),
        .\R_final_reg[15]_0 (slv_reg3),
        .SR(my_fp_mult_n_1),
        .\Y_sig_reg[15]_0 ({Y_in,X_in}),
        .fsm_done(fsm_done),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \s00_axi_rdata[0]_INST_0 
       (.I0(slv_reg1[0]),
        .I1(fsm_done),
        .I2(slv_reg3[0]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(X_in[0]),
        .O(s00_axi_rdata[0]));
  LUT5 #(
    .INIT(32'hCFA0C0A0)) 
    \s00_axi_rdata[10]_INST_0 
       (.I0(slv_reg1[10]),
        .I1(slv_reg3[10]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(X_in[10]),
        .O(s00_axi_rdata[10]));
  LUT5 #(
    .INIT(32'hCFA0C0A0)) 
    \s00_axi_rdata[11]_INST_0 
       (.I0(slv_reg1[11]),
        .I1(slv_reg3[11]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(X_in[11]),
        .O(s00_axi_rdata[11]));
  LUT5 #(
    .INIT(32'hCFA0C0A0)) 
    \s00_axi_rdata[12]_INST_0 
       (.I0(slv_reg1[12]),
        .I1(slv_reg3[12]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(X_in[12]),
        .O(s00_axi_rdata[12]));
  LUT5 #(
    .INIT(32'hCFA0C0A0)) 
    \s00_axi_rdata[13]_INST_0 
       (.I0(slv_reg1[13]),
        .I1(slv_reg3[13]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(X_in[13]),
        .O(s00_axi_rdata[13]));
  LUT5 #(
    .INIT(32'hCFA0C0A0)) 
    \s00_axi_rdata[14]_INST_0 
       (.I0(slv_reg1[14]),
        .I1(slv_reg3[14]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(X_in[14]),
        .O(s00_axi_rdata[14]));
  LUT5 #(
    .INIT(32'hCFA0C0A0)) 
    \s00_axi_rdata[15]_INST_0 
       (.I0(slv_reg1[15]),
        .I1(slv_reg3[15]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(X_in[15]),
        .O(s00_axi_rdata[15]));
  LUT4 #(
    .INIT(16'h2C20)) 
    \s00_axi_rdata[16]_INST_0 
       (.I0(slv_reg1[16]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(Y_in[0]),
        .O(s00_axi_rdata[16]));
  LUT4 #(
    .INIT(16'h2C20)) 
    \s00_axi_rdata[17]_INST_0 
       (.I0(slv_reg1[17]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(Y_in[1]),
        .O(s00_axi_rdata[17]));
  LUT4 #(
    .INIT(16'h2C20)) 
    \s00_axi_rdata[18]_INST_0 
       (.I0(slv_reg1[18]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(Y_in[2]),
        .O(s00_axi_rdata[18]));
  LUT4 #(
    .INIT(16'h2C20)) 
    \s00_axi_rdata[19]_INST_0 
       (.I0(slv_reg1[19]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(Y_in[3]),
        .O(s00_axi_rdata[19]));
  LUT5 #(
    .INIT(32'hCFA0C0A0)) 
    \s00_axi_rdata[1]_INST_0 
       (.I0(slv_reg1[1]),
        .I1(slv_reg3[1]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(X_in[1]),
        .O(s00_axi_rdata[1]));
  LUT4 #(
    .INIT(16'h2C20)) 
    \s00_axi_rdata[20]_INST_0 
       (.I0(slv_reg1[20]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(Y_in[4]),
        .O(s00_axi_rdata[20]));
  LUT4 #(
    .INIT(16'h2C20)) 
    \s00_axi_rdata[21]_INST_0 
       (.I0(slv_reg1[21]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(Y_in[5]),
        .O(s00_axi_rdata[21]));
  LUT4 #(
    .INIT(16'h2C20)) 
    \s00_axi_rdata[22]_INST_0 
       (.I0(slv_reg1[22]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(Y_in[6]),
        .O(s00_axi_rdata[22]));
  LUT4 #(
    .INIT(16'h2C20)) 
    \s00_axi_rdata[23]_INST_0 
       (.I0(slv_reg1[23]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(Y_in[7]),
        .O(s00_axi_rdata[23]));
  LUT4 #(
    .INIT(16'h2C20)) 
    \s00_axi_rdata[24]_INST_0 
       (.I0(slv_reg1[24]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(Y_in[8]),
        .O(s00_axi_rdata[24]));
  LUT4 #(
    .INIT(16'h2C20)) 
    \s00_axi_rdata[25]_INST_0 
       (.I0(slv_reg1[25]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(Y_in[9]),
        .O(s00_axi_rdata[25]));
  LUT4 #(
    .INIT(16'h2C20)) 
    \s00_axi_rdata[26]_INST_0 
       (.I0(slv_reg1[26]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(Y_in[10]),
        .O(s00_axi_rdata[26]));
  LUT4 #(
    .INIT(16'h2C20)) 
    \s00_axi_rdata[27]_INST_0 
       (.I0(slv_reg1[27]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(Y_in[11]),
        .O(s00_axi_rdata[27]));
  LUT4 #(
    .INIT(16'h2C20)) 
    \s00_axi_rdata[28]_INST_0 
       (.I0(slv_reg1[28]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(Y_in[12]),
        .O(s00_axi_rdata[28]));
  LUT4 #(
    .INIT(16'h2C20)) 
    \s00_axi_rdata[29]_INST_0 
       (.I0(slv_reg1[29]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(Y_in[13]),
        .O(s00_axi_rdata[29]));
  LUT5 #(
    .INIT(32'hCFA0C0A0)) 
    \s00_axi_rdata[2]_INST_0 
       (.I0(slv_reg1[2]),
        .I1(slv_reg3[2]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(X_in[2]),
        .O(s00_axi_rdata[2]));
  LUT4 #(
    .INIT(16'h2C20)) 
    \s00_axi_rdata[30]_INST_0 
       (.I0(slv_reg1[30]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(Y_in[14]),
        .O(s00_axi_rdata[30]));
  LUT4 #(
    .INIT(16'h2C20)) 
    \s00_axi_rdata[31]_INST_0 
       (.I0(slv_reg1[31]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(Y_in[15]),
        .O(s00_axi_rdata[31]));
  LUT5 #(
    .INIT(32'hCFA0C0A0)) 
    \s00_axi_rdata[3]_INST_0 
       (.I0(slv_reg1[3]),
        .I1(slv_reg3[3]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(X_in[3]),
        .O(s00_axi_rdata[3]));
  LUT5 #(
    .INIT(32'hCFA0C0A0)) 
    \s00_axi_rdata[4]_INST_0 
       (.I0(slv_reg1[4]),
        .I1(slv_reg3[4]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(X_in[4]),
        .O(s00_axi_rdata[4]));
  LUT5 #(
    .INIT(32'hCFA0C0A0)) 
    \s00_axi_rdata[5]_INST_0 
       (.I0(slv_reg1[5]),
        .I1(slv_reg3[5]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(X_in[5]),
        .O(s00_axi_rdata[5]));
  LUT5 #(
    .INIT(32'hCFA0C0A0)) 
    \s00_axi_rdata[6]_INST_0 
       (.I0(slv_reg1[6]),
        .I1(slv_reg3[6]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(X_in[6]),
        .O(s00_axi_rdata[6]));
  LUT5 #(
    .INIT(32'hCFA0C0A0)) 
    \s00_axi_rdata[7]_INST_0 
       (.I0(slv_reg1[7]),
        .I1(slv_reg3[7]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(X_in[7]),
        .O(s00_axi_rdata[7]));
  LUT5 #(
    .INIT(32'hCFA0C0A0)) 
    \s00_axi_rdata[8]_INST_0 
       (.I0(slv_reg1[8]),
        .I1(slv_reg3[8]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(X_in[8]),
        .O(s00_axi_rdata[8]));
  LUT5 #(
    .INIT(32'hCFA0C0A0)) 
    \s00_axi_rdata[9]_INST_0 
       (.I0(slv_reg1[9]),
        .I1(slv_reg3[9]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(X_in[9]),
        .O(s00_axi_rdata[9]));
  LUT6 #(
    .INIT(64'h0080000000808080)) 
    \slv_reg1[15]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_wstrb[1]),
        .I2(mem_logic__1[2]),
        .I3(s00_axi_awaddr[1]),
        .I4(s00_axi_awvalid),
        .I5(\axi_awaddr_reg_n_0_[3] ),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000808080)) 
    \slv_reg1[23]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_wstrb[2]),
        .I2(mem_logic__1[2]),
        .I3(s00_axi_awaddr[1]),
        .I4(s00_axi_awvalid),
        .I5(\axi_awaddr_reg_n_0_[3] ),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000808080)) 
    \slv_reg1[31]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_wstrb[3]),
        .I2(mem_logic__1[2]),
        .I3(s00_axi_awaddr[1]),
        .I4(s00_axi_awvalid),
        .I5(\axi_awaddr_reg_n_0_[3] ),
        .O(\slv_reg1[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg1[31]_i_2 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_awvalid),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .O(mem_logic__1[2]));
  LUT6 #(
    .INIT(64'h0080000000808080)) 
    \slv_reg1[7]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_wstrb[0]),
        .I2(mem_logic__1[2]),
        .I3(s00_axi_awaddr[1]),
        .I4(s00_axi_awvalid),
        .I5(\axi_awaddr_reg_n_0_[3] ),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg1[0]),
        .R(my_fp_mult_n_1));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg1[10]),
        .R(my_fp_mult_n_1));
  FDRE \slv_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg1[11]),
        .R(my_fp_mult_n_1));
  FDRE \slv_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg1[12]),
        .R(my_fp_mult_n_1));
  FDRE \slv_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg1[13]),
        .R(my_fp_mult_n_1));
  FDRE \slv_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg1[14]),
        .R(my_fp_mult_n_1));
  FDRE \slv_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg1[15]),
        .R(my_fp_mult_n_1));
  FDRE \slv_reg1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg1[16]),
        .R(my_fp_mult_n_1));
  FDRE \slv_reg1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg1[17]),
        .R(my_fp_mult_n_1));
  FDRE \slv_reg1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg1[18]),
        .R(my_fp_mult_n_1));
  FDRE \slv_reg1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg1[19]),
        .R(my_fp_mult_n_1));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg1[1]),
        .R(my_fp_mult_n_1));
  FDRE \slv_reg1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg1[20]),
        .R(my_fp_mult_n_1));
  FDRE \slv_reg1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg1[21]),
        .R(my_fp_mult_n_1));
  FDRE \slv_reg1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg1[22]),
        .R(my_fp_mult_n_1));
  FDRE \slv_reg1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg1[23]),
        .R(my_fp_mult_n_1));
  FDRE \slv_reg1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg1[24]),
        .R(my_fp_mult_n_1));
  FDRE \slv_reg1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg1[25]),
        .R(my_fp_mult_n_1));
  FDRE \slv_reg1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg1[26]),
        .R(my_fp_mult_n_1));
  FDRE \slv_reg1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg1[27]),
        .R(my_fp_mult_n_1));
  FDRE \slv_reg1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg1[28]),
        .R(my_fp_mult_n_1));
  FDRE \slv_reg1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg1[29]),
        .R(my_fp_mult_n_1));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg1[2]),
        .R(my_fp_mult_n_1));
  FDRE \slv_reg1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg1[30]),
        .R(my_fp_mult_n_1));
  FDRE \slv_reg1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg1[31]),
        .R(my_fp_mult_n_1));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg1[3]),
        .R(my_fp_mult_n_1));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg1[4]),
        .R(my_fp_mult_n_1));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg1[5]),
        .R(my_fp_mult_n_1));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg1[6]),
        .R(my_fp_mult_n_1));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg1[7]),
        .R(my_fp_mult_n_1));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg1[8]),
        .R(my_fp_mult_n_1));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg1[9]),
        .R(my_fp_mult_n_1));
  LUT6 #(
    .INIT(64'h0080000000808080)) 
    \slv_reg2[15]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(mem_logic__1[3]),
        .I2(s00_axi_wstrb[1]),
        .I3(s00_axi_awaddr[0]),
        .I4(s00_axi_awvalid),
        .I5(\axi_awaddr_reg_n_0_[2] ),
        .O(p_1_in[15]));
  LUT6 #(
    .INIT(64'h0080000000808080)) 
    \slv_reg2[23]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(mem_logic__1[3]),
        .I2(s00_axi_wstrb[2]),
        .I3(s00_axi_awaddr[0]),
        .I4(s00_axi_awvalid),
        .I5(\axi_awaddr_reg_n_0_[2] ),
        .O(p_1_in[23]));
  LUT6 #(
    .INIT(64'h0080000000808080)) 
    \slv_reg2[31]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(mem_logic__1[3]),
        .I2(s00_axi_wstrb[3]),
        .I3(s00_axi_awaddr[0]),
        .I4(s00_axi_awvalid),
        .I5(\axi_awaddr_reg_n_0_[2] ),
        .O(p_1_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg2[31]_i_2 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_awvalid),
        .I2(\axi_awaddr_reg_n_0_[3] ),
        .O(mem_logic__1[3]));
  LUT6 #(
    .INIT(64'h0080000000808080)) 
    \slv_reg2[7]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(mem_logic__1[3]),
        .I2(s00_axi_wstrb[0]),
        .I3(s00_axi_awaddr[0]),
        .I4(s00_axi_awvalid),
        .I5(\axi_awaddr_reg_n_0_[2] ),
        .O(p_1_in[7]));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[0]),
        .Q(X_in[0]),
        .R(my_fp_mult_n_1));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[10]),
        .Q(X_in[10]),
        .R(my_fp_mult_n_1));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[11]),
        .Q(X_in[11]),
        .R(my_fp_mult_n_1));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[12]),
        .Q(X_in[12]),
        .R(my_fp_mult_n_1));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[13]),
        .Q(X_in[13]),
        .R(my_fp_mult_n_1));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[14]),
        .Q(X_in[14]),
        .R(my_fp_mult_n_1));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[15]),
        .Q(X_in[15]),
        .R(my_fp_mult_n_1));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[16]),
        .Q(Y_in[0]),
        .R(my_fp_mult_n_1));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[17]),
        .Q(Y_in[1]),
        .R(my_fp_mult_n_1));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[18]),
        .Q(Y_in[2]),
        .R(my_fp_mult_n_1));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[19]),
        .Q(Y_in[3]),
        .R(my_fp_mult_n_1));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[1]),
        .Q(X_in[1]),
        .R(my_fp_mult_n_1));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[20]),
        .Q(Y_in[4]),
        .R(my_fp_mult_n_1));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[21]),
        .Q(Y_in[5]),
        .R(my_fp_mult_n_1));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[22]),
        .Q(Y_in[6]),
        .R(my_fp_mult_n_1));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[23]),
        .Q(Y_in[7]),
        .R(my_fp_mult_n_1));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[24]),
        .Q(Y_in[8]),
        .R(my_fp_mult_n_1));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[25]),
        .Q(Y_in[9]),
        .R(my_fp_mult_n_1));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[26]),
        .Q(Y_in[10]),
        .R(my_fp_mult_n_1));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[27]),
        .Q(Y_in[11]),
        .R(my_fp_mult_n_1));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[28]),
        .Q(Y_in[12]),
        .R(my_fp_mult_n_1));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[29]),
        .Q(Y_in[13]),
        .R(my_fp_mult_n_1));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[2]),
        .Q(X_in[2]),
        .R(my_fp_mult_n_1));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[30]),
        .Q(Y_in[14]),
        .R(my_fp_mult_n_1));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[31]),
        .Q(Y_in[15]),
        .R(my_fp_mult_n_1));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[3]),
        .Q(X_in[3]),
        .R(my_fp_mult_n_1));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[4]),
        .Q(X_in[4]),
        .R(my_fp_mult_n_1));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[5]),
        .Q(X_in[5]),
        .R(my_fp_mult_n_1));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[6]),
        .Q(X_in[6]),
        .R(my_fp_mult_n_1));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[7]),
        .Q(X_in[7]),
        .R(my_fp_mult_n_1));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[8]),
        .Q(X_in[8]),
        .R(my_fp_mult_n_1));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[9]),
        .Q(X_in[9]),
        .R(my_fp_mult_n_1));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_IntMultiplier_11x11_22_Freq100_uid5
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

(* CHECK_LICENSE_TYPE = "design_1_FP_Mult_0_0,FP_Mult,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "FP_Mult,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (R,
    done,
    s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready);
  output [15:0]R;
  output done;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* x_interface_mode = "slave S00_AXI_CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 81247969, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN design_1_mig_7series_0_1_ui_clk, INSERT_VIP 0" *) input s00_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* x_interface_mode = "slave S00_AXI_RST" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) (* x_interface_mode = "slave S00_AXI" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 81247969, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN design_1_mig_7series_0_1_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [3:0]s00_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [3:0]s00_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) input s00_axi_rready;

  wire \<const0> ;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  assign R[15] = \<const0> ;
  assign R[14] = \<const0> ;
  assign R[13] = \<const0> ;
  assign R[12] = \<const0> ;
  assign R[11] = \<const0> ;
  assign R[10] = \<const0> ;
  assign R[9] = \<const0> ;
  assign R[8] = \<const0> ;
  assign R[7] = \<const0> ;
  assign R[6] = \<const0> ;
  assign R[5] = \<const0> ;
  assign R[4] = \<const0> ;
  assign R[3] = \<const0> ;
  assign R[2] = \<const0> ;
  assign R[1] = \<const0> ;
  assign R[0] = \<const0> ;
  assign done = \<const0> ;
  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FP_Mult U0
       (.axi_arready_reg(s00_axi_arready),
        .axi_awready_reg(s00_axi_awready),
        .axi_rvalid_reg(s00_axi_rvalid),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[3:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[3:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top_FPMult_Test
   (fsm_done,
    SR,
    \R_final_reg[15]_0 ,
    Q,
    s00_axi_aclk,
    s00_axi_aresetn,
    \Y_sig_reg[15]_0 );
  output fsm_done;
  output [0:0]SR;
  output [15:0]\R_final_reg[15]_0 ;
  input [0:0]Q;
  input s00_axi_aclk;
  input s00_axi_aresetn;
  input [31:0]\Y_sig_reg[15]_0 ;

  wire [9:0]A;
  wire [9:0]B;
  wire [0:0]Q;
  wire \R_final[14]_i_5_n_0 ;
  wire \R_final[14]_i_7_n_0 ;
  wire [15:0]\R_final_reg[15]_0 ;
  wire [15:15]R_sig;
  wire [0:0]SR;
  wire [15:15]X;
  wire \X_sig_reg_n_0_[10] ;
  wire \X_sig_reg_n_0_[11] ;
  wire \X_sig_reg_n_0_[12] ;
  wire \X_sig_reg_n_0_[13] ;
  wire \X_sig_reg_n_0_[14] ;
  wire [15:15]Y;
  wire [31:0]\Y_sig_reg[15]_0 ;
  wire \Y_sig_reg_n_0_[10] ;
  wire \Y_sig_reg_n_0_[11] ;
  wire \Y_sig_reg_n_0_[12] ;
  wire \Y_sig_reg_n_0_[13] ;
  wire \Y_sig_reg_n_0_[14] ;
  wire [14:0]expSigPostRound;
  wire fsm_done;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;

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
       (.C(s00_axi_aclk),
        .CE(Q),
        .CLR(SR),
        .D(expSigPostRound[0]),
        .Q(\R_final_reg[15]_0 [0]));
  FDCE \R_final_reg[10] 
       (.C(s00_axi_aclk),
        .CE(Q),
        .CLR(SR),
        .D(expSigPostRound[10]),
        .Q(\R_final_reg[15]_0 [10]));
  FDCE \R_final_reg[11] 
       (.C(s00_axi_aclk),
        .CE(Q),
        .CLR(SR),
        .D(expSigPostRound[11]),
        .Q(\R_final_reg[15]_0 [11]));
  FDCE \R_final_reg[12] 
       (.C(s00_axi_aclk),
        .CE(Q),
        .CLR(SR),
        .D(expSigPostRound[12]),
        .Q(\R_final_reg[15]_0 [12]));
  FDCE \R_final_reg[13] 
       (.C(s00_axi_aclk),
        .CE(Q),
        .CLR(SR),
        .D(expSigPostRound[13]),
        .Q(\R_final_reg[15]_0 [13]));
  FDCE \R_final_reg[14] 
       (.C(s00_axi_aclk),
        .CE(Q),
        .CLR(SR),
        .D(expSigPostRound[14]),
        .Q(\R_final_reg[15]_0 [14]));
  FDCE \R_final_reg[15] 
       (.C(s00_axi_aclk),
        .CE(Q),
        .CLR(SR),
        .D(R_sig),
        .Q(\R_final_reg[15]_0 [15]));
  FDCE \R_final_reg[1] 
       (.C(s00_axi_aclk),
        .CE(Q),
        .CLR(SR),
        .D(expSigPostRound[1]),
        .Q(\R_final_reg[15]_0 [1]));
  FDCE \R_final_reg[2] 
       (.C(s00_axi_aclk),
        .CE(Q),
        .CLR(SR),
        .D(expSigPostRound[2]),
        .Q(\R_final_reg[15]_0 [2]));
  FDCE \R_final_reg[3] 
       (.C(s00_axi_aclk),
        .CE(Q),
        .CLR(SR),
        .D(expSigPostRound[3]),
        .Q(\R_final_reg[15]_0 [3]));
  FDCE \R_final_reg[4] 
       (.C(s00_axi_aclk),
        .CE(Q),
        .CLR(SR),
        .D(expSigPostRound[4]),
        .Q(\R_final_reg[15]_0 [4]));
  FDCE \R_final_reg[5] 
       (.C(s00_axi_aclk),
        .CE(Q),
        .CLR(SR),
        .D(expSigPostRound[5]),
        .Q(\R_final_reg[15]_0 [5]));
  FDCE \R_final_reg[6] 
       (.C(s00_axi_aclk),
        .CE(Q),
        .CLR(SR),
        .D(expSigPostRound[6]),
        .Q(\R_final_reg[15]_0 [6]));
  FDCE \R_final_reg[7] 
       (.C(s00_axi_aclk),
        .CE(Q),
        .CLR(SR),
        .D(expSigPostRound[7]),
        .Q(\R_final_reg[15]_0 [7]));
  FDCE \R_final_reg[8] 
       (.C(s00_axi_aclk),
        .CE(Q),
        .CLR(SR),
        .D(expSigPostRound[8]),
        .Q(\R_final_reg[15]_0 [8]));
  FDCE \R_final_reg[9] 
       (.C(s00_axi_aclk),
        .CE(Q),
        .CLR(SR),
        .D(expSigPostRound[9]),
        .Q(\R_final_reg[15]_0 [9]));
  FDCE \X_sig_reg[0] 
       (.C(s00_axi_aclk),
        .CE(Q),
        .CLR(SR),
        .D(\Y_sig_reg[15]_0 [0]),
        .Q(A[0]));
  FDCE \X_sig_reg[10] 
       (.C(s00_axi_aclk),
        .CE(Q),
        .CLR(SR),
        .D(\Y_sig_reg[15]_0 [10]),
        .Q(\X_sig_reg_n_0_[10] ));
  FDCE \X_sig_reg[11] 
       (.C(s00_axi_aclk),
        .CE(Q),
        .CLR(SR),
        .D(\Y_sig_reg[15]_0 [11]),
        .Q(\X_sig_reg_n_0_[11] ));
  FDCE \X_sig_reg[12] 
       (.C(s00_axi_aclk),
        .CE(Q),
        .CLR(SR),
        .D(\Y_sig_reg[15]_0 [12]),
        .Q(\X_sig_reg_n_0_[12] ));
  FDCE \X_sig_reg[13] 
       (.C(s00_axi_aclk),
        .CE(Q),
        .CLR(SR),
        .D(\Y_sig_reg[15]_0 [13]),
        .Q(\X_sig_reg_n_0_[13] ));
  FDCE \X_sig_reg[14] 
       (.C(s00_axi_aclk),
        .CE(Q),
        .CLR(SR),
        .D(\Y_sig_reg[15]_0 [14]),
        .Q(\X_sig_reg_n_0_[14] ));
  FDCE \X_sig_reg[15] 
       (.C(s00_axi_aclk),
        .CE(Q),
        .CLR(SR),
        .D(\Y_sig_reg[15]_0 [15]),
        .Q(X));
  FDCE \X_sig_reg[1] 
       (.C(s00_axi_aclk),
        .CE(Q),
        .CLR(SR),
        .D(\Y_sig_reg[15]_0 [1]),
        .Q(A[1]));
  FDCE \X_sig_reg[2] 
       (.C(s00_axi_aclk),
        .CE(Q),
        .CLR(SR),
        .D(\Y_sig_reg[15]_0 [2]),
        .Q(A[2]));
  FDCE \X_sig_reg[3] 
       (.C(s00_axi_aclk),
        .CE(Q),
        .CLR(SR),
        .D(\Y_sig_reg[15]_0 [3]),
        .Q(A[3]));
  FDCE \X_sig_reg[4] 
       (.C(s00_axi_aclk),
        .CE(Q),
        .CLR(SR),
        .D(\Y_sig_reg[15]_0 [4]),
        .Q(A[4]));
  FDCE \X_sig_reg[5] 
       (.C(s00_axi_aclk),
        .CE(Q),
        .CLR(SR),
        .D(\Y_sig_reg[15]_0 [5]),
        .Q(A[5]));
  FDCE \X_sig_reg[6] 
       (.C(s00_axi_aclk),
        .CE(Q),
        .CLR(SR),
        .D(\Y_sig_reg[15]_0 [6]),
        .Q(A[6]));
  FDCE \X_sig_reg[7] 
       (.C(s00_axi_aclk),
        .CE(Q),
        .CLR(SR),
        .D(\Y_sig_reg[15]_0 [7]),
        .Q(A[7]));
  FDCE \X_sig_reg[8] 
       (.C(s00_axi_aclk),
        .CE(Q),
        .CLR(SR),
        .D(\Y_sig_reg[15]_0 [8]),
        .Q(A[8]));
  FDCE \X_sig_reg[9] 
       (.C(s00_axi_aclk),
        .CE(Q),
        .CLR(SR),
        .D(\Y_sig_reg[15]_0 [9]),
        .Q(A[9]));
  FDCE \Y_sig_reg[0] 
       (.C(s00_axi_aclk),
        .CE(Q),
        .CLR(SR),
        .D(\Y_sig_reg[15]_0 [16]),
        .Q(B[0]));
  FDCE \Y_sig_reg[10] 
       (.C(s00_axi_aclk),
        .CE(Q),
        .CLR(SR),
        .D(\Y_sig_reg[15]_0 [26]),
        .Q(\Y_sig_reg_n_0_[10] ));
  FDCE \Y_sig_reg[11] 
       (.C(s00_axi_aclk),
        .CE(Q),
        .CLR(SR),
        .D(\Y_sig_reg[15]_0 [27]),
        .Q(\Y_sig_reg_n_0_[11] ));
  FDCE \Y_sig_reg[12] 
       (.C(s00_axi_aclk),
        .CE(Q),
        .CLR(SR),
        .D(\Y_sig_reg[15]_0 [28]),
        .Q(\Y_sig_reg_n_0_[12] ));
  FDCE \Y_sig_reg[13] 
       (.C(s00_axi_aclk),
        .CE(Q),
        .CLR(SR),
        .D(\Y_sig_reg[15]_0 [29]),
        .Q(\Y_sig_reg_n_0_[13] ));
  FDCE \Y_sig_reg[14] 
       (.C(s00_axi_aclk),
        .CE(Q),
        .CLR(SR),
        .D(\Y_sig_reg[15]_0 [30]),
        .Q(\Y_sig_reg_n_0_[14] ));
  FDCE \Y_sig_reg[15] 
       (.C(s00_axi_aclk),
        .CE(Q),
        .CLR(SR),
        .D(\Y_sig_reg[15]_0 [31]),
        .Q(Y));
  FDCE \Y_sig_reg[1] 
       (.C(s00_axi_aclk),
        .CE(Q),
        .CLR(SR),
        .D(\Y_sig_reg[15]_0 [17]),
        .Q(B[1]));
  FDCE \Y_sig_reg[2] 
       (.C(s00_axi_aclk),
        .CE(Q),
        .CLR(SR),
        .D(\Y_sig_reg[15]_0 [18]),
        .Q(B[2]));
  FDCE \Y_sig_reg[3] 
       (.C(s00_axi_aclk),
        .CE(Q),
        .CLR(SR),
        .D(\Y_sig_reg[15]_0 [19]),
        .Q(B[3]));
  FDCE \Y_sig_reg[4] 
       (.C(s00_axi_aclk),
        .CE(Q),
        .CLR(SR),
        .D(\Y_sig_reg[15]_0 [20]),
        .Q(B[4]));
  FDCE \Y_sig_reg[5] 
       (.C(s00_axi_aclk),
        .CE(Q),
        .CLR(SR),
        .D(\Y_sig_reg[15]_0 [21]),
        .Q(B[5]));
  FDCE \Y_sig_reg[6] 
       (.C(s00_axi_aclk),
        .CE(Q),
        .CLR(SR),
        .D(\Y_sig_reg[15]_0 [22]),
        .Q(B[6]));
  FDCE \Y_sig_reg[7] 
       (.C(s00_axi_aclk),
        .CE(Q),
        .CLR(SR),
        .D(\Y_sig_reg[15]_0 [23]),
        .Q(B[7]));
  FDCE \Y_sig_reg[8] 
       (.C(s00_axi_aclk),
        .CE(Q),
        .CLR(SR),
        .D(\Y_sig_reg[15]_0 [24]),
        .Q(B[8]));
  FDCE \Y_sig_reg[9] 
       (.C(s00_axi_aclk),
        .CE(Q),
        .CLR(SR),
        .D(\Y_sig_reg[15]_0 [25]),
        .Q(B[9]));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(SR));
  FDCE fsm_done_reg
       (.C(s00_axi_aclk),
        .CE(Q),
        .CLR(SR),
        .D(1'b1),
        .Q(fsm_done));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FPMult16 uut
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
