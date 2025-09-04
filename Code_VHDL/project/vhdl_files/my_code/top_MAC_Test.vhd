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
-- Implementation Version
-- ============================================================================


-- ============================================================================
-- Entity Declaration
-- ============================================================================

entity top_MAC_Test is
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
        Out_result : out std_logic_vector(EXP_WIDTH + MANT_WIDTH downto 0)
    );
end entity;

-- ============================================================================
-- Architecture
-- ============================================================================


architecture Structural of top_MAC_Test is

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

    type data_array is array (0 to 15) of std_logic_vector(EXP_WIDTH + MANT_WIDTH downto 0);
    constant InA_ROM : data_array := (
    "1010110010111101",
    "0100100011011011",
    "0100001110000111",
    "0100011010111000",
    "1100010000000101",
    "1011100010001011",
    "0100010100110110",
    "0100100001010000",
    "0100000110001100",
    "1010110111000101",
    "1100100000110001",
    "0100010100001101",
    "0100010010011010",
    "0011010000100111",
    "0100001111110000",
    "0011110011000001"
    );

    constant InB_ROM : data_array := (
    "1100011010010111",
    "0100100010010001",
    "0100100001000101",
    "0100000101000000",
    "0011111011010101",
    "1100001001000001",
    "1100010101001010",
    "1100000111111100",
    "0100000101010101",
    "1100011100111111",
    "1100011011001011",
    "1100100010010111",
    "1100100001101110",
    "0100001010001000",
    "0100000110101010",
    "1011100101101010"
    );

    signal index        : integer range 0 to 15 ;
    signal mult_result  : std_logic_vector(EXP_WIDTH + MANT_WIDTH downto 0);
    signal add_result   : std_logic_vector(EXP_WIDTH + MANT_WIDTH downto 0);
    signal mult_start, mult_done : std_logic;
    signal add_start, done_add   : std_logic;
    signal reg_mult : std_logic_vector(EXP_WIDTH + MANT_WIDTH downto 0);
    signal reg_acc  : std_logic_vector(EXP_WIDTH + MANT_WIDTH downto 0);
    signal reg_in_a, reg_in_b : std_logic_vector(EXP_WIDTH + MANT_WIDTH downto 0);
    signal done_add_prev : std_logic;
    signal mac_enable : std_logic;

    type state_type is (IDLE, MULTIPLY_START, MULTIPLY_WAIT, START_ADD, ADD_WAIT, DONE);
    signal state : state_type := IDLE;
    
    -- For Debug 
--    signal clk_dbg     : std_logic := '0';
--    signal cycle_count : integer := 0;
--    signal start_mac : std_logic := '0';
    
--    attribute MARK_DEBUG : string;

--    attribute MARK_DEBUG of clk_dbg     : signal is "true";
--    attribute MARK_DEBUG of cycle_count : signal is "true";
--    attribute MARK_DEBUG of state       : signal is "true";
--    attribute MARK_DEBUG of mult_start  : signal is "true";
--    attribute MARK_DEBUG of mult_done   : signal is "true";
--    attribute MARK_DEBUG of add_start   : signal is "true";
--    attribute MARK_DEBUG of done_add    : signal is "true";
--    attribute MARK_DEBUG of start_mac   : signal is "true";

begin

    mult_inst : top_Mult_Test
        port map (
            clk   => clk,
            rst   => rst,
            start => mult_start,
            done  => mult_done,
            X     => reg_in_a,
            Y     => reg_in_b,
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
            reg_in_a      <= (others => '0');
            reg_in_b      <= (others => '0');
            done_add_prev <= '0';
            index         <=  0;
--            clk_dbg       <= '0';
--            cycle_count   <=  0;
            
        elsif rising_edge(clk) then
            done_add_prev <= done_add;

            if enable = '1' and mac_enable = '0' then
                mac_enable <= '1';
--                start_mac <= '1';
--            else
--                start_mac <= '0';
            end if;

            case state is
                when IDLE =>
                    if mac_enable = '1' then
                        reg_in_a <= InA_ROM(index);
                        reg_in_b <= InB_ROM(index);
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
                        if index < 15 then
                            index <= index + 1;
                            reg_in_a <= InA_ROM(index + 1);
                            reg_in_b <= InB_ROM(index + 1);
                            mult_start <= '1';
                            state <= MULTIPLY_WAIT;
                        else
                            state <= DONE;
                        end if;
                    end if;

                when DONE =>
                    mac_enable <= '0';
                    state <= DONE;

                when others =>
                    state <= IDLE;
            end case;
            
            -- Debug: Toggle clk_dbg and count cycles during MAC operation
--            if mac_enable = '1' and state /= DONE and state /= IDLE then
--                clk_dbg <= not clk_dbg;
--                cycle_count <= cycle_count + 1;
--            end if;

--            if state = IDLE then
--                cycle_count <= 0;
--                clk_dbg <= '0';
--            end if;
            
        end if;
    end process;

    add_done <= done_add;
    Out_result <= reg_acc when stop = '1' else (others => '0');

end Structural;
