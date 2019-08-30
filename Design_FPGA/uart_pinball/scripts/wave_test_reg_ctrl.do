onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group {REG CTRL} /test_reg_ctrl/reg_ctrl_inst/reset_n
add wave -noupdate -expand -group {REG CTRL} /test_reg_ctrl/reg_ctrl_inst/clock_i
add wave -noupdate -expand -group {REG CTRL} /test_reg_ctrl/reg_ctrl_inst/rcvd_addr_reg_i
add wave -noupdate -expand -group {REG CTRL} /test_reg_ctrl/reg_ctrl_inst/wdata_reg_i
add wave -noupdate -expand -group {REG CTRL} /test_reg_ctrl/reg_ctrl_inst/rw_reg_i
add wave -noupdate -expand -group {REG CTRL} /test_reg_ctrl/reg_ctrl_inst/start_rw_i
add wave -noupdate -expand -group {REG CTRL} /test_reg_ctrl/reg_ctrl_inst/data_valid_o
add wave -noupdate -expand -group {REG CTRL} /test_reg_ctrl/reg_ctrl_inst/reg_addr_ok_o
add wave -noupdate -expand -group {REG CTRL} /test_reg_ctrl/reg_ctrl_inst/rdata_reg_o
add wave -noupdate -expand -group {REG CTRL} /test_reg_ctrl/reg_ctrl_inst/start_rw_i_s
add wave -noupdate -expand -group {REG CTRL} /test_reg_ctrl/reg_ctrl_inst/start_rw_i_r_edge
add wave -noupdate -expand -group {REG CTRL} /test_reg_ctrl/reg_ctrl_inst/rcvd_addr_reg_i_s
add wave -noupdate -expand -group {REG CTRL} /test_reg_ctrl/reg_ctrl_inst/wdata_reg_i_s
add wave -noupdate -expand -group {REG CTRL} /test_reg_ctrl/reg_ctrl_inst/rw_reg_i_s
add wave -noupdate -expand -group {REG CTRL} /test_reg_ctrl/reg_ctrl_inst/check_on_s
add wave -noupdate -expand -group {REG CTRL} /test_reg_ctrl/reg_ctrl_inst/check_done_s
add wave -noupdate -expand -group {REG CTRL} /test_reg_ctrl/reg_ctrl_inst/array_reg
add wave -noupdate -expand -group {REG CTRL} /test_reg_ctrl/reg_ctrl_inst/reg_addr_ok_o_s
add wave -noupdate -expand -group {REG CTRL} /test_reg_ctrl/reg_ctrl_inst/rdata_reg_o_s
add wave -noupdate -expand -group {REG CTRL} /test_reg_ctrl/reg_ctrl_inst/data_valid_o_s
add wave -noupdate -expand -group {REG CTRL} /test_reg_ctrl/reg_ctrl_inst/data_valid_o_ss
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {99128 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 183
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {99050 ns} {100039 ns}
