transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/j_salkey/Documents/GitHub/DE0 UI/VHDL/decoder7seg.vhd}
vcom -93 -work work {C:/Users/j_salkey/Documents/GitHub/DE0 UI/VHDL/vJTAG.vhd}
vcom -93 -work work {C:/Users/j_salkey/Documents/GitHub/DE0 UI/VHDL/mem_pkg.vhd}
vcom -93 -work work {C:/Users/j_salkey/Documents/GitHub/DE0 UI/VHDL/ram.vhd}
vcom -93 -work work {C:/Users/j_salkey/Documents/GitHub/DE0 UI/VHDL/tdi_shifter.vhd}
vcom -93 -work work {C:/Users/j_salkey/Documents/GitHub/DE0 UI/VHDL/memory_map.vhd}
vcom -93 -work work {C:/Users/j_salkey/Documents/GitHub/DE0 UI/VHDL/tdo_shifter.vhd}
vcom -93 -work work {C:/Users/j_salkey/Documents/GitHub/DE0 UI/VHDL/jtag_wrapper.vhd}
vcom -93 -work work {C:/Users/j_salkey/Documents/GitHub/DE0 UI/vJTAG_ALU_Generic_restored/output_files/tb.vhd}

