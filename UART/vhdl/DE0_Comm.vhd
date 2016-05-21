-- Jayson Salkey
-- 19:03 May 20, 2016


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity DE0_Comm is
  port(
    clk_50mhz : in std_logic;
    LED : out std_logic_vector(7 downto 0)
  );
end entity;


architecture STR of DE0_Comm is

  signal system_clock : std_logic;
  signal reset_n : std_logic;
  signal heartbeat : std_logic;

  begin

    LED <= "0000000"&heartbeat;

    U_PLL_CLOCK : entity work.pll_vhd_clk
      port map(
        inclk0 => clk_50mhz,
        c0 => system_clock,
        areset => open,
        locked => open
      );

    U_RESET_TIMER : entity work.reset_vhd
      port map(
        clk => system_clock,
        reset => reset_n
      );

    U_HEARTBEAT : entity work.heartbeat_vhd
      port map(
        clk => system_clock,
        rst => reset_n,
        heartbeat => heartbeat
      );

    U_FSM_JTAG : entity work.fsm_jtag_vhd
      port map(
        clk => system_clock,
        reset => reset_n
      );


end STR;
