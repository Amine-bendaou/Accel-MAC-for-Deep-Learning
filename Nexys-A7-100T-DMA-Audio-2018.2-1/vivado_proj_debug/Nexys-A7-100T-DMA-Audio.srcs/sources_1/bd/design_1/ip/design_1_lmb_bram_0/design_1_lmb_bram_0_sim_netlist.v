// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Tue Sep 16 09:06:37 2025
// Host        : OASIS2 running 64-bit Ubuntu 24.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/intern/Downloads/Nexys-A7-100T-DMA-Audio-2018.2-1/vivado_proj_debug/Nexys-A7-100T-DMA-Audio.srcs/sources_1/bd/design_1/ip/design_1_lmb_bram_0/design_1_lmb_bram_0_sim_netlist.v
// Design      : design_1_lmb_bram_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_lmb_bram_0,blk_mem_gen_v8_4_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_11,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module design_1_lmb_bram_0
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
  design_1_lmb_bram_0_blk_mem_gen_v8_4_11 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 61216)
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
