library ieee;
use ieee.std_logic_1164.all;

entity addr_top is
	generic (
		data_width : positive
	);
	port (
		tck   : in std_logic;
	   rst   : in std_logic;
		sdr	: in std_logic;
		input : in std_logic_vector(data_width-1 downto 0);
		out_data_rdy : out std_logic;
		sel_a	: out std_logic;
		sel_b : out std_logic;
		sel_out : out std_logic;
		sel_sr : out std_logic
	);
end addr_top;

architecture STR of addr_top is

	signal addr_en : std_logic;
	signal addr_output : std_logic_vector(data_width-1 downto 0);
	signal address : std_logic_vector(data_width-1 downto 0);
	signal addr_reg_en : std_logic;
	signal data_reg_en : std_logic;
	signal counter : std_logic_vector(2 downto 0);
	
begin

	U_addrreg : entity work.addr_reg
		generic map (
			WIDTH => data_width)
		port map (
			clk => tck,
			rst => rst,
			en	=> addr_en,
			input => input,
			output => addr_output
		);
	
	U_addrcount : entity work.sdr_count
		port map(
			sdr => sdr, 		
			rst => rst,
			output => addr_en,
			counter => counter
		);
	
	U_logic : entity work.d_logic
		generic map (
			data_width => data_width)
		port map (
			clk => tck,
			rst => rst,
			addr_in => addr_output,
			counter => counter,
			out_data_rdy => out_data_rdy,
			sel_a => sel_a,
			sel_b  => sel_b,
			sel_out => sel_out,
			sel_sr => sel_sr
		);
	
end STR;