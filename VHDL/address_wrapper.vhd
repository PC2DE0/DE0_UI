library ieee;
use ieee.std_logic_1164.all;
use work.mem_pkg.all;

entity address_wrapper is
	generic (
		DATA_WIDTH 			: positive
	);
	port (
		tck   				: in std_logic;
		rst   				: in std_logic;
		sdr					: in std_logic;
		input 				: in std_logic_vector(DATA_WIDTH-1 downto 0);
		out_data_rdy 		: out std_logic;
		selects				: out std_logic;
		sel_out 			: out std_logic;
		address_ready : out std_logic;
		address_register_to_memmap	: out std_logic_vector(DATA_WIDTH-1 downto 0)
	);
end address_wrapper;

architecture STR of address_wrapper is

	signal addr_en 			: std_logic;
	signal addr_output 		: std_logic_vector(DATA_WIDTH-1 downto 0);
	signal address 			: std_logic_vector(DATA_WIDTH-1 downto 0);
	signal addr_reg_en 		: std_logic;
	signal data_reg_en 		: std_logic;
	signal counter 			: std_logic_vector(2 downto 0);

begin

	U_addrreg : entity work.reg
		generic map (
			DATA_WIDTH => DATA_WIDTH)
		port map (
			clk 		=> tck,
			rst 		=> rst,
			en			=> addr_en,
			input 		=> input,
			output 		=> addr_output
		);

	U_addrcount : entity work.sdr_count
		generic map(
			SDR_COUNT		=> SDR_COUNT)
		port map(
			sdr 		=> sdr,
			rst 		=> rst,
			output 		=> addr_en,
			counter 	=> counter
		);

--This is the main component to change when adding or subtracing memory locations
	U_logic : entity work.d_logic
		generic map (
			DATA_WIDTH 	=> DATA_WIDTH,
			SDR_COUNT	=> SDR_COUNT)
		port map (
			clk 			=> tck,
			rst 			=> rst,
			addr_in 		=> addr_output,
			counter 		=> counter,
			out_data_rdy 	=> out_data_rdy,
			selects => selects,
			sel_out 		=> sel_out,
			address_ready => address_ready,
			address_register_to_memmap => address_register_to_memmap
		);
end STR;
