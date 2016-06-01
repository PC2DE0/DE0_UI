library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.mem_pkg.all;

entity tdi_shifter is
	port(
		clk 		: in std_logic;
		rst 		: in std_logic;
		tdi 		: in std_logic;
		v_sdr : in std_logic;
		ir_in : in std_logic;
		udr : in std_logic;
		output_data 		: out std_logic_vector(DATA_WIDTH-1 downto 0);
		output_address 		: out std_logic_vector(DATA_WIDTH-1 downto 0);
		w_r_en : out std_logic
	);

end tdi_shifter;

architecture FSMD2 of tdi_shifter is

	type STATE_TYPE is (INIT, GET_ADDR_WRITE, GET_ADDR_READ, WRITE_DATA, READ_DATA);

	signal state : STATE_TYPE;

	signal temp_RW : std_logic_vector(DATA_WIDTH-1 downto 0);
	signal temp_addr : std_logic_vector(DATA_WIDTH-1 downto 0);
	signal temp_data : std_logic_vector(DATA_WIDTH-1 downto 0);

begin

	process(clk, rst)
	begin
		if(rst = '1') then
			state <= INIT;
			temp_RW <= (others => '0');
			temp_addr <= (others => '0');
			output_data <= (others => '0');
			output_address <= (others => '0');

		elsif(rising_edge(clk)) then
			case state is
				-- default is to read

				when INIT =>
					output_address <= x"01";
					if(v_sdr = '1' and ir_in = '1') then
						temp_RW <= tdi & temp_RW(DATA_WIDTH-1 downto 1);
					end if;
					if(udr = '1') then
						-- output is ready
						if(unsigned(temp_rw) = 1) then
							state <= GET_ADDR_WRITE;
						elsif(unsigned(temp_rw) = 0) then
							state <= GET_ADDR_READ;
						end if;
					else
						state <= INIT;
					end if;

				when GET_ADDR_WRITE =>
					output_address <= x"02";
					if(v_sdr = '1' and ir_in = '1') then
						temp_addr <= tdi & temp_addr(DATA_WIDTH-1 downto 1);
					end if;
					if(udr = '1') then
						-- output is ready
						--output_address <= temp_addr;
						state <= WRITE_DATA;
					else
						state <= GET_ADDR_WRITE;
					end if;

				when GET_ADDR_READ =>
					output_address <= x"03";
					if(v_sdr = '1' and ir_in = '1') then
						temp_addr <= tdi & temp_addr(DATA_WIDTH-1 downto 1);
					end if;
					if(udr = '1') then
						-- output is ready
						--output_address <= temp_addr;
						state <= READ_DATA;
					else
						state <= GET_ADDR_READ;
					end if;


				when WRITE_DATA =>
				output_address <= x"04";
					if(v_sdr = '1' and ir_in = '1') then
						temp_data <= tdi & temp_data(DATA_WIDTH-1 downto 1);
					end if;
					if(udr = '1') then
						-- output is ready
						output_data <= temp_data;
						w_r_en <= '1';
						state <= INIT;
					else
						state <= WRITE_DATA;
					end if;

				when READ_DATA =>
				output_address <= x"05";
					if(v_sdr = '1' and ir_in = '1') then
						temp_data <= tdi & temp_data(DATA_WIDTH-1 downto 1);
					end if;
					if(udr = '1') then
						-- output is ready
						output_data <= (others => '0');
						w_r_en <= '0';
						state <= INIT;
					else
						state <= READ_DATA;
					end if;

				when others =>
					w_r_en <= '0';

			end case;
		end if;
	end process;

end FSMD2;
