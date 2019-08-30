onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group UART_CTRL /test_uart_ctrl/uart_ctrl_inst/reset_n
add wave -noupdate -expand -group UART_CTRL /test_uart_ctrl/uart_ctrl_inst/clock_i
add wave -noupdate -expand -group UART_CTRL -color Sienna /test_uart_ctrl/uart_ctrl_inst/reg_data_valid_i
add wave -noupdate -expand -group UART_CTRL /test_uart_ctrl/uart_ctrl_inst/addr_reg_ok_i
add wave -noupdate -expand -group UART_CTRL /test_uart_ctrl/uart_ctrl_inst/rcvd_addr_reg_o
add wave -noupdate -expand -group UART_CTRL /test_uart_ctrl/uart_ctrl_inst/wdata_reg_o
add wave -noupdate -expand -group UART_CTRL /test_uart_ctrl/uart_ctrl_inst/rw_reg_o
add wave -noupdate -expand -group UART_CTRL /test_uart_ctrl/uart_ctrl_inst/start_rw_reg_o
add wave -noupdate -expand -group UART_CTRL /test_uart_ctrl/uart_ctrl_inst/rx_uart_i
add wave -noupdate -expand -group UART_CTRL /test_uart_ctrl/uart_ctrl_inst/tx_uart_o
add wave -noupdate -expand -group UART_CTRL /test_uart_ctrl/uart_ctrl_inst/rx_data_s
add wave -noupdate -expand -group UART_CTRL /test_uart_ctrl/uart_ctrl_inst/rx_done_s
add wave -noupdate -expand -group UART_CTRL /test_uart_ctrl/uart_ctrl_inst/parity_rcvd_s
add wave -noupdate -expand -group UART_CTRL /test_uart_ctrl/uart_ctrl_inst/tx_done_s
add wave -noupdate -expand -group UART_CTRL /test_uart_ctrl/uart_ctrl_inst/start_tx_s
add wave -noupdate -expand -group UART_CTRL -color {Orange Red} -radix ascii -radixshowbase 0 /test_uart_ctrl/uart_ctrl_inst/tx_data_s
add wave -noupdate -expand -group UART_CTRL -group {TX_uart module} /test_uart_ctrl/uart_ctrl_inst/tx_uart_inst/reset_n
add wave -noupdate -expand -group UART_CTRL -group {TX_uart module} /test_uart_ctrl/uart_ctrl_inst/tx_uart_inst/clock
add wave -noupdate -expand -group UART_CTRL -group {TX_uart module} /test_uart_ctrl/uart_ctrl_inst/tx_uart_inst/start_tx
add wave -noupdate -expand -group UART_CTRL -group {TX_uart module} /test_uart_ctrl/uart_ctrl_inst/tx_uart_inst/tx_data
add wave -noupdate -expand -group UART_CTRL -group {TX_uart module} /test_uart_ctrl/uart_ctrl_inst/tx_uart_inst/tx
add wave -noupdate -expand -group UART_CTRL -group {TX_uart module} /test_uart_ctrl/uart_ctrl_inst/tx_uart_inst/tx_done
add wave -noupdate -expand -group UART_CTRL -group {TX_uart module} /test_uart_ctrl/uart_ctrl_inst/tx_uart_inst/tx_fsm
add wave -noupdate -expand -group UART_CTRL -group {TX_uart module} /test_uart_ctrl/uart_ctrl_inst/tx_uart_inst/latch_done_s
add wave -noupdate -expand -group UART_CTRL -group {TX_uart module} /test_uart_ctrl/uart_ctrl_inst/tx_uart_inst/start_tx_s
add wave -noupdate -expand -group UART_CTRL -group {TX_uart module} /test_uart_ctrl/uart_ctrl_inst/tx_uart_inst/start_tx_r_edge
add wave -noupdate -expand -group UART_CTRL -group {TX_uart module} /test_uart_ctrl/uart_ctrl_inst/tx_uart_inst/tx_data_s
add wave -noupdate -expand -group UART_CTRL -group {TX_uart module} /test_uart_ctrl/uart_ctrl_inst/tx_uart_inst/tx_s
add wave -noupdate -expand -group UART_CTRL -group {TX_uart module} /test_uart_ctrl/uart_ctrl_inst/tx_uart_inst/cnt_bit_duration
add wave -noupdate -expand -group UART_CTRL -group {TX_uart module} /test_uart_ctrl/uart_ctrl_inst/tx_uart_inst/tick_data
add wave -noupdate -expand -group UART_CTRL -group {TX_uart module} /test_uart_ctrl/uart_ctrl_inst/tx_uart_inst/cnt_data
add wave -noupdate -expand -group UART_CTRL -group {TX_uart module} /test_uart_ctrl/uart_ctrl_inst/tx_uart_inst/cnt_bit
add wave -noupdate -expand -group UART_CTRL -group {TX_uart module} /test_uart_ctrl/uart_ctrl_inst/tx_uart_inst/cnt_stop_bit
add wave -noupdate -expand -group UART_CTRL -group {TX_uart module} /test_uart_ctrl/uart_ctrl_inst/tx_uart_inst/tx_done_s
add wave -noupdate -expand -group UART_CTRL -group {TX_uart module} /test_uart_ctrl/uart_ctrl_inst/tx_uart_inst/parity_value
add wave -noupdate -expand -group UART_CTRL -expand -group UART_MNGT /test_uart_ctrl/uart_ctrl_inst/uart_mngt_inst/data_size
add wave -noupdate -expand -group UART_CTRL -expand -group UART_MNGT /test_uart_ctrl/uart_ctrl_inst/uart_mngt_inst/reset_n
add wave -noupdate -expand -group UART_CTRL -expand -group UART_MNGT /test_uart_ctrl/uart_ctrl_inst/uart_mngt_inst/clock_i
add wave -noupdate -expand -group UART_CTRL -expand -group UART_MNGT /test_uart_ctrl/uart_ctrl_inst/uart_mngt_inst/addr_reg_ok_i
add wave -noupdate -expand -group UART_CTRL -expand -group UART_MNGT /test_uart_ctrl/uart_ctrl_inst/uart_mngt_inst/reg_data_valid_i
add wave -noupdate -expand -group UART_CTRL -expand -group UART_MNGT /test_uart_ctrl/uart_ctrl_inst/uart_mngt_inst/rdata_reg_i
add wave -noupdate -expand -group UART_CTRL -expand -group UART_MNGT /test_uart_ctrl/uart_ctrl_inst/uart_mngt_inst/rcvd_addr_reg_o
add wave -noupdate -expand -group UART_CTRL -expand -group UART_MNGT /test_uart_ctrl/uart_ctrl_inst/uart_mngt_inst/wdata_reg_o
add wave -noupdate -expand -group UART_CTRL -expand -group UART_MNGT /test_uart_ctrl/uart_ctrl_inst/uart_mngt_inst/rw_reg_o
add wave -noupdate -expand -group UART_CTRL -expand -group UART_MNGT /test_uart_ctrl/uart_ctrl_inst/uart_mngt_inst/start_rw_reg_o
add wave -noupdate -expand -group UART_CTRL -expand -group UART_MNGT /test_uart_ctrl/uart_ctrl_inst/uart_mngt_inst/rx_data_i
add wave -noupdate -expand -group UART_CTRL -expand -group UART_MNGT /test_uart_ctrl/uart_ctrl_inst/uart_mngt_inst/rx_done_i
add wave -noupdate -expand -group UART_CTRL -expand -group UART_MNGT /test_uart_ctrl/uart_ctrl_inst/uart_mngt_inst/parity_rcvd_i
add wave -noupdate -expand -group UART_CTRL -expand -group UART_MNGT /test_uart_ctrl/uart_ctrl_inst/uart_mngt_inst/tx_done_i
add wave -noupdate -expand -group UART_CTRL -expand -group UART_MNGT /test_uart_ctrl/uart_ctrl_inst/uart_mngt_inst/start_tx_o
add wave -noupdate -expand -group UART_CTRL -expand -group UART_MNGT /test_uart_ctrl/uart_ctrl_inst/uart_mngt_inst/tx_data_o
add wave -noupdate -expand -group UART_CTRL -expand -group UART_MNGT /test_uart_ctrl/uart_ctrl_inst/uart_mngt_inst/cnt_byte_rx
add wave -noupdate -expand -group UART_CTRL -expand -group UART_MNGT -expand /test_uart_ctrl/uart_ctrl_inst/uart_mngt_inst/byte_array
add wave -noupdate -expand -group UART_CTRL -expand -group UART_MNGT /test_uart_ctrl/uart_ctrl_inst/uart_mngt_inst/cnt_byte_tx
add wave -noupdate -expand -group UART_CTRL -expand -group UART_MNGT /test_uart_ctrl/uart_ctrl_inst/uart_mngt_inst/rx_done_i_r_edge
add wave -noupdate -expand -group UART_CTRL -expand -group UART_MNGT /test_uart_ctrl/uart_ctrl_inst/uart_mngt_inst/rx_done_i_s
add wave -noupdate -expand -group UART_CTRL -expand -group UART_MNGT /test_uart_ctrl/uart_ctrl_inst/uart_mngt_inst/tx_done_i_r_edge
add wave -noupdate -expand -group UART_CTRL -expand -group UART_MNGT /test_uart_ctrl/uart_ctrl_inst/uart_mngt_inst/tx_done_i_s
add wave -noupdate -expand -group UART_CTRL -expand -group UART_MNGT /test_uart_ctrl/uart_ctrl_inst/uart_mngt_inst/rw_cmd_s
add wave -noupdate -expand -group UART_CTRL -expand -group UART_MNGT /test_uart_ctrl/uart_ctrl_inst/uart_mngt_inst/rcvd_addr_reg_s
add wave -noupdate -expand -group UART_CTRL -expand -group UART_MNGT /test_uart_ctrl/uart_ctrl_inst/uart_mngt_inst/wdata_reg_s
add wave -noupdate -expand -group UART_CTRL -expand -group UART_MNGT /test_uart_ctrl/uart_ctrl_inst/uart_mngt_inst/start_rw_reg_s
add wave -noupdate -expand -group UART_CTRL -expand -group UART_MNGT /test_uart_ctrl/uart_ctrl_inst/uart_mngt_inst/send_resp_s
add wave -noupdate -expand -group UART_CTRL -expand -group UART_MNGT -color Brown /test_uart_ctrl/uart_ctrl_inst/uart_mngt_inst/send_ko_resp_s
add wave -noupdate -expand -group UART_CTRL -expand -group UART_MNGT /test_uart_ctrl/uart_ctrl_inst/uart_mngt_inst/cmd_byte_error_s
add wave -noupdate -expand -group UART_CTRL -expand -group UART_MNGT -color Wheat /test_uart_ctrl/uart_ctrl_inst/uart_mngt_inst/start_parse_s
add wave -noupdate -expand -group UART_CTRL -expand -group UART_MNGT /test_uart_ctrl/uart_ctrl_inst/uart_mngt_inst/parse_done_s
add wave -noupdate -expand -group UART_CTRL -expand -group UART_MNGT /test_uart_ctrl/uart_ctrl_inst/uart_mngt_inst/uart_cmd_ok_s
add wave -noupdate -expand -group UART_CTRL -expand -group UART_MNGT /test_uart_ctrl/uart_ctrl_inst/uart_mngt_inst/uart_cmd_ko_s
add wave -noupdate -expand -group UART_CTRL -expand -group UART_MNGT /test_uart_ctrl/uart_ctrl_inst/uart_mngt_inst/uart_resp_done_s
add wave -noupdate -expand -group UART_CTRL -expand -group UART_MNGT /test_uart_ctrl/uart_ctrl_inst/uart_mngt_inst/start_tx_o_s
add wave -noupdate -expand -group UART_CTRL -expand -group UART_MNGT -color Orange /test_uart_ctrl/uart_ctrl_inst/uart_mngt_inst/tx_data_o_s
add wave -noupdate -expand -group UART_CTRL -expand -group UART_MNGT /test_uart_ctrl/uart_ctrl_inst/uart_mngt_inst/raz_cmd_ok
add wave -noupdate -expand -group UART_CTRL -expand -group UART_MNGT /test_uart_ctrl/uart_ctrl_inst/uart_mngt_inst/C_KO_RESP
add wave -noupdate -expand -group UART_CTRL -expand -group UART_MNGT /test_uart_ctrl/uart_ctrl_inst/uart_mngt_inst/reg_data_valid_s
add wave -noupdate -expand -group UART_CTRL -expand -group UART_MNGT /test_uart_ctrl/uart_ctrl_inst/uart_mngt_inst/reg_data_valid_r_edge
add wave -noupdate -expand -group UART_CTRL -expand -group UART_MNGT /test_uart_ctrl/uart_ctrl_inst/uart_mngt_inst/rdata_reg_s
add wave -noupdate -group TX_uart_injector /test_uart_ctrl/tx_uart_inj_inst/reset_n
add wave -noupdate -group TX_uart_injector /test_uart_ctrl/tx_uart_inj_inst/clock
add wave -noupdate -group TX_uart_injector /test_uart_ctrl/tx_uart_inj_inst/start_tx
add wave -noupdate -group TX_uart_injector /test_uart_ctrl/tx_uart_inj_inst/tx_data
add wave -noupdate -group TX_uart_injector /test_uart_ctrl/tx_uart_inj_inst/tx
add wave -noupdate -group TX_uart_injector /test_uart_ctrl/tx_uart_inj_inst/tx_done
add wave -noupdate -group TX_uart_injector /test_uart_ctrl/tx_uart_inj_inst/tx_fsm
add wave -noupdate -group TX_uart_injector /test_uart_ctrl/tx_uart_inj_inst/latch_done_s
add wave -noupdate -group TX_uart_injector /test_uart_ctrl/tx_uart_inj_inst/start_tx_s
add wave -noupdate -group TX_uart_injector /test_uart_ctrl/tx_uart_inj_inst/start_tx_r_edge
add wave -noupdate -group TX_uart_injector /test_uart_ctrl/tx_uart_inj_inst/tx_data_s
add wave -noupdate -group TX_uart_injector /test_uart_ctrl/tx_uart_inj_inst/tx_s
add wave -noupdate -group TX_uart_injector /test_uart_ctrl/tx_uart_inj_inst/cnt_bit_duration
add wave -noupdate -group TX_uart_injector /test_uart_ctrl/tx_uart_inj_inst/tick_data
add wave -noupdate -group TX_uart_injector /test_uart_ctrl/tx_uart_inj_inst/cnt_data
add wave -noupdate -group TX_uart_injector /test_uart_ctrl/tx_uart_inj_inst/cnt_bit
add wave -noupdate -group TX_uart_injector /test_uart_ctrl/tx_uart_inj_inst/cnt_stop_bit
add wave -noupdate -group TX_uart_injector /test_uart_ctrl/tx_uart_inj_inst/tx_done_s
add wave -noupdate -group TX_uart_injector /test_uart_ctrl/tx_uart_inj_inst/parity_value
add wave -noupdate -group RX_uart_rcvd /test_uart_ctrl/rx_uart_checker_inst/reset_n
add wave -noupdate -group RX_uart_rcvd /test_uart_ctrl/rx_uart_checker_inst/clock
add wave -noupdate -group RX_uart_rcvd /test_uart_ctrl/rx_uart_checker_inst/rx
add wave -noupdate -group RX_uart_rcvd -color {Orange Red} -radix ascii -radixshowbase 0 /test_uart_ctrl/rx_uart_checker_inst/rx_data
add wave -noupdate -group RX_uart_rcvd -radix hexadecimal /test_uart_ctrl/rx_uart_checker_inst/rx_done
add wave -noupdate -group RX_uart_rcvd /test_uart_ctrl/rx_uart_checker_inst/parity_rcvd
add wave -noupdate -group RX_uart_rcvd /test_uart_ctrl/rx_uart_checker_inst/rx_fsm
add wave -noupdate -group RX_uart_rcvd /test_uart_ctrl/rx_uart_checker_inst/rx_old
add wave -noupdate -group RX_uart_rcvd /test_uart_ctrl/rx_uart_checker_inst/start_rx_fe
add wave -noupdate -group RX_uart_rcvd /test_uart_ctrl/rx_uart_checker_inst/start_rx_re
add wave -noupdate -group RX_uart_rcvd /test_uart_ctrl/rx_uart_checker_inst/start_cnt
add wave -noupdate -group RX_uart_rcvd /test_uart_ctrl/rx_uart_checker_inst/tick_data
add wave -noupdate -group RX_uart_rcvd /test_uart_ctrl/rx_uart_checker_inst/rx_data_s
add wave -noupdate -group RX_uart_rcvd /test_uart_ctrl/rx_uart_checker_inst/parity_rcvd_s
add wave -noupdate -group RX_uart_rcvd /test_uart_ctrl/rx_uart_checker_inst/rx_done_s
add wave -noupdate -group RX_uart_rcvd /test_uart_ctrl/rx_uart_checker_inst/cnt_half_bit
add wave -noupdate -group RX_uart_rcvd /test_uart_ctrl/rx_uart_checker_inst/cnt_bit
add wave -noupdate -group RX_uart_rcvd /test_uart_ctrl/rx_uart_checker_inst/cnt_data
add wave -noupdate -group RX_uart_rcvd /test_uart_ctrl/rx_uart_checker_inst/cnt_stop_bit
add wave -noupdate -expand -group {Reg Bank CTRL} /test_uart_ctrl/reg_ctrl_inst/reset_n
add wave -noupdate -expand -group {Reg Bank CTRL} /test_uart_ctrl/reg_ctrl_inst/clock_i
add wave -noupdate -expand -group {Reg Bank CTRL} /test_uart_ctrl/reg_ctrl_inst/rcvd_addr_reg_i
add wave -noupdate -expand -group {Reg Bank CTRL} /test_uart_ctrl/reg_ctrl_inst/wdata_reg_i
add wave -noupdate -expand -group {Reg Bank CTRL} /test_uart_ctrl/reg_ctrl_inst/rw_reg_i
add wave -noupdate -expand -group {Reg Bank CTRL} /test_uart_ctrl/reg_ctrl_inst/start_rw_i
add wave -noupdate -expand -group {Reg Bank CTRL} -color Maroon /test_uart_ctrl/reg_ctrl_inst/data_valid_o
add wave -noupdate -expand -group {Reg Bank CTRL} /test_uart_ctrl/reg_ctrl_inst/reg_addr_ok_o
add wave -noupdate -expand -group {Reg Bank CTRL} /test_uart_ctrl/reg_ctrl_inst/rdata_reg_o
add wave -noupdate -expand -group {Reg Bank CTRL} /test_uart_ctrl/reg_ctrl_inst/start_rw_i_s
add wave -noupdate -expand -group {Reg Bank CTRL} /test_uart_ctrl/reg_ctrl_inst/start_rw_i_r_edge
add wave -noupdate -expand -group {Reg Bank CTRL} /test_uart_ctrl/reg_ctrl_inst/rcvd_addr_reg_i_s
add wave -noupdate -expand -group {Reg Bank CTRL} /test_uart_ctrl/reg_ctrl_inst/wdata_reg_i_s
add wave -noupdate -expand -group {Reg Bank CTRL} /test_uart_ctrl/reg_ctrl_inst/rw_reg_i_s
add wave -noupdate -expand -group {Reg Bank CTRL} /test_uart_ctrl/reg_ctrl_inst/check_on_s
add wave -noupdate -expand -group {Reg Bank CTRL} /test_uart_ctrl/reg_ctrl_inst/check_done_s
add wave -noupdate -expand -group {Reg Bank CTRL} -expand /test_uart_ctrl/reg_ctrl_inst/array_reg
add wave -noupdate -expand -group {Reg Bank CTRL} /test_uart_ctrl/reg_ctrl_inst/reg_addr_ok_o_s
add wave -noupdate -expand -group {Reg Bank CTRL} /test_uart_ctrl/reg_ctrl_inst/rdata_reg_o_s
add wave -noupdate -expand -group {Reg Bank CTRL} /test_uart_ctrl/reg_ctrl_inst/data_valid_o_s
add wave -noupdate -expand -group {Reg Bank CTRL} /test_uart_ctrl/reg_ctrl_inst/data_valid_o_ss
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 3} {283180 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 227
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
WaveRestoreZoom {0 ns} {2100 us}
