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

	signal jtag0_reg_out : registerArray;

	signal design_output : std_logic_vector(DATA_WIDTH-1 downto 0);

	signal led0 : std_logic_vector(3 downto 0);
	signal led1 : std_logic_vector(3 downto 0);
	signal led2 : std_logic_vector(3 downto 0);
	signal led3 : std_logic_vector(3 downto 0);

begin

	U_jtag_wrapper : entity work.jtag_wrapper
		port map(
			clk => jtag_clock,
			rst => rst,
			design_output => (others => '0'),
			registers_out => jtag0_reg_out
		);

	U_SMALL8_CTRL_DATAPATH : entity work.small8_top
    port map(
      clock => clock,
      rst => rst,
      input1 => jtag0_reg_out(0),
			input2 => jtag0_reg_out(1),
      input1_en => jtag0_reg_out(2)(0),
      input2_en => jtag0_reg_out(3)(0),
      led0 => led0,
      led1 => led1,
      led2 => led2,
      led3 => led3
    );

			--The following is used only for debugging purposes
			--it can be removed and there will not be any functional
			--effects
	U_LED_HI_a : entity work.decoder7seg
	  port map(
		input => led1,
		output => led_hi_a);

	U_LED_LO_a : entity work.decoder7seg
	  port map(
		input => led0,
		output => led_lo_a);

	U_LED_HI_b : entity work.decoder7seg
	  port map(
		input => led3,
		output => led_hi_b);

	U_LED_LO_b : entity work.decoder7seg
	  port map(
		input => led2,
		output => led_lo_b);

end str;
