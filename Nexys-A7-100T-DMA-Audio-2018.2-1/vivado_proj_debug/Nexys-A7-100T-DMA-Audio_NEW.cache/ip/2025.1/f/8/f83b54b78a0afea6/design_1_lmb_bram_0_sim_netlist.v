// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Thu Sep 18 16:45:35 2025
// Host        : OASIS2 running 64-bit Ubuntu 24.04.2 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_lmb_bram_0_sim_netlist.v
// Design      : design_1_lmb_bram_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_lmb_bram_0,blk_mem_gen_v8_4_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_11,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    rsta,
    ena,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    web,
    addrb,
    dinb,
    doutb,
    rsta_busy,
    rstb_busy);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [31:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_mode = "slave BRAM_PORTB" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB RST" *) input rstb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [3:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [31:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [31:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;
  output rsta_busy;
  output rstb_busy;

  wire [31:0]addra;
  wire [31:0]addrb;
  wire clka;
  wire clkb;
  wire [31:0]dina;
  wire [31:0]dinb;
  wire [31:0]douta;
  wire [31:0]doutb;
  wire ena;
  wire enb;
  wire rsta;
  wire rsta_busy;
  wire rstb;
  wire rstb_busy;
  wire [3:0]wea;
  wire [3:0]web;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "32" *) 
  (* C_ADDRB_WIDTH = "32" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "1" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     10.7492 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "1" *) 
  (* C_HAS_RSTB = "1" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "design_1_lmb_bram_0.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2048" *) 
  (* C_READ_DEPTH_B = "2048" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "1" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "2048" *) 
  (* C_WRITE_DEPTH_B = "2048" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_11 U0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra[12:2],1'b0,1'b0}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addrb[12:2],1'b0,1'b0}),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[31:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(rsta),
        .rsta_busy(rsta_busy),
        .rstb(rstb),
        .rstb_busy(rstb_busy),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[31:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
gydSV72FvW4hnoyUt6yZFJHfJqjRQWPUfYIuDKP0fpjrPOkLRbJGBr4Z9msYTvoIHRlYtXJ2YMY0
d1TIQb+FK4gKsTRru9wr397OxuFBsTRf4e+ZjpYZEdsnqYWcgMSzhN4yhPvO06GyZO15y/LKBxa8
3OKwxVlOLYXhv+sxdXg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
WHB6Zbfa5Qi47krP9T4L8UnPOlr881dWx7UcYaZfNGIQQM0gadcoXbhucIpRaUuyOKxv6yhKveRN
h0l+N9+KX6rbZ6+TRhP9JAMuPhlpI7T42QtRv5zx9+m3ct5S0NMszbFaK8zeTAYra5BGP7BHmtkr
MpKfLK5sFyaTE/A7ACtAace9MwFTHDZdl9uUs4aY6KJlm6GaypKduiqkNugukJp5vlFPX/ZapJqG
KMtMhI6grhcuYb1FJrwRZ4jW7hs9HxddSdGLzsZ0HsBcO/qaCPTst+ZA0YIQfd5ULlFmPqq39FfO
p1P+2hEH2n+LycbMj5cn4Dxfqv2R8eucM78R3w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
SmAzQA1VEuJXtJi5vXa2Jg7YvRqAJs6PX9HTZ1YqrJw4VfonBW3726gJ81BjlizpMkcf/Uk5sFIK
aPedVhEs4xCIZylz7gXYDshtytOA/pXUID2qV9nXr8qfI+FydSADUF3ScYDZmlkclFqlZrGq6DQ7
da3lJAzt2h/iR+cczrA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
iAph5JWb/chMQpLPX1UoLjQDxN5l2I8McM/k2xN5wRht7HXoE6F5yV8luDjn3zkI6vnfUYo7BaI1
mogRRx+R3XcwxvhHr+lngh4+/YLVex1TFncl+kiUMAsu3M/FjFSiqGMVMdKTNLDqr35DuZJVyuiF
lTwXob/KkbQDJiJjBEoxbt+968rKRKRyJGcqIjm4mqRBdqMcgo3HOJFG74SFsWAQrxvXfBhdLSG3
OfoLfls9XDojBjp7G83k0h82g1eeWgBfydm/OcX9o48Pst93NvI4ua8WShZL8MCvRWYqWZrrjrWi
cfUjXAF5SDACjq1/OU6arz/Idz6/a7AP/jmexw==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BY49GZBxBT/gjZDPyaSWlti/sctckoR7jK6NuWdhnF9tiyNfVU7BqjjwxSnyMi0Uucv1BKHXC18h
8hQbFWnNtrq71ilURotXux7sssHlVJ2i1CsJWU18DOcBWxm2ai89uwvxDJh3TJkBJixB5KPvsDhL
lWOjTvZWPoR+Ixy+Tzo+U5Vx7z7SOakRwTrn3u7+c3vmCEBphE+HKeJExhBAoOEd0SXK5iwXaByW
D7Wb7zq6NNUmnCyaJ2BG9kGxLVsf+md7SlocuaFsYyaRZhwPyTucxIlz1tLYwcytKzx0ovoax3no
nYgzlzP/F0/PDWk9BqXgr/tuclc4EZYX0cf4ng==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qGnCvL35qO7cbUEKCL50yDv1UvezcqBz601zctKop1954QlcjemzZWZHg1zJ00nJaToNdH2S8AKX
n8hNJvbQ+x5HEGL5DoSU9m5qjXd8xxocnZ0yzuZX/dGCT8kDn3gWJR2Gz13pT+w2LQUno1fX+MsC
ehgwvjBBT6GeYjdxHi+aybQUP9AblSxX/z3vh857SGCPohEWvghOgORCHAe45YD+ZWnL62FLxMM2
c+Ozq/Au/Q4q1Yzlzcfv8Mnsvg7OqOeEamQHbuYOfdkJUuYqOwsskEWW348u7FXtsf8m7P3pZyyz
IWyTDAW4igGguMPLHfbtK/twZx8ScJQmOKzglg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hz+6K8+wh5/fukU4ZWNDXGsq6hreSVCSPP67nA6kUz9Vpjy4TtTnOrrl1BWY0ivEC7Ldyw8VI60A
VO/WPlt409LdAZdMZGsEZ1JuTZ0m9LPcgu9CPCyoMECctmd8LHE+otY6etTmYABB9syY61rk2hrv
RgbcyT/HCK9TzWxSm+XMqvx2nvagCLkMDPh/JZv51fj2zcKaBPnxsz8rnDipaeo0fEyVRC3Y1F/V
U3RmXojBjIumPHSJkQ537dENJEIA0Ra65u8EM/+ItUn1bcryLcIbKy1xGadrHmHdHRUoRcAodO2C
B48bNVeL0VnGg8P9ACIB04lMNzn5p6A1tPOb4Q==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
YDpb+UeT0rJ543Q8wCo2xSS3gpVAT+JoStgBlV5IMjJoUOWkiOPn691FGChmDi3BTq5NxC73KHHR
1galACCjeTGq6cv+0Zc2Ocm1oobdrnSPHp7TMDr5Zle8FX6WywJCiGdoWBODggZSlbOASIK/PVfY
cZM2z60M6RSvzsi3TnYHiKYHpju8THVoSgRd6r31GcbiSy9TjjARERXan0OVc79jGuAg90mmDEEq
91eqmn6NZ9yLI2fgBjFUZbtFCpmJ8WGxOL1h39niWnRK3ZXnk8jcpnZUlxLbYTPO0Z3vVr1zrvcn
RVQloU0OLqg7M95zSs7NtX5Vzvb6jGbMehWV+WMMyxWmxL2XOwsAwPSeX2dI2r77pioY7X6VzH7f
/JxMAnq9udra3WGPsUkD1G0CvPkCC3zdxjpVaflY37ztX9UONhKtzMQa8lJc1IL8GhXRY3R9Lg2c
HIeXSGkpNNuFDqKT6Khe/6Casq+SjFJq+IH9IUtz6RUZTkbFb0Xhgm2P

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Q+63zFEYw/LeMgxa7g8g79GGvSyIKDKD8RvvC4DHDQuGObf6n9OGZX4e17v/E/+EDEwUhsWQHFDI
Lp/aH+6fNRmhu9BEWVjxq2WRrQSl4eQjfIaSOXu2dlYh3JjRJwiUp4LteVh8RFAf5t5sRQO4dRIK
x+h28yliSgibaWEAv5FaJQ1EFbNwmgedAaSYjgf2A3afBUcBh5Uy9VHbW/zRzdhhJdsVNBjZYcFy
CVLOcf1toCRp8J4U5FlnFMOzFegUbdXFQhq2VmIhPRxWjrfTk6iR4BcMEN9UMij/5IHRAeBdksyD
CqEKsyFxosbI5KVMRZ1Ln75Zipn0JdsGekHkxg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DPUa5DLPYRWvbPnX0U412yoWvvvHyuq43DrYmDJGTK0cR5U4U6th8icYgizC1/hUAEzt19kM/hVa
zZh7bXSWACYLpcfhPY8dRTVGDZVjpbkraw0ceBryLP7jc6Jt5JdNw88tZtZpprCB7nQ25lUL82Hf
WTwL1ZqgGIvtfHhxO0JF5L5ES5giedwQ6u5ffXG3UB6ELcpQD1NvpW5lAz4mfXyvVDCAPZN581TF
tlAy79iKbPKlJ2zFn1BS2cuRIHHe2JRxwPo+0n5VD5CXVgg+lCYxTnCxI8CdyFaTumbs4IfAKwVI
wSN/btbwDUhW9hAHWHIRo+BpdJ4qeGcTDPKtsA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mf5hcf6JE6yLm0jNCQnHMVmogjLlPz6re0FwG67yvOJ3FuEorru0emIeAKEwgOoxjUYNWvcM7QAH
/UEeB2EIdjLl6glPAUda0HjtaCU2rdncVdM8k6DSMBggc4yo18Qx5F+1TD/RoBgoo0jNkMdDy6wJ
JHjqlN+R01z3yYIMQ9f2z6ZaYncbBYEp4+YAb7g1D7CSMxP5cFRpQznRpYp0JwqJfT9CHzlKgdab
8B288NxeLM66iYodiTS+GSRGLGtDWXpz9yeiuiPe6kJxae2GJyHIMSfluO/0Slc3m24DQNdbojf8
jdc0G2UnrDe5mCUTfYiDmpOWTUJOdYo0FK0N2g==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 61248)
`pragma protect data_block
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
`pragma protect end_protected
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
