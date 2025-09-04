----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/10/2025 04:30:10 PM
-- Design Name: 
-- Module Name: Multiplier_float16 - Behavioral
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


-- ============================================================================
-- Implementation Version
-- ============================================================================


-- ============================================================================
-- Entity Declaration
-- ============================================================================

entity top_Mult_Test is
    generic (
        EXP_WIDTH  : integer := 5;
        MANT_WIDTH : integer := 10
    );
    port (
        clk     : in  std_logic;
        rst     : in  std_logic;
        start   : in  std_logic;
        done    : out std_logic;
        X       : in  std_logic_vector(EXP_WIDTH + MANT_WIDTH downto 0);
        Y       : in  std_logic_vector(EXP_WIDTH + MANT_WIDTH downto 0);
        R       : out std_logic_vector(EXP_WIDTH + MANT_WIDTH downto 0)
    );
end entity;


-- ============================================================================
-- Architecture
-- ============================================================================


architecture Behavioral of top_Mult_Test is

    -- Stage 1: Input registers
    signal signe_x_reg, signe_y_reg : std_logic;
    signal exp_x_reg, exp_y_reg     : unsigned(EXP_WIDTH - 1 downto 0);
    signal mant_x_reg, mant_y_reg   : unsigned(MANT_WIDTH downto 0);
    signal start_stage1             : std_logic;

    -- Stage 2: Multiplication and exponent addition
    signal signe_r                  : std_logic;
    signal mant_r                   : unsigned(2 * MANT_WIDTH + 1 downto 0);
    signal exp_r                    : integer;
    signal start_stage2             : std_logic;

    -- Stage 3: Normalization and rounding bits
    signal final_mant              : std_logic_vector(MANT_WIDTH - 1 downto 0);
    signal final_exp               : unsigned(EXP_WIDTH - 1 downto 0);
    signal guard_bit, round_bit, sticky_bit : std_logic;
    signal mantissa_ext            : unsigned(MANT_WIDTH downto 0);
    signal mantissa_ext_next       : unsigned(MANT_WIDTH downto 0);
    signal rounding_ready          : std_logic;

    -- Stage 4: Rounding and post-normalization
    signal rounded_mant            : std_logic_vector(MANT_WIDTH - 1 downto 0);
    signal rounded_exp             : unsigned(EXP_WIDTH - 1 downto 0);
    signal mult_result             : std_logic_vector(EXP_WIDTH + MANT_WIDTH downto 0);
    signal round_stage_ready       : std_logic ;
    signal write_result            : std_logic ;
    
    -- For test
--    constant X_fixed : std_logic_vector(EXP_WIDTH + MANT_WIDTH downto 0) := x"c5ed"; 
--    constant Y_fixed : std_logic_vector(EXP_WIDTH + MANT_WIDTH downto 0) := x"4701"; 

   -- For debug
--    signal clk_dbg : std_logic;   
--    attribute MARK_DEBUG : string;

--    attribute MARK_DEBUG of start             : signal is "true";
--    attribute MARK_DEBUG of done              : signal is "true";
--    attribute MARK_DEBUG of start_stage1      : signal is "true";
--    attribute MARK_DEBUG of start_stage2      : signal is "true";
--    attribute MARK_DEBUG of rounding_ready    : signal is "true";
--    attribute MARK_DEBUG of round_stage_ready : signal is "true";
--    attribute MARK_DEBUG of write_result      : signal is "true";
--    attribute MARK_DEBUG of clk_dbg           : signal is "true";

begin

process(clk, rst)
begin
    if rst = '1' then
        -- Reset all registers
        signe_x_reg <= '0'; signe_y_reg <= '0';
        exp_x_reg <= (others => '0'); exp_y_reg <= (others => '0');
        mant_x_reg <= (others => '0'); mant_y_reg <= (others => '0');
        mant_r <= (others => '0');
        final_mant <= (others => '0'); final_exp <= (others => '0');
        mantissa_ext <= (others => '0'); mantissa_ext_next <= (others => '0');
        rounded_mant <= (others => '0'); rounded_exp <= (others => '0');
        mult_result <= (others => '0');
        done <= '0';
        signe_r <= '0';
        exp_r <= 0;

        start_stage1 <= '0'; start_stage2 <= '0';
        rounding_ready <= '0'; round_stage_ready <= '0'; write_result <= '0';
        guard_bit <= '0'; round_bit <= '0'; sticky_bit <= '0';

    elsif rising_edge(clk) then
    
        -- For debug
--         clk_dbg <= not clk_dbg;

        -- Stage 1: Register input operands
        if start = '1' then          
            signe_x_reg <= X(EXP_WIDTH + MANT_WIDTH);
            signe_y_reg <= Y(EXP_WIDTH + MANT_WIDTH);
            exp_x_reg   <= unsigned(X(EXP_WIDTH + MANT_WIDTH - 1 downto MANT_WIDTH));
            exp_y_reg   <= unsigned(Y(EXP_WIDTH + MANT_WIDTH - 1 downto MANT_WIDTH));
            mant_x_reg  <= unsigned("1" & X(MANT_WIDTH - 1 downto 0));
            mant_y_reg  <= unsigned("1" & Y(MANT_WIDTH - 1 downto 0));
            
            -- For test 
--            signe_x_reg <= X_fixed(EXP_WIDTH + MANT_WIDTH);
--            signe_y_reg <= Y_fixed(EXP_WIDTH + MANT_WIDTH);
--            exp_x_reg <= unsigned(X_fixed(EXP_WIDTH + MANT_WIDTH - 1 downto MANT_WIDTH));
--            exp_y_reg <= unsigned(Y_fixed(EXP_WIDTH + MANT_WIDTH - 1 downto MANT_WIDTH));
--            mant_x_reg <= unsigned('1' & X_fixed(MANT_WIDTH - 1 downto 0));
--            mant_y_reg <= unsigned('1' & Y_fixed(MANT_WIDTH - 1 downto 0));

            start_stage1 <= '1';
        else
            start_stage1 <= '0';
        end if;

        -- Stage 2: Multiply mantissas and compute exponent
        if start_stage1 = '1' then
            signe_r <= signe_x_reg xor signe_y_reg;
            exp_r <= to_integer(exp_x_reg) + to_integer(exp_y_reg) - (2**(EXP_WIDTH - 1) - 1);
            mant_r <= mant_x_reg * mant_y_reg;
            start_stage2 <= '1';
        else
            start_stage2 <= '0';
        end if;

        -- Stage 3: Normalize result and extract rounding bits
        if start_stage2 = '1' then
            if mant_r(2 * MANT_WIDTH + 1) = '1' then
                final_mant <= std_logic_vector(mant_r(2 * MANT_WIDTH downto MANT_WIDTH + 1));
                final_exp  <= to_unsigned(exp_r + 1, EXP_WIDTH);
                guard_bit  <= mant_r(MANT_WIDTH);
                round_bit  <= mant_r(MANT_WIDTH - 1);
                sticky_bit <= '0';
                for i in 0 to MANT_WIDTH - 2 loop
                    sticky_bit <= sticky_bit or mant_r(i);
                end loop;
            else
                final_mant <= std_logic_vector(mant_r(2 * MANT_WIDTH - 1 downto MANT_WIDTH));
                final_exp  <= to_unsigned(exp_r, EXP_WIDTH);
                guard_bit  <= mant_r(MANT_WIDTH - 1);
                round_bit  <= mant_r(MANT_WIDTH - 2);
                sticky_bit <= '0';
                for i in 0 to MANT_WIDTH - 3 loop
                    sticky_bit <= sticky_bit or mant_r(i);
                end loop;
            end if;
            rounding_ready <= '1';
        else
            rounding_ready <= '0';
        end if;

        -- Stage 4a: Perform rounding decision
        if rounding_ready = '1' then
            mantissa_ext <= ('0' & unsigned(final_mant)); -- cette ligne est inutile à voir
            if guard_bit = '1' and ((round_bit = '1') or (sticky_bit = '1') or (final_mant(0) = '1')) then
                mantissa_ext_next <= ('0' & unsigned(final_mant)) + 1;
            else
                mantissa_ext_next <= ('0' & unsigned(final_mant));
            end if;
            round_stage_ready <= '1';
        else
            round_stage_ready <= '0';
        end if;

        -- Stage 4b: Register rounded mantissa and exponent
        if round_stage_ready = '1' then
            if mantissa_ext_next(MANT_WIDTH) = '1' then
                rounded_mant <= std_logic_vector(mantissa_ext_next(MANT_WIDTH downto 1));
                rounded_exp  <= final_exp + 1;
            else
                rounded_mant <= std_logic_vector(mantissa_ext_next(MANT_WIDTH - 1 downto 0));
                rounded_exp  <= final_exp;
            end if;
            write_result <= '1';
        else
            write_result <= '0';
        end if;

        -- Stage 5: Final output result assignment
        if write_result = '1' then
            mult_result <= signe_r & std_logic_vector(rounded_exp) & rounded_mant;
            done <= '1';
        else
            done <= '0';
        end if;

    end if;
end process;

-- Assign final result to output port
R <= mult_result;

end Behavioral;
