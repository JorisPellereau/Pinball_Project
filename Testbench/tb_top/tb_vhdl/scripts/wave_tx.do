onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -group {TX UART} /tb_top_debug/i_top_debug_0/i_tx_uart_0/stop_bit_number
add wave -noupdate -group {TX UART} /tb_top_debug/i_top_debug_0/i_tx_uart_0/parity
add wave -noupdate -group {TX UART} /tb_top_debug/i_top_debug_0/i_tx_uart_0/baudrate
add wave -noupdate -group {TX UART} /tb_top_debug/i_top_debug_0/i_tx_uart_0/data_size
add wave -noupdate -group {TX UART} /tb_top_debug/i_top_debug_0/i_tx_uart_0/polarity
add wave -noupdate -group {TX UART} /tb_top_debug/i_top_debug_0/i_tx_uart_0/first_bit
add wave -noupdate -group {TX UART} /tb_top_debug/i_top_debug_0/i_tx_uart_0/clock_frequency
add wave -noupdate -group {TX UART} /tb_top_debug/i_top_debug_0/i_tx_uart_0/reset_n
add wave -noupdate -group {TX UART} /tb_top_debug/i_top_debug_0/i_tx_uart_0/clock
add wave -noupdate -group {TX UART} /tb_top_debug/i_top_debug_0/i_tx_uart_0/start_tx
add wave -noupdate -group {TX UART} /tb_top_debug/i_top_debug_0/i_tx_uart_0/tx_data
add wave -noupdate -group {TX UART} /tb_top_debug/i_top_debug_0/i_tx_uart_0/tx
add wave -noupdate -group {TX UART} /tb_top_debug/i_top_debug_0/i_tx_uart_0/tx_done
add wave -noupdate -group {TX UART} /tb_top_debug/i_top_debug_0/i_tx_uart_0/tx_fsm
add wave -noupdate -group {TX UART} /tb_top_debug/i_top_debug_0/i_tx_uart_0/latch_done_s
add wave -noupdate -group {TX UART} /tb_top_debug/i_top_debug_0/i_tx_uart_0/start_tx_s
add wave -noupdate -group {TX UART} /tb_top_debug/i_top_debug_0/i_tx_uart_0/start_tx_r_edge
add wave -noupdate -group {TX UART} /tb_top_debug/i_top_debug_0/i_tx_uart_0/tx_data_s
add wave -noupdate -group {TX UART} /tb_top_debug/i_top_debug_0/i_tx_uart_0/tx_s
add wave -noupdate -group {TX UART} /tb_top_debug/i_top_debug_0/i_tx_uart_0/cnt_bit_duration
add wave -noupdate -group {TX UART} /tb_top_debug/i_top_debug_0/i_tx_uart_0/tick_data
add wave -noupdate -group {TX UART} /tb_top_debug/i_top_debug_0/i_tx_uart_0/cnt_data
add wave -noupdate -group {TX UART} /tb_top_debug/i_top_debug_0/i_tx_uart_0/cnt_bit
add wave -noupdate -group {TX UART} /tb_top_debug/i_top_debug_0/i_tx_uart_0/cnt_stop_bit
add wave -noupdate -group {TX UART} /tb_top_debug/i_top_debug_0/i_tx_uart_0/tx_done_s
add wave -noupdate -group {TX UART} /tb_top_debug/i_top_debug_0/i_tx_uart_0/parity_value
add wave -noupdate -group {TX UART} /tb_top_debug/i_top_debug_0/i_tx_uart_0/bit_duration
add wave -noupdate -group {TX UART} /tb_top_debug/i_top_debug_0/i_tx_uart_0/number_of_bits
add wave -noupdate -group {TX RAM} /tb_top_debug/i_top_debug_0/i_tdpram_sclk_1/G_ADDR_WIDTH
add wave -noupdate -group {TX RAM} /tb_top_debug/i_top_debug_0/i_tdpram_sclk_1/G_DATA_WIDTH
add wave -noupdate -group {TX RAM} /tb_top_debug/i_top_debug_0/i_tdpram_sclk_1/clk
add wave -noupdate -group {TX RAM} /tb_top_debug/i_top_debug_0/i_tdpram_sclk_1/i_me_a
add wave -noupdate -group {TX RAM} /tb_top_debug/i_top_debug_0/i_tdpram_sclk_1/i_we_a
add wave -noupdate -group {TX RAM} /tb_top_debug/i_top_debug_0/i_tdpram_sclk_1/i_addr_a
add wave -noupdate -group {TX RAM} /tb_top_debug/i_top_debug_0/i_tdpram_sclk_1/i_wdata_a
add wave -noupdate -group {TX RAM} /tb_top_debug/i_top_debug_0/i_tdpram_sclk_1/o_rdata_a
add wave -noupdate -group {TX RAM} /tb_top_debug/i_top_debug_0/i_tdpram_sclk_1/i_me_b
add wave -noupdate -group {TX RAM} /tb_top_debug/i_top_debug_0/i_tdpram_sclk_1/i_we_b
add wave -noupdate -group {TX RAM} /tb_top_debug/i_top_debug_0/i_tdpram_sclk_1/i_addr_b
add wave -noupdate -group {TX RAM} /tb_top_debug/i_top_debug_0/i_tdpram_sclk_1/i_wdata_b
add wave -noupdate -group {TX RAM} /tb_top_debug/i_top_debug_0/i_tdpram_sclk_1/o_rdata_b
add wave -noupdate -group {TX RAM} /tb_top_debug/i_top_debug_0/i_tdpram_sclk_1/v_ram
add wave -noupdate -group {TX UART RAM IF} /tb_top_debug/i_top_debug_0/i_tx_uart_ram_if_0/G_ADDR_WIDTH
add wave -noupdate -group {TX UART RAM IF} /tb_top_debug/i_top_debug_0/i_tx_uart_ram_if_0/G_DATA_WIDTH
add wave -noupdate -group {TX UART RAM IF} /tb_top_debug/i_top_debug_0/i_tx_uart_ram_if_0/clk
add wave -noupdate -group {TX UART RAM IF} /tb_top_debug/i_top_debug_0/i_tx_uart_ram_if_0/rst_n
add wave -noupdate -group {TX UART RAM IF} /tb_top_debug/i_top_debug_0/i_tx_uart_ram_if_0/o_me
add wave -noupdate -group {TX UART RAM IF} /tb_top_debug/i_top_debug_0/i_tx_uart_ram_if_0/o_we
add wave -noupdate -group {TX UART RAM IF} /tb_top_debug/i_top_debug_0/i_tx_uart_ram_if_0/o_addr
add wave -noupdate -group {TX UART RAM IF} /tb_top_debug/i_top_debug_0/i_tx_uart_ram_if_0/i_rdata
add wave -noupdate -group {TX UART RAM IF} /tb_top_debug/i_top_debug_0/i_tx_uart_ram_if_0/i_start_ptr
add wave -noupdate -group {TX UART RAM IF} /tb_top_debug/i_top_debug_0/i_tx_uart_ram_if_0/i_stop_ptr
add wave -noupdate -group {TX UART RAM IF} /tb_top_debug/i_top_debug_0/i_tx_uart_ram_if_0/i_en_transfert
add wave -noupdate -group {TX UART RAM IF} /tb_top_debug/i_top_debug_0/i_tx_uart_ram_if_0/o_start_tx
add wave -noupdate -group {TX UART RAM IF} /tb_top_debug/i_top_debug_0/i_tx_uart_ram_if_0/o_tx_data
add wave -noupdate -group {TX UART RAM IF} /tb_top_debug/i_top_debug_0/i_tx_uart_ram_if_0/i_tx_done
add wave -noupdate -group {TX UART RAM IF} /tb_top_debug/i_top_debug_0/i_tx_uart_ram_if_0/o_busy
add wave -noupdate -group {TX UART RAM IF} /tb_top_debug/i_top_debug_0/i_tx_uart_ram_if_0/s_current_state
add wave -noupdate -group {TX UART RAM IF} /tb_top_debug/i_top_debug_0/i_tx_uart_ram_if_0/s_next_state
add wave -noupdate -group {TX UART RAM IF} /tb_top_debug/i_top_debug_0/i_tx_uart_ram_if_0/s_start_ptr
add wave -noupdate -group {TX UART RAM IF} /tb_top_debug/i_top_debug_0/i_tx_uart_ram_if_0/s_stop_ptr
add wave -noupdate -group {TX UART RAM IF} /tb_top_debug/i_top_debug_0/i_tx_uart_ram_if_0/s_en_transfert
add wave -noupdate -group {TX UART RAM IF} /tb_top_debug/i_top_debug_0/i_tx_uart_ram_if_0/s_en_transfert_r_edge
add wave -noupdate -group {TX UART RAM IF} /tb_top_debug/i_top_debug_0/i_tx_uart_ram_if_0/s_tx_done
add wave -noupdate -group {TX UART RAM IF} /tb_top_debug/i_top_debug_0/i_tx_uart_ram_if_0/s_tx_done_r_edge
add wave -noupdate -group {TX UART RAM IF} /tb_top_debug/i_top_debug_0/i_tx_uart_ram_if_0/s_me
add wave -noupdate -group {TX UART RAM IF} /tb_top_debug/i_top_debug_0/i_tx_uart_ram_if_0/s_we
add wave -noupdate -group {TX UART RAM IF} /tb_top_debug/i_top_debug_0/i_tx_uart_ram_if_0/s_addr
add wave -noupdate -group {TX UART RAM IF} /tb_top_debug/i_top_debug_0/i_tx_uart_ram_if_0/s_start_tx
add wave -noupdate -group {TX UART RAM IF} /tb_top_debug/i_top_debug_0/i_tx_uart_ram_if_0/s_tx_data
add wave -noupdate -group {TX UART RAM IF} /tb_top_debug/i_top_debug_0/i_tx_uart_ram_if_0/s_busy
add wave -noupdate -group {TX MSG RAM IF} /tb_top_debug/i_top_debug_0/i_tx_msg_ram_if_0/G_ADDR_WIDTH
add wave -noupdate -group {TX MSG RAM IF} /tb_top_debug/i_top_debug_0/i_tx_msg_ram_if_0/G_DATA_WIDTH
add wave -noupdate -group {TX MSG RAM IF} /tb_top_debug/i_top_debug_0/i_tx_msg_ram_if_0/clk
add wave -noupdate -group {TX MSG RAM IF} /tb_top_debug/i_top_debug_0/i_tx_msg_ram_if_0/rst_n
add wave -noupdate -group {TX MSG RAM IF} /tb_top_debug/i_top_debug_0/i_tx_msg_ram_if_0/o_me
add wave -noupdate -group {TX MSG RAM IF} /tb_top_debug/i_top_debug_0/i_tx_msg_ram_if_0/o_we
add wave -noupdate -group {TX MSG RAM IF} /tb_top_debug/i_top_debug_0/i_tx_msg_ram_if_0/o_addr
add wave -noupdate -group {TX MSG RAM IF} /tb_top_debug/i_top_debug_0/i_tx_msg_ram_if_0/o_wdata
add wave -noupdate -group {TX MSG RAM IF} /tb_top_debug/i_top_debug_0/i_tx_msg_ram_if_0/i_rdata
add wave -noupdate -group {TX MSG RAM IF} /tb_top_debug/i_top_debug_0/i_tx_msg_ram_if_0/i_busy
add wave -noupdate -group {TX MSG RAM IF} /tb_top_debug/i_top_debug_0/i_tx_msg_ram_if_0/o_en_transfert
add wave -noupdate -group {TX MSG RAM IF} /tb_top_debug/i_top_debug_0/i_tx_msg_ram_if_0/i_init_ram
add wave -noupdate -group {TX MSG RAM IF} /tb_top_debug/i_top_debug_0/i_tx_msg_ram_if_0/s_init_ram
add wave -noupdate -group {TX MSG RAM IF} /tb_top_debug/i_top_debug_0/i_tx_msg_ram_if_0/s_init_ram_r_edge
add wave -noupdate -group {TX MSG RAM IF} /tb_top_debug/i_top_debug_0/i_tx_msg_ram_if_0/s_run_init_ram
add wave -noupdate -group {TX MSG RAM IF} /tb_top_debug/i_top_debug_0/i_tx_msg_ram_if_0/s_me
add wave -noupdate -group {TX MSG RAM IF} /tb_top_debug/i_top_debug_0/i_tx_msg_ram_if_0/s_we
add wave -noupdate -group {TX MSG RAM IF} /tb_top_debug/i_top_debug_0/i_tx_msg_ram_if_0/s_addr
add wave -noupdate -group {TX MSG RAM IF} /tb_top_debug/i_top_debug_0/i_tx_msg_ram_if_0/s_wdata
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 150
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
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {1 ns}
