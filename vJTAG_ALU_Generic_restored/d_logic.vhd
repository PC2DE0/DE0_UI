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
		sel_a 			: out std_logic;
		sel_b 			: out std_logic;
		sel_out 		: out std_logic;
		sel_sr 			: out std_logic
	);
end d_logic;

architecture SEQ_LOGIC of d_logic is

	signal sel_a_reg, sel_b_reg, sel_out_reg, sel_sr_reg : std_logic;
	signal addr_or_data : std_logic;
	signal addr_reg : std_logic_vector(DATA_WIDTH-1 downto 0);
	
begin

	process(clk, rst)
		variable temp_a, temp_b, temp_out, temp_sr : std_logic;
	begin
		
		if (rst = '1') then
			sel_a_reg <= '0';
			sel_b_reg <= '0';
			sel_out_reg <= '0';
			sel_sr_reg <= '0';
			addr_or_data <= '0';
			addr_reg <= (others => '0');
		elsif (rising_edge(clk)) then
			sel_a_reg <= '0';
			sel_b_reg <= '0';
			sel_out_reg <= '0';
			sel_sr_reg <= '0';
			if (unsigned(counter) = 0) then
				addr_or_data <= not addr_or_data;
				addr_reg <= addr_in;
			end if;
			case addr_reg is
			--This is a dummy memory location for loading addresses
				when std_logic_vector(to_unsigned(MMAP_ADDR,DATA_WIDTH)) =>
					if (addr_or_data = '1') then
						sel_a_reg <= '0';
						sel_b_reg <= '0';
						sel_out_reg <= '0';
						sel_sr_reg <= '0';
					end if;
			--Send value to REG_1	
				when std_logic_vector(to_unsigned(ADDR_1,DATA_WIDTH)) =>
					if (addr_or_data = '1') then
						sel_a_reg <= '1';
					end if;
			--Send value to REG_2			
				when std_logic_vector(to_unsigned(ADDR_2,DATA_WIDTH)) =>
					if (addr_or_data = '1') then
						sel_b_reg <= '1';
					end if;
			--Send value to REG_3
				when std_logic_vector(to_unsigned(ADDR_3,DATA_WIDTH)) =>
					if (addr_or_data = '1') then
						sel_out_reg <= '1';
					end if;
			--Send value to Output
				when std_logic_vector(to_unsigned(RETURN_REG,DATA_WIDTH)) =>
					if (addr_or_data = '1') then
						sel_sr_reg <= '1';
					end if;	
					
				when others => null;
						
			end case;
			temp_a := sel_a_reg;
			temp_b := sel_b_reg;
			temp_out := sel_out_reg;
			temp_sr := sel_sr_reg;
		end if;
		sel_a <= temp_a;
		sel_b <= temp_b;
		sel_out <= temp_out;
		sel_sr <= temp_sr;
	end process;
	
	process(addr_in, sel_out_reg)
	begin
		if (unsigned(addr_in) = 3 and sel_out_reg = '0') then
			out_data_rdy <= '1';
		else
			out_data_rdy <= '0';
		end if;
	end process;

end SEQ_LOGIC;