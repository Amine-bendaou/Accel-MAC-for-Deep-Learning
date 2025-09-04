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


entity top_MAC_Array_Test is
    generic (
        EXP_WIDTH  : integer := 5;
        MANT_WIDTH : integer := 10;
        DATA_COUNT : integer := 16;
        MAC_COUNT  : integer  := 4
        
    );
    port (
        clk        : in  std_logic;
        rst        : in  std_logic;
        start      : in  std_logic;
        switches   : in  std_logic_vector(3 downto 0); -- switch(0) = MAC0, etc..
        done       : out std_logic;
        Out_result : out std_logic_vector(EXP_WIDTH + MANT_WIDTH downto 0)
    );
end entity;

architecture rtl of top_MAC_Array_Test is

    -- Types ROM
    type rom_type is array (0 to DATA_COUNT - 1) of std_logic_vector(EXP_WIDTH + MANT_WIDTH downto 0);
    
    type slv_array is array (0 to MAC_COUNT - 1) of std_logic_vector(EXP_WIDTH + MANT_WIDTH downto 0);
    type sl_array  is array (0 to MAC_COUNT - 1) of std_logic;

    -- ========== ROM Definitions for Each MAC ==========
    -- Each MAC will process 16 pairs of 16-bit values
    
    -- MAC 0: 
    constant InA_ROM_0 : rom_type := (
        "1010110010111101", "0100100011011011", "0100001110000111", "0100011010111000",
        "1100010000000101", "1011100010001011", "0100010100110110", "0100100001010000",
        "0100000110001100", "1010110111000101", "1100100000110001", "0100010100001101",
        "0100010010011010", "0011010000100111", "0100001111110000", "0011110011000001"
    );
    constant InB_ROM_0 : rom_type := (
        "1100011010010111", "0100100010010001", "0100100001000101", "0100000101000000",
        "0011111011010101", "1100001001000001", "1100010101001010", "1100000111111100",
        "0100000101010101", "1100011100111111", "1100011011001011", "1100100010010111",
        "1100100001101110", "0100001010001000", "0100000110101010", "1011100101101010"
    );
    
    -- MAC 1:
    constant InA_ROM_1 : rom_type := (
        "0000000000000001", "0000000000000010", "0000000000000011", "0000000000000100",
        "0000000000000101", "0000000000000110", "0000000000000111", "0000000000001000",
        "0000000000001001", "0000000000001010", "0000000000001011", "0000000000001100",
        "0000000000001101", "0000000000001110", "0000000000001111", "0000000000010000"
    );
    constant InB_ROM_1 : rom_type := (
        "0000000000000001", "0000000000000001", "0000000000000001", "0000000000000001",
        "0000000000000001", "0000000000000001", "0000000000000001", "0000000000000001",
        "0000000000000001", "0000000000000001", "0000000000000001", "0000000000000001",
        "0000000000000001", "0000000000000001", "0000000000000001", "0000000000000001"
    );
    
    -- MAC 2: 
    constant InA_ROM_2 : rom_type := (
        "0000000000000001", "0000000000000010", "0000000000000001", "0000000000000010",
        "0000000000000001", "0000000000000010", "0000000000000001", "0000000000000010",
        "0000000000000001", "0000000000000010", "0000000000000001", "0000000000000010",
        "0000000000000001", "0000000000000010", "0000000000000001", "0000000000000010"
    );
    constant InB_ROM_2 : rom_type := (
        "0000000000000011", "0000000000000100", "0000000000000011", "0000000000000100",
        "0000000000000011", "0000000000000100", "0000000000000011", "0000000000000100",
        "0000000000000011", "0000000000000100", "0000000000000011", "0000000000000100",
        "0000000000000011", "0000000000000100", "0000000000000011", "0000000000000100"
    );
    
    -- MAC 3: 
    constant InA_ROM_3 : rom_type := (
        "0000000000001010", "0000000000001010", "0000000000001010", "0000000000001010",
        "0000000000001010", "0000000000001010", "0000000000001010", "0000000000001010",
        "0000000000001010", "0000000000001010", "0000000000001010", "0000000000001010",
        "0000000000001010", "0000000000001010", "0000000000001010", "0000000000001010"
    );
    constant InB_ROM_3 : rom_type := (
        "0000000000000001", "0000000000000010", "0000000000000011", "0000000000000100",
        "0000000000000101", "0000000000000110", "0000000000000111", "0000000000001000",
        "0000000000001001", "0000000000001010", "0000000000001011", "0000000000001100",
        "0000000000001101", "0000000000001110", "0000000000001111", "0000000000010000"
        );


    -- Index and done signal
    signal index    : integer range 0 to DATA_COUNT := 0;
    signal all_done : std_logic;

    -- MAC signals
    signal enables   : sl_array;
    signal stops     : sl_array;
    signal dones     : sl_array;
    signal InAs      : slv_array;
    signal InBs      : slv_array;
    signal results   : slv_array;

begin

    -- ========== MAC Instantiation Using Generate ==========
    MAC_GEN : for i in 0 to MAC_COUNT - 1 generate

        MAC_INST : entity work.top_MAC_for_paral_Test
            generic map (
                EXP_WIDTH  => EXP_WIDTH,
                MANT_WIDTH => MANT_WIDTH
            )
            port map (
                clk        => clk,
                rst        => rst,
                enable     => enables(i),
                stop       => stops(i),
                InA        => InAs(i),
                InB        => InBs(i),
                add_done   => dones(i),
                Out_result => results(i)
            );

    end generate;

    -- ========== ROM Feeding Process ==========
    process(clk, rst)
    begin
        if rst = '1' then
            index     <= 0;
            all_done  <= '0';
            enables   <= (others => '0');
            stops     <= (others => '0');

        elsif rising_edge(clk) then
            if start = '1' and all_done = '0' then
                -- Feed ROM values into each MAC
                InAs(0) <= InA_ROM_0(index);  InBs(0) <= InB_ROM_0(index);
                InAs(1) <= InA_ROM_1(index);  InBs(1) <= InB_ROM_1(index);
                InAs(2) <= InA_ROM_2(index);  InBs(2) <= InB_ROM_2(index);
                InAs(3) <= InA_ROM_3(index);  InBs(3) <= InB_ROM_3(index);

                enables <= (others => '1');

                if index < DATA_COUNT - 1 then
                    index <= index + 1;
                else
                    stops    <= (others => '1');
                    all_done <= '1';
                end if;
            else
                enables <= (others => '0');
            end if;
        end if;
    end process;

    -- ========== Output Selection by Switch ==========
    process(switches, results)
    begin
        case switches is
            when "0001" => Out_result <= results(0);
            when "0010" => Out_result <= results(1);
            when "0100" => Out_result <= results(2);
            when "1000" => Out_result <= results(3);
            when others => Out_result <= (others => '0');
        end case;
    end process;

    -- ========== Global Done Signal ==========
    done <= dones(0) and dones(1) and dones(2) and dones(3);

end architecture;
