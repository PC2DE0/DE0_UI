-- Jayson Salkey
-- 04/05/2016
-- top_level_application_test

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.mem_pkg.all;

entity top_level_application_test is
	port(
		rst : in std_logic;
		led_hi_a 	: out std_logic_vector(6 downto 0);
		led_lo_a 	: out std_logic_vector(6 downto 0);
		led_hi_b 	: out std_logic_vector(6 downto 0);
		led_lo_b 	: out std_logic_vector(6 downto 0)
	);
end entity;


architecture str of top_level_application_test is

	signal jtag_clock : std_logic;

	signal data_register : std_logic_vector(DATA_WIDTH-1 downto 0);

	signal design_output : std_logic_vector(DATA_WIDTH-1 downto 0);

	signal address_register : std_logic_vector(DATA_WIDTH-1 downto 0);

	signal led0 : std_logic_vector(3 downto 0);
	signal led1 : std_logic_vector(3 downto 0);
	signal led2 : std_logic_vector(3 downto 0);
	signal led3 : std_logic_vector(3 downto 0);

begin

	U_jtag_wrapper : entity work.jtag_wrapper
		port map(
			clk => jtag_clock,
			rst => rst,
			design_output => design_output,
			data_register => data_register,
			address_register => address_register
		);

	U_MEMORY_MAP : entity work.memory_map
    port map(
      clk => jtag_clock,
      rst => rst,
      wr_en => '1',
      wr_addr => address_register,
      wr_data => data_register,
      rd_en => '0',
      rd_addr => address_register,
      rd_data => open,
      go => open,
      n => open,
      result => (others => '0'),
      done => '0'
    );

		--The following is used only for debugging purposes
		--it can be removed and there will not be any functional
		--effects

	U_LED_HI_a : entity work.decoder7seg
	  port map(
		input => data_register(7 downto 4),
		output => led_hi_a);

	U_LED_LO_a : entity work.decoder7seg
	  port map(
		input => data_register(3 downto 0),
		output => led_lo_a);

	U_LED_HI_b : entity work.decoder7seg
	  port map(
		input => address_register(7 downto 4),
		output => led_hi_b);

	U_LED_LO_b : entity work.decoder7seg
	  port map(
		input => address_register(3 downto 0),
		output => led_lo_b);

end str;
