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

-- DATE "04/27/2015 13:13:22"

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

ENTITY 	top_level IS
    PORT (
	altera_reserved_tms : IN std_logic := '0';
	altera_reserved_tck : IN std_logic := '0';
	altera_reserved_tdi : IN std_logic := '0';
	altera_reserved_tdo : OUT std_logic;
	rst : IN std_logic;
	alu_sel : IN std_logic_vector(3 DOWNTO 0);
	ov_flag : OUT std_logic;
	led_hi_a : OUT std_logic_vector(6 DOWNTO 0);
	led_lo_a : OUT std_logic_vector(6 DOWNTO 0);
	led_hi_b : OUT std_logic_vector(6 DOWNTO 0);
	led_lo_b : OUT std_logic_vector(6 DOWNTO 0);
	output : OUT std_logic_vector(7 DOWNTO 0)
	);
END top_level;

-- Design Ports Information
-- ov_flag	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- output[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[2]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[3]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[4]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[5]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[6]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[7]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_sel[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_sel[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_sel[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_sel[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- altera_reserved_tms	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- altera_reserved_tck	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- altera_reserved_tdi	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- altera_reserved_tdo	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF top_level IS
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
SIGNAL ww_alu_sel : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ov_flag : std_logic;
SIGNAL ww_led_hi_a : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led_lo_a : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led_hi_b : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led_lo_b : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_output : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_ALU_NS|Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \U_ALU_NS|Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \U_ALU_NS|Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \U_ALU_NS|Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \U_ALU_NS|Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \altera_internal_jtag~TCKUTAPclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_ALU_NS|Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \U_ALU_NS|Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \U_ALU_NS|Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \U_ALU_NS|Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \U_ALU_NS|Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \U_ALU_NS|Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \U_ALU_NS|Mult0|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \U_ALU_NS|Mult0|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \U_ALU_NS|Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \U_ALU_NS|Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \U_ALU_NS|Add0~0_combout\ : std_logic;
SIGNAL \U_ALU_NS|Add6~2_combout\ : std_logic;
SIGNAL \U_ALU_NS|Add0~2_combout\ : std_logic;
SIGNAL \U_ALU_NS|Add0~4_combout\ : std_logic;
SIGNAL \U_ALU_NS|Add6~7\ : std_logic;
SIGNAL \U_ALU_NS|Add6~8_combout\ : std_logic;
SIGNAL \U_ALU_NS|Add0~10_combout\ : std_logic;
SIGNAL \U_ALU_NS|Add0~12_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux8~10_combout\ : std_logic;
SIGNAL \U_ALU_NS|Add2~0_combout\ : std_logic;
SIGNAL \U_ALU_NS|Add5~0_combout\ : std_logic;
SIGNAL \U_ALU_NS|Add5~1_combout\ : std_logic;
SIGNAL \U_ALU_NS|Add5~3_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux8~21_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux8~22_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux8~25_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux2~2_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux2~3_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux2~4_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux1~0_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux1~3_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux1~4_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux1~5_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux8~28_combout\ : std_logic;
SIGNAL \U_ALU_TO_TDO|state.START~q\ : std_logic;
SIGNAL \U_ALU_TO_TDO|state.OUT_1~q\ : std_logic;
SIGNAL \U_ALU_TO_TDO|state.OUT_2~q\ : std_logic;
SIGNAL \U_ALU_TO_TDO|state.OUT_3~q\ : std_logic;
SIGNAL \U_ALU_TO_TDO|state.OUT_4~q\ : std_logic;
SIGNAL \U_ALU_TO_TDO|WideNor0~0_combout\ : std_logic;
SIGNAL \U_ALU_TO_TDO|state.OUT_5~q\ : std_logic;
SIGNAL \U_ALU_TO_TDO|state.OUT_6~q\ : std_logic;
SIGNAL \U_ALU_TO_TDO|state.OUT_7~q\ : std_logic;
SIGNAL \U_ALU_TO_TDO|WideNor0~1_combout\ : std_logic;
SIGNAL \U_ALU_TO_TDO|temp_reg[5]~0_combout\ : std_logic;
SIGNAL \U_ADDR_TOP|U_logic|Mux2~0_combout\ : std_logic;
SIGNAL \U_ADDR_TOP|U_addrcount|count[1]~0_combout\ : std_logic;
SIGNAL \U_ALU_TO_TDO|valid_reg~q\ : std_logic;
SIGNAL \U_ALU_TO_TDO|Selector8~0_combout\ : std_logic;
SIGNAL \U_ALU_TO_TDO|Selector8~1_combout\ : std_logic;
SIGNAL \U_ALU_TO_TDO|Selector8~2_combout\ : std_logic;
SIGNAL \U_ALU_TO_TDO|Selector8~3_combout\ : std_logic;
SIGNAL \U_ALU_TO_TDO|Selector8~4_combout\ : std_logic;
SIGNAL \U_ALU_TO_TDO|Selector8~5_combout\ : std_logic;
SIGNAL \U_ALU_TO_TDO|Selector8~6_combout\ : std_logic;
SIGNAL \U_ALU_TO_TDO|Selector8~7_combout\ : std_logic;
SIGNAL \U_ALU_TO_TDO|next_temp~0_combout\ : std_logic;
SIGNAL \U_ADDR_TOP|U_logic|out_data_rdy~0_combout\ : std_logic;
SIGNAL \U_ADDR_TOP|U_logic|out_data_rdy~1_combout\ : std_logic;
SIGNAL \U_ADDR_TOP|U_logic|out_data_rdy~2_combout\ : std_logic;
SIGNAL \U_ALU_TO_TDO|Selector8~8_combout\ : std_logic;
SIGNAL \U_ALU_TO_TDO|Selector8~9_combout\ : std_logic;
SIGNAL \U_ALU_TO_TDO|valid_reg~0_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux8~32_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux8~33_combout\ : std_logic;
SIGNAL \U_ALU_TO_TDO|state.START~0_combout\ : std_logic;
SIGNAL \U_ALU_TO_TDO|state.OUT_1~0_combout\ : std_logic;
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
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~4_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~6_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~10_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~11_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~12_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~13_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~5_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~6_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~7_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~13_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~8_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~9_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~10_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~11_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~13_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~12_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~13_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~14_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[0]~15_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~20_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~15_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~16_combout\ : std_logic;
SIGNAL \auto_hub|~GND~combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~_wirecell_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[0]~_wirecell_combout\ : std_logic;
SIGNAL \U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~clkctrl_outclk\ : std_logic;
SIGNAL \U_ALU_TO_TDO|temp_reg[0]~feeder_combout\ : std_logic;
SIGNAL \U_ALU_TO_TDO|state.OUT_2~feeder_combout\ : std_logic;
SIGNAL \U_ALU_TO_TDO|state.OUT_6~feeder_combout\ : std_logic;
SIGNAL \U_ALU_TO_TDO|temp_reg[2]~feeder_combout\ : std_logic;
SIGNAL \U_ADDR_TOP|U_logic|addr_reg[5]~feeder_combout\ : std_logic;
SIGNAL \U_ALU_TO_TDO|temp_reg[3]~feeder_combout\ : std_logic;
SIGNAL \U_ALU_TO_TDO|temp_reg[5]~feeder_combout\ : std_logic;
SIGNAL \U_ALU_TO_TDO|temp_reg[6]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][4]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][5]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][6]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[3]~feeder_combout\ : std_logic;
SIGNAL \alu_sel[1]~input_o\ : std_logic;
SIGNAL \altera_reserved_tck~input_o\ : std_logic;
SIGNAL \altera_reserved_tdi~input_o\ : std_logic;
SIGNAL \altera_internal_jtag~TMSUTAP\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~11_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~12_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~8_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~9_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~10_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_dr_scan_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~3_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~5_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~6_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~7_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~4_combout\ : std_logic;
SIGNAL \altera_internal_jtag~TDIUTAP\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~4_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[8]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[8]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[7]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[4]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[3]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[2]~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[0]~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal1~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal3~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[0]~4_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~7_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~8_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~9_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[2]~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~5_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~4_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]~5_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]~12\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]~13_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~8_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~7_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]~14\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~15_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~7_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]~6\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]~9_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]~10\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]~11_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~4_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[3]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[2]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~5_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~6_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~8_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~9_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~10_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[1]~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~11_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~12_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[2]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[2]~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~14_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~5_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~_wirecell_combout\ : std_logic;
SIGNAL \altera_internal_jtag~TCKUTAP\ : std_logic;
SIGNAL \altera_internal_jtag~TCKUTAPclkctrl_outclk\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_q\ : std_logic;
SIGNAL \U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~q\ : std_logic;
SIGNAL \U_SR_V2|process_0~0_combout\ : std_logic;
SIGNAL \U_SR_V2|temp[6]~feeder_combout\ : std_logic;
SIGNAL \U_SR_V2|temp[5]~feeder_combout\ : std_logic;
SIGNAL \U_SR_V2|temp[4]~feeder_combout\ : std_logic;
SIGNAL \U_SR_V2|temp[3]~feeder_combout\ : std_logic;
SIGNAL \U_SR_V2|temp[2]~feeder_combout\ : std_logic;
SIGNAL \U_SR_V2|temp[0]~feeder_combout\ : std_logic;
SIGNAL \U_SR_V2|output[0]~feeder_combout\ : std_logic;
SIGNAL \U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_udr~0_combout\ : std_logic;
SIGNAL \U_ADDR_TOP|U_addrcount|count[0]~1_combout\ : std_logic;
SIGNAL \U_ADDR_TOP|U_logic|Equal0~0_combout\ : std_logic;
SIGNAL \U_ADDR_TOP|U_addrcount|output~q\ : std_logic;
SIGNAL \U_ADDR_TOP|U_logic|addr_reg[0]~feeder_combout\ : std_logic;
SIGNAL \U_SR_V2|output[1]~feeder_combout\ : std_logic;
SIGNAL \U_ADDR_TOP|U_logic|addr_reg[1]~feeder_combout\ : std_logic;
SIGNAL \U_SR_V2|output[3]~feeder_combout\ : std_logic;
SIGNAL \U_ADDR_TOP|U_logic|addr_reg[3]~feeder_combout\ : std_logic;
SIGNAL \U_SR_V2|output[4]~feeder_combout\ : std_logic;
SIGNAL \U_ADDR_TOP|U_addrreg|output[4]~feeder_combout\ : std_logic;
SIGNAL \U_ADDR_TOP|U_logic|addr_or_data~0_combout\ : std_logic;
SIGNAL \U_ADDR_TOP|U_logic|addr_or_data~q\ : std_logic;
SIGNAL \U_SR_V2|output[7]~feeder_combout\ : std_logic;
SIGNAL \U_SR_V2|output[6]~feeder_combout\ : std_logic;
SIGNAL \U_ADDR_TOP|U_logic|Mux1~0_combout\ : std_logic;
SIGNAL \U_ADDR_TOP|U_logic|Mux1~1_combout\ : std_logic;
SIGNAL \U_ADDR_TOP|U_logic|Mux0~0_combout\ : std_logic;
SIGNAL \U_ADDR_TOP|U_logic|sel_a_reg~q\ : std_logic;
SIGNAL \U_ADDR_TOP|U_logic|temp_a~feeder_combout\ : std_logic;
SIGNAL \U_ADDR_TOP|U_logic|temp_a~q\ : std_logic;
SIGNAL \U_SR_V2|output[5]~feeder_combout\ : std_logic;
SIGNAL \U_ADDR_TOP|U_logic|Mux1~2_combout\ : std_logic;
SIGNAL \U_ADDR_TOP|U_logic|sel_b_reg~q\ : std_logic;
SIGNAL \U_ADDR_TOP|U_logic|temp_b~feeder_combout\ : std_logic;
SIGNAL \U_ADDR_TOP|U_logic|temp_b~q\ : std_logic;
SIGNAL \U_ALU_NS|Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \U_ALU_NS|Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \U_ALU_NS|Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \U_ALU_NS|Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \U_ALU_NS|Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \U_ALU_NS|Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \U_ALU_NS|Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \U_ALU_NS|Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \U_ALU_NS|Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \U_ALU_NS|Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \U_ALU_NS|Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \U_ALU_NS|Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \U_ALU_NS|Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \U_ALU_NS|Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \U_ALU_NS|Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \U_ALU_NS|Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \U_ALU_NS|Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \U_ALU_NS|Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \U_ALU_NS|Mult0|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \U_ALU_NS|Mult0|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \U_ALU_NS|Mult0|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \U_ALU_NS|Mux8~6_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mult0|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \U_ALU_NS|Mult0|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \U_ALU_NS|Mult0|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \U_ALU_NS|Mux8~5_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux8~7_combout\ : std_logic;
SIGNAL \alu_sel[0]~input_o\ : std_logic;
SIGNAL \alu_sel[2]~input_o\ : std_logic;
SIGNAL \alu_sel[3]~input_o\ : std_logic;
SIGNAL \U_A_REG|output[7]~_Duplicate_1_q\ : std_logic;
SIGNAL \U_A_REG|output[1]~_Duplicate_1_q\ : std_logic;
SIGNAL \U_A_REG|output[0]~_Duplicate_1_q\ : std_logic;
SIGNAL \U_ALU_NS|v_carry~0_combout\ : std_logic;
SIGNAL \U_ALU_NS|v_carry~1_combout\ : std_logic;
SIGNAL \U_A_REG|output[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \U_ALU_NS|v_carry~2_combout\ : std_logic;
SIGNAL \U_ALU_NS|v_carry~3_combout\ : std_logic;
SIGNAL \U_ALU_NS|v_carry~5_combout\ : std_logic;
SIGNAL \U_ALU_NS|v_carry~4_combout\ : std_logic;
SIGNAL \U_ALU_NS|v_carry~6_combout\ : std_logic;
SIGNAL \U_A_REG|output[6]~_Duplicate_1_q\ : std_logic;
SIGNAL \U_ALU_NS|v_carry~7_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux8~4_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux8~8_combout\ : std_logic;
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
SIGNAL \U_A_REG|output[5]~_Duplicate_1_q\ : std_logic;
SIGNAL \U_A_REG|output[4]~_Duplicate_1_q\ : std_logic;
SIGNAL \U_LED_HI_b|Mux6~0_combout\ : std_logic;
SIGNAL \U_LED_HI_b|Mux5~0_combout\ : std_logic;
SIGNAL \U_LED_HI_b|Mux4~0_combout\ : std_logic;
SIGNAL \U_LED_HI_b|Mux3~0_combout\ : std_logic;
SIGNAL \U_LED_HI_b|Mux2~0_combout\ : std_logic;
SIGNAL \U_LED_HI_b|Mux1~0_combout\ : std_logic;
SIGNAL \U_LED_HI_b|Mux0~0_combout\ : std_logic;
SIGNAL \U_A_REG|output[3]~_Duplicate_1_q\ : std_logic;
SIGNAL \U_LED_LO_b|Mux6~0_combout\ : std_logic;
SIGNAL \U_LED_LO_b|Mux5~0_combout\ : std_logic;
SIGNAL \U_LED_LO_b|Mux4~0_combout\ : std_logic;
SIGNAL \U_LED_LO_b|Mux3~0_combout\ : std_logic;
SIGNAL \U_LED_LO_b|Mux2~0_combout\ : std_logic;
SIGNAL \U_LED_LO_b|Mux1~0_combout\ : std_logic;
SIGNAL \U_LED_LO_b|Mux0~0_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \U_ALU_NS|Mux8~11_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux8~38_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux8~39_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux7~0_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux8~9_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux7~1_combout\ : std_logic;
SIGNAL \U_OUT_REG|output[0]~feeder_combout\ : std_logic;
SIGNAL \U_ADDR_TOP|U_addrreg|output[2]~feeder_combout\ : std_logic;
SIGNAL \U_ADDR_TOP|U_logic|Mux2~1_combout\ : std_logic;
SIGNAL \U_ADDR_TOP|U_logic|Mux2~2_combout\ : std_logic;
SIGNAL \U_ADDR_TOP|U_logic|sel_out_reg~q\ : std_logic;
SIGNAL \U_ADDR_TOP|U_logic|temp_out~feeder_combout\ : std_logic;
SIGNAL \U_ADDR_TOP|U_logic|temp_out~q\ : std_logic;
SIGNAL \U_ALU_NS|Mux6~5_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux6~6_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux6~7_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux6~2_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux6~1_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux8~14_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux6~3_combout\ : std_logic;
SIGNAL \U_ALU_NS|Add2~1_combout\ : std_logic;
SIGNAL \U_ALU_NS|Add4~0_combout\ : std_logic;
SIGNAL \U_ALU_NS|Add5~2_combout\ : std_logic;
SIGNAL \U_ALU_NS|Add6~1_cout\ : std_logic;
SIGNAL \U_ALU_NS|Add6~3\ : std_logic;
SIGNAL \U_ALU_NS|Add6~4_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux6~4_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux6~0_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux6~8_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux8~16_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux6~10_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux6~11_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux6~9_combout\ : std_logic;
SIGNAL \U_OUT_REG|output[1]~feeder_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux5~2_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux5~3_combout\ : std_logic;
SIGNAL \U_ALU_NS|Add6~5\ : std_logic;
SIGNAL \U_ALU_NS|Add6~6_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux5~0_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux5~1_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux5~4_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux5~6_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux5~7_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux8~15_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux5~5_combout\ : std_logic;
SIGNAL \U_ALU_NS|Add0~1\ : std_logic;
SIGNAL \U_ALU_NS|Add0~3\ : std_logic;
SIGNAL \U_ALU_NS|Add0~5\ : std_logic;
SIGNAL \U_ALU_NS|Add0~6_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux4~7_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux4~8_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux4~2_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux4~3_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux4~4_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux8~18_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux8~17_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux4~0_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux4~1_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux4~5_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux8~13_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux4~6_combout\ : std_logic;
SIGNAL \U_ALU_NS|Add0~7\ : std_logic;
SIGNAL \U_ALU_NS|Add0~8_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux8~36_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux8~37_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \U_ALU_NS|Mux8~23_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux8~20_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux8~24_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux8~19_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux3~0_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux3~1_combout\ : std_logic;
SIGNAL \U_OUT_REG|output[4]~feeder_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux8~12_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux2~0_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux2~1_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux2~5_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux2~8_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux2~9_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux2~6_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux2~7_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux1~7_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux1~8_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux1~1_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux1~2_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux1~6_combout\ : std_logic;
SIGNAL \U_OUT_REG|output[6]~feeder_combout\ : std_logic;
SIGNAL \U_ALU_NS|Add0~9\ : std_logic;
SIGNAL \U_ALU_NS|Add0~11\ : std_logic;
SIGNAL \U_ALU_NS|Add0~13\ : std_logic;
SIGNAL \U_ALU_NS|Add0~14_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux8~34_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux8~35_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux8~29_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux8~27_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux8~30_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux0~0_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux8~26_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux8~31_combout\ : std_logic;
SIGNAL \U_ALU_NS|Mux0~1_combout\ : std_logic;
SIGNAL \U_OUT_REG|output[7]~feeder_combout\ : std_logic;
SIGNAL \altera_reserved_tms~input_o\ : std_logic;
SIGNAL \altera_internal_jtag~TDO\ : std_logic;
SIGNAL \U_ALU_TO_TDO|data_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_SR_V2|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_ADDR_TOP|U_logic|addr_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_ADDR_TOP|U_addrreg|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_ALU_TO_TDO|temp_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_ADDR_TOP|U_addrcount|count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U_SR_V2|temp\ : std_logic_vector(7 DOWNTO 0);
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
SIGNAL \U_B_REG|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_OUT_REG|output\ : std_logic_vector(7 DOWNTO 0);
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
ww_alu_sel <= alu_sel;
ov_flag <= ww_ov_flag;
led_hi_a <= ww_led_hi_a;
led_lo_a <= ww_led_lo_a;
led_hi_b <= ww_led_hi_b;
led_lo_b <= ww_led_lo_b;
output <= ww_output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\U_ALU_NS|Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\U_ALU_NS|Mult0|auto_generated|mac_mult1~DATAOUT15\ & \U_ALU_NS|Mult0|auto_generated|mac_mult1~DATAOUT14\ & \U_ALU_NS|Mult0|auto_generated|mac_mult1~DATAOUT13\ & 
\U_ALU_NS|Mult0|auto_generated|mac_mult1~DATAOUT12\ & \U_ALU_NS|Mult0|auto_generated|mac_mult1~DATAOUT11\ & \U_ALU_NS|Mult0|auto_generated|mac_mult1~DATAOUT10\ & \U_ALU_NS|Mult0|auto_generated|mac_mult1~DATAOUT9\ & 
\U_ALU_NS|Mult0|auto_generated|mac_mult1~DATAOUT8\ & \U_ALU_NS|Mult0|auto_generated|mac_mult1~DATAOUT7\ & \U_ALU_NS|Mult0|auto_generated|mac_mult1~DATAOUT6\ & \U_ALU_NS|Mult0|auto_generated|mac_mult1~DATAOUT5\ & 
\U_ALU_NS|Mult0|auto_generated|mac_mult1~DATAOUT4\ & \U_ALU_NS|Mult0|auto_generated|mac_mult1~DATAOUT3\ & \U_ALU_NS|Mult0|auto_generated|mac_mult1~DATAOUT2\ & \U_ALU_NS|Mult0|auto_generated|mac_mult1~DATAOUT1\ & 
\U_ALU_NS|Mult0|auto_generated|mac_mult1~dataout\ & \U_ALU_NS|Mult0|auto_generated|mac_mult1~1\ & \U_ALU_NS|Mult0|auto_generated|mac_mult1~0\);

\U_ALU_NS|Mult0|auto_generated|mac_out2~0\ <= \U_ALU_NS|Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\U_ALU_NS|Mult0|auto_generated|mac_out2~1\ <= \U_ALU_NS|Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\U_ALU_NS|Mult0|auto_generated|mac_out2~dataout\ <= \U_ALU_NS|Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\U_ALU_NS|Mult0|auto_generated|mac_out2~DATAOUT1\ <= \U_ALU_NS|Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\U_ALU_NS|Mult0|auto_generated|mac_out2~DATAOUT2\ <= \U_ALU_NS|Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\U_ALU_NS|Mult0|auto_generated|mac_out2~DATAOUT3\ <= \U_ALU_NS|Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\U_ALU_NS|Mult0|auto_generated|mac_out2~DATAOUT4\ <= \U_ALU_NS|Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\U_ALU_NS|Mult0|auto_generated|mac_out2~DATAOUT5\ <= \U_ALU_NS|Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\U_ALU_NS|Mult0|auto_generated|mac_out2~DATAOUT6\ <= \U_ALU_NS|Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\U_ALU_NS|Mult0|auto_generated|mac_out2~DATAOUT7\ <= \U_ALU_NS|Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\U_ALU_NS|Mult0|auto_generated|mac_out2~DATAOUT8\ <= \U_ALU_NS|Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\U_ALU_NS|Mult0|auto_generated|mac_out2~DATAOUT9\ <= \U_ALU_NS|Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\U_ALU_NS|Mult0|auto_generated|mac_out2~DATAOUT10\ <= \U_ALU_NS|Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\U_ALU_NS|Mult0|auto_generated|mac_out2~DATAOUT11\ <= \U_ALU_NS|Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\U_ALU_NS|Mult0|auto_generated|mac_out2~DATAOUT12\ <= \U_ALU_NS|Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\U_ALU_NS|Mult0|auto_generated|mac_out2~DATAOUT13\ <= \U_ALU_NS|Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\U_ALU_NS|Mult0|auto_generated|mac_out2~DATAOUT14\ <= \U_ALU_NS|Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\U_ALU_NS|Mult0|auto_generated|mac_out2~DATAOUT15\ <= \U_ALU_NS|Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);

\U_ALU_NS|Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\U_SR_V2|output\(7) & \U_SR_V2|output\(6) & \U_SR_V2|output\(5) & \U_SR_V2|output\(4) & \U_SR_V2|output\(3) & \U_SR_V2|output\(2) & \U_SR_V2|output\(1) & \U_SR_V2|output\(0) & gnd);

\U_ALU_NS|Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (\U_B_REG|output\(7) & \U_B_REG|output\(6) & \U_B_REG|output\(5) & \U_B_REG|output\(4) & \U_B_REG|output\(3) & \U_B_REG|output\(2) & \U_B_REG|output\(1) & \U_B_REG|output\(0) & gnd);

\U_ALU_NS|Mult0|auto_generated|mac_mult1~0\ <= \U_ALU_NS|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\U_ALU_NS|Mult0|auto_generated|mac_mult1~1\ <= \U_ALU_NS|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\U_ALU_NS|Mult0|auto_generated|mac_mult1~dataout\ <= \U_ALU_NS|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\U_ALU_NS|Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \U_ALU_NS|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\U_ALU_NS|Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \U_ALU_NS|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\U_ALU_NS|Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \U_ALU_NS|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\U_ALU_NS|Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \U_ALU_NS|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\U_ALU_NS|Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \U_ALU_NS|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\U_ALU_NS|Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \U_ALU_NS|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\U_ALU_NS|Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \U_ALU_NS|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\U_ALU_NS|Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \U_ALU_NS|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\U_ALU_NS|Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \U_ALU_NS|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\U_ALU_NS|Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \U_ALU_NS|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\U_ALU_NS|Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \U_ALU_NS|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\U_ALU_NS|Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \U_ALU_NS|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\U_ALU_NS|Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \U_ALU_NS|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\U_ALU_NS|Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \U_ALU_NS|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\U_ALU_NS|Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \U_ALU_NS|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);

\U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~combout\);

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

-- Location: DSPOUT_X18_Y20_N2
\U_ALU_NS|Mult0|auto_generated|mac_out2\ : cycloneiii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 18,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU_NS|Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \U_ALU_NS|Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X20_Y20_N10
\U_ALU_NS|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Add0~0_combout\ = (\U_B_REG|output\(0) & (\U_A_REG|output[0]~_Duplicate_1_q\ $ (VCC))) # (!\U_B_REG|output\(0) & ((\U_A_REG|output[0]~_Duplicate_1_q\) # (GND)))
-- \U_ALU_NS|Add0~1\ = CARRY((\U_A_REG|output[0]~_Duplicate_1_q\) # (!\U_B_REG|output\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_B_REG|output\(0),
	datab => \U_A_REG|output[0]~_Duplicate_1_q\,
	datad => VCC,
	combout => \U_ALU_NS|Add0~0_combout\,
	cout => \U_ALU_NS|Add0~1\);

-- Location: LCCOMB_X20_Y19_N20
\U_ALU_NS|Add6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Add6~2_combout\ = (\U_ALU_NS|Add5~0_combout\ & ((\U_A_REG|output[6]~_Duplicate_1_q\ & (!\U_ALU_NS|Add6~1_cout\)) # (!\U_A_REG|output[6]~_Duplicate_1_q\ & (\U_ALU_NS|Add6~1_cout\ & VCC)))) # (!\U_ALU_NS|Add5~0_combout\ & 
-- ((\U_A_REG|output[6]~_Duplicate_1_q\ & ((\U_ALU_NS|Add6~1_cout\) # (GND))) # (!\U_A_REG|output[6]~_Duplicate_1_q\ & (!\U_ALU_NS|Add6~1_cout\))))
-- \U_ALU_NS|Add6~3\ = CARRY((\U_ALU_NS|Add5~0_combout\ & (\U_A_REG|output[6]~_Duplicate_1_q\ & !\U_ALU_NS|Add6~1_cout\)) # (!\U_ALU_NS|Add5~0_combout\ & ((\U_A_REG|output[6]~_Duplicate_1_q\) # (!\U_ALU_NS|Add6~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU_NS|Add5~0_combout\,
	datab => \U_A_REG|output[6]~_Duplicate_1_q\,
	datad => VCC,
	cin => \U_ALU_NS|Add6~1_cout\,
	combout => \U_ALU_NS|Add6~2_combout\,
	cout => \U_ALU_NS|Add6~3\);

-- Location: LCCOMB_X20_Y20_N12
\U_ALU_NS|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Add0~2_combout\ = (\U_A_REG|output[1]~_Duplicate_1_q\ & ((\U_B_REG|output\(1) & (!\U_ALU_NS|Add0~1\)) # (!\U_B_REG|output\(1) & (\U_ALU_NS|Add0~1\ & VCC)))) # (!\U_A_REG|output[1]~_Duplicate_1_q\ & ((\U_B_REG|output\(1) & ((\U_ALU_NS|Add0~1\) # 
-- (GND))) # (!\U_B_REG|output\(1) & (!\U_ALU_NS|Add0~1\))))
-- \U_ALU_NS|Add0~3\ = CARRY((\U_A_REG|output[1]~_Duplicate_1_q\ & (\U_B_REG|output\(1) & !\U_ALU_NS|Add0~1\)) # (!\U_A_REG|output[1]~_Duplicate_1_q\ & ((\U_B_REG|output\(1)) # (!\U_ALU_NS|Add0~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_A_REG|output[1]~_Duplicate_1_q\,
	datab => \U_B_REG|output\(1),
	datad => VCC,
	cin => \U_ALU_NS|Add0~1\,
	combout => \U_ALU_NS|Add0~2_combout\,
	cout => \U_ALU_NS|Add0~3\);

-- Location: LCCOMB_X20_Y20_N14
\U_ALU_NS|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Add0~4_combout\ = ((\U_A_REG|output[2]~_Duplicate_1_q\ $ (\U_B_REG|output\(2) $ (\U_ALU_NS|Add0~3\)))) # (GND)
-- \U_ALU_NS|Add0~5\ = CARRY((\U_A_REG|output[2]~_Duplicate_1_q\ & ((!\U_ALU_NS|Add0~3\) # (!\U_B_REG|output\(2)))) # (!\U_A_REG|output[2]~_Duplicate_1_q\ & (!\U_B_REG|output\(2) & !\U_ALU_NS|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_A_REG|output[2]~_Duplicate_1_q\,
	datab => \U_B_REG|output\(2),
	datad => VCC,
	cin => \U_ALU_NS|Add0~3\,
	combout => \U_ALU_NS|Add0~4_combout\,
	cout => \U_ALU_NS|Add0~5\);

-- Location: LCCOMB_X20_Y19_N24
\U_ALU_NS|Add6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Add6~6_combout\ = (\U_ALU_NS|Add5~3_combout\ & (!\U_ALU_NS|Add6~5\)) # (!\U_ALU_NS|Add5~3_combout\ & ((\U_ALU_NS|Add6~5\) # (GND)))
-- \U_ALU_NS|Add6~7\ = CARRY((!\U_ALU_NS|Add6~5\) # (!\U_ALU_NS|Add5~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU_NS|Add5~3_combout\,
	datad => VCC,
	cin => \U_ALU_NS|Add6~5\,
	combout => \U_ALU_NS|Add6~6_combout\,
	cout => \U_ALU_NS|Add6~7\);

-- Location: LCCOMB_X20_Y19_N26
\U_ALU_NS|Add6~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Add6~8_combout\ = !\U_ALU_NS|Add6~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U_ALU_NS|Add6~7\,
	combout => \U_ALU_NS|Add6~8_combout\);

-- Location: LCCOMB_X20_Y20_N20
\U_ALU_NS|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Add0~10_combout\ = (\U_A_REG|output[5]~_Duplicate_1_q\ & ((\U_B_REG|output\(5) & (!\U_ALU_NS|Add0~9\)) # (!\U_B_REG|output\(5) & (\U_ALU_NS|Add0~9\ & VCC)))) # (!\U_A_REG|output[5]~_Duplicate_1_q\ & ((\U_B_REG|output\(5) & ((\U_ALU_NS|Add0~9\) # 
-- (GND))) # (!\U_B_REG|output\(5) & (!\U_ALU_NS|Add0~9\))))
-- \U_ALU_NS|Add0~11\ = CARRY((\U_A_REG|output[5]~_Duplicate_1_q\ & (\U_B_REG|output\(5) & !\U_ALU_NS|Add0~9\)) # (!\U_A_REG|output[5]~_Duplicate_1_q\ & ((\U_B_REG|output\(5)) # (!\U_ALU_NS|Add0~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_A_REG|output[5]~_Duplicate_1_q\,
	datab => \U_B_REG|output\(5),
	datad => VCC,
	cin => \U_ALU_NS|Add0~9\,
	combout => \U_ALU_NS|Add0~10_combout\,
	cout => \U_ALU_NS|Add0~11\);

-- Location: LCCOMB_X20_Y20_N22
\U_ALU_NS|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Add0~12_combout\ = ((\U_B_REG|output\(6) $ (\U_A_REG|output[6]~_Duplicate_1_q\ $ (\U_ALU_NS|Add0~11\)))) # (GND)
-- \U_ALU_NS|Add0~13\ = CARRY((\U_B_REG|output\(6) & (\U_A_REG|output[6]~_Duplicate_1_q\ & !\U_ALU_NS|Add0~11\)) # (!\U_B_REG|output\(6) & ((\U_A_REG|output[6]~_Duplicate_1_q\) # (!\U_ALU_NS|Add0~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_B_REG|output\(6),
	datab => \U_A_REG|output[6]~_Duplicate_1_q\,
	datad => VCC,
	cin => \U_ALU_NS|Add0~11\,
	combout => \U_ALU_NS|Add0~12_combout\,
	cout => \U_ALU_NS|Add0~13\);

-- Location: FF_X16_Y21_N17
\U_ALU_TO_TDO|temp_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_ALU_TO_TDO|temp_reg[0]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_ALU_TO_TDO|temp_reg[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ALU_TO_TDO|temp_reg\(0));

-- Location: LCCOMB_X17_Y20_N22
\U_ALU_NS|Mux8~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux8~10_combout\ = (\U_A_REG|output[0]~_Duplicate_1_q\ & ((\alu_sel[2]~input_o\) # (!\U_B_REG|output\(0)))) # (!\U_A_REG|output[0]~_Duplicate_1_q\ & ((\U_B_REG|output\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_A_REG|output[0]~_Duplicate_1_q\,
	datac => \alu_sel[2]~input_o\,
	datad => \U_B_REG|output\(0),
	combout => \U_ALU_NS|Mux8~10_combout\);

-- Location: LCCOMB_X19_Y20_N20
\U_ALU_NS|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Add2~0_combout\ = \U_A_REG|output[2]~_Duplicate_1_q\ $ (\U_A_REG|output[0]~_Duplicate_1_q\ $ (\U_A_REG|output[1]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_A_REG|output[2]~_Duplicate_1_q\,
	datac => \U_A_REG|output[0]~_Duplicate_1_q\,
	datad => \U_A_REG|output[1]~_Duplicate_1_q\,
	combout => \U_ALU_NS|Add2~0_combout\);

-- Location: LCCOMB_X19_Y20_N30
\U_ALU_NS|Add5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Add5~0_combout\ = \U_A_REG|output[4]~_Duplicate_1_q\ $ (\U_ALU_NS|Add2~0_combout\ $ (\U_A_REG|output[3]~_Duplicate_1_q\ $ (\U_A_REG|output[5]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_A_REG|output[4]~_Duplicate_1_q\,
	datab => \U_ALU_NS|Add2~0_combout\,
	datac => \U_A_REG|output[3]~_Duplicate_1_q\,
	datad => \U_A_REG|output[5]~_Duplicate_1_q\,
	combout => \U_ALU_NS|Add5~0_combout\);

-- Location: LCCOMB_X19_Y20_N8
\U_ALU_NS|Add5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Add5~1_combout\ = (\U_ALU_NS|Add2~0_combout\) # (\U_A_REG|output[3]~_Duplicate_1_q\ $ (\U_A_REG|output[4]~_Duplicate_1_q\ $ (\U_A_REG|output[5]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_A_REG|output[3]~_Duplicate_1_q\,
	datab => \U_ALU_NS|Add2~0_combout\,
	datac => \U_A_REG|output[4]~_Duplicate_1_q\,
	datad => \U_A_REG|output[5]~_Duplicate_1_q\,
	combout => \U_ALU_NS|Add5~1_combout\);

-- Location: LCCOMB_X20_Y19_N10
\U_ALU_NS|Add5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Add5~3_combout\ = (\U_ALU_NS|Add5~1_combout\ & (\U_ALU_NS|Add2~1_combout\ & !\U_ALU_NS|Add4~0_combout\)) # (!\U_ALU_NS|Add5~1_combout\ & ((\U_ALU_NS|Add2~1_combout\) # (!\U_ALU_NS|Add4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU_NS|Add5~1_combout\,
	datac => \U_ALU_NS|Add2~1_combout\,
	datad => \U_ALU_NS|Add4~0_combout\,
	combout => \U_ALU_NS|Add5~3_combout\);

-- Location: LCCOMB_X21_Y22_N30
\U_ALU_NS|Mux8~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux8~21_combout\ = (!\alu_sel[2]~input_o\ & !\alu_sel[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu_sel[2]~input_o\,
	datad => \alu_sel[1]~input_o\,
	combout => \U_ALU_NS|Mux8~21_combout\);

-- Location: LCCOMB_X19_Y20_N4
\U_ALU_NS|Mux8~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux8~22_combout\ = (\U_ALU_NS|Mux8~21_combout\ & (\U_A_REG|output[4]~_Duplicate_1_q\ $ (\U_B_REG|output\(4) $ (\U_ALU_NS|v_carry~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_A_REG|output[4]~_Duplicate_1_q\,
	datab => \U_ALU_NS|Mux8~21_combout\,
	datac => \U_B_REG|output\(4),
	datad => \U_ALU_NS|v_carry~3_combout\,
	combout => \U_ALU_NS|Mux8~22_combout\);

-- Location: LCCOMB_X17_Y20_N30
\U_ALU_NS|Mux8~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux8~25_combout\ = (!\alu_sel[2]~input_o\ & ((\alu_sel[1]~input_o\ & ((\U_A_REG|output[3]~_Duplicate_1_q\))) # (!\alu_sel[1]~input_o\ & (\U_A_REG|output[5]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_A_REG|output[5]~_Duplicate_1_q\,
	datab => \alu_sel[1]~input_o\,
	datac => \alu_sel[2]~input_o\,
	datad => \U_A_REG|output[3]~_Duplicate_1_q\,
	combout => \U_ALU_NS|Mux8~25_combout\);

-- Location: LCCOMB_X17_Y20_N8
\U_ALU_NS|Mux2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux2~2_combout\ = (!\U_B_REG|output\(5) & !\U_A_REG|output[5]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_B_REG|output\(5),
	datad => \U_A_REG|output[5]~_Duplicate_1_q\,
	combout => \U_ALU_NS|Mux2~2_combout\);

-- Location: LCCOMB_X17_Y20_N10
\U_ALU_NS|Mux2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux2~3_combout\ = (\alu_sel[1]~input_o\ & ((\alu_sel[2]~input_o\ & ((\U_ALU_NS|Mux2~2_combout\))) # (!\alu_sel[2]~input_o\ & (\U_ALU_NS|Mult0|auto_generated|mac_out2~DATAOUT5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU_NS|Mult0|auto_generated|mac_out2~DATAOUT5\,
	datab => \alu_sel[2]~input_o\,
	datac => \U_ALU_NS|Mux2~2_combout\,
	datad => \alu_sel[1]~input_o\,
	combout => \U_ALU_NS|Mux2~3_combout\);

-- Location: LCCOMB_X19_Y20_N22
\U_ALU_NS|Mux2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux2~4_combout\ = \U_A_REG|output[5]~_Duplicate_1_q\ $ (((!\alu_sel[2]~input_o\ & ((\U_ALU_NS|v_carry~5_combout\) # (\U_ALU_NS|v_carry~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_A_REG|output[5]~_Duplicate_1_q\,
	datab => \U_ALU_NS|v_carry~5_combout\,
	datac => \alu_sel[2]~input_o\,
	datad => \U_ALU_NS|v_carry~4_combout\,
	combout => \U_ALU_NS|Mux2~4_combout\);

-- Location: LCCOMB_X20_Y22_N12
\U_ALU_NS|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux1~0_combout\ = (\alu_sel[1]~input_o\ & (((\U_ALU_NS|Mux8~17_combout\) # (\alu_sel[0]~input_o\)))) # (!\alu_sel[1]~input_o\ & (\U_ALU_NS|Mux8~16_combout\ & ((!\alu_sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_sel[1]~input_o\,
	datab => \U_ALU_NS|Mux8~16_combout\,
	datac => \U_ALU_NS|Mux8~17_combout\,
	datad => \alu_sel[0]~input_o\,
	combout => \U_ALU_NS|Mux1~0_combout\);

-- Location: LCCOMB_X21_Y22_N16
\U_ALU_NS|Mux1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux1~3_combout\ = (\U_ALU_NS|Mux8~21_combout\ & (\U_ALU_NS|v_carry~6_combout\ $ (\U_B_REG|output\(6) $ (\U_A_REG|output[6]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU_NS|Mux8~21_combout\,
	datab => \U_ALU_NS|v_carry~6_combout\,
	datac => \U_B_REG|output\(6),
	datad => \U_A_REG|output[6]~_Duplicate_1_q\,
	combout => \U_ALU_NS|Mux1~3_combout\);

-- Location: LCCOMB_X20_Y20_N28
\U_ALU_NS|Mux1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux1~4_combout\ = (\alu_sel[2]~input_o\ & (((\U_B_REG|output\(6)) # (\U_A_REG|output[6]~_Duplicate_1_q\)))) # (!\alu_sel[2]~input_o\ & (\U_ALU_NS|Mult0|auto_generated|mac_out2~DATAOUT6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU_NS|Mult0|auto_generated|mac_out2~DATAOUT6\,
	datab => \alu_sel[2]~input_o\,
	datac => \U_B_REG|output\(6),
	datad => \U_A_REG|output[6]~_Duplicate_1_q\,
	combout => \U_ALU_NS|Mux1~4_combout\);

-- Location: LCCOMB_X17_Y21_N26
\U_ALU_NS|Mux1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux1~5_combout\ = (\U_ALU_NS|Mux1~3_combout\) # ((\alu_sel[1]~input_o\ & (\alu_sel[2]~input_o\ $ (\U_ALU_NS|Mux1~4_combout\))) # (!\alu_sel[1]~input_o\ & (\alu_sel[2]~input_o\ & \U_ALU_NS|Mux1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_sel[1]~input_o\,
	datab => \alu_sel[2]~input_o\,
	datac => \U_ALU_NS|Mux1~4_combout\,
	datad => \U_ALU_NS|Mux1~3_combout\,
	combout => \U_ALU_NS|Mux1~5_combout\);

-- Location: LCCOMB_X20_Y20_N30
\U_ALU_NS|Mux8~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux8~28_combout\ = (\alu_sel[2]~input_o\ & (!\alu_sel[1]~input_o\ & ((\U_A_REG|output[7]~_Duplicate_1_q\) # (\U_B_REG|output\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_A_REG|output[7]~_Duplicate_1_q\,
	datab => \U_B_REG|output\(7),
	datac => \alu_sel[2]~input_o\,
	datad => \alu_sel[1]~input_o\,
	combout => \U_ALU_NS|Mux8~28_combout\);

-- Location: FF_X16_Y21_N19
\U_ALU_TO_TDO|temp_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_ALU_TO_TDO|temp_reg\(2),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_ALU_TO_TDO|temp_reg[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ALU_TO_TDO|temp_reg\(1));

-- Location: FF_X16_Y21_N5
\U_ALU_TO_TDO|state.START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_ALU_TO_TDO|state.START~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ALU_TO_TDO|state.START~q\);

-- Location: FF_X19_Y21_N3
\U_ALU_TO_TDO|state.OUT_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_ALU_TO_TDO|state.OUT_1~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ALU_TO_TDO|state.OUT_1~q\);

-- Location: FF_X19_Y21_N19
\U_ALU_TO_TDO|state.OUT_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_ALU_TO_TDO|state.OUT_2~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ALU_TO_TDO|state.OUT_2~q\);

-- Location: FF_X19_Y21_N15
\U_ALU_TO_TDO|state.OUT_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_ALU_TO_TDO|state.OUT_2~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ALU_TO_TDO|state.OUT_3~q\);

-- Location: FF_X19_Y21_N23
\U_ALU_TO_TDO|state.OUT_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_ALU_TO_TDO|state.OUT_3~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ALU_TO_TDO|state.OUT_4~q\);

-- Location: LCCOMB_X19_Y21_N22
\U_ALU_TO_TDO|WideNor0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_TO_TDO|WideNor0~0_combout\ = (!\U_ALU_TO_TDO|state.OUT_3~q\ & (!\U_ALU_TO_TDO|state.OUT_1~q\ & (!\U_ALU_TO_TDO|state.OUT_4~q\ & !\U_ALU_TO_TDO|state.OUT_2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU_TO_TDO|state.OUT_3~q\,
	datab => \U_ALU_TO_TDO|state.OUT_1~q\,
	datac => \U_ALU_TO_TDO|state.OUT_4~q\,
	datad => \U_ALU_TO_TDO|state.OUT_2~q\,
	combout => \U_ALU_TO_TDO|WideNor0~0_combout\);

-- Location: FF_X19_Y21_N13
\U_ALU_TO_TDO|state.OUT_5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_ALU_TO_TDO|state.OUT_4~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ALU_TO_TDO|state.OUT_5~q\);

-- Location: FF_X19_Y21_N9
\U_ALU_TO_TDO|state.OUT_6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_ALU_TO_TDO|state.OUT_6~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ALU_TO_TDO|state.OUT_6~q\);

-- Location: FF_X19_Y21_N29
\U_ALU_TO_TDO|state.OUT_7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_ALU_TO_TDO|state.OUT_6~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ALU_TO_TDO|state.OUT_7~q\);

-- Location: LCCOMB_X19_Y21_N12
\U_ALU_TO_TDO|WideNor0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_TO_TDO|WideNor0~1_combout\ = (\U_ALU_TO_TDO|WideNor0~0_combout\ & (!\U_ALU_TO_TDO|state.OUT_6~q\ & (!\U_ALU_TO_TDO|state.OUT_5~q\ & !\U_ALU_TO_TDO|state.OUT_7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU_TO_TDO|WideNor0~0_combout\,
	datab => \U_ALU_TO_TDO|state.OUT_6~q\,
	datac => \U_ALU_TO_TDO|state.OUT_5~q\,
	datad => \U_ALU_TO_TDO|state.OUT_7~q\,
	combout => \U_ALU_TO_TDO|WideNor0~1_combout\);

-- Location: LCCOMB_X16_Y21_N6
\U_ALU_TO_TDO|temp_reg[5]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_TO_TDO|temp_reg[5]~0_combout\ = (\U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~combout\ & ((!\U_ALU_TO_TDO|WideNor0~1_combout\) # (!\U_ALU_TO_TDO|state.START~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~combout\,
	datac => \U_ALU_TO_TDO|state.START~q\,
	datad => \U_ALU_TO_TDO|WideNor0~1_combout\,
	combout => \U_ALU_TO_TDO|temp_reg[5]~0_combout\);

-- Location: FF_X16_Y21_N9
\U_ALU_TO_TDO|temp_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_ALU_TO_TDO|temp_reg[2]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_ALU_TO_TDO|temp_reg[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ALU_TO_TDO|temp_reg\(2));

-- Location: FF_X19_Y19_N11
\U_ADDR_TOP|U_logic|addr_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_ADDR_TOP|U_logic|addr_reg[5]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_ADDR_TOP|U_logic|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ADDR_TOP|U_logic|addr_reg\(5));

-- Location: LCCOMB_X19_Y19_N18
\U_ADDR_TOP|U_logic|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADDR_TOP|U_logic|Mux2~0_combout\ = (\U_ADDR_TOP|U_logic|addr_reg\(7) & (\U_ADDR_TOP|U_logic|addr_or_data~q\ & (\U_ADDR_TOP|U_logic|addr_reg\(6) & \U_ADDR_TOP|U_logic|addr_reg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADDR_TOP|U_logic|addr_reg\(7),
	datab => \U_ADDR_TOP|U_logic|addr_or_data~q\,
	datac => \U_ADDR_TOP|U_logic|addr_reg\(6),
	datad => \U_ADDR_TOP|U_logic|addr_reg\(5),
	combout => \U_ADDR_TOP|U_logic|Mux2~0_combout\);

-- Location: FF_X16_Y21_N3
\U_ALU_TO_TDO|temp_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_ALU_TO_TDO|temp_reg[3]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_ALU_TO_TDO|temp_reg[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ALU_TO_TDO|temp_reg\(3));

-- Location: FF_X21_Y19_N11
\U_ADDR_TOP|U_addrcount|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~clkctrl_outclk\,
	d => \U_ADDR_TOP|U_addrcount|count[1]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ADDR_TOP|U_addrcount|count\(1));

-- Location: FF_X19_Y19_N25
\U_ADDR_TOP|U_addrreg|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_SR_V2|output\(5),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_ADDR_TOP|U_addrcount|output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ADDR_TOP|U_addrreg|output\(5));

-- Location: FF_X16_Y21_N21
\U_ALU_TO_TDO|temp_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_ALU_TO_TDO|temp_reg\(5),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_ALU_TO_TDO|temp_reg[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ALU_TO_TDO|temp_reg\(4));

-- Location: LCCOMB_X21_Y19_N10
\U_ADDR_TOP|U_addrcount|count[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADDR_TOP|U_addrcount|count[1]~0_combout\ = \U_ADDR_TOP|U_addrcount|count\(1) $ (\U_ADDR_TOP|U_addrcount|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_ADDR_TOP|U_addrcount|count\(1),
	datad => \U_ADDR_TOP|U_addrcount|count\(0),
	combout => \U_ADDR_TOP|U_addrcount|count[1]~0_combout\);

-- Location: FF_X16_Y21_N31
\U_ALU_TO_TDO|temp_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_ALU_TO_TDO|temp_reg[5]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_ALU_TO_TDO|temp_reg[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ALU_TO_TDO|temp_reg\(5));

-- Location: FF_X16_Y21_N1
\U_ALU_TO_TDO|temp_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_ALU_TO_TDO|temp_reg[6]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_ALU_TO_TDO|temp_reg[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ALU_TO_TDO|temp_reg\(6));

-- Location: FF_X16_Y21_N11
\U_ALU_TO_TDO|temp_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_ALU_TO_TDO|Selector8~9_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ALU_TO_TDO|temp_reg\(7));

-- Location: FF_X16_Y21_N29
\U_ALU_TO_TDO|valid_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_ALU_TO_TDO|valid_reg~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ALU_TO_TDO|valid_reg~q\);

-- Location: LCCOMB_X16_Y21_N14
\U_ALU_TO_TDO|Selector8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_TO_TDO|Selector8~0_combout\ = (\U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~combout\ & (!\U_ALU_TO_TDO|valid_reg~q\ & (\altera_internal_jtag~TDIUTAP\))) # 
-- (!\U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~combout\ & (((\U_ALU_TO_TDO|temp_reg\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~combout\,
	datab => \U_ALU_TO_TDO|valid_reg~q\,
	datac => \altera_internal_jtag~TDIUTAP\,
	datad => \U_ALU_TO_TDO|temp_reg\(7),
	combout => \U_ALU_TO_TDO|Selector8~0_combout\);

-- Location: LCCOMB_X16_Y21_N24
\U_ALU_TO_TDO|Selector8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_TO_TDO|Selector8~1_combout\ = (\U_ALU_TO_TDO|WideNor0~1_combout\ & (\U_ALU_TO_TDO|temp_reg\(7) & (\U_ALU_TO_TDO|state.START~q\))) # (!\U_ALU_TO_TDO|WideNor0~1_combout\ & (((\U_ALU_TO_TDO|Selector8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU_TO_TDO|temp_reg\(7),
	datab => \U_ALU_TO_TDO|state.START~q\,
	datac => \U_ALU_TO_TDO|Selector8~0_combout\,
	datad => \U_ALU_TO_TDO|WideNor0~1_combout\,
	combout => \U_ALU_TO_TDO|Selector8~1_combout\);

-- Location: FF_X17_Y21_N21
\U_ALU_TO_TDO|data_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_ALU_NS|Mux0~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_ALU_TO_TDO|state.OUT_7~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ALU_TO_TDO|data_reg\(7));

-- Location: FF_X17_Y21_N29
\U_ALU_TO_TDO|data_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_ALU_NS|Mux1~6_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_ALU_TO_TDO|state.OUT_7~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ALU_TO_TDO|data_reg\(6));

-- Location: LCCOMB_X19_Y21_N28
\U_ALU_TO_TDO|Selector8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_TO_TDO|Selector8~2_combout\ = (\U_ALU_TO_TDO|data_reg\(6) & ((\U_ALU_TO_TDO|state.OUT_6~q\) # ((\U_ALU_TO_TDO|state.OUT_7~q\ & \U_ALU_TO_TDO|data_reg\(7))))) # (!\U_ALU_TO_TDO|data_reg\(6) & (((\U_ALU_TO_TDO|state.OUT_7~q\ & 
-- \U_ALU_TO_TDO|data_reg\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU_TO_TDO|data_reg\(6),
	datab => \U_ALU_TO_TDO|state.OUT_6~q\,
	datac => \U_ALU_TO_TDO|state.OUT_7~q\,
	datad => \U_ALU_TO_TDO|data_reg\(7),
	combout => \U_ALU_TO_TDO|Selector8~2_combout\);

-- Location: FF_X17_Y21_N31
\U_ALU_TO_TDO|data_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_ALU_NS|Mux2~7_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_ALU_TO_TDO|state.OUT_7~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ALU_TO_TDO|data_reg\(5));

-- Location: FF_X17_Y21_N15
\U_ALU_TO_TDO|data_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_ALU_NS|Mux3~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_ALU_TO_TDO|state.OUT_7~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ALU_TO_TDO|data_reg\(4));

-- Location: LCCOMB_X17_Y21_N30
\U_ALU_TO_TDO|Selector8~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_TO_TDO|Selector8~3_combout\ = (\U_ALU_TO_TDO|state.OUT_5~q\ & ((\U_ALU_TO_TDO|data_reg\(5)) # ((\U_ALU_TO_TDO|data_reg\(4) & \U_ALU_TO_TDO|state.OUT_4~q\)))) # (!\U_ALU_TO_TDO|state.OUT_5~q\ & (\U_ALU_TO_TDO|data_reg\(4) & 
-- ((\U_ALU_TO_TDO|state.OUT_4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU_TO_TDO|state.OUT_5~q\,
	datab => \U_ALU_TO_TDO|data_reg\(4),
	datac => \U_ALU_TO_TDO|data_reg\(5),
	datad => \U_ALU_TO_TDO|state.OUT_4~q\,
	combout => \U_ALU_TO_TDO|Selector8~3_combout\);

-- Location: FF_X20_Y21_N21
\U_ALU_TO_TDO|data_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_ALU_NS|Mux6~9_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_ALU_TO_TDO|state.OUT_7~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ALU_TO_TDO|data_reg\(1));

-- Location: LCCOMB_X20_Y21_N0
\U_ALU_TO_TDO|Selector8~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_TO_TDO|Selector8~4_combout\ = (\U_ALU_TO_TDO|state.OUT_1~q\ & \U_ALU_TO_TDO|data_reg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU_TO_TDO|state.OUT_1~q\,
	datad => \U_ALU_TO_TDO|data_reg\(1),
	combout => \U_ALU_TO_TDO|Selector8~4_combout\);

-- Location: FF_X20_Y21_N11
\U_ALU_TO_TDO|data_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_ALU_NS|Mux4~6_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_ALU_TO_TDO|state.OUT_7~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ALU_TO_TDO|data_reg\(3));

-- Location: FF_X20_Y21_N19
\U_ALU_TO_TDO|data_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_ALU_NS|Mux5~5_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_ALU_TO_TDO|state.OUT_7~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ALU_TO_TDO|data_reg\(2));

-- Location: LCCOMB_X20_Y21_N10
\U_ALU_TO_TDO|Selector8~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_TO_TDO|Selector8~5_combout\ = (\U_ALU_TO_TDO|state.OUT_3~q\ & ((\U_ALU_TO_TDO|data_reg\(3)) # ((\U_ALU_TO_TDO|state.OUT_2~q\ & \U_ALU_TO_TDO|data_reg\(2))))) # (!\U_ALU_TO_TDO|state.OUT_3~q\ & (\U_ALU_TO_TDO|state.OUT_2~q\ & 
-- ((\U_ALU_TO_TDO|data_reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU_TO_TDO|state.OUT_3~q\,
	datab => \U_ALU_TO_TDO|state.OUT_2~q\,
	datac => \U_ALU_TO_TDO|data_reg\(3),
	datad => \U_ALU_TO_TDO|data_reg\(2),
	combout => \U_ALU_TO_TDO|Selector8~5_combout\);

-- Location: LCCOMB_X20_Y21_N12
\U_ALU_TO_TDO|Selector8~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_TO_TDO|Selector8~6_combout\ = (\U_ALU_TO_TDO|Selector8~5_combout\) # ((\U_ALU_TO_TDO|Selector8~2_combout\) # ((\U_ALU_TO_TDO|Selector8~3_combout\) # (\U_ALU_TO_TDO|Selector8~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU_TO_TDO|Selector8~5_combout\,
	datab => \U_ALU_TO_TDO|Selector8~2_combout\,
	datac => \U_ALU_TO_TDO|Selector8~3_combout\,
	datad => \U_ALU_TO_TDO|Selector8~4_combout\,
	combout => \U_ALU_TO_TDO|Selector8~6_combout\);

-- Location: LCCOMB_X16_Y21_N26
\U_ALU_TO_TDO|Selector8~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_TO_TDO|Selector8~7_combout\ = (\U_ALU_TO_TDO|Selector8~1_combout\) # ((\U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~combout\ & (\U_ALU_TO_TDO|valid_reg~q\ & \U_ALU_TO_TDO|Selector8~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~combout\,
	datab => \U_ALU_TO_TDO|valid_reg~q\,
	datac => \U_ALU_TO_TDO|Selector8~1_combout\,
	datad => \U_ALU_TO_TDO|Selector8~6_combout\,
	combout => \U_ALU_TO_TDO|Selector8~7_combout\);

-- Location: LCCOMB_X16_Y21_N12
\U_ALU_TO_TDO|next_temp~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_TO_TDO|next_temp~0_combout\ = (!\U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~combout\ & \U_ALU_TO_TDO|temp_reg\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~combout\,
	datad => \U_ALU_TO_TDO|temp_reg\(7),
	combout => \U_ALU_TO_TDO|next_temp~0_combout\);

-- Location: FF_X17_Y21_N19
\U_ALU_TO_TDO|data_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_ALU_NS|Mux7~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_ALU_TO_TDO|state.OUT_7~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ALU_TO_TDO|data_reg\(0));

-- Location: LCCOMB_X19_Y19_N24
\U_ADDR_TOP|U_logic|out_data_rdy~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADDR_TOP|U_logic|out_data_rdy~0_combout\ = (\U_ADDR_TOP|U_addrreg|output\(4) & (\U_ADDR_TOP|U_addrreg|output\(6) & (\U_ADDR_TOP|U_addrreg|output\(5) & \U_ADDR_TOP|U_addrreg|output\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADDR_TOP|U_addrreg|output\(4),
	datab => \U_ADDR_TOP|U_addrreg|output\(6),
	datac => \U_ADDR_TOP|U_addrreg|output\(5),
	datad => \U_ADDR_TOP|U_addrreg|output\(7),
	combout => \U_ADDR_TOP|U_logic|out_data_rdy~0_combout\);

-- Location: LCCOMB_X19_Y19_N28
\U_ADDR_TOP|U_logic|out_data_rdy~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADDR_TOP|U_logic|out_data_rdy~1_combout\ = (\U_ADDR_TOP|U_addrreg|output\(2) & (\U_ADDR_TOP|U_addrreg|output\(3) & (\U_ADDR_TOP|U_addrreg|output\(1) & \U_ADDR_TOP|U_addrreg|output\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADDR_TOP|U_addrreg|output\(2),
	datab => \U_ADDR_TOP|U_addrreg|output\(3),
	datac => \U_ADDR_TOP|U_addrreg|output\(1),
	datad => \U_ADDR_TOP|U_addrreg|output\(0),
	combout => \U_ADDR_TOP|U_logic|out_data_rdy~1_combout\);

-- Location: LCCOMB_X19_Y21_N10
\U_ADDR_TOP|U_logic|out_data_rdy~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADDR_TOP|U_logic|out_data_rdy~2_combout\ = (\U_ADDR_TOP|U_logic|out_data_rdy~1_combout\ & (\U_ADDR_TOP|U_logic|out_data_rdy~0_combout\ & !\U_ADDR_TOP|U_logic|sel_out_reg~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADDR_TOP|U_logic|out_data_rdy~1_combout\,
	datab => \U_ADDR_TOP|U_logic|out_data_rdy~0_combout\,
	datad => \U_ADDR_TOP|U_logic|sel_out_reg~q\,
	combout => \U_ADDR_TOP|U_logic|out_data_rdy~2_combout\);

-- Location: LCCOMB_X16_Y21_N22
\U_ALU_TO_TDO|Selector8~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_TO_TDO|Selector8~8_combout\ = (\U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~combout\ & ((\U_ADDR_TOP|U_logic|out_data_rdy~2_combout\ & (\U_ALU_TO_TDO|data_reg\(0))) # 
-- (!\U_ADDR_TOP|U_logic|out_data_rdy~2_combout\ & ((\altera_internal_jtag~TDIUTAP\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~combout\,
	datab => \U_ALU_TO_TDO|data_reg\(0),
	datac => \altera_internal_jtag~TDIUTAP\,
	datad => \U_ADDR_TOP|U_logic|out_data_rdy~2_combout\,
	combout => \U_ALU_TO_TDO|Selector8~8_combout\);

-- Location: LCCOMB_X16_Y21_N10
\U_ALU_TO_TDO|Selector8~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_TO_TDO|Selector8~9_combout\ = (\U_ALU_TO_TDO|Selector8~7_combout\) # ((!\U_ALU_TO_TDO|state.START~q\ & ((\U_ALU_TO_TDO|next_temp~0_combout\) # (\U_ALU_TO_TDO|Selector8~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU_TO_TDO|state.START~q\,
	datab => \U_ALU_TO_TDO|next_temp~0_combout\,
	datac => \U_ALU_TO_TDO|Selector8~7_combout\,
	datad => \U_ALU_TO_TDO|Selector8~8_combout\,
	combout => \U_ALU_TO_TDO|Selector8~9_combout\);

-- Location: LCCOMB_X16_Y21_N28
\U_ALU_TO_TDO|valid_reg~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_TO_TDO|valid_reg~0_combout\ = (\U_ALU_TO_TDO|state.START~q\ & (\U_ALU_TO_TDO|valid_reg~q\)) # (!\U_ALU_TO_TDO|state.START~q\ & ((\U_ADDR_TOP|U_logic|out_data_rdy~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_ALU_TO_TDO|state.START~q\,
	datac => \U_ALU_TO_TDO|valid_reg~q\,
	datad => \U_ADDR_TOP|U_logic|out_data_rdy~2_combout\,
	combout => \U_ALU_TO_TDO|valid_reg~0_combout\);

-- Location: LCCOMB_X21_Y20_N18
\U_ALU_NS|Mux8~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux8~32_combout\ = (!\alu_sel[1]~input_o\ & ((\alu_sel[2]~input_o\ & ((\U_ALU_NS|Add6~2_combout\))) # (!\alu_sel[2]~input_o\ & (\U_A_REG|output[1]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_sel[2]~input_o\,
	datab => \alu_sel[1]~input_o\,
	datac => \U_A_REG|output[1]~_Duplicate_1_q\,
	datad => \U_ALU_NS|Add6~2_combout\,
	combout => \U_ALU_NS|Mux8~32_combout\);

-- Location: LCCOMB_X21_Y20_N28
\U_ALU_NS|Mux8~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux8~33_combout\ = (\U_ALU_NS|Mux8~32_combout\) # ((\U_A_REG|output[7]~_Duplicate_1_q\ & (\alu_sel[1]~input_o\ & !\alu_sel[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_A_REG|output[7]~_Duplicate_1_q\,
	datab => \alu_sel[1]~input_o\,
	datac => \alu_sel[2]~input_o\,
	datad => \U_ALU_NS|Mux8~32_combout\,
	combout => \U_ALU_NS|Mux8~33_combout\);

-- Location: LCCOMB_X16_Y21_N4
\U_ALU_TO_TDO|state.START~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_TO_TDO|state.START~0_combout\ = !\U_ALU_TO_TDO|state.OUT_7~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_ALU_TO_TDO|state.OUT_7~q\,
	combout => \U_ALU_TO_TDO|state.START~0_combout\);

-- Location: LCCOMB_X19_Y21_N2
\U_ALU_TO_TDO|state.OUT_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_TO_TDO|state.OUT_1~0_combout\ = !\U_ALU_TO_TDO|state.START~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_ALU_TO_TDO|state.START~q\,
	combout => \U_ALU_TO_TDO|state.OUT_1~0_combout\);

-- Location: FF_X12_Y19_N9
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

-- Location: FF_X12_Y19_N3
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

-- Location: FF_X14_Y15_N5
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

-- Location: FF_X14_Y15_N7
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

-- Location: FF_X14_Y15_N11
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

-- Location: FF_X14_Y15_N9
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

-- Location: FF_X14_Y15_N3
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

-- Location: LCCOMB_X14_Y15_N2
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

-- Location: LCCOMB_X14_Y15_N4
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

-- Location: LCCOMB_X14_Y15_N6
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

-- Location: LCCOMB_X14_Y15_N8
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

-- Location: LCCOMB_X14_Y15_N10
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

-- Location: FF_X15_Y16_N19
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

-- Location: FF_X14_Y16_N17
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

-- Location: FF_X14_Y16_N3
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

-- Location: LCCOMB_X14_Y16_N2
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

-- Location: LCCOMB_X15_Y16_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~1\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(8),
	datad => \U_ALU_TO_TDO|temp_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~1_combout\);

-- Location: LCCOMB_X15_Y16_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~2\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~0_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~1_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(8),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~q\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~2_combout\);

-- Location: LCCOMB_X15_Y16_N18
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

-- Location: FF_X16_Y16_N19
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

-- Location: FF_X16_Y16_N21
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

-- Location: FF_X16_Y16_N31
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

-- Location: FF_X16_Y16_N9
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

-- Location: LCCOMB_X15_Y17_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TDIUTAP\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(8),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~0_combout\);

-- Location: FF_X17_Y16_N27
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

-- Location: LCCOMB_X15_Y17_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~1\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(1),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~0_combout\,
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~1_combout\);

-- Location: LCCOMB_X15_Y16_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datac => \altera_internal_jtag~TDIUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~q\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~0_combout\);

-- Location: FF_X14_Y16_N29
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

-- Location: LCCOMB_X14_Y16_N16
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

-- Location: FF_X14_Y16_N15
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

-- Location: LCCOMB_X14_Y16_N14
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~4\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~4_combout\);

-- Location: LCCOMB_X14_Y17_N14
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\);

-- Location: LCCOMB_X16_Y16_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~6\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(4),
	datac => \~GND~combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[2]~1_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~6_combout\);

-- Location: LCCOMB_X16_Y16_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~10\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datac => \~GND~combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(5),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~10_combout\);

-- Location: LCCOMB_X16_Y16_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~11\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(6),
	datac => \~GND~combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~11_combout\);

-- Location: LCCOMB_X16_Y16_N30
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~12\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datac => \~GND~combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(7),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~12_combout\);

-- Location: LCCOMB_X16_Y16_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~13\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datac => \~GND~combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(8),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~13_combout\);

-- Location: LCCOMB_X17_Y16_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~0_combout\);

-- Location: LCCOMB_X17_Y16_N26
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

-- Location: LCCOMB_X17_Y16_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~2\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~2_combout\);

-- Location: FF_X15_Y19_N13
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

-- Location: LCCOMB_X12_Y19_N8
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

-- Location: FF_X14_Y16_N25
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

-- Location: LCCOMB_X14_Y16_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~1\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~1_combout\);

-- Location: LCCOMB_X14_Y16_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~5\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~5_combout\);

-- Location: LCCOMB_X14_Y16_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~6\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(1),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(2),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~5_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~6_combout\);

-- Location: FF_X14_Y16_N23
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

-- Location: LCCOMB_X14_Y16_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~7\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~6_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~7_combout\);

-- Location: LCCOMB_X15_Y19_N12
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

-- Location: LCCOMB_X12_Y19_N2
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

-- Location: FF_X14_Y16_N27
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

-- Location: LCCOMB_X14_Y16_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~2\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~2_combout\);

-- Location: LCCOMB_X14_Y16_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~13\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(1),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~5_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~13_combout\);

-- Location: FF_X14_Y16_N7
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

-- Location: LCCOMB_X14_Y16_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~8\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~6_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~8_combout\);

-- Location: LCCOMB_X14_Y17_N18
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

-- Location: LCCOMB_X14_Y16_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~10\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(2),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~10_combout\);

-- Location: LCCOMB_X14_Y16_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~11\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~9_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~8_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~10_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~11_combout\);

-- Location: FF_X16_Y18_N7
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

-- Location: LCCOMB_X15_Y18_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~13\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010010110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~13_combout\);

-- Location: LCCOMB_X14_Y16_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~3\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datad => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~3_combout\);

-- Location: LCCOMB_X14_Y16_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~12\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(1),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(2),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~12_combout\);

-- Location: LCCOMB_X14_Y16_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~13\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~12_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~13_combout\);

-- Location: LCCOMB_X14_Y16_N30
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

-- Location: LCCOMB_X14_Y17_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[0]~15\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~q\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[0]~15_combout\);

-- Location: LCCOMB_X14_Y17_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~20\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~q\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~20_combout\);

-- Location: LCCOMB_X15_Y18_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~15\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~15_combout\);

-- Location: LCCOMB_X15_Y18_N30
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~16\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~15_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~16_combout\);

-- Location: CLKCTRL_G14
\U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~clkctrl_outclk\);

-- Location: LCCOMB_X16_Y21_N16
\U_ALU_TO_TDO|temp_reg[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_TO_TDO|temp_reg[0]~feeder_combout\ = \U_ALU_TO_TDO|temp_reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_ALU_TO_TDO|temp_reg\(1),
	combout => \U_ALU_TO_TDO|temp_reg[0]~feeder_combout\);

-- Location: LCCOMB_X19_Y21_N18
\U_ALU_TO_TDO|state.OUT_2~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_TO_TDO|state.OUT_2~feeder_combout\ = \U_ALU_TO_TDO|state.OUT_1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_ALU_TO_TDO|state.OUT_1~q\,
	combout => \U_ALU_TO_TDO|state.OUT_2~feeder_combout\);

-- Location: LCCOMB_X19_Y21_N8
\U_ALU_TO_TDO|state.OUT_6~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_TO_TDO|state.OUT_6~feeder_combout\ = \U_ALU_TO_TDO|state.OUT_5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_ALU_TO_TDO|state.OUT_5~q\,
	combout => \U_ALU_TO_TDO|state.OUT_6~feeder_combout\);

-- Location: LCCOMB_X16_Y21_N8
\U_ALU_TO_TDO|temp_reg[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_TO_TDO|temp_reg[2]~feeder_combout\ = \U_ALU_TO_TDO|temp_reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_ALU_TO_TDO|temp_reg\(3),
	combout => \U_ALU_TO_TDO|temp_reg[2]~feeder_combout\);

-- Location: LCCOMB_X19_Y19_N10
\U_ADDR_TOP|U_logic|addr_reg[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADDR_TOP|U_logic|addr_reg[5]~feeder_combout\ = \U_ADDR_TOP|U_addrreg|output\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_ADDR_TOP|U_addrreg|output\(5),
	combout => \U_ADDR_TOP|U_logic|addr_reg[5]~feeder_combout\);

-- Location: LCCOMB_X16_Y21_N2
\U_ALU_TO_TDO|temp_reg[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_TO_TDO|temp_reg[3]~feeder_combout\ = \U_ALU_TO_TDO|temp_reg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_ALU_TO_TDO|temp_reg\(4),
	combout => \U_ALU_TO_TDO|temp_reg[3]~feeder_combout\);

-- Location: LCCOMB_X16_Y21_N30
\U_ALU_TO_TDO|temp_reg[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_TO_TDO|temp_reg[5]~feeder_combout\ = \U_ALU_TO_TDO|temp_reg\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_ALU_TO_TDO|temp_reg\(6),
	combout => \U_ALU_TO_TDO|temp_reg[5]~feeder_combout\);

-- Location: LCCOMB_X16_Y21_N0
\U_ALU_TO_TDO|temp_reg[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_TO_TDO|temp_reg[6]~feeder_combout\ = \U_ALU_TO_TDO|temp_reg\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_ALU_TO_TDO|temp_reg\(7),
	combout => \U_ALU_TO_TDO|temp_reg[6]~feeder_combout\);

-- Location: LCCOMB_X17_Y16_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]~feeder_combout\);

-- Location: LCCOMB_X17_Y16_N14
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~feeder_combout\);

-- Location: LCCOMB_X17_Y16_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][4]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][4]~feeder_combout\);

-- Location: LCCOMB_X17_Y16_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][5]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(5),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][5]~feeder_combout\);

-- Location: LCCOMB_X17_Y16_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][6]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(6),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][6]~feeder_combout\);

-- Location: LCCOMB_X17_Y16_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(7),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~feeder_combout\);

-- Location: LCCOMB_X16_Y18_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[3]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[3]~feeder_combout\);

-- Location: IOOBUF_X26_Y29_N30
\ov_flag~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_ALU_NS|Mux8~8_combout\,
	devoe => ww_devoe,
	o => ww_ov_flag);

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

-- Location: IOOBUF_X0_Y20_N9
\output[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_OUT_REG|output\(0),
	devoe => ww_devoe,
	o => ww_output(0));

-- Location: IOOBUF_X0_Y20_N2
\output[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_OUT_REG|output\(1),
	devoe => ww_devoe,
	o => ww_output(1));

-- Location: IOOBUF_X0_Y21_N23
\output[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_OUT_REG|output\(2),
	devoe => ww_devoe,
	o => ww_output(2));

-- Location: IOOBUF_X0_Y21_N16
\output[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_OUT_REG|output\(3),
	devoe => ww_devoe,
	o => ww_output(3));

-- Location: IOOBUF_X0_Y24_N23
\output[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_OUT_REG|output\(4),
	devoe => ww_devoe,
	o => ww_output(4));

-- Location: IOOBUF_X0_Y24_N16
\output[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_OUT_REG|output\(5),
	devoe => ww_devoe,
	o => ww_output(5));

-- Location: IOOBUF_X0_Y26_N23
\output[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_OUT_REG|output\(6),
	devoe => ww_devoe,
	o => ww_output(6));

-- Location: IOOBUF_X0_Y26_N16
\output[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_OUT_REG|output\(7),
	devoe => ww_devoe,
	o => ww_output(7));

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

-- Location: IOIBUF_X0_Y27_N1
\alu_sel[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_sel(1),
	o => \alu_sel[1]~input_o\);

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

-- Location: LCCOMB_X15_Y19_N18
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

-- Location: FF_X15_Y19_N19
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

-- Location: LCCOMB_X15_Y19_N24
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

-- Location: FF_X15_Y19_N25
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

-- Location: LCCOMB_X15_Y17_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~1\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~1_combout\);

-- Location: FF_X15_Y17_N3
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

-- Location: LCCOMB_X15_Y19_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~8\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(9),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~8_combout\);

-- Location: FF_X15_Y19_N29
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

-- Location: LCCOMB_X15_Y19_N16
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

-- Location: FF_X15_Y19_N17
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

-- Location: LCCOMB_X15_Y19_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~10\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(10),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~10_combout\);

-- Location: FF_X15_Y19_N23
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

-- Location: LCCOMB_X15_Y19_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_dr_scan_proc~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(14),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(12),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_dr_scan_proc~0_combout\);

-- Location: FF_X15_Y19_N27
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

-- Location: LCCOMB_X14_Y19_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(2),
	datab => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(9),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~0_combout\);

-- Location: FF_X14_Y19_N9
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

-- Location: LCCOMB_X15_Y17_N14
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~1\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(15),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~1_combout\);

-- Location: FF_X15_Y17_N15
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

-- Location: LCCOMB_X15_Y17_N0
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

-- Location: FF_X15_Y17_N1
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

-- Location: LCCOMB_X15_Y17_N4
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

-- Location: FF_X15_Y17_N5
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

-- Location: LCCOMB_X14_Y17_N30
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

-- Location: LCCOMB_X15_Y17_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~5\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datab => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~5_combout\);

-- Location: FF_X16_Y17_N27
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

-- Location: LCCOMB_X15_Y17_N22
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

-- Location: FF_X15_Y17_N23
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

-- Location: LCCOMB_X16_Y17_N4
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

-- Location: FF_X16_Y17_N5
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

-- Location: LCCOMB_X15_Y17_N28
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

-- Location: FF_X15_Y17_N29
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

-- Location: LCCOMB_X15_Y17_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~4\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datac => \altera_internal_jtag~TDIUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(8),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~4_combout\);

-- Location: LCCOMB_X16_Y16_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[8]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~4_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[8]~feeder_combout\);

-- Location: LCCOMB_X16_Y17_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg_proc~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(7),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(5),
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg_proc~0_combout\);

-- Location: FF_X17_Y16_N9
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

-- Location: LCCOMB_X16_Y17_N6
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

-- Location: FF_X14_Y19_N3
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

-- Location: LCCOMB_X14_Y19_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[8]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(9),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[8]~feeder_combout\);

-- Location: FF_X14_Y19_N13
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

-- Location: LCCOMB_X14_Y19_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[7]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(8),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[7]~feeder_combout\);

-- Location: FF_X14_Y19_N23
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

-- Location: FF_X14_Y19_N1
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

-- Location: FF_X14_Y19_N21
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

-- Location: LCCOMB_X14_Y19_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[4]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(5),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[4]~feeder_combout\);

-- Location: FF_X14_Y19_N7
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

-- Location: LCCOMB_X14_Y19_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[3]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[3]~feeder_combout\);

-- Location: FF_X14_Y19_N27
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

-- Location: LCCOMB_X14_Y19_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[2]~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[2]~0_combout\);

-- Location: FF_X14_Y19_N25
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

-- Location: LCCOMB_X14_Y19_N20
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

-- Location: LCCOMB_X14_Y19_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[1]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[1]~feeder_combout\);

-- Location: FF_X14_Y19_N19
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

-- Location: LCCOMB_X14_Y19_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[0]~1\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[0]~1_combout\);

-- Location: FF_X14_Y19_N5
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

-- Location: LCCOMB_X14_Y19_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(7),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(6),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(9),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(8),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~0_combout\);

-- Location: LCCOMB_X14_Y17_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal1~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(1),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~1_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~0_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal1~0_combout\);

-- Location: FF_X14_Y17_N17
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

-- Location: FF_X16_Y17_N7
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

-- Location: LCCOMB_X16_Y17_N8
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

-- Location: FF_X16_Y17_N9
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

-- Location: FF_X16_Y16_N1
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

-- Location: LCCOMB_X17_Y16_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal3~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal3~0_combout\);

-- Location: LCCOMB_X17_Y16_N4
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

-- Location: FF_X17_Y16_N5
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

-- Location: LCCOMB_X16_Y16_N22
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

-- Location: LCCOMB_X16_Y16_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~8\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(8),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~7_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~8_combout\);

-- Location: LCCOMB_X16_Y16_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~9\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~6_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~8_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~9_combout\);

-- Location: FF_X17_Y16_N25
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

-- Location: LCCOMB_X16_Y16_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~3\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datac => \~GND~combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~3_combout\);

-- Location: LCCOMB_X17_Y16_N24
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

-- Location: LCCOMB_X16_Y16_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~2\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[2]~1_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~2_combout\);

-- Location: FF_X16_Y16_N29
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

-- Location: LCCOMB_X16_Y16_N14
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~5\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datac => \~GND~combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~5_combout\);

-- Location: FF_X16_Y16_N15
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

-- Location: LCCOMB_X16_Y16_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datac => \~GND~combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~0_combout\);

-- Location: FF_X16_Y16_N3
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

-- Location: LCCOMB_X15_Y16_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~4\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~3_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~4_combout\);

-- Location: LCCOMB_X15_Y18_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]~5\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	datad => VCC,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]~5_combout\,
	cout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]~6\);

-- Location: LCCOMB_X15_Y18_N4
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

-- Location: LCCOMB_X15_Y18_N6
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

-- Location: LCCOMB_X15_Y17_N30
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_proc~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(7),
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(5),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_proc~0_combout\);

-- Location: FF_X15_Y17_N31
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

-- Location: LCCOMB_X14_Y17_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~8\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~q\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~8_combout\);

-- Location: FF_X15_Y18_N7
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

-- Location: LCCOMB_X15_Y18_N14
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~7\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~7_combout\);

-- Location: LCCOMB_X15_Y18_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~15\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	cin => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]~14\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~15_combout\);

-- Location: FF_X15_Y18_N9
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

-- Location: LCCOMB_X15_Y18_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~7\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~7_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~7_combout\);

-- Location: FF_X15_Y18_N1
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

-- Location: LCCOMB_X15_Y18_N2
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

-- Location: FF_X15_Y18_N3
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

-- Location: FF_X15_Y18_N5
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

-- Location: LCCOMB_X15_Y18_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~4\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~4_combout\);

-- Location: LCCOMB_X16_Y18_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[3]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[3]~feeder_combout\);

-- Location: LCCOMB_X14_Y17_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~2\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(1),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~1_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~0_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~2_combout\);

-- Location: FF_X14_Y17_N21
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

-- Location: LCCOMB_X15_Y16_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~0_combout\);

-- Location: LCCOMB_X15_Y16_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~1\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(8),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~0_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~1_combout\);

-- Location: FF_X16_Y18_N1
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

-- Location: LCCOMB_X16_Y18_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[2]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[2]~feeder_combout\);

-- Location: FF_X16_Y18_N13
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

-- Location: LCCOMB_X16_Y18_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[1]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[1]~feeder_combout\);

-- Location: FF_X16_Y18_N9
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

-- Location: FF_X16_Y18_N27
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

-- Location: LCCOMB_X15_Y16_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~0_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(8),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~0_combout\);

-- Location: FF_X16_Y18_N25
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(0),
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(0));

-- Location: LCCOMB_X16_Y18_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~5\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~5_combout\);

-- Location: LCCOMB_X15_Y18_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~6\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~5_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~6_combout\);

-- Location: LCCOMB_X14_Y18_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[0]~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~4_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~6_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[0]~0_combout\);

-- Location: LCCOMB_X15_Y18_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~8\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~8_combout\);

-- Location: LCCOMB_X16_Y18_N14
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~9\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~9_combout\);

-- Location: FF_X16_Y18_N21
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(1),
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(1));

-- Location: LCCOMB_X16_Y18_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~10\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~9_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~10_combout\);

-- Location: LCCOMB_X14_Y18_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[1]~1\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~8_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~10_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[1]~1_combout\);

-- Location: LCCOMB_X15_Y18_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~11\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~11_combout\);

-- Location: LCCOMB_X15_Y18_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~12\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~11_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~12_combout\);

-- Location: LCCOMB_X16_Y18_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[2]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[2]~feeder_combout\);

-- Location: FF_X16_Y18_N19
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

-- Location: LCCOMB_X14_Y18_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[2]~2\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~16_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~12_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[2]~2_combout\);

-- Location: LCCOMB_X15_Y18_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~14\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~13_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~7_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~14_combout\);

-- Location: LCCOMB_X14_Y18_N30
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~3\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(3),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~14_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~12_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~3_combout\);

-- Location: LCCOMB_X14_Y17_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_proc~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~q\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_proc~0_combout\);

-- Location: LCCOMB_X14_Y17_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~q\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~combout\);

-- Location: FF_X14_Y18_N31
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

-- Location: FF_X14_Y18_N5
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

-- Location: FF_X14_Y18_N27
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

-- Location: FF_X14_Y18_N1
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

-- Location: LCCOMB_X15_Y16_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~5\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110100111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~2_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~4_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~5_combout\);

-- Location: LCCOMB_X15_Y16_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~0_combout\);

-- Location: FF_X15_Y16_N17
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

-- Location: LCCOMB_X15_Y16_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~_wirecell\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~q\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~_wirecell_combout\);

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

-- Location: LCCOMB_X15_Y17_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datac => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~0_combout\);

-- Location: LCCOMB_X15_Y17_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~2\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~0_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(15),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~2_combout\);

-- Location: LCCOMB_X15_Y17_N20
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

-- Location: FF_X15_Y17_N21
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

-- Location: LCCOMB_X15_Y17_N12
\U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~combout\ = LCELL((!\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\ & (\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4) & 
-- \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_q\,
	combout => \U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~combout\);

-- Location: LCCOMB_X17_Y16_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~feeder\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~feeder_combout\);

-- Location: LCCOMB_X16_Y16_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(8),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg_proc~0_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0_combout\);

-- Location: FF_X17_Y16_N1
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

-- Location: LCCOMB_X16_Y19_N16
\U_SR_V2|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SR_V2|process_0~0_combout\ = (\U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~combout\ & \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~q\,
	combout => \U_SR_V2|process_0~0_combout\);

-- Location: FF_X17_Y19_N25
\U_SR_V2|temp[7]\ : dffeas
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
	ena => \U_SR_V2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SR_V2|temp\(7));

-- Location: LCCOMB_X17_Y19_N10
\U_SR_V2|temp[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SR_V2|temp[6]~feeder_combout\ = \U_SR_V2|temp\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_SR_V2|temp\(7),
	combout => \U_SR_V2|temp[6]~feeder_combout\);

-- Location: FF_X17_Y19_N11
\U_SR_V2|temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_SR_V2|temp[6]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_SR_V2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SR_V2|temp\(6));

-- Location: LCCOMB_X17_Y19_N6
\U_SR_V2|temp[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SR_V2|temp[5]~feeder_combout\ = \U_SR_V2|temp\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_SR_V2|temp\(6),
	combout => \U_SR_V2|temp[5]~feeder_combout\);

-- Location: FF_X17_Y19_N7
\U_SR_V2|temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_SR_V2|temp[5]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_SR_V2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SR_V2|temp\(5));

-- Location: LCCOMB_X17_Y19_N12
\U_SR_V2|temp[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SR_V2|temp[4]~feeder_combout\ = \U_SR_V2|temp\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_SR_V2|temp\(5),
	combout => \U_SR_V2|temp[4]~feeder_combout\);

-- Location: FF_X17_Y19_N13
\U_SR_V2|temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_SR_V2|temp[4]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_SR_V2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SR_V2|temp\(4));

-- Location: LCCOMB_X17_Y19_N20
\U_SR_V2|temp[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SR_V2|temp[3]~feeder_combout\ = \U_SR_V2|temp\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_SR_V2|temp\(4),
	combout => \U_SR_V2|temp[3]~feeder_combout\);

-- Location: FF_X17_Y19_N21
\U_SR_V2|temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_SR_V2|temp[3]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_SR_V2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SR_V2|temp\(3));

-- Location: LCCOMB_X17_Y19_N14
\U_SR_V2|temp[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SR_V2|temp[2]~feeder_combout\ = \U_SR_V2|temp\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_SR_V2|temp\(3),
	combout => \U_SR_V2|temp[2]~feeder_combout\);

-- Location: FF_X17_Y19_N15
\U_SR_V2|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_SR_V2|temp[2]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_SR_V2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SR_V2|temp\(2));

-- Location: FF_X17_Y19_N19
\U_SR_V2|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_SR_V2|temp\(2),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_SR_V2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SR_V2|temp\(1));

-- Location: LCCOMB_X17_Y19_N16
\U_SR_V2|temp[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SR_V2|temp[0]~feeder_combout\ = \U_SR_V2|temp\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_SR_V2|temp\(1),
	combout => \U_SR_V2|temp[0]~feeder_combout\);

-- Location: FF_X17_Y19_N17
\U_SR_V2|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_SR_V2|temp[0]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_SR_V2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SR_V2|temp\(0));

-- Location: LCCOMB_X17_Y19_N0
\U_SR_V2|output[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SR_V2|output[0]~feeder_combout\ = \U_SR_V2|temp\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_SR_V2|temp\(0),
	combout => \U_SR_V2|output[0]~feeder_combout\);

-- Location: LCCOMB_X15_Y17_N24
\U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_udr~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_udr~0_combout\ = (!\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\ & (\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_q\ & 
-- \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_q\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	combout => \U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_udr~0_combout\);

-- Location: FF_X17_Y19_N1
\U_SR_V2|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_SR_V2|output[0]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_udr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SR_V2|output\(0));

-- Location: LCCOMB_X21_Y19_N16
\U_ADDR_TOP|U_addrcount|count[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADDR_TOP|U_addrcount|count[0]~1_combout\ = !\U_ADDR_TOP|U_addrcount|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_ADDR_TOP|U_addrcount|count\(0),
	combout => \U_ADDR_TOP|U_addrcount|count[0]~1_combout\);

-- Location: FF_X21_Y19_N17
\U_ADDR_TOP|U_addrcount|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~clkctrl_outclk\,
	d => \U_ADDR_TOP|U_addrcount|count[0]~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ADDR_TOP|U_addrcount|count\(0));

-- Location: LCCOMB_X21_Y19_N28
\U_ADDR_TOP|U_logic|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADDR_TOP|U_logic|Equal0~0_combout\ = (!\U_ADDR_TOP|U_addrcount|count\(1) & !\U_ADDR_TOP|U_addrcount|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADDR_TOP|U_addrcount|count\(1),
	datad => \U_ADDR_TOP|U_addrcount|count\(0),
	combout => \U_ADDR_TOP|U_logic|Equal0~0_combout\);

-- Location: FF_X21_Y19_N29
\U_ADDR_TOP|U_addrcount|output\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_sdr~clkctrl_outclk\,
	d => \U_ADDR_TOP|U_logic|Equal0~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ADDR_TOP|U_addrcount|output~q\);

-- Location: FF_X19_Y19_N23
\U_ADDR_TOP|U_addrreg|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_SR_V2|output\(0),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_ADDR_TOP|U_addrcount|output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ADDR_TOP|U_addrreg|output\(0));

-- Location: LCCOMB_X19_Y19_N14
\U_ADDR_TOP|U_logic|addr_reg[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADDR_TOP|U_logic|addr_reg[0]~feeder_combout\ = \U_ADDR_TOP|U_addrreg|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_ADDR_TOP|U_addrreg|output\(0),
	combout => \U_ADDR_TOP|U_logic|addr_reg[0]~feeder_combout\);

-- Location: FF_X19_Y19_N15
\U_ADDR_TOP|U_logic|addr_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_ADDR_TOP|U_logic|addr_reg[0]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_ADDR_TOP|U_logic|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ADDR_TOP|U_logic|addr_reg\(0));

-- Location: LCCOMB_X17_Y19_N26
\U_SR_V2|output[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SR_V2|output[1]~feeder_combout\ = \U_SR_V2|temp\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_SR_V2|temp\(1),
	combout => \U_SR_V2|output[1]~feeder_combout\);

-- Location: FF_X17_Y19_N27
\U_SR_V2|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_SR_V2|output[1]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_udr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SR_V2|output\(1));

-- Location: FF_X19_Y19_N29
\U_ADDR_TOP|U_addrreg|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_SR_V2|output\(1),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_ADDR_TOP|U_addrcount|output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ADDR_TOP|U_addrreg|output\(1));

-- Location: LCCOMB_X19_Y19_N0
\U_ADDR_TOP|U_logic|addr_reg[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADDR_TOP|U_logic|addr_reg[1]~feeder_combout\ = \U_ADDR_TOP|U_addrreg|output\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_ADDR_TOP|U_addrreg|output\(1),
	combout => \U_ADDR_TOP|U_logic|addr_reg[1]~feeder_combout\);

-- Location: FF_X19_Y19_N1
\U_ADDR_TOP|U_logic|addr_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_ADDR_TOP|U_logic|addr_reg[1]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_ADDR_TOP|U_logic|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ADDR_TOP|U_logic|addr_reg\(1));

-- Location: LCCOMB_X17_Y19_N4
\U_SR_V2|output[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SR_V2|output[3]~feeder_combout\ = \U_SR_V2|temp\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_SR_V2|temp\(3),
	combout => \U_SR_V2|output[3]~feeder_combout\);

-- Location: FF_X17_Y19_N5
\U_SR_V2|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_SR_V2|output[3]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_udr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SR_V2|output\(3));

-- Location: FF_X19_Y19_N3
\U_ADDR_TOP|U_addrreg|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_SR_V2|output\(3),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_ADDR_TOP|U_addrcount|output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ADDR_TOP|U_addrreg|output\(3));

-- Location: LCCOMB_X19_Y19_N20
\U_ADDR_TOP|U_logic|addr_reg[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADDR_TOP|U_logic|addr_reg[3]~feeder_combout\ = \U_ADDR_TOP|U_addrreg|output\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_ADDR_TOP|U_addrreg|output\(3),
	combout => \U_ADDR_TOP|U_logic|addr_reg[3]~feeder_combout\);

-- Location: FF_X19_Y19_N21
\U_ADDR_TOP|U_logic|addr_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_ADDR_TOP|U_logic|addr_reg[3]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_ADDR_TOP|U_logic|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ADDR_TOP|U_logic|addr_reg\(3));

-- Location: LCCOMB_X17_Y19_N28
\U_SR_V2|output[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SR_V2|output[4]~feeder_combout\ = \U_SR_V2|temp\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_SR_V2|temp\(4),
	combout => \U_SR_V2|output[4]~feeder_combout\);

-- Location: FF_X17_Y19_N29
\U_SR_V2|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_SR_V2|output[4]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_udr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SR_V2|output\(4));

-- Location: LCCOMB_X19_Y19_N30
\U_ADDR_TOP|U_addrreg|output[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADDR_TOP|U_addrreg|output[4]~feeder_combout\ = \U_SR_V2|output\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_SR_V2|output\(4),
	combout => \U_ADDR_TOP|U_addrreg|output[4]~feeder_combout\);

-- Location: FF_X19_Y19_N31
\U_ADDR_TOP|U_addrreg|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_ADDR_TOP|U_addrreg|output[4]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_ADDR_TOP|U_addrcount|output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ADDR_TOP|U_addrreg|output\(4));

-- Location: FF_X19_Y19_N13
\U_ADDR_TOP|U_logic|addr_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_ADDR_TOP|U_addrreg|output\(4),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_ADDR_TOP|U_logic|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ADDR_TOP|U_logic|addr_reg\(4));

-- Location: LCCOMB_X19_Y19_N4
\U_ADDR_TOP|U_logic|addr_or_data~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADDR_TOP|U_logic|addr_or_data~0_combout\ = !\U_ADDR_TOP|U_logic|addr_or_data~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_ADDR_TOP|U_logic|addr_or_data~q\,
	combout => \U_ADDR_TOP|U_logic|addr_or_data~0_combout\);

-- Location: FF_X19_Y19_N5
\U_ADDR_TOP|U_logic|addr_or_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_ADDR_TOP|U_logic|addr_or_data~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_ADDR_TOP|U_logic|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ADDR_TOP|U_logic|addr_or_data~q\);

-- Location: LCCOMB_X17_Y19_N8
\U_SR_V2|output[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SR_V2|output[7]~feeder_combout\ = \U_SR_V2|temp\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_SR_V2|temp\(7),
	combout => \U_SR_V2|output[7]~feeder_combout\);

-- Location: FF_X17_Y19_N9
\U_SR_V2|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_SR_V2|output[7]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_udr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SR_V2|output\(7));

-- Location: FF_X19_Y19_N9
\U_ADDR_TOP|U_addrreg|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_SR_V2|output\(7),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_ADDR_TOP|U_addrcount|output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ADDR_TOP|U_addrreg|output\(7));

-- Location: FF_X19_Y19_N17
\U_ADDR_TOP|U_logic|addr_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_ADDR_TOP|U_addrreg|output\(7),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_ADDR_TOP|U_logic|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ADDR_TOP|U_logic|addr_reg\(7));

-- Location: LCCOMB_X17_Y19_N2
\U_SR_V2|output[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SR_V2|output[6]~feeder_combout\ = \U_SR_V2|temp\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_SR_V2|temp\(6),
	combout => \U_SR_V2|output[6]~feeder_combout\);

-- Location: FF_X17_Y19_N3
\U_SR_V2|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_SR_V2|output[6]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_udr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SR_V2|output\(6));

-- Location: FF_X20_Y19_N13
\U_ADDR_TOP|U_addrreg|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_SR_V2|output\(6),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_ADDR_TOP|U_addrcount|output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ADDR_TOP|U_addrreg|output\(6));

-- Location: FF_X19_Y19_N19
\U_ADDR_TOP|U_logic|addr_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_ADDR_TOP|U_addrreg|output\(6),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_ADDR_TOP|U_logic|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ADDR_TOP|U_logic|addr_reg\(6));

-- Location: LCCOMB_X19_Y19_N16
\U_ADDR_TOP|U_logic|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADDR_TOP|U_logic|Mux1~0_combout\ = (!\U_ADDR_TOP|U_logic|addr_reg\(5) & (\U_ADDR_TOP|U_logic|addr_or_data~q\ & (!\U_ADDR_TOP|U_logic|addr_reg\(7) & !\U_ADDR_TOP|U_logic|addr_reg\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADDR_TOP|U_logic|addr_reg\(5),
	datab => \U_ADDR_TOP|U_logic|addr_or_data~q\,
	datac => \U_ADDR_TOP|U_logic|addr_reg\(7),
	datad => \U_ADDR_TOP|U_logic|addr_reg\(6),
	combout => \U_ADDR_TOP|U_logic|Mux1~0_combout\);

-- Location: LCCOMB_X19_Y19_N12
\U_ADDR_TOP|U_logic|Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADDR_TOP|U_logic|Mux1~1_combout\ = (!\U_ADDR_TOP|U_logic|addr_reg\(2) & (!\U_ADDR_TOP|U_logic|addr_reg\(3) & (!\U_ADDR_TOP|U_logic|addr_reg\(4) & \U_ADDR_TOP|U_logic|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADDR_TOP|U_logic|addr_reg\(2),
	datab => \U_ADDR_TOP|U_logic|addr_reg\(3),
	datac => \U_ADDR_TOP|U_logic|addr_reg\(4),
	datad => \U_ADDR_TOP|U_logic|Mux1~0_combout\,
	combout => \U_ADDR_TOP|U_logic|Mux1~1_combout\);

-- Location: LCCOMB_X19_Y21_N16
\U_ADDR_TOP|U_logic|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADDR_TOP|U_logic|Mux0~0_combout\ = (\U_ADDR_TOP|U_logic|addr_reg\(0) & (!\U_ADDR_TOP|U_logic|addr_reg\(1) & \U_ADDR_TOP|U_logic|Mux1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_ADDR_TOP|U_logic|addr_reg\(0),
	datac => \U_ADDR_TOP|U_logic|addr_reg\(1),
	datad => \U_ADDR_TOP|U_logic|Mux1~1_combout\,
	combout => \U_ADDR_TOP|U_logic|Mux0~0_combout\);

-- Location: FF_X19_Y21_N17
\U_ADDR_TOP|U_logic|sel_a_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_ADDR_TOP|U_logic|Mux0~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ADDR_TOP|U_logic|sel_a_reg~q\);

-- Location: LCCOMB_X19_Y21_N20
\U_ADDR_TOP|U_logic|temp_a~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADDR_TOP|U_logic|temp_a~feeder_combout\ = \U_ADDR_TOP|U_logic|sel_a_reg~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_ADDR_TOP|U_logic|sel_a_reg~q\,
	combout => \U_ADDR_TOP|U_logic|temp_a~feeder_combout\);

-- Location: FF_X19_Y21_N21
\U_ADDR_TOP|U_logic|temp_a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_ADDR_TOP|U_logic|temp_a~feeder_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ADDR_TOP|U_logic|temp_a~q\);

-- Location: FF_X17_Y19_N31
\U_SR_V2|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_SR_V2|temp\(2),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_udr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SR_V2|output\(2));

-- Location: LCCOMB_X17_Y19_N22
\U_SR_V2|output[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SR_V2|output[5]~feeder_combout\ = \U_SR_V2|temp\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_SR_V2|temp\(5),
	combout => \U_SR_V2|output[5]~feeder_combout\);

-- Location: FF_X17_Y19_N23
\U_SR_V2|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_SR_V2|output[5]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_vJTAG|sld_virtual_jtag_component|sld_virtual_jtag_basic_inst|virtual_state_udr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SR_V2|output\(5));

-- Location: LCCOMB_X19_Y21_N24
\U_ADDR_TOP|U_logic|Mux1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADDR_TOP|U_logic|Mux1~2_combout\ = (!\U_ADDR_TOP|U_logic|addr_reg\(0) & (\U_ADDR_TOP|U_logic|addr_reg\(1) & \U_ADDR_TOP|U_logic|Mux1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_ADDR_TOP|U_logic|addr_reg\(0),
	datac => \U_ADDR_TOP|U_logic|addr_reg\(1),
	datad => \U_ADDR_TOP|U_logic|Mux1~1_combout\,
	combout => \U_ADDR_TOP|U_logic|Mux1~2_combout\);

-- Location: FF_X19_Y21_N25
\U_ADDR_TOP|U_logic|sel_b_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_ADDR_TOP|U_logic|Mux1~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ADDR_TOP|U_logic|sel_b_reg~q\);

-- Location: LCCOMB_X19_Y21_N26
\U_ADDR_TOP|U_logic|temp_b~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADDR_TOP|U_logic|temp_b~feeder_combout\ = \U_ADDR_TOP|U_logic|sel_b_reg~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_ADDR_TOP|U_logic|sel_b_reg~q\,
	combout => \U_ADDR_TOP|U_logic|temp_b~feeder_combout\);

-- Location: FF_X19_Y21_N27
\U_ADDR_TOP|U_logic|temp_b\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_ADDR_TOP|U_logic|temp_b~feeder_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ADDR_TOP|U_logic|temp_b~q\);

-- Location: FF_X20_Y20_N11
\U_B_REG|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_SR_V2|output\(0),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_ADDR_TOP|U_logic|temp_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_B_REG|output\(0));

-- Location: FF_X19_Y20_N15
\U_B_REG|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_SR_V2|output\(1),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_ADDR_TOP|U_logic|temp_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_B_REG|output\(1));

-- Location: FF_X19_Y20_N19
\U_B_REG|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_SR_V2|output\(2),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_ADDR_TOP|U_logic|temp_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_B_REG|output\(2));

-- Location: FF_X19_Y20_N13
\U_B_REG|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_SR_V2|output\(3),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_ADDR_TOP|U_logic|temp_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_B_REG|output\(3));

-- Location: FF_X19_Y20_N17
\U_B_REG|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_SR_V2|output\(4),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_ADDR_TOP|U_logic|temp_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_B_REG|output\(4));

-- Location: FF_X19_Y20_N29
\U_B_REG|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_SR_V2|output\(5),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_ADDR_TOP|U_logic|temp_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_B_REG|output\(5));

-- Location: FF_X20_Y20_N23
\U_B_REG|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_SR_V2|output\(6),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_ADDR_TOP|U_logic|temp_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_B_REG|output\(6));

-- Location: FF_X20_Y20_N1
\U_B_REG|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_SR_V2|output\(7),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_ADDR_TOP|U_logic|temp_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_B_REG|output\(7));

-- Location: DSPMULT_X18_Y20_N0
\U_ALU_NS|Mult0|auto_generated|mac_mult1\ : cycloneiii_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 9,
	datab_clock => "none",
	datab_width => 9,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	aclr => \rst~input_o\,
	ena => \U_ADDR_TOP|U_logic|temp_a~q\,
	dataa => \U_ALU_NS|Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \U_ALU_NS|Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \U_ALU_NS|Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: LCCOMB_X16_Y20_N16
\U_ALU_NS|Mux8~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux8~6_combout\ = (\U_ALU_NS|Mult0|auto_generated|mac_out2~DATAOUT14\) # ((\U_ALU_NS|Mult0|auto_generated|mac_out2~DATAOUT11\) # ((\U_ALU_NS|Mult0|auto_generated|mac_out2~DATAOUT12\) # (\U_ALU_NS|Mult0|auto_generated|mac_out2~DATAOUT10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU_NS|Mult0|auto_generated|mac_out2~DATAOUT14\,
	datab => \U_ALU_NS|Mult0|auto_generated|mac_out2~DATAOUT11\,
	datac => \U_ALU_NS|Mult0|auto_generated|mac_out2~DATAOUT12\,
	datad => \U_ALU_NS|Mult0|auto_generated|mac_out2~DATAOUT10\,
	combout => \U_ALU_NS|Mux8~6_combout\);

-- Location: LCCOMB_X17_Y20_N0
\U_ALU_NS|Mux8~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux8~5_combout\ = (\U_ALU_NS|Mult0|auto_generated|mac_out2~DATAOUT15\) # ((\U_ALU_NS|Mult0|auto_generated|mac_out2~DATAOUT13\) # ((\U_ALU_NS|Mult0|auto_generated|mac_out2~DATAOUT8\) # (\U_ALU_NS|Mult0|auto_generated|mac_out2~DATAOUT9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU_NS|Mult0|auto_generated|mac_out2~DATAOUT15\,
	datab => \U_ALU_NS|Mult0|auto_generated|mac_out2~DATAOUT13\,
	datac => \U_ALU_NS|Mult0|auto_generated|mac_out2~DATAOUT8\,
	datad => \U_ALU_NS|Mult0|auto_generated|mac_out2~DATAOUT9\,
	combout => \U_ALU_NS|Mux8~5_combout\);

-- Location: LCCOMB_X17_Y20_N26
\U_ALU_NS|Mux8~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux8~7_combout\ = (!\alu_sel[3]~input_o\ & (\alu_sel[1]~input_o\ & ((\U_ALU_NS|Mux8~6_combout\) # (\U_ALU_NS|Mux8~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_sel[3]~input_o\,
	datab => \alu_sel[1]~input_o\,
	datac => \U_ALU_NS|Mux8~6_combout\,
	datad => \U_ALU_NS|Mux8~5_combout\,
	combout => \U_ALU_NS|Mux8~7_combout\);

-- Location: IOIBUF_X0_Y24_N1
\alu_sel[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_sel(0),
	o => \alu_sel[0]~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\alu_sel[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_sel(2),
	o => \alu_sel[2]~input_o\);

-- Location: IOIBUF_X0_Y23_N8
\alu_sel[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_sel(3),
	o => \alu_sel[3]~input_o\);

-- Location: FF_X20_Y19_N19
\U_A_REG|output[7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_SR_V2|output\(7),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_ADDR_TOP|U_logic|temp_a~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_A_REG|output[7]~_Duplicate_1_q\);

-- Location: FF_X19_Y20_N25
\U_A_REG|output[1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_SR_V2|output\(1),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_ADDR_TOP|U_logic|temp_a~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_A_REG|output[1]~_Duplicate_1_q\);

-- Location: FF_X19_Y20_N21
\U_A_REG|output[0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_SR_V2|output\(0),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_ADDR_TOP|U_logic|temp_a~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_A_REG|output[0]~_Duplicate_1_q\);

-- Location: LCCOMB_X19_Y20_N14
\U_ALU_NS|v_carry~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|v_carry~0_combout\ = (\U_A_REG|output[1]~_Duplicate_1_q\ & ((\U_B_REG|output\(1)) # ((\U_B_REG|output\(0) & \U_A_REG|output[0]~_Duplicate_1_q\)))) # (!\U_A_REG|output[1]~_Duplicate_1_q\ & (\U_B_REG|output\(0) & (\U_B_REG|output\(1) & 
-- \U_A_REG|output[0]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_B_REG|output\(0),
	datab => \U_A_REG|output[1]~_Duplicate_1_q\,
	datac => \U_B_REG|output\(1),
	datad => \U_A_REG|output[0]~_Duplicate_1_q\,
	combout => \U_ALU_NS|v_carry~0_combout\);

-- Location: LCCOMB_X19_Y20_N18
\U_ALU_NS|v_carry~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|v_carry~1_combout\ = (\U_ALU_NS|v_carry~0_combout\ & \U_B_REG|output\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_ALU_NS|v_carry~0_combout\,
	datac => \U_B_REG|output\(2),
	combout => \U_ALU_NS|v_carry~1_combout\);

-- Location: FF_X19_Y20_N11
\U_A_REG|output[2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_SR_V2|output\(2),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_ADDR_TOP|U_logic|temp_a~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_A_REG|output[2]~_Duplicate_1_q\);

-- Location: LCCOMB_X19_Y20_N10
\U_ALU_NS|v_carry~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|v_carry~2_combout\ = (\U_A_REG|output[2]~_Duplicate_1_q\ & ((\U_ALU_NS|v_carry~0_combout\) # (\U_B_REG|output\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_ALU_NS|v_carry~0_combout\,
	datac => \U_A_REG|output[2]~_Duplicate_1_q\,
	datad => \U_B_REG|output\(2),
	combout => \U_ALU_NS|v_carry~2_combout\);

-- Location: LCCOMB_X19_Y20_N12
\U_ALU_NS|v_carry~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|v_carry~3_combout\ = (\U_A_REG|output[3]~_Duplicate_1_q\ & ((\U_ALU_NS|v_carry~1_combout\) # ((\U_B_REG|output\(3)) # (\U_ALU_NS|v_carry~2_combout\)))) # (!\U_A_REG|output[3]~_Duplicate_1_q\ & (\U_B_REG|output\(3) & 
-- ((\U_ALU_NS|v_carry~1_combout\) # (\U_ALU_NS|v_carry~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_A_REG|output[3]~_Duplicate_1_q\,
	datab => \U_ALU_NS|v_carry~1_combout\,
	datac => \U_B_REG|output\(3),
	datad => \U_ALU_NS|v_carry~2_combout\,
	combout => \U_ALU_NS|v_carry~3_combout\);

-- Location: LCCOMB_X19_Y20_N2
\U_ALU_NS|v_carry~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|v_carry~5_combout\ = (\U_A_REG|output[4]~_Duplicate_1_q\ & ((\U_B_REG|output\(4)) # (\U_ALU_NS|v_carry~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_A_REG|output[4]~_Duplicate_1_q\,
	datac => \U_B_REG|output\(4),
	datad => \U_ALU_NS|v_carry~3_combout\,
	combout => \U_ALU_NS|v_carry~5_combout\);

-- Location: LCCOMB_X19_Y20_N16
\U_ALU_NS|v_carry~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|v_carry~4_combout\ = (\U_B_REG|output\(4) & \U_ALU_NS|v_carry~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_B_REG|output\(4),
	datad => \U_ALU_NS|v_carry~3_combout\,
	combout => \U_ALU_NS|v_carry~4_combout\);

-- Location: LCCOMB_X19_Y20_N28
\U_ALU_NS|v_carry~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|v_carry~6_combout\ = (\U_A_REG|output[5]~_Duplicate_1_q\ & ((\U_ALU_NS|v_carry~5_combout\) # ((\U_B_REG|output\(5)) # (\U_ALU_NS|v_carry~4_combout\)))) # (!\U_A_REG|output[5]~_Duplicate_1_q\ & (\U_B_REG|output\(5) & 
-- ((\U_ALU_NS|v_carry~5_combout\) # (\U_ALU_NS|v_carry~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_A_REG|output[5]~_Duplicate_1_q\,
	datab => \U_ALU_NS|v_carry~5_combout\,
	datac => \U_B_REG|output\(5),
	datad => \U_ALU_NS|v_carry~4_combout\,
	combout => \U_ALU_NS|v_carry~6_combout\);

-- Location: FF_X20_Y19_N21
\U_A_REG|output[6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_SR_V2|output\(6),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_ADDR_TOP|U_logic|temp_a~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_A_REG|output[6]~_Duplicate_1_q\);

-- Location: LCCOMB_X21_Y22_N0
\U_ALU_NS|v_carry~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|v_carry~7_combout\ = (\U_ALU_NS|v_carry~6_combout\ & ((\U_B_REG|output\(6)) # (\U_A_REG|output[6]~_Duplicate_1_q\))) # (!\U_ALU_NS|v_carry~6_combout\ & (\U_B_REG|output\(6) & \U_A_REG|output[6]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_ALU_NS|v_carry~6_combout\,
	datac => \U_B_REG|output\(6),
	datad => \U_A_REG|output[6]~_Duplicate_1_q\,
	combout => \U_ALU_NS|v_carry~7_combout\);

-- Location: LCCOMB_X21_Y22_N10
\U_ALU_NS|Mux8~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux8~4_combout\ = (!\alu_sel[1]~input_o\ & ((\alu_sel[3]~input_o\ & (\U_A_REG|output[7]~_Duplicate_1_q\)) # (!\alu_sel[3]~input_o\ & ((\U_ALU_NS|v_carry~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_sel[1]~input_o\,
	datab => \alu_sel[3]~input_o\,
	datac => \U_A_REG|output[7]~_Duplicate_1_q\,
	datad => \U_ALU_NS|v_carry~7_combout\,
	combout => \U_ALU_NS|Mux8~4_combout\);

-- Location: LCCOMB_X17_Y20_N28
\U_ALU_NS|Mux8~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux8~8_combout\ = (!\alu_sel[0]~input_o\ & (!\alu_sel[2]~input_o\ & ((\U_ALU_NS|Mux8~7_combout\) # (\U_ALU_NS|Mux8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU_NS|Mux8~7_combout\,
	datab => \alu_sel[0]~input_o\,
	datac => \alu_sel[2]~input_o\,
	datad => \U_ALU_NS|Mux8~4_combout\,
	combout => \U_ALU_NS|Mux8~8_combout\);

-- Location: LCCOMB_X22_Y26_N24
\U_LED_HI_a|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_HI_a|Mux6~0_combout\ = (\U_B_REG|output\(4) & ((\U_B_REG|output\(7)) # (\U_B_REG|output\(5) $ (\U_B_REG|output\(6))))) # (!\U_B_REG|output\(4) & ((\U_B_REG|output\(5)) # (\U_B_REG|output\(7) $ (\U_B_REG|output\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_B_REG|output\(7),
	datab => \U_B_REG|output\(4),
	datac => \U_B_REG|output\(5),
	datad => \U_B_REG|output\(6),
	combout => \U_LED_HI_a|Mux6~0_combout\);

-- Location: LCCOMB_X22_Y26_N10
\U_LED_HI_a|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_HI_a|Mux5~0_combout\ = (\U_B_REG|output\(4) & (\U_B_REG|output\(7) $ (((\U_B_REG|output\(5)) # (!\U_B_REG|output\(6)))))) # (!\U_B_REG|output\(4) & (!\U_B_REG|output\(7) & (\U_B_REG|output\(5) & !\U_B_REG|output\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_B_REG|output\(7),
	datab => \U_B_REG|output\(4),
	datac => \U_B_REG|output\(5),
	datad => \U_B_REG|output\(6),
	combout => \U_LED_HI_a|Mux5~0_combout\);

-- Location: LCCOMB_X22_Y26_N28
\U_LED_HI_a|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_HI_a|Mux4~0_combout\ = (\U_B_REG|output\(5) & (!\U_B_REG|output\(7) & (\U_B_REG|output\(4)))) # (!\U_B_REG|output\(5) & ((\U_B_REG|output\(6) & (!\U_B_REG|output\(7))) # (!\U_B_REG|output\(6) & ((\U_B_REG|output\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_B_REG|output\(7),
	datab => \U_B_REG|output\(4),
	datac => \U_B_REG|output\(5),
	datad => \U_B_REG|output\(6),
	combout => \U_LED_HI_a|Mux4~0_combout\);

-- Location: LCCOMB_X22_Y26_N6
\U_LED_HI_a|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_HI_a|Mux3~0_combout\ = (\U_B_REG|output\(4) & ((\U_B_REG|output\(5) $ (!\U_B_REG|output\(6))))) # (!\U_B_REG|output\(4) & ((\U_B_REG|output\(7) & (\U_B_REG|output\(5) & !\U_B_REG|output\(6))) # (!\U_B_REG|output\(7) & (!\U_B_REG|output\(5) & 
-- \U_B_REG|output\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_B_REG|output\(7),
	datab => \U_B_REG|output\(4),
	datac => \U_B_REG|output\(5),
	datad => \U_B_REG|output\(6),
	combout => \U_LED_HI_a|Mux3~0_combout\);

-- Location: LCCOMB_X22_Y26_N8
\U_LED_HI_a|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_HI_a|Mux2~0_combout\ = (\U_B_REG|output\(7) & (\U_B_REG|output\(6) & ((\U_B_REG|output\(5)) # (!\U_B_REG|output\(4))))) # (!\U_B_REG|output\(7) & (!\U_B_REG|output\(4) & (\U_B_REG|output\(5) & !\U_B_REG|output\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_B_REG|output\(7),
	datab => \U_B_REG|output\(4),
	datac => \U_B_REG|output\(5),
	datad => \U_B_REG|output\(6),
	combout => \U_LED_HI_a|Mux2~0_combout\);

-- Location: LCCOMB_X22_Y26_N2
\U_LED_HI_a|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_HI_a|Mux1~0_combout\ = (\U_B_REG|output\(7) & ((\U_B_REG|output\(4) & (\U_B_REG|output\(5))) # (!\U_B_REG|output\(4) & ((\U_B_REG|output\(6)))))) # (!\U_B_REG|output\(7) & (\U_B_REG|output\(6) & (\U_B_REG|output\(4) $ (\U_B_REG|output\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_B_REG|output\(7),
	datab => \U_B_REG|output\(4),
	datac => \U_B_REG|output\(5),
	datad => \U_B_REG|output\(6),
	combout => \U_LED_HI_a|Mux1~0_combout\);

-- Location: LCCOMB_X22_Y26_N12
\U_LED_HI_a|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_HI_a|Mux0~0_combout\ = (\U_B_REG|output\(7) & (\U_B_REG|output\(4) & (\U_B_REG|output\(5) $ (\U_B_REG|output\(6))))) # (!\U_B_REG|output\(7) & (!\U_B_REG|output\(5) & (\U_B_REG|output\(4) $ (\U_B_REG|output\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_B_REG|output\(7),
	datab => \U_B_REG|output\(4),
	datac => \U_B_REG|output\(5),
	datad => \U_B_REG|output\(6),
	combout => \U_LED_HI_a|Mux0~0_combout\);

-- Location: LCCOMB_X21_Y20_N0
\U_LED_LO_a|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_LO_a|Mux6~0_combout\ = (\U_B_REG|output\(0) & ((\U_B_REG|output\(3)) # (\U_B_REG|output\(1) $ (\U_B_REG|output\(2))))) # (!\U_B_REG|output\(0) & ((\U_B_REG|output\(1)) # (\U_B_REG|output\(3) $ (\U_B_REG|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_B_REG|output\(1),
	datab => \U_B_REG|output\(3),
	datac => \U_B_REG|output\(2),
	datad => \U_B_REG|output\(0),
	combout => \U_LED_LO_a|Mux6~0_combout\);

-- Location: LCCOMB_X21_Y20_N10
\U_LED_LO_a|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_LO_a|Mux5~0_combout\ = (\U_B_REG|output\(1) & (!\U_B_REG|output\(3) & ((\U_B_REG|output\(0)) # (!\U_B_REG|output\(2))))) # (!\U_B_REG|output\(1) & (\U_B_REG|output\(0) & (\U_B_REG|output\(3) $ (!\U_B_REG|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_B_REG|output\(1),
	datab => \U_B_REG|output\(3),
	datac => \U_B_REG|output\(2),
	datad => \U_B_REG|output\(0),
	combout => \U_LED_LO_a|Mux5~0_combout\);

-- Location: LCCOMB_X21_Y20_N20
\U_LED_LO_a|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_LO_a|Mux4~0_combout\ = (\U_B_REG|output\(1) & (!\U_B_REG|output\(3) & ((\U_B_REG|output\(0))))) # (!\U_B_REG|output\(1) & ((\U_B_REG|output\(2) & (!\U_B_REG|output\(3))) # (!\U_B_REG|output\(2) & ((\U_B_REG|output\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_B_REG|output\(1),
	datab => \U_B_REG|output\(3),
	datac => \U_B_REG|output\(2),
	datad => \U_B_REG|output\(0),
	combout => \U_LED_LO_a|Mux4~0_combout\);

-- Location: LCCOMB_X21_Y20_N14
\U_LED_LO_a|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_LO_a|Mux3~0_combout\ = (\U_B_REG|output\(0) & (\U_B_REG|output\(1) $ (((!\U_B_REG|output\(2)))))) # (!\U_B_REG|output\(0) & ((\U_B_REG|output\(1) & (\U_B_REG|output\(3) & !\U_B_REG|output\(2))) # (!\U_B_REG|output\(1) & (!\U_B_REG|output\(3) & 
-- \U_B_REG|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_B_REG|output\(1),
	datab => \U_B_REG|output\(3),
	datac => \U_B_REG|output\(2),
	datad => \U_B_REG|output\(0),
	combout => \U_LED_LO_a|Mux3~0_combout\);

-- Location: LCCOMB_X21_Y20_N16
\U_LED_LO_a|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_LO_a|Mux2~0_combout\ = (\U_B_REG|output\(3) & (\U_B_REG|output\(2) & ((\U_B_REG|output\(1)) # (!\U_B_REG|output\(0))))) # (!\U_B_REG|output\(3) & (\U_B_REG|output\(1) & (!\U_B_REG|output\(2) & !\U_B_REG|output\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_B_REG|output\(1),
	datab => \U_B_REG|output\(3),
	datac => \U_B_REG|output\(2),
	datad => \U_B_REG|output\(0),
	combout => \U_LED_LO_a|Mux2~0_combout\);

-- Location: LCCOMB_X21_Y20_N26
\U_LED_LO_a|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_LO_a|Mux1~0_combout\ = (\U_B_REG|output\(1) & ((\U_B_REG|output\(0) & (\U_B_REG|output\(3))) # (!\U_B_REG|output\(0) & ((\U_B_REG|output\(2)))))) # (!\U_B_REG|output\(1) & (\U_B_REG|output\(2) & (\U_B_REG|output\(3) $ (\U_B_REG|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_B_REG|output\(1),
	datab => \U_B_REG|output\(3),
	datac => \U_B_REG|output\(2),
	datad => \U_B_REG|output\(0),
	combout => \U_LED_LO_a|Mux1~0_combout\);

-- Location: LCCOMB_X21_Y20_N4
\U_LED_LO_a|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_LO_a|Mux0~0_combout\ = (\U_B_REG|output\(3) & (\U_B_REG|output\(0) & (\U_B_REG|output\(1) $ (\U_B_REG|output\(2))))) # (!\U_B_REG|output\(3) & (!\U_B_REG|output\(1) & (\U_B_REG|output\(2) $ (\U_B_REG|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_B_REG|output\(1),
	datab => \U_B_REG|output\(3),
	datac => \U_B_REG|output\(2),
	datad => \U_B_REG|output\(0),
	combout => \U_LED_LO_a|Mux0~0_combout\);

-- Location: FF_X19_Y20_N7
\U_A_REG|output[5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_SR_V2|output\(5),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_ADDR_TOP|U_logic|temp_a~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_A_REG|output[5]~_Duplicate_1_q\);

-- Location: FF_X19_Y20_N9
\U_A_REG|output[4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_SR_V2|output\(4),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_ADDR_TOP|U_logic|temp_a~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_A_REG|output[4]~_Duplicate_1_q\);

-- Location: LCCOMB_X21_Y22_N12
\U_LED_HI_b|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_HI_b|Mux6~0_combout\ = (\U_A_REG|output[4]~_Duplicate_1_q\ & ((\U_A_REG|output[7]~_Duplicate_1_q\) # (\U_A_REG|output[5]~_Duplicate_1_q\ $ (\U_A_REG|output[6]~_Duplicate_1_q\)))) # (!\U_A_REG|output[4]~_Duplicate_1_q\ & 
-- ((\U_A_REG|output[5]~_Duplicate_1_q\) # (\U_A_REG|output[7]~_Duplicate_1_q\ $ (\U_A_REG|output[6]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_A_REG|output[5]~_Duplicate_1_q\,
	datab => \U_A_REG|output[4]~_Duplicate_1_q\,
	datac => \U_A_REG|output[7]~_Duplicate_1_q\,
	datad => \U_A_REG|output[6]~_Duplicate_1_q\,
	combout => \U_LED_HI_b|Mux6~0_combout\);

-- Location: LCCOMB_X21_Y22_N22
\U_LED_HI_b|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_HI_b|Mux5~0_combout\ = (\U_A_REG|output[5]~_Duplicate_1_q\ & (!\U_A_REG|output[7]~_Duplicate_1_q\ & ((\U_A_REG|output[4]~_Duplicate_1_q\) # (!\U_A_REG|output[6]~_Duplicate_1_q\)))) # (!\U_A_REG|output[5]~_Duplicate_1_q\ & 
-- (\U_A_REG|output[4]~_Duplicate_1_q\ & (\U_A_REG|output[7]~_Duplicate_1_q\ $ (!\U_A_REG|output[6]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_A_REG|output[5]~_Duplicate_1_q\,
	datab => \U_A_REG|output[4]~_Duplicate_1_q\,
	datac => \U_A_REG|output[7]~_Duplicate_1_q\,
	datad => \U_A_REG|output[6]~_Duplicate_1_q\,
	combout => \U_LED_HI_b|Mux5~0_combout\);

-- Location: LCCOMB_X21_Y22_N8
\U_LED_HI_b|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_HI_b|Mux4~0_combout\ = (\U_A_REG|output[5]~_Duplicate_1_q\ & (\U_A_REG|output[4]~_Duplicate_1_q\ & (!\U_A_REG|output[7]~_Duplicate_1_q\))) # (!\U_A_REG|output[5]~_Duplicate_1_q\ & ((\U_A_REG|output[6]~_Duplicate_1_q\ & 
-- ((!\U_A_REG|output[7]~_Duplicate_1_q\))) # (!\U_A_REG|output[6]~_Duplicate_1_q\ & (\U_A_REG|output[4]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_A_REG|output[5]~_Duplicate_1_q\,
	datab => \U_A_REG|output[4]~_Duplicate_1_q\,
	datac => \U_A_REG|output[7]~_Duplicate_1_q\,
	datad => \U_A_REG|output[6]~_Duplicate_1_q\,
	combout => \U_LED_HI_b|Mux4~0_combout\);

-- Location: LCCOMB_X21_Y22_N2
\U_LED_HI_b|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_HI_b|Mux3~0_combout\ = (\U_A_REG|output[4]~_Duplicate_1_q\ & (\U_A_REG|output[5]~_Duplicate_1_q\ $ (((!\U_A_REG|output[6]~_Duplicate_1_q\))))) # (!\U_A_REG|output[4]~_Duplicate_1_q\ & ((\U_A_REG|output[5]~_Duplicate_1_q\ & 
-- (\U_A_REG|output[7]~_Duplicate_1_q\ & !\U_A_REG|output[6]~_Duplicate_1_q\)) # (!\U_A_REG|output[5]~_Duplicate_1_q\ & (!\U_A_REG|output[7]~_Duplicate_1_q\ & \U_A_REG|output[6]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_A_REG|output[5]~_Duplicate_1_q\,
	datab => \U_A_REG|output[4]~_Duplicate_1_q\,
	datac => \U_A_REG|output[7]~_Duplicate_1_q\,
	datad => \U_A_REG|output[6]~_Duplicate_1_q\,
	combout => \U_LED_HI_b|Mux3~0_combout\);

-- Location: LCCOMB_X21_Y22_N28
\U_LED_HI_b|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_HI_b|Mux2~0_combout\ = (\U_A_REG|output[7]~_Duplicate_1_q\ & (\U_A_REG|output[6]~_Duplicate_1_q\ & ((\U_A_REG|output[5]~_Duplicate_1_q\) # (!\U_A_REG|output[4]~_Duplicate_1_q\)))) # (!\U_A_REG|output[7]~_Duplicate_1_q\ & 
-- (\U_A_REG|output[5]~_Duplicate_1_q\ & (!\U_A_REG|output[4]~_Duplicate_1_q\ & !\U_A_REG|output[6]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_A_REG|output[5]~_Duplicate_1_q\,
	datab => \U_A_REG|output[4]~_Duplicate_1_q\,
	datac => \U_A_REG|output[7]~_Duplicate_1_q\,
	datad => \U_A_REG|output[6]~_Duplicate_1_q\,
	combout => \U_LED_HI_b|Mux2~0_combout\);

-- Location: LCCOMB_X21_Y22_N6
\U_LED_HI_b|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_HI_b|Mux1~0_combout\ = (\U_A_REG|output[5]~_Duplicate_1_q\ & ((\U_A_REG|output[4]~_Duplicate_1_q\ & (\U_A_REG|output[7]~_Duplicate_1_q\)) # (!\U_A_REG|output[4]~_Duplicate_1_q\ & ((\U_A_REG|output[6]~_Duplicate_1_q\))))) # 
-- (!\U_A_REG|output[5]~_Duplicate_1_q\ & (\U_A_REG|output[6]~_Duplicate_1_q\ & (\U_A_REG|output[4]~_Duplicate_1_q\ $ (\U_A_REG|output[7]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_A_REG|output[5]~_Duplicate_1_q\,
	datab => \U_A_REG|output[4]~_Duplicate_1_q\,
	datac => \U_A_REG|output[7]~_Duplicate_1_q\,
	datad => \U_A_REG|output[6]~_Duplicate_1_q\,
	combout => \U_LED_HI_b|Mux1~0_combout\);

-- Location: LCCOMB_X21_Y22_N24
\U_LED_HI_b|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_HI_b|Mux0~0_combout\ = (\U_A_REG|output[7]~_Duplicate_1_q\ & (\U_A_REG|output[4]~_Duplicate_1_q\ & (\U_A_REG|output[5]~_Duplicate_1_q\ $ (\U_A_REG|output[6]~_Duplicate_1_q\)))) # (!\U_A_REG|output[7]~_Duplicate_1_q\ & 
-- (!\U_A_REG|output[5]~_Duplicate_1_q\ & (\U_A_REG|output[4]~_Duplicate_1_q\ $ (\U_A_REG|output[6]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_A_REG|output[5]~_Duplicate_1_q\,
	datab => \U_A_REG|output[4]~_Duplicate_1_q\,
	datac => \U_A_REG|output[7]~_Duplicate_1_q\,
	datad => \U_A_REG|output[6]~_Duplicate_1_q\,
	combout => \U_LED_HI_b|Mux0~0_combout\);

-- Location: FF_X19_Y20_N31
\U_A_REG|output[3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_SR_V2|output\(3),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_ADDR_TOP|U_logic|temp_a~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_A_REG|output[3]~_Duplicate_1_q\);

-- Location: LCCOMB_X21_Y21_N24
\U_LED_LO_b|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_LO_b|Mux6~0_combout\ = (\U_A_REG|output[0]~_Duplicate_1_q\ & ((\U_A_REG|output[3]~_Duplicate_1_q\) # (\U_A_REG|output[1]~_Duplicate_1_q\ $ (\U_A_REG|output[2]~_Duplicate_1_q\)))) # (!\U_A_REG|output[0]~_Duplicate_1_q\ & 
-- ((\U_A_REG|output[1]~_Duplicate_1_q\) # (\U_A_REG|output[3]~_Duplicate_1_q\ $ (\U_A_REG|output[2]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_A_REG|output[1]~_Duplicate_1_q\,
	datab => \U_A_REG|output[3]~_Duplicate_1_q\,
	datac => \U_A_REG|output[2]~_Duplicate_1_q\,
	datad => \U_A_REG|output[0]~_Duplicate_1_q\,
	combout => \U_LED_LO_b|Mux6~0_combout\);

-- Location: LCCOMB_X21_Y21_N26
\U_LED_LO_b|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_LO_b|Mux5~0_combout\ = (\U_A_REG|output[1]~_Duplicate_1_q\ & (!\U_A_REG|output[3]~_Duplicate_1_q\ & ((\U_A_REG|output[0]~_Duplicate_1_q\) # (!\U_A_REG|output[2]~_Duplicate_1_q\)))) # (!\U_A_REG|output[1]~_Duplicate_1_q\ & 
-- (\U_A_REG|output[0]~_Duplicate_1_q\ & (\U_A_REG|output[3]~_Duplicate_1_q\ $ (!\U_A_REG|output[2]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_A_REG|output[1]~_Duplicate_1_q\,
	datab => \U_A_REG|output[3]~_Duplicate_1_q\,
	datac => \U_A_REG|output[2]~_Duplicate_1_q\,
	datad => \U_A_REG|output[0]~_Duplicate_1_q\,
	combout => \U_LED_LO_b|Mux5~0_combout\);

-- Location: LCCOMB_X21_Y21_N20
\U_LED_LO_b|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_LO_b|Mux4~0_combout\ = (\U_A_REG|output[1]~_Duplicate_1_q\ & (!\U_A_REG|output[3]~_Duplicate_1_q\ & ((\U_A_REG|output[0]~_Duplicate_1_q\)))) # (!\U_A_REG|output[1]~_Duplicate_1_q\ & ((\U_A_REG|output[2]~_Duplicate_1_q\ & 
-- (!\U_A_REG|output[3]~_Duplicate_1_q\)) # (!\U_A_REG|output[2]~_Duplicate_1_q\ & ((\U_A_REG|output[0]~_Duplicate_1_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_A_REG|output[1]~_Duplicate_1_q\,
	datab => \U_A_REG|output[3]~_Duplicate_1_q\,
	datac => \U_A_REG|output[2]~_Duplicate_1_q\,
	datad => \U_A_REG|output[0]~_Duplicate_1_q\,
	combout => \U_LED_LO_b|Mux4~0_combout\);

-- Location: LCCOMB_X21_Y21_N6
\U_LED_LO_b|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_LO_b|Mux3~0_combout\ = (\U_A_REG|output[0]~_Duplicate_1_q\ & (\U_A_REG|output[1]~_Duplicate_1_q\ $ (((!\U_A_REG|output[2]~_Duplicate_1_q\))))) # (!\U_A_REG|output[0]~_Duplicate_1_q\ & ((\U_A_REG|output[1]~_Duplicate_1_q\ & 
-- (\U_A_REG|output[3]~_Duplicate_1_q\ & !\U_A_REG|output[2]~_Duplicate_1_q\)) # (!\U_A_REG|output[1]~_Duplicate_1_q\ & (!\U_A_REG|output[3]~_Duplicate_1_q\ & \U_A_REG|output[2]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_A_REG|output[1]~_Duplicate_1_q\,
	datab => \U_A_REG|output[3]~_Duplicate_1_q\,
	datac => \U_A_REG|output[2]~_Duplicate_1_q\,
	datad => \U_A_REG|output[0]~_Duplicate_1_q\,
	combout => \U_LED_LO_b|Mux3~0_combout\);

-- Location: LCCOMB_X21_Y21_N8
\U_LED_LO_b|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_LO_b|Mux2~0_combout\ = (\U_A_REG|output[3]~_Duplicate_1_q\ & (\U_A_REG|output[2]~_Duplicate_1_q\ & ((\U_A_REG|output[1]~_Duplicate_1_q\) # (!\U_A_REG|output[0]~_Duplicate_1_q\)))) # (!\U_A_REG|output[3]~_Duplicate_1_q\ & 
-- (\U_A_REG|output[1]~_Duplicate_1_q\ & (!\U_A_REG|output[2]~_Duplicate_1_q\ & !\U_A_REG|output[0]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_A_REG|output[1]~_Duplicate_1_q\,
	datab => \U_A_REG|output[3]~_Duplicate_1_q\,
	datac => \U_A_REG|output[2]~_Duplicate_1_q\,
	datad => \U_A_REG|output[0]~_Duplicate_1_q\,
	combout => \U_LED_LO_b|Mux2~0_combout\);

-- Location: LCCOMB_X21_Y21_N18
\U_LED_LO_b|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_LO_b|Mux1~0_combout\ = (\U_A_REG|output[1]~_Duplicate_1_q\ & ((\U_A_REG|output[0]~_Duplicate_1_q\ & (\U_A_REG|output[3]~_Duplicate_1_q\)) # (!\U_A_REG|output[0]~_Duplicate_1_q\ & ((\U_A_REG|output[2]~_Duplicate_1_q\))))) # 
-- (!\U_A_REG|output[1]~_Duplicate_1_q\ & (\U_A_REG|output[2]~_Duplicate_1_q\ & (\U_A_REG|output[3]~_Duplicate_1_q\ $ (\U_A_REG|output[0]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_A_REG|output[1]~_Duplicate_1_q\,
	datab => \U_A_REG|output[3]~_Duplicate_1_q\,
	datac => \U_A_REG|output[2]~_Duplicate_1_q\,
	datad => \U_A_REG|output[0]~_Duplicate_1_q\,
	combout => \U_LED_LO_b|Mux1~0_combout\);

-- Location: LCCOMB_X21_Y21_N4
\U_LED_LO_b|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED_LO_b|Mux0~0_combout\ = (\U_A_REG|output[3]~_Duplicate_1_q\ & (\U_A_REG|output[0]~_Duplicate_1_q\ & (\U_A_REG|output[1]~_Duplicate_1_q\ $ (\U_A_REG|output[2]~_Duplicate_1_q\)))) # (!\U_A_REG|output[3]~_Duplicate_1_q\ & 
-- (!\U_A_REG|output[1]~_Duplicate_1_q\ & (\U_A_REG|output[2]~_Duplicate_1_q\ $ (\U_A_REG|output[0]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_A_REG|output[1]~_Duplicate_1_q\,
	datab => \U_A_REG|output[3]~_Duplicate_1_q\,
	datac => \U_A_REG|output[2]~_Duplicate_1_q\,
	datad => \U_A_REG|output[0]~_Duplicate_1_q\,
	combout => \U_LED_LO_b|Mux0~0_combout\);

-- Location: LCCOMB_X17_Y20_N24
\U_ALU_NS|Mux8~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux8~11_combout\ = (\alu_sel[1]~input_o\ & ((\alu_sel[2]~input_o\ & (!\U_ALU_NS|Mux8~10_combout\)) # (!\alu_sel[2]~input_o\ & ((\U_ALU_NS|Mult0|auto_generated|mac_out2~dataout\))))) # (!\alu_sel[1]~input_o\ & (\U_ALU_NS|Mux8~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU_NS|Mux8~10_combout\,
	datab => \alu_sel[2]~input_o\,
	datac => \U_ALU_NS|Mult0|auto_generated|mac_out2~dataout\,
	datad => \alu_sel[1]~input_o\,
	combout => \U_ALU_NS|Mux8~11_combout\);

-- Location: LCCOMB_X17_Y20_N4
\U_ALU_NS|Mux8~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux8~38_combout\ = (\alu_sel[2]~input_o\ & (\U_A_REG|output[0]~_Duplicate_1_q\ $ (((\alu_sel[1]~input_o\) # (\U_B_REG|output\(0)))))) # (!\alu_sel[2]~input_o\ & (((\U_A_REG|output[0]~_Duplicate_1_q\ & \U_B_REG|output\(0))) # 
-- (!\alu_sel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101101100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_A_REG|output[0]~_Duplicate_1_q\,
	datab => \alu_sel[1]~input_o\,
	datac => \alu_sel[2]~input_o\,
	datad => \U_B_REG|output\(0),
	combout => \U_ALU_NS|Mux8~38_combout\);

-- Location: LCCOMB_X17_Y20_N6
\U_ALU_NS|Mux8~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux8~39_combout\ = (\U_ALU_NS|Mux8~38_combout\ & ((\U_ALU_NS|Add0~0_combout\) # ((\alu_sel[2]~input_o\) # (\alu_sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU_NS|Add0~0_combout\,
	datab => \alu_sel[2]~input_o\,
	datac => \U_ALU_NS|Mux8~38_combout\,
	datad => \alu_sel[1]~input_o\,
	combout => \U_ALU_NS|Mux8~39_combout\);

-- Location: LCCOMB_X17_Y20_N18
\U_ALU_NS|Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux7~0_combout\ = (\alu_sel[3]~input_o\ & (((\alu_sel[0]~input_o\)))) # (!\alu_sel[3]~input_o\ & ((\alu_sel[0]~input_o\ & ((\U_ALU_NS|Mux8~39_combout\))) # (!\alu_sel[0]~input_o\ & (\U_ALU_NS|Mux8~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_sel[3]~input_o\,
	datab => \U_ALU_NS|Mux8~11_combout\,
	datac => \alu_sel[0]~input_o\,
	datad => \U_ALU_NS|Mux8~39_combout\,
	combout => \U_ALU_NS|Mux7~0_combout\);

-- Location: LCCOMB_X21_Y21_N22
\U_ALU_NS|Mux8~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux8~9_combout\ = (\alu_sel[1]~input_o\ & (\U_A_REG|output[4]~_Duplicate_1_q\ & (!\alu_sel[2]~input_o\))) # (!\alu_sel[1]~input_o\ & (((\alu_sel[2]~input_o\ & !\U_A_REG|output[0]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_A_REG|output[4]~_Duplicate_1_q\,
	datab => \alu_sel[1]~input_o\,
	datac => \alu_sel[2]~input_o\,
	datad => \U_A_REG|output[0]~_Duplicate_1_q\,
	combout => \U_ALU_NS|Mux8~9_combout\);

-- Location: LCCOMB_X17_Y21_N18
\U_ALU_NS|Mux7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux7~1_combout\ = (\U_ALU_NS|Mux7~0_combout\ & ((\U_ALU_NS|Mux8~33_combout\) # ((!\alu_sel[3]~input_o\)))) # (!\U_ALU_NS|Mux7~0_combout\ & (((\alu_sel[3]~input_o\ & \U_ALU_NS|Mux8~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU_NS|Mux8~33_combout\,
	datab => \U_ALU_NS|Mux7~0_combout\,
	datac => \alu_sel[3]~input_o\,
	datad => \U_ALU_NS|Mux8~9_combout\,
	combout => \U_ALU_NS|Mux7~1_combout\);

-- Location: LCCOMB_X17_Y21_N24
\U_OUT_REG|output[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_OUT_REG|output[0]~feeder_combout\ = \U_ALU_NS|Mux7~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_ALU_NS|Mux7~1_combout\,
	combout => \U_OUT_REG|output[0]~feeder_combout\);

-- Location: LCCOMB_X19_Y19_N26
\U_ADDR_TOP|U_addrreg|output[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADDR_TOP|U_addrreg|output[2]~feeder_combout\ = \U_SR_V2|output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_SR_V2|output\(2),
	combout => \U_ADDR_TOP|U_addrreg|output[2]~feeder_combout\);

-- Location: FF_X19_Y19_N27
\U_ADDR_TOP|U_addrreg|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_ADDR_TOP|U_addrreg|output[2]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_ADDR_TOP|U_addrcount|output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ADDR_TOP|U_addrreg|output\(2));

-- Location: FF_X19_Y19_N7
\U_ADDR_TOP|U_logic|addr_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_ADDR_TOP|U_addrreg|output\(2),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_ADDR_TOP|U_logic|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ADDR_TOP|U_logic|addr_reg\(2));

-- Location: LCCOMB_X19_Y19_N6
\U_ADDR_TOP|U_logic|Mux2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADDR_TOP|U_logic|Mux2~1_combout\ = (\U_ADDR_TOP|U_logic|addr_reg\(4) & (\U_ADDR_TOP|U_logic|addr_reg\(3) & (\U_ADDR_TOP|U_logic|addr_reg\(2) & \U_ADDR_TOP|U_logic|addr_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADDR_TOP|U_logic|addr_reg\(4),
	datab => \U_ADDR_TOP|U_logic|addr_reg\(3),
	datac => \U_ADDR_TOP|U_logic|addr_reg\(2),
	datad => \U_ADDR_TOP|U_logic|addr_reg\(1),
	combout => \U_ADDR_TOP|U_logic|Mux2~1_combout\);

-- Location: LCCOMB_X19_Y21_N6
\U_ADDR_TOP|U_logic|Mux2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADDR_TOP|U_logic|Mux2~2_combout\ = (\U_ADDR_TOP|U_logic|Mux2~0_combout\ & (\U_ADDR_TOP|U_logic|addr_reg\(0) & \U_ADDR_TOP|U_logic|Mux2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADDR_TOP|U_logic|Mux2~0_combout\,
	datac => \U_ADDR_TOP|U_logic|addr_reg\(0),
	datad => \U_ADDR_TOP|U_logic|Mux2~1_combout\,
	combout => \U_ADDR_TOP|U_logic|Mux2~2_combout\);

-- Location: FF_X19_Y21_N7
\U_ADDR_TOP|U_logic|sel_out_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_ADDR_TOP|U_logic|Mux2~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ADDR_TOP|U_logic|sel_out_reg~q\);

-- Location: LCCOMB_X19_Y21_N30
\U_ADDR_TOP|U_logic|temp_out~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADDR_TOP|U_logic|temp_out~feeder_combout\ = \U_ADDR_TOP|U_logic|sel_out_reg~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_ADDR_TOP|U_logic|sel_out_reg~q\,
	combout => \U_ADDR_TOP|U_logic|temp_out~feeder_combout\);

-- Location: FF_X19_Y21_N31
\U_ADDR_TOP|U_logic|temp_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_ADDR_TOP|U_logic|temp_out~feeder_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ADDR_TOP|U_logic|temp_out~q\);

-- Location: FF_X17_Y21_N25
\U_OUT_REG|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_OUT_REG|output[0]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_ADDR_TOP|U_logic|temp_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_OUT_REG|output\(0));

-- Location: LCCOMB_X20_Y20_N2
\U_ALU_NS|Mux6~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux6~5_combout\ = (\U_A_REG|output[0]~_Duplicate_1_q\ & \U_B_REG|output\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_A_REG|output[0]~_Duplicate_1_q\,
	datad => \U_B_REG|output\(0),
	combout => \U_ALU_NS|Mux6~5_combout\);

-- Location: LCCOMB_X21_Y20_N22
\U_ALU_NS|Mux6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux6~6_combout\ = (\alu_sel[2]~input_o\ & ((\U_B_REG|output\(1)) # ((\U_A_REG|output[1]~_Duplicate_1_q\)))) # (!\alu_sel[2]~input_o\ & (\U_B_REG|output\(1) $ (\U_A_REG|output[1]~_Duplicate_1_q\ $ (\U_ALU_NS|Mux6~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_B_REG|output\(1),
	datab => \U_A_REG|output[1]~_Duplicate_1_q\,
	datac => \alu_sel[2]~input_o\,
	datad => \U_ALU_NS|Mux6~5_combout\,
	combout => \U_ALU_NS|Mux6~6_combout\);

-- Location: LCCOMB_X20_Y21_N8
\U_ALU_NS|Mux6~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux6~7_combout\ = (\alu_sel[1]~input_o\ & ((\alu_sel[2]~input_o\ & ((!\U_ALU_NS|Mux6~6_combout\))) # (!\alu_sel[2]~input_o\ & (\U_ALU_NS|Mult0|auto_generated|mac_out2~DATAOUT1\)))) # (!\alu_sel[1]~input_o\ & (((\U_ALU_NS|Mux6~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU_NS|Mult0|auto_generated|mac_out2~DATAOUT1\,
	datab => \alu_sel[1]~input_o\,
	datac => \U_ALU_NS|Mux6~6_combout\,
	datad => \alu_sel[2]~input_o\,
	combout => \U_ALU_NS|Mux6~7_combout\);

-- Location: LCCOMB_X20_Y22_N14
\U_ALU_NS|Mux6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux6~2_combout\ = (\alu_sel[1]~input_o\) # (!\alu_sel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_sel[0]~input_o\,
	datad => \alu_sel[1]~input_o\,
	combout => \U_ALU_NS|Mux6~2_combout\);

-- Location: LCCOMB_X20_Y22_N26
\U_ALU_NS|Mux6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux6~1_combout\ = (\alu_sel[0]~input_o\ & ((\alu_sel[1]~input_o\) # (\alu_sel[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_sel[1]~input_o\,
	datab => \alu_sel[0]~input_o\,
	datad => \alu_sel[2]~input_o\,
	combout => \U_ALU_NS|Mux6~1_combout\);

-- Location: LCCOMB_X20_Y22_N28
\U_ALU_NS|Mux8~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux8~14_combout\ = (!\alu_sel[2]~input_o\ & \U_A_REG|output[0]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_sel[2]~input_o\,
	datac => \U_A_REG|output[0]~_Duplicate_1_q\,
	combout => \U_ALU_NS|Mux8~14_combout\);

-- Location: LCCOMB_X20_Y22_N16
\U_ALU_NS|Mux6~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux6~3_combout\ = (\U_ALU_NS|Mux6~2_combout\ & (((\U_ALU_NS|Mux6~1_combout\) # (\U_ALU_NS|Mux8~14_combout\)))) # (!\U_ALU_NS|Mux6~2_combout\ & (\U_A_REG|output[2]~_Duplicate_1_q\ & (!\U_ALU_NS|Mux6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_A_REG|output[2]~_Duplicate_1_q\,
	datab => \U_ALU_NS|Mux6~2_combout\,
	datac => \U_ALU_NS|Mux6~1_combout\,
	datad => \U_ALU_NS|Mux8~14_combout\,
	combout => \U_ALU_NS|Mux6~3_combout\);

-- Location: LCCOMB_X19_Y20_N24
\U_ALU_NS|Add2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Add2~1_combout\ = (\U_A_REG|output[2]~_Duplicate_1_q\ & (!\U_A_REG|output[1]~_Duplicate_1_q\ & !\U_A_REG|output[0]~_Duplicate_1_q\)) # (!\U_A_REG|output[2]~_Duplicate_1_q\ & ((!\U_A_REG|output[0]~_Duplicate_1_q\) # 
-- (!\U_A_REG|output[1]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_A_REG|output[2]~_Duplicate_1_q\,
	datac => \U_A_REG|output[1]~_Duplicate_1_q\,
	datad => \U_A_REG|output[0]~_Duplicate_1_q\,
	combout => \U_ALU_NS|Add2~1_combout\);

-- Location: LCCOMB_X19_Y20_N6
\U_ALU_NS|Add4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Add4~0_combout\ = (\U_A_REG|output[3]~_Duplicate_1_q\ & ((\U_A_REG|output[5]~_Duplicate_1_q\) # (\U_A_REG|output[4]~_Duplicate_1_q\))) # (!\U_A_REG|output[3]~_Duplicate_1_q\ & (\U_A_REG|output[5]~_Duplicate_1_q\ & 
-- \U_A_REG|output[4]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_A_REG|output[3]~_Duplicate_1_q\,
	datac => \U_A_REG|output[5]~_Duplicate_1_q\,
	datad => \U_A_REG|output[4]~_Duplicate_1_q\,
	combout => \U_ALU_NS|Add4~0_combout\);

-- Location: LCCOMB_X20_Y19_N8
\U_ALU_NS|Add5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Add5~2_combout\ = \U_ALU_NS|Add5~1_combout\ $ (\U_ALU_NS|Add2~1_combout\ $ (\U_ALU_NS|Add4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU_NS|Add5~1_combout\,
	datac => \U_ALU_NS|Add2~1_combout\,
	datad => \U_ALU_NS|Add4~0_combout\,
	combout => \U_ALU_NS|Add5~2_combout\);

-- Location: LCCOMB_X20_Y19_N18
\U_ALU_NS|Add6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Add6~1_cout\ = CARRY(!\U_A_REG|output[7]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_A_REG|output[7]~_Duplicate_1_q\,
	datad => VCC,
	cout => \U_ALU_NS|Add6~1_cout\);

-- Location: LCCOMB_X20_Y19_N22
\U_ALU_NS|Add6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Add6~4_combout\ = (\U_ALU_NS|Add5~2_combout\ & (\U_ALU_NS|Add6~3\ $ (GND))) # (!\U_ALU_NS|Add5~2_combout\ & (!\U_ALU_NS|Add6~3\ & VCC))
-- \U_ALU_NS|Add6~5\ = CARRY((\U_ALU_NS|Add5~2_combout\ & !\U_ALU_NS|Add6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_ALU_NS|Add5~2_combout\,
	datad => VCC,
	cin => \U_ALU_NS|Add6~3\,
	combout => \U_ALU_NS|Add6~4_combout\,
	cout => \U_ALU_NS|Add6~5\);

-- Location: LCCOMB_X20_Y22_N18
\U_ALU_NS|Mux6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux6~4_combout\ = (\U_ALU_NS|Mux6~3_combout\ & ((\U_ALU_NS|Mux8~15_combout\) # ((!\U_ALU_NS|Mux6~1_combout\)))) # (!\U_ALU_NS|Mux6~3_combout\ & (((\U_ALU_NS|Mux6~1_combout\ & \U_ALU_NS|Add6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU_NS|Mux8~15_combout\,
	datab => \U_ALU_NS|Mux6~3_combout\,
	datac => \U_ALU_NS|Mux6~1_combout\,
	datad => \U_ALU_NS|Add6~4_combout\,
	combout => \U_ALU_NS|Mux6~4_combout\);

-- Location: LCCOMB_X20_Y21_N6
\U_ALU_NS|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux6~0_combout\ = (\alu_sel[0]~input_o\ & ((!\alu_sel[3]~input_o\))) # (!\alu_sel[0]~input_o\ & (\alu_sel[1]~input_o\ & \alu_sel[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_sel[0]~input_o\,
	datab => \alu_sel[1]~input_o\,
	datac => \alu_sel[3]~input_o\,
	combout => \U_ALU_NS|Mux6~0_combout\);

-- Location: LCCOMB_X20_Y21_N2
\U_ALU_NS|Mux6~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux6~8_combout\ = (\alu_sel[3]~input_o\ & (((\U_ALU_NS|Mux6~4_combout\) # (\U_ALU_NS|Mux6~0_combout\)))) # (!\alu_sel[3]~input_o\ & (\U_ALU_NS|Mux6~7_combout\ & ((!\U_ALU_NS|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_sel[3]~input_o\,
	datab => \U_ALU_NS|Mux6~7_combout\,
	datac => \U_ALU_NS|Mux6~4_combout\,
	datad => \U_ALU_NS|Mux6~0_combout\,
	combout => \U_ALU_NS|Mux6~8_combout\);

-- Location: LCCOMB_X19_Y20_N0
\U_ALU_NS|Mux8~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux8~16_combout\ = (!\alu_sel[2]~input_o\ & \U_A_REG|output[5]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu_sel[2]~input_o\,
	datad => \U_A_REG|output[5]~_Duplicate_1_q\,
	combout => \U_ALU_NS|Mux8~16_combout\);

-- Location: LCCOMB_X21_Y20_N2
\U_ALU_NS|Mux6~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux6~10_combout\ = (\alu_sel[2]~input_o\ & (\U_A_REG|output[1]~_Duplicate_1_q\ $ (((\alu_sel[1]~input_o\) # (\U_B_REG|output\(1)))))) # (!\alu_sel[2]~input_o\ & (((\U_A_REG|output[1]~_Duplicate_1_q\ & \U_B_REG|output\(1))) # 
-- (!\alu_sel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101101100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_A_REG|output[1]~_Duplicate_1_q\,
	datab => \alu_sel[1]~input_o\,
	datac => \alu_sel[2]~input_o\,
	datad => \U_B_REG|output\(1),
	combout => \U_ALU_NS|Mux6~10_combout\);

-- Location: LCCOMB_X21_Y20_N12
\U_ALU_NS|Mux6~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux6~11_combout\ = (\U_ALU_NS|Mux6~10_combout\ & ((\U_ALU_NS|Add0~2_combout\) # ((\alu_sel[1]~input_o\) # (\alu_sel[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU_NS|Add0~2_combout\,
	datab => \alu_sel[1]~input_o\,
	datac => \alu_sel[2]~input_o\,
	datad => \U_ALU_NS|Mux6~10_combout\,
	combout => \U_ALU_NS|Mux6~11_combout\);

-- Location: LCCOMB_X20_Y21_N20
\U_ALU_NS|Mux6~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux6~9_combout\ = (\U_ALU_NS|Mux6~0_combout\ & ((\U_ALU_NS|Mux6~8_combout\ & (\U_ALU_NS|Mux8~16_combout\)) # (!\U_ALU_NS|Mux6~8_combout\ & ((\U_ALU_NS|Mux6~11_combout\))))) # (!\U_ALU_NS|Mux6~0_combout\ & (\U_ALU_NS|Mux6~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU_NS|Mux6~0_combout\,
	datab => \U_ALU_NS|Mux6~8_combout\,
	datac => \U_ALU_NS|Mux8~16_combout\,
	datad => \U_ALU_NS|Mux6~11_combout\,
	combout => \U_ALU_NS|Mux6~9_combout\);

-- Location: LCCOMB_X20_Y21_N16
\U_OUT_REG|output[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_OUT_REG|output[1]~feeder_combout\ = \U_ALU_NS|Mux6~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_ALU_NS|Mux6~9_combout\,
	combout => \U_OUT_REG|output[1]~feeder_combout\);

-- Location: FF_X20_Y21_N17
\U_OUT_REG|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_OUT_REG|output[1]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_ADDR_TOP|U_logic|temp_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_OUT_REG|output\(1));

-- Location: LCCOMB_X21_Y21_N16
\U_ALU_NS|Mux5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux5~2_combout\ = (\alu_sel[2]~input_o\ & (((\U_A_REG|output[2]~_Duplicate_1_q\) # (\U_B_REG|output\(2))))) # (!\alu_sel[2]~input_o\ & (\U_ALU_NS|v_carry~0_combout\ $ (\U_A_REG|output[2]~_Duplicate_1_q\ $ (\U_B_REG|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU_NS|v_carry~0_combout\,
	datab => \U_A_REG|output[2]~_Duplicate_1_q\,
	datac => \alu_sel[2]~input_o\,
	datad => \U_B_REG|output\(2),
	combout => \U_ALU_NS|Mux5~2_combout\);

-- Location: LCCOMB_X20_Y21_N14
\U_ALU_NS|Mux5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux5~3_combout\ = (\alu_sel[1]~input_o\ & ((\alu_sel[2]~input_o\ & ((!\U_ALU_NS|Mux5~2_combout\))) # (!\alu_sel[2]~input_o\ & (\U_ALU_NS|Mult0|auto_generated|mac_out2~DATAOUT2\)))) # (!\alu_sel[1]~input_o\ & (((\U_ALU_NS|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU_NS|Mult0|auto_generated|mac_out2~DATAOUT2\,
	datab => \alu_sel[2]~input_o\,
	datac => \alu_sel[1]~input_o\,
	datad => \U_ALU_NS|Mux5~2_combout\,
	combout => \U_ALU_NS|Mux5~3_combout\);

-- Location: LCCOMB_X20_Y22_N20
\U_ALU_NS|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux5~0_combout\ = (\U_ALU_NS|Mux6~1_combout\ & (((\U_ALU_NS|Mux6~2_combout\) # (\U_ALU_NS|Add6~6_combout\)))) # (!\U_ALU_NS|Mux6~1_combout\ & (\U_A_REG|output[3]~_Duplicate_1_q\ & (!\U_ALU_NS|Mux6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU_NS|Mux6~1_combout\,
	datab => \U_A_REG|output[3]~_Duplicate_1_q\,
	datac => \U_ALU_NS|Mux6~2_combout\,
	datad => \U_ALU_NS|Add6~6_combout\,
	combout => \U_ALU_NS|Mux5~0_combout\);

-- Location: LCCOMB_X20_Y22_N30
\U_ALU_NS|Mux5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux5~1_combout\ = (\U_ALU_NS|Mux5~0_combout\ & (((\U_ALU_NS|Mux8~16_combout\) # (!\U_ALU_NS|Mux6~2_combout\)))) # (!\U_ALU_NS|Mux5~0_combout\ & (\U_ALU_NS|Mux8~12_combout\ & (\U_ALU_NS|Mux6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU_NS|Mux8~12_combout\,
	datab => \U_ALU_NS|Mux5~0_combout\,
	datac => \U_ALU_NS|Mux6~2_combout\,
	datad => \U_ALU_NS|Mux8~16_combout\,
	combout => \U_ALU_NS|Mux5~1_combout\);

-- Location: LCCOMB_X20_Y21_N24
\U_ALU_NS|Mux5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux5~4_combout\ = (\alu_sel[3]~input_o\ & (((\U_ALU_NS|Mux5~1_combout\) # (\U_ALU_NS|Mux6~0_combout\)))) # (!\alu_sel[3]~input_o\ & (\U_ALU_NS|Mux5~3_combout\ & ((!\U_ALU_NS|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_sel[3]~input_o\,
	datab => \U_ALU_NS|Mux5~3_combout\,
	datac => \U_ALU_NS|Mux5~1_combout\,
	datad => \U_ALU_NS|Mux6~0_combout\,
	combout => \U_ALU_NS|Mux5~4_combout\);

-- Location: LCCOMB_X21_Y21_N12
\U_ALU_NS|Mux5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux5~6_combout\ = (\alu_sel[2]~input_o\ & (\U_A_REG|output[2]~_Duplicate_1_q\ $ (((\alu_sel[1]~input_o\) # (\U_B_REG|output\(2)))))) # (!\alu_sel[2]~input_o\ & (((\U_A_REG|output[2]~_Duplicate_1_q\ & \U_B_REG|output\(2))) # 
-- (!\alu_sel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101100111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_sel[2]~input_o\,
	datab => \alu_sel[1]~input_o\,
	datac => \U_A_REG|output[2]~_Duplicate_1_q\,
	datad => \U_B_REG|output\(2),
	combout => \U_ALU_NS|Mux5~6_combout\);

-- Location: LCCOMB_X21_Y21_N30
\U_ALU_NS|Mux5~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux5~7_combout\ = (\U_ALU_NS|Mux5~6_combout\ & ((\U_ALU_NS|Add0~4_combout\) # ((\alu_sel[1]~input_o\) # (\alu_sel[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU_NS|Add0~4_combout\,
	datab => \alu_sel[1]~input_o\,
	datac => \alu_sel[2]~input_o\,
	datad => \U_ALU_NS|Mux5~6_combout\,
	combout => \U_ALU_NS|Mux5~7_combout\);

-- Location: LCCOMB_X21_Y22_N20
\U_ALU_NS|Mux8~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux8~15_combout\ = (!\alu_sel[2]~input_o\ & \U_A_REG|output[6]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu_sel[2]~input_o\,
	datad => \U_A_REG|output[6]~_Duplicate_1_q\,
	combout => \U_ALU_NS|Mux8~15_combout\);

-- Location: LCCOMB_X20_Y21_N18
\U_ALU_NS|Mux5~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux5~5_combout\ = (\U_ALU_NS|Mux6~0_combout\ & ((\U_ALU_NS|Mux5~4_combout\ & ((\U_ALU_NS|Mux8~15_combout\))) # (!\U_ALU_NS|Mux5~4_combout\ & (\U_ALU_NS|Mux5~7_combout\)))) # (!\U_ALU_NS|Mux6~0_combout\ & (\U_ALU_NS|Mux5~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU_NS|Mux6~0_combout\,
	datab => \U_ALU_NS|Mux5~4_combout\,
	datac => \U_ALU_NS|Mux5~7_combout\,
	datad => \U_ALU_NS|Mux8~15_combout\,
	combout => \U_ALU_NS|Mux5~5_combout\);

-- Location: FF_X20_Y21_N27
\U_OUT_REG|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \U_ALU_NS|Mux5~5_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_ADDR_TOP|U_logic|temp_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_OUT_REG|output\(2));

-- Location: LCCOMB_X20_Y20_N16
\U_ALU_NS|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Add0~6_combout\ = (\U_B_REG|output\(3) & ((\U_A_REG|output[3]~_Duplicate_1_q\ & (!\U_ALU_NS|Add0~5\)) # (!\U_A_REG|output[3]~_Duplicate_1_q\ & ((\U_ALU_NS|Add0~5\) # (GND))))) # (!\U_B_REG|output\(3) & ((\U_A_REG|output[3]~_Duplicate_1_q\ & 
-- (\U_ALU_NS|Add0~5\ & VCC)) # (!\U_A_REG|output[3]~_Duplicate_1_q\ & (!\U_ALU_NS|Add0~5\))))
-- \U_ALU_NS|Add0~7\ = CARRY((\U_B_REG|output\(3) & ((!\U_ALU_NS|Add0~5\) # (!\U_A_REG|output[3]~_Duplicate_1_q\))) # (!\U_B_REG|output\(3) & (!\U_A_REG|output[3]~_Duplicate_1_q\ & !\U_ALU_NS|Add0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_B_REG|output\(3),
	datab => \U_A_REG|output[3]~_Duplicate_1_q\,
	datad => VCC,
	cin => \U_ALU_NS|Add0~5\,
	combout => \U_ALU_NS|Add0~6_combout\,
	cout => \U_ALU_NS|Add0~7\);

-- Location: LCCOMB_X21_Y20_N6
\U_ALU_NS|Mux4~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux4~7_combout\ = (\alu_sel[2]~input_o\ & (\U_A_REG|output[3]~_Duplicate_1_q\ $ (((\alu_sel[1]~input_o\) # (\U_B_REG|output\(3)))))) # (!\alu_sel[2]~input_o\ & (((\U_B_REG|output\(3) & \U_A_REG|output[3]~_Duplicate_1_q\)) # 
-- (!\alu_sel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_sel[2]~input_o\,
	datab => \alu_sel[1]~input_o\,
	datac => \U_B_REG|output\(3),
	datad => \U_A_REG|output[3]~_Duplicate_1_q\,
	combout => \U_ALU_NS|Mux4~7_combout\);

-- Location: LCCOMB_X21_Y20_N24
\U_ALU_NS|Mux4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux4~8_combout\ = (\U_ALU_NS|Mux4~7_combout\ & ((\alu_sel[2]~input_o\) # ((\alu_sel[1]~input_o\) # (\U_ALU_NS|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_sel[2]~input_o\,
	datab => \alu_sel[1]~input_o\,
	datac => \U_ALU_NS|Add0~6_combout\,
	datad => \U_ALU_NS|Mux4~7_combout\,
	combout => \U_ALU_NS|Mux4~8_combout\);

-- Location: LCCOMB_X21_Y20_N8
\U_ALU_NS|Mux4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux4~2_combout\ = (\U_A_REG|output[3]~_Duplicate_1_q\ & ((\alu_sel[2]~input_o\) # (!\U_B_REG|output\(3)))) # (!\U_A_REG|output[3]~_Duplicate_1_q\ & ((\U_B_REG|output\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_sel[2]~input_o\,
	datab => \U_A_REG|output[3]~_Duplicate_1_q\,
	datac => \U_B_REG|output\(3),
	combout => \U_ALU_NS|Mux4~2_combout\);

-- Location: LCCOMB_X19_Y20_N26
\U_ALU_NS|Mux4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux4~3_combout\ = (\alu_sel[1]~input_o\ & (((\alu_sel[2]~input_o\)))) # (!\alu_sel[1]~input_o\ & (!\alu_sel[2]~input_o\ & ((\U_ALU_NS|v_carry~2_combout\) # (\U_ALU_NS|v_carry~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU_NS|v_carry~2_combout\,
	datab => \alu_sel[1]~input_o\,
	datac => \alu_sel[2]~input_o\,
	datad => \U_ALU_NS|v_carry~1_combout\,
	combout => \U_ALU_NS|Mux4~3_combout\);

-- Location: LCCOMB_X20_Y21_N28
\U_ALU_NS|Mux4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux4~4_combout\ = (\U_ALU_NS|Mux4~3_combout\ & (((!\U_ALU_NS|Mux4~2_combout\)))) # (!\U_ALU_NS|Mux4~3_combout\ & ((\alu_sel[1]~input_o\ & (\U_ALU_NS|Mult0|auto_generated|mac_out2~DATAOUT3\)) # (!\alu_sel[1]~input_o\ & 
-- ((\U_ALU_NS|Mux4~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU_NS|Mult0|auto_generated|mac_out2~DATAOUT3\,
	datab => \alu_sel[1]~input_o\,
	datac => \U_ALU_NS|Mux4~2_combout\,
	datad => \U_ALU_NS|Mux4~3_combout\,
	combout => \U_ALU_NS|Mux4~4_combout\);

-- Location: LCCOMB_X20_Y22_N4
\U_ALU_NS|Mux8~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux8~18_combout\ = (!\alu_sel[2]~input_o\ & \U_A_REG|output[4]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_sel[2]~input_o\,
	datad => \U_A_REG|output[4]~_Duplicate_1_q\,
	combout => \U_ALU_NS|Mux8~18_combout\);

-- Location: LCCOMB_X20_Y22_N0
\U_ALU_NS|Mux8~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux8~17_combout\ = (!\alu_sel[2]~input_o\ & \U_A_REG|output[2]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_sel[2]~input_o\,
	datad => \U_A_REG|output[2]~_Duplicate_1_q\,
	combout => \U_ALU_NS|Mux8~17_combout\);

-- Location: LCCOMB_X20_Y22_N10
\U_ALU_NS|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux4~0_combout\ = (\U_ALU_NS|Mux6~1_combout\ & (((\U_ALU_NS|Mux6~2_combout\)))) # (!\U_ALU_NS|Mux6~1_combout\ & ((\U_ALU_NS|Mux6~2_combout\ & (\U_ALU_NS|Mux8~17_combout\)) # (!\U_ALU_NS|Mux6~2_combout\ & ((\U_A_REG|output[4]~_Duplicate_1_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU_NS|Mux6~1_combout\,
	datab => \U_ALU_NS|Mux8~17_combout\,
	datac => \U_ALU_NS|Mux6~2_combout\,
	datad => \U_A_REG|output[4]~_Duplicate_1_q\,
	combout => \U_ALU_NS|Mux4~0_combout\);

-- Location: LCCOMB_X20_Y22_N22
\U_ALU_NS|Mux4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux4~1_combout\ = (\U_ALU_NS|Mux6~1_combout\ & ((\U_ALU_NS|Mux4~0_combout\ & ((\U_ALU_NS|Mux8~18_combout\))) # (!\U_ALU_NS|Mux4~0_combout\ & (\U_ALU_NS|Add6~8_combout\)))) # (!\U_ALU_NS|Mux6~1_combout\ & (((\U_ALU_NS|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU_NS|Add6~8_combout\,
	datab => \U_ALU_NS|Mux8~18_combout\,
	datac => \U_ALU_NS|Mux6~1_combout\,
	datad => \U_ALU_NS|Mux4~0_combout\,
	combout => \U_ALU_NS|Mux4~1_combout\);

-- Location: LCCOMB_X20_Y21_N22
\U_ALU_NS|Mux4~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux4~5_combout\ = (\alu_sel[3]~input_o\ & (((\U_ALU_NS|Mux4~1_combout\) # (\U_ALU_NS|Mux6~0_combout\)))) # (!\alu_sel[3]~input_o\ & (\U_ALU_NS|Mux4~4_combout\ & ((!\U_ALU_NS|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_sel[3]~input_o\,
	datab => \U_ALU_NS|Mux4~4_combout\,
	datac => \U_ALU_NS|Mux4~1_combout\,
	datad => \U_ALU_NS|Mux6~0_combout\,
	combout => \U_ALU_NS|Mux4~5_combout\);

-- Location: LCCOMB_X21_Y22_N18
\U_ALU_NS|Mux8~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux8~13_combout\ = (\U_A_REG|output[7]~_Duplicate_1_q\ & !\alu_sel[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_A_REG|output[7]~_Duplicate_1_q\,
	datac => \alu_sel[2]~input_o\,
	combout => \U_ALU_NS|Mux8~13_combout\);

-- Location: LCCOMB_X20_Y21_N4
\U_ALU_NS|Mux4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux4~6_combout\ = (\U_ALU_NS|Mux6~0_combout\ & ((\U_ALU_NS|Mux4~5_combout\ & ((\U_ALU_NS|Mux8~13_combout\))) # (!\U_ALU_NS|Mux4~5_combout\ & (\U_ALU_NS|Mux4~8_combout\)))) # (!\U_ALU_NS|Mux6~0_combout\ & (((\U_ALU_NS|Mux4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU_NS|Mux6~0_combout\,
	datab => \U_ALU_NS|Mux4~8_combout\,
	datac => \U_ALU_NS|Mux4~5_combout\,
	datad => \U_ALU_NS|Mux8~13_combout\,
	combout => \U_ALU_NS|Mux4~6_combout\);

-- Location: FF_X20_Y21_N5
\U_OUT_REG|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_ALU_NS|Mux4~6_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_ADDR_TOP|U_logic|temp_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_OUT_REG|output\(3));

-- Location: LCCOMB_X20_Y20_N18
\U_ALU_NS|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Add0~8_combout\ = ((\U_B_REG|output\(4) $ (\U_A_REG|output[4]~_Duplicate_1_q\ $ (\U_ALU_NS|Add0~7\)))) # (GND)
-- \U_ALU_NS|Add0~9\ = CARRY((\U_B_REG|output\(4) & (\U_A_REG|output[4]~_Duplicate_1_q\ & !\U_ALU_NS|Add0~7\)) # (!\U_B_REG|output\(4) & ((\U_A_REG|output[4]~_Duplicate_1_q\) # (!\U_ALU_NS|Add0~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_B_REG|output\(4),
	datab => \U_A_REG|output[4]~_Duplicate_1_q\,
	datad => VCC,
	cin => \U_ALU_NS|Add0~7\,
	combout => \U_ALU_NS|Add0~8_combout\,
	cout => \U_ALU_NS|Add0~9\);

-- Location: LCCOMB_X21_Y21_N0
\U_ALU_NS|Mux8~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux8~36_combout\ = (\alu_sel[2]~input_o\ & (\U_A_REG|output[4]~_Duplicate_1_q\ $ (((\alu_sel[1]~input_o\) # (\U_B_REG|output\(4)))))) # (!\alu_sel[2]~input_o\ & (((\U_A_REG|output[4]~_Duplicate_1_q\ & \U_B_REG|output\(4))) # 
-- (!\alu_sel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101101100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_A_REG|output[4]~_Duplicate_1_q\,
	datab => \alu_sel[1]~input_o\,
	datac => \alu_sel[2]~input_o\,
	datad => \U_B_REG|output\(4),
	combout => \U_ALU_NS|Mux8~36_combout\);

-- Location: LCCOMB_X21_Y21_N10
\U_ALU_NS|Mux8~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux8~37_combout\ = (\U_ALU_NS|Mux8~36_combout\ & ((\alu_sel[2]~input_o\) # ((\U_ALU_NS|Add0~8_combout\) # (\alu_sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_sel[2]~input_o\,
	datab => \U_ALU_NS|Add0~8_combout\,
	datac => \alu_sel[1]~input_o\,
	datad => \U_ALU_NS|Mux8~36_combout\,
	combout => \U_ALU_NS|Mux8~37_combout\);

-- Location: LCCOMB_X21_Y21_N28
\U_ALU_NS|Mux8~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux8~23_combout\ = (\alu_sel[2]~input_o\ & (!\U_B_REG|output\(4) & (!\U_A_REG|output[4]~_Duplicate_1_q\))) # (!\alu_sel[2]~input_o\ & (((\U_ALU_NS|Mult0|auto_generated|mac_out2~DATAOUT4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_sel[2]~input_o\,
	datab => \U_B_REG|output\(4),
	datac => \U_A_REG|output[4]~_Duplicate_1_q\,
	datad => \U_ALU_NS|Mult0|auto_generated|mac_out2~DATAOUT4\,
	combout => \U_ALU_NS|Mux8~23_combout\);

-- Location: LCCOMB_X21_Y21_N2
\U_ALU_NS|Mux8~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux8~20_combout\ = (!\alu_sel[1]~input_o\ & (\alu_sel[2]~input_o\ & ((\U_A_REG|output[4]~_Duplicate_1_q\) # (\U_B_REG|output\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_A_REG|output[4]~_Duplicate_1_q\,
	datab => \alu_sel[1]~input_o\,
	datac => \alu_sel[2]~input_o\,
	datad => \U_B_REG|output\(4),
	combout => \U_ALU_NS|Mux8~20_combout\);

-- Location: LCCOMB_X21_Y21_N14
\U_ALU_NS|Mux8~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux8~24_combout\ = (\U_ALU_NS|Mux8~22_combout\) # ((\U_ALU_NS|Mux8~20_combout\) # ((\U_ALU_NS|Mux8~23_combout\ & \alu_sel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU_NS|Mux8~22_combout\,
	datab => \U_ALU_NS|Mux8~23_combout\,
	datac => \alu_sel[1]~input_o\,
	datad => \U_ALU_NS|Mux8~20_combout\,
	combout => \U_ALU_NS|Mux8~24_combout\);

-- Location: LCCOMB_X17_Y20_N12
\U_ALU_NS|Mux8~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux8~19_combout\ = (!\alu_sel[2]~input_o\ & ((\alu_sel[1]~input_o\ & (\U_A_REG|output[0]~_Duplicate_1_q\)) # (!\alu_sel[1]~input_o\ & ((\U_A_REG|output[3]~_Duplicate_1_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_A_REG|output[0]~_Duplicate_1_q\,
	datab => \alu_sel[1]~input_o\,
	datac => \alu_sel[2]~input_o\,
	datad => \U_A_REG|output[3]~_Duplicate_1_q\,
	combout => \U_ALU_NS|Mux8~19_combout\);

-- Location: LCCOMB_X17_Y21_N12
\U_ALU_NS|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux3~0_combout\ = (\alu_sel[3]~input_o\ & ((\alu_sel[0]~input_o\) # ((\U_ALU_NS|Mux8~19_combout\)))) # (!\alu_sel[3]~input_o\ & (!\alu_sel[0]~input_o\ & (\U_ALU_NS|Mux8~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_sel[3]~input_o\,
	datab => \alu_sel[0]~input_o\,
	datac => \U_ALU_NS|Mux8~24_combout\,
	datad => \U_ALU_NS|Mux8~19_combout\,
	combout => \U_ALU_NS|Mux3~0_combout\);

-- Location: LCCOMB_X17_Y21_N14
\U_ALU_NS|Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux3~1_combout\ = (\alu_sel[0]~input_o\ & ((\U_ALU_NS|Mux3~0_combout\ & (\U_ALU_NS|Mux8~25_combout\)) # (!\U_ALU_NS|Mux3~0_combout\ & ((\U_ALU_NS|Mux8~37_combout\))))) # (!\alu_sel[0]~input_o\ & (((\U_ALU_NS|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU_NS|Mux8~25_combout\,
	datab => \U_ALU_NS|Mux8~37_combout\,
	datac => \alu_sel[0]~input_o\,
	datad => \U_ALU_NS|Mux3~0_combout\,
	combout => \U_ALU_NS|Mux3~1_combout\);

-- Location: LCCOMB_X17_Y21_N2
\U_OUT_REG|output[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_OUT_REG|output[4]~feeder_combout\ = \U_ALU_NS|Mux3~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_ALU_NS|Mux3~1_combout\,
	combout => \U_OUT_REG|output[4]~feeder_combout\);

-- Location: FF_X17_Y21_N3
\U_OUT_REG|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_OUT_REG|output[4]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_ADDR_TOP|U_logic|temp_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_OUT_REG|output\(4));

-- Location: LCCOMB_X20_Y22_N24
\U_ALU_NS|Mux8~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux8~12_combout\ = (!\alu_sel[2]~input_o\ & \U_A_REG|output[1]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_sel[2]~input_o\,
	datad => \U_A_REG|output[1]~_Duplicate_1_q\,
	combout => \U_ALU_NS|Mux8~12_combout\);

-- Location: LCCOMB_X20_Y22_N8
\U_ALU_NS|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux2~0_combout\ = (\alu_sel[1]~input_o\ & ((\alu_sel[0]~input_o\) # ((\U_ALU_NS|Mux8~12_combout\)))) # (!\alu_sel[1]~input_o\ & (!\alu_sel[0]~input_o\ & (\U_ALU_NS|Mux8~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_sel[1]~input_o\,
	datab => \alu_sel[0]~input_o\,
	datac => \U_ALU_NS|Mux8~18_combout\,
	datad => \U_ALU_NS|Mux8~12_combout\,
	combout => \U_ALU_NS|Mux2~0_combout\);

-- Location: LCCOMB_X20_Y22_N2
\U_ALU_NS|Mux2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux2~1_combout\ = (\alu_sel[0]~input_o\ & ((\U_ALU_NS|Mux2~0_combout\ & ((\U_ALU_NS|Mux8~17_combout\))) # (!\U_ALU_NS|Mux2~0_combout\ & (\U_ALU_NS|Mux8~15_combout\)))) # (!\alu_sel[0]~input_o\ & (((\U_ALU_NS|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU_NS|Mux8~15_combout\,
	datab => \alu_sel[0]~input_o\,
	datac => \U_ALU_NS|Mux2~0_combout\,
	datad => \U_ALU_NS|Mux8~17_combout\,
	combout => \U_ALU_NS|Mux2~1_combout\);

-- Location: LCCOMB_X17_Y20_N20
\U_ALU_NS|Mux2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux2~5_combout\ = (!\alu_sel[1]~input_o\ & ((\U_ALU_NS|Mux2~4_combout\ & ((\alu_sel[2]~input_o\) # (!\U_B_REG|output\(5)))) # (!\U_ALU_NS|Mux2~4_combout\ & ((\U_B_REG|output\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU_NS|Mux2~4_combout\,
	datab => \alu_sel[1]~input_o\,
	datac => \alu_sel[2]~input_o\,
	datad => \U_B_REG|output\(5),
	combout => \U_ALU_NS|Mux2~5_combout\);

-- Location: LCCOMB_X17_Y20_N16
\U_ALU_NS|Mux2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux2~8_combout\ = (\alu_sel[2]~input_o\ & (\U_A_REG|output[5]~_Duplicate_1_q\ $ (((\alu_sel[1]~input_o\) # (\U_B_REG|output\(5)))))) # (!\alu_sel[2]~input_o\ & (((\U_A_REG|output[5]~_Duplicate_1_q\ & \U_B_REG|output\(5))) # 
-- (!\alu_sel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101101100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_A_REG|output[5]~_Duplicate_1_q\,
	datab => \alu_sel[1]~input_o\,
	datac => \alu_sel[2]~input_o\,
	datad => \U_B_REG|output\(5),
	combout => \U_ALU_NS|Mux2~8_combout\);

-- Location: LCCOMB_X17_Y20_N2
\U_ALU_NS|Mux2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux2~9_combout\ = (\U_ALU_NS|Mux2~8_combout\ & ((\U_ALU_NS|Add0~10_combout\) # ((\alu_sel[1]~input_o\) # (\alu_sel[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU_NS|Add0~10_combout\,
	datab => \alu_sel[1]~input_o\,
	datac => \alu_sel[2]~input_o\,
	datad => \U_ALU_NS|Mux2~8_combout\,
	combout => \U_ALU_NS|Mux2~9_combout\);

-- Location: LCCOMB_X17_Y20_N14
\U_ALU_NS|Mux2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux2~6_combout\ = (\alu_sel[0]~input_o\ & (((\U_ALU_NS|Mux2~9_combout\)))) # (!\alu_sel[0]~input_o\ & ((\U_ALU_NS|Mux2~3_combout\) # ((\U_ALU_NS|Mux2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU_NS|Mux2~3_combout\,
	datab => \U_ALU_NS|Mux2~5_combout\,
	datac => \alu_sel[0]~input_o\,
	datad => \U_ALU_NS|Mux2~9_combout\,
	combout => \U_ALU_NS|Mux2~6_combout\);

-- Location: LCCOMB_X17_Y21_N4
\U_ALU_NS|Mux2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux2~7_combout\ = (\alu_sel[3]~input_o\ & (\U_ALU_NS|Mux2~1_combout\)) # (!\alu_sel[3]~input_o\ & ((\U_ALU_NS|Mux2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_sel[3]~input_o\,
	datac => \U_ALU_NS|Mux2~1_combout\,
	datad => \U_ALU_NS|Mux2~6_combout\,
	combout => \U_ALU_NS|Mux2~7_combout\);

-- Location: FF_X17_Y21_N5
\U_OUT_REG|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_ALU_NS|Mux2~7_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_ADDR_TOP|U_logic|temp_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_OUT_REG|output\(5));

-- Location: LCCOMB_X20_Y20_N4
\U_ALU_NS|Mux1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux1~7_combout\ = (\alu_sel[2]~input_o\ & (\U_A_REG|output[6]~_Duplicate_1_q\ $ (((\U_B_REG|output\(6)) # (\alu_sel[1]~input_o\))))) # (!\alu_sel[2]~input_o\ & (((\U_B_REG|output\(6) & \U_A_REG|output[6]~_Duplicate_1_q\)) # 
-- (!\alu_sel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_B_REG|output\(6),
	datab => \alu_sel[1]~input_o\,
	datac => \alu_sel[2]~input_o\,
	datad => \U_A_REG|output[6]~_Duplicate_1_q\,
	combout => \U_ALU_NS|Mux1~7_combout\);

-- Location: LCCOMB_X20_Y20_N6
\U_ALU_NS|Mux1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux1~8_combout\ = (\U_ALU_NS|Mux1~7_combout\ & ((\U_ALU_NS|Add0~12_combout\) # ((\alu_sel[2]~input_o\) # (\alu_sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU_NS|Add0~12_combout\,
	datab => \alu_sel[2]~input_o\,
	datac => \U_ALU_NS|Mux1~7_combout\,
	datad => \alu_sel[1]~input_o\,
	combout => \U_ALU_NS|Mux1~8_combout\);

-- Location: LCCOMB_X20_Y22_N6
\U_ALU_NS|Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux1~1_combout\ = (\U_ALU_NS|Mux1~0_combout\ & ((\U_ALU_NS|Mux8~12_combout\) # ((!\alu_sel[0]~input_o\)))) # (!\U_ALU_NS|Mux1~0_combout\ & (((\U_ALU_NS|Mux8~13_combout\ & \alu_sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU_NS|Mux1~0_combout\,
	datab => \U_ALU_NS|Mux8~12_combout\,
	datac => \U_ALU_NS|Mux8~13_combout\,
	datad => \alu_sel[0]~input_o\,
	combout => \U_ALU_NS|Mux1~1_combout\);

-- Location: LCCOMB_X17_Y21_N8
\U_ALU_NS|Mux1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux1~2_combout\ = (\alu_sel[3]~input_o\ & (((\U_ALU_NS|Mux1~1_combout\)))) # (!\alu_sel[3]~input_o\ & (\alu_sel[0]~input_o\ & (\U_ALU_NS|Mux1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_sel[3]~input_o\,
	datab => \alu_sel[0]~input_o\,
	datac => \U_ALU_NS|Mux1~8_combout\,
	datad => \U_ALU_NS|Mux1~1_combout\,
	combout => \U_ALU_NS|Mux1~2_combout\);

-- Location: LCCOMB_X17_Y21_N28
\U_ALU_NS|Mux1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux1~6_combout\ = (\U_ALU_NS|Mux1~2_combout\) # ((\U_ALU_NS|Mux1~5_combout\ & (!\alu_sel[0]~input_o\ & !\alu_sel[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU_NS|Mux1~5_combout\,
	datab => \alu_sel[0]~input_o\,
	datac => \U_ALU_NS|Mux1~2_combout\,
	datad => \alu_sel[3]~input_o\,
	combout => \U_ALU_NS|Mux1~6_combout\);

-- Location: LCCOMB_X17_Y21_N22
\U_OUT_REG|output[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_OUT_REG|output[6]~feeder_combout\ = \U_ALU_NS|Mux1~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_ALU_NS|Mux1~6_combout\,
	combout => \U_OUT_REG|output[6]~feeder_combout\);

-- Location: FF_X17_Y21_N23
\U_OUT_REG|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_OUT_REG|output[6]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_ADDR_TOP|U_logic|temp_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_OUT_REG|output\(6));

-- Location: LCCOMB_X20_Y20_N24
\U_ALU_NS|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Add0~14_combout\ = \U_B_REG|output\(7) $ (\U_ALU_NS|Add0~13\ $ (!\U_A_REG|output[7]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_B_REG|output\(7),
	datad => \U_A_REG|output[7]~_Duplicate_1_q\,
	cin => \U_ALU_NS|Add0~13\,
	combout => \U_ALU_NS|Add0~14_combout\);

-- Location: LCCOMB_X20_Y20_N8
\U_ALU_NS|Mux8~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux8~34_combout\ = (\alu_sel[2]~input_o\ & (\U_A_REG|output[7]~_Duplicate_1_q\ $ (((\U_B_REG|output\(7)) # (\alu_sel[1]~input_o\))))) # (!\alu_sel[2]~input_o\ & (((\U_A_REG|output[7]~_Duplicate_1_q\ & \U_B_REG|output\(7))) # 
-- (!\alu_sel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100001101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_A_REG|output[7]~_Duplicate_1_q\,
	datab => \U_B_REG|output\(7),
	datac => \alu_sel[2]~input_o\,
	datad => \alu_sel[1]~input_o\,
	combout => \U_ALU_NS|Mux8~34_combout\);

-- Location: LCCOMB_X20_Y20_N26
\U_ALU_NS|Mux8~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux8~35_combout\ = (\U_ALU_NS|Mux8~34_combout\ & ((\alu_sel[1]~input_o\) # ((\U_ALU_NS|Add0~14_combout\) # (\alu_sel[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_sel[1]~input_o\,
	datab => \U_ALU_NS|Add0~14_combout\,
	datac => \alu_sel[2]~input_o\,
	datad => \U_ALU_NS|Mux8~34_combout\,
	combout => \U_ALU_NS|Mux8~35_combout\);

-- Location: LCCOMB_X20_Y20_N0
\U_ALU_NS|Mux8~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux8~29_combout\ = (\alu_sel[2]~input_o\ & (((!\U_B_REG|output\(7) & !\U_A_REG|output[7]~_Duplicate_1_q\)))) # (!\alu_sel[2]~input_o\ & (\U_ALU_NS|Mult0|auto_generated|mac_out2~DATAOUT7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU_NS|Mult0|auto_generated|mac_out2~DATAOUT7\,
	datab => \alu_sel[2]~input_o\,
	datac => \U_B_REG|output\(7),
	datad => \U_A_REG|output[7]~_Duplicate_1_q\,
	combout => \U_ALU_NS|Mux8~29_combout\);

-- Location: LCCOMB_X21_Y22_N4
\U_ALU_NS|Mux8~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux8~27_combout\ = (\U_ALU_NS|Mux8~21_combout\ & (\U_B_REG|output\(7) $ (\U_A_REG|output[7]~_Duplicate_1_q\ $ (\U_ALU_NS|v_carry~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU_NS|Mux8~21_combout\,
	datab => \U_B_REG|output\(7),
	datac => \U_A_REG|output[7]~_Duplicate_1_q\,
	datad => \U_ALU_NS|v_carry~7_combout\,
	combout => \U_ALU_NS|Mux8~27_combout\);

-- Location: LCCOMB_X17_Y21_N6
\U_ALU_NS|Mux8~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux8~30_combout\ = (\U_ALU_NS|Mux8~28_combout\) # ((\U_ALU_NS|Mux8~27_combout\) # ((\U_ALU_NS|Mux8~29_combout\ & \alu_sel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU_NS|Mux8~28_combout\,
	datab => \U_ALU_NS|Mux8~29_combout\,
	datac => \U_ALU_NS|Mux8~27_combout\,
	datad => \alu_sel[1]~input_o\,
	combout => \U_ALU_NS|Mux8~30_combout\);

-- Location: LCCOMB_X17_Y21_N16
\U_ALU_NS|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux0~0_combout\ = (\alu_sel[3]~input_o\ & (\alu_sel[0]~input_o\)) # (!\alu_sel[3]~input_o\ & ((\alu_sel[0]~input_o\ & (\U_ALU_NS|Mux8~35_combout\)) # (!\alu_sel[0]~input_o\ & ((\U_ALU_NS|Mux8~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_sel[3]~input_o\,
	datab => \alu_sel[0]~input_o\,
	datac => \U_ALU_NS|Mux8~35_combout\,
	datad => \U_ALU_NS|Mux8~30_combout\,
	combout => \U_ALU_NS|Mux0~0_combout\);

-- Location: LCCOMB_X21_Y22_N26
\U_ALU_NS|Mux8~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux8~26_combout\ = (!\alu_sel[2]~input_o\ & ((\alu_sel[1]~input_o\ & ((\U_A_REG|output[3]~_Duplicate_1_q\))) # (!\alu_sel[1]~input_o\ & (\U_A_REG|output[6]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_sel[1]~input_o\,
	datab => \U_A_REG|output[6]~_Duplicate_1_q\,
	datac => \alu_sel[2]~input_o\,
	datad => \U_A_REG|output[3]~_Duplicate_1_q\,
	combout => \U_ALU_NS|Mux8~26_combout\);

-- Location: LCCOMB_X17_Y21_N10
\U_ALU_NS|Mux8~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux8~31_combout\ = (\alu_sel[1]~input_o\ & (!\alu_sel[2]~input_o\ & \U_A_REG|output[0]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_sel[1]~input_o\,
	datab => \alu_sel[2]~input_o\,
	datad => \U_A_REG|output[0]~_Duplicate_1_q\,
	combout => \U_ALU_NS|Mux8~31_combout\);

-- Location: LCCOMB_X17_Y21_N20
\U_ALU_NS|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU_NS|Mux0~1_combout\ = (\alu_sel[3]~input_o\ & ((\U_ALU_NS|Mux0~0_combout\ & ((\U_ALU_NS|Mux8~31_combout\))) # (!\U_ALU_NS|Mux0~0_combout\ & (\U_ALU_NS|Mux8~26_combout\)))) # (!\alu_sel[3]~input_o\ & (\U_ALU_NS|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_sel[3]~input_o\,
	datab => \U_ALU_NS|Mux0~0_combout\,
	datac => \U_ALU_NS|Mux8~26_combout\,
	datad => \U_ALU_NS|Mux8~31_combout\,
	combout => \U_ALU_NS|Mux0~1_combout\);

-- Location: LCCOMB_X17_Y21_N0
\U_OUT_REG|output[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_OUT_REG|output[7]~feeder_combout\ = \U_ALU_NS|Mux0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_ALU_NS|Mux0~1_combout\,
	combout => \U_OUT_REG|output[7]~feeder_combout\);

-- Location: FF_X17_Y21_N1
\U_OUT_REG|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \U_OUT_REG|output[7]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_ADDR_TOP|U_logic|temp_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_OUT_REG|output\(7));

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

-- Location: FF_X17_Y16_N3
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

-- Location: FF_X17_Y16_N13
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

-- Location: FF_X17_Y16_N15
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

-- Location: FF_X17_Y16_N17
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][4]~feeder_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][4]~q\);

-- Location: FF_X17_Y16_N19
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

-- Location: FF_X17_Y16_N21
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

-- Location: FF_X17_Y16_N23
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

-- Location: LCCOMB_X17_Y24_N0
\auto_hub|~GND\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
;

-- Location: LCCOMB_X16_Y17_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~_wirecell\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~q\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~_wirecell_combout\);

-- Location: LCCOMB_X14_Y17_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[0]~_wirecell\ : cycloneiii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[0]~_wirecell_combout\);
END structure;


