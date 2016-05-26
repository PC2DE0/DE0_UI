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
		--These will be changed on the application basses
		selects			: out selectArray;
		sel_out 		: out std_logic
	);
end d_logic;

architecture SEQ_LOGIC of d_logic is

	signal regSize         : std_logic_vector(DATA_RANGE);
	signal selectRegisters : selectArray;
	signal sel_out_reg : std_logic;
	signal sel_sr_reg : std_logic;
	signal addr_or_data : std_logic;
	signal addr_reg : std_logic_vector(DATA_WIDTH-1 downto 0);

begin

	process(clk, rst)
		variable temp : selectArray;
		variable temp_out : std_logic;
	begin

		if (rst = '1') then
			-- MAX_WIDTH due to 32 registers...probably will need to change soon
			for i in 0 to MAX_WIDTH-1 loop
				temp(i) := '0';
			end loop;
			sel_out_reg <= '0';
			sel_sr_reg <= '0';
			addr_or_data <= '0';
			address_register_to_memmap <= (others => '0');
			addr_reg <= (others => '0');
		elsif (rising_edge(clk)) then
			for i in 0 to MAX_WIDTH-1 loop
				temp(i) := '0';
			end loop;
			sel_out_reg <= '0';
			sel_sr_reg <= '0';
			if (unsigned(counter) = 0) then
				addr_or_data <= not addr_or_data;
				addr_reg <= addr_in;
			end if;

			if(addr_reg  = MMAP_ADDR(regSize'range)) then
				if (addr_or_data = '1') then
					for i in 0 to MAX_WIDTH-1 loop
						temp(i) := '0';
					end loop;
					sel_out_reg <= '0';
					sel_sr_reg <= '0';
				end if;
			elsif(addr_reg = ADDR_1(regSize'range)) then
				if (addr_or_data = '1') then
					temp(0) := '1';
					address_register_to_memmap <= addr_reg;
				end if;
			elsif(addr_reg = ADDR_2(regSize'range)) then
				if (addr_or_data = '1') then
					temp(1) := '1';
				end if;
			elsif(addr_reg = ADDR_3(regSize'range)) then
				if (addr_or_data = '1') then
					temp(2) := '1';
				end if;
			elsif(addr_reg = ADDR_4(regSize'range)) then
				if (addr_or_data = '1') then
					temp(3) := '1';
				end if;
			elsif(addr_reg = ADDR_5(regSize'range)) then
				if (addr_or_data = '1') then
					temp(4) := '1';
				end if;
			elsif(addr_reg = ADDR_6(regSize'range)) then
				if (addr_or_data = '1') then
					temp(5) := '1';
				end if;
			elsif(addr_reg = ADDR_7(regSize'range)) then
				if (addr_or_data = '1') then
					temp(6) := '1';
				end if;
			elsif(addr_reg = ADDR_8(regSize'range)) then
				if (addr_or_data = '1') then
					temp(7) := '1';
				end if;
			elsif(addr_reg = ADDR_9(regSize'range)) then
				if (addr_or_data = '1') then
					temp(8) := '1';
				end if;
			elsif(addr_reg = ADDR_10(regSize'range)) then
				if (addr_or_data = '1') then
					temp(9) := '1';
				end if;
			elsif(addr_reg = ADDR_11(regSize'range)) then
				if (addr_or_data = '1') then
					temp(10) := '1';
				end if;
			elsif(addr_reg = ADDR_12(regSize'range)) then
				if (addr_or_data = '1') then
					temp(11) := '1';
				end if;
			elsif(addr_reg = ADDR_13(regSize'range)) then
				if (addr_or_data = '1') then
					temp(12) := '1';
				end if;
			elsif(addr_reg = ADDR_14(regSize'range)) then
				if (addr_or_data = '1') then
					temp(13) := '1';
				end if;
			elsif(addr_reg = ADDR_15(regSize'range)) then
				if (addr_or_data = '1') then
					temp(14) := '1';
				end if;
			elsif(addr_reg = ADDR_16(regSize'range)) then
				if (addr_or_data = '1') then
					temp(15) := '1';
				end if;
			elsif(addr_reg = ADDR_17(regSize'range)) then
				if (addr_or_data = '1') then
					temp(16) := '1';
				end if;
			elsif(addr_reg = ADDR_18(regSize'range)) then
				if (addr_or_data = '1') then
					temp(17) := '1';
				end if;
			elsif(addr_reg = ADDR_19(regSize'range)) then
				if (addr_or_data = '1') then
					temp(18) := '1';
				end if;
			elsif(addr_reg = ADDR_20(regSize'range)) then
				if (addr_or_data = '1') then
					temp(19) := '1';
				end if;
			elsif(addr_reg = ADDR_21(regSize'range)) then
				if (addr_or_data = '1') then
					temp(20) := '1';
				end if;
			elsif(addr_reg = ADDR_22(regSize'range)) then
				if (addr_or_data = '1') then
					temp(21) := '1';
				end if;
			elsif(addr_reg = ADDR_23(regSize'range)) then
				if (addr_or_data = '1') then
					temp(22) := '1';
				end if;
			elsif(addr_reg = ADDR_24(regSize'range)) then
				if (addr_or_data = '1') then
					temp(23) := '1';
				end if;
			elsif(addr_reg = ADDR_25(regSize'range)) then
				if (addr_or_data = '1') then
					temp(24) := '1';
				end if;
			elsif(addr_reg = ADDR_26(regSize'range)) then
				if (addr_or_data = '1') then
					temp(25) := '1';
				end if;
			elsif(addr_reg = ADDR_27(regSize'range)) then
				if (addr_or_data = '1') then
					temp(26) := '1';
				end if;
			elsif(addr_reg = ADDR_28(regSize'range)) then
				if (addr_or_data = '1') then
					temp(27) := '1';
				end if;
			elsif(addr_reg = ADDR_29(regSize'range)) then
				if (addr_or_data = '1') then
					temp(28) := '1';
				end if;
			elsif(addr_reg = ADDR_30(regSize'range)) then
				if (addr_or_data = '1') then
					temp(29) := '1';
				end if;
			elsif(addr_reg = ADDR_31(regSize'range)) then
				if (addr_or_data = '1') then
					temp(30) := '1';
				end if;
			elsif(addr_reg = ADDR_32(regSize'range)) then
				if (addr_or_data = '1') then
					temp(31) := '1';
				end if;
			elsif(addr_reg = RETURN_REG(regSize'range)) then
				if (addr_or_data = '1') then
					sel_out_reg <= '1';
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
