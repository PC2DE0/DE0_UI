--When chaning the number of bits that are used, this file will need to be updated for the number
--of bits. Simply uncomment or comment the needed/unneeded states.

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.mem_pkg.all;

entity tdo_shifter is
	generic (
		DATA_WIDTH 	: positive);
	port(
		clk 		: in std_logic;
		rst 		: in std_logic;
		tdi 		: in std_logic;
		v_sdr 		: in std_logic;
		valid 		: in std_logic;
		data 		: in std_logic_vector(DATA_WIDTH-1 downto 0);
		output 		: out std_logic
	);

end tdo_shifter;

architecture FSMD2 of tdo_shifter is

	type STATE_TYPE is (START, OUT_1, OUT_2, OUT_3, OUT_4, OUT_5, OUT_6, OUT_7, OUT_8, OUT_9, OUT_10, OUT_11, OUT_12, OUT_13, OUT_14, OUT_15, OUT_16, OUT_17,
	OUT_18, OUT_19, OUT_20, OUT_21, OUT_22, OUT_23, OUT_24, OUT_25, OUT_26, OUT_27, OUT_28, OUT_29, OUT_30, OUT_31);

	signal state, next_state : STATE_TYPE;
	signal temp_reg, next_temp 		: std_logic_vector(DATA_WIDTH-1 downto 0);
	signal valid_reg, next_valid 	: std_logic;
	signal data_reg, next_data 		: std_logic_vector(DATA_WIDTH-1 downto 0);

begin

	process(clk, rst)
	begin

		if (rst = '1') then
			temp_reg <= (others => '0');
			valid_reg <= '0';
			data_reg <= (others => '0');
			state <= START;
		elsif(rising_edge(clk)) then
			temp_reg <= next_temp;
			valid_reg <= next_valid;
			data_reg <= next_data;
			state <= next_state;
		end if;

	end process;

	process(state, v_sdr, tdi, temp_reg, valid_reg, data_reg, data, valid)
	begin

		next_state <= state;
		next_temp <= temp_reg;
		next_data <= data_reg;
		next_valid <= valid_reg;

		case state is
			when START =>

				next_valid <= valid;
				next_state <= OUT_1;

				if (v_sdr = '1') then
					if (valid = '1') then
						next_valid <= valid;
						next_temp <= data_reg(0) & temp_reg(DATA_WIDTH-1 downto 1);
					else
						if ((valid_reg = '1') and (valid = '0')) then
							next_valid <= '0';
						end if;
						next_temp <= tdi & temp_reg(DATA_WIDTH-1 downto 1);
					end if;
				end if;

			when OUT_1 =>

				next_state <= OUT_2;
				if (v_sdr = '1') then
					if (valid_reg = '1') then
						next_temp <= data_reg(1) & temp_reg(DATA_WIDTH-1 downto 1);
					else
						next_temp <= tdi & temp_reg(DATA_WIDTH-1 downto 1);
					end if;
				end if;

			when OUT_2 =>

				next_state <= OUT_3;
				if (v_sdr = '1') then
					if (valid_reg = '1') then
						next_temp <= data_reg(2) & temp_reg(DATA_WIDTH-1 downto 1);
					else
						next_temp <= tdi & temp_reg(DATA_WIDTH-1 downto 1);
					end if;
				end if;

			when OUT_3 =>

				next_state <= OUT_4;
				if (v_sdr = '1') then
					if (valid_reg = '1') then
						next_temp <= data_reg(3) & temp_reg(DATA_WIDTH-1 downto 1);
					else
						next_temp <= tdi & temp_reg(DATA_WIDTH-1 downto 1);
					end if;
				end if;

			when OUT_4 =>

				next_state <= OUT_5;
				if (v_sdr = '1') then
					if (valid_reg = '1') then
						next_temp <= data_reg(4) & temp_reg(DATA_WIDTH-1 downto 1);
					else
						next_temp <= tdi & temp_reg(DATA_WIDTH-1 downto 1);
					end if;
				end if;

			when OUT_5 =>

				next_state <= OUT_6;
				if (v_sdr = '1') then
					if (valid_reg = '1') then
						next_temp <= data_reg(5) & temp_reg(DATA_WIDTH-1 downto 1);
					else
						next_temp <= tdi & temp_reg(DATA_WIDTH-1 downto 1);
					end if;
				end if;

			when OUT_6 =>

				next_state <= OUT_7;
				if (v_sdr = '1') then
					if (valid_reg = '1') then
						next_temp <= data_reg(6) & temp_reg(DATA_WIDTH-1 downto 1);
					else
						next_temp <= tdi & temp_reg(DATA_WIDTH-1 downto 1);
					end if;
				end if;

			when OUT_7 =>

				next_state <= OUT_8;
				if (v_sdr = '1') then
					if (valid_reg = '1') then
						next_temp <= data_reg(7) & temp_reg(DATA_WIDTH-1 downto 1);
					else
						next_temp <= tdi & temp_reg(DATA_WIDTH-1 downto 1);
					end if;
				end if;

			when OUT_8 =>

				next_state <= OUT_9;
				if (v_sdr = '1') then
					if (valid_reg = '1') then
						next_temp <= data_reg(8) & temp_reg(DATA_WIDTH-1 downto 1);
					else
						next_temp <= tdi & temp_reg(DATA_WIDTH-1 downto 1);
					end if;
				end if;

			when OUT_9 =>

				next_state <= OUT_10;
				if (v_sdr = '1') then
					if (valid_reg = '1') then
						next_temp <= data_reg(9) & temp_reg(DATA_WIDTH-1 downto 1);
					else
						next_temp <= tdi & temp_reg(DATA_WIDTH-1 downto 1);
					end if;
				end if;

			when OUT_10 =>

				next_state <= OUT_11;
				if (v_sdr = '1') then
					if (valid_reg = '1') then
						next_temp <= data_reg(10) & temp_reg(DATA_WIDTH-1 downto 1);
					else
						next_temp <= tdi & temp_reg(DATA_WIDTH-1 downto 1);
					end if;
				end if;

			when OUT_11 =>

				next_state <= OUT_12;
				if (v_sdr = '1') then
					if (valid_reg = '1') then
						next_temp <= data_reg(11) & temp_reg(DATA_WIDTH-1 downto 1);
					else
						next_temp <= tdi & temp_reg(DATA_WIDTH-1 downto 1);
					end if;
				end if;

			when OUT_12 =>

				next_state <= OUT_13;
				if (v_sdr = '1') then
					if (valid_reg = '1') then
						next_temp <= data_reg(12) & temp_reg(DATA_WIDTH-1 downto 1);
					else
						next_temp <= tdi & temp_reg(DATA_WIDTH-1 downto 1);
					end if;
				end if;

			when OUT_13 =>

				next_state <= OUT_14;
				if (v_sdr = '1') then
					if (valid_reg = '1') then
						next_temp <= data_reg(13) & temp_reg(DATA_WIDTH-1 downto 1);
					else
						next_temp <= tdi & temp_reg(DATA_WIDTH-1 downto 1);
					end if;
				end if;

			when OUT_14 =>

				next_state <= OUT_15;
				if (v_sdr = '1') then
					if (valid_reg = '1') then
						next_temp <= data_reg(14) & temp_reg(DATA_WIDTH-1 downto 1);
					else
						next_temp <= tdi & temp_reg(DATA_WIDTH-1 downto 1);
					end if;
				end if;

			when OUT_15 =>

				next_state <= OUT_16;
				if (v_sdr = '1') then
					if (valid_reg = '1') then
						next_temp <= data_reg(15) & temp_reg(DATA_WIDTH-1 downto 1);
					else
						next_temp <= tdi & temp_reg(DATA_WIDTH-1 downto 1);
					end if;
				end if;

			when OUT_16 =>

				next_state <= OUT_17;
				if (v_sdr = '1') then
					if (valid_reg = '1') then
						next_temp <= data_reg(16) & temp_reg(DATA_WIDTH-1 downto 1);
					else
						next_temp <= tdi & temp_reg(DATA_WIDTH-1 downto 1);
					end if;
				end if;

			when OUT_17 =>

				next_state <= OUT_18;
				if (v_sdr = '1') then
					if (valid_reg = '1') then
						next_temp <= data_reg(17) & temp_reg(DATA_WIDTH-1 downto 1);
					else
						next_temp <= tdi & temp_reg(DATA_WIDTH-1 downto 1);
					end if;
				end if;

			when OUT_18 =>

				next_state <= OUT_19;
				if (v_sdr = '1') then
					if (valid_reg = '1') then
						next_temp <= data_reg(18) & temp_reg(DATA_WIDTH-1 downto 1);
					else
						next_temp <= tdi & temp_reg(DATA_WIDTH-1 downto 1);
					end if;
				end if;

			when OUT_19 =>

				next_state <= OUT_20;
				if (v_sdr = '1') then
					if (valid_reg = '1') then
						next_temp <= data_reg(19) & temp_reg(DATA_WIDTH-1 downto 1);
					else
						next_temp <= tdi & temp_reg(DATA_WIDTH-1 downto 1);
					end if;
				end if;

			when OUT_20 =>

				next_state <= OUT_21;
				if (v_sdr = '1') then
					if (valid_reg = '1') then
						next_temp <= data_reg(20) & temp_reg(DATA_WIDTH-1 downto 1);
					else
						next_temp <= tdi & temp_reg(DATA_WIDTH-1 downto 1);
					end if;
				end if;

			when OUT_21 =>

				next_state <= OUT_22;
				if (v_sdr = '1') then
					if (valid_reg = '1') then
						next_temp <= data_reg(21) & temp_reg(DATA_WIDTH-1 downto 1);
					else
						next_temp <= tdi & temp_reg(DATA_WIDTH-1 downto 1);
					end if;
				end if;

			when OUT_22 =>

				next_state <= OUT_23;
				if (v_sdr = '1') then
					if (valid_reg = '1') then
						next_temp <= data_reg(22) & temp_reg(DATA_WIDTH-1 downto 1);
					else
						next_temp <= tdi & temp_reg(DATA_WIDTH-1 downto 1);
					end if;
				end if;

			when OUT_23 =>

				next_state <= OUT_24;
				if (v_sdr = '1') then
					if (valid_reg = '1') then
						next_temp <= data_reg(23) & temp_reg(DATA_WIDTH-1 downto 1);
					else
						next_temp <= tdi & temp_reg(DATA_WIDTH-1 downto 1);
					end if;
				end if;

			when OUT_24 =>

				next_state <= OUT_25;
				if (v_sdr = '1') then
					if (valid_reg = '1') then
						next_temp <= data_reg(24) & temp_reg(DATA_WIDTH-1 downto 1);
					else
						next_temp <= tdi & temp_reg(DATA_WIDTH-1 downto 1);
					end if;
				end if;

			when OUT_25 =>

				next_state <= OUT_26;
				if (v_sdr = '1') then
					if (valid_reg = '1') then
						next_temp <= data_reg(25) & temp_reg(DATA_WIDTH-1 downto 1);
					else
						next_temp <= tdi & temp_reg(DATA_WIDTH-1 downto 1);
					end if;
				end if;

			when OUT_26 =>

				next_state <= OUT_27;
				if (v_sdr = '1') then
					if (valid_reg = '1') then
						next_temp <= data_reg(26) & temp_reg(DATA_WIDTH-1 downto 1);
					else
						next_temp <= tdi & temp_reg(DATA_WIDTH-1 downto 1);
					end if;
				end if;

			when OUT_27 =>

				next_state <= OUT_28;
				if (v_sdr = '1') then
					if (valid_reg = '1') then
						next_temp <= data_reg(27) & temp_reg(DATA_WIDTH-1 downto 1);
					else
						next_temp <= tdi & temp_reg(DATA_WIDTH-1 downto 1);
					end if;
				end if;

			when OUT_28 =>

				next_state <= OUT_29;
				if (v_sdr = '1') then
					if (valid_reg = '1') then
						next_temp <= data_reg(28) & temp_reg(DATA_WIDTH-1 downto 1);
					else
						next_temp <= tdi & temp_reg(DATA_WIDTH-1 downto 1);
					end if;
				end if;

			when OUT_29 =>

				next_state <= OUT_30;
				if (v_sdr = '1') then
					if (valid_reg = '1') then
						next_temp <= data_reg(29) & temp_reg(DATA_WIDTH-1 downto 1);
					else
						next_temp <= tdi & temp_reg(DATA_WIDTH-1 downto 1);
					end if;
				end if;

			when OUT_30 =>

				next_state <= OUT_31;
				if (v_sdr = '1') then
					if (valid_reg = '1') then
						next_temp <= data_reg(30) & temp_reg(DATA_WIDTH-1 downto 1);
					else
						next_temp <= tdi & temp_reg(DATA_WIDTH-1 downto 1);
					end if;
				end if;

			when OUT_31 =>

				next_data <= data;
				next_state <= START;
				if (v_sdr = '1') then
					if (valid_reg = '1') then
						next_temp <= data_reg(31) & temp_reg(DATA_WIDTH-1 downto 1);
					else
						next_temp <= tdi & temp_reg(DATA_WIDTH-1 downto 1);
					end if;
				end if;

			when others => null;

		end case;

	end process;

	output <= temp_reg(0);

end FSMD2;
