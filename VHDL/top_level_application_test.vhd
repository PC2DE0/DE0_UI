-- Jayson Salkey
-- 04/05/2016
-- top_level_application_test

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.mem_pkg.all;

entity top_level_application_test is
	port(
		clk : in std_logic;
		rst : in std_logic;
		led_hi_a 	: out std_logic_vector(6 downto 0);
		led_lo_a 	: out std_logic_vector(6 downto 0);
		led_hi_b 	: out std_logic_vector(6 downto 0);
		led_lo_b 	: out std_logic_vector(6 downto 0)
	);
end entity;


architecture str of top_level_application_test is

	signal jtag_clock : std_logic;

	signal data_register : std_logic_vector(INSTR_WIDTH-1 downto 0);
	signal address_register : std_logic_vector(INSTR_WIDTH-1 downto 0);
	signal design_output : std_logic_vector(INSTR_WIDTH-1 downto 0);
	
	signal w_en : std_logic;
	signal r_en : std_logic;
	
	signal done : std_logic;
	signal mmap_done : std_logic;
	signal go : std_logic;
	signal n : std_logic_vector(31 downto 0);
	
	signal mem_out_rd_data : std_logic_vector(7 downto 0);
	signal mem_out_rd_data_toMap : std_logic_vector(INSTR_WIDTH-1 downto 0);
	signal mem_in_wr_addr : std_logic_vector(31 downto 0);
	signal mem_in_wr_data : std_logic_vector(31 downto 0);
	signal mem_in_wr_en : std_logic;

	signal led0 : std_logic_vector(3 downto 0);
	signal led1 : std_logic_vector(3 downto 0);
	signal led2 : std_logic_vector(3 downto 0);
	signal led3 : std_logic_vector(3 downto 0);

begin

	mem_out_rd_data_toMap <= x"000000" & mem_out_rd_data;
	
	U_jtag_wrapper : entity work.jtag_wrapper
		port map(
			clk => jtag_clock,
			rst => rst,
			design_output => design_output,
			data_register => data_register,
			address_register => address_register,
			w_en => w_en,
			r_en => r_en,
			done => done
		);

	U_MEMORY_MAP : entity work.memory_map
    port map(
      clk => clk,
      rst => rst,
      wr_en => w_en,
      wr_addr => address_register,
      wr_data => data_register,
      rd_en => r_en,
      rd_addr => address_register,
      rd_data => design_output,
		
      go => go,
      n => n,
      result => mem_out_rd_data_toMap,
      done => mmap_done,
		mem_in_wr_addr => mem_in_wr_addr,
		mem_in_wr_data => mem_in_wr_data,
		mem_in_wr_en => mem_in_wr_en 
    );

	 U_RAM_IN : entity work.ram
		port map(
			address => mem_in_wr_addr(7 downto 0),
			clock => clk,
			data => mem_in_wr_data(7 downto 0),
			wren => mem_in_wr_en,
			q => mem_out_rd_data(7 downto 0)
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
		input => design_output(7 downto 4),
		output => led_hi_b);

	U_LED_LO_b : entity work.decoder7seg
	  port map(
		input => design_output(3 downto 0),
		output => led_lo_b);

end str;
