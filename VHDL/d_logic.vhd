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
				selectRegisters(i) <= '0';
			end loop;
			sel_out_reg <= '0';
			sel_sr_reg <= '0';
			addr_or_data <= '0';
			addr_reg <= (others => '0');
		elsif (rising_edge(clk)) then
			for i in 0 to MAX_WIDTH-1 loop
				selectRegisters(i) <= '0';
			end loop;
			sel_out_reg <= '0';
			sel_sr_reg <= '0';
			if (unsigned(counter) = 0) then
				addr_or_data <= not addr_or_data;
				addr_reg <= addr_in;
			end if;
			case addr_reg is
			--This is a dummy memory location for loading addresses				
				when MMAP_ADDR(regSize'range) =>
					if (addr_or_data = '1') then
						for i in 0 to MAX_WIDTH-1 loop
							selectRegisters(i) <= '0';
						end loop;
						sel_out_reg <= '0';
						sel_sr_reg <= '0';
					end if;
			--Send value to REG_1	
				when ADDR_1(regSize'range) =>
					if (addr_or_data = '1') then
						selectRegisters(0) <= '1';
					end if;
			--Send value to REG_2			
				when ADDR_2(regSize'range) =>
					if (addr_or_data = '1') then
						selectRegisters(1) <= '1';
					end if;
				when ADDR_3(regSize'range) =>
					if (addr_or_data = '1') then
						selectRegisters(2) <= '1';
					end if;
				when ADDR_4(regSize'range) =>
					if (addr_or_data = '1') then
						selectRegisters(3) <= '1';
					end if;
				when ADDR_5(regSize'range) =>
					if (addr_or_data = '1') then
						selectRegisters(4) <= '1';
					end if;
				when ADDR_6(regSize'range) =>
					if (addr_or_data = '1') then
						selectRegisters(5) <= '1';
					end if;
				when ADDR_7(regSize'range) =>
					if (addr_or_data = '1') then
						selectRegisters(6) <= '1';
					end if;
				when ADDR_8(regSize'range) =>
					if (addr_or_data = '1') then
						selectRegisters(7) <= '1';
					end if;
				when ADDR_9(regSize'range) =>
					if (addr_or_data = '1') then
						selectRegisters(8) <= '1';
					end if;
				when ADDR_10(regSize'range) =>
					if (addr_or_data = '1') then
						selectRegisters(9) <= '1';
					end if;
				when ADDR_11(regSize'range) =>
					if (addr_or_data = '1') then
						selectRegisters(10) <= '1';
					end if;
				when ADDR_12(regSize'range) =>
					if (addr_or_data = '1') then
						selectRegisters(11) <= '1';
					end if;
				when ADDR_13(regSize'range) =>
					if (addr_or_data = '1') then
						selectRegisters(12) <= '1';
					end if;
				when ADDR_14(regSize'range) =>
					if (addr_or_data = '1') then
						selectRegisters(13) <= '1';
					end if;
				when ADDR_15(regSize'range) =>
					if (addr_or_data = '1') then
						selectRegisters(14) <= '1';
					end if;
				when ADDR_16(regSize'range) =>
					if (addr_or_data = '1') then
						selectRegisters(15) <= '1';
					end if;
				when ADDR_17(regSize'range) =>
					if (addr_or_data = '1') then
						selectRegisters(16) <= '1';
					end if;
				when ADDR_18(regSize'range) =>
					if (addr_or_data = '1') then
						selectRegisters(17) <= '1';
					end if;
				when ADDR_19(regSize'range) =>
					if (addr_or_data = '1') then
						selectRegisters(18) <= '1';
					end if;
				when ADDR_20(regSize'range) =>
					if (addr_or_data = '1') then
						selectRegisters(19) <= '1';
					end if;
				when ADDR_21(regSize'range) =>
					if (addr_or_data = '1') then
						selectRegisters(20) <= '1';
					end if;
				when ADDR_22(regSize'range) =>
					if (addr_or_data = '1') then
						selectRegisters(21) <= '1';
					end if;
				when ADDR_23(regSize'range) =>
					if (addr_or_data = '1') then
						selectRegisters(22) <= '1';
					end if;
				when ADDR_24(regSize'range) =>
					if (addr_or_data = '1') then
						selectRegisters(23) <= '1';
					end if;
				when ADDR_25(regSize'range) =>
					if (addr_or_data = '1') then
						selectRegisters(24) <= '1';
					end if;
				when ADDR_26(regSize'range) =>
					if (addr_or_data = '1') then
						selectRegisters(25) <= '1';
					end if;
				when ADDR_27(regSize'range) =>
					if (addr_or_data = '1') then
						selectRegisters(26) <= '1';
					end if;
				when ADDR_28(regSize'range) =>
					if (addr_or_data = '1') then
						selectRegisters(27) <= '1';
					end if;
				when ADDR_29(regSize'range) =>
					if (addr_or_data = '1') then
						selectRegisters(28) <= '1';
					end if;
				when ADDR_30(regSize'range) =>
					if (addr_or_data = '1') then
						selectRegisters(29) <= '1';
					end if;
				when ADDR_31(regSize'range) =>
					if (addr_or_data = '1') then
						selectRegisters(30) <= '1';
					end if;
				when ADDR_32(regSize'range) =>
					if (addr_or_data = '1') then
						selectRegisters(31) <= '1';
					end if;
			--Send value to Output
				when RETURN_REG(regSize'range) =>
					if (addr_or_data = '1') then
						sel_out_reg <= '1';					
					end if;	
					
				when others => null;
						
			end case;
			
			temp := selectRegisters;
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