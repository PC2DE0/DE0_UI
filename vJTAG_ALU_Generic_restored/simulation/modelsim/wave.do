onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /jtag_wrapper/U_TDI_SHIFTER/clk
add wave -noupdate /jtag_wrapper/U_TDI_SHIFTER/state
add wave -noupdate /jtag_wrapper/U_TDI_SHIFTER/v_sdr
add wave -noupdate /jtag_wrapper/U_TDI_SHIFTER/ir_in
add wave -noupdate /jtag_wrapper/U_TDI_SHIFTER/udr
add wave -noupdate /jtag_wrapper/U_TDI_SHIFTER/tdi
add wave -noupdate /jtag_wrapper/address_register
add wave -noupdate /jtag_wrapper/data_register
add wave -noupdate /jtag_wrapper/U_TDI_SHIFTER/output_address
add wave -noupdate /jtag_wrapper/U_TDI_SHIFTER/output_data
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 243
configure wave -valuecolwidth 100
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
WaveRestoreZoom {0 ps} {815 ps}
