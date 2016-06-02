--When chaning the number of bits that are used, this file will need to be updated for the number
--of bits. Simply uncomment or comment the needed/unneeded states.

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.mem_pkg.all;

entity tdo_shifter is
	port(
		clk 		: in std_logic;
		rst 		: in std_logic;
		ir_in : in std_logic;
		v_sdr 		: in std_logic;
		data 		: in std_logic_vector(INSTR_WIDTH-1 downto 0);
		output 		: out std_logic
	);

end tdo_shifter;

architecture FSMD2 of tdo_shifter is

	type STATE_TYPE is (START, OUT_1, OUT_2, OUT_3, OUT_4, OUT_5, OUT_6, OUT_7, OUT_8, OUT_9, OUT_10, OUT_11, OUT_12, OUT_13, OUT_14, OUT_15, OUT_16, OUT_17,
	OUT_18, OUT_19, OUT_20, OUT_21, OUT_22, OUT_23, OUT_24, OUT_25, OUT_26, OUT_27, OUT_28, OUT_29, OUT_30, OUT_31);

	signal state : STATE_TYPE;
	
	signal temp_reg : std_logic_vector(INSTR_WIDTH-1 downto 0);

begin

	process(clk, rst)
	begin

		if (rst = '1') then
			state <= START;
		elsif(rising_edge(clk)) then
			--output <= temp_reg(INSTR_WIDTH-1);
			
			case state is
				when START =>

					if (v_sdr = '1' and ir_in = '1') then
						state <= OUT_1;
						temp_reg <= data(0) & temp_reg(INSTR_WIDTH-1 downto 1);
					end if;

				when OUT_1 =>
					if (v_sdr = '1') then
							state <= OUT_2;
							temp_reg <= data(1) & temp_reg(INSTR_WIDTH-1 downto 1);
					end if;

				when OUT_2 =>

					if (v_sdr = '1') then
						state <= OUT_3;
							temp_reg <= data(2) & temp_reg(INSTR_WIDTH-1 downto 1);
					end if;

				when OUT_3 =>

					if (v_sdr = '1') then
							state <= OUT_4;
							temp_reg <= data(3) & temp_reg(INSTR_WIDTH-1 downto 1);
					end if;

				when OUT_4 =>

					
					if (v_sdr = '1') then
						state <= OUT_5;
							temp_reg <= data(4) & temp_reg(INSTR_WIDTH-1 downto 1);
					end if;

				when OUT_5 =>

					if (v_sdr = '1') then
						state <= OUT_6;
							temp_reg <= data(5) & temp_reg(INSTR_WIDTH-1 downto 1);
					end if;

				when OUT_6 =>

					if (v_sdr = '1') then
							state <= OUT_7;
							temp_reg <= data(6) & temp_reg(INSTR_WIDTH-1 downto 1);
					end if;

				when OUT_7 =>

					--next_data <= data;
					if (v_sdr = '1') then
							state <= OUT_8;
							temp_reg <= data(7) & temp_reg(INSTR_WIDTH-1 downto 1);
					end if;

				when OUT_8 =>

					--next_data <= data;
					if (v_sdr = '1') then
							state <= OUT_9;
							temp_reg <= data(8) & temp_reg(INSTR_WIDTH-1 downto 1);
					end if;

				when OUT_9 =>

					--next_data <= data;
					
					if (v_sdr = '1') then
						state <= OUT_10;
							temp_reg <= data(9) & temp_reg(INSTR_WIDTH-1 downto 1);
					end if;

				when OUT_10 =>

					--next_data <= data;
					
					if (v_sdr = '1') then
						state <= OUT_11;
							temp_reg <= data(10) & temp_reg(INSTR_WIDTH-1 downto 1);
					end if;

				when OUT_11 =>

					--next_data <= data;
					
					if (v_sdr = '1') then
							state <= OUT_12;
							temp_reg <= data(11) & temp_reg(INSTR_WIDTH-1 downto 1);
					end if;

				when OUT_12 =>

					--next_data <= data;
					
					if (v_sdr = '1') then
							state <= OUT_13;
							temp_reg <= data(12) & temp_reg(INSTR_WIDTH-1 downto 1);
					end if;

				when OUT_13 =>

					--next_data <= data;
					
					if (v_sdr = '1') then
							state <= OUT_14;
							temp_reg <= data(13) & temp_reg(INSTR_WIDTH-1 downto 1);
					end if;

				when OUT_14 =>

					--next_data <= data;
					
					if (v_sdr = '1') then
							state <= OUT_15;
							temp_reg <= data(14) & temp_reg(INSTR_WIDTH-1 downto 1);
					end if;

				when OUT_15 =>

					--next_data <= data;
					
					if (v_sdr = '1') then
							state <= OUT_16;
							temp_reg <= data(15) & temp_reg(INSTR_WIDTH-1 downto 1);
					end if;

				when OUT_16 =>

					--next_data <= data;
					
					if (v_sdr = '1') then
							state <= OUT_17;
							temp_reg <= data(16) & temp_reg(INSTR_WIDTH-1 downto 1);
					end if;

				when OUT_17 =>

					--next_data <= data;
					
					if (v_sdr = '1') then
							state <= OUT_18;
							temp_reg <= data(17) & temp_reg(INSTR_WIDTH-1 downto 1);
					end if;

				when OUT_18 =>

					--next_data <= data;
					
					if (v_sdr = '1') then
							state <= OUT_19;
							temp_reg <= data(18) & temp_reg(INSTR_WIDTH-1 downto 1);
					end if;

				when OUT_19 =>

					--next_data <= data;
					
					if (v_sdr = '1') then
							state <= OUT_20;
							temp_reg <= data(19) & temp_reg(INSTR_WIDTH-1 downto 1);
					end if;

				when OUT_20 =>

					--next_data <= data;
					
					if (v_sdr = '1') then
							state <= OUT_21;
							temp_reg <= data(20) & temp_reg(INSTR_WIDTH-1 downto 1);
					end if;

				when OUT_21 =>

					--next_data <= data;
					
					if (v_sdr = '1') then
							state <= OUT_22;
							temp_reg <= data(21) & temp_reg(INSTR_WIDTH-1 downto 1);
					end if;

				when OUT_22 =>

					--next_data <= data;
					
					if (v_sdr = '1') then
							state <= OUT_23;
							temp_reg <= data(22) & temp_reg(INSTR_WIDTH-1 downto 1);
					end if;

				when OUT_23 =>

					--next_data <= data;
					
					if (v_sdr = '1') then
							state <= OUT_24;
							temp_reg <= data(23) & temp_reg(INSTR_WIDTH-1 downto 1);
					end if;

				when OUT_24 =>

					--next_data <= data;
					
					if (v_sdr = '1') then
							state <= OUT_25;
							temp_reg <= data(24) & temp_reg(INSTR_WIDTH-1 downto 1);
					end if;

				when OUT_25 =>

					--next_data <= data;
					
					if (v_sdr = '1') then
							state <= OUT_26;
							temp_reg <= data(25) & temp_reg(INSTR_WIDTH-1 downto 1);
					end if;

				when OUT_26 =>

					--next_data <= data;
					
					if (v_sdr = '1') then
							state <= OUT_27;
							temp_reg <= data(26) & temp_reg(INSTR_WIDTH-1 downto 1);
					end if;

				when OUT_27 =>

					--next_data <= data;
					
					if (v_sdr = '1') then
							state <= OUT_28;
							temp_reg <= data(27) & temp_reg(INSTR_WIDTH-1 downto 1);
					end if;

				when OUT_28 =>

					--next_data <= data;
					
					if (v_sdr = '1') then
							state <= OUT_29;
							temp_reg <= data(28) & temp_reg(INSTR_WIDTH-1 downto 1);
					end if;

				when OUT_29 =>

					--next_data <= data;
					
					if (v_sdr = '1') then
							state <= OUT_30;
							temp_reg <= data(29) & temp_reg(INSTR_WIDTH-1 downto 1);
					end if;

				when OUT_30 =>

					--next_data <= data;
					
					if (v_sdr = '1') then
							state <= OUT_31;
							temp_reg <= data(30) & temp_reg(INSTR_WIDTH-1 downto 1);
					end if;

				when OUT_31 =>

					--next_data <= data;
					state <= START;
					--if(ir_in = '1') then
					if (v_sdr = '1') then
							temp_reg <= data(31) & temp_reg(INSTR_WIDTH-1 downto 1);
					end if;

				when others => null;

			end case;
		end if;
	end process;

	output <= temp_reg(INSTR_WIDTH-1);

end FSMD2;
