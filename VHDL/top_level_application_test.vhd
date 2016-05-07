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

begin

	U_jtag_wrapper : entity work.jtag_wrapper
		port map(
			clk => jtag_clock,
			rst => rst,
			design_output => design_output,
			registers_out => jtag0_reg_out
		);
		
	U_application_test : entity work.application_test
		port map(
			input0 => jtag0_reg_out(0),
			input1 => jtag0_reg_out(1),
			input2 => jtag0_reg_out(2),
			output => design_output
		);

			--The following is used only for debugging purposes
			--it can be removed and there will not be any functional 
			--effects		
	U_LED_HI_a : entity work.decoder7seg
	  port map(
		input => design_output(7 downto 4),
		output => led_hi_a);
		
	U_LED_LO_a : entity work.decoder7seg
	  port map(
		input => design_output(3 downto 0),
		output => led_lo_a);
		
	U_LED_HI_b : entity work.decoder7seg
	  port map(
		input => design_output(15 downto 12),
		output => led_hi_b);
		
	U_LED_LO_b : entity work.decoder7seg
	  port map(
		input => design_output(11 downto 8),
		output => led_lo_b);
end str;