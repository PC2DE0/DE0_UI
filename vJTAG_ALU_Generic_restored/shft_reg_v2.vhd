library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.mem_pkg.all;


entity seriel_to_parallel_reg is
	generic (
		DATA_WIDTH 	: positive);
	port(
		clk 		: in std_logic;
		rst 		: in std_logic;
		input 		: in std_logic;
		v_sdr 		: in std_logic;				-- When v_sdr and ir_in are 1 then data
		ir_in 		: in std_logic;				-- will be shifting in
		udr			: in std_logic;				-- When = 1 then data is valid to output
		output 		: out std_logic_vector
	);
	
end seriel_to_parallel_reg;

architecture SEQ_LOG of seriel_to_parallel_reg is

	signal temp : std_logic_vector(DATA_WIDTH-1 downto 0);
	
begin
	process(clk, rst)
	begin
		if (rst = '1') then
			temp <= (others => '0');
			output <= (others => '0');
		elsif(rising_edge(clk)) then
			if (v_sdr = '1' and ir_in = '1') then
				temp <= input & temp(DATA_WIDTH-1 downto 1) ;
			end if;
			if (udr ='1') then
				output <= temp;
			end if;
		end if;
	end process;
end SEQ_LOG;
			
				