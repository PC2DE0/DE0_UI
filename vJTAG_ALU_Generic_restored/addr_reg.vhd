library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity addr_reg is
	generic (
		DATA_WIDTH : positive := 16);
	port (
		clk    : in  std_logic;
		rst    : in  std_logic;
		en		: in std_logic;
		input   : in  std_logic_vector(DATA_WIDTH-1 downto 0);
		output : out std_logic_vector(DATA_WIDTH-1 downto 0)
	);
end addr_reg;

architecture BHV_EN of addr_reg is
begin
	process (clk, rst)
	begin
		if (rst ='1') then
			output <= (others => '0');
		elsif (rising_edge(clk)) then
			if (en = '1') then
				output <= input;
			end if;
		end if;
	end process;

end BHV_EN;