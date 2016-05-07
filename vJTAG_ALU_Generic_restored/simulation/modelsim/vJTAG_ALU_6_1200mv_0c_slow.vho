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

-- DATE "05/07/2016 00:17:07"

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
SIGNAL \U_application_test|Add0~4_combout\ : std_logic;
SIGNAL \U_application_test|Add0~6_combout\ : std_logic;
SIGNAL \U_application_test|Add0~8_combout\ : std_logic;
SIGNAL \U_application_test|Add0~20_combout\ : std_logic;
SIGNAL \U_application_test|Add0~22_combout\ : std_logic;
SIGNAL \U_application_test|Add0~24_combout\ : std_logic;
SIGNAL \U_application_test|Add0~30_combout\ : std_logic;
SIGNAL \U_application_test|Add0~34_combout\ : std_logic;
SIGNAL \U_application_test|Add0~36_combout\ : std_logic;
SIGNAL \U_application_test|Add0~38_combout\ : std_logic;
SIGNAL \U_application_test|Add0~61\ : std_logic;
SIGNAL \U_application_test|Add0~62_combout\ : std_logic;
SIGNAL \U_application_test|output[17]~34_combout\ : std_logic;
SIGNAL \U_application_test|output[18]~36_combout\ : std_logic;
SIGNAL \U_application_test|output[19]~38_combout\ : std_logic;
SIGNAL \U_application_test|output[23]~46_combout\ : std_logic;
SIGNAL \U_application_test|output[24]~48_combout\ : std_logic;
SIGNAL \U_application_test|output[26]~52_combout\ : std_logic;
SIGNAL \U_application_test|output[27]~54_combout\ : std_logic;
SIGNAL \U_application_test|output[30]~61\ : std_logic;
SIGNAL \U_application_test|output[31]~62_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters~0_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters~1_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters~2_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters~3_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters~4_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~2_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~7_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~10_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~11_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~12_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~13_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~14_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~15_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~16_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~17_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~18_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~19_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_logic|out_data_rdy~0_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_logic|out_data_rdy~1_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_logic|out_data_rdy~2_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_logic|out_data_rdy~3_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_logic|out_data_rdy~4_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_logic|out_data_rdy~5_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~24_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~27_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~28_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_logic|sel_out_reg~1_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_logic|sel_out_reg~5_combout\ : std_logic;
SIGNAL \altera_internal_jtag~TCKUTAP\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[3]~17\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[4]~18_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][4]~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][5]~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][6]~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~8_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~11_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~12_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~13_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~10_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~13_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~14_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~15_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~10_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~16_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~17_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~18_combout\ : std_logic;
SIGNAL \auto_hub|~GND~combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~_wirecell_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[0]~_wirecell_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~clkctrl_outclk\ : std_logic;
SIGNAL \altera_internal_jtag~TCKUTAPclkctrl_outclk\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[2]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|REG_GEN:0:REG_i|output[2]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|REG_GEN:1:REG_i|output[1]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|REG_GEN:0:REG_i|output[0]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|REG_GEN:2:REG_i|output[5]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|REG_GEN:0:REG_i|output[5]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|REG_GEN:2:REG_i|output[6]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|REG_GEN:0:REG_i|output[6]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|REG_GEN:2:REG_i|output[7]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|REG_GEN:1:REG_i|output[7]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|REG_GEN:0:REG_i|output[11]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|REG_GEN:0:REG_i|output[10]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|REG_GEN:2:REG_i|output[9]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|REG_GEN:1:REG_i|output[9]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|REG_GEN:0:REG_i|output[8]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|REG_GEN:2:REG_i|output[14]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|REG_GEN:1:REG_i|output[14]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|REG_GEN:1:REG_i|output[15]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[19]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[5]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[2]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[31]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|REG_GEN:2:REG_i|output[30]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[30]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|REG_GEN:0:REG_i|output[30]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|REG_GEN:1:REG_i|output[29]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|REG_GEN:2:REG_i|output[29]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|REG_GEN:1:REG_i|output[28]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|REG_GEN:2:REG_i|output[27]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|REG_GEN:0:REG_i|output[27]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[26]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|REG_GEN:2:REG_i|output[25]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|REG_GEN:0:REG_i|output[25]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|REG_GEN:2:REG_i|output[24]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|REG_GEN:2:REG_i|output[23]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|REG_GEN:0:REG_i|output[23]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|REG_GEN:0:REG_i|output[22]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|REG_GEN:2:REG_i|output[21]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|REG_GEN:2:REG_i|output[20]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|REG_GEN:1:REG_i|output[20]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[19]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[18]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|REG_GEN:0:REG_i|output[18]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|REG_GEN:1:REG_i|output[17]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|REG_GEN:2:REG_i|output[16]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_SR_V2|output[31]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[1]~feeder_combout\ : std_logic;
SIGNAL \altera_reserved_tck~input_o\ : std_logic;
SIGNAL \altera_reserved_tdi~input_o\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~4_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[8]~feeder_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \altera_internal_jtag~TMSUTAP\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~8_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~9_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~10_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~11_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~12_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_dr_scan_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~4_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~5_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~6_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~7_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[9]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[7]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[3]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[2]~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[0]~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal1~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_1~0_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_1~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_2~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_3~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_4~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_5~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_6~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_7~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_8~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_8~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_9~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_10~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_11~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_12~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_13~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_13~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_14~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_15~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_16~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_17~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_18~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_19~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_20~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_21~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_21~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_22~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_23~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_24~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_25~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_25~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_26~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_27~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_28~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_29~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_30~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_31~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_31~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|state.START~0_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|state.START~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_SR_V2|temp[6]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_SR_V2|process_0~0_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_SR_V2|temp[4]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_SR_V2|output[3]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_udr~0_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_addrcount|count[0]~1_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_addrcount|count[1]~0_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_logic|Equal0~0_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_addrcount|output~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_SR_V2|temp[2]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_SR_V2|temp[1]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[1]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_logic|out_data_rdy~8_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_SR_V2|output[5]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[5]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_logic|out_data_rdy~7_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_SR_V2|output[10]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_SR_V2|output[11]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_logic|out_data_rdy~6_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_logic|out_data_rdy~9_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_SR_V2|output[25]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[25]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[25]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_logic|sel_out_reg~2_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_SR_V2|output[21]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[21]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_SR_V2|output[20]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_SR_V2|output[22]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[22]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[22]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_logic|sel_out_reg~3_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_or_data~0_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_or_data~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_logic|sel_out_reg~0_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_logic|sel_out_reg~4_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_SR_V2|output[14]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[14]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[14]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_logic|sel_out_reg~6_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[6]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_logic|sel_out_reg~8_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[10]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_logic|sel_out_reg~7_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_logic|sel_out_reg~9_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_logic|sel_out_reg~10_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_logic|sel_out_reg~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~32_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~26_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~22_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~21_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~23_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~25_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~29_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~30_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|valid_reg~0_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|valid_reg~1_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|valid_reg~q\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~33_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|REG_GEN:1:REG_i|output[0]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters~6_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters~7_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters~8_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[15]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_SR_V2|output[13]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[13]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters~5_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters~9_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters~10_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp[1]~feeder_combout\ : std_logic;
SIGNAL \U_application_test|Add0~0_combout\ : std_logic;
SIGNAL \U_application_test|output[0]~0_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|REG_GEN:0:REG_i|output[28]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters~11_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp[0]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_SR_V2|output[27]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|REG_GEN:1:REG_i|output[27]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_SR_V2|output[26]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|REG_GEN:1:REG_i|output[25]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|REG_GEN:1:REG_i|output[24]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|REG_GEN:1:REG_i|output[23]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|REG_GEN:1:REG_i|output[21]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|REG_GEN:0:REG_i|output[20]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_SR_V2|output[19]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_SR_V2|output[18]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|REG_GEN:1:REG_i|output[18]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_SR_V2|output[17]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|REG_GEN:0:REG_i|output[17]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_SR_V2|output[16]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|REG_GEN:1:REG_i|output[16]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|REG_GEN:0:REG_i|output[15]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|REG_GEN:0:REG_i|output[14]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|REG_GEN:1:REG_i|output[11]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|REG_GEN:1:REG_i|output[10]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_SR_V2|output[9]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|REG_GEN:0:REG_i|output[9]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|REG_GEN:1:REG_i|output[8]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|REG_GEN:1:REG_i|output[6]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|REG_GEN:1:REG_i|output[5]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_SR_V2|output[2]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|REG_GEN:1:REG_i|output[2]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|REG_GEN:0:REG_i|output[1]~feeder_combout\ : std_logic;
SIGNAL \U_application_test|Add0~1\ : std_logic;
SIGNAL \U_application_test|Add0~3\ : std_logic;
SIGNAL \U_application_test|Add0~5\ : std_logic;
SIGNAL \U_application_test|Add0~7\ : std_logic;
SIGNAL \U_application_test|Add0~9\ : std_logic;
SIGNAL \U_application_test|Add0~11\ : std_logic;
SIGNAL \U_application_test|Add0~13\ : std_logic;
SIGNAL \U_application_test|Add0~15\ : std_logic;
SIGNAL \U_application_test|Add0~17\ : std_logic;
SIGNAL \U_application_test|Add0~19\ : std_logic;
SIGNAL \U_application_test|Add0~21\ : std_logic;
SIGNAL \U_application_test|Add0~23\ : std_logic;
SIGNAL \U_application_test|Add0~25\ : std_logic;
SIGNAL \U_application_test|Add0~27\ : std_logic;
SIGNAL \U_application_test|Add0~29\ : std_logic;
SIGNAL \U_application_test|Add0~31\ : std_logic;
SIGNAL \U_application_test|Add0~33\ : std_logic;
SIGNAL \U_application_test|Add0~35\ : std_logic;
SIGNAL \U_application_test|Add0~37\ : std_logic;
SIGNAL \U_application_test|Add0~39\ : std_logic;
SIGNAL \U_application_test|Add0~41\ : std_logic;
SIGNAL \U_application_test|Add0~43\ : std_logic;
SIGNAL \U_application_test|Add0~45\ : std_logic;
SIGNAL \U_application_test|Add0~47\ : std_logic;
SIGNAL \U_application_test|Add0~49\ : std_logic;
SIGNAL \U_application_test|Add0~51\ : std_logic;
SIGNAL \U_application_test|Add0~53\ : std_logic;
SIGNAL \U_application_test|Add0~55\ : std_logic;
SIGNAL \U_application_test|Add0~56_combout\ : std_logic;
SIGNAL \U_application_test|Add0~54_combout\ : std_logic;
SIGNAL \U_application_test|Add0~52_combout\ : std_logic;
SIGNAL \U_application_test|Add0~50_combout\ : std_logic;
SIGNAL \U_application_test|Add0~48_combout\ : std_logic;
SIGNAL \U_application_test|Add0~46_combout\ : std_logic;
SIGNAL \U_application_test|Add0~44_combout\ : std_logic;
SIGNAL \U_application_test|Add0~42_combout\ : std_logic;
SIGNAL \U_application_test|Add0~40_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters~12_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|REG_GEN:2:REG_i|output[18]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|REG_GEN:2:REG_i|output[17]~feeder_combout\ : std_logic;
SIGNAL \U_application_test|Add0~32_combout\ : std_logic;
SIGNAL \U_application_test|Add0~28_combout\ : std_logic;
SIGNAL \U_application_test|Add0~26_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|REG_GEN:2:REG_i|output[11]~feeder_combout\ : std_logic;
SIGNAL \U_application_test|Add0~18_combout\ : std_logic;
SIGNAL \U_application_test|Add0~16_combout\ : std_logic;
SIGNAL \U_application_test|Add0~12_combout\ : std_logic;
SIGNAL \U_application_test|Add0~10_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|REG_GEN:2:REG_i|output[4]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|REG_GEN:2:REG_i|output[2]~feeder_combout\ : std_logic;
SIGNAL \U_application_test|Add0~2_combout\ : std_logic;
SIGNAL \U_application_test|output[0]~1\ : std_logic;
SIGNAL \U_application_test|output[1]~3\ : std_logic;
SIGNAL \U_application_test|output[2]~5\ : std_logic;
SIGNAL \U_application_test|output[3]~7\ : std_logic;
SIGNAL \U_application_test|output[4]~9\ : std_logic;
SIGNAL \U_application_test|output[5]~11\ : std_logic;
SIGNAL \U_application_test|output[6]~13\ : std_logic;
SIGNAL \U_application_test|output[7]~15\ : std_logic;
SIGNAL \U_application_test|output[8]~17\ : std_logic;
SIGNAL \U_application_test|output[9]~19\ : std_logic;
SIGNAL \U_application_test|output[10]~21\ : std_logic;
SIGNAL \U_application_test|output[11]~23\ : std_logic;
SIGNAL \U_application_test|output[12]~25\ : std_logic;
SIGNAL \U_application_test|output[13]~27\ : std_logic;
SIGNAL \U_application_test|output[14]~29\ : std_logic;
SIGNAL \U_application_test|output[15]~31\ : std_logic;
SIGNAL \U_application_test|output[16]~33\ : std_logic;
SIGNAL \U_application_test|output[17]~35\ : std_logic;
SIGNAL \U_application_test|output[18]~37\ : std_logic;
SIGNAL \U_application_test|output[19]~39\ : std_logic;
SIGNAL \U_application_test|output[20]~41\ : std_logic;
SIGNAL \U_application_test|output[21]~43\ : std_logic;
SIGNAL \U_application_test|output[22]~45\ : std_logic;
SIGNAL \U_application_test|output[23]~47\ : std_logic;
SIGNAL \U_application_test|output[24]~49\ : std_logic;
SIGNAL \U_application_test|output[25]~51\ : std_logic;
SIGNAL \U_application_test|output[26]~53\ : std_logic;
SIGNAL \U_application_test|output[27]~55\ : std_logic;
SIGNAL \U_application_test|output[28]~56_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_SR_V2|output[29]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|REG_GEN:0:REG_i|output[29]~feeder_combout\ : std_logic;
SIGNAL \U_application_test|Add0~57\ : std_logic;
SIGNAL \U_application_test|Add0~58_combout\ : std_logic;
SIGNAL \U_application_test|output[28]~57\ : std_logic;
SIGNAL \U_application_test|output[29]~58_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~1_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_SR_V2|output[30]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|REG_GEN:1:REG_i|output[30]~feeder_combout\ : std_logic;
SIGNAL \U_application_test|Add0~59\ : std_logic;
SIGNAL \U_application_test|Add0~60_combout\ : std_logic;
SIGNAL \U_application_test|output[29]~59\ : std_logic;
SIGNAL \U_application_test|output[30]~60_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~0_combout\ : std_logic;
SIGNAL \U_application_test|output[25]~50_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~3_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~4_combout\ : std_logic;
SIGNAL \U_application_test|output[22]~44_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~5_combout\ : std_logic;
SIGNAL \U_application_test|output[16]~32_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~8_combout\ : std_logic;
SIGNAL \U_application_test|output[21]~42_combout\ : std_logic;
SIGNAL \U_application_test|output[20]~40_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~6_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~9_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~20_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~31_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[29]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[28]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[27]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[24]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[23]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[21]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[19]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[18]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[17]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[16]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[15]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[13]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[11]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[9]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[8]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[6]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[4]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[3]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[1]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[0]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]~7_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]~12\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]~16\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~17_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~14_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~13_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~19_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]~8\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]~9_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]~10\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]~11_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~19_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[3]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~10_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~5_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal3~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[0]~4_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[2]~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~6_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~7_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~8_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~9_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[2]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]~15_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~9_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~11_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~12_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[1]~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[2]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[2]~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[3]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~9_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~13_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~20_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~10\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~11_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~12\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[2]~15\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[3]~16_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~5_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[2]~14_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~6_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~12_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~13_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~14_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[0]~15_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~8_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~9_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~11_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~7_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~4_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~4_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~5_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~_wirecell_combout\ : std_logic;
SIGNAL \altera_internal_jtag~TDIUTAP\ : std_logic;
SIGNAL \U_jtag_wrapper|U_SR_V2|temp[30]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_SR_V2|temp[29]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_SR_V2|temp[28]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_SR_V2|temp[26]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_SR_V2|temp[25]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_SR_V2|temp[24]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_SR_V2|temp[23]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_SR_V2|temp[21]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_SR_V2|temp[20]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_SR_V2|temp[19]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_SR_V2|temp[18]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_SR_V2|temp[17]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_SR_V2|temp[16]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_SR_V2|temp[15]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_SR_V2|temp[13]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_SR_V2|temp[12]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_SR_V2|temp[10]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_SR_V2|temp[9]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_SR_V2|temp[8]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|U_SR_V2|output[7]~feeder_combout\ : std_logic;
SIGNAL \U_jtag_wrapper|REG_GEN:0:REG_i|output[7]~feeder_combout\ : std_logic;
SIGNAL \U_application_test|Add0~14_combout\ : std_logic;
SIGNAL \U_application_test|output[7]~14_combout\ : std_logic;
SIGNAL \U_application_test|output[5]~10_combout\ : std_logic;
SIGNAL \U_application_test|output[6]~12_combout\ : std_logic;
SIGNAL \U_application_test|output[4]~8_combout\ : std_logic;
SIGNAL \U_LED_HI_a|Mux6~0_combout\ : std_logic;
SIGNAL \U_LED_HI_a|Mux5~0_combout\ : std_logic;
SIGNAL \U_LED_HI_a|Mux4~0_combout\ : std_logic;
SIGNAL \U_LED_HI_a|Mux3~0_combout\ : std_logic;
SIGNAL \U_LED_HI_a|Mux2~0_combout\ : std_logic;
SIGNAL \U_LED_HI_a|Mux1~0_combout\ : std_logic;
SIGNAL \U_LED_HI_a|Mux0~0_combout\ : std_logic;
SIGNAL \U_application_test|output[3]~6_combout\ : std_logic;
SIGNAL \U_application_test|output[1]~2_combout\ : std_logic;
SIGNAL \U_application_test|output[2]~4_combout\ : std_logic;
SIGNAL \U_LED_LO_a|Mux6~0_combout\ : std_logic;
SIGNAL \U_LED_LO_a|Mux5~0_combout\ : std_logic;
SIGNAL \U_LED_LO_a|Mux4~0_combout\ : std_logic;
SIGNAL \U_LED_LO_a|Mux3~0_combout\ : std_logic;
SIGNAL \U_LED_LO_a|Mux2~0_combout\ : std_logic;
SIGNAL \U_LED_LO_a|Mux1~0_combout\ : std_logic;
SIGNAL \U_LED_LO_a|Mux0~0_combout\ : std_logic;
SIGNAL \U_application_test|output[12]~24_combout\ : std_logic;
SIGNAL \U_application_test|output[14]~28_combout\ : std_logic;
SIGNAL \U_application_test|output[13]~26_combout\ : std_logic;
SIGNAL \U_application_test|output[15]~30_combout\ : std_logic;
SIGNAL \U_LED_HI_b|Mux6~0_combout\ : std_logic;
SIGNAL \U_LED_HI_b|Mux5~0_combout\ : std_logic;
SIGNAL \U_LED_HI_b|Mux4~0_combout\ : std_logic;
SIGNAL \U_LED_HI_b|Mux3~0_combout\ : std_logic;
SIGNAL \U_LED_HI_b|Mux2~0_combout\ : std_logic;
SIGNAL \U_LED_HI_b|Mux1~0_combout\ : std_logic;
SIGNAL \U_LED_HI_b|Mux0~0_combout\ : std_logic;
SIGNAL \U_application_test|output[10]~20_combout\ : std_logic;
SIGNAL \U_application_test|output[11]~22_combout\ : std_logic;
SIGNAL \U_application_test|output[9]~18_combout\ : std_logic;
SIGNAL \U_application_test|output[8]~16_combout\ : std_logic;
SIGNAL \U_LED_LO_b|Mux6~0_combout\ : std_logic;
SIGNAL \U_LED_LO_b|Mux5~0_combout\ : std_logic;
SIGNAL \U_LED_LO_b|Mux4~0_combout\ : std_logic;
SIGNAL \U_LED_LO_b|Mux3~0_combout\ : std_logic;
SIGNAL \U_LED_LO_b|Mux2~0_combout\ : std_logic;
SIGNAL \U_LED_LO_b|Mux1~0_combout\ : std_logic;
SIGNAL \U_LED_LO_b|Mux0~0_combout\ : std_logic;
SIGNAL \altera_reserved_tms~input_o\ : std_logic;
SIGNAL \altera_internal_jtag~TDO\ : std_logic;
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
SIGNAL \U_jtag_wrapper|REG_GEN:0:REG_i|output\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U_jtag_wrapper|REG_GEN:1:REG_i|output\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U_jtag_wrapper|REG_GEN:2:REG_i|output\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U_jtag_wrapper|U_SR_V2|temp\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U_jtag_wrapper|U_SR_V2|output\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters\ : std_logic_vector(0 TO 31);
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_addrcount|count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\ : std_logic_vector(0 TO 31);
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

-- Location: LCCOMB_X23_Y21_N4
\U_application_test|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_application_test|Add0~4_combout\ = ((\U_jtag_wrapper|REG_GEN:0:REG_i|output\(2) $ (\U_jtag_wrapper|REG_GEN:1:REG_i|output\(2) $ (!\U_application_test|Add0~3\)))) # (GND)
-- \U_application_test|Add0~5\ = CARRY((\U_jtag_wrapper|REG_GEN:0:REG_i|output\(2) & ((\U_jtag_wrapper|REG_GEN:1:REG_i|output\(2)) # (!\U_application_test|Add0~3\))) # (!\U_jtag_wrapper|REG_GEN:0:REG_i|output\(2) & (\U_jtag_wrapper|REG_GEN:1:REG_i|output\(2) 
-- & !\U_application_test|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|REG_GEN:0:REG_i|output\(2),
	datab => \U_jtag_wrapper|REG_GEN:1:REG_i|output\(2),
	datad => VCC,
	cin => \U_application_test|Add0~3\,
	combout => \U_application_test|Add0~4_combout\,
	cout => \U_application_test|Add0~5\);

-- Location: LCCOMB_X23_Y21_N6
\U_application_test|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_application_test|Add0~6_combout\ = (\U_jtag_wrapper|REG_GEN:1:REG_i|output\(3) & ((\U_jtag_wrapper|REG_GEN:0:REG_i|output\(3) & (\U_application_test|Add0~5\ & VCC)) # (!\U_jtag_wrapper|REG_GEN:0:REG_i|output\(3) & (!\U_application_test|Add0~5\)))) # 
-- (!\U_jtag_wrapper|REG_GEN:1:REG_i|output\(3) & ((\U_jtag_wrapper|REG_GEN:0:REG_i|output\(3) & (!\U_application_test|Add0~5\)) # (!\U_jtag_wrapper|REG_GEN:0:REG_i|output\(3) & ((\U_application_test|Add0~5\) # (GND)))))
-- \U_application_test|Add0~7\ = CARRY((\U_jtag_wrapper|REG_GEN:1:REG_i|output\(3) & (!\U_jtag_wrapper|REG_GEN:0:REG_i|output\(3) & !\U_application_test|Add0~5\)) # (!\U_jtag_wrapper|REG_GEN:1:REG_i|output\(3) & ((!\U_application_test|Add0~5\) # 
-- (!\U_jtag_wrapper|REG_GEN:0:REG_i|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|REG_GEN:1:REG_i|output\(3),
	datab => \U_jtag_wrapper|REG_GEN:0:REG_i|output\(3),
	datad => VCC,
	cin => \U_application_test|Add0~5\,
	combout => \U_application_test|Add0~6_combout\,
	cout => \U_application_test|Add0~7\);

-- Location: LCCOMB_X23_Y21_N8
\U_application_test|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_application_test|Add0~8_combout\ = ((\U_jtag_wrapper|REG_GEN:0:REG_i|output\(4) $ (\U_jtag_wrapper|REG_GEN:1:REG_i|output\(4) $ (!\U_application_test|Add0~7\)))) # (GND)
-- \U_application_test|Add0~9\ = CARRY((\U_jtag_wrapper|REG_GEN:0:REG_i|output\(4) & ((\U_jtag_wrapper|REG_GEN:1:REG_i|output\(4)) # (!\U_application_test|Add0~7\))) # (!\U_jtag_wrapper|REG_GEN:0:REG_i|output\(4) & (\U_jtag_wrapper|REG_GEN:1:REG_i|output\(4) 
-- & !\U_application_test|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|REG_GEN:0:REG_i|output\(4),
	datab => \U_jtag_wrapper|REG_GEN:1:REG_i|output\(4),
	datad => VCC,
	cin => \U_application_test|Add0~7\,
	combout => \U_application_test|Add0~8_combout\,
	cout => \U_application_test|Add0~9\);

-- Location: LCCOMB_X23_Y21_N20
\U_application_test|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_application_test|Add0~20_combout\ = ((\U_jtag_wrapper|REG_GEN:0:REG_i|output\(10) $ (\U_jtag_wrapper|REG_GEN:1:REG_i|output\(10) $ (!\U_application_test|Add0~19\)))) # (GND)
-- \U_application_test|Add0~21\ = CARRY((\U_jtag_wrapper|REG_GEN:0:REG_i|output\(10) & ((\U_jtag_wrapper|REG_GEN:1:REG_i|output\(10)) # (!\U_application_test|Add0~19\))) # (!\U_jtag_wrapper|REG_GEN:0:REG_i|output\(10) & 
-- (\U_jtag_wrapper|REG_GEN:1:REG_i|output\(10) & !\U_application_test|Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|REG_GEN:0:REG_i|output\(10),
	datab => \U_jtag_wrapper|REG_GEN:1:REG_i|output\(10),
	datad => VCC,
	cin => \U_application_test|Add0~19\,
	combout => \U_application_test|Add0~20_combout\,
	cout => \U_application_test|Add0~21\);

-- Location: LCCOMB_X23_Y21_N22
\U_application_test|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_application_test|Add0~22_combout\ = (\U_jtag_wrapper|REG_GEN:0:REG_i|output\(11) & ((\U_jtag_wrapper|REG_GEN:1:REG_i|output\(11) & (\U_application_test|Add0~21\ & VCC)) # (!\U_jtag_wrapper|REG_GEN:1:REG_i|output\(11) & 
-- (!\U_application_test|Add0~21\)))) # (!\U_jtag_wrapper|REG_GEN:0:REG_i|output\(11) & ((\U_jtag_wrapper|REG_GEN:1:REG_i|output\(11) & (!\U_application_test|Add0~21\)) # (!\U_jtag_wrapper|REG_GEN:1:REG_i|output\(11) & ((\U_application_test|Add0~21\) # 
-- (GND)))))
-- \U_application_test|Add0~23\ = CARRY((\U_jtag_wrapper|REG_GEN:0:REG_i|output\(11) & (!\U_jtag_wrapper|REG_GEN:1:REG_i|output\(11) & !\U_application_test|Add0~21\)) # (!\U_jtag_wrapper|REG_GEN:0:REG_i|output\(11) & ((!\U_application_test|Add0~21\) # 
-- (!\U_jtag_wrapper|REG_GEN:1:REG_i|output\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|REG_GEN:0:REG_i|output\(11),
	datab => \U_jtag_wrapper|REG_GEN:1:REG_i|output\(11),
	datad => VCC,
	cin => \U_application_test|Add0~21\,
	combout => \U_application_test|Add0~22_combout\,
	cout => \U_application_test|Add0~23\);

-- Location: LCCOMB_X23_Y21_N24
\U_application_test|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_application_test|Add0~24_combout\ = ((\U_jtag_wrapper|REG_GEN:0:REG_i|output\(12) $ (\U_jtag_wrapper|REG_GEN:1:REG_i|output\(12) $ (!\U_application_test|Add0~23\)))) # (GND)
-- \U_application_test|Add0~25\ = CARRY((\U_jtag_wrapper|REG_GEN:0:REG_i|output\(12) & ((\U_jtag_wrapper|REG_GEN:1:REG_i|output\(12)) # (!\U_application_test|Add0~23\))) # (!\U_jtag_wrapper|REG_GEN:0:REG_i|output\(12) & 
-- (\U_jtag_wrapper|REG_GEN:1:REG_i|output\(12) & !\U_application_test|Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|REG_GEN:0:REG_i|output\(12),
	datab => \U_jtag_wrapper|REG_GEN:1:REG_i|output\(12),
	datad => VCC,
	cin => \U_application_test|Add0~23\,
	combout => \U_application_test|Add0~24_combout\,
	cout => \U_application_test|Add0~25\);

-- Location: LCCOMB_X23_Y21_N30
\U_application_test|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_application_test|Add0~30_combout\ = (\U_jtag_wrapper|REG_GEN:1:REG_i|output\(15) & ((\U_jtag_wrapper|REG_GEN:0:REG_i|output\(15) & (\U_application_test|Add0~29\ & VCC)) # (!\U_jtag_wrapper|REG_GEN:0:REG_i|output\(15) & 
-- (!\U_application_test|Add0~29\)))) # (!\U_jtag_wrapper|REG_GEN:1:REG_i|output\(15) & ((\U_jtag_wrapper|REG_GEN:0:REG_i|output\(15) & (!\U_application_test|Add0~29\)) # (!\U_jtag_wrapper|REG_GEN:0:REG_i|output\(15) & ((\U_application_test|Add0~29\) # 
-- (GND)))))
-- \U_application_test|Add0~31\ = CARRY((\U_jtag_wrapper|REG_GEN:1:REG_i|output\(15) & (!\U_jtag_wrapper|REG_GEN:0:REG_i|output\(15) & !\U_application_test|Add0~29\)) # (!\U_jtag_wrapper|REG_GEN:1:REG_i|output\(15) & ((!\U_application_test|Add0~29\) # 
-- (!\U_jtag_wrapper|REG_GEN:0:REG_i|output\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|REG_GEN:1:REG_i|output\(15),
	datab => \U_jtag_wrapper|REG_GEN:0:REG_i|output\(15),
	datad => VCC,
	cin => \U_application_test|Add0~29\,
	combout => \U_application_test|Add0~30_combout\,
	cout => \U_application_test|Add0~31\);

-- Location: LCCOMB_X23_Y20_N2
\U_application_test|Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_application_test|Add0~34_combout\ = (\U_jtag_wrapper|REG_GEN:1:REG_i|output\(17) & ((\U_jtag_wrapper|REG_GEN:0:REG_i|output\(17) & (\U_application_test|Add0~33\ & VCC)) # (!\U_jtag_wrapper|REG_GEN:0:REG_i|output\(17) & 
-- (!\U_application_test|Add0~33\)))) # (!\U_jtag_wrapper|REG_GEN:1:REG_i|output\(17) & ((\U_jtag_wrapper|REG_GEN:0:REG_i|output\(17) & (!\U_application_test|Add0~33\)) # (!\U_jtag_wrapper|REG_GEN:0:REG_i|output\(17) & ((\U_application_test|Add0~33\) # 
-- (GND)))))
-- \U_application_test|Add0~35\ = CARRY((\U_jtag_wrapper|REG_GEN:1:REG_i|output\(17) & (!\U_jtag_wrapper|REG_GEN:0:REG_i|output\(17) & !\U_application_test|Add0~33\)) # (!\U_jtag_wrapper|REG_GEN:1:REG_i|output\(17) & ((!\U_application_test|Add0~33\) # 
-- (!\U_jtag_wrapper|REG_GEN:0:REG_i|output\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|REG_GEN:1:REG_i|output\(17),
	datab => \U_jtag_wrapper|REG_GEN:0:REG_i|output\(17),
	datad => VCC,
	cin => \U_application_test|Add0~33\,
	combout => \U_application_test|Add0~34_combout\,
	cout => \U_application_test|Add0~35\);

-- Location: LCCOMB_X23_Y20_N4
\U_application_test|Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_application_test|Add0~36_combout\ = ((\U_jtag_wrapper|REG_GEN:0:REG_i|output\(18) $ (\U_jtag_wrapper|REG_GEN:1:REG_i|output\(18) $ (!\U_application_test|Add0~35\)))) # (GND)
-- \U_application_test|Add0~37\ = CARRY((\U_jtag_wrapper|REG_GEN:0:REG_i|output\(18) & ((\U_jtag_wrapper|REG_GEN:1:REG_i|output\(18)) # (!\U_application_test|Add0~35\))) # (!\U_jtag_wrapper|REG_GEN:0:REG_i|output\(18) & 
-- (\U_jtag_wrapper|REG_GEN:1:REG_i|output\(18) & !\U_application_test|Add0~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|REG_GEN:0:REG_i|output\(18),
	datab => \U_jtag_wrapper|REG_GEN:1:REG_i|output\(18),
	datad => VCC,
	cin => \U_application_test|Add0~35\,
	combout => \U_application_test|Add0~36_combout\,
	cout => \U_application_test|Add0~37\);

-- Location: LCCOMB_X23_Y20_N6
\U_application_test|Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_application_test|Add0~38_combout\ = (\U_jtag_wrapper|REG_GEN:1:REG_i|output\(19) & ((\U_jtag_wrapper|REG_GEN:0:REG_i|output\(19) & (\U_application_test|Add0~37\ & VCC)) # (!\U_jtag_wrapper|REG_GEN:0:REG_i|output\(19) & 
-- (!\U_application_test|Add0~37\)))) # (!\U_jtag_wrapper|REG_GEN:1:REG_i|output\(19) & ((\U_jtag_wrapper|REG_GEN:0:REG_i|output\(19) & (!\U_application_test|Add0~37\)) # (!\U_jtag_wrapper|REG_GEN:0:REG_i|output\(19) & ((\U_application_test|Add0~37\) # 
-- (GND)))))
-- \U_application_test|Add0~39\ = CARRY((\U_jtag_wrapper|REG_GEN:1:REG_i|output\(19) & (!\U_jtag_wrapper|REG_GEN:0:REG_i|output\(19) & !\U_application_test|Add0~37\)) # (!\U_jtag_wrapper|REG_GEN:1:REG_i|output\(19) & ((!\U_application_test|Add0~37\) # 
-- (!\U_jtag_wrapper|REG_GEN:0:REG_i|output\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|REG_GEN:1:REG_i|output\(19),
	datab => \U_jtag_wrapper|REG_GEN:0:REG_i|output\(19),
	datad => VCC,
	cin => \U_application_test|Add0~37\,
	combout => \U_application_test|Add0~38_combout\,
	cout => \U_application_test|Add0~39\);

-- Location: LCCOMB_X23_Y20_N28
\U_application_test|Add0~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_application_test|Add0~60_combout\ = ((\U_jtag_wrapper|REG_GEN:0:REG_i|output\(30) $ (\U_jtag_wrapper|REG_GEN:1:REG_i|output\(30) $ (!\U_application_test|Add0~59\)))) # (GND)
-- \U_application_test|Add0~61\ = CARRY((\U_jtag_wrapper|REG_GEN:0:REG_i|output\(30) & ((\U_jtag_wrapper|REG_GEN:1:REG_i|output\(30)) # (!\U_application_test|Add0~59\))) # (!\U_jtag_wrapper|REG_GEN:0:REG_i|output\(30) & 
-- (\U_jtag_wrapper|REG_GEN:1:REG_i|output\(30) & !\U_application_test|Add0~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|REG_GEN:0:REG_i|output\(30),
	datab => \U_jtag_wrapper|REG_GEN:1:REG_i|output\(30),
	datad => VCC,
	cin => \U_application_test|Add0~59\,
	combout => \U_application_test|Add0~60_combout\,
	cout => \U_application_test|Add0~61\);

-- Location: LCCOMB_X23_Y20_N30
\U_application_test|Add0~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_application_test|Add0~62_combout\ = \U_jtag_wrapper|REG_GEN:1:REG_i|output\(31) $ (\U_application_test|Add0~61\ $ (\U_jtag_wrapper|REG_GEN:0:REG_i|output\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_jtag_wrapper|REG_GEN:1:REG_i|output\(31),
	datad => \U_jtag_wrapper|REG_GEN:0:REG_i|output\(31),
	cin => \U_application_test|Add0~61\,
	combout => \U_application_test|Add0~62_combout\);

-- Location: LCCOMB_X22_Y20_N2
\U_application_test|output[17]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_application_test|output[17]~34_combout\ = (\U_application_test|Add0~34_combout\ & ((\U_jtag_wrapper|REG_GEN:2:REG_i|output\(17) & (\U_application_test|output[16]~33\ & VCC)) # (!\U_jtag_wrapper|REG_GEN:2:REG_i|output\(17) & 
-- (!\U_application_test|output[16]~33\)))) # (!\U_application_test|Add0~34_combout\ & ((\U_jtag_wrapper|REG_GEN:2:REG_i|output\(17) & (!\U_application_test|output[16]~33\)) # (!\U_jtag_wrapper|REG_GEN:2:REG_i|output\(17) & 
-- ((\U_application_test|output[16]~33\) # (GND)))))
-- \U_application_test|output[17]~35\ = CARRY((\U_application_test|Add0~34_combout\ & (!\U_jtag_wrapper|REG_GEN:2:REG_i|output\(17) & !\U_application_test|output[16]~33\)) # (!\U_application_test|Add0~34_combout\ & ((!\U_application_test|output[16]~33\) # 
-- (!\U_jtag_wrapper|REG_GEN:2:REG_i|output\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_application_test|Add0~34_combout\,
	datab => \U_jtag_wrapper|REG_GEN:2:REG_i|output\(17),
	datad => VCC,
	cin => \U_application_test|output[16]~33\,
	combout => \U_application_test|output[17]~34_combout\,
	cout => \U_application_test|output[17]~35\);

-- Location: LCCOMB_X22_Y20_N4
\U_application_test|output[18]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_application_test|output[18]~36_combout\ = ((\U_application_test|Add0~36_combout\ $ (\U_jtag_wrapper|REG_GEN:2:REG_i|output\(18) $ (!\U_application_test|output[17]~35\)))) # (GND)
-- \U_application_test|output[18]~37\ = CARRY((\U_application_test|Add0~36_combout\ & ((\U_jtag_wrapper|REG_GEN:2:REG_i|output\(18)) # (!\U_application_test|output[17]~35\))) # (!\U_application_test|Add0~36_combout\ & 
-- (\U_jtag_wrapper|REG_GEN:2:REG_i|output\(18) & !\U_application_test|output[17]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_application_test|Add0~36_combout\,
	datab => \U_jtag_wrapper|REG_GEN:2:REG_i|output\(18),
	datad => VCC,
	cin => \U_application_test|output[17]~35\,
	combout => \U_application_test|output[18]~36_combout\,
	cout => \U_application_test|output[18]~37\);

-- Location: LCCOMB_X22_Y20_N6
\U_application_test|output[19]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_application_test|output[19]~38_combout\ = (\U_application_test|Add0~38_combout\ & ((\U_jtag_wrapper|REG_GEN:2:REG_i|output\(19) & (\U_application_test|output[18]~37\ & VCC)) # (!\U_jtag_wrapper|REG_GEN:2:REG_i|output\(19) & 
-- (!\U_application_test|output[18]~37\)))) # (!\U_application_test|Add0~38_combout\ & ((\U_jtag_wrapper|REG_GEN:2:REG_i|output\(19) & (!\U_application_test|output[18]~37\)) # (!\U_jtag_wrapper|REG_GEN:2:REG_i|output\(19) & 
-- ((\U_application_test|output[18]~37\) # (GND)))))
-- \U_application_test|output[19]~39\ = CARRY((\U_application_test|Add0~38_combout\ & (!\U_jtag_wrapper|REG_GEN:2:REG_i|output\(19) & !\U_application_test|output[18]~37\)) # (!\U_application_test|Add0~38_combout\ & ((!\U_application_test|output[18]~37\) # 
-- (!\U_jtag_wrapper|REG_GEN:2:REG_i|output\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_application_test|Add0~38_combout\,
	datab => \U_jtag_wrapper|REG_GEN:2:REG_i|output\(19),
	datad => VCC,
	cin => \U_application_test|output[18]~37\,
	combout => \U_application_test|output[19]~38_combout\,
	cout => \U_application_test|output[19]~39\);

-- Location: LCCOMB_X22_Y20_N14
\U_application_test|output[23]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_application_test|output[23]~46_combout\ = (\U_jtag_wrapper|REG_GEN:2:REG_i|output\(23) & ((\U_application_test|Add0~46_combout\ & (\U_application_test|output[22]~45\ & VCC)) # (!\U_application_test|Add0~46_combout\ & 
-- (!\U_application_test|output[22]~45\)))) # (!\U_jtag_wrapper|REG_GEN:2:REG_i|output\(23) & ((\U_application_test|Add0~46_combout\ & (!\U_application_test|output[22]~45\)) # (!\U_application_test|Add0~46_combout\ & ((\U_application_test|output[22]~45\) # 
-- (GND)))))
-- \U_application_test|output[23]~47\ = CARRY((\U_jtag_wrapper|REG_GEN:2:REG_i|output\(23) & (!\U_application_test|Add0~46_combout\ & !\U_application_test|output[22]~45\)) # (!\U_jtag_wrapper|REG_GEN:2:REG_i|output\(23) & 
-- ((!\U_application_test|output[22]~45\) # (!\U_application_test|Add0~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|REG_GEN:2:REG_i|output\(23),
	datab => \U_application_test|Add0~46_combout\,
	datad => VCC,
	cin => \U_application_test|output[22]~45\,
	combout => \U_application_test|output[23]~46_combout\,
	cout => \U_application_test|output[23]~47\);

-- Location: LCCOMB_X22_Y20_N16
\U_application_test|output[24]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_application_test|output[24]~48_combout\ = ((\U_jtag_wrapper|REG_GEN:2:REG_i|output\(24) $ (\U_application_test|Add0~48_combout\ $ (!\U_application_test|output[23]~47\)))) # (GND)
-- \U_application_test|output[24]~49\ = CARRY((\U_jtag_wrapper|REG_GEN:2:REG_i|output\(24) & ((\U_application_test|Add0~48_combout\) # (!\U_application_test|output[23]~47\))) # (!\U_jtag_wrapper|REG_GEN:2:REG_i|output\(24) & 
-- (\U_application_test|Add0~48_combout\ & !\U_application_test|output[23]~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|REG_GEN:2:REG_i|output\(24),
	datab => \U_application_test|Add0~48_combout\,
	datad => VCC,
	cin => \U_application_test|output[23]~47\,
	combout => \U_application_test|output[24]~48_combout\,
	cout => \U_application_test|output[24]~49\);

-- Location: LCCOMB_X22_Y20_N20
\U_application_test|output[26]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_application_test|output[26]~52_combout\ = ((\U_jtag_wrapper|REG_GEN:2:REG_i|output\(26) $ (\U_application_test|Add0~52_combout\ $ (!\U_application_test|output[25]~51\)))) # (GND)
-- \U_application_test|output[26]~53\ = CARRY((\U_jtag_wrapper|REG_GEN:2:REG_i|output\(26) & ((\U_application_test|Add0~52_combout\) # (!\U_application_test|output[25]~51\))) # (!\U_jtag_wrapper|REG_GEN:2:REG_i|output\(26) & 
-- (\U_application_test|Add0~52_combout\ & !\U_application_test|output[25]~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|REG_GEN:2:REG_i|output\(26),
	datab => \U_application_test|Add0~52_combout\,
	datad => VCC,
	cin => \U_application_test|output[25]~51\,
	combout => \U_application_test|output[26]~52_combout\,
	cout => \U_application_test|output[26]~53\);

-- Location: LCCOMB_X22_Y20_N22
\U_application_test|output[27]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_application_test|output[27]~54_combout\ = (\U_jtag_wrapper|REG_GEN:2:REG_i|output\(27) & ((\U_application_test|Add0~54_combout\ & (\U_application_test|output[26]~53\ & VCC)) # (!\U_application_test|Add0~54_combout\ & 
-- (!\U_application_test|output[26]~53\)))) # (!\U_jtag_wrapper|REG_GEN:2:REG_i|output\(27) & ((\U_application_test|Add0~54_combout\ & (!\U_application_test|output[26]~53\)) # (!\U_application_test|Add0~54_combout\ & ((\U_application_test|output[26]~53\) # 
-- (GND)))))
-- \U_application_test|output[27]~55\ = CARRY((\U_jtag_wrapper|REG_GEN:2:REG_i|output\(27) & (!\U_application_test|Add0~54_combout\ & !\U_application_test|output[26]~53\)) # (!\U_jtag_wrapper|REG_GEN:2:REG_i|output\(27) & 
-- ((!\U_application_test|output[26]~53\) # (!\U_application_test|Add0~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|REG_GEN:2:REG_i|output\(27),
	datab => \U_application_test|Add0~54_combout\,
	datad => VCC,
	cin => \U_application_test|output[26]~53\,
	combout => \U_application_test|output[27]~54_combout\,
	cout => \U_application_test|output[27]~55\);

-- Location: LCCOMB_X22_Y20_N28
\U_application_test|output[30]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_application_test|output[30]~60_combout\ = ((\U_jtag_wrapper|REG_GEN:2:REG_i|output\(30) $ (\U_application_test|Add0~60_combout\ $ (!\U_application_test|output[29]~59\)))) # (GND)
-- \U_application_test|output[30]~61\ = CARRY((\U_jtag_wrapper|REG_GEN:2:REG_i|output\(30) & ((\U_application_test|Add0~60_combout\) # (!\U_application_test|output[29]~59\))) # (!\U_jtag_wrapper|REG_GEN:2:REG_i|output\(30) & 
-- (\U_application_test|Add0~60_combout\ & !\U_application_test|output[29]~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|REG_GEN:2:REG_i|output\(30),
	datab => \U_application_test|Add0~60_combout\,
	datad => VCC,
	cin => \U_application_test|output[29]~59\,
	combout => \U_application_test|output[30]~60_combout\,
	cout => \U_application_test|output[30]~61\);

-- Location: LCCOMB_X22_Y20_N30
\U_application_test|output[31]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_application_test|output[31]~62_combout\ = \U_application_test|Add0~62_combout\ $ (\U_application_test|output[30]~61\ $ (\U_jtag_wrapper|REG_GEN:2:REG_i|output\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_application_test|Add0~62_combout\,
	datad => \U_jtag_wrapper|REG_GEN:2:REG_i|output\(31),
	cin => \U_application_test|output[30]~61\,
	combout => \U_application_test|output[31]~62_combout\);

-- Location: FF_X23_Y19_N3
\U_jtag_wrapper|REG_GEN:0:REG_i|output[4]\ : dffeas
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
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:0:REG_i|output\(4));

-- Location: FF_X23_Y19_N13
\U_jtag_wrapper|REG_GEN:1:REG_i|output[3]\ : dffeas
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
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:1:REG_i|output\(3));

-- Location: FF_X23_Y19_N11
\U_jtag_wrapper|REG_GEN:0:REG_i|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|REG_GEN:0:REG_i|output[2]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:0:REG_i|output\(2));

-- Location: FF_X23_Y19_N29
\U_jtag_wrapper|REG_GEN:1:REG_i|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|REG_GEN:1:REG_i|output[1]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:1:REG_i|output\(1));

-- Location: FF_X23_Y19_N19
\U_jtag_wrapper|REG_GEN:0:REG_i|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|REG_GEN:0:REG_i|output[0]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:0:REG_i|output\(0));

-- Location: FF_X21_Y19_N3
\U_jtag_wrapper|REG_GEN:2:REG_i|output[1]\ : dffeas
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
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:2:REG_i|output\(1));

-- Location: FF_X22_Y19_N29
\U_jtag_wrapper|REG_GEN:2:REG_i|output[0]\ : dffeas
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
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:2:REG_i|output\(0));

-- Location: FF_X23_Y19_N15
\U_jtag_wrapper|REG_GEN:0:REG_i|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|REG_GEN:0:REG_i|output[5]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:0:REG_i|output\(5));

-- Location: FF_X21_Y19_N5
\U_jtag_wrapper|REG_GEN:2:REG_i|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|REG_GEN:2:REG_i|output[5]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:2:REG_i|output\(5));

-- Location: FF_X23_Y19_N27
\U_jtag_wrapper|REG_GEN:0:REG_i|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|REG_GEN:0:REG_i|output[6]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:0:REG_i|output\(6));

-- Location: FF_X22_Y19_N23
\U_jtag_wrapper|REG_GEN:2:REG_i|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|REG_GEN:2:REG_i|output[6]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:2:REG_i|output\(6));

-- Location: FF_X23_Y19_N21
\U_jtag_wrapper|REG_GEN:1:REG_i|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|REG_GEN:1:REG_i|output[7]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:1:REG_i|output\(7));

-- Location: FF_X21_Y19_N23
\U_jtag_wrapper|REG_GEN:2:REG_i|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|REG_GEN:2:REG_i|output[7]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:2:REG_i|output\(7));

-- Location: FF_X24_Y21_N27
\U_jtag_wrapper|REG_GEN:0:REG_i|output[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_SR_V2|output\(12),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:0:REG_i|output\(12));

-- Location: FF_X24_Y21_N23
\U_jtag_wrapper|REG_GEN:0:REG_i|output[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|REG_GEN:0:REG_i|output[11]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:0:REG_i|output\(11));

-- Location: FF_X24_Y21_N11
\U_jtag_wrapper|REG_GEN:0:REG_i|output[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|REG_GEN:0:REG_i|output[10]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:0:REG_i|output\(10));

-- Location: FF_X24_Y21_N5
\U_jtag_wrapper|REG_GEN:1:REG_i|output[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|REG_GEN:1:REG_i|output[9]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:1:REG_i|output\(9));

-- Location: FF_X24_Y21_N3
\U_jtag_wrapper|REG_GEN:0:REG_i|output[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|REG_GEN:0:REG_i|output[8]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:0:REG_i|output\(8));

-- Location: FF_X22_Y19_N27
\U_jtag_wrapper|REG_GEN:2:REG_i|output[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|REG_GEN:2:REG_i|output[9]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:2:REG_i|output\(9));

-- Location: FF_X21_Y19_N29
\U_jtag_wrapper|REG_GEN:2:REG_i|output[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_SR_V2|output\(8),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:2:REG_i|output\(8));

-- Location: FF_X24_Y21_N13
\U_jtag_wrapper|REG_GEN:1:REG_i|output[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_SR_V2|output\(13),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:1:REG_i|output\(13));

-- Location: FF_X21_Y19_N15
\U_jtag_wrapper|REG_GEN:2:REG_i|output[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_SR_V2|output\(13),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:2:REG_i|output\(13));

-- Location: FF_X24_Y21_N17
\U_jtag_wrapper|REG_GEN:1:REG_i|output[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|REG_GEN:1:REG_i|output[14]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:1:REG_i|output\(14));

-- Location: FF_X21_Y19_N1
\U_jtag_wrapper|REG_GEN:2:REG_i|output[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|REG_GEN:2:REG_i|output[14]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:2:REG_i|output\(14));

-- Location: FF_X24_Y19_N17
\U_jtag_wrapper|REG_GEN:1:REG_i|output[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|REG_GEN:1:REG_i|output[15]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:1:REG_i|output\(15));

-- Location: FF_X21_Y18_N19
\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(31),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(31));

-- Location: FF_X21_Y18_N13
\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(30),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(30));

-- Location: FF_X20_Y17_N17
\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(29),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(29));

-- Location: LCCOMB_X21_Y18_N18
\U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters~0_combout\ = (!\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(29) & (\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_or_data~q\ & (!\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(31) & 
-- !\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(29),
	datab => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_or_data~q\,
	datac => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(31),
	datad => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(30),
	combout => \U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters~0_combout\);

-- Location: FF_X21_Y18_N23
\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(28),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(28));

-- Location: FF_X21_Y18_N9
\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(27),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(27));

-- Location: FF_X21_Y18_N11
\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(26),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(26));

-- Location: LCCOMB_X21_Y18_N22
\U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters~1_combout\ = (!\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(26) & (!\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(27) & (!\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(28) & 
-- !\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(26),
	datab => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(27),
	datac => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(28),
	datad => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(25),
	combout => \U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters~1_combout\);

-- Location: LCCOMB_X21_Y18_N4
\U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters~2_combout\ = (!\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(23) & (!\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(21) & (!\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(24) & 
-- !\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(23),
	datab => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(21),
	datac => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(24),
	datad => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(22),
	combout => \U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters~2_combout\);

-- Location: FF_X21_Y18_N27
\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[19]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(19));

-- Location: FF_X20_Y18_N11
\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(18),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(18));

-- Location: FF_X21_Y18_N29
\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(17),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(17));

-- Location: LCCOMB_X21_Y18_N28
\U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters~3_combout\ = (!\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(19) & (!\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(20) & (!\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(17) & 
-- !\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(19),
	datab => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(20),
	datac => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(17),
	datad => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(18),
	combout => \U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters~3_combout\);

-- Location: LCCOMB_X21_Y18_N6
\U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters~4_combout\ = (\U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters~1_combout\ & (\U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters~3_combout\ & 
-- (\U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters~2_combout\ & \U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters~1_combout\,
	datab => \U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters~3_combout\,
	datac => \U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters~2_combout\,
	datad => \U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters~0_combout\,
	combout => \U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters~4_combout\);

-- Location: FF_X20_Y18_N5
\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(16),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(16));

-- Location: FF_X23_Y18_N29
\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(9),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(9));

-- Location: FF_X23_Y18_N13
\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[5]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(5));

-- Location: FF_X20_Y17_N11
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

-- Location: FF_X22_Y18_N31
\U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[31]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_addrcount|output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(31));

-- Location: FF_X22_Y18_N9
\U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[30]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_addrcount|output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(30));

-- Location: FF_X22_Y18_N27
\U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_SR_V2|output\(29),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_addrcount|output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(29));

-- Location: FF_X22_Y18_N5
\U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_SR_V2|output\(28),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_addrcount|output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(28));

-- Location: FF_X22_Y18_N23
\U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_SR_V2|output\(27),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_addrcount|output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(27));

-- Location: FF_X22_Y18_N1
\U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[26]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_addrcount|output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(26));

-- Location: FF_X20_Y18_N19
\U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[19]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_addrcount|output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(19));

-- Location: FF_X20_Y18_N15
\U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[18]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_addrcount|output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(18));

-- Location: FF_X20_Y18_N7
\U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_SR_V2|output\(17),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_addrcount|output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(17));

-- Location: FF_X20_Y18_N31
\U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_SR_V2|output\(16),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_addrcount|output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(16));

-- Location: FF_X23_Y18_N31
\U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_SR_V2|output\(9),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_addrcount|output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(9));

-- Location: FF_X22_Y19_N19
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

-- Location: FF_X17_Y19_N25
\U_jtag_wrapper|U_SR_V2|output[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_SR_V2|output[31]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_udr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_SR_V2|output\(31));

-- Location: FF_X22_Y20_N31
\U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_application_test|output[31]~62_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_31~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(31));

-- Location: FF_X22_Y20_N23
\U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_application_test|output[27]~54_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_31~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(27));

-- Location: FF_X22_Y20_N21
\U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_application_test|output[26]~52_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_31~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(26));

-- Location: LCCOMB_X21_Y20_N14
\U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~2_combout\ = (\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_26~q\ & ((\U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(26)) # ((\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_27~q\ & 
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(27))))) # (!\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_26~q\ & (((\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_27~q\ & \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_26~q\,
	datab => \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(26),
	datac => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_27~q\,
	datad => \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(27),
	combout => \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~2_combout\);

-- Location: FF_X22_Y20_N17
\U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_application_test|output[24]~48_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_31~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(24));

-- Location: FF_X22_Y20_N15
\U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_application_test|output[23]~46_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_31~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(23));

-- Location: FF_X22_Y20_N7
\U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_application_test|output[19]~38_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_31~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(19));

-- Location: FF_X22_Y20_N5
\U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_application_test|output[18]~36_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_31~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(18));

-- Location: LCCOMB_X21_Y20_N12
\U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~7_combout\ = (\U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(19) & ((\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_19~q\) # ((\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_18~q\ & 
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(18))))) # (!\U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(19) & (((\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_18~q\ & \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(19),
	datab => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_19~q\,
	datac => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_18~q\,
	datad => \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(18),
	combout => \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~7_combout\);

-- Location: FF_X22_Y20_N3
\U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_application_test|output[17]~34_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_31~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(17));

-- Location: FF_X22_Y21_N31
\U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_application_test|output[15]~30_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_31~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(15));

-- Location: FF_X22_Y21_N29
\U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_application_test|output[14]~28_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_31~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(14));

-- Location: LCCOMB_X21_Y21_N6
\U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~10_combout\ = (\U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(15) & ((\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_15~q\) # ((\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_14~q\ & 
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(14))))) # (!\U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(15) & (\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_14~q\ & ((\U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(15),
	datab => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_14~q\,
	datac => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_15~q\,
	datad => \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(14),
	combout => \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~10_combout\);

-- Location: FF_X22_Y21_N27
\U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_application_test|output[13]~26_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_31~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(13));

-- Location: FF_X22_Y21_N25
\U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_application_test|output[12]~24_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_31~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(12));

-- Location: LCCOMB_X21_Y21_N24
\U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~11_combout\ = (\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_13~q\ & ((\U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(13)) # ((\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_12~q\ & 
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(12))))) # (!\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_13~q\ & (((\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_12~q\ & \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_13~q\,
	datab => \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(13),
	datac => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_12~q\,
	datad => \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(12),
	combout => \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~11_combout\);

-- Location: FF_X22_Y21_N23
\U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_application_test|output[11]~22_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_31~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(11));

-- Location: FF_X22_Y21_N21
\U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_application_test|output[10]~20_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_31~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(10));

-- Location: LCCOMB_X21_Y21_N20
\U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~12_combout\ = (\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_11~q\ & ((\U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(11)) # ((\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_10~q\ & 
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(10))))) # (!\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_11~q\ & (((\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_10~q\ & \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_11~q\,
	datab => \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(11),
	datac => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_10~q\,
	datad => \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(10),
	combout => \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~12_combout\);

-- Location: FF_X22_Y21_N19
\U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_application_test|output[9]~18_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_31~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(9));

-- Location: FF_X22_Y21_N17
\U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_application_test|output[8]~16_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_31~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(8));

-- Location: LCCOMB_X21_Y21_N18
\U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~13_combout\ = (\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_8~q\ & ((\U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(8)) # ((\U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(9) & \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_9~q\)))) 
-- # (!\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_8~q\ & (\U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(9) & (\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_8~q\,
	datab => \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(9),
	datac => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_9~q\,
	datad => \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(8),
	combout => \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~13_combout\);

-- Location: LCCOMB_X21_Y21_N28
\U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~14_combout\ = (\U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~10_combout\) # ((\U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~13_combout\) # ((\U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~11_combout\) # 
-- (\U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~10_combout\,
	datab => \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~13_combout\,
	datac => \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~11_combout\,
	datad => \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~12_combout\,
	combout => \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~14_combout\);

-- Location: FF_X22_Y21_N15
\U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_application_test|output[7]~14_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_31~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(7));

-- Location: FF_X22_Y21_N13
\U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_application_test|output[6]~12_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_31~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(6));

-- Location: LCCOMB_X20_Y21_N6
\U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~15_combout\ = (\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_7~q\ & ((\U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(7)) # ((\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_6~q\ & \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(6))))) 
-- # (!\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_7~q\ & (((\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_6~q\ & \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_7~q\,
	datab => \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(7),
	datac => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_6~q\,
	datad => \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(6),
	combout => \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~15_combout\);

-- Location: FF_X22_Y21_N11
\U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_application_test|output[5]~10_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_31~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(5));

-- Location: FF_X22_Y21_N9
\U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_application_test|output[4]~8_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_31~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(4));

-- Location: LCCOMB_X20_Y21_N8
\U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~16_combout\ = (\U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(5) & ((\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_5~q\) # ((\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_4~q\ & \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(4))))) 
-- # (!\U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(5) & (((\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_4~q\ & \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(5),
	datab => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_5~q\,
	datac => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_4~q\,
	datad => \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(4),
	combout => \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~16_combout\);

-- Location: FF_X22_Y21_N7
\U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_application_test|output[3]~6_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_31~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(3));

-- Location: FF_X22_Y21_N5
\U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_application_test|output[2]~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_31~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(2));

-- Location: LCCOMB_X20_Y21_N14
\U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~17_combout\ = (\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_3~q\ & ((\U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(3)) # ((\U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(2) & \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_2~q\)))) 
-- # (!\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_3~q\ & (\U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(2) & (\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_3~q\,
	datab => \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(2),
	datac => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_2~q\,
	datad => \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(3),
	combout => \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~17_combout\);

-- Location: FF_X22_Y21_N3
\U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_application_test|output[1]~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_31~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(1));

-- Location: LCCOMB_X20_Y21_N28
\U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~18_combout\ = (\U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~17_combout\) # ((\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_1~q\ & \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_1~q\,
	datac => \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(1),
	datad => \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~17_combout\,
	combout => \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~18_combout\);

-- Location: LCCOMB_X20_Y21_N20
\U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~19_combout\ = (\U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~15_combout\) # ((\U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~16_combout\) # ((\U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~18_combout\) # 
-- (\U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~15_combout\,
	datab => \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~16_combout\,
	datac => \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~18_combout\,
	datad => \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~14_combout\,
	combout => \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~19_combout\);

-- Location: LCCOMB_X22_Y18_N4
\U_jtag_wrapper|U_ADDR_TOP|U_logic|out_data_rdy~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_ADDR_TOP|U_logic|out_data_rdy~0_combout\ = (\U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(31) & (\U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(30) & (\U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(28) & 
-- \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(31),
	datab => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(30),
	datac => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(28),
	datad => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(29),
	combout => \U_jtag_wrapper|U_ADDR_TOP|U_logic|out_data_rdy~0_combout\);

-- Location: LCCOMB_X22_Y18_N20
\U_jtag_wrapper|U_ADDR_TOP|U_logic|out_data_rdy~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_ADDR_TOP|U_logic|out_data_rdy~1_combout\ = (\U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(27) & (\U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(26) & (\U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(24) & 
-- \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(27),
	datab => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(26),
	datac => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(24),
	datad => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(25),
	combout => \U_jtag_wrapper|U_ADDR_TOP|U_logic|out_data_rdy~1_combout\);

-- Location: LCCOMB_X22_Y18_N12
\U_jtag_wrapper|U_ADDR_TOP|U_logic|out_data_rdy~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_ADDR_TOP|U_logic|out_data_rdy~2_combout\ = (\U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(23) & (\U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(21) & (\U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(20) & 
-- \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(23),
	datab => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(21),
	datac => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(20),
	datad => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(22),
	combout => \U_jtag_wrapper|U_ADDR_TOP|U_logic|out_data_rdy~2_combout\);

-- Location: LCCOMB_X20_Y18_N30
\U_jtag_wrapper|U_ADDR_TOP|U_logic|out_data_rdy~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_ADDR_TOP|U_logic|out_data_rdy~3_combout\ = (\U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(17) & (\U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(18) & (\U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(16) & 
-- \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(17),
	datab => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(18),
	datac => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(16),
	datad => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(19),
	combout => \U_jtag_wrapper|U_ADDR_TOP|U_logic|out_data_rdy~3_combout\);

-- Location: LCCOMB_X22_Y18_N6
\U_jtag_wrapper|U_ADDR_TOP|U_logic|out_data_rdy~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_ADDR_TOP|U_logic|out_data_rdy~4_combout\ = (\U_jtag_wrapper|U_ADDR_TOP|U_logic|out_data_rdy~3_combout\ & (\U_jtag_wrapper|U_ADDR_TOP|U_logic|out_data_rdy~1_combout\ & (\U_jtag_wrapper|U_ADDR_TOP|U_logic|out_data_rdy~0_combout\ & 
-- \U_jtag_wrapper|U_ADDR_TOP|U_logic|out_data_rdy~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_ADDR_TOP|U_logic|out_data_rdy~3_combout\,
	datab => \U_jtag_wrapper|U_ADDR_TOP|U_logic|out_data_rdy~1_combout\,
	datac => \U_jtag_wrapper|U_ADDR_TOP|U_logic|out_data_rdy~0_combout\,
	datad => \U_jtag_wrapper|U_ADDR_TOP|U_logic|out_data_rdy~2_combout\,
	combout => \U_jtag_wrapper|U_ADDR_TOP|U_logic|out_data_rdy~4_combout\);

-- Location: LCCOMB_X20_Y18_N8
\U_jtag_wrapper|U_ADDR_TOP|U_logic|out_data_rdy~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_ADDR_TOP|U_logic|out_data_rdy~5_combout\ = (\U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(13) & (\U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(15) & (\U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(12) & 
-- \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(13),
	datab => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(15),
	datac => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(12),
	datad => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(14),
	combout => \U_jtag_wrapper|U_ADDR_TOP|U_logic|out_data_rdy~5_combout\);

-- Location: LCCOMB_X21_Y21_N12
\U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~24_combout\ = (\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_13~q\) # ((\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_15~q\) # ((\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_14~q\) # 
-- (\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_16~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_13~q\,
	datab => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_15~q\,
	datac => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_14~q\,
	datad => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_16~q\,
	combout => \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~24_combout\);

-- Location: LCCOMB_X21_Y20_N8
\U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~27_combout\ = (\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_21~q\) # ((\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_23~q\) # ((\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_22~q\) # 
-- (\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_24~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_21~q\,
	datab => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_23~q\,
	datac => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_22~q\,
	datad => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_24~q\,
	combout => \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~27_combout\);

-- Location: LCCOMB_X21_Y20_N30
\U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~28_combout\ = (\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_27~q\) # ((\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_25~q\) # ((\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_26~q\) # 
-- (\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_28~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_27~q\,
	datab => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_25~q\,
	datac => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_26~q\,
	datad => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_28~q\,
	combout => \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~28_combout\);

-- Location: FF_X24_Y19_N29
\U_jtag_wrapper|REG_GEN:1:REG_i|output[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_SR_V2|output\(31),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:1:REG_i|output\(31));

-- Location: FF_X24_Y19_N7
\U_jtag_wrapper|REG_GEN:0:REG_i|output[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_SR_V2|output\(31),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:0:REG_i|output\(31));

-- Location: FF_X24_Y19_N27
\U_jtag_wrapper|REG_GEN:0:REG_i|output[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|REG_GEN:0:REG_i|output[30]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:0:REG_i|output\(30));

-- Location: FF_X24_Y21_N21
\U_jtag_wrapper|REG_GEN:1:REG_i|output[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|REG_GEN:1:REG_i|output[29]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:1:REG_i|output\(29));

-- Location: FF_X24_Y19_N21
\U_jtag_wrapper|REG_GEN:1:REG_i|output[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|REG_GEN:1:REG_i|output[28]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:1:REG_i|output\(28));

-- Location: FF_X24_Y19_N3
\U_jtag_wrapper|REG_GEN:0:REG_i|output[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|REG_GEN:0:REG_i|output[27]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:0:REG_i|output\(27));

-- Location: FF_X24_Y19_N13
\U_jtag_wrapper|REG_GEN:1:REG_i|output[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_SR_V2|output\(26),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:1:REG_i|output\(26));

-- Location: FF_X24_Y19_N11
\U_jtag_wrapper|REG_GEN:0:REG_i|output[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|REG_GEN:0:REG_i|output[25]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:0:REG_i|output\(25));

-- Location: FF_X24_Y20_N9
\U_jtag_wrapper|REG_GEN:0:REG_i|output[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_SR_V2|output\(24),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:0:REG_i|output\(24));

-- Location: FF_X24_Y20_N11
\U_jtag_wrapper|REG_GEN:0:REG_i|output[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|REG_GEN:0:REG_i|output[23]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:0:REG_i|output\(23));

-- Location: FF_X24_Y20_N21
\U_jtag_wrapper|REG_GEN:0:REG_i|output[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|REG_GEN:0:REG_i|output[22]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:0:REG_i|output\(22));

-- Location: FF_X24_Y20_N15
\U_jtag_wrapper|REG_GEN:0:REG_i|output[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_SR_V2|output\(21),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:0:REG_i|output\(21));

-- Location: FF_X24_Y19_N5
\U_jtag_wrapper|REG_GEN:1:REG_i|output[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|REG_GEN:1:REG_i|output[20]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:1:REG_i|output\(20));

-- Location: FF_X19_Y20_N25
\U_jtag_wrapper|REG_GEN:1:REG_i|output[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_SR_V2|output\(19),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:1:REG_i|output\(19));

-- Location: FF_X24_Y20_N3
\U_jtag_wrapper|REG_GEN:0:REG_i|output[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|REG_GEN:0:REG_i|output[18]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:0:REG_i|output\(18));

-- Location: FF_X19_Y20_N5
\U_jtag_wrapper|REG_GEN:1:REG_i|output[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|REG_GEN:1:REG_i|output[17]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:1:REG_i|output\(17));

-- Location: FF_X24_Y20_N23
\U_jtag_wrapper|REG_GEN:0:REG_i|output[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_SR_V2|output\(16),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:0:REG_i|output\(16));

-- Location: FF_X21_Y19_N11
\U_jtag_wrapper|REG_GEN:2:REG_i|output[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_SR_V2|output\(31),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:2:REG_i|output\(31));

-- Location: FF_X21_Y19_N21
\U_jtag_wrapper|REG_GEN:2:REG_i|output[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|REG_GEN:2:REG_i|output[30]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:2:REG_i|output\(30));

-- Location: FF_X21_Y19_N31
\U_jtag_wrapper|REG_GEN:2:REG_i|output[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|REG_GEN:2:REG_i|output[29]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:2:REG_i|output\(29));

-- Location: FF_X22_Y19_N1
\U_jtag_wrapper|REG_GEN:2:REG_i|output[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_SR_V2|output\(28),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:2:REG_i|output\(28));

-- Location: FF_X21_Y19_N17
\U_jtag_wrapper|REG_GEN:2:REG_i|output[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|REG_GEN:2:REG_i|output[27]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:2:REG_i|output\(27));

-- Location: FF_X21_Y19_N27
\U_jtag_wrapper|REG_GEN:2:REG_i|output[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_SR_V2|output\(26),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:2:REG_i|output\(26));

-- Location: FF_X21_Y19_N13
\U_jtag_wrapper|REG_GEN:2:REG_i|output[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|REG_GEN:2:REG_i|output[25]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:2:REG_i|output\(25));

-- Location: FF_X19_Y20_N9
\U_jtag_wrapper|REG_GEN:2:REG_i|output[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|REG_GEN:2:REG_i|output[24]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:2:REG_i|output\(24));

-- Location: FF_X19_Y20_N27
\U_jtag_wrapper|REG_GEN:2:REG_i|output[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|REG_GEN:2:REG_i|output[23]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:2:REG_i|output\(23));

-- Location: FF_X19_Y20_N21
\U_jtag_wrapper|REG_GEN:2:REG_i|output[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_SR_V2|output\(22),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:2:REG_i|output\(22));

-- Location: FF_X19_Y20_N31
\U_jtag_wrapper|REG_GEN:2:REG_i|output[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|REG_GEN:2:REG_i|output[21]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:2:REG_i|output\(21));

-- Location: FF_X21_Y19_N7
\U_jtag_wrapper|REG_GEN:2:REG_i|output[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|REG_GEN:2:REG_i|output[20]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:2:REG_i|output\(20));

-- Location: FF_X19_Y20_N7
\U_jtag_wrapper|REG_GEN:2:REG_i|output[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|REG_GEN:2:REG_i|output[16]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:2:REG_i|output\(16));

-- Location: LCCOMB_X21_Y18_N8
\U_jtag_wrapper|U_ADDR_TOP|U_logic|sel_out_reg~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_ADDR_TOP|U_logic|sel_out_reg~1_combout\ = (\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(30) & (\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(28) & (\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(27) & 
-- \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(30),
	datab => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(28),
	datac => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(27),
	datad => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(29),
	combout => \U_jtag_wrapper|U_ADDR_TOP|U_logic|sel_out_reg~1_combout\);

-- Location: LCCOMB_X20_Y18_N4
\U_jtag_wrapper|U_ADDR_TOP|U_logic|sel_out_reg~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_ADDR_TOP|U_logic|sel_out_reg~5_combout\ = (\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(18) & (\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(15) & (\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(16) & 
-- \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(18),
	datab => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(15),
	datac => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(16),
	datad => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(17),
	combout => \U_jtag_wrapper|U_ADDR_TOP|U_logic|sel_out_reg~5_combout\);

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

-- Location: FF_X10_Y18_N11
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

-- Location: LCCOMB_X10_Y18_N8
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

-- Location: LCCOMB_X10_Y18_N10
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

-- Location: FF_X11_Y16_N27
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

-- Location: LCCOMB_X11_Y16_N18
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

-- Location: FF_X12_Y16_N11
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

-- Location: FF_X12_Y16_N13
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

-- Location: FF_X12_Y16_N7
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

-- Location: LCCOMB_X11_Y17_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datab => \altera_internal_jtag~TMSUTAP\,
	datac => \altera_internal_jtag~TDIUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(8),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~0_combout\);

-- Location: FF_X11_Y16_N15
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

-- Location: LCCOMB_X11_Y17_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~1\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(1),
	datab => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~0_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~1_combout\);

-- Location: LCCOMB_X10_Y19_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~1\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(2),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(5),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~1_combout\);

-- Location: LCCOMB_X11_Y19_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~8\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~8_combout\);

-- Location: LCCOMB_X12_Y16_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~11\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(6),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datad => \~GND~combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~11_combout\);

-- Location: LCCOMB_X12_Y16_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~12\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(7),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datad => \~GND~combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~12_combout\);

-- Location: LCCOMB_X12_Y16_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~13\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \~GND~combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(8),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~13_combout\);

-- Location: LCCOMB_X11_Y16_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(1),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~0_combout\);

-- Location: LCCOMB_X11_Y16_N14
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

-- Location: LCCOMB_X11_Y16_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~2\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(1),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~2_combout\);

-- Location: FF_X12_Y19_N23
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

-- Location: LCCOMB_X11_Y19_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~10\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~10_combout\);

-- Location: LCCOMB_X11_Y19_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~13\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~13_combout\);

-- Location: LCCOMB_X11_Y19_N14
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~14\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~14_combout\);

-- Location: LCCOMB_X12_Y19_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~15\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~14_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~13_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~15_combout\);

-- Location: LCCOMB_X10_Y18_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~10\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~10_combout\);

-- Location: LCCOMB_X11_Y19_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~16\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~16_combout\);

-- Location: LCCOMB_X11_Y19_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~17\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~16_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~17_combout\);

-- Location: LCCOMB_X11_Y19_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~18\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~18_combout\);

-- Location: CLKCTRL_G2
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

-- Location: LCCOMB_X22_Y19_N18
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

-- Location: LCCOMB_X23_Y19_N10
\U_jtag_wrapper|REG_GEN:0:REG_i|output[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|REG_GEN:0:REG_i|output[2]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|output\(2),
	combout => \U_jtag_wrapper|REG_GEN:0:REG_i|output[2]~feeder_combout\);

-- Location: LCCOMB_X23_Y19_N28
\U_jtag_wrapper|REG_GEN:1:REG_i|output[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|REG_GEN:1:REG_i|output[1]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|output\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|output\(1),
	combout => \U_jtag_wrapper|REG_GEN:1:REG_i|output[1]~feeder_combout\);

-- Location: LCCOMB_X23_Y19_N18
\U_jtag_wrapper|REG_GEN:0:REG_i|output[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|REG_GEN:0:REG_i|output[0]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|output\(0),
	combout => \U_jtag_wrapper|REG_GEN:0:REG_i|output[0]~feeder_combout\);

-- Location: LCCOMB_X21_Y19_N4
\U_jtag_wrapper|REG_GEN:2:REG_i|output[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|REG_GEN:2:REG_i|output[5]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|output\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|output\(5),
	combout => \U_jtag_wrapper|REG_GEN:2:REG_i|output[5]~feeder_combout\);

-- Location: LCCOMB_X23_Y19_N14
\U_jtag_wrapper|REG_GEN:0:REG_i|output[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|REG_GEN:0:REG_i|output[5]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|output\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|output\(5),
	combout => \U_jtag_wrapper|REG_GEN:0:REG_i|output[5]~feeder_combout\);

-- Location: LCCOMB_X22_Y19_N22
\U_jtag_wrapper|REG_GEN:2:REG_i|output[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|REG_GEN:2:REG_i|output[6]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|output\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|output\(6),
	combout => \U_jtag_wrapper|REG_GEN:2:REG_i|output[6]~feeder_combout\);

-- Location: LCCOMB_X23_Y19_N26
\U_jtag_wrapper|REG_GEN:0:REG_i|output[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|REG_GEN:0:REG_i|output[6]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|output\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|output\(6),
	combout => \U_jtag_wrapper|REG_GEN:0:REG_i|output[6]~feeder_combout\);

-- Location: LCCOMB_X21_Y19_N22
\U_jtag_wrapper|REG_GEN:2:REG_i|output[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|REG_GEN:2:REG_i|output[7]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|output\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|output\(7),
	combout => \U_jtag_wrapper|REG_GEN:2:REG_i|output[7]~feeder_combout\);

-- Location: LCCOMB_X23_Y19_N20
\U_jtag_wrapper|REG_GEN:1:REG_i|output[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|REG_GEN:1:REG_i|output[7]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|output\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|output\(7),
	combout => \U_jtag_wrapper|REG_GEN:1:REG_i|output[7]~feeder_combout\);

-- Location: LCCOMB_X24_Y21_N22
\U_jtag_wrapper|REG_GEN:0:REG_i|output[11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|REG_GEN:0:REG_i|output[11]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|output\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|output\(11),
	combout => \U_jtag_wrapper|REG_GEN:0:REG_i|output[11]~feeder_combout\);

-- Location: LCCOMB_X24_Y21_N10
\U_jtag_wrapper|REG_GEN:0:REG_i|output[10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|REG_GEN:0:REG_i|output[10]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|output\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|output\(10),
	combout => \U_jtag_wrapper|REG_GEN:0:REG_i|output[10]~feeder_combout\);

-- Location: LCCOMB_X22_Y19_N26
\U_jtag_wrapper|REG_GEN:2:REG_i|output[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|REG_GEN:2:REG_i|output[9]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|output\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|output\(9),
	combout => \U_jtag_wrapper|REG_GEN:2:REG_i|output[9]~feeder_combout\);

-- Location: LCCOMB_X24_Y21_N4
\U_jtag_wrapper|REG_GEN:1:REG_i|output[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|REG_GEN:1:REG_i|output[9]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|output\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|output\(9),
	combout => \U_jtag_wrapper|REG_GEN:1:REG_i|output[9]~feeder_combout\);

-- Location: LCCOMB_X24_Y21_N2
\U_jtag_wrapper|REG_GEN:0:REG_i|output[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|REG_GEN:0:REG_i|output[8]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|output\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|output\(8),
	combout => \U_jtag_wrapper|REG_GEN:0:REG_i|output[8]~feeder_combout\);

-- Location: LCCOMB_X21_Y19_N0
\U_jtag_wrapper|REG_GEN:2:REG_i|output[14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|REG_GEN:2:REG_i|output[14]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|output\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|output\(14),
	combout => \U_jtag_wrapper|REG_GEN:2:REG_i|output[14]~feeder_combout\);

-- Location: LCCOMB_X24_Y21_N16
\U_jtag_wrapper|REG_GEN:1:REG_i|output[14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|REG_GEN:1:REG_i|output[14]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|output\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|output\(14),
	combout => \U_jtag_wrapper|REG_GEN:1:REG_i|output[14]~feeder_combout\);

-- Location: LCCOMB_X24_Y19_N16
\U_jtag_wrapper|REG_GEN:1:REG_i|output[15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|REG_GEN:1:REG_i|output[15]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|output\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|output\(15),
	combout => \U_jtag_wrapper|REG_GEN:1:REG_i|output[15]~feeder_combout\);

-- Location: LCCOMB_X21_Y18_N26
\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[19]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[19]~feeder_combout\ = \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(19),
	combout => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[19]~feeder_combout\);

-- Location: LCCOMB_X23_Y18_N12
\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[5]~feeder_combout\ = \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(5),
	combout => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[5]~feeder_combout\);

-- Location: LCCOMB_X20_Y17_N10
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

-- Location: LCCOMB_X22_Y18_N30
\U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[31]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[31]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|output\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|output\(31),
	combout => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[31]~feeder_combout\);

-- Location: LCCOMB_X21_Y19_N20
\U_jtag_wrapper|REG_GEN:2:REG_i|output[30]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|REG_GEN:2:REG_i|output[30]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|output\(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|output\(30),
	combout => \U_jtag_wrapper|REG_GEN:2:REG_i|output[30]~feeder_combout\);

-- Location: LCCOMB_X22_Y18_N8
\U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[30]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[30]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|output\(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|output\(30),
	combout => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[30]~feeder_combout\);

-- Location: LCCOMB_X24_Y19_N26
\U_jtag_wrapper|REG_GEN:0:REG_i|output[30]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|REG_GEN:0:REG_i|output[30]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|output\(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|output\(30),
	combout => \U_jtag_wrapper|REG_GEN:0:REG_i|output[30]~feeder_combout\);

-- Location: LCCOMB_X24_Y21_N20
\U_jtag_wrapper|REG_GEN:1:REG_i|output[29]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|REG_GEN:1:REG_i|output[29]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|output\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|output\(29),
	combout => \U_jtag_wrapper|REG_GEN:1:REG_i|output[29]~feeder_combout\);

-- Location: LCCOMB_X21_Y19_N30
\U_jtag_wrapper|REG_GEN:2:REG_i|output[29]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|REG_GEN:2:REG_i|output[29]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|output\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|output\(29),
	combout => \U_jtag_wrapper|REG_GEN:2:REG_i|output[29]~feeder_combout\);

-- Location: LCCOMB_X24_Y19_N20
\U_jtag_wrapper|REG_GEN:1:REG_i|output[28]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|REG_GEN:1:REG_i|output[28]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|output\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|output\(28),
	combout => \U_jtag_wrapper|REG_GEN:1:REG_i|output[28]~feeder_combout\);

-- Location: LCCOMB_X21_Y19_N16
\U_jtag_wrapper|REG_GEN:2:REG_i|output[27]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|REG_GEN:2:REG_i|output[27]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|output\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|output\(27),
	combout => \U_jtag_wrapper|REG_GEN:2:REG_i|output[27]~feeder_combout\);

-- Location: LCCOMB_X24_Y19_N2
\U_jtag_wrapper|REG_GEN:0:REG_i|output[27]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|REG_GEN:0:REG_i|output[27]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|output\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|output\(27),
	combout => \U_jtag_wrapper|REG_GEN:0:REG_i|output[27]~feeder_combout\);

-- Location: LCCOMB_X22_Y18_N0
\U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[26]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[26]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|output\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|output\(26),
	combout => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[26]~feeder_combout\);

-- Location: LCCOMB_X21_Y19_N12
\U_jtag_wrapper|REG_GEN:2:REG_i|output[25]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|REG_GEN:2:REG_i|output[25]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|output\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|output\(25),
	combout => \U_jtag_wrapper|REG_GEN:2:REG_i|output[25]~feeder_combout\);

-- Location: LCCOMB_X24_Y19_N10
\U_jtag_wrapper|REG_GEN:0:REG_i|output[25]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|REG_GEN:0:REG_i|output[25]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|output\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|output\(25),
	combout => \U_jtag_wrapper|REG_GEN:0:REG_i|output[25]~feeder_combout\);

-- Location: LCCOMB_X19_Y20_N8
\U_jtag_wrapper|REG_GEN:2:REG_i|output[24]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|REG_GEN:2:REG_i|output[24]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|output\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|output\(24),
	combout => \U_jtag_wrapper|REG_GEN:2:REG_i|output[24]~feeder_combout\);

-- Location: LCCOMB_X19_Y20_N26
\U_jtag_wrapper|REG_GEN:2:REG_i|output[23]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|REG_GEN:2:REG_i|output[23]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|output\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|output\(23),
	combout => \U_jtag_wrapper|REG_GEN:2:REG_i|output[23]~feeder_combout\);

-- Location: LCCOMB_X24_Y20_N10
\U_jtag_wrapper|REG_GEN:0:REG_i|output[23]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|REG_GEN:0:REG_i|output[23]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|output\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|output\(23),
	combout => \U_jtag_wrapper|REG_GEN:0:REG_i|output[23]~feeder_combout\);

-- Location: LCCOMB_X24_Y20_N20
\U_jtag_wrapper|REG_GEN:0:REG_i|output[22]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|REG_GEN:0:REG_i|output[22]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|output\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|output\(22),
	combout => \U_jtag_wrapper|REG_GEN:0:REG_i|output[22]~feeder_combout\);

-- Location: LCCOMB_X19_Y20_N30
\U_jtag_wrapper|REG_GEN:2:REG_i|output[21]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|REG_GEN:2:REG_i|output[21]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|output\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|output\(21),
	combout => \U_jtag_wrapper|REG_GEN:2:REG_i|output[21]~feeder_combout\);

-- Location: LCCOMB_X21_Y19_N6
\U_jtag_wrapper|REG_GEN:2:REG_i|output[20]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|REG_GEN:2:REG_i|output[20]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|output\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|output\(20),
	combout => \U_jtag_wrapper|REG_GEN:2:REG_i|output[20]~feeder_combout\);

-- Location: LCCOMB_X24_Y19_N4
\U_jtag_wrapper|REG_GEN:1:REG_i|output[20]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|REG_GEN:1:REG_i|output[20]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|output\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|output\(20),
	combout => \U_jtag_wrapper|REG_GEN:1:REG_i|output[20]~feeder_combout\);

-- Location: LCCOMB_X20_Y18_N18
\U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[19]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[19]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|output\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|output\(19),
	combout => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[19]~feeder_combout\);

-- Location: LCCOMB_X20_Y18_N14
\U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[18]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[18]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|output\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|output\(18),
	combout => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[18]~feeder_combout\);

-- Location: LCCOMB_X24_Y20_N2
\U_jtag_wrapper|REG_GEN:0:REG_i|output[18]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|REG_GEN:0:REG_i|output[18]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|output\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|output\(18),
	combout => \U_jtag_wrapper|REG_GEN:0:REG_i|output[18]~feeder_combout\);

-- Location: LCCOMB_X19_Y20_N4
\U_jtag_wrapper|REG_GEN:1:REG_i|output[17]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|REG_GEN:1:REG_i|output[17]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|output\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|output\(17),
	combout => \U_jtag_wrapper|REG_GEN:1:REG_i|output[17]~feeder_combout\);

-- Location: LCCOMB_X19_Y20_N6
\U_jtag_wrapper|REG_GEN:2:REG_i|output[16]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|REG_GEN:2:REG_i|output[16]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|output\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|output\(16),
	combout => \U_jtag_wrapper|REG_GEN:2:REG_i|output[16]~feeder_combout\);

-- Location: LCCOMB_X17_Y19_N24
\U_jtag_wrapper|U_SR_V2|output[31]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_SR_V2|output[31]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|temp\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|temp\(31),
	combout => \U_jtag_wrapper|U_SR_V2|output[31]~feeder_combout\);

-- Location: LCCOMB_X11_Y16_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~feeder_combout\);

-- Location: LCCOMB_X11_Y16_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]~feeder_combout\);

-- Location: LCCOMB_X11_Y16_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~feeder_combout\);

-- Location: LCCOMB_X11_Y16_N30
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(7),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~feeder_combout\);

-- Location: LCCOMB_X12_Y19_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[1]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[1]~feeder_combout\);

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

-- Location: LCCOMB_X12_Y16_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~4\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datac => \altera_internal_jtag~TDIUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(8),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~4_combout\);

-- Location: LCCOMB_X12_Y16_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[8]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~4_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[8]~feeder_combout\);

-- Location: LCCOMB_X12_Y17_N24
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

-- Location: LCCOMB_X11_Y17_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~1\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~1_combout\);

-- Location: FF_X11_Y17_N7
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

-- Location: LCCOMB_X10_Y16_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~8\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(9),
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~8_combout\);

-- Location: FF_X10_Y16_N13
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

-- Location: LCCOMB_X10_Y16_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~9\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(14),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(10),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~9_combout\);

-- Location: FF_X10_Y16_N1
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

-- Location: LCCOMB_X10_Y16_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~10\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(10),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~10_combout\);

-- Location: FF_X10_Y16_N7
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

-- Location: LCCOMB_X10_Y16_N2
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

-- Location: FF_X10_Y16_N3
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

-- Location: LCCOMB_X10_Y16_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~12\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(13),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~12_combout\);

-- Location: FF_X10_Y16_N25
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

-- Location: LCCOMB_X10_Y16_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_dr_scan_proc~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(14),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(12),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_dr_scan_proc~0_combout\);

-- Location: FF_X10_Y16_N11
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

-- Location: LCCOMB_X11_Y17_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_proc~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(7),
	datab => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(5),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_proc~0_combout\);

-- Location: FF_X11_Y17_N21
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

-- Location: LCCOMB_X11_Y17_N14
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

-- Location: FF_X11_Y17_N15
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

-- Location: LCCOMB_X11_Y17_N30
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~2\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(15),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(1),
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~2_combout\);

-- Location: FF_X11_Y17_N31
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

-- Location: LCCOMB_X11_Y17_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~3\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~3_combout\);

-- Location: FF_X11_Y17_N23
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

-- Location: LCCOMB_X11_Y17_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~4\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(7),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~4_combout\);

-- Location: FF_X11_Y17_N29
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

-- Location: LCCOMB_X12_Y18_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~5\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datab => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~5_combout\);

-- Location: FF_X12_Y18_N27
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

-- Location: LCCOMB_X11_Y17_N26
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

-- Location: FF_X11_Y17_N27
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

-- Location: LCCOMB_X11_Y17_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~7\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(6),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~7_combout\);

-- Location: FF_X11_Y17_N9
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

-- Location: LCCOMB_X12_Y18_N26
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

-- Location: LCCOMB_X12_Y17_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg_proc~0_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg~feeder_combout\);

-- Location: FF_X12_Y17_N7
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg~q\);

-- Location: LCCOMB_X12_Y17_N28
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

-- Location: LCCOMB_X10_Y19_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[9]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[9]~feeder_combout\);

-- Location: LCCOMB_X14_Y17_N6
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

-- Location: FF_X14_Y17_N7
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

-- Location: LCCOMB_X14_Y17_N2
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

-- Location: FF_X14_Y17_N3
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

-- Location: LCCOMB_X14_Y17_N0
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

-- Location: FF_X14_Y17_N1
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

-- Location: LCCOMB_X14_Y17_N4
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

-- Location: FF_X14_Y17_N5
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

-- Location: FF_X10_Y19_N9
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[9]~feeder_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(9));

-- Location: FF_X10_Y19_N3
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(9),
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(8));

-- Location: LCCOMB_X10_Y19_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[7]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(8),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[7]~feeder_combout\);

-- Location: FF_X10_Y19_N29
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

-- Location: FF_X10_Y19_N23
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

-- Location: LCCOMB_X10_Y19_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(8),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(7),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(6),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(9),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~0_combout\);

-- Location: FF_X10_Y19_N27
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

-- Location: FF_X10_Y19_N21
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

-- Location: LCCOMB_X10_Y19_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[3]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[3]~feeder_combout\);

-- Location: FF_X10_Y19_N1
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

-- Location: LCCOMB_X10_Y19_N14
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[2]~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[2]~0_combout\);

-- Location: FF_X10_Y19_N15
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

-- Location: FF_X10_Y19_N17
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(2),
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(1));

-- Location: LCCOMB_X10_Y19_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[0]~1\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[0]~1_combout\);

-- Location: FF_X10_Y19_N19
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

-- Location: LCCOMB_X10_Y17_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal1~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~1_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~0_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal1~0_combout\);

-- Location: FF_X10_Y17_N27
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

-- Location: FF_X12_Y17_N29
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

-- Location: LCCOMB_X12_Y17_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg_proc~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg_proc~0_combout\);

-- Location: FF_X12_Y17_N3
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

-- Location: FF_X12_Y16_N25
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

-- Location: LCCOMB_X20_Y21_N22
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

-- Location: FF_X20_Y21_N23
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

-- Location: FF_X20_Y21_N15
\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_1~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_2~q\);

-- Location: FF_X20_Y21_N27
\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_2~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_3~q\);

-- Location: FF_X20_Y21_N9
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

-- Location: FF_X20_Y21_N5
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

-- Location: FF_X20_Y21_N7
\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_5~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_6~q\);

-- Location: FF_X20_Y21_N11
\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_6~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_7~q\);

-- Location: LCCOMB_X21_Y21_N16
\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_8~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_8~feeder_combout\ = \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_7~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_7~q\,
	combout => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_8~feeder_combout\);

-- Location: FF_X21_Y21_N17
\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_8~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_8~q\);

-- Location: FF_X21_Y21_N19
\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_8~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_9~q\);

-- Location: FF_X21_Y21_N21
\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_9~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_10~q\);

-- Location: FF_X21_Y21_N23
\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_10~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_11~q\);

-- Location: FF_X21_Y21_N25
\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_11~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_12~q\);

-- Location: LCCOMB_X21_Y21_N26
\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_13~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_13~feeder_combout\ = \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_12~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_12~q\,
	combout => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_13~feeder_combout\);

-- Location: FF_X21_Y21_N27
\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_13~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_13~q\);

-- Location: FF_X21_Y21_N13
\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_13~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_14~q\);

-- Location: FF_X21_Y21_N7
\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_14~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_15~q\);

-- Location: FF_X21_Y21_N9
\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_15~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_16~q\);

-- Location: FF_X21_Y21_N11
\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_16~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_17~q\);

-- Location: FF_X21_Y20_N13
\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_17~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_18~q\);

-- Location: FF_X21_Y20_N7
\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_18~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_19~q\);

-- Location: FF_X21_Y20_N21
\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_19~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_20~q\);

-- Location: LCCOMB_X21_Y20_N18
\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_21~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_21~feeder_combout\ = \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_20~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_20~q\,
	combout => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_21~feeder_combout\);

-- Location: FF_X21_Y20_N19
\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_21~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_21~q\);

-- Location: FF_X21_Y20_N9
\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_21~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_22~q\);

-- Location: FF_X21_Y20_N11
\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_22~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_23~q\);

-- Location: FF_X21_Y20_N25
\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_23~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_24~q\);

-- Location: LCCOMB_X21_Y20_N22
\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_25~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_25~feeder_combout\ = \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_24~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_24~q\,
	combout => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_25~feeder_combout\);

-- Location: FF_X21_Y20_N23
\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_25~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_25~q\);

-- Location: FF_X21_Y20_N31
\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_25~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_26~q\);

-- Location: FF_X21_Y20_N15
\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_26~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_27~q\);

-- Location: FF_X21_Y20_N5
\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_27~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_28~q\);

-- Location: FF_X21_Y20_N27
\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_28~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_29~q\);

-- Location: FF_X21_Y20_N29
\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_29~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_30~q\);

-- Location: LCCOMB_X20_Y20_N22
\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_31~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_31~feeder_combout\ = \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_30~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_30~q\,
	combout => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_31~feeder_combout\);

-- Location: FF_X20_Y20_N23
\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_31~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_31~q\);

-- Location: LCCOMB_X20_Y21_N16
\U_jtag_wrapper|U_DESIGN_TO_TDO|state.START~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|state.START~0_combout\ = !\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_31~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_31~q\,
	combout => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.START~0_combout\);

-- Location: FF_X20_Y21_N17
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

-- Location: LCCOMB_X20_Y19_N22
\U_jtag_wrapper|U_SR_V2|temp[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_SR_V2|temp[6]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|temp\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|temp\(7),
	combout => \U_jtag_wrapper|U_SR_V2|temp[6]~feeder_combout\);

-- Location: LCCOMB_X11_Y17_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~0_combout\);

-- Location: LCCOMB_X11_Y17_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~2\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~q\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(15),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~0_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~2_combout\);

-- Location: LCCOMB_X11_Y17_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~3\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~1_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~2_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~1_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~3_combout\);

-- Location: FF_X11_Y17_N25
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

-- Location: LCCOMB_X11_Y17_N4
\U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~combout\ = LCELL((\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4) & (!\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\ & 
-- \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_q\,
	combout => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~combout\);

-- Location: LCCOMB_X11_Y16_N16
\U_jtag_wrapper|U_SR_V2|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_SR_V2|process_0~0_combout\ = (\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~q\ & \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~q\,
	datad => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~combout\,
	combout => \U_jtag_wrapper|U_SR_V2|process_0~0_combout\);

-- Location: FF_X20_Y19_N23
\U_jtag_wrapper|U_SR_V2|temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_SR_V2|temp[6]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_SR_V2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_SR_V2|temp\(6));

-- Location: FF_X20_Y19_N29
\U_jtag_wrapper|U_SR_V2|temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_SR_V2|temp\(6),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_SR_V2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_SR_V2|temp\(5));

-- Location: LCCOMB_X20_Y19_N8
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

-- Location: FF_X20_Y19_N9
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

-- Location: FF_X20_Y19_N27
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

-- Location: LCCOMB_X19_Y19_N0
\U_jtag_wrapper|U_SR_V2|output[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_SR_V2|output[3]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|temp\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|temp\(3),
	combout => \U_jtag_wrapper|U_SR_V2|output[3]~feeder_combout\);

-- Location: LCCOMB_X11_Y17_N2
\U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_udr~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_udr~0_combout\ = (\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8) & (\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_q\ & 
-- !\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_q\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	combout => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_udr~0_combout\);

-- Location: FF_X19_Y19_N1
\U_jtag_wrapper|U_SR_V2|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_SR_V2|output[3]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_udr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_SR_V2|output\(3));

-- Location: LCCOMB_X20_Y17_N12
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

-- Location: FF_X20_Y17_N13
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

-- Location: LCCOMB_X20_Y17_N6
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

-- Location: FF_X20_Y17_N7
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

-- Location: LCCOMB_X20_Y17_N0
\U_jtag_wrapper|U_ADDR_TOP|U_logic|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_ADDR_TOP|U_logic|Equal0~0_combout\ = (!\U_jtag_wrapper|U_ADDR_TOP|U_addrcount|count\(0) & !\U_jtag_wrapper|U_ADDR_TOP|U_addrcount|count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_ADDR_TOP|U_addrcount|count\(0),
	datad => \U_jtag_wrapper|U_ADDR_TOP|U_addrcount|count\(1),
	combout => \U_jtag_wrapper|U_ADDR_TOP|U_logic|Equal0~0_combout\);

-- Location: FF_X20_Y17_N1
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

-- Location: FF_X22_Y19_N9
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

-- Location: LCCOMB_X19_Y19_N24
\U_jtag_wrapper|U_SR_V2|temp[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_SR_V2|temp[2]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|temp\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|temp\(3),
	combout => \U_jtag_wrapper|U_SR_V2|temp[2]~feeder_combout\);

-- Location: FF_X19_Y19_N25
\U_jtag_wrapper|U_SR_V2|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_SR_V2|temp[2]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_SR_V2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_SR_V2|temp\(2));

-- Location: LCCOMB_X19_Y19_N26
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

-- Location: FF_X19_Y19_N27
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

-- Location: FF_X19_Y19_N5
\U_jtag_wrapper|U_SR_V2|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_SR_V2|temp\(1),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_SR_V2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_SR_V2|temp\(0));

-- Location: FF_X19_Y19_N7
\U_jtag_wrapper|U_SR_V2|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_SR_V2|temp\(0),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_udr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_SR_V2|output\(0));

-- Location: FF_X22_Y19_N21
\U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[0]\ : dffeas
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
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_addrcount|output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(0));

-- Location: FF_X19_Y19_N13
\U_jtag_wrapper|U_SR_V2|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_SR_V2|temp\(1),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_udr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_SR_V2|output\(1));

-- Location: LCCOMB_X23_Y18_N22
\U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[1]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|output\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|output\(1),
	combout => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[1]~feeder_combout\);

-- Location: FF_X23_Y18_N23
\U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[1]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_addrcount|output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(1));

-- Location: LCCOMB_X22_Y19_N20
\U_jtag_wrapper|U_ADDR_TOP|U_logic|out_data_rdy~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_ADDR_TOP|U_logic|out_data_rdy~8_combout\ = (\U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(2) & (\U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(3) & (\U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(0) & 
-- \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(2),
	datab => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(3),
	datac => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(0),
	datad => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(1),
	combout => \U_jtag_wrapper|U_ADDR_TOP|U_logic|out_data_rdy~8_combout\);

-- Location: FF_X23_Y18_N9
\U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[7]\ : dffeas
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
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_addrcount|output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(7));

-- Location: FF_X20_Y19_N1
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

-- Location: FF_X23_Y18_N27
\U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[4]\ : dffeas
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
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_addrcount|output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(4));

-- Location: LCCOMB_X20_Y19_N10
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

-- Location: FF_X20_Y19_N11
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

-- Location: LCCOMB_X23_Y18_N0
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

-- Location: FF_X23_Y18_N1
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

-- Location: LCCOMB_X23_Y18_N26
\U_jtag_wrapper|U_ADDR_TOP|U_logic|out_data_rdy~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_ADDR_TOP|U_logic|out_data_rdy~7_combout\ = (\U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(6) & (\U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(7) & (\U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(4) & 
-- \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(6),
	datab => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(7),
	datac => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(4),
	datad => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(5),
	combout => \U_jtag_wrapper|U_ADDR_TOP|U_logic|out_data_rdy~7_combout\);

-- Location: LCCOMB_X20_Y19_N2
\U_jtag_wrapper|U_SR_V2|output[10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_SR_V2|output[10]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|temp\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|temp\(10),
	combout => \U_jtag_wrapper|U_SR_V2|output[10]~feeder_combout\);

-- Location: FF_X20_Y19_N3
\U_jtag_wrapper|U_SR_V2|output[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_SR_V2|output[10]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_udr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_SR_V2|output\(10));

-- Location: FF_X23_Y18_N21
\U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_SR_V2|output\(10),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_addrcount|output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(10));

-- Location: FF_X20_Y19_N7
\U_jtag_wrapper|U_SR_V2|output[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_SR_V2|temp\(8),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_udr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_SR_V2|output\(8));

-- Location: FF_X23_Y18_N5
\U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_SR_V2|output\(8),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_addrcount|output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(8));

-- Location: LCCOMB_X20_Y19_N24
\U_jtag_wrapper|U_SR_V2|output[11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_SR_V2|output[11]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|temp\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|temp\(11),
	combout => \U_jtag_wrapper|U_SR_V2|output[11]~feeder_combout\);

-- Location: FF_X20_Y19_N25
\U_jtag_wrapper|U_SR_V2|output[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_SR_V2|output[11]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_udr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_SR_V2|output\(11));

-- Location: FF_X20_Y18_N27
\U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_SR_V2|output\(11),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_addrcount|output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(11));

-- Location: LCCOMB_X23_Y18_N4
\U_jtag_wrapper|U_ADDR_TOP|U_logic|out_data_rdy~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_ADDR_TOP|U_logic|out_data_rdy~6_combout\ = (\U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(9) & (\U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(10) & (\U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(8) & 
-- \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(9),
	datab => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(10),
	datac => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(8),
	datad => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(11),
	combout => \U_jtag_wrapper|U_ADDR_TOP|U_logic|out_data_rdy~6_combout\);

-- Location: LCCOMB_X22_Y19_N30
\U_jtag_wrapper|U_ADDR_TOP|U_logic|out_data_rdy~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_ADDR_TOP|U_logic|out_data_rdy~9_combout\ = (\U_jtag_wrapper|U_ADDR_TOP|U_logic|out_data_rdy~5_combout\ & (\U_jtag_wrapper|U_ADDR_TOP|U_logic|out_data_rdy~8_combout\ & (\U_jtag_wrapper|U_ADDR_TOP|U_logic|out_data_rdy~7_combout\ & 
-- \U_jtag_wrapper|U_ADDR_TOP|U_logic|out_data_rdy~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_ADDR_TOP|U_logic|out_data_rdy~5_combout\,
	datab => \U_jtag_wrapper|U_ADDR_TOP|U_logic|out_data_rdy~8_combout\,
	datac => \U_jtag_wrapper|U_ADDR_TOP|U_logic|out_data_rdy~7_combout\,
	datad => \U_jtag_wrapper|U_ADDR_TOP|U_logic|out_data_rdy~6_combout\,
	combout => \U_jtag_wrapper|U_ADDR_TOP|U_logic|out_data_rdy~9_combout\);

-- Location: FF_X17_Y19_N31
\U_jtag_wrapper|U_SR_V2|output[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_SR_V2|temp\(24),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_udr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_SR_V2|output\(24));

-- Location: FF_X22_Y18_N21
\U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_SR_V2|output\(24),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_addrcount|output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(24));

-- Location: FF_X21_Y18_N5
\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(24),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(24));

-- Location: FF_X19_Y21_N5
\U_jtag_wrapper|U_SR_V2|output[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_SR_V2|temp\(23),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_udr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_SR_V2|output\(23));

-- Location: FF_X22_Y18_N15
\U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_SR_V2|output\(23),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_addrcount|output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(23));

-- Location: FF_X21_Y18_N31
\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(23),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(23));

-- Location: LCCOMB_X17_Y19_N4
\U_jtag_wrapper|U_SR_V2|output[25]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_SR_V2|output[25]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|temp\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|temp\(25),
	combout => \U_jtag_wrapper|U_SR_V2|output[25]~feeder_combout\);

-- Location: FF_X17_Y19_N5
\U_jtag_wrapper|U_SR_V2|output[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_SR_V2|output[25]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_udr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_SR_V2|output\(25));

-- Location: LCCOMB_X22_Y18_N10
\U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[25]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[25]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|output\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|output\(25),
	combout => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[25]~feeder_combout\);

-- Location: FF_X22_Y18_N11
\U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[25]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_addrcount|output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(25));

-- Location: LCCOMB_X22_Y18_N24
\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[25]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[25]~feeder_combout\ = \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(25),
	combout => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[25]~feeder_combout\);

-- Location: FF_X22_Y18_N25
\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[25]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(25));

-- Location: LCCOMB_X21_Y18_N30
\U_jtag_wrapper|U_ADDR_TOP|U_logic|sel_out_reg~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_ADDR_TOP|U_logic|sel_out_reg~2_combout\ = (\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(26) & (\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(24) & (\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(23) & 
-- \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(26),
	datab => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(24),
	datac => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(23),
	datad => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(25),
	combout => \U_jtag_wrapper|U_ADDR_TOP|U_logic|sel_out_reg~2_combout\);

-- Location: LCCOMB_X19_Y21_N0
\U_jtag_wrapper|U_SR_V2|output[21]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_SR_V2|output[21]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|temp\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|temp\(21),
	combout => \U_jtag_wrapper|U_SR_V2|output[21]~feeder_combout\);

-- Location: FF_X19_Y21_N1
\U_jtag_wrapper|U_SR_V2|output[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_SR_V2|output[21]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_udr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_SR_V2|output\(21));

-- Location: FF_X22_Y18_N19
\U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_SR_V2|output\(21),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_addrcount|output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(21));

-- Location: LCCOMB_X22_Y18_N28
\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[21]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[21]~feeder_combout\ = \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(21),
	combout => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[21]~feeder_combout\);

-- Location: FF_X22_Y18_N29
\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[21]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(21));

-- Location: LCCOMB_X19_Y21_N26
\U_jtag_wrapper|U_SR_V2|output[20]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_SR_V2|output[20]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|temp\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|temp\(20),
	combout => \U_jtag_wrapper|U_SR_V2|output[20]~feeder_combout\);

-- Location: FF_X19_Y21_N27
\U_jtag_wrapper|U_SR_V2|output[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_SR_V2|output[20]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_udr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_SR_V2|output\(20));

-- Location: FF_X22_Y18_N13
\U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_SR_V2|output\(20),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_addrcount|output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(20));

-- Location: FF_X21_Y18_N17
\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(20),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(20));

-- Location: LCCOMB_X19_Y21_N30
\U_jtag_wrapper|U_SR_V2|output[22]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_SR_V2|output[22]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|temp\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|temp\(22),
	combout => \U_jtag_wrapper|U_SR_V2|output[22]~feeder_combout\);

-- Location: FF_X19_Y21_N31
\U_jtag_wrapper|U_SR_V2|output[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_SR_V2|output[22]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_udr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_SR_V2|output\(22));

-- Location: LCCOMB_X22_Y18_N16
\U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[22]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[22]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|output\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|output\(22),
	combout => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[22]~feeder_combout\);

-- Location: FF_X22_Y18_N17
\U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[22]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_addrcount|output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(22));

-- Location: LCCOMB_X22_Y18_N2
\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[22]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[22]~feeder_combout\ = \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(22),
	combout => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[22]~feeder_combout\);

-- Location: FF_X22_Y18_N3
\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[22]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(22));

-- Location: LCCOMB_X21_Y18_N16
\U_jtag_wrapper|U_ADDR_TOP|U_logic|sel_out_reg~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_ADDR_TOP|U_logic|sel_out_reg~3_combout\ = (\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(19) & (\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(21) & (\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(20) & 
-- \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(19),
	datab => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(21),
	datac => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(20),
	datad => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(22),
	combout => \U_jtag_wrapper|U_ADDR_TOP|U_logic|sel_out_reg~3_combout\);

-- Location: LCCOMB_X21_Y18_N0
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

-- Location: FF_X21_Y18_N1
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

-- Location: FF_X21_Y18_N3
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

-- Location: FF_X21_Y18_N21
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

-- Location: LCCOMB_X21_Y18_N2
\U_jtag_wrapper|U_ADDR_TOP|U_logic|sel_out_reg~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_ADDR_TOP|U_logic|sel_out_reg~0_combout\ = (\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(31) & (\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_or_data~q\ & (\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(1) & 
-- \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(31),
	datab => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_or_data~q\,
	datac => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(1),
	datad => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(0),
	combout => \U_jtag_wrapper|U_ADDR_TOP|U_logic|sel_out_reg~0_combout\);

-- Location: LCCOMB_X21_Y18_N14
\U_jtag_wrapper|U_ADDR_TOP|U_logic|sel_out_reg~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_ADDR_TOP|U_logic|sel_out_reg~4_combout\ = (\U_jtag_wrapper|U_ADDR_TOP|U_logic|sel_out_reg~1_combout\ & (\U_jtag_wrapper|U_ADDR_TOP|U_logic|sel_out_reg~2_combout\ & (\U_jtag_wrapper|U_ADDR_TOP|U_logic|sel_out_reg~3_combout\ & 
-- \U_jtag_wrapper|U_ADDR_TOP|U_logic|sel_out_reg~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_ADDR_TOP|U_logic|sel_out_reg~1_combout\,
	datab => \U_jtag_wrapper|U_ADDR_TOP|U_logic|sel_out_reg~2_combout\,
	datac => \U_jtag_wrapper|U_ADDR_TOP|U_logic|sel_out_reg~3_combout\,
	datad => \U_jtag_wrapper|U_ADDR_TOP|U_logic|sel_out_reg~0_combout\,
	combout => \U_jtag_wrapper|U_ADDR_TOP|U_logic|sel_out_reg~4_combout\);

-- Location: FF_X19_Y19_N17
\U_jtag_wrapper|U_SR_V2|output[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_SR_V2|temp\(12),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_udr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_SR_V2|output\(12));

-- Location: FF_X20_Y18_N9
\U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_SR_V2|output\(12),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_addrcount|output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(12));

-- Location: FF_X20_Y18_N29
\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(12),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(12));

-- Location: FF_X20_Y18_N25
\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(11),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(11));

-- Location: LCCOMB_X19_Y19_N28
\U_jtag_wrapper|U_SR_V2|output[14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_SR_V2|output[14]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|temp\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|temp\(14),
	combout => \U_jtag_wrapper|U_SR_V2|output[14]~feeder_combout\);

-- Location: FF_X19_Y19_N29
\U_jtag_wrapper|U_SR_V2|output[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_SR_V2|output[14]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_udr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_SR_V2|output\(14));

-- Location: LCCOMB_X20_Y18_N16
\U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[14]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|output\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|output\(14),
	combout => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[14]~feeder_combout\);

-- Location: FF_X20_Y18_N17
\U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[14]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_addrcount|output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(14));

-- Location: LCCOMB_X20_Y18_N20
\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[14]~feeder_combout\ = \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(14),
	combout => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[14]~feeder_combout\);

-- Location: FF_X20_Y18_N21
\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[14]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(14));

-- Location: LCCOMB_X20_Y18_N24
\U_jtag_wrapper|U_ADDR_TOP|U_logic|sel_out_reg~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_ADDR_TOP|U_logic|sel_out_reg~6_combout\ = (\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(13) & (\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(12) & (\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(11) & 
-- \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(13),
	datab => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(12),
	datac => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(11),
	datad => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(14),
	combout => \U_jtag_wrapper|U_ADDR_TOP|U_logic|sel_out_reg~6_combout\);

-- Location: FF_X20_Y19_N21
\U_jtag_wrapper|U_SR_V2|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_SR_V2|temp\(6),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_udr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_SR_V2|output\(6));

-- Location: LCCOMB_X22_Y19_N14
\U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[6]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|output\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|output\(6),
	combout => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[6]~feeder_combout\);

-- Location: FF_X22_Y19_N15
\U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[6]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_addrcount|output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(6));

-- Location: FF_X23_Y18_N3
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

-- Location: FF_X23_Y18_N17
\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(3),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(3));

-- Location: FF_X23_Y18_N11
\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(4),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(4));

-- Location: LCCOMB_X23_Y18_N16
\U_jtag_wrapper|U_ADDR_TOP|U_logic|sel_out_reg~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_ADDR_TOP|U_logic|sel_out_reg~8_combout\ = (\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(5) & (\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(6) & (\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(3) & 
-- \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(5),
	datab => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(6),
	datac => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(3),
	datad => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(4),
	combout => \U_jtag_wrapper|U_ADDR_TOP|U_logic|sel_out_reg~8_combout\);

-- Location: FF_X23_Y18_N25
\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(8),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(8));

-- Location: FF_X23_Y18_N19
\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(7),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(7));

-- Location: LCCOMB_X23_Y18_N6
\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[10]~feeder_combout\ = \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(10),
	combout => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[10]~feeder_combout\);

-- Location: FF_X23_Y18_N7
\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[10]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(10));

-- Location: LCCOMB_X23_Y18_N18
\U_jtag_wrapper|U_ADDR_TOP|U_logic|sel_out_reg~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_ADDR_TOP|U_logic|sel_out_reg~7_combout\ = (\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(9) & (\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(8) & (\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(7) & 
-- \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(9),
	datab => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(8),
	datac => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(7),
	datad => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(10),
	combout => \U_jtag_wrapper|U_ADDR_TOP|U_logic|sel_out_reg~7_combout\);

-- Location: LCCOMB_X23_Y18_N14
\U_jtag_wrapper|U_ADDR_TOP|U_logic|sel_out_reg~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_ADDR_TOP|U_logic|sel_out_reg~9_combout\ = (\U_jtag_wrapper|U_ADDR_TOP|U_logic|sel_out_reg~5_combout\ & (\U_jtag_wrapper|U_ADDR_TOP|U_logic|sel_out_reg~6_combout\ & (\U_jtag_wrapper|U_ADDR_TOP|U_logic|sel_out_reg~8_combout\ & 
-- \U_jtag_wrapper|U_ADDR_TOP|U_logic|sel_out_reg~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_ADDR_TOP|U_logic|sel_out_reg~5_combout\,
	datab => \U_jtag_wrapper|U_ADDR_TOP|U_logic|sel_out_reg~6_combout\,
	datac => \U_jtag_wrapper|U_ADDR_TOP|U_logic|sel_out_reg~8_combout\,
	datad => \U_jtag_wrapper|U_ADDR_TOP|U_logic|sel_out_reg~7_combout\,
	combout => \U_jtag_wrapper|U_ADDR_TOP|U_logic|sel_out_reg~9_combout\);

-- Location: LCCOMB_X24_Y18_N20
\U_jtag_wrapper|U_ADDR_TOP|U_logic|sel_out_reg~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_ADDR_TOP|U_logic|sel_out_reg~10_combout\ = (\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(2) & (\U_jtag_wrapper|U_ADDR_TOP|U_logic|sel_out_reg~4_combout\ & \U_jtag_wrapper|U_ADDR_TOP|U_logic|sel_out_reg~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(2),
	datab => \U_jtag_wrapper|U_ADDR_TOP|U_logic|sel_out_reg~4_combout\,
	datad => \U_jtag_wrapper|U_ADDR_TOP|U_logic|sel_out_reg~9_combout\,
	combout => \U_jtag_wrapper|U_ADDR_TOP|U_logic|sel_out_reg~10_combout\);

-- Location: FF_X24_Y18_N21
\U_jtag_wrapper|U_ADDR_TOP|U_logic|sel_out_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_ADDR_TOP|U_logic|sel_out_reg~10_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_logic|sel_out_reg~q\);

-- Location: LCCOMB_X20_Y21_N18
\U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~32_combout\ = (!\U_jtag_wrapper|U_DESIGN_TO_TDO|state.START~q\ & (((\U_jtag_wrapper|U_ADDR_TOP|U_logic|sel_out_reg~q\) # (!\U_jtag_wrapper|U_ADDR_TOP|U_logic|out_data_rdy~9_combout\)) # 
-- (!\U_jtag_wrapper|U_ADDR_TOP|U_logic|out_data_rdy~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_ADDR_TOP|U_logic|out_data_rdy~4_combout\,
	datab => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.START~q\,
	datac => \U_jtag_wrapper|U_ADDR_TOP|U_logic|out_data_rdy~9_combout\,
	datad => \U_jtag_wrapper|U_ADDR_TOP|U_logic|sel_out_reg~q\,
	combout => \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~32_combout\);

-- Location: LCCOMB_X21_Y20_N6
\U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~26_combout\ = (\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_18~q\) # ((\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_17~q\) # ((\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_19~q\) # 
-- (\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_20~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_18~q\,
	datab => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_17~q\,
	datac => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_19~q\,
	datad => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_20~q\,
	combout => \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~26_combout\);

-- Location: LCCOMB_X20_Y21_N4
\U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~22_combout\ = (\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_7~q\) # ((\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_6~q\) # ((\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_5~q\) # 
-- (\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_8~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_7~q\,
	datab => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_6~q\,
	datac => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_5~q\,
	datad => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_8~q\,
	combout => \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~22_combout\);

-- Location: LCCOMB_X20_Y21_N26
\U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~21_combout\ = (\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_1~q\) # ((\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_2~q\) # ((\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_3~q\) # 
-- (\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_1~q\,
	datab => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_2~q\,
	datac => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_3~q\,
	datad => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_4~q\,
	combout => \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~21_combout\);

-- Location: LCCOMB_X21_Y21_N22
\U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~23_combout\ = (\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_10~q\) # ((\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_9~q\) # ((\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_11~q\) # 
-- (\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_12~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_10~q\,
	datab => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_9~q\,
	datac => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_11~q\,
	datad => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_12~q\,
	combout => \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~23_combout\);

-- Location: LCCOMB_X21_Y21_N30
\U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~25_combout\ = (\U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~24_combout\) # ((\U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~22_combout\) # ((\U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~21_combout\) # 
-- (\U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~24_combout\,
	datab => \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~22_combout\,
	datac => \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~21_combout\,
	datad => \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~23_combout\,
	combout => \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~25_combout\);

-- Location: LCCOMB_X21_Y20_N26
\U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~29_combout\ = (\U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~28_combout\) # ((\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_31~q\) # ((\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_29~q\) # 
-- (\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_30~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~28_combout\,
	datab => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_31~q\,
	datac => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_29~q\,
	datad => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_30~q\,
	combout => \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~29_combout\);

-- Location: LCCOMB_X21_Y20_N16
\U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~30_combout\ = (\U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~27_combout\) # ((\U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~26_combout\) # ((\U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~25_combout\) # 
-- (\U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~27_combout\,
	datab => \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~26_combout\,
	datac => \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~25_combout\,
	datad => \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~29_combout\,
	combout => \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~30_combout\);

-- Location: LCCOMB_X20_Y21_N12
\U_jtag_wrapper|U_DESIGN_TO_TDO|valid_reg~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|valid_reg~0_combout\ = (\U_jtag_wrapper|U_ADDR_TOP|U_logic|out_data_rdy~4_combout\ & (!\U_jtag_wrapper|U_DESIGN_TO_TDO|state.START~q\ & (\U_jtag_wrapper|U_ADDR_TOP|U_logic|out_data_rdy~9_combout\ & 
-- !\U_jtag_wrapper|U_ADDR_TOP|U_logic|sel_out_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_ADDR_TOP|U_logic|out_data_rdy~4_combout\,
	datab => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.START~q\,
	datac => \U_jtag_wrapper|U_ADDR_TOP|U_logic|out_data_rdy~9_combout\,
	datad => \U_jtag_wrapper|U_ADDR_TOP|U_logic|sel_out_reg~q\,
	combout => \U_jtag_wrapper|U_DESIGN_TO_TDO|valid_reg~0_combout\);

-- Location: LCCOMB_X20_Y21_N0
\U_jtag_wrapper|U_DESIGN_TO_TDO|valid_reg~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|valid_reg~1_combout\ = (\U_jtag_wrapper|U_DESIGN_TO_TDO|valid_reg~0_combout\) # ((\U_jtag_wrapper|U_DESIGN_TO_TDO|state.START~q\ & \U_jtag_wrapper|U_DESIGN_TO_TDO|valid_reg~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.START~q\,
	datac => \U_jtag_wrapper|U_DESIGN_TO_TDO|valid_reg~q\,
	datad => \U_jtag_wrapper|U_DESIGN_TO_TDO|valid_reg~0_combout\,
	combout => \U_jtag_wrapper|U_DESIGN_TO_TDO|valid_reg~1_combout\);

-- Location: FF_X20_Y21_N1
\U_jtag_wrapper|U_DESIGN_TO_TDO|valid_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_DESIGN_TO_TDO|valid_reg~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|valid_reg~q\);

-- Location: LCCOMB_X20_Y21_N2
\U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~33_combout\ = (\altera_internal_jtag~TDIUTAP\ & ((\U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~32_combout\) # ((\U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~30_combout\ & 
-- !\U_jtag_wrapper|U_DESIGN_TO_TDO|valid_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TDIUTAP\,
	datab => \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~32_combout\,
	datac => \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~30_combout\,
	datad => \U_jtag_wrapper|U_DESIGN_TO_TDO|valid_reg~q\,
	combout => \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~33_combout\);

-- Location: LCCOMB_X23_Y19_N8
\U_jtag_wrapper|REG_GEN:1:REG_i|output[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|REG_GEN:1:REG_i|output[0]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|output\(0),
	combout => \U_jtag_wrapper|REG_GEN:1:REG_i|output[0]~feeder_combout\);

-- Location: LCCOMB_X20_Y18_N28
\U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters~6_combout\ = (!\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(9) & (!\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(11) & (!\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(12) & 
-- !\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(9),
	datab => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(11),
	datac => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(12),
	datad => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(10),
	combout => \U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters~6_combout\);

-- Location: LCCOMB_X23_Y18_N24
\U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters~7_combout\ = (!\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(5) & (!\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(7) & (!\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(8) & 
-- !\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(5),
	datab => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(7),
	datac => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(8),
	datad => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(6),
	combout => \U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters~7_combout\);

-- Location: LCCOMB_X23_Y18_N10
\U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters~8_combout\ = (!\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(2) & (!\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(3) & (!\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(4) & 
-- \U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(2),
	datab => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(3),
	datac => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(4),
	datad => \U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters~7_combout\,
	combout => \U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters~8_combout\);

-- Location: FF_X19_Y19_N15
\U_jtag_wrapper|U_SR_V2|output[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_SR_V2|temp\(15),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_udr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_SR_V2|output\(15));

-- Location: FF_X20_Y18_N1
\U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_SR_V2|output\(15),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_addrcount|output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(15));

-- Location: LCCOMB_X20_Y18_N2
\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[15]~feeder_combout\ = \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(15),
	combout => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[15]~feeder_combout\);

-- Location: FF_X20_Y18_N3
\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[15]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(15));

-- Location: LCCOMB_X19_Y19_N2
\U_jtag_wrapper|U_SR_V2|output[13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_SR_V2|output[13]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|temp\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|temp\(13),
	combout => \U_jtag_wrapper|U_SR_V2|output[13]~feeder_combout\);

-- Location: FF_X19_Y19_N3
\U_jtag_wrapper|U_SR_V2|output[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_SR_V2|output[13]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_udr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_SR_V2|output\(13));

-- Location: LCCOMB_X20_Y18_N12
\U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[13]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|output\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|output\(13),
	combout => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[13]~feeder_combout\);

-- Location: FF_X20_Y18_N13
\U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output[13]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_addrcount|output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(13));

-- Location: FF_X20_Y18_N23
\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_ADDR_TOP|U_addrreg|output\(13),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(13));

-- Location: LCCOMB_X20_Y18_N22
\U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters~5_combout\ = (!\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(16) & (!\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(15) & (!\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(13) & 
-- !\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(16),
	datab => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(15),
	datac => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(13),
	datad => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(14),
	combout => \U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters~5_combout\);

-- Location: LCCOMB_X21_Y18_N24
\U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters~9_combout\ = (\U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters~4_combout\ & (\U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters~6_combout\ & 
-- (\U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters~8_combout\ & \U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters~4_combout\,
	datab => \U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters~6_combout\,
	datac => \U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters~8_combout\,
	datad => \U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters~5_combout\,
	combout => \U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters~9_combout\);

-- Location: LCCOMB_X24_Y18_N6
\U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters~10_combout\ = (!\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(0) & (\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(1) & \U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(0),
	datac => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(1),
	datad => \U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters~9_combout\,
	combout => \U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters~10_combout\);

-- Location: FF_X24_Y18_N7
\U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters~10_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters\(1));

-- Location: LCCOMB_X24_Y18_N0
\U_jtag_wrapper|U_ADDR_TOP|U_logic|temp[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp[1]~feeder_combout\ = \U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters\(1),
	combout => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp[1]~feeder_combout\);

-- Location: FF_X24_Y18_N1
\U_jtag_wrapper|U_ADDR_TOP|U_logic|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp[1]~feeder_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(1));

-- Location: FF_X23_Y19_N9
\U_jtag_wrapper|REG_GEN:1:REG_i|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|REG_GEN:1:REG_i|output[0]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:1:REG_i|output\(0));

-- Location: LCCOMB_X23_Y21_N0
\U_application_test|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_application_test|Add0~0_combout\ = (\U_jtag_wrapper|REG_GEN:0:REG_i|output\(0) & (\U_jtag_wrapper|REG_GEN:1:REG_i|output\(0) $ (VCC))) # (!\U_jtag_wrapper|REG_GEN:0:REG_i|output\(0) & (\U_jtag_wrapper|REG_GEN:1:REG_i|output\(0) & VCC))
-- \U_application_test|Add0~1\ = CARRY((\U_jtag_wrapper|REG_GEN:0:REG_i|output\(0) & \U_jtag_wrapper|REG_GEN:1:REG_i|output\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|REG_GEN:0:REG_i|output\(0),
	datab => \U_jtag_wrapper|REG_GEN:1:REG_i|output\(0),
	datad => VCC,
	combout => \U_application_test|Add0~0_combout\,
	cout => \U_application_test|Add0~1\);

-- Location: LCCOMB_X22_Y21_N0
\U_application_test|output[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_application_test|output[0]~0_combout\ = (\U_jtag_wrapper|REG_GEN:2:REG_i|output\(0) & (\U_application_test|Add0~0_combout\ $ (VCC))) # (!\U_jtag_wrapper|REG_GEN:2:REG_i|output\(0) & (\U_application_test|Add0~0_combout\ & VCC))
-- \U_application_test|output[0]~1\ = CARRY((\U_jtag_wrapper|REG_GEN:2:REG_i|output\(0) & \U_application_test|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|REG_GEN:2:REG_i|output\(0),
	datab => \U_application_test|Add0~0_combout\,
	datad => VCC,
	combout => \U_application_test|output[0]~0_combout\,
	cout => \U_application_test|output[0]~1\);

-- Location: FF_X22_Y21_N1
\U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_application_test|output[0]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_31~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(0));

-- Location: FF_X17_Y19_N7
\U_jtag_wrapper|U_SR_V2|output[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_SR_V2|temp\(28),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_udr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_SR_V2|output\(28));

-- Location: LCCOMB_X24_Y19_N30
\U_jtag_wrapper|REG_GEN:0:REG_i|output[28]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|REG_GEN:0:REG_i|output[28]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|output\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|output\(28),
	combout => \U_jtag_wrapper|REG_GEN:0:REG_i|output[28]~feeder_combout\);

-- Location: LCCOMB_X24_Y18_N16
\U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters~11_combout\ = (\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(0) & (!\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(1) & \U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(0),
	datac => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(1),
	datad => \U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters~9_combout\,
	combout => \U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters~11_combout\);

-- Location: FF_X24_Y18_N17
\U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters~11_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters\(0));

-- Location: LCCOMB_X24_Y18_N2
\U_jtag_wrapper|U_ADDR_TOP|U_logic|temp[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp[0]~feeder_combout\ = \U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters\(0),
	combout => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp[0]~feeder_combout\);

-- Location: FF_X24_Y18_N3
\U_jtag_wrapper|U_ADDR_TOP|U_logic|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp[0]~feeder_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(0));

-- Location: FF_X24_Y19_N31
\U_jtag_wrapper|REG_GEN:0:REG_i|output[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|REG_GEN:0:REG_i|output[28]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:0:REG_i|output\(28));

-- Location: LCCOMB_X17_Y19_N8
\U_jtag_wrapper|U_SR_V2|output[27]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_SR_V2|output[27]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|temp\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|temp\(27),
	combout => \U_jtag_wrapper|U_SR_V2|output[27]~feeder_combout\);

-- Location: FF_X17_Y19_N9
\U_jtag_wrapper|U_SR_V2|output[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_SR_V2|output[27]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_udr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_SR_V2|output\(27));

-- Location: LCCOMB_X24_Y19_N0
\U_jtag_wrapper|REG_GEN:1:REG_i|output[27]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|REG_GEN:1:REG_i|output[27]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|output\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|output\(27),
	combout => \U_jtag_wrapper|REG_GEN:1:REG_i|output[27]~feeder_combout\);

-- Location: FF_X24_Y19_N1
\U_jtag_wrapper|REG_GEN:1:REG_i|output[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|REG_GEN:1:REG_i|output[27]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:1:REG_i|output\(27));

-- Location: LCCOMB_X17_Y19_N10
\U_jtag_wrapper|U_SR_V2|output[26]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_SR_V2|output[26]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|temp\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|temp\(26),
	combout => \U_jtag_wrapper|U_SR_V2|output[26]~feeder_combout\);

-- Location: FF_X17_Y19_N11
\U_jtag_wrapper|U_SR_V2|output[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_SR_V2|output[26]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_udr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_SR_V2|output\(26));

-- Location: FF_X24_Y19_N23
\U_jtag_wrapper|REG_GEN:0:REG_i|output[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_SR_V2|output\(26),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:0:REG_i|output\(26));

-- Location: LCCOMB_X24_Y19_N24
\U_jtag_wrapper|REG_GEN:1:REG_i|output[25]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|REG_GEN:1:REG_i|output[25]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|output\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|output\(25),
	combout => \U_jtag_wrapper|REG_GEN:1:REG_i|output[25]~feeder_combout\);

-- Location: FF_X24_Y19_N25
\U_jtag_wrapper|REG_GEN:1:REG_i|output[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|REG_GEN:1:REG_i|output[25]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:1:REG_i|output\(25));

-- Location: LCCOMB_X19_Y20_N16
\U_jtag_wrapper|REG_GEN:1:REG_i|output[24]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|REG_GEN:1:REG_i|output[24]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|output\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|output\(24),
	combout => \U_jtag_wrapper|REG_GEN:1:REG_i|output[24]~feeder_combout\);

-- Location: FF_X19_Y20_N17
\U_jtag_wrapper|REG_GEN:1:REG_i|output[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|REG_GEN:1:REG_i|output[24]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:1:REG_i|output\(24));

-- Location: LCCOMB_X19_Y20_N10
\U_jtag_wrapper|REG_GEN:1:REG_i|output[23]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|REG_GEN:1:REG_i|output[23]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|output\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|output\(23),
	combout => \U_jtag_wrapper|REG_GEN:1:REG_i|output[23]~feeder_combout\);

-- Location: FF_X19_Y20_N11
\U_jtag_wrapper|REG_GEN:1:REG_i|output[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|REG_GEN:1:REG_i|output[23]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:1:REG_i|output\(23));

-- Location: FF_X19_Y20_N13
\U_jtag_wrapper|REG_GEN:1:REG_i|output[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_SR_V2|output\(22),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:1:REG_i|output\(22));

-- Location: LCCOMB_X19_Y20_N22
\U_jtag_wrapper|REG_GEN:1:REG_i|output[21]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|REG_GEN:1:REG_i|output[21]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|output\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|output\(21),
	combout => \U_jtag_wrapper|REG_GEN:1:REG_i|output[21]~feeder_combout\);

-- Location: FF_X19_Y20_N23
\U_jtag_wrapper|REG_GEN:1:REG_i|output[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|REG_GEN:1:REG_i|output[21]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:1:REG_i|output\(21));

-- Location: LCCOMB_X24_Y19_N14
\U_jtag_wrapper|REG_GEN:0:REG_i|output[20]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|REG_GEN:0:REG_i|output[20]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|output\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|output\(20),
	combout => \U_jtag_wrapper|REG_GEN:0:REG_i|output[20]~feeder_combout\);

-- Location: FF_X24_Y19_N15
\U_jtag_wrapper|REG_GEN:0:REG_i|output[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|REG_GEN:0:REG_i|output[20]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:0:REG_i|output\(20));

-- Location: LCCOMB_X19_Y21_N20
\U_jtag_wrapper|U_SR_V2|output[19]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_SR_V2|output[19]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|temp\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|temp\(19),
	combout => \U_jtag_wrapper|U_SR_V2|output[19]~feeder_combout\);

-- Location: FF_X19_Y21_N21
\U_jtag_wrapper|U_SR_V2|output[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_SR_V2|output[19]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_udr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_SR_V2|output\(19));

-- Location: FF_X24_Y20_N1
\U_jtag_wrapper|REG_GEN:0:REG_i|output[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_SR_V2|output\(19),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:0:REG_i|output\(19));

-- Location: LCCOMB_X19_Y21_N22
\U_jtag_wrapper|U_SR_V2|output[18]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_SR_V2|output[18]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|temp\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|temp\(18),
	combout => \U_jtag_wrapper|U_SR_V2|output[18]~feeder_combout\);

-- Location: FF_X19_Y21_N23
\U_jtag_wrapper|U_SR_V2|output[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_SR_V2|output[18]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_udr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_SR_V2|output\(18));

-- Location: LCCOMB_X19_Y20_N18
\U_jtag_wrapper|REG_GEN:1:REG_i|output[18]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|REG_GEN:1:REG_i|output[18]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|output\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|output\(18),
	combout => \U_jtag_wrapper|REG_GEN:1:REG_i|output[18]~feeder_combout\);

-- Location: FF_X19_Y20_N19
\U_jtag_wrapper|REG_GEN:1:REG_i|output[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|REG_GEN:1:REG_i|output[18]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:1:REG_i|output\(18));

-- Location: LCCOMB_X19_Y21_N8
\U_jtag_wrapper|U_SR_V2|output[17]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_SR_V2|output[17]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|temp\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|temp\(17),
	combout => \U_jtag_wrapper|U_SR_V2|output[17]~feeder_combout\);

-- Location: FF_X19_Y21_N9
\U_jtag_wrapper|U_SR_V2|output[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_SR_V2|output[17]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_udr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_SR_V2|output\(17));

-- Location: LCCOMB_X24_Y20_N4
\U_jtag_wrapper|REG_GEN:0:REG_i|output[17]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|REG_GEN:0:REG_i|output[17]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|output\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|output\(17),
	combout => \U_jtag_wrapper|REG_GEN:0:REG_i|output[17]~feeder_combout\);

-- Location: FF_X24_Y20_N5
\U_jtag_wrapper|REG_GEN:0:REG_i|output[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|REG_GEN:0:REG_i|output[17]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:0:REG_i|output\(17));

-- Location: LCCOMB_X19_Y21_N10
\U_jtag_wrapper|U_SR_V2|output[16]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_SR_V2|output[16]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|temp\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|temp\(16),
	combout => \U_jtag_wrapper|U_SR_V2|output[16]~feeder_combout\);

-- Location: FF_X19_Y21_N11
\U_jtag_wrapper|U_SR_V2|output[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_SR_V2|output[16]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_udr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_SR_V2|output\(16));

-- Location: LCCOMB_X19_Y20_N14
\U_jtag_wrapper|REG_GEN:1:REG_i|output[16]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|REG_GEN:1:REG_i|output[16]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|output\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|output\(16),
	combout => \U_jtag_wrapper|REG_GEN:1:REG_i|output[16]~feeder_combout\);

-- Location: FF_X19_Y20_N15
\U_jtag_wrapper|REG_GEN:1:REG_i|output[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|REG_GEN:1:REG_i|output[16]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:1:REG_i|output\(16));

-- Location: LCCOMB_X24_Y19_N18
\U_jtag_wrapper|REG_GEN:0:REG_i|output[15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|REG_GEN:0:REG_i|output[15]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|output\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|output\(15),
	combout => \U_jtag_wrapper|REG_GEN:0:REG_i|output[15]~feeder_combout\);

-- Location: FF_X24_Y19_N19
\U_jtag_wrapper|REG_GEN:0:REG_i|output[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|REG_GEN:0:REG_i|output[15]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:0:REG_i|output\(15));

-- Location: LCCOMB_X24_Y21_N18
\U_jtag_wrapper|REG_GEN:0:REG_i|output[14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|REG_GEN:0:REG_i|output[14]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|output\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|output\(14),
	combout => \U_jtag_wrapper|REG_GEN:0:REG_i|output[14]~feeder_combout\);

-- Location: FF_X24_Y21_N19
\U_jtag_wrapper|REG_GEN:0:REG_i|output[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|REG_GEN:0:REG_i|output[14]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:0:REG_i|output\(14));

-- Location: FF_X24_Y21_N15
\U_jtag_wrapper|REG_GEN:0:REG_i|output[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_SR_V2|output\(13),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:0:REG_i|output\(13));

-- Location: FF_X24_Y21_N9
\U_jtag_wrapper|REG_GEN:1:REG_i|output[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_SR_V2|output\(12),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:1:REG_i|output\(12));

-- Location: LCCOMB_X24_Y21_N28
\U_jtag_wrapper|REG_GEN:1:REG_i|output[11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|REG_GEN:1:REG_i|output[11]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|output\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|output\(11),
	combout => \U_jtag_wrapper|REG_GEN:1:REG_i|output[11]~feeder_combout\);

-- Location: FF_X24_Y21_N29
\U_jtag_wrapper|REG_GEN:1:REG_i|output[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|REG_GEN:1:REG_i|output[11]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:1:REG_i|output\(11));

-- Location: LCCOMB_X24_Y21_N24
\U_jtag_wrapper|REG_GEN:1:REG_i|output[10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|REG_GEN:1:REG_i|output[10]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|output\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|output\(10),
	combout => \U_jtag_wrapper|REG_GEN:1:REG_i|output[10]~feeder_combout\);

-- Location: FF_X24_Y21_N25
\U_jtag_wrapper|REG_GEN:1:REG_i|output[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|REG_GEN:1:REG_i|output[10]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:1:REG_i|output\(10));

-- Location: LCCOMB_X20_Y19_N4
\U_jtag_wrapper|U_SR_V2|output[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_SR_V2|output[9]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|temp\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|temp\(9),
	combout => \U_jtag_wrapper|U_SR_V2|output[9]~feeder_combout\);

-- Location: FF_X20_Y19_N5
\U_jtag_wrapper|U_SR_V2|output[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_SR_V2|output[9]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_udr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_SR_V2|output\(9));

-- Location: LCCOMB_X24_Y21_N6
\U_jtag_wrapper|REG_GEN:0:REG_i|output[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|REG_GEN:0:REG_i|output[9]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|output\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|output\(9),
	combout => \U_jtag_wrapper|REG_GEN:0:REG_i|output[9]~feeder_combout\);

-- Location: FF_X24_Y21_N7
\U_jtag_wrapper|REG_GEN:0:REG_i|output[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|REG_GEN:0:REG_i|output[9]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:0:REG_i|output\(9));

-- Location: LCCOMB_X24_Y21_N0
\U_jtag_wrapper|REG_GEN:1:REG_i|output[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|REG_GEN:1:REG_i|output[8]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|output\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|output\(8),
	combout => \U_jtag_wrapper|REG_GEN:1:REG_i|output[8]~feeder_combout\);

-- Location: FF_X24_Y21_N1
\U_jtag_wrapper|REG_GEN:1:REG_i|output[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|REG_GEN:1:REG_i|output[8]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:1:REG_i|output\(8));

-- Location: LCCOMB_X23_Y19_N0
\U_jtag_wrapper|REG_GEN:1:REG_i|output[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|REG_GEN:1:REG_i|output[6]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|output\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|output\(6),
	combout => \U_jtag_wrapper|REG_GEN:1:REG_i|output[6]~feeder_combout\);

-- Location: FF_X23_Y19_N1
\U_jtag_wrapper|REG_GEN:1:REG_i|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|REG_GEN:1:REG_i|output[6]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:1:REG_i|output\(6));

-- Location: LCCOMB_X23_Y19_N4
\U_jtag_wrapper|REG_GEN:1:REG_i|output[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|REG_GEN:1:REG_i|output[5]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|output\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|output\(5),
	combout => \U_jtag_wrapper|REG_GEN:1:REG_i|output[5]~feeder_combout\);

-- Location: FF_X23_Y19_N5
\U_jtag_wrapper|REG_GEN:1:REG_i|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|REG_GEN:1:REG_i|output[5]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:1:REG_i|output\(5));

-- Location: FF_X23_Y19_N25
\U_jtag_wrapper|REG_GEN:1:REG_i|output[4]\ : dffeas
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
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:1:REG_i|output\(4));

-- Location: FF_X23_Y19_N23
\U_jtag_wrapper|REG_GEN:0:REG_i|output[3]\ : dffeas
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
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:0:REG_i|output\(3));

-- Location: LCCOMB_X19_Y19_N10
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

-- Location: FF_X19_Y19_N11
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

-- Location: LCCOMB_X23_Y19_N16
\U_jtag_wrapper|REG_GEN:1:REG_i|output[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|REG_GEN:1:REG_i|output[2]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|output\(2),
	combout => \U_jtag_wrapper|REG_GEN:1:REG_i|output[2]~feeder_combout\);

-- Location: FF_X23_Y19_N17
\U_jtag_wrapper|REG_GEN:1:REG_i|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|REG_GEN:1:REG_i|output[2]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:1:REG_i|output\(2));

-- Location: LCCOMB_X23_Y19_N6
\U_jtag_wrapper|REG_GEN:0:REG_i|output[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|REG_GEN:0:REG_i|output[1]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|output\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|output\(1),
	combout => \U_jtag_wrapper|REG_GEN:0:REG_i|output[1]~feeder_combout\);

-- Location: FF_X23_Y19_N7
\U_jtag_wrapper|REG_GEN:0:REG_i|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|REG_GEN:0:REG_i|output[1]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:0:REG_i|output\(1));

-- Location: LCCOMB_X23_Y21_N2
\U_application_test|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_application_test|Add0~2_combout\ = (\U_jtag_wrapper|REG_GEN:1:REG_i|output\(1) & ((\U_jtag_wrapper|REG_GEN:0:REG_i|output\(1) & (\U_application_test|Add0~1\ & VCC)) # (!\U_jtag_wrapper|REG_GEN:0:REG_i|output\(1) & (!\U_application_test|Add0~1\)))) # 
-- (!\U_jtag_wrapper|REG_GEN:1:REG_i|output\(1) & ((\U_jtag_wrapper|REG_GEN:0:REG_i|output\(1) & (!\U_application_test|Add0~1\)) # (!\U_jtag_wrapper|REG_GEN:0:REG_i|output\(1) & ((\U_application_test|Add0~1\) # (GND)))))
-- \U_application_test|Add0~3\ = CARRY((\U_jtag_wrapper|REG_GEN:1:REG_i|output\(1) & (!\U_jtag_wrapper|REG_GEN:0:REG_i|output\(1) & !\U_application_test|Add0~1\)) # (!\U_jtag_wrapper|REG_GEN:1:REG_i|output\(1) & ((!\U_application_test|Add0~1\) # 
-- (!\U_jtag_wrapper|REG_GEN:0:REG_i|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|REG_GEN:1:REG_i|output\(1),
	datab => \U_jtag_wrapper|REG_GEN:0:REG_i|output\(1),
	datad => VCC,
	cin => \U_application_test|Add0~1\,
	combout => \U_application_test|Add0~2_combout\,
	cout => \U_application_test|Add0~3\);

-- Location: LCCOMB_X23_Y21_N10
\U_application_test|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_application_test|Add0~10_combout\ = (\U_jtag_wrapper|REG_GEN:0:REG_i|output\(5) & ((\U_jtag_wrapper|REG_GEN:1:REG_i|output\(5) & (\U_application_test|Add0~9\ & VCC)) # (!\U_jtag_wrapper|REG_GEN:1:REG_i|output\(5) & (!\U_application_test|Add0~9\)))) # 
-- (!\U_jtag_wrapper|REG_GEN:0:REG_i|output\(5) & ((\U_jtag_wrapper|REG_GEN:1:REG_i|output\(5) & (!\U_application_test|Add0~9\)) # (!\U_jtag_wrapper|REG_GEN:1:REG_i|output\(5) & ((\U_application_test|Add0~9\) # (GND)))))
-- \U_application_test|Add0~11\ = CARRY((\U_jtag_wrapper|REG_GEN:0:REG_i|output\(5) & (!\U_jtag_wrapper|REG_GEN:1:REG_i|output\(5) & !\U_application_test|Add0~9\)) # (!\U_jtag_wrapper|REG_GEN:0:REG_i|output\(5) & ((!\U_application_test|Add0~9\) # 
-- (!\U_jtag_wrapper|REG_GEN:1:REG_i|output\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|REG_GEN:0:REG_i|output\(5),
	datab => \U_jtag_wrapper|REG_GEN:1:REG_i|output\(5),
	datad => VCC,
	cin => \U_application_test|Add0~9\,
	combout => \U_application_test|Add0~10_combout\,
	cout => \U_application_test|Add0~11\);

-- Location: LCCOMB_X23_Y21_N12
\U_application_test|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_application_test|Add0~12_combout\ = ((\U_jtag_wrapper|REG_GEN:0:REG_i|output\(6) $ (\U_jtag_wrapper|REG_GEN:1:REG_i|output\(6) $ (!\U_application_test|Add0~11\)))) # (GND)
-- \U_application_test|Add0~13\ = CARRY((\U_jtag_wrapper|REG_GEN:0:REG_i|output\(6) & ((\U_jtag_wrapper|REG_GEN:1:REG_i|output\(6)) # (!\U_application_test|Add0~11\))) # (!\U_jtag_wrapper|REG_GEN:0:REG_i|output\(6) & 
-- (\U_jtag_wrapper|REG_GEN:1:REG_i|output\(6) & !\U_application_test|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|REG_GEN:0:REG_i|output\(6),
	datab => \U_jtag_wrapper|REG_GEN:1:REG_i|output\(6),
	datad => VCC,
	cin => \U_application_test|Add0~11\,
	combout => \U_application_test|Add0~12_combout\,
	cout => \U_application_test|Add0~13\);

-- Location: LCCOMB_X23_Y21_N14
\U_application_test|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_application_test|Add0~14_combout\ = (\U_jtag_wrapper|REG_GEN:1:REG_i|output\(7) & ((\U_jtag_wrapper|REG_GEN:0:REG_i|output\(7) & (\U_application_test|Add0~13\ & VCC)) # (!\U_jtag_wrapper|REG_GEN:0:REG_i|output\(7) & (!\U_application_test|Add0~13\)))) # 
-- (!\U_jtag_wrapper|REG_GEN:1:REG_i|output\(7) & ((\U_jtag_wrapper|REG_GEN:0:REG_i|output\(7) & (!\U_application_test|Add0~13\)) # (!\U_jtag_wrapper|REG_GEN:0:REG_i|output\(7) & ((\U_application_test|Add0~13\) # (GND)))))
-- \U_application_test|Add0~15\ = CARRY((\U_jtag_wrapper|REG_GEN:1:REG_i|output\(7) & (!\U_jtag_wrapper|REG_GEN:0:REG_i|output\(7) & !\U_application_test|Add0~13\)) # (!\U_jtag_wrapper|REG_GEN:1:REG_i|output\(7) & ((!\U_application_test|Add0~13\) # 
-- (!\U_jtag_wrapper|REG_GEN:0:REG_i|output\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|REG_GEN:1:REG_i|output\(7),
	datab => \U_jtag_wrapper|REG_GEN:0:REG_i|output\(7),
	datad => VCC,
	cin => \U_application_test|Add0~13\,
	combout => \U_application_test|Add0~14_combout\,
	cout => \U_application_test|Add0~15\);

-- Location: LCCOMB_X23_Y21_N16
\U_application_test|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_application_test|Add0~16_combout\ = ((\U_jtag_wrapper|REG_GEN:0:REG_i|output\(8) $ (\U_jtag_wrapper|REG_GEN:1:REG_i|output\(8) $ (!\U_application_test|Add0~15\)))) # (GND)
-- \U_application_test|Add0~17\ = CARRY((\U_jtag_wrapper|REG_GEN:0:REG_i|output\(8) & ((\U_jtag_wrapper|REG_GEN:1:REG_i|output\(8)) # (!\U_application_test|Add0~15\))) # (!\U_jtag_wrapper|REG_GEN:0:REG_i|output\(8) & 
-- (\U_jtag_wrapper|REG_GEN:1:REG_i|output\(8) & !\U_application_test|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|REG_GEN:0:REG_i|output\(8),
	datab => \U_jtag_wrapper|REG_GEN:1:REG_i|output\(8),
	datad => VCC,
	cin => \U_application_test|Add0~15\,
	combout => \U_application_test|Add0~16_combout\,
	cout => \U_application_test|Add0~17\);

-- Location: LCCOMB_X23_Y21_N18
\U_application_test|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_application_test|Add0~18_combout\ = (\U_jtag_wrapper|REG_GEN:1:REG_i|output\(9) & ((\U_jtag_wrapper|REG_GEN:0:REG_i|output\(9) & (\U_application_test|Add0~17\ & VCC)) # (!\U_jtag_wrapper|REG_GEN:0:REG_i|output\(9) & (!\U_application_test|Add0~17\)))) # 
-- (!\U_jtag_wrapper|REG_GEN:1:REG_i|output\(9) & ((\U_jtag_wrapper|REG_GEN:0:REG_i|output\(9) & (!\U_application_test|Add0~17\)) # (!\U_jtag_wrapper|REG_GEN:0:REG_i|output\(9) & ((\U_application_test|Add0~17\) # (GND)))))
-- \U_application_test|Add0~19\ = CARRY((\U_jtag_wrapper|REG_GEN:1:REG_i|output\(9) & (!\U_jtag_wrapper|REG_GEN:0:REG_i|output\(9) & !\U_application_test|Add0~17\)) # (!\U_jtag_wrapper|REG_GEN:1:REG_i|output\(9) & ((!\U_application_test|Add0~17\) # 
-- (!\U_jtag_wrapper|REG_GEN:0:REG_i|output\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|REG_GEN:1:REG_i|output\(9),
	datab => \U_jtag_wrapper|REG_GEN:0:REG_i|output\(9),
	datad => VCC,
	cin => \U_application_test|Add0~17\,
	combout => \U_application_test|Add0~18_combout\,
	cout => \U_application_test|Add0~19\);

-- Location: LCCOMB_X23_Y21_N26
\U_application_test|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_application_test|Add0~26_combout\ = (\U_jtag_wrapper|REG_GEN:1:REG_i|output\(13) & ((\U_jtag_wrapper|REG_GEN:0:REG_i|output\(13) & (\U_application_test|Add0~25\ & VCC)) # (!\U_jtag_wrapper|REG_GEN:0:REG_i|output\(13) & 
-- (!\U_application_test|Add0~25\)))) # (!\U_jtag_wrapper|REG_GEN:1:REG_i|output\(13) & ((\U_jtag_wrapper|REG_GEN:0:REG_i|output\(13) & (!\U_application_test|Add0~25\)) # (!\U_jtag_wrapper|REG_GEN:0:REG_i|output\(13) & ((\U_application_test|Add0~25\) # 
-- (GND)))))
-- \U_application_test|Add0~27\ = CARRY((\U_jtag_wrapper|REG_GEN:1:REG_i|output\(13) & (!\U_jtag_wrapper|REG_GEN:0:REG_i|output\(13) & !\U_application_test|Add0~25\)) # (!\U_jtag_wrapper|REG_GEN:1:REG_i|output\(13) & ((!\U_application_test|Add0~25\) # 
-- (!\U_jtag_wrapper|REG_GEN:0:REG_i|output\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|REG_GEN:1:REG_i|output\(13),
	datab => \U_jtag_wrapper|REG_GEN:0:REG_i|output\(13),
	datad => VCC,
	cin => \U_application_test|Add0~25\,
	combout => \U_application_test|Add0~26_combout\,
	cout => \U_application_test|Add0~27\);

-- Location: LCCOMB_X23_Y21_N28
\U_application_test|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_application_test|Add0~28_combout\ = ((\U_jtag_wrapper|REG_GEN:1:REG_i|output\(14) $ (\U_jtag_wrapper|REG_GEN:0:REG_i|output\(14) $ (!\U_application_test|Add0~27\)))) # (GND)
-- \U_application_test|Add0~29\ = CARRY((\U_jtag_wrapper|REG_GEN:1:REG_i|output\(14) & ((\U_jtag_wrapper|REG_GEN:0:REG_i|output\(14)) # (!\U_application_test|Add0~27\))) # (!\U_jtag_wrapper|REG_GEN:1:REG_i|output\(14) & 
-- (\U_jtag_wrapper|REG_GEN:0:REG_i|output\(14) & !\U_application_test|Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|REG_GEN:1:REG_i|output\(14),
	datab => \U_jtag_wrapper|REG_GEN:0:REG_i|output\(14),
	datad => VCC,
	cin => \U_application_test|Add0~27\,
	combout => \U_application_test|Add0~28_combout\,
	cout => \U_application_test|Add0~29\);

-- Location: LCCOMB_X23_Y20_N0
\U_application_test|Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_application_test|Add0~32_combout\ = ((\U_jtag_wrapper|REG_GEN:0:REG_i|output\(16) $ (\U_jtag_wrapper|REG_GEN:1:REG_i|output\(16) $ (!\U_application_test|Add0~31\)))) # (GND)
-- \U_application_test|Add0~33\ = CARRY((\U_jtag_wrapper|REG_GEN:0:REG_i|output\(16) & ((\U_jtag_wrapper|REG_GEN:1:REG_i|output\(16)) # (!\U_application_test|Add0~31\))) # (!\U_jtag_wrapper|REG_GEN:0:REG_i|output\(16) & 
-- (\U_jtag_wrapper|REG_GEN:1:REG_i|output\(16) & !\U_application_test|Add0~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|REG_GEN:0:REG_i|output\(16),
	datab => \U_jtag_wrapper|REG_GEN:1:REG_i|output\(16),
	datad => VCC,
	cin => \U_application_test|Add0~31\,
	combout => \U_application_test|Add0~32_combout\,
	cout => \U_application_test|Add0~33\);

-- Location: LCCOMB_X23_Y20_N8
\U_application_test|Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_application_test|Add0~40_combout\ = ((\U_jtag_wrapper|REG_GEN:1:REG_i|output\(20) $ (\U_jtag_wrapper|REG_GEN:0:REG_i|output\(20) $ (!\U_application_test|Add0~39\)))) # (GND)
-- \U_application_test|Add0~41\ = CARRY((\U_jtag_wrapper|REG_GEN:1:REG_i|output\(20) & ((\U_jtag_wrapper|REG_GEN:0:REG_i|output\(20)) # (!\U_application_test|Add0~39\))) # (!\U_jtag_wrapper|REG_GEN:1:REG_i|output\(20) & 
-- (\U_jtag_wrapper|REG_GEN:0:REG_i|output\(20) & !\U_application_test|Add0~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|REG_GEN:1:REG_i|output\(20),
	datab => \U_jtag_wrapper|REG_GEN:0:REG_i|output\(20),
	datad => VCC,
	cin => \U_application_test|Add0~39\,
	combout => \U_application_test|Add0~40_combout\,
	cout => \U_application_test|Add0~41\);

-- Location: LCCOMB_X23_Y20_N10
\U_application_test|Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_application_test|Add0~42_combout\ = (\U_jtag_wrapper|REG_GEN:0:REG_i|output\(21) & ((\U_jtag_wrapper|REG_GEN:1:REG_i|output\(21) & (\U_application_test|Add0~41\ & VCC)) # (!\U_jtag_wrapper|REG_GEN:1:REG_i|output\(21) & 
-- (!\U_application_test|Add0~41\)))) # (!\U_jtag_wrapper|REG_GEN:0:REG_i|output\(21) & ((\U_jtag_wrapper|REG_GEN:1:REG_i|output\(21) & (!\U_application_test|Add0~41\)) # (!\U_jtag_wrapper|REG_GEN:1:REG_i|output\(21) & ((\U_application_test|Add0~41\) # 
-- (GND)))))
-- \U_application_test|Add0~43\ = CARRY((\U_jtag_wrapper|REG_GEN:0:REG_i|output\(21) & (!\U_jtag_wrapper|REG_GEN:1:REG_i|output\(21) & !\U_application_test|Add0~41\)) # (!\U_jtag_wrapper|REG_GEN:0:REG_i|output\(21) & ((!\U_application_test|Add0~41\) # 
-- (!\U_jtag_wrapper|REG_GEN:1:REG_i|output\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|REG_GEN:0:REG_i|output\(21),
	datab => \U_jtag_wrapper|REG_GEN:1:REG_i|output\(21),
	datad => VCC,
	cin => \U_application_test|Add0~41\,
	combout => \U_application_test|Add0~42_combout\,
	cout => \U_application_test|Add0~43\);

-- Location: LCCOMB_X23_Y20_N12
\U_application_test|Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_application_test|Add0~44_combout\ = ((\U_jtag_wrapper|REG_GEN:0:REG_i|output\(22) $ (\U_jtag_wrapper|REG_GEN:1:REG_i|output\(22) $ (!\U_application_test|Add0~43\)))) # (GND)
-- \U_application_test|Add0~45\ = CARRY((\U_jtag_wrapper|REG_GEN:0:REG_i|output\(22) & ((\U_jtag_wrapper|REG_GEN:1:REG_i|output\(22)) # (!\U_application_test|Add0~43\))) # (!\U_jtag_wrapper|REG_GEN:0:REG_i|output\(22) & 
-- (\U_jtag_wrapper|REG_GEN:1:REG_i|output\(22) & !\U_application_test|Add0~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|REG_GEN:0:REG_i|output\(22),
	datab => \U_jtag_wrapper|REG_GEN:1:REG_i|output\(22),
	datad => VCC,
	cin => \U_application_test|Add0~43\,
	combout => \U_application_test|Add0~44_combout\,
	cout => \U_application_test|Add0~45\);

-- Location: LCCOMB_X23_Y20_N14
\U_application_test|Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_application_test|Add0~46_combout\ = (\U_jtag_wrapper|REG_GEN:0:REG_i|output\(23) & ((\U_jtag_wrapper|REG_GEN:1:REG_i|output\(23) & (\U_application_test|Add0~45\ & VCC)) # (!\U_jtag_wrapper|REG_GEN:1:REG_i|output\(23) & 
-- (!\U_application_test|Add0~45\)))) # (!\U_jtag_wrapper|REG_GEN:0:REG_i|output\(23) & ((\U_jtag_wrapper|REG_GEN:1:REG_i|output\(23) & (!\U_application_test|Add0~45\)) # (!\U_jtag_wrapper|REG_GEN:1:REG_i|output\(23) & ((\U_application_test|Add0~45\) # 
-- (GND)))))
-- \U_application_test|Add0~47\ = CARRY((\U_jtag_wrapper|REG_GEN:0:REG_i|output\(23) & (!\U_jtag_wrapper|REG_GEN:1:REG_i|output\(23) & !\U_application_test|Add0~45\)) # (!\U_jtag_wrapper|REG_GEN:0:REG_i|output\(23) & ((!\U_application_test|Add0~45\) # 
-- (!\U_jtag_wrapper|REG_GEN:1:REG_i|output\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|REG_GEN:0:REG_i|output\(23),
	datab => \U_jtag_wrapper|REG_GEN:1:REG_i|output\(23),
	datad => VCC,
	cin => \U_application_test|Add0~45\,
	combout => \U_application_test|Add0~46_combout\,
	cout => \U_application_test|Add0~47\);

-- Location: LCCOMB_X23_Y20_N16
\U_application_test|Add0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_application_test|Add0~48_combout\ = ((\U_jtag_wrapper|REG_GEN:0:REG_i|output\(24) $ (\U_jtag_wrapper|REG_GEN:1:REG_i|output\(24) $ (!\U_application_test|Add0~47\)))) # (GND)
-- \U_application_test|Add0~49\ = CARRY((\U_jtag_wrapper|REG_GEN:0:REG_i|output\(24) & ((\U_jtag_wrapper|REG_GEN:1:REG_i|output\(24)) # (!\U_application_test|Add0~47\))) # (!\U_jtag_wrapper|REG_GEN:0:REG_i|output\(24) & 
-- (\U_jtag_wrapper|REG_GEN:1:REG_i|output\(24) & !\U_application_test|Add0~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|REG_GEN:0:REG_i|output\(24),
	datab => \U_jtag_wrapper|REG_GEN:1:REG_i|output\(24),
	datad => VCC,
	cin => \U_application_test|Add0~47\,
	combout => \U_application_test|Add0~48_combout\,
	cout => \U_application_test|Add0~49\);

-- Location: LCCOMB_X23_Y20_N18
\U_application_test|Add0~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_application_test|Add0~50_combout\ = (\U_jtag_wrapper|REG_GEN:0:REG_i|output\(25) & ((\U_jtag_wrapper|REG_GEN:1:REG_i|output\(25) & (\U_application_test|Add0~49\ & VCC)) # (!\U_jtag_wrapper|REG_GEN:1:REG_i|output\(25) & 
-- (!\U_application_test|Add0~49\)))) # (!\U_jtag_wrapper|REG_GEN:0:REG_i|output\(25) & ((\U_jtag_wrapper|REG_GEN:1:REG_i|output\(25) & (!\U_application_test|Add0~49\)) # (!\U_jtag_wrapper|REG_GEN:1:REG_i|output\(25) & ((\U_application_test|Add0~49\) # 
-- (GND)))))
-- \U_application_test|Add0~51\ = CARRY((\U_jtag_wrapper|REG_GEN:0:REG_i|output\(25) & (!\U_jtag_wrapper|REG_GEN:1:REG_i|output\(25) & !\U_application_test|Add0~49\)) # (!\U_jtag_wrapper|REG_GEN:0:REG_i|output\(25) & ((!\U_application_test|Add0~49\) # 
-- (!\U_jtag_wrapper|REG_GEN:1:REG_i|output\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|REG_GEN:0:REG_i|output\(25),
	datab => \U_jtag_wrapper|REG_GEN:1:REG_i|output\(25),
	datad => VCC,
	cin => \U_application_test|Add0~49\,
	combout => \U_application_test|Add0~50_combout\,
	cout => \U_application_test|Add0~51\);

-- Location: LCCOMB_X23_Y20_N20
\U_application_test|Add0~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_application_test|Add0~52_combout\ = ((\U_jtag_wrapper|REG_GEN:1:REG_i|output\(26) $ (\U_jtag_wrapper|REG_GEN:0:REG_i|output\(26) $ (!\U_application_test|Add0~51\)))) # (GND)
-- \U_application_test|Add0~53\ = CARRY((\U_jtag_wrapper|REG_GEN:1:REG_i|output\(26) & ((\U_jtag_wrapper|REG_GEN:0:REG_i|output\(26)) # (!\U_application_test|Add0~51\))) # (!\U_jtag_wrapper|REG_GEN:1:REG_i|output\(26) & 
-- (\U_jtag_wrapper|REG_GEN:0:REG_i|output\(26) & !\U_application_test|Add0~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|REG_GEN:1:REG_i|output\(26),
	datab => \U_jtag_wrapper|REG_GEN:0:REG_i|output\(26),
	datad => VCC,
	cin => \U_application_test|Add0~51\,
	combout => \U_application_test|Add0~52_combout\,
	cout => \U_application_test|Add0~53\);

-- Location: LCCOMB_X23_Y20_N22
\U_application_test|Add0~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_application_test|Add0~54_combout\ = (\U_jtag_wrapper|REG_GEN:0:REG_i|output\(27) & ((\U_jtag_wrapper|REG_GEN:1:REG_i|output\(27) & (\U_application_test|Add0~53\ & VCC)) # (!\U_jtag_wrapper|REG_GEN:1:REG_i|output\(27) & 
-- (!\U_application_test|Add0~53\)))) # (!\U_jtag_wrapper|REG_GEN:0:REG_i|output\(27) & ((\U_jtag_wrapper|REG_GEN:1:REG_i|output\(27) & (!\U_application_test|Add0~53\)) # (!\U_jtag_wrapper|REG_GEN:1:REG_i|output\(27) & ((\U_application_test|Add0~53\) # 
-- (GND)))))
-- \U_application_test|Add0~55\ = CARRY((\U_jtag_wrapper|REG_GEN:0:REG_i|output\(27) & (!\U_jtag_wrapper|REG_GEN:1:REG_i|output\(27) & !\U_application_test|Add0~53\)) # (!\U_jtag_wrapper|REG_GEN:0:REG_i|output\(27) & ((!\U_application_test|Add0~53\) # 
-- (!\U_jtag_wrapper|REG_GEN:1:REG_i|output\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|REG_GEN:0:REG_i|output\(27),
	datab => \U_jtag_wrapper|REG_GEN:1:REG_i|output\(27),
	datad => VCC,
	cin => \U_application_test|Add0~53\,
	combout => \U_application_test|Add0~54_combout\,
	cout => \U_application_test|Add0~55\);

-- Location: LCCOMB_X23_Y20_N24
\U_application_test|Add0~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_application_test|Add0~56_combout\ = ((\U_jtag_wrapper|REG_GEN:1:REG_i|output\(28) $ (\U_jtag_wrapper|REG_GEN:0:REG_i|output\(28) $ (!\U_application_test|Add0~55\)))) # (GND)
-- \U_application_test|Add0~57\ = CARRY((\U_jtag_wrapper|REG_GEN:1:REG_i|output\(28) & ((\U_jtag_wrapper|REG_GEN:0:REG_i|output\(28)) # (!\U_application_test|Add0~55\))) # (!\U_jtag_wrapper|REG_GEN:1:REG_i|output\(28) & 
-- (\U_jtag_wrapper|REG_GEN:0:REG_i|output\(28) & !\U_application_test|Add0~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|REG_GEN:1:REG_i|output\(28),
	datab => \U_jtag_wrapper|REG_GEN:0:REG_i|output\(28),
	datad => VCC,
	cin => \U_application_test|Add0~55\,
	combout => \U_application_test|Add0~56_combout\,
	cout => \U_application_test|Add0~57\);

-- Location: LCCOMB_X24_Y18_N26
\U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters~12_combout\ = (\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(0) & (\U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(1) & \U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(0),
	datac => \U_jtag_wrapper|U_ADDR_TOP|U_logic|addr_reg\(1),
	datad => \U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters~9_combout\,
	combout => \U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters~12_combout\);

-- Location: FF_X24_Y18_N27
\U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters~12_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters\(2));

-- Location: FF_X24_Y18_N5
\U_jtag_wrapper|U_ADDR_TOP|U_logic|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_ADDR_TOP|U_logic|selectRegisters\(2),
	sload => VCC,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(2));

-- Location: FF_X19_Y20_N1
\U_jtag_wrapper|REG_GEN:2:REG_i|output[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_SR_V2|output\(19),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:2:REG_i|output\(19));

-- Location: LCCOMB_X19_Y20_N2
\U_jtag_wrapper|REG_GEN:2:REG_i|output[18]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|REG_GEN:2:REG_i|output[18]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|output\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|output\(18),
	combout => \U_jtag_wrapper|REG_GEN:2:REG_i|output[18]~feeder_combout\);

-- Location: FF_X19_Y20_N3
\U_jtag_wrapper|REG_GEN:2:REG_i|output[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|REG_GEN:2:REG_i|output[18]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:2:REG_i|output\(18));

-- Location: LCCOMB_X19_Y20_N28
\U_jtag_wrapper|REG_GEN:2:REG_i|output[17]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|REG_GEN:2:REG_i|output[17]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|output\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|output\(17),
	combout => \U_jtag_wrapper|REG_GEN:2:REG_i|output[17]~feeder_combout\);

-- Location: FF_X19_Y20_N29
\U_jtag_wrapper|REG_GEN:2:REG_i|output[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|REG_GEN:2:REG_i|output[17]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:2:REG_i|output\(17));

-- Location: FF_X22_Y19_N5
\U_jtag_wrapper|REG_GEN:2:REG_i|output[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_SR_V2|output\(15),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:2:REG_i|output\(15));

-- Location: FF_X21_Y19_N9
\U_jtag_wrapper|REG_GEN:2:REG_i|output[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_SR_V2|output\(12),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:2:REG_i|output\(12));

-- Location: LCCOMB_X21_Y19_N18
\U_jtag_wrapper|REG_GEN:2:REG_i|output[11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|REG_GEN:2:REG_i|output[11]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|output\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|output\(11),
	combout => \U_jtag_wrapper|REG_GEN:2:REG_i|output[11]~feeder_combout\);

-- Location: FF_X21_Y19_N19
\U_jtag_wrapper|REG_GEN:2:REG_i|output[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|REG_GEN:2:REG_i|output[11]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:2:REG_i|output\(11));

-- Location: FF_X22_Y19_N17
\U_jtag_wrapper|REG_GEN:2:REG_i|output[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_SR_V2|output\(10),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:2:REG_i|output\(10));

-- Location: LCCOMB_X21_Y19_N24
\U_jtag_wrapper|REG_GEN:2:REG_i|output[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|REG_GEN:2:REG_i|output[4]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|output\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|output\(4),
	combout => \U_jtag_wrapper|REG_GEN:2:REG_i|output[4]~feeder_combout\);

-- Location: FF_X21_Y19_N25
\U_jtag_wrapper|REG_GEN:2:REG_i|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|REG_GEN:2:REG_i|output[4]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:2:REG_i|output\(4));

-- Location: FF_X22_Y19_N25
\U_jtag_wrapper|REG_GEN:2:REG_i|output[3]\ : dffeas
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
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:2:REG_i|output\(3));

-- Location: LCCOMB_X22_Y19_N10
\U_jtag_wrapper|REG_GEN:2:REG_i|output[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|REG_GEN:2:REG_i|output[2]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|output\(2),
	combout => \U_jtag_wrapper|REG_GEN:2:REG_i|output[2]~feeder_combout\);

-- Location: FF_X22_Y19_N11
\U_jtag_wrapper|REG_GEN:2:REG_i|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|REG_GEN:2:REG_i|output[2]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:2:REG_i|output\(2));

-- Location: LCCOMB_X22_Y21_N2
\U_application_test|output[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_application_test|output[1]~2_combout\ = (\U_jtag_wrapper|REG_GEN:2:REG_i|output\(1) & ((\U_application_test|Add0~2_combout\ & (\U_application_test|output[0]~1\ & VCC)) # (!\U_application_test|Add0~2_combout\ & (!\U_application_test|output[0]~1\)))) # 
-- (!\U_jtag_wrapper|REG_GEN:2:REG_i|output\(1) & ((\U_application_test|Add0~2_combout\ & (!\U_application_test|output[0]~1\)) # (!\U_application_test|Add0~2_combout\ & ((\U_application_test|output[0]~1\) # (GND)))))
-- \U_application_test|output[1]~3\ = CARRY((\U_jtag_wrapper|REG_GEN:2:REG_i|output\(1) & (!\U_application_test|Add0~2_combout\ & !\U_application_test|output[0]~1\)) # (!\U_jtag_wrapper|REG_GEN:2:REG_i|output\(1) & ((!\U_application_test|output[0]~1\) # 
-- (!\U_application_test|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|REG_GEN:2:REG_i|output\(1),
	datab => \U_application_test|Add0~2_combout\,
	datad => VCC,
	cin => \U_application_test|output[0]~1\,
	combout => \U_application_test|output[1]~2_combout\,
	cout => \U_application_test|output[1]~3\);

-- Location: LCCOMB_X22_Y21_N4
\U_application_test|output[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_application_test|output[2]~4_combout\ = ((\U_application_test|Add0~4_combout\ $ (\U_jtag_wrapper|REG_GEN:2:REG_i|output\(2) $ (!\U_application_test|output[1]~3\)))) # (GND)
-- \U_application_test|output[2]~5\ = CARRY((\U_application_test|Add0~4_combout\ & ((\U_jtag_wrapper|REG_GEN:2:REG_i|output\(2)) # (!\U_application_test|output[1]~3\))) # (!\U_application_test|Add0~4_combout\ & (\U_jtag_wrapper|REG_GEN:2:REG_i|output\(2) & 
-- !\U_application_test|output[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_application_test|Add0~4_combout\,
	datab => \U_jtag_wrapper|REG_GEN:2:REG_i|output\(2),
	datad => VCC,
	cin => \U_application_test|output[1]~3\,
	combout => \U_application_test|output[2]~4_combout\,
	cout => \U_application_test|output[2]~5\);

-- Location: LCCOMB_X22_Y21_N6
\U_application_test|output[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_application_test|output[3]~6_combout\ = (\U_application_test|Add0~6_combout\ & ((\U_jtag_wrapper|REG_GEN:2:REG_i|output\(3) & (\U_application_test|output[2]~5\ & VCC)) # (!\U_jtag_wrapper|REG_GEN:2:REG_i|output\(3) & 
-- (!\U_application_test|output[2]~5\)))) # (!\U_application_test|Add0~6_combout\ & ((\U_jtag_wrapper|REG_GEN:2:REG_i|output\(3) & (!\U_application_test|output[2]~5\)) # (!\U_jtag_wrapper|REG_GEN:2:REG_i|output\(3) & ((\U_application_test|output[2]~5\) # 
-- (GND)))))
-- \U_application_test|output[3]~7\ = CARRY((\U_application_test|Add0~6_combout\ & (!\U_jtag_wrapper|REG_GEN:2:REG_i|output\(3) & !\U_application_test|output[2]~5\)) # (!\U_application_test|Add0~6_combout\ & ((!\U_application_test|output[2]~5\) # 
-- (!\U_jtag_wrapper|REG_GEN:2:REG_i|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_application_test|Add0~6_combout\,
	datab => \U_jtag_wrapper|REG_GEN:2:REG_i|output\(3),
	datad => VCC,
	cin => \U_application_test|output[2]~5\,
	combout => \U_application_test|output[3]~6_combout\,
	cout => \U_application_test|output[3]~7\);

-- Location: LCCOMB_X22_Y21_N8
\U_application_test|output[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_application_test|output[4]~8_combout\ = ((\U_application_test|Add0~8_combout\ $ (\U_jtag_wrapper|REG_GEN:2:REG_i|output\(4) $ (!\U_application_test|output[3]~7\)))) # (GND)
-- \U_application_test|output[4]~9\ = CARRY((\U_application_test|Add0~8_combout\ & ((\U_jtag_wrapper|REG_GEN:2:REG_i|output\(4)) # (!\U_application_test|output[3]~7\))) # (!\U_application_test|Add0~8_combout\ & (\U_jtag_wrapper|REG_GEN:2:REG_i|output\(4) & 
-- !\U_application_test|output[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_application_test|Add0~8_combout\,
	datab => \U_jtag_wrapper|REG_GEN:2:REG_i|output\(4),
	datad => VCC,
	cin => \U_application_test|output[3]~7\,
	combout => \U_application_test|output[4]~8_combout\,
	cout => \U_application_test|output[4]~9\);

-- Location: LCCOMB_X22_Y21_N10
\U_application_test|output[5]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_application_test|output[5]~10_combout\ = (\U_jtag_wrapper|REG_GEN:2:REG_i|output\(5) & ((\U_application_test|Add0~10_combout\ & (\U_application_test|output[4]~9\ & VCC)) # (!\U_application_test|Add0~10_combout\ & (!\U_application_test|output[4]~9\)))) 
-- # (!\U_jtag_wrapper|REG_GEN:2:REG_i|output\(5) & ((\U_application_test|Add0~10_combout\ & (!\U_application_test|output[4]~9\)) # (!\U_application_test|Add0~10_combout\ & ((\U_application_test|output[4]~9\) # (GND)))))
-- \U_application_test|output[5]~11\ = CARRY((\U_jtag_wrapper|REG_GEN:2:REG_i|output\(5) & (!\U_application_test|Add0~10_combout\ & !\U_application_test|output[4]~9\)) # (!\U_jtag_wrapper|REG_GEN:2:REG_i|output\(5) & ((!\U_application_test|output[4]~9\) # 
-- (!\U_application_test|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|REG_GEN:2:REG_i|output\(5),
	datab => \U_application_test|Add0~10_combout\,
	datad => VCC,
	cin => \U_application_test|output[4]~9\,
	combout => \U_application_test|output[5]~10_combout\,
	cout => \U_application_test|output[5]~11\);

-- Location: LCCOMB_X22_Y21_N12
\U_application_test|output[6]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_application_test|output[6]~12_combout\ = ((\U_jtag_wrapper|REG_GEN:2:REG_i|output\(6) $ (\U_application_test|Add0~12_combout\ $ (!\U_application_test|output[5]~11\)))) # (GND)
-- \U_application_test|output[6]~13\ = CARRY((\U_jtag_wrapper|REG_GEN:2:REG_i|output\(6) & ((\U_application_test|Add0~12_combout\) # (!\U_application_test|output[5]~11\))) # (!\U_jtag_wrapper|REG_GEN:2:REG_i|output\(6) & (\U_application_test|Add0~12_combout\ 
-- & !\U_application_test|output[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|REG_GEN:2:REG_i|output\(6),
	datab => \U_application_test|Add0~12_combout\,
	datad => VCC,
	cin => \U_application_test|output[5]~11\,
	combout => \U_application_test|output[6]~12_combout\,
	cout => \U_application_test|output[6]~13\);

-- Location: LCCOMB_X22_Y21_N14
\U_application_test|output[7]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_application_test|output[7]~14_combout\ = (\U_jtag_wrapper|REG_GEN:2:REG_i|output\(7) & ((\U_application_test|Add0~14_combout\ & (\U_application_test|output[6]~13\ & VCC)) # (!\U_application_test|Add0~14_combout\ & 
-- (!\U_application_test|output[6]~13\)))) # (!\U_jtag_wrapper|REG_GEN:2:REG_i|output\(7) & ((\U_application_test|Add0~14_combout\ & (!\U_application_test|output[6]~13\)) # (!\U_application_test|Add0~14_combout\ & ((\U_application_test|output[6]~13\) # 
-- (GND)))))
-- \U_application_test|output[7]~15\ = CARRY((\U_jtag_wrapper|REG_GEN:2:REG_i|output\(7) & (!\U_application_test|Add0~14_combout\ & !\U_application_test|output[6]~13\)) # (!\U_jtag_wrapper|REG_GEN:2:REG_i|output\(7) & ((!\U_application_test|output[6]~13\) # 
-- (!\U_application_test|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|REG_GEN:2:REG_i|output\(7),
	datab => \U_application_test|Add0~14_combout\,
	datad => VCC,
	cin => \U_application_test|output[6]~13\,
	combout => \U_application_test|output[7]~14_combout\,
	cout => \U_application_test|output[7]~15\);

-- Location: LCCOMB_X22_Y21_N16
\U_application_test|output[8]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_application_test|output[8]~16_combout\ = ((\U_jtag_wrapper|REG_GEN:2:REG_i|output\(8) $ (\U_application_test|Add0~16_combout\ $ (!\U_application_test|output[7]~15\)))) # (GND)
-- \U_application_test|output[8]~17\ = CARRY((\U_jtag_wrapper|REG_GEN:2:REG_i|output\(8) & ((\U_application_test|Add0~16_combout\) # (!\U_application_test|output[7]~15\))) # (!\U_jtag_wrapper|REG_GEN:2:REG_i|output\(8) & (\U_application_test|Add0~16_combout\ 
-- & !\U_application_test|output[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|REG_GEN:2:REG_i|output\(8),
	datab => \U_application_test|Add0~16_combout\,
	datad => VCC,
	cin => \U_application_test|output[7]~15\,
	combout => \U_application_test|output[8]~16_combout\,
	cout => \U_application_test|output[8]~17\);

-- Location: LCCOMB_X22_Y21_N18
\U_application_test|output[9]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_application_test|output[9]~18_combout\ = (\U_jtag_wrapper|REG_GEN:2:REG_i|output\(9) & ((\U_application_test|Add0~18_combout\ & (\U_application_test|output[8]~17\ & VCC)) # (!\U_application_test|Add0~18_combout\ & 
-- (!\U_application_test|output[8]~17\)))) # (!\U_jtag_wrapper|REG_GEN:2:REG_i|output\(9) & ((\U_application_test|Add0~18_combout\ & (!\U_application_test|output[8]~17\)) # (!\U_application_test|Add0~18_combout\ & ((\U_application_test|output[8]~17\) # 
-- (GND)))))
-- \U_application_test|output[9]~19\ = CARRY((\U_jtag_wrapper|REG_GEN:2:REG_i|output\(9) & (!\U_application_test|Add0~18_combout\ & !\U_application_test|output[8]~17\)) # (!\U_jtag_wrapper|REG_GEN:2:REG_i|output\(9) & ((!\U_application_test|output[8]~17\) # 
-- (!\U_application_test|Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|REG_GEN:2:REG_i|output\(9),
	datab => \U_application_test|Add0~18_combout\,
	datad => VCC,
	cin => \U_application_test|output[8]~17\,
	combout => \U_application_test|output[9]~18_combout\,
	cout => \U_application_test|output[9]~19\);

-- Location: LCCOMB_X22_Y21_N20
\U_application_test|output[10]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_application_test|output[10]~20_combout\ = ((\U_application_test|Add0~20_combout\ $ (\U_jtag_wrapper|REG_GEN:2:REG_i|output\(10) $ (!\U_application_test|output[9]~19\)))) # (GND)
-- \U_application_test|output[10]~21\ = CARRY((\U_application_test|Add0~20_combout\ & ((\U_jtag_wrapper|REG_GEN:2:REG_i|output\(10)) # (!\U_application_test|output[9]~19\))) # (!\U_application_test|Add0~20_combout\ & 
-- (\U_jtag_wrapper|REG_GEN:2:REG_i|output\(10) & !\U_application_test|output[9]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_application_test|Add0~20_combout\,
	datab => \U_jtag_wrapper|REG_GEN:2:REG_i|output\(10),
	datad => VCC,
	cin => \U_application_test|output[9]~19\,
	combout => \U_application_test|output[10]~20_combout\,
	cout => \U_application_test|output[10]~21\);

-- Location: LCCOMB_X22_Y21_N22
\U_application_test|output[11]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_application_test|output[11]~22_combout\ = (\U_application_test|Add0~22_combout\ & ((\U_jtag_wrapper|REG_GEN:2:REG_i|output\(11) & (\U_application_test|output[10]~21\ & VCC)) # (!\U_jtag_wrapper|REG_GEN:2:REG_i|output\(11) & 
-- (!\U_application_test|output[10]~21\)))) # (!\U_application_test|Add0~22_combout\ & ((\U_jtag_wrapper|REG_GEN:2:REG_i|output\(11) & (!\U_application_test|output[10]~21\)) # (!\U_jtag_wrapper|REG_GEN:2:REG_i|output\(11) & 
-- ((\U_application_test|output[10]~21\) # (GND)))))
-- \U_application_test|output[11]~23\ = CARRY((\U_application_test|Add0~22_combout\ & (!\U_jtag_wrapper|REG_GEN:2:REG_i|output\(11) & !\U_application_test|output[10]~21\)) # (!\U_application_test|Add0~22_combout\ & ((!\U_application_test|output[10]~21\) # 
-- (!\U_jtag_wrapper|REG_GEN:2:REG_i|output\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_application_test|Add0~22_combout\,
	datab => \U_jtag_wrapper|REG_GEN:2:REG_i|output\(11),
	datad => VCC,
	cin => \U_application_test|output[10]~21\,
	combout => \U_application_test|output[11]~22_combout\,
	cout => \U_application_test|output[11]~23\);

-- Location: LCCOMB_X22_Y21_N24
\U_application_test|output[12]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_application_test|output[12]~24_combout\ = ((\U_application_test|Add0~24_combout\ $ (\U_jtag_wrapper|REG_GEN:2:REG_i|output\(12) $ (!\U_application_test|output[11]~23\)))) # (GND)
-- \U_application_test|output[12]~25\ = CARRY((\U_application_test|Add0~24_combout\ & ((\U_jtag_wrapper|REG_GEN:2:REG_i|output\(12)) # (!\U_application_test|output[11]~23\))) # (!\U_application_test|Add0~24_combout\ & 
-- (\U_jtag_wrapper|REG_GEN:2:REG_i|output\(12) & !\U_application_test|output[11]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_application_test|Add0~24_combout\,
	datab => \U_jtag_wrapper|REG_GEN:2:REG_i|output\(12),
	datad => VCC,
	cin => \U_application_test|output[11]~23\,
	combout => \U_application_test|output[12]~24_combout\,
	cout => \U_application_test|output[12]~25\);

-- Location: LCCOMB_X22_Y21_N26
\U_application_test|output[13]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_application_test|output[13]~26_combout\ = (\U_jtag_wrapper|REG_GEN:2:REG_i|output\(13) & ((\U_application_test|Add0~26_combout\ & (\U_application_test|output[12]~25\ & VCC)) # (!\U_application_test|Add0~26_combout\ & 
-- (!\U_application_test|output[12]~25\)))) # (!\U_jtag_wrapper|REG_GEN:2:REG_i|output\(13) & ((\U_application_test|Add0~26_combout\ & (!\U_application_test|output[12]~25\)) # (!\U_application_test|Add0~26_combout\ & ((\U_application_test|output[12]~25\) # 
-- (GND)))))
-- \U_application_test|output[13]~27\ = CARRY((\U_jtag_wrapper|REG_GEN:2:REG_i|output\(13) & (!\U_application_test|Add0~26_combout\ & !\U_application_test|output[12]~25\)) # (!\U_jtag_wrapper|REG_GEN:2:REG_i|output\(13) & 
-- ((!\U_application_test|output[12]~25\) # (!\U_application_test|Add0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|REG_GEN:2:REG_i|output\(13),
	datab => \U_application_test|Add0~26_combout\,
	datad => VCC,
	cin => \U_application_test|output[12]~25\,
	combout => \U_application_test|output[13]~26_combout\,
	cout => \U_application_test|output[13]~27\);

-- Location: LCCOMB_X22_Y21_N28
\U_application_test|output[14]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_application_test|output[14]~28_combout\ = ((\U_jtag_wrapper|REG_GEN:2:REG_i|output\(14) $ (\U_application_test|Add0~28_combout\ $ (!\U_application_test|output[13]~27\)))) # (GND)
-- \U_application_test|output[14]~29\ = CARRY((\U_jtag_wrapper|REG_GEN:2:REG_i|output\(14) & ((\U_application_test|Add0~28_combout\) # (!\U_application_test|output[13]~27\))) # (!\U_jtag_wrapper|REG_GEN:2:REG_i|output\(14) & 
-- (\U_application_test|Add0~28_combout\ & !\U_application_test|output[13]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|REG_GEN:2:REG_i|output\(14),
	datab => \U_application_test|Add0~28_combout\,
	datad => VCC,
	cin => \U_application_test|output[13]~27\,
	combout => \U_application_test|output[14]~28_combout\,
	cout => \U_application_test|output[14]~29\);

-- Location: LCCOMB_X22_Y21_N30
\U_application_test|output[15]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_application_test|output[15]~30_combout\ = (\U_application_test|Add0~30_combout\ & ((\U_jtag_wrapper|REG_GEN:2:REG_i|output\(15) & (\U_application_test|output[14]~29\ & VCC)) # (!\U_jtag_wrapper|REG_GEN:2:REG_i|output\(15) & 
-- (!\U_application_test|output[14]~29\)))) # (!\U_application_test|Add0~30_combout\ & ((\U_jtag_wrapper|REG_GEN:2:REG_i|output\(15) & (!\U_application_test|output[14]~29\)) # (!\U_jtag_wrapper|REG_GEN:2:REG_i|output\(15) & 
-- ((\U_application_test|output[14]~29\) # (GND)))))
-- \U_application_test|output[15]~31\ = CARRY((\U_application_test|Add0~30_combout\ & (!\U_jtag_wrapper|REG_GEN:2:REG_i|output\(15) & !\U_application_test|output[14]~29\)) # (!\U_application_test|Add0~30_combout\ & ((!\U_application_test|output[14]~29\) # 
-- (!\U_jtag_wrapper|REG_GEN:2:REG_i|output\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_application_test|Add0~30_combout\,
	datab => \U_jtag_wrapper|REG_GEN:2:REG_i|output\(15),
	datad => VCC,
	cin => \U_application_test|output[14]~29\,
	combout => \U_application_test|output[15]~30_combout\,
	cout => \U_application_test|output[15]~31\);

-- Location: LCCOMB_X22_Y20_N0
\U_application_test|output[16]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_application_test|output[16]~32_combout\ = ((\U_jtag_wrapper|REG_GEN:2:REG_i|output\(16) $ (\U_application_test|Add0~32_combout\ $ (!\U_application_test|output[15]~31\)))) # (GND)
-- \U_application_test|output[16]~33\ = CARRY((\U_jtag_wrapper|REG_GEN:2:REG_i|output\(16) & ((\U_application_test|Add0~32_combout\) # (!\U_application_test|output[15]~31\))) # (!\U_jtag_wrapper|REG_GEN:2:REG_i|output\(16) & 
-- (\U_application_test|Add0~32_combout\ & !\U_application_test|output[15]~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|REG_GEN:2:REG_i|output\(16),
	datab => \U_application_test|Add0~32_combout\,
	datad => VCC,
	cin => \U_application_test|output[15]~31\,
	combout => \U_application_test|output[16]~32_combout\,
	cout => \U_application_test|output[16]~33\);

-- Location: LCCOMB_X22_Y20_N8
\U_application_test|output[20]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_application_test|output[20]~40_combout\ = ((\U_jtag_wrapper|REG_GEN:2:REG_i|output\(20) $ (\U_application_test|Add0~40_combout\ $ (!\U_application_test|output[19]~39\)))) # (GND)
-- \U_application_test|output[20]~41\ = CARRY((\U_jtag_wrapper|REG_GEN:2:REG_i|output\(20) & ((\U_application_test|Add0~40_combout\) # (!\U_application_test|output[19]~39\))) # (!\U_jtag_wrapper|REG_GEN:2:REG_i|output\(20) & 
-- (\U_application_test|Add0~40_combout\ & !\U_application_test|output[19]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|REG_GEN:2:REG_i|output\(20),
	datab => \U_application_test|Add0~40_combout\,
	datad => VCC,
	cin => \U_application_test|output[19]~39\,
	combout => \U_application_test|output[20]~40_combout\,
	cout => \U_application_test|output[20]~41\);

-- Location: LCCOMB_X22_Y20_N10
\U_application_test|output[21]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_application_test|output[21]~42_combout\ = (\U_jtag_wrapper|REG_GEN:2:REG_i|output\(21) & ((\U_application_test|Add0~42_combout\ & (\U_application_test|output[20]~41\ & VCC)) # (!\U_application_test|Add0~42_combout\ & 
-- (!\U_application_test|output[20]~41\)))) # (!\U_jtag_wrapper|REG_GEN:2:REG_i|output\(21) & ((\U_application_test|Add0~42_combout\ & (!\U_application_test|output[20]~41\)) # (!\U_application_test|Add0~42_combout\ & ((\U_application_test|output[20]~41\) # 
-- (GND)))))
-- \U_application_test|output[21]~43\ = CARRY((\U_jtag_wrapper|REG_GEN:2:REG_i|output\(21) & (!\U_application_test|Add0~42_combout\ & !\U_application_test|output[20]~41\)) # (!\U_jtag_wrapper|REG_GEN:2:REG_i|output\(21) & 
-- ((!\U_application_test|output[20]~41\) # (!\U_application_test|Add0~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|REG_GEN:2:REG_i|output\(21),
	datab => \U_application_test|Add0~42_combout\,
	datad => VCC,
	cin => \U_application_test|output[20]~41\,
	combout => \U_application_test|output[21]~42_combout\,
	cout => \U_application_test|output[21]~43\);

-- Location: LCCOMB_X22_Y20_N12
\U_application_test|output[22]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_application_test|output[22]~44_combout\ = ((\U_jtag_wrapper|REG_GEN:2:REG_i|output\(22) $ (\U_application_test|Add0~44_combout\ $ (!\U_application_test|output[21]~43\)))) # (GND)
-- \U_application_test|output[22]~45\ = CARRY((\U_jtag_wrapper|REG_GEN:2:REG_i|output\(22) & ((\U_application_test|Add0~44_combout\) # (!\U_application_test|output[21]~43\))) # (!\U_jtag_wrapper|REG_GEN:2:REG_i|output\(22) & 
-- (\U_application_test|Add0~44_combout\ & !\U_application_test|output[21]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|REG_GEN:2:REG_i|output\(22),
	datab => \U_application_test|Add0~44_combout\,
	datad => VCC,
	cin => \U_application_test|output[21]~43\,
	combout => \U_application_test|output[22]~44_combout\,
	cout => \U_application_test|output[22]~45\);

-- Location: LCCOMB_X22_Y20_N18
\U_application_test|output[25]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_application_test|output[25]~50_combout\ = (\U_jtag_wrapper|REG_GEN:2:REG_i|output\(25) & ((\U_application_test|Add0~50_combout\ & (\U_application_test|output[24]~49\ & VCC)) # (!\U_application_test|Add0~50_combout\ & 
-- (!\U_application_test|output[24]~49\)))) # (!\U_jtag_wrapper|REG_GEN:2:REG_i|output\(25) & ((\U_application_test|Add0~50_combout\ & (!\U_application_test|output[24]~49\)) # (!\U_application_test|Add0~50_combout\ & ((\U_application_test|output[24]~49\) # 
-- (GND)))))
-- \U_application_test|output[25]~51\ = CARRY((\U_jtag_wrapper|REG_GEN:2:REG_i|output\(25) & (!\U_application_test|Add0~50_combout\ & !\U_application_test|output[24]~49\)) # (!\U_jtag_wrapper|REG_GEN:2:REG_i|output\(25) & 
-- ((!\U_application_test|output[24]~49\) # (!\U_application_test|Add0~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|REG_GEN:2:REG_i|output\(25),
	datab => \U_application_test|Add0~50_combout\,
	datad => VCC,
	cin => \U_application_test|output[24]~49\,
	combout => \U_application_test|output[25]~50_combout\,
	cout => \U_application_test|output[25]~51\);

-- Location: LCCOMB_X22_Y20_N24
\U_application_test|output[28]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_application_test|output[28]~56_combout\ = ((\U_jtag_wrapper|REG_GEN:2:REG_i|output\(28) $ (\U_application_test|Add0~56_combout\ $ (!\U_application_test|output[27]~55\)))) # (GND)
-- \U_application_test|output[28]~57\ = CARRY((\U_jtag_wrapper|REG_GEN:2:REG_i|output\(28) & ((\U_application_test|Add0~56_combout\) # (!\U_application_test|output[27]~55\))) # (!\U_jtag_wrapper|REG_GEN:2:REG_i|output\(28) & 
-- (\U_application_test|Add0~56_combout\ & !\U_application_test|output[27]~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|REG_GEN:2:REG_i|output\(28),
	datab => \U_application_test|Add0~56_combout\,
	datad => VCC,
	cin => \U_application_test|output[27]~55\,
	combout => \U_application_test|output[28]~56_combout\,
	cout => \U_application_test|output[28]~57\);

-- Location: FF_X22_Y20_N25
\U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_application_test|output[28]~56_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_31~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(28));

-- Location: LCCOMB_X17_Y19_N28
\U_jtag_wrapper|U_SR_V2|output[29]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_SR_V2|output[29]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|temp\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|temp\(29),
	combout => \U_jtag_wrapper|U_SR_V2|output[29]~feeder_combout\);

-- Location: FF_X17_Y19_N29
\U_jtag_wrapper|U_SR_V2|output[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_SR_V2|output[29]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_udr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_SR_V2|output\(29));

-- Location: LCCOMB_X24_Y21_N30
\U_jtag_wrapper|REG_GEN:0:REG_i|output[29]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|REG_GEN:0:REG_i|output[29]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|output\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|output\(29),
	combout => \U_jtag_wrapper|REG_GEN:0:REG_i|output[29]~feeder_combout\);

-- Location: FF_X24_Y21_N31
\U_jtag_wrapper|REG_GEN:0:REG_i|output[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|REG_GEN:0:REG_i|output[29]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:0:REG_i|output\(29));

-- Location: LCCOMB_X23_Y20_N26
\U_application_test|Add0~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_application_test|Add0~58_combout\ = (\U_jtag_wrapper|REG_GEN:1:REG_i|output\(29) & ((\U_jtag_wrapper|REG_GEN:0:REG_i|output\(29) & (\U_application_test|Add0~57\ & VCC)) # (!\U_jtag_wrapper|REG_GEN:0:REG_i|output\(29) & 
-- (!\U_application_test|Add0~57\)))) # (!\U_jtag_wrapper|REG_GEN:1:REG_i|output\(29) & ((\U_jtag_wrapper|REG_GEN:0:REG_i|output\(29) & (!\U_application_test|Add0~57\)) # (!\U_jtag_wrapper|REG_GEN:0:REG_i|output\(29) & ((\U_application_test|Add0~57\) # 
-- (GND)))))
-- \U_application_test|Add0~59\ = CARRY((\U_jtag_wrapper|REG_GEN:1:REG_i|output\(29) & (!\U_jtag_wrapper|REG_GEN:0:REG_i|output\(29) & !\U_application_test|Add0~57\)) # (!\U_jtag_wrapper|REG_GEN:1:REG_i|output\(29) & ((!\U_application_test|Add0~57\) # 
-- (!\U_jtag_wrapper|REG_GEN:0:REG_i|output\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|REG_GEN:1:REG_i|output\(29),
	datab => \U_jtag_wrapper|REG_GEN:0:REG_i|output\(29),
	datad => VCC,
	cin => \U_application_test|Add0~57\,
	combout => \U_application_test|Add0~58_combout\,
	cout => \U_application_test|Add0~59\);

-- Location: LCCOMB_X22_Y20_N26
\U_application_test|output[29]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_application_test|output[29]~58_combout\ = (\U_jtag_wrapper|REG_GEN:2:REG_i|output\(29) & ((\U_application_test|Add0~58_combout\ & (\U_application_test|output[28]~57\ & VCC)) # (!\U_application_test|Add0~58_combout\ & 
-- (!\U_application_test|output[28]~57\)))) # (!\U_jtag_wrapper|REG_GEN:2:REG_i|output\(29) & ((\U_application_test|Add0~58_combout\ & (!\U_application_test|output[28]~57\)) # (!\U_application_test|Add0~58_combout\ & ((\U_application_test|output[28]~57\) # 
-- (GND)))))
-- \U_application_test|output[29]~59\ = CARRY((\U_jtag_wrapper|REG_GEN:2:REG_i|output\(29) & (!\U_application_test|Add0~58_combout\ & !\U_application_test|output[28]~57\)) # (!\U_jtag_wrapper|REG_GEN:2:REG_i|output\(29) & 
-- ((!\U_application_test|output[28]~57\) # (!\U_application_test|Add0~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|REG_GEN:2:REG_i|output\(29),
	datab => \U_application_test|Add0~58_combout\,
	datad => VCC,
	cin => \U_application_test|output[28]~57\,
	combout => \U_application_test|output[29]~58_combout\,
	cout => \U_application_test|output[29]~59\);

-- Location: FF_X22_Y20_N27
\U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_application_test|output[29]~58_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_31~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(29));

-- Location: LCCOMB_X21_Y20_N4
\U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~1_combout\ = (\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_29~q\ & ((\U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(29)) # ((\U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(28) & 
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_28~q\)))) # (!\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_29~q\ & (\U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(28) & (\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_28~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_29~q\,
	datab => \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(28),
	datac => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_28~q\,
	datad => \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(29),
	combout => \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~1_combout\);

-- Location: LCCOMB_X17_Y19_N26
\U_jtag_wrapper|U_SR_V2|output[30]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_SR_V2|output[30]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|temp\(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|temp\(30),
	combout => \U_jtag_wrapper|U_SR_V2|output[30]~feeder_combout\);

-- Location: FF_X17_Y19_N27
\U_jtag_wrapper|U_SR_V2|output[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_SR_V2|output[30]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_udr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_SR_V2|output\(30));

-- Location: LCCOMB_X24_Y19_N8
\U_jtag_wrapper|REG_GEN:1:REG_i|output[30]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|REG_GEN:1:REG_i|output[30]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|output\(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|output\(30),
	combout => \U_jtag_wrapper|REG_GEN:1:REG_i|output[30]~feeder_combout\);

-- Location: FF_X24_Y19_N9
\U_jtag_wrapper|REG_GEN:1:REG_i|output[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|REG_GEN:1:REG_i|output[30]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:1:REG_i|output\(30));

-- Location: FF_X22_Y20_N29
\U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_application_test|output[30]~60_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_31~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(30));

-- Location: LCCOMB_X21_Y20_N28
\U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~0_combout\ = (\U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(31) & ((\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_31~q\) # ((\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_30~q\ & 
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(30))))) # (!\U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(31) & (((\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_30~q\ & \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(31),
	datab => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_31~q\,
	datac => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_30~q\,
	datad => \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(30),
	combout => \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~0_combout\);

-- Location: FF_X22_Y20_N19
\U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_application_test|output[25]~50_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_31~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(25));

-- Location: LCCOMB_X21_Y20_N24
\U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~3_combout\ = (\U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(24) & ((\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_24~q\) # ((\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_25~q\ & 
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(25))))) # (!\U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(24) & (\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_25~q\ & ((\U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(24),
	datab => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_25~q\,
	datac => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_24~q\,
	datad => \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(25),
	combout => \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~3_combout\);

-- Location: LCCOMB_X21_Y20_N0
\U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~4_combout\ = (\U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~2_combout\) # ((\U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~1_combout\) # ((\U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~0_combout\) # 
-- (\U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~2_combout\,
	datab => \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~1_combout\,
	datac => \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~0_combout\,
	datad => \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~3_combout\,
	combout => \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~4_combout\);

-- Location: FF_X22_Y20_N13
\U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_application_test|output[22]~44_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_31~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(22));

-- Location: LCCOMB_X21_Y20_N10
\U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~5_combout\ = (\U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(23) & ((\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_23~q\) # ((\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_22~q\ & 
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(22))))) # (!\U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(23) & (\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_22~q\ & ((\U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(23),
	datab => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_22~q\,
	datac => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_23~q\,
	datad => \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(22),
	combout => \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~5_combout\);

-- Location: FF_X22_Y20_N1
\U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_application_test|output[16]~32_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_31~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(16));

-- Location: LCCOMB_X21_Y21_N10
\U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~8_combout\ = (\U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(17) & ((\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_17~q\) # ((\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_16~q\ & 
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(16))))) # (!\U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(17) & (\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_16~q\ & ((\U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(17),
	datab => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_16~q\,
	datac => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_17~q\,
	datad => \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(16),
	combout => \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~8_combout\);

-- Location: FF_X22_Y20_N11
\U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_application_test|output[21]~42_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_31~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(21));

-- Location: FF_X22_Y20_N9
\U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_application_test|output[20]~40_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_31~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(20));

-- Location: LCCOMB_X21_Y20_N20
\U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~6_combout\ = (\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_21~q\ & ((\U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(21)) # ((\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_20~q\ & 
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(20))))) # (!\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_21~q\ & (((\U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_20~q\ & \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_21~q\,
	datab => \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(21),
	datac => \U_jtag_wrapper|U_DESIGN_TO_TDO|state.OUT_20~q\,
	datad => \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(20),
	combout => \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~6_combout\);

-- Location: LCCOMB_X21_Y20_N2
\U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~9_combout\ = (\U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~7_combout\) # ((\U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~5_combout\) # ((\U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~8_combout\) # 
-- (\U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~7_combout\,
	datab => \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~5_combout\,
	datac => \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~8_combout\,
	datad => \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~6_combout\,
	combout => \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~9_combout\);

-- Location: LCCOMB_X20_Y21_N24
\U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~20_combout\ = (\U_jtag_wrapper|U_DESIGN_TO_TDO|valid_reg~q\ & ((\U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~19_combout\) # ((\U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~4_combout\) # 
-- (\U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~19_combout\,
	datab => \U_jtag_wrapper|U_DESIGN_TO_TDO|valid_reg~q\,
	datac => \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~4_combout\,
	datad => \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~9_combout\,
	combout => \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~20_combout\);

-- Location: LCCOMB_X20_Y21_N30
\U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~31_combout\ = (\U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~33_combout\) # ((\U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~20_combout\) # ((\U_jtag_wrapper|U_DESIGN_TO_TDO|valid_reg~0_combout\ & 
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_jtag_wrapper|U_DESIGN_TO_TDO|valid_reg~0_combout\,
	datab => \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~33_combout\,
	datac => \U_jtag_wrapper|U_DESIGN_TO_TDO|data_reg\(0),
	datad => \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~20_combout\,
	combout => \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~31_combout\);

-- Location: FF_X20_Y21_N31
\U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_DESIGN_TO_TDO|Selector0~31_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(31));

-- Location: FF_X20_Y20_N29
\U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(31),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(30));

-- Location: LCCOMB_X20_Y20_N18
\U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[29]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[29]~feeder_combout\ = \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(30),
	combout => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[29]~feeder_combout\);

-- Location: FF_X20_Y20_N19
\U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[29]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(29));

-- Location: LCCOMB_X20_Y20_N24
\U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[28]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[28]~feeder_combout\ = \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(29),
	combout => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[28]~feeder_combout\);

-- Location: FF_X20_Y20_N25
\U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[28]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(28));

-- Location: LCCOMB_X20_Y20_N30
\U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[27]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[27]~feeder_combout\ = \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(28),
	combout => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[27]~feeder_combout\);

-- Location: FF_X20_Y20_N31
\U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[27]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(27));

-- Location: FF_X20_Y20_N5
\U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(27),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(26));

-- Location: FF_X20_Y20_N11
\U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(26),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(25));

-- Location: LCCOMB_X20_Y20_N0
\U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[24]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[24]~feeder_combout\ = \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(25),
	combout => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[24]~feeder_combout\);

-- Location: FF_X20_Y20_N1
\U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[24]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(24));

-- Location: LCCOMB_X20_Y20_N14
\U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[23]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[23]~feeder_combout\ = \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(24),
	combout => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[23]~feeder_combout\);

-- Location: FF_X20_Y20_N15
\U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[23]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(23));

-- Location: FF_X20_Y20_N13
\U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(23),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(22));

-- Location: LCCOMB_X20_Y20_N26
\U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[21]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[21]~feeder_combout\ = \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(22),
	combout => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[21]~feeder_combout\);

-- Location: FF_X20_Y20_N27
\U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[21]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(21));

-- Location: FF_X20_Y20_N17
\U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(21),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(20));

-- Location: LCCOMB_X20_Y20_N6
\U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[19]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[19]~feeder_combout\ = \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(20),
	combout => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[19]~feeder_combout\);

-- Location: FF_X20_Y20_N7
\U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[19]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(19));

-- Location: LCCOMB_X20_Y20_N20
\U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[18]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[18]~feeder_combout\ = \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(19),
	combout => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[18]~feeder_combout\);

-- Location: FF_X20_Y20_N21
\U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[18]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(18));

-- Location: LCCOMB_X20_Y20_N2
\U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[17]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[17]~feeder_combout\ = \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(18),
	combout => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[17]~feeder_combout\);

-- Location: FF_X20_Y20_N3
\U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[17]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(17));

-- Location: LCCOMB_X20_Y20_N8
\U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[16]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[16]~feeder_combout\ = \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(17),
	combout => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[16]~feeder_combout\);

-- Location: FF_X20_Y20_N9
\U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[16]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(16));

-- Location: LCCOMB_X14_Y20_N14
\U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[15]~feeder_combout\ = \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(16),
	combout => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[15]~feeder_combout\);

-- Location: FF_X14_Y20_N15
\U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[15]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(15));

-- Location: FF_X14_Y20_N29
\U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(15),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(14));

-- Location: LCCOMB_X14_Y20_N26
\U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[13]~feeder_combout\ = \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(14),
	combout => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[13]~feeder_combout\);

-- Location: FF_X14_Y20_N27
\U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[13]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(13));

-- Location: FF_X14_Y20_N17
\U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(13),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(12));

-- Location: LCCOMB_X14_Y20_N22
\U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[11]~feeder_combout\ = \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(12),
	combout => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[11]~feeder_combout\);

-- Location: FF_X14_Y20_N23
\U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[11]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(11));

-- Location: FF_X14_Y20_N21
\U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(11),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(10));

-- Location: LCCOMB_X14_Y20_N2
\U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[9]~feeder_combout\ = \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(10),
	combout => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[9]~feeder_combout\);

-- Location: FF_X14_Y20_N3
\U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[9]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(9));

-- Location: LCCOMB_X14_Y20_N8
\U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[8]~feeder_combout\ = \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(9),
	combout => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[8]~feeder_combout\);

-- Location: FF_X14_Y20_N9
\U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[8]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(8));

-- Location: FF_X14_Y20_N7
\U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(8),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(7));

-- Location: LCCOMB_X14_Y20_N4
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

-- Location: FF_X14_Y20_N5
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
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(6));

-- Location: FF_X14_Y20_N19
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
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(5));

-- Location: LCCOMB_X14_Y20_N24
\U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[4]~feeder_combout\ = \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(5),
	combout => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[4]~feeder_combout\);

-- Location: FF_X14_Y20_N25
\U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[4]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(4));

-- Location: LCCOMB_X14_Y20_N30
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

-- Location: FF_X14_Y20_N31
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
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(3));

-- Location: FF_X14_Y20_N13
\U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(3),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(2));

-- Location: LCCOMB_X14_Y20_N10
\U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[1]~feeder_combout\ = \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(2),
	combout => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[1]~feeder_combout\);

-- Location: FF_X14_Y20_N11
\U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg[1]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(1));

-- Location: LCCOMB_X14_Y20_N0
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

-- Location: FF_X14_Y20_N1
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
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(0));

-- Location: LCCOMB_X12_Y18_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~1\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(8),
	datad => \U_jtag_wrapper|U_DESIGN_TO_TDO|temp_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~1_combout\);

-- Location: LCCOMB_X12_Y18_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \altera_internal_jtag~TDIUTAP\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~q\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~0_combout\);

-- Location: FF_X12_Y18_N13
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

-- Location: LCCOMB_X12_Y18_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~2\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~0_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(8),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~1_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~q\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~2_combout\);

-- Location: LCCOMB_X11_Y19_N0
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

-- Location: LCCOMB_X11_Y19_N4
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

-- Location: LCCOMB_X11_Y19_N6
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

-- Location: LCCOMB_X11_Y19_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~17\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	cin => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]~16\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~17_combout\);

-- Location: LCCOMB_X11_Y18_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~14\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~q\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~14_combout\);

-- Location: FF_X11_Y19_N9
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

-- Location: LCCOMB_X11_Y19_N30
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~13\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~13_combout\);

-- Location: LCCOMB_X12_Y18_N14
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~19\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~13_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~19_combout\);

-- Location: FF_X11_Y19_N1
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

-- Location: LCCOMB_X11_Y19_N2
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

-- Location: FF_X11_Y19_N3
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

-- Location: FF_X11_Y19_N5
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

-- Location: LCCOMB_X11_Y19_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~19\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011000101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~18_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~19_combout\);

-- Location: LCCOMB_X10_Y19_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[3]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[3]~feeder_combout\);

-- Location: LCCOMB_X10_Y17_N30
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~2\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~1_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~0_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~2_combout\);

-- Location: FF_X10_Y17_N31
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

-- Location: LCCOMB_X12_Y16_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~10\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(5),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datad => \~GND~combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~10_combout\);

-- Location: LCCOMB_X12_Y16_N14
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

-- Location: FF_X12_Y16_N15
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

-- Location: LCCOMB_X12_Y16_N26
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

-- Location: FF_X12_Y16_N27
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

-- Location: LCCOMB_X11_Y16_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal3~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal3~0_combout\);

-- Location: LCCOMB_X11_Y16_N24
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

-- Location: FF_X11_Y16_N25
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

-- Location: LCCOMB_X11_Y16_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[2]~1\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(8),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[2]~1_combout\);

-- Location: LCCOMB_X12_Y16_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~2\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[2]~1_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~2_combout\);

-- Location: FF_X12_Y16_N1
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

-- Location: LCCOMB_X12_Y16_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~6\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \~GND~combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[2]~1_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~6_combout\);

-- Location: LCCOMB_X12_Y16_N30
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~7\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~7_combout\);

-- Location: LCCOMB_X12_Y16_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~8\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(3),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~7_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(8),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~8_combout\);

-- Location: LCCOMB_X12_Y16_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~9\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~6_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~8_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~9_combout\);

-- Location: FF_X11_Y16_N21
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

-- Location: LCCOMB_X12_Y16_N28
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

-- Location: FF_X12_Y16_N29
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

-- Location: LCCOMB_X12_Y18_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~q\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~0_combout\);

-- Location: LCCOMB_X12_Y18_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~1\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(8),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~0_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~1_combout\);

-- Location: FF_X10_Y19_N11
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

-- Location: LCCOMB_X10_Y19_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[2]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[2]~feeder_combout\);

-- Location: FF_X10_Y19_N25
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

-- Location: FF_X10_Y19_N31
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(2),
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(1));

-- Location: FF_X10_Y19_N13
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(1),
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(0));

-- Location: LCCOMB_X12_Y19_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~feeder_combout\);

-- Location: LCCOMB_X12_Y18_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(8),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~0_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~0_combout\);

-- Location: FF_X12_Y19_N1
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

-- Location: LCCOMB_X12_Y19_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[0]~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~9_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~19_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[0]~0_combout\);

-- Location: FF_X11_Y19_N7
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

-- Location: LCCOMB_X11_Y19_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~9\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~8_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~9_combout\);

-- Location: LCCOMB_X11_Y19_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~11\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~11_combout\);

-- Location: LCCOMB_X12_Y19_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~12\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~10_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~11_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~12_combout\);

-- Location: LCCOMB_X12_Y19_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[1]~1\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(1),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~9_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~12_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[1]~1_combout\);

-- Location: LCCOMB_X12_Y19_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[2]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[2]~feeder_combout\);

-- Location: FF_X12_Y19_N3
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

-- Location: LCCOMB_X12_Y19_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[2]~2\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~15_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~9_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[2]~2_combout\);

-- Location: LCCOMB_X12_Y19_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[3]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[3]~feeder_combout\);

-- Location: FF_X12_Y19_N7
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

-- Location: LCCOMB_X12_Y19_N30
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~3\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~17_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~9_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~3_combout\);

-- Location: LCCOMB_X12_Y19_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_proc~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_proc~0_combout\);

-- Location: LCCOMB_X12_Y19_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~q\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~combout\);

-- Location: FF_X12_Y19_N31
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

-- Location: FF_X12_Y19_N5
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

-- Location: FF_X12_Y19_N11
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

-- Location: FF_X12_Y19_N17
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

-- Location: LCCOMB_X11_Y18_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~3\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \altera_internal_jtag~TDIUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~3_combout\);

-- Location: LCCOMB_X11_Y18_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~0_combout\);

-- Location: FF_X11_Y18_N29
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

-- Location: LCCOMB_X11_Y18_N6
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

-- Location: FF_X11_Y18_N7
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

-- Location: LCCOMB_X11_Y18_N30
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~1\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~1_combout\);

-- Location: FF_X11_Y18_N31
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

-- Location: LCCOMB_X11_Y18_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~0_combout\);

-- Location: FF_X11_Y18_N17
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

-- Location: LCCOMB_X10_Y18_N2
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

-- Location: LCCOMB_X11_Y18_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\);

-- Location: LCCOMB_X10_Y18_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~13\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(2),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~5_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~13_combout\);

-- Location: LCCOMB_X11_Y18_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~20\ : cycloneiii_lcell_comb
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
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~20_combout\);

-- Location: FF_X10_Y18_N3
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

-- Location: LCCOMB_X10_Y18_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~11\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(1),
	datad => VCC,
	cin => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~10\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~11_combout\,
	cout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~12\);

-- Location: FF_X10_Y18_N5
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

-- Location: LCCOMB_X10_Y18_N6
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

-- Location: FF_X10_Y18_N9
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

-- Location: LCCOMB_X10_Y18_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~5\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~5_combout\);

-- Location: FF_X10_Y18_N7
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

-- Location: LCCOMB_X10_Y18_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~6\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~5_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~6_combout\);

-- Location: LCCOMB_X10_Y18_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~12\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(1),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~12_combout\);

-- Location: LCCOMB_X10_Y18_N28
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

-- Location: LCCOMB_X11_Y18_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~14\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~13_combout\,
	datac => \altera_internal_jtag~TDIUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~14_combout\);

-- Location: LCCOMB_X11_Y18_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[0]~15\ : cycloneiii_lcell_comb
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
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[0]~15_combout\);

-- Location: FF_X11_Y18_N15
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

-- Location: LCCOMB_X11_Y18_N14
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~8\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~6_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~8_combout\);

-- Location: LCCOMB_X11_Y18_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~9\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~9_combout\);

-- Location: LCCOMB_X11_Y18_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~11\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~10_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~8_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~9_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~11_combout\);

-- Location: FF_X11_Y18_N1
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

-- Location: LCCOMB_X11_Y18_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~7\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(2),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~6_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~7_combout\);

-- Location: FF_X11_Y18_N9
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

-- Location: LCCOMB_X11_Y18_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~4\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~4_combout\);

-- Location: FF_X11_Y18_N3
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

-- Location: LCCOMB_X11_Y18_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~0_combout\);

-- Location: LCCOMB_X12_Y18_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~3\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~1_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(8),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~0_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~3_combout\);

-- Location: LCCOMB_X12_Y18_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~4\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~3_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~4_combout\);

-- Location: LCCOMB_X12_Y18_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~5\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~2_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~4_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~5_combout\);

-- Location: FF_X12_Y18_N9
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

-- Location: LCCOMB_X12_Y18_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~_wirecell\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~q\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~_wirecell_combout\);

-- Location: FF_X17_Y19_N17
\U_jtag_wrapper|U_SR_V2|temp[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \altera_internal_jtag~TDIUTAP\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_SR_V2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_SR_V2|temp\(31));

-- Location: LCCOMB_X17_Y19_N2
\U_jtag_wrapper|U_SR_V2|temp[30]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_SR_V2|temp[30]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|temp\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|temp\(31),
	combout => \U_jtag_wrapper|U_SR_V2|temp[30]~feeder_combout\);

-- Location: FF_X17_Y19_N3
\U_jtag_wrapper|U_SR_V2|temp[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_SR_V2|temp[30]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_SR_V2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_SR_V2|temp\(30));

-- Location: LCCOMB_X17_Y19_N12
\U_jtag_wrapper|U_SR_V2|temp[29]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_SR_V2|temp[29]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|temp\(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|temp\(30),
	combout => \U_jtag_wrapper|U_SR_V2|temp[29]~feeder_combout\);

-- Location: FF_X17_Y19_N13
\U_jtag_wrapper|U_SR_V2|temp[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_SR_V2|temp[29]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_SR_V2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_SR_V2|temp\(29));

-- Location: LCCOMB_X17_Y19_N14
\U_jtag_wrapper|U_SR_V2|temp[28]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_SR_V2|temp[28]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|temp\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|temp\(29),
	combout => \U_jtag_wrapper|U_SR_V2|temp[28]~feeder_combout\);

-- Location: FF_X17_Y19_N15
\U_jtag_wrapper|U_SR_V2|temp[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_SR_V2|temp[28]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_SR_V2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_SR_V2|temp\(28));

-- Location: FF_X17_Y19_N1
\U_jtag_wrapper|U_SR_V2|temp[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_SR_V2|temp\(28),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_SR_V2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_SR_V2|temp\(27));

-- Location: LCCOMB_X17_Y19_N18
\U_jtag_wrapper|U_SR_V2|temp[26]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_SR_V2|temp[26]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|temp\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|temp\(27),
	combout => \U_jtag_wrapper|U_SR_V2|temp[26]~feeder_combout\);

-- Location: FF_X17_Y19_N19
\U_jtag_wrapper|U_SR_V2|temp[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_SR_V2|temp[26]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_SR_V2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_SR_V2|temp\(26));

-- Location: LCCOMB_X17_Y19_N20
\U_jtag_wrapper|U_SR_V2|temp[25]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_SR_V2|temp[25]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|temp\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|temp\(26),
	combout => \U_jtag_wrapper|U_SR_V2|temp[25]~feeder_combout\);

-- Location: FF_X17_Y19_N21
\U_jtag_wrapper|U_SR_V2|temp[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_SR_V2|temp[25]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_SR_V2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_SR_V2|temp\(25));

-- Location: LCCOMB_X17_Y19_N22
\U_jtag_wrapper|U_SR_V2|temp[24]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_SR_V2|temp[24]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|temp\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|temp\(25),
	combout => \U_jtag_wrapper|U_SR_V2|temp[24]~feeder_combout\);

-- Location: FF_X17_Y19_N23
\U_jtag_wrapper|U_SR_V2|temp[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_SR_V2|temp[24]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_SR_V2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_SR_V2|temp\(24));

-- Location: LCCOMB_X19_Y21_N14
\U_jtag_wrapper|U_SR_V2|temp[23]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_SR_V2|temp[23]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|temp\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|temp\(24),
	combout => \U_jtag_wrapper|U_SR_V2|temp[23]~feeder_combout\);

-- Location: FF_X19_Y21_N15
\U_jtag_wrapper|U_SR_V2|temp[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_SR_V2|temp[23]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_SR_V2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_SR_V2|temp\(23));

-- Location: FF_X19_Y21_N25
\U_jtag_wrapper|U_SR_V2|temp[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_SR_V2|temp\(23),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_SR_V2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_SR_V2|temp\(22));

-- Location: LCCOMB_X19_Y21_N18
\U_jtag_wrapper|U_SR_V2|temp[21]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_SR_V2|temp[21]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|temp\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|temp\(22),
	combout => \U_jtag_wrapper|U_SR_V2|temp[21]~feeder_combout\);

-- Location: FF_X19_Y21_N19
\U_jtag_wrapper|U_SR_V2|temp[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_SR_V2|temp[21]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_SR_V2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_SR_V2|temp\(21));

-- Location: LCCOMB_X19_Y21_N28
\U_jtag_wrapper|U_SR_V2|temp[20]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_SR_V2|temp[20]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|temp\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|temp\(21),
	combout => \U_jtag_wrapper|U_SR_V2|temp[20]~feeder_combout\);

-- Location: FF_X19_Y21_N29
\U_jtag_wrapper|U_SR_V2|temp[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_SR_V2|temp[20]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_SR_V2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_SR_V2|temp\(20));

-- Location: LCCOMB_X19_Y21_N6
\U_jtag_wrapper|U_SR_V2|temp[19]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_SR_V2|temp[19]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|temp\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|temp\(20),
	combout => \U_jtag_wrapper|U_SR_V2|temp[19]~feeder_combout\);

-- Location: FF_X19_Y21_N7
\U_jtag_wrapper|U_SR_V2|temp[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_SR_V2|temp[19]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_SR_V2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_SR_V2|temp\(19));

-- Location: LCCOMB_X19_Y21_N12
\U_jtag_wrapper|U_SR_V2|temp[18]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_SR_V2|temp[18]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|temp\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|temp\(19),
	combout => \U_jtag_wrapper|U_SR_V2|temp[18]~feeder_combout\);

-- Location: FF_X19_Y21_N13
\U_jtag_wrapper|U_SR_V2|temp[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_SR_V2|temp[18]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_SR_V2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_SR_V2|temp\(18));

-- Location: LCCOMB_X19_Y21_N2
\U_jtag_wrapper|U_SR_V2|temp[17]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_SR_V2|temp[17]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|temp\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|temp\(18),
	combout => \U_jtag_wrapper|U_SR_V2|temp[17]~feeder_combout\);

-- Location: FF_X19_Y21_N3
\U_jtag_wrapper|U_SR_V2|temp[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_SR_V2|temp[17]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_SR_V2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_SR_V2|temp\(17));

-- Location: LCCOMB_X19_Y21_N16
\U_jtag_wrapper|U_SR_V2|temp[16]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_SR_V2|temp[16]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|temp\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|temp\(17),
	combout => \U_jtag_wrapper|U_SR_V2|temp[16]~feeder_combout\);

-- Location: FF_X19_Y21_N17
\U_jtag_wrapper|U_SR_V2|temp[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_SR_V2|temp[16]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_SR_V2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_SR_V2|temp\(16));

-- Location: LCCOMB_X19_Y19_N30
\U_jtag_wrapper|U_SR_V2|temp[15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_SR_V2|temp[15]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|temp\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|temp\(16),
	combout => \U_jtag_wrapper|U_SR_V2|temp[15]~feeder_combout\);

-- Location: FF_X19_Y19_N31
\U_jtag_wrapper|U_SR_V2|temp[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_SR_V2|temp[15]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_SR_V2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_SR_V2|temp\(15));

-- Location: FF_X19_Y19_N21
\U_jtag_wrapper|U_SR_V2|temp[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_SR_V2|temp\(15),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_SR_V2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_SR_V2|temp\(14));

-- Location: LCCOMB_X19_Y19_N18
\U_jtag_wrapper|U_SR_V2|temp[13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_SR_V2|temp[13]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|temp\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|temp\(14),
	combout => \U_jtag_wrapper|U_SR_V2|temp[13]~feeder_combout\);

-- Location: FF_X19_Y19_N19
\U_jtag_wrapper|U_SR_V2|temp[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_SR_V2|temp[13]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_SR_V2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_SR_V2|temp\(13));

-- Location: LCCOMB_X19_Y19_N22
\U_jtag_wrapper|U_SR_V2|temp[12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_SR_V2|temp[12]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|temp\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|temp\(13),
	combout => \U_jtag_wrapper|U_SR_V2|temp[12]~feeder_combout\);

-- Location: FF_X19_Y19_N23
\U_jtag_wrapper|U_SR_V2|temp[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_SR_V2|temp[12]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_SR_V2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_SR_V2|temp\(12));

-- Location: FF_X19_Y19_N9
\U_jtag_wrapper|U_SR_V2|temp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_SR_V2|temp\(12),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_SR_V2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_SR_V2|temp\(11));

-- Location: LCCOMB_X20_Y19_N18
\U_jtag_wrapper|U_SR_V2|temp[10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_SR_V2|temp[10]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|temp\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|temp\(11),
	combout => \U_jtag_wrapper|U_SR_V2|temp[10]~feeder_combout\);

-- Location: FF_X20_Y19_N19
\U_jtag_wrapper|U_SR_V2|temp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_SR_V2|temp[10]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_SR_V2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_SR_V2|temp\(10));

-- Location: LCCOMB_X20_Y19_N12
\U_jtag_wrapper|U_SR_V2|temp[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_SR_V2|temp[9]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|temp\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|temp\(10),
	combout => \U_jtag_wrapper|U_SR_V2|temp[9]~feeder_combout\);

-- Location: FF_X20_Y19_N13
\U_jtag_wrapper|U_SR_V2|temp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_SR_V2|temp[9]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_SR_V2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_SR_V2|temp\(9));

-- Location: LCCOMB_X20_Y19_N14
\U_jtag_wrapper|U_SR_V2|temp[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_SR_V2|temp[8]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|temp\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|temp\(9),
	combout => \U_jtag_wrapper|U_SR_V2|temp[8]~feeder_combout\);

-- Location: FF_X20_Y19_N15
\U_jtag_wrapper|U_SR_V2|temp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_SR_V2|temp[8]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_SR_V2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_SR_V2|temp\(8));

-- Location: FF_X20_Y19_N17
\U_jtag_wrapper|U_SR_V2|temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_jtag_wrapper|U_SR_V2|temp\(8),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_jtag_wrapper|U_SR_V2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_SR_V2|temp\(7));

-- Location: LCCOMB_X20_Y19_N30
\U_jtag_wrapper|U_SR_V2|output[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|U_SR_V2|output[7]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|temp\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|temp\(7),
	combout => \U_jtag_wrapper|U_SR_V2|output[7]~feeder_combout\);

-- Location: FF_X20_Y19_N31
\U_jtag_wrapper|U_SR_V2|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|U_SR_V2|output[7]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_udr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|U_SR_V2|output\(7));

-- Location: LCCOMB_X23_Y19_N30
\U_jtag_wrapper|REG_GEN:0:REG_i|output[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_jtag_wrapper|REG_GEN:0:REG_i|output[7]~feeder_combout\ = \U_jtag_wrapper|U_SR_V2|output\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_jtag_wrapper|U_SR_V2|output\(7),
	combout => \U_jtag_wrapper|REG_GEN:0:REG_i|output[7]~feeder_combout\);

-- Location: FF_X23_Y19_N31
\U_jtag_wrapper|REG_GEN:0:REG_i|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_jtag_wrapper|REG_GEN:0:REG_i|output[7]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_jtag_wrapper|U_ADDR_TOP|U_logic|temp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_jtag_wrapper|REG_GEN:0:REG_i|output\(7));

-- Location: LCCOMB_X23_Y26_N0
\U_LED_HI_a|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_HI_a|Mux6~0_combout\ = (\U_application_test|output[4]~8_combout\ & ((\U_application_test|output[7]~14_combout\) # (\U_application_test|output[5]~10_combout\ $ (\U_application_test|output[6]~12_combout\)))) # 
-- (!\U_application_test|output[4]~8_combout\ & ((\U_application_test|output[5]~10_combout\) # (\U_application_test|output[7]~14_combout\ $ (\U_application_test|output[6]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_application_test|output[7]~14_combout\,
	datab => \U_application_test|output[5]~10_combout\,
	datac => \U_application_test|output[6]~12_combout\,
	datad => \U_application_test|output[4]~8_combout\,
	combout => \U_LED_HI_a|Mux6~0_combout\);

-- Location: LCCOMB_X23_Y26_N10
\U_LED_HI_a|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_HI_a|Mux5~0_combout\ = (\U_application_test|output[5]~10_combout\ & (!\U_application_test|output[7]~14_combout\ & ((\U_application_test|output[4]~8_combout\) # (!\U_application_test|output[6]~12_combout\)))) # 
-- (!\U_application_test|output[5]~10_combout\ & (\U_application_test|output[4]~8_combout\ & (\U_application_test|output[7]~14_combout\ $ (!\U_application_test|output[6]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_application_test|output[7]~14_combout\,
	datab => \U_application_test|output[5]~10_combout\,
	datac => \U_application_test|output[6]~12_combout\,
	datad => \U_application_test|output[4]~8_combout\,
	combout => \U_LED_HI_a|Mux5~0_combout\);

-- Location: LCCOMB_X23_Y26_N28
\U_LED_HI_a|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_HI_a|Mux4~0_combout\ = (\U_application_test|output[5]~10_combout\ & (!\U_application_test|output[7]~14_combout\ & ((\U_application_test|output[4]~8_combout\)))) # (!\U_application_test|output[5]~10_combout\ & 
-- ((\U_application_test|output[6]~12_combout\ & (!\U_application_test|output[7]~14_combout\)) # (!\U_application_test|output[6]~12_combout\ & ((\U_application_test|output[4]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_application_test|output[7]~14_combout\,
	datab => \U_application_test|output[5]~10_combout\,
	datac => \U_application_test|output[6]~12_combout\,
	datad => \U_application_test|output[4]~8_combout\,
	combout => \U_LED_HI_a|Mux4~0_combout\);

-- Location: LCCOMB_X23_Y26_N14
\U_LED_HI_a|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_HI_a|Mux3~0_combout\ = (\U_application_test|output[4]~8_combout\ & ((\U_application_test|output[5]~10_combout\ $ (!\U_application_test|output[6]~12_combout\)))) # (!\U_application_test|output[4]~8_combout\ & 
-- ((\U_application_test|output[7]~14_combout\ & (\U_application_test|output[5]~10_combout\ & !\U_application_test|output[6]~12_combout\)) # (!\U_application_test|output[7]~14_combout\ & (!\U_application_test|output[5]~10_combout\ & 
-- \U_application_test|output[6]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_application_test|output[7]~14_combout\,
	datab => \U_application_test|output[5]~10_combout\,
	datac => \U_application_test|output[6]~12_combout\,
	datad => \U_application_test|output[4]~8_combout\,
	combout => \U_LED_HI_a|Mux3~0_combout\);

-- Location: LCCOMB_X23_Y26_N8
\U_LED_HI_a|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_HI_a|Mux2~0_combout\ = (\U_application_test|output[7]~14_combout\ & (\U_application_test|output[6]~12_combout\ & ((\U_application_test|output[5]~10_combout\) # (!\U_application_test|output[4]~8_combout\)))) # 
-- (!\U_application_test|output[7]~14_combout\ & (\U_application_test|output[5]~10_combout\ & (!\U_application_test|output[6]~12_combout\ & !\U_application_test|output[4]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_application_test|output[7]~14_combout\,
	datab => \U_application_test|output[5]~10_combout\,
	datac => \U_application_test|output[6]~12_combout\,
	datad => \U_application_test|output[4]~8_combout\,
	combout => \U_LED_HI_a|Mux2~0_combout\);

-- Location: LCCOMB_X23_Y26_N26
\U_LED_HI_a|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_HI_a|Mux1~0_combout\ = (\U_application_test|output[7]~14_combout\ & ((\U_application_test|output[4]~8_combout\ & (\U_application_test|output[5]~10_combout\)) # (!\U_application_test|output[4]~8_combout\ & 
-- ((\U_application_test|output[6]~12_combout\))))) # (!\U_application_test|output[7]~14_combout\ & (\U_application_test|output[6]~12_combout\ & (\U_application_test|output[5]~10_combout\ $ (\U_application_test|output[4]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_application_test|output[7]~14_combout\,
	datab => \U_application_test|output[5]~10_combout\,
	datac => \U_application_test|output[6]~12_combout\,
	datad => \U_application_test|output[4]~8_combout\,
	combout => \U_LED_HI_a|Mux1~0_combout\);

-- Location: LCCOMB_X23_Y26_N4
\U_LED_HI_a|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_HI_a|Mux0~0_combout\ = (\U_application_test|output[7]~14_combout\ & (\U_application_test|output[4]~8_combout\ & (\U_application_test|output[5]~10_combout\ $ (\U_application_test|output[6]~12_combout\)))) # 
-- (!\U_application_test|output[7]~14_combout\ & (!\U_application_test|output[5]~10_combout\ & (\U_application_test|output[6]~12_combout\ $ (\U_application_test|output[4]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_application_test|output[7]~14_combout\,
	datab => \U_application_test|output[5]~10_combout\,
	datac => \U_application_test|output[6]~12_combout\,
	datad => \U_application_test|output[4]~8_combout\,
	combout => \U_LED_HI_a|Mux0~0_combout\);

-- Location: LCCOMB_X22_Y25_N0
\U_LED_LO_a|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_LO_a|Mux6~0_combout\ = (\U_application_test|output[0]~0_combout\ & ((\U_application_test|output[3]~6_combout\) # (\U_application_test|output[1]~2_combout\ $ (\U_application_test|output[2]~4_combout\)))) # (!\U_application_test|output[0]~0_combout\ 
-- & ((\U_application_test|output[1]~2_combout\) # (\U_application_test|output[3]~6_combout\ $ (\U_application_test|output[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_application_test|output[3]~6_combout\,
	datab => \U_application_test|output[1]~2_combout\,
	datac => \U_application_test|output[2]~4_combout\,
	datad => \U_application_test|output[0]~0_combout\,
	combout => \U_LED_LO_a|Mux6~0_combout\);

-- Location: LCCOMB_X22_Y25_N26
\U_LED_LO_a|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_LO_a|Mux5~0_combout\ = (\U_application_test|output[1]~2_combout\ & (!\U_application_test|output[3]~6_combout\ & ((\U_application_test|output[0]~0_combout\) # (!\U_application_test|output[2]~4_combout\)))) # 
-- (!\U_application_test|output[1]~2_combout\ & (\U_application_test|output[0]~0_combout\ & (\U_application_test|output[3]~6_combout\ $ (!\U_application_test|output[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_application_test|output[3]~6_combout\,
	datab => \U_application_test|output[1]~2_combout\,
	datac => \U_application_test|output[2]~4_combout\,
	datad => \U_application_test|output[0]~0_combout\,
	combout => \U_LED_LO_a|Mux5~0_combout\);

-- Location: LCCOMB_X22_Y25_N4
\U_LED_LO_a|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_LO_a|Mux4~0_combout\ = (\U_application_test|output[1]~2_combout\ & (!\U_application_test|output[3]~6_combout\ & ((\U_application_test|output[0]~0_combout\)))) # (!\U_application_test|output[1]~2_combout\ & ((\U_application_test|output[2]~4_combout\ 
-- & (!\U_application_test|output[3]~6_combout\)) # (!\U_application_test|output[2]~4_combout\ & ((\U_application_test|output[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_application_test|output[3]~6_combout\,
	datab => \U_application_test|output[1]~2_combout\,
	datac => \U_application_test|output[2]~4_combout\,
	datad => \U_application_test|output[0]~0_combout\,
	combout => \U_LED_LO_a|Mux4~0_combout\);

-- Location: LCCOMB_X22_Y25_N6
\U_LED_LO_a|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_LO_a|Mux3~0_combout\ = (\U_application_test|output[0]~0_combout\ & ((\U_application_test|output[1]~2_combout\ $ (!\U_application_test|output[2]~4_combout\)))) # (!\U_application_test|output[0]~0_combout\ & ((\U_application_test|output[3]~6_combout\ 
-- & (\U_application_test|output[1]~2_combout\ & !\U_application_test|output[2]~4_combout\)) # (!\U_application_test|output[3]~6_combout\ & (!\U_application_test|output[1]~2_combout\ & \U_application_test|output[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_application_test|output[3]~6_combout\,
	datab => \U_application_test|output[1]~2_combout\,
	datac => \U_application_test|output[2]~4_combout\,
	datad => \U_application_test|output[0]~0_combout\,
	combout => \U_LED_LO_a|Mux3~0_combout\);

-- Location: LCCOMB_X22_Y25_N16
\U_LED_LO_a|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_LO_a|Mux2~0_combout\ = (\U_application_test|output[3]~6_combout\ & (\U_application_test|output[2]~4_combout\ & ((\U_application_test|output[1]~2_combout\) # (!\U_application_test|output[0]~0_combout\)))) # (!\U_application_test|output[3]~6_combout\ 
-- & (\U_application_test|output[1]~2_combout\ & (!\U_application_test|output[2]~4_combout\ & !\U_application_test|output[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_application_test|output[3]~6_combout\,
	datab => \U_application_test|output[1]~2_combout\,
	datac => \U_application_test|output[2]~4_combout\,
	datad => \U_application_test|output[0]~0_combout\,
	combout => \U_LED_LO_a|Mux2~0_combout\);

-- Location: LCCOMB_X22_Y25_N2
\U_LED_LO_a|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_LO_a|Mux1~0_combout\ = (\U_application_test|output[3]~6_combout\ & ((\U_application_test|output[0]~0_combout\ & (\U_application_test|output[1]~2_combout\)) # (!\U_application_test|output[0]~0_combout\ & 
-- ((\U_application_test|output[2]~4_combout\))))) # (!\U_application_test|output[3]~6_combout\ & (\U_application_test|output[2]~4_combout\ & (\U_application_test|output[1]~2_combout\ $ (\U_application_test|output[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_application_test|output[3]~6_combout\,
	datab => \U_application_test|output[1]~2_combout\,
	datac => \U_application_test|output[2]~4_combout\,
	datad => \U_application_test|output[0]~0_combout\,
	combout => \U_LED_LO_a|Mux1~0_combout\);

-- Location: LCCOMB_X22_Y25_N12
\U_LED_LO_a|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_LO_a|Mux0~0_combout\ = (\U_application_test|output[3]~6_combout\ & (\U_application_test|output[0]~0_combout\ & (\U_application_test|output[1]~2_combout\ $ (\U_application_test|output[2]~4_combout\)))) # (!\U_application_test|output[3]~6_combout\ & 
-- (!\U_application_test|output[1]~2_combout\ & (\U_application_test|output[2]~4_combout\ $ (\U_application_test|output[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_application_test|output[3]~6_combout\,
	datab => \U_application_test|output[1]~2_combout\,
	datac => \U_application_test|output[2]~4_combout\,
	datad => \U_application_test|output[0]~0_combout\,
	combout => \U_LED_LO_a|Mux0~0_combout\);

-- Location: LCCOMB_X30_Y25_N16
\U_LED_HI_b|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_HI_b|Mux6~0_combout\ = (\U_application_test|output[12]~24_combout\ & ((\U_application_test|output[15]~30_combout\) # (\U_application_test|output[14]~28_combout\ $ (\U_application_test|output[13]~26_combout\)))) # 
-- (!\U_application_test|output[12]~24_combout\ & ((\U_application_test|output[13]~26_combout\) # (\U_application_test|output[14]~28_combout\ $ (\U_application_test|output[15]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_application_test|output[12]~24_combout\,
	datab => \U_application_test|output[14]~28_combout\,
	datac => \U_application_test|output[13]~26_combout\,
	datad => \U_application_test|output[15]~30_combout\,
	combout => \U_LED_HI_b|Mux6~0_combout\);

-- Location: LCCOMB_X30_Y25_N18
\U_LED_HI_b|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_HI_b|Mux5~0_combout\ = (\U_application_test|output[12]~24_combout\ & (\U_application_test|output[15]~30_combout\ $ (((\U_application_test|output[13]~26_combout\) # (!\U_application_test|output[14]~28_combout\))))) # 
-- (!\U_application_test|output[12]~24_combout\ & (!\U_application_test|output[14]~28_combout\ & (\U_application_test|output[13]~26_combout\ & !\U_application_test|output[15]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_application_test|output[12]~24_combout\,
	datab => \U_application_test|output[14]~28_combout\,
	datac => \U_application_test|output[13]~26_combout\,
	datad => \U_application_test|output[15]~30_combout\,
	combout => \U_LED_HI_b|Mux5~0_combout\);

-- Location: LCCOMB_X30_Y25_N28
\U_LED_HI_b|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_HI_b|Mux4~0_combout\ = (\U_application_test|output[13]~26_combout\ & (\U_application_test|output[12]~24_combout\ & ((!\U_application_test|output[15]~30_combout\)))) # (!\U_application_test|output[13]~26_combout\ & 
-- ((\U_application_test|output[14]~28_combout\ & ((!\U_application_test|output[15]~30_combout\))) # (!\U_application_test|output[14]~28_combout\ & (\U_application_test|output[12]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_application_test|output[12]~24_combout\,
	datab => \U_application_test|output[14]~28_combout\,
	datac => \U_application_test|output[13]~26_combout\,
	datad => \U_application_test|output[15]~30_combout\,
	combout => \U_LED_HI_b|Mux4~0_combout\);

-- Location: LCCOMB_X30_Y25_N14
\U_LED_HI_b|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_HI_b|Mux3~0_combout\ = (\U_application_test|output[12]~24_combout\ & (\U_application_test|output[14]~28_combout\ $ ((!\U_application_test|output[13]~26_combout\)))) # (!\U_application_test|output[12]~24_combout\ & 
-- ((\U_application_test|output[14]~28_combout\ & (!\U_application_test|output[13]~26_combout\ & !\U_application_test|output[15]~30_combout\)) # (!\U_application_test|output[14]~28_combout\ & (\U_application_test|output[13]~26_combout\ & 
-- \U_application_test|output[15]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_application_test|output[12]~24_combout\,
	datab => \U_application_test|output[14]~28_combout\,
	datac => \U_application_test|output[13]~26_combout\,
	datad => \U_application_test|output[15]~30_combout\,
	combout => \U_LED_HI_b|Mux3~0_combout\);

-- Location: LCCOMB_X30_Y25_N0
\U_LED_HI_b|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_HI_b|Mux2~0_combout\ = (\U_application_test|output[14]~28_combout\ & (\U_application_test|output[15]~30_combout\ & ((\U_application_test|output[13]~26_combout\) # (!\U_application_test|output[12]~24_combout\)))) # 
-- (!\U_application_test|output[14]~28_combout\ & (!\U_application_test|output[12]~24_combout\ & (\U_application_test|output[13]~26_combout\ & !\U_application_test|output[15]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_application_test|output[12]~24_combout\,
	datab => \U_application_test|output[14]~28_combout\,
	datac => \U_application_test|output[13]~26_combout\,
	datad => \U_application_test|output[15]~30_combout\,
	combout => \U_LED_HI_b|Mux2~0_combout\);

-- Location: LCCOMB_X30_Y25_N10
\U_LED_HI_b|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_HI_b|Mux1~0_combout\ = (\U_application_test|output[13]~26_combout\ & ((\U_application_test|output[12]~24_combout\ & ((\U_application_test|output[15]~30_combout\))) # (!\U_application_test|output[12]~24_combout\ & 
-- (\U_application_test|output[14]~28_combout\)))) # (!\U_application_test|output[13]~26_combout\ & (\U_application_test|output[14]~28_combout\ & (\U_application_test|output[12]~24_combout\ $ (\U_application_test|output[15]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_application_test|output[12]~24_combout\,
	datab => \U_application_test|output[14]~28_combout\,
	datac => \U_application_test|output[13]~26_combout\,
	datad => \U_application_test|output[15]~30_combout\,
	combout => \U_LED_HI_b|Mux1~0_combout\);

-- Location: LCCOMB_X30_Y25_N4
\U_LED_HI_b|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_HI_b|Mux0~0_combout\ = (\U_application_test|output[14]~28_combout\ & (!\U_application_test|output[13]~26_combout\ & (\U_application_test|output[12]~24_combout\ $ (!\U_application_test|output[15]~30_combout\)))) # 
-- (!\U_application_test|output[14]~28_combout\ & (\U_application_test|output[12]~24_combout\ & (\U_application_test|output[13]~26_combout\ $ (!\U_application_test|output[15]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_application_test|output[12]~24_combout\,
	datab => \U_application_test|output[14]~28_combout\,
	datac => \U_application_test|output[13]~26_combout\,
	datad => \U_application_test|output[15]~30_combout\,
	combout => \U_LED_HI_b|Mux0~0_combout\);

-- Location: LCCOMB_X28_Y25_N16
\U_LED_LO_b|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_LO_b|Mux6~0_combout\ = (\U_application_test|output[8]~16_combout\ & ((\U_application_test|output[11]~22_combout\) # (\U_application_test|output[10]~20_combout\ $ (\U_application_test|output[9]~18_combout\)))) # 
-- (!\U_application_test|output[8]~16_combout\ & ((\U_application_test|output[9]~18_combout\) # (\U_application_test|output[10]~20_combout\ $ (\U_application_test|output[11]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_application_test|output[10]~20_combout\,
	datab => \U_application_test|output[11]~22_combout\,
	datac => \U_application_test|output[9]~18_combout\,
	datad => \U_application_test|output[8]~16_combout\,
	combout => \U_LED_LO_b|Mux6~0_combout\);

-- Location: LCCOMB_X28_Y25_N10
\U_LED_LO_b|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_LO_b|Mux5~0_combout\ = (\U_application_test|output[10]~20_combout\ & (\U_application_test|output[8]~16_combout\ & (\U_application_test|output[11]~22_combout\ $ (\U_application_test|output[9]~18_combout\)))) # 
-- (!\U_application_test|output[10]~20_combout\ & (!\U_application_test|output[11]~22_combout\ & ((\U_application_test|output[9]~18_combout\) # (\U_application_test|output[8]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_application_test|output[10]~20_combout\,
	datab => \U_application_test|output[11]~22_combout\,
	datac => \U_application_test|output[9]~18_combout\,
	datad => \U_application_test|output[8]~16_combout\,
	combout => \U_LED_LO_b|Mux5~0_combout\);

-- Location: LCCOMB_X28_Y25_N12
\U_LED_LO_b|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_LO_b|Mux4~0_combout\ = (\U_application_test|output[9]~18_combout\ & (((!\U_application_test|output[11]~22_combout\ & \U_application_test|output[8]~16_combout\)))) # (!\U_application_test|output[9]~18_combout\ & 
-- ((\U_application_test|output[10]~20_combout\ & (!\U_application_test|output[11]~22_combout\)) # (!\U_application_test|output[10]~20_combout\ & ((\U_application_test|output[8]~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_application_test|output[10]~20_combout\,
	datab => \U_application_test|output[11]~22_combout\,
	datac => \U_application_test|output[9]~18_combout\,
	datad => \U_application_test|output[8]~16_combout\,
	combout => \U_LED_LO_b|Mux4~0_combout\);

-- Location: LCCOMB_X28_Y25_N6
\U_LED_LO_b|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_LO_b|Mux3~0_combout\ = (\U_application_test|output[8]~16_combout\ & (\U_application_test|output[10]~20_combout\ $ (((!\U_application_test|output[9]~18_combout\))))) # (!\U_application_test|output[8]~16_combout\ & 
-- ((\U_application_test|output[10]~20_combout\ & (!\U_application_test|output[11]~22_combout\ & !\U_application_test|output[9]~18_combout\)) # (!\U_application_test|output[10]~20_combout\ & (\U_application_test|output[11]~22_combout\ & 
-- \U_application_test|output[9]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_application_test|output[10]~20_combout\,
	datab => \U_application_test|output[11]~22_combout\,
	datac => \U_application_test|output[9]~18_combout\,
	datad => \U_application_test|output[8]~16_combout\,
	combout => \U_LED_LO_b|Mux3~0_combout\);

-- Location: LCCOMB_X28_Y25_N0
\U_LED_LO_b|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_LO_b|Mux2~0_combout\ = (\U_application_test|output[10]~20_combout\ & (\U_application_test|output[11]~22_combout\ & ((\U_application_test|output[9]~18_combout\) # (!\U_application_test|output[8]~16_combout\)))) # 
-- (!\U_application_test|output[10]~20_combout\ & (!\U_application_test|output[11]~22_combout\ & (\U_application_test|output[9]~18_combout\ & !\U_application_test|output[8]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_application_test|output[10]~20_combout\,
	datab => \U_application_test|output[11]~22_combout\,
	datac => \U_application_test|output[9]~18_combout\,
	datad => \U_application_test|output[8]~16_combout\,
	combout => \U_LED_LO_b|Mux2~0_combout\);

-- Location: LCCOMB_X28_Y25_N26
\U_LED_LO_b|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_LO_b|Mux1~0_combout\ = (\U_application_test|output[11]~22_combout\ & ((\U_application_test|output[8]~16_combout\ & ((\U_application_test|output[9]~18_combout\))) # (!\U_application_test|output[8]~16_combout\ & 
-- (\U_application_test|output[10]~20_combout\)))) # (!\U_application_test|output[11]~22_combout\ & (\U_application_test|output[10]~20_combout\ & (\U_application_test|output[9]~18_combout\ $ (\U_application_test|output[8]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_application_test|output[10]~20_combout\,
	datab => \U_application_test|output[11]~22_combout\,
	datac => \U_application_test|output[9]~18_combout\,
	datad => \U_application_test|output[8]~16_combout\,
	combout => \U_LED_LO_b|Mux1~0_combout\);

-- Location: LCCOMB_X28_Y25_N20
\U_LED_LO_b|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_LO_b|Mux0~0_combout\ = (\U_application_test|output[10]~20_combout\ & (!\U_application_test|output[9]~18_combout\ & (\U_application_test|output[11]~22_combout\ $ (!\U_application_test|output[8]~16_combout\)))) # 
-- (!\U_application_test|output[10]~20_combout\ & (\U_application_test|output[8]~16_combout\ & (\U_application_test|output[11]~22_combout\ $ (!\U_application_test|output[9]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_application_test|output[10]~20_combout\,
	datab => \U_application_test|output[11]~22_combout\,
	datac => \U_application_test|output[9]~18_combout\,
	datad => \U_application_test|output[8]~16_combout\,
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

-- Location: FF_X11_Y16_N1
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~q\);

-- Location: FF_X11_Y16_N5
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

-- Location: FF_X11_Y16_N7
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

-- Location: FF_X11_Y16_N9
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

-- Location: FF_X11_Y16_N11
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(5),
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][5]~q\);

-- Location: FF_X11_Y16_N13
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(6),
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][6]~q\);

-- Location: FF_X11_Y16_N31
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

-- Location: LCCOMB_X28_Y23_N0
\auto_hub|~GND\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
;

-- Location: LCCOMB_X12_Y17_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~_wirecell\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~q\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~_wirecell_combout\);

-- Location: LCCOMB_X10_Y19_N4
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


