-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
-- Date        : Fri Sep 19 15:34:49 2025
-- Host        : OASIS2 running 64-bit Ubuntu 24.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/intern/Downloads/Nexys-A7-100T-DMA-Audio-2018.2-1/vivado_proj_debug/Nexys-A7-100T-DMA-Audio_NEW.gen/sources_1/bd/design_1/ip/design_1_FP_Mult_0_0/design_1_FP_Mult_0_0_sim_netlist.vhdl
-- Design      : design_1_FP_Mult_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_FP_Mult_0_0_IntMultiplier_11x11_22_Freq100_uid5 is
  port (
    D : out STD_LOGIC_VECTOR ( 14 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 14 downto 0 );
    \R_final_reg[14]\ : in STD_LOGIC_VECTOR ( 14 downto 0 );
    \R_final_reg[14]_0\ : in STD_LOGIC;
    \R_final_reg[14]_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_FP_Mult_0_0_IntMultiplier_11x11_22_Freq100_uid5 : entity is "IntMultiplier_11x11_22_Freq100_uid5";
end design_1_FP_Mult_0_0_IntMultiplier_11x11_22_Freq100_uid5;

architecture STRUCTURE of design_1_FP_Mult_0_0_IntMultiplier_11x11_22_Freq100_uid5 is
  signal \RR__0\ : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal \R_final[11]_i_2_n_0\ : STD_LOGIC;
  signal \R_final[11]_i_3_n_0\ : STD_LOGIC;
  signal \R_final[11]_i_4_n_0\ : STD_LOGIC;
  signal \R_final[11]_i_5_n_0\ : STD_LOGIC;
  signal \R_final[14]_i_2_n_0\ : STD_LOGIC;
  signal \R_final[14]_i_3_n_0\ : STD_LOGIC;
  signal \R_final[14]_i_4_n_0\ : STD_LOGIC;
  signal \R_final[14]_i_6_n_0\ : STD_LOGIC;
  signal \R_final[3]_i_10_n_0\ : STD_LOGIC;
  signal \R_final[3]_i_11_n_0\ : STD_LOGIC;
  signal \R_final[3]_i_3_n_0\ : STD_LOGIC;
  signal \R_final[3]_i_4_n_0\ : STD_LOGIC;
  signal \R_final[3]_i_5_n_0\ : STD_LOGIC;
  signal \R_final[3]_i_6_n_0\ : STD_LOGIC;
  signal \R_final[3]_i_7_n_0\ : STD_LOGIC;
  signal \R_final[3]_i_8_n_0\ : STD_LOGIC;
  signal \R_final[3]_i_9_n_0\ : STD_LOGIC;
  signal \R_final[7]_i_2_n_0\ : STD_LOGIC;
  signal \R_final[7]_i_3_n_0\ : STD_LOGIC;
  signal \R_final[7]_i_4_n_0\ : STD_LOGIC;
  signal \R_final[7]_i_5_n_0\ : STD_LOGIC;
  signal \R_final_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \R_final_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \R_final_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \R_final_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \R_final_reg[14]_i_1_n_2\ : STD_LOGIC;
  signal \R_final_reg[14]_i_1_n_3\ : STD_LOGIC;
  signal \R_final_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \R_final_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \R_final_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \R_final_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \R_final_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \R_final_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \R_final_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \R_final_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal NLW_RR_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_RR_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_RR_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_RR_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_RR_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_RR_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_RR_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_RR_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_RR_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_RR_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 22 );
  signal NLW_RR_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_R_final_reg[14]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_R_final_reg[14]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of RR : label is "{SYNTH-13 {cell *THIS*}}";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \R_final[3]_i_10\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \R_final[3]_i_7\ : label is "soft_lutpair0";
begin
RR: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 10) => B"00000000000000000001",
      A(9 downto 0) => \R_final_reg[14]\(9 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_RR_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 10) => B"00000001",
      B(9 downto 0) => Q(9 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_RR_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_RR_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_RR_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => '0',
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_RR_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_RR_OVERFLOW_UNCONNECTED,
      P(47 downto 22) => NLW_RR_P_UNCONNECTED(47 downto 22),
      P(21 downto 0) => \RR__0\(21 downto 0),
      PATTERNBDETECT => NLW_RR_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_RR_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_RR_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_RR_UNDERFLOW_UNCONNECTED
    );
\R_final[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69C3C396"
    )
        port map (
      I0 => \R_final_reg[14]\(10),
      I1 => \R_final_reg[14]\(11),
      I2 => Q(11),
      I3 => \RR__0\(21),
      I4 => Q(10),
      O => \R_final[11]_i_2_n_0\
    );
\R_final[11]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \RR__0\(21),
      I1 => Q(10),
      I2 => \R_final_reg[14]\(10),
      O => \R_final[11]_i_3_n_0\
    );
\R_final[11]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \RR__0\(20),
      I1 => \RR__0\(21),
      I2 => \RR__0\(19),
      O => \R_final[11]_i_4_n_0\
    );
\R_final[11]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \RR__0\(19),
      I1 => \RR__0\(21),
      I2 => \RR__0\(18),
      O => \R_final[11]_i_5_n_0\
    );
\R_final[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4BB42DD22DD2B44B"
    )
        port map (
      I0 => \R_final_reg[14]_0\,
      I1 => \R_final[14]_i_6_n_0\,
      I2 => \R_final_reg[14]\(14),
      I3 => Q(14),
      I4 => \R_final_reg[14]\(13),
      I5 => Q(13),
      O => \R_final[14]_i_2_n_0\
    );
\R_final[14]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969696"
    )
        port map (
      I0 => \R_final[14]_i_6_n_0\,
      I1 => \R_final_reg[14]\(13),
      I2 => Q(13),
      I3 => \R_final_reg[14]\(12),
      I4 => Q(12),
      O => \R_final[14]_i_3_n_0\
    );
\R_final[14]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"807F01FE01FE7F80"
    )
        port map (
      I0 => Q(10),
      I1 => \RR__0\(21),
      I2 => \R_final_reg[14]\(10),
      I3 => \R_final_reg[14]_1\,
      I4 => \R_final_reg[14]\(11),
      I5 => Q(11),
      O => \R_final[14]_i_4_n_0\
    );
\R_final[14]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFE8080000000"
    )
        port map (
      I0 => Q(10),
      I1 => \RR__0\(21),
      I2 => \R_final_reg[14]\(10),
      I3 => \R_final_reg[14]\(11),
      I4 => Q(11),
      I5 => \R_final_reg[14]_1\,
      O => \R_final[14]_i_6_n_0\
    );
\R_final[3]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEEE"
    )
        port map (
      I0 => \RR__0\(8),
      I1 => \RR__0\(6),
      I2 => \RR__0\(21),
      I3 => \RR__0\(9),
      O => \R_final[3]_i_10_n_0\
    );
\R_final[3]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \RR__0\(21),
      I1 => \RR__0\(10),
      O => \R_final[3]_i_11_n_0\
    );
\R_final[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \RR__0\(11),
      I1 => \RR__0\(21),
      I2 => \RR__0\(10),
      O => p_0_in
    );
\R_final[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \RR__0\(14),
      I1 => \RR__0\(21),
      I2 => \RR__0\(13),
      O => \R_final[3]_i_3_n_0\
    );
\R_final[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \RR__0\(13),
      I1 => \RR__0\(21),
      I2 => \RR__0\(12),
      O => \R_final[3]_i_4_n_0\
    );
\R_final[3]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \RR__0\(12),
      I1 => \RR__0\(21),
      I2 => \RR__0\(11),
      O => \R_final[3]_i_5_n_0\
    );
\R_final[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555A6666666A"
    )
        port map (
      I0 => p_0_in,
      I1 => \R_final[3]_i_7_n_0\,
      I2 => \R_final[3]_i_8_n_0\,
      I3 => \R_final[3]_i_9_n_0\,
      I4 => \R_final[3]_i_10_n_0\,
      I5 => \R_final[3]_i_11_n_0\,
      O => \R_final[3]_i_6_n_0\
    );
\R_final[3]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \RR__0\(9),
      I1 => \RR__0\(21),
      O => \R_final[3]_i_7_n_0\
    );
\R_final[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEFFFEEE"
    )
        port map (
      I0 => \RR__0\(5),
      I1 => \RR__0\(4),
      I2 => \RR__0\(11),
      I3 => \RR__0\(21),
      I4 => \RR__0\(10),
      I5 => \RR__0\(7),
      O => \R_final[3]_i_8_n_0\
    );
\R_final[3]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \RR__0\(1),
      I1 => \RR__0\(0),
      I2 => \RR__0\(3),
      I3 => \RR__0\(2),
      O => \R_final[3]_i_9_n_0\
    );
\R_final[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \RR__0\(18),
      I1 => \RR__0\(21),
      I2 => \RR__0\(17),
      O => \R_final[7]_i_2_n_0\
    );
\R_final[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \RR__0\(17),
      I1 => \RR__0\(21),
      I2 => \RR__0\(16),
      O => \R_final[7]_i_3_n_0\
    );
\R_final[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \RR__0\(16),
      I1 => \RR__0\(21),
      I2 => \RR__0\(15),
      O => \R_final[7]_i_4_n_0\
    );
\R_final[7]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \RR__0\(15),
      I1 => \RR__0\(21),
      I2 => \RR__0\(14),
      O => \R_final[7]_i_5_n_0\
    );
\R_final_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \R_final_reg[7]_i_1_n_0\,
      CO(3) => \R_final_reg[11]_i_1_n_0\,
      CO(2) => \R_final_reg[11]_i_1_n_1\,
      CO(1) => \R_final_reg[11]_i_1_n_2\,
      CO(0) => \R_final_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => D(11 downto 8),
      S(3) => \R_final[11]_i_2_n_0\,
      S(2) => \R_final[11]_i_3_n_0\,
      S(1) => \R_final[11]_i_4_n_0\,
      S(0) => \R_final[11]_i_5_n_0\
    );
\R_final_reg[14]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \R_final_reg[11]_i_1_n_0\,
      CO(3 downto 2) => \NLW_R_final_reg[14]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \R_final_reg[14]_i_1_n_2\,
      CO(0) => \R_final_reg[14]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_R_final_reg[14]_i_1_O_UNCONNECTED\(3),
      O(2 downto 0) => D(14 downto 12),
      S(3) => '0',
      S(2) => \R_final[14]_i_2_n_0\,
      S(1) => \R_final[14]_i_3_n_0\,
      S(0) => \R_final[14]_i_4_n_0\
    );
\R_final_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \R_final_reg[3]_i_1_n_0\,
      CO(2) => \R_final_reg[3]_i_1_n_1\,
      CO(1) => \R_final_reg[3]_i_1_n_2\,
      CO(0) => \R_final_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => p_0_in,
      O(3 downto 0) => D(3 downto 0),
      S(3) => \R_final[3]_i_3_n_0\,
      S(2) => \R_final[3]_i_4_n_0\,
      S(1) => \R_final[3]_i_5_n_0\,
      S(0) => \R_final[3]_i_6_n_0\
    );
\R_final_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \R_final_reg[3]_i_1_n_0\,
      CO(3) => \R_final_reg[7]_i_1_n_0\,
      CO(2) => \R_final_reg[7]_i_1_n_1\,
      CO(1) => \R_final_reg[7]_i_1_n_2\,
      CO(0) => \R_final_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => D(7 downto 4),
      S(3) => \R_final[7]_i_2_n_0\,
      S(2) => \R_final[7]_i_3_n_0\,
      S(1) => \R_final[7]_i_4_n_0\,
      S(0) => \R_final[7]_i_5_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_FP_Mult_0_0_FPMult16 is
  port (
    D : out STD_LOGIC_VECTOR ( 14 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 14 downto 0 );
    \R_final_reg[14]\ : in STD_LOGIC_VECTOR ( 14 downto 0 );
    \R_final_reg[14]_0\ : in STD_LOGIC;
    \R_final_reg[14]_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_FP_Mult_0_0_FPMult16 : entity is "FPMult16";
end design_1_FP_Mult_0_0_FPMult16;

architecture STRUCTURE of design_1_FP_Mult_0_0_FPMult16 is
begin
SignificandMultiplication: entity work.design_1_FP_Mult_0_0_IntMultiplier_11x11_22_Freq100_uid5
     port map (
      D(14 downto 0) => D(14 downto 0),
      Q(14 downto 0) => Q(14 downto 0),
      \R_final_reg[14]\(14 downto 0) => \R_final_reg[14]\(14 downto 0),
      \R_final_reg[14]_0\ => \R_final_reg[14]_0\,
      \R_final_reg[14]_1\ => \R_final_reg[14]_1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_FP_Mult_0_0_top_FPMult_Test is
  port (
    fsm_done : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \R_final_reg[15]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    \Y_sig_reg[15]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_FP_Mult_0_0_top_FPMult_Test : entity is "top_FPMult_Test";
end design_1_FP_Mult_0_0_top_FPMult_Test;

architecture STRUCTURE of design_1_FP_Mult_0_0_top_FPMult_Test is
  signal A : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal B : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \R_final[14]_i_5_n_0\ : STD_LOGIC;
  signal \R_final[14]_i_7_n_0\ : STD_LOGIC;
  signal R_sig : STD_LOGIC_VECTOR ( 15 to 15 );
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal X : STD_LOGIC_VECTOR ( 15 to 15 );
  signal \X_sig_reg_n_0_[10]\ : STD_LOGIC;
  signal \X_sig_reg_n_0_[11]\ : STD_LOGIC;
  signal \X_sig_reg_n_0_[12]\ : STD_LOGIC;
  signal \X_sig_reg_n_0_[13]\ : STD_LOGIC;
  signal \X_sig_reg_n_0_[14]\ : STD_LOGIC;
  signal Y : STD_LOGIC_VECTOR ( 15 to 15 );
  signal \Y_sig_reg_n_0_[10]\ : STD_LOGIC;
  signal \Y_sig_reg_n_0_[11]\ : STD_LOGIC;
  signal \Y_sig_reg_n_0_[12]\ : STD_LOGIC;
  signal \Y_sig_reg_n_0_[13]\ : STD_LOGIC;
  signal \Y_sig_reg_n_0_[14]\ : STD_LOGIC;
  signal expSigPostRound : STD_LOGIC_VECTOR ( 14 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \R_final[14]_i_5\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \R_final[14]_i_7\ : label is "soft_lutpair1";
begin
  SR(0) <= \^sr\(0);
\R_final[14]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \X_sig_reg_n_0_[12]\,
      I1 => \Y_sig_reg_n_0_[12]\,
      O => \R_final[14]_i_5_n_0\
    );
\R_final[14]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \X_sig_reg_n_0_[12]\,
      I1 => \Y_sig_reg_n_0_[12]\,
      O => \R_final[14]_i_7_n_0\
    );
\R_final[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Y(15),
      I1 => X(15),
      O => R_sig(15)
    );
\R_final_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      CLR => \^sr\(0),
      D => expSigPostRound(0),
      Q => \R_final_reg[15]_0\(0)
    );
\R_final_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      CLR => \^sr\(0),
      D => expSigPostRound(10),
      Q => \R_final_reg[15]_0\(10)
    );
\R_final_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      CLR => \^sr\(0),
      D => expSigPostRound(11),
      Q => \R_final_reg[15]_0\(11)
    );
\R_final_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      CLR => \^sr\(0),
      D => expSigPostRound(12),
      Q => \R_final_reg[15]_0\(12)
    );
\R_final_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      CLR => \^sr\(0),
      D => expSigPostRound(13),
      Q => \R_final_reg[15]_0\(13)
    );
\R_final_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      CLR => \^sr\(0),
      D => expSigPostRound(14),
      Q => \R_final_reg[15]_0\(14)
    );
\R_final_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      CLR => \^sr\(0),
      D => R_sig(15),
      Q => \R_final_reg[15]_0\(15)
    );
\R_final_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      CLR => \^sr\(0),
      D => expSigPostRound(1),
      Q => \R_final_reg[15]_0\(1)
    );
\R_final_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      CLR => \^sr\(0),
      D => expSigPostRound(2),
      Q => \R_final_reg[15]_0\(2)
    );
\R_final_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      CLR => \^sr\(0),
      D => expSigPostRound(3),
      Q => \R_final_reg[15]_0\(3)
    );
\R_final_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      CLR => \^sr\(0),
      D => expSigPostRound(4),
      Q => \R_final_reg[15]_0\(4)
    );
\R_final_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      CLR => \^sr\(0),
      D => expSigPostRound(5),
      Q => \R_final_reg[15]_0\(5)
    );
\R_final_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      CLR => \^sr\(0),
      D => expSigPostRound(6),
      Q => \R_final_reg[15]_0\(6)
    );
\R_final_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      CLR => \^sr\(0),
      D => expSigPostRound(7),
      Q => \R_final_reg[15]_0\(7)
    );
\R_final_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      CLR => \^sr\(0),
      D => expSigPostRound(8),
      Q => \R_final_reg[15]_0\(8)
    );
\R_final_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      CLR => \^sr\(0),
      D => expSigPostRound(9),
      Q => \R_final_reg[15]_0\(9)
    );
\X_sig_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      CLR => \^sr\(0),
      D => \Y_sig_reg[15]_0\(0),
      Q => A(0)
    );
\X_sig_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      CLR => \^sr\(0),
      D => \Y_sig_reg[15]_0\(10),
      Q => \X_sig_reg_n_0_[10]\
    );
\X_sig_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      CLR => \^sr\(0),
      D => \Y_sig_reg[15]_0\(11),
      Q => \X_sig_reg_n_0_[11]\
    );
\X_sig_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      CLR => \^sr\(0),
      D => \Y_sig_reg[15]_0\(12),
      Q => \X_sig_reg_n_0_[12]\
    );
\X_sig_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      CLR => \^sr\(0),
      D => \Y_sig_reg[15]_0\(13),
      Q => \X_sig_reg_n_0_[13]\
    );
\X_sig_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      CLR => \^sr\(0),
      D => \Y_sig_reg[15]_0\(14),
      Q => \X_sig_reg_n_0_[14]\
    );
\X_sig_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      CLR => \^sr\(0),
      D => \Y_sig_reg[15]_0\(15),
      Q => X(15)
    );
\X_sig_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      CLR => \^sr\(0),
      D => \Y_sig_reg[15]_0\(1),
      Q => A(1)
    );
\X_sig_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      CLR => \^sr\(0),
      D => \Y_sig_reg[15]_0\(2),
      Q => A(2)
    );
\X_sig_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      CLR => \^sr\(0),
      D => \Y_sig_reg[15]_0\(3),
      Q => A(3)
    );
\X_sig_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      CLR => \^sr\(0),
      D => \Y_sig_reg[15]_0\(4),
      Q => A(4)
    );
\X_sig_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      CLR => \^sr\(0),
      D => \Y_sig_reg[15]_0\(5),
      Q => A(5)
    );
\X_sig_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      CLR => \^sr\(0),
      D => \Y_sig_reg[15]_0\(6),
      Q => A(6)
    );
\X_sig_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      CLR => \^sr\(0),
      D => \Y_sig_reg[15]_0\(7),
      Q => A(7)
    );
\X_sig_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      CLR => \^sr\(0),
      D => \Y_sig_reg[15]_0\(8),
      Q => A(8)
    );
\X_sig_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      CLR => \^sr\(0),
      D => \Y_sig_reg[15]_0\(9),
      Q => A(9)
    );
\Y_sig_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      CLR => \^sr\(0),
      D => \Y_sig_reg[15]_0\(16),
      Q => B(0)
    );
\Y_sig_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      CLR => \^sr\(0),
      D => \Y_sig_reg[15]_0\(26),
      Q => \Y_sig_reg_n_0_[10]\
    );
\Y_sig_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      CLR => \^sr\(0),
      D => \Y_sig_reg[15]_0\(27),
      Q => \Y_sig_reg_n_0_[11]\
    );
\Y_sig_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      CLR => \^sr\(0),
      D => \Y_sig_reg[15]_0\(28),
      Q => \Y_sig_reg_n_0_[12]\
    );
\Y_sig_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      CLR => \^sr\(0),
      D => \Y_sig_reg[15]_0\(29),
      Q => \Y_sig_reg_n_0_[13]\
    );
\Y_sig_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      CLR => \^sr\(0),
      D => \Y_sig_reg[15]_0\(30),
      Q => \Y_sig_reg_n_0_[14]\
    );
\Y_sig_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      CLR => \^sr\(0),
      D => \Y_sig_reg[15]_0\(31),
      Q => Y(15)
    );
\Y_sig_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      CLR => \^sr\(0),
      D => \Y_sig_reg[15]_0\(17),
      Q => B(1)
    );
\Y_sig_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      CLR => \^sr\(0),
      D => \Y_sig_reg[15]_0\(18),
      Q => B(2)
    );
\Y_sig_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      CLR => \^sr\(0),
      D => \Y_sig_reg[15]_0\(19),
      Q => B(3)
    );
\Y_sig_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      CLR => \^sr\(0),
      D => \Y_sig_reg[15]_0\(20),
      Q => B(4)
    );
\Y_sig_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      CLR => \^sr\(0),
      D => \Y_sig_reg[15]_0\(21),
      Q => B(5)
    );
\Y_sig_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      CLR => \^sr\(0),
      D => \Y_sig_reg[15]_0\(22),
      Q => B(6)
    );
\Y_sig_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      CLR => \^sr\(0),
      D => \Y_sig_reg[15]_0\(23),
      Q => B(7)
    );
\Y_sig_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      CLR => \^sr\(0),
      D => \Y_sig_reg[15]_0\(24),
      Q => B(8)
    );
\Y_sig_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      CLR => \^sr\(0),
      D => \Y_sig_reg[15]_0\(25),
      Q => B(9)
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => \^sr\(0)
    );
fsm_done_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      CLR => \^sr\(0),
      D => '1',
      Q => fsm_done
    );
uut: entity work.design_1_FP_Mult_0_0_FPMult16
     port map (
      D(14 downto 0) => expSigPostRound(14 downto 0),
      Q(14) => \Y_sig_reg_n_0_[14]\,
      Q(13) => \Y_sig_reg_n_0_[13]\,
      Q(12) => \Y_sig_reg_n_0_[12]\,
      Q(11) => \Y_sig_reg_n_0_[11]\,
      Q(10) => \Y_sig_reg_n_0_[10]\,
      Q(9 downto 0) => B(9 downto 0),
      \R_final_reg[14]\(14) => \X_sig_reg_n_0_[14]\,
      \R_final_reg[14]\(13) => \X_sig_reg_n_0_[13]\,
      \R_final_reg[14]\(12) => \X_sig_reg_n_0_[12]\,
      \R_final_reg[14]\(11) => \X_sig_reg_n_0_[11]\,
      \R_final_reg[14]\(10) => \X_sig_reg_n_0_[10]\,
      \R_final_reg[14]\(9 downto 0) => A(9 downto 0),
      \R_final_reg[14]_0\ => \R_final[14]_i_5_n_0\,
      \R_final_reg[14]_1\ => \R_final[14]_i_7_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_FP_Mult_0_0_FP_Mult_slave_lite_v1_0_S00_AXI is
  port (
    axi_awready_reg_0 : out STD_LOGIC;
    axi_arready_reg_0 : out STD_LOGIC;
    axi_rvalid_reg_0 : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bready : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_FP_Mult_0_0_FP_Mult_slave_lite_v1_0_S00_AXI : entity is "FP_Mult_slave_lite_v1_0_S00_AXI";
end design_1_FP_Mult_0_0_FP_Mult_slave_lite_v1_0_S00_AXI;

architecture STRUCTURE of design_1_FP_Mult_0_0_FP_Mult_slave_lite_v1_0_S00_AXI is
  signal \FSM_onehot_state_write[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_write[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_write_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_state_write_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_sequential_state_read[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_read[1]_i_1_n_0\ : STD_LOGIC;
  signal X_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Y_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_araddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_arready0__0\ : STD_LOGIC;
  signal axi_arready_i_1_n_0 : STD_LOGIC;
  signal \^axi_arready_reg_0\ : STD_LOGIC;
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[2]\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[3]\ : STD_LOGIC;
  signal axi_awready_i_2_n_0 : STD_LOGIC;
  signal \^axi_awready_reg_0\ : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_bvalid_i_2_n_0 : STD_LOGIC;
  signal axi_bvalid_i_3_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal \^axi_rvalid_reg_0\ : STD_LOGIC;
  signal axi_wready : STD_LOGIC;
  signal axi_wready_i_1_n_0 : STD_LOGIC;
  signal fsm_done : STD_LOGIC;
  signal \mem_logic__1\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal my_fp_mult_n_1 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_wready\ : STD_LOGIC;
  signal slv_reg1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg1[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg3 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal state_read : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_write_reg[0]\ : label is "idle:001,wdata:100,waddr:010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_write_reg[1]\ : label is "idle:001,wdata:100,waddr:010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_write_reg[2]\ : label is "idle:001,wdata:100,waddr:010";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_read_reg[0]\ : label is "idle:00,rdata:10,raddr:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_read_reg[1]\ : label is "idle:00,rdata:10,raddr:01";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \slv_reg1[31]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \slv_reg2[31]_i_2\ : label is "soft_lutpair2";
begin
  axi_arready_reg_0 <= \^axi_arready_reg_0\;
  axi_awready_reg_0 <= \^axi_awready_reg_0\;
  axi_rvalid_reg_0 <= \^axi_rvalid_reg_0\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_wready <= \^s00_axi_wready\;
\FSM_onehot_state_write[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFAAFFFFBF00"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_awvalid,
      I2 => \^axi_awready_reg_0\,
      I3 => \FSM_onehot_state_write_reg_n_0_[1]\,
      I4 => axi_wready,
      I5 => \FSM_onehot_state_write_reg_n_0_[2]\,
      O => \FSM_onehot_state_write[1]_i_1_n_0\
    );
\FSM_onehot_state_write[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F0F0800"
    )
        port map (
      I0 => \^axi_awready_reg_0\,
      I1 => s00_axi_awvalid,
      I2 => s00_axi_wvalid,
      I3 => \FSM_onehot_state_write_reg_n_0_[1]\,
      I4 => \FSM_onehot_state_write_reg_n_0_[2]\,
      O => \FSM_onehot_state_write[2]_i_1_n_0\
    );
\FSM_onehot_state_write_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => '0',
      Q => axi_wready,
      S => my_fp_mult_n_1
    );
\FSM_onehot_state_write_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state_write[1]_i_1_n_0\,
      Q => \FSM_onehot_state_write_reg_n_0_[1]\,
      R => my_fp_mult_n_1
    );
\FSM_onehot_state_write_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state_write[2]_i_1_n_0\,
      Q => \FSM_onehot_state_write_reg_n_0_[2]\,
      R => my_fp_mult_n_1
    );
\FSM_sequential_state_read[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0007777FFFF"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^axi_arready_reg_0\,
      I2 => s00_axi_rready,
      I3 => \^axi_rvalid_reg_0\,
      I4 => state_read(0),
      I5 => state_read(1),
      O => \FSM_sequential_state_read[0]_i_1_n_0\
    );
\FSM_sequential_state_read[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0FFF88880000"
    )
        port map (
      I0 => \^axi_arready_reg_0\,
      I1 => s00_axi_arvalid,
      I2 => s00_axi_rready,
      I3 => \^axi_rvalid_reg_0\,
      I4 => state_read(0),
      I5 => state_read(1),
      O => \FSM_sequential_state_read[1]_i_1_n_0\
    );
\FSM_sequential_state_read_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state_read[0]_i_1_n_0\,
      Q => state_read(0),
      R => my_fp_mult_n_1
    );
\FSM_sequential_state_read_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state_read[1]_i_1_n_0\,
      Q => state_read(1),
      R => my_fp_mult_n_1
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => s00_axi_aresetn,
      I2 => \axi_arready0__0\,
      I3 => state_read(0),
      I4 => state_read(1),
      I5 => axi_araddr(2),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => s00_axi_araddr(1),
      I1 => s00_axi_aresetn,
      I2 => \axi_arready0__0\,
      I3 => state_read(0),
      I4 => state_read(1),
      I5 => axi_araddr(3),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^axi_arready_reg_0\,
      O => \axi_arready0__0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => axi_araddr(2),
      R => '0'
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => axi_araddr(3),
      R => '0'
    );
axi_arready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C4C4C4C4FFCFCFCF"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^axi_arready_reg_0\,
      I2 => state_read(1),
      I3 => s00_axi_rready,
      I4 => \^axi_rvalid_reg_0\,
      I5 => state_read(0),
      O => axi_arready_i_1_n_0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready_i_1_n_0,
      Q => \^axi_arready_reg_0\,
      R => my_fp_mult_n_1
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => s00_axi_aresetn,
      I2 => s00_axi_awvalid,
      I3 => \^axi_awready_reg_0\,
      I4 => \FSM_onehot_state_write_reg_n_0_[1]\,
      I5 => \axi_awaddr_reg_n_0_[2]\,
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => s00_axi_aresetn,
      I2 => s00_axi_awvalid,
      I3 => \^axi_awready_reg_0\,
      I4 => \FSM_onehot_state_write_reg_n_0_[1]\,
      I5 => \axi_awaddr_reg_n_0_[3]\,
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => \axi_awaddr_reg_n_0_[2]\,
      R => '0'
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => \axi_awaddr_reg_n_0_[3]\,
      R => '0'
    );
axi_awready_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFFEAEAFFFFEAEA"
    )
        port map (
      I0 => axi_wready,
      I1 => \FSM_onehot_state_write_reg_n_0_[2]\,
      I2 => s00_axi_wvalid,
      I3 => \FSM_onehot_state_write_reg_n_0_[1]\,
      I4 => \^axi_awready_reg_0\,
      I5 => s00_axi_awvalid,
      O => axi_awready_i_2_n_0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready_i_2_n_0,
      Q => \^axi_awready_reg_0\,
      R => my_fp_mult_n_1
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA8ABA8BB88BB88"
    )
        port map (
      I0 => axi_bvalid_i_2_n_0,
      I1 => axi_bvalid_i_3_n_0,
      I2 => s00_axi_wvalid,
      I3 => \^s00_axi_bvalid\,
      I4 => s00_axi_bready,
      I5 => \FSM_onehot_state_write_reg_n_0_[2]\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAEAEAEAEAEAEAEA"
    )
        port map (
      I0 => axi_wready,
      I1 => \FSM_onehot_state_write_reg_n_0_[2]\,
      I2 => s00_axi_wvalid,
      I3 => \FSM_onehot_state_write_reg_n_0_[1]\,
      I4 => s00_axi_awvalid,
      I5 => \^axi_awready_reg_0\,
      O => axi_bvalid_i_2_n_0
    );
axi_bvalid_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA80808080808080"
    )
        port map (
      I0 => \FSM_onehot_state_write_reg_n_0_[1]\,
      I1 => \^s00_axi_bvalid\,
      I2 => s00_axi_bready,
      I3 => \^axi_awready_reg_0\,
      I4 => s00_axi_awvalid,
      I5 => s00_axi_wvalid,
      O => axi_bvalid_i_3_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => my_fp_mult_n_1
    );
axi_rvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFFFFF00800080"
    )
        port map (
      I0 => \^axi_arready_reg_0\,
      I1 => s00_axi_arvalid,
      I2 => state_read(0),
      I3 => state_read(1),
      I4 => s00_axi_rready,
      I5 => \^axi_rvalid_reg_0\,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^axi_rvalid_reg_0\,
      R => my_fp_mult_n_1
    );
axi_wready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => axi_wready,
      I1 => \^s00_axi_wready\,
      O => axi_wready_i_1_n_0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready_i_1_n_0,
      Q => \^s00_axi_wready\,
      R => my_fp_mult_n_1
    );
my_fp_mult: entity work.design_1_FP_Mult_0_0_top_FPMult_Test
     port map (
      Q(0) => slv_reg1(0),
      \R_final_reg[15]_0\(15 downto 0) => slv_reg3(15 downto 0),
      SR(0) => my_fp_mult_n_1,
      \Y_sig_reg[15]_0\(31 downto 16) => Y_in(15 downto 0),
      \Y_sig_reg[15]_0\(15 downto 0) => X_in(15 downto 0),
      fsm_done => fsm_done,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn
    );
\s00_axi_rdata[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => slv_reg1(0),
      I1 => fsm_done,
      I2 => slv_reg3(0),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => X_in(0),
      O => s00_axi_rdata(0)
    );
\s00_axi_rdata[10]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFA0C0A0"
    )
        port map (
      I0 => slv_reg1(10),
      I1 => slv_reg3(10),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => X_in(10),
      O => s00_axi_rdata(10)
    );
\s00_axi_rdata[11]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFA0C0A0"
    )
        port map (
      I0 => slv_reg1(11),
      I1 => slv_reg3(11),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => X_in(11),
      O => s00_axi_rdata(11)
    );
\s00_axi_rdata[12]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFA0C0A0"
    )
        port map (
      I0 => slv_reg1(12),
      I1 => slv_reg3(12),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => X_in(12),
      O => s00_axi_rdata(12)
    );
\s00_axi_rdata[13]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFA0C0A0"
    )
        port map (
      I0 => slv_reg1(13),
      I1 => slv_reg3(13),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => X_in(13),
      O => s00_axi_rdata(13)
    );
\s00_axi_rdata[14]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFA0C0A0"
    )
        port map (
      I0 => slv_reg1(14),
      I1 => slv_reg3(14),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => X_in(14),
      O => s00_axi_rdata(14)
    );
\s00_axi_rdata[15]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFA0C0A0"
    )
        port map (
      I0 => slv_reg1(15),
      I1 => slv_reg3(15),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => X_in(15),
      O => s00_axi_rdata(15)
    );
\s00_axi_rdata[16]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2C20"
    )
        port map (
      I0 => slv_reg1(16),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => Y_in(0),
      O => s00_axi_rdata(16)
    );
\s00_axi_rdata[17]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2C20"
    )
        port map (
      I0 => slv_reg1(17),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => Y_in(1),
      O => s00_axi_rdata(17)
    );
\s00_axi_rdata[18]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2C20"
    )
        port map (
      I0 => slv_reg1(18),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => Y_in(2),
      O => s00_axi_rdata(18)
    );
\s00_axi_rdata[19]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2C20"
    )
        port map (
      I0 => slv_reg1(19),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => Y_in(3),
      O => s00_axi_rdata(19)
    );
\s00_axi_rdata[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFA0C0A0"
    )
        port map (
      I0 => slv_reg1(1),
      I1 => slv_reg3(1),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => X_in(1),
      O => s00_axi_rdata(1)
    );
\s00_axi_rdata[20]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2C20"
    )
        port map (
      I0 => slv_reg1(20),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => Y_in(4),
      O => s00_axi_rdata(20)
    );
\s00_axi_rdata[21]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2C20"
    )
        port map (
      I0 => slv_reg1(21),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => Y_in(5),
      O => s00_axi_rdata(21)
    );
\s00_axi_rdata[22]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2C20"
    )
        port map (
      I0 => slv_reg1(22),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => Y_in(6),
      O => s00_axi_rdata(22)
    );
\s00_axi_rdata[23]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2C20"
    )
        port map (
      I0 => slv_reg1(23),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => Y_in(7),
      O => s00_axi_rdata(23)
    );
\s00_axi_rdata[24]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2C20"
    )
        port map (
      I0 => slv_reg1(24),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => Y_in(8),
      O => s00_axi_rdata(24)
    );
\s00_axi_rdata[25]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2C20"
    )
        port map (
      I0 => slv_reg1(25),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => Y_in(9),
      O => s00_axi_rdata(25)
    );
\s00_axi_rdata[26]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2C20"
    )
        port map (
      I0 => slv_reg1(26),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => Y_in(10),
      O => s00_axi_rdata(26)
    );
\s00_axi_rdata[27]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2C20"
    )
        port map (
      I0 => slv_reg1(27),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => Y_in(11),
      O => s00_axi_rdata(27)
    );
\s00_axi_rdata[28]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2C20"
    )
        port map (
      I0 => slv_reg1(28),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => Y_in(12),
      O => s00_axi_rdata(28)
    );
\s00_axi_rdata[29]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2C20"
    )
        port map (
      I0 => slv_reg1(29),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => Y_in(13),
      O => s00_axi_rdata(29)
    );
\s00_axi_rdata[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFA0C0A0"
    )
        port map (
      I0 => slv_reg1(2),
      I1 => slv_reg3(2),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => X_in(2),
      O => s00_axi_rdata(2)
    );
\s00_axi_rdata[30]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2C20"
    )
        port map (
      I0 => slv_reg1(30),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => Y_in(14),
      O => s00_axi_rdata(30)
    );
\s00_axi_rdata[31]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2C20"
    )
        port map (
      I0 => slv_reg1(31),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => Y_in(15),
      O => s00_axi_rdata(31)
    );
\s00_axi_rdata[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFA0C0A0"
    )
        port map (
      I0 => slv_reg1(3),
      I1 => slv_reg3(3),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => X_in(3),
      O => s00_axi_rdata(3)
    );
\s00_axi_rdata[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFA0C0A0"
    )
        port map (
      I0 => slv_reg1(4),
      I1 => slv_reg3(4),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => X_in(4),
      O => s00_axi_rdata(4)
    );
\s00_axi_rdata[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFA0C0A0"
    )
        port map (
      I0 => slv_reg1(5),
      I1 => slv_reg3(5),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => X_in(5),
      O => s00_axi_rdata(5)
    );
\s00_axi_rdata[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFA0C0A0"
    )
        port map (
      I0 => slv_reg1(6),
      I1 => slv_reg3(6),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => X_in(6),
      O => s00_axi_rdata(6)
    );
\s00_axi_rdata[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFA0C0A0"
    )
        port map (
      I0 => slv_reg1(7),
      I1 => slv_reg3(7),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => X_in(7),
      O => s00_axi_rdata(7)
    );
\s00_axi_rdata[8]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFA0C0A0"
    )
        port map (
      I0 => slv_reg1(8),
      I1 => slv_reg3(8),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => X_in(8),
      O => s00_axi_rdata(8)
    );
\s00_axi_rdata[9]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFA0C0A0"
    )
        port map (
      I0 => slv_reg1(9),
      I1 => slv_reg3(9),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => X_in(9),
      O => s00_axi_rdata(9)
    );
\slv_reg1[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000808080"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wstrb(1),
      I2 => \mem_logic__1\(2),
      I3 => s00_axi_awaddr(1),
      I4 => s00_axi_awvalid,
      I5 => \axi_awaddr_reg_n_0_[3]\,
      O => \slv_reg1[15]_i_1_n_0\
    );
\slv_reg1[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000808080"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wstrb(2),
      I2 => \mem_logic__1\(2),
      I3 => s00_axi_awaddr(1),
      I4 => s00_axi_awvalid,
      I5 => \axi_awaddr_reg_n_0_[3]\,
      O => \slv_reg1[23]_i_1_n_0\
    );
\slv_reg1[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000808080"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wstrb(3),
      I2 => \mem_logic__1\(2),
      I3 => s00_axi_awaddr(1),
      I4 => s00_axi_awvalid,
      I5 => \axi_awaddr_reg_n_0_[3]\,
      O => \slv_reg1[31]_i_1_n_0\
    );
\slv_reg1[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => s00_axi_awvalid,
      I2 => \axi_awaddr_reg_n_0_[2]\,
      O => \mem_logic__1\(2)
    );
\slv_reg1[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000808080"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wstrb(0),
      I2 => \mem_logic__1\(2),
      I3 => s00_axi_awaddr(1),
      I4 => s00_axi_awvalid,
      I5 => \axi_awaddr_reg_n_0_[3]\,
      O => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg1(0),
      R => my_fp_mult_n_1
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg1(10),
      R => my_fp_mult_n_1
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg1(11),
      R => my_fp_mult_n_1
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg1(12),
      R => my_fp_mult_n_1
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg1(13),
      R => my_fp_mult_n_1
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg1(14),
      R => my_fp_mult_n_1
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg1(15),
      R => my_fp_mult_n_1
    );
\slv_reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg1(16),
      R => my_fp_mult_n_1
    );
\slv_reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg1(17),
      R => my_fp_mult_n_1
    );
\slv_reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg1(18),
      R => my_fp_mult_n_1
    );
\slv_reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg1(19),
      R => my_fp_mult_n_1
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg1(1),
      R => my_fp_mult_n_1
    );
\slv_reg1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg1(20),
      R => my_fp_mult_n_1
    );
\slv_reg1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg1(21),
      R => my_fp_mult_n_1
    );
\slv_reg1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg1(22),
      R => my_fp_mult_n_1
    );
\slv_reg1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg1(23),
      R => my_fp_mult_n_1
    );
\slv_reg1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg1(24),
      R => my_fp_mult_n_1
    );
\slv_reg1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg1(25),
      R => my_fp_mult_n_1
    );
\slv_reg1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg1(26),
      R => my_fp_mult_n_1
    );
\slv_reg1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg1(27),
      R => my_fp_mult_n_1
    );
\slv_reg1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg1(28),
      R => my_fp_mult_n_1
    );
\slv_reg1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg1(29),
      R => my_fp_mult_n_1
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg1(2),
      R => my_fp_mult_n_1
    );
\slv_reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg1(30),
      R => my_fp_mult_n_1
    );
\slv_reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg1(31),
      R => my_fp_mult_n_1
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg1(3),
      R => my_fp_mult_n_1
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg1(4),
      R => my_fp_mult_n_1
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg1(5),
      R => my_fp_mult_n_1
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg1(6),
      R => my_fp_mult_n_1
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg1(7),
      R => my_fp_mult_n_1
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg1(8),
      R => my_fp_mult_n_1
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg1(9),
      R => my_fp_mult_n_1
    );
\slv_reg2[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000808080"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \mem_logic__1\(3),
      I2 => s00_axi_wstrb(1),
      I3 => s00_axi_awaddr(0),
      I4 => s00_axi_awvalid,
      I5 => \axi_awaddr_reg_n_0_[2]\,
      O => p_1_in(15)
    );
\slv_reg2[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000808080"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \mem_logic__1\(3),
      I2 => s00_axi_wstrb(2),
      I3 => s00_axi_awaddr(0),
      I4 => s00_axi_awvalid,
      I5 => \axi_awaddr_reg_n_0_[2]\,
      O => p_1_in(23)
    );
\slv_reg2[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000808080"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \mem_logic__1\(3),
      I2 => s00_axi_wstrb(3),
      I3 => s00_axi_awaddr(0),
      I4 => s00_axi_awvalid,
      I5 => \axi_awaddr_reg_n_0_[2]\,
      O => p_1_in(31)
    );
\slv_reg2[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => s00_axi_awvalid,
      I2 => \axi_awaddr_reg_n_0_[3]\,
      O => \mem_logic__1\(3)
    );
\slv_reg2[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000808080"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \mem_logic__1\(3),
      I2 => s00_axi_wstrb(0),
      I3 => s00_axi_awaddr(0),
      I4 => s00_axi_awvalid,
      I5 => \axi_awaddr_reg_n_0_[2]\,
      O => p_1_in(7)
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(0),
      Q => X_in(0),
      R => my_fp_mult_n_1
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(10),
      Q => X_in(10),
      R => my_fp_mult_n_1
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(11),
      Q => X_in(11),
      R => my_fp_mult_n_1
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(12),
      Q => X_in(12),
      R => my_fp_mult_n_1
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(13),
      Q => X_in(13),
      R => my_fp_mult_n_1
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(14),
      Q => X_in(14),
      R => my_fp_mult_n_1
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(15),
      Q => X_in(15),
      R => my_fp_mult_n_1
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(16),
      Q => Y_in(0),
      R => my_fp_mult_n_1
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(17),
      Q => Y_in(1),
      R => my_fp_mult_n_1
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(18),
      Q => Y_in(2),
      R => my_fp_mult_n_1
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(19),
      Q => Y_in(3),
      R => my_fp_mult_n_1
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(1),
      Q => X_in(1),
      R => my_fp_mult_n_1
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(20),
      Q => Y_in(4),
      R => my_fp_mult_n_1
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(21),
      Q => Y_in(5),
      R => my_fp_mult_n_1
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(22),
      Q => Y_in(6),
      R => my_fp_mult_n_1
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(23),
      Q => Y_in(7),
      R => my_fp_mult_n_1
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(24),
      Q => Y_in(8),
      R => my_fp_mult_n_1
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(25),
      Q => Y_in(9),
      R => my_fp_mult_n_1
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(26),
      Q => Y_in(10),
      R => my_fp_mult_n_1
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(27),
      Q => Y_in(11),
      R => my_fp_mult_n_1
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(28),
      Q => Y_in(12),
      R => my_fp_mult_n_1
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(29),
      Q => Y_in(13),
      R => my_fp_mult_n_1
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(2),
      Q => X_in(2),
      R => my_fp_mult_n_1
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(30),
      Q => Y_in(14),
      R => my_fp_mult_n_1
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(31),
      Q => Y_in(15),
      R => my_fp_mult_n_1
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(3),
      Q => X_in(3),
      R => my_fp_mult_n_1
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(4),
      Q => X_in(4),
      R => my_fp_mult_n_1
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(5),
      Q => X_in(5),
      R => my_fp_mult_n_1
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(6),
      Q => X_in(6),
      R => my_fp_mult_n_1
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(7),
      Q => X_in(7),
      R => my_fp_mult_n_1
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(8),
      Q => X_in(8),
      R => my_fp_mult_n_1
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(9),
      Q => X_in(9),
      R => my_fp_mult_n_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_FP_Mult_0_0_FP_Mult is
  port (
    axi_awready_reg : out STD_LOGIC;
    axi_arready_reg : out STD_LOGIC;
    axi_rvalid_reg : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bready : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_FP_Mult_0_0_FP_Mult : entity is "FP_Mult";
end design_1_FP_Mult_0_0_FP_Mult;

architecture STRUCTURE of design_1_FP_Mult_0_0_FP_Mult is
begin
FP_Mult_slave_lite_v1_0_S00_AXI_inst: entity work.design_1_FP_Mult_0_0_FP_Mult_slave_lite_v1_0_S00_AXI
     port map (
      axi_arready_reg_0 => axi_arready_reg,
      axi_awready_reg_0 => axi_awready_reg,
      axi_rvalid_reg_0 => axi_rvalid_reg,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(1 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(1 downto 0),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_FP_Mult_0_0 is
  port (
    R : out STD_LOGIC_VECTOR ( 15 downto 0 );
    done : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_FP_Mult_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_FP_Mult_0_0 : entity is "design_1_FP_Mult_0_0,FP_Mult,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_FP_Mult_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of design_1_FP_Mult_0_0 : entity is "FP_Mult,Vivado 2025.1";
end design_1_FP_Mult_0_0;

architecture STRUCTURE of design_1_FP_Mult_0_0 is
  signal \<const0>\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  attribute x_interface_mode : string;
  attribute x_interface_mode of s00_axi_aclk : signal is "slave S00_AXI_CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 81247969, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN design_1_mig_7series_0_1_ui_clk, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  attribute x_interface_mode of s00_axi_aresetn : signal is "slave S00_AXI_RST";
  attribute x_interface_parameter of s00_axi_aresetn : signal is "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute x_interface_info of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute x_interface_info of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute x_interface_info of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute x_interface_info of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute x_interface_info of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute x_interface_info of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute x_interface_info of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute x_interface_info of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute x_interface_info of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute x_interface_info of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute x_interface_info of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute x_interface_info of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute x_interface_mode of s00_axi_awaddr : signal is "slave S00_AXI";
  attribute x_interface_parameter of s00_axi_awaddr : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 81247969, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN design_1_mig_7series_0_1_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute x_interface_info of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute x_interface_info of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute x_interface_info of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute x_interface_info of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute x_interface_info of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
begin
  R(15) <= \<const0>\;
  R(14) <= \<const0>\;
  R(13) <= \<const0>\;
  R(12) <= \<const0>\;
  R(11) <= \<const0>\;
  R(10) <= \<const0>\;
  R(9) <= \<const0>\;
  R(8) <= \<const0>\;
  R(7) <= \<const0>\;
  R(6) <= \<const0>\;
  R(5) <= \<const0>\;
  R(4) <= \<const0>\;
  R(3) <= \<const0>\;
  R(2) <= \<const0>\;
  R(1) <= \<const0>\;
  R(0) <= \<const0>\;
  done <= \<const0>\;
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.design_1_FP_Mult_0_0_FP_Mult
     port map (
      axi_arready_reg => s00_axi_arready,
      axi_awready_reg => s00_axi_awready,
      axi_rvalid_reg => s00_axi_rvalid,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(3 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(3 downto 2),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
