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
--                RightShifterSticky13_by_max_12_Freq100_uid4
-- VHDL generated for DummyFPGA @ 100MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca (2008-2011), Florent de Dinechin (2008-2019)
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
-- Clock period (ns): 10
-- Target frequency (MHz): 100
-- Input signals: X S
-- Output signals: R Sticky
--  approx. input signal timings: X: (c0, 2.170000ns)S: (c0, 4.240000ns)
--  approx. output signal timings: R: (c0, 5.340000ns)Sticky: (c0, 7.040000ns)

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity RightShifterSticky13_by_max_12_Freq100_uid4 is
    port (clk : in std_logic;
          X : in  std_logic_vector(12 downto 0);
          S : in  std_logic_vector(3 downto 0);
          R : out  std_logic_vector(12 downto 0);
          Sticky : out  std_logic   );
end entity;

architecture arch of RightShifterSticky13_by_max_12_Freq100_uid4 is
signal ps :  std_logic_vector(3 downto 0);
   -- timing of ps: (c0, 4.240000ns)
signal Xpadded :  std_logic_vector(12 downto 0);
   -- timing of Xpadded: (c0, 2.170000ns)
signal level4 :  std_logic_vector(12 downto 0);
   -- timing of level4: (c0, 2.170000ns)
signal stk3 :  std_logic;
   -- timing of stk3: (c0, 4.810000ns)
signal level3 :  std_logic_vector(12 downto 0);
   -- timing of level3: (c0, 4.240000ns)
signal stk2 :  std_logic;
   -- timing of stk2: (c0, 5.370000ns)
signal level2 :  std_logic_vector(12 downto 0);
   -- timing of level2: (c0, 4.790000ns)
signal stk1 :  std_logic;
   -- timing of stk1: (c0, 5.930000ns)
signal level1 :  std_logic_vector(12 downto 0);
   -- timing of level1: (c0, 4.790000ns)
signal stk0 :  std_logic;
   -- timing of stk0: (c0, 6.490000ns)
signal level0 :  std_logic_vector(12 downto 0);
   -- timing of level0: (c0, 5.340000ns)
signal stk :  std_logic;
   -- timing of stk: (c0, 7.040000ns)
begin
   ps<= S;
   Xpadded <= X;
   level4<= Xpadded;
   stk3 <= '1' when (level4(7 downto 0)/="00000000" and ps(3)='1')   else '0';
   level3 <=  level4 when  ps(3)='0'    else (7 downto 0 => '0') & level4(12 downto 8);
   stk2 <= '1' when (level3(3 downto 0)/="0000" and ps(2)='1') or stk3 ='1'   else '0';
   level2 <=  level3 when  ps(2)='0'    else (3 downto 0 => '0') & level3(12 downto 4);
   stk1 <= '1' when (level2(1 downto 0)/="00" and ps(1)='1') or stk2 ='1'   else '0';
   level1 <=  level2 when  ps(1)='0'    else (1 downto 0 => '0') & level2(12 downto 2);
   stk0 <= '1' when (level1(0 downto 0)/="0" and ps(0)='1') or stk1 ='1'   else '0';
   level0 <=  level1 when  ps(0)='0'    else (0 downto 0 => '0') & level1(12 downto 1);
   stk <= stk0;
   R <= level0;
   Sticky <= stk;
end architecture;

--------------------------------------------------------------------------------
--                          IntAdder_14_Freq100_uid6
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
--  approx. input signal timings: X: (c0, 2.170000ns)Y: (c0, 5.890000ns)Cin: (c0, 7.040000ns)
--  approx. output signal timings: R: (c0, 8.170000ns)

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity IntAdder_14_Freq100_uid6 is
    port (clk : in std_logic;
          X : in  std_logic_vector(13 downto 0);
          Y : in  std_logic_vector(13 downto 0);
          Cin : in  std_logic;
          R : out  std_logic_vector(13 downto 0)   );
end entity;

architecture arch of IntAdder_14_Freq100_uid6 is
signal Rtmp :  std_logic_vector(13 downto 0);
   -- timing of Rtmp: (c0, 8.170000ns)
begin
   Rtmp <= X + Y + Cin;
   R <= Rtmp;
end architecture;

--------------------------------------------------------------------------------
--                            LZC_13_Freq100_uid8
-- VHDL generated for DummyFPGA @ 100MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Florent de Dinechin, Bogdan Pasca (2007)
--------------------------------------------------------------------------------
-- Pipeline depth: 1 cycles
-- Clock period (ns): 10
-- Target frequency (MHz): 100
-- Input signals: I
-- Output signals: O
--  approx. input signal timings: I: (c0, 8.170000ns)
--  approx. output signal timings: O: (c1, 1.150000ns)

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity LZC_13_Freq100_uid8 is
    port (clk : in std_logic;
          I : in  std_logic_vector(12 downto 0);
          O : out  std_logic_vector(3 downto 0)   );
end entity;

architecture arch of LZC_13_Freq100_uid8 is
signal level4 :  std_logic_vector(14 downto 0);
   -- timing of level4: (c0, 8.170000ns)
signal digit3, digit3_d1 :  std_logic;
   -- timing of digit3: (c0, 8.740000ns)
signal level3, level3_d1 :  std_logic_vector(6 downto 0);
   -- timing of level3: (c0, 9.290000ns)
signal digit2 :  std_logic;
   -- timing of digit2: (c1, 0.050000ns)
signal level2 :  std_logic_vector(2 downto 0);
   -- timing of level2: (c1, 0.600000ns)
signal lowBits :  std_logic_vector(1 downto 0);
   -- timing of lowBits: (c1, 1.150000ns)
signal outHighBits :  std_logic_vector(1 downto 0);
   -- timing of outHighBits: (c1, 0.050000ns)
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            digit3_d1 <=  digit3;
            level3_d1 <=  level3;
         end if;
      end process;
   -- pad input to the next power of two minus 1
   level4 <= I & "11";
   -- Main iteration for large inputs
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
   outHighBits <= digit3_d1 & digit2 & "";
   O <= outHighBits & lowBits ;
end architecture;

--------------------------------------------------------------------------------
--                   LeftShifter14_by_max_13_Freq100_uid10
-- VHDL generated for DummyFPGA @ 100MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca (2008-2011), Florent de Dinechin (2008-2019)
--------------------------------------------------------------------------------
-- Pipeline depth: 1 cycles
-- Clock period (ns): 10
-- Target frequency (MHz): 100
-- Input signals: X S
-- Output signals: R
--  approx. input signal timings: X: (c0, 8.170000ns)S: (c1, 2.730000ns)
--  approx. output signal timings: R: (c1, 4.537692ns)

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity LeftShifter14_by_max_13_Freq100_uid10 is
    port (clk : in std_logic;
          X : in  std_logic_vector(13 downto 0);
          S : in  std_logic_vector(3 downto 0);
          R : out  std_logic_vector(26 downto 0)   );
end entity;

architecture arch of LeftShifter14_by_max_13_Freq100_uid10 is
signal ps :  std_logic_vector(3 downto 0);
   -- timing of ps: (c1, 2.730000ns)
signal level0, level0_d1 :  std_logic_vector(13 downto 0);
   -- timing of level0: (c0, 8.170000ns)
signal level1 :  std_logic_vector(14 downto 0);
   -- timing of level1: (c1, 2.730000ns)
signal level2 :  std_logic_vector(16 downto 0);
   -- timing of level2: (c1, 3.541538ns)
signal level3 :  std_logic_vector(20 downto 0);
   -- timing of level3: (c1, 3.541538ns)
signal level4 :  std_logic_vector(28 downto 0);
   -- timing of level4: (c1, 4.537692ns)
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            level0_d1 <=  level0;
         end if;
      end process;
   ps<= S;
   level0<= X;
   level1<= level0_d1 & (0 downto 0 => '0') when ps(0)= '1' else     (0 downto 0 => '0') & level0_d1;
   level2<= level1 & (1 downto 0 => '0') when ps(1)= '1' else     (1 downto 0 => '0') & level1;
   level3<= level2 & (3 downto 0 => '0') when ps(2)= '1' else     (3 downto 0 => '0') & level2;
   level4<= level3 & (7 downto 0 => '0') when ps(3)= '1' else     (7 downto 0 => '0') & level3;
   R <= level4(26 downto 0);
end architecture;

--------------------------------------------------------------------------------
--                         IntAdder_15_Freq100_uid13
-- VHDL generated for DummyFPGA @ 100MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin (2008-2016)
--------------------------------------------------------------------------------
-- Pipeline depth: 1 cycles
-- Clock period (ns): 10
-- Target frequency (MHz): 100
-- Input signals: X Y Cin
-- Output signals: R
--  approx. input signal timings: X: (c1, 4.537692ns)Y: (c0, 0.000000ns)Cin: (c1, 6.097692ns)
--  approx. output signal timings: R: (c1, 7.237692ns)

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity IntAdder_15_Freq100_uid13 is
    port (clk : in std_logic;
          X : in  std_logic_vector(14 downto 0);
          Y : in  std_logic_vector(14 downto 0);
          Cin : in  std_logic;
          R : out  std_logic_vector(14 downto 0)   );
end entity;

architecture arch of IntAdder_15_Freq100_uid13 is
signal Rtmp :  std_logic_vector(14 downto 0);
   -- timing of Rtmp: (c1, 7.237692ns)
signal Y_d1 :  std_logic_vector(14 downto 0);
   -- timing of Y: (c0, 0.000000ns)
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            Y_d1 <=  Y;
         end if;
      end process;
   Rtmp <= X + Y_d1 + Cin;
   R <= Rtmp;
end architecture;

--------------------------------------------------------------------------------
--                                  FPAdd16
--                       (IEEEFPAdd_5_10_Freq100_uid2)
-- VHDL generated for DummyFPGA @ 100MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Florent de Dinechin, Valentin Huguet (2016)
--------------------------------------------------------------------------------
-- Pipeline depth: 1 cycles
-- Clock period (ns): 10
-- Target frequency (MHz): 100
-- Input signals: X Y
-- Output signals: R
--  approx. input signal timings: X: (c0, 0.000000ns)Y: (c0, 0.000000ns)
--  approx. output signal timings: R: (c1, 8.787692ns)

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
   component RightShifterSticky13_by_max_12_Freq100_uid4 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(12 downto 0);
             S : in  std_logic_vector(3 downto 0);
             R : out  std_logic_vector(12 downto 0);
             Sticky : out  std_logic   );
   end component;

   component IntAdder_14_Freq100_uid6 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(13 downto 0);
             Y : in  std_logic_vector(13 downto 0);
             Cin : in  std_logic;
             R : out  std_logic_vector(13 downto 0)   );
   end component;

   component LZC_13_Freq100_uid8 is
      port ( clk : in std_logic;
             I : in  std_logic_vector(12 downto 0);
             O : out  std_logic_vector(3 downto 0)   );
   end component;

   component LeftShifter14_by_max_13_Freq100_uid10 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(13 downto 0);
             S : in  std_logic_vector(3 downto 0);
             R : out  std_logic_vector(26 downto 0)   );
   end component;

   component IntAdder_15_Freq100_uid13 is
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
signal newX :  std_logic_vector(15 downto 0);
   -- timing of newX: (c0, 1.620000ns)
signal newY :  std_logic_vector(15 downto 0);
   -- timing of newY: (c0, 1.620000ns)
signal expDiff :  std_logic_vector(5 downto 0);
   -- timing of expDiff: (c0, 1.620000ns)
signal expNewX, expNewX_d1 :  std_logic_vector(4 downto 0);
   -- timing of expNewX: (c0, 1.620000ns)
signal expNewY :  std_logic_vector(4 downto 0);
   -- timing of expNewY: (c0, 1.620000ns)
signal signNewX, signNewX_d1 :  std_logic;
   -- timing of signNewX: (c0, 1.620000ns)
signal signNewY, signNewY_d1 :  std_logic;
   -- timing of signNewY: (c0, 1.620000ns)
signal EffSub, EffSub_d1 :  std_logic;
   -- timing of EffSub: (c0, 2.170000ns)
signal xExpFieldZero, xExpFieldZero_d1 :  std_logic;
   -- timing of xExpFieldZero: (c0, 2.170000ns)
signal yExpFieldZero :  std_logic;
   -- timing of yExpFieldZero: (c0, 2.170000ns)
signal xExpFieldAllOnes :  std_logic;
   -- timing of xExpFieldAllOnes: (c0, 2.170000ns)
signal yExpFieldAllOnes :  std_logic;
   -- timing of yExpFieldAllOnes: (c0, 2.170000ns)
signal xSigFieldZero :  std_logic;
   -- timing of xSigFieldZero: (c0, 2.170000ns)
signal ySigFieldZero :  std_logic;
   -- timing of ySigFieldZero: (c0, 2.170000ns)
signal xIsNaN :  std_logic;
   -- timing of xIsNaN: (c0, 2.720000ns)
signal yIsNaN :  std_logic;
   -- timing of yIsNaN: (c0, 2.720000ns)
signal xIsInfinity, xIsInfinity_d1 :  std_logic;
   -- timing of xIsInfinity: (c0, 2.720000ns)
signal yIsInfinity, yIsInfinity_d1 :  std_logic;
   -- timing of yIsInfinity: (c0, 2.720000ns)
signal xIsZero, xIsZero_d1 :  std_logic;
   -- timing of xIsZero: (c0, 2.720000ns)
signal yIsZero, yIsZero_d1 :  std_logic;
   -- timing of yIsZero: (c0, 2.720000ns)
signal bothSubNormals :  std_logic;
   -- timing of bothSubNormals: (c0, 2.720000ns)
signal resultIsNaN, resultIsNaN_d1 :  std_logic;
   -- timing of resultIsNaN: (c0, 3.270000ns)
signal significandNewX :  std_logic_vector(10 downto 0);
   -- timing of significandNewX: (c0, 2.170000ns)
signal significandNewY :  std_logic_vector(10 downto 0);
   -- timing of significandNewY: (c0, 2.170000ns)
signal allShiftedOut :  std_logic;
   -- timing of allShiftedOut: (c0, 2.660000ns)
signal rightShiftValue :  std_logic_vector(3 downto 0);
   -- timing of rightShiftValue: (c0, 3.210000ns)
signal shiftCorrection :  std_logic;
   -- timing of shiftCorrection: (c0, 2.720000ns)
signal finalRightShiftValue :  std_logic_vector(3 downto 0);
   -- timing of finalRightShiftValue: (c0, 4.240000ns)
signal significandY00 :  std_logic_vector(12 downto 0);
   -- timing of significandY00: (c0, 2.170000ns)
signal shiftedSignificandY :  std_logic_vector(12 downto 0);
   -- timing of shiftedSignificandY: (c0, 5.340000ns)
signal stickyLow, stickyLow_d1 :  std_logic;
   -- timing of stickyLow: (c0, 7.040000ns)
signal summandY :  std_logic_vector(13 downto 0);
   -- timing of summandY: (c0, 5.890000ns)
signal summandX :  std_logic_vector(13 downto 0);
   -- timing of summandX: (c0, 2.170000ns)
signal carryIn :  std_logic;
   -- timing of carryIn: (c0, 7.040000ns)
signal significandZ :  std_logic_vector(13 downto 0);
   -- timing of significandZ: (c0, 8.170000ns)
signal z1, z1_d1 :  std_logic;
   -- timing of z1: (c0, 8.170000ns)
signal z0, z0_d1 :  std_logic;
   -- timing of z0: (c0, 8.170000ns)
signal lzcZInput :  std_logic_vector(12 downto 0);
   -- timing of lzcZInput: (c0, 8.170000ns)
signal lzc :  std_logic_vector(3 downto 0);
   -- timing of lzc: (c1, 1.150000ns)
signal leftShiftVal :  std_logic_vector(3 downto 0);
   -- timing of leftShiftVal: (c1, 2.730000ns)
signal normalizedSignificand :  std_logic_vector(26 downto 0);
   -- timing of normalizedSignificand: (c1, 4.537692ns)
signal significandPreRound :  std_logic_vector(9 downto 0);
   -- timing of significandPreRound: (c1, 4.537692ns)
signal lsb :  std_logic;
   -- timing of lsb: (c1, 4.537692ns)
signal roundBit :  std_logic;
   -- timing of roundBit: (c1, 4.537692ns)
signal stickyBit :  std_logic;
   -- timing of stickyBit: (c1, 5.547692ns)
signal deltaExp :  std_logic_vector(4 downto 0);
   -- timing of deltaExp: (c1, 1.150000ns)
signal fullCancellation :  std_logic;
   -- timing of fullCancellation: (c1, 2.140000ns)
signal expPreRound :  std_logic_vector(4 downto 0);
   -- timing of expPreRound: (c1, 2.190000ns)
signal expSigPreRound :  std_logic_vector(14 downto 0);
   -- timing of expSigPreRound: (c1, 4.537692ns)
signal roundUpBit :  std_logic;
   -- timing of roundUpBit: (c1, 6.097692ns)
signal expSigR :  std_logic_vector(14 downto 0);
   -- timing of expSigR: (c1, 7.237692ns)
signal resultIsZero :  std_logic;
   -- timing of resultIsZero: (c1, 8.237692ns)
signal resultIsInf :  std_logic;
   -- timing of resultIsInf: (c1, 8.237692ns)
signal constInf, constInf_d1 :  std_logic_vector(14 downto 0);
   -- timing of constInf: (c0, 0.000000ns)
signal constNaN, constNaN_d1 :  std_logic_vector(14 downto 0);
   -- timing of constNaN: (c0, 0.000000ns)
signal expSigR2 :  std_logic_vector(14 downto 0);
   -- timing of expSigR2: (c1, 8.787692ns)
signal signR :  std_logic;
   -- timing of signR: (c1, 8.787692ns)
signal computedR :  std_logic_vector(15 downto 0);
   -- timing of computedR: (c1, 8.787692ns)
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            expNewX_d1 <=  expNewX;
            signNewX_d1 <=  signNewX;
            signNewY_d1 <=  signNewY;
            EffSub_d1 <=  EffSub;
            xExpFieldZero_d1 <=  xExpFieldZero;
            xIsInfinity_d1 <=  xIsInfinity;
            yIsInfinity_d1 <=  yIsInfinity;
            xIsZero_d1 <=  xIsZero;
            yIsZero_d1 <=  yIsZero;
            resultIsNaN_d1 <=  resultIsNaN;
            stickyLow_d1 <=  stickyLow;
            z1_d1 <=  z1;
            z0_d1 <=  z0;
            constInf_d1 <=  constInf;
            constNaN_d1 <=  constNaN;
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
   EffSub <= signNewX xor signNewY;
   -- Special case dectection
   xExpFieldZero <= '1' when expNewX="00000" else '0';
   yExpFieldZero <= '1' when expNewY="00000" else '0';
   xExpFieldAllOnes <= '1' when expNewX="11111" else '0';
   yExpFieldAllOnes <= '1' when expNewY="11111" else '0';
   xSigFieldZero <= '1' when newX(9 downto 0)="0000000000" else '0';
   ySigFieldZero <= '1' when newY(9 downto 0)="0000000000" else '0';
   xIsNaN <= xExpFieldAllOnes and not xSigFieldZero;
   yIsNaN <= yExpFieldAllOnes and not ySigFieldZero;
   xIsInfinity <= xExpFieldAllOnes and xSigFieldZero;
   yIsInfinity <= yExpFieldAllOnes and ySigFieldZero;
   xIsZero <= xExpFieldZero and xSigFieldZero;
   yIsZero <= yExpFieldZero and ySigFieldZero;
   bothSubNormals <=  xExpFieldZero and yExpFieldZero;
   resultIsNaN <=  xIsNaN or yIsNaN  or  (xIsInfinity and yIsInfinity and EffSub);
   significandNewX <= not(xExpFieldZero) & newX(9 downto 0);
   significandNewY <= not(yExpFieldZero) & newY(9 downto 0);

   -- Significand alignment
   allShiftedOut <= '1' when (expDiff >= 13) else '0';
   rightShiftValue <= expDiff(3 downto 0) when allShiftedOut='0' else CONV_STD_LOGIC_VECTOR(13,4) ;
   shiftCorrection <= '1' when (yExpFieldZero='1' and xExpFieldZero='0') else '0'; -- only other cases are: both normal or both subnormal
   finalRightShiftValue <= rightShiftValue - ("000" & shiftCorrection);
   significandY00 <= significandNewY & "00";
   RightShifterComponent: RightShifterSticky13_by_max_12_Freq100_uid4
      port map ( clk  => clk,
                 S => finalRightShiftValue,
                 X => significandY00,
                 R => shiftedSignificandY,
                 Sticky => stickyLow);
   summandY <= ('0' & shiftedSignificandY) xor (13 downto 0 => EffSub);


   -- Significand addition
   summandX <= '0' & significandNewX & '0' & '0';
   carryIn <= EffSub and not stickyLow;
   fracAdder: IntAdder_14_Freq100_uid6
      port map ( clk  => clk,
                 Cin => carryIn,
                 X => summandX,
                 Y => summandY,
                 R => significandZ);

   -- Cancellation detection, renormalization (see explanations in IEEEFPAdd.cpp) 
   z1 <=  significandZ(13); -- bit of weight 1
   z0 <=  significandZ(12); -- bit of weight 0
   lzcZInput <= significandZ(13 downto 1);
   IEEEFPAdd_5_10_Freq100_uid2LeadingZeroCounter: LZC_13_Freq100_uid8
      port map ( clk  => clk,
                 I => lzcZInput,
                 O => lzc);
   leftShiftVal <= 
      lzc when ((z1_d1='1') or (z1_d1='0' and z0_d1='1' and xExpFieldZero_d1='1') or (z1_d1='0' and z0_d1='0' and xExpFieldZero_d1='0' and lzc<=expNewX_d1)  or (xExpFieldZero_d1='0' and lzc>=13) ) 
      else (expNewX_d1(3 downto 0)) when (xExpFieldZero_d1='0' and (lzc < 13) and (("0"&lzc)>=expNewX_d1)) 
       else "000"&'1';
   LeftShifterComponent: LeftShifter14_by_max_13_Freq100_uid10
      port map ( clk  => clk,
                 S => leftShiftVal,
                 X => significandZ,
                 R => normalizedSignificand);
   significandPreRound <= normalizedSignificand(12 downto 3); -- remove the implicit zero/one
   lsb <= normalizedSignificand(3);
   roundBit <= normalizedSignificand(2);
   stickyBit <= stickyLow_d1 or  normalizedSignificand(1)or  normalizedSignificand(0);
   deltaExp <=    -- value to subtract to exponent for normalization
      "00000" when ( (z1_d1='0' and z0_d1='1' and xExpFieldZero_d1='0')
          or  (z1_d1='0' and z0_d1='0' and xExpFieldZero_d1='1') )
      else "11111" when ( (z1_d1='1')  or  (z1_d1='0' and z0_d1='1' and xExpFieldZero_d1='1'))
      else ("0" & lzc)-'1' when (z1_d1='0' and z0_d1='0' and xExpFieldZero_d1='0' and lzc<=expNewX_d1 and lzc<13)      else expNewX_d1;
   fullCancellation <= '1' when (lzc>=13) else '0';
   expPreRound <= expNewX_d1 - deltaExp; -- we may have a first overflow here
   expSigPreRound <= expPreRound & significandPreRound; 
   -- Final rounding, with the mantissa overflowing in the exponent  
   roundUpBit <= '1' when roundBit='1' and (stickyBit='1' or (stickyBit='0' and lsb='1')) else '0';
   roundingAdder: IntAdder_15_Freq100_uid13
      port map ( clk  => clk,
                 Cin => roundUpBit,
                 X => expSigPreRound,
                 Y => "000000000000000",
                 R => expSigR);
   -- Final packing
   resultIsZero <= '1' when (fullCancellation='1' and expSigR(14 downto 10)="00000") else '0';
   resultIsInf <= '1' when resultIsNaN_d1='0' and (((xIsInfinity_d1='1' and yIsInfinity_d1='1'  and EffSub_d1='0')  or (xIsInfinity_d1='0' and yIsInfinity_d1='1')  or (xIsInfinity_d1='1' and yIsInfinity_d1='0')  or  (expSigR(14 downto 10)="11111"))) else '0';
   constInf <= "11111" & "0000000000";
   constNaN <= "111111111111111";
   expSigR2 <= constInf_d1 when resultIsInf='1' else constNaN_d1 when resultIsNaN_d1='1' else expSigR;
   signR <= '0' when ((resultIsNaN_d1='1'  or (resultIsZero='1' and xIsInfinity_d1='0' and yIsInfinity_d1='0')) and (xIsZero_d1='0' or yIsZero_d1='0' or (signNewX_d1 /= signNewY_d1)) )  else signNewX_d1;
   computedR <= signR & expSigR2;
   R <= computedR;
end architecture;

