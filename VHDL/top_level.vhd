library ieee;
use ieee.std_logic_1164.all;
use work.mem_pkg.all;


entity top_level is
	generic (
		DATA_WIDTH 	: positive := 8
 	);
	port(
		rst 		: in std_logic;
		alu_sel 	: in std_logic_vector(3 downto 0);
		
		--These are used for testing purposes only. They are not nessecary to have
		ov_flag 	: out std_logic;
		led_hi_a 	: out std_logic_vector(6 downto 0);
		led_lo_a 	: out std_logic_vector(6 downto 0);
		led_hi_b 	: out std_logic_vector(6 downto 0);
		led_lo_b 	: out std_logic_vector(6 downto 0);
		output 		: out std_logic_vector(7 downto 0)
	);

end top_level;

architecture BHV of top_level is

	signal tck 			: std_logic;									--Clock from the JTAG
	signal tdo 			: std_logic;									--Serial output to vJTAG
	signal tdi 			: std_logic;									--Serial input to vJTAG
	signal ir_in 		: std_logic_vector(0 downto 0);					--vJTAG Instruction register input
	signal addr_top_in 	: std_logic_vector(DATA_WIDTH-1 downto 0);		--
	signal sdr 			: std_logic;
	signal cdr 			: std_logic;
	signal udr 			: std_logic;
	signal out_data_rdy : std_logic;
	signal sel_a 		: std_logic;
	signal sel_b 		: std_logic;
	signal sel_out 		: std_logic;
	signal reg_a_out 	: std_logic_vector(DATA_WIDTH-1 downto 0);
	signal reg_b_out 	: std_logic_vector(DATA_WIDTH-1 downto 0);
	signal alu_output 	: std_logic_vector(DATA_WIDTH-1 downto 0);
	signal leds_in 		: std_logic_vector(DATA_WIDTH-1 downto 0);
	signal temp_output 	: std_logic_vector(DATA_WIDTH-1 downto 0);
	
begin
--vJTAG Megafunction call
	U_vJTAG : entity work.vJTAG
		port map(
			tck 				=> tck,
			tdo 				=> tdo,
			tdi 				=> tdi,
			ir_out 				=> "00000000",
			ir_in 				=> ir_in,
			virtual_state_sdr 	=> sdr,
			virtual_state_udr 	=> udr,
			virtual_state_cdr 	=> cdr
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
	U_ALU_TO_TDO : entity work.tdo_shifter
		generic map (
			DATA_WIDTH 			=> DATA_WIDTH)
		port map (
			clk 				=> tck,
			rst 				=> rst,
			tdi 				=> tdi,
			v_sdr 				=> sdr,
			valid 				=> out_data_rdy,
			data 				=> alu_output,
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
			sel_a 				=> sel_a,
			sel_b 				=> sel_b,
			sel_out 			=> sel_out
		);

--This is our testing component. This component should be able to be replaced with 
--anyother component. Do keep in mind clock domains and that the provided ALU does
--not use a clock.		
	U_ALU_NS : entity work.alu_ns
		generic map( 
			DATA_WIDTH		=> DATA_WIDTH)
		port map( 
			input1 				=> reg_a_out,
			input2 				=> reg_b_out,
			sel    				=> alu_sel,
			output 				=> alu_output,
			overflow 			=> ov_flag
		);

--The following are the memory maped registers		
	U_A_REG : entity work.reg_gen
		generic map (
			DATA_WIDTH 			=> DATA_WIDTH)
		port map(
			clk 				=> tck,
			rst 				=> rst,
			en  				=> sel_a,
			input 				=> addr_top_in,
			output 				=> reg_a_out
		);
		
	U_B_REG : entity work.reg_gen
		generic map (
			DATA_WIDTH 			=> DATA_WIDTH)
		port map(
			clk 				=> tck,
			rst 				=> rst,
			en  				=> sel_b,
			input 			=> addr_top_in,
			output 				=> reg_b_out
		);
		
	U_OUT_REG : entity work.reg_gen
		generic map (
			DATA_WIDTH 			=> DATA_WIDTH)
		port map(
			clk 				=> tck,
			rst 				=> rst,
			en  				=> sel_out,
			input 				=> alu_output,
			output 				=> temp_output
		);

	
--The following is used only for debugging purposes
--it can be removed and there will not be any functional 
--effects		
	U_LED_HI_a : entity work.decoder7seg
	  port map(
		input => reg_b_out(7 downto 4),
		output => led_hi_a);
		
	U_LED_LO_a : entity work.decoder7seg
	  port map(
		input => reg_b_out(3 downto 0),
		output => led_lo_a);
		
	U_LED_HI_b : entity work.decoder7seg
	  port map(
		input => reg_a_out(7 downto 4),
		output => led_hi_b);
		
	U_LED_LO_b : entity work.decoder7seg
	  port map(
		input => reg_a_out(3 downto 0),
		output => led_lo_b);
	--these go to the leds on the board	
	output <= temp_output(7 downto 0);
end BHV;
		
	
		
	