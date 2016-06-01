library ieee;
use ieee.std_logic_1164.all;
use work.mem_pkg.all;

entity reg is

	generic (
		DATA_WIDTH : positive
	);
	port (
		clk : in std_logic;
		rst : in std_logic;
		en  : in std_logic;
		input : in std_logic_vector(DATA_WIDTH-1 downto 0);
		output : out std_logic_vector(DATA_WIDTH-1 downto 0)
	);

end reg;

architecture SEQ_LOGIC of reg is
begin

	process(clk, rst)
	begin
		if (rst = '1') then
			output <= (others => '0');
		elsif (rising_edge(clk)) then
			if (en = '1') then
				output <= input;
			end if;
		end if;
	end process;
end SEQ_LOGIC;
