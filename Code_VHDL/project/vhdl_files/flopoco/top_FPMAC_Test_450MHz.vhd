----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/16/2025 10:12:44 AM
-- Design Name: 
-- Module Name: top_flopoco_mac_template - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity top_FPMAC_Test is
    generic (
        EXP_WIDTH  : integer := 5;
        MANT_WIDTH : integer := 10
    );
    port (
        clk   : in  std_logic;
        rst   : in  std_logic;
        start : in  std_logic;
        done  : out std_logic;
        R     : out std_logic_vector(EXP_WIDTH + MANT_WIDTH downto 0)
    );
end entity;

architecture Structural of top_FPMAC_Test is

    ----------------------------------------------------------------
    -- FloPoCo MAC component
    ----------------------------------------------------------------
    component FPMAC16 is
        port (
            clk       : in  std_logic;
            A         : in  std_logic_vector(EXP_WIDTH + MANT_WIDTH downto 0);
            B         : in  std_logic_vector(EXP_WIDTH + MANT_WIDTH downto 0);
            C         : in  std_logic_vector(EXP_WIDTH + MANT_WIDTH downto 0);
            negateAB  : in  std_logic;
            negateC   : in  std_logic;
            RndMode   : in  std_logic_vector(1 downto 0);
            R         : out std_logic_vector(EXP_WIDTH + MANT_WIDTH downto 0)
        );
    end component;

    ----------------------------------------------------------------
    -- Constants and Types
    ----------------------------------------------------------------
    constant MAC_LATENCY : integer := 5;
    type input_array is array (0 to 15) of std_logic_vector(EXP_WIDTH + MANT_WIDTH downto 0);

    constant A_vals : input_array := (
        "1010110010111101", "0100100011011011", "0100001110000111", "0100011010111000",
        "1100010000000101", "1011100010001011", "0100010100110110", "0100100001010000",
        "0100000110001100", "1010110111000101", "1100100000110001", "0100010100001101",
        "0100010010011010", "0011010000100111", "0100001111110000", "0011110011000001"
    );

    constant B_vals : input_array := (
        "1100011010010111", "0100100010010001", "0100100001000101", "0100000101000000",
        "0011111011010101", "1100001001000001", "1100010101001010", "1100000111111100",
        "0100000101010101", "1100011100111111", "1100011011001011", "1100100010010111",
        "1100100001101110", "0100001010001000", "0100000110101010", "1011100101101010"
    );

    ----------------------------------------------------------------
    -- Signals
    ----------------------------------------------------------------
    signal A, B, C_internal, R_internal : std_logic_vector(EXP_WIDTH + MANT_WIDTH downto 0) := (others => '0');
    signal negateAB  : std_logic := '0';
    signal negateC   : std_logic := '0';
    signal RndMode   : std_logic_vector(1 downto 0) := "11";

    signal index       : integer range 0 to 15 := 0;
    signal wait_cycles : integer range 0 to MAC_LATENCY := 0;

    signal start_pulse : std_logic := '0';
    signal prev_start  : std_logic := '0';
    signal fsm_done    : std_logic := '0';

    type state_type is (IDLE, WAIT_MAC, LOAD, DONE_mac);
    signal state : state_type := IDLE;

begin

    ----------------------------------------------------------------
    -- Instantiate FloPoCo MAC
    ----------------------------------------------------------------
    DUT: FPMAC16
        port map (
            clk       => clk,
            A         => A,
            B         => B,
            C         => C_internal,
            negateAB  => negateAB,
            negateC   => negateC,
            RndMode   => RndMode,
            R         => R_internal
        );

    R    <= C_internal;
    done <= fsm_done;

    ----------------------------------------------------------------
    -- Generate start pulse on rising edge of start
    ----------------------------------------------------------------
    process(clk)
    begin
        if rising_edge(clk) then
            prev_start <= start;
            start_pulse <= start and not prev_start;
        end if;
    end process;

    ----------------------------------------------------------------
    -- FSM Controller
    ----------------------------------------------------------------
    process(clk, rst)
    begin
        if rst = '1' then
            state        <= IDLE;
            index        <= 0;
            wait_cycles  <= 0;
            A            <= (others => '0');
            B            <= (others => '0');
            C_internal   <= (others => '0');
            fsm_done     <= '0';

        elsif rising_edge(clk) then
            case state is
                when IDLE =>
                    fsm_done <= '0';
                    wait_cycles <= 0;
                    if start_pulse = '1' then
                        index <= 0;
                        A <= A_vals(0);
                        B <= B_vals(0);
                        C_internal <= (others => '0');
                        wait_cycles <= 1;
                        state <= WAIT_MAC;
                    end if;

                when WAIT_MAC =>
                    if wait_cycles < MAC_LATENCY then
                        wait_cycles <= wait_cycles + 1;
                    else
                        state <= LOAD;
                    end if;

                when LOAD =>
                    C_internal <= R_internal;
                    if index < 15 then
                        index <= index + 1;
                        A <= A_vals(index + 1);
                        B <= B_vals(index + 1);
                        wait_cycles <= 1;
                        state <= WAIT_MAC;
                    else
                        fsm_done <= '1';
                        state <= DONE_mac;
                    end if;

                when DONE_mac =>
                    state <= DONE_mac;

                when others =>
                    state <= IDLE;
            end case;
        end if;
    end process;

end Structural;


-- ========== Code généré par FloPoCo ==========

--------------------------------------------------------------------------------
--                   RightShifter11_by_max_37_Freq450_uid4
-- VHDL generated for DummyFPGA @ 450MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca (2008-2011), Florent de Dinechin (2008-2019)
--------------------------------------------------------------------------------
-- Pipeline depth: 1 cycles
-- Clock period (ns): 2.22222
-- Target frequency (MHz): 450
-- Input signals: X S
-- Output signals: R
--  approx. input signal timings: X: (c0, 0.000000ns)S: (c0, 0.000000ns)
--  approx. output signal timings: R: (c1, 1.381624ns)

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity RightShifter11_by_max_37_Freq450_uid4 is
    port (clk : in std_logic;
          X : in  std_logic_vector(10 downto 0);
          S : in  std_logic_vector(5 downto 0);
          R : out  std_logic_vector(47 downto 0)   );
end entity;

architecture arch of RightShifter11_by_max_37_Freq450_uid4 is
signal ps, ps_d1 :  std_logic_vector(5 downto 0);
   -- timing of ps: (c0, 0.000000ns)
signal level0 :  std_logic_vector(10 downto 0);
   -- timing of level0: (c0, 0.000000ns)
signal level1 :  std_logic_vector(11 downto 0);
   -- timing of level1: (c0, 0.000000ns)
signal level2 :  std_logic_vector(13 downto 0);
   -- timing of level2: (c0, 0.765385ns)
signal level3 :  std_logic_vector(17 downto 0);
   -- timing of level3: (c0, 0.765385ns)
signal level4 :  std_logic_vector(25 downto 0);
   -- timing of level4: (c0, 1.715385ns)
signal level5, level5_d1 :  std_logic_vector(41 downto 0);
   -- timing of level5: (c0, 1.715385ns)
signal level6 :  std_logic_vector(73 downto 0);
   -- timing of level6: (c1, 1.381624ns)
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            ps_d1 <=  ps;
            level5_d1 <=  level5;
         end if;
      end process;
   ps<= S;
   level0<= X;
   level1 <=  (0 downto 0 => '0') & level0 when ps(0) = '1' else    level0 & (0 downto 0 => '0');
   level2 <=  (1 downto 0 => '0') & level1 when ps(1) = '1' else    level1 & (1 downto 0 => '0');
   level3 <=  (3 downto 0 => '0') & level2 when ps(2) = '1' else    level2 & (3 downto 0 => '0');
   level4 <=  (7 downto 0 => '0') & level3 when ps(3) = '1' else    level3 & (7 downto 0 => '0');
   level5 <=  (15 downto 0 => '0') & level4 when ps(4) = '1' else    level4 & (15 downto 0 => '0');
   level6 <=  (31 downto 0 => '0') & level5_d1 when ps_d1(5) = '1' else    level5_d1 & (31 downto 0 => '0');
   R <= level6(73 downto 26);
end architecture;

--------------------------------------------------------------------------------
--                            LZC_26_Freq450_uid6
-- VHDL generated for DummyFPGA @ 450MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Florent de Dinechin, Bogdan Pasca (2007)
--------------------------------------------------------------------------------
-- Pipeline depth: 2 cycles
-- Clock period (ns): 2.22222
-- Target frequency (MHz): 450
-- Input signals: I
-- Output signals: O
--  approx. input signal timings: I: (c1, 1.381624ns)
--  approx. output signal timings: O: (c3, 1.257179ns)

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity LZC_26_Freq450_uid6 is
    port (clk : in std_logic;
          I : in  std_logic_vector(25 downto 0);
          O : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of LZC_26_Freq450_uid6 is
signal level5, level5_d1 :  std_logic_vector(30 downto 0);
   -- timing of level5: (c1, 1.381624ns)
signal digit4, digit4_d1, digit4_d2 :  std_logic;
   -- timing of digit4: (c1, 1.971624ns)
signal level4 :  std_logic_vector(14 downto 0);
   -- timing of level4: (c2, 0.499402ns)
signal digit3, digit3_d1 :  std_logic;
   -- timing of digit3: (c2, 1.069402ns)
signal level3, level3_d1 :  std_logic_vector(6 downto 0);
   -- timing of level3: (c2, 1.619402ns)
signal digit2 :  std_logic;
   -- timing of digit2: (c3, 0.157179ns)
signal level2 :  std_logic_vector(2 downto 0);
   -- timing of level2: (c3, 0.707179ns)
signal lowBits :  std_logic_vector(1 downto 0);
   -- timing of lowBits: (c3, 1.257179ns)
signal outHighBits :  std_logic_vector(2 downto 0);
   -- timing of outHighBits: (c3, 0.157179ns)
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            level5_d1 <=  level5;
            digit4_d1 <=  digit4;
            digit4_d2 <=  digit4_d1;
            digit3_d1 <=  digit3;
            level3_d1 <=  level3;
         end if;
      end process;
   -- pad input to the next power of two minus 1
   level5 <= I & "11111";
   -- Main iteration for large inputs
   digit4<= '1' when level5(30 downto 15) = "0000000000000000" else '0';
   level4<= level5_d1(14 downto 0) when digit4_d1='1' else level5_d1(30 downto 16);
   digit3<= '1' when level4(14 downto 7) = "00000000" else '0';
   level3<= level4(6 downto 0) when digit3='1' else level4(14 downto 8);
   digit2<= '1' when level3_d1(6 downto 3) = "0000" else '0';
   level2<= level3_d1(2 downto 0) when digit2='1' else level3_d1(6 downto 4);
   -- Finish counting with one LUT
   with level2  select  lowBits <= 
      "11" when "000",
      "10" when "001",
      "01" when "010",
      "01" when "011",
      "00" when others;
   outHighBits <= digit4_d2 & digit3_d1 & digit2 & "";
   O <= outHighBits & lowBits ;
end architecture;

--------------------------------------------------------------------------------
--                    LeftShifter37_by_max_36_Freq450_uid8
-- VHDL generated for DummyFPGA @ 450MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca (2008-2011), Florent de Dinechin (2008-2019)
--------------------------------------------------------------------------------
-- Pipeline depth: 4 cycles
-- Clock period (ns): 2.22222
-- Target frequency (MHz): 450
-- Input signals: X S
-- Output signals: R
--  approx. input signal timings: X: (c1, 1.381624ns)S: (c3, 1.257179ns)
--  approx. output signal timings: R: (c5, 1.816581ns)

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity LeftShifter37_by_max_36_Freq450_uid8 is
    port (clk : in std_logic;
          X : in  std_logic_vector(36 downto 0);
          S : in  std_logic_vector(5 downto 0);
          R : out  std_logic_vector(72 downto 0)   );
end entity;

architecture arch of LeftShifter37_by_max_36_Freq450_uid8 is
signal ps, ps_d1, ps_d2 :  std_logic_vector(5 downto 0);
   -- timing of ps: (c3, 1.257179ns)
signal level0, level0_d1, level0_d2 :  std_logic_vector(36 downto 0);
   -- timing of level0: (c1, 1.381624ns)
signal level1, level1_d1 :  std_logic_vector(37 downto 0);
   -- timing of level1: (c3, 1.257179ns)
signal level2 :  std_logic_vector(39 downto 0);
   -- timing of level2: (c4, 0.400342ns)
signal level3 :  std_logic_vector(43 downto 0);
   -- timing of level3: (c4, 0.400342ns)
signal level4 :  std_logic_vector(51 downto 0);
   -- timing of level4: (c4, 1.750342ns)
signal level5, level5_d1 :  std_logic_vector(67 downto 0);
   -- timing of level5: (c4, 1.750342ns)
signal level6 :  std_logic_vector(99 downto 0);
   -- timing of level6: (c5, 1.816581ns)
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            ps_d1 <=  ps;
            ps_d2 <=  ps_d1;
            level0_d1 <=  level0;
            level0_d2 <=  level0_d1;
            level1_d1 <=  level1;
            level5_d1 <=  level5;
         end if;
      end process;
   ps<= S;
   level0<= X;
   level1<= level0_d2 & (0 downto 0 => '0') when ps(0)= '1' else     (0 downto 0 => '0') & level0_d2;
   level2<= level1_d1 & (1 downto 0 => '0') when ps_d1(1)= '1' else     (1 downto 0 => '0') & level1_d1;
   level3<= level2 & (3 downto 0 => '0') when ps_d1(2)= '1' else     (3 downto 0 => '0') & level2;
   level4<= level3 & (7 downto 0 => '0') when ps_d1(3)= '1' else     (7 downto 0 => '0') & level3;
   level5<= level4 & (15 downto 0 => '0') when ps_d1(4)= '1' else     (15 downto 0 => '0') & level4;
   level6<= level5_d1 & (31 downto 0 => '0') when ps_d2(5)= '1' else     (31 downto 0 => '0') & level5_d1;
   R <= level6(72 downto 0);
end architecture;

--------------------------------------------------------------------------------
--                                  FPMAC16
--                       (IEEEFPFMA_5_10_Freq450_uid2)
-- Inputs: this FMA computes A*B+C
-- VHDL generated for DummyFPGA @ 450MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Florent de Dinechin (2009-2019)
--------------------------------------------------------------------------------
-- Pipeline depth: 5 cycles
-- Clock period (ns): 2.22222
-- Target frequency (MHz): 450
-- Input signals: A B C negateAB negateC RndMode
-- Output signals: R
--  approx. input signal timings: A: (c0, 0.000000ns)B: (c0, 0.000000ns)C: (c0, 0.000000ns)negateAB: (c0, 0.000000ns)negateC: (c0, 0.000000ns)RndMode: (c0, 0.000000ns)
--  approx. output signal timings: R: (c5, 1.816581ns)

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity FPMAC16 is
    port (clk : in std_logic;
          A : in  std_logic_vector(15 downto 0);
          B : in  std_logic_vector(15 downto 0);
          C : in  std_logic_vector(15 downto 0);
          negateAB : in  std_logic;
          negateC : in  std_logic;
          RndMode : in  std_logic_vector(1 downto 0);
          R : out  std_logic_vector(15 downto 0)   );
end entity;

architecture arch of FPMAC16 is
   component RightShifter11_by_max_37_Freq450_uid4 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(10 downto 0);
             S : in  std_logic_vector(5 downto 0);
             R : out  std_logic_vector(47 downto 0)   );
   end component;

   component LZC_26_Freq450_uid6 is
      port ( clk : in std_logic;
             I : in  std_logic_vector(25 downto 0);
             O : out  std_logic_vector(4 downto 0)   );
   end component;

   component LeftShifter37_by_max_36_Freq450_uid8 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(36 downto 0);
             S : in  std_logic_vector(5 downto 0);
             R : out  std_logic_vector(72 downto 0)   );
   end component;

signal Asgn, Asgn_d1, Asgn_d2, Asgn_d3 :  std_logic;
   -- timing of Asgn: (c0, 0.000000ns)
signal AexpField :  std_logic_vector(4 downto 0);
   -- timing of AexpField: (c0, 0.000000ns)
signal AsigField :  std_logic_vector(9 downto 0);
   -- timing of AsigField: (c0, 0.000000ns)
signal AisNormal :  std_logic;
   -- timing of AisNormal: (c0, 0.000000ns)
signal AisInfOrNaN :  std_logic;
   -- timing of AisInfOrNaN: (c0, 0.000000ns)
signal AhasNonNullSig :  std_logic;
   -- timing of AhasNonNullSig: (c0, 0.000000ns)
signal AisZero, AisZero_d1, AisZero_d2, AisZero_d3 :  std_logic;
   -- timing of AisZero: (c0, 0.000000ns)
signal AisInf :  std_logic;
   -- timing of AisInf: (c0, 0.000000ns)
signal AisNaN :  std_logic;
   -- timing of AisNaN: (c0, 0.000000ns)
signal Bsgn, Bsgn_d1, Bsgn_d2, Bsgn_d3 :  std_logic;
   -- timing of Bsgn: (c0, 0.000000ns)
signal BexpField :  std_logic_vector(4 downto 0);
   -- timing of BexpField: (c0, 0.000000ns)
signal BsigField :  std_logic_vector(9 downto 0);
   -- timing of BsigField: (c0, 0.000000ns)
signal BisNormal :  std_logic;
   -- timing of BisNormal: (c0, 0.000000ns)
signal BisInfOrNaN :  std_logic;
   -- timing of BisInfOrNaN: (c0, 0.000000ns)
signal BhasNonNullSig :  std_logic;
   -- timing of BhasNonNullSig: (c0, 0.000000ns)
signal BisZero, BisZero_d1, BisZero_d2, BisZero_d3 :  std_logic;
   -- timing of BisZero: (c0, 0.000000ns)
signal BisInf :  std_logic;
   -- timing of BisInf: (c0, 0.000000ns)
signal BisNaN :  std_logic;
   -- timing of BisNaN: (c0, 0.000000ns)
signal Aexp :  std_logic_vector(4 downto 0);
   -- timing of Aexp: (c0, 0.000000ns)
signal Bexp :  std_logic_vector(4 downto 0);
   -- timing of Bexp: (c0, 0.000000ns)
signal Asig :  std_logic_vector(10 downto 0);
   -- timing of Asig: (c0, 0.000000ns)
signal Bsig :  std_logic_vector(10 downto 0);
   -- timing of Bsig: (c0, 0.000000ns)
signal AexpPlusBexp, AexpPlusBexp_d1, AexpPlusBexp_d2, AexpPlusBexp_d3 :  std_logic_vector(5 downto 0);
   -- timing of AexpPlusBexp: (c0, 0.000000ns)
signal Csgn, Csgn_d1, Csgn_d2, Csgn_d3 :  std_logic;
   -- timing of Csgn: (c0, 0.000000ns)
signal CexpField :  std_logic_vector(4 downto 0);
   -- timing of CexpField: (c0, 0.000000ns)
signal CsigField :  std_logic_vector(9 downto 0);
   -- timing of CsigField: (c0, 0.000000ns)
signal CisNormal, CisNormal_d1, CisNormal_d2, CisNormal_d3 :  std_logic;
   -- timing of CisNormal: (c0, 0.000000ns)
signal CisInfOrNaN :  std_logic;
   -- timing of CisInfOrNaN: (c0, 0.000000ns)
signal ChasNonNullSig :  std_logic;
   -- timing of ChasNonNullSig: (c0, 0.000000ns)
signal CisZero, CisZero_d1, CisZero_d2, CisZero_d3 :  std_logic;
   -- timing of CisZero: (c0, 0.000000ns)
signal CisInf :  std_logic;
   -- timing of CisInf: (c0, 0.000000ns)
signal CisNaN :  std_logic;
   -- timing of CisNaN: (c0, 0.000000ns)
signal RisNaN, RisNaN_d1, RisNaN_d2, RisNaN_d3, RisNaN_d4, RisNaN_d5 :  std_logic;
   -- timing of RisNaN: (c0, 0.000000ns)
signal tentativeRisInf, tentativeRisInf_d1, tentativeRisInf_d2, tentativeRisInf_d3, tentativeRisInf_d4, tentativeRisInf_d5 :  std_logic;
   -- timing of tentativeRisInf: (c0, 0.000000ns)
signal Cexp, Cexp_d1, Cexp_d2, Cexp_d3 :  std_logic_vector(4 downto 0);
   -- timing of Cexp: (c0, 0.000000ns)
signal effectiveSub, effectiveSub_d1 :  std_logic;
   -- timing of effectiveSub: (c0, 0.000000ns)
signal Csig :  std_logic_vector(10 downto 0);
   -- timing of Csig: (c0, 0.000000ns)
signal expDiffPrepare :  std_logic_vector(6 downto 0);
   -- timing of expDiffPrepare: (c0, 0.000000ns)
signal expDiff :  std_logic_vector(6 downto 0);
   -- timing of expDiff: (c0, 0.000000ns)
signal tmpExpComp1 :  std_logic_vector(6 downto 0);
   -- timing of tmpExpComp1: (c0, 0.000000ns)
signal expDiffVerySmall :  std_logic;
   -- timing of expDiffVerySmall: (c0, 0.000000ns)
signal tmpExpComp2 :  std_logic_vector(6 downto 0);
   -- timing of tmpExpComp2: (c0, 0.000000ns)
signal expDiffSmall, expDiffSmall_d1, expDiffSmall_d2, expDiffSmall_d3 :  std_logic;
   -- timing of expDiffSmall: (c0, 0.000000ns)
signal tmpExpComp3 :  std_logic_vector(6 downto 0);
   -- timing of tmpExpComp3: (c0, 0.000000ns)
signal expDiffNotLarge :  std_logic;
   -- timing of expDiffNotLarge: (c0, 0.000000ns)
signal ShiftValue, ShiftValue_d1, ShiftValue_d2, ShiftValue_d3 :  std_logic_vector(5 downto 0);
   -- timing of ShiftValue: (c0, 0.000000ns)
signal CsigShifted :  std_logic_vector(47 downto 0);
   -- timing of CsigShifted: (c1, 1.381624ns)
signal sticky1, sticky1_d1, sticky1_d2, sticky1_d3, sticky1_d4 :  std_logic;
   -- timing of sticky1: (c1, 1.381624ns)
signal CsigShiftedT :  std_logic_vector(36 downto 0);
   -- timing of CsigShiftedT: (c1, 1.381624ns)
signal P :  std_logic_vector(21 downto 0);
   -- timing of P: (c0, 0.000000ns)
signal Paligned, Paligned_d1 :  std_logic_vector(36 downto 0);
   -- timing of Paligned: (c0, 0.000000ns)
signal CsigInverted :  std_logic_vector(37 downto 0);
   -- timing of CsigInverted: (c1, 1.381624ns)
signal BigSum :  std_logic_vector(37 downto 0);
   -- timing of BigSum: (c1, 1.381624ns)
signal BigSum2 :  std_logic_vector(37 downto 0);
   -- timing of BigSum2: (c1, 1.381624ns)
signal RsgnTentative, RsgnTentative_d1, RsgnTentative_d2 :  std_logic;
   -- timing of RsgnTentative: (c1, 1.381624ns)
signal BigSumAbs :  std_logic_vector(36 downto 0);
   -- timing of BigSumAbs: (c1, 1.381624ns)
signal BigSumAbsLowerBits :  std_logic_vector(25 downto 0);
   -- timing of BigSumAbsLowerBits: (c1, 1.381624ns)
signal L :  std_logic_vector(4 downto 0);
   -- timing of L: (c3, 1.257179ns)
signal tmpExpCompRes1, tmpExpCompRes1_d1, tmpExpCompRes1_d2, tmpExpCompRes1_d3 :  std_logic_vector(6 downto 0);
   -- timing of tmpExpCompRes1: (c0, 0.000000ns)
signal tmpExpCompRes2 :  std_logic_vector(6 downto 0);
   -- timing of tmpExpCompRes2: (c3, 1.257179ns)
signal RisSubNormal, RisSubNormal_d1, RisSubNormal_d2 :  std_logic;
   -- timing of RisSubNormal: (c3, 1.257179ns)
signal RisZero, RisZero_d1, RisZero_d2 :  std_logic;
   -- timing of RisZero: (c3, 1.257179ns)
signal RisSubNormalOrZero :  std_logic;
   -- timing of RisSubNormalOrZero: (c3, 1.257179ns)
signal Rsgn, Rsgn_d1, Rsgn_d2 :  std_logic;
   -- timing of Rsgn: (c3, 1.257179ns)
signal shiftValueCaseSubnormal, shiftValueCaseSubnormal_d1, shiftValueCaseSubnormal_d2, shiftValueCaseSubnormal_d3 :  std_logic_vector(5 downto 0);
   -- timing of shiftValueCaseSubnormal: (c0, 0.000000ns)
signal normShiftValue :  std_logic_vector(5 downto 0);
   -- timing of normShiftValue: (c3, 1.257179ns)
signal BigSumNormd :  std_logic_vector(72 downto 0);
   -- timing of BigSumNormd: (c5, 1.816581ns)
signal expTentative, expTentative_d1, expTentative_d2 :  std_logic_vector(6 downto 0);
   -- timing of expTentative: (c3, 1.257179ns)
signal sticky2 :  std_logic;
   -- timing of sticky2: (c5, 1.816581ns)
signal fracTentative :  std_logic_vector(13 downto 0);
   -- timing of fracTentative: (c5, 1.816581ns)
signal fracLeadingBitsNormal :  std_logic_vector(1 downto 0);
   -- timing of fracLeadingBitsNormal: (c5, 1.816581ns)
signal fracLeadingBits :  std_logic_vector(1 downto 0);
   -- timing of fracLeadingBits: (c5, 1.816581ns)
signal fracResultNormd :  std_logic_vector(9 downto 0);
   -- timing of fracResultNormd: (c5, 1.816581ns)
signal fracResultRoundBit :  std_logic;
   -- timing of fracResultRoundBit: (c5, 1.816581ns)
signal fracResultStickyBit :  std_logic;
   -- timing of fracResultStickyBit: (c5, 1.816581ns)
signal round :  std_logic;
   -- timing of round: (c5, 1.816581ns)
signal expUpdate :  std_logic_vector(6 downto 0);
   -- timing of expUpdate: (c5, 1.816581ns)
signal exponentResult1 :  std_logic_vector(6 downto 0);
   -- timing of exponentResult1: (c5, 1.816581ns)
signal resultBeforeRound :  std_logic_vector(16 downto 0);
   -- timing of resultBeforeRound: (c5, 1.816581ns)
signal resultRounded :  std_logic_vector(16 downto 0);
   -- timing of resultRounded: (c5, 1.816581ns)
signal Roverflowed :  std_logic;
   -- timing of Roverflowed: (c5, 1.816581ns)
signal finalRisInf :  std_logic;
   -- timing of finalRisInf: (c5, 1.816581ns)
signal Inf, Inf_d1, Inf_d2, Inf_d3, Inf_d4, Inf_d5 :  std_logic_vector(14 downto 0);
   -- timing of Inf: (c0, 0.000000ns)
signal NaN, NaN_d1, NaN_d2, NaN_d3, NaN_d4, NaN_d5 :  std_logic_vector(14 downto 0);
   -- timing of NaN: (c0, 0.000000ns)
signal negateAB_d1, negateAB_d2, negateAB_d3 :  std_logic;
   -- timing of negateAB: (c0, 0.000000ns)
signal negateC_d1, negateC_d2, negateC_d3 :  std_logic;
   -- timing of negateC: (c0, 0.000000ns)
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            Asgn_d1 <=  Asgn;
            Asgn_d2 <=  Asgn_d1;
            Asgn_d3 <=  Asgn_d2;
            AisZero_d1 <=  AisZero;
            AisZero_d2 <=  AisZero_d1;
            AisZero_d3 <=  AisZero_d2;
            Bsgn_d1 <=  Bsgn;
            Bsgn_d2 <=  Bsgn_d1;
            Bsgn_d3 <=  Bsgn_d2;
            BisZero_d1 <=  BisZero;
            BisZero_d2 <=  BisZero_d1;
            BisZero_d3 <=  BisZero_d2;
            AexpPlusBexp_d1 <=  AexpPlusBexp;
            AexpPlusBexp_d2 <=  AexpPlusBexp_d1;
            AexpPlusBexp_d3 <=  AexpPlusBexp_d2;
            Csgn_d1 <=  Csgn;
            Csgn_d2 <=  Csgn_d1;
            Csgn_d3 <=  Csgn_d2;
            CisNormal_d1 <=  CisNormal;
            CisNormal_d2 <=  CisNormal_d1;
            CisNormal_d3 <=  CisNormal_d2;
            CisZero_d1 <=  CisZero;
            CisZero_d2 <=  CisZero_d1;
            CisZero_d3 <=  CisZero_d2;
            RisNaN_d1 <=  RisNaN;
            RisNaN_d2 <=  RisNaN_d1;
            RisNaN_d3 <=  RisNaN_d2;
            RisNaN_d4 <=  RisNaN_d3;
            RisNaN_d5 <=  RisNaN_d4;
            tentativeRisInf_d1 <=  tentativeRisInf;
            tentativeRisInf_d2 <=  tentativeRisInf_d1;
            tentativeRisInf_d3 <=  tentativeRisInf_d2;
            tentativeRisInf_d4 <=  tentativeRisInf_d3;
            tentativeRisInf_d5 <=  tentativeRisInf_d4;
            Cexp_d1 <=  Cexp;
            Cexp_d2 <=  Cexp_d1;
            Cexp_d3 <=  Cexp_d2;
            effectiveSub_d1 <=  effectiveSub;
            expDiffSmall_d1 <=  expDiffSmall;
            expDiffSmall_d2 <=  expDiffSmall_d1;
            expDiffSmall_d3 <=  expDiffSmall_d2;
            ShiftValue_d1 <=  ShiftValue;
            ShiftValue_d2 <=  ShiftValue_d1;
            ShiftValue_d3 <=  ShiftValue_d2;
            sticky1_d1 <=  sticky1;
            sticky1_d2 <=  sticky1_d1;
            sticky1_d3 <=  sticky1_d2;
            sticky1_d4 <=  sticky1_d3;
            Paligned_d1 <=  Paligned;
            RsgnTentative_d1 <=  RsgnTentative;
            RsgnTentative_d2 <=  RsgnTentative_d1;
            tmpExpCompRes1_d1 <=  tmpExpCompRes1;
            tmpExpCompRes1_d2 <=  tmpExpCompRes1_d1;
            tmpExpCompRes1_d3 <=  tmpExpCompRes1_d2;
            RisSubNormal_d1 <=  RisSubNormal;
            RisSubNormal_d2 <=  RisSubNormal_d1;
            RisZero_d1 <=  RisZero;
            RisZero_d2 <=  RisZero_d1;
            Rsgn_d1 <=  Rsgn;
            Rsgn_d2 <=  Rsgn_d1;
            shiftValueCaseSubnormal_d1 <=  shiftValueCaseSubnormal;
            shiftValueCaseSubnormal_d2 <=  shiftValueCaseSubnormal_d1;
            shiftValueCaseSubnormal_d3 <=  shiftValueCaseSubnormal_d2;
            expTentative_d1 <=  expTentative;
            expTentative_d2 <=  expTentative_d1;
            Inf_d1 <=  Inf;
            Inf_d2 <=  Inf_d1;
            Inf_d3 <=  Inf_d2;
            Inf_d4 <=  Inf_d3;
            Inf_d5 <=  Inf_d4;
            NaN_d1 <=  NaN;
            NaN_d2 <=  NaN_d1;
            NaN_d3 <=  NaN_d2;
            NaN_d4 <=  NaN_d3;
            NaN_d5 <=  NaN_d4;
            negateAB_d1 <=  negateAB;
            negateAB_d2 <=  negateAB_d1;
            negateAB_d3 <=  negateAB_d2;
            negateC_d1 <=  negateC;
            negateC_d2 <=  negateC_d1;
            negateC_d3 <=  negateC_d2;
         end if;
      end process;

    -- Input decomposition 
   Asgn <= A(15);
   AexpField <= A(14 downto 10);
   AsigField <= A(9 downto 0);
   AisNormal <= A(10) or A(11) or A(12) or A(13) or A(14);
   AisInfOrNaN <= A(10) and A(11) and A(12) and A(13) and A(14);
   AhasNonNullSig <= A(0) or A(1) or A(2) or A(3) or A(4) or A(5) or A(6) or A(7) or A(8) or A(9);
   AisZero <= (not AisNormal) and not AhasNonNullSig;
   AisInf <= AisInfOrNaN and not AhasNonNullSig;
   AisNaN <= AisInfOrNaN and AhasNonNullSig;
   Bsgn <= B(15);
   BexpField <= B(14 downto 10);
   BsigField <= B(9 downto 0);
   BisNormal <= B(10) or B(11) or B(12) or B(13) or B(14);
   BisInfOrNaN <= B(10) and B(11) and B(12) and B(13) and B(14);
   BhasNonNullSig <= B(0) or B(1) or B(2) or B(3) or B(4) or B(5) or B(6) or B(7) or B(8) or B(9);
   BisZero <= (not BisNormal) and not BhasNonNullSig;
   BisInf <= BisInfOrNaN and not BhasNonNullSig;
   BisNaN <= BisInfOrNaN and BhasNonNullSig;

   -- unbiased exponents make everything simpler but may lead to suboptimal arch 
   Aexp <= AexpField - ("0" & (3 downto 1 => '1') & AisNormal);
   Bexp <= BexpField - ("0" & (3 downto 1 => '1') & BisNormal);

   -- mantissa with the implicit 1 or 0 appended 
   Asig <= AisNormal & AsigField ;
   Bsig <= BisNormal & BsigField ;
   AexpPlusBexp <= (Aexp(4) & Aexp) + (Bexp(4) & Bexp) ;
   Csgn <= C(15);
   CexpField <= C(14 downto 10);
   CsigField <= C(9 downto 0);
   CisNormal <= C(10) or C(11) or C(12) or C(13) or C(14);
   CisInfOrNaN <= C(10) and C(11) and C(12) and C(13) and C(14);
   ChasNonNullSig <= C(0) or C(1) or C(2) or C(3) or C(4) or C(5) or C(6) or C(7) or C(8) or C(9);
   CisZero <= (not CisNormal) and not ChasNonNullSig;
   CisInf <= CisInfOrNaN and not ChasNonNullSig;
   CisNaN <= CisInfOrNaN and ChasNonNullSig;
   -- result NaN iff one input is NaN, or 0*inf+x, or +/-(inf-inf)
   -- not tentative: the last case may not happen for finite A and B and inf C, as in this case AB remains finite
   RisNaN <= AisNaN or BisNaN or CisNaN or ((AisInf or BisInf) and CisInf and ((Asgn xor Bsgn) xor Csgn));
   -- result inf iff either AB or C is inf, and both have the same sign
   -- tentative, AB+C may overflow
   tentativeRisInf <= (((AisInf and not (BisZero or BisNaN)) or (BisInf and not (AisZero or AisNaN))) and (not CisNaN) and ((CisInf and not ((Asgn xor Bsgn) xor Csgn)) or not CisInf))
      or (CisInf and (not (AisNaN or BisNaN)) and (((AisInf or BisInf) and not ((Asgn xor Bsgn) xor Csgn)) or not (AisInf or BisInf)));

   -- unbiased exponents make everything simpler but may lead to suboptimal arch 
   Cexp <= CexpField - ("0" & (3 downto 1 => '1') & CisNormal);
   effectiveSub <= (negateAB xor Asgn xor Bsgn) xor (negateC xor Csgn);

   -- mantissa with the implicit 1 or 0 appended 
   Csig <= CisNormal & CsigField ;

    -- Computation of the exponent difference 
   expDiffPrepare <= ("00" & AexpField) + ("00" & BexpField) - ("000" & (3 downto 1 => '1') & AisNormal) - BisNormal;
   expDiff <= ("00" & CexpField) - expDiffPrepare - CisNormal;

    -- Addend shift datapath 
   -- Some logic to determine shift distance and tentative result exponent 
   tmpExpComp1 <= expDiff + "0010110";
   expDiffVerySmall <= tmpExpComp1(6);  -- if expDiff < -2p
   tmpExpComp2 <= expDiff - "0000011";
   expDiffSmall <= tmpExpComp2(6);  -- if expDiff < 3
   tmpExpComp3 <= expDiff - "0001110";
   expDiffNotLarge <= tmpExpComp3(6);  -- if expDiff < p+3
   ShiftValue <= 
           "100101" when expDiffVerySmall='1'
      else "001110" - (expDiff (5 downto 0)) when expDiffNotLarge='1'
      else "000000" ;
   RightShifterComponent: RightShifter11_by_max_37_Freq450_uid4
      port map ( clk  => clk,
                 S => ShiftValue,
                 X => Csig,
                 R => CsigShifted);
   sticky1 <= CsigShifted(0) or CsigShifted(1) or CsigShifted(2) or CsigShifted(3) or CsigShifted(4) or CsigShifted(5) or CsigShifted(6) or CsigShifted(7) or CsigShifted(8) or CsigShifted(9) or CsigShifted(10);
   CsigShiftedT <= CsigShifted(47 downto 11);

    -- Product datapath (using naive * operator, may improve in the future)
   P <= Asig * Bsig ;
   Paligned <= (12 downto 0 => '0') & P & "00";

    -- The sum at last 
   CsigInverted <= ('0' &CsigShiftedT) when effectiveSub_d1='0'  else ('1' & not CsigShiftedT);
   BigSum <= CsigInverted + ('0' & Paligned_d1) + effectiveSub_d1;  -- P +/-CeffectiveSub is a carry in
   BigSum2 <= CsigShiftedT - ('0' & Paligned_d1);
   RsgnTentative <= Asgn_d1 xor Bsgn_d1 xor negateAB_d1 xor BigSum(37);
   BigSumAbs <= BigSum(36 downto 0) when (BigSum2(37) or not effectiveSub_d1)='1' else BigSum2(36 downto 0);
   BigSumAbsLowerBits <= BigSumAbs(25 downto 0);
   IEEEFPFMA_5_10_Freq450_uid2LeadingZeroCounter: LZC_26_Freq450_uid6
      port map ( clk  => clk,
                 I => BigSumAbsLowerBits,
                 O => L);
   tmpExpCompRes1 <= (AexpPlusBexp(5) & AexpPlusBexp) + "0010001";
   tmpExpCompRes2 <= tmpExpCompRes1_d3 - ((6 downto 5 => '0') & L);
   RisSubNormal <= (expDiffSmall_d3 or not CisNormal_d3) and  tmpExpCompRes2(6);
   RisZero <= expDiffSmall_d3 when L="11010"  else '0';
   RisSubNormalOrZero <= RisSubNormal or RisZero;
   Rsgn <=      (Asgn_d3 xor Bsgn_d3 xor negateAB_d3) and (Csgn_d3 xor negateC_d3) when ((AisZero_d3 or BisZero_d3) and CisZero_d3)='1'  -- negative only for -0 + -0 
      else '0' when RisZero='1'  -- covers 1-1 = +0
      else RsgnTentative_d2;  -- covers to underflow to zero case
   shiftValueCaseSubnormal <= AexpPlusBexp + "011100";
   normShiftValue <= 
           L + "001100" when (expDiffSmall_d3 and not RisSubNormal)='1'
      else shiftValueCaseSubnormal_d3(5 downto 0) when (expDiffSmall_d3 and RisSubNormal)='1'
      else ShiftValue_d3; -- undo inital shift
   NormalizationShifter: LeftShifter37_by_max_36_Freq450_uid8
      port map ( clk  => clk,
                 S => normShiftValue,
                 X => BigSumAbs,
                 R => BigSumNormd);
   -- TODO opt: push all the constant additions to exponentUpdate
   expTentative <= 
           "1110011" when RisZero='1'
      else "1110010" when RisSubNormal='1'
      else (AexpPlusBexp_d3(5) & AexpPlusBexp_d3 - ((6 downto 5 => '0') & L))  + "0000011" when (expDiffSmall_d3 and not RisSubNormal)='1'
      else (Cexp_d3(4) & Cexp_d3(4) & Cexp_d3) + "0000001" ;
   sticky2 <= BigSumNormd(0) or BigSumNormd(1) or BigSumNormd(2) or BigSumNormd(3) or BigSumNormd(4) or BigSumNormd(5) or BigSumNormd(6) or BigSumNormd(7) or BigSumNormd(8) or BigSumNormd(9) or BigSumNormd(10) or BigSumNormd(11) or BigSumNormd(12) or BigSumNormd(13) or BigSumNormd(14) or BigSumNormd(15) or BigSumNormd(16) or BigSumNormd(17) or BigSumNormd(18) or BigSumNormd(19) or BigSumNormd(20) or BigSumNormd(21) or BigSumNormd(22) or BigSumNormd(23);

   fracTentative <= BigSumNormd(37 downto 24);

    -- Last 2-bit normalization 
   fracLeadingBitsNormal <=  fracTentative(13 downto 12) ;
   fracLeadingBits <= "01" when RisSubNormal_d2='1' else  fracLeadingBitsNormal;
   fracResultNormd <=
           fracTentative(10 downto 1)  when fracLeadingBits = "00" 
      else fracTentative(11 downto 2)  when fracLeadingBits = "01" 
      else fracTentative(12 downto 3);
   fracResultRoundBit <=
           fracTentative(0) 	 when fracLeadingBits = "00" 
      else fracTentative(1)    when fracLeadingBits = "01" 
      else fracTentative(2) ;
   fracResultStickyBit <=
           sticky1_d4 or sticky2	 when fracLeadingBits = "00" 
      else fracTentative(0) or sticky1_d4 or sticky2    when fracLeadingBits = "01" 
      else fracTentative(1) or fracTentative(0) or  sticky1_d4 or sticky2;
   round <= fracResultRoundBit and (fracResultStickyBit or fracResultNormd(0));
   expUpdate <= "0001101" when RisZero_d2 = '1'       -- bias - 2
         else   "0001101" when fracLeadingBits = "00" -- bias - 2
         else   "0001110" when fracLeadingBits = "01" -- bias - 1 
         else   "0001111";                            -- bias 
   exponentResult1 <= expTentative_d2 + expUpdate;
   resultBeforeRound <= exponentResult1 & fracResultNormd;
   resultRounded <= resultBeforeRound + ((16 downto 1 => '0') & round);
   Roverflowed <= resultRounded(16) or resultRounded(15) or (resultRounded(14) and resultRounded(13) and resultRounded(12) and resultRounded(11) and resultRounded(10));
   finalRisInf <= tentativeRisInf_d5 or Roverflowed; 
   Inf <= (14 downto 10 => '1') & (9 downto 0 => '0');
   NaN <= (14 downto 10 => '1') & (9 downto 0 => '1');
   R <= 
           Rsgn_d2 & Inf_d5 when ((not RisNaN_d5) and finalRisInf)='1'
      else '0'  & NaN_d5 when RisNaN_d5='1'
      else Rsgn_d2 & resultRounded(14 downto 0);
end architecture;

