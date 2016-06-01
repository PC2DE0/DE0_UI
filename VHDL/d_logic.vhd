library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.mem_pkg.all;

entity d_logic is
	generic (
		DATA_WIDTH 		: positive;
		SDR_COUNT		: positive);
	port (
		clk 			: in std_logic;
		rst 			: in std_logic;
		counter 		: in std_logic_vector(SDR_COUNT-1 downto 0);
		addr_in 		: in std_logic_vector(DATA_WIDTH-1 downto 0);
		out_data_rdy 	: out std_logic;
		address_register_to_memmap : out std_logic_vector(DATA_WIDTH-1 downto 0);
		selects			: out std_logic;
		address_ready : out std_logic;
		sel_out 		: out std_logic
	);
end d_logic;

architecture SEQ_LOGIC of d_logic is

	signal regSize         : std_logic_vector(DATA_RANGE);
	signal selectRegisters : std_logic;
	signal sel_out_reg : std_logic;
	signal sel_sr_reg : std_logic;
	signal addr_or_data : std_logic;
	signal addr_reg : std_logic_vector(DATA_WIDTH-1 downto 0);

begin

	process(clk, rst)
		variable temp : std_logic;
		variable temp_out : std_logic;
	begin

		if (rst = '1') then
			temp := '0';
			sel_out_reg <= '0';
			sel_sr_reg <= '0';
			addr_or_data <= '0';
			address_register_to_memmap <= (others => '0');
			addr_reg <= (others => '0');
		elsif (rising_edge(clk)) then
			temp := '0';
			sel_out_reg <= '0';
			sel_sr_reg <= '0';
			if (unsigned(counter) = 0) then
				addr_or_data <= not addr_or_data;
				addr_reg <= addr_in;
			end if;

			if(addr_reg  = MMAP_ADDR(regSize'range)) then
				if (addr_or_data = '1') then
					temp := '0';
					sel_out_reg <= '0';
					sel_sr_reg <= '0';
				end if;
			elsif(addr_reg = RETURN_REG(regSize'range)) then
				if (addr_or_data = '1') then
					sel_out_reg <= '1';
				end if;
			else
				if (addr_or_data = '1') then
					temp := '1';
					address_register_to_memmap <= addr_reg;
					address_ready <= '1';
				else
					address_ready <= '0';
				end if;
			end if;
			temp_out := sel_out_reg;
		end if;

		selects <= temp;
		sel_out <= temp_out;
	end process;

	process(addr_in, sel_out_reg)
	begin
		if (unsigned(addr_in) = unsigned(RETURN_REG(regSize'range)) and sel_out_reg = '0') then
			out_data_rdy <= '1';
		else
			out_data_rdy <= '0';
		end if;
	end process;

end SEQ_LOGIC;
