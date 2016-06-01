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
   address_register : out std_logic_vector(DATA_WIDTH-1 downto 0);
	 data_register : out std_logic_vector(DATA_WIDTH-1 downto 0);
   w_r_en : out std_logic
	 );
end jtag_wrapper;


architecture bhvr of jtag_wrapper is
	signal tck 			: std_logic; 									-- JTAG clock
	signal tdo 			: std_logic;									--Serial output to vJTAG
	signal tdi 			: std_logic;									--Serial input to vJTAG
	signal sdr 			: std_logic;
	signal cdr 			: std_logic;
	signal udr 			: std_logic;
	signal out_data_rdy : std_logic;
	signal selects 	: std_logic;
	signal sel_out 		: std_logic;
  signal ir_in 		: std_logic_vector(0 downto 0);					--vJTAG Instruction register input
	signal addr_top_in 	: std_logic_vector(DATA_WIDTH-1 downto 0);

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

  U_TDI_SHIFTER : entity work.tdi_shifter
    port map(
      clk => tck,
      rst => rst,
      tdi => tdi,
      v_sdr => sdr,
      ir_in => ir_in(0),
      udr => udr,
      output_data => data_register,
      output_address => address_register,
      w_r_en => w_r_en
    );
-- --This shift register take in a serial input and outpus in parallel
-- 	U_SR_V2 : entity work.seriel_to_parallel_reg
-- 		generic map (
-- 			DATA_WIDTH 			=> DATA_WIDTH)
-- 		port map(
-- 			clk 				=> tck,
-- 			rst 				=> rst,
-- 			input 				=> tdi,
-- 			v_sdr 				=> sdr,
-- 			ir_in 				=> ir_in(0),
-- 			udr 				=> udr,
-- 			output 				=> addr_top_in
-- 		);
--
-- --This will take a parallel signal and send it out in series
-- --This is based on the vJTAG clock. If data is coming form another
-- --clock domain please be aware of metastbility issues
-- 	U_DESIGN_TO_TDO : entity work.tdo_shifter
-- 		generic map (
-- 			DATA_WIDTH 			=> DATA_WIDTH)
-- 		port map (
-- 			clk 				=> tck,
-- 			rst 				=> rst,
-- 			tdi 				=> tdi,
-- 			v_sdr 				=> sdr,
-- 			valid 				=> out_data_rdy,
-- 			data 				=> design_output,
-- 			output 				=> tdo
-- 		);
--
-- 	U_ADDR_TOP : entity work.address_wrapper
-- 		generic map (
-- 			DATA_WIDTH 			=> DATA_WIDTH)
-- 		port map(
-- 			tck 				=> tck,
-- 			rst 				=> rst,
-- 			sdr 				=> sdr,
-- 			--ir_in 			=> ir_in(0),
-- 			input 				=> addr_top_in,
-- 			out_data_rdy 		=> out_data_rdy,
-- 			selects 				=> selects,
-- 			sel_out 			=> sel_out,
--       address_ready => address_ready,
--       address_register_to_memmap => address_register
-- 		);
--
--   REG_I : entity work.reg
--     generic map ( DATA_WIDTH => DATA_WIDTH)
--     port map(
--       clk => tck,
--       rst => rst,
--       en => selects,
--       output_ready => data_ready,
--       input => addr_top_in,
--       output => data_register
--     );
	clk <= tck;
end bhvr;
