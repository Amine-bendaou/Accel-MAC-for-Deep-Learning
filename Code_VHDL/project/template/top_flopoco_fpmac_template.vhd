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

entity {{ENTITY_NAME}} is
    generic (
        EXP_WIDTH  : integer := {{EXP_WIDTH}};
        MANT_WIDTH : integer := {{MANT_WIDTH}}
    );
    port (
        clk   : in  std_logic;
        rst   : in  std_logic;
        start : in  std_logic;
        done  : out std_logic;
        R     : out std_logic_vector(EXP_WIDTH + MANT_WIDTH downto 0)
    );
end entity;

architecture Structural of {{ENTITY_NAME}} is

    ----------------------------------------------------------------
    -- FloPoCo MAC component
    ----------------------------------------------------------------
    component {{COMPONENT_NAME}} is
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
    constant MAC_LATENCY : integer := {{MAC_LATENCY}};
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
    DUT: {{COMPONENT_NAME}}
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
