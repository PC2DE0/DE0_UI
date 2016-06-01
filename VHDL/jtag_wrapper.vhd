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
   w_r_en : out std_logic;
   done : out std_logic
	 );
end jtag_wrapper;


architecture bhvr of jtag_wrapper is
	signal tck 			: std_logic; 									-- JTAG clock
	signal tdo 			: std_logic;									--Serial output to vJTAG
	signal tdi 			: std_logic;									--Serial input to vJTAG
	signal sdr 			: std_logic;
	signal cdr 			: std_logic;
	signal udr 			: std_logic;
  signal ir_in 		: std_logic_vector(0 downto 0);					--vJTAG Instruction register input

  signal wr_en : std_logic;
begin

  w_r_en <= wr_en;
	--vJTAG Megafunction call
	U_vJTAG : entity work.vJTAG
		port map(
			tck 				=> tck,
			tdo 				=> tdo, --in
			tdi 				=> tdi, --out
			ir_out 				=> "0",
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
      w_r_en => wr_en,
      done => done
    );

	U_TDO_SHIFTER : entity work.tdo_shifter
		generic map (
			DATA_WIDTH 			=> DATA_WIDTH)
		port map (
			clk 				=> tck,
			rst 				=> rst,
			tdi 				=> tdi,
			v_sdr 				=> sdr,
			valid 				=> (not wr_en) and (done),
			data 				=> design_output,
			output 				=> tdo
		);

	clk <= tck;
end bhvr;
