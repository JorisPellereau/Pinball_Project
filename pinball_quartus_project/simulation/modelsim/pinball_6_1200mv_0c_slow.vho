-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "09/01/2019 18:14:01"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top_pinball IS
    PORT (
	reset_n : IN std_logic;
	clock_i : IN std_logic;
	rx_uart_i : IN std_logic;
	tx_uart_o : BUFFER std_logic;
	debug_rx_uart_o : BUFFER std_logic;
	debug_tx_uart_o : BUFFER std_logic
	);
END top_pinball;

-- Design Ports Information
-- tx_uart_o	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_rx_uart_o	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_tx_uart_o	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_uart_i	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock_i	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_n	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF top_pinball IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset_n : std_logic;
SIGNAL ww_clock_i : std_logic;
SIGNAL ww_rx_uart_i : std_logic;
SIGNAL ww_tx_uart_o : std_logic;
SIGNAL ww_debug_rx_uart_o : std_logic;
SIGNAL ww_debug_tx_uart_o : std_logic;
SIGNAL \clock_i~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \tx_uart_o~output_o\ : std_logic;
SIGNAL \debug_rx_uart_o~output_o\ : std_logic;
SIGNAL \debug_tx_uart_o~output_o\ : std_logic;
SIGNAL \clock_i~input_o\ : std_logic;
SIGNAL \clock_i~inputclkctrl_outclk\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[0]~14_combout\ : std_logic;
SIGNAL \reset_n~input_o\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|latch_done_s~q\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|tx_done_s~0_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|tx_done_s~q\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|tx_done_i_s~feeder_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|tx_done_i_s~q\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx~0_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~8_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx~2_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx~1_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~0_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|rx_fsm.IDLE~feeder_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|rx_fsm.IDLE~q\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|Selector5~2_combout\ : std_logic;
SIGNAL \rx_uart_i~input_o\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|rx_old~0_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|rx_old~q\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|Selector6~1_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|Selector2~0_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|Selector2~1_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_START~q\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|Selector3~2_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_DATA~q\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|Selector5~3_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|Selector6~2_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|Selector1~0_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|rx_fsm.WAIT_START~q\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[0]~12_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[10]~33\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[11]~36_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[11]~35_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|LessThan0~0_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|LessThan0~1_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[4]~34_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[0]~13\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[1]~14_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[1]~15\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[2]~16_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[2]~17\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[3]~18_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[3]~19\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[4]~20_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[4]~21\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[5]~22_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[5]~23\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[6]~24_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[6]~25\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[7]~26_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[7]~27\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[8]~28_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[8]~29\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[9]~30_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[9]~31\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[10]~32_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|LessThan0~2_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|LessThan0~3_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|tick_data~2_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|tick_data~0_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|tick_data~1_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_bit[0]~13_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|LessThan1~1_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_bit[11]~36\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_bit[12]~39_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_bit[12]~38_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|LessThan1~0_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_bit[8]~37_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_bit[0]~14\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_bit[1]~15_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_bit[1]~16\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_bit[2]~17_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_bit[2]~18\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_bit[3]~19_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_bit[3]~20\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_bit[4]~21_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_bit[4]~22\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_bit[5]~23_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_bit[5]~24\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_bit[6]~25_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_bit[6]~26\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_bit[7]~27_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_bit[7]~28\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_bit[8]~29_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_bit[8]~30\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_bit[9]~31_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_bit[9]~32\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_bit[10]~33_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_bit[10]~34\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_bit[11]~35_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|LessThan1~2_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|LessThan1~3_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|tick_data~3_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|tick_data~4_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|tick_data~q\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_data~2_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_data[2]~1_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_data~3_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|p_rx_fsm_mng~0_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_data~4_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_data~0_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|p_rx_fsm_mng~1_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|Selector5~4_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|Selector5~5_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_STOP_BIT~q\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_stop_bit~0_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_stop_bit~1_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_stop_bit~q\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|Selector6~0_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|rx_fsm.STOP~feeder_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|rx_fsm.STOP~q\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|rx_done_s~0_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|rx_done_s~q\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|rx_done_i_s~q\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|Decoder0~0_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|cnt_byte_rx[0]~3_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|cnt_byte_rx[1]~2_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|start_parse_s~0_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|start_parse_s~q\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|Decoder0~4_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|rx_data_s~5_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array~6_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[0][2]~feeder_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[0][7]~1_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[0][2]~q\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|Decoder0~5_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|rx_data_s~6_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array~7_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[0][1]~feeder_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[0][1]~q\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|Decoder0~3_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|rx_data_s~4_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array~5_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[0][3]~q\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|Decoder0~1_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|rx_data_s~1_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array~2_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[0][5]~feeder_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[0][5]~q\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|Decoder0~2_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|rx_data_s~2_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array~3_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[0][6]~feeder_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[0][6]~q\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|rx_data_s~3_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array~4_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[0][4]~q\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|Decoder0~0_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|rx_data_s~0_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array~0_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[0][7]~feeder_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[0][7]~q\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|Equal1~0_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|Equal1~1_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|cmd_byte_error_s~2_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|cmd_byte_error_s~q\ : std_logic;
SIGNAL \reg_ctrl_inst|check_on_s~0_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[1][3]~feeder_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[1][0]~9_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[1][3]~q\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s~8_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s[2]~1_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|rcvd_addr_reg_i_s~8_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|rcvd_addr_reg_i_s[5]~1_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[1][4]~feeder_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[1][4]~q\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s~7_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|rcvd_addr_reg_i_s~7_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[1][5]~feeder_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[1][5]~q\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s~6_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|rcvd_addr_reg_i_s~6_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[1][6]~feeder_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[1][6]~q\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s~5_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|rcvd_addr_reg_i_s~5_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|reg_addr_ok_o_s~1_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[1][7]~feeder_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[1][7]~q\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s~4_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|rcvd_addr_reg_i_s~4_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|rx_data_s~7_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|rx_data_s~8_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array~8_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[1][0]~feeder_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[1][0]~q\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s~2_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|rcvd_addr_reg_i_s~2_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[1][2]~feeder_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[1][2]~q\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s~3_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|rcvd_addr_reg_i_s~3_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[1][1]~feeder_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[1][1]~q\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s~0_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|rcvd_addr_reg_i_s~0_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|reg_addr_ok_o_s~0_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|reg_addr_ok_o_s~2_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|reg_addr_ok_o_s~q\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[7]~3_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|start_rw_reg_s~0_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|start_rw_reg_s~1_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|start_rw_reg_s~q\ : std_logic;
SIGNAL \reg_ctrl_inst|start_rw_i_s~q\ : std_logic;
SIGNAL \reg_ctrl_inst|start_rw_i_r_edge~0_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|start_rw_i_r_edge~q\ : std_logic;
SIGNAL \reg_ctrl_inst|check_on_s~q\ : std_logic;
SIGNAL \reg_ctrl_inst|check_done_s~q\ : std_logic;
SIGNAL \reg_ctrl_inst|data_valid_o_ss~q\ : std_logic;
SIGNAL \reg_ctrl_inst|data_valid_o_s~0_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|data_valid_o_s~q\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|reg_data_valid_s~feeder_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|reg_data_valid_s~q\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[7]~2_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|parse_done_s~0_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|parse_done_s~q\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|send_resp_s~0_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|send_resp_s~q\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|p_tx_mng~0_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|start_tx_o_s~0_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|start_tx_o_s~1_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|start_tx_o_s~q\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|start_tx_s~feeder_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|start_tx_s~q\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|start_tx_r_edge~0_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|start_tx_r_edge~q\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|Selector1~4_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|cnt_data[0]~5_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|Selector3~0_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|Selector5~3_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|Selector5~2_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|Selector3~1_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|Selector3~2_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|Selector3~3_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|tx_fsm.DATA_GEN~q\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|cnt_data[0]~6\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|cnt_data[1]~7_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|cnt_data[3]~4_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|cnt_data[3]~13_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|cnt_data[1]~8\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|cnt_data[2]~9_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|cnt_data[2]~10\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|cnt_data[3]~11_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|Selector5~0_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|Selector5~1_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|Selector5~4_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|Selector5~5_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP_BIT_GEN~q\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|Selector1~0_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|Selector1~2_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|Selector1~3_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|Selector1~8_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|Selector0~0_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|tx_fsm.IDLE~q\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|Selector1~5_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|Selector1~1_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|Selector2~0_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|Selector1~6_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|tx_fsm.LATCH_INPUTS~q\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[8]~13_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|LessThan0~1_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|LessThan0~2_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[7]~29\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[8]~30_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[8]~31\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[9]~32_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[9]~33\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[10]~34_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[10]~35\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[11]~36_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[11]~37\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[12]~39_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|LessThan0~0_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[8]~38_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[0]~15\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[1]~16_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[1]~17\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[2]~18_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[2]~19\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[3]~20_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[3]~21\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[4]~22_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[4]~23\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[5]~24_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[5]~25\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[6]~26_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[6]~27\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[7]~28_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|LessThan0~3_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|tick_data~0_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|tick_data~q\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|cnt_stop_bit~0_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|cnt_stop_bit~q\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|Selector6~0_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP~q\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|Selector1~7_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|Selector2~1_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|tx_fsm.START_BIT_GEN~q\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|tx_s~0_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|tx_s~3_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|send_ko_resp_s~0_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|send_ko_resp_s~1_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|send_ko_resp_s~q\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[0][0]~feeder_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[0][0]~q\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|Equal0~0_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|rw_cmd_s~0_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|rw_cmd_s~q\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[2][2]~feeder_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[2][4]~10_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[2][2]~q\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s~4_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|wdata_reg_i_s~4_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[4][2]~feeder_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|rw_reg_i_s~0_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|rw_reg_i_s~q\ : std_logic;
SIGNAL \reg_ctrl_inst|Decoder0~0_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|Decoder0~1_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[4][2]~q\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[3][2]~feeder_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|Decoder0~5_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[3][2]~q\ : std_logic;
SIGNAL \reg_ctrl_inst|Decoder0~3_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[1][2]~q\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[0][2]~feeder_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|Decoder0~4_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[0][2]~q\ : std_logic;
SIGNAL \reg_ctrl_inst|Decoder0~2_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[2][2]~q\ : std_logic;
SIGNAL \reg_ctrl_inst|rdata_reg_o_s~13_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|rdata_reg_o_s~14_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|rdata_reg_o_s~15_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|rdata_reg_o_s[5]~3_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[2]~feeder_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[7]~4_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~5_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~6_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~7_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~9_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|tx_data_s[2]~feeder_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s[0]~0_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[2][3]~feeder_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[2][3]~q\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s~7_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|wdata_reg_i_s~7_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[4][3]~feeder_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[4][3]~q\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[3][3]~feeder_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[3][3]~q\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[2][3]~q\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[0][3]~q\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[1][3]~feeder_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[1][3]~q\ : std_logic;
SIGNAL \reg_ctrl_inst|rdata_reg_o_s~22_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|rdata_reg_o_s~23_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|rdata_reg_o_s~24_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[3]~feeder_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~12_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[2][1]~q\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s~5_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|wdata_reg_i_s~5_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[4][1]~feeder_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[4][1]~q\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[3][1]~feeder_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[3][1]~q\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[2][1]~q\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[0][1]~q\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[1][1]~feeder_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[1][1]~q\ : std_logic;
SIGNAL \reg_ctrl_inst|rdata_reg_o_s~16_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|rdata_reg_o_s~17_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|rdata_reg_o_s~18_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[1]~feeder_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~10_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|tx_data_s[1]~feeder_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[2][0]~q\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s~6_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|wdata_reg_i_s~6_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[4][0]~feeder_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[4][0]~q\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[3][0]~feeder_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[3][0]~q\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[1][0]~q\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[2][0]~feeder_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[2][0]~q\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[0][0]~q\ : std_logic;
SIGNAL \reg_ctrl_inst|rdata_reg_o_s~19_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|rdata_reg_o_s~20_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|rdata_reg_o_s~21_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[0]~feeder_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~11_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|Mux0~2_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|Mux0~3_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[2][5]~feeder_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[2][5]~q\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s~0_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|wdata_reg_i_s~0_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[4][5]~feeder_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[4][5]~q\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[3][5]~feeder_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[3][5]~q\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[2][5]~q\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[0][5]~q\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[1][5]~feeder_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[1][5]~q\ : std_logic;
SIGNAL \reg_ctrl_inst|rdata_reg_o_s~0_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|rdata_reg_o_s~1_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|rdata_reg_o_s~2_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[5]~feeder_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~1_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|tx_data_s[5]~feeder_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[2][7]~q\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s~3_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|wdata_reg_i_s~3_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[4][7]~feeder_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[4][7]~q\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[3][7]~feeder_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[3][7]~q\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[2][7]~q\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[0][7]~q\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[1][7]~feeder_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[1][7]~q\ : std_logic;
SIGNAL \reg_ctrl_inst|rdata_reg_o_s~10_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|rdata_reg_o_s~11_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|rdata_reg_o_s~12_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[7]~feeder_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~4_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[2][6]~q\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s~1_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|wdata_reg_i_s~1_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[4][6]~feeder_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[4][6]~q\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[3][6]~q\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[1][6]~q\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[2][6]~q\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[0][6]~feeder_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[0][6]~q\ : std_logic;
SIGNAL \reg_ctrl_inst|rdata_reg_o_s~4_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|rdata_reg_o_s~5_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|rdata_reg_o_s~6_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[6]~feeder_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~2_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|tx_data_s[6]~feeder_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[2][4]~q\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s~2_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|wdata_reg_i_s~2_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[4][4]~feeder_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[4][4]~q\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[3][4]~feeder_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[3][4]~q\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[1][4]~q\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[2][4]~feeder_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[2][4]~q\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[0][4]~q\ : std_logic;
SIGNAL \reg_ctrl_inst|rdata_reg_o_s~7_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|rdata_reg_o_s~8_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|rdata_reg_o_s~9_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[4]~feeder_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~3_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|Mux0~0_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|Mux0~1_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|tx_s~2_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|tx_s~1_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|tx_s~4_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|tx_s~q\ : std_logic;
SIGNAL \reg_ctrl_inst|wdata_reg_i_s\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \uart_ctrl_inst|tx_uart_inst|cnt_data\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \uart_ctrl_inst|uart_mngt_inst|cnt_byte_rx\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \reg_ctrl_inst|rdata_reg_o_s\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uart_ctrl_inst|rx_uart_inst|rx_data_s\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uart_ctrl_inst|tx_uart_inst|tx_data_s\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_bit\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_half_bit\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_data\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \reg_ctrl_inst|rcvd_addr_reg_i_s\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \reg_ctrl_inst|ALT_INV_check_done_s~q\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|ALT_INV_tx_s~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_reset_n <= reset_n;
ww_clock_i <= clock_i;
ww_rx_uart_i <= rx_uart_i;
tx_uart_o <= ww_tx_uart_o;
debug_rx_uart_o <= ww_debug_rx_uart_o;
debug_tx_uart_o <= ww_debug_tx_uart_o;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock_i~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock_i~input_o\);
\reg_ctrl_inst|ALT_INV_check_done_s~q\ <= NOT \reg_ctrl_inst|check_done_s~q\;
\uart_ctrl_inst|tx_uart_inst|ALT_INV_tx_s~q\ <= NOT \uart_ctrl_inst|tx_uart_inst|tx_s~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X1_Y34_N2
\tx_uart_o~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uart_ctrl_inst|tx_uart_inst|ALT_INV_tx_s~q\,
	devoe => ww_devoe,
	o => \tx_uart_o~output_o\);

-- Location: IOOBUF_X7_Y34_N16
\debug_rx_uart_o~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_uart_i~input_o\,
	devoe => ww_devoe,
	o => \debug_rx_uart_o~output_o\);

-- Location: IOOBUF_X7_Y34_N2
\debug_tx_uart_o~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uart_ctrl_inst|tx_uart_inst|ALT_INV_tx_s~q\,
	devoe => ww_devoe,
	o => \debug_tx_uart_o~output_o\);

-- Location: IOIBUF_X27_Y0_N22
\clock_i~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock_i,
	o => \clock_i~input_o\);

-- Location: CLKCTRL_G18
\clock_i~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock_i~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock_i~inputclkctrl_outclk\);

-- Location: LCCOMB_X50_Y15_N2
\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[0]~14_combout\ = \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(0) $ (VCC)
-- \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[0]~15\ = CARRY(\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(0),
	datad => VCC,
	combout => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[0]~14_combout\,
	cout => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[0]~15\);

-- Location: IOIBUF_X53_Y14_N1
\reset_n~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_n,
	o => \reset_n~input_o\);

-- Location: FF_X47_Y14_N25
\uart_ctrl_inst|tx_uart_inst|latch_done_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	asdata => \uart_ctrl_inst|tx_uart_inst|tx_fsm.LATCH_INPUTS~q\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|tx_uart_inst|latch_done_s~q\);

-- Location: LCCOMB_X44_Y15_N10
\uart_ctrl_inst|tx_uart_inst|tx_done_s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|tx_done_s~0_combout\ = ((!\uart_ctrl_inst|tx_uart_inst|tx_fsm.LATCH_INPUTS~q\ & ((\uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP~q\) # (\uart_ctrl_inst|tx_uart_inst|tx_done_s~q\)))) # (!\uart_ctrl_inst|tx_uart_inst|tx_fsm.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP~q\,
	datab => \uart_ctrl_inst|tx_uart_inst|tx_fsm.IDLE~q\,
	datac => \uart_ctrl_inst|tx_uart_inst|tx_done_s~q\,
	datad => \uart_ctrl_inst|tx_uart_inst|tx_fsm.LATCH_INPUTS~q\,
	combout => \uart_ctrl_inst|tx_uart_inst|tx_done_s~0_combout\);

-- Location: FF_X44_Y15_N11
\uart_ctrl_inst|tx_uart_inst|tx_done_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|tx_uart_inst|tx_done_s~0_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|tx_uart_inst|tx_done_s~q\);

-- Location: LCCOMB_X44_Y15_N8
\uart_ctrl_inst|uart_mngt_inst|tx_done_i_s~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|tx_done_i_s~feeder_combout\ = \uart_ctrl_inst|tx_uart_inst|tx_done_s~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_ctrl_inst|tx_uart_inst|tx_done_s~q\,
	combout => \uart_ctrl_inst|uart_mngt_inst|tx_done_i_s~feeder_combout\);

-- Location: FF_X44_Y15_N9
\uart_ctrl_inst|uart_mngt_inst|tx_done_i_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|uart_mngt_inst|tx_done_i_s~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|tx_done_i_s~q\);

-- Location: LCCOMB_X44_Y15_N2
\uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx~0_combout\ = (!\uart_ctrl_inst|uart_mngt_inst|tx_done_i_s~q\ & \uart_ctrl_inst|tx_uart_inst|tx_done_s~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_ctrl_inst|uart_mngt_inst|tx_done_i_s~q\,
	datad => \uart_ctrl_inst|tx_uart_inst|tx_done_s~q\,
	combout => \uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx~0_combout\);

-- Location: LCCOMB_X43_Y15_N12
\uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~8_combout\ = (!\uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx\(1) & (\uart_ctrl_inst|uart_mngt_inst|send_resp_s~q\ & (!\uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx\(0) & 
-- !\uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx\(1),
	datab => \uart_ctrl_inst|uart_mngt_inst|send_resp_s~q\,
	datac => \uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx\(0),
	datad => \uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\,
	combout => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~8_combout\);

-- Location: LCCOMB_X44_Y15_N12
\uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx~2_combout\ = ((!\uart_ctrl_inst|uart_mngt_inst|tx_done_i_s~q\ & (!\uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\ & \uart_ctrl_inst|tx_uart_inst|tx_done_s~q\))) # 
-- (!\uart_ctrl_inst|uart_mngt_inst|send_resp_s~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|uart_mngt_inst|send_resp_s~q\,
	datab => \uart_ctrl_inst|uart_mngt_inst|tx_done_i_s~q\,
	datac => \uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\,
	datad => \uart_ctrl_inst|tx_uart_inst|tx_done_s~q\,
	combout => \uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx~2_combout\);

-- Location: FF_X43_Y15_N13
\uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~8_combout\,
	clrn => \reset_n~input_o\,
	ena => \uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx\(0));

-- Location: LCCOMB_X43_Y15_N10
\uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx~1_combout\ = (\uart_ctrl_inst|uart_mngt_inst|send_resp_s~q\ & (\uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx\(0) & (!\uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx\(1) & 
-- !\uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|uart_mngt_inst|send_resp_s~q\,
	datab => \uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx\(0),
	datac => \uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx\(1),
	datad => \uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\,
	combout => \uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx~1_combout\);

-- Location: FF_X43_Y15_N11
\uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx~1_combout\,
	clrn => \reset_n~input_o\,
	ena => \uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx\(1));

-- Location: LCCOMB_X45_Y15_N30
\uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~0_combout\ = (\uart_ctrl_inst|uart_mngt_inst|send_resp_s~q\ & ((\uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\) # ((\uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx\(1) & 
-- \uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx\(1),
	datab => \uart_ctrl_inst|uart_mngt_inst|send_resp_s~q\,
	datac => \uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\,
	datad => \uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx~0_combout\,
	combout => \uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~0_combout\);

-- Location: FF_X45_Y15_N31
\uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~0_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\);

-- Location: LCCOMB_X46_Y18_N18
\uart_ctrl_inst|rx_uart_inst|rx_fsm.IDLE~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|rx_fsm.IDLE~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \uart_ctrl_inst|rx_uart_inst|rx_fsm.IDLE~feeder_combout\);

-- Location: FF_X46_Y18_N19
\uart_ctrl_inst|rx_uart_inst|rx_fsm.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|rx_uart_inst|rx_fsm.IDLE~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|rx_uart_inst|rx_fsm.IDLE~q\);

-- Location: LCCOMB_X46_Y18_N16
\uart_ctrl_inst|rx_uart_inst|Selector5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|Selector5~2_combout\ = (!\uart_ctrl_inst|rx_uart_inst|rx_fsm.STOP~q\ & \uart_ctrl_inst|rx_uart_inst|rx_fsm.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_ctrl_inst|rx_uart_inst|rx_fsm.STOP~q\,
	datad => \uart_ctrl_inst|rx_uart_inst|rx_fsm.IDLE~q\,
	combout => \uart_ctrl_inst|rx_uart_inst|Selector5~2_combout\);

-- Location: IOIBUF_X1_Y34_N8
\rx_uart_i~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rx_uart_i,
	o => \rx_uart_i~input_o\);

-- Location: LCCOMB_X46_Y18_N0
\uart_ctrl_inst|rx_uart_inst|rx_old~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|rx_old~0_combout\ = (\uart_ctrl_inst|rx_uart_inst|rx_fsm.WAIT_START~q\ & \rx_uart_i~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|rx_fsm.WAIT_START~q\,
	datac => \rx_uart_i~input_o\,
	combout => \uart_ctrl_inst|rx_uart_inst|rx_old~0_combout\);

-- Location: FF_X46_Y18_N1
\uart_ctrl_inst|rx_uart_inst|rx_old\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|rx_uart_inst|rx_old~0_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|rx_uart_inst|rx_old~q\);

-- Location: LCCOMB_X46_Y18_N26
\uart_ctrl_inst|rx_uart_inst|Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|Selector6~1_combout\ = ((!\rx_uart_i~input_o\ & (\uart_ctrl_inst|rx_uart_inst|rx_old~q\ & \uart_ctrl_inst|rx_uart_inst|rx_fsm.WAIT_START~q\))) # (!\uart_ctrl_inst|rx_uart_inst|Selector5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_uart_i~input_o\,
	datab => \uart_ctrl_inst|rx_uart_inst|rx_old~q\,
	datac => \uart_ctrl_inst|rx_uart_inst|rx_fsm.WAIT_START~q\,
	datad => \uart_ctrl_inst|rx_uart_inst|Selector5~2_combout\,
	combout => \uart_ctrl_inst|rx_uart_inst|Selector6~1_combout\);

-- Location: LCCOMB_X46_Y18_N20
\uart_ctrl_inst|rx_uart_inst|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|Selector2~0_combout\ = (\uart_ctrl_inst|rx_uart_inst|rx_fsm.WAIT_START~q\ & (!\rx_uart_i~input_o\ & \uart_ctrl_inst|rx_uart_inst|rx_old~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|rx_fsm.WAIT_START~q\,
	datac => \rx_uart_i~input_o\,
	datad => \uart_ctrl_inst|rx_uart_inst|rx_old~q\,
	combout => \uart_ctrl_inst|rx_uart_inst|Selector2~0_combout\);

-- Location: LCCOMB_X46_Y18_N10
\uart_ctrl_inst|rx_uart_inst|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|Selector2~1_combout\ = (!\uart_ctrl_inst|rx_uart_inst|Selector6~0_combout\ & ((\uart_ctrl_inst|rx_uart_inst|Selector6~2_combout\ & (\uart_ctrl_inst|rx_uart_inst|Selector2~0_combout\)) # 
-- (!\uart_ctrl_inst|rx_uart_inst|Selector6~2_combout\ & ((\uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_START~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|Selector2~0_combout\,
	datab => \uart_ctrl_inst|rx_uart_inst|Selector6~0_combout\,
	datac => \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_START~q\,
	datad => \uart_ctrl_inst|rx_uart_inst|Selector6~2_combout\,
	combout => \uart_ctrl_inst|rx_uart_inst|Selector2~1_combout\);

-- Location: FF_X46_Y18_N11
\uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|rx_uart_inst|Selector2~1_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_START~q\);

-- Location: LCCOMB_X50_Y18_N18
\uart_ctrl_inst|rx_uart_inst|Selector3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|Selector3~2_combout\ = (\uart_ctrl_inst|rx_uart_inst|p_rx_fsm_mng~1_combout\ & (\uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_START~q\ & ((\uart_ctrl_inst|rx_uart_inst|tick_data~q\)))) # 
-- (!\uart_ctrl_inst|rx_uart_inst|p_rx_fsm_mng~1_combout\ & ((\uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_DATA~q\) # ((\uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_START~q\ & \uart_ctrl_inst|rx_uart_inst|tick_data~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|p_rx_fsm_mng~1_combout\,
	datab => \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_START~q\,
	datac => \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_DATA~q\,
	datad => \uart_ctrl_inst|rx_uart_inst|tick_data~q\,
	combout => \uart_ctrl_inst|rx_uart_inst|Selector3~2_combout\);

-- Location: FF_X50_Y18_N19
\uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|rx_uart_inst|Selector3~2_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_DATA~q\);

-- Location: LCCOMB_X46_Y18_N12
\uart_ctrl_inst|rx_uart_inst|Selector5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|Selector5~3_combout\ = (\uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_START~q\ & \uart_ctrl_inst|rx_uart_inst|tick_data~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_START~q\,
	datad => \uart_ctrl_inst|rx_uart_inst|tick_data~q\,
	combout => \uart_ctrl_inst|rx_uart_inst|Selector5~3_combout\);

-- Location: LCCOMB_X46_Y18_N2
\uart_ctrl_inst|rx_uart_inst|Selector6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|Selector6~2_combout\ = (\uart_ctrl_inst|rx_uart_inst|Selector6~1_combout\) # ((\uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_DATA~q\ & (\uart_ctrl_inst|rx_uart_inst|p_rx_fsm_mng~1_combout\)) # 
-- (!\uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_DATA~q\ & ((\uart_ctrl_inst|rx_uart_inst|Selector5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|Selector6~1_combout\,
	datab => \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_DATA~q\,
	datac => \uart_ctrl_inst|rx_uart_inst|p_rx_fsm_mng~1_combout\,
	datad => \uart_ctrl_inst|rx_uart_inst|Selector5~3_combout\,
	combout => \uart_ctrl_inst|rx_uart_inst|Selector6~2_combout\);

-- Location: LCCOMB_X46_Y18_N22
\uart_ctrl_inst|rx_uart_inst|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|Selector1~0_combout\ = (!\uart_ctrl_inst|rx_uart_inst|Selector6~0_combout\ & ((\uart_ctrl_inst|rx_uart_inst|Selector6~2_combout\ & (!\uart_ctrl_inst|rx_uart_inst|Selector5~2_combout\)) # 
-- (!\uart_ctrl_inst|rx_uart_inst|Selector6~2_combout\ & ((\uart_ctrl_inst|rx_uart_inst|rx_fsm.WAIT_START~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|Selector5~2_combout\,
	datab => \uart_ctrl_inst|rx_uart_inst|Selector6~0_combout\,
	datac => \uart_ctrl_inst|rx_uart_inst|rx_fsm.WAIT_START~q\,
	datad => \uart_ctrl_inst|rx_uart_inst|Selector6~2_combout\,
	combout => \uart_ctrl_inst|rx_uart_inst|Selector1~0_combout\);

-- Location: FF_X46_Y18_N23
\uart_ctrl_inst|rx_uart_inst|rx_fsm.WAIT_START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|rx_uart_inst|Selector1~0_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|rx_uart_inst|rx_fsm.WAIT_START~q\);

-- Location: LCCOMB_X47_Y18_N6
\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[0]~12_combout\ = \uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(0) $ (VCC)
-- \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[0]~13\ = CARRY(\uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(0),
	datad => VCC,
	combout => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[0]~12_combout\,
	cout => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[0]~13\);

-- Location: LCCOMB_X47_Y18_N26
\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[10]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[10]~32_combout\ = (\uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(10) & (\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[9]~31\ $ (GND))) # (!\uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(10) & 
-- (!\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[9]~31\ & VCC))
-- \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[10]~33\ = CARRY((\uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(10) & !\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[9]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(10),
	datad => VCC,
	cin => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[9]~31\,
	combout => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[10]~32_combout\,
	cout => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[10]~33\);

-- Location: LCCOMB_X47_Y18_N28
\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[11]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[11]~36_combout\ = \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[10]~33\ $ (\uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(11),
	cin => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[10]~33\,
	combout => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[11]~36_combout\);

-- Location: LCCOMB_X46_Y18_N30
\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[11]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[11]~35_combout\ = (!\uart_ctrl_inst|rx_uart_inst|rx_fsm.WAIT_START~q\ & ((\uart_ctrl_inst|rx_uart_inst|rx_fsm.STOP~q\) # (\uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_START~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|rx_fsm.WAIT_START~q\,
	datac => \uart_ctrl_inst|rx_uart_inst|rx_fsm.STOP~q\,
	datad => \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_START~q\,
	combout => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[11]~35_combout\);

-- Location: FF_X47_Y18_N29
\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[11]~36_combout\,
	clrn => \reset_n~input_o\,
	sclr => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[4]~34_combout\,
	ena => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[11]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(11));

-- Location: LCCOMB_X47_Y18_N0
\uart_ctrl_inst|rx_uart_inst|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|LessThan0~0_combout\ = ((!\uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(10) & !\uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(9))) # (!\uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(11),
	datac => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(10),
	datad => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(9),
	combout => \uart_ctrl_inst|rx_uart_inst|LessThan0~0_combout\);

-- Location: LCCOMB_X47_Y18_N2
\uart_ctrl_inst|rx_uart_inst|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|LessThan0~1_combout\ = ((!\uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(4) & ((!\uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(2)) # (!\uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(3))))) # 
-- (!\uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(3),
	datab => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(5),
	datac => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(4),
	datad => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(2),
	combout => \uart_ctrl_inst|rx_uart_inst|LessThan0~1_combout\);

-- Location: LCCOMB_X47_Y18_N30
\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[4]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[4]~34_combout\ = ((!\uart_ctrl_inst|rx_uart_inst|LessThan0~0_combout\ & ((!\uart_ctrl_inst|rx_uart_inst|LessThan0~1_combout\) # (!\uart_ctrl_inst|rx_uart_inst|LessThan0~2_combout\)))) # 
-- (!\uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_START~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_START~q\,
	datab => \uart_ctrl_inst|rx_uart_inst|LessThan0~0_combout\,
	datac => \uart_ctrl_inst|rx_uart_inst|LessThan0~2_combout\,
	datad => \uart_ctrl_inst|rx_uart_inst|LessThan0~1_combout\,
	combout => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[4]~34_combout\);

-- Location: FF_X47_Y18_N7
\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[0]~12_combout\,
	clrn => \reset_n~input_o\,
	sclr => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[4]~34_combout\,
	ena => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[11]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(0));

-- Location: LCCOMB_X47_Y18_N8
\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[1]~14_combout\ = (\uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(1) & (!\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[0]~13\)) # (!\uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(1) & 
-- ((\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[0]~13\) # (GND)))
-- \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[1]~15\ = CARRY((!\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[0]~13\) # (!\uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(1),
	datad => VCC,
	cin => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[0]~13\,
	combout => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[1]~14_combout\,
	cout => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[1]~15\);

-- Location: FF_X47_Y18_N9
\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[1]~14_combout\,
	clrn => \reset_n~input_o\,
	sclr => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[4]~34_combout\,
	ena => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[11]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(1));

-- Location: LCCOMB_X47_Y18_N10
\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[2]~16_combout\ = (\uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(2) & (\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[1]~15\ $ (GND))) # (!\uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(2) & 
-- (!\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[1]~15\ & VCC))
-- \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[2]~17\ = CARRY((\uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(2) & !\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[1]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(2),
	datad => VCC,
	cin => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[1]~15\,
	combout => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[2]~16_combout\,
	cout => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[2]~17\);

-- Location: FF_X47_Y18_N11
\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[2]~16_combout\,
	clrn => \reset_n~input_o\,
	sclr => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[4]~34_combout\,
	ena => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[11]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(2));

-- Location: LCCOMB_X47_Y18_N12
\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[3]~18_combout\ = (\uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(3) & (!\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[2]~17\)) # (!\uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(3) & 
-- ((\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[2]~17\) # (GND)))
-- \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[3]~19\ = CARRY((!\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[2]~17\) # (!\uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(3),
	datad => VCC,
	cin => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[2]~17\,
	combout => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[3]~18_combout\,
	cout => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[3]~19\);

-- Location: FF_X47_Y18_N13
\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[3]~18_combout\,
	clrn => \reset_n~input_o\,
	sclr => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[4]~34_combout\,
	ena => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[11]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(3));

-- Location: LCCOMB_X47_Y18_N14
\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[4]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[4]~20_combout\ = (\uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(4) & (\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[3]~19\ $ (GND))) # (!\uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(4) & 
-- (!\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[3]~19\ & VCC))
-- \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[4]~21\ = CARRY((\uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(4) & !\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[3]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(4),
	datad => VCC,
	cin => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[3]~19\,
	combout => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[4]~20_combout\,
	cout => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[4]~21\);

-- Location: FF_X47_Y18_N15
\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[4]~20_combout\,
	clrn => \reset_n~input_o\,
	sclr => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[4]~34_combout\,
	ena => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[11]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(4));

-- Location: LCCOMB_X47_Y18_N16
\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[5]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[5]~22_combout\ = (\uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(5) & (!\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[4]~21\)) # (!\uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(5) & 
-- ((\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[4]~21\) # (GND)))
-- \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[5]~23\ = CARRY((!\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[4]~21\) # (!\uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(5),
	datad => VCC,
	cin => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[4]~21\,
	combout => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[5]~22_combout\,
	cout => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[5]~23\);

-- Location: FF_X47_Y18_N17
\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[5]~22_combout\,
	clrn => \reset_n~input_o\,
	sclr => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[4]~34_combout\,
	ena => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[11]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(5));

-- Location: LCCOMB_X47_Y18_N18
\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[6]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[6]~24_combout\ = (\uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(6) & (\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[5]~23\ $ (GND))) # (!\uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(6) & 
-- (!\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[5]~23\ & VCC))
-- \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[6]~25\ = CARRY((\uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(6) & !\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[5]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(6),
	datad => VCC,
	cin => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[5]~23\,
	combout => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[6]~24_combout\,
	cout => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[6]~25\);

-- Location: FF_X47_Y18_N19
\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[6]~24_combout\,
	clrn => \reset_n~input_o\,
	sclr => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[4]~34_combout\,
	ena => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[11]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(6));

-- Location: LCCOMB_X47_Y18_N20
\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[7]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[7]~26_combout\ = (\uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(7) & (!\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[6]~25\)) # (!\uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(7) & 
-- ((\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[6]~25\) # (GND)))
-- \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[7]~27\ = CARRY((!\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[6]~25\) # (!\uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(7),
	datad => VCC,
	cin => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[6]~25\,
	combout => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[7]~26_combout\,
	cout => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[7]~27\);

-- Location: FF_X47_Y18_N21
\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[7]~26_combout\,
	clrn => \reset_n~input_o\,
	sclr => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[4]~34_combout\,
	ena => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[11]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(7));

-- Location: LCCOMB_X47_Y18_N22
\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[8]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[8]~28_combout\ = (\uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(8) & (\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[7]~27\ $ (GND))) # (!\uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(8) & 
-- (!\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[7]~27\ & VCC))
-- \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[8]~29\ = CARRY((\uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(8) & !\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[7]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(8),
	datad => VCC,
	cin => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[7]~27\,
	combout => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[8]~28_combout\,
	cout => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[8]~29\);

-- Location: FF_X47_Y18_N23
\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[8]~28_combout\,
	clrn => \reset_n~input_o\,
	sclr => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[4]~34_combout\,
	ena => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[11]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(8));

-- Location: LCCOMB_X47_Y18_N24
\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[9]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[9]~30_combout\ = (\uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(9) & (!\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[8]~29\)) # (!\uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(9) & 
-- ((\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[8]~29\) # (GND)))
-- \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[9]~31\ = CARRY((!\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[8]~29\) # (!\uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(9),
	datad => VCC,
	cin => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[8]~29\,
	combout => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[9]~30_combout\,
	cout => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[9]~31\);

-- Location: FF_X47_Y18_N25
\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[9]~30_combout\,
	clrn => \reset_n~input_o\,
	sclr => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[4]~34_combout\,
	ena => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[11]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(9));

-- Location: FF_X47_Y18_N27
\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[10]~32_combout\,
	clrn => \reset_n~input_o\,
	sclr => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[4]~34_combout\,
	ena => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[11]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(10));

-- Location: LCCOMB_X47_Y18_N4
\uart_ctrl_inst|rx_uart_inst|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|LessThan0~2_combout\ = (!\uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(10) & (!\uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(6) & (!\uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(8) & !\uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(10),
	datab => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(6),
	datac => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(8),
	datad => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(7),
	combout => \uart_ctrl_inst|rx_uart_inst|LessThan0~2_combout\);

-- Location: LCCOMB_X50_Y18_N4
\uart_ctrl_inst|rx_uart_inst|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|LessThan0~3_combout\ = (\uart_ctrl_inst|rx_uart_inst|LessThan0~0_combout\) # ((\uart_ctrl_inst|rx_uart_inst|LessThan0~2_combout\ & \uart_ctrl_inst|rx_uart_inst|LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_ctrl_inst|rx_uart_inst|LessThan0~2_combout\,
	datac => \uart_ctrl_inst|rx_uart_inst|LessThan0~1_combout\,
	datad => \uart_ctrl_inst|rx_uart_inst|LessThan0~0_combout\,
	combout => \uart_ctrl_inst|rx_uart_inst|LessThan0~3_combout\);

-- Location: LCCOMB_X50_Y18_N12
\uart_ctrl_inst|rx_uart_inst|tick_data~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|tick_data~2_combout\ = (!\uart_ctrl_inst|rx_uart_inst|rx_fsm.WAIT_START~q\ & (!\uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_START~q\ & ((\uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_STOP_BIT~q\) # 
-- (\uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_DATA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_STOP_BIT~q\,
	datab => \uart_ctrl_inst|rx_uart_inst|rx_fsm.WAIT_START~q\,
	datac => \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_DATA~q\,
	datad => \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_START~q\,
	combout => \uart_ctrl_inst|rx_uart_inst|tick_data~2_combout\);

-- Location: LCCOMB_X50_Y18_N16
\uart_ctrl_inst|rx_uart_inst|tick_data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|tick_data~0_combout\ = (!\uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_STOP_BIT~q\ & !\uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_STOP_BIT~q\,
	datad => \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_DATA~q\,
	combout => \uart_ctrl_inst|rx_uart_inst|tick_data~0_combout\);

-- Location: LCCOMB_X50_Y18_N26
\uart_ctrl_inst|rx_uart_inst|tick_data~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|tick_data~1_combout\ = (\uart_ctrl_inst|rx_uart_inst|rx_fsm.WAIT_START~q\) # ((!\uart_ctrl_inst|rx_uart_inst|rx_fsm.STOP~q\ & (\uart_ctrl_inst|rx_uart_inst|tick_data~0_combout\ & 
-- !\uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_START~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|rx_fsm.STOP~q\,
	datab => \uart_ctrl_inst|rx_uart_inst|tick_data~0_combout\,
	datac => \uart_ctrl_inst|rx_uart_inst|rx_fsm.WAIT_START~q\,
	datad => \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_START~q\,
	combout => \uart_ctrl_inst|rx_uart_inst|tick_data~1_combout\);

-- Location: LCCOMB_X51_Y18_N4
\uart_ctrl_inst|rx_uart_inst|cnt_bit[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|cnt_bit[0]~13_combout\ = \uart_ctrl_inst|rx_uart_inst|cnt_bit\(0) $ (VCC)
-- \uart_ctrl_inst|rx_uart_inst|cnt_bit[0]~14\ = CARRY(\uart_ctrl_inst|rx_uart_inst|cnt_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_ctrl_inst|rx_uart_inst|cnt_bit\(0),
	datad => VCC,
	combout => \uart_ctrl_inst|rx_uart_inst|cnt_bit[0]~13_combout\,
	cout => \uart_ctrl_inst|rx_uart_inst|cnt_bit[0]~14\);

-- Location: LCCOMB_X50_Y18_N6
\uart_ctrl_inst|rx_uart_inst|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|LessThan1~1_combout\ = ((!\uart_ctrl_inst|rx_uart_inst|cnt_bit\(5) & ((!\uart_ctrl_inst|rx_uart_inst|cnt_bit\(4)) # (!\uart_ctrl_inst|rx_uart_inst|cnt_bit\(3))))) # (!\uart_ctrl_inst|rx_uart_inst|cnt_bit\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|cnt_bit\(3),
	datab => \uart_ctrl_inst|rx_uart_inst|cnt_bit\(5),
	datac => \uart_ctrl_inst|rx_uart_inst|cnt_bit\(4),
	datad => \uart_ctrl_inst|rx_uart_inst|cnt_bit\(6),
	combout => \uart_ctrl_inst|rx_uart_inst|LessThan1~1_combout\);

-- Location: LCCOMB_X51_Y18_N26
\uart_ctrl_inst|rx_uart_inst|cnt_bit[11]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|cnt_bit[11]~35_combout\ = (\uart_ctrl_inst|rx_uart_inst|cnt_bit\(11) & (!\uart_ctrl_inst|rx_uart_inst|cnt_bit[10]~34\)) # (!\uart_ctrl_inst|rx_uart_inst|cnt_bit\(11) & ((\uart_ctrl_inst|rx_uart_inst|cnt_bit[10]~34\) # (GND)))
-- \uart_ctrl_inst|rx_uart_inst|cnt_bit[11]~36\ = CARRY((!\uart_ctrl_inst|rx_uart_inst|cnt_bit[10]~34\) # (!\uart_ctrl_inst|rx_uart_inst|cnt_bit\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|cnt_bit\(11),
	datad => VCC,
	cin => \uart_ctrl_inst|rx_uart_inst|cnt_bit[10]~34\,
	combout => \uart_ctrl_inst|rx_uart_inst|cnt_bit[11]~35_combout\,
	cout => \uart_ctrl_inst|rx_uart_inst|cnt_bit[11]~36\);

-- Location: LCCOMB_X51_Y18_N28
\uart_ctrl_inst|rx_uart_inst|cnt_bit[12]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|cnt_bit[12]~39_combout\ = \uart_ctrl_inst|rx_uart_inst|cnt_bit[11]~36\ $ (!\uart_ctrl_inst|rx_uart_inst|cnt_bit\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \uart_ctrl_inst|rx_uart_inst|cnt_bit\(12),
	cin => \uart_ctrl_inst|rx_uart_inst|cnt_bit[11]~36\,
	combout => \uart_ctrl_inst|rx_uart_inst|cnt_bit[12]~39_combout\);

-- Location: LCCOMB_X50_Y18_N30
\uart_ctrl_inst|rx_uart_inst|cnt_bit[12]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|cnt_bit[12]~38_combout\ = (!\uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_START~q\ & (!\uart_ctrl_inst|rx_uart_inst|rx_fsm.WAIT_START~q\ & ((\uart_ctrl_inst|rx_uart_inst|rx_fsm.STOP~q\) # 
-- (!\uart_ctrl_inst|rx_uart_inst|tick_data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_START~q\,
	datab => \uart_ctrl_inst|rx_uart_inst|rx_fsm.WAIT_START~q\,
	datac => \uart_ctrl_inst|rx_uart_inst|rx_fsm.STOP~q\,
	datad => \uart_ctrl_inst|rx_uart_inst|tick_data~0_combout\,
	combout => \uart_ctrl_inst|rx_uart_inst|cnt_bit[12]~38_combout\);

-- Location: FF_X51_Y18_N29
\uart_ctrl_inst|rx_uart_inst|cnt_bit[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|rx_uart_inst|cnt_bit[12]~39_combout\,
	clrn => \reset_n~input_o\,
	sclr => \uart_ctrl_inst|rx_uart_inst|cnt_bit[8]~37_combout\,
	ena => \uart_ctrl_inst|rx_uart_inst|cnt_bit[12]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|rx_uart_inst|cnt_bit\(12));

-- Location: LCCOMB_X51_Y18_N0
\uart_ctrl_inst|rx_uart_inst|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|LessThan1~0_combout\ = ((!\uart_ctrl_inst|rx_uart_inst|cnt_bit\(11) & !\uart_ctrl_inst|rx_uart_inst|cnt_bit\(10))) # (!\uart_ctrl_inst|rx_uart_inst|cnt_bit\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_ctrl_inst|rx_uart_inst|cnt_bit\(12),
	datac => \uart_ctrl_inst|rx_uart_inst|cnt_bit\(11),
	datad => \uart_ctrl_inst|rx_uart_inst|cnt_bit\(10),
	combout => \uart_ctrl_inst|rx_uart_inst|LessThan1~0_combout\);

-- Location: LCCOMB_X51_Y18_N30
\uart_ctrl_inst|rx_uart_inst|cnt_bit[8]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|cnt_bit[8]~37_combout\ = (\uart_ctrl_inst|rx_uart_inst|tick_data~0_combout\) # ((!\uart_ctrl_inst|rx_uart_inst|LessThan1~0_combout\ & ((!\uart_ctrl_inst|rx_uart_inst|LessThan1~1_combout\) # 
-- (!\uart_ctrl_inst|rx_uart_inst|LessThan1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|tick_data~0_combout\,
	datab => \uart_ctrl_inst|rx_uart_inst|LessThan1~2_combout\,
	datac => \uart_ctrl_inst|rx_uart_inst|LessThan1~1_combout\,
	datad => \uart_ctrl_inst|rx_uart_inst|LessThan1~0_combout\,
	combout => \uart_ctrl_inst|rx_uart_inst|cnt_bit[8]~37_combout\);

-- Location: FF_X51_Y18_N5
\uart_ctrl_inst|rx_uart_inst|cnt_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|rx_uart_inst|cnt_bit[0]~13_combout\,
	clrn => \reset_n~input_o\,
	sclr => \uart_ctrl_inst|rx_uart_inst|cnt_bit[8]~37_combout\,
	ena => \uart_ctrl_inst|rx_uart_inst|cnt_bit[12]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|rx_uart_inst|cnt_bit\(0));

-- Location: LCCOMB_X51_Y18_N6
\uart_ctrl_inst|rx_uart_inst|cnt_bit[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|cnt_bit[1]~15_combout\ = (\uart_ctrl_inst|rx_uart_inst|cnt_bit\(1) & (!\uart_ctrl_inst|rx_uart_inst|cnt_bit[0]~14\)) # (!\uart_ctrl_inst|rx_uart_inst|cnt_bit\(1) & ((\uart_ctrl_inst|rx_uart_inst|cnt_bit[0]~14\) # (GND)))
-- \uart_ctrl_inst|rx_uart_inst|cnt_bit[1]~16\ = CARRY((!\uart_ctrl_inst|rx_uart_inst|cnt_bit[0]~14\) # (!\uart_ctrl_inst|rx_uart_inst|cnt_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|cnt_bit\(1),
	datad => VCC,
	cin => \uart_ctrl_inst|rx_uart_inst|cnt_bit[0]~14\,
	combout => \uart_ctrl_inst|rx_uart_inst|cnt_bit[1]~15_combout\,
	cout => \uart_ctrl_inst|rx_uart_inst|cnt_bit[1]~16\);

-- Location: FF_X51_Y18_N7
\uart_ctrl_inst|rx_uart_inst|cnt_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|rx_uart_inst|cnt_bit[1]~15_combout\,
	clrn => \reset_n~input_o\,
	sclr => \uart_ctrl_inst|rx_uart_inst|cnt_bit[8]~37_combout\,
	ena => \uart_ctrl_inst|rx_uart_inst|cnt_bit[12]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|rx_uart_inst|cnt_bit\(1));

-- Location: LCCOMB_X51_Y18_N8
\uart_ctrl_inst|rx_uart_inst|cnt_bit[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|cnt_bit[2]~17_combout\ = (\uart_ctrl_inst|rx_uart_inst|cnt_bit\(2) & (\uart_ctrl_inst|rx_uart_inst|cnt_bit[1]~16\ $ (GND))) # (!\uart_ctrl_inst|rx_uart_inst|cnt_bit\(2) & (!\uart_ctrl_inst|rx_uart_inst|cnt_bit[1]~16\ & VCC))
-- \uart_ctrl_inst|rx_uart_inst|cnt_bit[2]~18\ = CARRY((\uart_ctrl_inst|rx_uart_inst|cnt_bit\(2) & !\uart_ctrl_inst|rx_uart_inst|cnt_bit[1]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_ctrl_inst|rx_uart_inst|cnt_bit\(2),
	datad => VCC,
	cin => \uart_ctrl_inst|rx_uart_inst|cnt_bit[1]~16\,
	combout => \uart_ctrl_inst|rx_uart_inst|cnt_bit[2]~17_combout\,
	cout => \uart_ctrl_inst|rx_uart_inst|cnt_bit[2]~18\);

-- Location: FF_X51_Y18_N9
\uart_ctrl_inst|rx_uart_inst|cnt_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|rx_uart_inst|cnt_bit[2]~17_combout\,
	clrn => \reset_n~input_o\,
	sclr => \uart_ctrl_inst|rx_uart_inst|cnt_bit[8]~37_combout\,
	ena => \uart_ctrl_inst|rx_uart_inst|cnt_bit[12]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|rx_uart_inst|cnt_bit\(2));

-- Location: LCCOMB_X51_Y18_N10
\uart_ctrl_inst|rx_uart_inst|cnt_bit[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|cnt_bit[3]~19_combout\ = (\uart_ctrl_inst|rx_uart_inst|cnt_bit\(3) & (!\uart_ctrl_inst|rx_uart_inst|cnt_bit[2]~18\)) # (!\uart_ctrl_inst|rx_uart_inst|cnt_bit\(3) & ((\uart_ctrl_inst|rx_uart_inst|cnt_bit[2]~18\) # (GND)))
-- \uart_ctrl_inst|rx_uart_inst|cnt_bit[3]~20\ = CARRY((!\uart_ctrl_inst|rx_uart_inst|cnt_bit[2]~18\) # (!\uart_ctrl_inst|rx_uart_inst|cnt_bit\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|cnt_bit\(3),
	datad => VCC,
	cin => \uart_ctrl_inst|rx_uart_inst|cnt_bit[2]~18\,
	combout => \uart_ctrl_inst|rx_uart_inst|cnt_bit[3]~19_combout\,
	cout => \uart_ctrl_inst|rx_uart_inst|cnt_bit[3]~20\);

-- Location: FF_X51_Y18_N11
\uart_ctrl_inst|rx_uart_inst|cnt_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|rx_uart_inst|cnt_bit[3]~19_combout\,
	clrn => \reset_n~input_o\,
	sclr => \uart_ctrl_inst|rx_uart_inst|cnt_bit[8]~37_combout\,
	ena => \uart_ctrl_inst|rx_uart_inst|cnt_bit[12]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|rx_uart_inst|cnt_bit\(3));

-- Location: LCCOMB_X51_Y18_N12
\uart_ctrl_inst|rx_uart_inst|cnt_bit[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|cnt_bit[4]~21_combout\ = (\uart_ctrl_inst|rx_uart_inst|cnt_bit\(4) & (\uart_ctrl_inst|rx_uart_inst|cnt_bit[3]~20\ $ (GND))) # (!\uart_ctrl_inst|rx_uart_inst|cnt_bit\(4) & (!\uart_ctrl_inst|rx_uart_inst|cnt_bit[3]~20\ & VCC))
-- \uart_ctrl_inst|rx_uart_inst|cnt_bit[4]~22\ = CARRY((\uart_ctrl_inst|rx_uart_inst|cnt_bit\(4) & !\uart_ctrl_inst|rx_uart_inst|cnt_bit[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|cnt_bit\(4),
	datad => VCC,
	cin => \uart_ctrl_inst|rx_uart_inst|cnt_bit[3]~20\,
	combout => \uart_ctrl_inst|rx_uart_inst|cnt_bit[4]~21_combout\,
	cout => \uart_ctrl_inst|rx_uart_inst|cnt_bit[4]~22\);

-- Location: FF_X51_Y18_N13
\uart_ctrl_inst|rx_uart_inst|cnt_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|rx_uart_inst|cnt_bit[4]~21_combout\,
	clrn => \reset_n~input_o\,
	sclr => \uart_ctrl_inst|rx_uart_inst|cnt_bit[8]~37_combout\,
	ena => \uart_ctrl_inst|rx_uart_inst|cnt_bit[12]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|rx_uart_inst|cnt_bit\(4));

-- Location: LCCOMB_X51_Y18_N14
\uart_ctrl_inst|rx_uart_inst|cnt_bit[5]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|cnt_bit[5]~23_combout\ = (\uart_ctrl_inst|rx_uart_inst|cnt_bit\(5) & (!\uart_ctrl_inst|rx_uart_inst|cnt_bit[4]~22\)) # (!\uart_ctrl_inst|rx_uart_inst|cnt_bit\(5) & ((\uart_ctrl_inst|rx_uart_inst|cnt_bit[4]~22\) # (GND)))
-- \uart_ctrl_inst|rx_uart_inst|cnt_bit[5]~24\ = CARRY((!\uart_ctrl_inst|rx_uart_inst|cnt_bit[4]~22\) # (!\uart_ctrl_inst|rx_uart_inst|cnt_bit\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_ctrl_inst|rx_uart_inst|cnt_bit\(5),
	datad => VCC,
	cin => \uart_ctrl_inst|rx_uart_inst|cnt_bit[4]~22\,
	combout => \uart_ctrl_inst|rx_uart_inst|cnt_bit[5]~23_combout\,
	cout => \uart_ctrl_inst|rx_uart_inst|cnt_bit[5]~24\);

-- Location: FF_X51_Y18_N15
\uart_ctrl_inst|rx_uart_inst|cnt_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|rx_uart_inst|cnt_bit[5]~23_combout\,
	clrn => \reset_n~input_o\,
	sclr => \uart_ctrl_inst|rx_uart_inst|cnt_bit[8]~37_combout\,
	ena => \uart_ctrl_inst|rx_uart_inst|cnt_bit[12]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|rx_uart_inst|cnt_bit\(5));

-- Location: LCCOMB_X51_Y18_N16
\uart_ctrl_inst|rx_uart_inst|cnt_bit[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|cnt_bit[6]~25_combout\ = (\uart_ctrl_inst|rx_uart_inst|cnt_bit\(6) & (\uart_ctrl_inst|rx_uart_inst|cnt_bit[5]~24\ $ (GND))) # (!\uart_ctrl_inst|rx_uart_inst|cnt_bit\(6) & (!\uart_ctrl_inst|rx_uart_inst|cnt_bit[5]~24\ & VCC))
-- \uart_ctrl_inst|rx_uart_inst|cnt_bit[6]~26\ = CARRY((\uart_ctrl_inst|rx_uart_inst|cnt_bit\(6) & !\uart_ctrl_inst|rx_uart_inst|cnt_bit[5]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_ctrl_inst|rx_uart_inst|cnt_bit\(6),
	datad => VCC,
	cin => \uart_ctrl_inst|rx_uart_inst|cnt_bit[5]~24\,
	combout => \uart_ctrl_inst|rx_uart_inst|cnt_bit[6]~25_combout\,
	cout => \uart_ctrl_inst|rx_uart_inst|cnt_bit[6]~26\);

-- Location: FF_X51_Y18_N17
\uart_ctrl_inst|rx_uart_inst|cnt_bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|rx_uart_inst|cnt_bit[6]~25_combout\,
	clrn => \reset_n~input_o\,
	sclr => \uart_ctrl_inst|rx_uart_inst|cnt_bit[8]~37_combout\,
	ena => \uart_ctrl_inst|rx_uart_inst|cnt_bit[12]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|rx_uart_inst|cnt_bit\(6));

-- Location: LCCOMB_X51_Y18_N18
\uart_ctrl_inst|rx_uart_inst|cnt_bit[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|cnt_bit[7]~27_combout\ = (\uart_ctrl_inst|rx_uart_inst|cnt_bit\(7) & (!\uart_ctrl_inst|rx_uart_inst|cnt_bit[6]~26\)) # (!\uart_ctrl_inst|rx_uart_inst|cnt_bit\(7) & ((\uart_ctrl_inst|rx_uart_inst|cnt_bit[6]~26\) # (GND)))
-- \uart_ctrl_inst|rx_uart_inst|cnt_bit[7]~28\ = CARRY((!\uart_ctrl_inst|rx_uart_inst|cnt_bit[6]~26\) # (!\uart_ctrl_inst|rx_uart_inst|cnt_bit\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_ctrl_inst|rx_uart_inst|cnt_bit\(7),
	datad => VCC,
	cin => \uart_ctrl_inst|rx_uart_inst|cnt_bit[6]~26\,
	combout => \uart_ctrl_inst|rx_uart_inst|cnt_bit[7]~27_combout\,
	cout => \uart_ctrl_inst|rx_uart_inst|cnt_bit[7]~28\);

-- Location: FF_X51_Y18_N19
\uart_ctrl_inst|rx_uart_inst|cnt_bit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|rx_uart_inst|cnt_bit[7]~27_combout\,
	clrn => \reset_n~input_o\,
	sclr => \uart_ctrl_inst|rx_uart_inst|cnt_bit[8]~37_combout\,
	ena => \uart_ctrl_inst|rx_uart_inst|cnt_bit[12]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|rx_uart_inst|cnt_bit\(7));

-- Location: LCCOMB_X51_Y18_N20
\uart_ctrl_inst|rx_uart_inst|cnt_bit[8]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|cnt_bit[8]~29_combout\ = (\uart_ctrl_inst|rx_uart_inst|cnt_bit\(8) & (\uart_ctrl_inst|rx_uart_inst|cnt_bit[7]~28\ $ (GND))) # (!\uart_ctrl_inst|rx_uart_inst|cnt_bit\(8) & (!\uart_ctrl_inst|rx_uart_inst|cnt_bit[7]~28\ & VCC))
-- \uart_ctrl_inst|rx_uart_inst|cnt_bit[8]~30\ = CARRY((\uart_ctrl_inst|rx_uart_inst|cnt_bit\(8) & !\uart_ctrl_inst|rx_uart_inst|cnt_bit[7]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_ctrl_inst|rx_uart_inst|cnt_bit\(8),
	datad => VCC,
	cin => \uart_ctrl_inst|rx_uart_inst|cnt_bit[7]~28\,
	combout => \uart_ctrl_inst|rx_uart_inst|cnt_bit[8]~29_combout\,
	cout => \uart_ctrl_inst|rx_uart_inst|cnt_bit[8]~30\);

-- Location: FF_X51_Y18_N21
\uart_ctrl_inst|rx_uart_inst|cnt_bit[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|rx_uart_inst|cnt_bit[8]~29_combout\,
	clrn => \reset_n~input_o\,
	sclr => \uart_ctrl_inst|rx_uart_inst|cnt_bit[8]~37_combout\,
	ena => \uart_ctrl_inst|rx_uart_inst|cnt_bit[12]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|rx_uart_inst|cnt_bit\(8));

-- Location: LCCOMB_X51_Y18_N22
\uart_ctrl_inst|rx_uart_inst|cnt_bit[9]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|cnt_bit[9]~31_combout\ = (\uart_ctrl_inst|rx_uart_inst|cnt_bit\(9) & (!\uart_ctrl_inst|rx_uart_inst|cnt_bit[8]~30\)) # (!\uart_ctrl_inst|rx_uart_inst|cnt_bit\(9) & ((\uart_ctrl_inst|rx_uart_inst|cnt_bit[8]~30\) # (GND)))
-- \uart_ctrl_inst|rx_uart_inst|cnt_bit[9]~32\ = CARRY((!\uart_ctrl_inst|rx_uart_inst|cnt_bit[8]~30\) # (!\uart_ctrl_inst|rx_uart_inst|cnt_bit\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|cnt_bit\(9),
	datad => VCC,
	cin => \uart_ctrl_inst|rx_uart_inst|cnt_bit[8]~30\,
	combout => \uart_ctrl_inst|rx_uart_inst|cnt_bit[9]~31_combout\,
	cout => \uart_ctrl_inst|rx_uart_inst|cnt_bit[9]~32\);

-- Location: FF_X51_Y18_N23
\uart_ctrl_inst|rx_uart_inst|cnt_bit[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|rx_uart_inst|cnt_bit[9]~31_combout\,
	clrn => \reset_n~input_o\,
	sclr => \uart_ctrl_inst|rx_uart_inst|cnt_bit[8]~37_combout\,
	ena => \uart_ctrl_inst|rx_uart_inst|cnt_bit[12]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|rx_uart_inst|cnt_bit\(9));

-- Location: LCCOMB_X51_Y18_N24
\uart_ctrl_inst|rx_uart_inst|cnt_bit[10]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|cnt_bit[10]~33_combout\ = (\uart_ctrl_inst|rx_uart_inst|cnt_bit\(10) & (\uart_ctrl_inst|rx_uart_inst|cnt_bit[9]~32\ $ (GND))) # (!\uart_ctrl_inst|rx_uart_inst|cnt_bit\(10) & (!\uart_ctrl_inst|rx_uart_inst|cnt_bit[9]~32\ & 
-- VCC))
-- \uart_ctrl_inst|rx_uart_inst|cnt_bit[10]~34\ = CARRY((\uart_ctrl_inst|rx_uart_inst|cnt_bit\(10) & !\uart_ctrl_inst|rx_uart_inst|cnt_bit[9]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_ctrl_inst|rx_uart_inst|cnt_bit\(10),
	datad => VCC,
	cin => \uart_ctrl_inst|rx_uart_inst|cnt_bit[9]~32\,
	combout => \uart_ctrl_inst|rx_uart_inst|cnt_bit[10]~33_combout\,
	cout => \uart_ctrl_inst|rx_uart_inst|cnt_bit[10]~34\);

-- Location: FF_X51_Y18_N25
\uart_ctrl_inst|rx_uart_inst|cnt_bit[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|rx_uart_inst|cnt_bit[10]~33_combout\,
	clrn => \reset_n~input_o\,
	sclr => \uart_ctrl_inst|rx_uart_inst|cnt_bit[8]~37_combout\,
	ena => \uart_ctrl_inst|rx_uart_inst|cnt_bit[12]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|rx_uart_inst|cnt_bit\(10));

-- Location: FF_X51_Y18_N27
\uart_ctrl_inst|rx_uart_inst|cnt_bit[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|rx_uart_inst|cnt_bit[11]~35_combout\,
	clrn => \reset_n~input_o\,
	sclr => \uart_ctrl_inst|rx_uart_inst|cnt_bit[8]~37_combout\,
	ena => \uart_ctrl_inst|rx_uart_inst|cnt_bit[12]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|rx_uart_inst|cnt_bit\(11));

-- Location: LCCOMB_X51_Y18_N2
\uart_ctrl_inst|rx_uart_inst|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|LessThan1~2_combout\ = (!\uart_ctrl_inst|rx_uart_inst|cnt_bit\(11) & (!\uart_ctrl_inst|rx_uart_inst|cnt_bit\(8) & (!\uart_ctrl_inst|rx_uart_inst|cnt_bit\(9) & !\uart_ctrl_inst|rx_uart_inst|cnt_bit\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|cnt_bit\(11),
	datab => \uart_ctrl_inst|rx_uart_inst|cnt_bit\(8),
	datac => \uart_ctrl_inst|rx_uart_inst|cnt_bit\(9),
	datad => \uart_ctrl_inst|rx_uart_inst|cnt_bit\(7),
	combout => \uart_ctrl_inst|rx_uart_inst|LessThan1~2_combout\);

-- Location: LCCOMB_X50_Y18_N28
\uart_ctrl_inst|rx_uart_inst|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|LessThan1~3_combout\ = (\uart_ctrl_inst|rx_uart_inst|LessThan1~0_combout\) # ((\uart_ctrl_inst|rx_uart_inst|LessThan1~2_combout\ & \uart_ctrl_inst|rx_uart_inst|LessThan1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|LessThan1~2_combout\,
	datac => \uart_ctrl_inst|rx_uart_inst|LessThan1~0_combout\,
	datad => \uart_ctrl_inst|rx_uart_inst|LessThan1~1_combout\,
	combout => \uart_ctrl_inst|rx_uart_inst|LessThan1~3_combout\);

-- Location: LCCOMB_X50_Y18_N10
\uart_ctrl_inst|rx_uart_inst|tick_data~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|tick_data~3_combout\ = (\uart_ctrl_inst|rx_uart_inst|tick_data~2_combout\ & (((\uart_ctrl_inst|rx_uart_inst|tick_data~q\ & \uart_ctrl_inst|rx_uart_inst|tick_data~1_combout\)) # 
-- (!\uart_ctrl_inst|rx_uart_inst|LessThan1~3_combout\))) # (!\uart_ctrl_inst|rx_uart_inst|tick_data~2_combout\ & (\uart_ctrl_inst|rx_uart_inst|tick_data~q\ & (\uart_ctrl_inst|rx_uart_inst|tick_data~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|tick_data~2_combout\,
	datab => \uart_ctrl_inst|rx_uart_inst|tick_data~q\,
	datac => \uart_ctrl_inst|rx_uart_inst|tick_data~1_combout\,
	datad => \uart_ctrl_inst|rx_uart_inst|LessThan1~3_combout\,
	combout => \uart_ctrl_inst|rx_uart_inst|tick_data~3_combout\);

-- Location: LCCOMB_X50_Y18_N20
\uart_ctrl_inst|rx_uart_inst|tick_data~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|tick_data~4_combout\ = (\uart_ctrl_inst|rx_uart_inst|tick_data~3_combout\) # ((!\uart_ctrl_inst|rx_uart_inst|rx_fsm.WAIT_START~q\ & (\uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_START~q\ & 
-- !\uart_ctrl_inst|rx_uart_inst|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|rx_fsm.WAIT_START~q\,
	datab => \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_START~q\,
	datac => \uart_ctrl_inst|rx_uart_inst|LessThan0~3_combout\,
	datad => \uart_ctrl_inst|rx_uart_inst|tick_data~3_combout\,
	combout => \uart_ctrl_inst|rx_uart_inst|tick_data~4_combout\);

-- Location: FF_X50_Y18_N21
\uart_ctrl_inst|rx_uart_inst|tick_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|rx_uart_inst|tick_data~4_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|rx_uart_inst|tick_data~q\);

-- Location: LCCOMB_X49_Y18_N28
\uart_ctrl_inst|rx_uart_inst|cnt_data~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|cnt_data~2_combout\ = (\uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_DATA~q\ & (!\uart_ctrl_inst|rx_uart_inst|cnt_data\(3) & !\uart_ctrl_inst|rx_uart_inst|cnt_data\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_DATA~q\,
	datab => \uart_ctrl_inst|rx_uart_inst|cnt_data\(3),
	datac => \uart_ctrl_inst|rx_uart_inst|cnt_data\(0),
	combout => \uart_ctrl_inst|rx_uart_inst|cnt_data~2_combout\);

-- Location: LCCOMB_X50_Y18_N2
\uart_ctrl_inst|rx_uart_inst|cnt_data[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|cnt_data[2]~1_combout\ = (\uart_ctrl_inst|rx_uart_inst|tick_data~q\) # (!\uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_ctrl_inst|rx_uart_inst|tick_data~q\,
	datad => \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_DATA~q\,
	combout => \uart_ctrl_inst|rx_uart_inst|cnt_data[2]~1_combout\);

-- Location: FF_X49_Y18_N29
\uart_ctrl_inst|rx_uart_inst|cnt_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|rx_uart_inst|cnt_data~2_combout\,
	clrn => \reset_n~input_o\,
	ena => \uart_ctrl_inst|rx_uart_inst|cnt_data[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|rx_uart_inst|cnt_data\(0));

-- Location: LCCOMB_X49_Y18_N26
\uart_ctrl_inst|rx_uart_inst|cnt_data~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|cnt_data~3_combout\ = (\uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_DATA~q\ & (!\uart_ctrl_inst|rx_uart_inst|cnt_data\(3) & (\uart_ctrl_inst|rx_uart_inst|cnt_data\(1) $ (\uart_ctrl_inst|rx_uart_inst|cnt_data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_DATA~q\,
	datab => \uart_ctrl_inst|rx_uart_inst|cnt_data\(3),
	datac => \uart_ctrl_inst|rx_uart_inst|cnt_data\(1),
	datad => \uart_ctrl_inst|rx_uart_inst|cnt_data\(0),
	combout => \uart_ctrl_inst|rx_uart_inst|cnt_data~3_combout\);

-- Location: FF_X49_Y18_N27
\uart_ctrl_inst|rx_uart_inst|cnt_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|rx_uart_inst|cnt_data~3_combout\,
	clrn => \reset_n~input_o\,
	ena => \uart_ctrl_inst|rx_uart_inst|cnt_data[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|rx_uart_inst|cnt_data\(1));

-- Location: LCCOMB_X49_Y18_N24
\uart_ctrl_inst|rx_uart_inst|p_rx_fsm_mng~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|p_rx_fsm_mng~0_combout\ = (\uart_ctrl_inst|rx_uart_inst|cnt_data\(1) & \uart_ctrl_inst|rx_uart_inst|cnt_data\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_ctrl_inst|rx_uart_inst|cnt_data\(1),
	datad => \uart_ctrl_inst|rx_uart_inst|cnt_data\(0),
	combout => \uart_ctrl_inst|rx_uart_inst|p_rx_fsm_mng~0_combout\);

-- Location: LCCOMB_X50_Y18_N8
\uart_ctrl_inst|rx_uart_inst|cnt_data~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|cnt_data~4_combout\ = (\uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_DATA~q\ & (\uart_ctrl_inst|rx_uart_inst|cnt_data\(2) & (!\uart_ctrl_inst|rx_uart_inst|cnt_data\(3) & \uart_ctrl_inst|rx_uart_inst|p_rx_fsm_mng~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_DATA~q\,
	datab => \uart_ctrl_inst|rx_uart_inst|cnt_data\(2),
	datac => \uart_ctrl_inst|rx_uart_inst|cnt_data\(3),
	datad => \uart_ctrl_inst|rx_uart_inst|p_rx_fsm_mng~0_combout\,
	combout => \uart_ctrl_inst|rx_uart_inst|cnt_data~4_combout\);

-- Location: FF_X50_Y18_N9
\uart_ctrl_inst|rx_uart_inst|cnt_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|rx_uart_inst|cnt_data~4_combout\,
	clrn => \reset_n~input_o\,
	ena => \uart_ctrl_inst|rx_uart_inst|cnt_data[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|rx_uart_inst|cnt_data\(3));

-- Location: LCCOMB_X50_Y18_N24
\uart_ctrl_inst|rx_uart_inst|cnt_data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|cnt_data~0_combout\ = (\uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_DATA~q\ & (!\uart_ctrl_inst|rx_uart_inst|cnt_data\(3) & (\uart_ctrl_inst|rx_uart_inst|cnt_data\(2) $ (\uart_ctrl_inst|rx_uart_inst|p_rx_fsm_mng~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_DATA~q\,
	datab => \uart_ctrl_inst|rx_uart_inst|cnt_data\(3),
	datac => \uart_ctrl_inst|rx_uart_inst|cnt_data\(2),
	datad => \uart_ctrl_inst|rx_uart_inst|p_rx_fsm_mng~0_combout\,
	combout => \uart_ctrl_inst|rx_uart_inst|cnt_data~0_combout\);

-- Location: FF_X50_Y18_N25
\uart_ctrl_inst|rx_uart_inst|cnt_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|rx_uart_inst|cnt_data~0_combout\,
	clrn => \reset_n~input_o\,
	ena => \uart_ctrl_inst|rx_uart_inst|cnt_data[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|rx_uart_inst|cnt_data\(2));

-- Location: LCCOMB_X50_Y18_N14
\uart_ctrl_inst|rx_uart_inst|p_rx_fsm_mng~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|p_rx_fsm_mng~1_combout\ = (\uart_ctrl_inst|rx_uart_inst|tick_data~q\ & (\uart_ctrl_inst|rx_uart_inst|cnt_data\(2) & (!\uart_ctrl_inst|rx_uart_inst|cnt_data\(3) & \uart_ctrl_inst|rx_uart_inst|p_rx_fsm_mng~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|tick_data~q\,
	datab => \uart_ctrl_inst|rx_uart_inst|cnt_data\(2),
	datac => \uart_ctrl_inst|rx_uart_inst|cnt_data\(3),
	datad => \uart_ctrl_inst|rx_uart_inst|p_rx_fsm_mng~0_combout\,
	combout => \uart_ctrl_inst|rx_uart_inst|p_rx_fsm_mng~1_combout\);

-- Location: LCCOMB_X50_Y18_N0
\uart_ctrl_inst|rx_uart_inst|Selector5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|Selector5~4_combout\ = (\uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_STOP_BIT~q\ & (\uart_ctrl_inst|rx_uart_inst|Selector5~2_combout\ & ((\uart_ctrl_inst|rx_uart_inst|cnt_stop_bit~q\) # 
-- (!\uart_ctrl_inst|rx_uart_inst|tick_data~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_STOP_BIT~q\,
	datab => \uart_ctrl_inst|rx_uart_inst|tick_data~q\,
	datac => \uart_ctrl_inst|rx_uart_inst|cnt_stop_bit~q\,
	datad => \uart_ctrl_inst|rx_uart_inst|Selector5~2_combout\,
	combout => \uart_ctrl_inst|rx_uart_inst|Selector5~4_combout\);

-- Location: LCCOMB_X50_Y18_N22
\uart_ctrl_inst|rx_uart_inst|Selector5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|Selector5~5_combout\ = (!\uart_ctrl_inst|rx_uart_inst|Selector5~3_combout\ & ((\uart_ctrl_inst|rx_uart_inst|Selector5~4_combout\) # ((\uart_ctrl_inst|rx_uart_inst|p_rx_fsm_mng~1_combout\ & 
-- \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_DATA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|p_rx_fsm_mng~1_combout\,
	datab => \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_DATA~q\,
	datac => \uart_ctrl_inst|rx_uart_inst|Selector5~3_combout\,
	datad => \uart_ctrl_inst|rx_uart_inst|Selector5~4_combout\,
	combout => \uart_ctrl_inst|rx_uart_inst|Selector5~5_combout\);

-- Location: FF_X50_Y18_N23
\uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_STOP_BIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|rx_uart_inst|Selector5~5_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_STOP_BIT~q\);

-- Location: LCCOMB_X46_Y18_N24
\uart_ctrl_inst|rx_uart_inst|cnt_stop_bit~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|cnt_stop_bit~0_combout\ = (!\uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_START~q\ & ((\uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_STOP_BIT~q\ & ((\uart_ctrl_inst|rx_uart_inst|tick_data~q\))) # 
-- (!\uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_STOP_BIT~q\ & (\uart_ctrl_inst|rx_uart_inst|rx_fsm.STOP~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_START~q\,
	datab => \uart_ctrl_inst|rx_uart_inst|rx_fsm.STOP~q\,
	datac => \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_STOP_BIT~q\,
	datad => \uart_ctrl_inst|rx_uart_inst|tick_data~q\,
	combout => \uart_ctrl_inst|rx_uart_inst|cnt_stop_bit~0_combout\);

-- Location: LCCOMB_X46_Y18_N28
\uart_ctrl_inst|rx_uart_inst|cnt_stop_bit~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|cnt_stop_bit~1_combout\ = (\uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_DATA~q\ & (((\uart_ctrl_inst|rx_uart_inst|cnt_stop_bit~q\)))) # (!\uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_DATA~q\ & 
-- ((\uart_ctrl_inst|rx_uart_inst|cnt_stop_bit~q\ & ((!\uart_ctrl_inst|rx_uart_inst|cnt_stop_bit~0_combout\))) # (!\uart_ctrl_inst|rx_uart_inst|cnt_stop_bit~q\ & (\uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_STOP_BIT~q\ & 
-- \uart_ctrl_inst|rx_uart_inst|cnt_stop_bit~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_STOP_BIT~q\,
	datab => \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_DATA~q\,
	datac => \uart_ctrl_inst|rx_uart_inst|cnt_stop_bit~q\,
	datad => \uart_ctrl_inst|rx_uart_inst|cnt_stop_bit~0_combout\,
	combout => \uart_ctrl_inst|rx_uart_inst|cnt_stop_bit~1_combout\);

-- Location: FF_X46_Y18_N29
\uart_ctrl_inst|rx_uart_inst|cnt_stop_bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|rx_uart_inst|cnt_stop_bit~1_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|rx_uart_inst|cnt_stop_bit~q\);

-- Location: LCCOMB_X46_Y18_N14
\uart_ctrl_inst|rx_uart_inst|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|Selector6~0_combout\ = (!\uart_ctrl_inst|rx_uart_inst|cnt_stop_bit~q\ & (\uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_STOP_BIT~q\ & \uart_ctrl_inst|rx_uart_inst|tick_data~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_ctrl_inst|rx_uart_inst|cnt_stop_bit~q\,
	datac => \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_STOP_BIT~q\,
	datad => \uart_ctrl_inst|rx_uart_inst|tick_data~q\,
	combout => \uart_ctrl_inst|rx_uart_inst|Selector6~0_combout\);

-- Location: LCCOMB_X46_Y18_N4
\uart_ctrl_inst|rx_uart_inst|rx_fsm.STOP~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|rx_fsm.STOP~feeder_combout\ = \uart_ctrl_inst|rx_uart_inst|Selector6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_ctrl_inst|rx_uart_inst|Selector6~0_combout\,
	combout => \uart_ctrl_inst|rx_uart_inst|rx_fsm.STOP~feeder_combout\);

-- Location: FF_X46_Y18_N5
\uart_ctrl_inst|rx_uart_inst|rx_fsm.STOP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|rx_uart_inst|rx_fsm.STOP~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|rx_uart_inst|rx_fsm.STOP~q\);

-- Location: LCCOMB_X45_Y15_N16
\uart_ctrl_inst|rx_uart_inst|rx_done_s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|rx_done_s~0_combout\ = (\uart_ctrl_inst|rx_uart_inst|rx_fsm.STOP~q\) # (\uart_ctrl_inst|rx_uart_inst|rx_done_s~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_ctrl_inst|rx_uart_inst|rx_fsm.STOP~q\,
	datac => \uart_ctrl_inst|rx_uart_inst|rx_done_s~q\,
	combout => \uart_ctrl_inst|rx_uart_inst|rx_done_s~0_combout\);

-- Location: FF_X45_Y15_N17
\uart_ctrl_inst|rx_uart_inst|rx_done_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|rx_uart_inst|rx_done_s~0_combout\,
	clrn => \reset_n~input_o\,
	sclr => \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_START~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|rx_uart_inst|rx_done_s~q\);

-- Location: FF_X46_Y15_N15
\uart_ctrl_inst|uart_mngt_inst|rx_done_i_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	asdata => \uart_ctrl_inst|rx_uart_inst|rx_done_s~q\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|rx_done_i_s~q\);

-- Location: LCCOMB_X46_Y15_N14
\uart_ctrl_inst|uart_mngt_inst|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|Decoder0~0_combout\ = (\uart_ctrl_inst|rx_uart_inst|rx_done_s~q\ & !\uart_ctrl_inst|uart_mngt_inst|rx_done_i_s~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|rx_done_s~q\,
	datac => \uart_ctrl_inst|uart_mngt_inst|rx_done_i_s~q\,
	combout => \uart_ctrl_inst|uart_mngt_inst|Decoder0~0_combout\);

-- Location: LCCOMB_X47_Y15_N30
\uart_ctrl_inst|uart_mngt_inst|cnt_byte_rx[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|cnt_byte_rx[0]~3_combout\ = (!\uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\ & ((\uart_ctrl_inst|uart_mngt_inst|cnt_byte_rx\(0) & ((\uart_ctrl_inst|uart_mngt_inst|cnt_byte_rx\(1)) # 
-- (!\uart_ctrl_inst|uart_mngt_inst|Decoder0~0_combout\))) # (!\uart_ctrl_inst|uart_mngt_inst|cnt_byte_rx\(0) & ((\uart_ctrl_inst|uart_mngt_inst|Decoder0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\,
	datab => \uart_ctrl_inst|uart_mngt_inst|cnt_byte_rx\(1),
	datac => \uart_ctrl_inst|uart_mngt_inst|cnt_byte_rx\(0),
	datad => \uart_ctrl_inst|uart_mngt_inst|Decoder0~0_combout\,
	combout => \uart_ctrl_inst|uart_mngt_inst|cnt_byte_rx[0]~3_combout\);

-- Location: FF_X47_Y15_N31
\uart_ctrl_inst|uart_mngt_inst|cnt_byte_rx[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|uart_mngt_inst|cnt_byte_rx[0]~3_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|cnt_byte_rx\(0));

-- Location: LCCOMB_X47_Y15_N16
\uart_ctrl_inst|uart_mngt_inst|cnt_byte_rx[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|cnt_byte_rx[1]~2_combout\ = (!\uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\ & ((\uart_ctrl_inst|uart_mngt_inst|cnt_byte_rx\(1)) # ((\uart_ctrl_inst|uart_mngt_inst|cnt_byte_rx\(0) & 
-- \uart_ctrl_inst|uart_mngt_inst|Decoder0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\,
	datab => \uart_ctrl_inst|uart_mngt_inst|cnt_byte_rx\(0),
	datac => \uart_ctrl_inst|uart_mngt_inst|cnt_byte_rx\(1),
	datad => \uart_ctrl_inst|uart_mngt_inst|Decoder0~0_combout\,
	combout => \uart_ctrl_inst|uart_mngt_inst|cnt_byte_rx[1]~2_combout\);

-- Location: FF_X47_Y15_N17
\uart_ctrl_inst|uart_mngt_inst|cnt_byte_rx[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|uart_mngt_inst|cnt_byte_rx[1]~2_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|cnt_byte_rx\(1));

-- Location: LCCOMB_X43_Y15_N24
\uart_ctrl_inst|uart_mngt_inst|start_parse_s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|start_parse_s~0_combout\ = (!\uart_ctrl_inst|uart_mngt_inst|parse_done_s~q\ & ((\uart_ctrl_inst|uart_mngt_inst|start_parse_s~q\) # ((\uart_ctrl_inst|uart_mngt_inst|cnt_byte_rx\(1) & 
-- \uart_ctrl_inst|uart_mngt_inst|cnt_byte_rx\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|uart_mngt_inst|parse_done_s~q\,
	datab => \uart_ctrl_inst|uart_mngt_inst|cnt_byte_rx\(1),
	datac => \uart_ctrl_inst|uart_mngt_inst|start_parse_s~q\,
	datad => \uart_ctrl_inst|uart_mngt_inst|cnt_byte_rx\(0),
	combout => \uart_ctrl_inst|uart_mngt_inst|start_parse_s~0_combout\);

-- Location: FF_X43_Y15_N25
\uart_ctrl_inst|uart_mngt_inst|start_parse_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|uart_mngt_inst|start_parse_s~0_combout\,
	clrn => \reset_n~input_o\,
	sclr => \uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|start_parse_s~q\);

-- Location: LCCOMB_X48_Y18_N8
\uart_ctrl_inst|rx_uart_inst|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|Decoder0~4_combout\ = (\uart_ctrl_inst|rx_uart_inst|tick_data~q\ & (!\uart_ctrl_inst|rx_uart_inst|cnt_data\(0) & (\uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_DATA~q\ & !\uart_ctrl_inst|rx_uart_inst|cnt_data\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|tick_data~q\,
	datab => \uart_ctrl_inst|rx_uart_inst|cnt_data\(0),
	datac => \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_DATA~q\,
	datad => \uart_ctrl_inst|rx_uart_inst|cnt_data\(2),
	combout => \uart_ctrl_inst|rx_uart_inst|Decoder0~4_combout\);

-- Location: LCCOMB_X48_Y18_N26
\uart_ctrl_inst|rx_uart_inst|rx_data_s~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|rx_data_s~5_combout\ = (\uart_ctrl_inst|rx_uart_inst|Decoder0~4_combout\ & ((\uart_ctrl_inst|rx_uart_inst|cnt_data\(1) & (\rx_uart_i~input_o\)) # (!\uart_ctrl_inst|rx_uart_inst|cnt_data\(1) & 
-- ((\uart_ctrl_inst|rx_uart_inst|rx_data_s\(2)))))) # (!\uart_ctrl_inst|rx_uart_inst|Decoder0~4_combout\ & (((\uart_ctrl_inst|rx_uart_inst|rx_data_s\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_uart_i~input_o\,
	datab => \uart_ctrl_inst|rx_uart_inst|Decoder0~4_combout\,
	datac => \uart_ctrl_inst|rx_uart_inst|rx_data_s\(2),
	datad => \uart_ctrl_inst|rx_uart_inst|cnt_data\(1),
	combout => \uart_ctrl_inst|rx_uart_inst|rx_data_s~5_combout\);

-- Location: FF_X48_Y18_N27
\uart_ctrl_inst|rx_uart_inst|rx_data_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|rx_uart_inst|rx_data_s~5_combout\,
	clrn => \reset_n~input_o\,
	sclr => \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_START~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|rx_uart_inst|rx_data_s\(2));

-- Location: LCCOMB_X47_Y15_N22
\uart_ctrl_inst|uart_mngt_inst|byte_array~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|byte_array~6_combout\ = (!\uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\ & \uart_ctrl_inst|rx_uart_inst|rx_data_s\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\,
	datad => \uart_ctrl_inst|rx_uart_inst|rx_data_s\(2),
	combout => \uart_ctrl_inst|uart_mngt_inst|byte_array~6_combout\);

-- Location: LCCOMB_X47_Y15_N26
\uart_ctrl_inst|uart_mngt_inst|byte_array[0][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|byte_array[0][2]~feeder_combout\ = \uart_ctrl_inst|uart_mngt_inst|byte_array~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_ctrl_inst|uart_mngt_inst|byte_array~6_combout\,
	combout => \uart_ctrl_inst|uart_mngt_inst|byte_array[0][2]~feeder_combout\);

-- Location: LCCOMB_X47_Y15_N8
\uart_ctrl_inst|uart_mngt_inst|byte_array[0][7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|byte_array[0][7]~1_combout\ = (\uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\) # ((!\uart_ctrl_inst|uart_mngt_inst|cnt_byte_rx\(1) & (!\uart_ctrl_inst|uart_mngt_inst|cnt_byte_rx\(0) & 
-- \uart_ctrl_inst|uart_mngt_inst|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\,
	datab => \uart_ctrl_inst|uart_mngt_inst|cnt_byte_rx\(1),
	datac => \uart_ctrl_inst|uart_mngt_inst|cnt_byte_rx\(0),
	datad => \uart_ctrl_inst|uart_mngt_inst|Decoder0~0_combout\,
	combout => \uart_ctrl_inst|uart_mngt_inst|byte_array[0][7]~1_combout\);

-- Location: FF_X47_Y15_N27
\uart_ctrl_inst|uart_mngt_inst|byte_array[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|uart_mngt_inst|byte_array[0][2]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \uart_ctrl_inst|uart_mngt_inst|byte_array[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|byte_array[0][2]~q\);

-- Location: LCCOMB_X48_Y18_N10
\uart_ctrl_inst|rx_uart_inst|Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|Decoder0~5_combout\ = (\uart_ctrl_inst|rx_uart_inst|tick_data~q\ & (!\uart_ctrl_inst|rx_uart_inst|cnt_data\(2) & (\uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_DATA~q\ & !\uart_ctrl_inst|rx_uart_inst|cnt_data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|tick_data~q\,
	datab => \uart_ctrl_inst|rx_uart_inst|cnt_data\(2),
	datac => \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_DATA~q\,
	datad => \uart_ctrl_inst|rx_uart_inst|cnt_data\(1),
	combout => \uart_ctrl_inst|rx_uart_inst|Decoder0~5_combout\);

-- Location: LCCOMB_X48_Y18_N24
\uart_ctrl_inst|rx_uart_inst|rx_data_s~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|rx_data_s~6_combout\ = (\uart_ctrl_inst|rx_uart_inst|cnt_data\(0) & ((\uart_ctrl_inst|rx_uart_inst|Decoder0~5_combout\ & (\rx_uart_i~input_o\)) # (!\uart_ctrl_inst|rx_uart_inst|Decoder0~5_combout\ & 
-- ((\uart_ctrl_inst|rx_uart_inst|rx_data_s\(1)))))) # (!\uart_ctrl_inst|rx_uart_inst|cnt_data\(0) & (((\uart_ctrl_inst|rx_uart_inst|rx_data_s\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_uart_i~input_o\,
	datab => \uart_ctrl_inst|rx_uart_inst|cnt_data\(0),
	datac => \uart_ctrl_inst|rx_uart_inst|rx_data_s\(1),
	datad => \uart_ctrl_inst|rx_uart_inst|Decoder0~5_combout\,
	combout => \uart_ctrl_inst|rx_uart_inst|rx_data_s~6_combout\);

-- Location: FF_X48_Y18_N25
\uart_ctrl_inst|rx_uart_inst|rx_data_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|rx_uart_inst|rx_data_s~6_combout\,
	clrn => \reset_n~input_o\,
	sclr => \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_START~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|rx_uart_inst|rx_data_s\(1));

-- Location: LCCOMB_X48_Y15_N2
\uart_ctrl_inst|uart_mngt_inst|byte_array~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|byte_array~7_combout\ = (\uart_ctrl_inst|rx_uart_inst|rx_data_s\(1) & !\uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_ctrl_inst|rx_uart_inst|rx_data_s\(1),
	datad => \uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\,
	combout => \uart_ctrl_inst|uart_mngt_inst|byte_array~7_combout\);

-- Location: LCCOMB_X47_Y15_N24
\uart_ctrl_inst|uart_mngt_inst|byte_array[0][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|byte_array[0][1]~feeder_combout\ = \uart_ctrl_inst|uart_mngt_inst|byte_array~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_ctrl_inst|uart_mngt_inst|byte_array~7_combout\,
	combout => \uart_ctrl_inst|uart_mngt_inst|byte_array[0][1]~feeder_combout\);

-- Location: FF_X47_Y15_N25
\uart_ctrl_inst|uart_mngt_inst|byte_array[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|uart_mngt_inst|byte_array[0][1]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \uart_ctrl_inst|uart_mngt_inst|byte_array[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|byte_array[0][1]~q\);

-- Location: LCCOMB_X48_Y18_N18
\uart_ctrl_inst|rx_uart_inst|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|Decoder0~3_combout\ = (\uart_ctrl_inst|rx_uart_inst|tick_data~q\ & (\uart_ctrl_inst|rx_uart_inst|cnt_data\(0) & (\uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_DATA~q\ & \uart_ctrl_inst|rx_uart_inst|cnt_data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|tick_data~q\,
	datab => \uart_ctrl_inst|rx_uart_inst|cnt_data\(0),
	datac => \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_DATA~q\,
	datad => \uart_ctrl_inst|rx_uart_inst|cnt_data\(1),
	combout => \uart_ctrl_inst|rx_uart_inst|Decoder0~3_combout\);

-- Location: LCCOMB_X48_Y18_N20
\uart_ctrl_inst|rx_uart_inst|rx_data_s~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|rx_data_s~4_combout\ = (\uart_ctrl_inst|rx_uart_inst|Decoder0~3_combout\ & ((\uart_ctrl_inst|rx_uart_inst|cnt_data\(2) & ((\uart_ctrl_inst|rx_uart_inst|rx_data_s\(3)))) # (!\uart_ctrl_inst|rx_uart_inst|cnt_data\(2) & 
-- (\rx_uart_i~input_o\)))) # (!\uart_ctrl_inst|rx_uart_inst|Decoder0~3_combout\ & (((\uart_ctrl_inst|rx_uart_inst|rx_data_s\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_uart_i~input_o\,
	datab => \uart_ctrl_inst|rx_uart_inst|Decoder0~3_combout\,
	datac => \uart_ctrl_inst|rx_uart_inst|rx_data_s\(3),
	datad => \uart_ctrl_inst|rx_uart_inst|cnt_data\(2),
	combout => \uart_ctrl_inst|rx_uart_inst|rx_data_s~4_combout\);

-- Location: FF_X48_Y18_N21
\uart_ctrl_inst|rx_uart_inst|rx_data_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|rx_uart_inst|rx_data_s~4_combout\,
	clrn => \reset_n~input_o\,
	sclr => \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_START~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|rx_uart_inst|rx_data_s\(3));

-- Location: LCCOMB_X47_Y15_N4
\uart_ctrl_inst|uart_mngt_inst|byte_array~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|byte_array~5_combout\ = (!\uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\ & \uart_ctrl_inst|rx_uart_inst|rx_data_s\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\,
	datad => \uart_ctrl_inst|rx_uart_inst|rx_data_s\(3),
	combout => \uart_ctrl_inst|uart_mngt_inst|byte_array~5_combout\);

-- Location: FF_X47_Y15_N13
\uart_ctrl_inst|uart_mngt_inst|byte_array[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	asdata => \uart_ctrl_inst|uart_mngt_inst|byte_array~5_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \uart_ctrl_inst|uart_mngt_inst|byte_array[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|byte_array[0][3]~q\);

-- Location: LCCOMB_X48_Y18_N30
\uart_ctrl_inst|rx_uart_inst|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|Decoder0~1_combout\ = (\uart_ctrl_inst|rx_uart_inst|tick_data~q\ & (\uart_ctrl_inst|rx_uart_inst|cnt_data\(2) & (\uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_DATA~q\ & !\uart_ctrl_inst|rx_uart_inst|cnt_data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|tick_data~q\,
	datab => \uart_ctrl_inst|rx_uart_inst|cnt_data\(2),
	datac => \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_DATA~q\,
	datad => \uart_ctrl_inst|rx_uart_inst|cnt_data\(1),
	combout => \uart_ctrl_inst|rx_uart_inst|Decoder0~1_combout\);

-- Location: LCCOMB_X48_Y18_N6
\uart_ctrl_inst|rx_uart_inst|rx_data_s~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|rx_data_s~1_combout\ = (\uart_ctrl_inst|rx_uart_inst|Decoder0~1_combout\ & ((\uart_ctrl_inst|rx_uart_inst|cnt_data\(0) & (\rx_uart_i~input_o\)) # (!\uart_ctrl_inst|rx_uart_inst|cnt_data\(0) & 
-- ((\uart_ctrl_inst|rx_uart_inst|rx_data_s\(5)))))) # (!\uart_ctrl_inst|rx_uart_inst|Decoder0~1_combout\ & (((\uart_ctrl_inst|rx_uart_inst|rx_data_s\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|Decoder0~1_combout\,
	datab => \rx_uart_i~input_o\,
	datac => \uart_ctrl_inst|rx_uart_inst|rx_data_s\(5),
	datad => \uart_ctrl_inst|rx_uart_inst|cnt_data\(0),
	combout => \uart_ctrl_inst|rx_uart_inst|rx_data_s~1_combout\);

-- Location: FF_X48_Y18_N7
\uart_ctrl_inst|rx_uart_inst|rx_data_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|rx_uart_inst|rx_data_s~1_combout\,
	clrn => \reset_n~input_o\,
	sclr => \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_START~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|rx_uart_inst|rx_data_s\(5));

-- Location: LCCOMB_X47_Y15_N18
\uart_ctrl_inst|uart_mngt_inst|byte_array~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|byte_array~2_combout\ = (!\uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\ & \uart_ctrl_inst|rx_uart_inst|rx_data_s\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\,
	datad => \uart_ctrl_inst|rx_uart_inst|rx_data_s\(5),
	combout => \uart_ctrl_inst|uart_mngt_inst|byte_array~2_combout\);

-- Location: LCCOMB_X47_Y15_N10
\uart_ctrl_inst|uart_mngt_inst|byte_array[0][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|byte_array[0][5]~feeder_combout\ = \uart_ctrl_inst|uart_mngt_inst|byte_array~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_ctrl_inst|uart_mngt_inst|byte_array~2_combout\,
	combout => \uart_ctrl_inst|uart_mngt_inst|byte_array[0][5]~feeder_combout\);

-- Location: FF_X47_Y15_N11
\uart_ctrl_inst|uart_mngt_inst|byte_array[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|uart_mngt_inst|byte_array[0][5]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \uart_ctrl_inst|uart_mngt_inst|byte_array[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|byte_array[0][5]~q\);

-- Location: LCCOMB_X48_Y18_N4
\uart_ctrl_inst|rx_uart_inst|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|Decoder0~2_combout\ = (\uart_ctrl_inst|rx_uart_inst|tick_data~q\ & (\uart_ctrl_inst|rx_uart_inst|cnt_data\(2) & (\uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_DATA~q\ & \uart_ctrl_inst|rx_uart_inst|cnt_data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|tick_data~q\,
	datab => \uart_ctrl_inst|rx_uart_inst|cnt_data\(2),
	datac => \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_DATA~q\,
	datad => \uart_ctrl_inst|rx_uart_inst|cnt_data\(1),
	combout => \uart_ctrl_inst|rx_uart_inst|Decoder0~2_combout\);

-- Location: LCCOMB_X48_Y18_N16
\uart_ctrl_inst|rx_uart_inst|rx_data_s~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|rx_data_s~2_combout\ = (\uart_ctrl_inst|rx_uart_inst|Decoder0~2_combout\ & ((\uart_ctrl_inst|rx_uart_inst|cnt_data\(0) & ((\uart_ctrl_inst|rx_uart_inst|rx_data_s\(6)))) # (!\uart_ctrl_inst|rx_uart_inst|cnt_data\(0) & 
-- (\rx_uart_i~input_o\)))) # (!\uart_ctrl_inst|rx_uart_inst|Decoder0~2_combout\ & (((\uart_ctrl_inst|rx_uart_inst|rx_data_s\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_uart_i~input_o\,
	datab => \uart_ctrl_inst|rx_uart_inst|Decoder0~2_combout\,
	datac => \uart_ctrl_inst|rx_uart_inst|rx_data_s\(6),
	datad => \uart_ctrl_inst|rx_uart_inst|cnt_data\(0),
	combout => \uart_ctrl_inst|rx_uart_inst|rx_data_s~2_combout\);

-- Location: FF_X48_Y18_N17
\uart_ctrl_inst|rx_uart_inst|rx_data_s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|rx_uart_inst|rx_data_s~2_combout\,
	clrn => \reset_n~input_o\,
	sclr => \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_START~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|rx_uart_inst|rx_data_s\(6));

-- Location: LCCOMB_X48_Y15_N22
\uart_ctrl_inst|uart_mngt_inst|byte_array~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|byte_array~3_combout\ = (!\uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\ & \uart_ctrl_inst|rx_uart_inst|rx_data_s\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\,
	datad => \uart_ctrl_inst|rx_uart_inst|rx_data_s\(6),
	combout => \uart_ctrl_inst|uart_mngt_inst|byte_array~3_combout\);

-- Location: LCCOMB_X47_Y15_N20
\uart_ctrl_inst|uart_mngt_inst|byte_array[0][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|byte_array[0][6]~feeder_combout\ = \uart_ctrl_inst|uart_mngt_inst|byte_array~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_ctrl_inst|uart_mngt_inst|byte_array~3_combout\,
	combout => \uart_ctrl_inst|uart_mngt_inst|byte_array[0][6]~feeder_combout\);

-- Location: FF_X47_Y15_N21
\uart_ctrl_inst|uart_mngt_inst|byte_array[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|uart_mngt_inst|byte_array[0][6]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \uart_ctrl_inst|uart_mngt_inst|byte_array[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|byte_array[0][6]~q\);

-- Location: LCCOMB_X48_Y18_N14
\uart_ctrl_inst|rx_uart_inst|rx_data_s~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|rx_data_s~3_combout\ = (\uart_ctrl_inst|rx_uart_inst|Decoder0~1_combout\ & ((\uart_ctrl_inst|rx_uart_inst|cnt_data\(0) & ((\uart_ctrl_inst|rx_uart_inst|rx_data_s\(4)))) # (!\uart_ctrl_inst|rx_uart_inst|cnt_data\(0) & 
-- (\rx_uart_i~input_o\)))) # (!\uart_ctrl_inst|rx_uart_inst|Decoder0~1_combout\ & (((\uart_ctrl_inst|rx_uart_inst|rx_data_s\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|Decoder0~1_combout\,
	datab => \rx_uart_i~input_o\,
	datac => \uart_ctrl_inst|rx_uart_inst|rx_data_s\(4),
	datad => \uart_ctrl_inst|rx_uart_inst|cnt_data\(0),
	combout => \uart_ctrl_inst|rx_uart_inst|rx_data_s~3_combout\);

-- Location: FF_X48_Y18_N15
\uart_ctrl_inst|rx_uart_inst|rx_data_s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|rx_uart_inst|rx_data_s~3_combout\,
	clrn => \reset_n~input_o\,
	sclr => \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_START~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|rx_uart_inst|rx_data_s\(4));

-- Location: LCCOMB_X48_Y15_N20
\uart_ctrl_inst|uart_mngt_inst|byte_array~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|byte_array~4_combout\ = (!\uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\ & \uart_ctrl_inst|rx_uart_inst|rx_data_s\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\,
	datad => \uart_ctrl_inst|rx_uart_inst|rx_data_s\(4),
	combout => \uart_ctrl_inst|uart_mngt_inst|byte_array~4_combout\);

-- Location: FF_X47_Y15_N3
\uart_ctrl_inst|uart_mngt_inst|byte_array[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	asdata => \uart_ctrl_inst|uart_mngt_inst|byte_array~4_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \uart_ctrl_inst|uart_mngt_inst|byte_array[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|byte_array[0][4]~q\);

-- Location: LCCOMB_X48_Y18_N28
\uart_ctrl_inst|rx_uart_inst|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|Decoder0~0_combout\ = (\uart_ctrl_inst|rx_uart_inst|tick_data~q\ & (\uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_DATA~q\ & \uart_ctrl_inst|rx_uart_inst|cnt_data\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|tick_data~q\,
	datac => \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_DATA~q\,
	datad => \uart_ctrl_inst|rx_uart_inst|cnt_data\(2),
	combout => \uart_ctrl_inst|rx_uart_inst|Decoder0~0_combout\);

-- Location: LCCOMB_X48_Y18_N12
\uart_ctrl_inst|rx_uart_inst|rx_data_s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|rx_data_s~0_combout\ = (\uart_ctrl_inst|rx_uart_inst|p_rx_fsm_mng~0_combout\ & ((\uart_ctrl_inst|rx_uart_inst|Decoder0~0_combout\ & (\rx_uart_i~input_o\)) # (!\uart_ctrl_inst|rx_uart_inst|Decoder0~0_combout\ & 
-- ((\uart_ctrl_inst|rx_uart_inst|rx_data_s\(7)))))) # (!\uart_ctrl_inst|rx_uart_inst|p_rx_fsm_mng~0_combout\ & (((\uart_ctrl_inst|rx_uart_inst|rx_data_s\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_uart_i~input_o\,
	datab => \uart_ctrl_inst|rx_uart_inst|p_rx_fsm_mng~0_combout\,
	datac => \uart_ctrl_inst|rx_uart_inst|rx_data_s\(7),
	datad => \uart_ctrl_inst|rx_uart_inst|Decoder0~0_combout\,
	combout => \uart_ctrl_inst|rx_uart_inst|rx_data_s~0_combout\);

-- Location: FF_X48_Y18_N13
\uart_ctrl_inst|rx_uart_inst|rx_data_s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|rx_uart_inst|rx_data_s~0_combout\,
	clrn => \reset_n~input_o\,
	sclr => \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_START~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|rx_uart_inst|rx_data_s\(7));

-- Location: LCCOMB_X48_Y15_N12
\uart_ctrl_inst|uart_mngt_inst|byte_array~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|byte_array~0_combout\ = (\uart_ctrl_inst|rx_uart_inst|rx_data_s\(7) & !\uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_ctrl_inst|rx_uart_inst|rx_data_s\(7),
	datad => \uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\,
	combout => \uart_ctrl_inst|uart_mngt_inst|byte_array~0_combout\);

-- Location: LCCOMB_X47_Y15_N28
\uart_ctrl_inst|uart_mngt_inst|byte_array[0][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|byte_array[0][7]~feeder_combout\ = \uart_ctrl_inst|uart_mngt_inst|byte_array~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_ctrl_inst|uart_mngt_inst|byte_array~0_combout\,
	combout => \uart_ctrl_inst|uart_mngt_inst|byte_array[0][7]~feeder_combout\);

-- Location: FF_X47_Y15_N29
\uart_ctrl_inst|uart_mngt_inst|byte_array[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|uart_mngt_inst|byte_array[0][7]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \uart_ctrl_inst|uart_mngt_inst|byte_array[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|byte_array[0][7]~q\);

-- Location: LCCOMB_X47_Y15_N2
\uart_ctrl_inst|uart_mngt_inst|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|Equal1~0_combout\ = (\uart_ctrl_inst|uart_mngt_inst|byte_array[0][5]~q\ & (!\uart_ctrl_inst|uart_mngt_inst|byte_array[0][6]~q\ & (!\uart_ctrl_inst|uart_mngt_inst|byte_array[0][4]~q\ & 
-- \uart_ctrl_inst|uart_mngt_inst|byte_array[0][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|uart_mngt_inst|byte_array[0][5]~q\,
	datab => \uart_ctrl_inst|uart_mngt_inst|byte_array[0][6]~q\,
	datac => \uart_ctrl_inst|uart_mngt_inst|byte_array[0][4]~q\,
	datad => \uart_ctrl_inst|uart_mngt_inst|byte_array[0][7]~q\,
	combout => \uart_ctrl_inst|uart_mngt_inst|Equal1~0_combout\);

-- Location: LCCOMB_X47_Y15_N12
\uart_ctrl_inst|uart_mngt_inst|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|Equal1~1_combout\ = (!\uart_ctrl_inst|uart_mngt_inst|byte_array[0][2]~q\ & (!\uart_ctrl_inst|uart_mngt_inst|byte_array[0][1]~q\ & (!\uart_ctrl_inst|uart_mngt_inst|byte_array[0][3]~q\ & 
-- \uart_ctrl_inst|uart_mngt_inst|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|uart_mngt_inst|byte_array[0][2]~q\,
	datab => \uart_ctrl_inst|uart_mngt_inst|byte_array[0][1]~q\,
	datac => \uart_ctrl_inst|uart_mngt_inst|byte_array[0][3]~q\,
	datad => \uart_ctrl_inst|uart_mngt_inst|Equal1~0_combout\,
	combout => \uart_ctrl_inst|uart_mngt_inst|Equal1~1_combout\);

-- Location: LCCOMB_X43_Y15_N2
\uart_ctrl_inst|uart_mngt_inst|cmd_byte_error_s~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|cmd_byte_error_s~2_combout\ = (\uart_ctrl_inst|uart_mngt_inst|cnt_byte_rx\(0) & ((\uart_ctrl_inst|uart_mngt_inst|cnt_byte_rx\(1) & ((!\uart_ctrl_inst|uart_mngt_inst|Equal1~1_combout\))) # 
-- (!\uart_ctrl_inst|uart_mngt_inst|cnt_byte_rx\(1) & (\uart_ctrl_inst|uart_mngt_inst|cmd_byte_error_s~q\)))) # (!\uart_ctrl_inst|uart_mngt_inst|cnt_byte_rx\(0) & (((\uart_ctrl_inst|uart_mngt_inst|cmd_byte_error_s~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|uart_mngt_inst|cnt_byte_rx\(0),
	datab => \uart_ctrl_inst|uart_mngt_inst|cnt_byte_rx\(1),
	datac => \uart_ctrl_inst|uart_mngt_inst|cmd_byte_error_s~q\,
	datad => \uart_ctrl_inst|uart_mngt_inst|Equal1~1_combout\,
	combout => \uart_ctrl_inst|uart_mngt_inst|cmd_byte_error_s~2_combout\);

-- Location: FF_X43_Y15_N3
\uart_ctrl_inst|uart_mngt_inst|cmd_byte_error_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|uart_mngt_inst|cmd_byte_error_s~2_combout\,
	clrn => \reset_n~input_o\,
	sclr => \uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|cmd_byte_error_s~q\);

-- Location: LCCOMB_X44_Y15_N28
\reg_ctrl_inst|check_on_s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|check_on_s~0_combout\ = (\reg_ctrl_inst|check_on_s~q\ & !\reg_ctrl_inst|data_valid_o_s~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_ctrl_inst|check_on_s~q\,
	datad => \reg_ctrl_inst|data_valid_o_s~q\,
	combout => \reg_ctrl_inst|check_on_s~0_combout\);

-- Location: LCCOMB_X45_Y15_N10
\uart_ctrl_inst|uart_mngt_inst|byte_array[1][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|byte_array[1][3]~feeder_combout\ = \uart_ctrl_inst|uart_mngt_inst|byte_array~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_ctrl_inst|uart_mngt_inst|byte_array~5_combout\,
	combout => \uart_ctrl_inst|uart_mngt_inst|byte_array[1][3]~feeder_combout\);

-- Location: LCCOMB_X45_Y15_N8
\uart_ctrl_inst|uart_mngt_inst|byte_array[1][0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|byte_array[1][0]~9_combout\ = (\uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\) # ((!\uart_ctrl_inst|uart_mngt_inst|cnt_byte_rx\(1) & (\uart_ctrl_inst|uart_mngt_inst|Decoder0~0_combout\ & 
-- \uart_ctrl_inst|uart_mngt_inst|cnt_byte_rx\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|uart_mngt_inst|cnt_byte_rx\(1),
	datab => \uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\,
	datac => \uart_ctrl_inst|uart_mngt_inst|Decoder0~0_combout\,
	datad => \uart_ctrl_inst|uart_mngt_inst|cnt_byte_rx\(0),
	combout => \uart_ctrl_inst|uart_mngt_inst|byte_array[1][0]~9_combout\);

-- Location: FF_X45_Y15_N11
\uart_ctrl_inst|uart_mngt_inst|byte_array[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|uart_mngt_inst|byte_array[1][3]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \uart_ctrl_inst|uart_mngt_inst|byte_array[1][0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|byte_array[1][3]~q\);

-- Location: LCCOMB_X44_Y15_N14
\uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s~8_combout\ = (!\uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\ & \uart_ctrl_inst|uart_mngt_inst|byte_array[1][3]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\,
	datac => \uart_ctrl_inst|uart_mngt_inst|byte_array[1][3]~q\,
	combout => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s~8_combout\);

-- Location: LCCOMB_X47_Y15_N0
\uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s[2]~1_combout\ = (\uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\) # ((\uart_ctrl_inst|uart_mngt_inst|cnt_byte_rx\(0) & \uart_ctrl_inst|uart_mngt_inst|cnt_byte_rx\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|uart_mngt_inst|cnt_byte_rx\(0),
	datab => \uart_ctrl_inst|uart_mngt_inst|cnt_byte_rx\(1),
	datac => \uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\,
	combout => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s[2]~1_combout\);

-- Location: FF_X44_Y15_N15
\uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s~8_combout\,
	clrn => \reset_n~input_o\,
	ena => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s\(3));

-- Location: LCCOMB_X46_Y15_N26
\reg_ctrl_inst|rcvd_addr_reg_i_s~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|rcvd_addr_reg_i_s~8_combout\ = (\uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s\(3) & \reg_ctrl_inst|start_rw_i_r_edge~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s\(3),
	datad => \reg_ctrl_inst|start_rw_i_r_edge~q\,
	combout => \reg_ctrl_inst|rcvd_addr_reg_i_s~8_combout\);

-- Location: LCCOMB_X45_Y16_N18
\reg_ctrl_inst|rcvd_addr_reg_i_s[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|rcvd_addr_reg_i_s[5]~1_combout\ = (\reg_ctrl_inst|data_valid_o_s~q\) # (\reg_ctrl_inst|start_rw_i_r_edge~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_ctrl_inst|data_valid_o_s~q\,
	datad => \reg_ctrl_inst|start_rw_i_r_edge~q\,
	combout => \reg_ctrl_inst|rcvd_addr_reg_i_s[5]~1_combout\);

-- Location: FF_X46_Y15_N27
\reg_ctrl_inst|rcvd_addr_reg_i_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \reg_ctrl_inst|rcvd_addr_reg_i_s~8_combout\,
	clrn => \reset_n~input_o\,
	ena => \reg_ctrl_inst|rcvd_addr_reg_i_s[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|rcvd_addr_reg_i_s\(3));

-- Location: LCCOMB_X45_Y15_N12
\uart_ctrl_inst|uart_mngt_inst|byte_array[1][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|byte_array[1][4]~feeder_combout\ = \uart_ctrl_inst|uart_mngt_inst|byte_array~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_ctrl_inst|uart_mngt_inst|byte_array~4_combout\,
	combout => \uart_ctrl_inst|uart_mngt_inst|byte_array[1][4]~feeder_combout\);

-- Location: FF_X45_Y15_N13
\uart_ctrl_inst|uart_mngt_inst|byte_array[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|uart_mngt_inst|byte_array[1][4]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \uart_ctrl_inst|uart_mngt_inst|byte_array[1][0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|byte_array[1][4]~q\);

-- Location: LCCOMB_X44_Y15_N20
\uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s~7_combout\ = (!\uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\ & \uart_ctrl_inst|uart_mngt_inst|byte_array[1][4]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\,
	datac => \uart_ctrl_inst|uart_mngt_inst|byte_array[1][4]~q\,
	combout => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s~7_combout\);

-- Location: FF_X44_Y15_N21
\uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s~7_combout\,
	clrn => \reset_n~input_o\,
	ena => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s\(4));

-- Location: LCCOMB_X46_Y15_N16
\reg_ctrl_inst|rcvd_addr_reg_i_s~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|rcvd_addr_reg_i_s~7_combout\ = (\uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s\(4) & \reg_ctrl_inst|start_rw_i_r_edge~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s\(4),
	datad => \reg_ctrl_inst|start_rw_i_r_edge~q\,
	combout => \reg_ctrl_inst|rcvd_addr_reg_i_s~7_combout\);

-- Location: FF_X46_Y15_N17
\reg_ctrl_inst|rcvd_addr_reg_i_s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \reg_ctrl_inst|rcvd_addr_reg_i_s~7_combout\,
	clrn => \reset_n~input_o\,
	ena => \reg_ctrl_inst|rcvd_addr_reg_i_s[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|rcvd_addr_reg_i_s\(4));

-- Location: LCCOMB_X45_Y15_N18
\uart_ctrl_inst|uart_mngt_inst|byte_array[1][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|byte_array[1][5]~feeder_combout\ = \uart_ctrl_inst|uart_mngt_inst|byte_array~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_ctrl_inst|uart_mngt_inst|byte_array~2_combout\,
	combout => \uart_ctrl_inst|uart_mngt_inst|byte_array[1][5]~feeder_combout\);

-- Location: FF_X45_Y15_N19
\uart_ctrl_inst|uart_mngt_inst|byte_array[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|uart_mngt_inst|byte_array[1][5]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \uart_ctrl_inst|uart_mngt_inst|byte_array[1][0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|byte_array[1][5]~q\);

-- Location: LCCOMB_X44_Y15_N18
\uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s~6_combout\ = (!\uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\ & \uart_ctrl_inst|uart_mngt_inst|byte_array[1][5]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\,
	datad => \uart_ctrl_inst|uart_mngt_inst|byte_array[1][5]~q\,
	combout => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s~6_combout\);

-- Location: FF_X44_Y15_N19
\uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s~6_combout\,
	clrn => \reset_n~input_o\,
	ena => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s\(5));

-- Location: LCCOMB_X46_Y15_N30
\reg_ctrl_inst|rcvd_addr_reg_i_s~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|rcvd_addr_reg_i_s~6_combout\ = (\uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s\(5) & \reg_ctrl_inst|start_rw_i_r_edge~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s\(5),
	datad => \reg_ctrl_inst|start_rw_i_r_edge~q\,
	combout => \reg_ctrl_inst|rcvd_addr_reg_i_s~6_combout\);

-- Location: FF_X46_Y15_N31
\reg_ctrl_inst|rcvd_addr_reg_i_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \reg_ctrl_inst|rcvd_addr_reg_i_s~6_combout\,
	clrn => \reset_n~input_o\,
	ena => \reg_ctrl_inst|rcvd_addr_reg_i_s[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|rcvd_addr_reg_i_s\(5));

-- Location: LCCOMB_X45_Y15_N24
\uart_ctrl_inst|uart_mngt_inst|byte_array[1][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|byte_array[1][6]~feeder_combout\ = \uart_ctrl_inst|uart_mngt_inst|byte_array~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_ctrl_inst|uart_mngt_inst|byte_array~3_combout\,
	combout => \uart_ctrl_inst|uart_mngt_inst|byte_array[1][6]~feeder_combout\);

-- Location: FF_X45_Y15_N25
\uart_ctrl_inst|uart_mngt_inst|byte_array[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|uart_mngt_inst|byte_array[1][6]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \uart_ctrl_inst|uart_mngt_inst|byte_array[1][0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|byte_array[1][6]~q\);

-- Location: LCCOMB_X44_Y15_N16
\uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s~5_combout\ = (!\uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\ & \uart_ctrl_inst|uart_mngt_inst|byte_array[1][6]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\,
	datad => \uart_ctrl_inst|uart_mngt_inst|byte_array[1][6]~q\,
	combout => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s~5_combout\);

-- Location: FF_X44_Y15_N17
\uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s~5_combout\,
	clrn => \reset_n~input_o\,
	ena => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s\(6));

-- Location: LCCOMB_X46_Y15_N28
\reg_ctrl_inst|rcvd_addr_reg_i_s~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|rcvd_addr_reg_i_s~5_combout\ = (\uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s\(6) & \reg_ctrl_inst|start_rw_i_r_edge~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s\(6),
	datad => \reg_ctrl_inst|start_rw_i_r_edge~q\,
	combout => \reg_ctrl_inst|rcvd_addr_reg_i_s~5_combout\);

-- Location: FF_X46_Y15_N29
\reg_ctrl_inst|rcvd_addr_reg_i_s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \reg_ctrl_inst|rcvd_addr_reg_i_s~5_combout\,
	clrn => \reset_n~input_o\,
	ena => \reg_ctrl_inst|rcvd_addr_reg_i_s[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|rcvd_addr_reg_i_s\(6));

-- Location: LCCOMB_X46_Y15_N24
\reg_ctrl_inst|reg_addr_ok_o_s~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|reg_addr_ok_o_s~1_combout\ = (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(3) & (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(4) & (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(5) & !\reg_ctrl_inst|rcvd_addr_reg_i_s\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|rcvd_addr_reg_i_s\(3),
	datab => \reg_ctrl_inst|rcvd_addr_reg_i_s\(4),
	datac => \reg_ctrl_inst|rcvd_addr_reg_i_s\(5),
	datad => \reg_ctrl_inst|rcvd_addr_reg_i_s\(6),
	combout => \reg_ctrl_inst|reg_addr_ok_o_s~1_combout\);

-- Location: LCCOMB_X45_Y15_N14
\uart_ctrl_inst|uart_mngt_inst|byte_array[1][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|byte_array[1][7]~feeder_combout\ = \uart_ctrl_inst|uart_mngt_inst|byte_array~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_ctrl_inst|uart_mngt_inst|byte_array~0_combout\,
	combout => \uart_ctrl_inst|uart_mngt_inst|byte_array[1][7]~feeder_combout\);

-- Location: FF_X45_Y15_N15
\uart_ctrl_inst|uart_mngt_inst|byte_array[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|uart_mngt_inst|byte_array[1][7]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \uart_ctrl_inst|uart_mngt_inst|byte_array[1][0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|byte_array[1][7]~q\);

-- Location: LCCOMB_X44_Y15_N22
\uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s~4_combout\ = (!\uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\ & \uart_ctrl_inst|uart_mngt_inst|byte_array[1][7]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\,
	datac => \uart_ctrl_inst|uart_mngt_inst|byte_array[1][7]~q\,
	combout => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s~4_combout\);

-- Location: FF_X44_Y15_N23
\uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s~4_combout\,
	clrn => \reset_n~input_o\,
	ena => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s\(7));

-- Location: LCCOMB_X45_Y16_N12
\reg_ctrl_inst|rcvd_addr_reg_i_s~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|rcvd_addr_reg_i_s~4_combout\ = (\reg_ctrl_inst|start_rw_i_r_edge~q\ & \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|start_rw_i_r_edge~q\,
	datad => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s\(7),
	combout => \reg_ctrl_inst|rcvd_addr_reg_i_s~4_combout\);

-- Location: FF_X45_Y16_N13
\reg_ctrl_inst|rcvd_addr_reg_i_s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \reg_ctrl_inst|rcvd_addr_reg_i_s~4_combout\,
	clrn => \reset_n~input_o\,
	ena => \reg_ctrl_inst|rcvd_addr_reg_i_s[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|rcvd_addr_reg_i_s\(7));

-- Location: LCCOMB_X48_Y18_N0
\uart_ctrl_inst|rx_uart_inst|rx_data_s~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|rx_data_s~7_combout\ = (!\uart_ctrl_inst|rx_uart_inst|cnt_data\(2) & (!\uart_ctrl_inst|rx_uart_inst|cnt_data\(1) & (\uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_DATA~q\ & !\uart_ctrl_inst|rx_uart_inst|cnt_data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|cnt_data\(2),
	datab => \uart_ctrl_inst|rx_uart_inst|cnt_data\(1),
	datac => \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_DATA~q\,
	datad => \uart_ctrl_inst|rx_uart_inst|cnt_data\(0),
	combout => \uart_ctrl_inst|rx_uart_inst|rx_data_s~7_combout\);

-- Location: LCCOMB_X48_Y18_N2
\uart_ctrl_inst|rx_uart_inst|rx_data_s~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|rx_data_s~8_combout\ = (\uart_ctrl_inst|rx_uart_inst|tick_data~q\ & ((\uart_ctrl_inst|rx_uart_inst|rx_data_s~7_combout\ & (\rx_uart_i~input_o\)) # (!\uart_ctrl_inst|rx_uart_inst|rx_data_s~7_combout\ & 
-- ((\uart_ctrl_inst|rx_uart_inst|rx_data_s\(0)))))) # (!\uart_ctrl_inst|rx_uart_inst|tick_data~q\ & (((\uart_ctrl_inst|rx_uart_inst|rx_data_s\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|tick_data~q\,
	datab => \rx_uart_i~input_o\,
	datac => \uart_ctrl_inst|rx_uart_inst|rx_data_s\(0),
	datad => \uart_ctrl_inst|rx_uart_inst|rx_data_s~7_combout\,
	combout => \uart_ctrl_inst|rx_uart_inst|rx_data_s~8_combout\);

-- Location: FF_X48_Y18_N3
\uart_ctrl_inst|rx_uart_inst|rx_data_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|rx_uart_inst|rx_data_s~8_combout\,
	clrn => \reset_n~input_o\,
	sclr => \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_START~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|rx_uart_inst|rx_data_s\(0));

-- Location: LCCOMB_X48_Y15_N28
\uart_ctrl_inst|uart_mngt_inst|byte_array~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|byte_array~8_combout\ = (\uart_ctrl_inst|rx_uart_inst|rx_data_s\(0) & !\uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_ctrl_inst|rx_uart_inst|rx_data_s\(0),
	datad => \uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\,
	combout => \uart_ctrl_inst|uart_mngt_inst|byte_array~8_combout\);

-- Location: LCCOMB_X45_Y15_N22
\uart_ctrl_inst|uart_mngt_inst|byte_array[1][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|byte_array[1][0]~feeder_combout\ = \uart_ctrl_inst|uart_mngt_inst|byte_array~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_ctrl_inst|uart_mngt_inst|byte_array~8_combout\,
	combout => \uart_ctrl_inst|uart_mngt_inst|byte_array[1][0]~feeder_combout\);

-- Location: FF_X45_Y15_N23
\uart_ctrl_inst|uart_mngt_inst|byte_array[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|uart_mngt_inst|byte_array[1][0]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \uart_ctrl_inst|uart_mngt_inst|byte_array[1][0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|byte_array[1][0]~q\);

-- Location: LCCOMB_X44_Y15_N30
\uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s~2_combout\ = (!\uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\ & \uart_ctrl_inst|uart_mngt_inst|byte_array[1][0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\,
	datad => \uart_ctrl_inst|uart_mngt_inst|byte_array[1][0]~q\,
	combout => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s~2_combout\);

-- Location: FF_X44_Y15_N31
\uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s~2_combout\,
	clrn => \reset_n~input_o\,
	ena => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s\(0));

-- Location: LCCOMB_X47_Y16_N6
\reg_ctrl_inst|rcvd_addr_reg_i_s~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|rcvd_addr_reg_i_s~2_combout\ = (\reg_ctrl_inst|start_rw_i_r_edge~q\ & \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_ctrl_inst|start_rw_i_r_edge~q\,
	datac => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s\(0),
	combout => \reg_ctrl_inst|rcvd_addr_reg_i_s~2_combout\);

-- Location: FF_X47_Y16_N7
\reg_ctrl_inst|rcvd_addr_reg_i_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \reg_ctrl_inst|rcvd_addr_reg_i_s~2_combout\,
	clrn => \reset_n~input_o\,
	ena => \reg_ctrl_inst|rcvd_addr_reg_i_s[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|rcvd_addr_reg_i_s\(0));

-- Location: LCCOMB_X45_Y15_N20
\uart_ctrl_inst|uart_mngt_inst|byte_array[1][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|byte_array[1][2]~feeder_combout\ = \uart_ctrl_inst|uart_mngt_inst|byte_array~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_ctrl_inst|uart_mngt_inst|byte_array~6_combout\,
	combout => \uart_ctrl_inst|uart_mngt_inst|byte_array[1][2]~feeder_combout\);

-- Location: FF_X45_Y15_N21
\uart_ctrl_inst|uart_mngt_inst|byte_array[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|uart_mngt_inst|byte_array[1][2]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \uart_ctrl_inst|uart_mngt_inst|byte_array[1][0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|byte_array[1][2]~q\);

-- Location: LCCOMB_X44_Y15_N0
\uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s~3_combout\ = (!\uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\ & \uart_ctrl_inst|uart_mngt_inst|byte_array[1][2]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\,
	datac => \uart_ctrl_inst|uart_mngt_inst|byte_array[1][2]~q\,
	combout => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s~3_combout\);

-- Location: FF_X44_Y15_N1
\uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s~3_combout\,
	clrn => \reset_n~input_o\,
	ena => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s\(2));

-- Location: LCCOMB_X44_Y16_N26
\reg_ctrl_inst|rcvd_addr_reg_i_s~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|rcvd_addr_reg_i_s~3_combout\ = (\uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s\(2) & \reg_ctrl_inst|start_rw_i_r_edge~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s\(2),
	datad => \reg_ctrl_inst|start_rw_i_r_edge~q\,
	combout => \reg_ctrl_inst|rcvd_addr_reg_i_s~3_combout\);

-- Location: FF_X45_Y16_N29
\reg_ctrl_inst|rcvd_addr_reg_i_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	asdata => \reg_ctrl_inst|rcvd_addr_reg_i_s~3_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \reg_ctrl_inst|rcvd_addr_reg_i_s[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|rcvd_addr_reg_i_s\(2));

-- Location: LCCOMB_X45_Y15_N28
\uart_ctrl_inst|uart_mngt_inst|byte_array[1][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|byte_array[1][1]~feeder_combout\ = \uart_ctrl_inst|uart_mngt_inst|byte_array~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_ctrl_inst|uart_mngt_inst|byte_array~7_combout\,
	combout => \uart_ctrl_inst|uart_mngt_inst|byte_array[1][1]~feeder_combout\);

-- Location: FF_X45_Y15_N29
\uart_ctrl_inst|uart_mngt_inst|byte_array[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|uart_mngt_inst|byte_array[1][1]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \uart_ctrl_inst|uart_mngt_inst|byte_array[1][0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|byte_array[1][1]~q\);

-- Location: LCCOMB_X44_Y15_N24
\uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s~0_combout\ = (!\uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\ & \uart_ctrl_inst|uart_mngt_inst|byte_array[1][1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\,
	datad => \uart_ctrl_inst|uart_mngt_inst|byte_array[1][1]~q\,
	combout => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s~0_combout\);

-- Location: FF_X44_Y15_N25
\uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s~0_combout\,
	clrn => \reset_n~input_o\,
	ena => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s\(1));

-- Location: LCCOMB_X47_Y16_N16
\reg_ctrl_inst|rcvd_addr_reg_i_s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|rcvd_addr_reg_i_s~0_combout\ = (\reg_ctrl_inst|start_rw_i_r_edge~q\ & \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_ctrl_inst|start_rw_i_r_edge~q\,
	datad => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s\(1),
	combout => \reg_ctrl_inst|rcvd_addr_reg_i_s~0_combout\);

-- Location: FF_X47_Y16_N17
\reg_ctrl_inst|rcvd_addr_reg_i_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \reg_ctrl_inst|rcvd_addr_reg_i_s~0_combout\,
	clrn => \reset_n~input_o\,
	ena => \reg_ctrl_inst|rcvd_addr_reg_i_s[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|rcvd_addr_reg_i_s\(1));

-- Location: LCCOMB_X45_Y16_N28
\reg_ctrl_inst|reg_addr_ok_o_s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|reg_addr_ok_o_s~0_combout\ = (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(7) & (((!\reg_ctrl_inst|rcvd_addr_reg_i_s\(0) & !\reg_ctrl_inst|rcvd_addr_reg_i_s\(1))) # (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|rcvd_addr_reg_i_s\(7),
	datab => \reg_ctrl_inst|rcvd_addr_reg_i_s\(0),
	datac => \reg_ctrl_inst|rcvd_addr_reg_i_s\(2),
	datad => \reg_ctrl_inst|rcvd_addr_reg_i_s\(1),
	combout => \reg_ctrl_inst|reg_addr_ok_o_s~0_combout\);

-- Location: LCCOMB_X45_Y16_N8
\reg_ctrl_inst|reg_addr_ok_o_s~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|reg_addr_ok_o_s~2_combout\ = (\reg_ctrl_inst|check_on_s~q\ & ((\reg_ctrl_inst|reg_addr_ok_o_s~q\) # ((\reg_ctrl_inst|reg_addr_ok_o_s~1_combout\ & \reg_ctrl_inst|reg_addr_ok_o_s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|reg_addr_ok_o_s~1_combout\,
	datab => \reg_ctrl_inst|check_on_s~q\,
	datac => \reg_ctrl_inst|reg_addr_ok_o_s~q\,
	datad => \reg_ctrl_inst|reg_addr_ok_o_s~0_combout\,
	combout => \reg_ctrl_inst|reg_addr_ok_o_s~2_combout\);

-- Location: FF_X45_Y16_N9
\reg_ctrl_inst|reg_addr_ok_o_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \reg_ctrl_inst|reg_addr_ok_o_s~2_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|reg_addr_ok_o_s~q\);

-- Location: LCCOMB_X43_Y15_N20
\uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[7]~3_combout\ = (\uart_ctrl_inst|uart_mngt_inst|start_parse_s~q\ & (!\uart_ctrl_inst|uart_mngt_inst|parse_done_s~q\ & !\uart_ctrl_inst|uart_mngt_inst|cmd_byte_error_s~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_ctrl_inst|uart_mngt_inst|start_parse_s~q\,
	datac => \uart_ctrl_inst|uart_mngt_inst|parse_done_s~q\,
	datad => \uart_ctrl_inst|uart_mngt_inst|cmd_byte_error_s~q\,
	combout => \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[7]~3_combout\);

-- Location: LCCOMB_X45_Y16_N20
\uart_ctrl_inst|uart_mngt_inst|start_rw_reg_s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|start_rw_reg_s~0_combout\ = (\uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[7]~3_combout\ & (((\uart_ctrl_inst|uart_mngt_inst|start_rw_reg_s~q\ & \reg_ctrl_inst|reg_addr_ok_o_s~q\)) # 
-- (!\uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[7]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|uart_mngt_inst|start_rw_reg_s~q\,
	datab => \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[7]~2_combout\,
	datac => \reg_ctrl_inst|reg_addr_ok_o_s~q\,
	datad => \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[7]~3_combout\,
	combout => \uart_ctrl_inst|uart_mngt_inst|start_rw_reg_s~0_combout\);

-- Location: LCCOMB_X45_Y16_N22
\uart_ctrl_inst|uart_mngt_inst|start_rw_reg_s~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|start_rw_reg_s~1_combout\ = (\uart_ctrl_inst|uart_mngt_inst|start_rw_reg_s~0_combout\) # ((\uart_ctrl_inst|uart_mngt_inst|start_parse_s~q\ & (\uart_ctrl_inst|uart_mngt_inst|parse_done_s~q\ & 
-- \uart_ctrl_inst|uart_mngt_inst|start_rw_reg_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|uart_mngt_inst|start_parse_s~q\,
	datab => \uart_ctrl_inst|uart_mngt_inst|parse_done_s~q\,
	datac => \uart_ctrl_inst|uart_mngt_inst|start_rw_reg_s~q\,
	datad => \uart_ctrl_inst|uart_mngt_inst|start_rw_reg_s~0_combout\,
	combout => \uart_ctrl_inst|uart_mngt_inst|start_rw_reg_s~1_combout\);

-- Location: FF_X45_Y16_N23
\uart_ctrl_inst|uart_mngt_inst|start_rw_reg_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|uart_mngt_inst|start_rw_reg_s~1_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|start_rw_reg_s~q\);

-- Location: FF_X45_Y16_N19
\reg_ctrl_inst|start_rw_i_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	asdata => \uart_ctrl_inst|uart_mngt_inst|start_rw_reg_s~q\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|start_rw_i_s~q\);

-- Location: LCCOMB_X45_Y16_N6
\reg_ctrl_inst|start_rw_i_r_edge~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|start_rw_i_r_edge~0_combout\ = (\uart_ctrl_inst|uart_mngt_inst|start_rw_reg_s~q\ & !\reg_ctrl_inst|start_rw_i_s~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_ctrl_inst|uart_mngt_inst|start_rw_reg_s~q\,
	datad => \reg_ctrl_inst|start_rw_i_s~q\,
	combout => \reg_ctrl_inst|start_rw_i_r_edge~0_combout\);

-- Location: FF_X45_Y16_N7
\reg_ctrl_inst|start_rw_i_r_edge\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \reg_ctrl_inst|start_rw_i_r_edge~0_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|start_rw_i_r_edge~q\);

-- Location: FF_X44_Y15_N29
\reg_ctrl_inst|check_on_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \reg_ctrl_inst|check_on_s~0_combout\,
	asdata => VCC,
	clrn => \reset_n~input_o\,
	sload => \reg_ctrl_inst|start_rw_i_r_edge~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|check_on_s~q\);

-- Location: FF_X45_Y16_N27
\reg_ctrl_inst|check_done_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	asdata => \reg_ctrl_inst|check_on_s~q\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|check_done_s~q\);

-- Location: FF_X45_Y16_N17
\reg_ctrl_inst|data_valid_o_ss\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	asdata => \reg_ctrl_inst|check_done_s~q\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|data_valid_o_ss~q\);

-- Location: LCCOMB_X45_Y16_N0
\reg_ctrl_inst|data_valid_o_s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|data_valid_o_s~0_combout\ = (\reg_ctrl_inst|check_done_s~q\ & \reg_ctrl_inst|data_valid_o_ss~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|check_done_s~q\,
	datad => \reg_ctrl_inst|data_valid_o_ss~q\,
	combout => \reg_ctrl_inst|data_valid_o_s~0_combout\);

-- Location: FF_X45_Y16_N1
\reg_ctrl_inst|data_valid_o_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \reg_ctrl_inst|data_valid_o_s~0_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|data_valid_o_s~q\);

-- Location: LCCOMB_X45_Y16_N4
\uart_ctrl_inst|uart_mngt_inst|reg_data_valid_s~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|reg_data_valid_s~feeder_combout\ = \reg_ctrl_inst|data_valid_o_s~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg_ctrl_inst|data_valid_o_s~q\,
	combout => \uart_ctrl_inst|uart_mngt_inst|reg_data_valid_s~feeder_combout\);

-- Location: FF_X45_Y16_N5
\uart_ctrl_inst|uart_mngt_inst|reg_data_valid_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|uart_mngt_inst|reg_data_valid_s~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|reg_data_valid_s~q\);

-- Location: LCCOMB_X45_Y16_N26
\uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[7]~2_combout\ = (!\uart_ctrl_inst|uart_mngt_inst|reg_data_valid_s~q\ & \reg_ctrl_inst|data_valid_o_s~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_ctrl_inst|uart_mngt_inst|reg_data_valid_s~q\,
	datad => \reg_ctrl_inst|data_valid_o_s~q\,
	combout => \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[7]~2_combout\);

-- Location: LCCOMB_X43_Y15_N30
\uart_ctrl_inst|uart_mngt_inst|parse_done_s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|parse_done_s~0_combout\ = (\uart_ctrl_inst|uart_mngt_inst|parse_done_s~q\) # ((\uart_ctrl_inst|uart_mngt_inst|start_parse_s~q\ & ((\uart_ctrl_inst|uart_mngt_inst|cmd_byte_error_s~q\) # 
-- (\uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[7]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|uart_mngt_inst|start_parse_s~q\,
	datab => \uart_ctrl_inst|uart_mngt_inst|cmd_byte_error_s~q\,
	datac => \uart_ctrl_inst|uart_mngt_inst|parse_done_s~q\,
	datad => \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[7]~2_combout\,
	combout => \uart_ctrl_inst|uart_mngt_inst|parse_done_s~0_combout\);

-- Location: FF_X43_Y15_N31
\uart_ctrl_inst|uart_mngt_inst|parse_done_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|uart_mngt_inst|parse_done_s~0_combout\,
	clrn => \reset_n~input_o\,
	sclr => \uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|parse_done_s~q\);

-- Location: LCCOMB_X43_Y15_N0
\uart_ctrl_inst|uart_mngt_inst|send_resp_s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|send_resp_s~0_combout\ = (\uart_ctrl_inst|uart_mngt_inst|parse_done_s~q\) # ((\uart_ctrl_inst|uart_mngt_inst|send_resp_s~q\ & \uart_ctrl_inst|uart_mngt_inst|start_parse_s~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|uart_mngt_inst|parse_done_s~q\,
	datac => \uart_ctrl_inst|uart_mngt_inst|send_resp_s~q\,
	datad => \uart_ctrl_inst|uart_mngt_inst|start_parse_s~q\,
	combout => \uart_ctrl_inst|uart_mngt_inst|send_resp_s~0_combout\);

-- Location: FF_X43_Y15_N1
\uart_ctrl_inst|uart_mngt_inst|send_resp_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|uart_mngt_inst|send_resp_s~0_combout\,
	clrn => \reset_n~input_o\,
	sclr => \uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|send_resp_s~q\);

-- Location: LCCOMB_X43_Y15_N16
\uart_ctrl_inst|uart_mngt_inst|p_tx_mng~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|p_tx_mng~0_combout\ = (\uart_ctrl_inst|uart_mngt_inst|send_resp_s~q\ & !\uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_ctrl_inst|uart_mngt_inst|send_resp_s~q\,
	datad => \uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\,
	combout => \uart_ctrl_inst|uart_mngt_inst|p_tx_mng~0_combout\);

-- Location: LCCOMB_X44_Y14_N0
\uart_ctrl_inst|uart_mngt_inst|start_tx_o_s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|start_tx_o_s~0_combout\ = (!\uart_ctrl_inst|uart_mngt_inst|send_resp_s~q\) # (!\uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\,
	datad => \uart_ctrl_inst|uart_mngt_inst|send_resp_s~q\,
	combout => \uart_ctrl_inst|uart_mngt_inst|start_tx_o_s~0_combout\);

-- Location: LCCOMB_X43_Y15_N14
\uart_ctrl_inst|uart_mngt_inst|start_tx_o_s~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|start_tx_o_s~1_combout\ = (\uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx~0_combout\ & (((\uart_ctrl_inst|uart_mngt_inst|start_tx_o_s~q\ & !\uart_ctrl_inst|uart_mngt_inst|start_tx_o_s~0_combout\)))) # 
-- (!\uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx~0_combout\ & ((\uart_ctrl_inst|uart_mngt_inst|p_tx_mng~0_combout\) # ((\uart_ctrl_inst|uart_mngt_inst|start_tx_o_s~q\ & !\uart_ctrl_inst|uart_mngt_inst|start_tx_o_s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx~0_combout\,
	datab => \uart_ctrl_inst|uart_mngt_inst|p_tx_mng~0_combout\,
	datac => \uart_ctrl_inst|uart_mngt_inst|start_tx_o_s~q\,
	datad => \uart_ctrl_inst|uart_mngt_inst|start_tx_o_s~0_combout\,
	combout => \uart_ctrl_inst|uart_mngt_inst|start_tx_o_s~1_combout\);

-- Location: FF_X43_Y15_N15
\uart_ctrl_inst|uart_mngt_inst|start_tx_o_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|uart_mngt_inst|start_tx_o_s~1_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|start_tx_o_s~q\);

-- Location: LCCOMB_X48_Y14_N18
\uart_ctrl_inst|tx_uart_inst|start_tx_s~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|start_tx_s~feeder_combout\ = \uart_ctrl_inst|uart_mngt_inst|start_tx_o_s~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_ctrl_inst|uart_mngt_inst|start_tx_o_s~q\,
	combout => \uart_ctrl_inst|tx_uart_inst|start_tx_s~feeder_combout\);

-- Location: FF_X48_Y14_N19
\uart_ctrl_inst|tx_uart_inst|start_tx_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|tx_uart_inst|start_tx_s~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|tx_uart_inst|start_tx_s~q\);

-- Location: LCCOMB_X48_Y14_N24
\uart_ctrl_inst|tx_uart_inst|start_tx_r_edge~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|start_tx_r_edge~0_combout\ = (\uart_ctrl_inst|uart_mngt_inst|start_tx_o_s~q\ & !\uart_ctrl_inst|tx_uart_inst|start_tx_s~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_ctrl_inst|uart_mngt_inst|start_tx_o_s~q\,
	datad => \uart_ctrl_inst|tx_uart_inst|start_tx_s~q\,
	combout => \uart_ctrl_inst|tx_uart_inst|start_tx_r_edge~0_combout\);

-- Location: FF_X48_Y14_N25
\uart_ctrl_inst|tx_uart_inst|start_tx_r_edge\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|tx_uart_inst|start_tx_r_edge~0_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|tx_uart_inst|start_tx_r_edge~q\);

-- Location: LCCOMB_X47_Y14_N12
\uart_ctrl_inst|tx_uart_inst|Selector1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|Selector1~4_combout\ = (\uart_ctrl_inst|tx_uart_inst|tx_fsm.LATCH_INPUTS~q\ & ((\uart_ctrl_inst|tx_uart_inst|latch_done_s~q\) # ((!\uart_ctrl_inst|tx_uart_inst|tx_fsm.IDLE~q\ & 
-- \uart_ctrl_inst|tx_uart_inst|start_tx_r_edge~q\)))) # (!\uart_ctrl_inst|tx_uart_inst|tx_fsm.LATCH_INPUTS~q\ & (!\uart_ctrl_inst|tx_uart_inst|tx_fsm.IDLE~q\ & ((\uart_ctrl_inst|tx_uart_inst|start_tx_r_edge~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|tx_uart_inst|tx_fsm.LATCH_INPUTS~q\,
	datab => \uart_ctrl_inst|tx_uart_inst|tx_fsm.IDLE~q\,
	datac => \uart_ctrl_inst|tx_uart_inst|latch_done_s~q\,
	datad => \uart_ctrl_inst|tx_uart_inst|start_tx_r_edge~q\,
	combout => \uart_ctrl_inst|tx_uart_inst|Selector1~4_combout\);

-- Location: LCCOMB_X46_Y14_N2
\uart_ctrl_inst|tx_uart_inst|cnt_data[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|cnt_data[0]~5_combout\ = (\uart_ctrl_inst|tx_uart_inst|cnt_data\(0) & (\uart_ctrl_inst|tx_uart_inst|tick_data~q\ $ (VCC))) # (!\uart_ctrl_inst|tx_uart_inst|cnt_data\(0) & (\uart_ctrl_inst|tx_uart_inst|tick_data~q\ & VCC))
-- \uart_ctrl_inst|tx_uart_inst|cnt_data[0]~6\ = CARRY((\uart_ctrl_inst|tx_uart_inst|cnt_data\(0) & \uart_ctrl_inst|tx_uart_inst|tick_data~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|tx_uart_inst|cnt_data\(0),
	datab => \uart_ctrl_inst|tx_uart_inst|tick_data~q\,
	datad => VCC,
	combout => \uart_ctrl_inst|tx_uart_inst|cnt_data[0]~5_combout\,
	cout => \uart_ctrl_inst|tx_uart_inst|cnt_data[0]~6\);

-- Location: LCCOMB_X46_Y14_N10
\uart_ctrl_inst|tx_uart_inst|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|Selector3~0_combout\ = (\uart_ctrl_inst|tx_uart_inst|tx_fsm.START_BIT_GEN~q\ & (\uart_ctrl_inst|tx_uart_inst|tick_data~q\ & !\uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_ctrl_inst|tx_uart_inst|tx_fsm.START_BIT_GEN~q\,
	datac => \uart_ctrl_inst|tx_uart_inst|tick_data~q\,
	datad => \uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP~q\,
	combout => \uart_ctrl_inst|tx_uart_inst|Selector3~0_combout\);

-- Location: LCCOMB_X46_Y14_N16
\uart_ctrl_inst|tx_uart_inst|Selector5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|Selector5~3_combout\ = (\uart_ctrl_inst|tx_uart_inst|tx_fsm.START_BIT_GEN~q\) # ((!\uart_ctrl_inst|tx_uart_inst|cnt_stop_bit~q\ & (\uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP_BIT_GEN~q\ & 
-- \uart_ctrl_inst|tx_uart_inst|tx_fsm.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|tx_uart_inst|tx_fsm.START_BIT_GEN~q\,
	datab => \uart_ctrl_inst|tx_uart_inst|cnt_stop_bit~q\,
	datac => \uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP_BIT_GEN~q\,
	datad => \uart_ctrl_inst|tx_uart_inst|tx_fsm.IDLE~q\,
	combout => \uart_ctrl_inst|tx_uart_inst|Selector5~3_combout\);

-- Location: LCCOMB_X47_Y14_N14
\uart_ctrl_inst|tx_uart_inst|Selector5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|Selector5~2_combout\ = (\uart_ctrl_inst|tx_uart_inst|tx_fsm.LATCH_INPUTS~q\ & (\uart_ctrl_inst|tx_uart_inst|tx_fsm.IDLE~q\ & (\uart_ctrl_inst|tx_uart_inst|latch_done_s~q\ & 
-- !\uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP_BIT_GEN~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|tx_uart_inst|tx_fsm.LATCH_INPUTS~q\,
	datab => \uart_ctrl_inst|tx_uart_inst|tx_fsm.IDLE~q\,
	datac => \uart_ctrl_inst|tx_uart_inst|latch_done_s~q\,
	datad => \uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP_BIT_GEN~q\,
	combout => \uart_ctrl_inst|tx_uart_inst|Selector5~2_combout\);

-- Location: LCCOMB_X47_Y14_N26
\uart_ctrl_inst|tx_uart_inst|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|Selector3~1_combout\ = (!\uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP~q\ & (!\uart_ctrl_inst|tx_uart_inst|Selector5~2_combout\ & ((\uart_ctrl_inst|tx_uart_inst|tx_fsm.IDLE~q\) # 
-- (!\uart_ctrl_inst|tx_uart_inst|start_tx_r_edge~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP~q\,
	datab => \uart_ctrl_inst|tx_uart_inst|tx_fsm.IDLE~q\,
	datac => \uart_ctrl_inst|tx_uart_inst|Selector5~2_combout\,
	datad => \uart_ctrl_inst|tx_uart_inst|start_tx_r_edge~q\,
	combout => \uart_ctrl_inst|tx_uart_inst|Selector3~1_combout\);

-- Location: LCCOMB_X46_Y14_N24
\uart_ctrl_inst|tx_uart_inst|Selector3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|Selector3~2_combout\ = (!\uart_ctrl_inst|tx_uart_inst|Selector5~4_combout\ & (\uart_ctrl_inst|tx_uart_inst|Selector3~1_combout\ & ((!\uart_ctrl_inst|tx_uart_inst|Selector5~3_combout\) # 
-- (!\uart_ctrl_inst|tx_uart_inst|tick_data~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|tx_uart_inst|tick_data~q\,
	datab => \uart_ctrl_inst|tx_uart_inst|Selector5~3_combout\,
	datac => \uart_ctrl_inst|tx_uart_inst|Selector5~4_combout\,
	datad => \uart_ctrl_inst|tx_uart_inst|Selector3~1_combout\,
	combout => \uart_ctrl_inst|tx_uart_inst|Selector3~2_combout\);

-- Location: LCCOMB_X46_Y14_N12
\uart_ctrl_inst|tx_uart_inst|Selector3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|Selector3~3_combout\ = (\uart_ctrl_inst|tx_uart_inst|Selector3~0_combout\) # ((\uart_ctrl_inst|tx_uart_inst|tx_fsm.DATA_GEN~q\ & \uart_ctrl_inst|tx_uart_inst|Selector3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|tx_uart_inst|Selector3~0_combout\,
	datac => \uart_ctrl_inst|tx_uart_inst|tx_fsm.DATA_GEN~q\,
	datad => \uart_ctrl_inst|tx_uart_inst|Selector3~2_combout\,
	combout => \uart_ctrl_inst|tx_uart_inst|Selector3~3_combout\);

-- Location: FF_X46_Y14_N13
\uart_ctrl_inst|tx_uart_inst|tx_fsm.DATA_GEN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|tx_uart_inst|Selector3~3_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|tx_uart_inst|tx_fsm.DATA_GEN~q\);

-- Location: LCCOMB_X46_Y14_N4
\uart_ctrl_inst|tx_uart_inst|cnt_data[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|cnt_data[1]~7_combout\ = (\uart_ctrl_inst|tx_uart_inst|cnt_data\(1) & (!\uart_ctrl_inst|tx_uart_inst|cnt_data[0]~6\)) # (!\uart_ctrl_inst|tx_uart_inst|cnt_data\(1) & ((\uart_ctrl_inst|tx_uart_inst|cnt_data[0]~6\) # (GND)))
-- \uart_ctrl_inst|tx_uart_inst|cnt_data[1]~8\ = CARRY((!\uart_ctrl_inst|tx_uart_inst|cnt_data[0]~6\) # (!\uart_ctrl_inst|tx_uart_inst|cnt_data\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_ctrl_inst|tx_uart_inst|cnt_data\(1),
	datad => VCC,
	cin => \uart_ctrl_inst|tx_uart_inst|cnt_data[0]~6\,
	combout => \uart_ctrl_inst|tx_uart_inst|cnt_data[1]~7_combout\,
	cout => \uart_ctrl_inst|tx_uart_inst|cnt_data[1]~8\);

-- Location: LCCOMB_X47_Y14_N8
\uart_ctrl_inst|tx_uart_inst|cnt_data[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|cnt_data[3]~4_combout\ = (!\uart_ctrl_inst|tx_uart_inst|tx_fsm.LATCH_INPUTS~q\ & !\uart_ctrl_inst|tx_uart_inst|tx_fsm.START_BIT_GEN~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_ctrl_inst|tx_uart_inst|tx_fsm.LATCH_INPUTS~q\,
	datad => \uart_ctrl_inst|tx_uart_inst|tx_fsm.START_BIT_GEN~q\,
	combout => \uart_ctrl_inst|tx_uart_inst|cnt_data[3]~4_combout\);

-- Location: LCCOMB_X46_Y14_N30
\uart_ctrl_inst|tx_uart_inst|cnt_data[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|cnt_data[3]~13_combout\ = (\uart_ctrl_inst|tx_uart_inst|cnt_data[3]~4_combout\ & (\uart_ctrl_inst|tx_uart_inst|tx_fsm.IDLE~q\ & ((\uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP~q\) # 
-- (\uart_ctrl_inst|tx_uart_inst|tx_fsm.DATA_GEN~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP~q\,
	datab => \uart_ctrl_inst|tx_uart_inst|tx_fsm.DATA_GEN~q\,
	datac => \uart_ctrl_inst|tx_uart_inst|cnt_data[3]~4_combout\,
	datad => \uart_ctrl_inst|tx_uart_inst|tx_fsm.IDLE~q\,
	combout => \uart_ctrl_inst|tx_uart_inst|cnt_data[3]~13_combout\);

-- Location: FF_X46_Y14_N5
\uart_ctrl_inst|tx_uart_inst|cnt_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|tx_uart_inst|cnt_data[1]~7_combout\,
	clrn => \reset_n~input_o\,
	sclr => \uart_ctrl_inst|tx_uart_inst|Selector5~0_combout\,
	ena => \uart_ctrl_inst|tx_uart_inst|cnt_data[3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|tx_uart_inst|cnt_data\(1));

-- Location: LCCOMB_X46_Y14_N6
\uart_ctrl_inst|tx_uart_inst|cnt_data[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|cnt_data[2]~9_combout\ = (\uart_ctrl_inst|tx_uart_inst|cnt_data\(2) & (\uart_ctrl_inst|tx_uart_inst|cnt_data[1]~8\ $ (GND))) # (!\uart_ctrl_inst|tx_uart_inst|cnt_data\(2) & (!\uart_ctrl_inst|tx_uart_inst|cnt_data[1]~8\ & VCC))
-- \uart_ctrl_inst|tx_uart_inst|cnt_data[2]~10\ = CARRY((\uart_ctrl_inst|tx_uart_inst|cnt_data\(2) & !\uart_ctrl_inst|tx_uart_inst|cnt_data[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|tx_uart_inst|cnt_data\(2),
	datad => VCC,
	cin => \uart_ctrl_inst|tx_uart_inst|cnt_data[1]~8\,
	combout => \uart_ctrl_inst|tx_uart_inst|cnt_data[2]~9_combout\,
	cout => \uart_ctrl_inst|tx_uart_inst|cnt_data[2]~10\);

-- Location: FF_X46_Y14_N7
\uart_ctrl_inst|tx_uart_inst|cnt_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|tx_uart_inst|cnt_data[2]~9_combout\,
	clrn => \reset_n~input_o\,
	sclr => \uart_ctrl_inst|tx_uart_inst|Selector5~0_combout\,
	ena => \uart_ctrl_inst|tx_uart_inst|cnt_data[3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|tx_uart_inst|cnt_data\(2));

-- Location: LCCOMB_X46_Y14_N8
\uart_ctrl_inst|tx_uart_inst|cnt_data[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|cnt_data[3]~11_combout\ = \uart_ctrl_inst|tx_uart_inst|cnt_data\(3) $ (\uart_ctrl_inst|tx_uart_inst|cnt_data[2]~10\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_ctrl_inst|tx_uart_inst|cnt_data\(3),
	cin => \uart_ctrl_inst|tx_uart_inst|cnt_data[2]~10\,
	combout => \uart_ctrl_inst|tx_uart_inst|cnt_data[3]~11_combout\);

-- Location: FF_X46_Y14_N9
\uart_ctrl_inst|tx_uart_inst|cnt_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|tx_uart_inst|cnt_data[3]~11_combout\,
	clrn => \reset_n~input_o\,
	sclr => \uart_ctrl_inst|tx_uart_inst|Selector5~0_combout\,
	ena => \uart_ctrl_inst|tx_uart_inst|cnt_data[3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|tx_uart_inst|cnt_data\(3));

-- Location: LCCOMB_X45_Y14_N14
\uart_ctrl_inst|tx_uart_inst|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|Selector5~0_combout\ = (\uart_ctrl_inst|tx_uart_inst|cnt_data\(3)) # (!\uart_ctrl_inst|tx_uart_inst|tx_fsm.DATA_GEN~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_ctrl_inst|tx_uart_inst|tx_fsm.DATA_GEN~q\,
	datac => \uart_ctrl_inst|tx_uart_inst|cnt_data\(3),
	combout => \uart_ctrl_inst|tx_uart_inst|Selector5~0_combout\);

-- Location: FF_X46_Y14_N3
\uart_ctrl_inst|tx_uart_inst|cnt_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|tx_uart_inst|cnt_data[0]~5_combout\,
	clrn => \reset_n~input_o\,
	sclr => \uart_ctrl_inst|tx_uart_inst|Selector5~0_combout\,
	ena => \uart_ctrl_inst|tx_uart_inst|cnt_data[3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|tx_uart_inst|cnt_data\(0));

-- Location: LCCOMB_X46_Y14_N26
\uart_ctrl_inst|tx_uart_inst|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|Selector5~1_combout\ = (\uart_ctrl_inst|tx_uart_inst|tx_fsm.DATA_GEN~q\ & (!\uart_ctrl_inst|tx_uart_inst|cnt_data\(3) & (\uart_ctrl_inst|tx_uart_inst|cnt_data\(1) & \uart_ctrl_inst|tx_uart_inst|tick_data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|tx_uart_inst|tx_fsm.DATA_GEN~q\,
	datab => \uart_ctrl_inst|tx_uart_inst|cnt_data\(3),
	datac => \uart_ctrl_inst|tx_uart_inst|cnt_data\(1),
	datad => \uart_ctrl_inst|tx_uart_inst|tick_data~q\,
	combout => \uart_ctrl_inst|tx_uart_inst|Selector5~1_combout\);

-- Location: LCCOMB_X46_Y14_N14
\uart_ctrl_inst|tx_uart_inst|Selector5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|Selector5~4_combout\ = (\uart_ctrl_inst|tx_uart_inst|cnt_data\(0) & (\uart_ctrl_inst|tx_uart_inst|Selector5~1_combout\ & \uart_ctrl_inst|tx_uart_inst|cnt_data\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|tx_uart_inst|cnt_data\(0),
	datac => \uart_ctrl_inst|tx_uart_inst|Selector5~1_combout\,
	datad => \uart_ctrl_inst|tx_uart_inst|cnt_data\(2),
	combout => \uart_ctrl_inst|tx_uart_inst|Selector5~4_combout\);

-- Location: LCCOMB_X46_Y14_N22
\uart_ctrl_inst|tx_uart_inst|Selector5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|Selector5~5_combout\ = (\uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP~q\ & (((\uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP_BIT_GEN~q\ & \uart_ctrl_inst|tx_uart_inst|Selector3~2_combout\)))) # 
-- (!\uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP~q\ & ((\uart_ctrl_inst|tx_uart_inst|Selector5~4_combout\) # ((\uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP_BIT_GEN~q\ & \uart_ctrl_inst|tx_uart_inst|Selector3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP~q\,
	datab => \uart_ctrl_inst|tx_uart_inst|Selector5~4_combout\,
	datac => \uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP_BIT_GEN~q\,
	datad => \uart_ctrl_inst|tx_uart_inst|Selector3~2_combout\,
	combout => \uart_ctrl_inst|tx_uart_inst|Selector5~5_combout\);

-- Location: FF_X46_Y14_N23
\uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP_BIT_GEN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|tx_uart_inst|Selector5~5_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP_BIT_GEN~q\);

-- Location: LCCOMB_X47_Y14_N4
\uart_ctrl_inst|tx_uart_inst|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|Selector1~0_combout\ = (\uart_ctrl_inst|tx_uart_inst|tx_fsm.START_BIT_GEN~q\ & (((\uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP_BIT_GEN~q\ & !\uart_ctrl_inst|tx_uart_inst|cnt_stop_bit~q\)) # 
-- (!\uart_ctrl_inst|tx_uart_inst|tx_fsm.DATA_GEN~q\))) # (!\uart_ctrl_inst|tx_uart_inst|tx_fsm.START_BIT_GEN~q\ & (\uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP_BIT_GEN~q\ & (!\uart_ctrl_inst|tx_uart_inst|cnt_stop_bit~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|tx_uart_inst|tx_fsm.START_BIT_GEN~q\,
	datab => \uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP_BIT_GEN~q\,
	datac => \uart_ctrl_inst|tx_uart_inst|cnt_stop_bit~q\,
	datad => \uart_ctrl_inst|tx_uart_inst|tx_fsm.DATA_GEN~q\,
	combout => \uart_ctrl_inst|tx_uart_inst|Selector1~0_combout\);

-- Location: LCCOMB_X46_Y14_N0
\uart_ctrl_inst|tx_uart_inst|Selector1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|Selector1~2_combout\ = (\uart_ctrl_inst|tx_uart_inst|tx_fsm.DATA_GEN~q\) # (\uart_ctrl_inst|tx_uart_inst|tx_fsm.START_BIT_GEN~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|tx_uart_inst|tx_fsm.DATA_GEN~q\,
	datad => \uart_ctrl_inst|tx_uart_inst|tx_fsm.START_BIT_GEN~q\,
	combout => \uart_ctrl_inst|tx_uart_inst|Selector1~2_combout\);

-- Location: LCCOMB_X46_Y14_N20
\uart_ctrl_inst|tx_uart_inst|Selector1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|Selector1~3_combout\ = (\uart_ctrl_inst|tx_uart_inst|cnt_data\(2) & (\uart_ctrl_inst|tx_uart_inst|cnt_data\(0) & (\uart_ctrl_inst|tx_uart_inst|Selector5~1_combout\ & \uart_ctrl_inst|tx_uart_inst|Selector1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|tx_uart_inst|cnt_data\(2),
	datab => \uart_ctrl_inst|tx_uart_inst|cnt_data\(0),
	datac => \uart_ctrl_inst|tx_uart_inst|Selector5~1_combout\,
	datad => \uart_ctrl_inst|tx_uart_inst|Selector1~2_combout\,
	combout => \uart_ctrl_inst|tx_uart_inst|Selector1~3_combout\);

-- Location: LCCOMB_X47_Y14_N6
\uart_ctrl_inst|tx_uart_inst|Selector1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|Selector1~8_combout\ = (\uart_ctrl_inst|tx_uart_inst|Selector1~4_combout\) # ((\uart_ctrl_inst|tx_uart_inst|Selector1~3_combout\) # ((\uart_ctrl_inst|tx_uart_inst|Selector1~0_combout\ & 
-- \uart_ctrl_inst|tx_uart_inst|tick_data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|tx_uart_inst|Selector1~4_combout\,
	datab => \uart_ctrl_inst|tx_uart_inst|Selector1~0_combout\,
	datac => \uart_ctrl_inst|tx_uart_inst|tick_data~q\,
	datad => \uart_ctrl_inst|tx_uart_inst|Selector1~3_combout\,
	combout => \uart_ctrl_inst|tx_uart_inst|Selector1~8_combout\);

-- Location: LCCOMB_X47_Y14_N16
\uart_ctrl_inst|tx_uart_inst|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|Selector0~0_combout\ = (!\uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP~q\ & ((\uart_ctrl_inst|tx_uart_inst|tx_fsm.IDLE~q\) # (\uart_ctrl_inst|tx_uart_inst|Selector1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP~q\,
	datac => \uart_ctrl_inst|tx_uart_inst|tx_fsm.IDLE~q\,
	datad => \uart_ctrl_inst|tx_uart_inst|Selector1~8_combout\,
	combout => \uart_ctrl_inst|tx_uart_inst|Selector0~0_combout\);

-- Location: FF_X47_Y14_N17
\uart_ctrl_inst|tx_uart_inst|tx_fsm.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|tx_uart_inst|Selector0~0_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|tx_uart_inst|tx_fsm.IDLE~q\);

-- Location: LCCOMB_X47_Y14_N20
\uart_ctrl_inst|tx_uart_inst|Selector1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|Selector1~5_combout\ = (!\uart_ctrl_inst|tx_uart_inst|tx_fsm.IDLE~q\ & \uart_ctrl_inst|tx_uart_inst|start_tx_r_edge~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_ctrl_inst|tx_uart_inst|tx_fsm.IDLE~q\,
	datad => \uart_ctrl_inst|tx_uart_inst|start_tx_r_edge~q\,
	combout => \uart_ctrl_inst|tx_uart_inst|Selector1~5_combout\);

-- Location: LCCOMB_X47_Y14_N10
\uart_ctrl_inst|tx_uart_inst|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|Selector1~1_combout\ = (\uart_ctrl_inst|tx_uart_inst|Selector1~0_combout\ & \uart_ctrl_inst|tx_uart_inst|tick_data~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_ctrl_inst|tx_uart_inst|Selector1~0_combout\,
	datad => \uart_ctrl_inst|tx_uart_inst|tick_data~q\,
	combout => \uart_ctrl_inst|tx_uart_inst|Selector1~1_combout\);

-- Location: LCCOMB_X47_Y14_N2
\uart_ctrl_inst|tx_uart_inst|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|Selector2~0_combout\ = (!\uart_ctrl_inst|tx_uart_inst|Selector1~4_combout\ & (!\uart_ctrl_inst|tx_uart_inst|Selector1~3_combout\ & (!\uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP~q\ & 
-- !\uart_ctrl_inst|tx_uart_inst|Selector1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|tx_uart_inst|Selector1~4_combout\,
	datab => \uart_ctrl_inst|tx_uart_inst|Selector1~3_combout\,
	datac => \uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP~q\,
	datad => \uart_ctrl_inst|tx_uart_inst|Selector1~1_combout\,
	combout => \uart_ctrl_inst|tx_uart_inst|Selector2~0_combout\);

-- Location: LCCOMB_X47_Y14_N30
\uart_ctrl_inst|tx_uart_inst|Selector1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|Selector1~6_combout\ = (\uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP~q\ & (((\uart_ctrl_inst|tx_uart_inst|tx_fsm.LATCH_INPUTS~q\ & \uart_ctrl_inst|tx_uart_inst|Selector2~0_combout\)))) # 
-- (!\uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP~q\ & ((\uart_ctrl_inst|tx_uart_inst|Selector1~5_combout\) # ((\uart_ctrl_inst|tx_uart_inst|tx_fsm.LATCH_INPUTS~q\ & \uart_ctrl_inst|tx_uart_inst|Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP~q\,
	datab => \uart_ctrl_inst|tx_uart_inst|Selector1~5_combout\,
	datac => \uart_ctrl_inst|tx_uart_inst|tx_fsm.LATCH_INPUTS~q\,
	datad => \uart_ctrl_inst|tx_uart_inst|Selector2~0_combout\,
	combout => \uart_ctrl_inst|tx_uart_inst|Selector1~6_combout\);

-- Location: FF_X47_Y14_N31
\uart_ctrl_inst|tx_uart_inst|tx_fsm.LATCH_INPUTS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|tx_uart_inst|Selector1~6_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|tx_uart_inst|tx_fsm.LATCH_INPUTS~q\);

-- Location: LCCOMB_X47_Y14_N0
\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[8]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[8]~13_combout\ = (!\uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP~q\ & (!\uart_ctrl_inst|tx_uart_inst|tx_fsm.LATCH_INPUTS~q\ & \uart_ctrl_inst|tx_uart_inst|tx_fsm.IDLE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP~q\,
	datac => \uart_ctrl_inst|tx_uart_inst|tx_fsm.LATCH_INPUTS~q\,
	datad => \uart_ctrl_inst|tx_uart_inst|tx_fsm.IDLE~q\,
	combout => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[8]~13_combout\);

-- Location: LCCOMB_X50_Y15_N0
\uart_ctrl_inst|tx_uart_inst|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|LessThan0~1_combout\ = (!\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(3) & (((!\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(2)) # (!\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(1))) # 
-- (!\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(3),
	datab => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(0),
	datac => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(1),
	datad => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(2),
	combout => \uart_ctrl_inst|tx_uart_inst|LessThan0~1_combout\);

-- Location: LCCOMB_X50_Y15_N28
\uart_ctrl_inst|tx_uart_inst|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|LessThan0~2_combout\ = ((!\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(5) & ((\uart_ctrl_inst|tx_uart_inst|LessThan0~1_combout\) # (!\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(4))))) # 
-- (!\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(4),
	datab => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(6),
	datac => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(5),
	datad => \uart_ctrl_inst|tx_uart_inst|LessThan0~1_combout\,
	combout => \uart_ctrl_inst|tx_uart_inst|LessThan0~2_combout\);

-- Location: LCCOMB_X50_Y15_N16
\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[7]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[7]~28_combout\ = (\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(7) & (!\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[6]~27\)) # (!\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(7) & 
-- ((\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[6]~27\) # (GND)))
-- \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[7]~29\ = CARRY((!\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[6]~27\) # (!\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(7),
	datad => VCC,
	cin => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[6]~27\,
	combout => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[7]~28_combout\,
	cout => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[7]~29\);

-- Location: LCCOMB_X50_Y15_N18
\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[8]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[8]~30_combout\ = (\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(8) & (\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[7]~29\ $ (GND))) # (!\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(8) & 
-- (!\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[7]~29\ & VCC))
-- \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[8]~31\ = CARRY((\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(8) & !\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[7]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(8),
	datad => VCC,
	cin => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[7]~29\,
	combout => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[8]~30_combout\,
	cout => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[8]~31\);

-- Location: FF_X50_Y15_N19
\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[8]~30_combout\,
	clrn => \reset_n~input_o\,
	sclr => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[8]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(8));

-- Location: LCCOMB_X50_Y15_N20
\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[9]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[9]~32_combout\ = (\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(9) & (!\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[8]~31\)) # (!\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(9) & 
-- ((\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[8]~31\) # (GND)))
-- \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[9]~33\ = CARRY((!\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[8]~31\) # (!\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(9),
	datad => VCC,
	cin => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[8]~31\,
	combout => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[9]~32_combout\,
	cout => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[9]~33\);

-- Location: FF_X50_Y15_N21
\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[9]~32_combout\,
	clrn => \reset_n~input_o\,
	sclr => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[8]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(9));

-- Location: LCCOMB_X50_Y15_N22
\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[10]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[10]~34_combout\ = (\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(10) & (\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[9]~33\ $ (GND))) # (!\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(10) & 
-- (!\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[9]~33\ & VCC))
-- \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[10]~35\ = CARRY((\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(10) & !\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[9]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(10),
	datad => VCC,
	cin => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[9]~33\,
	combout => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[10]~34_combout\,
	cout => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[10]~35\);

-- Location: FF_X50_Y15_N23
\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[10]~34_combout\,
	clrn => \reset_n~input_o\,
	sclr => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[8]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(10));

-- Location: LCCOMB_X50_Y15_N24
\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[11]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[11]~36_combout\ = (\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(11) & (!\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[10]~35\)) # (!\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(11) & 
-- ((\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[10]~35\) # (GND)))
-- \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[11]~37\ = CARRY((!\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[10]~35\) # (!\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(11),
	datad => VCC,
	cin => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[10]~35\,
	combout => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[11]~36_combout\,
	cout => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[11]~37\);

-- Location: FF_X50_Y15_N25
\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[11]~36_combout\,
	clrn => \reset_n~input_o\,
	sclr => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[8]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(11));

-- Location: LCCOMB_X50_Y15_N26
\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[12]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[12]~39_combout\ = \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(12) $ (!\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[11]~37\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(12),
	cin => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[11]~37\,
	combout => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[12]~39_combout\);

-- Location: FF_X50_Y15_N27
\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[12]~39_combout\,
	clrn => \reset_n~input_o\,
	sclr => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[8]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(12));

-- Location: LCCOMB_X51_Y15_N28
\uart_ctrl_inst|tx_uart_inst|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|LessThan0~0_combout\ = ((!\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(11) & !\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(10))) # (!\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(11),
	datac => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(12),
	datad => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(10),
	combout => \uart_ctrl_inst|tx_uart_inst|LessThan0~0_combout\);

-- Location: LCCOMB_X50_Y15_N30
\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[8]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[8]~38_combout\ = ((!\uart_ctrl_inst|tx_uart_inst|LessThan0~0_combout\ & ((!\uart_ctrl_inst|tx_uart_inst|LessThan0~3_combout\) # (!\uart_ctrl_inst|tx_uart_inst|LessThan0~2_combout\)))) # 
-- (!\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[8]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[8]~13_combout\,
	datab => \uart_ctrl_inst|tx_uart_inst|LessThan0~2_combout\,
	datac => \uart_ctrl_inst|tx_uart_inst|LessThan0~3_combout\,
	datad => \uart_ctrl_inst|tx_uart_inst|LessThan0~0_combout\,
	combout => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[8]~38_combout\);

-- Location: FF_X50_Y15_N3
\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[0]~14_combout\,
	clrn => \reset_n~input_o\,
	sclr => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[8]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(0));

-- Location: LCCOMB_X50_Y15_N4
\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[1]~16_combout\ = (\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(1) & (!\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[0]~15\)) # (!\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(1) & 
-- ((\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[0]~15\) # (GND)))
-- \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[1]~17\ = CARRY((!\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[0]~15\) # (!\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(1),
	datad => VCC,
	cin => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[0]~15\,
	combout => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[1]~16_combout\,
	cout => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[1]~17\);

-- Location: FF_X50_Y15_N5
\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[1]~16_combout\,
	clrn => \reset_n~input_o\,
	sclr => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[8]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(1));

-- Location: LCCOMB_X50_Y15_N6
\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[2]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[2]~18_combout\ = (\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(2) & (\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[1]~17\ $ (GND))) # (!\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(2) & 
-- (!\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[1]~17\ & VCC))
-- \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[2]~19\ = CARRY((\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(2) & !\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[1]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(2),
	datad => VCC,
	cin => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[1]~17\,
	combout => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[2]~18_combout\,
	cout => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[2]~19\);

-- Location: FF_X50_Y15_N7
\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[2]~18_combout\,
	clrn => \reset_n~input_o\,
	sclr => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[8]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(2));

-- Location: LCCOMB_X50_Y15_N8
\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[3]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[3]~20_combout\ = (\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(3) & (!\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[2]~19\)) # (!\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(3) & 
-- ((\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[2]~19\) # (GND)))
-- \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[3]~21\ = CARRY((!\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[2]~19\) # (!\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(3),
	datad => VCC,
	cin => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[2]~19\,
	combout => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[3]~20_combout\,
	cout => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[3]~21\);

-- Location: FF_X50_Y15_N9
\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[3]~20_combout\,
	clrn => \reset_n~input_o\,
	sclr => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[8]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(3));

-- Location: LCCOMB_X50_Y15_N10
\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[4]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[4]~22_combout\ = (\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(4) & (\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[3]~21\ $ (GND))) # (!\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(4) & 
-- (!\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[3]~21\ & VCC))
-- \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[4]~23\ = CARRY((\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(4) & !\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[3]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(4),
	datad => VCC,
	cin => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[3]~21\,
	combout => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[4]~22_combout\,
	cout => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[4]~23\);

-- Location: FF_X50_Y15_N11
\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[4]~22_combout\,
	clrn => \reset_n~input_o\,
	sclr => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[8]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(4));

-- Location: LCCOMB_X50_Y15_N12
\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[5]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[5]~24_combout\ = (\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(5) & (!\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[4]~23\)) # (!\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(5) & 
-- ((\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[4]~23\) # (GND)))
-- \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[5]~25\ = CARRY((!\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[4]~23\) # (!\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(5),
	datad => VCC,
	cin => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[4]~23\,
	combout => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[5]~24_combout\,
	cout => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[5]~25\);

-- Location: FF_X50_Y15_N13
\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[5]~24_combout\,
	clrn => \reset_n~input_o\,
	sclr => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[8]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(5));

-- Location: LCCOMB_X50_Y15_N14
\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[6]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[6]~26_combout\ = (\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(6) & (\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[5]~25\ $ (GND))) # (!\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(6) & 
-- (!\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[5]~25\ & VCC))
-- \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[6]~27\ = CARRY((\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(6) & !\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[5]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(6),
	datad => VCC,
	cin => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[5]~25\,
	combout => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[6]~26_combout\,
	cout => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[6]~27\);

-- Location: FF_X50_Y15_N15
\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[6]~26_combout\,
	clrn => \reset_n~input_o\,
	sclr => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[8]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(6));

-- Location: FF_X50_Y15_N17
\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[7]~28_combout\,
	clrn => \reset_n~input_o\,
	sclr => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[8]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(7));

-- Location: LCCOMB_X51_Y15_N30
\uart_ctrl_inst|tx_uart_inst|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|LessThan0~3_combout\ = (!\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(7) & (!\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(9) & (!\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(8) & 
-- !\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(7),
	datab => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(9),
	datac => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(8),
	datad => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(11),
	combout => \uart_ctrl_inst|tx_uart_inst|LessThan0~3_combout\);

-- Location: LCCOMB_X46_Y14_N18
\uart_ctrl_inst|tx_uart_inst|tick_data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|tick_data~0_combout\ = (\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[8]~13_combout\ & (!\uart_ctrl_inst|tx_uart_inst|LessThan0~0_combout\ & ((!\uart_ctrl_inst|tx_uart_inst|LessThan0~2_combout\) # 
-- (!\uart_ctrl_inst|tx_uart_inst|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|tx_uart_inst|LessThan0~3_combout\,
	datab => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[8]~13_combout\,
	datac => \uart_ctrl_inst|tx_uart_inst|LessThan0~2_combout\,
	datad => \uart_ctrl_inst|tx_uart_inst|LessThan0~0_combout\,
	combout => \uart_ctrl_inst|tx_uart_inst|tick_data~0_combout\);

-- Location: FF_X46_Y14_N19
\uart_ctrl_inst|tx_uart_inst|tick_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|tx_uart_inst|tick_data~0_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|tx_uart_inst|tick_data~q\);

-- Location: LCCOMB_X47_Y14_N28
\uart_ctrl_inst|tx_uart_inst|cnt_stop_bit~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|cnt_stop_bit~0_combout\ = (\uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP_BIT_GEN~q\ & ((\uart_ctrl_inst|tx_uart_inst|tick_data~q\ $ (\uart_ctrl_inst|tx_uart_inst|cnt_stop_bit~q\)))) # 
-- (!\uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP_BIT_GEN~q\ & (!\uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP~q\ & ((\uart_ctrl_inst|tx_uart_inst|cnt_stop_bit~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP~q\,
	datab => \uart_ctrl_inst|tx_uart_inst|tick_data~q\,
	datac => \uart_ctrl_inst|tx_uart_inst|cnt_stop_bit~q\,
	datad => \uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP_BIT_GEN~q\,
	combout => \uart_ctrl_inst|tx_uart_inst|cnt_stop_bit~0_combout\);

-- Location: FF_X47_Y14_N29
\uart_ctrl_inst|tx_uart_inst|cnt_stop_bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|tx_uart_inst|cnt_stop_bit~0_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|tx_uart_inst|cnt_stop_bit~q\);

-- Location: LCCOMB_X47_Y14_N22
\uart_ctrl_inst|tx_uart_inst|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|Selector6~0_combout\ = (!\uart_ctrl_inst|tx_uart_inst|cnt_stop_bit~q\ & (\uart_ctrl_inst|tx_uart_inst|tick_data~q\ & (!\uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP~q\ & \uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP_BIT_GEN~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|tx_uart_inst|cnt_stop_bit~q\,
	datab => \uart_ctrl_inst|tx_uart_inst|tick_data~q\,
	datac => \uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP~q\,
	datad => \uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP_BIT_GEN~q\,
	combout => \uart_ctrl_inst|tx_uart_inst|Selector6~0_combout\);

-- Location: FF_X47_Y14_N23
\uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|tx_uart_inst|Selector6~0_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP~q\);

-- Location: LCCOMB_X47_Y14_N24
\uart_ctrl_inst|tx_uart_inst|Selector1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|Selector1~7_combout\ = (\uart_ctrl_inst|tx_uart_inst|tx_fsm.LATCH_INPUTS~q\ & \uart_ctrl_inst|tx_uart_inst|latch_done_s~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|tx_uart_inst|tx_fsm.LATCH_INPUTS~q\,
	datac => \uart_ctrl_inst|tx_uart_inst|latch_done_s~q\,
	combout => \uart_ctrl_inst|tx_uart_inst|Selector1~7_combout\);

-- Location: LCCOMB_X47_Y14_N18
\uart_ctrl_inst|tx_uart_inst|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|Selector2~1_combout\ = (\uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP~q\ & (((\uart_ctrl_inst|tx_uart_inst|tx_fsm.START_BIT_GEN~q\ & \uart_ctrl_inst|tx_uart_inst|Selector2~0_combout\)))) # 
-- (!\uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP~q\ & ((\uart_ctrl_inst|tx_uart_inst|Selector1~7_combout\) # ((\uart_ctrl_inst|tx_uart_inst|tx_fsm.START_BIT_GEN~q\ & \uart_ctrl_inst|tx_uart_inst|Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP~q\,
	datab => \uart_ctrl_inst|tx_uart_inst|Selector1~7_combout\,
	datac => \uart_ctrl_inst|tx_uart_inst|tx_fsm.START_BIT_GEN~q\,
	datad => \uart_ctrl_inst|tx_uart_inst|Selector2~0_combout\,
	combout => \uart_ctrl_inst|tx_uart_inst|Selector2~1_combout\);

-- Location: FF_X47_Y14_N19
\uart_ctrl_inst|tx_uart_inst|tx_fsm.START_BIT_GEN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|tx_uart_inst|Selector2~1_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|tx_uart_inst|tx_fsm.START_BIT_GEN~q\);

-- Location: LCCOMB_X45_Y14_N12
\uart_ctrl_inst|tx_uart_inst|tx_s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|tx_s~0_combout\ = (!\uart_ctrl_inst|tx_uart_inst|tx_s~q\ & ((\uart_ctrl_inst|tx_uart_inst|tx_fsm.LATCH_INPUTS~q\) # ((!\uart_ctrl_inst|tx_uart_inst|tx_fsm.START_BIT_GEN~q\ & 
-- \uart_ctrl_inst|tx_uart_inst|Selector5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|tx_uart_inst|tx_fsm.START_BIT_GEN~q\,
	datab => \uart_ctrl_inst|tx_uart_inst|tx_s~q\,
	datac => \uart_ctrl_inst|tx_uart_inst|Selector5~0_combout\,
	datad => \uart_ctrl_inst|tx_uart_inst|tx_fsm.LATCH_INPUTS~q\,
	combout => \uart_ctrl_inst|tx_uart_inst|tx_s~0_combout\);

-- Location: LCCOMB_X45_Y14_N4
\uart_ctrl_inst|tx_uart_inst|tx_s~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|tx_s~3_combout\ = (!\uart_ctrl_inst|tx_uart_inst|tx_fsm.START_BIT_GEN~q\ & (\uart_ctrl_inst|tx_uart_inst|tx_fsm.DATA_GEN~q\ & (!\uart_ctrl_inst|tx_uart_inst|cnt_data\(3) & 
-- !\uart_ctrl_inst|tx_uart_inst|tx_fsm.LATCH_INPUTS~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|tx_uart_inst|tx_fsm.START_BIT_GEN~q\,
	datab => \uart_ctrl_inst|tx_uart_inst|tx_fsm.DATA_GEN~q\,
	datac => \uart_ctrl_inst|tx_uart_inst|cnt_data\(3),
	datad => \uart_ctrl_inst|tx_uart_inst|tx_fsm.LATCH_INPUTS~q\,
	combout => \uart_ctrl_inst|tx_uart_inst|tx_s~3_combout\);

-- Location: LCCOMB_X44_Y15_N26
\uart_ctrl_inst|uart_mngt_inst|send_ko_resp_s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|send_ko_resp_s~0_combout\ = (\uart_ctrl_inst|uart_mngt_inst|cmd_byte_error_s~q\) # ((!\reg_ctrl_inst|reg_addr_ok_o_s~q\ & (!\uart_ctrl_inst|uart_mngt_inst|reg_data_valid_s~q\ & \reg_ctrl_inst|data_valid_o_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|reg_addr_ok_o_s~q\,
	datab => \uart_ctrl_inst|uart_mngt_inst|reg_data_valid_s~q\,
	datac => \uart_ctrl_inst|uart_mngt_inst|cmd_byte_error_s~q\,
	datad => \reg_ctrl_inst|data_valid_o_s~q\,
	combout => \uart_ctrl_inst|uart_mngt_inst|send_ko_resp_s~0_combout\);

-- Location: LCCOMB_X43_Y15_N28
\uart_ctrl_inst|uart_mngt_inst|send_ko_resp_s~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|send_ko_resp_s~1_combout\ = (\uart_ctrl_inst|uart_mngt_inst|send_ko_resp_s~q\) # ((!\uart_ctrl_inst|uart_mngt_inst|parse_done_s~q\ & (\uart_ctrl_inst|uart_mngt_inst|start_parse_s~q\ & 
-- \uart_ctrl_inst|uart_mngt_inst|send_ko_resp_s~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|uart_mngt_inst|parse_done_s~q\,
	datab => \uart_ctrl_inst|uart_mngt_inst|start_parse_s~q\,
	datac => \uart_ctrl_inst|uart_mngt_inst|send_ko_resp_s~q\,
	datad => \uart_ctrl_inst|uart_mngt_inst|send_ko_resp_s~0_combout\,
	combout => \uart_ctrl_inst|uart_mngt_inst|send_ko_resp_s~1_combout\);

-- Location: FF_X43_Y15_N29
\uart_ctrl_inst|uart_mngt_inst|send_ko_resp_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|uart_mngt_inst|send_ko_resp_s~1_combout\,
	clrn => \reset_n~input_o\,
	sclr => \uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|send_ko_resp_s~q\);

-- Location: LCCOMB_X47_Y15_N14
\uart_ctrl_inst|uart_mngt_inst|byte_array[0][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|byte_array[0][0]~feeder_combout\ = \uart_ctrl_inst|uart_mngt_inst|byte_array~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_ctrl_inst|uart_mngt_inst|byte_array~8_combout\,
	combout => \uart_ctrl_inst|uart_mngt_inst|byte_array[0][0]~feeder_combout\);

-- Location: FF_X47_Y15_N15
\uart_ctrl_inst|uart_mngt_inst|byte_array[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|uart_mngt_inst|byte_array[0][0]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \uart_ctrl_inst|uart_mngt_inst|byte_array[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|byte_array[0][0]~q\);

-- Location: LCCOMB_X43_Y15_N18
\uart_ctrl_inst|uart_mngt_inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|Equal0~0_combout\ = (!\uart_ctrl_inst|uart_mngt_inst|cnt_byte_rx\(1)) # (!\uart_ctrl_inst|uart_mngt_inst|cnt_byte_rx\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|uart_mngt_inst|cnt_byte_rx\(0),
	datac => \uart_ctrl_inst|uart_mngt_inst|cnt_byte_rx\(1),
	combout => \uart_ctrl_inst|uart_mngt_inst|Equal0~0_combout\);

-- Location: LCCOMB_X43_Y15_N22
\uart_ctrl_inst|uart_mngt_inst|rw_cmd_s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|rw_cmd_s~0_combout\ = (\uart_ctrl_inst|uart_mngt_inst|Equal0~0_combout\ & (((\uart_ctrl_inst|uart_mngt_inst|rw_cmd_s~q\)))) # (!\uart_ctrl_inst|uart_mngt_inst|Equal0~0_combout\ & 
-- ((\uart_ctrl_inst|uart_mngt_inst|Equal1~1_combout\ & (!\uart_ctrl_inst|uart_mngt_inst|byte_array[0][0]~q\)) # (!\uart_ctrl_inst|uart_mngt_inst|Equal1~1_combout\ & ((\uart_ctrl_inst|uart_mngt_inst|rw_cmd_s~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|uart_mngt_inst|byte_array[0][0]~q\,
	datab => \uart_ctrl_inst|uart_mngt_inst|Equal0~0_combout\,
	datac => \uart_ctrl_inst|uart_mngt_inst|rw_cmd_s~q\,
	datad => \uart_ctrl_inst|uart_mngt_inst|Equal1~1_combout\,
	combout => \uart_ctrl_inst|uart_mngt_inst|rw_cmd_s~0_combout\);

-- Location: FF_X43_Y15_N23
\uart_ctrl_inst|uart_mngt_inst|rw_cmd_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|uart_mngt_inst|rw_cmd_s~0_combout\,
	clrn => \reset_n~input_o\,
	sclr => \uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|rw_cmd_s~q\);

-- Location: LCCOMB_X48_Y15_N24
\uart_ctrl_inst|uart_mngt_inst|byte_array[2][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|byte_array[2][2]~feeder_combout\ = \uart_ctrl_inst|uart_mngt_inst|byte_array~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_ctrl_inst|uart_mngt_inst|byte_array~6_combout\,
	combout => \uart_ctrl_inst|uart_mngt_inst|byte_array[2][2]~feeder_combout\);

-- Location: LCCOMB_X47_Y15_N6
\uart_ctrl_inst|uart_mngt_inst|byte_array[2][4]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|byte_array[2][4]~10_combout\ = (\uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\) # ((\uart_ctrl_inst|uart_mngt_inst|cnt_byte_rx\(1) & (!\uart_ctrl_inst|uart_mngt_inst|cnt_byte_rx\(0) & 
-- \uart_ctrl_inst|uart_mngt_inst|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\,
	datab => \uart_ctrl_inst|uart_mngt_inst|cnt_byte_rx\(1),
	datac => \uart_ctrl_inst|uart_mngt_inst|cnt_byte_rx\(0),
	datad => \uart_ctrl_inst|uart_mngt_inst|Decoder0~0_combout\,
	combout => \uart_ctrl_inst|uart_mngt_inst|byte_array[2][4]~10_combout\);

-- Location: FF_X48_Y15_N25
\uart_ctrl_inst|uart_mngt_inst|byte_array[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|uart_mngt_inst|byte_array[2][2]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \uart_ctrl_inst|uart_mngt_inst|byte_array[2][4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|byte_array[2][2]~q\);

-- Location: LCCOMB_X48_Y15_N18
\uart_ctrl_inst|uart_mngt_inst|wdata_reg_s~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s~4_combout\ = (!\uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\ & \uart_ctrl_inst|uart_mngt_inst|byte_array[2][2]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\,
	datad => \uart_ctrl_inst|uart_mngt_inst|byte_array[2][2]~q\,
	combout => \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s~4_combout\);

-- Location: FF_X48_Y15_N19
\uart_ctrl_inst|uart_mngt_inst|wdata_reg_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s~4_combout\,
	clrn => \reset_n~input_o\,
	ena => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s\(2));

-- Location: LCCOMB_X47_Y16_N0
\reg_ctrl_inst|wdata_reg_i_s~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|wdata_reg_i_s~4_combout\ = (\reg_ctrl_inst|start_rw_i_r_edge~q\ & \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_ctrl_inst|start_rw_i_r_edge~q\,
	datad => \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s\(2),
	combout => \reg_ctrl_inst|wdata_reg_i_s~4_combout\);

-- Location: FF_X47_Y16_N1
\reg_ctrl_inst|wdata_reg_i_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \reg_ctrl_inst|wdata_reg_i_s~4_combout\,
	clrn => \reset_n~input_o\,
	ena => \reg_ctrl_inst|rcvd_addr_reg_i_s[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|wdata_reg_i_s\(2));

-- Location: LCCOMB_X43_Y16_N8
\reg_ctrl_inst|array_reg[4][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|array_reg[4][2]~feeder_combout\ = \reg_ctrl_inst|wdata_reg_i_s\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg_ctrl_inst|wdata_reg_i_s\(2),
	combout => \reg_ctrl_inst|array_reg[4][2]~feeder_combout\);

-- Location: LCCOMB_X45_Y16_N24
\reg_ctrl_inst|rw_reg_i_s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|rw_reg_i_s~0_combout\ = (\uart_ctrl_inst|uart_mngt_inst|rw_cmd_s~q\ & \reg_ctrl_inst|start_rw_i_r_edge~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_ctrl_inst|uart_mngt_inst|rw_cmd_s~q\,
	datad => \reg_ctrl_inst|start_rw_i_r_edge~q\,
	combout => \reg_ctrl_inst|rw_reg_i_s~0_combout\);

-- Location: FF_X45_Y16_N25
\reg_ctrl_inst|rw_reg_i_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \reg_ctrl_inst|rw_reg_i_s~0_combout\,
	clrn => \reset_n~input_o\,
	ena => \reg_ctrl_inst|rcvd_addr_reg_i_s[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|rw_reg_i_s~q\);

-- Location: LCCOMB_X45_Y16_N2
\reg_ctrl_inst|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|Decoder0~0_combout\ = (\reg_ctrl_inst|check_done_s~q\ & (!\reg_ctrl_inst|data_valid_o_s~q\ & (\reg_ctrl_inst|reg_addr_ok_o_s~q\ & !\reg_ctrl_inst|rw_reg_i_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|check_done_s~q\,
	datab => \reg_ctrl_inst|data_valid_o_s~q\,
	datac => \reg_ctrl_inst|reg_addr_ok_o_s~q\,
	datad => \reg_ctrl_inst|rw_reg_i_s~q\,
	combout => \reg_ctrl_inst|Decoder0~0_combout\);

-- Location: LCCOMB_X45_Y16_N10
\reg_ctrl_inst|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|Decoder0~1_combout\ = (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(1) & (\reg_ctrl_inst|rcvd_addr_reg_i_s\(2) & (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(0) & \reg_ctrl_inst|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|rcvd_addr_reg_i_s\(1),
	datab => \reg_ctrl_inst|rcvd_addr_reg_i_s\(2),
	datac => \reg_ctrl_inst|rcvd_addr_reg_i_s\(0),
	datad => \reg_ctrl_inst|Decoder0~0_combout\,
	combout => \reg_ctrl_inst|Decoder0~1_combout\);

-- Location: FF_X43_Y16_N9
\reg_ctrl_inst|array_reg[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \reg_ctrl_inst|array_reg[4][2]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \reg_ctrl_inst|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|array_reg[4][2]~q\);

-- Location: LCCOMB_X44_Y16_N30
\reg_ctrl_inst|array_reg[3][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|array_reg[3][2]~feeder_combout\ = \reg_ctrl_inst|wdata_reg_i_s\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_ctrl_inst|wdata_reg_i_s\(2),
	combout => \reg_ctrl_inst|array_reg[3][2]~feeder_combout\);

-- Location: LCCOMB_X45_Y16_N14
\reg_ctrl_inst|Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|Decoder0~5_combout\ = (\reg_ctrl_inst|rcvd_addr_reg_i_s\(1) & (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(2) & (\reg_ctrl_inst|rcvd_addr_reg_i_s\(0) & \reg_ctrl_inst|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|rcvd_addr_reg_i_s\(1),
	datab => \reg_ctrl_inst|rcvd_addr_reg_i_s\(2),
	datac => \reg_ctrl_inst|rcvd_addr_reg_i_s\(0),
	datad => \reg_ctrl_inst|Decoder0~0_combout\,
	combout => \reg_ctrl_inst|Decoder0~5_combout\);

-- Location: FF_X44_Y16_N31
\reg_ctrl_inst|array_reg[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \reg_ctrl_inst|array_reg[3][2]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \reg_ctrl_inst|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|array_reg[3][2]~q\);

-- Location: LCCOMB_X45_Y16_N30
\reg_ctrl_inst|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|Decoder0~3_combout\ = (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(1) & (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(2) & (\reg_ctrl_inst|rcvd_addr_reg_i_s\(0) & \reg_ctrl_inst|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|rcvd_addr_reg_i_s\(1),
	datab => \reg_ctrl_inst|rcvd_addr_reg_i_s\(2),
	datac => \reg_ctrl_inst|rcvd_addr_reg_i_s\(0),
	datad => \reg_ctrl_inst|Decoder0~0_combout\,
	combout => \reg_ctrl_inst|Decoder0~3_combout\);

-- Location: FF_X44_Y16_N29
\reg_ctrl_inst|array_reg[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	asdata => \reg_ctrl_inst|wdata_reg_i_s\(2),
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \reg_ctrl_inst|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|array_reg[1][2]~q\);

-- Location: LCCOMB_X46_Y16_N28
\reg_ctrl_inst|array_reg[0][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|array_reg[0][2]~feeder_combout\ = \reg_ctrl_inst|wdata_reg_i_s\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_ctrl_inst|wdata_reg_i_s\(2),
	combout => \reg_ctrl_inst|array_reg[0][2]~feeder_combout\);

-- Location: LCCOMB_X46_Y16_N2
\reg_ctrl_inst|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|Decoder0~4_combout\ = (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(0) & (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(2) & (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(1) & \reg_ctrl_inst|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|rcvd_addr_reg_i_s\(0),
	datab => \reg_ctrl_inst|rcvd_addr_reg_i_s\(2),
	datac => \reg_ctrl_inst|rcvd_addr_reg_i_s\(1),
	datad => \reg_ctrl_inst|Decoder0~0_combout\,
	combout => \reg_ctrl_inst|Decoder0~4_combout\);

-- Location: FF_X46_Y16_N29
\reg_ctrl_inst|array_reg[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \reg_ctrl_inst|array_reg[0][2]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \reg_ctrl_inst|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|array_reg[0][2]~q\);

-- Location: LCCOMB_X46_Y16_N4
\reg_ctrl_inst|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|Decoder0~2_combout\ = (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(0) & (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(2) & (\reg_ctrl_inst|rcvd_addr_reg_i_s\(1) & \reg_ctrl_inst|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|rcvd_addr_reg_i_s\(0),
	datab => \reg_ctrl_inst|rcvd_addr_reg_i_s\(2),
	datac => \reg_ctrl_inst|rcvd_addr_reg_i_s\(1),
	datad => \reg_ctrl_inst|Decoder0~0_combout\,
	combout => \reg_ctrl_inst|Decoder0~2_combout\);

-- Location: FF_X46_Y16_N27
\reg_ctrl_inst|array_reg[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	asdata => \reg_ctrl_inst|wdata_reg_i_s\(2),
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \reg_ctrl_inst|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|array_reg[2][2]~q\);

-- Location: LCCOMB_X46_Y16_N26
\reg_ctrl_inst|rdata_reg_o_s~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|rdata_reg_o_s~13_combout\ = (\reg_ctrl_inst|rcvd_addr_reg_i_s\(0) & (((\reg_ctrl_inst|rcvd_addr_reg_i_s\(1))))) # (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(0) & ((\reg_ctrl_inst|rcvd_addr_reg_i_s\(1) & ((\reg_ctrl_inst|array_reg[2][2]~q\))) # 
-- (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(1) & (\reg_ctrl_inst|array_reg[0][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|rcvd_addr_reg_i_s\(0),
	datab => \reg_ctrl_inst|array_reg[0][2]~q\,
	datac => \reg_ctrl_inst|array_reg[2][2]~q\,
	datad => \reg_ctrl_inst|rcvd_addr_reg_i_s\(1),
	combout => \reg_ctrl_inst|rdata_reg_o_s~13_combout\);

-- Location: LCCOMB_X44_Y16_N28
\reg_ctrl_inst|rdata_reg_o_s~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|rdata_reg_o_s~14_combout\ = (\reg_ctrl_inst|rcvd_addr_reg_i_s\(0) & ((\reg_ctrl_inst|rdata_reg_o_s~13_combout\ & (\reg_ctrl_inst|array_reg[3][2]~q\)) # (!\reg_ctrl_inst|rdata_reg_o_s~13_combout\ & ((\reg_ctrl_inst|array_reg[1][2]~q\))))) # 
-- (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(0) & (((\reg_ctrl_inst|rdata_reg_o_s~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|array_reg[3][2]~q\,
	datab => \reg_ctrl_inst|rcvd_addr_reg_i_s\(0),
	datac => \reg_ctrl_inst|array_reg[1][2]~q\,
	datad => \reg_ctrl_inst|rdata_reg_o_s~13_combout\,
	combout => \reg_ctrl_inst|rdata_reg_o_s~14_combout\);

-- Location: LCCOMB_X43_Y16_N28
\reg_ctrl_inst|rdata_reg_o_s~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|rdata_reg_o_s~15_combout\ = (\reg_ctrl_inst|rcvd_addr_reg_i_s\(2) & (\reg_ctrl_inst|array_reg[4][2]~q\)) # (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(2) & ((\reg_ctrl_inst|rdata_reg_o_s~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|rcvd_addr_reg_i_s\(2),
	datac => \reg_ctrl_inst|array_reg[4][2]~q\,
	datad => \reg_ctrl_inst|rdata_reg_o_s~14_combout\,
	combout => \reg_ctrl_inst|rdata_reg_o_s~15_combout\);

-- Location: LCCOMB_X45_Y16_N16
\reg_ctrl_inst|rdata_reg_o_s[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|rdata_reg_o_s[5]~3_combout\ = ((\reg_ctrl_inst|reg_addr_ok_o_s~q\ & (!\reg_ctrl_inst|data_valid_o_s~q\ & \reg_ctrl_inst|rw_reg_i_s~q\))) # (!\reg_ctrl_inst|check_done_s~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|reg_addr_ok_o_s~q\,
	datab => \reg_ctrl_inst|data_valid_o_s~q\,
	datac => \reg_ctrl_inst|check_done_s~q\,
	datad => \reg_ctrl_inst|rw_reg_i_s~q\,
	combout => \reg_ctrl_inst|rdata_reg_o_s[5]~3_combout\);

-- Location: FF_X43_Y16_N29
\reg_ctrl_inst|rdata_reg_o_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \reg_ctrl_inst|rdata_reg_o_s~15_combout\,
	clrn => \reset_n~input_o\,
	sclr => \reg_ctrl_inst|ALT_INV_check_done_s~q\,
	ena => \reg_ctrl_inst|rdata_reg_o_s[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|rdata_reg_o_s\(2));

-- Location: LCCOMB_X43_Y14_N0
\uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[2]~feeder_combout\ = \reg_ctrl_inst|rdata_reg_o_s\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg_ctrl_inst|rdata_reg_o_s\(2),
	combout => \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[2]~feeder_combout\);

-- Location: LCCOMB_X43_Y14_N20
\uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[7]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[7]~4_combout\ = (\reg_ctrl_inst|data_valid_o_s~q\ & (\reg_ctrl_inst|reg_addr_ok_o_s~q\ & (!\uart_ctrl_inst|uart_mngt_inst|reg_data_valid_s~q\ & \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[7]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|data_valid_o_s~q\,
	datab => \reg_ctrl_inst|reg_addr_ok_o_s~q\,
	datac => \uart_ctrl_inst|uart_mngt_inst|reg_data_valid_s~q\,
	datad => \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[7]~3_combout\,
	combout => \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[7]~4_combout\);

-- Location: FF_X43_Y14_N1
\uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[2]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s\(2));

-- Location: LCCOMB_X43_Y15_N6
\uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~5_combout\ = (\uart_ctrl_inst|uart_mngt_inst|rw_cmd_s~q\ & ((\uart_ctrl_inst|uart_mngt_inst|send_ko_resp_s~q\ & ((\uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx\(0)))) # 
-- (!\uart_ctrl_inst|uart_mngt_inst|send_ko_resp_s~q\ & (\uart_ctrl_inst|uart_mngt_inst|rdata_reg_s\(2))))) # (!\uart_ctrl_inst|uart_mngt_inst|rw_cmd_s~q\ & (((\uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|uart_mngt_inst|rw_cmd_s~q\,
	datab => \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s\(2),
	datac => \uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx\(0),
	datad => \uart_ctrl_inst|uart_mngt_inst|send_ko_resp_s~q\,
	combout => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~5_combout\);

-- Location: LCCOMB_X43_Y15_N4
\uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~6_combout\ = (\uart_ctrl_inst|uart_mngt_inst|p_tx_mng~0_combout\ & ((\uart_ctrl_inst|uart_mngt_inst|send_ko_resp_s~q\) # ((\uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx\(1) & 
-- \uart_ctrl_inst|uart_mngt_inst|rw_cmd_s~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx\(1),
	datab => \uart_ctrl_inst|uart_mngt_inst|send_ko_resp_s~q\,
	datac => \uart_ctrl_inst|uart_mngt_inst|rw_cmd_s~q\,
	datad => \uart_ctrl_inst|uart_mngt_inst|p_tx_mng~0_combout\,
	combout => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~6_combout\);

-- Location: LCCOMB_X43_Y15_N26
\uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~7_combout\ = (\uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~5_combout\ & ((\uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~6_combout\) # ((\uart_ctrl_inst|uart_mngt_inst|tx_data_o_s\(2) & 
-- !\uart_ctrl_inst|uart_mngt_inst|start_tx_o_s~0_combout\)))) # (!\uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~5_combout\ & (\uart_ctrl_inst|uart_mngt_inst|tx_data_o_s\(2) & ((!\uart_ctrl_inst|uart_mngt_inst|start_tx_o_s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~5_combout\,
	datab => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s\(2),
	datac => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~6_combout\,
	datad => \uart_ctrl_inst|uart_mngt_inst|start_tx_o_s~0_combout\,
	combout => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~7_combout\);

-- Location: LCCOMB_X43_Y15_N8
\uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~9_combout\ = (\uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~7_combout\) # ((\uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~8_combout\ & !\uart_ctrl_inst|uart_mngt_inst|send_ko_resp_s~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~8_combout\,
	datab => \uart_ctrl_inst|uart_mngt_inst|send_ko_resp_s~q\,
	datac => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~7_combout\,
	combout => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~9_combout\);

-- Location: FF_X43_Y15_N9
\uart_ctrl_inst|uart_mngt_inst|tx_data_o_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~9_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s\(2));

-- Location: LCCOMB_X45_Y14_N18
\uart_ctrl_inst|tx_uart_inst|tx_data_s[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|tx_data_s[2]~feeder_combout\ = \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s\(2),
	combout => \uart_ctrl_inst|tx_uart_inst|tx_data_s[2]~feeder_combout\);

-- Location: FF_X45_Y14_N19
\uart_ctrl_inst|tx_uart_inst|tx_data_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|tx_uart_inst|tx_data_s[2]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \uart_ctrl_inst|tx_uart_inst|tx_fsm.LATCH_INPUTS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|tx_uart_inst|tx_data_s\(2));

-- Location: LCCOMB_X44_Y14_N18
\uart_ctrl_inst|uart_mngt_inst|tx_data_o_s[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s[0]~0_combout\ = (!\uart_ctrl_inst|uart_mngt_inst|send_ko_resp_s~q\ & \uart_ctrl_inst|uart_mngt_inst|rw_cmd_s~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_ctrl_inst|uart_mngt_inst|send_ko_resp_s~q\,
	datad => \uart_ctrl_inst|uart_mngt_inst|rw_cmd_s~q\,
	combout => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s[0]~0_combout\);

-- Location: LCCOMB_X48_Y15_N30
\uart_ctrl_inst|uart_mngt_inst|byte_array[2][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|byte_array[2][3]~feeder_combout\ = \uart_ctrl_inst|uart_mngt_inst|byte_array~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_ctrl_inst|uart_mngt_inst|byte_array~5_combout\,
	combout => \uart_ctrl_inst|uart_mngt_inst|byte_array[2][3]~feeder_combout\);

-- Location: FF_X48_Y15_N31
\uart_ctrl_inst|uart_mngt_inst|byte_array[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|uart_mngt_inst|byte_array[2][3]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \uart_ctrl_inst|uart_mngt_inst|byte_array[2][4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|byte_array[2][3]~q\);

-- Location: LCCOMB_X48_Y15_N16
\uart_ctrl_inst|uart_mngt_inst|wdata_reg_s~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s~7_combout\ = (\uart_ctrl_inst|uart_mngt_inst|byte_array[2][3]~q\ & !\uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_ctrl_inst|uart_mngt_inst|byte_array[2][3]~q\,
	datad => \uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\,
	combout => \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s~7_combout\);

-- Location: FF_X48_Y15_N17
\uart_ctrl_inst|uart_mngt_inst|wdata_reg_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s~7_combout\,
	clrn => \reset_n~input_o\,
	ena => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s\(3));

-- Location: LCCOMB_X47_Y16_N26
\reg_ctrl_inst|wdata_reg_i_s~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|wdata_reg_i_s~7_combout\ = (\reg_ctrl_inst|start_rw_i_r_edge~q\ & \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_ctrl_inst|start_rw_i_r_edge~q\,
	datad => \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s\(3),
	combout => \reg_ctrl_inst|wdata_reg_i_s~7_combout\);

-- Location: FF_X47_Y16_N27
\reg_ctrl_inst|wdata_reg_i_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \reg_ctrl_inst|wdata_reg_i_s~7_combout\,
	clrn => \reset_n~input_o\,
	ena => \reg_ctrl_inst|rcvd_addr_reg_i_s[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|wdata_reg_i_s\(3));

-- Location: LCCOMB_X43_Y16_N26
\reg_ctrl_inst|array_reg[4][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|array_reg[4][3]~feeder_combout\ = \reg_ctrl_inst|wdata_reg_i_s\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg_ctrl_inst|wdata_reg_i_s\(3),
	combout => \reg_ctrl_inst|array_reg[4][3]~feeder_combout\);

-- Location: FF_X43_Y16_N27
\reg_ctrl_inst|array_reg[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \reg_ctrl_inst|array_reg[4][3]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \reg_ctrl_inst|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|array_reg[4][3]~q\);

-- Location: LCCOMB_X44_Y16_N14
\reg_ctrl_inst|array_reg[3][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|array_reg[3][3]~feeder_combout\ = \reg_ctrl_inst|wdata_reg_i_s\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg_ctrl_inst|wdata_reg_i_s\(3),
	combout => \reg_ctrl_inst|array_reg[3][3]~feeder_combout\);

-- Location: FF_X44_Y16_N15
\reg_ctrl_inst|array_reg[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \reg_ctrl_inst|array_reg[3][3]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \reg_ctrl_inst|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|array_reg[3][3]~q\);

-- Location: FF_X47_Y16_N19
\reg_ctrl_inst|array_reg[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	asdata => \reg_ctrl_inst|wdata_reg_i_s\(3),
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \reg_ctrl_inst|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|array_reg[2][3]~q\);

-- Location: FF_X46_Y16_N31
\reg_ctrl_inst|array_reg[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	asdata => \reg_ctrl_inst|wdata_reg_i_s\(3),
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \reg_ctrl_inst|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|array_reg[0][3]~q\);

-- Location: LCCOMB_X44_Y16_N20
\reg_ctrl_inst|array_reg[1][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|array_reg[1][3]~feeder_combout\ = \reg_ctrl_inst|wdata_reg_i_s\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg_ctrl_inst|wdata_reg_i_s\(3),
	combout => \reg_ctrl_inst|array_reg[1][3]~feeder_combout\);

-- Location: FF_X44_Y16_N21
\reg_ctrl_inst|array_reg[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \reg_ctrl_inst|array_reg[1][3]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \reg_ctrl_inst|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|array_reg[1][3]~q\);

-- Location: LCCOMB_X46_Y16_N30
\reg_ctrl_inst|rdata_reg_o_s~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|rdata_reg_o_s~22_combout\ = (\reg_ctrl_inst|rcvd_addr_reg_i_s\(0) & ((\reg_ctrl_inst|rcvd_addr_reg_i_s\(1)) # ((\reg_ctrl_inst|array_reg[1][3]~q\)))) # (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(0) & (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(1) & 
-- (\reg_ctrl_inst|array_reg[0][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|rcvd_addr_reg_i_s\(0),
	datab => \reg_ctrl_inst|rcvd_addr_reg_i_s\(1),
	datac => \reg_ctrl_inst|array_reg[0][3]~q\,
	datad => \reg_ctrl_inst|array_reg[1][3]~q\,
	combout => \reg_ctrl_inst|rdata_reg_o_s~22_combout\);

-- Location: LCCOMB_X47_Y16_N18
\reg_ctrl_inst|rdata_reg_o_s~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|rdata_reg_o_s~23_combout\ = (\reg_ctrl_inst|rcvd_addr_reg_i_s\(1) & ((\reg_ctrl_inst|rdata_reg_o_s~22_combout\ & (\reg_ctrl_inst|array_reg[3][3]~q\)) # (!\reg_ctrl_inst|rdata_reg_o_s~22_combout\ & ((\reg_ctrl_inst|array_reg[2][3]~q\))))) # 
-- (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(1) & (((\reg_ctrl_inst|rdata_reg_o_s~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|array_reg[3][3]~q\,
	datab => \reg_ctrl_inst|rcvd_addr_reg_i_s\(1),
	datac => \reg_ctrl_inst|array_reg[2][3]~q\,
	datad => \reg_ctrl_inst|rdata_reg_o_s~22_combout\,
	combout => \reg_ctrl_inst|rdata_reg_o_s~23_combout\);

-- Location: LCCOMB_X43_Y16_N6
\reg_ctrl_inst|rdata_reg_o_s~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|rdata_reg_o_s~24_combout\ = (\reg_ctrl_inst|rcvd_addr_reg_i_s\(2) & (\reg_ctrl_inst|array_reg[4][3]~q\)) # (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(2) & ((\reg_ctrl_inst|rdata_reg_o_s~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|rcvd_addr_reg_i_s\(2),
	datac => \reg_ctrl_inst|array_reg[4][3]~q\,
	datad => \reg_ctrl_inst|rdata_reg_o_s~23_combout\,
	combout => \reg_ctrl_inst|rdata_reg_o_s~24_combout\);

-- Location: FF_X43_Y16_N7
\reg_ctrl_inst|rdata_reg_o_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \reg_ctrl_inst|rdata_reg_o_s~24_combout\,
	clrn => \reset_n~input_o\,
	sclr => \reg_ctrl_inst|ALT_INV_check_done_s~q\,
	ena => \reg_ctrl_inst|rdata_reg_o_s[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|rdata_reg_o_s\(3));

-- Location: LCCOMB_X43_Y14_N14
\uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[3]~feeder_combout\ = \reg_ctrl_inst|rdata_reg_o_s\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_ctrl_inst|rdata_reg_o_s\(3),
	combout => \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[3]~feeder_combout\);

-- Location: FF_X43_Y14_N15
\uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[3]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s\(3));

-- Location: LCCOMB_X44_Y14_N16
\uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~12_combout\ = (\uart_ctrl_inst|uart_mngt_inst|p_tx_mng~0_combout\ & (((\uart_ctrl_inst|uart_mngt_inst|tx_data_o_s[0]~0_combout\ & \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s\(3))) # 
-- (!\uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx\(1),
	datab => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s[0]~0_combout\,
	datac => \uart_ctrl_inst|uart_mngt_inst|p_tx_mng~0_combout\,
	datad => \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s\(3),
	combout => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~12_combout\);

-- Location: FF_X44_Y14_N17
\uart_ctrl_inst|uart_mngt_inst|tx_data_o_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~12_combout\,
	clrn => \reset_n~input_o\,
	ena => \uart_ctrl_inst|uart_mngt_inst|start_tx_o_s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s\(3));

-- Location: FF_X45_Y14_N9
\uart_ctrl_inst|tx_uart_inst|tx_data_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	asdata => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s\(3),
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \uart_ctrl_inst|tx_uart_inst|tx_fsm.LATCH_INPUTS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|tx_uart_inst|tx_data_s\(3));

-- Location: FF_X48_Y15_N3
\uart_ctrl_inst|uart_mngt_inst|byte_array[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|uart_mngt_inst|byte_array~7_combout\,
	clrn => \reset_n~input_o\,
	ena => \uart_ctrl_inst|uart_mngt_inst|byte_array[2][4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|byte_array[2][1]~q\);

-- Location: LCCOMB_X48_Y15_N8
\uart_ctrl_inst|uart_mngt_inst|wdata_reg_s~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s~5_combout\ = (!\uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\ & \uart_ctrl_inst|uart_mngt_inst|byte_array[2][1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\,
	datad => \uart_ctrl_inst|uart_mngt_inst|byte_array[2][1]~q\,
	combout => \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s~5_combout\);

-- Location: FF_X48_Y15_N9
\uart_ctrl_inst|uart_mngt_inst|wdata_reg_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s~5_combout\,
	clrn => \reset_n~input_o\,
	ena => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s\(1));

-- Location: LCCOMB_X47_Y16_N30
\reg_ctrl_inst|wdata_reg_i_s~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|wdata_reg_i_s~5_combout\ = (\uart_ctrl_inst|uart_mngt_inst|wdata_reg_s\(1) & \reg_ctrl_inst|start_rw_i_r_edge~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s\(1),
	datac => \reg_ctrl_inst|start_rw_i_r_edge~q\,
	combout => \reg_ctrl_inst|wdata_reg_i_s~5_combout\);

-- Location: FF_X47_Y16_N31
\reg_ctrl_inst|wdata_reg_i_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \reg_ctrl_inst|wdata_reg_i_s~5_combout\,
	clrn => \reset_n~input_o\,
	ena => \reg_ctrl_inst|rcvd_addr_reg_i_s[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|wdata_reg_i_s\(1));

-- Location: LCCOMB_X43_Y16_N22
\reg_ctrl_inst|array_reg[4][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|array_reg[4][1]~feeder_combout\ = \reg_ctrl_inst|wdata_reg_i_s\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg_ctrl_inst|wdata_reg_i_s\(1),
	combout => \reg_ctrl_inst|array_reg[4][1]~feeder_combout\);

-- Location: FF_X43_Y16_N23
\reg_ctrl_inst|array_reg[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \reg_ctrl_inst|array_reg[4][1]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \reg_ctrl_inst|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|array_reg[4][1]~q\);

-- Location: LCCOMB_X44_Y16_N18
\reg_ctrl_inst|array_reg[3][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|array_reg[3][1]~feeder_combout\ = \reg_ctrl_inst|wdata_reg_i_s\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg_ctrl_inst|wdata_reg_i_s\(1),
	combout => \reg_ctrl_inst|array_reg[3][1]~feeder_combout\);

-- Location: FF_X44_Y16_N19
\reg_ctrl_inst|array_reg[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \reg_ctrl_inst|array_reg[3][1]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \reg_ctrl_inst|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|array_reg[3][1]~q\);

-- Location: FF_X46_Y16_N23
\reg_ctrl_inst|array_reg[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	asdata => \reg_ctrl_inst|wdata_reg_i_s\(1),
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \reg_ctrl_inst|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|array_reg[2][1]~q\);

-- Location: FF_X46_Y16_N1
\reg_ctrl_inst|array_reg[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	asdata => \reg_ctrl_inst|wdata_reg_i_s\(1),
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \reg_ctrl_inst|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|array_reg[0][1]~q\);

-- Location: LCCOMB_X44_Y16_N12
\reg_ctrl_inst|array_reg[1][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|array_reg[1][1]~feeder_combout\ = \reg_ctrl_inst|wdata_reg_i_s\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg_ctrl_inst|wdata_reg_i_s\(1),
	combout => \reg_ctrl_inst|array_reg[1][1]~feeder_combout\);

-- Location: FF_X44_Y16_N13
\reg_ctrl_inst|array_reg[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \reg_ctrl_inst|array_reg[1][1]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \reg_ctrl_inst|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|array_reg[1][1]~q\);

-- Location: LCCOMB_X46_Y16_N0
\reg_ctrl_inst|rdata_reg_o_s~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|rdata_reg_o_s~16_combout\ = (\reg_ctrl_inst|rcvd_addr_reg_i_s\(0) & ((\reg_ctrl_inst|rcvd_addr_reg_i_s\(1)) # ((\reg_ctrl_inst|array_reg[1][1]~q\)))) # (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(0) & (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(1) & 
-- (\reg_ctrl_inst|array_reg[0][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|rcvd_addr_reg_i_s\(0),
	datab => \reg_ctrl_inst|rcvd_addr_reg_i_s\(1),
	datac => \reg_ctrl_inst|array_reg[0][1]~q\,
	datad => \reg_ctrl_inst|array_reg[1][1]~q\,
	combout => \reg_ctrl_inst|rdata_reg_o_s~16_combout\);

-- Location: LCCOMB_X46_Y16_N22
\reg_ctrl_inst|rdata_reg_o_s~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|rdata_reg_o_s~17_combout\ = (\reg_ctrl_inst|rcvd_addr_reg_i_s\(1) & ((\reg_ctrl_inst|rdata_reg_o_s~16_combout\ & (\reg_ctrl_inst|array_reg[3][1]~q\)) # (!\reg_ctrl_inst|rdata_reg_o_s~16_combout\ & ((\reg_ctrl_inst|array_reg[2][1]~q\))))) # 
-- (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(1) & (((\reg_ctrl_inst|rdata_reg_o_s~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|array_reg[3][1]~q\,
	datab => \reg_ctrl_inst|rcvd_addr_reg_i_s\(1),
	datac => \reg_ctrl_inst|array_reg[2][1]~q\,
	datad => \reg_ctrl_inst|rdata_reg_o_s~16_combout\,
	combout => \reg_ctrl_inst|rdata_reg_o_s~17_combout\);

-- Location: LCCOMB_X43_Y16_N14
\reg_ctrl_inst|rdata_reg_o_s~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|rdata_reg_o_s~18_combout\ = (\reg_ctrl_inst|rcvd_addr_reg_i_s\(2) & (\reg_ctrl_inst|array_reg[4][1]~q\)) # (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(2) & ((\reg_ctrl_inst|rdata_reg_o_s~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|rcvd_addr_reg_i_s\(2),
	datac => \reg_ctrl_inst|array_reg[4][1]~q\,
	datad => \reg_ctrl_inst|rdata_reg_o_s~17_combout\,
	combout => \reg_ctrl_inst|rdata_reg_o_s~18_combout\);

-- Location: FF_X43_Y16_N15
\reg_ctrl_inst|rdata_reg_o_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \reg_ctrl_inst|rdata_reg_o_s~18_combout\,
	clrn => \reset_n~input_o\,
	sclr => \reg_ctrl_inst|ALT_INV_check_done_s~q\,
	ena => \reg_ctrl_inst|rdata_reg_o_s[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|rdata_reg_o_s\(1));

-- Location: LCCOMB_X43_Y14_N10
\uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[1]~feeder_combout\ = \reg_ctrl_inst|rdata_reg_o_s\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg_ctrl_inst|rdata_reg_o_s\(1),
	combout => \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[1]~feeder_combout\);

-- Location: FF_X43_Y14_N11
\uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[1]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s\(1));

-- Location: LCCOMB_X44_Y14_N12
\uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~10_combout\ = (\uart_ctrl_inst|uart_mngt_inst|p_tx_mng~0_combout\ & (((\uart_ctrl_inst|uart_mngt_inst|tx_data_o_s[0]~0_combout\ & \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s\(1))) # 
-- (!\uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx\(1),
	datab => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s[0]~0_combout\,
	datac => \uart_ctrl_inst|uart_mngt_inst|p_tx_mng~0_combout\,
	datad => \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s\(1),
	combout => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~10_combout\);

-- Location: FF_X44_Y14_N13
\uart_ctrl_inst|uart_mngt_inst|tx_data_o_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~10_combout\,
	clrn => \reset_n~input_o\,
	ena => \uart_ctrl_inst|uart_mngt_inst|start_tx_o_s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s\(1));

-- Location: LCCOMB_X45_Y14_N20
\uart_ctrl_inst|tx_uart_inst|tx_data_s[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|tx_data_s[1]~feeder_combout\ = \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s\(1),
	combout => \uart_ctrl_inst|tx_uart_inst|tx_data_s[1]~feeder_combout\);

-- Location: FF_X45_Y14_N21
\uart_ctrl_inst|tx_uart_inst|tx_data_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|tx_uart_inst|tx_data_s[1]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \uart_ctrl_inst|tx_uart_inst|tx_fsm.LATCH_INPUTS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|tx_uart_inst|tx_data_s\(1));

-- Location: FF_X48_Y15_N29
\uart_ctrl_inst|uart_mngt_inst|byte_array[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|uart_mngt_inst|byte_array~8_combout\,
	clrn => \reset_n~input_o\,
	ena => \uart_ctrl_inst|uart_mngt_inst|byte_array[2][4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|byte_array[2][0]~q\);

-- Location: LCCOMB_X48_Y15_N10
\uart_ctrl_inst|uart_mngt_inst|wdata_reg_s~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s~6_combout\ = (!\uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\ & \uart_ctrl_inst|uart_mngt_inst|byte_array[2][0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\,
	datad => \uart_ctrl_inst|uart_mngt_inst|byte_array[2][0]~q\,
	combout => \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s~6_combout\);

-- Location: FF_X48_Y15_N11
\uart_ctrl_inst|uart_mngt_inst|wdata_reg_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s~6_combout\,
	clrn => \reset_n~input_o\,
	ena => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s\(0));

-- Location: LCCOMB_X47_Y16_N28
\reg_ctrl_inst|wdata_reg_i_s~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|wdata_reg_i_s~6_combout\ = (\uart_ctrl_inst|uart_mngt_inst|wdata_reg_s\(0) & \reg_ctrl_inst|start_rw_i_r_edge~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s\(0),
	datac => \reg_ctrl_inst|start_rw_i_r_edge~q\,
	combout => \reg_ctrl_inst|wdata_reg_i_s~6_combout\);

-- Location: FF_X47_Y16_N29
\reg_ctrl_inst|wdata_reg_i_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \reg_ctrl_inst|wdata_reg_i_s~6_combout\,
	clrn => \reset_n~input_o\,
	ena => \reg_ctrl_inst|rcvd_addr_reg_i_s[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|wdata_reg_i_s\(0));

-- Location: LCCOMB_X43_Y16_N4
\reg_ctrl_inst|array_reg[4][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|array_reg[4][0]~feeder_combout\ = \reg_ctrl_inst|wdata_reg_i_s\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_ctrl_inst|wdata_reg_i_s\(0),
	combout => \reg_ctrl_inst|array_reg[4][0]~feeder_combout\);

-- Location: FF_X43_Y16_N5
\reg_ctrl_inst|array_reg[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \reg_ctrl_inst|array_reg[4][0]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \reg_ctrl_inst|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|array_reg[4][0]~q\);

-- Location: LCCOMB_X44_Y16_N22
\reg_ctrl_inst|array_reg[3][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|array_reg[3][0]~feeder_combout\ = \reg_ctrl_inst|wdata_reg_i_s\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_ctrl_inst|wdata_reg_i_s\(0),
	combout => \reg_ctrl_inst|array_reg[3][0]~feeder_combout\);

-- Location: FF_X44_Y16_N23
\reg_ctrl_inst|array_reg[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \reg_ctrl_inst|array_reg[3][0]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \reg_ctrl_inst|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|array_reg[3][0]~q\);

-- Location: FF_X44_Y16_N17
\reg_ctrl_inst|array_reg[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	asdata => \reg_ctrl_inst|wdata_reg_i_s\(0),
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \reg_ctrl_inst|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|array_reg[1][0]~q\);

-- Location: LCCOMB_X46_Y16_N14
\reg_ctrl_inst|array_reg[2][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|array_reg[2][0]~feeder_combout\ = \reg_ctrl_inst|wdata_reg_i_s\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_ctrl_inst|wdata_reg_i_s\(0),
	combout => \reg_ctrl_inst|array_reg[2][0]~feeder_combout\);

-- Location: FF_X46_Y16_N15
\reg_ctrl_inst|array_reg[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \reg_ctrl_inst|array_reg[2][0]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \reg_ctrl_inst|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|array_reg[2][0]~q\);

-- Location: FF_X46_Y16_N17
\reg_ctrl_inst|array_reg[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	asdata => \reg_ctrl_inst|wdata_reg_i_s\(0),
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \reg_ctrl_inst|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|array_reg[0][0]~q\);

-- Location: LCCOMB_X46_Y16_N16
\reg_ctrl_inst|rdata_reg_o_s~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|rdata_reg_o_s~19_combout\ = (\reg_ctrl_inst|rcvd_addr_reg_i_s\(0) & (((\reg_ctrl_inst|rcvd_addr_reg_i_s\(1))))) # (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(0) & ((\reg_ctrl_inst|rcvd_addr_reg_i_s\(1) & (\reg_ctrl_inst|array_reg[2][0]~q\)) # 
-- (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(1) & ((\reg_ctrl_inst|array_reg[0][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|rcvd_addr_reg_i_s\(0),
	datab => \reg_ctrl_inst|array_reg[2][0]~q\,
	datac => \reg_ctrl_inst|array_reg[0][0]~q\,
	datad => \reg_ctrl_inst|rcvd_addr_reg_i_s\(1),
	combout => \reg_ctrl_inst|rdata_reg_o_s~19_combout\);

-- Location: LCCOMB_X44_Y16_N16
\reg_ctrl_inst|rdata_reg_o_s~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|rdata_reg_o_s~20_combout\ = (\reg_ctrl_inst|rcvd_addr_reg_i_s\(0) & ((\reg_ctrl_inst|rdata_reg_o_s~19_combout\ & (\reg_ctrl_inst|array_reg[3][0]~q\)) # (!\reg_ctrl_inst|rdata_reg_o_s~19_combout\ & ((\reg_ctrl_inst|array_reg[1][0]~q\))))) # 
-- (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(0) & (((\reg_ctrl_inst|rdata_reg_o_s~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|array_reg[3][0]~q\,
	datab => \reg_ctrl_inst|rcvd_addr_reg_i_s\(0),
	datac => \reg_ctrl_inst|array_reg[1][0]~q\,
	datad => \reg_ctrl_inst|rdata_reg_o_s~19_combout\,
	combout => \reg_ctrl_inst|rdata_reg_o_s~20_combout\);

-- Location: LCCOMB_X43_Y16_N16
\reg_ctrl_inst|rdata_reg_o_s~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|rdata_reg_o_s~21_combout\ = (\reg_ctrl_inst|rcvd_addr_reg_i_s\(2) & (\reg_ctrl_inst|array_reg[4][0]~q\)) # (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(2) & ((\reg_ctrl_inst|rdata_reg_o_s~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|rcvd_addr_reg_i_s\(2),
	datac => \reg_ctrl_inst|array_reg[4][0]~q\,
	datad => \reg_ctrl_inst|rdata_reg_o_s~20_combout\,
	combout => \reg_ctrl_inst|rdata_reg_o_s~21_combout\);

-- Location: FF_X43_Y16_N17
\reg_ctrl_inst|rdata_reg_o_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \reg_ctrl_inst|rdata_reg_o_s~21_combout\,
	clrn => \reset_n~input_o\,
	sclr => \reg_ctrl_inst|ALT_INV_check_done_s~q\,
	ena => \reg_ctrl_inst|rdata_reg_o_s[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|rdata_reg_o_s\(0));

-- Location: LCCOMB_X43_Y14_N12
\uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[0]~feeder_combout\ = \reg_ctrl_inst|rdata_reg_o_s\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg_ctrl_inst|rdata_reg_o_s\(0),
	combout => \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[0]~feeder_combout\);

-- Location: FF_X43_Y14_N13
\uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[0]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s\(0));

-- Location: LCCOMB_X44_Y14_N6
\uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~11_combout\ = (\uart_ctrl_inst|uart_mngt_inst|p_tx_mng~0_combout\ & (((\uart_ctrl_inst|uart_mngt_inst|rdata_reg_s\(0)) # (!\uart_ctrl_inst|uart_mngt_inst|tx_data_o_s[0]~0_combout\)) # 
-- (!\uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx\(1),
	datab => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s[0]~0_combout\,
	datac => \uart_ctrl_inst|uart_mngt_inst|p_tx_mng~0_combout\,
	datad => \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s\(0),
	combout => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~11_combout\);

-- Location: FF_X44_Y14_N7
\uart_ctrl_inst|uart_mngt_inst|tx_data_o_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~11_combout\,
	clrn => \reset_n~input_o\,
	ena => \uart_ctrl_inst|uart_mngt_inst|start_tx_o_s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s\(0));

-- Location: FF_X45_Y14_N11
\uart_ctrl_inst|tx_uart_inst|tx_data_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	asdata => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s\(0),
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \uart_ctrl_inst|tx_uart_inst|tx_fsm.LATCH_INPUTS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|tx_uart_inst|tx_data_s\(0));

-- Location: LCCOMB_X45_Y14_N10
\uart_ctrl_inst|tx_uart_inst|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|Mux0~2_combout\ = (\uart_ctrl_inst|tx_uart_inst|cnt_data\(1) & (((\uart_ctrl_inst|tx_uart_inst|cnt_data\(0))))) # (!\uart_ctrl_inst|tx_uart_inst|cnt_data\(1) & ((\uart_ctrl_inst|tx_uart_inst|cnt_data\(0) & 
-- (\uart_ctrl_inst|tx_uart_inst|tx_data_s\(1))) # (!\uart_ctrl_inst|tx_uart_inst|cnt_data\(0) & ((\uart_ctrl_inst|tx_uart_inst|tx_data_s\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|tx_uart_inst|cnt_data\(1),
	datab => \uart_ctrl_inst|tx_uart_inst|tx_data_s\(1),
	datac => \uart_ctrl_inst|tx_uart_inst|tx_data_s\(0),
	datad => \uart_ctrl_inst|tx_uart_inst|cnt_data\(0),
	combout => \uart_ctrl_inst|tx_uart_inst|Mux0~2_combout\);

-- Location: LCCOMB_X45_Y14_N8
\uart_ctrl_inst|tx_uart_inst|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|Mux0~3_combout\ = (\uart_ctrl_inst|tx_uart_inst|cnt_data\(1) & ((\uart_ctrl_inst|tx_uart_inst|Mux0~2_combout\ & ((\uart_ctrl_inst|tx_uart_inst|tx_data_s\(3)))) # (!\uart_ctrl_inst|tx_uart_inst|Mux0~2_combout\ & 
-- (\uart_ctrl_inst|tx_uart_inst|tx_data_s\(2))))) # (!\uart_ctrl_inst|tx_uart_inst|cnt_data\(1) & (((\uart_ctrl_inst|tx_uart_inst|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|tx_uart_inst|cnt_data\(1),
	datab => \uart_ctrl_inst|tx_uart_inst|tx_data_s\(2),
	datac => \uart_ctrl_inst|tx_uart_inst|tx_data_s\(3),
	datad => \uart_ctrl_inst|tx_uart_inst|Mux0~2_combout\,
	combout => \uart_ctrl_inst|tx_uart_inst|Mux0~3_combout\);

-- Location: LCCOMB_X48_Y15_N6
\uart_ctrl_inst|uart_mngt_inst|byte_array[2][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|byte_array[2][5]~feeder_combout\ = \uart_ctrl_inst|uart_mngt_inst|byte_array~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_ctrl_inst|uart_mngt_inst|byte_array~2_combout\,
	combout => \uart_ctrl_inst|uart_mngt_inst|byte_array[2][5]~feeder_combout\);

-- Location: FF_X48_Y15_N7
\uart_ctrl_inst|uart_mngt_inst|byte_array[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|uart_mngt_inst|byte_array[2][5]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \uart_ctrl_inst|uart_mngt_inst|byte_array[2][4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|byte_array[2][5]~q\);

-- Location: LCCOMB_X48_Y15_N14
\uart_ctrl_inst|uart_mngt_inst|wdata_reg_s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s~0_combout\ = (\uart_ctrl_inst|uart_mngt_inst|byte_array[2][5]~q\ & !\uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|uart_mngt_inst|byte_array[2][5]~q\,
	datad => \uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\,
	combout => \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s~0_combout\);

-- Location: FF_X48_Y15_N15
\uart_ctrl_inst|uart_mngt_inst|wdata_reg_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s~0_combout\,
	clrn => \reset_n~input_o\,
	ena => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s\(5));

-- Location: LCCOMB_X47_Y16_N20
\reg_ctrl_inst|wdata_reg_i_s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|wdata_reg_i_s~0_combout\ = (\reg_ctrl_inst|start_rw_i_r_edge~q\ & \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_ctrl_inst|start_rw_i_r_edge~q\,
	datad => \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s\(5),
	combout => \reg_ctrl_inst|wdata_reg_i_s~0_combout\);

-- Location: FF_X47_Y16_N21
\reg_ctrl_inst|wdata_reg_i_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \reg_ctrl_inst|wdata_reg_i_s~0_combout\,
	clrn => \reset_n~input_o\,
	ena => \reg_ctrl_inst|rcvd_addr_reg_i_s[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|wdata_reg_i_s\(5));

-- Location: LCCOMB_X43_Y16_N24
\reg_ctrl_inst|array_reg[4][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|array_reg[4][5]~feeder_combout\ = \reg_ctrl_inst|wdata_reg_i_s\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg_ctrl_inst|wdata_reg_i_s\(5),
	combout => \reg_ctrl_inst|array_reg[4][5]~feeder_combout\);

-- Location: FF_X43_Y16_N25
\reg_ctrl_inst|array_reg[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \reg_ctrl_inst|array_reg[4][5]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \reg_ctrl_inst|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|array_reg[4][5]~q\);

-- Location: LCCOMB_X44_Y16_N2
\reg_ctrl_inst|array_reg[3][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|array_reg[3][5]~feeder_combout\ = \reg_ctrl_inst|wdata_reg_i_s\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg_ctrl_inst|wdata_reg_i_s\(5),
	combout => \reg_ctrl_inst|array_reg[3][5]~feeder_combout\);

-- Location: FF_X44_Y16_N3
\reg_ctrl_inst|array_reg[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \reg_ctrl_inst|array_reg[3][5]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \reg_ctrl_inst|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|array_reg[3][5]~q\);

-- Location: FF_X46_Y16_N9
\reg_ctrl_inst|array_reg[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	asdata => \reg_ctrl_inst|wdata_reg_i_s\(5),
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \reg_ctrl_inst|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|array_reg[2][5]~q\);

-- Location: FF_X46_Y16_N11
\reg_ctrl_inst|array_reg[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	asdata => \reg_ctrl_inst|wdata_reg_i_s\(5),
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \reg_ctrl_inst|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|array_reg[0][5]~q\);

-- Location: LCCOMB_X44_Y16_N0
\reg_ctrl_inst|array_reg[1][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|array_reg[1][5]~feeder_combout\ = \reg_ctrl_inst|wdata_reg_i_s\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg_ctrl_inst|wdata_reg_i_s\(5),
	combout => \reg_ctrl_inst|array_reg[1][5]~feeder_combout\);

-- Location: FF_X44_Y16_N1
\reg_ctrl_inst|array_reg[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \reg_ctrl_inst|array_reg[1][5]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \reg_ctrl_inst|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|array_reg[1][5]~q\);

-- Location: LCCOMB_X46_Y16_N10
\reg_ctrl_inst|rdata_reg_o_s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|rdata_reg_o_s~0_combout\ = (\reg_ctrl_inst|rcvd_addr_reg_i_s\(0) & ((\reg_ctrl_inst|rcvd_addr_reg_i_s\(1)) # ((\reg_ctrl_inst|array_reg[1][5]~q\)))) # (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(0) & (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(1) & 
-- (\reg_ctrl_inst|array_reg[0][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|rcvd_addr_reg_i_s\(0),
	datab => \reg_ctrl_inst|rcvd_addr_reg_i_s\(1),
	datac => \reg_ctrl_inst|array_reg[0][5]~q\,
	datad => \reg_ctrl_inst|array_reg[1][5]~q\,
	combout => \reg_ctrl_inst|rdata_reg_o_s~0_combout\);

-- Location: LCCOMB_X46_Y16_N8
\reg_ctrl_inst|rdata_reg_o_s~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|rdata_reg_o_s~1_combout\ = (\reg_ctrl_inst|rcvd_addr_reg_i_s\(1) & ((\reg_ctrl_inst|rdata_reg_o_s~0_combout\ & (\reg_ctrl_inst|array_reg[3][5]~q\)) # (!\reg_ctrl_inst|rdata_reg_o_s~0_combout\ & ((\reg_ctrl_inst|array_reg[2][5]~q\))))) # 
-- (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(1) & (((\reg_ctrl_inst|rdata_reg_o_s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|array_reg[3][5]~q\,
	datab => \reg_ctrl_inst|rcvd_addr_reg_i_s\(1),
	datac => \reg_ctrl_inst|array_reg[2][5]~q\,
	datad => \reg_ctrl_inst|rdata_reg_o_s~0_combout\,
	combout => \reg_ctrl_inst|rdata_reg_o_s~1_combout\);

-- Location: LCCOMB_X43_Y16_N20
\reg_ctrl_inst|rdata_reg_o_s~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|rdata_reg_o_s~2_combout\ = (\reg_ctrl_inst|rcvd_addr_reg_i_s\(2) & (\reg_ctrl_inst|array_reg[4][5]~q\)) # (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(2) & ((\reg_ctrl_inst|rdata_reg_o_s~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_ctrl_inst|array_reg[4][5]~q\,
	datac => \reg_ctrl_inst|rcvd_addr_reg_i_s\(2),
	datad => \reg_ctrl_inst|rdata_reg_o_s~1_combout\,
	combout => \reg_ctrl_inst|rdata_reg_o_s~2_combout\);

-- Location: FF_X43_Y16_N21
\reg_ctrl_inst|rdata_reg_o_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \reg_ctrl_inst|rdata_reg_o_s~2_combout\,
	clrn => \reset_n~input_o\,
	sclr => \reg_ctrl_inst|ALT_INV_check_done_s~q\,
	ena => \reg_ctrl_inst|rdata_reg_o_s[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|rdata_reg_o_s\(5));

-- Location: LCCOMB_X43_Y14_N24
\uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[5]~feeder_combout\ = \reg_ctrl_inst|rdata_reg_o_s\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg_ctrl_inst|rdata_reg_o_s\(5),
	combout => \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[5]~feeder_combout\);

-- Location: FF_X43_Y14_N25
\uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[5]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s\(5));

-- Location: LCCOMB_X44_Y14_N24
\uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~1_combout\ = (\uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx\(1) & (\uart_ctrl_inst|uart_mngt_inst|p_tx_mng~0_combout\ & ((\uart_ctrl_inst|uart_mngt_inst|rdata_reg_s\(5)) # 
-- (!\uart_ctrl_inst|uart_mngt_inst|tx_data_o_s[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx\(1),
	datab => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s[0]~0_combout\,
	datac => \uart_ctrl_inst|uart_mngt_inst|p_tx_mng~0_combout\,
	datad => \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s\(5),
	combout => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~1_combout\);

-- Location: FF_X44_Y14_N25
\uart_ctrl_inst|uart_mngt_inst|tx_data_o_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~1_combout\,
	clrn => \reset_n~input_o\,
	ena => \uart_ctrl_inst|uart_mngt_inst|start_tx_o_s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s\(5));

-- Location: LCCOMB_X45_Y14_N2
\uart_ctrl_inst|tx_uart_inst|tx_data_s[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|tx_data_s[5]~feeder_combout\ = \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s\(5),
	combout => \uart_ctrl_inst|tx_uart_inst|tx_data_s[5]~feeder_combout\);

-- Location: FF_X45_Y14_N3
\uart_ctrl_inst|tx_uart_inst|tx_data_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|tx_uart_inst|tx_data_s[5]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \uart_ctrl_inst|tx_uart_inst|tx_fsm.LATCH_INPUTS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|tx_uart_inst|tx_data_s\(5));

-- Location: FF_X48_Y15_N13
\uart_ctrl_inst|uart_mngt_inst|byte_array[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|uart_mngt_inst|byte_array~0_combout\,
	clrn => \reset_n~input_o\,
	ena => \uart_ctrl_inst|uart_mngt_inst|byte_array[2][4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|byte_array[2][7]~q\);

-- Location: LCCOMB_X48_Y15_N0
\uart_ctrl_inst|uart_mngt_inst|wdata_reg_s~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s~3_combout\ = (!\uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\ & \uart_ctrl_inst|uart_mngt_inst|byte_array[2][7]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\,
	datad => \uart_ctrl_inst|uart_mngt_inst|byte_array[2][7]~q\,
	combout => \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s~3_combout\);

-- Location: FF_X48_Y15_N1
\uart_ctrl_inst|uart_mngt_inst|wdata_reg_s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s~3_combout\,
	clrn => \reset_n~input_o\,
	ena => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s\(7));

-- Location: LCCOMB_X47_Y16_N14
\reg_ctrl_inst|wdata_reg_i_s~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|wdata_reg_i_s~3_combout\ = (\reg_ctrl_inst|start_rw_i_r_edge~q\ & \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_ctrl_inst|start_rw_i_r_edge~q\,
	datad => \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s\(7),
	combout => \reg_ctrl_inst|wdata_reg_i_s~3_combout\);

-- Location: FF_X47_Y16_N15
\reg_ctrl_inst|wdata_reg_i_s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \reg_ctrl_inst|wdata_reg_i_s~3_combout\,
	clrn => \reset_n~input_o\,
	ena => \reg_ctrl_inst|rcvd_addr_reg_i_s[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|wdata_reg_i_s\(7));

-- Location: LCCOMB_X43_Y16_N10
\reg_ctrl_inst|array_reg[4][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|array_reg[4][7]~feeder_combout\ = \reg_ctrl_inst|wdata_reg_i_s\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg_ctrl_inst|wdata_reg_i_s\(7),
	combout => \reg_ctrl_inst|array_reg[4][7]~feeder_combout\);

-- Location: FF_X43_Y16_N11
\reg_ctrl_inst|array_reg[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \reg_ctrl_inst|array_reg[4][7]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \reg_ctrl_inst|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|array_reg[4][7]~q\);

-- Location: LCCOMB_X44_Y16_N6
\reg_ctrl_inst|array_reg[3][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|array_reg[3][7]~feeder_combout\ = \reg_ctrl_inst|wdata_reg_i_s\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_ctrl_inst|wdata_reg_i_s\(7),
	combout => \reg_ctrl_inst|array_reg[3][7]~feeder_combout\);

-- Location: FF_X44_Y16_N7
\reg_ctrl_inst|array_reg[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \reg_ctrl_inst|array_reg[3][7]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \reg_ctrl_inst|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|array_reg[3][7]~q\);

-- Location: FF_X46_Y16_N7
\reg_ctrl_inst|array_reg[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	asdata => \reg_ctrl_inst|wdata_reg_i_s\(7),
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \reg_ctrl_inst|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|array_reg[2][7]~q\);

-- Location: FF_X46_Y16_N21
\reg_ctrl_inst|array_reg[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	asdata => \reg_ctrl_inst|wdata_reg_i_s\(7),
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \reg_ctrl_inst|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|array_reg[0][7]~q\);

-- Location: LCCOMB_X44_Y16_N8
\reg_ctrl_inst|array_reg[1][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|array_reg[1][7]~feeder_combout\ = \reg_ctrl_inst|wdata_reg_i_s\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_ctrl_inst|wdata_reg_i_s\(7),
	combout => \reg_ctrl_inst|array_reg[1][7]~feeder_combout\);

-- Location: FF_X44_Y16_N9
\reg_ctrl_inst|array_reg[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \reg_ctrl_inst|array_reg[1][7]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \reg_ctrl_inst|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|array_reg[1][7]~q\);

-- Location: LCCOMB_X46_Y16_N20
\reg_ctrl_inst|rdata_reg_o_s~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|rdata_reg_o_s~10_combout\ = (\reg_ctrl_inst|rcvd_addr_reg_i_s\(0) & ((\reg_ctrl_inst|rcvd_addr_reg_i_s\(1)) # ((\reg_ctrl_inst|array_reg[1][7]~q\)))) # (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(0) & (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(1) & 
-- (\reg_ctrl_inst|array_reg[0][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|rcvd_addr_reg_i_s\(0),
	datab => \reg_ctrl_inst|rcvd_addr_reg_i_s\(1),
	datac => \reg_ctrl_inst|array_reg[0][7]~q\,
	datad => \reg_ctrl_inst|array_reg[1][7]~q\,
	combout => \reg_ctrl_inst|rdata_reg_o_s~10_combout\);

-- Location: LCCOMB_X46_Y16_N6
\reg_ctrl_inst|rdata_reg_o_s~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|rdata_reg_o_s~11_combout\ = (\reg_ctrl_inst|rcvd_addr_reg_i_s\(1) & ((\reg_ctrl_inst|rdata_reg_o_s~10_combout\ & (\reg_ctrl_inst|array_reg[3][7]~q\)) # (!\reg_ctrl_inst|rdata_reg_o_s~10_combout\ & ((\reg_ctrl_inst|array_reg[2][7]~q\))))) # 
-- (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(1) & (((\reg_ctrl_inst|rdata_reg_o_s~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|array_reg[3][7]~q\,
	datab => \reg_ctrl_inst|rcvd_addr_reg_i_s\(1),
	datac => \reg_ctrl_inst|array_reg[2][7]~q\,
	datad => \reg_ctrl_inst|rdata_reg_o_s~10_combout\,
	combout => \reg_ctrl_inst|rdata_reg_o_s~11_combout\);

-- Location: LCCOMB_X43_Y16_N2
\reg_ctrl_inst|rdata_reg_o_s~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|rdata_reg_o_s~12_combout\ = (\reg_ctrl_inst|rcvd_addr_reg_i_s\(2) & (\reg_ctrl_inst|array_reg[4][7]~q\)) # (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(2) & ((\reg_ctrl_inst|rdata_reg_o_s~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|array_reg[4][7]~q\,
	datac => \reg_ctrl_inst|rcvd_addr_reg_i_s\(2),
	datad => \reg_ctrl_inst|rdata_reg_o_s~11_combout\,
	combout => \reg_ctrl_inst|rdata_reg_o_s~12_combout\);

-- Location: FF_X43_Y16_N3
\reg_ctrl_inst|rdata_reg_o_s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \reg_ctrl_inst|rdata_reg_o_s~12_combout\,
	clrn => \reset_n~input_o\,
	sclr => \reg_ctrl_inst|ALT_INV_check_done_s~q\,
	ena => \reg_ctrl_inst|rdata_reg_o_s[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|rdata_reg_o_s\(7));

-- Location: LCCOMB_X43_Y14_N22
\uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[7]~feeder_combout\ = \reg_ctrl_inst|rdata_reg_o_s\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg_ctrl_inst|rdata_reg_o_s\(7),
	combout => \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[7]~feeder_combout\);

-- Location: FF_X43_Y14_N23
\uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[7]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s\(7));

-- Location: LCCOMB_X44_Y14_N26
\uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~4_combout\ = (\uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx\(1) & (\uart_ctrl_inst|uart_mngt_inst|tx_data_o_s[0]~0_combout\ & (\uart_ctrl_inst|uart_mngt_inst|p_tx_mng~0_combout\ & 
-- \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx\(1),
	datab => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s[0]~0_combout\,
	datac => \uart_ctrl_inst|uart_mngt_inst|p_tx_mng~0_combout\,
	datad => \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s\(7),
	combout => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~4_combout\);

-- Location: FF_X44_Y14_N27
\uart_ctrl_inst|uart_mngt_inst|tx_data_o_s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~4_combout\,
	clrn => \reset_n~input_o\,
	ena => \uart_ctrl_inst|uart_mngt_inst|start_tx_o_s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s\(7));

-- Location: FF_X45_Y14_N25
\uart_ctrl_inst|tx_uart_inst|tx_data_s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	asdata => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s\(7),
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \uart_ctrl_inst|tx_uart_inst|tx_fsm.LATCH_INPUTS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|tx_uart_inst|tx_data_s\(7));

-- Location: FF_X48_Y15_N23
\uart_ctrl_inst|uart_mngt_inst|byte_array[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|uart_mngt_inst|byte_array~3_combout\,
	clrn => \reset_n~input_o\,
	ena => \uart_ctrl_inst|uart_mngt_inst|byte_array[2][4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|byte_array[2][6]~q\);

-- Location: LCCOMB_X48_Y15_N4
\uart_ctrl_inst|uart_mngt_inst|wdata_reg_s~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s~1_combout\ = (\uart_ctrl_inst|uart_mngt_inst|byte_array[2][6]~q\ & !\uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_ctrl_inst|uart_mngt_inst|byte_array[2][6]~q\,
	datad => \uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\,
	combout => \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s~1_combout\);

-- Location: FF_X48_Y15_N5
\uart_ctrl_inst|uart_mngt_inst|wdata_reg_s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s~1_combout\,
	clrn => \reset_n~input_o\,
	ena => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s\(6));

-- Location: LCCOMB_X47_Y16_N22
\reg_ctrl_inst|wdata_reg_i_s~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|wdata_reg_i_s~1_combout\ = (\uart_ctrl_inst|uart_mngt_inst|wdata_reg_s\(6) & \reg_ctrl_inst|start_rw_i_r_edge~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s\(6),
	datac => \reg_ctrl_inst|start_rw_i_r_edge~q\,
	combout => \reg_ctrl_inst|wdata_reg_i_s~1_combout\);

-- Location: FF_X47_Y16_N23
\reg_ctrl_inst|wdata_reg_i_s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \reg_ctrl_inst|wdata_reg_i_s~1_combout\,
	clrn => \reset_n~input_o\,
	ena => \reg_ctrl_inst|rcvd_addr_reg_i_s[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|wdata_reg_i_s\(6));

-- Location: LCCOMB_X43_Y16_N30
\reg_ctrl_inst|array_reg[4][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|array_reg[4][6]~feeder_combout\ = \reg_ctrl_inst|wdata_reg_i_s\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg_ctrl_inst|wdata_reg_i_s\(6),
	combout => \reg_ctrl_inst|array_reg[4][6]~feeder_combout\);

-- Location: FF_X43_Y16_N31
\reg_ctrl_inst|array_reg[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \reg_ctrl_inst|array_reg[4][6]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \reg_ctrl_inst|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|array_reg[4][6]~q\);

-- Location: FF_X44_Y16_N27
\reg_ctrl_inst|array_reg[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	asdata => \reg_ctrl_inst|wdata_reg_i_s\(6),
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \reg_ctrl_inst|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|array_reg[3][6]~q\);

-- Location: FF_X44_Y16_N25
\reg_ctrl_inst|array_reg[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	asdata => \reg_ctrl_inst|wdata_reg_i_s\(6),
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \reg_ctrl_inst|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|array_reg[1][6]~q\);

-- Location: FF_X47_Y16_N13
\reg_ctrl_inst|array_reg[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	asdata => \reg_ctrl_inst|wdata_reg_i_s\(6),
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \reg_ctrl_inst|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|array_reg[2][6]~q\);

-- Location: LCCOMB_X46_Y16_N24
\reg_ctrl_inst|array_reg[0][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|array_reg[0][6]~feeder_combout\ = \reg_ctrl_inst|wdata_reg_i_s\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg_ctrl_inst|wdata_reg_i_s\(6),
	combout => \reg_ctrl_inst|array_reg[0][6]~feeder_combout\);

-- Location: FF_X46_Y16_N25
\reg_ctrl_inst|array_reg[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \reg_ctrl_inst|array_reg[0][6]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \reg_ctrl_inst|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|array_reg[0][6]~q\);

-- Location: LCCOMB_X47_Y16_N12
\reg_ctrl_inst|rdata_reg_o_s~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|rdata_reg_o_s~4_combout\ = (\reg_ctrl_inst|rcvd_addr_reg_i_s\(0) & (\reg_ctrl_inst|rcvd_addr_reg_i_s\(1))) # (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(0) & ((\reg_ctrl_inst|rcvd_addr_reg_i_s\(1) & (\reg_ctrl_inst|array_reg[2][6]~q\)) # 
-- (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(1) & ((\reg_ctrl_inst|array_reg[0][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|rcvd_addr_reg_i_s\(0),
	datab => \reg_ctrl_inst|rcvd_addr_reg_i_s\(1),
	datac => \reg_ctrl_inst|array_reg[2][6]~q\,
	datad => \reg_ctrl_inst|array_reg[0][6]~q\,
	combout => \reg_ctrl_inst|rdata_reg_o_s~4_combout\);

-- Location: LCCOMB_X44_Y16_N24
\reg_ctrl_inst|rdata_reg_o_s~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|rdata_reg_o_s~5_combout\ = (\reg_ctrl_inst|rcvd_addr_reg_i_s\(0) & ((\reg_ctrl_inst|rdata_reg_o_s~4_combout\ & (\reg_ctrl_inst|array_reg[3][6]~q\)) # (!\reg_ctrl_inst|rdata_reg_o_s~4_combout\ & ((\reg_ctrl_inst|array_reg[1][6]~q\))))) # 
-- (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(0) & (((\reg_ctrl_inst|rdata_reg_o_s~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|array_reg[3][6]~q\,
	datab => \reg_ctrl_inst|rcvd_addr_reg_i_s\(0),
	datac => \reg_ctrl_inst|array_reg[1][6]~q\,
	datad => \reg_ctrl_inst|rdata_reg_o_s~4_combout\,
	combout => \reg_ctrl_inst|rdata_reg_o_s~5_combout\);

-- Location: LCCOMB_X43_Y16_N18
\reg_ctrl_inst|rdata_reg_o_s~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|rdata_reg_o_s~6_combout\ = (\reg_ctrl_inst|rcvd_addr_reg_i_s\(2) & (\reg_ctrl_inst|array_reg[4][6]~q\)) # (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(2) & ((\reg_ctrl_inst|rdata_reg_o_s~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|rcvd_addr_reg_i_s\(2),
	datac => \reg_ctrl_inst|array_reg[4][6]~q\,
	datad => \reg_ctrl_inst|rdata_reg_o_s~5_combout\,
	combout => \reg_ctrl_inst|rdata_reg_o_s~6_combout\);

-- Location: FF_X43_Y16_N19
\reg_ctrl_inst|rdata_reg_o_s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \reg_ctrl_inst|rdata_reg_o_s~6_combout\,
	clrn => \reset_n~input_o\,
	sclr => \reg_ctrl_inst|ALT_INV_check_done_s~q\,
	ena => \reg_ctrl_inst|rdata_reg_o_s[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|rdata_reg_o_s\(6));

-- Location: LCCOMB_X43_Y14_N2
\uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[6]~feeder_combout\ = \reg_ctrl_inst|rdata_reg_o_s\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg_ctrl_inst|rdata_reg_o_s\(6),
	combout => \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[6]~feeder_combout\);

-- Location: FF_X43_Y14_N3
\uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[6]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s\(6));

-- Location: LCCOMB_X44_Y14_N14
\uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~2_combout\ = (\uart_ctrl_inst|uart_mngt_inst|p_tx_mng~0_combout\ & (((\uart_ctrl_inst|uart_mngt_inst|tx_data_o_s[0]~0_combout\ & \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s\(6))) # 
-- (!\uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx\(1),
	datab => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s[0]~0_combout\,
	datac => \uart_ctrl_inst|uart_mngt_inst|p_tx_mng~0_combout\,
	datad => \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s\(6),
	combout => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~2_combout\);

-- Location: FF_X44_Y14_N15
\uart_ctrl_inst|uart_mngt_inst|tx_data_o_s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~2_combout\,
	clrn => \reset_n~input_o\,
	ena => \uart_ctrl_inst|uart_mngt_inst|start_tx_o_s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s\(6));

-- Location: LCCOMB_X45_Y14_N16
\uart_ctrl_inst|tx_uart_inst|tx_data_s[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|tx_data_s[6]~feeder_combout\ = \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s\(6),
	combout => \uart_ctrl_inst|tx_uart_inst|tx_data_s[6]~feeder_combout\);

-- Location: FF_X45_Y14_N17
\uart_ctrl_inst|tx_uart_inst|tx_data_s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|tx_uart_inst|tx_data_s[6]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \uart_ctrl_inst|tx_uart_inst|tx_fsm.LATCH_INPUTS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|tx_uart_inst|tx_data_s\(6));

-- Location: FF_X48_Y15_N21
\uart_ctrl_inst|uart_mngt_inst|byte_array[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|uart_mngt_inst|byte_array~4_combout\,
	clrn => \reset_n~input_o\,
	ena => \uart_ctrl_inst|uart_mngt_inst|byte_array[2][4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|byte_array[2][4]~q\);

-- Location: LCCOMB_X48_Y15_N26
\uart_ctrl_inst|uart_mngt_inst|wdata_reg_s~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s~2_combout\ = (!\uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\ & \uart_ctrl_inst|uart_mngt_inst|byte_array[2][4]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\,
	datad => \uart_ctrl_inst|uart_mngt_inst|byte_array[2][4]~q\,
	combout => \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s~2_combout\);

-- Location: FF_X48_Y15_N27
\uart_ctrl_inst|uart_mngt_inst|wdata_reg_s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s~2_combout\,
	clrn => \reset_n~input_o\,
	ena => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s\(4));

-- Location: LCCOMB_X47_Y16_N4
\reg_ctrl_inst|wdata_reg_i_s~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|wdata_reg_i_s~2_combout\ = (\uart_ctrl_inst|uart_mngt_inst|wdata_reg_s\(4) & \reg_ctrl_inst|start_rw_i_r_edge~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s\(4),
	datac => \reg_ctrl_inst|start_rw_i_r_edge~q\,
	combout => \reg_ctrl_inst|wdata_reg_i_s~2_combout\);

-- Location: FF_X47_Y16_N5
\reg_ctrl_inst|wdata_reg_i_s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \reg_ctrl_inst|wdata_reg_i_s~2_combout\,
	clrn => \reset_n~input_o\,
	ena => \reg_ctrl_inst|rcvd_addr_reg_i_s[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|wdata_reg_i_s\(4));

-- Location: LCCOMB_X43_Y16_N12
\reg_ctrl_inst|array_reg[4][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|array_reg[4][4]~feeder_combout\ = \reg_ctrl_inst|wdata_reg_i_s\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_ctrl_inst|wdata_reg_i_s\(4),
	combout => \reg_ctrl_inst|array_reg[4][4]~feeder_combout\);

-- Location: FF_X43_Y16_N13
\reg_ctrl_inst|array_reg[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \reg_ctrl_inst|array_reg[4][4]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \reg_ctrl_inst|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|array_reg[4][4]~q\);

-- Location: LCCOMB_X44_Y16_N10
\reg_ctrl_inst|array_reg[3][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|array_reg[3][4]~feeder_combout\ = \reg_ctrl_inst|wdata_reg_i_s\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_ctrl_inst|wdata_reg_i_s\(4),
	combout => \reg_ctrl_inst|array_reg[3][4]~feeder_combout\);

-- Location: FF_X44_Y16_N11
\reg_ctrl_inst|array_reg[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \reg_ctrl_inst|array_reg[3][4]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \reg_ctrl_inst|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|array_reg[3][4]~q\);

-- Location: FF_X44_Y16_N5
\reg_ctrl_inst|array_reg[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	asdata => \reg_ctrl_inst|wdata_reg_i_s\(4),
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \reg_ctrl_inst|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|array_reg[1][4]~q\);

-- Location: LCCOMB_X46_Y16_N18
\reg_ctrl_inst|array_reg[2][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|array_reg[2][4]~feeder_combout\ = \reg_ctrl_inst|wdata_reg_i_s\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_ctrl_inst|wdata_reg_i_s\(4),
	combout => \reg_ctrl_inst|array_reg[2][4]~feeder_combout\);

-- Location: FF_X46_Y16_N19
\reg_ctrl_inst|array_reg[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \reg_ctrl_inst|array_reg[2][4]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \reg_ctrl_inst|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|array_reg[2][4]~q\);

-- Location: FF_X46_Y16_N13
\reg_ctrl_inst|array_reg[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	asdata => \reg_ctrl_inst|wdata_reg_i_s\(4),
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \reg_ctrl_inst|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|array_reg[0][4]~q\);

-- Location: LCCOMB_X46_Y16_N12
\reg_ctrl_inst|rdata_reg_o_s~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|rdata_reg_o_s~7_combout\ = (\reg_ctrl_inst|rcvd_addr_reg_i_s\(0) & (((\reg_ctrl_inst|rcvd_addr_reg_i_s\(1))))) # (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(0) & ((\reg_ctrl_inst|rcvd_addr_reg_i_s\(1) & (\reg_ctrl_inst|array_reg[2][4]~q\)) # 
-- (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(1) & ((\reg_ctrl_inst|array_reg[0][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|rcvd_addr_reg_i_s\(0),
	datab => \reg_ctrl_inst|array_reg[2][4]~q\,
	datac => \reg_ctrl_inst|array_reg[0][4]~q\,
	datad => \reg_ctrl_inst|rcvd_addr_reg_i_s\(1),
	combout => \reg_ctrl_inst|rdata_reg_o_s~7_combout\);

-- Location: LCCOMB_X44_Y16_N4
\reg_ctrl_inst|rdata_reg_o_s~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|rdata_reg_o_s~8_combout\ = (\reg_ctrl_inst|rcvd_addr_reg_i_s\(0) & ((\reg_ctrl_inst|rdata_reg_o_s~7_combout\ & (\reg_ctrl_inst|array_reg[3][4]~q\)) # (!\reg_ctrl_inst|rdata_reg_o_s~7_combout\ & ((\reg_ctrl_inst|array_reg[1][4]~q\))))) # 
-- (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(0) & (((\reg_ctrl_inst|rdata_reg_o_s~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|array_reg[3][4]~q\,
	datab => \reg_ctrl_inst|rcvd_addr_reg_i_s\(0),
	datac => \reg_ctrl_inst|array_reg[1][4]~q\,
	datad => \reg_ctrl_inst|rdata_reg_o_s~7_combout\,
	combout => \reg_ctrl_inst|rdata_reg_o_s~8_combout\);

-- Location: LCCOMB_X43_Y16_N0
\reg_ctrl_inst|rdata_reg_o_s~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|rdata_reg_o_s~9_combout\ = (\reg_ctrl_inst|rcvd_addr_reg_i_s\(2) & (\reg_ctrl_inst|array_reg[4][4]~q\)) # (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(2) & ((\reg_ctrl_inst|rdata_reg_o_s~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|array_reg[4][4]~q\,
	datac => \reg_ctrl_inst|rcvd_addr_reg_i_s\(2),
	datad => \reg_ctrl_inst|rdata_reg_o_s~8_combout\,
	combout => \reg_ctrl_inst|rdata_reg_o_s~9_combout\);

-- Location: FF_X43_Y16_N1
\reg_ctrl_inst|rdata_reg_o_s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \reg_ctrl_inst|rdata_reg_o_s~9_combout\,
	clrn => \reset_n~input_o\,
	sclr => \reg_ctrl_inst|ALT_INV_check_done_s~q\,
	ena => \reg_ctrl_inst|rdata_reg_o_s[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|rdata_reg_o_s\(4));

-- Location: LCCOMB_X43_Y14_N8
\uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[4]~feeder_combout\ = \reg_ctrl_inst|rdata_reg_o_s\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_ctrl_inst|rdata_reg_o_s\(4),
	combout => \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[4]~feeder_combout\);

-- Location: FF_X43_Y14_N9
\uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[4]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s\(4));

-- Location: LCCOMB_X44_Y14_N4
\uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~3_combout\ = (\uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx\(1) & (\uart_ctrl_inst|uart_mngt_inst|tx_data_o_s[0]~0_combout\ & (\uart_ctrl_inst|uart_mngt_inst|p_tx_mng~0_combout\ & 
-- \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx\(1),
	datab => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s[0]~0_combout\,
	datac => \uart_ctrl_inst|uart_mngt_inst|p_tx_mng~0_combout\,
	datad => \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s\(4),
	combout => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~3_combout\);

-- Location: FF_X44_Y14_N5
\uart_ctrl_inst|uart_mngt_inst|tx_data_o_s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~3_combout\,
	clrn => \reset_n~input_o\,
	ena => \uart_ctrl_inst|uart_mngt_inst|start_tx_o_s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s\(4));

-- Location: FF_X45_Y14_N7
\uart_ctrl_inst|tx_uart_inst|tx_data_s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	asdata => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s\(4),
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \uart_ctrl_inst|tx_uart_inst|tx_fsm.LATCH_INPUTS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|tx_uart_inst|tx_data_s\(4));

-- Location: LCCOMB_X45_Y14_N6
\uart_ctrl_inst|tx_uart_inst|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|Mux0~0_combout\ = (\uart_ctrl_inst|tx_uart_inst|cnt_data\(0) & (((\uart_ctrl_inst|tx_uart_inst|cnt_data\(1))))) # (!\uart_ctrl_inst|tx_uart_inst|cnt_data\(0) & ((\uart_ctrl_inst|tx_uart_inst|cnt_data\(1) & 
-- (\uart_ctrl_inst|tx_uart_inst|tx_data_s\(6))) # (!\uart_ctrl_inst|tx_uart_inst|cnt_data\(1) & ((\uart_ctrl_inst|tx_uart_inst|tx_data_s\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|tx_uart_inst|cnt_data\(0),
	datab => \uart_ctrl_inst|tx_uart_inst|tx_data_s\(6),
	datac => \uart_ctrl_inst|tx_uart_inst|tx_data_s\(4),
	datad => \uart_ctrl_inst|tx_uart_inst|cnt_data\(1),
	combout => \uart_ctrl_inst|tx_uart_inst|Mux0~0_combout\);

-- Location: LCCOMB_X45_Y14_N24
\uart_ctrl_inst|tx_uart_inst|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|Mux0~1_combout\ = (\uart_ctrl_inst|tx_uart_inst|cnt_data\(0) & ((\uart_ctrl_inst|tx_uart_inst|Mux0~0_combout\ & ((\uart_ctrl_inst|tx_uart_inst|tx_data_s\(7)))) # (!\uart_ctrl_inst|tx_uart_inst|Mux0~0_combout\ & 
-- (\uart_ctrl_inst|tx_uart_inst|tx_data_s\(5))))) # (!\uart_ctrl_inst|tx_uart_inst|cnt_data\(0) & (((\uart_ctrl_inst|tx_uart_inst|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|tx_uart_inst|cnt_data\(0),
	datab => \uart_ctrl_inst|tx_uart_inst|tx_data_s\(5),
	datac => \uart_ctrl_inst|tx_uart_inst|tx_data_s\(7),
	datad => \uart_ctrl_inst|tx_uart_inst|Mux0~0_combout\,
	combout => \uart_ctrl_inst|tx_uart_inst|Mux0~1_combout\);

-- Location: LCCOMB_X45_Y14_N26
\uart_ctrl_inst|tx_uart_inst|tx_s~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|tx_s~2_combout\ = (\uart_ctrl_inst|tx_uart_inst|cnt_data\(2) & ((\uart_ctrl_inst|tx_uart_inst|Mux0~1_combout\))) # (!\uart_ctrl_inst|tx_uart_inst|cnt_data\(2) & (\uart_ctrl_inst|tx_uart_inst|Mux0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|tx_uart_inst|cnt_data\(2),
	datac => \uart_ctrl_inst|tx_uart_inst|Mux0~3_combout\,
	datad => \uart_ctrl_inst|tx_uart_inst|Mux0~1_combout\,
	combout => \uart_ctrl_inst|tx_uart_inst|tx_s~2_combout\);

-- Location: LCCOMB_X46_Y14_N28
\uart_ctrl_inst|tx_uart_inst|tx_s~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|tx_s~1_combout\ = ((\uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP_BIT_GEN~q\ & (!\uart_ctrl_inst|tx_uart_inst|tx_fsm.DATA_GEN~q\ & \uart_ctrl_inst|tx_uart_inst|cnt_data[3]~4_combout\))) # 
-- (!\uart_ctrl_inst|tx_uart_inst|tx_fsm.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP_BIT_GEN~q\,
	datab => \uart_ctrl_inst|tx_uart_inst|tx_fsm.DATA_GEN~q\,
	datac => \uart_ctrl_inst|tx_uart_inst|cnt_data[3]~4_combout\,
	datad => \uart_ctrl_inst|tx_uart_inst|tx_fsm.IDLE~q\,
	combout => \uart_ctrl_inst|tx_uart_inst|tx_s~1_combout\);

-- Location: LCCOMB_X45_Y14_N0
\uart_ctrl_inst|tx_uart_inst|tx_s~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|tx_s~4_combout\ = (!\uart_ctrl_inst|tx_uart_inst|tx_s~0_combout\ & (!\uart_ctrl_inst|tx_uart_inst|tx_s~1_combout\ & ((!\uart_ctrl_inst|tx_uart_inst|tx_s~2_combout\) # (!\uart_ctrl_inst|tx_uart_inst|tx_s~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|tx_uart_inst|tx_s~0_combout\,
	datab => \uart_ctrl_inst|tx_uart_inst|tx_s~3_combout\,
	datac => \uart_ctrl_inst|tx_uart_inst|tx_s~2_combout\,
	datad => \uart_ctrl_inst|tx_uart_inst|tx_s~1_combout\,
	combout => \uart_ctrl_inst|tx_uart_inst|tx_s~4_combout\);

-- Location: FF_X45_Y14_N1
\uart_ctrl_inst|tx_uart_inst|tx_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|tx_uart_inst|tx_s~4_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|tx_uart_inst|tx_s~q\);

ww_tx_uart_o <= \tx_uart_o~output_o\;

ww_debug_rx_uart_o <= \debug_rx_uart_o~output_o\;

ww_debug_tx_uart_o <= \debug_tx_uart_o~output_o\;
END structure;


