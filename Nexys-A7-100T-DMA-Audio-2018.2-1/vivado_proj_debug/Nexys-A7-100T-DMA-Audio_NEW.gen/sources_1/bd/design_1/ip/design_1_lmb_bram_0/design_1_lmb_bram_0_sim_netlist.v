// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Thu Sep 18 16:45:36 2025
// Host        : OASIS2 running 64-bit Ubuntu 24.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/intern/Downloads/Nexys-A7-100T-DMA-Audio-2018.2-1/vivado_proj_debug/Nexys-A7-100T-DMA-Audio_NEW.gen/sources_1/bd/design_1/ip/design_1_lmb_bram_0/design_1_lmb_bram_0_sim_netlist.v
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
