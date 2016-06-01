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

-- DATE "06/01/2016 14:03:46"

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
SIGNAL \altera_internal_jtag~TCKUTAP\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[3]~19\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[4]~20_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~4_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~5_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~8_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~9_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~17_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~20_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~21_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~22_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~23_combout\ : std_logic;
SIGNAL \auto_hub|~GND~combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~_wirecell_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[0]~_wirecell_combout\ : std_logic;
SIGNAL \altera_internal_jtag~TCKUTAPclkctrl_outclk\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~feeder_combout\ : std_logic;
SIGNAL \altera_reserved_tck~input_o\ : std_logic;
SIGNAL \altera_reserved_tdi~input_o\ : std_logic;
SIGNAL \altera_internal_jtag~TMSUTAP\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~6_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~7_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_dr_scan_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~8_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~10_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~11_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~12_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~9_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[8]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[6]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[4]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[3]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[2]~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[0]~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal1~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~11_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~14\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[2]~17\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[3]~18_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~23_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~15_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~22_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~12\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~13_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~11_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~12_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[1]~13_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~4_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~10_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[2]~16_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~7_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~14_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~6_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~6_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[4]~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~5_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal3~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[0]~4_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~7_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~8_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[2]~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~4_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]~6\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]~9_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]~5_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~8_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~13_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~7_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]~10\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]~11_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]~12\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]~14\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~15_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~14_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~15_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]~13_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~24_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~25_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[3]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[2]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[1]~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[2]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[2]~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~16_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~18_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~19_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~5_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~_wirecell_combout\ : std_logic;
SIGNAL \altera_internal_jtag~TDIUTAP\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[31]~feeder_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[21]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[20]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[17]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[16]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[15]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[13]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[12]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[11]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[10]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[9]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[7]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[5]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[4]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[2]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[0]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDI_SHIFTER|state~10_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDI_SHIFTER|state.GET_ADDR_WRITE~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDI_SHIFTER|state.WRITE_DATA~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDI_SHIFTER|state.WRITE_DATA~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDI_SHIFTER|state~11_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDI_SHIFTER|state.GET_ADDR_READ~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDI_SHIFTER|state.READ_DATA~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDI_SHIFTER|state.READ_DATA~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDI_SHIFTER|Selector0~0_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDI_SHIFTER|Selector0~1_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDI_SHIFTER|state.INIT~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[0]~0_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[0]~1_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[30]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[29]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[27]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[25]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[24]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[23]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_TDI_SHIFTER|WideOr5~combout\ : std_logic;
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
SIGNAL \U_jtag_wrapper|U_TDI_SHIFTER|output_address~0_combout\ : std_logic;
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
SIGNAL \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U_jtag_wrapper|U_TDI_SHIFTER|output_data\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \U_jtag_wrapper|U_TDI_SHIFTER|output_address\ : std_logic_vector(14 DOWNTO 0);
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

-- Location: FF_X17_Y16_N11
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

-- Location: LCCOMB_X17_Y16_N8
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

-- Location: LCCOMB_X17_Y16_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[4]~20\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(4),
	cin => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[3]~19\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[4]~20_combout\);

-- Location: FF_X11_Y14_N17
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~q\);

-- Location: FF_X11_Y14_N11
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

-- Location: LCCOMB_X10_Y16_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~3\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~0_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~1_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~q\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~3_combout\);

-- Location: LCCOMB_X10_Y16_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~4\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~3_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~4_combout\);

-- Location: LCCOMB_X11_Y14_N6
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

-- Location: LCCOMB_X12_Y15_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datab => \altera_internal_jtag~TDIUTAP\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~0_combout\);

-- Location: FF_X12_Y15_N17
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

-- Location: LCCOMB_X12_Y15_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~1\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~0_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(1),
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~1_combout\);

-- Location: LCCOMB_X12_Y15_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~0_combout\);

-- Location: LCCOMB_X10_Y15_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~1\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(3),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(5),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~1_combout\);

-- Location: FF_X11_Y20_N7
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

-- Location: FF_X11_Y16_N13
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

-- Location: LCCOMB_X11_Y14_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~5\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \~GND~combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~5_combout\);

-- Location: LCCOMB_X11_Y14_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~0_combout\);

-- Location: LCCOMB_X12_Y15_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~1\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg_proc~0_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~0_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~1_combout\);

-- Location: LCCOMB_X11_Y14_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~2\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~2_combout\);

-- Location: FF_X10_Y19_N3
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

-- Location: FF_X11_Y16_N31
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

-- Location: LCCOMB_X11_Y16_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~1\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~1_combout\);

-- Location: FF_X11_Y16_N17
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

-- Location: LCCOMB_X11_Y16_N30
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~2\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~2_combout\);

-- Location: LCCOMB_X17_Y16_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~8\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(2),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~8_combout\);

-- Location: LCCOMB_X17_Y16_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~9\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~8_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~9_combout\);

-- Location: LCCOMB_X15_Y20_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~17\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~17_combout\);

-- Location: LCCOMB_X11_Y16_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~3\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datad => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~3_combout\);

-- Location: LCCOMB_X15_Y20_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~20\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~20_combout\);

-- Location: LCCOMB_X15_Y20_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~21\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~20_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~21_combout\);

-- Location: LCCOMB_X15_Y20_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~22\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~22_combout\);

-- Location: LCCOMB_X15_Y20_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~23\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~22_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~23_combout\);

-- Location: CLKCTRL_G0
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

-- Location: LCCOMB_X11_Y14_N14
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~feeder_combout\);

-- Location: LCCOMB_X11_Y14_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]~feeder_combout\);

-- Location: LCCOMB_X11_Y14_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~feeder_combout\);

-- Location: LCCOMB_X11_Y20_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~feeder_combout\);

-- Location: LCCOMB_X10_Y19_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~feeder_combout\);

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

-- Location: LCCOMB_X14_Y14_N6
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

-- Location: FF_X14_Y14_N7
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

-- Location: LCCOMB_X16_Y14_N2
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

-- Location: FF_X16_Y14_N3
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

-- Location: LCCOMB_X16_Y14_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~0_combout\);

-- Location: FF_X16_Y14_N9
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

-- Location: LCCOMB_X14_Y14_N24
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

-- Location: FF_X14_Y14_N25
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

-- Location: LCCOMB_X11_Y16_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~6\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(5),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(6),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~6_combout\);

-- Location: FF_X11_Y16_N21
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

-- Location: LCCOMB_X11_Y16_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~7\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(6),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~7_combout\);

-- Location: FF_X11_Y16_N1
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

-- Location: LCCOMB_X11_Y16_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_proc~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(5),
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(7),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_proc~0_combout\);

-- Location: FF_X11_Y16_N27
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

-- Location: LCCOMB_X14_Y14_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_dr_scan_proc~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(14),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(12),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_dr_scan_proc~0_combout\);

-- Location: FF_X14_Y14_N21
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

-- Location: LCCOMB_X14_Y14_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~1\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(15),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~1_combout\);

-- Location: FF_X14_Y14_N17
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

-- Location: LCCOMB_X14_Y14_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~2\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(1),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(15),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~2_combout\);

-- Location: FF_X14_Y14_N19
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

-- Location: LCCOMB_X14_Y14_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~1\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~1_combout\);

-- Location: FF_X14_Y14_N13
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

-- Location: LCCOMB_X14_Y14_N30
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

-- Location: FF_X14_Y14_N31
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

-- Location: LCCOMB_X14_Y14_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~10\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(10),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~10_combout\);

-- Location: FF_X14_Y14_N1
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

-- Location: LCCOMB_X14_Y14_N28
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

-- Location: FF_X14_Y14_N29
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

-- Location: LCCOMB_X14_Y14_N26
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

-- Location: FF_X14_Y14_N27
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

-- Location: LCCOMB_X14_Y14_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~9\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(10),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(14),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~9_combout\);

-- Location: FF_X14_Y14_N3
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

-- Location: FF_X10_Y15_N29
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

-- Location: LCCOMB_X10_Y15_N14
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[8]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(9),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[8]~feeder_combout\);

-- Location: FF_X10_Y15_N15
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

-- Location: FF_X10_Y15_N17
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

-- Location: LCCOMB_X10_Y15_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(6),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(8),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(9),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(7),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~0_combout\);

-- Location: LCCOMB_X10_Y15_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[6]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(7),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[6]~feeder_combout\);

-- Location: FF_X10_Y15_N27
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

-- Location: FF_X10_Y15_N23
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

-- Location: LCCOMB_X10_Y15_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[4]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(5),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[4]~feeder_combout\);

-- Location: FF_X10_Y15_N25
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

-- Location: LCCOMB_X10_Y15_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[3]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[3]~feeder_combout\);

-- Location: FF_X10_Y15_N13
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

-- Location: LCCOMB_X10_Y15_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[2]~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[2]~0_combout\);

-- Location: FF_X10_Y15_N19
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

-- Location: LCCOMB_X10_Y15_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[1]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[1]~feeder_combout\);

-- Location: FF_X10_Y15_N21
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

-- Location: LCCOMB_X10_Y15_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[0]~1\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[0]~1_combout\);

-- Location: FF_X10_Y15_N7
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

-- Location: LCCOMB_X10_Y15_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal1~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~1_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~0_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal1~0_combout\);

-- Location: FF_X10_Y15_N1
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

-- Location: LCCOMB_X17_Y16_N2
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

-- Location: LCCOMB_X17_Y16_N4
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

-- Location: LCCOMB_X17_Y16_N6
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

-- Location: LCCOMB_X12_Y15_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~3\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~3_combout\);

-- Location: FF_X12_Y15_N29
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

-- Location: LCCOMB_X10_Y15_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~2\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~1_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~0_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~2_combout\);

-- Location: FF_X10_Y15_N11
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

-- Location: LCCOMB_X17_Y16_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\);

-- Location: LCCOMB_X17_Y16_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~23\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~23_combout\);

-- Location: FF_X17_Y16_N9
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

-- Location: LCCOMB_X17_Y16_N14
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~15\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(2),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(1),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~15_combout\);

-- Location: LCCOMB_X17_Y16_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~22\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~15_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~22_combout\);

-- Location: FF_X17_Y16_N3
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

-- Location: FF_X17_Y16_N5
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

-- Location: LCCOMB_X17_Y16_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~11\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(2),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(1),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~11_combout\);

-- Location: LCCOMB_X17_Y16_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~12\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~11_combout\,
	datac => \altera_internal_jtag~TDIUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~12_combout\);

-- Location: LCCOMB_X17_Y16_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[1]~13\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[1]~13_combout\);

-- Location: FF_X17_Y16_N25
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

-- Location: LCCOMB_X11_Y16_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~4\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(7),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~4_combout\);

-- Location: FF_X11_Y16_N19
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

-- Location: LCCOMB_X17_Y16_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~10\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~9_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~10_combout\);

-- Location: FF_X17_Y16_N29
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

-- Location: FF_X17_Y16_N7
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

-- Location: LCCOMB_X17_Y16_N30
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~7\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(2),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~7_combout\);

-- Location: LCCOMB_X10_Y16_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~14\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~7_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~14_combout\);

-- Location: FF_X10_Y16_N19
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

-- Location: LCCOMB_X10_Y16_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~6\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(1),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~6_combout\);

-- Location: FF_X10_Y16_N3
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

-- Location: LCCOMB_X11_Y16_N8
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

-- Location: LCCOMB_X11_Y14_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~6\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datad => \~GND~combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~6_combout\);

-- Location: LCCOMB_X10_Y19_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[4]~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TDIUTAP\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[4]~0_combout\);

-- Location: FF_X10_Y19_N9
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

-- Location: LCCOMB_X11_Y16_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~5\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datac => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~5_combout\);

-- Location: FF_X11_Y16_N23
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

-- Location: LCCOMB_X11_Y16_N24
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

-- Location: FF_X11_Y16_N25
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

-- Location: LCCOMB_X11_Y16_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~3\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~2_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg~q\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~3_combout\);

-- Location: FF_X11_Y16_N3
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

-- Location: LCCOMB_X14_Y14_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg_proc~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg_proc~0_combout\);

-- Location: FF_X14_Y14_N23
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

-- Location: LCCOMB_X11_Y14_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal3~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal3~0_combout\);

-- Location: LCCOMB_X12_Y15_N18
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

-- Location: FF_X12_Y15_N19
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

-- Location: LCCOMB_X12_Y15_N8
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

-- Location: LCCOMB_X12_Y15_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~1\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \~GND~combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[2]~3_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~7_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~1_combout\);

-- Location: LCCOMB_X12_Y15_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~8\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~8_combout\);

-- Location: FF_X12_Y15_N25
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

-- Location: LCCOMB_X12_Y15_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[2]~3\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[2]~3_combout\);

-- Location: LCCOMB_X12_Y15_N14
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~4\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[2]~3_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~4_combout\);

-- Location: FF_X11_Y14_N29
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

-- Location: LCCOMB_X11_Y14_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~2\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datad => \~GND~combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~2_combout\);

-- Location: FF_X11_Y14_N9
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

-- Location: LCCOMB_X11_Y16_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(1),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~0_combout\);

-- Location: LCCOMB_X10_Y16_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~0_combout\);

-- Location: FF_X11_Y16_N7
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

-- Location: LCCOMB_X10_Y16_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~0_combout\);

-- Location: LCCOMB_X10_Y16_N30
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~1\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(4),
	datab => \~GND~combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~1_combout\);

-- Location: LCCOMB_X11_Y16_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \altera_internal_jtag~TDIUTAP\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~0_combout\);

-- Location: FF_X11_Y16_N29
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

-- Location: LCCOMB_X10_Y16_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~2\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~0_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~1_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~q\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~2_combout\);

-- Location: LCCOMB_X15_Y20_N12
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

-- Location: LCCOMB_X15_Y20_N14
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]~9\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	datad => VCC,
	cin => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]~6\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]~9_combout\,
	cout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]~10\);

-- Location: LCCOMB_X10_Y16_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~8\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~q\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~8_combout\);

-- Location: FF_X15_Y20_N13
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
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~7_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0));

-- Location: LCCOMB_X15_Y20_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~13\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~13_combout\);

-- Location: LCCOMB_X15_Y20_N30
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~7\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~16_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~13_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~7_combout\);

-- Location: FF_X15_Y20_N15
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
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~7_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1));

-- Location: LCCOMB_X15_Y20_N16
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

-- Location: FF_X15_Y20_N17
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
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~7_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2));

-- Location: LCCOMB_X15_Y20_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]~13\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datad => VCC,
	cin => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]~12\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]~13_combout\,
	cout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]~14\);

-- Location: LCCOMB_X15_Y20_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~15\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	cin => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]~14\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~15_combout\);

-- Location: FF_X15_Y20_N21
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~15_combout\,
	asdata => VCC,
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~7_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4));

-- Location: LCCOMB_X15_Y20_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~14\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~14_combout\);

-- Location: LCCOMB_X15_Y20_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~15\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~14_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~15_combout\);

-- Location: FF_X15_Y20_N19
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]~13_combout\,
	asdata => VCC,
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~7_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3));

-- Location: LCCOMB_X15_Y20_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~24\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~24_combout\);

-- Location: LCCOMB_X15_Y20_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~25\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~24_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~25_combout\);

-- Location: LCCOMB_X11_Y20_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[0]~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(0),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~15_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~25_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[0]~0_combout\);

-- Location: LCCOMB_X10_Y19_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[3]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[3]~feeder_combout\);

-- Location: LCCOMB_X10_Y16_N20
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

-- Location: LCCOMB_X10_Y16_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~1\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~0_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~1_combout\);

-- Location: FF_X10_Y19_N17
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

-- Location: LCCOMB_X10_Y19_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[2]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[2]~feeder_combout\);

-- Location: FF_X10_Y19_N23
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

-- Location: LCCOMB_X10_Y19_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[1]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[1]~feeder_combout\);

-- Location: FF_X10_Y19_N13
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

-- Location: LCCOMB_X11_Y20_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[1]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[1]~feeder_combout\);

-- Location: LCCOMB_X10_Y16_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~0_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~0_combout\);

-- Location: FF_X11_Y20_N1
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

-- Location: LCCOMB_X11_Y20_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[1]~1\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~23_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~15_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[1]~1_combout\);

-- Location: LCCOMB_X11_Y20_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[2]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[2]~feeder_combout\);

-- Location: FF_X11_Y20_N3
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

-- Location: LCCOMB_X11_Y20_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[2]~2\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~21_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~15_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[2]~2_combout\);

-- Location: LCCOMB_X11_Y23_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~16\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~16_combout\);

-- Location: FF_X11_Y23_N27
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

-- Location: LCCOMB_X11_Y23_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~18\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~17_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~16_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~18_combout\);

-- Location: LCCOMB_X11_Y20_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~19\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_proc~0_combout\,
	datab => \altera_internal_jtag~TDIUTAP\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~18_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~19_combout\);

-- Location: LCCOMB_X12_Y15_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~combout\);

-- Location: FF_X11_Y20_N13
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~19_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\(3));

-- Location: LCCOMB_X10_Y16_N8
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

-- Location: FF_X11_Y20_N5
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

-- Location: FF_X11_Y20_N27
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

-- Location: FF_X11_Y20_N17
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

-- Location: LCCOMB_X10_Y16_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~5\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101101011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~4_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~2_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~5_combout\);

-- Location: FF_X10_Y16_N1
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

-- Location: LCCOMB_X10_Y16_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~_wirecell\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~q\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~_wirecell_combout\);

-- Location: LCCOMB_X30_Y27_N12
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

-- Location: LCCOMB_X12_Y15_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~2\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~0_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~q\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(15),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~2_combout\);

-- Location: LCCOMB_X12_Y15_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~3\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~1_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~1_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~2_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~3_combout\);

-- Location: FF_X12_Y15_N3
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

-- Location: FF_X35_Y27_N27
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
	ena => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(22));

-- Location: LCCOMB_X35_Y27_N30
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

-- Location: FF_X35_Y27_N31
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
	ena => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(21));

-- Location: LCCOMB_X35_Y27_N16
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

-- Location: FF_X35_Y27_N17
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
	ena => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(20));

-- Location: FF_X23_Y28_N27
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
	ena => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(19));

-- Location: FF_X23_Y28_N19
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
	ena => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(18));

-- Location: LCCOMB_X23_Y28_N10
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

-- Location: FF_X23_Y28_N11
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
	ena => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(17));

-- Location: LCCOMB_X23_Y28_N22
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

-- Location: FF_X23_Y28_N23
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
	ena => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(16));

-- Location: LCCOMB_X23_Y28_N14
\U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[15]~feeder_combout\ = \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(16),
	combout => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[15]~feeder_combout\);

-- Location: FF_X23_Y28_N15
\U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[15]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(15));

-- Location: FF_X23_Y28_N29
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
	ena => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(14));

-- Location: LCCOMB_X23_Y28_N24
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

-- Location: FF_X23_Y28_N25
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
	ena => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(13));

-- Location: LCCOMB_X33_Y28_N24
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

-- Location: FF_X33_Y28_N25
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
	ena => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(12));

-- Location: LCCOMB_X33_Y28_N12
\U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[11]~feeder_combout\ = \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(12),
	combout => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[11]~feeder_combout\);

-- Location: FF_X33_Y28_N13
\U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[11]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(11));

-- Location: LCCOMB_X33_Y28_N28
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

-- Location: FF_X33_Y28_N29
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
	ena => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(10));

-- Location: LCCOMB_X33_Y28_N26
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

-- Location: FF_X33_Y28_N27
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
	ena => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(9));

-- Location: FF_X33_Y28_N9
\U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(9),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(8));

-- Location: LCCOMB_X33_Y28_N22
\U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[7]~feeder_combout\ = \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(8),
	combout => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[7]~feeder_combout\);

-- Location: FF_X33_Y28_N23
\U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[7]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(7));

-- Location: FF_X33_Y28_N21
\U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[6]\ : dffeas
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
	ena => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(6));

-- Location: LCCOMB_X33_Y28_N30
\U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[5]~feeder_combout\ = \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(6),
	combout => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[5]~feeder_combout\);

-- Location: FF_X33_Y28_N31
\U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[5]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(5));

-- Location: LCCOMB_X30_Y27_N6
\U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[4]~feeder_combout\ = \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(5),
	combout => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[4]~feeder_combout\);

-- Location: FF_X30_Y27_N7
\U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[4]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(4));

-- Location: FF_X30_Y27_N31
\U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[3]\ : dffeas
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
	ena => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(3));

-- Location: LCCOMB_X30_Y27_N22
\U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[2]~feeder_combout\ = \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(3),
	combout => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[2]~feeder_combout\);

-- Location: FF_X30_Y27_N23
\U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[2]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(2));

-- Location: FF_X30_Y27_N29
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
	ena => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(1));

-- Location: LCCOMB_X30_Y27_N16
\U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[0]~feeder_combout\ = \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(1),
	combout => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[0]~feeder_combout\);

-- Location: FF_X30_Y27_N17
\U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[0]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(0));

-- Location: LCCOMB_X14_Y17_N24
\U_jtag_wrapper|U_TDI_SHIFTER|state~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDI_SHIFTER|state~10_combout\ = (\U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[0]~0_combout\ & (\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8) & \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[0]~0_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(0),
	combout => \U_jtag_wrapper|U_TDI_SHIFTER|state~10_combout\);

-- Location: FF_X14_Y17_N25
\U_jtag_wrapper|U_TDI_SHIFTER|state.GET_ADDR_WRITE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_TDI_SHIFTER|state~10_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|state.GET_ADDR_WRITE~q\);

-- Location: LCCOMB_X14_Y17_N0
\U_jtag_wrapper|U_TDI_SHIFTER|state.WRITE_DATA~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDI_SHIFTER|state.WRITE_DATA~feeder_combout\ = \U_jtag_wrapper|U_TDI_SHIFTER|state.GET_ADDR_WRITE~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|state.GET_ADDR_WRITE~q\,
	combout => \U_jtag_wrapper|U_TDI_SHIFTER|state.WRITE_DATA~feeder_combout\);

-- Location: FF_X14_Y17_N1
\U_jtag_wrapper|U_TDI_SHIFTER|state.WRITE_DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_TDI_SHIFTER|state.WRITE_DATA~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|state.WRITE_DATA~q\);

-- Location: LCCOMB_X14_Y17_N2
\U_jtag_wrapper|U_TDI_SHIFTER|state~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDI_SHIFTER|state~11_combout\ = (\U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[0]~0_combout\ & (\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8) & !\U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[0]~0_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(0),
	combout => \U_jtag_wrapper|U_TDI_SHIFTER|state~11_combout\);

-- Location: FF_X14_Y17_N3
\U_jtag_wrapper|U_TDI_SHIFTER|state.GET_ADDR_READ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_TDI_SHIFTER|state~11_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|state.GET_ADDR_READ~q\);

-- Location: LCCOMB_X14_Y17_N26
\U_jtag_wrapper|U_TDI_SHIFTER|state.READ_DATA~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDI_SHIFTER|state.READ_DATA~feeder_combout\ = \U_jtag_wrapper|U_TDI_SHIFTER|state.GET_ADDR_READ~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|state.GET_ADDR_READ~q\,
	combout => \U_jtag_wrapper|U_TDI_SHIFTER|state.READ_DATA~feeder_combout\);

-- Location: FF_X14_Y17_N27
\U_jtag_wrapper|U_TDI_SHIFTER|state.READ_DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_TDI_SHIFTER|state.READ_DATA~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|state.READ_DATA~q\);

-- Location: LCCOMB_X14_Y17_N6
\U_jtag_wrapper|U_TDI_SHIFTER|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDI_SHIFTER|Selector0~0_combout\ = (!\U_jtag_wrapper|U_TDI_SHIFTER|state.INIT~q\ & (((\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\) # (!\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8))) # 
-- (!\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_q\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|state.INIT~q\,
	combout => \U_jtag_wrapper|U_TDI_SHIFTER|Selector0~0_combout\);

-- Location: LCCOMB_X14_Y17_N12
\U_jtag_wrapper|U_TDI_SHIFTER|Selector0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDI_SHIFTER|Selector0~1_combout\ = (!\U_jtag_wrapper|U_TDI_SHIFTER|state.WRITE_DATA~q\ & (!\U_jtag_wrapper|U_TDI_SHIFTER|state.READ_DATA~q\ & !\U_jtag_wrapper|U_TDI_SHIFTER|Selector0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_jtag_wrapper|U_TDI_SHIFTER|state.WRITE_DATA~q\,
	datac => \U_jtag_wrapper|U_TDI_SHIFTER|state.READ_DATA~q\,
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|Selector0~0_combout\,
	combout => \U_jtag_wrapper|U_TDI_SHIFTER|Selector0~1_combout\);

-- Location: FF_X14_Y17_N13
\U_jtag_wrapper|U_TDI_SHIFTER|state.INIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_TDI_SHIFTER|Selector0~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|state.INIT~q\);

-- Location: LCCOMB_X14_Y17_N18
\U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[0]~0_combout\ = (!\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\ & (\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_q\ & !\U_jtag_wrapper|U_TDI_SHIFTER|state.INIT~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_q\,
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|state.INIT~q\,
	combout => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[0]~0_combout\);

-- Location: LCCOMB_X14_Y17_N4
\U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[0]~1_combout\ = (\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~q\ & (\U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[0]~0_combout\ & \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~q\,
	datab => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[0]~0_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	combout => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[0]~1_combout\);

-- Location: FF_X30_Y27_N13
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
	ena => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(31));

-- Location: LCCOMB_X30_Y27_N2
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

-- Location: FF_X30_Y27_N3
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
	ena => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(30));

-- Location: LCCOMB_X30_Y27_N24
\U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[29]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[29]~feeder_combout\ = \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(30),
	combout => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[29]~feeder_combout\);

-- Location: FF_X30_Y27_N25
\U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[29]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(29));

-- Location: FF_X30_Y27_N21
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
	ena => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(28));

-- Location: LCCOMB_X35_Y27_N12
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

-- Location: FF_X35_Y27_N13
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
	ena => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(27));

-- Location: FF_X35_Y27_N19
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
	ena => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(26));

-- Location: LCCOMB_X35_Y27_N20
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

-- Location: FF_X35_Y27_N21
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
	ena => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(25));

-- Location: LCCOMB_X35_Y27_N10
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

-- Location: FF_X35_Y27_N11
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
	ena => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(24));

-- Location: LCCOMB_X35_Y27_N14
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

-- Location: FF_X35_Y27_N15
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
	ena => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(23));

-- Location: LCCOMB_X14_Y17_N22
\U_jtag_wrapper|U_TDI_SHIFTER|WideOr5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDI_SHIFTER|WideOr5~combout\ = (\U_jtag_wrapper|U_TDI_SHIFTER|state.INIT~q\ & (!\U_jtag_wrapper|U_TDI_SHIFTER|state.GET_ADDR_WRITE~q\ & !\U_jtag_wrapper|U_TDI_SHIFTER|state.GET_ADDR_READ~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDI_SHIFTER|state.INIT~q\,
	datab => \U_jtag_wrapper|U_TDI_SHIFTER|state.GET_ADDR_WRITE~q\,
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|state.GET_ADDR_READ~q\,
	combout => \U_jtag_wrapper|U_TDI_SHIFTER|WideOr5~combout\);

-- Location: FF_X35_Y27_N29
\U_jtag_wrapper|U_TDI_SHIFTER|output_data[6]\ : dffeas
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
	ena => \U_jtag_wrapper|U_TDI_SHIFTER|WideOr5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(6));

-- Location: FF_X35_Y27_N3
\U_jtag_wrapper|U_TDI_SHIFTER|output_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(21),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_TDI_SHIFTER|WideOr5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(4));

-- Location: FF_X35_Y27_N25
\U_jtag_wrapper|U_TDI_SHIFTER|output_data[5]\ : dffeas
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
	ena => \U_jtag_wrapper|U_TDI_SHIFTER|WideOr5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(5));

-- Location: FF_X35_Y27_N5
\U_jtag_wrapper|U_TDI_SHIFTER|output_data[7]\ : dffeas
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
	ena => \U_jtag_wrapper|U_TDI_SHIFTER|WideOr5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(7));

-- Location: LCCOMB_X35_Y27_N8
\U_LED_HI_a|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_HI_a|Mux6~0_combout\ = (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(4) & ((\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(7)) # (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(6) $ (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(5))))) # 
-- (!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(4) & ((\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(5)) # (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(6) $ (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(6),
	datab => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(4),
	datac => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(5),
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(7),
	combout => \U_LED_HI_a|Mux6~0_combout\);

-- Location: LCCOMB_X35_Y27_N6
\U_LED_HI_a|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_HI_a|Mux5~0_combout\ = (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(6) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(4) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(5) $ (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(7))))) # 
-- (!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(6) & (!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(7) & ((\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(4)) # (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(6),
	datab => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(4),
	datac => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(5),
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(7),
	combout => \U_LED_HI_a|Mux5~0_combout\);

-- Location: LCCOMB_X35_Y27_N22
\U_LED_HI_a|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_HI_a|Mux4~0_combout\ = (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(5) & (((\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(4) & !\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(7))))) # (!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(5) & 
-- ((\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(6) & ((!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(7)))) # (!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(6) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(6),
	datab => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(4),
	datac => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(5),
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(7),
	combout => \U_LED_HI_a|Mux4~0_combout\);

-- Location: LCCOMB_X35_Y27_N2
\U_LED_HI_a|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_HI_a|Mux3~0_combout\ = (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(4) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(6) $ ((!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(5))))) # (!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(4) & 
-- ((\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(6) & (!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(5) & !\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(7))) # (!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(6) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(5) & 
-- \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(6),
	datab => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(5),
	datac => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(4),
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(7),
	combout => \U_LED_HI_a|Mux3~0_combout\);

-- Location: LCCOMB_X35_Y27_N24
\U_LED_HI_a|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_HI_a|Mux2~0_combout\ = (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(6) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(7) & ((\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(5)) # (!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(4))))) # 
-- (!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(6) & (!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(4) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(5) & !\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(6),
	datab => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(4),
	datac => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(5),
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(7),
	combout => \U_LED_HI_a|Mux2~0_combout\);

-- Location: LCCOMB_X35_Y27_N28
\U_LED_HI_a|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_HI_a|Mux1~0_combout\ = (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(7) & ((\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(4) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(5))) # (!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(4) & 
-- ((\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(6)))))) # (!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(7) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(6) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(5) $ (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(7),
	datab => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(5),
	datac => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(6),
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(4),
	combout => \U_LED_HI_a|Mux1~0_combout\);

-- Location: LCCOMB_X35_Y27_N4
\U_LED_HI_a|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_HI_a|Mux0~0_combout\ = (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(6) & (!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(5) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(7) $ (!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(4))))) # 
-- (!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(6) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(4) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(5) $ (!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(6),
	datab => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(5),
	datac => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(7),
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(4),
	combout => \U_LED_HI_a|Mux0~0_combout\);

-- Location: FF_X23_Y28_N31
\U_jtag_wrapper|U_TDI_SHIFTER|output_data[2]\ : dffeas
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
	ena => \U_jtag_wrapper|U_TDI_SHIFTER|WideOr5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(2));

-- Location: FF_X23_Y28_N21
\U_jtag_wrapper|U_TDI_SHIFTER|output_data[3]\ : dffeas
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
	ena => \U_jtag_wrapper|U_TDI_SHIFTER|WideOr5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(3));

-- Location: FF_X23_Y28_N5
\U_jtag_wrapper|U_TDI_SHIFTER|output_data[1]\ : dffeas
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
	ena => \U_jtag_wrapper|U_TDI_SHIFTER|WideOr5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(1));

-- Location: FF_X23_Y28_N1
\U_jtag_wrapper|U_TDI_SHIFTER|output_data[0]\ : dffeas
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
	ena => \U_jtag_wrapper|U_TDI_SHIFTER|WideOr5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(0));

-- Location: LCCOMB_X23_Y28_N12
\U_LED_LO_a|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_LO_a|Mux6~0_combout\ = (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(0) & ((\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(3)) # (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(2) $ (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(1))))) # 
-- (!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(0) & ((\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(1)) # (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(2) $ (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(2),
	datab => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(3),
	datac => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(1),
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(0),
	combout => \U_LED_LO_a|Mux6~0_combout\);

-- Location: LCCOMB_X23_Y28_N8
\U_LED_LO_a|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_LO_a|Mux5~0_combout\ = (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(2) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(0) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(3) $ (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(1))))) # 
-- (!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(2) & (!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(3) & ((\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(1)) # (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(2),
	datab => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(3),
	datac => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(1),
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(0),
	combout => \U_LED_LO_a|Mux5~0_combout\);

-- Location: LCCOMB_X23_Y28_N16
\U_LED_LO_a|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_LO_a|Mux4~0_combout\ = (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(1) & (((!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(3) & \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(0))))) # (!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(1) & 
-- ((\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(2) & (!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(3))) # (!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(2) & ((\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(2),
	datab => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(3),
	datac => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(1),
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(0),
	combout => \U_LED_LO_a|Mux4~0_combout\);

-- Location: LCCOMB_X23_Y28_N30
\U_LED_LO_a|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_LO_a|Mux3~0_combout\ = (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(0) & ((\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(1) $ (!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(2))))) # (!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(0) & 
-- ((\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(3) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(1) & !\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(2))) # (!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(3) & (!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(1) & 
-- \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(3),
	datab => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(1),
	datac => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(2),
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(0),
	combout => \U_LED_LO_a|Mux3~0_combout\);

-- Location: LCCOMB_X23_Y28_N20
\U_LED_LO_a|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_LO_a|Mux2~0_combout\ = (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(2) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(3) & ((\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(1)) # (!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(0))))) # 
-- (!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(2) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(1) & (!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(3) & !\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(2),
	datab => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(1),
	datac => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(3),
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(0),
	combout => \U_LED_LO_a|Mux2~0_combout\);

-- Location: LCCOMB_X23_Y28_N0
\U_LED_LO_a|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_LO_a|Mux1~0_combout\ = (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(1) & ((\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(0) & ((\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(3)))) # (!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(0) & 
-- (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(2))))) # (!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(1) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(2) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(0) $ (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(2),
	datab => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(1),
	datac => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(0),
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(3),
	combout => \U_LED_LO_a|Mux1~0_combout\);

-- Location: LCCOMB_X23_Y28_N4
\U_LED_LO_a|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_LO_a|Mux0~0_combout\ = (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(2) & (!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(1) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(3) $ (!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(0))))) # 
-- (!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(2) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(0) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(3) $ (!\U_jtag_wrapper|U_TDI_SHIFTER|output_data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(2),
	datab => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(3),
	datac => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(1),
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|output_data\(0),
	combout => \U_LED_LO_a|Mux0~0_combout\);

-- Location: LCCOMB_X14_Y17_N16
\U_jtag_wrapper|U_TDI_SHIFTER|output_address~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_TDI_SHIFTER|output_address~0_combout\ = (\U_jtag_wrapper|U_TDI_SHIFTER|state.GET_ADDR_WRITE~q\) # (\U_jtag_wrapper|U_TDI_SHIFTER|state.GET_ADDR_READ~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_jtag_wrapper|U_TDI_SHIFTER|state.GET_ADDR_WRITE~q\,
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|state.GET_ADDR_READ~q\,
	combout => \U_jtag_wrapper|U_TDI_SHIFTER|output_address~0_combout\);

-- Location: FF_X33_Y28_N15
\U_jtag_wrapper|U_TDI_SHIFTER|output_address[5]\ : dffeas
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
	ena => \U_jtag_wrapper|U_TDI_SHIFTER|output_address~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(5));

-- Location: FF_X33_Y28_N3
\U_jtag_wrapper|U_TDI_SHIFTER|output_address[6]\ : dffeas
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
	ena => \U_jtag_wrapper|U_TDI_SHIFTER|output_address~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(6));

-- Location: FF_X33_Y28_N5
\U_jtag_wrapper|U_TDI_SHIFTER|output_address[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(9),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_TDI_SHIFTER|output_address~0_combout\,
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
	asdata => \U_jtag_wrapper|U_TDI_SHIFTER|temp_RW\(6),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_TDI_SHIFTER|output_address~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(4));

-- Location: LCCOMB_X33_Y28_N18
\U_LED_HI_b|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_HI_b|Mux6~0_combout\ = (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(4) & ((\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(7)) # (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(5) $ (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(6))))) # 
-- (!\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(4) & ((\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(5)) # (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(6) $ (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(5),
	datab => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(6),
	datac => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(7),
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(4),
	combout => \U_LED_HI_b|Mux6~0_combout\);

-- Location: LCCOMB_X33_Y28_N10
\U_LED_HI_b|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_HI_b|Mux5~0_combout\ = (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(5) & (!\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(7) & ((\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(4)) # (!\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(6))))) # 
-- (!\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(5) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(4) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(6) $ (!\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(5),
	datab => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(6),
	datac => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(7),
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(4),
	combout => \U_LED_HI_b|Mux5~0_combout\);

-- Location: LCCOMB_X33_Y28_N6
\U_LED_HI_b|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_HI_b|Mux4~0_combout\ = (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(5) & (((!\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(7) & \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(4))))) # (!\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(5) & 
-- ((\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(6) & (!\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(7))) # (!\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(6) & ((\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(5),
	datab => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(6),
	datac => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(7),
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(4),
	combout => \U_LED_HI_b|Mux4~0_combout\);

-- Location: LCCOMB_X33_Y28_N16
\U_LED_HI_b|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_HI_b|Mux3~0_combout\ = (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(4) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(5) $ (((!\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(6)))))) # (!\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(4) & 
-- ((\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(5) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(7) & !\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(6))) # (!\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(5) & 
-- (!\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(7) & \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(5),
	datab => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(7),
	datac => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(4),
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(6),
	combout => \U_LED_HI_b|Mux3~0_combout\);

-- Location: LCCOMB_X33_Y28_N14
\U_LED_HI_b|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_HI_b|Mux2~0_combout\ = (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(7) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(6) & ((\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(5)) # (!\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(4))))) # 
-- (!\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(7) & (!\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(4) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(5) & !\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(4),
	datab => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(7),
	datac => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(5),
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(6),
	combout => \U_LED_HI_b|Mux2~0_combout\);

-- Location: LCCOMB_X33_Y28_N4
\U_LED_HI_b|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_HI_b|Mux1~0_combout\ = (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(5) & ((\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(4) & ((\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(7)))) # (!\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(4) & 
-- (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(6))))) # (!\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(5) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(6) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(7) $ 
-- (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(5),
	datab => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(6),
	datac => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(7),
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(4),
	combout => \U_LED_HI_b|Mux1~0_combout\);

-- Location: LCCOMB_X33_Y28_N2
\U_LED_HI_b|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_HI_b|Mux0~0_combout\ = (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(7) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(4) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(5) $ (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(6))))) # 
-- (!\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(7) & (!\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(5) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(6) $ (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(5),
	datab => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(7),
	datac => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(6),
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(4),
	combout => \U_LED_HI_b|Mux0~0_combout\);

-- Location: FF_X30_Y27_N27
\U_jtag_wrapper|U_TDI_SHIFTER|output_address[3]\ : dffeas
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
	ena => \U_jtag_wrapper|U_TDI_SHIFTER|output_address~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(3));

-- Location: FF_X30_Y27_N9
\U_jtag_wrapper|U_TDI_SHIFTER|output_address[1]\ : dffeas
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
	ena => \U_jtag_wrapper|U_TDI_SHIFTER|output_address~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(1));

-- Location: FF_X30_Y27_N1
\U_jtag_wrapper|U_TDI_SHIFTER|output_address[2]\ : dffeas
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
	ena => \U_jtag_wrapper|U_TDI_SHIFTER|output_address~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(2));

-- Location: FF_X30_Y27_N19
\U_jtag_wrapper|U_TDI_SHIFTER|output_address[0]\ : dffeas
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
	ena => \U_jtag_wrapper|U_TDI_SHIFTER|output_address~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(0));

-- Location: LCCOMB_X30_Y27_N0
\U_LED_LO_b|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_LO_b|Mux6~0_combout\ = (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(0) & ((\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(3)) # (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(1) $ (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(2))))) # 
-- (!\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(0) & ((\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(1)) # (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(3) $ (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(3),
	datab => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(1),
	datac => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(2),
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(0),
	combout => \U_LED_LO_b|Mux6~0_combout\);

-- Location: LCCOMB_X30_Y27_N18
\U_LED_LO_b|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_LO_b|Mux5~0_combout\ = (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(1) & (!\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(3) & ((\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(0)) # (!\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(2))))) # 
-- (!\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(1) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(0) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(3) $ (!\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(3),
	datab => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(1),
	datac => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(0),
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(2),
	combout => \U_LED_LO_b|Mux5~0_combout\);

-- Location: LCCOMB_X30_Y27_N14
\U_LED_LO_b|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_LO_b|Mux4~0_combout\ = (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(1) & (((!\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(3) & \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(0))))) # (!\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(1) & 
-- ((\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(2) & (!\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(3))) # (!\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(2) & ((\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(2),
	datab => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(1),
	datac => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(3),
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(0),
	combout => \U_LED_LO_b|Mux4~0_combout\);

-- Location: LCCOMB_X30_Y27_N4
\U_LED_LO_b|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_LO_b|Mux3~0_combout\ = (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(0) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(2) $ ((!\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(1))))) # (!\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(0) & 
-- ((\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(2) & (!\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(1) & !\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(3))) # (!\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(2) & 
-- (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(1) & \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(2),
	datab => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(1),
	datac => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(3),
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(0),
	combout => \U_LED_LO_b|Mux3~0_combout\);

-- Location: LCCOMB_X30_Y27_N10
\U_LED_LO_b|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_LO_b|Mux2~0_combout\ = (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(2) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(3) & ((\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(1)) # (!\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(0))))) # 
-- (!\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(2) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(1) & (!\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(3) & !\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(2),
	datab => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(1),
	datac => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(3),
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(0),
	combout => \U_LED_LO_b|Mux2~0_combout\);

-- Location: LCCOMB_X30_Y27_N26
\U_LED_LO_b|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_LO_b|Mux1~0_combout\ = (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(1) & ((\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(0) & ((\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(3)))) # (!\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(0) & 
-- (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(2))))) # (!\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(1) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(2) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(3) $ 
-- (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(2),
	datab => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(1),
	datac => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(3),
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(0),
	combout => \U_LED_LO_b|Mux1~0_combout\);

-- Location: LCCOMB_X30_Y27_N8
\U_LED_LO_b|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_LO_b|Mux0~0_combout\ = (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(3) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(0) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(1) $ (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(2))))) # 
-- (!\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(3) & (!\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(1) & (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(0) $ (\U_jtag_wrapper|U_TDI_SHIFTER|output_address\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(3),
	datab => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(0),
	datac => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(1),
	datad => \U_jtag_wrapper|U_TDI_SHIFTER|output_address\(2),
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

-- Location: FF_X11_Y14_N1
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

-- Location: FF_X11_Y14_N5
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]~feeder_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]~q\);

-- Location: FF_X11_Y14_N15
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

-- Location: LCCOMB_X12_Y10_N0
\auto_hub|~GND\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
;

-- Location: LCCOMB_X12_Y15_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~_wirecell\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~q\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~_wirecell_combout\);

-- Location: LCCOMB_X10_Y15_N2
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


