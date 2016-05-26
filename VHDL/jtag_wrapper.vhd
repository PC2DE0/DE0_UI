-- Jayson Salkey
-- 03/05/2016
-- jtag_wrapper.vhd

library ieee;
use ieee.std_logic_1164.all;
use work.mem_pkg.all;


entity jtag_wrapper is
  port(
	 clk : out std_logic;
   rst : in std_logic;
   design_output : in std_logic_vector(DATA_WIDTH-1 downto 0);

	 -- OUTPUTS TO DESIGN CIRCUIT
	 registers_out : out registerArray;
   address_register_out : out std_logic_vector(DATA_WIDTH-1 downto 0)
	 );
end jtag_wrapper;


architecture bhvr of jtag_wrapper is
	signal tck 			: std_logic; 									-- JTAG clock
	signal tdo 			: std_logic;									--Serial output to vJTAG
	signal tdi 			: std_logic;									--Serial input to vJTAG
	signal ir_in 		: std_logic_vector(0 downto 0);					--vJTAG Instruction register input
	signal addr_top_in 	: std_logic_vector(DATA_WIDTH-1 downto 0);		--
	signal sdr 			: std_logic;
	signal cdr 			: std_logic;
	signal udr 			: std_logic;
	signal out_data_rdy : std_logic;
	signal selects 	: selectArray;
	signal sel_out 		: std_logic;
  signal address_register : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal data_register : std_logic_vector(DATA_WIDTH-1 downto 0);

  signal registers_out_intermediate : registerArray;
begin
	--vJTAG Megafunction call
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
		);

  U_MEMORY_MAP : entity work.memory_map
    port map(
      clk => tck,
      rst => rst,
      wr_en => '1',
      wr_addr => address_register,
      wr_data => data_register,
      rd_en => '0',
      rd_addr => address_register,
      rd_data => open,
      go => open,
      n => open,
      result => (others => '0'),
      done => '0'
    );

--This shift register take in a serial input and outpus in parallel
	U_SR_V2 : entity work.seriel_to_parallel_reg
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

--This will take a parallel signal and send it out in series
--This is based on the vJTAG clock. If data is coming form another
--clock domain please be aware of metastbility issues
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
			sel_out 			=> sel_out,
      address_register_to_memmap => address_register
		);

	-- The following are the memory mapped registers
	-- Max Width here because we are just going to use 32 registers to test for now.
	REG_GEN:
	for i in 0 to MAX_WIDTH-1 generate
		REG_i : entity work.reg_gen
			generic map( DATA_WIDTH => DATA_WIDTH)
			port map(
				clk => tck,
				rst => rst,
				en => selects(i),
				input => addr_top_in,
				output => registers_out_intermediate(i)
			);
	end generate REG_GEN;

  registers_out <= registers_out_intermediate;
  data_register <= registers_out_intermediate(0);
  address_register_out <= address_register;
	clk <= tck;
end bhvr;
