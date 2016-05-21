-- Jayson Salkey
-- 19:03 May 20, 2016

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fsm_jtag_vhd is
  port(
    clk : in std_logic;
    reset : in std_logic
  );
end fsm_jtag_vhd;
-- CHECK IF THE VERILOG HAS THE REGISTER ON TAIL, QUARTUS NETLIST VIEWER


architecture BHVR of fsm_jtag_vhd is

  type STATE_TYPE is (S_INIT, S_STROBE, S_CNT, S_WAIT, S_READ, S_SETTLE, S_WRITE);

	signal state, next_state : STATE_TYPE;

  signal data_in : std_logic_vector(7 downto 0);
  signal data_out : std_logic_vector(7 downto 0);
  signal txmt : std_logic;
  signal txfl : std_logic;
  signal rxmt : std_logic;
  signal rxfl : std_logic;

  signal wr : std_logic;
  signal rd : std_logic;


  begin


  U_JTAG_UART: entity work.jtag_uart_vhd
    port map(
      clk => clk,
      reset => reset,
      wr => wr,
      data_in => data_out,
      rd => rd,
      data_out => data_in,
      txmt => txmt,
      txfl => txfl,
      rxmt => rxmt,
      rxfl => rxfl
    );

-- Latches?
  process(clk, reset)
	begin

		if(rising_edge(clk)) then
			if (reset = '0') then
				--wr <= '1';
				--rd <= '0';
				state <= S_INIT;
			else
				state <= next_state;
			end if;
		end if;
	end process;

	process(state)
	begin

		next_state <= state;

		case state is
			when S_INIT =>

			   wr <= '1';
			  rd <= '0';
				data_out <= std_logic_vector(to_unsigned(65,8));
				next_state <= S_STROBE;

			when S_STROBE =>

            wr <= '0';
				next_state <= S_CNT;


			when S_CNT =>

        wr <= '1';
        data_out <= std_logic_vector(unsigned(data_out) + 1);
        if(unsigned(data_out) <= 90) then
				  next_state <= S_STROBE;
        else
          next_state <= S_WAIT;
        end if;


			when S_WAIT =>
        if(rxmt = '0') then
          rd <= '1';
          next_state <= S_READ;
        else
          wr <= '1';
          rd <= '0';
          next_state <= S_WAIT;
			end if;

			when S_READ =>
        rd <= '0';
        data_out <= data_in;
				next_state <= S_SETTLE;

			when S_SETTLE =>
        wr <= '0';
				next_state <= S_WRITE;

			when S_WRITE =>
        wr <= '1';
				next_state <= S_WAIT;

			when others => null;

		end case;

	end process;

end BHVR;
