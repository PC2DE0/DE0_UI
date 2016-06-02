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

-- DATE "06/02/2016 12:39:06"

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
SIGNAL \altera_internal_jtag~TCKUTAPclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~3_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~5_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~6_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~7_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~8_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~9_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~14_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~15_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~21_combout\ : std_logic;
SIGNAL \altera_internal_jtag~TCKUTAP\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]~8\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]~7_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]~10\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]~9_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]~12\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]~11_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]~16\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]~15_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~17_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[1]~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[2]~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~12\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~11_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~14\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~13_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[2]~17\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[2]~16_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[3]~19\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[3]~18_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[4]~20_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~11_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~12_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~16_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~17_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~6_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~13_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~14_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~7_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~8_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~9_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~10_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~15_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~18_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~19_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~11_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~12_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[1]~13_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~19_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~14_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~22_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~23_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~20_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~21_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~22_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~23_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~24_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~25_combout\ : std_logic;
SIGNAL \auto_hub|~GND~combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~_wirecell_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[0]~_wirecell_combout\ : std_logic;
SIGNAL \altera_internal_jtag~TCKUTAPclkctrl_outclk\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDI_SHIFTER|output_data[21]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDI_SHIFTER|output_data[15]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDI_SHIFTER|output_data[11]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[3]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[2]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[2]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[3]~feeder_combout\ : std_logic;
SIGNAL \altera_reserved_tck~input_o\ : std_logic;
SIGNAL \altera_reserved_tdi~input_o\ : std_logic;
SIGNAL \altera_internal_jtag~TMSUTAP\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~10_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_dr_scan_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~4_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~5_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~6_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~7_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~8_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~9_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[8]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[6]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[3]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[2]~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[0]~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal1~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[4]~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal3~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[0]~4_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~7_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~8_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~5_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[2]~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~4_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~6_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~4_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_q\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~0_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_4~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_5~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_6~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_7~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_7~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_8~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_8~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_9~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_9~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_10~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_11~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_11~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_12~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_12~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_13~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_13~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_14~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_15~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_15~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_16~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_16~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_17~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_18~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_19~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_19~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_20~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_20~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_21~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_21~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_22~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_22~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_23~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_24~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_25~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_25~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_26~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_26~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_27~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_28~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_29~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_30~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDO_SHIFTER|Selector31~0_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_31~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDO_SHIFTER|Selector0~0_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDO_SHIFTER|state.START~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDO_SHIFTER|Selector1~0_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDO_SHIFTER|Selector1~1_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_1~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_2~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_3~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[13]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDO_SHIFTER|process_0~0_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[12]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[10]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[9]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[8]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[6]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[3]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDI_SHIFTER|output_data[2]~0_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~11_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~10_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~12_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~2_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDI_SHIFTER|output_data[19]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~1_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~0_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~4_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~13_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~22_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~23_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~16_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~17_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~18_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~19_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~20_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~24_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~25_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~26_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~5_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~_wirecell_combout\ : std_logic;
SIGNAL \altera_internal_jtag~TDIUTAP\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[31]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[30]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[27]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[25]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[24]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[23]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[21]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[20]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[17]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[16]~feeder_combout\ : std_logic;
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
SIGNAL \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_udr~0_combout\ : std_logic;
SIGNAL \U_LED_HI_b|Mux6~0_combout\ : std_logic;
SIGNAL \U_LED_HI_b|Mux5~0_combout\ : std_logic;
SIGNAL \U_LED_HI_b|Mux4~0_combout\ : std_logic;
SIGNAL \U_LED_HI_b|Mux3~0_combout\ : std_logic;
SIGNAL \U_LED_HI_b|Mux2~0_combout\ : std_logic;
SIGNAL \U_LED_HI_b|Mux1~0_combout\ : std_logic;
SIGNAL \U_LED_HI_b|Mux0~0_combout\ : std_logic;
SIGNAL \U_LED_LO_b|Mux6~0_combout\ : std_logic;
SIGNAL \U_LED_LO_b|Mux5~0_combout\ : std_logic;
SIGNAL \U_LED_LO_b|Mux4~0_combout\ : std_logic;
SIGNAL \U_LED_LO_b|Mux3~0_combout\ : std_logic;
SIGNAL \U_LED_LO_b|Mux2~0_combout\ : std_logic;
SIGNAL \U_LED_LO_b|Mux1~0_combout\ : std_logic;
SIGNAL \U_LED_LO_b|Mux0~0_combout\ : std_logic;
SIGNAL \altera_reserved_tms~input_o\ : std_logic;
SIGNAL \altera_internal_jtag~TDO\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDI_SHIFTER|output_data\ : std_logic_vector(21 DOWNTO 0);
SIGNAL \U_jtag_wrapper|U_TDO_SHIFTER|temp_reg\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U_jtag_wrapper|U_TDI_SHIFTER|output_address\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\ : std_logic_vector(4 DOWNTO 0);
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
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|ALT_INV_state\ : std_logic_vector(8 DOWNTO 3);
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

\altera_internal_jtag~TCKUTAPclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \altera_internal_jtag~TCKUTAP\);
\ALT_INV_altera_internal_jtag~TCKUTAPclkctrl_outclk\ <= NOT \altera_internal_jtag~TCKUTAPclkctrl_outclk\;
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|ALT_INV_state\(8) <= NOT \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8);
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|ALT_INV_state\(3) <= NOT \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3);
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\ <= NOT \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~q\;
\ALT_INV_altera_internal_jtag~TMSUTAP\ <= NOT \altera_internal_jtag~TMSUTAP\;
\U_LED_LO_b|ALT_INV_Mux6~0_combout\ <= NOT \U_LED_LO_b|Mux6~0_combout\;
\U_LED_HI_b|ALT_INV_Mux6~0_combout\ <= NOT \U_LED_HI_b|Mux6~0_combout\;
\U_LED_LO_a|ALT_INV_Mux6~0_combout\ <= NOT \U_LED_LO_a|Mux6~0_combout\;
\U_LED_HI_a|ALT_INV_Mux6~0_combout\ <= NOT \U_LED_HI_a|Mux6~0_combout\;

-- Location: FF_X27_Y19_N1
\U_jtag_wrapper|U_TDI_SHIFTER|output_data[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_TDI_SHIFTER|output_data[21]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_TDI_SHIFTER|output_data[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(21));

-- Location: FF_X26_Y22_N23
\U_jtag_wrapper|U_TDI_SHIFTER|output_data[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_TDI_SHIFTER|output_data[15]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_TDI_SHIFTER|output_data[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(15));

-- Location: FF_X26_Y22_N7
\U_jtag_wrapper|U_TDI_SHIFTER|output_data[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(24),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_TDI_SHIFTER|output_data[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(14));

-- Location: LCCOMB_X26_Y22_N6
\U_jtag_wrapper|U_TDO_SHIFTER|Selector32~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~3_combout\ = (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(15) & ((\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_15~q\) # ((\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(14) & \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_14~q\)))) 
-- # (!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(15) & (((\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(14) & \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_14~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(15),
	datab => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_15~q\,
	datac => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(14),
	datad => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_14~q\,
	combout => \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~3_combout\);

-- Location: FF_X27_Y19_N5
\U_jtag_wrapper|U_TDI_SHIFTER|output_data[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(23),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_TDI_SHIFTER|output_data[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(13));

-- Location: FF_X26_Y22_N9
\U_jtag_wrapper|U_TDI_SHIFTER|output_data[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(22),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_TDI_SHIFTER|output_data[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(12));

-- Location: LCCOMB_X26_Y22_N8
\U_jtag_wrapper|U_TDO_SHIFTER|Selector32~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~5_combout\ = (\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_13~q\ & ((\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(13)) # ((\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(12) & \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_12~q\)))) 
-- # (!\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_13~q\ & (((\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(12) & \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_12~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_13~q\,
	datab => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(13),
	datac => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(12),
	datad => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_12~q\,
	combout => \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~5_combout\);

-- Location: FF_X26_Y20_N11
\U_jtag_wrapper|U_TDI_SHIFTER|output_data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_TDI_SHIFTER|output_data[11]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_TDI_SHIFTER|output_data[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(11));

-- Location: FF_X26_Y20_N1
\U_jtag_wrapper|U_TDI_SHIFTER|output_data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(20),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_TDI_SHIFTER|output_data[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(10));

-- Location: LCCOMB_X26_Y20_N0
\U_jtag_wrapper|U_TDO_SHIFTER|Selector32~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~6_combout\ = (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(11) & ((\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_11~q\) # ((\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_10~q\ & \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(10))))) 
-- # (!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(11) & (\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_10~q\ & (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(11),
	datab => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_10~q\,
	datac => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(10),
	datad => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_11~q\,
	combout => \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~6_combout\);

-- Location: FF_X26_Y20_N21
\U_jtag_wrapper|U_TDI_SHIFTER|output_data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(19),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_TDI_SHIFTER|output_data[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(9));

-- Location: FF_X26_Y20_N3
\U_jtag_wrapper|U_TDI_SHIFTER|output_data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(18),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_TDI_SHIFTER|output_data[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(8));

-- Location: LCCOMB_X26_Y20_N2
\U_jtag_wrapper|U_TDO_SHIFTER|Selector32~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~7_combout\ = (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(9) & ((\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_9~q\) # ((\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(8) & \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_8~q\)))) # 
-- (!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(9) & (((\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(8) & \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_8~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(9),
	datab => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_9~q\,
	datac => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(8),
	datad => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_8~q\,
	combout => \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~7_combout\);

-- Location: LCCOMB_X26_Y20_N16
\U_jtag_wrapper|U_TDO_SHIFTER|Selector32~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~8_combout\ = (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(6) & ((\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_6~q\) # ((\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_7~q\ & \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(7))))) # 
-- (!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(6) & (\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_7~q\ & ((\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(6),
	datab => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_7~q\,
	datac => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_6~q\,
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(7),
	combout => \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~8_combout\);

-- Location: LCCOMB_X26_Y20_N26
\U_jtag_wrapper|U_TDO_SHIFTER|Selector32~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~9_combout\ = (\U_jtag_wrapper|U_TDO_SHIFTER|Selector32~7_combout\) # ((\U_jtag_wrapper|U_TDO_SHIFTER|Selector32~6_combout\) # ((\U_jtag_wrapper|U_TDO_SHIFTER|Selector32~8_combout\) # 
-- (\U_jtag_wrapper|U_TDO_SHIFTER|Selector32~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~7_combout\,
	datab => \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~6_combout\,
	datac => \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~8_combout\,
	datad => \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~5_combout\,
	combout => \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~9_combout\);

-- Location: LCCOMB_X22_Y20_N8
\U_jtag_wrapper|U_TDO_SHIFTER|Selector32~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~14_combout\ = (!\U_jtag_wrapper|U_TDO_SHIFTER|state.START~q\ & ((\U_jtag_wrapper|U_TDO_SHIFTER|process_0~0_combout\ & (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(0))) # 
-- (!\U_jtag_wrapper|U_TDO_SHIFTER|process_0~0_combout\ & ((\U_jtag_wrapper|U_TDO_SHIFTER|temp_reg\(31))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDO_SHIFTER|process_0~0_combout\,
	datab => \U_jtag_wrapper|U_TDO_SHIFTER|state.START~q\,
	datac => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(0),
	datad => \U_jtag_wrapper|U_TDO_SHIFTER|temp_reg\(31),
	combout => \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~14_combout\);

-- Location: LCCOMB_X26_Y20_N14
\U_jtag_wrapper|U_TDO_SHIFTER|Selector32~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~15_combout\ = (\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_2~q\) # ((\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_1~q\) # ((\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_3~q\) # (\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_2~q\,
	datab => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_1~q\,
	datac => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_3~q\,
	datad => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_4~q\,
	combout => \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~15_combout\);

-- Location: LCCOMB_X23_Y18_N6
\U_jtag_wrapper|U_TDO_SHIFTER|Selector32~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~21_combout\ = (\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_21~q\) # ((\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_22~q\) # ((\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_23~q\) # 
-- (\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_24~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_21~q\,
	datab => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_22~q\,
	datac => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_23~q\,
	datad => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_24~q\,
	combout => \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~21_combout\);

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

-- Location: FF_X22_Y19_N13
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

-- Location: FF_X23_Y19_N9
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

-- Location: FF_X23_Y20_N21
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]~11_combout\,
	asdata => VCC,
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~19_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2));

-- Location: FF_X23_Y20_N17
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]~7_combout\,
	asdata => VCC,
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~19_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0));

-- Location: FF_X23_Y20_N19
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]~9_combout\,
	asdata => VCC,
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~19_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1));

-- Location: FF_X23_Y20_N25
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~17_combout\,
	asdata => VCC,
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~19_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4));

-- Location: FF_X23_Y20_N23
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]~15_combout\,
	asdata => VCC,
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~19_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3));

-- Location: LCCOMB_X23_Y19_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[0]~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~17_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~25_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[0]~0_combout\);

-- Location: FF_X23_Y19_N27
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

-- Location: LCCOMB_X23_Y20_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]~7\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	datad => VCC,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]~7_combout\,
	cout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]~8\);

-- Location: LCCOMB_X23_Y20_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]~9\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	datad => VCC,
	cin => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]~8\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]~9_combout\,
	cout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]~10\);

-- Location: LCCOMB_X23_Y20_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]~11\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datad => VCC,
	cin => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]~10\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]~11_combout\,
	cout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]~12\);

-- Location: LCCOMB_X23_Y20_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]~15\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datad => VCC,
	cin => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]~12\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]~15_combout\,
	cout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]~16\);

-- Location: LCCOMB_X23_Y20_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~17\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	cin => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]~16\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~17_combout\);

-- Location: LCCOMB_X23_Y19_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[1]~1\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~17_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~23_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[1]~1_combout\);

-- Location: FF_X23_Y19_N13
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

-- Location: FF_X24_Y19_N21
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~13_combout\,
	sclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~22_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(1));

-- Location: FF_X24_Y19_N23
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[2]~16_combout\,
	sclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~22_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(2));

-- Location: LCCOMB_X23_Y19_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[2]~2\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~17_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~21_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[2]~2_combout\);

-- Location: FF_X23_Y19_N23
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

-- Location: FF_X24_Y19_N27
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[4]~20_combout\,
	sclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~22_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(4));

-- Location: FF_X24_Y19_N19
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~11_combout\,
	sclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~22_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(0));

-- Location: FF_X24_Y19_N25
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[3]~18_combout\,
	sclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~22_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(3));

-- Location: LCCOMB_X24_Y19_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~11\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(0),
	datad => VCC,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~11_combout\,
	cout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~12\);

-- Location: LCCOMB_X24_Y19_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~13\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(1),
	datad => VCC,
	cin => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~12\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~13_combout\,
	cout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~14\);

-- Location: LCCOMB_X24_Y19_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[2]~16\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(2),
	datad => VCC,
	cin => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~14\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[2]~16_combout\,
	cout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[2]~17\);

-- Location: LCCOMB_X23_Y19_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~3\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~17_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~19_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~3_combout\);

-- Location: LCCOMB_X24_Y19_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[3]~18\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(3),
	datad => VCC,
	cin => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[2]~17\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[3]~18_combout\,
	cout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[3]~19\);

-- Location: LCCOMB_X24_Y19_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[4]~20\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(4),
	cin => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[3]~19\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[4]~20_combout\);

-- Location: FF_X22_Y19_N31
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

-- Location: FF_X21_Y19_N29
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

-- Location: FF_X20_Y19_N27
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~6_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(0));

-- Location: LCCOMB_X20_Y19_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(0),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~0_combout\);

-- Location: LCCOMB_X20_Y19_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~3\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~0_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~1_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~q\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~3_combout\);

-- Location: LCCOMB_X19_Y19_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TDIUTAP\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~0_combout\);

-- Location: FF_X21_Y20_N19
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

-- Location: FF_X21_Y19_N3
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

-- Location: LCCOMB_X21_Y20_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~1\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(2),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(5),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~1_combout\);

-- Location: LCCOMB_X22_Y19_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~11\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(13),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(12),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~11_combout\);

-- Location: LCCOMB_X22_Y19_N30
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~12\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(13),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~12_combout\);

-- Location: FF_X23_Y19_N1
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

-- Location: LCCOMB_X23_Y20_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~16\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~16_combout\);

-- Location: LCCOMB_X23_Y20_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~17\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~16_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~17_combout\);

-- Location: LCCOMB_X23_Y19_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_proc~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~q\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_proc~0_combout\);

-- Location: LCCOMB_X23_Y19_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~combout\);

-- Location: FF_X21_Y19_N21
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

-- Location: LCCOMB_X21_Y19_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~0_combout\);

-- Location: FF_X24_Y19_N9
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~14_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(1));

-- Location: LCCOMB_X20_Y19_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~6\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~6_combout\);

-- Location: LCCOMB_X21_Y19_N14
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\);

-- Location: LCCOMB_X21_Y20_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~2\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~1_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~0_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~2_combout\);

-- Location: FF_X21_Y19_N25
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg~q\);

-- Location: LCCOMB_X20_Y19_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~2\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(1),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~2_combout\);

-- Location: LCCOMB_X21_Y19_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~3\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg~q\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~2_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~3_combout\);

-- Location: FF_X22_Y19_N3
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

-- Location: LCCOMB_X20_Y19_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~q\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~0_combout\);

-- Location: LCCOMB_X20_Y19_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~0_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~0_combout\);

-- Location: LCCOMB_X23_Y20_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~13\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~13_combout\);

-- Location: LCCOMB_X20_Y19_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~14\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~14_combout\);

-- Location: FF_X23_Y19_N7
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

-- Location: FF_X21_Y19_N9
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

-- Location: LCCOMB_X21_Y19_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~1\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~1_combout\);

-- Location: FF_X24_Y19_N11
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~10_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(2));

-- Location: LCCOMB_X24_Y19_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~7\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(2),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~7_combout\);

-- Location: FF_X22_Y19_N21
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

-- Location: LCCOMB_X20_Y19_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~1\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~0_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~1_combout\);

-- Location: FF_X23_Y19_N25
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

-- Location: FF_X21_Y19_N19
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

-- Location: LCCOMB_X21_Y19_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~2\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~2_combout\);

-- Location: FF_X24_Y19_N7
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~12_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(3));

-- Location: LCCOMB_X24_Y19_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~8\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~8_combout\);

-- Location: LCCOMB_X24_Y19_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~9\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(1),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~8_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~9_combout\);

-- Location: LCCOMB_X24_Y19_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~10\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~9_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~10_combout\);

-- Location: LCCOMB_X24_Y19_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~15\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(1),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~15_combout\);

-- Location: FF_X22_Y19_N15
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[2]~feeder_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(2));

-- Location: LCCOMB_X23_Y20_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~18\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~18_combout\);

-- Location: LCCOMB_X23_Y20_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~19\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~18_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~19_combout\);

-- Location: FF_X23_Y19_N11
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[3]~feeder_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(3));

-- Location: LCCOMB_X21_Y19_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~3\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TDIUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~3_combout\);

-- Location: LCCOMB_X24_Y19_N14
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~11\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(1),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~11_combout\);

-- Location: LCCOMB_X24_Y19_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~12\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TDIUTAP\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~11_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~12_combout\);

-- Location: FF_X22_Y19_N9
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[3]~feeder_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(3));

-- Location: LCCOMB_X24_Y19_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[1]~13\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~q\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[1]~13_combout\);

-- Location: LCCOMB_X20_Y19_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~19\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~13_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~19_combout\);

-- Location: LCCOMB_X24_Y19_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~14\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~7_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~14_combout\);

-- Location: LCCOMB_X24_Y19_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~22\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~15_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~22_combout\);

-- Location: LCCOMB_X24_Y19_N30
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~23\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~q\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~23_combout\);

-- Location: LCCOMB_X23_Y20_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~20\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~20_combout\);

-- Location: LCCOMB_X23_Y20_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~21\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~20_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~21_combout\);

-- Location: LCCOMB_X23_Y20_N14
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~22\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100101001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~22_combout\);

-- Location: LCCOMB_X23_Y20_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~23\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~22_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~23_combout\);

-- Location: LCCOMB_X23_Y20_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~24\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~24_combout\);

-- Location: LCCOMB_X23_Y20_N30
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~25\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~24_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~25_combout\);

-- Location: CLKCTRL_G2
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

-- Location: LCCOMB_X27_Y19_N0
\U_jtag_wrapper|U_TDI_SHIFTER|output_data[21]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDI_SHIFTER|output_data[21]~feeder_combout\ = \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(31),
	combout => \U_jtag_wrapper|U_TDI_SHIFTER|output_data[21]~feeder_combout\);

-- Location: LCCOMB_X26_Y22_N22
\U_jtag_wrapper|U_TDI_SHIFTER|output_data[15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDI_SHIFTER|output_data[15]~feeder_combout\ = \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(25),
	combout => \U_jtag_wrapper|U_TDI_SHIFTER|output_data[15]~feeder_combout\);

-- Location: LCCOMB_X26_Y20_N10
\U_jtag_wrapper|U_TDI_SHIFTER|output_data[11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDI_SHIFTER|output_data[11]~feeder_combout\ = \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(21),
	combout => \U_jtag_wrapper|U_TDI_SHIFTER|output_data[11]~feeder_combout\);

-- Location: LCCOMB_X22_Y19_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[3]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[3]~feeder_combout\);

-- Location: LCCOMB_X22_Y18_N14
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~feeder_combout\);

-- Location: LCCOMB_X22_Y18_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~feeder_combout\);

-- Location: LCCOMB_X23_Y19_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~feeder_combout\);

-- Location: LCCOMB_X22_Y19_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~feeder_combout\);

-- Location: LCCOMB_X23_Y19_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[1]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[1]~feeder_combout\);

-- Location: LCCOMB_X22_Y19_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[1]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[1]~feeder_combout\);

-- Location: LCCOMB_X23_Y19_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[2]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[2]~feeder_combout\);

-- Location: LCCOMB_X22_Y19_N14
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[2]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[2]~feeder_combout\);

-- Location: LCCOMB_X23_Y19_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[3]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[3]~feeder_combout\);

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

-- Location: LCCOMB_X24_Y18_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~1\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(0),
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~1_combout\);

-- Location: FF_X24_Y18_N7
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

-- Location: LCCOMB_X24_Y18_N2
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

-- Location: FF_X24_Y18_N3
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

-- Location: LCCOMB_X24_Y18_N0
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

-- Location: FF_X24_Y18_N1
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

-- Location: LCCOMB_X24_Y18_N4
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

-- Location: FF_X24_Y18_N5
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

-- Location: LCCOMB_X22_Y19_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~10\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(10),
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~10_combout\);

-- Location: FF_X22_Y19_N29
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

-- Location: LCCOMB_X22_Y19_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_dr_scan_proc~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(14),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(12),
	datac => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_dr_scan_proc~0_combout\);

-- Location: FF_X22_Y19_N25
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

-- Location: LCCOMB_X19_Y19_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~3\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~3_combout\);

-- Location: FF_X19_Y19_N21
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

-- Location: LCCOMB_X21_Y19_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~4\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(7),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~4_combout\);

-- Location: FF_X21_Y19_N17
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~4_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4));

-- Location: LCCOMB_X21_Y19_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~5\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~5_combout\);

-- Location: FF_X21_Y19_N13
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(5));

-- Location: LCCOMB_X21_Y19_N10
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

-- Location: FF_X21_Y19_N11
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

-- Location: LCCOMB_X21_Y19_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~7\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(6),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~7_combout\);

-- Location: FF_X21_Y19_N23
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

-- Location: LCCOMB_X21_Y19_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_proc~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(7),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(5),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_proc~0_combout\);

-- Location: FF_X21_Y19_N1
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

-- Location: LCCOMB_X22_Y19_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~1\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(15),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~1_combout\);

-- Location: FF_X22_Y19_N17
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

-- Location: LCCOMB_X22_Y19_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~2\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(1),
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(15),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~2_combout\);

-- Location: FF_X22_Y19_N1
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

-- Location: LCCOMB_X19_Y19_N30
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~1\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~1_combout\);

-- Location: FF_X19_Y19_N31
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

-- Location: LCCOMB_X22_Y19_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~8\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(9),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~8_combout\);

-- Location: FF_X22_Y19_N27
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

-- Location: LCCOMB_X22_Y19_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~9\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(14),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(10),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~9_combout\);

-- Location: FF_X22_Y19_N11
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

-- Location: FF_X21_Y20_N13
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

-- Location: LCCOMB_X21_Y20_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[8]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(9),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[8]~feeder_combout\);

-- Location: FF_X21_Y20_N23
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

-- Location: FF_X21_Y20_N17
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(8),
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(7));

-- Location: LCCOMB_X21_Y20_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[6]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(7),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[6]~feeder_combout\);

-- Location: FF_X21_Y20_N27
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[6]~feeder_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(6));

-- Location: FF_X21_Y20_N7
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

-- Location: FF_X21_Y20_N25
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(5),
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(4));

-- Location: LCCOMB_X21_Y20_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[3]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[3]~feeder_combout\);

-- Location: FF_X21_Y20_N29
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

-- Location: LCCOMB_X21_Y20_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[2]~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[2]~0_combout\);

-- Location: FF_X21_Y20_N11
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

-- Location: LCCOMB_X21_Y20_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[1]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[1]~feeder_combout\);

-- Location: FF_X21_Y20_N21
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

-- Location: LCCOMB_X21_Y20_N14
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[0]~1\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[0]~1_combout\);

-- Location: FF_X21_Y20_N15
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

-- Location: LCCOMB_X21_Y20_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(8),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(6),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(9),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(7),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~0_combout\);

-- Location: LCCOMB_X21_Y20_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal1~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~1_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~0_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal1~0_combout\);

-- Location: FF_X21_Y20_N9
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal1~0_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_dr_scan_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\);

-- Location: LCCOMB_X22_Y18_N0
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

-- Location: LCCOMB_X19_Y19_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[4]~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(4),
	datad => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[4]~0_combout\);

-- Location: LCCOMB_X22_Y19_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg_proc~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg_proc~0_combout\);

-- Location: FF_X22_Y19_N23
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

-- Location: FF_X19_Y19_N25
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[4]~0_combout\,
	asdata => \~GND~combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(4));

-- Location: LCCOMB_X20_Y19_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal3~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal3~0_combout\);

-- Location: LCCOMB_X19_Y19_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[0]~4\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg_proc~0_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal3~0_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[0]~4_combout\);

-- Location: FF_X19_Y19_N29
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

-- Location: LCCOMB_X19_Y19_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~7\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~7_combout\);

-- Location: LCCOMB_X20_Y18_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~1\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[2]~3_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~7_combout\,
	datad => \~GND~combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~1_combout\);

-- Location: LCCOMB_X19_Y19_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~8\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~8_combout\);

-- Location: FF_X20_Y18_N1
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~1_combout\,
	asdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~8_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|ALT_INV_state\(3),
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(3));

-- Location: LCCOMB_X22_Y18_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~5\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datab => \~GND~combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~5_combout\);

-- Location: LCCOMB_X19_Y19_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[2]~3\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[2]~3_combout\);

-- Location: LCCOMB_X22_Y18_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~4\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[2]~3_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~4_combout\);

-- Location: FF_X22_Y18_N5
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~5_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2));

-- Location: LCCOMB_X22_Y18_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~6\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datab => \~GND~combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~6_combout\);

-- Location: FF_X22_Y18_N7
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~6_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1));

-- Location: LCCOMB_X22_Y18_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~2\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datab => \~GND~combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~2_combout\);

-- Location: FF_X22_Y18_N3
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~2_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0));

-- Location: LCCOMB_X20_Y19_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~4\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~3_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~4_combout\);

-- Location: LCCOMB_X20_Y19_N14
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(1),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~0_combout\);

-- Location: LCCOMB_X19_Y19_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~1\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg_proc~0_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~0_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~1_combout\);

-- Location: FF_X19_Y19_N13
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

-- Location: LCCOMB_X19_Y19_N14
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~1\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~0_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(2),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(1),
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~1_combout\);

-- Location: LCCOMB_X19_Y19_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~0_combout\);

-- Location: LCCOMB_X19_Y19_N2
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

-- Location: LCCOMB_X19_Y19_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~3\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~1_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~1_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~2_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~3_combout\);

-- Location: FF_X19_Y19_N19
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~3_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_q\);

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

-- Location: LCCOMB_X23_Y18_N14
\U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~0_combout\ = (\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4) & (\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_q\ & 
-- !\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_q\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	combout => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~0_combout\);

-- Location: FF_X26_Y20_N9
\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_3~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_4~q\);

-- Location: FF_X26_Y20_N23
\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_4~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_5~q\);

-- Location: FF_X26_Y20_N17
\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_5~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_6~q\);

-- Location: LCCOMB_X26_Y20_N28
\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_7~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_7~feeder_combout\ = \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_6~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_6~q\,
	combout => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_7~feeder_combout\);

-- Location: FF_X26_Y20_N29
\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_7~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_7~q\);

-- Location: LCCOMB_X26_Y20_N12
\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_8~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_8~feeder_combout\ = \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_7~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_7~q\,
	combout => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_8~feeder_combout\);

-- Location: FF_X26_Y20_N13
\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_8~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_8~q\);

-- Location: LCCOMB_X26_Y20_N4
\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_9~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_9~feeder_combout\ = \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_8~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_8~q\,
	combout => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_9~feeder_combout\);

-- Location: FF_X26_Y20_N5
\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_9~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_9~q\);

-- Location: FF_X26_Y20_N25
\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_9~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_10~q\);

-- Location: LCCOMB_X26_Y20_N18
\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_11~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_11~feeder_combout\ = \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_10~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_10~q\,
	combout => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_11~feeder_combout\);

-- Location: FF_X26_Y20_N19
\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_11~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_11~q\);

-- Location: LCCOMB_X26_Y20_N6
\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_12~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_12~feeder_combout\ = \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_11~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_11~q\,
	combout => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_12~feeder_combout\);

-- Location: FF_X26_Y20_N7
\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_12~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_12~q\);

-- Location: LCCOMB_X26_Y22_N26
\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_13~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_13~feeder_combout\ = \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_12~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_12~q\,
	combout => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_13~feeder_combout\);

-- Location: FF_X26_Y22_N27
\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_13~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_13~q\);

-- Location: FF_X26_Y22_N13
\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_13~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_14~q\);

-- Location: LCCOMB_X26_Y22_N16
\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_15~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_15~feeder_combout\ = \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_14~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_14~q\,
	combout => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_15~feeder_combout\);

-- Location: FF_X26_Y22_N17
\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_15~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_15~q\);

-- Location: LCCOMB_X26_Y22_N30
\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_16~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_16~feeder_combout\ = \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_15~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_15~q\,
	combout => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_16~feeder_combout\);

-- Location: FF_X26_Y22_N31
\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_16~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_16~q\);

-- Location: FF_X26_Y22_N15
\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_16~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_17~q\);

-- Location: FF_X26_Y22_N11
\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_17~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_18~q\);

-- Location: LCCOMB_X26_Y22_N2
\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_19~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_19~feeder_combout\ = \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_18~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_18~q\,
	combout => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_19~feeder_combout\);

-- Location: FF_X26_Y22_N3
\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_19~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_19~q\);

-- Location: LCCOMB_X26_Y22_N20
\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_20~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_20~feeder_combout\ = \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_19~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_19~q\,
	combout => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_20~feeder_combout\);

-- Location: FF_X26_Y22_N21
\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_20~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_20~q\);

-- Location: LCCOMB_X23_Y18_N20
\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_21~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_21~feeder_combout\ = \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_20~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_20~q\,
	combout => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_21~feeder_combout\);

-- Location: FF_X23_Y18_N21
\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_21~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_21~q\);

-- Location: LCCOMB_X23_Y18_N8
\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_22~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_22~feeder_combout\ = \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_21~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_21~q\,
	combout => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_22~feeder_combout\);

-- Location: FF_X23_Y18_N9
\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_22~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_22~q\);

-- Location: FF_X23_Y18_N7
\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_22~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_23~q\);

-- Location: FF_X23_Y18_N3
\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_23~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_24~q\);

-- Location: LCCOMB_X23_Y18_N28
\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_25~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_25~feeder_combout\ = \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_24~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_24~q\,
	combout => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_25~feeder_combout\);

-- Location: FF_X23_Y18_N29
\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_25~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_25~q\);

-- Location: LCCOMB_X23_Y18_N22
\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_26~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_26~feeder_combout\ = \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_25~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_25~q\,
	combout => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_26~feeder_combout\);

-- Location: FF_X23_Y18_N23
\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_26~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_26~q\);

-- Location: FF_X23_Y18_N5
\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_26~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_27~q\);

-- Location: FF_X23_Y18_N31
\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_27~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_28~q\);

-- Location: FF_X23_Y18_N27
\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_28~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_29~q\);

-- Location: FF_X23_Y18_N17
\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_29~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_30~q\);

-- Location: LCCOMB_X23_Y18_N24
\U_jtag_wrapper|U_TDO_SHIFTER|Selector31~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDO_SHIFTER|Selector31~0_combout\ = (\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4) & (\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_q\ & (!\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\ & 
-- \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_30~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_q\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datad => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_30~q\,
	combout => \U_jtag_wrapper|U_TDO_SHIFTER|Selector31~0_combout\);

-- Location: FF_X23_Y18_N25
\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_TDO_SHIFTER|Selector31~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_31~q\);

-- Location: LCCOMB_X23_Y18_N10
\U_jtag_wrapper|U_TDO_SHIFTER|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDO_SHIFTER|Selector0~0_combout\ = (!\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_31~q\ & ((\U_jtag_wrapper|U_TDO_SHIFTER|process_0~0_combout\) # (\U_jtag_wrapper|U_TDO_SHIFTER|state.START~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDO_SHIFTER|process_0~0_combout\,
	datac => \U_jtag_wrapper|U_TDO_SHIFTER|state.START~q\,
	datad => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_31~q\,
	combout => \U_jtag_wrapper|U_TDO_SHIFTER|Selector0~0_combout\);

-- Location: FF_X23_Y18_N11
\U_jtag_wrapper|U_TDO_SHIFTER|state.START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_TDO_SHIFTER|Selector0~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDO_SHIFTER|state.START~q\);

-- Location: LCCOMB_X22_Y20_N18
\U_jtag_wrapper|U_TDO_SHIFTER|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDO_SHIFTER|Selector1~0_combout\ = (\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_31~q\) # ((\U_jtag_wrapper|U_TDO_SHIFTER|state.START~q\ & 
-- \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_31~q\,
	datab => \U_jtag_wrapper|U_TDO_SHIFTER|state.START~q\,
	datac => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~0_combout\,
	combout => \U_jtag_wrapper|U_TDO_SHIFTER|Selector1~0_combout\);

-- Location: LCCOMB_X23_Y18_N0
\U_jtag_wrapper|U_TDO_SHIFTER|Selector1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDO_SHIFTER|Selector1~1_combout\ = (!\U_jtag_wrapper|U_TDO_SHIFTER|Selector1~0_combout\ & ((\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_1~q\) # ((\U_jtag_wrapper|U_TDO_SHIFTER|process_0~0_combout\ & 
-- !\U_jtag_wrapper|U_TDO_SHIFTER|state.START~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDO_SHIFTER|process_0~0_combout\,
	datab => \U_jtag_wrapper|U_TDO_SHIFTER|Selector1~0_combout\,
	datac => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_1~q\,
	datad => \U_jtag_wrapper|U_TDO_SHIFTER|state.START~q\,
	combout => \U_jtag_wrapper|U_TDO_SHIFTER|Selector1~1_combout\);

-- Location: FF_X23_Y18_N1
\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_TDO_SHIFTER|Selector1~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_1~q\);

-- Location: FF_X26_Y20_N31
\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_1~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_2~q\);

-- Location: FF_X26_Y20_N15
\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_2~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_3~q\);

-- Location: LCCOMB_X26_Y25_N20
\U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[13]~feeder_combout\ = \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(14),
	combout => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[13]~feeder_combout\);

-- Location: LCCOMB_X22_Y18_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~feeder_combout\);

-- Location: LCCOMB_X21_Y19_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg_proc~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(7),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(5),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg_proc~0_combout\);

-- Location: LCCOMB_X19_Y19_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg_proc~0_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0_combout\);

-- Location: FF_X22_Y18_N19
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

-- Location: LCCOMB_X22_Y20_N14
\U_jtag_wrapper|U_TDO_SHIFTER|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDO_SHIFTER|process_0~0_combout\ = (\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_q\ & (\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4) & (!\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\ & 
-- \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_q\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~q\,
	combout => \U_jtag_wrapper|U_TDO_SHIFTER|process_0~0_combout\);

-- Location: FF_X26_Y25_N21
\U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[13]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_TDO_SHIFTER|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(13));

-- Location: LCCOMB_X26_Y25_N14
\U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[12]~feeder_combout\ = \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(13),
	combout => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[12]~feeder_combout\);

-- Location: FF_X26_Y25_N15
\U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[12]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_TDO_SHIFTER|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(12));

-- Location: FF_X26_Y25_N31
\U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(12),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_TDO_SHIFTER|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(11));

-- Location: LCCOMB_X33_Y28_N12
\U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[10]~feeder_combout\ = \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(11),
	combout => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[10]~feeder_combout\);

-- Location: FF_X33_Y28_N13
\U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[10]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_TDO_SHIFTER|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(10));

-- Location: LCCOMB_X33_Y28_N28
\U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[9]~feeder_combout\ = \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(10),
	combout => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[9]~feeder_combout\);

-- Location: FF_X33_Y28_N29
\U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[9]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_TDO_SHIFTER|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(9));

-- Location: LCCOMB_X33_Y28_N30
\U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[8]~feeder_combout\ = \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(9),
	combout => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[8]~feeder_combout\);

-- Location: FF_X33_Y28_N31
\U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[8]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_TDO_SHIFTER|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(8));

-- Location: FF_X33_Y28_N25
\U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(8),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_TDO_SHIFTER|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(7));

-- Location: LCCOMB_X33_Y28_N26
\U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[6]~feeder_combout\ = \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(7),
	combout => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[6]~feeder_combout\);

-- Location: FF_X33_Y28_N27
\U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[6]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_TDO_SHIFTER|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(6));

-- Location: FF_X33_Y28_N15
\U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(6),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_TDO_SHIFTER|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(5));

-- Location: FF_X30_Y28_N31
\U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(5),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_TDO_SHIFTER|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(4));

-- Location: LCCOMB_X30_Y28_N22
\U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[3]~feeder_combout\ = \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(4),
	combout => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[3]~feeder_combout\);

-- Location: FF_X30_Y28_N23
\U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[3]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_TDO_SHIFTER|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(3));

-- Location: FF_X30_Y28_N5
\U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(3),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_TDO_SHIFTER|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(2));

-- Location: FF_X30_Y28_N9
\U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(2),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_TDO_SHIFTER|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(1));

-- Location: FF_X30_Y28_N13
\U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(1),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_TDO_SHIFTER|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(0));

-- Location: LCCOMB_X30_Y28_N12
\U_jtag_wrapper|U_TDI_SHIFTER|output_data[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDI_SHIFTER|output_data[2]~0_combout\ = (\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8) & (!\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\ & (\U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(0) & 
-- \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datac => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_q\,
	combout => \U_jtag_wrapper|U_TDI_SHIFTER|output_data[2]~0_combout\);

-- Location: FF_X22_Y20_N31
\U_jtag_wrapper|U_TDI_SHIFTER|output_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(13),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_TDI_SHIFTER|output_data[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(3));

-- Location: LCCOMB_X26_Y20_N30
\U_jtag_wrapper|U_TDO_SHIFTER|Selector32~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~11_combout\ = (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(2) & ((\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_2~q\) # ((\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_3~q\ & \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(3))))) # 
-- (!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(2) & (\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_3~q\ & ((\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(2),
	datab => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_3~q\,
	datac => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_2~q\,
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(3),
	combout => \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~11_combout\);

-- Location: FF_X22_Y20_N27
\U_jtag_wrapper|U_TDI_SHIFTER|output_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(11),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_TDI_SHIFTER|output_data[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(1));

-- Location: FF_X26_Y25_N11
\U_jtag_wrapper|U_TDI_SHIFTER|output_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(15),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_TDI_SHIFTER|output_data[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(5));

-- Location: LCCOMB_X26_Y20_N8
\U_jtag_wrapper|U_TDO_SHIFTER|Selector32~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~10_combout\ = (\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_5~q\ & ((\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(5)) # ((\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_4~q\ & \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(4))))) # 
-- (!\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_5~q\ & (((\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_4~q\ & \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_5~q\,
	datab => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(5),
	datac => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_4~q\,
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(4),
	combout => \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~10_combout\);

-- Location: LCCOMB_X22_Y20_N26
\U_jtag_wrapper|U_TDO_SHIFTER|Selector32~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~12_combout\ = (\U_jtag_wrapper|U_TDO_SHIFTER|Selector32~11_combout\) # ((\U_jtag_wrapper|U_TDO_SHIFTER|Selector32~10_combout\) # ((\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_1~q\ & 
-- \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_1~q\,
	datab => \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~11_combout\,
	datac => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(1),
	datad => \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~10_combout\,
	combout => \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~12_combout\);

-- Location: FF_X26_Y22_N25
\U_jtag_wrapper|U_TDI_SHIFTER|output_data[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(26),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_TDI_SHIFTER|output_data[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(16));

-- Location: FF_X27_Y19_N3
\U_jtag_wrapper|U_TDI_SHIFTER|output_data[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(27),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_TDI_SHIFTER|output_data[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(17));

-- Location: LCCOMB_X26_Y22_N24
\U_jtag_wrapper|U_TDO_SHIFTER|Selector32~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~2_combout\ = (\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_16~q\ & ((\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(16)) # ((\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_17~q\ & \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(17))))) 
-- # (!\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_16~q\ & (\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_17~q\ & ((\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_16~q\,
	datab => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_17~q\,
	datac => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(16),
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(17),
	combout => \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~2_combout\);

-- Location: FF_X26_Y22_N5
\U_jtag_wrapper|U_TDI_SHIFTER|output_data[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(28),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_TDI_SHIFTER|output_data[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(18));

-- Location: LCCOMB_X26_Y22_N0
\U_jtag_wrapper|U_TDI_SHIFTER|output_data[19]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDI_SHIFTER|output_data[19]~feeder_combout\ = \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(29),
	combout => \U_jtag_wrapper|U_TDI_SHIFTER|output_data[19]~feeder_combout\);

-- Location: FF_X26_Y22_N1
\U_jtag_wrapper|U_TDI_SHIFTER|output_data[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_TDI_SHIFTER|output_data[19]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_TDI_SHIFTER|output_data[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(19));

-- Location: LCCOMB_X26_Y22_N4
\U_jtag_wrapper|U_TDO_SHIFTER|Selector32~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~1_combout\ = (\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_18~q\ & ((\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(18)) # ((\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_19~q\ & \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(19))))) 
-- # (!\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_18~q\ & (\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_19~q\ & ((\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_18~q\,
	datab => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_19~q\,
	datac => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(18),
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(19),
	combout => \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~1_combout\);

-- Location: FF_X26_Y22_N29
\U_jtag_wrapper|U_TDI_SHIFTER|output_data[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(30),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_TDI_SHIFTER|output_data[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(20));

-- Location: LCCOMB_X26_Y22_N28
\U_jtag_wrapper|U_TDO_SHIFTER|Selector32~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~0_combout\ = (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(21) & ((\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_21~q\) # ((\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(20) & \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_20~q\)))) 
-- # (!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(21) & (((\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(20) & \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_20~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(21),
	datab => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_21~q\,
	datac => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(20),
	datad => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_20~q\,
	combout => \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~0_combout\);

-- Location: LCCOMB_X26_Y22_N18
\U_jtag_wrapper|U_TDO_SHIFTER|Selector32~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~4_combout\ = (\U_jtag_wrapper|U_TDO_SHIFTER|Selector32~3_combout\) # ((\U_jtag_wrapper|U_TDO_SHIFTER|Selector32~2_combout\) # ((\U_jtag_wrapper|U_TDO_SHIFTER|Selector32~1_combout\) # 
-- (\U_jtag_wrapper|U_TDO_SHIFTER|Selector32~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~3_combout\,
	datab => \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~2_combout\,
	datac => \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~1_combout\,
	datad => \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~0_combout\,
	combout => \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~4_combout\);

-- Location: LCCOMB_X22_Y20_N28
\U_jtag_wrapper|U_TDO_SHIFTER|Selector32~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~13_combout\ = (\U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~0_combout\ & ((\U_jtag_wrapper|U_TDO_SHIFTER|Selector32~9_combout\) # 
-- ((\U_jtag_wrapper|U_TDO_SHIFTER|Selector32~12_combout\) # (\U_jtag_wrapper|U_TDO_SHIFTER|Selector32~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~9_combout\,
	datab => \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~12_combout\,
	datac => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~0_combout\,
	datad => \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~4_combout\,
	combout => \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~13_combout\);

-- Location: LCCOMB_X23_Y18_N30
\U_jtag_wrapper|U_TDO_SHIFTER|Selector32~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~22_combout\ = (\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_27~q\) # ((\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_25~q\) # ((\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_28~q\) # 
-- (\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_26~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_27~q\,
	datab => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_25~q\,
	datac => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_28~q\,
	datad => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_26~q\,
	combout => \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~22_combout\);

-- Location: LCCOMB_X23_Y18_N16
\U_jtag_wrapper|U_TDO_SHIFTER|Selector32~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~23_combout\ = (\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_29~q\) # ((\U_jtag_wrapper|U_TDO_SHIFTER|Selector32~22_combout\) # ((\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_30~q\) # 
-- (\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_31~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_29~q\,
	datab => \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~22_combout\,
	datac => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_30~q\,
	datad => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_31~q\,
	combout => \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~23_combout\);

-- Location: LCCOMB_X26_Y20_N22
\U_jtag_wrapper|U_TDO_SHIFTER|Selector32~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~16_combout\ = (\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_8~q\) # ((\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_6~q\) # ((\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_5~q\) # (\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_8~q\,
	datab => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_6~q\,
	datac => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_5~q\,
	datad => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_7~q\,
	combout => \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~16_combout\);

-- Location: LCCOMB_X26_Y20_N24
\U_jtag_wrapper|U_TDO_SHIFTER|Selector32~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~17_combout\ = (\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_12~q\) # ((\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_9~q\) # ((\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_10~q\) # (\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_11~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_12~q\,
	datab => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_9~q\,
	datac => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_10~q\,
	datad => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_11~q\,
	combout => \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~17_combout\);

-- Location: LCCOMB_X26_Y22_N12
\U_jtag_wrapper|U_TDO_SHIFTER|Selector32~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~18_combout\ = (\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_13~q\) # ((\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_15~q\) # ((\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_14~q\) # 
-- (\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_16~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_13~q\,
	datab => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_15~q\,
	datac => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_14~q\,
	datad => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_16~q\,
	combout => \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~18_combout\);

-- Location: LCCOMB_X23_Y18_N18
\U_jtag_wrapper|U_TDO_SHIFTER|Selector32~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~19_combout\ = (\U_jtag_wrapper|U_TDO_SHIFTER|Selector32~15_combout\) # ((\U_jtag_wrapper|U_TDO_SHIFTER|Selector32~16_combout\) # ((\U_jtag_wrapper|U_TDO_SHIFTER|Selector32~17_combout\) # 
-- (\U_jtag_wrapper|U_TDO_SHIFTER|Selector32~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~15_combout\,
	datab => \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~16_combout\,
	datac => \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~17_combout\,
	datad => \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~18_combout\,
	combout => \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~19_combout\);

-- Location: LCCOMB_X26_Y22_N10
\U_jtag_wrapper|U_TDO_SHIFTER|Selector32~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~20_combout\ = (\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_19~q\) # ((\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_17~q\) # ((\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_18~q\) # 
-- (\U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_20~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_19~q\,
	datab => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_17~q\,
	datac => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_18~q\,
	datad => \U_jtag_wrapper|U_TDO_SHIFTER|state.OUT_20~q\,
	combout => \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~20_combout\);

-- Location: LCCOMB_X23_Y18_N12
\U_jtag_wrapper|U_TDO_SHIFTER|Selector32~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~24_combout\ = (\U_jtag_wrapper|U_TDO_SHIFTER|Selector32~21_combout\) # ((\U_jtag_wrapper|U_TDO_SHIFTER|Selector32~23_combout\) # ((\U_jtag_wrapper|U_TDO_SHIFTER|Selector32~19_combout\) # 
-- (\U_jtag_wrapper|U_TDO_SHIFTER|Selector32~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~21_combout\,
	datab => \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~23_combout\,
	datac => \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~19_combout\,
	datad => \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~20_combout\,
	combout => \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~24_combout\);

-- Location: LCCOMB_X22_Y20_N24
\U_jtag_wrapper|U_TDO_SHIFTER|Selector32~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~25_combout\ = (\U_jtag_wrapper|U_TDO_SHIFTER|temp_reg\(31) & (((\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\) # (!\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4))) # 
-- (!\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_q\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datad => \U_jtag_wrapper|U_TDO_SHIFTER|temp_reg\(31),
	combout => \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~25_combout\);

-- Location: LCCOMB_X22_Y20_N2
\U_jtag_wrapper|U_TDO_SHIFTER|Selector32~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~26_combout\ = (\U_jtag_wrapper|U_TDO_SHIFTER|Selector32~14_combout\) # ((\U_jtag_wrapper|U_TDO_SHIFTER|Selector32~13_combout\) # ((\U_jtag_wrapper|U_TDO_SHIFTER|Selector32~24_combout\ & 
-- \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~14_combout\,
	datab => \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~13_combout\,
	datac => \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~24_combout\,
	datad => \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~25_combout\,
	combout => \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~26_combout\);

-- Location: FF_X22_Y20_N3
\U_jtag_wrapper|U_TDO_SHIFTER|temp_reg[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_TDO_SHIFTER|Selector32~26_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDO_SHIFTER|temp_reg\(31));

-- Location: LCCOMB_X20_Y19_N30
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~1\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(4),
	datad => \U_jtag_wrapper|U_TDO_SHIFTER|temp_reg\(31),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~1_combout\);

-- Location: LCCOMB_X21_Y19_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TDIUTAP\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~0_combout\);

-- Location: FF_X21_Y19_N27
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~q\);

-- Location: LCCOMB_X20_Y19_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~2\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~0_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~1_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~q\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~2_combout\);

-- Location: LCCOMB_X20_Y19_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~5\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\(0),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~4_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~2_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~5_combout\);

-- Location: LCCOMB_X21_Y19_N30
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~0_combout\);

-- Location: FF_X20_Y19_N17
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

-- Location: LCCOMB_X20_Y19_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~_wirecell\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~q\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~_wirecell_combout\);

-- Location: LCCOMB_X27_Y19_N6
\U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[31]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[31]~feeder_combout\ = \altera_internal_jtag~TDIUTAP\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \altera_internal_jtag~TDIUTAP\,
	combout => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[31]~feeder_combout\);

-- Location: FF_X27_Y19_N7
\U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[31]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_TDO_SHIFTER|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(31));

-- Location: LCCOMB_X27_Y19_N8
\U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[30]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[30]~feeder_combout\ = \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(31),
	combout => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[30]~feeder_combout\);

-- Location: FF_X27_Y19_N9
\U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[30]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_TDO_SHIFTER|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(30));

-- Location: FF_X27_Y19_N27
\U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(30),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_TDO_SHIFTER|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(29));

-- Location: FF_X27_Y19_N21
\U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(29),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_TDO_SHIFTER|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(28));

-- Location: LCCOMB_X27_Y19_N22
\U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[27]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[27]~feeder_combout\ = \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(28),
	combout => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[27]~feeder_combout\);

-- Location: FF_X27_Y19_N23
\U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[27]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_TDO_SHIFTER|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(27));

-- Location: FF_X27_Y19_N17
\U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(27),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_TDO_SHIFTER|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(26));

-- Location: LCCOMB_X27_Y19_N18
\U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[25]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[25]~feeder_combout\ = \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(26),
	combout => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[25]~feeder_combout\);

-- Location: FF_X27_Y19_N19
\U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[25]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_TDO_SHIFTER|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(25));

-- Location: LCCOMB_X27_Y19_N28
\U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[24]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[24]~feeder_combout\ = \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(25),
	combout => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[24]~feeder_combout\);

-- Location: FF_X27_Y19_N29
\U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[24]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_TDO_SHIFTER|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(24));

-- Location: LCCOMB_X27_Y19_N30
\U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[23]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[23]~feeder_combout\ = \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(24),
	combout => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[23]~feeder_combout\);

-- Location: FF_X27_Y19_N31
\U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[23]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_TDO_SHIFTER|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(23));

-- Location: FF_X27_Y19_N25
\U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(23),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_TDO_SHIFTER|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(22));

-- Location: LCCOMB_X27_Y19_N10
\U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[21]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[21]~feeder_combout\ = \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(22),
	combout => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[21]~feeder_combout\);

-- Location: FF_X27_Y19_N11
\U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[21]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_TDO_SHIFTER|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(21));

-- Location: LCCOMB_X27_Y19_N12
\U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[20]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[20]~feeder_combout\ = \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(21),
	combout => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[20]~feeder_combout\);

-- Location: FF_X27_Y19_N13
\U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[20]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_TDO_SHIFTER|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(20));

-- Location: FF_X26_Y25_N5
\U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(20),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_TDO_SHIFTER|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(19));

-- Location: FF_X26_Y25_N29
\U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(19),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_TDO_SHIFTER|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(18));

-- Location: LCCOMB_X26_Y25_N18
\U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[17]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[17]~feeder_combout\ = \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(18),
	combout => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[17]~feeder_combout\);

-- Location: FF_X26_Y25_N19
\U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[17]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_TDO_SHIFTER|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(17));

-- Location: LCCOMB_X26_Y25_N26
\U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[16]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[16]~feeder_combout\ = \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(17),
	combout => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[16]~feeder_combout\);

-- Location: FF_X26_Y25_N27
\U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[16]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_TDO_SHIFTER|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(16));

-- Location: FF_X26_Y25_N23
\U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(16),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_TDO_SHIFTER|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(15));

-- Location: FF_X26_Y25_N17
\U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(15),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_TDO_SHIFTER|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(14));

-- Location: FF_X26_Y25_N13
\U_jtag_wrapper|U_TDI_SHIFTER|output_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(14),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_TDI_SHIFTER|output_data[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(4));

-- Location: FF_X26_Y25_N25
\U_jtag_wrapper|U_TDI_SHIFTER|output_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(16),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_TDI_SHIFTER|output_data[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(6));

-- Location: FF_X26_Y25_N3
\U_jtag_wrapper|U_TDI_SHIFTER|output_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(17),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_TDI_SHIFTER|output_data[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(7));

-- Location: LCCOMB_X26_Y25_N0
\U_LED_HI_a|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_HI_a|Mux6~0_combout\ = (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(4) & ((\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(7)) # (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(6) $ (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(5))))) # 
-- (!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(4) & ((\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(5)) # (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(6) $ (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(4),
	datab => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(6),
	datac => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(5),
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(7),
	combout => \U_LED_HI_a|Mux6~0_combout\);

-- Location: LCCOMB_X26_Y25_N6
\U_LED_HI_a|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_HI_a|Mux5~0_combout\ = (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(4) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(7) $ (((\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(5)) # (!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(6)))))) # 
-- (!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(4) & (!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(6) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(5) & !\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(4),
	datab => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(6),
	datac => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(5),
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(7),
	combout => \U_LED_HI_a|Mux5~0_combout\);

-- Location: LCCOMB_X26_Y25_N8
\U_LED_HI_a|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_HI_a|Mux4~0_combout\ = (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(5) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(4) & ((!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(7))))) # (!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(5) & 
-- ((\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(6) & ((!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(7)))) # (!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(6) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(4),
	datab => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(6),
	datac => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(5),
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(7),
	combout => \U_LED_HI_a|Mux4~0_combout\);

-- Location: LCCOMB_X26_Y25_N24
\U_LED_HI_a|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_HI_a|Mux3~0_combout\ = (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(4) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(5) $ (((!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(6)))))) # (!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(4) & 
-- ((\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(5) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(7) & !\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(6))) # (!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(5) & (!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(7) & 
-- \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(5),
	datab => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(7),
	datac => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(6),
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(4),
	combout => \U_LED_HI_a|Mux3~0_combout\);

-- Location: LCCOMB_X26_Y25_N2
\U_LED_HI_a|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_HI_a|Mux2~0_combout\ = (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(6) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(7) & ((\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(5)) # (!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(4))))) # 
-- (!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(6) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(5) & (!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(7) & !\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(5),
	datab => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(6),
	datac => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(7),
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(4),
	combout => \U_LED_HI_a|Mux2~0_combout\);

-- Location: LCCOMB_X26_Y25_N12
\U_LED_HI_a|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_HI_a|Mux1~0_combout\ = (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(5) & ((\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(4) & ((\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(7)))) # (!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(4) & 
-- (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(6))))) # (!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(5) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(6) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(4) $ (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(5),
	datab => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(6),
	datac => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(4),
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(7),
	combout => \U_LED_HI_a|Mux1~0_combout\);

-- Location: LCCOMB_X26_Y25_N10
\U_LED_HI_a|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_HI_a|Mux0~0_combout\ = (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(6) & (!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(5) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(4) $ (!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(7))))) # 
-- (!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(6) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(4) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(5) $ (!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(4),
	datab => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(6),
	datac => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(5),
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(7),
	combout => \U_LED_HI_a|Mux0~0_combout\);

-- Location: FF_X22_Y20_N9
\U_jtag_wrapper|U_TDI_SHIFTER|output_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(10),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_TDI_SHIFTER|output_data[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(0));

-- Location: FF_X22_Y20_N13
\U_jtag_wrapper|U_TDI_SHIFTER|output_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(12),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_TDI_SHIFTER|output_data[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(2));

-- Location: LCCOMB_X22_Y20_N16
\U_LED_LO_a|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_LO_a|Mux6~0_combout\ = (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(0) & ((\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(3)) # (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(1) $ (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(2))))) # 
-- (!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(0) & ((\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(1)) # (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(3) $ (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(1),
	datab => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(0),
	datac => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(3),
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(2),
	combout => \U_LED_LO_a|Mux6~0_combout\);

-- Location: LCCOMB_X22_Y20_N10
\U_LED_LO_a|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_LO_a|Mux5~0_combout\ = (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(1) & (!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(3) & ((\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(0)) # (!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(2))))) # 
-- (!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(1) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(0) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(3) $ (!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(1),
	datab => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(0),
	datac => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(3),
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(2),
	combout => \U_LED_LO_a|Mux5~0_combout\);

-- Location: LCCOMB_X22_Y20_N20
\U_LED_LO_a|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_LO_a|Mux4~0_combout\ = (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(1) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(0) & (!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(3)))) # (!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(1) & 
-- ((\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(2) & ((!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(3)))) # (!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(2) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(1),
	datab => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(0),
	datac => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(3),
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(2),
	combout => \U_LED_LO_a|Mux4~0_combout\);

-- Location: LCCOMB_X22_Y20_N22
\U_LED_LO_a|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_LO_a|Mux3~0_combout\ = (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(0) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(1) $ (((!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(2)))))) # (!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(0) & 
-- ((\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(1) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(3) & !\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(2))) # (!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(1) & (!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(3) & 
-- \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(1),
	datab => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(0),
	datac => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(3),
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(2),
	combout => \U_LED_LO_a|Mux3~0_combout\);

-- Location: LCCOMB_X22_Y20_N0
\U_LED_LO_a|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_LO_a|Mux2~0_combout\ = (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(3) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(2) & ((\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(1)) # (!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(0))))) # 
-- (!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(3) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(1) & (!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(0) & !\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(1),
	datab => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(0),
	datac => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(3),
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(2),
	combout => \U_LED_LO_a|Mux2~0_combout\);

-- Location: LCCOMB_X22_Y20_N12
\U_LED_LO_a|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_LO_a|Mux1~0_combout\ = (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(3) & ((\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(0) & ((\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(1)))) # (!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(0) & 
-- (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(2))))) # (!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(3) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(2) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(0) $ (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(3),
	datab => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(0),
	datac => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(2),
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(1),
	combout => \U_LED_LO_a|Mux1~0_combout\);

-- Location: LCCOMB_X22_Y20_N30
\U_LED_LO_a|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_LO_a|Mux0~0_combout\ = (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(3) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(0) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(1) $ (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(2))))) # 
-- (!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(3) & (!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(1) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(0) $ (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(1),
	datab => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(0),
	datac => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(3),
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(2),
	combout => \U_LED_LO_a|Mux0~0_combout\);

-- Location: LCCOMB_X30_Y28_N16
\U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_udr~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_udr~0_combout\ = (\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_q\ & (!\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\ & 
-- \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_q\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	combout => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_udr~0_combout\);

-- Location: FF_X33_Y28_N7
\U_jtag_wrapper|U_TDI_SHIFTER|output_address[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(8),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_udr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(7));

-- Location: FF_X33_Y28_N17
\U_jtag_wrapper|U_TDI_SHIFTER|output_address[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(5),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_udr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(4));

-- Location: FF_X33_Y28_N5
\U_jtag_wrapper|U_TDI_SHIFTER|output_address[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(7),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_udr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(6));

-- Location: FF_X33_Y28_N11
\U_jtag_wrapper|U_TDI_SHIFTER|output_address[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(6),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_udr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(5));

-- Location: LCCOMB_X33_Y28_N18
\U_LED_HI_b|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_HI_b|Mux6~0_combout\ = (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(4) & ((\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(7)) # (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(6) $ (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(5))))) # 
-- (!\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(4) & ((\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(5)) # (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(7) $ (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(7),
	datab => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(4),
	datac => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(6),
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(5),
	combout => \U_LED_HI_b|Mux6~0_combout\);

-- Location: LCCOMB_X33_Y28_N22
\U_LED_HI_b|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_HI_b|Mux5~0_combout\ = (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(4) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(7) $ (((\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(5)) # (!\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(6)))))) # 
-- (!\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(4) & (!\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(7) & (!\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(6) & \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(7),
	datab => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(4),
	datac => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(6),
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(5),
	combout => \U_LED_HI_b|Mux5~0_combout\);

-- Location: LCCOMB_X33_Y28_N20
\U_LED_HI_b|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_HI_b|Mux4~0_combout\ = (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(5) & (!\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(7) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(4)))) # (!\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(5) & 
-- ((\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(6) & (!\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(7))) # (!\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(6) & ((\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(7),
	datab => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(4),
	datac => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(6),
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(5),
	combout => \U_LED_HI_b|Mux4~0_combout\);

-- Location: LCCOMB_X33_Y28_N16
\U_LED_HI_b|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_HI_b|Mux3~0_combout\ = (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(4) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(5) $ ((!\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(6))))) # (!\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(4) & 
-- ((\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(5) & (!\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(6) & \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(7))) # (!\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(5) & 
-- (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(6) & !\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(5),
	datab => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(6),
	datac => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(4),
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(7),
	combout => \U_LED_HI_b|Mux3~0_combout\);

-- Location: LCCOMB_X33_Y28_N10
\U_LED_HI_b|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_HI_b|Mux2~0_combout\ = (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(7) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(6) & ((\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(5)) # (!\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(4))))) # 
-- (!\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(7) & (!\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(6) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(5) & !\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(7),
	datab => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(6),
	datac => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(5),
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(4),
	combout => \U_LED_HI_b|Mux2~0_combout\);

-- Location: LCCOMB_X33_Y28_N4
\U_LED_HI_b|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_HI_b|Mux1~0_combout\ = (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(7) & ((\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(4) & ((\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(5)))) # (!\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(4) & 
-- (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(6))))) # (!\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(7) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(6) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(4) $ 
-- (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(7),
	datab => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(4),
	datac => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(6),
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(5),
	combout => \U_LED_HI_b|Mux1~0_combout\);

-- Location: LCCOMB_X33_Y28_N6
\U_LED_HI_b|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_HI_b|Mux0~0_combout\ = (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(6) & (!\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(5) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(7) $ (!\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(4))))) # 
-- (!\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(6) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(4) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(5) $ (!\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(5),
	datab => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(6),
	datac => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(7),
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(4),
	combout => \U_LED_HI_b|Mux0~0_combout\);

-- Location: FF_X30_Y28_N29
\U_jtag_wrapper|U_TDI_SHIFTER|output_address[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(4),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_udr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(3));

-- Location: FF_X30_Y28_N19
\U_jtag_wrapper|U_TDI_SHIFTER|output_address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(3),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_udr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(2));

-- Location: FF_X30_Y28_N11
\U_jtag_wrapper|U_TDI_SHIFTER|output_address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(1),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_udr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(0));

-- Location: FF_X30_Y28_N21
\U_jtag_wrapper|U_TDI_SHIFTER|output_address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(2),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_udr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(1));

-- Location: LCCOMB_X30_Y28_N26
\U_LED_LO_b|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_LO_b|Mux6~0_combout\ = (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(0) & ((\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(3)) # (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(2) $ (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(1))))) # 
-- (!\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(0) & ((\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(1)) # (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(3) $ (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(3),
	datab => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(2),
	datac => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(0),
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(1),
	combout => \U_LED_LO_b|Mux6~0_combout\);

-- Location: LCCOMB_X30_Y28_N14
\U_LED_LO_b|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_LO_b|Mux5~0_combout\ = (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(2) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(0) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(3) $ (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(1))))) # 
-- (!\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(2) & (!\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(3) & ((\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(0)) # (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(3),
	datab => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(2),
	datac => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(0),
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(1),
	combout => \U_LED_LO_b|Mux5~0_combout\);

-- Location: LCCOMB_X30_Y28_N24
\U_LED_LO_b|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_LO_b|Mux4~0_combout\ = (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(1) & (!\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(3) & ((\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(0))))) # (!\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(1) & 
-- ((\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(2) & (!\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(3))) # (!\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(2) & ((\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(3),
	datab => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(2),
	datac => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(0),
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(1),
	combout => \U_LED_LO_b|Mux4~0_combout\);

-- Location: LCCOMB_X30_Y28_N10
\U_LED_LO_b|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_LO_b|Mux3~0_combout\ = (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(0) & ((\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(2) $ (!\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(1))))) # (!\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(0) & 
-- ((\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(3) & (!\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(2) & \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(1))) # (!\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(3) & 
-- (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(2) & !\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(3),
	datab => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(2),
	datac => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(0),
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(1),
	combout => \U_LED_LO_b|Mux3~0_combout\);

-- Location: LCCOMB_X30_Y28_N20
\U_LED_LO_b|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_LO_b|Mux2~0_combout\ = (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(3) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(2) & ((\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(1)) # (!\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(0))))) # 
-- (!\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(3) & (!\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(0) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(1) & !\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(0),
	datab => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(3),
	datac => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(1),
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(2),
	combout => \U_LED_LO_b|Mux2~0_combout\);

-- Location: LCCOMB_X30_Y28_N18
\U_LED_LO_b|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_LO_b|Mux1~0_combout\ = (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(3) & ((\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(0) & ((\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(1)))) # (!\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(0) & 
-- (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(2))))) # (!\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(3) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(2) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(0) $ 
-- (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(0),
	datab => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(3),
	datac => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(2),
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(1),
	combout => \U_LED_LO_b|Mux1~0_combout\);

-- Location: LCCOMB_X30_Y28_N28
\U_LED_LO_b|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_LO_b|Mux0~0_combout\ = (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(2) & (!\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(1) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(0) $ (!\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(3))))) # 
-- (!\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(2) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(0) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(3) $ (!\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(0),
	datab => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(2),
	datac => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(3),
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(1),
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

-- Location: FF_X22_Y18_N11
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

-- Location: FF_X22_Y18_N13
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

-- Location: FF_X22_Y18_N15
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

-- Location: LCCOMB_X9_Y20_N0
\auto_hub|~GND\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
;

-- Location: LCCOMB_X19_Y19_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~_wirecell\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~q\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~_wirecell_combout\);

-- Location: LCCOMB_X21_Y20_N0
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


