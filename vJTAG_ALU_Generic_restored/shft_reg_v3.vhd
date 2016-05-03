library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity shft_reg_v3 is

	port(
		clk : in std_logic;
		rst : in std_logic;
		tdi : in std_logic;
		v_sdr : in std_logic;
		sel_out : in std_logic;
		input : in std_logic_vector(7 downto 0);
		output : out std_logic
	);
	
end shft_reg_v3;

architecture SEQ_LOG of shft_reg_v3 is

	signal temp : std_logic_vector(7 downto 0);
	signal val_res : std_logic_vector(7 downto 0);
	signal valid : std_logic;
	
begin

	process(clk, rst)
	begin
	
		if (rst = '1') then
			val_res <= (others => '0');
			temp <= (others => '0');
			valid <= '0';
		elsif(rising_edge(clk)) then
			valid <= sel_out;
			val_res <= input;
			if (v_sdr = '1') then
				if (valid = '1') then
					temp <= val_res(0) & temp(7 downto 1);
					val_res <= std_logic_vector(shift_right(unsigned(val_res),1));
				else
					temp <= tdi & temp(7 downto 1);
				end if;
			end if;
		end if;
		
	end process;

	output <= temp(0);
	
end SEQ_LOG;
			
				