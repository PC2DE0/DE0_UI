# Copyright (C) 1991-2013 Altera Corporation
# Your use of Altera Corporation's design tools, logic functions 
# and other software and tools, and its AMPP partner logic 
# functions, and any output files from any of the foregoing 
# (including device programming or simulation files), and any 
# associated documentation or information are expressly subject 
# to the terms and conditions of the Altera Program License 
# Subscription Agreement, Altera MegaCore Function License 
# Agreement, or other applicable license agreement, including, 
# without limitation, that your use is for the sole purpose of 
# programming logic devices manufactured by Altera and sold by 
# Altera or its authorized distributors.  Please refer to the 
# applicable agreement for further details.

# Quartus II: Generate Tcl File for Project
# File: vJTAG_ALU.tcl
# Generated on: Mon Jul 28 21:41:29 2014

# Load Quartus II Tcl Project package
package require ::quartus::project

set need_to_close_project 0
set make_assignments 1

# Check that the right project is open
if {[is_project_open]} {
	if {[string compare $quartus(project) "vJTAG_ALU"]} {
		puts "Project vJTAG_ALU is not open"
		set make_assignments 0
	}
} else {
	# Only open if not already open
	if {[project_exists vJTAG_ALU]} {
		project_open -revision vJTAG_ALU vJTAG_ALU
	} else {
		project_new -revision vJTAG_ALU vJTAG_ALU
	}
	set need_to_close_project 1
}

# Make assignments
if {$make_assignments} {
	set_global_assignment -name FAMILY "Cyclone III"
	set_global_assignment -name DEVICE EP3C16F484C6
	set_global_assignment -name TOP_LEVEL_ENTITY top_level
	set_global_assignment -name ORIGINAL_QUARTUS_VERSION 13.1
	set_global_assignment -name PROJECT_CREATION_TIME_DATE "17:52:00  JUNE 27, 2014"
	set_global_assignment -name LAST_QUARTUS_VERSION 13.1
	set_global_assignment -name PROJECT_OUTPUT_DIRECTORY output_files
	set_global_assignment -name MIN_CORE_JUNCTION_TEMP 0
	set_global_assignment -name MAX_CORE_JUNCTION_TEMP 85
	set_global_assignment -name DEVICE_FILTER_PACKAGE FBGA
	set_global_assignment -name DEVICE_FILTER_PIN_COUNT 484
	set_global_assignment -name DEVICE_FILTER_SPEED_GRADE 6
	set_global_assignment -name ERROR_CHECK_FREQUENCY_DIVISOR 1
	set_global_assignment -name EDA_SIMULATION_TOOL "ModelSim-Altera (VHDL)"
	set_global_assignment -name EDA_OUTPUT_DATA_FORMAT VHDL -section_id eda_simulation
	set_global_assignment -name PARTITION_NETLIST_TYPE SOURCE -section_id Top
	set_global_assignment -name PARTITION_FITTER_PRESERVATION_LEVEL PLACEMENT_AND_ROUTING -section_id Top
	set_global_assignment -name PARTITION_COLOR 16764057 -section_id Top
	set_global_assignment -name STRATIX_DEVICE_IO_STANDARD "2.5 V"
	set_global_assignment -name USE_CONFIGURATION_DEVICE OFF
	set_global_assignment -name CRC_ERROR_OPEN_DRAIN OFF
	set_global_assignment -name RESERVE_ALL_UNUSED_PINS_WEAK_PULLUP "AS INPUT TRI-STATED"
	set_global_assignment -name OUTPUT_IO_TIMING_NEAR_END_VMEAS "HALF VCCIO" -rise
	set_global_assignment -name OUTPUT_IO_TIMING_NEAR_END_VMEAS "HALF VCCIO" -fall
	set_global_assignment -name OUTPUT_IO_TIMING_FAR_END_VMEAS "HALF SIGNAL SWING" -rise
	set_global_assignment -name OUTPUT_IO_TIMING_FAR_END_VMEAS "HALF SIGNAL SWING" -fall
	set_global_assignment -name VHDL_FILE top_level.vhd
	set_global_assignment -name VHDL_FILE reg_gen.vhd
	set_global_assignment -name VHDL_FILE decoder7seg.vhd
	set_global_assignment -name VHDL_FILE alu_ns.vhd
	set_global_assignment -name VHDL_FILE addr_top.vhd
	set_global_assignment -name VHDL_FILE addr_reg.vhd
	set_global_assignment -name VHDL_FILE addr_count.vhd
	set_global_assignment -name QIP_FILE vJTAG.qip
	set_global_assignment -name VHDL_FILE d_logic.vhd
	set_global_assignment -name VHDL_FILE shft_reg.vhd
	set_global_assignment -name VHDL_FILE shft_reg_v2.vhd
	set_global_assignment -name VHDL_FILE shft_reg_v3.vhd
	set_location_assignment PIN_B15 -to ov_flag
	set_location_assignment PIN_D2 -to rst
	set_location_assignment PIN_J6 -to alu_sel[0]
	set_location_assignment PIN_H5 -to alu_sel[1]
	set_location_assignment PIN_H6 -to alu_sel[2]
	set_location_assignment PIN_G4 -to alu_sel[3]
	set_location_assignment PIN_E11 -to led_lo_a[6]
	set_location_assignment PIN_F11 -to led_lo_a[5]
	set_location_assignment PIN_H12 -to led_lo_a[4]
	set_location_assignment PIN_H13 -to led_lo_a[3]
	set_location_assignment PIN_G12 -to led_lo_a[2]
	set_location_assignment PIN_F12 -to led_lo_a[1]
	set_location_assignment PIN_F13 -to led_lo_a[0]
	set_location_assignment PIN_A13 -to led_hi_a[6]
	set_location_assignment PIN_B13 -to led_hi_a[5]
	set_location_assignment PIN_C13 -to led_hi_a[4]
	set_location_assignment PIN_A14 -to led_hi_a[3]
	set_location_assignment PIN_B14 -to led_hi_a[2]
	set_location_assignment PIN_E14 -to led_hi_a[1]
	set_location_assignment PIN_A15 -to led_hi_a[0]
	set_location_assignment PIN_B18 -to led_hi_b[6]
	set_location_assignment PIN_F15 -to led_hi_b[5]
	set_location_assignment PIN_A19 -to led_hi_b[4]
	set_location_assignment PIN_B19 -to led_hi_b[3]
	set_location_assignment PIN_C19 -to led_hi_b[2]
	set_location_assignment PIN_D19 -to led_hi_b[1]
	set_location_assignment PIN_G15 -to led_hi_b[0]
	set_location_assignment PIN_D15 -to led_lo_b[6]
	set_location_assignment PIN_A16 -to led_lo_b[5]
	set_location_assignment PIN_B16 -to led_lo_b[4]
	set_location_assignment PIN_E15 -to led_lo_b[3]
	set_location_assignment PIN_A17 -to led_lo_b[2]
	set_location_assignment PIN_B17 -to led_lo_b[1]
	set_location_assignment PIN_F14 -to led_lo_b[0]
	set_location_assignment PIN_J1 -to output[0]
	set_location_assignment PIN_J2 -to output[1]
	set_location_assignment PIN_C2 -to output[7]
	set_location_assignment PIN_C1 -to output[6]
	set_location_assignment PIN_E1 -to output[5]
	set_location_assignment PIN_F2 -to output[4]
	set_location_assignment PIN_H1 -to output[3]
	set_location_assignment PIN_J3 -to output[2]
	set_instance_assignment -name PARTITION_HIERARCHY root_partition -to | -section_id Top

	# Commit assignments
	export_assignments

	# Close project
	if {$need_to_close_project} {
		project_close
	}
}
