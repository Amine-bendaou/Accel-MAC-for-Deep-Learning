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

    component {{COMPONENT_NAME}}
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

    uut: {{COMPONENT_NAME}}
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


