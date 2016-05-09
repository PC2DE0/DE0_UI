library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.mem_pkg.all;

entity jtag_tb is
end jtag_tb;



architecture TB of jtag_tb is

  signal ir_out : std_logic_vector(7 downto 0);
  signal tdo : std_logic;
  signal ir_in : std_logic_vector(0 downto 0);
  signal tck : std_logic;
  signal tdi : std_logic;
  signal virtual_state_cdr : std_logic;
  signal virtual_state_cir : std_logic;
  signal virtual_state_e1dr : std_logic;
  signal virtual_state_e2dr : std_logic;
  signal virtual_state_pdr : std_logic;
  signal virtual_state_udr : std_logic;
  signal virtual_state_uir : std_logic;

begin


	U_vJTAG : entity work.vJTAG
		port map(
			tck 				=> tck,
			tdo 				=> tdo, --in
			tdi 				=> tdi, --out
			ir_out 				=> x"00",
			ir_in 				=> ir_in,
			virtual_state_sdr 	=> sdr,
			virtual_state_udr 	=> udr,
			virtual_state_cdr 	=> cdr
		);	U_SR_V2 : entity work.seriel_to_parallel_reg
		generic map (
			DATA_WIDTH 			=> DATA_WIDTH)
		port map(
			clk 				=> tck,
			rst 				=> rst,
			input 				=> tdi,
			v_sdr 				=> sdr,
			ir_in 				=> ir_in(0),
			udr 				=> udr,
			output 				=> addr_top_in
		);
	U_DESIGN_TO_TDO : entity work.tdo_shifter
		generic map (
			DATA_WIDTH 			=> DATA_WIDTH)
		port map (
			clk 				=> tck,
			rst 				=> rst,
			tdi 				=> tdi,
			v_sdr 				=> sdr,
			valid 				=> out_data_rdy,
			data 				=> design_output,
			output 				=> tdo
		);

	U_ADDR_TOP : entity work.address_wrapper
		generic map (
			DATA_WIDTH 			=> DATA_WIDTH)
		port map(
			tck 				=> tck,
			rst 				=> rst,
			sdr 				=> sdr,
			--ir_in 			=> ir_in(0),
			input 				=> addr_top_in,
			out_data_rdy 		=> out_data_rdy,
			selects 				=> selects,
			sel_out 			=> sel_out
		);

	REG_GEN:
	for i in 0 to MAX_WIDTH-1 generate
		REG_i : entity work.reg_gen
			generic map( DATA_WIDTH => DATA_WIDTH)
			port map(
				clk => tck,
				rst => rst,
				en => selects(i),
				input => addr_top_in,
				output => registers_out(i)
			);
	end generate REG_GEN;

end TB;
