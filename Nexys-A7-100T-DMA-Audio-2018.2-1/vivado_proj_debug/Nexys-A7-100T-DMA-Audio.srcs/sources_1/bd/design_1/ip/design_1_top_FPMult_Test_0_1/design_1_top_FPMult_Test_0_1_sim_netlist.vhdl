-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
-- Date        : Wed Sep 17 16:37:18 2025
-- Host        : OASIS2 running 64-bit Ubuntu 24.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/intern/Downloads/Nexys-A7-100T-DMA-Audio-2018.2-1/vivado_proj_debug/Nexys-A7-100T-DMA-Audio.srcs/sources_1/bd/design_1/ip/design_1_top_FPMult_Test_0_1/design_1_top_FPMult_Test_0_1_sim_netlist.vhdl
-- Design      : design_1_top_FPMult_Test_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_FPMult_Test_0_1_IntMultiplier_11x11_22_Freq100_uid5 is
  port (
    D : out STD_LOGIC_VECTOR ( 14 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 14 downto 0 );
    \R_final_reg[14]\ : in STD_LOGIC_VECTOR ( 14 downto 0 );
    \R_final_reg[14]_0\ : in STD_LOGIC;
    \R_final_reg[14]_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_FPMult_Test_0_1_IntMultiplier_11x11_22_Freq100_uid5 : entity is "IntMultiplier_11x11_22_Freq100_uid5";
end design_1_top_FPMult_Test_0_1_IntMultiplier_11x11_22_Freq100_uid5;

architecture STRUCTURE of design_1_top_FPMult_Test_0_1_IntMultiplier_11x11_22_Freq100_uid5 is
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
entity design_1_top_FPMult_Test_0_1_FPMult16 is
  port (
    D : out STD_LOGIC_VECTOR ( 14 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 14 downto 0 );
    \R_final_reg[14]\ : in STD_LOGIC_VECTOR ( 14 downto 0 );
    \R_final_reg[14]_0\ : in STD_LOGIC;
    \R_final_reg[14]_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_FPMult_Test_0_1_FPMult16 : entity is "FPMult16";
end design_1_top_FPMult_Test_0_1_FPMult16;

architecture STRUCTURE of design_1_top_FPMult_Test_0_1_FPMult16 is
begin
SignificandMultiplication: entity work.design_1_top_FPMult_Test_0_1_IntMultiplier_11x11_22_Freq100_uid5
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
entity design_1_top_FPMult_Test_0_1_top_FPMult_Test is
  port (
    done : out STD_LOGIC;
    R : out STD_LOGIC_VECTOR ( 15 downto 0 );
    start : in STD_LOGIC;
    Y_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    X_in : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_FPMult_Test_0_1_top_FPMult_Test : entity is "top_FPMult_Test";
end design_1_top_FPMult_Test_0_1_top_FPMult_Test;

architecture STRUCTURE of design_1_top_FPMult_Test_0_1_top_FPMult_Test is
  signal A : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal B : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \R_final[14]_i_5_n_0\ : STD_LOGIC;
  signal \R_final[14]_i_7_n_0\ : STD_LOGIC;
  signal R_sig : STD_LOGIC_VECTOR ( 15 to 15 );
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
      C => clk,
      CE => start,
      CLR => rst,
      D => expSigPostRound(0),
      Q => R(0)
    );
\R_final_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => start,
      CLR => rst,
      D => expSigPostRound(10),
      Q => R(10)
    );
\R_final_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => start,
      CLR => rst,
      D => expSigPostRound(11),
      Q => R(11)
    );
\R_final_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => start,
      CLR => rst,
      D => expSigPostRound(12),
      Q => R(12)
    );
\R_final_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => start,
      CLR => rst,
      D => expSigPostRound(13),
      Q => R(13)
    );
\R_final_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => start,
      CLR => rst,
      D => expSigPostRound(14),
      Q => R(14)
    );
\R_final_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => start,
      CLR => rst,
      D => R_sig(15),
      Q => R(15)
    );
\R_final_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => start,
      CLR => rst,
      D => expSigPostRound(1),
      Q => R(1)
    );
\R_final_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => start,
      CLR => rst,
      D => expSigPostRound(2),
      Q => R(2)
    );
\R_final_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => start,
      CLR => rst,
      D => expSigPostRound(3),
      Q => R(3)
    );
\R_final_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => start,
      CLR => rst,
      D => expSigPostRound(4),
      Q => R(4)
    );
\R_final_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => start,
      CLR => rst,
      D => expSigPostRound(5),
      Q => R(5)
    );
\R_final_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => start,
      CLR => rst,
      D => expSigPostRound(6),
      Q => R(6)
    );
\R_final_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => start,
      CLR => rst,
      D => expSigPostRound(7),
      Q => R(7)
    );
\R_final_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => start,
      CLR => rst,
      D => expSigPostRound(8),
      Q => R(8)
    );
\R_final_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => start,
      CLR => rst,
      D => expSigPostRound(9),
      Q => R(9)
    );
\X_sig_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => start,
      CLR => rst,
      D => X_in(0),
      Q => A(0)
    );
\X_sig_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => start,
      CLR => rst,
      D => X_in(10),
      Q => \X_sig_reg_n_0_[10]\
    );
\X_sig_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => start,
      CLR => rst,
      D => X_in(11),
      Q => \X_sig_reg_n_0_[11]\
    );
\X_sig_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => start,
      CLR => rst,
      D => X_in(12),
      Q => \X_sig_reg_n_0_[12]\
    );
\X_sig_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => start,
      CLR => rst,
      D => X_in(13),
      Q => \X_sig_reg_n_0_[13]\
    );
\X_sig_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => start,
      CLR => rst,
      D => X_in(14),
      Q => \X_sig_reg_n_0_[14]\
    );
\X_sig_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => start,
      CLR => rst,
      D => X_in(15),
      Q => X(15)
    );
\X_sig_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => start,
      CLR => rst,
      D => X_in(1),
      Q => A(1)
    );
\X_sig_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => start,
      CLR => rst,
      D => X_in(2),
      Q => A(2)
    );
\X_sig_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => start,
      CLR => rst,
      D => X_in(3),
      Q => A(3)
    );
\X_sig_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => start,
      CLR => rst,
      D => X_in(4),
      Q => A(4)
    );
\X_sig_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => start,
      CLR => rst,
      D => X_in(5),
      Q => A(5)
    );
\X_sig_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => start,
      CLR => rst,
      D => X_in(6),
      Q => A(6)
    );
\X_sig_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => start,
      CLR => rst,
      D => X_in(7),
      Q => A(7)
    );
\X_sig_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => start,
      CLR => rst,
      D => X_in(8),
      Q => A(8)
    );
\X_sig_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => start,
      CLR => rst,
      D => X_in(9),
      Q => A(9)
    );
\Y_sig_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => start,
      CLR => rst,
      D => Y_in(0),
      Q => B(0)
    );
\Y_sig_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => start,
      CLR => rst,
      D => Y_in(10),
      Q => \Y_sig_reg_n_0_[10]\
    );
\Y_sig_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => start,
      CLR => rst,
      D => Y_in(11),
      Q => \Y_sig_reg_n_0_[11]\
    );
\Y_sig_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => start,
      CLR => rst,
      D => Y_in(12),
      Q => \Y_sig_reg_n_0_[12]\
    );
\Y_sig_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => start,
      CLR => rst,
      D => Y_in(13),
      Q => \Y_sig_reg_n_0_[13]\
    );
\Y_sig_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => start,
      CLR => rst,
      D => Y_in(14),
      Q => \Y_sig_reg_n_0_[14]\
    );
\Y_sig_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => start,
      CLR => rst,
      D => Y_in(15),
      Q => Y(15)
    );
\Y_sig_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => start,
      CLR => rst,
      D => Y_in(1),
      Q => B(1)
    );
\Y_sig_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => start,
      CLR => rst,
      D => Y_in(2),
      Q => B(2)
    );
\Y_sig_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => start,
      CLR => rst,
      D => Y_in(3),
      Q => B(3)
    );
\Y_sig_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => start,
      CLR => rst,
      D => Y_in(4),
      Q => B(4)
    );
\Y_sig_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => start,
      CLR => rst,
      D => Y_in(5),
      Q => B(5)
    );
\Y_sig_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => start,
      CLR => rst,
      D => Y_in(6),
      Q => B(6)
    );
\Y_sig_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => start,
      CLR => rst,
      D => Y_in(7),
      Q => B(7)
    );
\Y_sig_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => start,
      CLR => rst,
      D => Y_in(8),
      Q => B(8)
    );
\Y_sig_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => start,
      CLR => rst,
      D => Y_in(9),
      Q => B(9)
    );
fsm_done_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => start,
      CLR => rst,
      D => '1',
      Q => done
    );
uut: entity work.design_1_top_FPMult_Test_0_1_FPMult16
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
entity design_1_top_FPMult_Test_0_1 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    start : in STD_LOGIC;
    X_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Y_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    done : out STD_LOGIC;
    R : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_top_FPMult_Test_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_top_FPMult_Test_0_1 : entity is "design_1_top_FPMult_Test_0_1,top_FPMult_Test,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_top_FPMult_Test_0_1 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_top_FPMult_Test_0_1 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_top_FPMult_Test_0_1 : entity is "top_FPMult_Test,Vivado 2025.1";
end design_1_top_FPMult_Test_0_1;

architecture STRUCTURE of design_1_top_FPMult_Test_0_1 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 81247969, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN design_1_mig_7series_0_1_ui_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_MODE of rst : signal is "slave";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.design_1_top_FPMult_Test_0_1_top_FPMult_Test
     port map (
      R(15 downto 0) => R(15 downto 0),
      X_in(15 downto 0) => X_in(15 downto 0),
      Y_in(15 downto 0) => Y_in(15 downto 0),
      clk => clk,
      done => done,
      rst => rst,
      start => start
    );
end STRUCTURE;
