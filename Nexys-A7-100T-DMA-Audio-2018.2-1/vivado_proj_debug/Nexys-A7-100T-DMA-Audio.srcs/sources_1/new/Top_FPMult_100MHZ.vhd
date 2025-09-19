----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/16/2025 10:26:34 AM
-- Design Name: 
-- Module Name: top_flopoco_mult_template - Behavioral
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

entity top_FPMult_Test is
    generic (
        EXP_WIDTH  : integer := 5;
        MANT_WIDTH : integer := 10
    );
    port (
        clk   : in  std_logic;
        rst   : in  std_logic;
        start : in  std_logic;
        X_in  : in  std_logic_vector(EXP_WIDTH+MANT_WIDTH downto 0);
        Y_in  : in  std_logic_vector(EXP_WIDTH+MANT_WIDTH downto 0);
        done  : out std_logic;
        R     : out std_logic_vector(EXP_WIDTH + MANT_WIDTH downto 0)
    );
end entity;

architecture Structural of top_FPMult_Test is

    component FPMult16
        port (
            clk : in  std_logic;
            X   : in  std_logic_vector(EXP_WIDTH + MANT_WIDTH + 2 downto 0);
            Y   : in  std_logic_vector(EXP_WIDTH + MANT_WIDTH + 2 downto 0);
            R   : out std_logic_vector(EXP_WIDTH + MANT_WIDTH + 2 downto 0)
        );
    end component;

    signal X_sig, Y_sig, R_sig : std_logic_vector(EXP_WIDTH + MANT_WIDTH + 2 downto 0);
    signal R_final             : std_logic_vector(EXP_WIDTH + MANT_WIDTH + 2 downto 0);
    signal fsm_done            : std_logic;

begin

    -- Instance du FPMult combinatoire
    uut: FPMult16
        port map (
            clk => clk,
            X   => X_sig,
            Y   => Y_sig,
            R   => R_sig
        );

    -- Sorties vers MicroBlaze
    R    <= R_final(EXP_WIDTH + MANT_WIDTH downto 0);
    done <= fsm_done;

    -- FSM simplifié : capture immédiate et done tout de suite
    process(clk, rst)
    begin
        if rst = '1' then
            X_sig    <= (others => '0');
            Y_sig    <= (others => '0');
            R_final  <= (others => '0');
            fsm_done <= '0';
        elsif rising_edge(clk) then
            if start = '1' then
                X_sig    <= "00" & X_in;
                Y_sig    <= "00" & Y_in;
                R_final  <= R_sig;   -- capture immédiate
                fsm_done <= '1';     -- done immédiat
            end if;
        end if;
    end process;

end Structural;




-- ========== Code généré par FloPoCo ==========

--------------------------------------------------------------------------------
--                    IntMultiplier_11x11_22_Freq100_uid5
-- VHDL generated for DummyFPGA @ 100MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Martin Kumm, Florent de Dinechin, Andreas Böttcher, Kinga Illyes, Bogdan Popa, Bogdan Pasca, 2012-
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
-- Clock period (ns): 10
-- Target frequency (MHz): 100
-- Input signals: X Y
-- Output signals: R
--  approx. input signal timings: X: (c0, 0.000000ns)Y: (c0, 0.000000ns)
--  approx. output signal timings: R: (c0, 0.000000ns)

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library std;
use std.textio.all;
library work;

entity IntMultiplier_11x11_22_Freq100_uid5 is
    port (clk : in std_logic;
          X : in  std_logic_vector(10 downto 0);
          Y : in  std_logic_vector(10 downto 0);
          R : out  std_logic_vector(21 downto 0)   );
end entity;

architecture arch of IntMultiplier_11x11_22_Freq100_uid5 is
signal XX_m6 :  std_logic_vector(10 downto 0);
   -- timing of XX_m6: (c0, 0.000000ns)
signal YY_m6 :  std_logic_vector(10 downto 0);
   -- timing of YY_m6: (c0, 0.000000ns)
signal XX :  unsigned(-1+11 downto 0);
   -- timing of XX: (c0, 0.000000ns)
signal YY :  unsigned(-1+11 downto 0);
   -- timing of YY: (c0, 0.000000ns)
signal RR :  unsigned(-1+22 downto 0);
   -- timing of RR: (c0, 0.000000ns)
begin
   XX_m6 <= X ;
   YY_m6 <= Y ;
   XX <= unsigned(X);
   YY <= unsigned(Y);
   RR <= XX*YY;
   R <= std_logic_vector(RR(21 downto 0));
end architecture;

--------------------------------------------------------------------------------
--                          IntAdder_17_Freq100_uid9
-- VHDL generated for DummyFPGA @ 100MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin (2008-2016)
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
-- Clock period (ns): 10
-- Target frequency (MHz): 100
-- Input signals: X Y Cin
-- Output signals: R
--  approx. input signal timings: X: (c0, 2.120000ns)Y: (c0, 0.000000ns)Cin: (c0, 1.680000ns)
--  approx. output signal timings: R: (c0, 3.280000ns)

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity IntAdder_17_Freq100_uid9 is
    port (clk : in std_logic;
          X : in  std_logic_vector(16 downto 0);
          Y : in  std_logic_vector(16 downto 0);
          Cin : in  std_logic;
          R : out  std_logic_vector(16 downto 0)   );
end entity;

architecture arch of IntAdder_17_Freq100_uid9 is
signal Rtmp :  std_logic_vector(16 downto 0);
   -- timing of Rtmp: (c0, 3.280000ns)
begin
   Rtmp <= X + Y + Cin;
   R <= Rtmp;
end architecture;

--------------------------------------------------------------------------------
--                                  FPMult16
--                      (FPMult_5_10_uid2_Freq100_uid3)
-- VHDL generated for DummyFPGA @ 100MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin 2008-2021
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
-- Clock period (ns): 10
-- Target frequency (MHz): 100
-- Input signals: X Y
-- Output signals: R
--  approx. input signal timings: X: (c0, 0.000000ns)Y: (c0, 0.000000ns)
--  approx. output signal timings: R: (c0, 3.280000ns)

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity FPMult16 is
    port (clk : in std_logic;
          X : in  std_logic_vector(5+10+2 downto 0);
          Y : in  std_logic_vector(5+10+2 downto 0);
          R : out  std_logic_vector(5+10+2 downto 0)   );
end entity;

architecture arch of FPMult16 is
   component IntMultiplier_11x11_22_Freq100_uid5 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(10 downto 0);
             Y : in  std_logic_vector(10 downto 0);
             R : out  std_logic_vector(21 downto 0)   );
   end component;

   component IntAdder_17_Freq100_uid9 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(16 downto 0);
             Y : in  std_logic_vector(16 downto 0);
             Cin : in  std_logic;
             R : out  std_logic_vector(16 downto 0)   );
   end component;

signal sign :  std_logic;
   -- timing of sign: (c0, 0.050000ns)
signal expX :  std_logic_vector(4 downto 0);
   -- timing of expX: (c0, 0.000000ns)
signal expY :  std_logic_vector(4 downto 0);
   -- timing of expY: (c0, 0.000000ns)
signal expSumPreSub :  std_logic_vector(6 downto 0);
   -- timing of expSumPreSub: (c0, 1.060000ns)
signal bias :  std_logic_vector(6 downto 0);
   -- timing of bias: (c0, 0.000000ns)
signal expSum :  std_logic_vector(6 downto 0);
   -- timing of expSum: (c0, 2.120000ns)
signal sigX :  std_logic_vector(10 downto 0);
   -- timing of sigX: (c0, 0.000000ns)
signal sigY :  std_logic_vector(10 downto 0);
   -- timing of sigY: (c0, 0.000000ns)
signal sigProd :  std_logic_vector(21 downto 0);
   -- timing of sigProd: (c0, 0.000000ns)
signal excSel :  std_logic_vector(3 downto 0);
   -- timing of excSel: (c0, 0.000000ns)
signal exc :  std_logic_vector(1 downto 0);
   -- timing of exc: (c0, 0.050000ns)
signal norm :  std_logic;
   -- timing of norm: (c0, 0.000000ns)
signal expPostNorm :  std_logic_vector(6 downto 0);
   -- timing of expPostNorm: (c0, 2.120000ns)
signal sigProdExt :  std_logic_vector(21 downto 0);
   -- timing of sigProdExt: (c0, 0.550000ns)
signal expSig :  std_logic_vector(16 downto 0);
   -- timing of expSig: (c0, 2.120000ns)
signal sticky :  std_logic;
   -- timing of sticky: (c0, 0.550000ns)
signal guard :  std_logic;
   -- timing of guard: (c0, 1.130000ns)
signal round :  std_logic;
   -- timing of round: (c0, 1.680000ns)
signal expSigPostRound :  std_logic_vector(16 downto 0);
   -- timing of expSigPostRound: (c0, 3.280000ns)
signal excPostNorm :  std_logic_vector(1 downto 0);
   -- timing of excPostNorm: (c0, 3.280000ns)
signal finalExc :  std_logic_vector(1 downto 0);
   -- timing of finalExc: (c0, 3.280000ns)
begin
   sign <= X(15) xor Y(15);
   expX <= X(14 downto 10);
   expY <= Y(14 downto 10);
   expSumPreSub <= ("00" & expX) + ("00" & expY);
   bias <= CONV_STD_LOGIC_VECTOR(15,7);
   expSum <= expSumPreSub - bias;
   sigX <= "1" & X(9 downto 0);
   sigY <= "1" & Y(9 downto 0);
   SignificandMultiplication: IntMultiplier_11x11_22_Freq100_uid5
      port map ( clk  => clk,
                 X => sigX,
                 Y => sigY,
                 R => sigProd);
   excSel <= X(17 downto 16) & Y(17 downto 16);
   with excSel  select  
   exc <= "00" when  "0000" | "0001" | "0100", 
          "01" when "0101",
          "10" when "0110" | "1001" | "1010" ,
          "11" when others;
   norm <= sigProd(21);
   -- exponent update
   expPostNorm <= expSum + ("000000" & norm);
   -- significand normalization shift
   sigProdExt <= sigProd(20 downto 0) & "0" when norm='1' else
                         sigProd(19 downto 0) & "00";
   expSig <= expPostNorm & sigProdExt(21 downto 12);
   sticky <= sigProdExt(11);
   guard <= '0' when sigProdExt(10 downto 0)="00000000000" else '1';
   round <= sticky and ( (guard and not(sigProdExt(12))) or (sigProdExt(12) ))  ;
   RoundingAdder: IntAdder_17_Freq100_uid9
      port map ( clk  => clk,
                 Cin => round,
                 X => expSig,
                 Y => "00000000000000000",
                 R => expSigPostRound);
   with expSigPostRound(16 downto 15)  select 
   excPostNorm <=  "01"  when  "00",
                               "10"             when "01", 
                               "00"             when "11"|"10",
                               "11"             when others;
   with exc  select  
   finalExc <= exc when  "11"|"10"|"00",
                       excPostNorm when others; 
   R <= finalExc & sign & expSigPostRound(14 downto 0);
end architecture;

