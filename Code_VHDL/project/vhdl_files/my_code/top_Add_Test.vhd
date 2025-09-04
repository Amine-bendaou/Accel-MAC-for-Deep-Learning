----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- Create Date: 06/11/2025 02:32:14 PM
-- Design Name: 
-- Module Name: Add_float16 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- Dependencies: 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
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

entity top_Add_Test is
    generic (
        EXP_WIDTH  : integer := 5;
        MANT_WIDTH : integer := 10;
        DECAL      : integer := 29
    );
    port (
        clk     : in  std_logic;
        rst     : in  std_logic;
        start   : in  std_logic;
        done    : out std_logic;
        X       : in  std_logic_vector(EXP_WIDTH + MANT_WIDTH  downto 0);
        Y       : in  std_logic_vector(EXP_WIDTH + MANT_WIDTH  downto 0);
        R       : out std_logic_vector(EXP_WIDTH + MANT_WIDTH  downto 0)
    );
end entity;

-- ============================================================================
-- Architecture
-- ============================================================================

architecture Behavioral of top_Add_Test is

    signal signe_x, signe_y : std_logic;
    signal exp_x, exp_y     : unsigned(EXP_WIDTH - 1 downto 0);
    signal mant_x, mant_y   : std_logic_vector(MANT_WIDTH downto 0);

    signal exp_common_1             : unsigned(EXP_WIDTH - 1 downto 0);
    signal aligned_x_1, aligned_y_1 : std_logic_vector(DECAL + MANT_WIDTH downto 0);

    signal r_mant_2         : unsigned(DECAL + MANT_WIDTH + 1 downto 0);
    signal signe_r_2        : std_logic;

    signal r_mant_3         : unsigned(DECAL + MANT_WIDTH + 1 downto 0);
    signal signe_r_3        : std_logic;
    signal shift_count_computed : integer range 0 to DECAL + MANT_WIDTH + 1;
    signal exp_common_3     : unsigned(EXP_WIDTH - 1 downto 0);

    signal final_mant       : std_logic_vector(MANT_WIDTH - 1 downto 0);
    signal final_exp        : unsigned(EXP_WIDTH - 1 downto 0);

    signal guard, round, sticky : std_logic;
    signal mantissa_rounded : unsigned(MANT_WIDTH downto 0);

    signal add_result_internal : std_logic_vector(EXP_WIDTH + MANT_WIDTH downto 0);
    signal done_internal       : std_logic;

    signal stage1_valid, stage2_valid, stage3_valid, stage4_valid, stage5_valid, stage5a_valid, stage6_ready : std_logic;
    
        -- For test
--    constant X_fixed : std_logic_vector(EXP_WIDTH + MANT_WIDTH downto 0) := x"c5ed"; 
--    constant Y_fixed : std_logic_vector(EXP_WIDTH + MANT_WIDTH downto 0) := x"4701";

    -- For debug
--    signal clk_dbg : std_logic;
--    signal start_reg : std_logic := '0';
--    attribute MARK_DEBUG : string;

--    attribute MARK_DEBUG of start_reg         : signal is "true";
--    attribute MARK_DEBUG of done              : signal is "true";
--    attribute MARK_DEBUG of clk_dbg           : signal is "true";

begin

process(clk, rst)
begin
    if rst = '1' then
        signe_x <= '0'; signe_y <= '0';
        exp_x <= (others => '0'); exp_y <= (others => '0');
        mant_x <= (others => '0'); mant_y <= (others => '0');
        aligned_x_1 <= (others => '0'); aligned_y_1 <= (others => '0');
        r_mant_2 <= (others => '0'); signe_r_2 <= '0';
        r_mant_3 <= (others => '0'); signe_r_3 <= '0';
        final_mant <= (others => '0'); final_exp <= (others => '0');
        guard <= '0'; round <= '0'; sticky <= '0';
        mantissa_rounded <= (others => '0');
        add_result_internal <= (others => '0'); done_internal <= '0';
        stage1_valid <= '0'; stage2_valid <= '0'; stage3_valid <= '0';
        stage4_valid <= '0'; stage5_valid <= '0'; stage5a_valid <= '0'; stage6_ready <= '0';

    elsif rising_edge(clk) then
    
--        start_reg <= start;

        -- Defensive default assignments to clear residue
        aligned_x_1 <= (others => '0');
        aligned_y_1 <= (others => '0');
        r_mant_2 <= (others => '0');
        r_mant_3 <= (others => '0');
        shift_count_computed <= 0;
        guard <= '0';
        round <= '0';
        sticky <= '0';
        stage1_valid <= '0';
        stage2_valid <= '0';
        stage3_valid <= '0';
        stage4_valid <= '0';
        stage5_valid <= '0';
        stage5a_valid<= '0';
        stage6_ready <= '0';
        
--        clk_dbg <= not clk_dbg;

        if start = '1' then
            signe_x <= X(EXP_WIDTH + MANT_WIDTH);
            signe_y <= Y(EXP_WIDTH + MANT_WIDTH);
            exp_x <= unsigned(X(EXP_WIDTH + MANT_WIDTH - 1 downto MANT_WIDTH));
            exp_y <= unsigned(Y(EXP_WIDTH + MANT_WIDTH - 1 downto MANT_WIDTH));
            mant_x <= '1' & X(MANT_WIDTH - 1 downto 0);
            mant_y <= '1' & Y(MANT_WIDTH - 1 downto 0);
            
            -- For test 
--            signe_x <= X_fixed(EXP_WIDTH + MANT_WIDTH);
--            signe_y <= Y_fixed(EXP_WIDTH + MANT_WIDTH);
--            exp_x <= unsigned(X_fixed(EXP_WIDTH + MANT_WIDTH - 1 downto MANT_WIDTH));
--            exp_y <= unsigned(Y_fixed(EXP_WIDTH + MANT_WIDTH - 1 downto MANT_WIDTH));
--            mant_x <= '1' & X_fixed(MANT_WIDTH - 1 downto 0);
--            mant_y <= '1' & Y_fixed(MANT_WIDTH - 1 downto 0);    
       
            stage1_valid <= '1';
            done_internal <= '0';
        end if;

        if stage1_valid = '1' then
            if exp_x > exp_y then
                aligned_x_1(DECAL + MANT_WIDTH downto DECAL) <= mant_x;
                aligned_y_1(DECAL + MANT_WIDTH - to_integer(exp_x - exp_y) downto DECAL - to_integer(exp_x - exp_y)) <= mant_y;
                exp_common_1 <= exp_x;
            elsif exp_y > exp_x then
                aligned_y_1(DECAL + MANT_WIDTH downto DECAL) <= mant_y;
                aligned_x_1(DECAL + MANT_WIDTH - to_integer(exp_y - exp_x) downto DECAL - to_integer(exp_y - exp_x)) <= mant_x;
                exp_common_1 <= exp_y;
            else
                aligned_x_1(DECAL + MANT_WIDTH downto DECAL) <= mant_x;
                aligned_y_1(DECAL + MANT_WIDTH downto DECAL) <= mant_y;
                exp_common_1 <= exp_x;
            end if;
            stage2_valid <= '1';
        end if;

        if stage2_valid = '1' then
            if signe_x = signe_y then
                r_mant_2 <= ('0' & unsigned(aligned_x_1)) + ('0' & unsigned(aligned_y_1));
                signe_r_2 <= signe_x;
            elsif unsigned(aligned_x_1) > unsigned(aligned_y_1) then
                r_mant_2 <= ('0' & unsigned(aligned_x_1)) - ('0' & unsigned(aligned_y_1));
                signe_r_2 <= signe_x;
            else
                r_mant_2 <= ('0' & unsigned(aligned_y_1)) - ('0' & unsigned(aligned_x_1));
                signe_r_2 <= signe_y;
            end if;
            exp_common_3 <= exp_common_1;
            stage3_valid <= '1';
        end if;

        if stage3_valid = '1' then
            if r_mant_2 = 0 then
                shift_count_computed <= 0;
                r_mant_3 <= (others => '0');
                signe_r_3 <= '0';
                exp_common_3 <= (others => '0');
            elsif r_mant_2(DECAL + MANT_WIDTH + 1) = '1' then
                r_mant_3 <= shift_right(r_mant_2, 1);
                exp_common_3 <= exp_common_3 + 1;
                shift_count_computed <= 0;
                signe_r_3 <= signe_r_2;
            else
                for i in DECAL + MANT_WIDTH downto 0 loop
                    if r_mant_2(i) = '1' then
                        shift_count_computed <= (DECAL + MANT_WIDTH) - i;
                        exit;
                    end if;
                end loop;
                r_mant_3 <= r_mant_2;
                signe_r_3 <= signe_r_2;
            end if;
            stage4_valid <= '1';
        end if;

        if stage4_valid = '1' then
            guard <= r_mant_3(DECAL - 1);
            round <= r_mant_3(DECAL - 2);
            for i in DECAL - 3 downto 0 loop
                sticky <= sticky or r_mant_3(i);
            end loop;

            final_mant <= std_logic_vector(shift_left(r_mant_3, shift_count_computed)(DECAL + MANT_WIDTH - 1 downto DECAL));
            final_exp <= exp_common_3 - to_unsigned(shift_count_computed, EXP_WIDTH);
            stage5_valid <= '1';
        end if;

        if stage5_valid = '1' then
            if guard = '1' then
                mantissa_rounded <= unsigned("0" & final_mant) + 1;
                stage5a_valid <= '1';
            else
                stage6_ready <= '1';
            end if;
        elsif stage5a_valid = '1' then
            if mantissa_rounded(MANT_WIDTH) = '1' then
                final_mant <= std_logic_vector(mantissa_rounded(MANT_WIDTH downto 1));
                final_exp <= final_exp + 1;
            else
                final_mant <= std_logic_vector(mantissa_rounded(MANT_WIDTH - 1 downto 0));
            end if;
            stage5a_valid <= '0';
            stage6_ready <= '1';
        end if;

        if stage6_ready = '1' then
            add_result_internal <= signe_r_3 & std_logic_vector(final_exp) & final_mant;
            done_internal <= '1';
        elsif start = '1' then
            done_internal <= '0';
        end if;
    end if;
end process;

R <= add_result_internal;
done <= done_internal;

end Behavioral;
