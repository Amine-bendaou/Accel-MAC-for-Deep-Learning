library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity top_FPAdd_Test is
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

architecture Structural of top_FPAdd_Test is

    component FPAdd16
        port (
            clk : in  std_logic;
            X   : in  std_logic_vector(EXP_WIDTH + MANT_WIDTH downto 0);
            Y   : in  std_logic_vector(EXP_WIDTH + MANT_WIDTH downto 0);
            R   : out std_logic_vector(EXP_WIDTH + MANT_WIDTH downto 0)
        );
    end component;

    constant X_val : std_logic_vector(EXP_WIDTH + MANT_WIDTH downto 0) := x"40E0";
    constant Y_val : std_logic_vector(EXP_WIDTH + MANT_WIDTH downto 0) := x"4698";

    signal X_sig, Y_sig, R_sig : std_logic_vector(EXP_WIDTH + MANT_WIDTH downto 0);
    signal R_final             : std_logic_vector(EXP_WIDTH + MANT_WIDTH downto 0);
    signal fsm_done            : std_logic;

begin

    uut: FPAdd16
        port map (
            clk => clk,
            X   => X_sig,
            Y   => Y_sig,
            R   => R_sig
        );

    R    <= R_final;
    done <= fsm_done;

    process(clk, rst)
    begin
        if rst = '1' then
            X_sig     <= (others => '0');
            Y_sig     <= (others => '0');
            R_final   <= (others => '0');
            fsm_done  <= '0';

        elsif rising_edge(clk) then
            if start = '1' then
                X_sig    <= X_val;
                Y_sig    <= Y_val;
                R_final  <= R_sig;
                fsm_done <= '1';
            end if;
        end if;
    end process;

end Structural;




-- ========== Code généré par FloPoCo ==========

--------------------------------------------------------------------------------
--                RightShifterSticky13_by_max_12_Freq500_uid4
-- VHDL generated for DummyFPGA @ 500MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca (2008-2011), Florent de Dinechin (2008-2019)
--------------------------------------------------------------------------------
-- Pipeline depth: 2 cycles
-- Clock period (ns): 2
-- Target frequency (MHz): 500
-- Input signals: X S
-- Output signals: R Sticky
--  approx. input signal timings: X: (c1, 0.370000ns)S: (c2, 0.640000ns)
--  approx. output signal timings: R: (c2, 1.740000ns)Sticky: (c3, 1.640000ns)

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity RightShifterSticky13_by_max_12_Freq500_uid4 is
    port (clk : in std_logic;
          X : in  std_logic_vector(12 downto 0);
          S : in  std_logic_vector(3 downto 0);
          R : out  std_logic_vector(12 downto 0);
          Sticky : out  std_logic   );
end entity;

architecture arch of RightShifterSticky13_by_max_12_Freq500_uid4 is
signal ps, ps_d1 :  std_logic_vector(3 downto 0);
   -- timing of ps: (c2, 0.640000ns)
signal Xpadded :  std_logic_vector(12 downto 0);
   -- timing of Xpadded: (c1, 0.370000ns)
signal level4, level4_d1 :  std_logic_vector(12 downto 0);
   -- timing of level4: (c1, 0.370000ns)
signal stk3 :  std_logic;
   -- timing of stk3: (c2, 1.210000ns)
signal level3 :  std_logic_vector(12 downto 0);
   -- timing of level3: (c2, 0.640000ns)
signal stk2, stk2_d1 :  std_logic;
   -- timing of stk2: (c2, 1.770000ns)
signal level2, level2_d1 :  std_logic_vector(12 downto 0);
   -- timing of level2: (c2, 1.190000ns)
signal stk1 :  std_logic;
   -- timing of stk1: (c3, 0.530000ns)
signal level1, level1_d1 :  std_logic_vector(12 downto 0);
   -- timing of level1: (c2, 1.190000ns)
signal stk0 :  std_logic;
   -- timing of stk0: (c3, 1.090000ns)
signal level0 :  std_logic_vector(12 downto 0);
   -- timing of level0: (c2, 1.740000ns)
signal stk :  std_logic;
   -- timing of stk: (c3, 1.640000ns)
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            ps_d1 <=  ps;
            level4_d1 <=  level4;
            stk2_d1 <=  stk2;
            level2_d1 <=  level2;
            level1_d1 <=  level1;
         end if;
      end process;
   ps<= S;
   Xpadded <= X;
   level4<= Xpadded;
   stk3 <= '1' when (level4_d1(7 downto 0)/="00000000" and ps(3)='1')   else '0';
   level3 <=  level4_d1 when  ps(3)='0'    else (7 downto 0 => '0') & level4_d1(12 downto 8);
   stk2 <= '1' when (level3(3 downto 0)/="0000" and ps(2)='1') or stk3 ='1'   else '0';
   level2 <=  level3 when  ps(2)='0'    else (3 downto 0 => '0') & level3(12 downto 4);
   stk1 <= '1' when (level2_d1(1 downto 0)/="00" and ps_d1(1)='1') or stk2_d1 ='1'   else '0';
   level1 <=  level2 when  ps(1)='0'    else (1 downto 0 => '0') & level2(12 downto 2);
   stk0 <= '1' when (level1_d1(0 downto 0)/="0" and ps_d1(0)='1') or stk1 ='1'   else '0';
   level0 <=  level1 when  ps(0)='0'    else (0 downto 0 => '0') & level1(12 downto 1);
   stk <= stk0;
   R <= level0;
   Sticky <= stk;
end architecture;

--------------------------------------------------------------------------------
--                          IntAdder_14_Freq500_uid6
-- VHDL generated for DummyFPGA @ 500MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin (2008-2016)
--------------------------------------------------------------------------------
-- Pipeline depth: 3 cycles
-- Clock period (ns): 2
-- Target frequency (MHz): 500
-- Input signals: X Y Cin
-- Output signals: R
--  approx. input signal timings: X: (c1, 0.370000ns)Y: (c3, 0.490000ns)Cin: (c3, 1.640000ns)
--  approx. output signal timings: R: (c4, 0.980000ns)

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity IntAdder_14_Freq500_uid6 is
    port (clk : in std_logic;
          X : in  std_logic_vector(13 downto 0);
          Y : in  std_logic_vector(13 downto 0);
          Cin : in  std_logic;
          R : out  std_logic_vector(13 downto 0)   );
end entity;

architecture arch of IntAdder_14_Freq500_uid6 is
signal Cin_1, Cin_1_d1 :  std_logic;
   -- timing of Cin_1: (c3, 1.640000ns)
signal X_1, X_1_d1, X_1_d2, X_1_d3 :  std_logic_vector(14 downto 0);
   -- timing of X_1: (c1, 0.370000ns)
signal Y_1, Y_1_d1 :  std_logic_vector(14 downto 0);
   -- timing of Y_1: (c3, 0.490000ns)
signal S_1 :  std_logic_vector(14 downto 0);
   -- timing of S_1: (c4, 0.980000ns)
signal R_1 :  std_logic_vector(13 downto 0);
   -- timing of R_1: (c4, 0.980000ns)
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            Cin_1_d1 <=  Cin_1;
            X_1_d1 <=  X_1;
            X_1_d2 <=  X_1_d1;
            X_1_d3 <=  X_1_d2;
            Y_1_d1 <=  Y_1;
         end if;
      end process;
   Cin_1 <= Cin;
   X_1 <= '0' & X(13 downto 0);
   Y_1 <= '0' & Y(13 downto 0);
   S_1 <= X_1_d3 + Y_1_d1 + Cin_1_d1;
   R_1 <= S_1(13 downto 0);
   R <= R_1 ;
end architecture;

--------------------------------------------------------------------------------
--                            LZC_13_Freq500_uid8
-- VHDL generated for DummyFPGA @ 500MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Florent de Dinechin, Bogdan Pasca (2007)
--------------------------------------------------------------------------------
-- Pipeline depth: 2 cycles
-- Clock period (ns): 2
-- Target frequency (MHz): 500
-- Input signals: I
-- Output signals: O
--  approx. input signal timings: I: (c4, 0.980000ns)
--  approx. output signal timings: O: (c6, 0.160000ns)

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity LZC_13_Freq500_uid8 is
    port (clk : in std_logic;
          I : in  std_logic_vector(12 downto 0);
          O : out  std_logic_vector(3 downto 0)   );
end entity;

architecture arch of LZC_13_Freq500_uid8 is
signal level4, level4_d1 :  std_logic_vector(14 downto 0);
   -- timing of level4: (c4, 0.980000ns)
signal digit3, digit3_d1 :  std_logic;
   -- timing of digit3: (c4, 1.550000ns)
signal level3 :  std_logic_vector(6 downto 0);
   -- timing of level3: (c5, 0.300000ns)
signal digit2 :  std_logic;
   -- timing of digit2: (c5, 0.860000ns)
signal level2, level2_d1 :  std_logic_vector(2 downto 0);
   -- timing of level2: (c5, 1.410000ns)
signal lowBits :  std_logic_vector(1 downto 0);
   -- timing of lowBits: (c6, 0.160000ns)
signal outHighBits, outHighBits_d1 :  std_logic_vector(1 downto 0);
   -- timing of outHighBits: (c5, 0.860000ns)
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            level4_d1 <=  level4;
            digit3_d1 <=  digit3;
            level2_d1 <=  level2;
            outHighBits_d1 <=  outHighBits;
         end if;
      end process;
   -- pad input to the next power of two minus 1
   level4 <= I & "11";
   -- Main iteration for large inputs
   digit3<= '1' when level4(14 downto 7) = "00000000" else '0';
   level3<= level4_d1(6 downto 0) when digit3_d1='1' else level4_d1(14 downto 8);
   digit2<= '1' when level3(6 downto 3) = "0000" else '0';
   level2<= level3(2 downto 0) when digit2='1' else level3(6 downto 4);
   -- Finish counting with one LUT
   with level2_d1  select  lowBits <= 
      "11" when "000",
      "10" when "001",
      "01" when "010",
      "01" when "011",
      "00" when others;
   outHighBits <= digit3_d1 & digit2 & "";
   O <= outHighBits_d1 & lowBits ;
end architecture;

--------------------------------------------------------------------------------
--                   LeftShifter14_by_max_13_Freq500_uid10
-- VHDL generated for DummyFPGA @ 500MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca (2008-2011), Florent de Dinechin (2008-2019)
--------------------------------------------------------------------------------
-- Pipeline depth: 3 cycles
-- Clock period (ns): 2
-- Target frequency (MHz): 500
-- Input signals: X S
-- Output signals: R
--  approx. input signal timings: X: (c4, 0.980000ns)S: (c6, 1.740000ns)
--  approx. output signal timings: R: (c7, 1.747692ns)

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity LeftShifter14_by_max_13_Freq500_uid10 is
    port (clk : in std_logic;
          X : in  std_logic_vector(13 downto 0);
          S : in  std_logic_vector(3 downto 0);
          R : out  std_logic_vector(26 downto 0)   );
end entity;

architecture arch of LeftShifter14_by_max_13_Freq500_uid10 is
signal ps, ps_d1 :  std_logic_vector(3 downto 0);
   -- timing of ps: (c6, 1.740000ns)
signal level0, level0_d1, level0_d2 :  std_logic_vector(13 downto 0);
   -- timing of level0: (c4, 0.980000ns)
signal level1, level1_d1 :  std_logic_vector(14 downto 0);
   -- timing of level1: (c6, 1.740000ns)
signal level2 :  std_logic_vector(16 downto 0);
   -- timing of level2: (c7, 0.751538ns)
signal level3 :  std_logic_vector(20 downto 0);
   -- timing of level3: (c7, 0.751538ns)
signal level4 :  std_logic_vector(28 downto 0);
   -- timing of level4: (c7, 1.747692ns)
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            ps_d1 <=  ps;
            level0_d1 <=  level0;
            level0_d2 <=  level0_d1;
            level1_d1 <=  level1;
         end if;
      end process;
   ps<= S;
   level0<= X;
   level1<= level0_d2 & (0 downto 0 => '0') when ps(0)= '1' else     (0 downto 0 => '0') & level0_d2;
   level2<= level1_d1 & (1 downto 0 => '0') when ps_d1(1)= '1' else     (1 downto 0 => '0') & level1_d1;
   level3<= level2 & (3 downto 0 => '0') when ps_d1(2)= '1' else     (3 downto 0 => '0') & level2;
   level4<= level3 & (7 downto 0 => '0') when ps_d1(3)= '1' else     (7 downto 0 => '0') & level3;
   R <= level4(26 downto 0);
end architecture;

--------------------------------------------------------------------------------
--                         IntAdder_15_Freq500_uid13
-- VHDL generated for DummyFPGA @ 500MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin (2008-2016)
--------------------------------------------------------------------------------
-- Pipeline depth: 9 cycles
-- Clock period (ns): 2
-- Target frequency (MHz): 500
-- Input signals: X Y Cin
-- Output signals: R
--  approx. input signal timings: X: (c7, 1.747692ns)Y: (c0, 0.000000ns)Cin: (c8, 1.507692ns)
--  approx. output signal timings: R: (c9, 0.857692ns)

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity IntAdder_15_Freq500_uid13 is
    port (clk : in std_logic;
          X : in  std_logic_vector(14 downto 0);
          Y : in  std_logic_vector(14 downto 0);
          Cin : in  std_logic;
          R : out  std_logic_vector(14 downto 0)   );
end entity;

architecture arch of IntAdder_15_Freq500_uid13 is
signal Cin_1, Cin_1_d1 :  std_logic;
   -- timing of Cin_1: (c8, 1.507692ns)
signal X_1, X_1_d1, X_1_d2 :  std_logic_vector(15 downto 0);
   -- timing of X_1: (c7, 1.747692ns)
signal Y_1, Y_1_d1, Y_1_d2, Y_1_d3, Y_1_d4, Y_1_d5, Y_1_d6, Y_1_d7, Y_1_d8, Y_1_d9 :  std_logic_vector(15 downto 0);
   -- timing of Y_1: (c0, 0.000000ns)
signal S_1 :  std_logic_vector(15 downto 0);
   -- timing of S_1: (c9, 0.857692ns)
signal R_1 :  std_logic_vector(14 downto 0);
   -- timing of R_1: (c9, 0.857692ns)
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            Cin_1_d1 <=  Cin_1;
            X_1_d1 <=  X_1;
            X_1_d2 <=  X_1_d1;
            Y_1_d1 <=  Y_1;
            Y_1_d2 <=  Y_1_d1;
            Y_1_d3 <=  Y_1_d2;
            Y_1_d4 <=  Y_1_d3;
            Y_1_d5 <=  Y_1_d4;
            Y_1_d6 <=  Y_1_d5;
            Y_1_d7 <=  Y_1_d6;
            Y_1_d8 <=  Y_1_d7;
            Y_1_d9 <=  Y_1_d8;
         end if;
      end process;
   Cin_1 <= Cin;
   X_1 <= '0' & X(14 downto 0);
   Y_1 <= '0' & Y(14 downto 0);
   S_1 <= X_1_d2 + Y_1_d9 + Cin_1_d1;
   R_1 <= S_1(14 downto 0);
   R <= R_1 ;
end architecture;

--------------------------------------------------------------------------------
--                                  FPAdd16
--                       (IEEEFPAdd_5_10_Freq500_uid2)
-- VHDL generated for DummyFPGA @ 500MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Florent de Dinechin, Valentin Huguet (2016)
--------------------------------------------------------------------------------
-- Pipeline depth: 10 cycles
-- Clock period (ns): 2
-- Target frequency (MHz): 500
-- Input signals: X Y
-- Output signals: R
--  approx. input signal timings: X: (c0, 0.000000ns)Y: (c0, 0.000000ns)
--  approx. output signal timings: R: (c10, 0.607692ns)

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity FPAdd16 is
    port (clk : in std_logic;
          X : in  std_logic_vector(15 downto 0);
          Y : in  std_logic_vector(15 downto 0);
          R : out  std_logic_vector(15 downto 0)   );
end entity;

architecture arch of FPAdd16 is
   component RightShifterSticky13_by_max_12_Freq500_uid4 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(12 downto 0);
             S : in  std_logic_vector(3 downto 0);
             R : out  std_logic_vector(12 downto 0);
             Sticky : out  std_logic   );
   end component;

   component IntAdder_14_Freq500_uid6 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(13 downto 0);
             Y : in  std_logic_vector(13 downto 0);
             Cin : in  std_logic;
             R : out  std_logic_vector(13 downto 0)   );
   end component;

   component LZC_13_Freq500_uid8 is
      port ( clk : in std_logic;
             I : in  std_logic_vector(12 downto 0);
             O : out  std_logic_vector(3 downto 0)   );
   end component;

   component LeftShifter14_by_max_13_Freq500_uid10 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(13 downto 0);
             S : in  std_logic_vector(3 downto 0);
             R : out  std_logic_vector(26 downto 0)   );
   end component;

   component IntAdder_15_Freq500_uid13 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(14 downto 0);
             Y : in  std_logic_vector(14 downto 0);
             Cin : in  std_logic;
             R : out  std_logic_vector(14 downto 0)   );
   end component;

signal expFracX :  std_logic_vector(14 downto 0);
   -- timing of expFracX: (c0, 0.000000ns)
signal expFracY :  std_logic_vector(14 downto 0);
   -- timing of expFracY: (c0, 0.000000ns)
signal expXmExpY :  std_logic_vector(5 downto 0);
   -- timing of expXmExpY: (c0, 1.050000ns)
signal expYmExpX :  std_logic_vector(5 downto 0);
   -- timing of expYmExpX: (c0, 1.050000ns)
signal swap :  std_logic;
   -- timing of swap: (c0, 1.070000ns)
signal newX, newX_d1 :  std_logic_vector(15 downto 0);
   -- timing of newX: (c0, 1.620000ns)
signal newY, newY_d1 :  std_logic_vector(15 downto 0);
   -- timing of newY: (c0, 1.620000ns)
signal expDiff, expDiff_d1 :  std_logic_vector(5 downto 0);
   -- timing of expDiff: (c0, 1.620000ns)
signal expNewX, expNewX_d1, expNewX_d2, expNewX_d3, expNewX_d4, expNewX_d5, expNewX_d6 :  std_logic_vector(4 downto 0);
   -- timing of expNewX: (c0, 1.620000ns)
signal expNewY, expNewY_d1 :  std_logic_vector(4 downto 0);
   -- timing of expNewY: (c0, 1.620000ns)
signal signNewX, signNewX_d1, signNewX_d2, signNewX_d3, signNewX_d4, signNewX_d5, signNewX_d6, signNewX_d7, signNewX_d8, signNewX_d9, signNewX_d10 :  std_logic;
   -- timing of signNewX: (c0, 1.620000ns)
signal signNewY, signNewY_d1, signNewY_d2, signNewY_d3, signNewY_d4, signNewY_d5, signNewY_d6, signNewY_d7, signNewY_d8, signNewY_d9, signNewY_d10 :  std_logic;
   -- timing of signNewY: (c0, 1.620000ns)
signal EffSub, EffSub_d1, EffSub_d2, EffSub_d3, EffSub_d4, EffSub_d5, EffSub_d6, EffSub_d7, EffSub_d8, EffSub_d9 :  std_logic;
   -- timing of EffSub: (c1, 0.370000ns)
signal xExpFieldZero, xExpFieldZero_d1, xExpFieldZero_d2, xExpFieldZero_d3, xExpFieldZero_d4, xExpFieldZero_d5 :  std_logic;
   -- timing of xExpFieldZero: (c1, 0.370000ns)
signal yExpFieldZero :  std_logic;
   -- timing of yExpFieldZero: (c1, 0.370000ns)
signal xExpFieldAllOnes :  std_logic;
   -- timing of xExpFieldAllOnes: (c1, 0.370000ns)
signal yExpFieldAllOnes :  std_logic;
   -- timing of yExpFieldAllOnes: (c1, 0.370000ns)
signal xSigFieldZero :  std_logic;
   -- timing of xSigFieldZero: (c1, 0.370000ns)
signal ySigFieldZero :  std_logic;
   -- timing of ySigFieldZero: (c1, 0.370000ns)
signal xIsNaN :  std_logic;
   -- timing of xIsNaN: (c1, 0.920000ns)
signal yIsNaN :  std_logic;
   -- timing of yIsNaN: (c1, 0.920000ns)
signal xIsInfinity, xIsInfinity_d1, xIsInfinity_d2, xIsInfinity_d3, xIsInfinity_d4, xIsInfinity_d5, xIsInfinity_d6, xIsInfinity_d7, xIsInfinity_d8, xIsInfinity_d9 :  std_logic;
   -- timing of xIsInfinity: (c1, 0.920000ns)
signal yIsInfinity, yIsInfinity_d1, yIsInfinity_d2, yIsInfinity_d3, yIsInfinity_d4, yIsInfinity_d5, yIsInfinity_d6, yIsInfinity_d7, yIsInfinity_d8, yIsInfinity_d9 :  std_logic;
   -- timing of yIsInfinity: (c1, 0.920000ns)
signal xIsZero, xIsZero_d1, xIsZero_d2, xIsZero_d3, xIsZero_d4, xIsZero_d5, xIsZero_d6, xIsZero_d7, xIsZero_d8, xIsZero_d9 :  std_logic;
   -- timing of xIsZero: (c1, 0.920000ns)
signal yIsZero, yIsZero_d1, yIsZero_d2, yIsZero_d3, yIsZero_d4, yIsZero_d5, yIsZero_d6, yIsZero_d7, yIsZero_d8, yIsZero_d9 :  std_logic;
   -- timing of yIsZero: (c1, 0.920000ns)
signal bothSubNormals :  std_logic;
   -- timing of bothSubNormals: (c1, 0.920000ns)
signal resultIsNaN, resultIsNaN_d1, resultIsNaN_d2, resultIsNaN_d3, resultIsNaN_d4, resultIsNaN_d5, resultIsNaN_d6, resultIsNaN_d7, resultIsNaN_d8, resultIsNaN_d9 :  std_logic;
   -- timing of resultIsNaN: (c1, 1.470000ns)
signal significandNewX :  std_logic_vector(10 downto 0);
   -- timing of significandNewX: (c1, 0.370000ns)
signal significandNewY :  std_logic_vector(10 downto 0);
   -- timing of significandNewY: (c1, 0.370000ns)
signal allShiftedOut :  std_logic;
   -- timing of allShiftedOut: (c1, 0.860000ns)
signal rightShiftValue, rightShiftValue_d1 :  std_logic_vector(3 downto 0);
   -- timing of rightShiftValue: (c1, 1.410000ns)
signal shiftCorrection, shiftCorrection_d1 :  std_logic;
   -- timing of shiftCorrection: (c1, 0.920000ns)
signal finalRightShiftValue :  std_logic_vector(3 downto 0);
   -- timing of finalRightShiftValue: (c2, 0.640000ns)
signal significandY00 :  std_logic_vector(12 downto 0);
   -- timing of significandY00: (c1, 0.370000ns)
signal shiftedSignificandY, shiftedSignificandY_d1 :  std_logic_vector(12 downto 0);
   -- timing of shiftedSignificandY: (c2, 1.740000ns)
signal stickyLow, stickyLow_d1, stickyLow_d2, stickyLow_d3, stickyLow_d4, stickyLow_d5 :  std_logic;
   -- timing of stickyLow: (c3, 1.640000ns)
signal summandY :  std_logic_vector(13 downto 0);
   -- timing of summandY: (c3, 0.490000ns)
signal summandX :  std_logic_vector(13 downto 0);
   -- timing of summandX: (c1, 0.370000ns)
signal carryIn :  std_logic;
   -- timing of carryIn: (c3, 1.640000ns)
signal significandZ :  std_logic_vector(13 downto 0);
   -- timing of significandZ: (c4, 0.980000ns)
signal z1, z1_d1, z1_d2 :  std_logic;
   -- timing of z1: (c4, 0.980000ns)
signal z0, z0_d1, z0_d2 :  std_logic;
   -- timing of z0: (c4, 0.980000ns)
signal lzcZInput :  std_logic_vector(12 downto 0);
   -- timing of lzcZInput: (c4, 0.980000ns)
signal lzc :  std_logic_vector(3 downto 0);
   -- timing of lzc: (c6, 0.160000ns)
signal leftShiftVal :  std_logic_vector(3 downto 0);
   -- timing of leftShiftVal: (c6, 1.740000ns)
signal normalizedSignificand, normalizedSignificand_d1 :  std_logic_vector(26 downto 0);
   -- timing of normalizedSignificand: (c7, 1.747692ns)
signal significandPreRound :  std_logic_vector(9 downto 0);
   -- timing of significandPreRound: (c7, 1.747692ns)
signal lsb, lsb_d1 :  std_logic;
   -- timing of lsb: (c7, 1.747692ns)
signal roundBit, roundBit_d1 :  std_logic;
   -- timing of roundBit: (c7, 1.747692ns)
signal stickyBit :  std_logic;
   -- timing of stickyBit: (c8, 0.957692ns)
signal deltaExp :  std_logic_vector(4 downto 0);
   -- timing of deltaExp: (c6, 0.160000ns)
signal fullCancellation, fullCancellation_d1, fullCancellation_d2, fullCancellation_d3, fullCancellation_d4 :  std_logic;
   -- timing of fullCancellation: (c6, 1.150000ns)
signal expPreRound, expPreRound_d1 :  std_logic_vector(4 downto 0);
   -- timing of expPreRound: (c6, 1.200000ns)
signal expSigPreRound :  std_logic_vector(14 downto 0);
   -- timing of expSigPreRound: (c7, 1.747692ns)
signal roundUpBit :  std_logic;
   -- timing of roundUpBit: (c8, 1.507692ns)
signal expSigR, expSigR_d1 :  std_logic_vector(14 downto 0);
   -- timing of expSigR: (c9, 0.857692ns)
signal resultIsZero :  std_logic;
   -- timing of resultIsZero: (c10, 0.057692ns)
signal resultIsInf :  std_logic;
   -- timing of resultIsInf: (c10, 0.057692ns)
signal constInf, constInf_d1, constInf_d2, constInf_d3, constInf_d4, constInf_d5, constInf_d6, constInf_d7, constInf_d8, constInf_d9, constInf_d10 :  std_logic_vector(14 downto 0);
   -- timing of constInf: (c0, 0.000000ns)
signal constNaN, constNaN_d1, constNaN_d2, constNaN_d3, constNaN_d4, constNaN_d5, constNaN_d6, constNaN_d7, constNaN_d8, constNaN_d9, constNaN_d10 :  std_logic_vector(14 downto 0);
   -- timing of constNaN: (c0, 0.000000ns)
signal expSigR2 :  std_logic_vector(14 downto 0);
   -- timing of expSigR2: (c10, 0.607692ns)
signal signR :  std_logic;
   -- timing of signR: (c10, 0.607692ns)
signal computedR :  std_logic_vector(15 downto 0);
   -- timing of computedR: (c10, 0.607692ns)
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            newX_d1 <=  newX;
            newY_d1 <=  newY;
            expDiff_d1 <=  expDiff;
            expNewX_d1 <=  expNewX;
            expNewX_d2 <=  expNewX_d1;
            expNewX_d3 <=  expNewX_d2;
            expNewX_d4 <=  expNewX_d3;
            expNewX_d5 <=  expNewX_d4;
            expNewX_d6 <=  expNewX_d5;
            expNewY_d1 <=  expNewY;
            signNewX_d1 <=  signNewX;
            signNewX_d2 <=  signNewX_d1;
            signNewX_d3 <=  signNewX_d2;
            signNewX_d4 <=  signNewX_d3;
            signNewX_d5 <=  signNewX_d4;
            signNewX_d6 <=  signNewX_d5;
            signNewX_d7 <=  signNewX_d6;
            signNewX_d8 <=  signNewX_d7;
            signNewX_d9 <=  signNewX_d8;
            signNewX_d10 <=  signNewX_d9;
            signNewY_d1 <=  signNewY;
            signNewY_d2 <=  signNewY_d1;
            signNewY_d3 <=  signNewY_d2;
            signNewY_d4 <=  signNewY_d3;
            signNewY_d5 <=  signNewY_d4;
            signNewY_d6 <=  signNewY_d5;
            signNewY_d7 <=  signNewY_d6;
            signNewY_d8 <=  signNewY_d7;
            signNewY_d9 <=  signNewY_d8;
            signNewY_d10 <=  signNewY_d9;
            EffSub_d1 <=  EffSub;
            EffSub_d2 <=  EffSub_d1;
            EffSub_d3 <=  EffSub_d2;
            EffSub_d4 <=  EffSub_d3;
            EffSub_d5 <=  EffSub_d4;
            EffSub_d6 <=  EffSub_d5;
            EffSub_d7 <=  EffSub_d6;
            EffSub_d8 <=  EffSub_d7;
            EffSub_d9 <=  EffSub_d8;
            xExpFieldZero_d1 <=  xExpFieldZero;
            xExpFieldZero_d2 <=  xExpFieldZero_d1;
            xExpFieldZero_d3 <=  xExpFieldZero_d2;
            xExpFieldZero_d4 <=  xExpFieldZero_d3;
            xExpFieldZero_d5 <=  xExpFieldZero_d4;
            xIsInfinity_d1 <=  xIsInfinity;
            xIsInfinity_d2 <=  xIsInfinity_d1;
            xIsInfinity_d3 <=  xIsInfinity_d2;
            xIsInfinity_d4 <=  xIsInfinity_d3;
            xIsInfinity_d5 <=  xIsInfinity_d4;
            xIsInfinity_d6 <=  xIsInfinity_d5;
            xIsInfinity_d7 <=  xIsInfinity_d6;
            xIsInfinity_d8 <=  xIsInfinity_d7;
            xIsInfinity_d9 <=  xIsInfinity_d8;
            yIsInfinity_d1 <=  yIsInfinity;
            yIsInfinity_d2 <=  yIsInfinity_d1;
            yIsInfinity_d3 <=  yIsInfinity_d2;
            yIsInfinity_d4 <=  yIsInfinity_d3;
            yIsInfinity_d5 <=  yIsInfinity_d4;
            yIsInfinity_d6 <=  yIsInfinity_d5;
            yIsInfinity_d7 <=  yIsInfinity_d6;
            yIsInfinity_d8 <=  yIsInfinity_d7;
            yIsInfinity_d9 <=  yIsInfinity_d8;
            xIsZero_d1 <=  xIsZero;
            xIsZero_d2 <=  xIsZero_d1;
            xIsZero_d3 <=  xIsZero_d2;
            xIsZero_d4 <=  xIsZero_d3;
            xIsZero_d5 <=  xIsZero_d4;
            xIsZero_d6 <=  xIsZero_d5;
            xIsZero_d7 <=  xIsZero_d6;
            xIsZero_d8 <=  xIsZero_d7;
            xIsZero_d9 <=  xIsZero_d8;
            yIsZero_d1 <=  yIsZero;
            yIsZero_d2 <=  yIsZero_d1;
            yIsZero_d3 <=  yIsZero_d2;
            yIsZero_d4 <=  yIsZero_d3;
            yIsZero_d5 <=  yIsZero_d4;
            yIsZero_d6 <=  yIsZero_d5;
            yIsZero_d7 <=  yIsZero_d6;
            yIsZero_d8 <=  yIsZero_d7;
            yIsZero_d9 <=  yIsZero_d8;
            resultIsNaN_d1 <=  resultIsNaN;
            resultIsNaN_d2 <=  resultIsNaN_d1;
            resultIsNaN_d3 <=  resultIsNaN_d2;
            resultIsNaN_d4 <=  resultIsNaN_d3;
            resultIsNaN_d5 <=  resultIsNaN_d4;
            resultIsNaN_d6 <=  resultIsNaN_d5;
            resultIsNaN_d7 <=  resultIsNaN_d6;
            resultIsNaN_d8 <=  resultIsNaN_d7;
            resultIsNaN_d9 <=  resultIsNaN_d8;
            rightShiftValue_d1 <=  rightShiftValue;
            shiftCorrection_d1 <=  shiftCorrection;
            shiftedSignificandY_d1 <=  shiftedSignificandY;
            stickyLow_d1 <=  stickyLow;
            stickyLow_d2 <=  stickyLow_d1;
            stickyLow_d3 <=  stickyLow_d2;
            stickyLow_d4 <=  stickyLow_d3;
            stickyLow_d5 <=  stickyLow_d4;
            z1_d1 <=  z1;
            z1_d2 <=  z1_d1;
            z0_d1 <=  z0;
            z0_d2 <=  z0_d1;
            normalizedSignificand_d1 <=  normalizedSignificand;
            lsb_d1 <=  lsb;
            roundBit_d1 <=  roundBit;
            fullCancellation_d1 <=  fullCancellation;
            fullCancellation_d2 <=  fullCancellation_d1;
            fullCancellation_d3 <=  fullCancellation_d2;
            fullCancellation_d4 <=  fullCancellation_d3;
            expPreRound_d1 <=  expPreRound;
            expSigR_d1 <=  expSigR;
            constInf_d1 <=  constInf;
            constInf_d2 <=  constInf_d1;
            constInf_d3 <=  constInf_d2;
            constInf_d4 <=  constInf_d3;
            constInf_d5 <=  constInf_d4;
            constInf_d6 <=  constInf_d5;
            constInf_d7 <=  constInf_d6;
            constInf_d8 <=  constInf_d7;
            constInf_d9 <=  constInf_d8;
            constInf_d10 <=  constInf_d9;
            constNaN_d1 <=  constNaN;
            constNaN_d2 <=  constNaN_d1;
            constNaN_d3 <=  constNaN_d2;
            constNaN_d4 <=  constNaN_d3;
            constNaN_d5 <=  constNaN_d4;
            constNaN_d6 <=  constNaN_d5;
            constNaN_d7 <=  constNaN_d6;
            constNaN_d8 <=  constNaN_d7;
            constNaN_d9 <=  constNaN_d8;
            constNaN_d10 <=  constNaN_d9;
         end if;
      end process;

   -- Exponent difference and swap
   expFracX <= X(14 downto 0);
   expFracY <= Y(14 downto 0);
   expXmExpY <= ('0' & X(14 downto 10)) - ('0'  & Y(14 downto 10)) ;
   expYmExpX <= ('0' & Y(14 downto 10)) - ('0'  & X(14 downto 10)) ;
   swap <= '0' when expFracX >= expFracY else '1';
   newX <= X when swap = '0' else Y;
   newY <= Y when swap = '0' else X;
   expDiff <= expXmExpY when swap = '0' else expYmExpX;
   expNewX <= newX(14 downto 10);
   expNewY <= newY(14 downto 10);
   signNewX <= newX(15);
   signNewY <= newY(15);
   EffSub <= signNewX_d1 xor signNewY_d1;
   -- Special case dectection
   xExpFieldZero <= '1' when expNewX_d1="00000" else '0';
   yExpFieldZero <= '1' when expNewY_d1="00000" else '0';
   xExpFieldAllOnes <= '1' when expNewX_d1="11111" else '0';
   yExpFieldAllOnes <= '1' when expNewY_d1="11111" else '0';
   xSigFieldZero <= '1' when newX_d1(9 downto 0)="0000000000" else '0';
   ySigFieldZero <= '1' when newY_d1(9 downto 0)="0000000000" else '0';
   xIsNaN <= xExpFieldAllOnes and not xSigFieldZero;
   yIsNaN <= yExpFieldAllOnes and not ySigFieldZero;
   xIsInfinity <= xExpFieldAllOnes and xSigFieldZero;
   yIsInfinity <= yExpFieldAllOnes and ySigFieldZero;
   xIsZero <= xExpFieldZero and xSigFieldZero;
   yIsZero <= yExpFieldZero and ySigFieldZero;
   bothSubNormals <=  xExpFieldZero and yExpFieldZero;
   resultIsNaN <=  xIsNaN or yIsNaN  or  (xIsInfinity and yIsInfinity and EffSub);
   significandNewX <= not(xExpFieldZero) & newX_d1(9 downto 0);
   significandNewY <= not(yExpFieldZero) & newY_d1(9 downto 0);

   -- Significand alignment
   allShiftedOut <= '1' when (expDiff_d1 >= 13) else '0';
   rightShiftValue <= expDiff_d1(3 downto 0) when allShiftedOut='0' else CONV_STD_LOGIC_VECTOR(13,4) ;
   shiftCorrection <= '1' when (yExpFieldZero='1' and xExpFieldZero='0') else '0'; -- only other cases are: both normal or both subnormal
   finalRightShiftValue <= rightShiftValue_d1 - ("000" & shiftCorrection_d1);
   significandY00 <= significandNewY & "00";
   RightShifterComponent: RightShifterSticky13_by_max_12_Freq500_uid4
      port map ( clk  => clk,
                 S => finalRightShiftValue,
                 X => significandY00,
                 R => shiftedSignificandY,
                 Sticky => stickyLow);
   summandY <= ('0' & shiftedSignificandY_d1) xor (13 downto 0 => EffSub_d2);


   -- Significand addition
   summandX <= '0' & significandNewX & '0' & '0';
   carryIn <= EffSub_d2 and not stickyLow;
   fracAdder: IntAdder_14_Freq500_uid6
      port map ( clk  => clk,
                 Cin => carryIn,
                 X => summandX,
                 Y => summandY,
                 R => significandZ);

   -- Cancellation detection, renormalization (see explanations in IEEEFPAdd.cpp) 
   z1 <=  significandZ(13); -- bit of weight 1
   z0 <=  significandZ(12); -- bit of weight 0
   lzcZInput <= significandZ(13 downto 1);
   IEEEFPAdd_5_10_Freq500_uid2LeadingZeroCounter: LZC_13_Freq500_uid8
      port map ( clk  => clk,
                 I => lzcZInput,
                 O => lzc);
   leftShiftVal <= 
      lzc when ((z1_d2='1') or (z1_d2='0' and z0_d2='1' and xExpFieldZero_d5='1') or (z1_d2='0' and z0_d2='0' and xExpFieldZero_d5='0' and lzc<=expNewX_d6)  or (xExpFieldZero_d5='0' and lzc>=13) ) 
      else (expNewX_d6(3 downto 0)) when (xExpFieldZero_d5='0' and (lzc < 13) and (("0"&lzc)>=expNewX_d6)) 
       else "000"&'1';
   LeftShifterComponent: LeftShifter14_by_max_13_Freq500_uid10
      port map ( clk  => clk,
                 S => leftShiftVal,
                 X => significandZ,
                 R => normalizedSignificand);
   significandPreRound <= normalizedSignificand(12 downto 3); -- remove the implicit zero/one
   lsb <= normalizedSignificand(3);
   roundBit <= normalizedSignificand(2);
   stickyBit <= stickyLow_d5 or  normalizedSignificand_d1(1)or  normalizedSignificand_d1(0);
   deltaExp <=    -- value to subtract to exponent for normalization
      "00000" when ( (z1_d2='0' and z0_d2='1' and xExpFieldZero_d5='0')
          or  (z1_d2='0' and z0_d2='0' and xExpFieldZero_d5='1') )
      else "11111" when ( (z1_d2='1')  or  (z1_d2='0' and z0_d2='1' and xExpFieldZero_d5='1'))
      else ("0" & lzc)-'1' when (z1_d2='0' and z0_d2='0' and xExpFieldZero_d5='0' and lzc<=expNewX_d6 and lzc<13)      else expNewX_d6;
   fullCancellation <= '1' when (lzc>=13) else '0';
   expPreRound <= expNewX_d6 - deltaExp; -- we may have a first overflow here
   expSigPreRound <= expPreRound_d1 & significandPreRound; 
   -- Final rounding, with the mantissa overflowing in the exponent  
   roundUpBit <= '1' when roundBit_d1='1' and (stickyBit='1' or (stickyBit='0' and lsb_d1='1')) else '0';
   roundingAdder: IntAdder_15_Freq500_uid13
      port map ( clk  => clk,
                 Cin => roundUpBit,
                 X => expSigPreRound,
                 Y => "000000000000000",
                 R => expSigR);
   -- Final packing
   resultIsZero <= '1' when (fullCancellation_d4='1' and expSigR_d1(14 downto 10)="00000") else '0';
   resultIsInf <= '1' when resultIsNaN_d9='0' and (((xIsInfinity_d9='1' and yIsInfinity_d9='1'  and EffSub_d9='0')  or (xIsInfinity_d9='0' and yIsInfinity_d9='1')  or (xIsInfinity_d9='1' and yIsInfinity_d9='0')  or  (expSigR_d1(14 downto 10)="11111"))) else '0';
   constInf <= "11111" & "0000000000";
   constNaN <= "111111111111111";
   expSigR2 <= constInf_d10 when resultIsInf='1' else constNaN_d10 when resultIsNaN_d9='1' else expSigR_d1;
   signR <= '0' when ((resultIsNaN_d9='1'  or (resultIsZero='1' and xIsInfinity_d9='0' and yIsInfinity_d9='0')) and (xIsZero_d9='0' or yIsZero_d9='0' or (signNewX_d10 /= signNewY_d10)) )  else signNewX_d10;
   computedR <= signR & expSigR2;
   R <= computedR;
end architecture;

