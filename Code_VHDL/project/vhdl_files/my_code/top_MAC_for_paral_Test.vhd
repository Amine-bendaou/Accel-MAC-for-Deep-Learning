----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- Create Date: 06/12/2025 04:29:57 PM
-- Design Name: 
-- Module Name: Acc_float16 - Behavioral
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
-- MAC Parallelization Version
-- ============================================================================


-- ============================================================================
-- Entity Declaration
-- ============================================================================

entity top_MAC_for_paral_Test is
    generic (
        EXP_WIDTH  : integer := 5;
        MANT_WIDTH : integer := 10
    );
    port (
        clk        : in  std_logic;
        rst        : in  std_logic;
        enable     : in  std_logic;
        stop       : in  std_logic;
        add_done   : out std_logic;
        InA        : in  std_logic_vector(EXP_WIDTH + MANT_WIDTH downto 0);
        InB        : in  std_logic_vector(EXP_WIDTH + MANT_WIDTH downto 0);
        Out_result : out std_logic_vector(EXP_WIDTH + MANT_WIDTH downto 0)
    );
end entity;

-- ============================================================================
-- Architecture
-- ============================================================================


architecture Structural of top_MAC_for_paral_Test is

    component top_Mult_Test
        port (
            clk   : in  std_logic;
            rst   : in  std_logic;
            start : in  std_logic;
            done  : out std_logic;
            X     : in  std_logic_vector(EXP_WIDTH + MANT_WIDTH downto 0);
            Y     : in  std_logic_vector(EXP_WIDTH + MANT_WIDTH downto 0);
            R     : out std_logic_vector(EXP_WIDTH + MANT_WIDTH downto 0)
        );
    end component;

    component top_Add_Test
        port (
            clk   : in  std_logic;
            rst   : in  std_logic;
            start : in  std_logic;
            done  : out std_logic;
            X     : in  std_logic_vector(EXP_WIDTH + MANT_WIDTH downto 0);
            Y     : in  std_logic_vector(EXP_WIDTH + MANT_WIDTH downto 0);
            R     : out std_logic_vector(EXP_WIDTH + MANT_WIDTH downto 0)
        );
    end component;


    signal mult_result  : std_logic_vector(EXP_WIDTH + MANT_WIDTH downto 0);
    signal add_result   : std_logic_vector(EXP_WIDTH + MANT_WIDTH downto 0);
    signal mult_start, mult_done : std_logic;
    signal add_start, done_add   : std_logic;
    signal reg_mult : std_logic_vector(EXP_WIDTH + MANT_WIDTH downto 0);
    signal reg_acc  : std_logic_vector(EXP_WIDTH + MANT_WIDTH downto 0);
    signal done_add_prev : std_logic;
    signal mac_enable : std_logic;

    type state_type is (IDLE, MULTIPLY_START, MULTIPLY_WAIT, START_ADD, ADD_WAIT, DONE);
    signal state : state_type := IDLE;
    

begin

    mult_inst : top_Mult_Test
        port map (
            clk   => clk,
            rst   => rst,
            start => mult_start,
            done  => mult_done,
            X     => InA,
            Y     => InB,
            R     => mult_result
        );

    add_inst : top_Add_Test
        port map (
            clk   => clk,
            rst   => rst,
            start => add_start,
            done  => done_add,
            X     => reg_acc,
            Y     => reg_mult,
            R     => add_result
        );

    process(clk, rst)
    begin
        if rst = '1' then
            state         <= IDLE;
            mac_enable    <= '0';
            mult_start    <= '0';
            add_start     <= '0';
            reg_acc       <= (others => '0');
            reg_mult      <= (others => '0');
            done_add_prev <= '0';
            
        elsif rising_edge(clk) then
            done_add_prev <= done_add;

            if enable = '1' and mac_enable = '0' then
                mac_enable <= '1';
            end if;

            case state is
                when IDLE =>
                    if mac_enable = '1' then
                        mult_start <= '1';
                        state <= MULTIPLY_WAIT;
                    end if;

                when MULTIPLY_WAIT =>
                    mult_start <= '0';
                    if mult_done = '1' then
                        reg_mult <= mult_result;
                        add_start <= '1';
                        state <= START_ADD;
                    end if;

                when START_ADD =>
                    add_start <= '0';
                    state <= ADD_WAIT;

                when ADD_WAIT =>
                    if done_add = '1' and done_add_prev = '0' then
                    
                        reg_acc <= add_result;
                        state <= DONE;
                      
                    end if;

                when DONE =>
                    mac_enable <= '0';
                    state <= DONE;

                when others =>
                    state <= IDLE;
            end case;
            
        end if;
    end process;

    add_done <= done_add;
    Out_result <= reg_acc when stop = '1' else (others => '0');

end Structural;

