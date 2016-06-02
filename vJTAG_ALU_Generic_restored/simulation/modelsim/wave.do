onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /jtag_wrapper/U_TDI_SHIFTER/clk
add wave -noupdate /jtag_wrapper/U_TDI_SHIFTER/state
add wave -noupdate /jtag_wrapper/U_TDI_SHIFTER/output_address
add wave -noupdate /jtag_wrapper/U_TDI_SHIFTER/output_data
add wave -noupdate /jtag_wrapper/U_TDO_SHIFTER/state
add wave -noupdate /jtag_wrapper/U_TDO_SHIFTER/data
add wave -noupdate /jtag_wrapper/U_TDO_SHIFTER/v_sdr
add wave -noupdate /jtag_wrapper/U_TDO_SHIFTER/valid
add wave -noupdate /jtag_wrapper/U_TDO_SHIFTER/output
add wave -noupdate /jtag_wrapper/U_TDO_SHIFTER/temp_reg
add wave -noupdate /jtag_wrapper/U_TDO_SHIFTER/valid_reg
add wave -noupdate /jtag_wrapper/U_TDO_SHIFTER/data_reg
add wave -noupdate /jtag_wrapper/U_TDO_SHIFTER/next_data
add wave -noupdate /jtag_wrapper/U_TDO_SHIFTER/next_state
add wave -noupdate /jtag_wrapper/U_TDO_SHIFTER/next_temp
add wave -noupdate /jtag_wrapper/U_TDO_SHIFTER/next_valid
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 664
configure wave -valuecolwidth 40
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ms
update
WaveRestoreZoom {0 ps} {38 ps}
