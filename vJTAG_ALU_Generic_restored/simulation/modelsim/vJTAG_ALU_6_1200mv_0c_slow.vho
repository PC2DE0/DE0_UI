-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "05/26/2016 18:13:08"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top_level_application_test IS
    PORT (
	altera_reserved_tms : IN std_logic := '0';
	altera_reserved_tck : IN std_logic := '0';
	altera_reserved_tdi : IN std_logic := '0';
	altera_reserved_tdo : OUT std_logic;
	rst : IN std_logic;
	led_hi_a : OUT std_logic_vector(6 DOWNTO 0);
	led_lo_a : OUT std_logic_vector(6 DOWNTO 0);
	led_hi_b : OUT std_logic_vector(6 DOWNTO 0);
	led_lo_b : OUT std_logic_vector(6 DOWNTO 0)
	);
END top_level_application_test;

-- Design Ports Information
-- led_hi_a[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_hi_a[1]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_hi_a[2]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_hi_a[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_hi_a[4]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_hi_a[5]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_hi_a[6]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_lo_a[0]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_lo_a[1]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_lo_a[2]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_lo_a[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_lo_a[4]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_lo_a[5]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_lo_a[6]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_hi_b[0]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_hi_b[1]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_hi_b[2]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_hi_b[3]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_hi_b[4]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_hi_b[5]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_hi_b[6]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_lo_b[0]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_lo_b[1]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_lo_b[2]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_lo_b[3]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_lo_b[4]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_lo_b[5]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_lo_b[6]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- altera_reserved_tms	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- altera_reserved_tck	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- altera_reserved_tdi	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- altera_reserved_tdo	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF top_level_application_test IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_altera_reserved_tms : std_logic;
SIGNAL ww_altera_reserved_tck : std_logic;
SIGNAL ww_altera_reserved_tdi : std_logic;
SIGNAL ww_altera_reserved_tdo : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_led_hi_a : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led_lo_a : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led_hi_b : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led_lo_b : std_logic_vector(6 DOWNTO 0);
SIGNAL \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \altera_internal_jtag~TCKUTAPclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_logic|Equal2~1_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_addrcount|count[1]~0_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_logic|sel_out_reg~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_logic|sel_out_reg~0_combout\ : std_logic;
SIGNAL \altera_internal_jtag~TCKUTAP\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]~5_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~10\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~9_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~12\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~11_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[2]~15\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[2]~14_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[3]~17\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[3]~16_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[4]~18_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][4]~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][5]~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][6]~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~4_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~4_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~4_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~6_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~7_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~10_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~11_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~12_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~13_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~5_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~6_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~7_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~13_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~8_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~9_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~10_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~11_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~12_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~13_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~14_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[0]~15_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~20_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~22_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~23_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[0]~1_combout\ : std_logic;
SIGNAL \auto_hub|~GND~combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~_wirecell_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[0]~_wirecell_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~clkctrl_outclk\ : std_logic;
SIGNAL \altera_internal_jtag~TCKUTAPclkctrl_outclk\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][5]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][6]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[2]~feeder_combout\ : std_logic;
SIGNAL \altera_reserved_tck~input_o\ : std_logic;
SIGNAL \altera_reserved_tdi~input_o\ : std_logic;
SIGNAL \altera_internal_jtag~TMSUTAP\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~8_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~10_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~11_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~12_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_dr_scan_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[8]~feeder_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~5_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~6_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~7_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~9_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[8]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[7]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[4]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[3]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[2]~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal1~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~8_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~9_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal3~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[0]~4_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[2]~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~5_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~4_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_1~0_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_1~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_2~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_2~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_3~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_3~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_4~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_5~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_6~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_6~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_7~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_7~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|state.START~0_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|state.START~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_SR_V2|temp[5]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_SR_V2|process_0~0_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_SR_V2|temp[4]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_SR_V2|output[2]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_proc~0_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_udr~0_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[2]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_addrcount|count[0]~1_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_logic|Equal0~0_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_addrcount|output~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_SR_V2|temp[1]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_SR_V2|output[1]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_logic|out_data_rdy~1_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_SR_V2|output[5]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[5]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[4]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_logic|out_data_rdy~0_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_logic|out_data_rdy~2_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|valid_reg~0_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|valid_reg~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|next_temp~0_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector8~1_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector8~0_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector8~2_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[6]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|WideNor0~0_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|WideNor0~1_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[0]~0_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[3]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[2]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[0]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]~6\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]~8\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]~10_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]~13\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~14_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~9_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~16_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~17_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]~11\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]~12_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]~7_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~20_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~21_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~28_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~29_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~26_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~27_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[1]~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~24_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~25_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[2]~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~5_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~_wirecell_combout\ : std_logic;
SIGNAL \altera_internal_jtag~TDIUTAP\ : std_logic;
SIGNAL \U_jtag_wrapper|U_SR_V2|temp[7]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_SR_V2|output[6]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[4]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[7]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[7]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_logic|Equal1~0_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[3]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_SR_V2|temp[0]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_SR_V2|output[0]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[0]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_logic|Equal1~1_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_logic|Equal2~0_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap[7]~0_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_or_data~0_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_or_data~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap[7]~1_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp~q\ : std_logic;
SIGNAL \U_LED_HI_a|Mux6~0_combout\ : std_logic;
SIGNAL \U_LED_HI_a|Mux5~0_combout\ : std_logic;
SIGNAL \U_LED_HI_a|Mux4~0_combout\ : std_logic;
SIGNAL \U_LED_HI_a|Mux3~0_combout\ : std_logic;
SIGNAL \U_LED_HI_a|Mux2~0_combout\ : std_logic;
SIGNAL \U_LED_HI_a|Mux1~0_combout\ : std_logic;
SIGNAL \U_LED_HI_a|Mux0~0_combout\ : std_logic;
SIGNAL \U_LED_LO_a|Mux6~0_combout\ : std_logic;
SIGNAL \U_LED_LO_a|Mux5~0_combout\ : std_logic;
SIGNAL \U_LED_LO_a|Mux4~0_combout\ : std_logic;
SIGNAL \U_LED_LO_a|Mux3~0_combout\ : std_logic;
SIGNAL \U_LED_LO_a|Mux2~0_combout\ : std_logic;
SIGNAL \U_LED_LO_a|Mux1~0_combout\ : std_logic;
SIGNAL \U_LED_LO_a|Mux0~0_combout\ : std_logic;
SIGNAL \U_LED_HI_b|Mux6~0_combout\ : std_logic;
SIGNAL \U_LED_HI_b|Mux5~0_combout\ : std_logic;
SIGNAL \U_LED_HI_b|Mux4~0_combout\ : std_logic;
SIGNAL \U_LED_HI_b|Mux3~0_combout\ : std_logic;
SIGNAL \U_LED_HI_b|Mux2~0_combout\ : std_logic;
SIGNAL \U_LED_HI_b|Mux1~0_combout\ : std_logic;
SIGNAL \U_LED_HI_b|Mux0~0_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[2]~feeder_combout\ : std_logic;
SIGNAL \U_LED_LO_b|Mux6~0_combout\ : std_logic;
SIGNAL \U_LED_LO_b|Mux5~0_combout\ : std_logic;
SIGNAL \U_LED_LO_b|Mux4~0_combout\ : std_logic;
SIGNAL \U_LED_LO_b|Mux3~0_combout\ : std_logic;
SIGNAL \U_LED_LO_b|Mux2~0_combout\ : std_logic;
SIGNAL \U_LED_LO_b|Mux1~0_combout\ : std_logic;
SIGNAL \U_LED_LO_b|Mux0~0_combout\ : std_logic;
SIGNAL \altera_reserved_tms~input_o\ : std_logic;
SIGNAL \altera_internal_jtag~TDO\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_addrcount|count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U_jtag_wrapper|REG_I|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_jtag_wrapper|U_SR_V2|temp\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_jtag_wrapper|U_SR_V2|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_altera_internal_jtag~TCKUTAPclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|ALT_INV_state\ : std_logic_vector(8 DOWNTO 8);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\ : std_logic;
SIGNAL \ALT_INV_altera_internal_jtag~TMSUTAP\ : std_logic;
SIGNAL \U_LED_LO_b|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \U_LED_HI_b|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \U_LED_LO_a|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \U_LED_HI_a|ALT_INV_Mux6~0_combout\ : std_logic;

BEGIN

ww_altera_reserved_tms <= altera_reserved_tms;
ww_altera_reserved_tck <= altera_reserved_tck;
ww_altera_reserved_tdi <= altera_reserved_tdi;
altera_reserved_tdo <= ww_altera_reserved_tdo;
ww_rst <= rst;
led_hi_a <= ww_led_hi_a;
led_lo_a <= ww_led_lo_a;
led_hi_b <= ww_led_hi_b;
led_lo_b <= ww_led_lo_b;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~combout\);

\altera_internal_jtag~TCKUTAPclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \altera_internal_jtag~TCKUTAP\);
\ALT_INV_altera_internal_jtag~TCKUTAPclkctrl_outclk\ <= NOT \altera_internal_jtag~TCKUTAPclkctrl_outclk\;
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|ALT_INV_state\(8) <= NOT \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8);
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\ <= NOT \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~q\;
\ALT_INV_altera_internal_jtag~TMSUTAP\ <= NOT \altera_internal_jtag~TMSUTAP\;
\U_LED_LO_b|ALT_INV_Mux6~0_combout\ <= NOT \U_LED_LO_b|Mux6~0_combout\;
\U_LED_HI_b|ALT_INV_Mux6~0_combout\ <= NOT \U_LED_HI_b|Mux6~0_combout\;
\U_LED_LO_a|ALT_INV_Mux6~0_combout\ <= NOT \U_LED_LO_a|Mux6~0_combout\;
\U_LED_HI_a|ALT_INV_Mux6~0_combout\ <= NOT \U_LED_HI_a|Mux6~0_combout\;

-- Location: LCCOMB_X29_Y28_N4
\U_jtag_wrapper|U_ADDR_TOP|U_logic|Equal2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_ADDR_TOP|U_logic|Equal2~1_combout\ = (\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(2) & (\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(0) & (\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(1) & 
-- \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(2),
	datab => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(0),
	datac => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(1),
	datad => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(3),
	combout => \U_jtag_wrapper|U_ADDR_TOP|U_logic|Equal2~1_combout\);

-- Location: FF_X20_Y24_N11
\U_jtag_wrapper|U_ADDR_TOP|U_addrcount|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~clkctrl_outclk\,
	d => \U_jtag_wrapper|U_ADDR_TOP|U_addrcount|count[1]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_addrcount|count\(1));

-- Location: LCCOMB_X20_Y24_N10
\U_jtag_wrapper|U_ADDR_TOP|U_addrcount|count[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_ADDR_TOP|U_addrcount|count[1]~0_combout\ = \U_jtag_wrapper|U_ADDR_TOP|U_addrcount|count\(1) $ (\U_jtag_wrapper|U_ADDR_TOP|U_addrcount|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_jtag_wrapper|U_ADDR_TOP|U_addrcount|count\(1),
	datad => \U_jtag_wrapper|U_ADDR_TOP|U_addrcount|count\(0),
	combout => \U_jtag_wrapper|U_ADDR_TOP|U_addrcount|count[1]~0_combout\);

-- Location: FF_X28_Y28_N13
\U_jtag_wrapper|U_ADDR_TOP|U_logic|sel_out_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_ADDR_TOP|U_logic|sel_out_reg~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_logic|sel_out_reg~q\);

-- Location: LCCOMB_X28_Y28_N12
\U_jtag_wrapper|U_ADDR_TOP|U_logic|sel_out_reg~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_ADDR_TOP|U_logic|sel_out_reg~0_combout\ = (\U_jtag_wrapper|U_ADDR_TOP|U_logic|Equal2~1_combout\ & (\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_or_data~q\ & \U_jtag_wrapper|U_ADDR_TOP|U_logic|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_ADDR_TOP|U_logic|Equal2~1_combout\,
	datac => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_or_data~q\,
	datad => \U_jtag_wrapper|U_ADDR_TOP|U_logic|Equal2~0_combout\,
	combout => \U_jtag_wrapper|U_ADDR_TOP|U_logic|sel_out_reg~0_combout\);

-- Location: JTAG_X1_Y15_N0
altera_internal_jtag : cycloneiii_jtag
PORT MAP (
	tms => \altera_reserved_tms~input_o\,
	tck => \altera_reserved_tck~input_o\,
	tdi => \altera_reserved_tdi~input_o\,
	tdouser => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~_wirecell_combout\,
	tdo => \altera_internal_jtag~TDO\,
	tmsutap => \altera_internal_jtag~TMSUTAP\,
	tckutap => \altera_internal_jtag~TCKUTAP\,
	tdiutap => \altera_internal_jtag~TDIUTAP\);

-- Location: FF_X17_Y19_N11
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]~5_combout\,
	asdata => VCC,
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~17_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0));

-- Location: LCCOMB_X17_Y19_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]~5\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	datad => VCC,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]~5_combout\,
	cout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]~6\);

-- Location: FF_X16_Y20_N11
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~11_combout\,
	sclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~13_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(1));

-- Location: FF_X16_Y20_N13
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[2]~14_combout\,
	sclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~13_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(2));

-- Location: FF_X16_Y20_N17
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[4]~18_combout\,
	sclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~13_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(4));

-- Location: FF_X16_Y20_N15
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[3]~16_combout\,
	sclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~13_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(3));

-- Location: FF_X16_Y20_N9
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~9_combout\,
	sclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~13_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(0));

-- Location: LCCOMB_X16_Y20_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~9\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(0),
	datad => VCC,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~9_combout\,
	cout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~10\);

-- Location: LCCOMB_X16_Y20_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~11\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(1),
	datad => VCC,
	cin => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~10\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~11_combout\,
	cout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~12\);

-- Location: LCCOMB_X16_Y20_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[2]~14\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(2),
	datad => VCC,
	cin => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~12\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[2]~14_combout\,
	cout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[2]~15\);

-- Location: LCCOMB_X16_Y20_N14
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[3]~16\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(3),
	datad => VCC,
	cin => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[2]~15\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[3]~16_combout\,
	cout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[3]~17\);

-- Location: LCCOMB_X16_Y20_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[4]~18\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(4),
	cin => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[3]~17\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[4]~18_combout\);

-- Location: FF_X15_Y20_N1
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~0_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(0));

-- Location: FF_X15_Y20_N27
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~4_combout\,
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(0));

-- Location: LCCOMB_X15_Y20_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~0_combout\);

-- Location: LCCOMB_X14_Y19_N30
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~3\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~0_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(8),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~1_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~3_combout\);

-- Location: LCCOMB_X14_Y19_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~4\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~3_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~4_combout\);

-- Location: FF_X14_Y18_N17
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~10_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(4));

-- Location: FF_X14_Y18_N11
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~11_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(5));

-- Location: FF_X14_Y18_N21
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~12_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(6));

-- Location: FF_X14_Y18_N15
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~13_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(7));

-- Location: LCCOMB_X14_Y17_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TDIUTAP\,
	datab => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(8),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~0_combout\);

-- Location: LCCOMB_X14_Y17_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~0_combout\);

-- Location: LCCOMB_X14_Y17_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~2\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~q\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~0_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(15),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~2_combout\);

-- Location: FF_X16_Y17_N5
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[0]~1_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(0));

-- Location: FF_X15_Y19_N9
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~feeder_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(0));

-- Location: FF_X15_Y20_N7
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~1_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(1));

-- Location: LCCOMB_X15_Y20_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~0_combout\);

-- Location: FF_X15_Y20_N9
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~7_combout\,
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(1));

-- Location: LCCOMB_X15_Y20_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~4\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~4_combout\);

-- Location: LCCOMB_X14_Y18_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~4\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TDIUTAP\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(8),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~4_combout\);

-- Location: LCCOMB_X14_Y18_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~6\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[2]~1_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(4),
	datad => \~GND~combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~6_combout\);

-- Location: LCCOMB_X14_Y18_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~7\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~7_combout\);

-- Location: LCCOMB_X14_Y18_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~10\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(5),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datad => \~GND~combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~10_combout\);

-- Location: LCCOMB_X14_Y18_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~11\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \~GND~combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(6),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~11_combout\);

-- Location: LCCOMB_X14_Y18_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~12\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(7),
	datad => \~GND~combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~12_combout\);

-- Location: LCCOMB_X14_Y18_N14
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~13\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \~GND~combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(8),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~13_combout\);

-- Location: LCCOMB_X15_Y18_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~2\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~2_combout\);

-- Location: FF_X15_Y19_N11
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~feeder_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(0));

-- Location: FF_X15_Y19_N13
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[1]~feeder_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(1));

-- Location: FF_X15_Y20_N15
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~2_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(2));

-- Location: LCCOMB_X15_Y20_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~1\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(2),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~1_combout\);

-- Location: LCCOMB_X16_Y20_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~5\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~5_combout\);

-- Location: LCCOMB_X16_Y20_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~6\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(1),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~5_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~6_combout\);

-- Location: FF_X15_Y20_N17
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~11_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(2));

-- Location: LCCOMB_X15_Y20_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~7\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(2),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~6_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~7_combout\);

-- Location: FF_X15_Y19_N7
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[1]~feeder_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(1));

-- Location: FF_X15_Y19_N25
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[2]~feeder_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(2));

-- Location: FF_X15_Y20_N21
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~3_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(3));

-- Location: LCCOMB_X15_Y20_N14
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~2\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~2_combout\);

-- Location: LCCOMB_X16_Y20_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~13\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(1),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~5_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~13_combout\);

-- Location: FF_X15_Y20_N31
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~14_combout\,
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(3));

-- Location: LCCOMB_X15_Y20_N30
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~8\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~6_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~8_combout\);

-- Location: LCCOMB_X15_Y20_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~9\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~9_combout\);

-- Location: LCCOMB_X16_Y20_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~10\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(1),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~10_combout\);

-- Location: LCCOMB_X15_Y20_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~11\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~9_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~8_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~10_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~11_combout\);

-- Location: FF_X15_Y19_N3
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(3),
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(2));

-- Location: LCCOMB_X15_Y20_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~3\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TDIUTAP\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~3_combout\);

-- Location: LCCOMB_X16_Y20_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~12\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(1),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~12_combout\);

-- Location: LCCOMB_X16_Y20_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~13\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~12_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~13_combout\);

-- Location: LCCOMB_X15_Y20_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~14\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TDIUTAP\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~13_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~14_combout\);

-- Location: LCCOMB_X15_Y20_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[0]~15\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~q\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[0]~15_combout\);

-- Location: LCCOMB_X15_Y20_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~20\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~q\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~20_combout\);

-- Location: LCCOMB_X17_Y19_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~22\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~22_combout\);

-- Location: LCCOMB_X17_Y19_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~23\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~22_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~23_combout\);

-- Location: LCCOMB_X16_Y17_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[0]~1\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[0]~1_combout\);

-- Location: CLKCTRL_G12
\U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~clkctrl_outclk\);

-- Location: CLKCTRL_G1
\altera_internal_jtag~TCKUTAPclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \altera_internal_jtag~TCKUTAPclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\);

-- Location: LCCOMB_X15_Y18_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~feeder_combout\);

-- Location: LCCOMB_X15_Y18_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~feeder_combout\);

-- Location: LCCOMB_X15_Y18_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][5]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(5),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][5]~feeder_combout\);

-- Location: LCCOMB_X15_Y18_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][6]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(6),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][6]~feeder_combout\);

-- Location: LCCOMB_X15_Y18_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(7),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~feeder_combout\);

-- Location: LCCOMB_X15_Y19_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~feeder_combout\);

-- Location: LCCOMB_X15_Y19_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~feeder_combout\);

-- Location: LCCOMB_X15_Y19_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[1]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[1]~feeder_combout\);

-- Location: LCCOMB_X15_Y19_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[1]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[1]~feeder_combout\);

-- Location: LCCOMB_X15_Y19_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[2]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[2]~feeder_combout\);

-- Location: IOOBUF_X26_Y29_N23
\led_hi_a[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED_HI_a|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_led_hi_a(0));

-- Location: IOOBUF_X28_Y29_N16
\led_hi_a[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED_HI_a|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_led_hi_a(1));

-- Location: IOOBUF_X23_Y29_N30
\led_hi_a[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED_HI_a|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_led_hi_a(2));

-- Location: IOOBUF_X23_Y29_N23
\led_hi_a[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED_HI_a|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_led_hi_a(3));

-- Location: IOOBUF_X23_Y29_N2
\led_hi_a[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED_HI_a|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_led_hi_a(4));

-- Location: IOOBUF_X21_Y29_N9
\led_hi_a[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED_HI_a|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_led_hi_a(5));

-- Location: IOOBUF_X21_Y29_N2
\led_hi_a[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED_HI_a|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_led_hi_a(6));

-- Location: IOOBUF_X26_Y29_N16
\led_lo_a[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED_LO_a|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_led_lo_a(0));

-- Location: IOOBUF_X28_Y29_N23
\led_lo_a[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED_LO_a|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_led_lo_a(1));

-- Location: IOOBUF_X26_Y29_N9
\led_lo_a[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED_LO_a|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_led_lo_a(2));

-- Location: IOOBUF_X28_Y29_N30
\led_lo_a[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED_LO_a|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_led_lo_a(3));

-- Location: IOOBUF_X26_Y29_N2
\led_lo_a[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED_LO_a|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_led_lo_a(4));

-- Location: IOOBUF_X21_Y29_N30
\led_lo_a[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED_LO_a|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_led_lo_a(5));

-- Location: IOOBUF_X21_Y29_N23
\led_lo_a[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED_LO_a|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_led_lo_a(6));

-- Location: IOOBUF_X39_Y29_N30
\led_hi_b[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED_HI_b|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_led_hi_b(0));

-- Location: IOOBUF_X37_Y29_N30
\led_hi_b[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED_HI_b|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_led_hi_b(1));

-- Location: IOOBUF_X37_Y29_N23
\led_hi_b[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED_HI_b|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_led_hi_b(2));

-- Location: IOOBUF_X32_Y29_N2
\led_hi_b[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED_HI_b|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_led_hi_b(3));

-- Location: IOOBUF_X32_Y29_N9
\led_hi_b[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED_HI_b|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_led_hi_b(4));

-- Location: IOOBUF_X39_Y29_N16
\led_hi_b[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED_HI_b|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_led_hi_b(5));

-- Location: IOOBUF_X32_Y29_N23
\led_hi_b[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED_HI_b|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_led_hi_b(6));

-- Location: IOOBUF_X37_Y29_N2
\led_lo_b[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED_LO_b|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_led_lo_b(0));

-- Location: IOOBUF_X30_Y29_N23
\led_lo_b[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED_LO_b|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_led_lo_b(1));

-- Location: IOOBUF_X30_Y29_N16
\led_lo_b[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED_LO_b|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_led_lo_b(2));

-- Location: IOOBUF_X30_Y29_N2
\led_lo_b[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED_LO_b|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_led_lo_b(3));

-- Location: IOOBUF_X28_Y29_N2
\led_lo_b[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED_LO_b|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_led_lo_b(4));

-- Location: IOOBUF_X30_Y29_N30
\led_lo_b[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED_LO_b|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_led_lo_b(5));

-- Location: IOOBUF_X32_Y29_N30
\led_lo_b[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED_LO_b|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_led_lo_b(6));

-- Location: IOOBUF_X0_Y15_N15
\altera_reserved_tdo~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altera_internal_jtag~TDO\,
	devoe => ww_devoe,
	o => ww_altera_reserved_tdo);

-- Location: IOIBUF_X0_Y17_N1
\altera_reserved_tck~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_altera_reserved_tck,
	o => \altera_reserved_tck~input_o\);

-- Location: IOIBUF_X0_Y18_N1
\altera_reserved_tdi~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_altera_reserved_tdi,
	o => \altera_reserved_tdi~input_o\);

-- Location: LCCOMB_X17_Y18_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~1\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~1_combout\);

-- Location: FF_X17_Y18_N13
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(0));

-- Location: LCCOMB_X17_Y18_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~2\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~2_combout\);

-- Location: FF_X17_Y18_N3
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~2_combout\,
	sclr => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(1));

-- Location: LCCOMB_X17_Y18_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(1),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~0_combout\);

-- Location: FF_X17_Y18_N17
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~0_combout\,
	sclr => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(2));

-- Location: LCCOMB_X16_Y17_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(9),
	datab => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~0_combout\);

-- Location: FF_X16_Y17_N25
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0));

-- Location: LCCOMB_X14_Y17_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~1\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(2),
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~1_combout\);

-- Location: FF_X14_Y17_N19
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(9));

-- Location: LCCOMB_X17_Y17_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~8\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(9),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~8_combout\);

-- Location: FF_X17_Y17_N25
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(10));

-- Location: LCCOMB_X17_Y17_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~10\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	datab => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(10),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~10_combout\);

-- Location: FF_X17_Y17_N19
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(12));

-- Location: LCCOMB_X17_Y17_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~11\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(12),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(13),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~11_combout\);

-- Location: FF_X17_Y17_N29
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~11_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(13));

-- Location: LCCOMB_X17_Y17_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~12\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(13),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~12_combout\);

-- Location: FF_X17_Y17_N21
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(14));

-- Location: LCCOMB_X17_Y17_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_dr_scan_proc~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(12),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(14),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_dr_scan_proc~0_combout\);

-- Location: FF_X17_Y17_N23
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_dr_scan_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(15));

-- Location: LCCOMB_X14_Y17_N14
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~1\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(15),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~1_combout\);

-- Location: FF_X14_Y17_N15
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~1_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(1));

-- Location: LCCOMB_X14_Y17_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~2\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datab => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(15),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~2_combout\);

-- Location: FF_X14_Y17_N27
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(2));

-- Location: LCCOMB_X14_Y17_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~3\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(2),
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~3_combout\);

-- Location: FF_X14_Y17_N25
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3));

-- Location: LCCOMB_X14_Y18_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[8]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~4_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[8]~feeder_combout\);

-- Location: LCCOMB_X16_Y19_N24
\~GND\ : cycloneiii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X14_Y19_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~5\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datab => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~5_combout\);

-- Location: FF_X14_Y19_N11
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(5));

-- Location: LCCOMB_X17_Y17_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~6\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(6),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(5),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~6_combout\);

-- Location: FF_X17_Y17_N17
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~6_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(6));

-- Location: LCCOMB_X17_Y17_N30
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~7\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(6),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~7_combout\);

-- Location: FF_X17_Y17_N31
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(7));

-- Location: LCCOMB_X14_Y19_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg_proc~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datab => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(5),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(7),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg_proc~0_combout\);

-- Location: FF_X16_Y18_N3
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg_proc~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg~q\);

-- Location: LCCOMB_X16_Y18_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~3\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~2_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(8),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg~q\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~3_combout\);

-- Location: LCCOMB_X17_Y17_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~9\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(10),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(14),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~9_combout\);

-- Location: FF_X17_Y17_N27
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~9_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11));

-- Location: FF_X16_Y17_N11
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \altera_internal_jtag~TDIUTAP\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(9));

-- Location: LCCOMB_X16_Y17_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[8]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(9),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[8]~feeder_combout\);

-- Location: FF_X16_Y17_N29
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[8]~feeder_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(8));

-- Location: LCCOMB_X16_Y17_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[7]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(8),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[7]~feeder_combout\);

-- Location: FF_X16_Y17_N23
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[7]~feeder_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(7));

-- Location: FF_X16_Y17_N9
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(7),
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(6));

-- Location: LCCOMB_X16_Y17_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(7),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(8),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(6),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(9),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~0_combout\);

-- Location: FF_X16_Y17_N13
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(6),
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(5));

-- Location: LCCOMB_X16_Y17_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[4]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(5),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[4]~feeder_combout\);

-- Location: FF_X16_Y17_N7
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[4]~feeder_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(4));

-- Location: LCCOMB_X16_Y17_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[3]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[3]~feeder_combout\);

-- Location: FF_X16_Y17_N27
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[3]~feeder_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(3));

-- Location: LCCOMB_X16_Y17_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[2]~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[2]~0_combout\);

-- Location: FF_X16_Y17_N17
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[2]~0_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(2));

-- Location: LCCOMB_X16_Y17_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~1\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(3),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(2),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(5),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~1_combout\);

-- Location: LCCOMB_X16_Y17_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[1]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[1]~feeder_combout\);

-- Location: FF_X16_Y17_N19
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[1]~feeder_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(1));

-- Location: LCCOMB_X15_Y17_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal1~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(0),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~0_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~1_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal1~0_combout\);

-- Location: FF_X15_Y17_N3
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal1~0_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_dr_scan_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\);

-- Location: FF_X16_Y18_N17
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~3_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(2));

-- Location: LCCOMB_X14_Y17_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg_proc~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(2),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg_proc~0_combout\);

-- Location: FF_X14_Y17_N5
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~q\);

-- Location: FF_X14_Y18_N1
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[8]~feeder_combout\,
	asdata => \~GND~combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(8));

-- Location: LCCOMB_X14_Y18_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~8\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~7_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(8),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~8_combout\);

-- Location: LCCOMB_X14_Y18_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~9\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~6_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~8_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~9_combout\);

-- Location: FF_X15_Y18_N11
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~9_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(3));

-- Location: LCCOMB_X14_Y18_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~3\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(3),
	datad => \~GND~combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~3_combout\);

-- Location: LCCOMB_X15_Y18_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal3~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal3~0_combout\);

-- Location: LCCOMB_X15_Y18_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[0]~4\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(8),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg_proc~0_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal3~0_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[0]~4_combout\);

-- Location: FF_X15_Y18_N7
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[0]~4_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(0));

-- Location: LCCOMB_X15_Y18_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[2]~1\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(8),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[2]~1_combout\);

-- Location: LCCOMB_X14_Y18_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~2\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[2]~1_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~2_combout\);

-- Location: FF_X14_Y18_N5
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~3_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2));

-- Location: LCCOMB_X14_Y18_N30
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~5\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	datad => \~GND~combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~5_combout\);

-- Location: FF_X14_Y18_N31
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~5_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1));

-- Location: LCCOMB_X14_Y18_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	datad => \~GND~combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~0_combout\);

-- Location: FF_X14_Y18_N3
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~0_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0));

-- Location: LCCOMB_X14_Y17_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~4\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(7),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~4_combout\);

-- Location: FF_X14_Y17_N7
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~4_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4));

-- Location: LCCOMB_X14_Y19_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~q\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~0_combout\);

-- Location: FF_X14_Y19_N31
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~q\);

-- Location: LCCOMB_X20_Y24_N18
\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_1~0_combout\ = !\U_jtag_wrapper|U_DESIGN_TO_TDO|state.START~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.START~q\,
	combout => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_1~0_combout\);

-- Location: IOIBUF_X0_Y25_N1
\rst~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: FF_X20_Y24_N19
\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_1~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_1~q\);

-- Location: LCCOMB_X20_Y24_N12
\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_2~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_2~feeder_combout\ = \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_1~q\,
	combout => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_2~feeder_combout\);

-- Location: FF_X20_Y24_N13
\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_2~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_2~q\);

-- Location: LCCOMB_X20_Y24_N22
\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_3~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_3~feeder_combout\ = \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_2~q\,
	combout => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_3~feeder_combout\);

-- Location: FF_X20_Y24_N23
\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_3~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_3~q\);

-- Location: FF_X20_Y24_N9
\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_3~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_4~q\);

-- Location: FF_X20_Y24_N3
\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_4~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_5~q\);

-- Location: LCCOMB_X20_Y24_N28
\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_6~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_6~feeder_combout\ = \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_5~q\,
	combout => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_6~feeder_combout\);

-- Location: FF_X20_Y24_N29
\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_6~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_6~q\);

-- Location: LCCOMB_X20_Y24_N6
\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_7~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_7~feeder_combout\ = \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_6~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_6~q\,
	combout => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_7~feeder_combout\);

-- Location: FF_X20_Y24_N7
\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_7~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_7~q\);

-- Location: LCCOMB_X20_Y24_N24
\U_jtag_wrapper|U_DESIGN_TO_TDO|state.START~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|state.START~0_combout\ = !\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_7~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_7~q\,
	combout => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.START~0_combout\);

-- Location: FF_X20_Y24_N25
\U_jtag_wrapper|U_DESIGN_TO_TDO|state.START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.START~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.START~q\);

-- Location: LCCOMB_X26_Y28_N18
\U_jtag_wrapper|U_SR_V2|temp[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_SR_V2|temp[5]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|temp\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|temp\(6),
	combout => \U_jtag_wrapper|U_SR_V2|temp[5]~feeder_combout\);

-- Location: LCCOMB_X15_Y18_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~feeder_combout\);

-- Location: LCCOMB_X15_Y18_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(8),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg_proc~0_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0_combout\);

-- Location: FF_X15_Y18_N1
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~feeder_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~q\);

-- Location: LCCOMB_X15_Y18_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~0_combout\);

-- Location: LCCOMB_X15_Y18_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~1\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(8),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg_proc~0_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~0_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~1_combout\);

-- Location: FF_X15_Y18_N29
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~1_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(1));

-- Location: LCCOMB_X14_Y17_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~1\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~0_combout\,
	datab => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~1_combout\);

-- Location: LCCOMB_X14_Y17_N30
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~3\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~2_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~1_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~1_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~3_combout\);

-- Location: FF_X14_Y17_N31
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~3_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_q\);

-- Location: LCCOMB_X14_Y17_N10
\U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~combout\ = LCELL((\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4) & (\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_q\ & 
-- !\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	combout => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~combout\);

-- Location: LCCOMB_X19_Y24_N0
\U_jtag_wrapper|U_SR_V2|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_SR_V2|process_0~0_combout\ = (\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~q\ & \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~q\,
	datad => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~combout\,
	combout => \U_jtag_wrapper|U_SR_V2|process_0~0_combout\);

-- Location: FF_X26_Y28_N19
\U_jtag_wrapper|U_SR_V2|temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_SR_V2|temp[5]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_SR_V2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_SR_V2|temp\(5));

-- Location: LCCOMB_X26_Y28_N8
\U_jtag_wrapper|U_SR_V2|temp[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_SR_V2|temp[4]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|temp\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|temp\(5),
	combout => \U_jtag_wrapper|U_SR_V2|temp[4]~feeder_combout\);

-- Location: FF_X26_Y28_N9
\U_jtag_wrapper|U_SR_V2|temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_SR_V2|temp[4]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_SR_V2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_SR_V2|temp\(4));

-- Location: FF_X26_Y28_N31
\U_jtag_wrapper|U_SR_V2|temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_SR_V2|temp\(4),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_SR_V2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_SR_V2|temp\(3));

-- Location: FF_X26_Y28_N21
\U_jtag_wrapper|U_SR_V2|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_SR_V2|temp\(3),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_SR_V2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_SR_V2|temp\(2));

-- Location: LCCOMB_X26_Y28_N12
\U_jtag_wrapper|U_SR_V2|output[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_SR_V2|output[2]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|temp\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|temp\(2),
	combout => \U_jtag_wrapper|U_SR_V2|output[2]~feeder_combout\);

-- Location: LCCOMB_X14_Y19_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_proc~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(5),
	datab => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(7),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_proc~0_combout\);

-- Location: FF_X14_Y19_N29
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8));

-- Location: LCCOMB_X14_Y17_N16
\U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_udr~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_udr~0_combout\ = (\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_q\ & (\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8) & 
-- !\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_q\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	combout => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_udr~0_combout\);

-- Location: FF_X26_Y28_N13
\U_jtag_wrapper|U_SR_V2|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_SR_V2|output[2]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_udr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_SR_V2|output\(2));

-- Location: LCCOMB_X28_Y28_N14
\U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[2]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|output\(2),
	combout => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[2]~feeder_combout\);

-- Location: LCCOMB_X20_Y24_N16
\U_jtag_wrapper|U_ADDR_TOP|U_addrcount|count[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_ADDR_TOP|U_addrcount|count[0]~1_combout\ = !\U_jtag_wrapper|U_ADDR_TOP|U_addrcount|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_jtag_wrapper|U_ADDR_TOP|U_addrcount|count\(0),
	combout => \U_jtag_wrapper|U_ADDR_TOP|U_addrcount|count[0]~1_combout\);

-- Location: FF_X20_Y24_N17
\U_jtag_wrapper|U_ADDR_TOP|U_addrcount|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~clkctrl_outclk\,
	d => \U_jtag_wrapper|U_ADDR_TOP|U_addrcount|count[0]~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_addrcount|count\(0));

-- Location: LCCOMB_X20_Y24_N4
\U_jtag_wrapper|U_ADDR_TOP|U_logic|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_ADDR_TOP|U_logic|Equal0~0_combout\ = (!\U_jtag_wrapper|U_ADDR_TOP|U_addrcount|count\(1) & !\U_jtag_wrapper|U_ADDR_TOP|U_addrcount|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_ADDR_TOP|U_addrcount|count\(1),
	datad => \U_jtag_wrapper|U_ADDR_TOP|U_addrcount|count\(0),
	combout => \U_jtag_wrapper|U_ADDR_TOP|U_logic|Equal0~0_combout\);

-- Location: FF_X20_Y24_N5
\U_jtag_wrapper|U_ADDR_TOP|U_addrcount|output\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~clkctrl_outclk\,
	d => \U_jtag_wrapper|U_ADDR_TOP|U_logic|Equal0~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_addrcount|output~q\);

-- Location: FF_X28_Y28_N15
\U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[2]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_addrcount|output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(2));

-- Location: LCCOMB_X26_Y28_N10
\U_jtag_wrapper|U_SR_V2|temp[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_SR_V2|temp[1]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|temp\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|temp\(2),
	combout => \U_jtag_wrapper|U_SR_V2|temp[1]~feeder_combout\);

-- Location: FF_X26_Y28_N11
\U_jtag_wrapper|U_SR_V2|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_SR_V2|temp[1]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_SR_V2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_SR_V2|temp\(1));

-- Location: LCCOMB_X26_Y28_N2
\U_jtag_wrapper|U_SR_V2|output[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_SR_V2|output[1]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|temp\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|temp\(1),
	combout => \U_jtag_wrapper|U_SR_V2|output[1]~feeder_combout\);

-- Location: FF_X26_Y28_N3
\U_jtag_wrapper|U_SR_V2|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_SR_V2|output[1]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_udr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_SR_V2|output\(1));

-- Location: FF_X28_Y28_N17
\U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_SR_V2|output\(1),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_addrcount|output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(1));

-- Location: FF_X26_Y28_N23
\U_jtag_wrapper|U_SR_V2|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_SR_V2|temp\(3),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_udr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_SR_V2|output\(3));

-- Location: FF_X28_Y28_N21
\U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_SR_V2|output\(3),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_addrcount|output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(3));

-- Location: LCCOMB_X28_Y28_N16
\U_jtag_wrapper|U_ADDR_TOP|U_logic|out_data_rdy~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_ADDR_TOP|U_logic|out_data_rdy~1_combout\ = (\U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(0) & (\U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(2) & (\U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(1) & 
-- \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(0),
	datab => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(2),
	datac => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(1),
	datad => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(3),
	combout => \U_jtag_wrapper|U_ADDR_TOP|U_logic|out_data_rdy~1_combout\);

-- Location: LCCOMB_X26_Y28_N26
\U_jtag_wrapper|U_SR_V2|output[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_SR_V2|output[5]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|temp\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|temp\(5),
	combout => \U_jtag_wrapper|U_SR_V2|output[5]~feeder_combout\);

-- Location: FF_X26_Y28_N27
\U_jtag_wrapper|U_SR_V2|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_SR_V2|output[5]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_udr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_SR_V2|output\(5));

-- Location: LCCOMB_X28_Y28_N2
\U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[5]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|output\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|output\(5),
	combout => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[5]~feeder_combout\);

-- Location: FF_X28_Y28_N3
\U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[5]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_addrcount|output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(5));

-- Location: FF_X28_Y28_N25
\U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_SR_V2|output\(6),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_addrcount|output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(6));

-- Location: FF_X26_Y28_N17
\U_jtag_wrapper|U_SR_V2|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_SR_V2|temp\(4),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_udr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_SR_V2|output\(4));

-- Location: LCCOMB_X28_Y28_N28
\U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[4]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|output\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|output\(4),
	combout => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[4]~feeder_combout\);

-- Location: FF_X28_Y28_N29
\U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[4]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_addrcount|output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(4));

-- Location: LCCOMB_X28_Y28_N24
\U_jtag_wrapper|U_ADDR_TOP|U_logic|out_data_rdy~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_ADDR_TOP|U_logic|out_data_rdy~0_combout\ = (\U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(7) & (\U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(5) & (\U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(6) & 
-- \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(7),
	datab => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(5),
	datac => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(6),
	datad => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(4),
	combout => \U_jtag_wrapper|U_ADDR_TOP|U_logic|out_data_rdy~0_combout\);

-- Location: LCCOMB_X28_Y28_N6
\U_jtag_wrapper|U_ADDR_TOP|U_logic|out_data_rdy~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_ADDR_TOP|U_logic|out_data_rdy~2_combout\ = (!\U_jtag_wrapper|U_ADDR_TOP|U_logic|sel_out_reg~q\ & (\U_jtag_wrapper|U_ADDR_TOP|U_logic|out_data_rdy~1_combout\ & \U_jtag_wrapper|U_ADDR_TOP|U_logic|out_data_rdy~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_ADDR_TOP|U_logic|sel_out_reg~q\,
	datab => \U_jtag_wrapper|U_ADDR_TOP|U_logic|out_data_rdy~1_combout\,
	datad => \U_jtag_wrapper|U_ADDR_TOP|U_logic|out_data_rdy~0_combout\,
	combout => \U_jtag_wrapper|U_ADDR_TOP|U_logic|out_data_rdy~2_combout\);

-- Location: LCCOMB_X19_Y24_N16
\U_jtag_wrapper|U_DESIGN_TO_TDO|valid_reg~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|valid_reg~0_combout\ = (\U_jtag_wrapper|U_DESIGN_TO_TDO|state.START~q\ & (\U_jtag_wrapper|U_DESIGN_TO_TDO|valid_reg~q\)) # (!\U_jtag_wrapper|U_DESIGN_TO_TDO|state.START~q\ & 
-- ((\U_jtag_wrapper|U_ADDR_TOP|U_logic|out_data_rdy~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.START~q\,
	datac => \U_jtag_wrapper|U_DESIGN_TO_TDO|valid_reg~q\,
	datad => \U_jtag_wrapper|U_ADDR_TOP|U_logic|out_data_rdy~2_combout\,
	combout => \U_jtag_wrapper|U_DESIGN_TO_TDO|valid_reg~0_combout\);

-- Location: FF_X19_Y24_N17
\U_jtag_wrapper|U_DESIGN_TO_TDO|valid_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_DESIGN_TO_TDO|valid_reg~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|valid_reg~q\);

-- Location: LCCOMB_X19_Y24_N26
\U_jtag_wrapper|U_DESIGN_TO_TDO|next_temp~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|next_temp~0_combout\ = (\U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~combout\ & (!\U_jtag_wrapper|U_DESIGN_TO_TDO|valid_reg~q\ & (\altera_internal_jtag~TDIUTAP\))) # 
-- (!\U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~combout\ & (((\U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~combout\,
	datab => \U_jtag_wrapper|U_DESIGN_TO_TDO|valid_reg~q\,
	datac => \altera_internal_jtag~TDIUTAP\,
	datad => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(7),
	combout => \U_jtag_wrapper|U_DESIGN_TO_TDO|next_temp~0_combout\);

-- Location: LCCOMB_X19_Y24_N6
\U_jtag_wrapper|U_DESIGN_TO_TDO|Selector8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector8~1_combout\ = (\U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~combout\ & (!\U_jtag_wrapper|U_DESIGN_TO_TDO|state.START~q\ & (\altera_internal_jtag~TDIUTAP\ & 
-- !\U_jtag_wrapper|U_ADDR_TOP|U_logic|out_data_rdy~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~combout\,
	datab => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.START~q\,
	datac => \altera_internal_jtag~TDIUTAP\,
	datad => \U_jtag_wrapper|U_ADDR_TOP|U_logic|out_data_rdy~2_combout\,
	combout => \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector8~1_combout\);

-- Location: LCCOMB_X19_Y24_N28
\U_jtag_wrapper|U_DESIGN_TO_TDO|Selector8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector8~0_combout\ = (\U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(7) & ((\U_jtag_wrapper|U_DESIGN_TO_TDO|state.START~q\ & (\U_jtag_wrapper|U_DESIGN_TO_TDO|WideNor0~1_combout\)) # 
-- (!\U_jtag_wrapper|U_DESIGN_TO_TDO|state.START~q\ & ((!\U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_DESIGN_TO_TDO|WideNor0~1_combout\,
	datab => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.START~q\,
	datac => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(7),
	datad => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~combout\,
	combout => \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector8~0_combout\);

-- Location: LCCOMB_X19_Y24_N2
\U_jtag_wrapper|U_DESIGN_TO_TDO|Selector8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector8~2_combout\ = (\U_jtag_wrapper|U_DESIGN_TO_TDO|Selector8~1_combout\) # ((\U_jtag_wrapper|U_DESIGN_TO_TDO|Selector8~0_combout\) # ((!\U_jtag_wrapper|U_DESIGN_TO_TDO|WideNor0~1_combout\ & 
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|next_temp~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_DESIGN_TO_TDO|WideNor0~1_combout\,
	datab => \U_jtag_wrapper|U_DESIGN_TO_TDO|next_temp~0_combout\,
	datac => \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector8~1_combout\,
	datad => \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector8~0_combout\,
	combout => \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector8~2_combout\);

-- Location: FF_X19_Y24_N3
\U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector8~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(7));

-- Location: LCCOMB_X19_Y24_N8
\U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[6]~feeder_combout\ = \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(7),
	combout => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[6]~feeder_combout\);

-- Location: LCCOMB_X20_Y24_N8
\U_jtag_wrapper|U_DESIGN_TO_TDO|WideNor0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|WideNor0~0_combout\ = (!\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_3~q\ & (!\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_1~q\ & (!\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_4~q\ & 
-- !\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_3~q\,
	datab => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_1~q\,
	datac => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_4~q\,
	datad => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_2~q\,
	combout => \U_jtag_wrapper|U_DESIGN_TO_TDO|WideNor0~0_combout\);

-- Location: LCCOMB_X20_Y24_N2
\U_jtag_wrapper|U_DESIGN_TO_TDO|WideNor0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|WideNor0~1_combout\ = (!\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_7~q\ & (\U_jtag_wrapper|U_DESIGN_TO_TDO|WideNor0~0_combout\ & (!\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_5~q\ & 
-- !\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_7~q\,
	datab => \U_jtag_wrapper|U_DESIGN_TO_TDO|WideNor0~0_combout\,
	datac => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_5~q\,
	datad => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_6~q\,
	combout => \U_jtag_wrapper|U_DESIGN_TO_TDO|WideNor0~1_combout\);

-- Location: LCCOMB_X19_Y24_N4
\U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[0]~0_combout\ = (\U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~combout\ & ((!\U_jtag_wrapper|U_DESIGN_TO_TDO|WideNor0~1_combout\) # 
-- (!\U_jtag_wrapper|U_DESIGN_TO_TDO|state.START~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~combout\,
	datab => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.START~q\,
	datad => \U_jtag_wrapper|U_DESIGN_TO_TDO|WideNor0~1_combout\,
	combout => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[0]~0_combout\);

-- Location: FF_X19_Y24_N9
\U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[6]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(6));

-- Location: FF_X19_Y24_N31
\U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(6),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(5));

-- Location: FF_X19_Y24_N21
\U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(5),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(4));

-- Location: LCCOMB_X19_Y24_N18
\U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[3]~feeder_combout\ = \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(4),
	combout => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[3]~feeder_combout\);

-- Location: FF_X19_Y24_N19
\U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[3]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(3));

-- Location: LCCOMB_X19_Y24_N22
\U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[2]~feeder_combout\ = \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(3),
	combout => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[2]~feeder_combout\);

-- Location: FF_X19_Y24_N23
\U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[2]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(2));

-- Location: FF_X19_Y24_N11
\U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(2),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(1));

-- Location: LCCOMB_X19_Y24_N24
\U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[0]~feeder_combout\ = \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(1),
	combout => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[0]~feeder_combout\);

-- Location: FF_X19_Y24_N25
\U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[0]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(0));

-- Location: LCCOMB_X14_Y19_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~1\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(8),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	datad => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~1_combout\);

-- Location: LCCOMB_X14_Y19_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~2\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~0_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(8),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~1_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~2_combout\);

-- Location: LCCOMB_X17_Y19_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]~7\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	datad => VCC,
	cin => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]~6\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]~7_combout\,
	cout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]~8\);

-- Location: LCCOMB_X17_Y19_N14
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]~10\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datad => VCC,
	cin => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]~8\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]~10_combout\,
	cout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]~11\);

-- Location: LCCOMB_X17_Y19_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]~12\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datad => VCC,
	cin => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]~11\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]~12_combout\,
	cout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]~13\);

-- Location: LCCOMB_X17_Y19_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~14\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	cin => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]~13\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~14_combout\);

-- Location: LCCOMB_X15_Y17_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~2\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(0),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~0_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~1_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~2_combout\);

-- Location: FF_X15_Y17_N5
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~2_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_dr_scan_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~q\);

-- Location: LCCOMB_X15_Y20_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~9\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~q\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~9_combout\);

-- Location: FF_X17_Y19_N19
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~14_combout\,
	asdata => VCC,
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~17_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4));

-- Location: LCCOMB_X17_Y19_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~16\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~16_combout\);

-- Location: LCCOMB_X15_Y20_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\);

-- Location: LCCOMB_X17_Y19_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~17\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~16_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~17_combout\);

-- Location: FF_X17_Y19_N15
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]~10_combout\,
	asdata => VCC,
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~17_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2));

-- Location: FF_X17_Y19_N17
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]~12_combout\,
	asdata => VCC,
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~17_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3));

-- Location: FF_X17_Y19_N13
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]~7_combout\,
	asdata => VCC,
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~17_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1));

-- Location: LCCOMB_X17_Y19_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~20\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~20_combout\);

-- Location: LCCOMB_X16_Y19_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~21\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~20_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~21_combout\);

-- Location: LCCOMB_X17_Y19_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~28\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~28_combout\);

-- Location: LCCOMB_X17_Y19_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~29\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~28_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~29_combout\);

-- Location: LCCOMB_X16_Y19_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[0]~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(0),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~21_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~29_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[0]~0_combout\);

-- Location: LCCOMB_X17_Y19_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~26\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~26_combout\);

-- Location: LCCOMB_X17_Y19_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~27\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~26_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~27_combout\);

-- Location: LCCOMB_X16_Y19_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[1]~1\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(1),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~21_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~27_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[1]~1_combout\);

-- Location: LCCOMB_X17_Y19_N30
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~24\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~24_combout\);

-- Location: LCCOMB_X17_Y19_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~25\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~24_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~25_combout\);

-- Location: LCCOMB_X16_Y19_N30
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[2]~2\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(2),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~21_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~25_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[2]~2_combout\);

-- Location: LCCOMB_X14_Y19_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~q\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~0_combout\);

-- Location: LCCOMB_X14_Y19_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~1\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(8),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~0_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~1_combout\);

-- Location: FF_X15_Y19_N15
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \altera_internal_jtag~TDIUTAP\,
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(3));

-- Location: LCCOMB_X14_Y19_N14
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~0_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(8),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~0_combout\);

-- Location: FF_X15_Y19_N21
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(3),
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(3));

-- Location: LCCOMB_X16_Y19_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~3\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~23_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~21_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~3_combout\);

-- Location: LCCOMB_X16_Y19_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_proc~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~q\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_proc~0_combout\);

-- Location: LCCOMB_X15_Y20_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~q\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~combout\);

-- Location: FF_X16_Y19_N9
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~3_combout\,
	asdata => \altera_internal_jtag~TDIUTAP\,
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_proc~0_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\(3));

-- Location: FF_X16_Y19_N31
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[2]~2_combout\,
	asdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\(3),
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_proc~0_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\(2));

-- Location: FF_X16_Y19_N13
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[1]~1_combout\,
	asdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\(2),
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_proc~0_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\(1));

-- Location: FF_X16_Y19_N27
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[0]~0_combout\,
	asdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\(1),
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_proc~0_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\(0));

-- Location: LCCOMB_X14_Y19_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~5\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011101100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~4_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~2_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~5_combout\);

-- Location: LCCOMB_X14_Y19_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~0_combout\);

-- Location: FF_X14_Y19_N25
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~5_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|ALT_INV_state\(8),
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~q\);

-- Location: LCCOMB_X14_Y19_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~_wirecell\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~q\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~_wirecell_combout\);

-- Location: LCCOMB_X26_Y28_N14
\U_jtag_wrapper|U_SR_V2|temp[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_SR_V2|temp[7]~feeder_combout\ = \altera_internal_jtag~TDIUTAP\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \altera_internal_jtag~TDIUTAP\,
	combout => \U_jtag_wrapper|U_SR_V2|temp[7]~feeder_combout\);

-- Location: FF_X26_Y28_N15
\U_jtag_wrapper|U_SR_V2|temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_SR_V2|temp[7]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_SR_V2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_SR_V2|temp\(7));

-- Location: FF_X26_Y28_N29
\U_jtag_wrapper|U_SR_V2|temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_SR_V2|temp\(7),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_SR_V2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_SR_V2|temp\(6));

-- Location: LCCOMB_X26_Y28_N4
\U_jtag_wrapper|U_SR_V2|output[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_SR_V2|output[6]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|temp\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|temp\(6),
	combout => \U_jtag_wrapper|U_SR_V2|output[6]~feeder_combout\);

-- Location: FF_X26_Y28_N5
\U_jtag_wrapper|U_SR_V2|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_SR_V2|output[6]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_udr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_SR_V2|output\(6));

-- Location: LCCOMB_X32_Y28_N14
\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[4]~feeder_combout\ = \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(4),
	combout => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[4]~feeder_combout\);

-- Location: FF_X32_Y28_N15
\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[4]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(4));

-- Location: FF_X32_Y28_N13
\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(5),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(5));

-- Location: FF_X26_Y28_N7
\U_jtag_wrapper|U_SR_V2|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_SR_V2|temp\(7),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_udr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_SR_V2|output\(7));

-- Location: LCCOMB_X28_Y28_N30
\U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[7]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|output\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|output\(7),
	combout => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[7]~feeder_combout\);

-- Location: FF_X28_Y28_N31
\U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[7]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_addrcount|output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(7));

-- Location: LCCOMB_X32_Y28_N8
\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[7]~feeder_combout\ = \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(7),
	combout => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[7]~feeder_combout\);

-- Location: FF_X32_Y28_N9
\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[7]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(7));

-- Location: LCCOMB_X32_Y28_N12
\U_jtag_wrapper|U_ADDR_TOP|U_logic|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_ADDR_TOP|U_logic|Equal1~0_combout\ = (!\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(6) & (!\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(4) & (!\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(5) & 
-- !\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(6),
	datab => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(4),
	datac => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(5),
	datad => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(7),
	combout => \U_jtag_wrapper|U_ADDR_TOP|U_logic|Equal1~0_combout\);

-- Location: LCCOMB_X29_Y28_N8
\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[3]~feeder_combout\ = \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(3),
	combout => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[3]~feeder_combout\);

-- Location: FF_X29_Y28_N9
\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[3]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(3));

-- Location: LCCOMB_X26_Y28_N24
\U_jtag_wrapper|U_SR_V2|temp[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_SR_V2|temp[0]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|temp\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|temp\(1),
	combout => \U_jtag_wrapper|U_SR_V2|temp[0]~feeder_combout\);

-- Location: FF_X26_Y28_N25
\U_jtag_wrapper|U_SR_V2|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_SR_V2|temp[0]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_SR_V2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_SR_V2|temp\(0));

-- Location: LCCOMB_X26_Y28_N0
\U_jtag_wrapper|U_SR_V2|output[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_SR_V2|output[0]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|temp\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|temp\(0),
	combout => \U_jtag_wrapper|U_SR_V2|output[0]~feeder_combout\);

-- Location: FF_X26_Y28_N1
\U_jtag_wrapper|U_SR_V2|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_SR_V2|output[0]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_udr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_SR_V2|output\(0));

-- Location: LCCOMB_X28_Y28_N26
\U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[0]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|output\(0),
	combout => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[0]~feeder_combout\);

-- Location: FF_X28_Y28_N27
\U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[0]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_addrcount|output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(0));

-- Location: FF_X29_Y28_N15
\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(0),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(0));

-- Location: FF_X29_Y28_N5
\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(1),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(1));

-- Location: LCCOMB_X29_Y28_N14
\U_jtag_wrapper|U_ADDR_TOP|U_logic|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_ADDR_TOP|U_logic|Equal1~1_combout\ = (!\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(2) & (!\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(3) & (!\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(0) & 
-- !\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(2),
	datab => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(3),
	datac => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(0),
	datad => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(1),
	combout => \U_jtag_wrapper|U_ADDR_TOP|U_logic|Equal1~1_combout\);

-- Location: FF_X32_Y28_N27
\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(6),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(6));

-- Location: LCCOMB_X32_Y28_N26
\U_jtag_wrapper|U_ADDR_TOP|U_logic|Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_ADDR_TOP|U_logic|Equal2~0_combout\ = (\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(7) & (\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(4) & (\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(6) & 
-- \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(7),
	datab => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(4),
	datac => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(6),
	datad => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(5),
	combout => \U_jtag_wrapper|U_ADDR_TOP|U_logic|Equal2~0_combout\);

-- Location: LCCOMB_X28_Y28_N18
\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap[7]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap[7]~0_combout\ = (\U_jtag_wrapper|U_ADDR_TOP|U_logic|Equal2~1_combout\ & (!\U_jtag_wrapper|U_ADDR_TOP|U_logic|Equal2~0_combout\ & ((!\U_jtag_wrapper|U_ADDR_TOP|U_logic|Equal1~1_combout\) # 
-- (!\U_jtag_wrapper|U_ADDR_TOP|U_logic|Equal1~0_combout\)))) # (!\U_jtag_wrapper|U_ADDR_TOP|U_logic|Equal2~1_combout\ & (((!\U_jtag_wrapper|U_ADDR_TOP|U_logic|Equal1~1_combout\)) # (!\U_jtag_wrapper|U_ADDR_TOP|U_logic|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_ADDR_TOP|U_logic|Equal2~1_combout\,
	datab => \U_jtag_wrapper|U_ADDR_TOP|U_logic|Equal1~0_combout\,
	datac => \U_jtag_wrapper|U_ADDR_TOP|U_logic|Equal1~1_combout\,
	datad => \U_jtag_wrapper|U_ADDR_TOP|U_logic|Equal2~0_combout\,
	combout => \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap[7]~0_combout\);

-- Location: LCCOMB_X29_Y28_N30
\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_or_data~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_or_data~0_combout\ = !\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_or_data~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_or_data~q\,
	combout => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_or_data~0_combout\);

-- Location: FF_X29_Y28_N31
\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_or_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_or_data~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_or_data~q\);

-- Location: LCCOMB_X28_Y28_N8
\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap[7]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap[7]~1_combout\ = (\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap[7]~0_combout\ & \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_or_data~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap[7]~0_combout\,
	datac => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_or_data~q\,
	combout => \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap[7]~1_combout\);

-- Location: FF_X28_Y28_N9
\U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap[7]~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp~q\);

-- Location: FF_X27_Y28_N13
\U_jtag_wrapper|REG_I|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_SR_V2|output\(6),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_I|output\(6));

-- Location: FF_X27_Y28_N3
\U_jtag_wrapper|REG_I|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_SR_V2|output\(5),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_I|output\(5));

-- Location: FF_X27_Y28_N9
\U_jtag_wrapper|REG_I|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_SR_V2|output\(4),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_I|output\(4));

-- Location: FF_X27_Y28_N23
\U_jtag_wrapper|REG_I|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_SR_V2|output\(7),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_I|output\(7));

-- Location: LCCOMB_X27_Y28_N8
\U_LED_HI_a|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_HI_a|Mux6~0_combout\ = (\U_jtag_wrapper|REG_I|output\(4) & ((\U_jtag_wrapper|REG_I|output\(7)) # (\U_jtag_wrapper|REG_I|output\(6) $ (\U_jtag_wrapper|REG_I|output\(5))))) # (!\U_jtag_wrapper|REG_I|output\(4) & ((\U_jtag_wrapper|REG_I|output\(5)) # 
-- (\U_jtag_wrapper|REG_I|output\(6) $ (\U_jtag_wrapper|REG_I|output\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|REG_I|output\(6),
	datab => \U_jtag_wrapper|REG_I|output\(5),
	datac => \U_jtag_wrapper|REG_I|output\(4),
	datad => \U_jtag_wrapper|REG_I|output\(7),
	combout => \U_LED_HI_a|Mux6~0_combout\);

-- Location: LCCOMB_X27_Y28_N12
\U_LED_HI_a|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_HI_a|Mux5~0_combout\ = (\U_jtag_wrapper|REG_I|output\(4) & (\U_jtag_wrapper|REG_I|output\(7) $ (((\U_jtag_wrapper|REG_I|output\(5)) # (!\U_jtag_wrapper|REG_I|output\(6)))))) # (!\U_jtag_wrapper|REG_I|output\(4) & (!\U_jtag_wrapper|REG_I|output\(7) 
-- & (!\U_jtag_wrapper|REG_I|output\(6) & \U_jtag_wrapper|REG_I|output\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|REG_I|output\(7),
	datab => \U_jtag_wrapper|REG_I|output\(4),
	datac => \U_jtag_wrapper|REG_I|output\(6),
	datad => \U_jtag_wrapper|REG_I|output\(5),
	combout => \U_LED_HI_a|Mux5~0_combout\);

-- Location: LCCOMB_X27_Y28_N16
\U_LED_HI_a|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_HI_a|Mux4~0_combout\ = (\U_jtag_wrapper|REG_I|output\(5) & (((\U_jtag_wrapper|REG_I|output\(4) & !\U_jtag_wrapper|REG_I|output\(7))))) # (!\U_jtag_wrapper|REG_I|output\(5) & ((\U_jtag_wrapper|REG_I|output\(6) & 
-- ((!\U_jtag_wrapper|REG_I|output\(7)))) # (!\U_jtag_wrapper|REG_I|output\(6) & (\U_jtag_wrapper|REG_I|output\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|REG_I|output\(6),
	datab => \U_jtag_wrapper|REG_I|output\(4),
	datac => \U_jtag_wrapper|REG_I|output\(7),
	datad => \U_jtag_wrapper|REG_I|output\(5),
	combout => \U_LED_HI_a|Mux4~0_combout\);

-- Location: LCCOMB_X27_Y28_N26
\U_LED_HI_a|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_HI_a|Mux3~0_combout\ = (\U_jtag_wrapper|REG_I|output\(4) & (\U_jtag_wrapper|REG_I|output\(6) $ (((!\U_jtag_wrapper|REG_I|output\(5)))))) # (!\U_jtag_wrapper|REG_I|output\(4) & ((\U_jtag_wrapper|REG_I|output\(6) & (!\U_jtag_wrapper|REG_I|output\(7) 
-- & !\U_jtag_wrapper|REG_I|output\(5))) # (!\U_jtag_wrapper|REG_I|output\(6) & (\U_jtag_wrapper|REG_I|output\(7) & \U_jtag_wrapper|REG_I|output\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|REG_I|output\(6),
	datab => \U_jtag_wrapper|REG_I|output\(4),
	datac => \U_jtag_wrapper|REG_I|output\(7),
	datad => \U_jtag_wrapper|REG_I|output\(5),
	combout => \U_LED_HI_a|Mux3~0_combout\);

-- Location: LCCOMB_X27_Y28_N28
\U_LED_HI_a|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_HI_a|Mux2~0_combout\ = (\U_jtag_wrapper|REG_I|output\(6) & (\U_jtag_wrapper|REG_I|output\(7) & ((\U_jtag_wrapper|REG_I|output\(5)) # (!\U_jtag_wrapper|REG_I|output\(4))))) # (!\U_jtag_wrapper|REG_I|output\(6) & (!\U_jtag_wrapper|REG_I|output\(4) & 
-- (!\U_jtag_wrapper|REG_I|output\(7) & \U_jtag_wrapper|REG_I|output\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|REG_I|output\(6),
	datab => \U_jtag_wrapper|REG_I|output\(4),
	datac => \U_jtag_wrapper|REG_I|output\(7),
	datad => \U_jtag_wrapper|REG_I|output\(5),
	combout => \U_LED_HI_a|Mux2~0_combout\);

-- Location: LCCOMB_X27_Y28_N22
\U_LED_HI_a|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_HI_a|Mux1~0_combout\ = (\U_jtag_wrapper|REG_I|output\(7) & ((\U_jtag_wrapper|REG_I|output\(4) & ((\U_jtag_wrapper|REG_I|output\(5)))) # (!\U_jtag_wrapper|REG_I|output\(4) & (\U_jtag_wrapper|REG_I|output\(6))))) # (!\U_jtag_wrapper|REG_I|output\(7) 
-- & (\U_jtag_wrapper|REG_I|output\(6) & (\U_jtag_wrapper|REG_I|output\(4) $ (\U_jtag_wrapper|REG_I|output\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|REG_I|output\(6),
	datab => \U_jtag_wrapper|REG_I|output\(4),
	datac => \U_jtag_wrapper|REG_I|output\(7),
	datad => \U_jtag_wrapper|REG_I|output\(5),
	combout => \U_LED_HI_a|Mux1~0_combout\);

-- Location: LCCOMB_X27_Y28_N2
\U_LED_HI_a|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_HI_a|Mux0~0_combout\ = (\U_jtag_wrapper|REG_I|output\(7) & (\U_jtag_wrapper|REG_I|output\(4) & (\U_jtag_wrapper|REG_I|output\(5) $ (\U_jtag_wrapper|REG_I|output\(6))))) # (!\U_jtag_wrapper|REG_I|output\(7) & (!\U_jtag_wrapper|REG_I|output\(5) & 
-- (\U_jtag_wrapper|REG_I|output\(4) $ (\U_jtag_wrapper|REG_I|output\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|REG_I|output\(7),
	datab => \U_jtag_wrapper|REG_I|output\(4),
	datac => \U_jtag_wrapper|REG_I|output\(5),
	datad => \U_jtag_wrapper|REG_I|output\(6),
	combout => \U_LED_HI_a|Mux0~0_combout\);

-- Location: FF_X27_Y28_N31
\U_jtag_wrapper|REG_I|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_SR_V2|output\(0),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_I|output\(0));

-- Location: FF_X27_Y28_N19
\U_jtag_wrapper|REG_I|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_SR_V2|output\(2),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_I|output\(2));

-- Location: FF_X27_Y28_N21
\U_jtag_wrapper|REG_I|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_SR_V2|output\(3),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_I|output\(3));

-- Location: FF_X27_Y28_N25
\U_jtag_wrapper|REG_I|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_SR_V2|output\(1),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_I|output\(1));

-- Location: LCCOMB_X27_Y28_N20
\U_LED_LO_a|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_LO_a|Mux6~0_combout\ = (\U_jtag_wrapper|REG_I|output\(0) & ((\U_jtag_wrapper|REG_I|output\(3)) # (\U_jtag_wrapper|REG_I|output\(2) $ (\U_jtag_wrapper|REG_I|output\(1))))) # (!\U_jtag_wrapper|REG_I|output\(0) & ((\U_jtag_wrapper|REG_I|output\(1)) # 
-- (\U_jtag_wrapper|REG_I|output\(2) $ (\U_jtag_wrapper|REG_I|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|REG_I|output\(0),
	datab => \U_jtag_wrapper|REG_I|output\(2),
	datac => \U_jtag_wrapper|REG_I|output\(3),
	datad => \U_jtag_wrapper|REG_I|output\(1),
	combout => \U_LED_LO_a|Mux6~0_combout\);

-- Location: LCCOMB_X27_Y28_N14
\U_LED_LO_a|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_LO_a|Mux5~0_combout\ = (\U_jtag_wrapper|REG_I|output\(2) & (\U_jtag_wrapper|REG_I|output\(0) & (\U_jtag_wrapper|REG_I|output\(3) $ (\U_jtag_wrapper|REG_I|output\(1))))) # (!\U_jtag_wrapper|REG_I|output\(2) & (!\U_jtag_wrapper|REG_I|output\(3) & 
-- ((\U_jtag_wrapper|REG_I|output\(0)) # (\U_jtag_wrapper|REG_I|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|REG_I|output\(3),
	datab => \U_jtag_wrapper|REG_I|output\(2),
	datac => \U_jtag_wrapper|REG_I|output\(0),
	datad => \U_jtag_wrapper|REG_I|output\(1),
	combout => \U_LED_LO_a|Mux5~0_combout\);

-- Location: LCCOMB_X27_Y28_N0
\U_LED_LO_a|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_LO_a|Mux4~0_combout\ = (\U_jtag_wrapper|REG_I|output\(1) & (!\U_jtag_wrapper|REG_I|output\(3) & ((\U_jtag_wrapper|REG_I|output\(0))))) # (!\U_jtag_wrapper|REG_I|output\(1) & ((\U_jtag_wrapper|REG_I|output\(2) & (!\U_jtag_wrapper|REG_I|output\(3))) 
-- # (!\U_jtag_wrapper|REG_I|output\(2) & ((\U_jtag_wrapper|REG_I|output\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|REG_I|output\(3),
	datab => \U_jtag_wrapper|REG_I|output\(2),
	datac => \U_jtag_wrapper|REG_I|output\(0),
	datad => \U_jtag_wrapper|REG_I|output\(1),
	combout => \U_LED_LO_a|Mux4~0_combout\);

-- Location: LCCOMB_X27_Y28_N10
\U_LED_LO_a|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_LO_a|Mux3~0_combout\ = (\U_jtag_wrapper|REG_I|output\(0) & ((\U_jtag_wrapper|REG_I|output\(2) $ (!\U_jtag_wrapper|REG_I|output\(1))))) # (!\U_jtag_wrapper|REG_I|output\(0) & ((\U_jtag_wrapper|REG_I|output\(3) & (!\U_jtag_wrapper|REG_I|output\(2) & 
-- \U_jtag_wrapper|REG_I|output\(1))) # (!\U_jtag_wrapper|REG_I|output\(3) & (\U_jtag_wrapper|REG_I|output\(2) & !\U_jtag_wrapper|REG_I|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|REG_I|output\(3),
	datab => \U_jtag_wrapper|REG_I|output\(2),
	datac => \U_jtag_wrapper|REG_I|output\(0),
	datad => \U_jtag_wrapper|REG_I|output\(1),
	combout => \U_LED_LO_a|Mux3~0_combout\);

-- Location: LCCOMB_X27_Y28_N30
\U_LED_LO_a|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_LO_a|Mux2~0_combout\ = (\U_jtag_wrapper|REG_I|output\(3) & (\U_jtag_wrapper|REG_I|output\(2) & ((\U_jtag_wrapper|REG_I|output\(1)) # (!\U_jtag_wrapper|REG_I|output\(0))))) # (!\U_jtag_wrapper|REG_I|output\(3) & (!\U_jtag_wrapper|REG_I|output\(2) & 
-- (!\U_jtag_wrapper|REG_I|output\(0) & \U_jtag_wrapper|REG_I|output\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|REG_I|output\(3),
	datab => \U_jtag_wrapper|REG_I|output\(2),
	datac => \U_jtag_wrapper|REG_I|output\(0),
	datad => \U_jtag_wrapper|REG_I|output\(1),
	combout => \U_LED_LO_a|Mux2~0_combout\);

-- Location: LCCOMB_X27_Y28_N24
\U_LED_LO_a|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_LO_a|Mux1~0_combout\ = (\U_jtag_wrapper|REG_I|output\(3) & ((\U_jtag_wrapper|REG_I|output\(0) & (\U_jtag_wrapper|REG_I|output\(1))) # (!\U_jtag_wrapper|REG_I|output\(0) & ((\U_jtag_wrapper|REG_I|output\(2)))))) # (!\U_jtag_wrapper|REG_I|output\(3) 
-- & (\U_jtag_wrapper|REG_I|output\(2) & (\U_jtag_wrapper|REG_I|output\(0) $ (\U_jtag_wrapper|REG_I|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|REG_I|output\(0),
	datab => \U_jtag_wrapper|REG_I|output\(3),
	datac => \U_jtag_wrapper|REG_I|output\(1),
	datad => \U_jtag_wrapper|REG_I|output\(2),
	combout => \U_LED_LO_a|Mux1~0_combout\);

-- Location: LCCOMB_X27_Y28_N18
\U_LED_LO_a|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_LO_a|Mux0~0_combout\ = (\U_jtag_wrapper|REG_I|output\(3) & (\U_jtag_wrapper|REG_I|output\(0) & (\U_jtag_wrapper|REG_I|output\(2) $ (\U_jtag_wrapper|REG_I|output\(1))))) # (!\U_jtag_wrapper|REG_I|output\(3) & (!\U_jtag_wrapper|REG_I|output\(1) & 
-- (\U_jtag_wrapper|REG_I|output\(0) $ (\U_jtag_wrapper|REG_I|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|REG_I|output\(0),
	datab => \U_jtag_wrapper|REG_I|output\(3),
	datac => \U_jtag_wrapper|REG_I|output\(2),
	datad => \U_jtag_wrapper|REG_I|output\(1),
	combout => \U_LED_LO_a|Mux0~0_combout\);

-- Location: FF_X32_Y28_N23
\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(7),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(7));

-- Location: FF_X32_Y28_N21
\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(6),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(6));

-- Location: FF_X32_Y28_N11
\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(5),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(5));

-- Location: FF_X32_Y28_N25
\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(4),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(4));

-- Location: LCCOMB_X32_Y28_N10
\U_LED_HI_b|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_HI_b|Mux6~0_combout\ = (\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(4) & ((\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(7)) # (\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(6) $ 
-- (\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(5))))) # (!\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(4) & ((\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(5)) # 
-- (\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(7) $ (\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(7),
	datab => \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(6),
	datac => \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(5),
	datad => \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(4),
	combout => \U_LED_HI_b|Mux6~0_combout\);

-- Location: LCCOMB_X32_Y28_N20
\U_LED_HI_b|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_HI_b|Mux5~0_combout\ = (\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(4) & (\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(7) $ (((\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(5)) # 
-- (!\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(6)))))) # (!\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(4) & (!\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(7) & 
-- (!\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(6) & \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(7),
	datab => \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(4),
	datac => \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(6),
	datad => \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(5),
	combout => \U_LED_HI_b|Mux5~0_combout\);

-- Location: LCCOMB_X32_Y28_N22
\U_LED_HI_b|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_HI_b|Mux4~0_combout\ = (\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(5) & (((!\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(7) & \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(4))))) # 
-- (!\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(5) & ((\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(6) & (!\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(7))) # 
-- (!\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(6) & ((\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(5),
	datab => \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(6),
	datac => \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(7),
	datad => \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(4),
	combout => \U_LED_HI_b|Mux4~0_combout\);

-- Location: LCCOMB_X32_Y28_N16
\U_LED_HI_b|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_HI_b|Mux3~0_combout\ = (\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(4) & (\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(5) $ ((!\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(6))))) # 
-- (!\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(4) & ((\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(5) & (!\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(6) & 
-- \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(7))) # (!\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(5) & (\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(6) & 
-- !\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(5),
	datab => \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(6),
	datac => \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(7),
	datad => \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(4),
	combout => \U_LED_HI_b|Mux3~0_combout\);

-- Location: LCCOMB_X32_Y28_N18
\U_LED_HI_b|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_HI_b|Mux2~0_combout\ = (\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(6) & (\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(7) & ((\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(5)) # 
-- (!\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(4))))) # (!\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(6) & (\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(5) & 
-- (!\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(7) & !\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(5),
	datab => \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(6),
	datac => \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(7),
	datad => \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(4),
	combout => \U_LED_HI_b|Mux2~0_combout\);

-- Location: LCCOMB_X32_Y28_N28
\U_LED_HI_b|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_HI_b|Mux1~0_combout\ = (\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(5) & ((\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(4) & ((\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(7)))) # 
-- (!\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(4) & (\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(6))))) # (!\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(5) & 
-- (\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(6) & (\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(7) $ (\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(5),
	datab => \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(6),
	datac => \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(7),
	datad => \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(4),
	combout => \U_LED_HI_b|Mux1~0_combout\);

-- Location: LCCOMB_X32_Y28_N24
\U_LED_HI_b|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_HI_b|Mux0~0_combout\ = (\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(7) & (\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(4) & (\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(6) $ 
-- (\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(5))))) # (!\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(7) & (!\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(5) & 
-- (\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(6) $ (\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(7),
	datab => \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(6),
	datac => \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(4),
	datad => \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(5),
	combout => \U_LED_HI_b|Mux0~0_combout\);

-- Location: FF_X29_Y28_N23
\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(3),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(3));

-- Location: FF_X29_Y28_N1
\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(0),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(0));

-- Location: FF_X29_Y28_N11
\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(1),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(1));

-- Location: LCCOMB_X29_Y28_N26
\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[2]~feeder_combout\ = \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(2),
	combout => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[2]~feeder_combout\);

-- Location: FF_X29_Y28_N27
\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[2]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(2));

-- Location: FF_X29_Y28_N13
\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(2),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(2));

-- Location: LCCOMB_X29_Y28_N10
\U_LED_LO_b|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_LO_b|Mux6~0_combout\ = (\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(0) & ((\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(3)) # (\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(1) $ 
-- (\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(2))))) # (!\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(0) & ((\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(1)) # 
-- (\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(3) $ (\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(3),
	datab => \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(0),
	datac => \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(1),
	datad => \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(2),
	combout => \U_LED_LO_b|Mux6~0_combout\);

-- Location: LCCOMB_X29_Y28_N24
\U_LED_LO_b|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_LO_b|Mux5~0_combout\ = (\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(2) & (\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(0) & (\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(3) $ 
-- (\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(1))))) # (!\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(2) & (!\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(3) & 
-- ((\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(0)) # (\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(2),
	datab => \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(0),
	datac => \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(3),
	datad => \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(1),
	combout => \U_LED_LO_b|Mux5~0_combout\);

-- Location: LCCOMB_X29_Y28_N18
\U_LED_LO_b|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_LO_b|Mux4~0_combout\ = (\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(1) & (((\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(0) & !\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(3))))) # 
-- (!\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(1) & ((\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(2) & ((!\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(3)))) # 
-- (!\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(2) & (\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(2),
	datab => \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(0),
	datac => \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(3),
	datad => \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(1),
	combout => \U_LED_LO_b|Mux4~0_combout\);

-- Location: LCCOMB_X29_Y28_N20
\U_LED_LO_b|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_LO_b|Mux3~0_combout\ = (\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(0) & (\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(2) $ (((!\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(1)))))) # 
-- (!\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(0) & ((\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(2) & (!\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(3) & 
-- !\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(1))) # (!\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(2) & (\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(3) & 
-- \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(2),
	datab => \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(0),
	datac => \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(3),
	datad => \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(1),
	combout => \U_LED_LO_b|Mux3~0_combout\);

-- Location: LCCOMB_X29_Y28_N12
\U_LED_LO_b|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_LO_b|Mux2~0_combout\ = (\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(3) & (\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(2) & ((\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(1)) # 
-- (!\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(0))))) # (!\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(3) & (!\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(0) & 
-- (!\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(2) & \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(3),
	datab => \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(0),
	datac => \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(2),
	datad => \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(1),
	combout => \U_LED_LO_b|Mux2~0_combout\);

-- Location: LCCOMB_X29_Y28_N0
\U_LED_LO_b|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_LO_b|Mux1~0_combout\ = (\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(3) & ((\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(0) & ((\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(1)))) # 
-- (!\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(0) & (\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(2))))) # (!\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(3) & 
-- (\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(2) & (\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(0) $ (\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(3),
	datab => \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(2),
	datac => \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(0),
	datad => \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(1),
	combout => \U_LED_LO_b|Mux1~0_combout\);

-- Location: LCCOMB_X29_Y28_N22
\U_LED_LO_b|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_LO_b|Mux0~0_combout\ = (\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(2) & (!\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(1) & (\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(0) $ 
-- (!\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(3))))) # (!\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(2) & (\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(0) & 
-- (\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(3) $ (!\U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(2),
	datab => \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(0),
	datac => \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(3),
	datad => \U_jtag_wrapper|U_ADDR_TOP|U_logic|address_register_to_memmap\(1),
	combout => \U_LED_LO_b|Mux0~0_combout\);

-- Location: IOIBUF_X0_Y16_N1
\altera_reserved_tms~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_altera_reserved_tms,
	o => \altera_reserved_tms~input_o\);

-- Location: FF_X15_Y18_N3
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~feeder_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~q\);

-- Location: FF_X15_Y18_N5
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]~q\);

-- Location: FF_X15_Y18_N9
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~feeder_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~q\);

-- Location: FF_X15_Y18_N15
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(4),
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][4]~q\);

-- Location: FF_X15_Y18_N19
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][5]~feeder_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][5]~q\);

-- Location: FF_X15_Y18_N21
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][6]~feeder_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][6]~q\);

-- Location: FF_X15_Y18_N23
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~feeder_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~q\);

-- Location: LCCOMB_X29_Y22_N0
\auto_hub|~GND\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
;

-- Location: LCCOMB_X14_Y17_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~_wirecell\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~q\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~_wirecell_combout\);

-- Location: LCCOMB_X16_Y17_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[0]~_wirecell\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[0]~_wirecell_combout\);
END structure;


