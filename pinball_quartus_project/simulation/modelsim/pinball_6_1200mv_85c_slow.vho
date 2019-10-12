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

-- DATE "10/12/2019 22:41:51"

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
	tx_uart_o : OUT std_logic;
	ws2812_data_0_o : OUT std_logic;
	debug_rx_uart_o : OUT std_logic;
	debug_tx_uart_o : OUT std_logic
	);
END top_pinball;

-- Design Ports Information
-- tx_uart_o	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ws2812_data_0_o	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_ws2812_data_0_o : std_logic;
SIGNAL ww_debug_rx_uart_o : std_logic;
SIGNAL ww_debug_tx_uart_o : std_logic;
SIGNAL \clock_i~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \tx_uart_o~output_o\ : std_logic;
SIGNAL \ws2812_data_0_o~output_o\ : std_logic;
SIGNAL \debug_rx_uart_o~output_o\ : std_logic;
SIGNAL \debug_tx_uart_o~output_o\ : std_logic;
SIGNAL \clock_i~input_o\ : std_logic;
SIGNAL \clock_i~inputclkctrl_outclk\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[0]~14_combout\ : std_logic;
SIGNAL \reset_n~input_o\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|LessThan0~3_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|LessThan0~1_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|LessThan0~2_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|cnt_stop_bit~0_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|cnt_stop_bit~q\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|Selector6~2_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|tx_done_s~0_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|tx_done_s~q\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|tx_done_i_s~q\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx~0_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|check_on_s~0_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|rx_fsm.IDLE~feeder_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|rx_fsm.IDLE~q\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|Selector5~0_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[0]~12_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|LessThan0~0_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|LessThan0~1_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[5]~18_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[5]~19_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[11]~20_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[0]~13\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[1]~14_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[1]~15\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[2]~16_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[2]~17\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[3]~21_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[3]~22\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[4]~23_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[4]~24\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[5]~25_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[5]~26\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[6]~27_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[6]~28\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[7]~29_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[7]~30\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[8]~31_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[8]~32\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[9]~33_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[9]~34\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[10]~35_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[10]~36\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[11]~37_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|LessThan0~2_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|tick_data~1_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_data~2_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_data[3]~1_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_data~3_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|p_rx_fsm_mng~0_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_data~4_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_data~0_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|p_rx_fsm_mng~1_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|Selector3~3_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_DATA~q\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|Selector5~1_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|p_rx_fsm_mng~2_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|Selector5~2_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_STOP_BIT~q\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|tick_data~0_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_bit[0]~13_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_bit[10]~37\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_bit[11]~38_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|tick_data~4_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_bit[12]~23_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|LessThan1~0_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|LessThan1~1_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_bit[11]~39\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_bit[12]~40_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_bit[3]~21_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_bit[3]~22_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_bit[0]~14\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_bit[1]~15_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_bit[1]~16\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_bit[2]~17_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_bit[2]~18\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_bit[3]~19_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_bit[3]~20\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_bit[4]~24_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_bit[4]~25\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_bit[5]~26_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_bit[5]~27\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_bit[6]~28_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_bit[6]~29\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_bit[7]~30_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_bit[7]~31\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_bit[8]~32_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_bit[8]~33\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_bit[9]~34_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_bit[9]~35\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_bit[10]~36_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|LessThan1~2_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|tick_data~2_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|tick_data~3_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|tick_data~q\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|Selector3~2_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|Selector6~4_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|Selector6~5_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|Selector1~0_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|rx_fsm.WAIT_START~q\ : std_logic;
SIGNAL \rx_uart_i~input_o\ : std_logic;
SIGNAL \rx_uart_i_s~q\ : std_logic;
SIGNAL \rx_uart_i_ss~q\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|rx_old~0_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|rx_old~q\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|Selector6~3_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|Selector2~0_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_START~q\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_stop_bit~0_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_stop_bit~1_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_stop_bit~q\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|Selector6~2_combout\ : std_logic;
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
SIGNAL \uart_ctrl_inst|rx_uart_inst|Decoder0~1_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|rx_data_s~3_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array~4_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[1][4]~feeder_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[1][4]~9_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[1][4]~q\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s~7_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s[7]~1_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|rcvd_addr_reg_i_s~7_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|rcvd_addr_reg_i_s[7]~1_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|Decoder0~3_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|rx_data_s~4_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array~5_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[1][3]~feeder_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[1][3]~q\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s~8_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|rcvd_addr_reg_i_s~8_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|rx_data_s~1_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array~2_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[1][5]~feeder_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[1][5]~q\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s~6_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|rcvd_addr_reg_i_s~6_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|Decoder0~2_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|rx_data_s~2_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array~3_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[1][6]~feeder_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[1][6]~q\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s~5_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|rcvd_addr_reg_i_s~5_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|reg_addr_ok_o_s~1_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|Decoder0~4_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|rx_data_s~5_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array~6_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[1][2]~feeder_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[1][2]~q\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s~3_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|rcvd_addr_reg_i_s~3_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|rx_data_s~7_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|rx_data_s~8_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array~8_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[1][0]~feeder_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[1][0]~q\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s~2_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|rcvd_addr_reg_i_s~2_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|Decoder0~5_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|rx_data_s~6_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array~7_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[1][1]~feeder_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[1][1]~q\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s~0_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|rcvd_addr_reg_i_s~0_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|Decoder0~0_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|rx_uart_inst|rx_data_s~0_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array~0_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[1][7]~feeder_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[1][7]~q\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s~4_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|rcvd_addr_reg_i_s~4_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|reg_addr_ok_o_s~0_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|reg_addr_ok_o_s~2_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|reg_addr_ok_o_s~q\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[0][2]~feeder_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[0][2]~1_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[0][2]~q\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[0][5]~feeder_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[0][5]~q\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[0][6]~feeder_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[0][6]~q\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[0][4]~q\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[0][7]~feeder_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[0][7]~q\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|Equal1~0_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[0][3]~q\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[0][1]~feeder_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[0][1]~q\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|Equal1~1_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|cmd_byte_error_s~2_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|cmd_byte_error_s~q\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[7]~3_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|start_rw_reg_s~0_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|start_rw_reg_s~1_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|start_rw_reg_s~q\ : std_logic;
SIGNAL \reg_ctrl_inst|start_rw_i_s~feeder_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|start_rw_i_s~q\ : std_logic;
SIGNAL \reg_ctrl_inst|start_rw_i_r_edge~0_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|start_rw_i_r_edge~q\ : std_logic;
SIGNAL \reg_ctrl_inst|check_on_s~q\ : std_logic;
SIGNAL \reg_ctrl_inst|check_done_s~q\ : std_logic;
SIGNAL \reg_ctrl_inst|data_valid_o_ss~q\ : std_logic;
SIGNAL \reg_ctrl_inst|data_valid_o_s~0_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|data_valid_o_s~q\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|reg_data_valid_s~q\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[7]~2_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|parse_done_s~0_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|parse_done_s~q\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|send_resp_s~0_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|send_resp_s~q\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx~3_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx~2_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx~1_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~0_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|p_tx_mng~0_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~4_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|start_tx_o_s~0_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|start_tx_o_s~q\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|start_tx_s~feeder_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|start_tx_s~q\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|start_tx_r_edge~0_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|start_tx_r_edge~q\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|Selector6~0_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|Selector1~0_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|tx_fsm.LATCH_INPUTS~q\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|latch_done_s~q\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|Selector6~1_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|Selector6~5_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|Selector2~0_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|tx_fsm.START_BIT_GEN~q\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|cnt_data[0]~4_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|cnt_data[0]~5\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|cnt_data[1]~6_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|tx_s~1_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|cnt_data[3]~12_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|cnt_data[1]~7\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|cnt_data[2]~8_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|cnt_data[2]~9\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|cnt_data[3]~10_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|Selector5~0_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|Selector5~1_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|Selector5~2_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|Selector6~3_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|Selector6~4_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|Selector0~0_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|tx_fsm.IDLE~q\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|Selector5~4_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|Selector5~3_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|Selector5~5_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|Selector5~6_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP_BIT_GEN~q\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|Selector6~6_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP~q\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[11]~13_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[11]~38_combout\ : std_logic;
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
SIGNAL \uart_ctrl_inst|tx_uart_inst|tick_data~0_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|tick_data~q\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|Selector3~0_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|Selector3~1_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|tx_fsm.DATA_GEN~q\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|tx_s~2_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|tx_s~0_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|tx_s~4_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|send_ko_resp_s~0_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|send_ko_resp_s~1_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|send_ko_resp_s~q\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[0][0]~feeder_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[0][0]~q\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|Equal0~0_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|rw_cmd_s~0_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|rw_cmd_s~q\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[2][1]~10_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[2][2]~q\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s~5_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|wdata_reg_i_s~5_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[4][2]~feeder_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[2][6]~3_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|rw_reg_i_s~0_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|rw_reg_i_s~q\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[4][7]~4_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[4][7]~5_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[4][2]~q\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[3][2]~feeder_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[2][7]~6_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[3][7]~11_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[3][2]~q\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[1][7]~8_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[1][7]~9_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[1][2]~q\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[0][2]~feeder_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[0][7]~10_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[0][2]~q\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[2][7]~7_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[2][2]~q\ : std_logic;
SIGNAL \reg_ctrl_inst|rdata_reg_o_s~13_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|rdata_reg_o_s~14_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|rdata_reg_o_s~15_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|rdata_reg_o_s[1]~3_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[7]~4_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~8_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~9_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~13_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|tx_data_s[2]~feeder_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s[7]~2_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[2][3]~q\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s~7_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|wdata_reg_i_s~7_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[4][3]~feeder_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[4][3]~q\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[2][3]~feeder_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[2][3]~q\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[0][3]~q\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[1][3]~q\ : std_logic;
SIGNAL \reg_ctrl_inst|rdata_reg_o_s~22_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[3][3]~feeder_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[3][3]~q\ : std_logic;
SIGNAL \reg_ctrl_inst|rdata_reg_o_s~23_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|rdata_reg_o_s~24_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[3]~feeder_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~12_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[2][1]~q\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s~6_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|wdata_reg_i_s~6_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[4][1]~feeder_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[4][1]~q\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[3][1]~feeder_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[3][1]~q\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[2][1]~feeder_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[2][1]~q\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[1][1]~q\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[0][1]~feeder_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[0][1]~q\ : std_logic;
SIGNAL \reg_ctrl_inst|rdata_reg_o_s~16_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|rdata_reg_o_s~17_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|rdata_reg_o_s~18_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[1]~feeder_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~10_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|tx_data_s[1]~feeder_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[2][0]~q\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s~0_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|wdata_reg_i_s~0_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[4][0]~feeder_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[4][0]~q\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg~0_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg~1_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg~2_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[1][0]~q\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[3][0]~q\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[0][0]~feeder_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[0][0]~q\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[2][0]~q\ : std_logic;
SIGNAL \reg_ctrl_inst|rdata_reg_o_s~19_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|rdata_reg_o_s~20_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|rdata_reg_o_s~21_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[0]~feeder_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~11_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|Mux0~2_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|Mux0~3_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[2][5]~q\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s~1_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|wdata_reg_i_s~1_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[4][5]~feeder_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[4][5]~q\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[3][5]~feeder_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[3][5]~q\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[2][5]~q\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[0][5]~feeder_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[0][5]~q\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[1][5]~q\ : std_logic;
SIGNAL \reg_ctrl_inst|rdata_reg_o_s~0_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|rdata_reg_o_s~1_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|rdata_reg_o_s~2_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[5]~feeder_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~3_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[2][7]~q\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s~4_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|wdata_reg_i_s~4_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[4][7]~feeder_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[4][7]~q\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[3][7]~feeder_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[3][7]~q\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[2][7]~q\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[0][7]~q\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[1][7]~q\ : std_logic;
SIGNAL \reg_ctrl_inst|rdata_reg_o_s~10_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|rdata_reg_o_s~11_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|rdata_reg_o_s~12_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[7]~feeder_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~7_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[2][6]~q\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s~2_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|wdata_reg_i_s~2_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[4][6]~feeder_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[4][6]~q\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[3][6]~feeder_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[3][6]~q\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[1][6]~q\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[2][6]~q\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[0][6]~feeder_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[0][6]~q\ : std_logic;
SIGNAL \reg_ctrl_inst|rdata_reg_o_s~4_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|rdata_reg_o_s~5_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|rdata_reg_o_s~6_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[6]~feeder_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~5_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|tx_data_s[6]~feeder_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|byte_array[2][4]~q\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s~3_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|wdata_reg_i_s~3_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[4][4]~q\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[3][4]~feeder_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[3][4]~q\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[1][4]~q\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[0][4]~feeder_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[0][4]~q\ : std_logic;
SIGNAL \reg_ctrl_inst|array_reg[2][4]~q\ : std_logic;
SIGNAL \reg_ctrl_inst|rdata_reg_o_s~7_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|rdata_reg_o_s~8_combout\ : std_logic;
SIGNAL \reg_ctrl_inst|rdata_reg_o_s~9_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[4]~feeder_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~6_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|Mux0~0_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|Mux0~1_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|tx_s~3_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|tx_s~5_combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|tx_s~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|frame_ws2812_done_s~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|frame_ws2812_done_s~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s~3_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s[3]~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s~2_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|LessThan0~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|config_done_s~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|config_done_s~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|setup_config_done_s~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|start_ws2812_o_s~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|start_ws2812_o_s~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_inst|start_s~feeder_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_inst|start_s~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_inst|p_inputs_latch~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_inst|start_init_s~feeder_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_inst|start_init_s~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_inst|Add0~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_inst|Add0~1\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_inst|Add0~2_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_inst|cnt_24~4_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_inst|cnt_24[0]~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_inst|Add0~3\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_inst|Add0~4_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_inst|cnt_24~3_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_inst|Add0~5\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_inst|Add0~6_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_inst|cnt_24~5_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_inst|cnt_24~6_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_inst|Add0~7\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_inst|Add0~8_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_inst|cnt_24~2_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_inst|frame_done_s~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_inst|cnt_24~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_inst|frame_done_s~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_inst|frame_gen~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_inst|frame_gen~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_inst|cnt_pwm[0]~6_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_inst|cnt_pwm[3]~14\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_inst|cnt_pwm[4]~15_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_inst|cnt_pwm[4]~16\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_inst|cnt_pwm[5]~17_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_inst|Equal1~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_inst|cnt_pwm[5]~8_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_inst|cnt_pwm[0]~7\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_inst|cnt_pwm[1]~9_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_inst|cnt_pwm[1]~10\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_inst|cnt_pwm[2]~11_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_inst|cnt_pwm[2]~12\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_inst|cnt_pwm[3]~13_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_inst|Equal1~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_inst|pwm_done~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_inst|pwm_done~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_inst|frame_done_s~2_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_inst|frame_done_s~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|sel_config_i_s[5]~feeder_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss[5]~feeder_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|sel_config_i_s[4]~feeder_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|sel_config_i_s[7]~feeder_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|sel_config_i_s[6]~feeder_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss[6]~feeder_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|sel_config_i_s[3]~feeder_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|sel_config_i_s[1]~feeder_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|sel_config_i_s[2]~feeder_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss[2]~feeder_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|sel_config_i_s[0]~feeder_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux5~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux5~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][17]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][0]~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][17]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux0~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][23]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~2_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][23]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux2~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux2~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][21]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~3_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][21]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux63~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux63~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[7][23]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~4_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[7][23]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux36~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux36~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[2][21]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~5_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][21]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~2_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_inst|led_config_s[23]~feeder_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux46~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux46~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[3][21]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~63_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[3][21]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux39~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux39~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[2][18]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~50_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][18]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~14_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~11_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux1~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux1~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][22]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~54_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][22]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux48~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux48~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[3][17]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~49_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[3][17]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~12_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~13_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux2~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux2~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux20~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux20~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[1][22]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~64_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][22]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux1~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux1~2_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux38~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux38~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[2][19]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~62_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][19]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux1~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux1~3_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_inst|led_config_s[22]~feeder_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux3~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux3~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][20]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~65_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][20]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux21~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux21~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[1][20]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~60_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][20]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux3~4_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux64~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux64~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[7][20]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~67_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[7][20]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux40~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux40~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[2][16]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~56_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][16]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux47~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux47~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[3][20]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~66_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[3][20]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux37~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux37~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[2][20]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~57_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][20]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux3~5_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux3~6_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux3~7_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_inst|Mux0~12_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_inst|Mux0~13_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux23~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux23~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[1][17]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~52_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][17]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~6_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~3_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~5_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux22~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux22~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[1][18]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~51_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][18]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~4_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux6~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux6~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_inst|led_config_s[17]~feeder_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux4~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux65~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux65~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[7][19]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~61_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[7][19]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux4~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux4~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux4~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][18]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~53_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][18]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~8_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux4~2_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux4~3_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~10_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~9_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux5~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~7_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux5~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_inst|led_config_s[18]~feeder_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux49~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux49~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[3][16]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~55_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[3][16]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux3~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux3~3_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux3~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux24~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux24~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[1][16]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~58_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][16]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux6~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux6~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][16]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~59_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][16]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux3~2_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux7~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux7~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_inst|Mux0~10_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_inst|Mux0~11_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_inst|TH_s~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux42~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux42~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[2][12]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~10_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][12]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux11~2_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux10~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux10~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][12]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~12_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][12]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux60~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux60~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[6][12]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~11_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[6][12]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux11~3_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux66~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux66~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[7][12]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~9_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[7][12]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux44~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux44~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[2][8]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~6_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][8]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux26~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux26~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[1][12]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~8_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][12]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux56~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux56~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[5][12]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~7_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[5][12]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux11~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux11~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux11~4_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_inst|led_config_s[12]~feeder_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux50~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux50~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[3][14]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~26_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[3][14]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux54~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux54~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[4][11]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~22_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[4][11]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux41~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux41~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[2][14]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~23_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][14]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux12~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux12~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][9]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~25_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][9]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux27~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux27~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[1][11]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~24_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][11]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux8~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][14]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~16_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][14]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~2_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux9~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux9~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux0~2_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][8]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~19_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][8]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux15~2_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux30~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux30~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[1][8]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~21_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][8]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux15~3_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux62~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[6][8]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~18_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[6][8]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux55~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux55~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[4][8]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~20_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[4][8]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux15~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux15~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux15~4_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux11~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux11~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][10]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~15_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][10]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux28~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux28~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[1][10]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~17_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][10]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux13~2_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux43~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux43~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[2][9]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~13_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][9]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux7~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][15]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~14_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][15]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux13~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux13~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux13~3_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_inst|led_config_s[10]~feeder_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_inst|Mux0~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_inst|Mux0~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux9~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][13]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~43_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][13]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux12~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux59~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux59~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[6][13]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~44_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[6][13]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux12~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux12~2_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux12~3_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_inst|led_config_s[11]~feeder_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux25~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux25~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[1][13]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~45_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][13]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux51~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux51~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[3][13]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~46_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[3][13]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~10_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~11_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~12_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~13_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux61~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux61~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[6][9]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~47_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[6][9]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~6_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~9_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux29~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux29~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[1][9]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~48_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][9]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~7_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~8_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux14~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux14~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~5_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~3_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~4_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux10~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux10~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_inst|led_config_s[13]~feeder_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_inst|Mux0~7_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_inst|Mux0~8_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[3][0]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~35_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[3][0]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux35~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux35~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[1][0]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~39_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][0]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux17~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux17~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][4]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~38_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][4]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux52~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux52~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[3][4]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~36_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[3][4]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux34~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux34~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[1][4]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~37_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][4]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux19~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux19~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux19~2_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_inst|led_config_s[4]~feeder_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux32~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux32~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[1][6]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~31_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][6]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux31~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux31~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[1][7]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~27_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][7]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux16~7_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux15~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux15~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][6]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~33_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][6]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux16~8_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux14~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux14~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][7]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~34_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][7]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux16~12_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux17~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux17~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux16~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux16~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][5]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~29_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][5]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux21~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux57~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[5][3]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~32_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[5][3]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux16~4_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux21~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux21~2_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_inst|led_config_s[2]~feeder_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux58~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux58~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[5][0]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~40_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[5][0]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux19~3_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux19~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux19~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][0]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~42_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][0]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux19~5_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux45~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux45~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[2][0]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~41_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][0]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux19~4_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux23~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux23~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_inst|Mux0~4_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_inst|Mux0~5_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux16~3_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux33~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux33~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[1][5]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~28_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][5]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux16~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|Mux18~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][1]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~30_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][1]~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux16~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux16~2_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux18~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux18~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_inst|led_config_s[5]~feeder_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux16~10_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux16~9_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux16~11_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux16~6_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux16~5_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux20~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux20~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_inst|led_config_s[3]~feeder_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux22~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux22~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|Mux22~2_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_inst|Mux0~2_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_inst|Mux0~3_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_inst|Mux0~6_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_inst|Mux0~9_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_inst|TH_s~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_inst|TH_s~2_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_inst|TH_s[4]~5_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_inst|TH_s[4]~3_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_inst|d_out_s~1_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_inst|TH_s[1]~4_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_inst|d_out_s~0_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_inst|d_out_s~2_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_inst|d_out_s~3_combout\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_inst|d_out_s~q\ : std_logic;
SIGNAL \ws2812_ctrl_inst|ws2812_inst|d_out_o~combout\ : std_logic;
SIGNAL \uart_ctrl_inst|tx_uart_inst|cnt_data\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uart_ctrl_inst|rx_uart_inst|rx_data_s\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ws2812_ctrl_inst|ws2812_inst|cnt_pwm\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \uart_ctrl_inst|tx_uart_inst|tx_data_s\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_bit\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \ws2812_ctrl_inst|ws2812_inst|cnt_24\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_half_bit\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ws2812_ctrl_inst|ws2812_inst|TH_s\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \ws2812_ctrl_inst|ws2812_inst|led_config_s\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \uart_ctrl_inst|rx_uart_inst|cnt_data\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \reg_ctrl_inst|rdata_reg_o_s\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uart_ctrl_inst|uart_mngt_inst|cnt_byte_rx\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reg_ctrl_inst|rcvd_addr_reg_i_s\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \reg_ctrl_inst|wdata_reg_i_s\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ws2812_ctrl_inst|config_leds_inst|sel_config_i_s\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ws2812_ctrl_inst|ws2812_mngt_inst|ALT_INV_run_config_s~q\ : std_logic;
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
ws2812_data_0_o <= ww_ws2812_data_0_o;
debug_rx_uart_o <= ww_debug_rx_uart_o;
debug_tx_uart_o <= ww_debug_tx_uart_o;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock_i~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock_i~input_o\);
\ws2812_ctrl_inst|ws2812_mngt_inst|ALT_INV_run_config_s~q\ <= NOT \ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\;
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

-- Location: IOOBUF_X43_Y34_N23
\ws2812_data_0_o~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ws2812_ctrl_inst|ws2812_inst|d_out_o~combout\,
	devoe => ww_devoe,
	o => \ws2812_data_0_o~output_o\);

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

-- Location: LCCOMB_X41_Y16_N6
\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[0]~14_combout\ = \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(0) $ (VCC)
-- \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[0]~15\ = CARRY(\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(0),
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

-- Location: LCCOMB_X40_Y16_N16
\uart_ctrl_inst|tx_uart_inst|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|LessThan0~3_combout\ = (!\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(7) & (!\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(11) & (!\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(9) & 
-- !\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(7),
	datab => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(11),
	datac => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(9),
	datad => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(8),
	combout => \uart_ctrl_inst|tx_uart_inst|LessThan0~3_combout\);

-- Location: LCCOMB_X41_Y16_N0
\uart_ctrl_inst|tx_uart_inst|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|LessThan0~1_combout\ = (!\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(3) & (((!\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(0)) # (!\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(2))) # 
-- (!\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(3),
	datab => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(1),
	datac => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(2),
	datad => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(0),
	combout => \uart_ctrl_inst|tx_uart_inst|LessThan0~1_combout\);

-- Location: LCCOMB_X41_Y16_N2
\uart_ctrl_inst|tx_uart_inst|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|LessThan0~2_combout\ = ((!\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(5) & ((\uart_ctrl_inst|tx_uart_inst|LessThan0~1_combout\) # (!\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(4))))) # 
-- (!\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(6),
	datab => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(5),
	datac => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(4),
	datad => \uart_ctrl_inst|tx_uart_inst|LessThan0~1_combout\,
	combout => \uart_ctrl_inst|tx_uart_inst|LessThan0~2_combout\);

-- Location: LCCOMB_X38_Y16_N12
\uart_ctrl_inst|tx_uart_inst|cnt_stop_bit~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|cnt_stop_bit~0_combout\ = (\uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP_BIT_GEN~q\ & (\uart_ctrl_inst|tx_uart_inst|tick_data~q\ $ ((\uart_ctrl_inst|tx_uart_inst|cnt_stop_bit~q\)))) # 
-- (!\uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP_BIT_GEN~q\ & (((\uart_ctrl_inst|tx_uart_inst|cnt_stop_bit~q\ & !\uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|tx_uart_inst|tick_data~q\,
	datab => \uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP_BIT_GEN~q\,
	datac => \uart_ctrl_inst|tx_uart_inst|cnt_stop_bit~q\,
	datad => \uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP~q\,
	combout => \uart_ctrl_inst|tx_uart_inst|cnt_stop_bit~0_combout\);

-- Location: FF_X38_Y16_N13
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

-- Location: LCCOMB_X38_Y16_N10
\uart_ctrl_inst|tx_uart_inst|Selector6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|Selector6~2_combout\ = (!\uart_ctrl_inst|tx_uart_inst|cnt_stop_bit~q\ & \uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP_BIT_GEN~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|tx_uart_inst|cnt_stop_bit~q\,
	datad => \uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP_BIT_GEN~q\,
	combout => \uart_ctrl_inst|tx_uart_inst|Selector6~2_combout\);

-- Location: LCCOMB_X40_Y16_N28
\uart_ctrl_inst|tx_uart_inst|tx_done_s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|tx_done_s~0_combout\ = ((!\uart_ctrl_inst|tx_uart_inst|tx_fsm.LATCH_INPUTS~q\ & ((\uart_ctrl_inst|tx_uart_inst|tx_done_s~q\) # (\uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP~q\)))) # (!\uart_ctrl_inst|tx_uart_inst|tx_fsm.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|tx_uart_inst|tx_fsm.LATCH_INPUTS~q\,
	datab => \uart_ctrl_inst|tx_uart_inst|tx_fsm.IDLE~q\,
	datac => \uart_ctrl_inst|tx_uart_inst|tx_done_s~q\,
	datad => \uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP~q\,
	combout => \uart_ctrl_inst|tx_uart_inst|tx_done_s~0_combout\);

-- Location: FF_X40_Y16_N29
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

-- Location: FF_X41_Y14_N7
\uart_ctrl_inst|uart_mngt_inst|tx_done_i_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	asdata => \uart_ctrl_inst|tx_uart_inst|tx_done_s~q\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|tx_done_i_s~q\);

-- Location: LCCOMB_X41_Y14_N6
\uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx~0_combout\ = (\uart_ctrl_inst|tx_uart_inst|tx_done_s~q\ & !\uart_ctrl_inst|uart_mngt_inst|tx_done_i_s~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|tx_uart_inst|tx_done_s~q\,
	datac => \uart_ctrl_inst|uart_mngt_inst|tx_done_i_s~q\,
	combout => \uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx~0_combout\);

-- Location: LCCOMB_X43_Y17_N0
\reg_ctrl_inst|check_on_s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|check_on_s~0_combout\ = (!\reg_ctrl_inst|data_valid_o_s~q\ & \reg_ctrl_inst|check_on_s~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|data_valid_o_s~q\,
	datac => \reg_ctrl_inst|check_on_s~q\,
	combout => \reg_ctrl_inst|check_on_s~0_combout\);

-- Location: LCCOMB_X41_Y12_N2
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

-- Location: FF_X41_Y12_N3
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

-- Location: LCCOMB_X41_Y12_N24
\uart_ctrl_inst|rx_uart_inst|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|Selector5~0_combout\ = (!\uart_ctrl_inst|rx_uart_inst|rx_fsm.STOP~q\ & \uart_ctrl_inst|rx_uart_inst|rx_fsm.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_ctrl_inst|rx_uart_inst|rx_fsm.STOP~q\,
	datad => \uart_ctrl_inst|rx_uart_inst|rx_fsm.IDLE~q\,
	combout => \uart_ctrl_inst|rx_uart_inst|Selector5~0_combout\);

-- Location: LCCOMB_X40_Y12_N6
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

-- Location: LCCOMB_X40_Y12_N4
\uart_ctrl_inst|rx_uart_inst|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|LessThan0~0_combout\ = ((!\uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(4) & ((!\uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(2)) # (!\uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(3))))) # 
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
	combout => \uart_ctrl_inst|rx_uart_inst|LessThan0~0_combout\);

-- Location: LCCOMB_X40_Y12_N30
\uart_ctrl_inst|rx_uart_inst|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|LessThan0~1_combout\ = (!\uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(8) & (!\uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(7) & (\uart_ctrl_inst|rx_uart_inst|LessThan0~0_combout\ & !\uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(8),
	datab => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(7),
	datac => \uart_ctrl_inst|rx_uart_inst|LessThan0~0_combout\,
	datad => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(6),
	combout => \uart_ctrl_inst|rx_uart_inst|LessThan0~1_combout\);

-- Location: LCCOMB_X40_Y12_N0
\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[5]~18_combout\ = (\uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_START~q\ & ((!\uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(10)) # (!\uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(11),
	datac => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(10),
	datad => \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_START~q\,
	combout => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[5]~18_combout\);

-- Location: LCCOMB_X40_Y12_N2
\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[5]~19_combout\ = ((\uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(11) & (\uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(9) & !\uart_ctrl_inst|rx_uart_inst|LessThan0~1_combout\))) # 
-- (!\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[5]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(11),
	datab => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(9),
	datac => \uart_ctrl_inst|rx_uart_inst|LessThan0~1_combout\,
	datad => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[5]~18_combout\,
	combout => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[5]~19_combout\);

-- Location: LCCOMB_X43_Y12_N4
\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[11]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[11]~20_combout\ = (!\uart_ctrl_inst|rx_uart_inst|rx_fsm.WAIT_START~q\ & ((\uart_ctrl_inst|rx_uart_inst|rx_fsm.STOP~q\) # (\uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_START~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|rx_fsm.WAIT_START~q\,
	datab => \uart_ctrl_inst|rx_uart_inst|rx_fsm.STOP~q\,
	datad => \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_START~q\,
	combout => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[11]~20_combout\);

-- Location: FF_X40_Y12_N7
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
	sclr => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[5]~19_combout\,
	ena => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[11]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(0));

-- Location: LCCOMB_X40_Y12_N8
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

-- Location: FF_X40_Y12_N9
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
	sclr => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[5]~19_combout\,
	ena => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[11]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(1));

-- Location: LCCOMB_X40_Y12_N10
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

-- Location: FF_X40_Y12_N11
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
	sclr => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[5]~19_combout\,
	ena => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[11]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(2));

-- Location: LCCOMB_X40_Y12_N12
\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[3]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[3]~21_combout\ = (\uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(3) & (!\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[2]~17\)) # (!\uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(3) & 
-- ((\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[2]~17\) # (GND)))
-- \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[3]~22\ = CARRY((!\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[2]~17\) # (!\uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(3),
	datad => VCC,
	cin => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[2]~17\,
	combout => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[3]~21_combout\,
	cout => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[3]~22\);

-- Location: FF_X40_Y12_N13
\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[3]~21_combout\,
	clrn => \reset_n~input_o\,
	sclr => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[5]~19_combout\,
	ena => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[11]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(3));

-- Location: LCCOMB_X40_Y12_N14
\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[4]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[4]~23_combout\ = (\uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(4) & (\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[3]~22\ $ (GND))) # (!\uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(4) & 
-- (!\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[3]~22\ & VCC))
-- \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[4]~24\ = CARRY((\uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(4) & !\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[3]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(4),
	datad => VCC,
	cin => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[3]~22\,
	combout => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[4]~23_combout\,
	cout => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[4]~24\);

-- Location: FF_X40_Y12_N15
\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[4]~23_combout\,
	clrn => \reset_n~input_o\,
	sclr => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[5]~19_combout\,
	ena => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[11]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(4));

-- Location: LCCOMB_X40_Y12_N16
\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[5]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[5]~25_combout\ = (\uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(5) & (!\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[4]~24\)) # (!\uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(5) & 
-- ((\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[4]~24\) # (GND)))
-- \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[5]~26\ = CARRY((!\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[4]~24\) # (!\uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(5),
	datad => VCC,
	cin => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[4]~24\,
	combout => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[5]~25_combout\,
	cout => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[5]~26\);

-- Location: FF_X40_Y12_N17
\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[5]~25_combout\,
	clrn => \reset_n~input_o\,
	sclr => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[5]~19_combout\,
	ena => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[11]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(5));

-- Location: LCCOMB_X40_Y12_N18
\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[6]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[6]~27_combout\ = (\uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(6) & (\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[5]~26\ $ (GND))) # (!\uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(6) & 
-- (!\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[5]~26\ & VCC))
-- \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[6]~28\ = CARRY((\uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(6) & !\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[5]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(6),
	datad => VCC,
	cin => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[5]~26\,
	combout => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[6]~27_combout\,
	cout => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[6]~28\);

-- Location: FF_X40_Y12_N19
\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[6]~27_combout\,
	clrn => \reset_n~input_o\,
	sclr => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[5]~19_combout\,
	ena => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[11]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(6));

-- Location: LCCOMB_X40_Y12_N20
\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[7]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[7]~29_combout\ = (\uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(7) & (!\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[6]~28\)) # (!\uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(7) & 
-- ((\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[6]~28\) # (GND)))
-- \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[7]~30\ = CARRY((!\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[6]~28\) # (!\uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(7),
	datad => VCC,
	cin => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[6]~28\,
	combout => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[7]~29_combout\,
	cout => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[7]~30\);

-- Location: FF_X40_Y12_N21
\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[7]~29_combout\,
	clrn => \reset_n~input_o\,
	sclr => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[5]~19_combout\,
	ena => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[11]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(7));

-- Location: LCCOMB_X40_Y12_N22
\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[8]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[8]~31_combout\ = (\uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(8) & (\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[7]~30\ $ (GND))) # (!\uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(8) & 
-- (!\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[7]~30\ & VCC))
-- \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[8]~32\ = CARRY((\uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(8) & !\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[7]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(8),
	datad => VCC,
	cin => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[7]~30\,
	combout => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[8]~31_combout\,
	cout => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[8]~32\);

-- Location: FF_X40_Y12_N23
\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[8]~31_combout\,
	clrn => \reset_n~input_o\,
	sclr => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[5]~19_combout\,
	ena => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[11]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(8));

-- Location: LCCOMB_X40_Y12_N24
\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[9]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[9]~33_combout\ = (\uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(9) & (!\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[8]~32\)) # (!\uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(9) & 
-- ((\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[8]~32\) # (GND)))
-- \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[9]~34\ = CARRY((!\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[8]~32\) # (!\uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(9),
	datad => VCC,
	cin => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[8]~32\,
	combout => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[9]~33_combout\,
	cout => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[9]~34\);

-- Location: FF_X40_Y12_N25
\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[9]~33_combout\,
	clrn => \reset_n~input_o\,
	sclr => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[5]~19_combout\,
	ena => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[11]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(9));

-- Location: LCCOMB_X40_Y12_N26
\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[10]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[10]~35_combout\ = (\uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(10) & (\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[9]~34\ $ (GND))) # (!\uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(10) & 
-- (!\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[9]~34\ & VCC))
-- \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[10]~36\ = CARRY((\uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(10) & !\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[9]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(10),
	datad => VCC,
	cin => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[9]~34\,
	combout => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[10]~35_combout\,
	cout => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[10]~36\);

-- Location: FF_X40_Y12_N27
\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[10]~35_combout\,
	clrn => \reset_n~input_o\,
	sclr => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[5]~19_combout\,
	ena => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[11]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(10));

-- Location: LCCOMB_X40_Y12_N28
\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[11]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[11]~37_combout\ = \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[10]~36\ $ (\uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(11),
	cin => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[10]~36\,
	combout => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[11]~37_combout\);

-- Location: FF_X40_Y12_N29
\uart_ctrl_inst|rx_uart_inst|cnt_half_bit[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[11]~37_combout\,
	clrn => \reset_n~input_o\,
	sclr => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[5]~19_combout\,
	ena => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit[11]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(11));

-- Location: LCCOMB_X41_Y12_N30
\uart_ctrl_inst|rx_uart_inst|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|LessThan0~2_combout\ = ((!\uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(10) & ((\uart_ctrl_inst|rx_uart_inst|LessThan0~1_combout\) # (!\uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(9))))) # 
-- (!\uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(11),
	datab => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(9),
	datac => \uart_ctrl_inst|rx_uart_inst|cnt_half_bit\(10),
	datad => \uart_ctrl_inst|rx_uart_inst|LessThan0~1_combout\,
	combout => \uart_ctrl_inst|rx_uart_inst|LessThan0~2_combout\);

-- Location: LCCOMB_X43_Y12_N14
\uart_ctrl_inst|rx_uart_inst|tick_data~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|tick_data~1_combout\ = (\uart_ctrl_inst|rx_uart_inst|tick_data~q\ & ((\uart_ctrl_inst|rx_uart_inst|rx_fsm.WAIT_START~q\) # (!\uart_ctrl_inst|rx_uart_inst|rx_fsm.STOP~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_ctrl_inst|rx_uart_inst|rx_fsm.STOP~q\,
	datac => \uart_ctrl_inst|rx_uart_inst|tick_data~q\,
	datad => \uart_ctrl_inst|rx_uart_inst|rx_fsm.WAIT_START~q\,
	combout => \uart_ctrl_inst|rx_uart_inst|tick_data~1_combout\);

-- Location: LCCOMB_X43_Y13_N14
\uart_ctrl_inst|rx_uart_inst|cnt_data~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|cnt_data~2_combout\ = (!\uart_ctrl_inst|rx_uart_inst|cnt_data\(3) & (!\uart_ctrl_inst|rx_uart_inst|cnt_data\(0) & \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_DATA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|cnt_data\(3),
	datac => \uart_ctrl_inst|rx_uart_inst|cnt_data\(0),
	datad => \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_DATA~q\,
	combout => \uart_ctrl_inst|rx_uart_inst|cnt_data~2_combout\);

-- Location: LCCOMB_X43_Y13_N26
\uart_ctrl_inst|rx_uart_inst|cnt_data[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|cnt_data[3]~1_combout\ = (\uart_ctrl_inst|rx_uart_inst|tick_data~q\) # (!\uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_ctrl_inst|rx_uart_inst|tick_data~q\,
	datad => \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_DATA~q\,
	combout => \uart_ctrl_inst|rx_uart_inst|cnt_data[3]~1_combout\);

-- Location: FF_X43_Y13_N15
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
	ena => \uart_ctrl_inst|rx_uart_inst|cnt_data[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|rx_uart_inst|cnt_data\(0));

-- Location: LCCOMB_X43_Y13_N16
\uart_ctrl_inst|rx_uart_inst|cnt_data~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|cnt_data~3_combout\ = (\uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_DATA~q\ & (!\uart_ctrl_inst|rx_uart_inst|cnt_data\(3) & (\uart_ctrl_inst|rx_uart_inst|cnt_data\(0) $ (\uart_ctrl_inst|rx_uart_inst|cnt_data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_DATA~q\,
	datab => \uart_ctrl_inst|rx_uart_inst|cnt_data\(0),
	datac => \uart_ctrl_inst|rx_uart_inst|cnt_data\(1),
	datad => \uart_ctrl_inst|rx_uart_inst|cnt_data\(3),
	combout => \uart_ctrl_inst|rx_uart_inst|cnt_data~3_combout\);

-- Location: FF_X43_Y13_N17
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
	ena => \uart_ctrl_inst|rx_uart_inst|cnt_data[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|rx_uart_inst|cnt_data\(1));

-- Location: LCCOMB_X44_Y13_N4
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

-- Location: LCCOMB_X43_Y13_N12
\uart_ctrl_inst|rx_uart_inst|cnt_data~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|cnt_data~4_combout\ = (\uart_ctrl_inst|rx_uart_inst|cnt_data\(2) & (\uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_DATA~q\ & (!\uart_ctrl_inst|rx_uart_inst|cnt_data\(3) & \uart_ctrl_inst|rx_uart_inst|p_rx_fsm_mng~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|cnt_data\(2),
	datab => \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_DATA~q\,
	datac => \uart_ctrl_inst|rx_uart_inst|cnt_data\(3),
	datad => \uart_ctrl_inst|rx_uart_inst|p_rx_fsm_mng~0_combout\,
	combout => \uart_ctrl_inst|rx_uart_inst|cnt_data~4_combout\);

-- Location: FF_X43_Y13_N13
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
	ena => \uart_ctrl_inst|rx_uart_inst|cnt_data[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|rx_uart_inst|cnt_data\(3));

-- Location: LCCOMB_X43_Y13_N22
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

-- Location: FF_X43_Y13_N23
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
	ena => \uart_ctrl_inst|rx_uart_inst|cnt_data[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|rx_uart_inst|cnt_data\(2));

-- Location: LCCOMB_X43_Y13_N30
\uart_ctrl_inst|rx_uart_inst|p_rx_fsm_mng~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|p_rx_fsm_mng~1_combout\ = (\uart_ctrl_inst|rx_uart_inst|cnt_data\(2) & (\uart_ctrl_inst|rx_uart_inst|cnt_data\(1) & (\uart_ctrl_inst|rx_uart_inst|cnt_data\(0) & \uart_ctrl_inst|rx_uart_inst|tick_data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|cnt_data\(2),
	datab => \uart_ctrl_inst|rx_uart_inst|cnt_data\(1),
	datac => \uart_ctrl_inst|rx_uart_inst|cnt_data\(0),
	datad => \uart_ctrl_inst|rx_uart_inst|tick_data~q\,
	combout => \uart_ctrl_inst|rx_uart_inst|p_rx_fsm_mng~1_combout\);

-- Location: LCCOMB_X41_Y12_N14
\uart_ctrl_inst|rx_uart_inst|Selector3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|Selector3~3_combout\ = (\uart_ctrl_inst|rx_uart_inst|Selector3~2_combout\) # ((\uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_DATA~q\ & ((\uart_ctrl_inst|rx_uart_inst|cnt_data\(3)) # 
-- (!\uart_ctrl_inst|rx_uart_inst|p_rx_fsm_mng~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|Selector3~2_combout\,
	datab => \uart_ctrl_inst|rx_uart_inst|p_rx_fsm_mng~1_combout\,
	datac => \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_DATA~q\,
	datad => \uart_ctrl_inst|rx_uart_inst|cnt_data\(3),
	combout => \uart_ctrl_inst|rx_uart_inst|Selector3~3_combout\);

-- Location: FF_X41_Y12_N15
\uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|rx_uart_inst|Selector3~3_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_DATA~q\);

-- Location: LCCOMB_X41_Y12_N4
\uart_ctrl_inst|rx_uart_inst|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|Selector5~1_combout\ = (\uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_STOP_BIT~q\ & (\uart_ctrl_inst|rx_uart_inst|Selector5~0_combout\ & ((\uart_ctrl_inst|rx_uart_inst|cnt_stop_bit~q\) # 
-- (!\uart_ctrl_inst|rx_uart_inst|tick_data~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|cnt_stop_bit~q\,
	datab => \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_STOP_BIT~q\,
	datac => \uart_ctrl_inst|rx_uart_inst|tick_data~q\,
	datad => \uart_ctrl_inst|rx_uart_inst|Selector5~0_combout\,
	combout => \uart_ctrl_inst|rx_uart_inst|Selector5~1_combout\);

-- Location: LCCOMB_X41_Y12_N6
\uart_ctrl_inst|rx_uart_inst|p_rx_fsm_mng~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|p_rx_fsm_mng~2_combout\ = (\uart_ctrl_inst|rx_uart_inst|p_rx_fsm_mng~1_combout\ & !\uart_ctrl_inst|rx_uart_inst|cnt_data\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_ctrl_inst|rx_uart_inst|p_rx_fsm_mng~1_combout\,
	datad => \uart_ctrl_inst|rx_uart_inst|cnt_data\(3),
	combout => \uart_ctrl_inst|rx_uart_inst|p_rx_fsm_mng~2_combout\);

-- Location: LCCOMB_X41_Y12_N28
\uart_ctrl_inst|rx_uart_inst|Selector5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|Selector5~2_combout\ = (!\uart_ctrl_inst|rx_uart_inst|Selector3~2_combout\ & ((\uart_ctrl_inst|rx_uart_inst|Selector5~1_combout\) # ((\uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_DATA~q\ & 
-- \uart_ctrl_inst|rx_uart_inst|p_rx_fsm_mng~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|Selector3~2_combout\,
	datab => \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_DATA~q\,
	datac => \uart_ctrl_inst|rx_uart_inst|Selector5~1_combout\,
	datad => \uart_ctrl_inst|rx_uart_inst|p_rx_fsm_mng~2_combout\,
	combout => \uart_ctrl_inst|rx_uart_inst|Selector5~2_combout\);

-- Location: FF_X41_Y12_N29
\uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_STOP_BIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|rx_uart_inst|Selector5~2_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_STOP_BIT~q\);

-- Location: LCCOMB_X43_Y12_N8
\uart_ctrl_inst|rx_uart_inst|tick_data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|tick_data~0_combout\ = (\uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_STOP_BIT~q\) # (\uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_STOP_BIT~q\,
	datad => \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_DATA~q\,
	combout => \uart_ctrl_inst|rx_uart_inst|tick_data~0_combout\);

-- Location: LCCOMB_X44_Y12_N0
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

-- Location: LCCOMB_X44_Y12_N20
\uart_ctrl_inst|rx_uart_inst|cnt_bit[10]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|cnt_bit[10]~36_combout\ = (\uart_ctrl_inst|rx_uart_inst|cnt_bit\(10) & (\uart_ctrl_inst|rx_uart_inst|cnt_bit[9]~35\ $ (GND))) # (!\uart_ctrl_inst|rx_uart_inst|cnt_bit\(10) & (!\uart_ctrl_inst|rx_uart_inst|cnt_bit[9]~35\ & 
-- VCC))
-- \uart_ctrl_inst|rx_uart_inst|cnt_bit[10]~37\ = CARRY((\uart_ctrl_inst|rx_uart_inst|cnt_bit\(10) & !\uart_ctrl_inst|rx_uart_inst|cnt_bit[9]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_ctrl_inst|rx_uart_inst|cnt_bit\(10),
	datad => VCC,
	cin => \uart_ctrl_inst|rx_uart_inst|cnt_bit[9]~35\,
	combout => \uart_ctrl_inst|rx_uart_inst|cnt_bit[10]~36_combout\,
	cout => \uart_ctrl_inst|rx_uart_inst|cnt_bit[10]~37\);

-- Location: LCCOMB_X44_Y12_N22
\uart_ctrl_inst|rx_uart_inst|cnt_bit[11]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|cnt_bit[11]~38_combout\ = (\uart_ctrl_inst|rx_uart_inst|cnt_bit\(11) & (!\uart_ctrl_inst|rx_uart_inst|cnt_bit[10]~37\)) # (!\uart_ctrl_inst|rx_uart_inst|cnt_bit\(11) & ((\uart_ctrl_inst|rx_uart_inst|cnt_bit[10]~37\) # (GND)))
-- \uart_ctrl_inst|rx_uart_inst|cnt_bit[11]~39\ = CARRY((!\uart_ctrl_inst|rx_uart_inst|cnt_bit[10]~37\) # (!\uart_ctrl_inst|rx_uart_inst|cnt_bit\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|cnt_bit\(11),
	datad => VCC,
	cin => \uart_ctrl_inst|rx_uart_inst|cnt_bit[10]~37\,
	combout => \uart_ctrl_inst|rx_uart_inst|cnt_bit[11]~38_combout\,
	cout => \uart_ctrl_inst|rx_uart_inst|cnt_bit[11]~39\);

-- Location: LCCOMB_X43_Y12_N6
\uart_ctrl_inst|rx_uart_inst|tick_data~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|tick_data~4_combout\ = (!\uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_STOP_BIT~q\ & !\uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_STOP_BIT~q\,
	datad => \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_DATA~q\,
	combout => \uart_ctrl_inst|rx_uart_inst|tick_data~4_combout\);

-- Location: LCCOMB_X43_Y12_N10
\uart_ctrl_inst|rx_uart_inst|cnt_bit[12]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|cnt_bit[12]~23_combout\ = (!\uart_ctrl_inst|rx_uart_inst|rx_fsm.WAIT_START~q\ & (!\uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_START~q\ & ((\uart_ctrl_inst|rx_uart_inst|rx_fsm.STOP~q\) # 
-- (!\uart_ctrl_inst|rx_uart_inst|tick_data~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|rx_fsm.WAIT_START~q\,
	datab => \uart_ctrl_inst|rx_uart_inst|rx_fsm.STOP~q\,
	datac => \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_START~q\,
	datad => \uart_ctrl_inst|rx_uart_inst|tick_data~4_combout\,
	combout => \uart_ctrl_inst|rx_uart_inst|cnt_bit[12]~23_combout\);

-- Location: FF_X44_Y12_N23
\uart_ctrl_inst|rx_uart_inst|cnt_bit[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|rx_uart_inst|cnt_bit[11]~38_combout\,
	clrn => \reset_n~input_o\,
	sclr => \uart_ctrl_inst|rx_uart_inst|cnt_bit[3]~22_combout\,
	ena => \uart_ctrl_inst|rx_uart_inst|cnt_bit[12]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|rx_uart_inst|cnt_bit\(11));

-- Location: LCCOMB_X44_Y12_N26
\uart_ctrl_inst|rx_uart_inst|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|LessThan1~0_combout\ = ((!\uart_ctrl_inst|rx_uart_inst|cnt_bit\(5) & ((!\uart_ctrl_inst|rx_uart_inst|cnt_bit\(4)) # (!\uart_ctrl_inst|rx_uart_inst|cnt_bit\(3))))) # (!\uart_ctrl_inst|rx_uart_inst|cnt_bit\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|cnt_bit\(3),
	datab => \uart_ctrl_inst|rx_uart_inst|cnt_bit\(4),
	datac => \uart_ctrl_inst|rx_uart_inst|cnt_bit\(6),
	datad => \uart_ctrl_inst|rx_uart_inst|cnt_bit\(5),
	combout => \uart_ctrl_inst|rx_uart_inst|LessThan1~0_combout\);

-- Location: LCCOMB_X44_Y12_N28
\uart_ctrl_inst|rx_uart_inst|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|LessThan1~1_combout\ = (\uart_ctrl_inst|rx_uart_inst|LessThan1~0_combout\ & (!\uart_ctrl_inst|rx_uart_inst|cnt_bit\(8) & (!\uart_ctrl_inst|rx_uart_inst|cnt_bit\(7) & !\uart_ctrl_inst|rx_uart_inst|cnt_bit\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|LessThan1~0_combout\,
	datab => \uart_ctrl_inst|rx_uart_inst|cnt_bit\(8),
	datac => \uart_ctrl_inst|rx_uart_inst|cnt_bit\(7),
	datad => \uart_ctrl_inst|rx_uart_inst|cnt_bit\(9),
	combout => \uart_ctrl_inst|rx_uart_inst|LessThan1~1_combout\);

-- Location: LCCOMB_X44_Y12_N24
\uart_ctrl_inst|rx_uart_inst|cnt_bit[12]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|cnt_bit[12]~40_combout\ = \uart_ctrl_inst|rx_uart_inst|cnt_bit[11]~39\ $ (!\uart_ctrl_inst|rx_uart_inst|cnt_bit\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \uart_ctrl_inst|rx_uart_inst|cnt_bit\(12),
	cin => \uart_ctrl_inst|rx_uart_inst|cnt_bit[11]~39\,
	combout => \uart_ctrl_inst|rx_uart_inst|cnt_bit[12]~40_combout\);

-- Location: FF_X44_Y12_N25
\uart_ctrl_inst|rx_uart_inst|cnt_bit[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|rx_uart_inst|cnt_bit[12]~40_combout\,
	clrn => \reset_n~input_o\,
	sclr => \uart_ctrl_inst|rx_uart_inst|cnt_bit[3]~22_combout\,
	ena => \uart_ctrl_inst|rx_uart_inst|cnt_bit[12]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|rx_uart_inst|cnt_bit\(12));

-- Location: LCCOMB_X43_Y12_N12
\uart_ctrl_inst|rx_uart_inst|cnt_bit[3]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|cnt_bit[3]~21_combout\ = ((!\uart_ctrl_inst|rx_uart_inst|cnt_bit\(10) & !\uart_ctrl_inst|rx_uart_inst|cnt_bit\(11))) # (!\uart_ctrl_inst|rx_uart_inst|cnt_bit\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_ctrl_inst|rx_uart_inst|cnt_bit\(12),
	datac => \uart_ctrl_inst|rx_uart_inst|cnt_bit\(10),
	datad => \uart_ctrl_inst|rx_uart_inst|cnt_bit\(11),
	combout => \uart_ctrl_inst|rx_uart_inst|cnt_bit[3]~21_combout\);

-- Location: LCCOMB_X44_Y12_N30
\uart_ctrl_inst|rx_uart_inst|cnt_bit[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|cnt_bit[3]~22_combout\ = (\uart_ctrl_inst|rx_uart_inst|tick_data~4_combout\) # ((!\uart_ctrl_inst|rx_uart_inst|cnt_bit[3]~21_combout\ & ((\uart_ctrl_inst|rx_uart_inst|cnt_bit\(11)) # 
-- (!\uart_ctrl_inst|rx_uart_inst|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|cnt_bit\(11),
	datab => \uart_ctrl_inst|rx_uart_inst|LessThan1~1_combout\,
	datac => \uart_ctrl_inst|rx_uart_inst|tick_data~4_combout\,
	datad => \uart_ctrl_inst|rx_uart_inst|cnt_bit[3]~21_combout\,
	combout => \uart_ctrl_inst|rx_uart_inst|cnt_bit[3]~22_combout\);

-- Location: FF_X44_Y12_N1
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
	sclr => \uart_ctrl_inst|rx_uart_inst|cnt_bit[3]~22_combout\,
	ena => \uart_ctrl_inst|rx_uart_inst|cnt_bit[12]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|rx_uart_inst|cnt_bit\(0));

-- Location: LCCOMB_X44_Y12_N2
\uart_ctrl_inst|rx_uart_inst|cnt_bit[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|cnt_bit[1]~15_combout\ = (\uart_ctrl_inst|rx_uart_inst|cnt_bit\(1) & (!\uart_ctrl_inst|rx_uart_inst|cnt_bit[0]~14\)) # (!\uart_ctrl_inst|rx_uart_inst|cnt_bit\(1) & ((\uart_ctrl_inst|rx_uart_inst|cnt_bit[0]~14\) # (GND)))
-- \uart_ctrl_inst|rx_uart_inst|cnt_bit[1]~16\ = CARRY((!\uart_ctrl_inst|rx_uart_inst|cnt_bit[0]~14\) # (!\uart_ctrl_inst|rx_uart_inst|cnt_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_ctrl_inst|rx_uart_inst|cnt_bit\(1),
	datad => VCC,
	cin => \uart_ctrl_inst|rx_uart_inst|cnt_bit[0]~14\,
	combout => \uart_ctrl_inst|rx_uart_inst|cnt_bit[1]~15_combout\,
	cout => \uart_ctrl_inst|rx_uart_inst|cnt_bit[1]~16\);

-- Location: FF_X44_Y12_N3
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
	sclr => \uart_ctrl_inst|rx_uart_inst|cnt_bit[3]~22_combout\,
	ena => \uart_ctrl_inst|rx_uart_inst|cnt_bit[12]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|rx_uart_inst|cnt_bit\(1));

-- Location: LCCOMB_X44_Y12_N4
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

-- Location: FF_X44_Y12_N5
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
	sclr => \uart_ctrl_inst|rx_uart_inst|cnt_bit[3]~22_combout\,
	ena => \uart_ctrl_inst|rx_uart_inst|cnt_bit[12]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|rx_uart_inst|cnt_bit\(2));

-- Location: LCCOMB_X44_Y12_N6
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

-- Location: FF_X44_Y12_N7
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
	sclr => \uart_ctrl_inst|rx_uart_inst|cnt_bit[3]~22_combout\,
	ena => \uart_ctrl_inst|rx_uart_inst|cnt_bit[12]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|rx_uart_inst|cnt_bit\(3));

-- Location: LCCOMB_X44_Y12_N8
\uart_ctrl_inst|rx_uart_inst|cnt_bit[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|cnt_bit[4]~24_combout\ = (\uart_ctrl_inst|rx_uart_inst|cnt_bit\(4) & (\uart_ctrl_inst|rx_uart_inst|cnt_bit[3]~20\ $ (GND))) # (!\uart_ctrl_inst|rx_uart_inst|cnt_bit\(4) & (!\uart_ctrl_inst|rx_uart_inst|cnt_bit[3]~20\ & VCC))
-- \uart_ctrl_inst|rx_uart_inst|cnt_bit[4]~25\ = CARRY((\uart_ctrl_inst|rx_uart_inst|cnt_bit\(4) & !\uart_ctrl_inst|rx_uart_inst|cnt_bit[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_ctrl_inst|rx_uart_inst|cnt_bit\(4),
	datad => VCC,
	cin => \uart_ctrl_inst|rx_uart_inst|cnt_bit[3]~20\,
	combout => \uart_ctrl_inst|rx_uart_inst|cnt_bit[4]~24_combout\,
	cout => \uart_ctrl_inst|rx_uart_inst|cnt_bit[4]~25\);

-- Location: FF_X44_Y12_N9
\uart_ctrl_inst|rx_uart_inst|cnt_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|rx_uart_inst|cnt_bit[4]~24_combout\,
	clrn => \reset_n~input_o\,
	sclr => \uart_ctrl_inst|rx_uart_inst|cnt_bit[3]~22_combout\,
	ena => \uart_ctrl_inst|rx_uart_inst|cnt_bit[12]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|rx_uart_inst|cnt_bit\(4));

-- Location: LCCOMB_X44_Y12_N10
\uart_ctrl_inst|rx_uart_inst|cnt_bit[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|cnt_bit[5]~26_combout\ = (\uart_ctrl_inst|rx_uart_inst|cnt_bit\(5) & (!\uart_ctrl_inst|rx_uart_inst|cnt_bit[4]~25\)) # (!\uart_ctrl_inst|rx_uart_inst|cnt_bit\(5) & ((\uart_ctrl_inst|rx_uart_inst|cnt_bit[4]~25\) # (GND)))
-- \uart_ctrl_inst|rx_uart_inst|cnt_bit[5]~27\ = CARRY((!\uart_ctrl_inst|rx_uart_inst|cnt_bit[4]~25\) # (!\uart_ctrl_inst|rx_uart_inst|cnt_bit\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|cnt_bit\(5),
	datad => VCC,
	cin => \uart_ctrl_inst|rx_uart_inst|cnt_bit[4]~25\,
	combout => \uart_ctrl_inst|rx_uart_inst|cnt_bit[5]~26_combout\,
	cout => \uart_ctrl_inst|rx_uart_inst|cnt_bit[5]~27\);

-- Location: FF_X44_Y12_N11
\uart_ctrl_inst|rx_uart_inst|cnt_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|rx_uart_inst|cnt_bit[5]~26_combout\,
	clrn => \reset_n~input_o\,
	sclr => \uart_ctrl_inst|rx_uart_inst|cnt_bit[3]~22_combout\,
	ena => \uart_ctrl_inst|rx_uart_inst|cnt_bit[12]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|rx_uart_inst|cnt_bit\(5));

-- Location: LCCOMB_X44_Y12_N12
\uart_ctrl_inst|rx_uart_inst|cnt_bit[6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|cnt_bit[6]~28_combout\ = (\uart_ctrl_inst|rx_uart_inst|cnt_bit\(6) & (\uart_ctrl_inst|rx_uart_inst|cnt_bit[5]~27\ $ (GND))) # (!\uart_ctrl_inst|rx_uart_inst|cnt_bit\(6) & (!\uart_ctrl_inst|rx_uart_inst|cnt_bit[5]~27\ & VCC))
-- \uart_ctrl_inst|rx_uart_inst|cnt_bit[6]~29\ = CARRY((\uart_ctrl_inst|rx_uart_inst|cnt_bit\(6) & !\uart_ctrl_inst|rx_uart_inst|cnt_bit[5]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|cnt_bit\(6),
	datad => VCC,
	cin => \uart_ctrl_inst|rx_uart_inst|cnt_bit[5]~27\,
	combout => \uart_ctrl_inst|rx_uart_inst|cnt_bit[6]~28_combout\,
	cout => \uart_ctrl_inst|rx_uart_inst|cnt_bit[6]~29\);

-- Location: FF_X44_Y12_N13
\uart_ctrl_inst|rx_uart_inst|cnt_bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|rx_uart_inst|cnt_bit[6]~28_combout\,
	clrn => \reset_n~input_o\,
	sclr => \uart_ctrl_inst|rx_uart_inst|cnt_bit[3]~22_combout\,
	ena => \uart_ctrl_inst|rx_uart_inst|cnt_bit[12]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|rx_uart_inst|cnt_bit\(6));

-- Location: LCCOMB_X44_Y12_N14
\uart_ctrl_inst|rx_uart_inst|cnt_bit[7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|cnt_bit[7]~30_combout\ = (\uart_ctrl_inst|rx_uart_inst|cnt_bit\(7) & (!\uart_ctrl_inst|rx_uart_inst|cnt_bit[6]~29\)) # (!\uart_ctrl_inst|rx_uart_inst|cnt_bit\(7) & ((\uart_ctrl_inst|rx_uart_inst|cnt_bit[6]~29\) # (GND)))
-- \uart_ctrl_inst|rx_uart_inst|cnt_bit[7]~31\ = CARRY((!\uart_ctrl_inst|rx_uart_inst|cnt_bit[6]~29\) # (!\uart_ctrl_inst|rx_uart_inst|cnt_bit\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_ctrl_inst|rx_uart_inst|cnt_bit\(7),
	datad => VCC,
	cin => \uart_ctrl_inst|rx_uart_inst|cnt_bit[6]~29\,
	combout => \uart_ctrl_inst|rx_uart_inst|cnt_bit[7]~30_combout\,
	cout => \uart_ctrl_inst|rx_uart_inst|cnt_bit[7]~31\);

-- Location: FF_X44_Y12_N15
\uart_ctrl_inst|rx_uart_inst|cnt_bit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|rx_uart_inst|cnt_bit[7]~30_combout\,
	clrn => \reset_n~input_o\,
	sclr => \uart_ctrl_inst|rx_uart_inst|cnt_bit[3]~22_combout\,
	ena => \uart_ctrl_inst|rx_uart_inst|cnt_bit[12]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|rx_uart_inst|cnt_bit\(7));

-- Location: LCCOMB_X44_Y12_N16
\uart_ctrl_inst|rx_uart_inst|cnt_bit[8]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|cnt_bit[8]~32_combout\ = (\uart_ctrl_inst|rx_uart_inst|cnt_bit\(8) & (\uart_ctrl_inst|rx_uart_inst|cnt_bit[7]~31\ $ (GND))) # (!\uart_ctrl_inst|rx_uart_inst|cnt_bit\(8) & (!\uart_ctrl_inst|rx_uart_inst|cnt_bit[7]~31\ & VCC))
-- \uart_ctrl_inst|rx_uart_inst|cnt_bit[8]~33\ = CARRY((\uart_ctrl_inst|rx_uart_inst|cnt_bit\(8) & !\uart_ctrl_inst|rx_uart_inst|cnt_bit[7]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_ctrl_inst|rx_uart_inst|cnt_bit\(8),
	datad => VCC,
	cin => \uart_ctrl_inst|rx_uart_inst|cnt_bit[7]~31\,
	combout => \uart_ctrl_inst|rx_uart_inst|cnt_bit[8]~32_combout\,
	cout => \uart_ctrl_inst|rx_uart_inst|cnt_bit[8]~33\);

-- Location: FF_X44_Y12_N17
\uart_ctrl_inst|rx_uart_inst|cnt_bit[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|rx_uart_inst|cnt_bit[8]~32_combout\,
	clrn => \reset_n~input_o\,
	sclr => \uart_ctrl_inst|rx_uart_inst|cnt_bit[3]~22_combout\,
	ena => \uart_ctrl_inst|rx_uart_inst|cnt_bit[12]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|rx_uart_inst|cnt_bit\(8));

-- Location: LCCOMB_X44_Y12_N18
\uart_ctrl_inst|rx_uart_inst|cnt_bit[9]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|cnt_bit[9]~34_combout\ = (\uart_ctrl_inst|rx_uart_inst|cnt_bit\(9) & (!\uart_ctrl_inst|rx_uart_inst|cnt_bit[8]~33\)) # (!\uart_ctrl_inst|rx_uart_inst|cnt_bit\(9) & ((\uart_ctrl_inst|rx_uart_inst|cnt_bit[8]~33\) # (GND)))
-- \uart_ctrl_inst|rx_uart_inst|cnt_bit[9]~35\ = CARRY((!\uart_ctrl_inst|rx_uart_inst|cnt_bit[8]~33\) # (!\uart_ctrl_inst|rx_uart_inst|cnt_bit\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_ctrl_inst|rx_uart_inst|cnt_bit\(9),
	datad => VCC,
	cin => \uart_ctrl_inst|rx_uart_inst|cnt_bit[8]~33\,
	combout => \uart_ctrl_inst|rx_uart_inst|cnt_bit[9]~34_combout\,
	cout => \uart_ctrl_inst|rx_uart_inst|cnt_bit[9]~35\);

-- Location: FF_X44_Y12_N19
\uart_ctrl_inst|rx_uart_inst|cnt_bit[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|rx_uart_inst|cnt_bit[9]~34_combout\,
	clrn => \reset_n~input_o\,
	sclr => \uart_ctrl_inst|rx_uart_inst|cnt_bit[3]~22_combout\,
	ena => \uart_ctrl_inst|rx_uart_inst|cnt_bit[12]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|rx_uart_inst|cnt_bit\(9));

-- Location: FF_X44_Y12_N21
\uart_ctrl_inst|rx_uart_inst|cnt_bit[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|rx_uart_inst|cnt_bit[10]~36_combout\,
	clrn => \reset_n~input_o\,
	sclr => \uart_ctrl_inst|rx_uart_inst|cnt_bit[3]~22_combout\,
	ena => \uart_ctrl_inst|rx_uart_inst|cnt_bit[12]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|rx_uart_inst|cnt_bit\(10));

-- Location: LCCOMB_X43_Y12_N18
\uart_ctrl_inst|rx_uart_inst|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|LessThan1~2_combout\ = ((!\uart_ctrl_inst|rx_uart_inst|cnt_bit\(11) & ((\uart_ctrl_inst|rx_uart_inst|LessThan1~1_combout\) # (!\uart_ctrl_inst|rx_uart_inst|cnt_bit\(10))))) # (!\uart_ctrl_inst|rx_uart_inst|cnt_bit\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|cnt_bit\(10),
	datab => \uart_ctrl_inst|rx_uart_inst|cnt_bit\(11),
	datac => \uart_ctrl_inst|rx_uart_inst|cnt_bit\(12),
	datad => \uart_ctrl_inst|rx_uart_inst|LessThan1~1_combout\,
	combout => \uart_ctrl_inst|rx_uart_inst|LessThan1~2_combout\);

-- Location: LCCOMB_X43_Y12_N28
\uart_ctrl_inst|rx_uart_inst|tick_data~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|tick_data~2_combout\ = (\uart_ctrl_inst|rx_uart_inst|rx_fsm.WAIT_START~q\ & (\uart_ctrl_inst|rx_uart_inst|tick_data~1_combout\)) # (!\uart_ctrl_inst|rx_uart_inst|rx_fsm.WAIT_START~q\ & 
-- ((\uart_ctrl_inst|rx_uart_inst|tick_data~0_combout\ & ((!\uart_ctrl_inst|rx_uart_inst|LessThan1~2_combout\))) # (!\uart_ctrl_inst|rx_uart_inst|tick_data~0_combout\ & (\uart_ctrl_inst|rx_uart_inst|tick_data~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|rx_fsm.WAIT_START~q\,
	datab => \uart_ctrl_inst|rx_uart_inst|tick_data~1_combout\,
	datac => \uart_ctrl_inst|rx_uart_inst|tick_data~0_combout\,
	datad => \uart_ctrl_inst|rx_uart_inst|LessThan1~2_combout\,
	combout => \uart_ctrl_inst|rx_uart_inst|tick_data~2_combout\);

-- Location: LCCOMB_X43_Y12_N0
\uart_ctrl_inst|rx_uart_inst|tick_data~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|tick_data~3_combout\ = (\uart_ctrl_inst|rx_uart_inst|rx_fsm.WAIT_START~q\ & (((\uart_ctrl_inst|rx_uart_inst|tick_data~2_combout\)))) # (!\uart_ctrl_inst|rx_uart_inst|rx_fsm.WAIT_START~q\ & 
-- ((\uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_START~q\ & (!\uart_ctrl_inst|rx_uart_inst|LessThan0~2_combout\)) # (!\uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_START~q\ & ((\uart_ctrl_inst|rx_uart_inst|tick_data~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|rx_fsm.WAIT_START~q\,
	datab => \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_START~q\,
	datac => \uart_ctrl_inst|rx_uart_inst|LessThan0~2_combout\,
	datad => \uart_ctrl_inst|rx_uart_inst|tick_data~2_combout\,
	combout => \uart_ctrl_inst|rx_uart_inst|tick_data~3_combout\);

-- Location: FF_X43_Y12_N1
\uart_ctrl_inst|rx_uart_inst|tick_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|rx_uart_inst|tick_data~3_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|rx_uart_inst|tick_data~q\);

-- Location: LCCOMB_X41_Y12_N22
\uart_ctrl_inst|rx_uart_inst|Selector3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|Selector3~2_combout\ = (\uart_ctrl_inst|rx_uart_inst|tick_data~q\ & \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_START~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_ctrl_inst|rx_uart_inst|tick_data~q\,
	datad => \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_START~q\,
	combout => \uart_ctrl_inst|rx_uart_inst|Selector3~2_combout\);

-- Location: LCCOMB_X41_Y12_N0
\uart_ctrl_inst|rx_uart_inst|Selector6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|Selector6~4_combout\ = (\uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_DATA~q\ & (((\uart_ctrl_inst|rx_uart_inst|p_rx_fsm_mng~1_combout\ & !\uart_ctrl_inst|rx_uart_inst|cnt_data\(3))))) # 
-- (!\uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_DATA~q\ & (\uart_ctrl_inst|rx_uart_inst|Selector3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|Selector3~2_combout\,
	datab => \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_DATA~q\,
	datac => \uart_ctrl_inst|rx_uart_inst|p_rx_fsm_mng~1_combout\,
	datad => \uart_ctrl_inst|rx_uart_inst|cnt_data\(3),
	combout => \uart_ctrl_inst|rx_uart_inst|Selector6~4_combout\);

-- Location: LCCOMB_X41_Y12_N18
\uart_ctrl_inst|rx_uart_inst|Selector6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|Selector6~5_combout\ = (\uart_ctrl_inst|rx_uart_inst|rx_fsm.STOP~q\) # (((\uart_ctrl_inst|rx_uart_inst|Selector6~3_combout\) # (\uart_ctrl_inst|rx_uart_inst|Selector6~4_combout\)) # 
-- (!\uart_ctrl_inst|rx_uart_inst|rx_fsm.IDLE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|rx_fsm.STOP~q\,
	datab => \uart_ctrl_inst|rx_uart_inst|rx_fsm.IDLE~q\,
	datac => \uart_ctrl_inst|rx_uart_inst|Selector6~3_combout\,
	datad => \uart_ctrl_inst|rx_uart_inst|Selector6~4_combout\,
	combout => \uart_ctrl_inst|rx_uart_inst|Selector6~5_combout\);

-- Location: LCCOMB_X41_Y12_N10
\uart_ctrl_inst|rx_uart_inst|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|Selector1~0_combout\ = (!\uart_ctrl_inst|rx_uart_inst|Selector6~2_combout\ & (((\uart_ctrl_inst|rx_uart_inst|rx_fsm.WAIT_START~q\ & !\uart_ctrl_inst|rx_uart_inst|Selector6~5_combout\)) # 
-- (!\uart_ctrl_inst|rx_uart_inst|Selector5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|Selector6~2_combout\,
	datab => \uart_ctrl_inst|rx_uart_inst|Selector5~0_combout\,
	datac => \uart_ctrl_inst|rx_uart_inst|rx_fsm.WAIT_START~q\,
	datad => \uart_ctrl_inst|rx_uart_inst|Selector6~5_combout\,
	combout => \uart_ctrl_inst|rx_uart_inst|Selector1~0_combout\);

-- Location: FF_X41_Y12_N11
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

-- Location: FF_X43_Y12_N5
rx_uart_i_s : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	asdata => \rx_uart_i~input_o\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_uart_i_s~q\);

-- Location: FF_X43_Y12_N3
rx_uart_i_ss : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	asdata => \rx_uart_i_s~q\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_uart_i_ss~q\);

-- Location: LCCOMB_X43_Y12_N26
\uart_ctrl_inst|rx_uart_inst|rx_old~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|rx_old~0_combout\ = (\rx_uart_i_ss~q\ & \uart_ctrl_inst|rx_uart_inst|rx_fsm.WAIT_START~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rx_uart_i_ss~q\,
	datad => \uart_ctrl_inst|rx_uart_inst|rx_fsm.WAIT_START~q\,
	combout => \uart_ctrl_inst|rx_uart_inst|rx_old~0_combout\);

-- Location: FF_X43_Y12_N27
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

-- Location: LCCOMB_X41_Y12_N8
\uart_ctrl_inst|rx_uart_inst|Selector6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|Selector6~3_combout\ = (\uart_ctrl_inst|rx_uart_inst|rx_fsm.WAIT_START~q\ & (!\rx_uart_i_ss~q\ & \uart_ctrl_inst|rx_uart_inst|rx_old~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|rx_fsm.WAIT_START~q\,
	datac => \rx_uart_i_ss~q\,
	datad => \uart_ctrl_inst|rx_uart_inst|rx_old~q\,
	combout => \uart_ctrl_inst|rx_uart_inst|Selector6~3_combout\);

-- Location: LCCOMB_X41_Y12_N20
\uart_ctrl_inst|rx_uart_inst|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|Selector2~0_combout\ = (!\uart_ctrl_inst|rx_uart_inst|Selector6~2_combout\ & ((\uart_ctrl_inst|rx_uart_inst|Selector6~3_combout\) # ((\uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_START~q\ & 
-- !\uart_ctrl_inst|rx_uart_inst|Selector6~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|Selector6~2_combout\,
	datab => \uart_ctrl_inst|rx_uart_inst|Selector6~3_combout\,
	datac => \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_START~q\,
	datad => \uart_ctrl_inst|rx_uart_inst|Selector6~5_combout\,
	combout => \uart_ctrl_inst|rx_uart_inst|Selector2~0_combout\);

-- Location: FF_X41_Y12_N21
\uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|rx_uart_inst|Selector2~0_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_START~q\);

-- Location: LCCOMB_X41_Y12_N12
\uart_ctrl_inst|rx_uart_inst|cnt_stop_bit~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|cnt_stop_bit~0_combout\ = (!\uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_START~q\ & ((\uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_STOP_BIT~q\ & ((\uart_ctrl_inst|rx_uart_inst|tick_data~q\))) # 
-- (!\uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_STOP_BIT~q\ & (\uart_ctrl_inst|rx_uart_inst|rx_fsm.STOP~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|rx_fsm.STOP~q\,
	datab => \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_START~q\,
	datac => \uart_ctrl_inst|rx_uart_inst|tick_data~q\,
	datad => \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_STOP_BIT~q\,
	combout => \uart_ctrl_inst|rx_uart_inst|cnt_stop_bit~0_combout\);

-- Location: LCCOMB_X41_Y12_N26
\uart_ctrl_inst|rx_uart_inst|cnt_stop_bit~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|cnt_stop_bit~1_combout\ = (\uart_ctrl_inst|rx_uart_inst|cnt_stop_bit~0_combout\ & ((\uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_DATA~q\ & (\uart_ctrl_inst|rx_uart_inst|cnt_stop_bit~q\)) # 
-- (!\uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_DATA~q\ & (!\uart_ctrl_inst|rx_uart_inst|cnt_stop_bit~q\ & \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_STOP_BIT~q\)))) # (!\uart_ctrl_inst|rx_uart_inst|cnt_stop_bit~0_combout\ & 
-- (((\uart_ctrl_inst|rx_uart_inst|cnt_stop_bit~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|cnt_stop_bit~0_combout\,
	datab => \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_DATA~q\,
	datac => \uart_ctrl_inst|rx_uart_inst|cnt_stop_bit~q\,
	datad => \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_STOP_BIT~q\,
	combout => \uart_ctrl_inst|rx_uart_inst|cnt_stop_bit~1_combout\);

-- Location: FF_X41_Y12_N27
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

-- Location: LCCOMB_X41_Y12_N16
\uart_ctrl_inst|rx_uart_inst|Selector6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|Selector6~2_combout\ = (!\uart_ctrl_inst|rx_uart_inst|cnt_stop_bit~q\ & (\uart_ctrl_inst|rx_uart_inst|tick_data~q\ & \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_STOP_BIT~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|cnt_stop_bit~q\,
	datac => \uart_ctrl_inst|rx_uart_inst|tick_data~q\,
	datad => \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_STOP_BIT~q\,
	combout => \uart_ctrl_inst|rx_uart_inst|Selector6~2_combout\);

-- Location: LCCOMB_X43_Y12_N24
\uart_ctrl_inst|rx_uart_inst|rx_fsm.STOP~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|rx_fsm.STOP~feeder_combout\ = \uart_ctrl_inst|rx_uart_inst|Selector6~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_ctrl_inst|rx_uart_inst|Selector6~2_combout\,
	combout => \uart_ctrl_inst|rx_uart_inst|rx_fsm.STOP~feeder_combout\);

-- Location: FF_X43_Y12_N25
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

-- Location: LCCOMB_X44_Y13_N12
\uart_ctrl_inst|rx_uart_inst|rx_done_s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|rx_done_s~0_combout\ = (\uart_ctrl_inst|rx_uart_inst|rx_done_s~q\) # (\uart_ctrl_inst|rx_uart_inst|rx_fsm.STOP~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_ctrl_inst|rx_uart_inst|rx_done_s~q\,
	datad => \uart_ctrl_inst|rx_uart_inst|rx_fsm.STOP~q\,
	combout => \uart_ctrl_inst|rx_uart_inst|rx_done_s~0_combout\);

-- Location: FF_X44_Y13_N13
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

-- Location: FF_X40_Y13_N29
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

-- Location: LCCOMB_X40_Y13_N28
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

-- Location: LCCOMB_X40_Y13_N2
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

-- Location: FF_X40_Y13_N3
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

-- Location: LCCOMB_X40_Y13_N12
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

-- Location: FF_X40_Y13_N13
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

-- Location: LCCOMB_X40_Y14_N12
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

-- Location: FF_X40_Y14_N13
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

-- Location: LCCOMB_X43_Y13_N18
\uart_ctrl_inst|rx_uart_inst|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|Decoder0~1_combout\ = (\uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_DATA~q\ & (!\uart_ctrl_inst|rx_uart_inst|cnt_data\(1) & (\uart_ctrl_inst|rx_uart_inst|cnt_data\(2) & \uart_ctrl_inst|rx_uart_inst|tick_data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_DATA~q\,
	datab => \uart_ctrl_inst|rx_uart_inst|cnt_data\(1),
	datac => \uart_ctrl_inst|rx_uart_inst|cnt_data\(2),
	datad => \uart_ctrl_inst|rx_uart_inst|tick_data~q\,
	combout => \uart_ctrl_inst|rx_uart_inst|Decoder0~1_combout\);

-- Location: LCCOMB_X44_Y13_N8
\uart_ctrl_inst|rx_uart_inst|rx_data_s~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|rx_data_s~3_combout\ = (\uart_ctrl_inst|rx_uart_inst|Decoder0~1_combout\ & ((\uart_ctrl_inst|rx_uart_inst|cnt_data\(0) & ((\uart_ctrl_inst|rx_uart_inst|rx_data_s\(4)))) # (!\uart_ctrl_inst|rx_uart_inst|cnt_data\(0) & 
-- (\rx_uart_i_ss~q\)))) # (!\uart_ctrl_inst|rx_uart_inst|Decoder0~1_combout\ & (((\uart_ctrl_inst|rx_uart_inst|rx_data_s\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_uart_i_ss~q\,
	datab => \uart_ctrl_inst|rx_uart_inst|Decoder0~1_combout\,
	datac => \uart_ctrl_inst|rx_uart_inst|rx_data_s\(4),
	datad => \uart_ctrl_inst|rx_uart_inst|cnt_data\(0),
	combout => \uart_ctrl_inst|rx_uart_inst|rx_data_s~3_combout\);

-- Location: FF_X44_Y13_N9
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

-- Location: LCCOMB_X41_Y13_N2
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

-- Location: LCCOMB_X39_Y13_N8
\uart_ctrl_inst|uart_mngt_inst|byte_array[1][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|byte_array[1][4]~feeder_combout\ = \uart_ctrl_inst|uart_mngt_inst|byte_array~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_ctrl_inst|uart_mngt_inst|byte_array~4_combout\,
	combout => \uart_ctrl_inst|uart_mngt_inst|byte_array[1][4]~feeder_combout\);

-- Location: LCCOMB_X40_Y13_N0
\uart_ctrl_inst|uart_mngt_inst|byte_array[1][4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|byte_array[1][4]~9_combout\ = (\uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\) # ((!\uart_ctrl_inst|uart_mngt_inst|cnt_byte_rx\(1) & (\uart_ctrl_inst|uart_mngt_inst|cnt_byte_rx\(0) & 
-- \uart_ctrl_inst|uart_mngt_inst|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|uart_mngt_inst|cnt_byte_rx\(1),
	datab => \uart_ctrl_inst|uart_mngt_inst|cnt_byte_rx\(0),
	datac => \uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\,
	datad => \uart_ctrl_inst|uart_mngt_inst|Decoder0~0_combout\,
	combout => \uart_ctrl_inst|uart_mngt_inst|byte_array[1][4]~9_combout\);

-- Location: FF_X39_Y13_N9
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
	ena => \uart_ctrl_inst|uart_mngt_inst|byte_array[1][4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|byte_array[1][4]~q\);

-- Location: LCCOMB_X40_Y13_N24
\uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s~7_combout\ = (\uart_ctrl_inst|uart_mngt_inst|byte_array[1][4]~q\ & !\uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|uart_mngt_inst|byte_array[1][4]~q\,
	datac => \uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\,
	combout => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s~7_combout\);

-- Location: LCCOMB_X40_Y13_N16
\uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s[7]~1_combout\ = (\uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\) # ((\uart_ctrl_inst|uart_mngt_inst|cnt_byte_rx\(0) & \uart_ctrl_inst|uart_mngt_inst|cnt_byte_rx\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_ctrl_inst|uart_mngt_inst|cnt_byte_rx\(0),
	datac => \uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\,
	datad => \uart_ctrl_inst|uart_mngt_inst|cnt_byte_rx\(1),
	combout => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s[7]~1_combout\);

-- Location: FF_X40_Y13_N25
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
	ena => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s\(4));

-- Location: LCCOMB_X43_Y17_N12
\reg_ctrl_inst|rcvd_addr_reg_i_s~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|rcvd_addr_reg_i_s~7_combout\ = (\uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s\(4) & \reg_ctrl_inst|start_rw_i_r_edge~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s\(4),
	datad => \reg_ctrl_inst|start_rw_i_r_edge~q\,
	combout => \reg_ctrl_inst|rcvd_addr_reg_i_s~7_combout\);

-- Location: LCCOMB_X43_Y17_N8
\reg_ctrl_inst|rcvd_addr_reg_i_s[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|rcvd_addr_reg_i_s[7]~1_combout\ = (\reg_ctrl_inst|start_rw_i_r_edge~q\) # (\reg_ctrl_inst|data_valid_o_s~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|start_rw_i_r_edge~q\,
	datac => \reg_ctrl_inst|data_valid_o_s~q\,
	combout => \reg_ctrl_inst|rcvd_addr_reg_i_s[7]~1_combout\);

-- Location: FF_X43_Y17_N13
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
	ena => \reg_ctrl_inst|rcvd_addr_reg_i_s[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|rcvd_addr_reg_i_s\(4));

-- Location: LCCOMB_X43_Y13_N2
\uart_ctrl_inst|rx_uart_inst|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|Decoder0~3_combout\ = (\uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_DATA~q\ & (\uart_ctrl_inst|rx_uart_inst|cnt_data\(1) & (\uart_ctrl_inst|rx_uart_inst|cnt_data\(0) & \uart_ctrl_inst|rx_uart_inst|tick_data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_DATA~q\,
	datab => \uart_ctrl_inst|rx_uart_inst|cnt_data\(1),
	datac => \uart_ctrl_inst|rx_uart_inst|cnt_data\(0),
	datad => \uart_ctrl_inst|rx_uart_inst|tick_data~q\,
	combout => \uart_ctrl_inst|rx_uart_inst|Decoder0~3_combout\);

-- Location: LCCOMB_X43_Y13_N4
\uart_ctrl_inst|rx_uart_inst|rx_data_s~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|rx_data_s~4_combout\ = (\uart_ctrl_inst|rx_uart_inst|cnt_data\(2) & (((\uart_ctrl_inst|rx_uart_inst|rx_data_s\(3))))) # (!\uart_ctrl_inst|rx_uart_inst|cnt_data\(2) & ((\uart_ctrl_inst|rx_uart_inst|Decoder0~3_combout\ & 
-- (\rx_uart_i_ss~q\)) # (!\uart_ctrl_inst|rx_uart_inst|Decoder0~3_combout\ & ((\uart_ctrl_inst|rx_uart_inst|rx_data_s\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|cnt_data\(2),
	datab => \rx_uart_i_ss~q\,
	datac => \uart_ctrl_inst|rx_uart_inst|rx_data_s\(3),
	datad => \uart_ctrl_inst|rx_uart_inst|Decoder0~3_combout\,
	combout => \uart_ctrl_inst|rx_uart_inst|rx_data_s~4_combout\);

-- Location: FF_X43_Y13_N5
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

-- Location: LCCOMB_X41_Y13_N4
\uart_ctrl_inst|uart_mngt_inst|byte_array~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|byte_array~5_combout\ = (!\uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\ & \uart_ctrl_inst|rx_uart_inst|rx_data_s\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\,
	datad => \uart_ctrl_inst|rx_uart_inst|rx_data_s\(3),
	combout => \uart_ctrl_inst|uart_mngt_inst|byte_array~5_combout\);

-- Location: LCCOMB_X39_Y13_N14
\uart_ctrl_inst|uart_mngt_inst|byte_array[1][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|byte_array[1][3]~feeder_combout\ = \uart_ctrl_inst|uart_mngt_inst|byte_array~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_ctrl_inst|uart_mngt_inst|byte_array~5_combout\,
	combout => \uart_ctrl_inst|uart_mngt_inst|byte_array[1][3]~feeder_combout\);

-- Location: FF_X39_Y13_N15
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
	ena => \uart_ctrl_inst|uart_mngt_inst|byte_array[1][4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|byte_array[1][3]~q\);

-- Location: LCCOMB_X40_Y13_N26
\uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s~8_combout\ = (!\uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\ & \uart_ctrl_inst|uart_mngt_inst|byte_array[1][3]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\,
	datad => \uart_ctrl_inst|uart_mngt_inst|byte_array[1][3]~q\,
	combout => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s~8_combout\);

-- Location: FF_X40_Y13_N27
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
	ena => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s\(3));

-- Location: LCCOMB_X43_Y17_N18
\reg_ctrl_inst|rcvd_addr_reg_i_s~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|rcvd_addr_reg_i_s~8_combout\ = (\reg_ctrl_inst|start_rw_i_r_edge~q\ & \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|start_rw_i_r_edge~q\,
	datad => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s\(3),
	combout => \reg_ctrl_inst|rcvd_addr_reg_i_s~8_combout\);

-- Location: FF_X43_Y17_N19
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
	ena => \reg_ctrl_inst|rcvd_addr_reg_i_s[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|rcvd_addr_reg_i_s\(3));

-- Location: LCCOMB_X44_Y13_N16
\uart_ctrl_inst|rx_uart_inst|rx_data_s~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|rx_data_s~1_combout\ = (\uart_ctrl_inst|rx_uart_inst|Decoder0~1_combout\ & ((\uart_ctrl_inst|rx_uart_inst|cnt_data\(0) & (\rx_uart_i_ss~q\)) # (!\uart_ctrl_inst|rx_uart_inst|cnt_data\(0) & 
-- ((\uart_ctrl_inst|rx_uart_inst|rx_data_s\(5)))))) # (!\uart_ctrl_inst|rx_uart_inst|Decoder0~1_combout\ & (((\uart_ctrl_inst|rx_uart_inst|rx_data_s\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_uart_i_ss~q\,
	datab => \uart_ctrl_inst|rx_uart_inst|Decoder0~1_combout\,
	datac => \uart_ctrl_inst|rx_uart_inst|rx_data_s\(5),
	datad => \uart_ctrl_inst|rx_uart_inst|cnt_data\(0),
	combout => \uart_ctrl_inst|rx_uart_inst|rx_data_s~1_combout\);

-- Location: FF_X44_Y13_N17
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

-- Location: LCCOMB_X41_Y13_N30
\uart_ctrl_inst|uart_mngt_inst|byte_array~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|byte_array~2_combout\ = (!\uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\ & \uart_ctrl_inst|rx_uart_inst|rx_data_s\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\,
	datad => \uart_ctrl_inst|rx_uart_inst|rx_data_s\(5),
	combout => \uart_ctrl_inst|uart_mngt_inst|byte_array~2_combout\);

-- Location: LCCOMB_X39_Y13_N30
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

-- Location: FF_X39_Y13_N31
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
	ena => \uart_ctrl_inst|uart_mngt_inst|byte_array[1][4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|byte_array[1][5]~q\);

-- Location: LCCOMB_X40_Y13_N10
\uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s~6_combout\ = (\uart_ctrl_inst|uart_mngt_inst|byte_array[1][5]~q\ & !\uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_ctrl_inst|uart_mngt_inst|byte_array[1][5]~q\,
	datac => \uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\,
	combout => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s~6_combout\);

-- Location: FF_X40_Y13_N11
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
	ena => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s\(5));

-- Location: LCCOMB_X43_Y17_N30
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

-- Location: FF_X43_Y17_N31
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
	ena => \reg_ctrl_inst|rcvd_addr_reg_i_s[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|rcvd_addr_reg_i_s\(5));

-- Location: LCCOMB_X43_Y13_N28
\uart_ctrl_inst|rx_uart_inst|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|Decoder0~2_combout\ = (\uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_DATA~q\ & (\uart_ctrl_inst|rx_uart_inst|cnt_data\(1) & (\uart_ctrl_inst|rx_uart_inst|cnt_data\(2) & \uart_ctrl_inst|rx_uart_inst|tick_data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_DATA~q\,
	datab => \uart_ctrl_inst|rx_uart_inst|cnt_data\(1),
	datac => \uart_ctrl_inst|rx_uart_inst|cnt_data\(2),
	datad => \uart_ctrl_inst|rx_uart_inst|tick_data~q\,
	combout => \uart_ctrl_inst|rx_uart_inst|Decoder0~2_combout\);

-- Location: LCCOMB_X44_Y13_N14
\uart_ctrl_inst|rx_uart_inst|rx_data_s~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|rx_data_s~2_combout\ = (\uart_ctrl_inst|rx_uart_inst|Decoder0~2_combout\ & ((\uart_ctrl_inst|rx_uart_inst|cnt_data\(0) & ((\uart_ctrl_inst|rx_uart_inst|rx_data_s\(6)))) # (!\uart_ctrl_inst|rx_uart_inst|cnt_data\(0) & 
-- (\rx_uart_i_ss~q\)))) # (!\uart_ctrl_inst|rx_uart_inst|Decoder0~2_combout\ & (((\uart_ctrl_inst|rx_uart_inst|rx_data_s\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_uart_i_ss~q\,
	datab => \uart_ctrl_inst|rx_uart_inst|Decoder0~2_combout\,
	datac => \uart_ctrl_inst|rx_uart_inst|rx_data_s\(6),
	datad => \uart_ctrl_inst|rx_uart_inst|cnt_data\(0),
	combout => \uart_ctrl_inst|rx_uart_inst|rx_data_s~2_combout\);

-- Location: FF_X44_Y13_N15
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

-- Location: LCCOMB_X41_Y13_N28
\uart_ctrl_inst|uart_mngt_inst|byte_array~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|byte_array~3_combout\ = (!\uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\ & \uart_ctrl_inst|rx_uart_inst|rx_data_s\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\,
	datad => \uart_ctrl_inst|rx_uart_inst|rx_data_s\(6),
	combout => \uart_ctrl_inst|uart_mngt_inst|byte_array~3_combout\);

-- Location: LCCOMB_X39_Y13_N20
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

-- Location: FF_X39_Y13_N21
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
	ena => \uart_ctrl_inst|uart_mngt_inst|byte_array[1][4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|byte_array[1][6]~q\);

-- Location: LCCOMB_X40_Y13_N4
\uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s~5_combout\ = (\uart_ctrl_inst|uart_mngt_inst|byte_array[1][6]~q\ & !\uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_ctrl_inst|uart_mngt_inst|byte_array[1][6]~q\,
	datac => \uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\,
	combout => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s~5_combout\);

-- Location: FF_X40_Y13_N5
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
	ena => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s\(6));

-- Location: LCCOMB_X43_Y17_N28
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

-- Location: FF_X43_Y17_N29
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
	ena => \reg_ctrl_inst|rcvd_addr_reg_i_s[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|rcvd_addr_reg_i_s\(6));

-- Location: LCCOMB_X43_Y17_N20
\reg_ctrl_inst|reg_addr_ok_o_s~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|reg_addr_ok_o_s~1_combout\ = (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(4) & (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(3) & (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(5) & !\reg_ctrl_inst|rcvd_addr_reg_i_s\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|rcvd_addr_reg_i_s\(4),
	datab => \reg_ctrl_inst|rcvd_addr_reg_i_s\(3),
	datac => \reg_ctrl_inst|rcvd_addr_reg_i_s\(5),
	datad => \reg_ctrl_inst|rcvd_addr_reg_i_s\(6),
	combout => \reg_ctrl_inst|reg_addr_ok_o_s~1_combout\);

-- Location: LCCOMB_X43_Y13_N20
\uart_ctrl_inst|rx_uart_inst|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|Decoder0~4_combout\ = (!\uart_ctrl_inst|rx_uart_inst|cnt_data\(2) & (\uart_ctrl_inst|rx_uart_inst|tick_data~q\ & (!\uart_ctrl_inst|rx_uart_inst|cnt_data\(0) & \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_DATA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|cnt_data\(2),
	datab => \uart_ctrl_inst|rx_uart_inst|tick_data~q\,
	datac => \uart_ctrl_inst|rx_uart_inst|cnt_data\(0),
	datad => \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_DATA~q\,
	combout => \uart_ctrl_inst|rx_uart_inst|Decoder0~4_combout\);

-- Location: LCCOMB_X43_Y13_N10
\uart_ctrl_inst|rx_uart_inst|rx_data_s~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|rx_data_s~5_combout\ = (\uart_ctrl_inst|rx_uart_inst|cnt_data\(1) & ((\uart_ctrl_inst|rx_uart_inst|Decoder0~4_combout\ & (\rx_uart_i_ss~q\)) # (!\uart_ctrl_inst|rx_uart_inst|Decoder0~4_combout\ & 
-- ((\uart_ctrl_inst|rx_uart_inst|rx_data_s\(2)))))) # (!\uart_ctrl_inst|rx_uart_inst|cnt_data\(1) & (((\uart_ctrl_inst|rx_uart_inst|rx_data_s\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_uart_i_ss~q\,
	datab => \uart_ctrl_inst|rx_uart_inst|cnt_data\(1),
	datac => \uart_ctrl_inst|rx_uart_inst|rx_data_s\(2),
	datad => \uart_ctrl_inst|rx_uart_inst|Decoder0~4_combout\,
	combout => \uart_ctrl_inst|rx_uart_inst|rx_data_s~5_combout\);

-- Location: FF_X43_Y13_N11
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

-- Location: LCCOMB_X41_Y13_N26
\uart_ctrl_inst|uart_mngt_inst|byte_array~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|byte_array~6_combout\ = (!\uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\ & \uart_ctrl_inst|rx_uart_inst|rx_data_s\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\,
	datad => \uart_ctrl_inst|rx_uart_inst|rx_data_s\(2),
	combout => \uart_ctrl_inst|uart_mngt_inst|byte_array~6_combout\);

-- Location: LCCOMB_X39_Y13_N24
\uart_ctrl_inst|uart_mngt_inst|byte_array[1][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|byte_array[1][2]~feeder_combout\ = \uart_ctrl_inst|uart_mngt_inst|byte_array~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_ctrl_inst|uart_mngt_inst|byte_array~6_combout\,
	combout => \uart_ctrl_inst|uart_mngt_inst|byte_array[1][2]~feeder_combout\);

-- Location: FF_X39_Y13_N25
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
	ena => \uart_ctrl_inst|uart_mngt_inst|byte_array[1][4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|byte_array[1][2]~q\);

-- Location: LCCOMB_X40_Y13_N8
\uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s~3_combout\ = (\uart_ctrl_inst|uart_mngt_inst|byte_array[1][2]~q\ & !\uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_ctrl_inst|uart_mngt_inst|byte_array[1][2]~q\,
	datac => \uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\,
	combout => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s~3_combout\);

-- Location: FF_X40_Y13_N9
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
	ena => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s\(2));

-- Location: LCCOMB_X43_Y17_N14
\reg_ctrl_inst|rcvd_addr_reg_i_s~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|rcvd_addr_reg_i_s~3_combout\ = (\reg_ctrl_inst|start_rw_i_r_edge~q\ & \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|start_rw_i_r_edge~q\,
	datad => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s\(2),
	combout => \reg_ctrl_inst|rcvd_addr_reg_i_s~3_combout\);

-- Location: FF_X43_Y17_N15
\reg_ctrl_inst|rcvd_addr_reg_i_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \reg_ctrl_inst|rcvd_addr_reg_i_s~3_combout\,
	clrn => \reset_n~input_o\,
	ena => \reg_ctrl_inst|rcvd_addr_reg_i_s[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|rcvd_addr_reg_i_s\(2));

-- Location: LCCOMB_X43_Y13_N0
\uart_ctrl_inst|rx_uart_inst|rx_data_s~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|rx_data_s~7_combout\ = (!\uart_ctrl_inst|rx_uart_inst|cnt_data\(2) & (!\uart_ctrl_inst|rx_uart_inst|cnt_data\(1) & (!\uart_ctrl_inst|rx_uart_inst|cnt_data\(0) & \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_DATA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|cnt_data\(2),
	datab => \uart_ctrl_inst|rx_uart_inst|cnt_data\(1),
	datac => \uart_ctrl_inst|rx_uart_inst|cnt_data\(0),
	datad => \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_DATA~q\,
	combout => \uart_ctrl_inst|rx_uart_inst|rx_data_s~7_combout\);

-- Location: LCCOMB_X43_Y13_N8
\uart_ctrl_inst|rx_uart_inst|rx_data_s~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|rx_data_s~8_combout\ = (\uart_ctrl_inst|rx_uart_inst|tick_data~q\ & ((\uart_ctrl_inst|rx_uart_inst|rx_data_s~7_combout\ & (\rx_uart_i_ss~q\)) # (!\uart_ctrl_inst|rx_uart_inst|rx_data_s~7_combout\ & 
-- ((\uart_ctrl_inst|rx_uart_inst|rx_data_s\(0)))))) # (!\uart_ctrl_inst|rx_uart_inst|tick_data~q\ & (((\uart_ctrl_inst|rx_uart_inst|rx_data_s\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_uart_i_ss~q\,
	datab => \uart_ctrl_inst|rx_uart_inst|tick_data~q\,
	datac => \uart_ctrl_inst|rx_uart_inst|rx_data_s\(0),
	datad => \uart_ctrl_inst|rx_uart_inst|rx_data_s~7_combout\,
	combout => \uart_ctrl_inst|rx_uart_inst|rx_data_s~8_combout\);

-- Location: FF_X43_Y13_N9
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

-- Location: LCCOMB_X41_Y13_N18
\uart_ctrl_inst|uart_mngt_inst|byte_array~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|byte_array~8_combout\ = (!\uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\ & \uart_ctrl_inst|rx_uart_inst|rx_data_s\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\,
	datad => \uart_ctrl_inst|rx_uart_inst|rx_data_s\(0),
	combout => \uart_ctrl_inst|uart_mngt_inst|byte_array~8_combout\);

-- Location: LCCOMB_X39_Y13_N18
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

-- Location: FF_X39_Y13_N19
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
	ena => \uart_ctrl_inst|uart_mngt_inst|byte_array[1][4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|byte_array[1][0]~q\);

-- Location: LCCOMB_X40_Y13_N22
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

-- Location: FF_X40_Y13_N23
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
	ena => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s\(0));

-- Location: LCCOMB_X43_Y17_N4
\reg_ctrl_inst|rcvd_addr_reg_i_s~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|rcvd_addr_reg_i_s~2_combout\ = (\uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s\(0) & \reg_ctrl_inst|start_rw_i_r_edge~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s\(0),
	datad => \reg_ctrl_inst|start_rw_i_r_edge~q\,
	combout => \reg_ctrl_inst|rcvd_addr_reg_i_s~2_combout\);

-- Location: FF_X43_Y17_N5
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
	ena => \reg_ctrl_inst|rcvd_addr_reg_i_s[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|rcvd_addr_reg_i_s\(0));

-- Location: LCCOMB_X43_Y13_N6
\uart_ctrl_inst|rx_uart_inst|Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|Decoder0~5_combout\ = (\uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_DATA~q\ & (!\uart_ctrl_inst|rx_uart_inst|cnt_data\(1) & (!\uart_ctrl_inst|rx_uart_inst|cnt_data\(2) & \uart_ctrl_inst|rx_uart_inst|tick_data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_DATA~q\,
	datab => \uart_ctrl_inst|rx_uart_inst|cnt_data\(1),
	datac => \uart_ctrl_inst|rx_uart_inst|cnt_data\(2),
	datad => \uart_ctrl_inst|rx_uart_inst|tick_data~q\,
	combout => \uart_ctrl_inst|rx_uart_inst|Decoder0~5_combout\);

-- Location: LCCOMB_X44_Y13_N26
\uart_ctrl_inst|rx_uart_inst|rx_data_s~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|rx_data_s~6_combout\ = (\uart_ctrl_inst|rx_uart_inst|Decoder0~5_combout\ & ((\uart_ctrl_inst|rx_uart_inst|cnt_data\(0) & (\rx_uart_i_ss~q\)) # (!\uart_ctrl_inst|rx_uart_inst|cnt_data\(0) & 
-- ((\uart_ctrl_inst|rx_uart_inst|rx_data_s\(1)))))) # (!\uart_ctrl_inst|rx_uart_inst|Decoder0~5_combout\ & (((\uart_ctrl_inst|rx_uart_inst|rx_data_s\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_uart_i_ss~q\,
	datab => \uart_ctrl_inst|rx_uart_inst|Decoder0~5_combout\,
	datac => \uart_ctrl_inst|rx_uart_inst|rx_data_s\(1),
	datad => \uart_ctrl_inst|rx_uart_inst|cnt_data\(0),
	combout => \uart_ctrl_inst|rx_uart_inst|rx_data_s~6_combout\);

-- Location: FF_X44_Y13_N27
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

-- Location: LCCOMB_X41_Y13_N8
\uart_ctrl_inst|uart_mngt_inst|byte_array~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|byte_array~7_combout\ = (!\uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\ & \uart_ctrl_inst|rx_uart_inst|rx_data_s\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\,
	datad => \uart_ctrl_inst|rx_uart_inst|rx_data_s\(1),
	combout => \uart_ctrl_inst|uart_mngt_inst|byte_array~7_combout\);

-- Location: LCCOMB_X39_Y13_N4
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

-- Location: FF_X39_Y13_N5
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
	ena => \uart_ctrl_inst|uart_mngt_inst|byte_array[1][4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|byte_array[1][1]~q\);

-- Location: LCCOMB_X40_Y13_N20
\uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s~0_combout\ = (!\uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\ & \uart_ctrl_inst|uart_mngt_inst|byte_array[1][1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\,
	datac => \uart_ctrl_inst|uart_mngt_inst|byte_array[1][1]~q\,
	combout => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s~0_combout\);

-- Location: FF_X40_Y13_N21
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
	ena => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s\(1));

-- Location: LCCOMB_X43_Y17_N26
\reg_ctrl_inst|rcvd_addr_reg_i_s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|rcvd_addr_reg_i_s~0_combout\ = (\reg_ctrl_inst|start_rw_i_r_edge~q\ & \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|start_rw_i_r_edge~q\,
	datad => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s\(1),
	combout => \reg_ctrl_inst|rcvd_addr_reg_i_s~0_combout\);

-- Location: FF_X43_Y17_N27
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
	ena => \reg_ctrl_inst|rcvd_addr_reg_i_s[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|rcvd_addr_reg_i_s\(1));

-- Location: LCCOMB_X43_Y13_N24
\uart_ctrl_inst|rx_uart_inst|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|Decoder0~0_combout\ = (\uart_ctrl_inst|rx_uart_inst|tick_data~q\ & (\uart_ctrl_inst|rx_uart_inst|cnt_data\(2) & \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_DATA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_ctrl_inst|rx_uart_inst|tick_data~q\,
	datac => \uart_ctrl_inst|rx_uart_inst|cnt_data\(2),
	datad => \uart_ctrl_inst|rx_uart_inst|rx_fsm.READ_DATA~q\,
	combout => \uart_ctrl_inst|rx_uart_inst|Decoder0~0_combout\);

-- Location: LCCOMB_X44_Y13_N22
\uart_ctrl_inst|rx_uart_inst|rx_data_s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|rx_uart_inst|rx_data_s~0_combout\ = (\uart_ctrl_inst|rx_uart_inst|p_rx_fsm_mng~0_combout\ & ((\uart_ctrl_inst|rx_uart_inst|Decoder0~0_combout\ & (\rx_uart_i_ss~q\)) # (!\uart_ctrl_inst|rx_uart_inst|Decoder0~0_combout\ & 
-- ((\uart_ctrl_inst|rx_uart_inst|rx_data_s\(7)))))) # (!\uart_ctrl_inst|rx_uart_inst|p_rx_fsm_mng~0_combout\ & (((\uart_ctrl_inst|rx_uart_inst|rx_data_s\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_uart_i_ss~q\,
	datab => \uart_ctrl_inst|rx_uart_inst|p_rx_fsm_mng~0_combout\,
	datac => \uart_ctrl_inst|rx_uart_inst|rx_data_s\(7),
	datad => \uart_ctrl_inst|rx_uart_inst|Decoder0~0_combout\,
	combout => \uart_ctrl_inst|rx_uart_inst|rx_data_s~0_combout\);

-- Location: FF_X44_Y13_N23
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

-- Location: LCCOMB_X41_Y13_N12
\uart_ctrl_inst|uart_mngt_inst|byte_array~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|byte_array~0_combout\ = (!\uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\ & \uart_ctrl_inst|rx_uart_inst|rx_data_s\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\,
	datad => \uart_ctrl_inst|rx_uart_inst|rx_data_s\(7),
	combout => \uart_ctrl_inst|uart_mngt_inst|byte_array~0_combout\);

-- Location: LCCOMB_X39_Y13_N26
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

-- Location: FF_X39_Y13_N27
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
	ena => \uart_ctrl_inst|uart_mngt_inst|byte_array[1][4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|byte_array[1][7]~q\);

-- Location: LCCOMB_X40_Y13_N18
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

-- Location: FF_X40_Y13_N19
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
	ena => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s\(7));

-- Location: LCCOMB_X43_Y17_N6
\reg_ctrl_inst|rcvd_addr_reg_i_s~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|rcvd_addr_reg_i_s~4_combout\ = (\uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s\(7) & \reg_ctrl_inst|start_rw_i_r_edge~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s\(7),
	datad => \reg_ctrl_inst|start_rw_i_r_edge~q\,
	combout => \reg_ctrl_inst|rcvd_addr_reg_i_s~4_combout\);

-- Location: FF_X43_Y17_N7
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
	ena => \reg_ctrl_inst|rcvd_addr_reg_i_s[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|rcvd_addr_reg_i_s\(7));

-- Location: LCCOMB_X39_Y17_N12
\reg_ctrl_inst|reg_addr_ok_o_s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|reg_addr_ok_o_s~0_combout\ = (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(7) & (((!\reg_ctrl_inst|rcvd_addr_reg_i_s\(0) & !\reg_ctrl_inst|rcvd_addr_reg_i_s\(1))) # (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|rcvd_addr_reg_i_s\(2),
	datab => \reg_ctrl_inst|rcvd_addr_reg_i_s\(0),
	datac => \reg_ctrl_inst|rcvd_addr_reg_i_s\(1),
	datad => \reg_ctrl_inst|rcvd_addr_reg_i_s\(7),
	combout => \reg_ctrl_inst|reg_addr_ok_o_s~0_combout\);

-- Location: LCCOMB_X39_Y17_N20
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

-- Location: FF_X39_Y17_N21
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

-- Location: LCCOMB_X39_Y13_N22
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

-- Location: LCCOMB_X40_Y13_N6
\uart_ctrl_inst|uart_mngt_inst|byte_array[0][2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|byte_array[0][2]~1_combout\ = (\uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\) # ((!\uart_ctrl_inst|uart_mngt_inst|cnt_byte_rx\(1) & (!\uart_ctrl_inst|uart_mngt_inst|cnt_byte_rx\(0) & 
-- \uart_ctrl_inst|uart_mngt_inst|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|uart_mngt_inst|cnt_byte_rx\(1),
	datab => \uart_ctrl_inst|uart_mngt_inst|cnt_byte_rx\(0),
	datac => \uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\,
	datad => \uart_ctrl_inst|uart_mngt_inst|Decoder0~0_combout\,
	combout => \uart_ctrl_inst|uart_mngt_inst|byte_array[0][2]~1_combout\);

-- Location: FF_X39_Y13_N23
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
	ena => \uart_ctrl_inst|uart_mngt_inst|byte_array[0][2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|byte_array[0][2]~q\);

-- Location: LCCOMB_X39_Y13_N10
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

-- Location: FF_X39_Y13_N11
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
	ena => \uart_ctrl_inst|uart_mngt_inst|byte_array[0][2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|byte_array[0][5]~q\);

-- Location: LCCOMB_X39_Y13_N28
\uart_ctrl_inst|uart_mngt_inst|byte_array[0][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|byte_array[0][6]~feeder_combout\ = \uart_ctrl_inst|uart_mngt_inst|byte_array~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_ctrl_inst|uart_mngt_inst|byte_array~3_combout\,
	combout => \uart_ctrl_inst|uart_mngt_inst|byte_array[0][6]~feeder_combout\);

-- Location: FF_X39_Y13_N29
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
	ena => \uart_ctrl_inst|uart_mngt_inst|byte_array[0][2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|byte_array[0][6]~q\);

-- Location: FF_X39_Y13_N3
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
	ena => \uart_ctrl_inst|uart_mngt_inst|byte_array[0][2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|byte_array[0][4]~q\);

-- Location: LCCOMB_X39_Y13_N16
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

-- Location: FF_X39_Y13_N17
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
	ena => \uart_ctrl_inst|uart_mngt_inst|byte_array[0][2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|byte_array[0][7]~q\);

-- Location: LCCOMB_X39_Y13_N2
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

-- Location: FF_X39_Y13_N1
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
	ena => \uart_ctrl_inst|uart_mngt_inst|byte_array[0][2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|byte_array[0][3]~q\);

-- Location: LCCOMB_X39_Y13_N12
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

-- Location: FF_X39_Y13_N13
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
	ena => \uart_ctrl_inst|uart_mngt_inst|byte_array[0][2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|byte_array[0][1]~q\);

-- Location: LCCOMB_X39_Y13_N0
\uart_ctrl_inst|uart_mngt_inst|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|Equal1~1_combout\ = (!\uart_ctrl_inst|uart_mngt_inst|byte_array[0][2]~q\ & (\uart_ctrl_inst|uart_mngt_inst|Equal1~0_combout\ & (!\uart_ctrl_inst|uart_mngt_inst|byte_array[0][3]~q\ & 
-- !\uart_ctrl_inst|uart_mngt_inst|byte_array[0][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|uart_mngt_inst|byte_array[0][2]~q\,
	datab => \uart_ctrl_inst|uart_mngt_inst|Equal1~0_combout\,
	datac => \uart_ctrl_inst|uart_mngt_inst|byte_array[0][3]~q\,
	datad => \uart_ctrl_inst|uart_mngt_inst|byte_array[0][1]~q\,
	combout => \uart_ctrl_inst|uart_mngt_inst|Equal1~1_combout\);

-- Location: LCCOMB_X40_Y14_N2
\uart_ctrl_inst|uart_mngt_inst|cmd_byte_error_s~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|cmd_byte_error_s~2_combout\ = (\uart_ctrl_inst|uart_mngt_inst|cnt_byte_rx\(1) & ((\uart_ctrl_inst|uart_mngt_inst|cnt_byte_rx\(0) & (!\uart_ctrl_inst|uart_mngt_inst|Equal1~1_combout\)) # 
-- (!\uart_ctrl_inst|uart_mngt_inst|cnt_byte_rx\(0) & ((\uart_ctrl_inst|uart_mngt_inst|cmd_byte_error_s~q\))))) # (!\uart_ctrl_inst|uart_mngt_inst|cnt_byte_rx\(1) & (((\uart_ctrl_inst|uart_mngt_inst|cmd_byte_error_s~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|uart_mngt_inst|Equal1~1_combout\,
	datab => \uart_ctrl_inst|uart_mngt_inst|cnt_byte_rx\(1),
	datac => \uart_ctrl_inst|uart_mngt_inst|cmd_byte_error_s~q\,
	datad => \uart_ctrl_inst|uart_mngt_inst|cnt_byte_rx\(0),
	combout => \uart_ctrl_inst|uart_mngt_inst|cmd_byte_error_s~2_combout\);

-- Location: FF_X40_Y14_N3
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

-- Location: LCCOMB_X40_Y14_N18
\uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[7]~3_combout\ = (\uart_ctrl_inst|uart_mngt_inst|start_parse_s~q\ & (!\uart_ctrl_inst|uart_mngt_inst|parse_done_s~q\ & !\uart_ctrl_inst|uart_mngt_inst|cmd_byte_error_s~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|uart_mngt_inst|start_parse_s~q\,
	datac => \uart_ctrl_inst|uart_mngt_inst|parse_done_s~q\,
	datad => \uart_ctrl_inst|uart_mngt_inst|cmd_byte_error_s~q\,
	combout => \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[7]~3_combout\);

-- Location: LCCOMB_X40_Y14_N0
\uart_ctrl_inst|uart_mngt_inst|start_rw_reg_s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|start_rw_reg_s~0_combout\ = (\uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[7]~3_combout\ & (((\reg_ctrl_inst|reg_addr_ok_o_s~q\ & \uart_ctrl_inst|uart_mngt_inst|start_rw_reg_s~q\)) # 
-- (!\uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[7]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|reg_addr_ok_o_s~q\,
	datab => \uart_ctrl_inst|uart_mngt_inst|start_rw_reg_s~q\,
	datac => \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[7]~2_combout\,
	datad => \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[7]~3_combout\,
	combout => \uart_ctrl_inst|uart_mngt_inst|start_rw_reg_s~0_combout\);

-- Location: LCCOMB_X40_Y14_N16
\uart_ctrl_inst|uart_mngt_inst|start_rw_reg_s~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|start_rw_reg_s~1_combout\ = (\uart_ctrl_inst|uart_mngt_inst|start_rw_reg_s~0_combout\) # ((\uart_ctrl_inst|uart_mngt_inst|parse_done_s~q\ & (\uart_ctrl_inst|uart_mngt_inst|start_parse_s~q\ & 
-- \uart_ctrl_inst|uart_mngt_inst|start_rw_reg_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|uart_mngt_inst|parse_done_s~q\,
	datab => \uart_ctrl_inst|uart_mngt_inst|start_parse_s~q\,
	datac => \uart_ctrl_inst|uart_mngt_inst|start_rw_reg_s~q\,
	datad => \uart_ctrl_inst|uart_mngt_inst|start_rw_reg_s~0_combout\,
	combout => \uart_ctrl_inst|uart_mngt_inst|start_rw_reg_s~1_combout\);

-- Location: FF_X40_Y14_N17
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

-- Location: LCCOMB_X40_Y14_N6
\reg_ctrl_inst|start_rw_i_s~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|start_rw_i_s~feeder_combout\ = \uart_ctrl_inst|uart_mngt_inst|start_rw_reg_s~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_ctrl_inst|uart_mngt_inst|start_rw_reg_s~q\,
	combout => \reg_ctrl_inst|start_rw_i_s~feeder_combout\);

-- Location: FF_X40_Y14_N7
\reg_ctrl_inst|start_rw_i_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \reg_ctrl_inst|start_rw_i_s~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|start_rw_i_s~q\);

-- Location: LCCOMB_X43_Y17_N10
\reg_ctrl_inst|start_rw_i_r_edge~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|start_rw_i_r_edge~0_combout\ = (!\reg_ctrl_inst|start_rw_i_s~q\ & \uart_ctrl_inst|uart_mngt_inst|start_rw_reg_s~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_ctrl_inst|start_rw_i_s~q\,
	datad => \uart_ctrl_inst|uart_mngt_inst|start_rw_reg_s~q\,
	combout => \reg_ctrl_inst|start_rw_i_r_edge~0_combout\);

-- Location: FF_X43_Y17_N11
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

-- Location: FF_X43_Y17_N1
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

-- Location: FF_X39_Y17_N15
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

-- Location: FF_X39_Y17_N7
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

-- Location: LCCOMB_X39_Y17_N22
\reg_ctrl_inst|data_valid_o_s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|data_valid_o_s~0_combout\ = (\reg_ctrl_inst|check_done_s~q\ & \reg_ctrl_inst|data_valid_o_ss~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_ctrl_inst|check_done_s~q\,
	datad => \reg_ctrl_inst|data_valid_o_ss~q\,
	combout => \reg_ctrl_inst|data_valid_o_s~0_combout\);

-- Location: FF_X39_Y17_N23
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

-- Location: FF_X39_Y17_N1
\uart_ctrl_inst|uart_mngt_inst|reg_data_valid_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	asdata => \reg_ctrl_inst|data_valid_o_s~q\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|reg_data_valid_s~q\);

-- Location: LCCOMB_X39_Y17_N14
\uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[7]~2_combout\ = (\reg_ctrl_inst|data_valid_o_s~q\ & !\uart_ctrl_inst|uart_mngt_inst|reg_data_valid_s~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|data_valid_o_s~q\,
	datad => \uart_ctrl_inst|uart_mngt_inst|reg_data_valid_s~q\,
	combout => \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[7]~2_combout\);

-- Location: LCCOMB_X40_Y14_N30
\uart_ctrl_inst|uart_mngt_inst|parse_done_s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|parse_done_s~0_combout\ = (\uart_ctrl_inst|uart_mngt_inst|parse_done_s~q\) # ((\uart_ctrl_inst|uart_mngt_inst|start_parse_s~q\ & ((\uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[7]~2_combout\) # 
-- (\uart_ctrl_inst|uart_mngt_inst|cmd_byte_error_s~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[7]~2_combout\,
	datab => \uart_ctrl_inst|uart_mngt_inst|start_parse_s~q\,
	datac => \uart_ctrl_inst|uart_mngt_inst|parse_done_s~q\,
	datad => \uart_ctrl_inst|uart_mngt_inst|cmd_byte_error_s~q\,
	combout => \uart_ctrl_inst|uart_mngt_inst|parse_done_s~0_combout\);

-- Location: FF_X40_Y14_N31
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

-- Location: LCCOMB_X40_Y14_N24
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

-- Location: FF_X40_Y14_N25
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

-- Location: LCCOMB_X41_Y14_N12
\uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx~3_combout\ = (!\uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\ & (!\uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx\(1) & (!\uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx\(0) & 
-- \uart_ctrl_inst|uart_mngt_inst|send_resp_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\,
	datab => \uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx\(1),
	datac => \uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx\(0),
	datad => \uart_ctrl_inst|uart_mngt_inst|send_resp_s~q\,
	combout => \uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx~3_combout\);

-- Location: LCCOMB_X41_Y14_N20
\uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx~2_combout\ = ((!\uart_ctrl_inst|uart_mngt_inst|tx_done_i_s~q\ & (\uart_ctrl_inst|tx_uart_inst|tx_done_s~q\ & !\uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\))) # 
-- (!\uart_ctrl_inst|uart_mngt_inst|send_resp_s~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|uart_mngt_inst|send_resp_s~q\,
	datab => \uart_ctrl_inst|uart_mngt_inst|tx_done_i_s~q\,
	datac => \uart_ctrl_inst|tx_uart_inst|tx_done_s~q\,
	datad => \uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\,
	combout => \uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx~2_combout\);

-- Location: FF_X41_Y14_N13
\uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx~3_combout\,
	clrn => \reset_n~input_o\,
	ena => \uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx\(0));

-- Location: LCCOMB_X41_Y14_N24
\uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx~1_combout\ = (\uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx\(0) & (!\uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\ & (!\uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx\(1) & 
-- \uart_ctrl_inst|uart_mngt_inst|send_resp_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx\(0),
	datab => \uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\,
	datac => \uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx\(1),
	datad => \uart_ctrl_inst|uart_mngt_inst|send_resp_s~q\,
	combout => \uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx~1_combout\);

-- Location: FF_X41_Y14_N25
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

-- Location: LCCOMB_X41_Y14_N4
\uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~0_combout\ = (\uart_ctrl_inst|uart_mngt_inst|send_resp_s~q\ & ((\uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\) # ((\uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx~0_combout\ & 
-- \uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx~0_combout\,
	datab => \uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx\(1),
	datac => \uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\,
	datad => \uart_ctrl_inst|uart_mngt_inst|send_resp_s~q\,
	combout => \uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~0_combout\);

-- Location: FF_X41_Y14_N5
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

-- Location: LCCOMB_X41_Y14_N18
\uart_ctrl_inst|uart_mngt_inst|p_tx_mng~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|p_tx_mng~0_combout\ = (!\uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\ & \uart_ctrl_inst|uart_mngt_inst|send_resp_s~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\,
	datad => \uart_ctrl_inst|uart_mngt_inst|send_resp_s~q\,
	combout => \uart_ctrl_inst|uart_mngt_inst|p_tx_mng~0_combout\);

-- Location: LCCOMB_X41_Y14_N14
\uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~4_combout\ = (!\uart_ctrl_inst|uart_mngt_inst|send_resp_s~q\) # (!\uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\,
	datad => \uart_ctrl_inst|uart_mngt_inst|send_resp_s~q\,
	combout => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~4_combout\);

-- Location: LCCOMB_X41_Y14_N10
\uart_ctrl_inst|uart_mngt_inst|start_tx_o_s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|start_tx_o_s~0_combout\ = (\uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx~0_combout\ & (((\uart_ctrl_inst|uart_mngt_inst|start_tx_o_s~q\ & !\uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~4_combout\)))) # 
-- (!\uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx~0_combout\ & ((\uart_ctrl_inst|uart_mngt_inst|p_tx_mng~0_combout\) # ((\uart_ctrl_inst|uart_mngt_inst|start_tx_o_s~q\ & !\uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx~0_combout\,
	datab => \uart_ctrl_inst|uart_mngt_inst|p_tx_mng~0_combout\,
	datac => \uart_ctrl_inst|uart_mngt_inst|start_tx_o_s~q\,
	datad => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~4_combout\,
	combout => \uart_ctrl_inst|uart_mngt_inst|start_tx_o_s~0_combout\);

-- Location: FF_X41_Y14_N11
\uart_ctrl_inst|uart_mngt_inst|start_tx_o_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|uart_mngt_inst|start_tx_o_s~0_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|start_tx_o_s~q\);

-- Location: LCCOMB_X40_Y16_N4
\uart_ctrl_inst|tx_uart_inst|start_tx_s~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|start_tx_s~feeder_combout\ = \uart_ctrl_inst|uart_mngt_inst|start_tx_o_s~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_ctrl_inst|uart_mngt_inst|start_tx_o_s~q\,
	combout => \uart_ctrl_inst|tx_uart_inst|start_tx_s~feeder_combout\);

-- Location: FF_X40_Y16_N5
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

-- Location: LCCOMB_X40_Y16_N8
\uart_ctrl_inst|tx_uart_inst|start_tx_r_edge~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|start_tx_r_edge~0_combout\ = (!\uart_ctrl_inst|tx_uart_inst|start_tx_s~q\ & \uart_ctrl_inst|uart_mngt_inst|start_tx_o_s~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_ctrl_inst|tx_uart_inst|start_tx_s~q\,
	datad => \uart_ctrl_inst|uart_mngt_inst|start_tx_o_s~q\,
	combout => \uart_ctrl_inst|tx_uart_inst|start_tx_r_edge~0_combout\);

-- Location: FF_X40_Y16_N9
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

-- Location: LCCOMB_X38_Y16_N16
\uart_ctrl_inst|tx_uart_inst|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|Selector6~0_combout\ = (!\uart_ctrl_inst|tx_uart_inst|tx_fsm.IDLE~q\ & \uart_ctrl_inst|tx_uart_inst|start_tx_r_edge~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_ctrl_inst|tx_uart_inst|tx_fsm.IDLE~q\,
	datad => \uart_ctrl_inst|tx_uart_inst|start_tx_r_edge~q\,
	combout => \uart_ctrl_inst|tx_uart_inst|Selector6~0_combout\);

-- Location: LCCOMB_X38_Y16_N8
\uart_ctrl_inst|tx_uart_inst|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|Selector1~0_combout\ = (!\uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP~q\ & ((\uart_ctrl_inst|tx_uart_inst|Selector6~0_combout\) # ((\uart_ctrl_inst|tx_uart_inst|tx_fsm.LATCH_INPUTS~q\ & 
-- !\uart_ctrl_inst|tx_uart_inst|Selector6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP~q\,
	datab => \uart_ctrl_inst|tx_uart_inst|Selector6~0_combout\,
	datac => \uart_ctrl_inst|tx_uart_inst|tx_fsm.LATCH_INPUTS~q\,
	datad => \uart_ctrl_inst|tx_uart_inst|Selector6~4_combout\,
	combout => \uart_ctrl_inst|tx_uart_inst|Selector1~0_combout\);

-- Location: FF_X38_Y16_N9
\uart_ctrl_inst|tx_uart_inst|tx_fsm.LATCH_INPUTS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|tx_uart_inst|Selector1~0_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|tx_uart_inst|tx_fsm.LATCH_INPUTS~q\);

-- Location: FF_X38_Y16_N17
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

-- Location: LCCOMB_X38_Y16_N26
\uart_ctrl_inst|tx_uart_inst|Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|Selector6~1_combout\ = (\uart_ctrl_inst|tx_uart_inst|tx_fsm.IDLE~q\ & (\uart_ctrl_inst|tx_uart_inst|latch_done_s~q\ & (\uart_ctrl_inst|tx_uart_inst|tx_fsm.LATCH_INPUTS~q\))) # (!\uart_ctrl_inst|tx_uart_inst|tx_fsm.IDLE~q\ & 
-- ((\uart_ctrl_inst|tx_uart_inst|start_tx_r_edge~q\) # ((\uart_ctrl_inst|tx_uart_inst|latch_done_s~q\ & \uart_ctrl_inst|tx_uart_inst|tx_fsm.LATCH_INPUTS~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|tx_uart_inst|tx_fsm.IDLE~q\,
	datab => \uart_ctrl_inst|tx_uart_inst|latch_done_s~q\,
	datac => \uart_ctrl_inst|tx_uart_inst|tx_fsm.LATCH_INPUTS~q\,
	datad => \uart_ctrl_inst|tx_uart_inst|start_tx_r_edge~q\,
	combout => \uart_ctrl_inst|tx_uart_inst|Selector6~1_combout\);

-- Location: LCCOMB_X38_Y16_N28
\uart_ctrl_inst|tx_uart_inst|Selector6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|Selector6~5_combout\ = (\uart_ctrl_inst|tx_uart_inst|tx_fsm.LATCH_INPUTS~q\ & \uart_ctrl_inst|tx_uart_inst|latch_done_s~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_ctrl_inst|tx_uart_inst|tx_fsm.LATCH_INPUTS~q\,
	datac => \uart_ctrl_inst|tx_uart_inst|latch_done_s~q\,
	combout => \uart_ctrl_inst|tx_uart_inst|Selector6~5_combout\);

-- Location: LCCOMB_X38_Y16_N14
\uart_ctrl_inst|tx_uart_inst|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|Selector2~0_combout\ = (!\uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP~q\ & ((\uart_ctrl_inst|tx_uart_inst|Selector6~5_combout\) # ((\uart_ctrl_inst|tx_uart_inst|tx_fsm.START_BIT_GEN~q\ & 
-- !\uart_ctrl_inst|tx_uart_inst|Selector6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP~q\,
	datab => \uart_ctrl_inst|tx_uart_inst|Selector6~5_combout\,
	datac => \uart_ctrl_inst|tx_uart_inst|tx_fsm.START_BIT_GEN~q\,
	datad => \uart_ctrl_inst|tx_uart_inst|Selector6~4_combout\,
	combout => \uart_ctrl_inst|tx_uart_inst|Selector2~0_combout\);

-- Location: FF_X38_Y16_N15
\uart_ctrl_inst|tx_uart_inst|tx_fsm.START_BIT_GEN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|tx_uart_inst|Selector2~0_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|tx_uart_inst|tx_fsm.START_BIT_GEN~q\);

-- Location: LCCOMB_X39_Y16_N2
\uart_ctrl_inst|tx_uart_inst|cnt_data[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|cnt_data[0]~4_combout\ = (\uart_ctrl_inst|tx_uart_inst|tick_data~q\ & (\uart_ctrl_inst|tx_uart_inst|cnt_data\(0) $ (VCC))) # (!\uart_ctrl_inst|tx_uart_inst|tick_data~q\ & (\uart_ctrl_inst|tx_uart_inst|cnt_data\(0) & VCC))
-- \uart_ctrl_inst|tx_uart_inst|cnt_data[0]~5\ = CARRY((\uart_ctrl_inst|tx_uart_inst|tick_data~q\ & \uart_ctrl_inst|tx_uart_inst|cnt_data\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|tx_uart_inst|tick_data~q\,
	datab => \uart_ctrl_inst|tx_uart_inst|cnt_data\(0),
	datad => VCC,
	combout => \uart_ctrl_inst|tx_uart_inst|cnt_data[0]~4_combout\,
	cout => \uart_ctrl_inst|tx_uart_inst|cnt_data[0]~5\);

-- Location: LCCOMB_X39_Y16_N4
\uart_ctrl_inst|tx_uart_inst|cnt_data[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|cnt_data[1]~6_combout\ = (\uart_ctrl_inst|tx_uart_inst|cnt_data\(1) & (!\uart_ctrl_inst|tx_uart_inst|cnt_data[0]~5\)) # (!\uart_ctrl_inst|tx_uart_inst|cnt_data\(1) & ((\uart_ctrl_inst|tx_uart_inst|cnt_data[0]~5\) # (GND)))
-- \uart_ctrl_inst|tx_uart_inst|cnt_data[1]~7\ = CARRY((!\uart_ctrl_inst|tx_uart_inst|cnt_data[0]~5\) # (!\uart_ctrl_inst|tx_uart_inst|cnt_data\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_ctrl_inst|tx_uart_inst|cnt_data\(1),
	datad => VCC,
	cin => \uart_ctrl_inst|tx_uart_inst|cnt_data[0]~5\,
	combout => \uart_ctrl_inst|tx_uart_inst|cnt_data[1]~6_combout\,
	cout => \uart_ctrl_inst|tx_uart_inst|cnt_data[1]~7\);

-- Location: LCCOMB_X39_Y16_N16
\uart_ctrl_inst|tx_uart_inst|tx_s~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|tx_s~1_combout\ = (!\uart_ctrl_inst|tx_uart_inst|tx_fsm.START_BIT_GEN~q\ & !\uart_ctrl_inst|tx_uart_inst|tx_fsm.LATCH_INPUTS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|tx_uart_inst|tx_fsm.START_BIT_GEN~q\,
	datad => \uart_ctrl_inst|tx_uart_inst|tx_fsm.LATCH_INPUTS~q\,
	combout => \uart_ctrl_inst|tx_uart_inst|tx_s~1_combout\);

-- Location: LCCOMB_X39_Y16_N30
\uart_ctrl_inst|tx_uart_inst|cnt_data[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|cnt_data[3]~12_combout\ = (\uart_ctrl_inst|tx_uart_inst|tx_fsm.IDLE~q\ & (\uart_ctrl_inst|tx_uart_inst|tx_s~1_combout\ & ((\uart_ctrl_inst|tx_uart_inst|tx_fsm.DATA_GEN~q\) # (\uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|tx_uart_inst|tx_fsm.DATA_GEN~q\,
	datab => \uart_ctrl_inst|tx_uart_inst|tx_fsm.IDLE~q\,
	datac => \uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP~q\,
	datad => \uart_ctrl_inst|tx_uart_inst|tx_s~1_combout\,
	combout => \uart_ctrl_inst|tx_uart_inst|cnt_data[3]~12_combout\);

-- Location: FF_X39_Y16_N5
\uart_ctrl_inst|tx_uart_inst|cnt_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|tx_uart_inst|cnt_data[1]~6_combout\,
	clrn => \reset_n~input_o\,
	sclr => \uart_ctrl_inst|tx_uart_inst|Selector5~0_combout\,
	ena => \uart_ctrl_inst|tx_uart_inst|cnt_data[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|tx_uart_inst|cnt_data\(1));

-- Location: LCCOMB_X39_Y16_N6
\uart_ctrl_inst|tx_uart_inst|cnt_data[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|cnt_data[2]~8_combout\ = (\uart_ctrl_inst|tx_uart_inst|cnt_data\(2) & (\uart_ctrl_inst|tx_uart_inst|cnt_data[1]~7\ $ (GND))) # (!\uart_ctrl_inst|tx_uart_inst|cnt_data\(2) & (!\uart_ctrl_inst|tx_uart_inst|cnt_data[1]~7\ & VCC))
-- \uart_ctrl_inst|tx_uart_inst|cnt_data[2]~9\ = CARRY((\uart_ctrl_inst|tx_uart_inst|cnt_data\(2) & !\uart_ctrl_inst|tx_uart_inst|cnt_data[1]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|tx_uart_inst|cnt_data\(2),
	datad => VCC,
	cin => \uart_ctrl_inst|tx_uart_inst|cnt_data[1]~7\,
	combout => \uart_ctrl_inst|tx_uart_inst|cnt_data[2]~8_combout\,
	cout => \uart_ctrl_inst|tx_uart_inst|cnt_data[2]~9\);

-- Location: FF_X39_Y16_N7
\uart_ctrl_inst|tx_uart_inst|cnt_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|tx_uart_inst|cnt_data[2]~8_combout\,
	clrn => \reset_n~input_o\,
	sclr => \uart_ctrl_inst|tx_uart_inst|Selector5~0_combout\,
	ena => \uart_ctrl_inst|tx_uart_inst|cnt_data[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|tx_uart_inst|cnt_data\(2));

-- Location: LCCOMB_X39_Y16_N8
\uart_ctrl_inst|tx_uart_inst|cnt_data[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|cnt_data[3]~10_combout\ = \uart_ctrl_inst|tx_uart_inst|cnt_data\(3) $ (\uart_ctrl_inst|tx_uart_inst|cnt_data[2]~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_ctrl_inst|tx_uart_inst|cnt_data\(3),
	cin => \uart_ctrl_inst|tx_uart_inst|cnt_data[2]~9\,
	combout => \uart_ctrl_inst|tx_uart_inst|cnt_data[3]~10_combout\);

-- Location: FF_X39_Y16_N9
\uart_ctrl_inst|tx_uart_inst|cnt_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|tx_uart_inst|cnt_data[3]~10_combout\,
	clrn => \reset_n~input_o\,
	sclr => \uart_ctrl_inst|tx_uart_inst|Selector5~0_combout\,
	ena => \uart_ctrl_inst|tx_uart_inst|cnt_data[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|tx_uart_inst|cnt_data\(3));

-- Location: LCCOMB_X39_Y16_N20
\uart_ctrl_inst|tx_uart_inst|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|Selector5~0_combout\ = (\uart_ctrl_inst|tx_uart_inst|cnt_data\(3)) # (!\uart_ctrl_inst|tx_uart_inst|tx_fsm.DATA_GEN~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_ctrl_inst|tx_uart_inst|cnt_data\(3),
	datad => \uart_ctrl_inst|tx_uart_inst|tx_fsm.DATA_GEN~q\,
	combout => \uart_ctrl_inst|tx_uart_inst|Selector5~0_combout\);

-- Location: FF_X39_Y16_N3
\uart_ctrl_inst|tx_uart_inst|cnt_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|tx_uart_inst|cnt_data[0]~4_combout\,
	clrn => \reset_n~input_o\,
	sclr => \uart_ctrl_inst|tx_uart_inst|Selector5~0_combout\,
	ena => \uart_ctrl_inst|tx_uart_inst|cnt_data[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|tx_uart_inst|cnt_data\(0));

-- Location: LCCOMB_X39_Y16_N22
\uart_ctrl_inst|tx_uart_inst|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|Selector5~1_combout\ = (\uart_ctrl_inst|tx_uart_inst|tx_fsm.DATA_GEN~q\ & (\uart_ctrl_inst|tx_uart_inst|cnt_data\(1) & (!\uart_ctrl_inst|tx_uart_inst|cnt_data\(3) & \uart_ctrl_inst|tx_uart_inst|tick_data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|tx_uart_inst|tx_fsm.DATA_GEN~q\,
	datab => \uart_ctrl_inst|tx_uart_inst|cnt_data\(1),
	datac => \uart_ctrl_inst|tx_uart_inst|cnt_data\(3),
	datad => \uart_ctrl_inst|tx_uart_inst|tick_data~q\,
	combout => \uart_ctrl_inst|tx_uart_inst|Selector5~1_combout\);

-- Location: LCCOMB_X39_Y16_N24
\uart_ctrl_inst|tx_uart_inst|Selector5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|Selector5~2_combout\ = (\uart_ctrl_inst|tx_uart_inst|cnt_data\(0) & (\uart_ctrl_inst|tx_uart_inst|Selector5~1_combout\ & \uart_ctrl_inst|tx_uart_inst|cnt_data\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_ctrl_inst|tx_uart_inst|cnt_data\(0),
	datac => \uart_ctrl_inst|tx_uart_inst|Selector5~1_combout\,
	datad => \uart_ctrl_inst|tx_uart_inst|cnt_data\(2),
	combout => \uart_ctrl_inst|tx_uart_inst|Selector5~2_combout\);

-- Location: LCCOMB_X38_Y16_N0
\uart_ctrl_inst|tx_uart_inst|Selector6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|Selector6~3_combout\ = (\uart_ctrl_inst|tx_uart_inst|tx_fsm.DATA_GEN~q\ & (((\uart_ctrl_inst|tx_uart_inst|Selector5~2_combout\)))) # (!\uart_ctrl_inst|tx_uart_inst|tx_fsm.DATA_GEN~q\ & 
-- (\uart_ctrl_inst|tx_uart_inst|tx_fsm.START_BIT_GEN~q\ & ((\uart_ctrl_inst|tx_uart_inst|tick_data~q\) # (\uart_ctrl_inst|tx_uart_inst|Selector5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|tx_uart_inst|tick_data~q\,
	datab => \uart_ctrl_inst|tx_uart_inst|tx_fsm.DATA_GEN~q\,
	datac => \uart_ctrl_inst|tx_uart_inst|tx_fsm.START_BIT_GEN~q\,
	datad => \uart_ctrl_inst|tx_uart_inst|Selector5~2_combout\,
	combout => \uart_ctrl_inst|tx_uart_inst|Selector6~3_combout\);

-- Location: LCCOMB_X38_Y16_N6
\uart_ctrl_inst|tx_uart_inst|Selector6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|Selector6~4_combout\ = (\uart_ctrl_inst|tx_uart_inst|Selector6~1_combout\) # ((\uart_ctrl_inst|tx_uart_inst|Selector6~3_combout\) # ((\uart_ctrl_inst|tx_uart_inst|Selector6~2_combout\ & 
-- \uart_ctrl_inst|tx_uart_inst|tick_data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|tx_uart_inst|Selector6~2_combout\,
	datab => \uart_ctrl_inst|tx_uart_inst|tick_data~q\,
	datac => \uart_ctrl_inst|tx_uart_inst|Selector6~1_combout\,
	datad => \uart_ctrl_inst|tx_uart_inst|Selector6~3_combout\,
	combout => \uart_ctrl_inst|tx_uart_inst|Selector6~4_combout\);

-- Location: LCCOMB_X38_Y16_N18
\uart_ctrl_inst|tx_uart_inst|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|Selector0~0_combout\ = (!\uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP~q\ & ((\uart_ctrl_inst|tx_uart_inst|tx_fsm.IDLE~q\) # (\uart_ctrl_inst|tx_uart_inst|Selector6~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP~q\,
	datac => \uart_ctrl_inst|tx_uart_inst|tx_fsm.IDLE~q\,
	datad => \uart_ctrl_inst|tx_uart_inst|Selector6~4_combout\,
	combout => \uart_ctrl_inst|tx_uart_inst|Selector0~0_combout\);

-- Location: FF_X38_Y16_N19
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

-- Location: LCCOMB_X38_Y16_N20
\uart_ctrl_inst|tx_uart_inst|Selector5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|Selector5~4_combout\ = (\uart_ctrl_inst|tx_uart_inst|tx_fsm.START_BIT_GEN~q\) # ((!\uart_ctrl_inst|tx_uart_inst|cnt_stop_bit~q\ & (\uart_ctrl_inst|tx_uart_inst|tx_fsm.IDLE~q\ & 
-- \uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP_BIT_GEN~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|tx_uart_inst|cnt_stop_bit~q\,
	datab => \uart_ctrl_inst|tx_uart_inst|tx_fsm.IDLE~q\,
	datac => \uart_ctrl_inst|tx_uart_inst|tx_fsm.START_BIT_GEN~q\,
	datad => \uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP_BIT_GEN~q\,
	combout => \uart_ctrl_inst|tx_uart_inst|Selector5~4_combout\);

-- Location: LCCOMB_X38_Y16_N22
\uart_ctrl_inst|tx_uart_inst|Selector5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|Selector5~3_combout\ = (\uart_ctrl_inst|tx_uart_inst|tx_fsm.IDLE~q\ & (((!\uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP_BIT_GEN~q\ & \uart_ctrl_inst|tx_uart_inst|Selector6~5_combout\)))) # 
-- (!\uart_ctrl_inst|tx_uart_inst|tx_fsm.IDLE~q\ & (\uart_ctrl_inst|tx_uart_inst|start_tx_r_edge~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|tx_uart_inst|start_tx_r_edge~q\,
	datab => \uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP_BIT_GEN~q\,
	datac => \uart_ctrl_inst|tx_uart_inst|Selector6~5_combout\,
	datad => \uart_ctrl_inst|tx_uart_inst|tx_fsm.IDLE~q\,
	combout => \uart_ctrl_inst|tx_uart_inst|Selector5~3_combout\);

-- Location: LCCOMB_X38_Y16_N30
\uart_ctrl_inst|tx_uart_inst|Selector5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|Selector5~5_combout\ = (\uart_ctrl_inst|tx_uart_inst|Selector5~3_combout\) # ((\uart_ctrl_inst|tx_uart_inst|Selector5~2_combout\) # ((\uart_ctrl_inst|tx_uart_inst|tick_data~q\ & 
-- \uart_ctrl_inst|tx_uart_inst|Selector5~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|tx_uart_inst|tick_data~q\,
	datab => \uart_ctrl_inst|tx_uart_inst|Selector5~4_combout\,
	datac => \uart_ctrl_inst|tx_uart_inst|Selector5~3_combout\,
	datad => \uart_ctrl_inst|tx_uart_inst|Selector5~2_combout\,
	combout => \uart_ctrl_inst|tx_uart_inst|Selector5~5_combout\);

-- Location: LCCOMB_X38_Y16_N24
\uart_ctrl_inst|tx_uart_inst|Selector5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|Selector5~6_combout\ = (!\uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP~q\ & ((\uart_ctrl_inst|tx_uart_inst|Selector5~2_combout\) # ((!\uart_ctrl_inst|tx_uart_inst|Selector5~5_combout\ & 
-- \uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP_BIT_GEN~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|tx_uart_inst|Selector5~5_combout\,
	datab => \uart_ctrl_inst|tx_uart_inst|Selector5~2_combout\,
	datac => \uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP_BIT_GEN~q\,
	datad => \uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP~q\,
	combout => \uart_ctrl_inst|tx_uart_inst|Selector5~6_combout\);

-- Location: FF_X38_Y16_N25
\uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP_BIT_GEN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|tx_uart_inst|Selector5~6_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP_BIT_GEN~q\);

-- Location: LCCOMB_X39_Y16_N14
\uart_ctrl_inst|tx_uart_inst|Selector6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|Selector6~6_combout\ = (\uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP_BIT_GEN~q\ & (!\uart_ctrl_inst|tx_uart_inst|cnt_stop_bit~q\ & (!\uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP~q\ & \uart_ctrl_inst|tx_uart_inst|tick_data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP_BIT_GEN~q\,
	datab => \uart_ctrl_inst|tx_uart_inst|cnt_stop_bit~q\,
	datac => \uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP~q\,
	datad => \uart_ctrl_inst|tx_uart_inst|tick_data~q\,
	combout => \uart_ctrl_inst|tx_uart_inst|Selector6~6_combout\);

-- Location: FF_X39_Y16_N15
\uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|tx_uart_inst|Selector6~6_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP~q\);

-- Location: LCCOMB_X40_Y16_N14
\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[11]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[11]~13_combout\ = (!\uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP~q\ & (!\uart_ctrl_inst|tx_uart_inst|tx_fsm.LATCH_INPUTS~q\ & \uart_ctrl_inst|tx_uart_inst|tx_fsm.IDLE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP~q\,
	datac => \uart_ctrl_inst|tx_uart_inst|tx_fsm.LATCH_INPUTS~q\,
	datad => \uart_ctrl_inst|tx_uart_inst|tx_fsm.IDLE~q\,
	combout => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[11]~13_combout\);

-- Location: LCCOMB_X41_Y16_N4
\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[11]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[11]~38_combout\ = ((!\uart_ctrl_inst|tx_uart_inst|LessThan0~0_combout\ & ((!\uart_ctrl_inst|tx_uart_inst|LessThan0~2_combout\) # (!\uart_ctrl_inst|tx_uart_inst|LessThan0~3_combout\)))) # 
-- (!\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[11]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|tx_uart_inst|LessThan0~3_combout\,
	datab => \uart_ctrl_inst|tx_uart_inst|LessThan0~2_combout\,
	datac => \uart_ctrl_inst|tx_uart_inst|LessThan0~0_combout\,
	datad => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[11]~13_combout\,
	combout => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[11]~38_combout\);

-- Location: FF_X41_Y16_N7
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
	sclr => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[11]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(0));

-- Location: LCCOMB_X41_Y16_N8
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

-- Location: FF_X41_Y16_N9
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
	sclr => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[11]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(1));

-- Location: LCCOMB_X41_Y16_N10
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

-- Location: FF_X41_Y16_N11
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
	sclr => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[11]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(2));

-- Location: LCCOMB_X41_Y16_N12
\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[3]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[3]~20_combout\ = (\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(3) & (!\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[2]~19\)) # (!\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(3) & 
-- ((\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[2]~19\) # (GND)))
-- \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[3]~21\ = CARRY((!\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[2]~19\) # (!\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(3),
	datad => VCC,
	cin => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[2]~19\,
	combout => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[3]~20_combout\,
	cout => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[3]~21\);

-- Location: FF_X41_Y16_N13
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
	sclr => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[11]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(3));

-- Location: LCCOMB_X41_Y16_N14
\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[4]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[4]~22_combout\ = (\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(4) & (\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[3]~21\ $ (GND))) # (!\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(4) & 
-- (!\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[3]~21\ & VCC))
-- \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[4]~23\ = CARRY((\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(4) & !\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[3]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(4),
	datad => VCC,
	cin => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[3]~21\,
	combout => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[4]~22_combout\,
	cout => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[4]~23\);

-- Location: FF_X41_Y16_N15
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
	sclr => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[11]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(4));

-- Location: LCCOMB_X41_Y16_N16
\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[5]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[5]~24_combout\ = (\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(5) & (!\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[4]~23\)) # (!\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(5) & 
-- ((\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[4]~23\) # (GND)))
-- \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[5]~25\ = CARRY((!\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[4]~23\) # (!\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(5),
	datad => VCC,
	cin => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[4]~23\,
	combout => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[5]~24_combout\,
	cout => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[5]~25\);

-- Location: FF_X41_Y16_N17
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
	sclr => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[11]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(5));

-- Location: LCCOMB_X41_Y16_N18
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

-- Location: FF_X41_Y16_N19
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
	sclr => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[11]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(6));

-- Location: LCCOMB_X41_Y16_N20
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

-- Location: FF_X41_Y16_N21
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
	sclr => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[11]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(7));

-- Location: LCCOMB_X41_Y16_N22
\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[8]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[8]~30_combout\ = (\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(8) & (\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[7]~29\ $ (GND))) # (!\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(8) & 
-- (!\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[7]~29\ & VCC))
-- \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[8]~31\ = CARRY((\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(8) & !\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[7]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(8),
	datad => VCC,
	cin => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[7]~29\,
	combout => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[8]~30_combout\,
	cout => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[8]~31\);

-- Location: FF_X41_Y16_N23
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
	sclr => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[11]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(8));

-- Location: LCCOMB_X41_Y16_N24
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

-- Location: FF_X41_Y16_N25
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
	sclr => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[11]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(9));

-- Location: LCCOMB_X41_Y16_N26
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

-- Location: FF_X41_Y16_N27
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
	sclr => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[11]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(10));

-- Location: LCCOMB_X41_Y16_N28
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

-- Location: FF_X41_Y16_N29
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
	sclr => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[11]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(11));

-- Location: LCCOMB_X41_Y16_N30
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

-- Location: FF_X41_Y16_N31
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
	sclr => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[11]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration\(12));

-- Location: LCCOMB_X40_Y16_N6
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

-- Location: LCCOMB_X40_Y16_N2
\uart_ctrl_inst|tx_uart_inst|tick_data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|tick_data~0_combout\ = (!\uart_ctrl_inst|tx_uart_inst|LessThan0~0_combout\ & (\uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[11]~13_combout\ & ((!\uart_ctrl_inst|tx_uart_inst|LessThan0~2_combout\) # 
-- (!\uart_ctrl_inst|tx_uart_inst|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|tx_uart_inst|LessThan0~0_combout\,
	datab => \uart_ctrl_inst|tx_uart_inst|LessThan0~3_combout\,
	datac => \uart_ctrl_inst|tx_uart_inst|cnt_bit_duration[11]~13_combout\,
	datad => \uart_ctrl_inst|tx_uart_inst|LessThan0~2_combout\,
	combout => \uart_ctrl_inst|tx_uart_inst|tick_data~0_combout\);

-- Location: FF_X40_Y16_N3
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

-- Location: LCCOMB_X39_Y16_N12
\uart_ctrl_inst|tx_uart_inst|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|Selector3~0_combout\ = (\uart_ctrl_inst|tx_uart_inst|tick_data~q\ & \uart_ctrl_inst|tx_uart_inst|tx_fsm.START_BIT_GEN~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|tx_uart_inst|tick_data~q\,
	datad => \uart_ctrl_inst|tx_uart_inst|tx_fsm.START_BIT_GEN~q\,
	combout => \uart_ctrl_inst|tx_uart_inst|Selector3~0_combout\);

-- Location: LCCOMB_X39_Y16_N10
\uart_ctrl_inst|tx_uart_inst|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|Selector3~1_combout\ = (!\uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP~q\ & ((\uart_ctrl_inst|tx_uart_inst|Selector3~0_combout\) # ((\uart_ctrl_inst|tx_uart_inst|tx_fsm.DATA_GEN~q\ & 
-- !\uart_ctrl_inst|tx_uart_inst|Selector5~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|tx_uart_inst|Selector3~0_combout\,
	datab => \uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP~q\,
	datac => \uart_ctrl_inst|tx_uart_inst|tx_fsm.DATA_GEN~q\,
	datad => \uart_ctrl_inst|tx_uart_inst|Selector5~5_combout\,
	combout => \uart_ctrl_inst|tx_uart_inst|Selector3~1_combout\);

-- Location: FF_X39_Y16_N11
\uart_ctrl_inst|tx_uart_inst|tx_fsm.DATA_GEN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|tx_uart_inst|Selector3~1_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|tx_uart_inst|tx_fsm.DATA_GEN~q\);

-- Location: LCCOMB_X39_Y16_N26
\uart_ctrl_inst|tx_uart_inst|tx_s~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|tx_s~2_combout\ = ((!\uart_ctrl_inst|tx_uart_inst|tx_fsm.DATA_GEN~q\ & (\uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP_BIT_GEN~q\ & \uart_ctrl_inst|tx_uart_inst|tx_s~1_combout\))) # (!\uart_ctrl_inst|tx_uart_inst|tx_fsm.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|tx_uart_inst|tx_fsm.DATA_GEN~q\,
	datab => \uart_ctrl_inst|tx_uart_inst|tx_fsm.STOP_BIT_GEN~q\,
	datac => \uart_ctrl_inst|tx_uart_inst|tx_fsm.IDLE~q\,
	datad => \uart_ctrl_inst|tx_uart_inst|tx_s~1_combout\,
	combout => \uart_ctrl_inst|tx_uart_inst|tx_s~2_combout\);

-- Location: LCCOMB_X39_Y16_N18
\uart_ctrl_inst|tx_uart_inst|tx_s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|tx_s~0_combout\ = (!\uart_ctrl_inst|tx_uart_inst|tx_s~q\ & ((\uart_ctrl_inst|tx_uart_inst|tx_fsm.LATCH_INPUTS~q\) # ((\uart_ctrl_inst|tx_uart_inst|Selector5~0_combout\ & 
-- !\uart_ctrl_inst|tx_uart_inst|tx_fsm.START_BIT_GEN~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|tx_uart_inst|tx_fsm.LATCH_INPUTS~q\,
	datab => \uart_ctrl_inst|tx_uart_inst|Selector5~0_combout\,
	datac => \uart_ctrl_inst|tx_uart_inst|tx_fsm.START_BIT_GEN~q\,
	datad => \uart_ctrl_inst|tx_uart_inst|tx_s~q\,
	combout => \uart_ctrl_inst|tx_uart_inst|tx_s~0_combout\);

-- Location: LCCOMB_X39_Y16_N0
\uart_ctrl_inst|tx_uart_inst|tx_s~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|tx_s~4_combout\ = (\uart_ctrl_inst|tx_uart_inst|tx_fsm.DATA_GEN~q\ & (!\uart_ctrl_inst|tx_uart_inst|cnt_data\(3) & (!\uart_ctrl_inst|tx_uart_inst|tx_fsm.LATCH_INPUTS~q\ & 
-- !\uart_ctrl_inst|tx_uart_inst|tx_fsm.START_BIT_GEN~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|tx_uart_inst|tx_fsm.DATA_GEN~q\,
	datab => \uart_ctrl_inst|tx_uart_inst|cnt_data\(3),
	datac => \uart_ctrl_inst|tx_uart_inst|tx_fsm.LATCH_INPUTS~q\,
	datad => \uart_ctrl_inst|tx_uart_inst|tx_fsm.START_BIT_GEN~q\,
	combout => \uart_ctrl_inst|tx_uart_inst|tx_s~4_combout\);

-- Location: LCCOMB_X39_Y14_N14
\uart_ctrl_inst|uart_mngt_inst|send_ko_resp_s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|send_ko_resp_s~0_combout\ = (\uart_ctrl_inst|uart_mngt_inst|cmd_byte_error_s~q\) # ((!\uart_ctrl_inst|uart_mngt_inst|reg_data_valid_s~q\ & (!\reg_ctrl_inst|reg_addr_ok_o_s~q\ & \reg_ctrl_inst|data_valid_o_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|uart_mngt_inst|reg_data_valid_s~q\,
	datab => \reg_ctrl_inst|reg_addr_ok_o_s~q\,
	datac => \uart_ctrl_inst|uart_mngt_inst|cmd_byte_error_s~q\,
	datad => \reg_ctrl_inst|data_valid_o_s~q\,
	combout => \uart_ctrl_inst|uart_mngt_inst|send_ko_resp_s~0_combout\);

-- Location: LCCOMB_X40_Y14_N28
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

-- Location: FF_X40_Y14_N29
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

-- Location: LCCOMB_X39_Y13_N6
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

-- Location: FF_X39_Y13_N7
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
	ena => \uart_ctrl_inst|uart_mngt_inst|byte_array[0][2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|byte_array[0][0]~q\);

-- Location: LCCOMB_X39_Y14_N20
\uart_ctrl_inst|uart_mngt_inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|Equal0~0_combout\ = (!\uart_ctrl_inst|uart_mngt_inst|cnt_byte_rx\(1)) # (!\uart_ctrl_inst|uart_mngt_inst|cnt_byte_rx\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_ctrl_inst|uart_mngt_inst|cnt_byte_rx\(0),
	datad => \uart_ctrl_inst|uart_mngt_inst|cnt_byte_rx\(1),
	combout => \uart_ctrl_inst|uart_mngt_inst|Equal0~0_combout\);

-- Location: LCCOMB_X40_Y14_N26
\uart_ctrl_inst|uart_mngt_inst|rw_cmd_s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|rw_cmd_s~0_combout\ = (\uart_ctrl_inst|uart_mngt_inst|Equal1~1_combout\ & ((\uart_ctrl_inst|uart_mngt_inst|Equal0~0_combout\ & ((\uart_ctrl_inst|uart_mngt_inst|rw_cmd_s~q\))) # 
-- (!\uart_ctrl_inst|uart_mngt_inst|Equal0~0_combout\ & (!\uart_ctrl_inst|uart_mngt_inst|byte_array[0][0]~q\)))) # (!\uart_ctrl_inst|uart_mngt_inst|Equal1~1_combout\ & (((\uart_ctrl_inst|uart_mngt_inst|rw_cmd_s~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|uart_mngt_inst|Equal1~1_combout\,
	datab => \uart_ctrl_inst|uart_mngt_inst|byte_array[0][0]~q\,
	datac => \uart_ctrl_inst|uart_mngt_inst|rw_cmd_s~q\,
	datad => \uart_ctrl_inst|uart_mngt_inst|Equal0~0_combout\,
	combout => \uart_ctrl_inst|uart_mngt_inst|rw_cmd_s~0_combout\);

-- Location: FF_X40_Y14_N27
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

-- Location: LCCOMB_X41_Y13_N14
\uart_ctrl_inst|uart_mngt_inst|byte_array[2][1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|byte_array[2][1]~10_combout\ = (\uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\) # ((\uart_ctrl_inst|uart_mngt_inst|cnt_byte_rx\(1) & (!\uart_ctrl_inst|uart_mngt_inst|cnt_byte_rx\(0) & 
-- \uart_ctrl_inst|uart_mngt_inst|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|uart_mngt_inst|cnt_byte_rx\(1),
	datab => \uart_ctrl_inst|uart_mngt_inst|cnt_byte_rx\(0),
	datac => \uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\,
	datad => \uart_ctrl_inst|uart_mngt_inst|Decoder0~0_combout\,
	combout => \uart_ctrl_inst|uart_mngt_inst|byte_array[2][1]~10_combout\);

-- Location: FF_X41_Y13_N13
\uart_ctrl_inst|uart_mngt_inst|byte_array[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	asdata => \uart_ctrl_inst|uart_mngt_inst|byte_array~6_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \uart_ctrl_inst|uart_mngt_inst|byte_array[2][1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|byte_array[2][2]~q\);

-- Location: LCCOMB_X41_Y13_N6
\uart_ctrl_inst|uart_mngt_inst|wdata_reg_s~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s~5_combout\ = (!\uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\ & \uart_ctrl_inst|uart_mngt_inst|byte_array[2][2]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\,
	datad => \uart_ctrl_inst|uart_mngt_inst|byte_array[2][2]~q\,
	combout => \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s~5_combout\);

-- Location: FF_X41_Y13_N7
\uart_ctrl_inst|uart_mngt_inst|wdata_reg_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s~5_combout\,
	clrn => \reset_n~input_o\,
	ena => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s\(2));

-- Location: LCCOMB_X44_Y17_N24
\reg_ctrl_inst|wdata_reg_i_s~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|wdata_reg_i_s~5_combout\ = (\uart_ctrl_inst|uart_mngt_inst|wdata_reg_s\(2) & \reg_ctrl_inst|start_rw_i_r_edge~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s\(2),
	datad => \reg_ctrl_inst|start_rw_i_r_edge~q\,
	combout => \reg_ctrl_inst|wdata_reg_i_s~5_combout\);

-- Location: FF_X44_Y17_N25
\reg_ctrl_inst|wdata_reg_i_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \reg_ctrl_inst|wdata_reg_i_s~5_combout\,
	clrn => \reset_n~input_o\,
	ena => \reg_ctrl_inst|rcvd_addr_reg_i_s[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|wdata_reg_i_s\(2));

-- Location: LCCOMB_X38_Y17_N8
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

-- Location: LCCOMB_X39_Y17_N6
\reg_ctrl_inst|array_reg[2][6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|array_reg[2][6]~3_combout\ = (!\reg_ctrl_inst|data_valid_o_s~q\ & (\reg_ctrl_inst|check_done_s~q\ & \reg_ctrl_inst|reg_addr_ok_o_s~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|data_valid_o_s~q\,
	datac => \reg_ctrl_inst|check_done_s~q\,
	datad => \reg_ctrl_inst|reg_addr_ok_o_s~q\,
	combout => \reg_ctrl_inst|array_reg[2][6]~3_combout\);

-- Location: LCCOMB_X43_Y17_N24
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

-- Location: FF_X43_Y17_N25
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
	ena => \reg_ctrl_inst|rcvd_addr_reg_i_s[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|rw_reg_i_s~q\);

-- Location: LCCOMB_X38_Y17_N16
\reg_ctrl_inst|array_reg[4][7]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|array_reg[4][7]~4_combout\ = (\reg_ctrl_inst|rcvd_addr_reg_i_s\(2) & !\reg_ctrl_inst|rcvd_addr_reg_i_s\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|rcvd_addr_reg_i_s\(2),
	datad => \reg_ctrl_inst|rcvd_addr_reg_i_s\(1),
	combout => \reg_ctrl_inst|array_reg[4][7]~4_combout\);

-- Location: LCCOMB_X38_Y17_N26
\reg_ctrl_inst|array_reg[4][7]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|array_reg[4][7]~5_combout\ = (\reg_ctrl_inst|array_reg[2][6]~3_combout\ & (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(0) & (!\reg_ctrl_inst|rw_reg_i_s~q\ & \reg_ctrl_inst|array_reg[4][7]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|array_reg[2][6]~3_combout\,
	datab => \reg_ctrl_inst|rcvd_addr_reg_i_s\(0),
	datac => \reg_ctrl_inst|rw_reg_i_s~q\,
	datad => \reg_ctrl_inst|array_reg[4][7]~4_combout\,
	combout => \reg_ctrl_inst|array_reg[4][7]~5_combout\);

-- Location: FF_X38_Y17_N9
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
	ena => \reg_ctrl_inst|array_reg[4][7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|array_reg[4][2]~q\);

-- Location: LCCOMB_X41_Y17_N22
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

-- Location: LCCOMB_X40_Y17_N10
\reg_ctrl_inst|array_reg[2][7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|array_reg[2][7]~6_combout\ = (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(2) & \reg_ctrl_inst|rcvd_addr_reg_i_s\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|rcvd_addr_reg_i_s\(2),
	datad => \reg_ctrl_inst|rcvd_addr_reg_i_s\(1),
	combout => \reg_ctrl_inst|array_reg[2][7]~6_combout\);

-- Location: LCCOMB_X40_Y17_N30
\reg_ctrl_inst|array_reg[3][7]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|array_reg[3][7]~11_combout\ = (\reg_ctrl_inst|rcvd_addr_reg_i_s\(0) & (\reg_ctrl_inst|array_reg[2][6]~3_combout\ & (!\reg_ctrl_inst|rw_reg_i_s~q\ & \reg_ctrl_inst|array_reg[2][7]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|rcvd_addr_reg_i_s\(0),
	datab => \reg_ctrl_inst|array_reg[2][6]~3_combout\,
	datac => \reg_ctrl_inst|rw_reg_i_s~q\,
	datad => \reg_ctrl_inst|array_reg[2][7]~6_combout\,
	combout => \reg_ctrl_inst|array_reg[3][7]~11_combout\);

-- Location: FF_X41_Y17_N23
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
	ena => \reg_ctrl_inst|array_reg[3][7]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|array_reg[3][2]~q\);

-- Location: LCCOMB_X40_Y17_N6
\reg_ctrl_inst|array_reg[1][7]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|array_reg[1][7]~8_combout\ = (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(2) & !\reg_ctrl_inst|rcvd_addr_reg_i_s\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|rcvd_addr_reg_i_s\(2),
	datad => \reg_ctrl_inst|rcvd_addr_reg_i_s\(1),
	combout => \reg_ctrl_inst|array_reg[1][7]~8_combout\);

-- Location: LCCOMB_X40_Y17_N2
\reg_ctrl_inst|array_reg[1][7]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|array_reg[1][7]~9_combout\ = (\reg_ctrl_inst|rcvd_addr_reg_i_s\(0) & (\reg_ctrl_inst|array_reg[2][6]~3_combout\ & (!\reg_ctrl_inst|rw_reg_i_s~q\ & \reg_ctrl_inst|array_reg[1][7]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|rcvd_addr_reg_i_s\(0),
	datab => \reg_ctrl_inst|array_reg[2][6]~3_combout\,
	datac => \reg_ctrl_inst|rw_reg_i_s~q\,
	datad => \reg_ctrl_inst|array_reg[1][7]~8_combout\,
	combout => \reg_ctrl_inst|array_reg[1][7]~9_combout\);

-- Location: FF_X40_Y17_N5
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
	ena => \reg_ctrl_inst|array_reg[1][7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|array_reg[1][2]~q\);

-- Location: LCCOMB_X44_Y17_N12
\reg_ctrl_inst|array_reg[0][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|array_reg[0][2]~feeder_combout\ = \reg_ctrl_inst|wdata_reg_i_s\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg_ctrl_inst|wdata_reg_i_s\(2),
	combout => \reg_ctrl_inst|array_reg[0][2]~feeder_combout\);

-- Location: LCCOMB_X40_Y17_N0
\reg_ctrl_inst|array_reg[0][7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|array_reg[0][7]~10_combout\ = (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(0) & (\reg_ctrl_inst|array_reg[2][6]~3_combout\ & (!\reg_ctrl_inst|rw_reg_i_s~q\ & \reg_ctrl_inst|array_reg[1][7]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|rcvd_addr_reg_i_s\(0),
	datab => \reg_ctrl_inst|array_reg[2][6]~3_combout\,
	datac => \reg_ctrl_inst|rw_reg_i_s~q\,
	datad => \reg_ctrl_inst|array_reg[1][7]~8_combout\,
	combout => \reg_ctrl_inst|array_reg[0][7]~10_combout\);

-- Location: FF_X44_Y17_N13
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
	ena => \reg_ctrl_inst|array_reg[0][7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|array_reg[0][2]~q\);

-- Location: LCCOMB_X40_Y17_N16
\reg_ctrl_inst|array_reg[2][7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|array_reg[2][7]~7_combout\ = (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(0) & (\reg_ctrl_inst|array_reg[2][6]~3_combout\ & (!\reg_ctrl_inst|rw_reg_i_s~q\ & \reg_ctrl_inst|array_reg[2][7]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|rcvd_addr_reg_i_s\(0),
	datab => \reg_ctrl_inst|array_reg[2][6]~3_combout\,
	datac => \reg_ctrl_inst|rw_reg_i_s~q\,
	datad => \reg_ctrl_inst|array_reg[2][7]~6_combout\,
	combout => \reg_ctrl_inst|array_reg[2][7]~7_combout\);

-- Location: FF_X41_Y17_N25
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
	ena => \reg_ctrl_inst|array_reg[2][7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|array_reg[2][2]~q\);

-- Location: LCCOMB_X41_Y17_N24
\reg_ctrl_inst|rdata_reg_o_s~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|rdata_reg_o_s~13_combout\ = (\reg_ctrl_inst|rcvd_addr_reg_i_s\(0) & (((\reg_ctrl_inst|rcvd_addr_reg_i_s\(1))))) # (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(0) & ((\reg_ctrl_inst|rcvd_addr_reg_i_s\(1) & ((\reg_ctrl_inst|array_reg[2][2]~q\))) # 
-- (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(1) & (\reg_ctrl_inst|array_reg[0][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|array_reg[0][2]~q\,
	datab => \reg_ctrl_inst|rcvd_addr_reg_i_s\(0),
	datac => \reg_ctrl_inst|array_reg[2][2]~q\,
	datad => \reg_ctrl_inst|rcvd_addr_reg_i_s\(1),
	combout => \reg_ctrl_inst|rdata_reg_o_s~13_combout\);

-- Location: LCCOMB_X40_Y17_N4
\reg_ctrl_inst|rdata_reg_o_s~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|rdata_reg_o_s~14_combout\ = (\reg_ctrl_inst|rcvd_addr_reg_i_s\(0) & ((\reg_ctrl_inst|rdata_reg_o_s~13_combout\ & (\reg_ctrl_inst|array_reg[3][2]~q\)) # (!\reg_ctrl_inst|rdata_reg_o_s~13_combout\ & ((\reg_ctrl_inst|array_reg[1][2]~q\))))) # 
-- (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(0) & (((\reg_ctrl_inst|rdata_reg_o_s~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|rcvd_addr_reg_i_s\(0),
	datab => \reg_ctrl_inst|array_reg[3][2]~q\,
	datac => \reg_ctrl_inst|array_reg[1][2]~q\,
	datad => \reg_ctrl_inst|rdata_reg_o_s~13_combout\,
	combout => \reg_ctrl_inst|rdata_reg_o_s~14_combout\);

-- Location: LCCOMB_X39_Y17_N28
\reg_ctrl_inst|rdata_reg_o_s~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|rdata_reg_o_s~15_combout\ = (\reg_ctrl_inst|check_done_s~q\ & ((\reg_ctrl_inst|rcvd_addr_reg_i_s\(2) & (\reg_ctrl_inst|array_reg[4][2]~q\)) # (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(2) & ((\reg_ctrl_inst|rdata_reg_o_s~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|array_reg[4][2]~q\,
	datab => \reg_ctrl_inst|rcvd_addr_reg_i_s\(2),
	datac => \reg_ctrl_inst|check_done_s~q\,
	datad => \reg_ctrl_inst|rdata_reg_o_s~14_combout\,
	combout => \reg_ctrl_inst|rdata_reg_o_s~15_combout\);

-- Location: LCCOMB_X39_Y17_N4
\reg_ctrl_inst|rdata_reg_o_s[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|rdata_reg_o_s[1]~3_combout\ = ((!\reg_ctrl_inst|data_valid_o_s~q\ & (\reg_ctrl_inst|rw_reg_i_s~q\ & \reg_ctrl_inst|reg_addr_ok_o_s~q\))) # (!\reg_ctrl_inst|check_done_s~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|data_valid_o_s~q\,
	datab => \reg_ctrl_inst|check_done_s~q\,
	datac => \reg_ctrl_inst|rw_reg_i_s~q\,
	datad => \reg_ctrl_inst|reg_addr_ok_o_s~q\,
	combout => \reg_ctrl_inst|rdata_reg_o_s[1]~3_combout\);

-- Location: FF_X39_Y17_N29
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
	ena => \reg_ctrl_inst|rdata_reg_o_s[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|rdata_reg_o_s\(2));

-- Location: LCCOMB_X39_Y14_N8
\uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[7]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[7]~4_combout\ = (!\uart_ctrl_inst|uart_mngt_inst|reg_data_valid_s~q\ & (\reg_ctrl_inst|data_valid_o_s~q\ & (\uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[7]~3_combout\ & \reg_ctrl_inst|reg_addr_ok_o_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|uart_mngt_inst|reg_data_valid_s~q\,
	datab => \reg_ctrl_inst|data_valid_o_s~q\,
	datac => \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[7]~3_combout\,
	datad => \reg_ctrl_inst|reg_addr_ok_o_s~q\,
	combout => \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[7]~4_combout\);

-- Location: FF_X39_Y14_N7
\uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	asdata => \reg_ctrl_inst|rdata_reg_o_s\(2),
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s\(2));

-- Location: LCCOMB_X41_Y14_N30
\uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~8_combout\ = (\uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx\(1) & (((\uart_ctrl_inst|uart_mngt_inst|rw_cmd_s~q\ & \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s\(2))))) # (!\uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx\(1) 
-- & (!\uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx\(0),
	datab => \uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx\(1),
	datac => \uart_ctrl_inst|uart_mngt_inst|rw_cmd_s~q\,
	datad => \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s\(2),
	combout => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~8_combout\);

-- Location: LCCOMB_X41_Y14_N28
\uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~9_combout\ = (\uart_ctrl_inst|uart_mngt_inst|p_tx_mng~0_combout\ & ((\uart_ctrl_inst|uart_mngt_inst|send_ko_resp_s~q\ & (\uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx\(0))) # 
-- (!\uart_ctrl_inst|uart_mngt_inst|send_ko_resp_s~q\ & ((\uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx\(0),
	datab => \uart_ctrl_inst|uart_mngt_inst|send_ko_resp_s~q\,
	datac => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~8_combout\,
	datad => \uart_ctrl_inst|uart_mngt_inst|p_tx_mng~0_combout\,
	combout => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~9_combout\);

-- Location: LCCOMB_X41_Y14_N16
\uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~13_combout\ = (\uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~9_combout\) # ((\uart_ctrl_inst|uart_mngt_inst|send_resp_s~q\ & (\uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\ & 
-- \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|uart_mngt_inst|send_resp_s~q\,
	datab => \uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\,
	datac => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s\(2),
	datad => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~9_combout\,
	combout => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~13_combout\);

-- Location: FF_X41_Y14_N17
\uart_ctrl_inst|uart_mngt_inst|tx_data_o_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~13_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s\(2));

-- Location: LCCOMB_X40_Y16_N12
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

-- Location: FF_X40_Y16_N13
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

-- Location: LCCOMB_X39_Y14_N6
\uart_ctrl_inst|uart_mngt_inst|tx_data_o_s[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s[7]~2_combout\ = (\uart_ctrl_inst|uart_mngt_inst|rw_cmd_s~q\ & !\uart_ctrl_inst|uart_mngt_inst|send_ko_resp_s~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_ctrl_inst|uart_mngt_inst|rw_cmd_s~q\,
	datad => \uart_ctrl_inst|uart_mngt_inst|send_ko_resp_s~q\,
	combout => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s[7]~2_combout\);

-- Location: FF_X41_Y13_N29
\uart_ctrl_inst|uart_mngt_inst|byte_array[2][3]\ : dffeas
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
	ena => \uart_ctrl_inst|uart_mngt_inst|byte_array[2][1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|byte_array[2][3]~q\);

-- Location: LCCOMB_X41_Y13_N24
\uart_ctrl_inst|uart_mngt_inst|wdata_reg_s~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s~7_combout\ = (!\uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\ & \uart_ctrl_inst|uart_mngt_inst|byte_array[2][3]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\,
	datad => \uart_ctrl_inst|uart_mngt_inst|byte_array[2][3]~q\,
	combout => \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s~7_combout\);

-- Location: FF_X41_Y13_N25
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
	ena => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s\(3));

-- Location: LCCOMB_X44_Y17_N6
\reg_ctrl_inst|wdata_reg_i_s~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|wdata_reg_i_s~7_combout\ = (\uart_ctrl_inst|uart_mngt_inst|wdata_reg_s\(3) & \reg_ctrl_inst|start_rw_i_r_edge~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s\(3),
	datad => \reg_ctrl_inst|start_rw_i_r_edge~q\,
	combout => \reg_ctrl_inst|wdata_reg_i_s~7_combout\);

-- Location: FF_X44_Y17_N7
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
	ena => \reg_ctrl_inst|rcvd_addr_reg_i_s[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|wdata_reg_i_s\(3));

-- Location: LCCOMB_X38_Y17_N0
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

-- Location: FF_X38_Y17_N1
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
	ena => \reg_ctrl_inst|array_reg[4][7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|array_reg[4][3]~q\);

-- Location: LCCOMB_X41_Y17_N8
\reg_ctrl_inst|array_reg[2][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|array_reg[2][3]~feeder_combout\ = \reg_ctrl_inst|wdata_reg_i_s\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_ctrl_inst|wdata_reg_i_s\(3),
	combout => \reg_ctrl_inst|array_reg[2][3]~feeder_combout\);

-- Location: FF_X41_Y17_N9
\reg_ctrl_inst|array_reg[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \reg_ctrl_inst|array_reg[2][3]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \reg_ctrl_inst|array_reg[2][7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|array_reg[2][3]~q\);

-- Location: FF_X40_Y17_N11
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
	ena => \reg_ctrl_inst|array_reg[0][7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|array_reg[0][3]~q\);

-- Location: FF_X40_Y17_N21
\reg_ctrl_inst|array_reg[1][3]\ : dffeas
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
	ena => \reg_ctrl_inst|array_reg[1][7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|array_reg[1][3]~q\);

-- Location: LCCOMB_X40_Y17_N20
\reg_ctrl_inst|rdata_reg_o_s~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|rdata_reg_o_s~22_combout\ = (\reg_ctrl_inst|rcvd_addr_reg_i_s\(1) & (((\reg_ctrl_inst|rcvd_addr_reg_i_s\(0))))) # (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(1) & ((\reg_ctrl_inst|rcvd_addr_reg_i_s\(0) & ((\reg_ctrl_inst|array_reg[1][3]~q\))) # 
-- (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(0) & (\reg_ctrl_inst|array_reg[0][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|array_reg[0][3]~q\,
	datab => \reg_ctrl_inst|rcvd_addr_reg_i_s\(1),
	datac => \reg_ctrl_inst|array_reg[1][3]~q\,
	datad => \reg_ctrl_inst|rcvd_addr_reg_i_s\(0),
	combout => \reg_ctrl_inst|rdata_reg_o_s~22_combout\);

-- Location: LCCOMB_X41_Y17_N10
\reg_ctrl_inst|array_reg[3][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|array_reg[3][3]~feeder_combout\ = \reg_ctrl_inst|wdata_reg_i_s\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_ctrl_inst|wdata_reg_i_s\(3),
	combout => \reg_ctrl_inst|array_reg[3][3]~feeder_combout\);

-- Location: FF_X41_Y17_N11
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
	ena => \reg_ctrl_inst|array_reg[3][7]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|array_reg[3][3]~q\);

-- Location: LCCOMB_X39_Y17_N18
\reg_ctrl_inst|rdata_reg_o_s~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|rdata_reg_o_s~23_combout\ = (\reg_ctrl_inst|rcvd_addr_reg_i_s\(1) & ((\reg_ctrl_inst|rdata_reg_o_s~22_combout\ & ((\reg_ctrl_inst|array_reg[3][3]~q\))) # (!\reg_ctrl_inst|rdata_reg_o_s~22_combout\ & (\reg_ctrl_inst|array_reg[2][3]~q\)))) # 
-- (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(1) & (((\reg_ctrl_inst|rdata_reg_o_s~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|rcvd_addr_reg_i_s\(1),
	datab => \reg_ctrl_inst|array_reg[2][3]~q\,
	datac => \reg_ctrl_inst|rdata_reg_o_s~22_combout\,
	datad => \reg_ctrl_inst|array_reg[3][3]~q\,
	combout => \reg_ctrl_inst|rdata_reg_o_s~23_combout\);

-- Location: LCCOMB_X39_Y17_N26
\reg_ctrl_inst|rdata_reg_o_s~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|rdata_reg_o_s~24_combout\ = (\reg_ctrl_inst|check_done_s~q\ & ((\reg_ctrl_inst|rcvd_addr_reg_i_s\(2) & (\reg_ctrl_inst|array_reg[4][3]~q\)) # (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(2) & ((\reg_ctrl_inst|rdata_reg_o_s~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|array_reg[4][3]~q\,
	datab => \reg_ctrl_inst|check_done_s~q\,
	datac => \reg_ctrl_inst|rcvd_addr_reg_i_s\(2),
	datad => \reg_ctrl_inst|rdata_reg_o_s~23_combout\,
	combout => \reg_ctrl_inst|rdata_reg_o_s~24_combout\);

-- Location: FF_X39_Y17_N27
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
	ena => \reg_ctrl_inst|rdata_reg_o_s[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|rdata_reg_o_s\(3));

-- Location: LCCOMB_X39_Y14_N18
\uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[3]~feeder_combout\ = \reg_ctrl_inst|rdata_reg_o_s\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg_ctrl_inst|rdata_reg_o_s\(3),
	combout => \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[3]~feeder_combout\);

-- Location: FF_X39_Y14_N19
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

-- Location: LCCOMB_X39_Y14_N30
\uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~12_combout\ = (\uart_ctrl_inst|uart_mngt_inst|p_tx_mng~0_combout\ & (((\uart_ctrl_inst|uart_mngt_inst|tx_data_o_s[7]~2_combout\ & \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s\(3))) # 
-- (!\uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s[7]~2_combout\,
	datab => \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s\(3),
	datac => \uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx\(1),
	datad => \uart_ctrl_inst|uart_mngt_inst|p_tx_mng~0_combout\,
	combout => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~12_combout\);

-- Location: FF_X39_Y14_N31
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
	ena => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s\(3));

-- Location: FF_X40_Y16_N23
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

-- Location: FF_X41_Y13_N9
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
	ena => \uart_ctrl_inst|uart_mngt_inst|byte_array[2][1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|byte_array[2][1]~q\);

-- Location: LCCOMB_X40_Y13_N30
\uart_ctrl_inst|uart_mngt_inst|wdata_reg_s~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s~6_combout\ = (!\uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\ & \uart_ctrl_inst|uart_mngt_inst|byte_array[2][1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\,
	datac => \uart_ctrl_inst|uart_mngt_inst|byte_array[2][1]~q\,
	combout => \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s~6_combout\);

-- Location: FF_X40_Y13_N31
\uart_ctrl_inst|uart_mngt_inst|wdata_reg_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s~6_combout\,
	clrn => \reset_n~input_o\,
	ena => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s\(1));

-- Location: LCCOMB_X43_Y17_N22
\reg_ctrl_inst|wdata_reg_i_s~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|wdata_reg_i_s~6_combout\ = (\uart_ctrl_inst|uart_mngt_inst|wdata_reg_s\(1) & \reg_ctrl_inst|start_rw_i_r_edge~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s\(1),
	datad => \reg_ctrl_inst|start_rw_i_r_edge~q\,
	combout => \reg_ctrl_inst|wdata_reg_i_s~6_combout\);

-- Location: FF_X43_Y17_N23
\reg_ctrl_inst|wdata_reg_i_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \reg_ctrl_inst|wdata_reg_i_s~6_combout\,
	clrn => \reset_n~input_o\,
	ena => \reg_ctrl_inst|rcvd_addr_reg_i_s[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|wdata_reg_i_s\(1));

-- Location: LCCOMB_X38_Y17_N14
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

-- Location: FF_X38_Y17_N15
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
	ena => \reg_ctrl_inst|array_reg[4][7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|array_reg[4][1]~q\);

-- Location: LCCOMB_X41_Y17_N30
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

-- Location: FF_X41_Y17_N31
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
	ena => \reg_ctrl_inst|array_reg[3][7]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|array_reg[3][1]~q\);

-- Location: LCCOMB_X41_Y17_N0
\reg_ctrl_inst|array_reg[2][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|array_reg[2][1]~feeder_combout\ = \reg_ctrl_inst|wdata_reg_i_s\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg_ctrl_inst|wdata_reg_i_s\(1),
	combout => \reg_ctrl_inst|array_reg[2][1]~feeder_combout\);

-- Location: FF_X41_Y17_N1
\reg_ctrl_inst|array_reg[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \reg_ctrl_inst|array_reg[2][1]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \reg_ctrl_inst|array_reg[2][7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|array_reg[2][1]~q\);

-- Location: FF_X40_Y17_N19
\reg_ctrl_inst|array_reg[1][1]\ : dffeas
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
	ena => \reg_ctrl_inst|array_reg[1][7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|array_reg[1][1]~q\);

-- Location: LCCOMB_X38_Y17_N20
\reg_ctrl_inst|array_reg[0][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|array_reg[0][1]~feeder_combout\ = \reg_ctrl_inst|wdata_reg_i_s\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg_ctrl_inst|wdata_reg_i_s\(1),
	combout => \reg_ctrl_inst|array_reg[0][1]~feeder_combout\);

-- Location: FF_X38_Y17_N21
\reg_ctrl_inst|array_reg[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \reg_ctrl_inst|array_reg[0][1]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \reg_ctrl_inst|array_reg[0][7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|array_reg[0][1]~q\);

-- Location: LCCOMB_X40_Y17_N18
\reg_ctrl_inst|rdata_reg_o_s~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|rdata_reg_o_s~16_combout\ = (\reg_ctrl_inst|rcvd_addr_reg_i_s\(0) & ((\reg_ctrl_inst|rcvd_addr_reg_i_s\(1)) # ((\reg_ctrl_inst|array_reg[1][1]~q\)))) # (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(0) & (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(1) & 
-- ((\reg_ctrl_inst|array_reg[0][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|rcvd_addr_reg_i_s\(0),
	datab => \reg_ctrl_inst|rcvd_addr_reg_i_s\(1),
	datac => \reg_ctrl_inst|array_reg[1][1]~q\,
	datad => \reg_ctrl_inst|array_reg[0][1]~q\,
	combout => \reg_ctrl_inst|rdata_reg_o_s~16_combout\);

-- Location: LCCOMB_X40_Y17_N28
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

-- Location: LCCOMB_X39_Y17_N8
\reg_ctrl_inst|rdata_reg_o_s~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|rdata_reg_o_s~18_combout\ = (\reg_ctrl_inst|check_done_s~q\ & ((\reg_ctrl_inst|rcvd_addr_reg_i_s\(2) & (\reg_ctrl_inst|array_reg[4][1]~q\)) # (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(2) & ((\reg_ctrl_inst|rdata_reg_o_s~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|array_reg[4][1]~q\,
	datab => \reg_ctrl_inst|check_done_s~q\,
	datac => \reg_ctrl_inst|rcvd_addr_reg_i_s\(2),
	datad => \reg_ctrl_inst|rdata_reg_o_s~17_combout\,
	combout => \reg_ctrl_inst|rdata_reg_o_s~18_combout\);

-- Location: FF_X39_Y17_N9
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
	ena => \reg_ctrl_inst|rdata_reg_o_s[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|rdata_reg_o_s\(1));

-- Location: LCCOMB_X39_Y14_N2
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

-- Location: FF_X39_Y14_N3
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

-- Location: LCCOMB_X40_Y14_N22
\uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~10_combout\ = (\uart_ctrl_inst|uart_mngt_inst|p_tx_mng~0_combout\ & (((\uart_ctrl_inst|uart_mngt_inst|rdata_reg_s\(1) & \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s[7]~2_combout\)) # 
-- (!\uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s\(1),
	datab => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s[7]~2_combout\,
	datac => \uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx\(1),
	datad => \uart_ctrl_inst|uart_mngt_inst|p_tx_mng~0_combout\,
	combout => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~10_combout\);

-- Location: FF_X40_Y14_N23
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
	ena => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s\(1));

-- Location: LCCOMB_X40_Y16_N26
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

-- Location: FF_X40_Y16_N27
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

-- Location: FF_X41_Y13_N19
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
	ena => \uart_ctrl_inst|uart_mngt_inst|byte_array[2][1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|byte_array[2][0]~q\);

-- Location: LCCOMB_X41_Y13_N20
\uart_ctrl_inst|uart_mngt_inst|wdata_reg_s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s~0_combout\ = (!\uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\ & \uart_ctrl_inst|uart_mngt_inst|byte_array[2][0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\,
	datad => \uart_ctrl_inst|uart_mngt_inst|byte_array[2][0]~q\,
	combout => \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s~0_combout\);

-- Location: FF_X41_Y13_N21
\uart_ctrl_inst|uart_mngt_inst|wdata_reg_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s~0_combout\,
	clrn => \reset_n~input_o\,
	ena => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s\(0));

-- Location: LCCOMB_X44_Y17_N22
\reg_ctrl_inst|wdata_reg_i_s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|wdata_reg_i_s~0_combout\ = (\reg_ctrl_inst|start_rw_i_r_edge~q\ & \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|start_rw_i_r_edge~q\,
	datad => \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s\(0),
	combout => \reg_ctrl_inst|wdata_reg_i_s~0_combout\);

-- Location: FF_X44_Y17_N23
\reg_ctrl_inst|wdata_reg_i_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \reg_ctrl_inst|wdata_reg_i_s~0_combout\,
	clrn => \reset_n~input_o\,
	ena => \reg_ctrl_inst|rcvd_addr_reg_i_s[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|wdata_reg_i_s\(0));

-- Location: LCCOMB_X38_Y17_N2
\reg_ctrl_inst|array_reg[4][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|array_reg[4][0]~feeder_combout\ = \reg_ctrl_inst|wdata_reg_i_s\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg_ctrl_inst|wdata_reg_i_s\(0),
	combout => \reg_ctrl_inst|array_reg[4][0]~feeder_combout\);

-- Location: FF_X38_Y17_N3
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
	ena => \reg_ctrl_inst|array_reg[4][7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|array_reg[4][0]~q\);

-- Location: LCCOMB_X43_Y17_N2
\reg_ctrl_inst|array_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|array_reg~0_combout\ = (!\reg_ctrl_inst|data_valid_o_s~q\ & (\reg_ctrl_inst|check_done_s~q\ & (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(2) & \reg_ctrl_inst|reg_addr_ok_o_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|data_valid_o_s~q\,
	datab => \reg_ctrl_inst|check_done_s~q\,
	datac => \reg_ctrl_inst|rcvd_addr_reg_i_s\(2),
	datad => \reg_ctrl_inst|reg_addr_ok_o_s~q\,
	combout => \reg_ctrl_inst|array_reg~0_combout\);

-- Location: LCCOMB_X44_Y17_N0
\reg_ctrl_inst|array_reg~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|array_reg~1_combout\ = (\reg_ctrl_inst|wdata_reg_i_s\(0) & (\reg_ctrl_inst|rcvd_addr_reg_i_s\(0) & (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(1) & !\reg_ctrl_inst|rw_reg_i_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|wdata_reg_i_s\(0),
	datab => \reg_ctrl_inst|rcvd_addr_reg_i_s\(0),
	datac => \reg_ctrl_inst|rcvd_addr_reg_i_s\(1),
	datad => \reg_ctrl_inst|rw_reg_i_s~q\,
	combout => \reg_ctrl_inst|array_reg~1_combout\);

-- Location: LCCOMB_X44_Y18_N18
\reg_ctrl_inst|array_reg~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|array_reg~2_combout\ = (\reg_ctrl_inst|array_reg~0_combout\ & \reg_ctrl_inst|array_reg~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_ctrl_inst|array_reg~0_combout\,
	datad => \reg_ctrl_inst|array_reg~1_combout\,
	combout => \reg_ctrl_inst|array_reg~2_combout\);

-- Location: FF_X44_Y18_N19
\reg_ctrl_inst|array_reg[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \reg_ctrl_inst|array_reg~2_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|array_reg[1][0]~q\);

-- Location: FF_X41_Y17_N27
\reg_ctrl_inst|array_reg[3][0]\ : dffeas
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
	ena => \reg_ctrl_inst|array_reg[3][7]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|array_reg[3][0]~q\);

-- Location: LCCOMB_X40_Y17_N14
\reg_ctrl_inst|array_reg[0][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|array_reg[0][0]~feeder_combout\ = \reg_ctrl_inst|wdata_reg_i_s\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg_ctrl_inst|wdata_reg_i_s\(0),
	combout => \reg_ctrl_inst|array_reg[0][0]~feeder_combout\);

-- Location: FF_X40_Y17_N15
\reg_ctrl_inst|array_reg[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \reg_ctrl_inst|array_reg[0][0]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \reg_ctrl_inst|array_reg[0][7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|array_reg[0][0]~q\);

-- Location: FF_X41_Y17_N29
\reg_ctrl_inst|array_reg[2][0]\ : dffeas
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
	ena => \reg_ctrl_inst|array_reg[2][7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|array_reg[2][0]~q\);

-- Location: LCCOMB_X41_Y17_N28
\reg_ctrl_inst|rdata_reg_o_s~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|rdata_reg_o_s~19_combout\ = (\reg_ctrl_inst|rcvd_addr_reg_i_s\(0) & (((\reg_ctrl_inst|rcvd_addr_reg_i_s\(1))))) # (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(0) & ((\reg_ctrl_inst|rcvd_addr_reg_i_s\(1) & ((\reg_ctrl_inst|array_reg[2][0]~q\))) # 
-- (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(1) & (\reg_ctrl_inst|array_reg[0][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|array_reg[0][0]~q\,
	datab => \reg_ctrl_inst|rcvd_addr_reg_i_s\(0),
	datac => \reg_ctrl_inst|array_reg[2][0]~q\,
	datad => \reg_ctrl_inst|rcvd_addr_reg_i_s\(1),
	combout => \reg_ctrl_inst|rdata_reg_o_s~19_combout\);

-- Location: LCCOMB_X41_Y17_N26
\reg_ctrl_inst|rdata_reg_o_s~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|rdata_reg_o_s~20_combout\ = (\reg_ctrl_inst|rcvd_addr_reg_i_s\(0) & ((\reg_ctrl_inst|rdata_reg_o_s~19_combout\ & ((\reg_ctrl_inst|array_reg[3][0]~q\))) # (!\reg_ctrl_inst|rdata_reg_o_s~19_combout\ & (\reg_ctrl_inst|array_reg[1][0]~q\)))) # 
-- (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(0) & (((\reg_ctrl_inst|rdata_reg_o_s~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|array_reg[1][0]~q\,
	datab => \reg_ctrl_inst|rcvd_addr_reg_i_s\(0),
	datac => \reg_ctrl_inst|array_reg[3][0]~q\,
	datad => \reg_ctrl_inst|rdata_reg_o_s~19_combout\,
	combout => \reg_ctrl_inst|rdata_reg_o_s~20_combout\);

-- Location: LCCOMB_X39_Y17_N16
\reg_ctrl_inst|rdata_reg_o_s~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|rdata_reg_o_s~21_combout\ = (\reg_ctrl_inst|check_done_s~q\ & ((\reg_ctrl_inst|rcvd_addr_reg_i_s\(2) & (\reg_ctrl_inst|array_reg[4][0]~q\)) # (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(2) & ((\reg_ctrl_inst|rdata_reg_o_s~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|array_reg[4][0]~q\,
	datab => \reg_ctrl_inst|check_done_s~q\,
	datac => \reg_ctrl_inst|rcvd_addr_reg_i_s\(2),
	datad => \reg_ctrl_inst|rdata_reg_o_s~20_combout\,
	combout => \reg_ctrl_inst|rdata_reg_o_s~21_combout\);

-- Location: FF_X39_Y17_N17
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
	ena => \reg_ctrl_inst|rdata_reg_o_s[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|rdata_reg_o_s\(0));

-- Location: LCCOMB_X39_Y14_N24
\uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[0]~feeder_combout\ = \reg_ctrl_inst|rdata_reg_o_s\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_ctrl_inst|rdata_reg_o_s\(0),
	combout => \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[0]~feeder_combout\);

-- Location: FF_X39_Y14_N25
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

-- Location: LCCOMB_X40_Y14_N8
\uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~11_combout\ = (\uart_ctrl_inst|uart_mngt_inst|p_tx_mng~0_combout\ & (((\uart_ctrl_inst|uart_mngt_inst|rdata_reg_s\(0)) # (!\uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx\(1))) # 
-- (!\uart_ctrl_inst|uart_mngt_inst|tx_data_o_s[7]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|uart_mngt_inst|p_tx_mng~0_combout\,
	datab => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s[7]~2_combout\,
	datac => \uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx\(1),
	datad => \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s\(0),
	combout => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~11_combout\);

-- Location: FF_X40_Y14_N9
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
	ena => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s\(0));

-- Location: FF_X40_Y16_N1
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

-- Location: LCCOMB_X40_Y16_N0
\uart_ctrl_inst|tx_uart_inst|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|Mux0~2_combout\ = (\uart_ctrl_inst|tx_uart_inst|cnt_data\(1) & (((\uart_ctrl_inst|tx_uart_inst|cnt_data\(0))))) # (!\uart_ctrl_inst|tx_uart_inst|cnt_data\(1) & ((\uart_ctrl_inst|tx_uart_inst|cnt_data\(0) & 
-- (\uart_ctrl_inst|tx_uart_inst|tx_data_s\(1))) # (!\uart_ctrl_inst|tx_uart_inst|cnt_data\(0) & ((\uart_ctrl_inst|tx_uart_inst|tx_data_s\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|tx_uart_inst|tx_data_s\(1),
	datab => \uart_ctrl_inst|tx_uart_inst|cnt_data\(1),
	datac => \uart_ctrl_inst|tx_uart_inst|tx_data_s\(0),
	datad => \uart_ctrl_inst|tx_uart_inst|cnt_data\(0),
	combout => \uart_ctrl_inst|tx_uart_inst|Mux0~2_combout\);

-- Location: LCCOMB_X40_Y16_N22
\uart_ctrl_inst|tx_uart_inst|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|Mux0~3_combout\ = (\uart_ctrl_inst|tx_uart_inst|cnt_data\(1) & ((\uart_ctrl_inst|tx_uart_inst|Mux0~2_combout\ & ((\uart_ctrl_inst|tx_uart_inst|tx_data_s\(3)))) # (!\uart_ctrl_inst|tx_uart_inst|Mux0~2_combout\ & 
-- (\uart_ctrl_inst|tx_uart_inst|tx_data_s\(2))))) # (!\uart_ctrl_inst|tx_uart_inst|cnt_data\(1) & (((\uart_ctrl_inst|tx_uart_inst|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|tx_uart_inst|tx_data_s\(2),
	datab => \uart_ctrl_inst|tx_uart_inst|cnt_data\(1),
	datac => \uart_ctrl_inst|tx_uart_inst|tx_data_s\(3),
	datad => \uart_ctrl_inst|tx_uart_inst|Mux0~2_combout\,
	combout => \uart_ctrl_inst|tx_uart_inst|Mux0~3_combout\);

-- Location: FF_X41_Y13_N27
\uart_ctrl_inst|uart_mngt_inst|byte_array[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	asdata => \uart_ctrl_inst|uart_mngt_inst|byte_array~2_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \uart_ctrl_inst|uart_mngt_inst|byte_array[2][1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|byte_array[2][5]~q\);

-- Location: LCCOMB_X41_Y13_N10
\uart_ctrl_inst|uart_mngt_inst|wdata_reg_s~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s~1_combout\ = (!\uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\ & \uart_ctrl_inst|uart_mngt_inst|byte_array[2][5]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\,
	datad => \uart_ctrl_inst|uart_mngt_inst|byte_array[2][5]~q\,
	combout => \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s~1_combout\);

-- Location: FF_X41_Y13_N11
\uart_ctrl_inst|uart_mngt_inst|wdata_reg_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s~1_combout\,
	clrn => \reset_n~input_o\,
	ena => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s\(5));

-- Location: LCCOMB_X43_Y17_N16
\reg_ctrl_inst|wdata_reg_i_s~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|wdata_reg_i_s~1_combout\ = (\reg_ctrl_inst|start_rw_i_r_edge~q\ & \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|start_rw_i_r_edge~q\,
	datad => \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s\(5),
	combout => \reg_ctrl_inst|wdata_reg_i_s~1_combout\);

-- Location: FF_X43_Y17_N17
\reg_ctrl_inst|wdata_reg_i_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \reg_ctrl_inst|wdata_reg_i_s~1_combout\,
	clrn => \reset_n~input_o\,
	ena => \reg_ctrl_inst|rcvd_addr_reg_i_s[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|wdata_reg_i_s\(5));

-- Location: LCCOMB_X38_Y17_N28
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

-- Location: FF_X38_Y17_N29
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
	ena => \reg_ctrl_inst|array_reg[4][7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|array_reg[4][5]~q\);

-- Location: LCCOMB_X41_Y17_N6
\reg_ctrl_inst|array_reg[3][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|array_reg[3][5]~feeder_combout\ = \reg_ctrl_inst|wdata_reg_i_s\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_ctrl_inst|wdata_reg_i_s\(5),
	combout => \reg_ctrl_inst|array_reg[3][5]~feeder_combout\);

-- Location: FF_X41_Y17_N7
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
	ena => \reg_ctrl_inst|array_reg[3][7]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|array_reg[3][5]~q\);

-- Location: FF_X41_Y17_N13
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
	ena => \reg_ctrl_inst|array_reg[2][7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|array_reg[2][5]~q\);

-- Location: LCCOMB_X40_Y17_N26
\reg_ctrl_inst|array_reg[0][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|array_reg[0][5]~feeder_combout\ = \reg_ctrl_inst|wdata_reg_i_s\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_ctrl_inst|wdata_reg_i_s\(5),
	combout => \reg_ctrl_inst|array_reg[0][5]~feeder_combout\);

-- Location: FF_X40_Y17_N27
\reg_ctrl_inst|array_reg[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \reg_ctrl_inst|array_reg[0][5]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \reg_ctrl_inst|array_reg[0][7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|array_reg[0][5]~q\);

-- Location: FF_X40_Y17_N9
\reg_ctrl_inst|array_reg[1][5]\ : dffeas
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
	ena => \reg_ctrl_inst|array_reg[1][7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|array_reg[1][5]~q\);

-- Location: LCCOMB_X40_Y17_N8
\reg_ctrl_inst|rdata_reg_o_s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|rdata_reg_o_s~0_combout\ = (\reg_ctrl_inst|rcvd_addr_reg_i_s\(1) & (((\reg_ctrl_inst|rcvd_addr_reg_i_s\(0))))) # (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(1) & ((\reg_ctrl_inst|rcvd_addr_reg_i_s\(0) & ((\reg_ctrl_inst|array_reg[1][5]~q\))) # 
-- (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(0) & (\reg_ctrl_inst|array_reg[0][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|array_reg[0][5]~q\,
	datab => \reg_ctrl_inst|rcvd_addr_reg_i_s\(1),
	datac => \reg_ctrl_inst|array_reg[1][5]~q\,
	datad => \reg_ctrl_inst|rcvd_addr_reg_i_s\(0),
	combout => \reg_ctrl_inst|rdata_reg_o_s~0_combout\);

-- Location: LCCOMB_X41_Y17_N12
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

-- Location: LCCOMB_X39_Y17_N24
\reg_ctrl_inst|rdata_reg_o_s~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|rdata_reg_o_s~2_combout\ = (\reg_ctrl_inst|check_done_s~q\ & ((\reg_ctrl_inst|rcvd_addr_reg_i_s\(2) & (\reg_ctrl_inst|array_reg[4][5]~q\)) # (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(2) & ((\reg_ctrl_inst|rdata_reg_o_s~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|rcvd_addr_reg_i_s\(2),
	datab => \reg_ctrl_inst|array_reg[4][5]~q\,
	datac => \reg_ctrl_inst|check_done_s~q\,
	datad => \reg_ctrl_inst|rdata_reg_o_s~1_combout\,
	combout => \reg_ctrl_inst|rdata_reg_o_s~2_combout\);

-- Location: FF_X39_Y17_N25
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
	ena => \reg_ctrl_inst|rdata_reg_o_s[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|rdata_reg_o_s\(5));

-- Location: LCCOMB_X39_Y14_N12
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

-- Location: FF_X39_Y14_N13
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

-- Location: LCCOMB_X40_Y14_N4
\uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~3_combout\ = (\uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx\(1) & (\uart_ctrl_inst|uart_mngt_inst|p_tx_mng~0_combout\ & ((\uart_ctrl_inst|uart_mngt_inst|rdata_reg_s\(5)) # 
-- (!\uart_ctrl_inst|uart_mngt_inst|tx_data_o_s[7]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s\(5),
	datab => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s[7]~2_combout\,
	datac => \uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx\(1),
	datad => \uart_ctrl_inst|uart_mngt_inst|p_tx_mng~0_combout\,
	combout => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~3_combout\);

-- Location: FF_X40_Y14_N5
\uart_ctrl_inst|uart_mngt_inst|tx_data_o_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~3_combout\,
	clrn => \reset_n~input_o\,
	ena => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s\(5));

-- Location: FF_X40_Y16_N25
\uart_ctrl_inst|tx_uart_inst|tx_data_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	asdata => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s\(5),
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \uart_ctrl_inst|tx_uart_inst|tx_fsm.LATCH_INPUTS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|tx_uart_inst|tx_data_s\(5));

-- Location: FF_X41_Y13_N5
\uart_ctrl_inst|uart_mngt_inst|byte_array[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	asdata => \uart_ctrl_inst|uart_mngt_inst|byte_array~0_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \uart_ctrl_inst|uart_mngt_inst|byte_array[2][1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|byte_array[2][7]~q\);

-- Location: LCCOMB_X41_Y13_N0
\uart_ctrl_inst|uart_mngt_inst|wdata_reg_s~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s~4_combout\ = (\uart_ctrl_inst|uart_mngt_inst|byte_array[2][7]~q\ & !\uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_ctrl_inst|uart_mngt_inst|byte_array[2][7]~q\,
	datac => \uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\,
	combout => \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s~4_combout\);

-- Location: FF_X41_Y13_N1
\uart_ctrl_inst|uart_mngt_inst|wdata_reg_s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s~4_combout\,
	clrn => \reset_n~input_o\,
	ena => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s\(7));

-- Location: LCCOMB_X44_Y17_N18
\reg_ctrl_inst|wdata_reg_i_s~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|wdata_reg_i_s~4_combout\ = (\reg_ctrl_inst|start_rw_i_r_edge~q\ & \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|start_rw_i_r_edge~q\,
	datad => \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s\(7),
	combout => \reg_ctrl_inst|wdata_reg_i_s~4_combout\);

-- Location: FF_X44_Y17_N19
\reg_ctrl_inst|wdata_reg_i_s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \reg_ctrl_inst|wdata_reg_i_s~4_combout\,
	clrn => \reset_n~input_o\,
	ena => \reg_ctrl_inst|rcvd_addr_reg_i_s[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|wdata_reg_i_s\(7));

-- Location: LCCOMB_X38_Y17_N18
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

-- Location: FF_X38_Y17_N19
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
	ena => \reg_ctrl_inst|array_reg[4][7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|array_reg[4][7]~q\);

-- Location: LCCOMB_X41_Y17_N2
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

-- Location: FF_X41_Y17_N3
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
	ena => \reg_ctrl_inst|array_reg[3][7]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|array_reg[3][7]~q\);

-- Location: FF_X41_Y17_N21
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
	ena => \reg_ctrl_inst|array_reg[2][7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|array_reg[2][7]~q\);

-- Location: FF_X40_Y17_N7
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
	ena => \reg_ctrl_inst|array_reg[0][7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|array_reg[0][7]~q\);

-- Location: FF_X40_Y17_N13
\reg_ctrl_inst|array_reg[1][7]\ : dffeas
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
	ena => \reg_ctrl_inst|array_reg[1][7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|array_reg[1][7]~q\);

-- Location: LCCOMB_X40_Y17_N12
\reg_ctrl_inst|rdata_reg_o_s~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|rdata_reg_o_s~10_combout\ = (\reg_ctrl_inst|rcvd_addr_reg_i_s\(1) & (((\reg_ctrl_inst|rcvd_addr_reg_i_s\(0))))) # (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(1) & ((\reg_ctrl_inst|rcvd_addr_reg_i_s\(0) & ((\reg_ctrl_inst|array_reg[1][7]~q\))) # 
-- (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(0) & (\reg_ctrl_inst|array_reg[0][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|rcvd_addr_reg_i_s\(1),
	datab => \reg_ctrl_inst|array_reg[0][7]~q\,
	datac => \reg_ctrl_inst|array_reg[1][7]~q\,
	datad => \reg_ctrl_inst|rcvd_addr_reg_i_s\(0),
	combout => \reg_ctrl_inst|rdata_reg_o_s~10_combout\);

-- Location: LCCOMB_X41_Y17_N20
\reg_ctrl_inst|rdata_reg_o_s~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|rdata_reg_o_s~11_combout\ = (\reg_ctrl_inst|rcvd_addr_reg_i_s\(1) & ((\reg_ctrl_inst|rdata_reg_o_s~10_combout\ & (\reg_ctrl_inst|array_reg[3][7]~q\)) # (!\reg_ctrl_inst|rdata_reg_o_s~10_combout\ & ((\reg_ctrl_inst|array_reg[2][7]~q\))))) # 
-- (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(1) & (((\reg_ctrl_inst|rdata_reg_o_s~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|rcvd_addr_reg_i_s\(1),
	datab => \reg_ctrl_inst|array_reg[3][7]~q\,
	datac => \reg_ctrl_inst|array_reg[2][7]~q\,
	datad => \reg_ctrl_inst|rdata_reg_o_s~10_combout\,
	combout => \reg_ctrl_inst|rdata_reg_o_s~11_combout\);

-- Location: LCCOMB_X39_Y17_N2
\reg_ctrl_inst|rdata_reg_o_s~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|rdata_reg_o_s~12_combout\ = (\reg_ctrl_inst|check_done_s~q\ & ((\reg_ctrl_inst|rcvd_addr_reg_i_s\(2) & (\reg_ctrl_inst|array_reg[4][7]~q\)) # (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(2) & ((\reg_ctrl_inst|rdata_reg_o_s~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|rcvd_addr_reg_i_s\(2),
	datab => \reg_ctrl_inst|array_reg[4][7]~q\,
	datac => \reg_ctrl_inst|check_done_s~q\,
	datad => \reg_ctrl_inst|rdata_reg_o_s~11_combout\,
	combout => \reg_ctrl_inst|rdata_reg_o_s~12_combout\);

-- Location: FF_X39_Y17_N3
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
	ena => \reg_ctrl_inst|rdata_reg_o_s[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|rdata_reg_o_s\(7));

-- Location: LCCOMB_X39_Y14_N16
\uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[7]~feeder_combout\ = \reg_ctrl_inst|rdata_reg_o_s\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_ctrl_inst|rdata_reg_o_s\(7),
	combout => \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[7]~feeder_combout\);

-- Location: FF_X39_Y14_N17
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

-- Location: LCCOMB_X40_Y14_N20
\uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~7_combout\ = (\uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx\(1) & (\uart_ctrl_inst|uart_mngt_inst|rdata_reg_s\(7) & (\uart_ctrl_inst|uart_mngt_inst|tx_data_o_s[7]~2_combout\ & 
-- \uart_ctrl_inst|uart_mngt_inst|p_tx_mng~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx\(1),
	datab => \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s\(7),
	datac => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s[7]~2_combout\,
	datad => \uart_ctrl_inst|uart_mngt_inst|p_tx_mng~0_combout\,
	combout => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~7_combout\);

-- Location: FF_X40_Y14_N21
\uart_ctrl_inst|uart_mngt_inst|tx_data_o_s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~7_combout\,
	clrn => \reset_n~input_o\,
	ena => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s\(7));

-- Location: FF_X40_Y16_N19
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

-- Location: FF_X41_Y13_N31
\uart_ctrl_inst|uart_mngt_inst|byte_array[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	asdata => \uart_ctrl_inst|uart_mngt_inst|byte_array~3_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \uart_ctrl_inst|uart_mngt_inst|byte_array[2][1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|byte_array[2][6]~q\);

-- Location: LCCOMB_X41_Y13_N16
\uart_ctrl_inst|uart_mngt_inst|wdata_reg_s~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s~2_combout\ = (!\uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\ & \uart_ctrl_inst|uart_mngt_inst|byte_array[2][6]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\,
	datad => \uart_ctrl_inst|uart_mngt_inst|byte_array[2][6]~q\,
	combout => \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s~2_combout\);

-- Location: FF_X41_Y13_N17
\uart_ctrl_inst|uart_mngt_inst|wdata_reg_s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s~2_combout\,
	clrn => \reset_n~input_o\,
	ena => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s\(6));

-- Location: LCCOMB_X44_Y17_N2
\reg_ctrl_inst|wdata_reg_i_s~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|wdata_reg_i_s~2_combout\ = (\reg_ctrl_inst|start_rw_i_r_edge~q\ & \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|start_rw_i_r_edge~q\,
	datad => \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s\(6),
	combout => \reg_ctrl_inst|wdata_reg_i_s~2_combout\);

-- Location: FF_X44_Y17_N3
\reg_ctrl_inst|wdata_reg_i_s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \reg_ctrl_inst|wdata_reg_i_s~2_combout\,
	clrn => \reset_n~input_o\,
	ena => \reg_ctrl_inst|rcvd_addr_reg_i_s[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|wdata_reg_i_s\(6));

-- Location: LCCOMB_X38_Y17_N30
\reg_ctrl_inst|array_reg[4][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|array_reg[4][6]~feeder_combout\ = \reg_ctrl_inst|wdata_reg_i_s\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_ctrl_inst|wdata_reg_i_s\(6),
	combout => \reg_ctrl_inst|array_reg[4][6]~feeder_combout\);

-- Location: FF_X38_Y17_N31
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
	ena => \reg_ctrl_inst|array_reg[4][7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|array_reg[4][6]~q\);

-- Location: LCCOMB_X41_Y17_N14
\reg_ctrl_inst|array_reg[3][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|array_reg[3][6]~feeder_combout\ = \reg_ctrl_inst|wdata_reg_i_s\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_ctrl_inst|wdata_reg_i_s\(6),
	combout => \reg_ctrl_inst|array_reg[3][6]~feeder_combout\);

-- Location: FF_X41_Y17_N15
\reg_ctrl_inst|array_reg[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \reg_ctrl_inst|array_reg[3][6]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \reg_ctrl_inst|array_reg[3][7]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|array_reg[3][6]~q\);

-- Location: FF_X40_Y17_N25
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
	ena => \reg_ctrl_inst|array_reg[1][7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|array_reg[1][6]~q\);

-- Location: FF_X41_Y17_N17
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
	ena => \reg_ctrl_inst|array_reg[2][7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|array_reg[2][6]~q\);

-- Location: LCCOMB_X44_Y17_N8
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

-- Location: FF_X44_Y17_N9
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
	ena => \reg_ctrl_inst|array_reg[0][7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|array_reg[0][6]~q\);

-- Location: LCCOMB_X41_Y17_N16
\reg_ctrl_inst|rdata_reg_o_s~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|rdata_reg_o_s~4_combout\ = (\reg_ctrl_inst|rcvd_addr_reg_i_s\(1) & ((\reg_ctrl_inst|rcvd_addr_reg_i_s\(0)) # ((\reg_ctrl_inst|array_reg[2][6]~q\)))) # (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(1) & (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(0) & 
-- ((\reg_ctrl_inst|array_reg[0][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|rcvd_addr_reg_i_s\(1),
	datab => \reg_ctrl_inst|rcvd_addr_reg_i_s\(0),
	datac => \reg_ctrl_inst|array_reg[2][6]~q\,
	datad => \reg_ctrl_inst|array_reg[0][6]~q\,
	combout => \reg_ctrl_inst|rdata_reg_o_s~4_combout\);

-- Location: LCCOMB_X40_Y17_N24
\reg_ctrl_inst|rdata_reg_o_s~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|rdata_reg_o_s~5_combout\ = (\reg_ctrl_inst|rcvd_addr_reg_i_s\(0) & ((\reg_ctrl_inst|rdata_reg_o_s~4_combout\ & (\reg_ctrl_inst|array_reg[3][6]~q\)) # (!\reg_ctrl_inst|rdata_reg_o_s~4_combout\ & ((\reg_ctrl_inst|array_reg[1][6]~q\))))) # 
-- (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(0) & (((\reg_ctrl_inst|rdata_reg_o_s~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|rcvd_addr_reg_i_s\(0),
	datab => \reg_ctrl_inst|array_reg[3][6]~q\,
	datac => \reg_ctrl_inst|array_reg[1][6]~q\,
	datad => \reg_ctrl_inst|rdata_reg_o_s~4_combout\,
	combout => \reg_ctrl_inst|rdata_reg_o_s~5_combout\);

-- Location: LCCOMB_X39_Y17_N30
\reg_ctrl_inst|rdata_reg_o_s~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|rdata_reg_o_s~6_combout\ = (\reg_ctrl_inst|check_done_s~q\ & ((\reg_ctrl_inst|rcvd_addr_reg_i_s\(2) & (\reg_ctrl_inst|array_reg[4][6]~q\)) # (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(2) & ((\reg_ctrl_inst|rdata_reg_o_s~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|rcvd_addr_reg_i_s\(2),
	datab => \reg_ctrl_inst|array_reg[4][6]~q\,
	datac => \reg_ctrl_inst|check_done_s~q\,
	datad => \reg_ctrl_inst|rdata_reg_o_s~5_combout\,
	combout => \reg_ctrl_inst|rdata_reg_o_s~6_combout\);

-- Location: FF_X39_Y17_N31
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
	ena => \reg_ctrl_inst|rdata_reg_o_s[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|rdata_reg_o_s\(6));

-- Location: LCCOMB_X39_Y14_N28
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

-- Location: FF_X39_Y14_N29
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

-- Location: LCCOMB_X40_Y14_N10
\uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~5_combout\ = (\uart_ctrl_inst|uart_mngt_inst|p_tx_mng~0_combout\ & (((\uart_ctrl_inst|uart_mngt_inst|rdata_reg_s\(6) & \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s[7]~2_combout\)) # 
-- (!\uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx\(1),
	datab => \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s\(6),
	datac => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s[7]~2_combout\,
	datad => \uart_ctrl_inst|uart_mngt_inst|p_tx_mng~0_combout\,
	combout => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~5_combout\);

-- Location: FF_X40_Y14_N11
\uart_ctrl_inst|uart_mngt_inst|tx_data_o_s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~5_combout\,
	clrn => \reset_n~input_o\,
	ena => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s\(6));

-- Location: LCCOMB_X40_Y16_N30
\uart_ctrl_inst|tx_uart_inst|tx_data_s[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|tx_data_s[6]~feeder_combout\ = \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s\(6),
	combout => \uart_ctrl_inst|tx_uart_inst|tx_data_s[6]~feeder_combout\);

-- Location: FF_X40_Y16_N31
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

-- Location: FF_X41_Y13_N3
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
	ena => \uart_ctrl_inst|uart_mngt_inst|byte_array[2][1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|byte_array[2][4]~q\);

-- Location: LCCOMB_X41_Y13_N22
\uart_ctrl_inst|uart_mngt_inst|wdata_reg_s~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s~3_combout\ = (!\uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\ & \uart_ctrl_inst|uart_mngt_inst|byte_array[2][4]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_ctrl_inst|uart_mngt_inst|uart_resp_done_s~q\,
	datad => \uart_ctrl_inst|uart_mngt_inst|byte_array[2][4]~q\,
	combout => \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s~3_combout\);

-- Location: FF_X41_Y13_N23
\uart_ctrl_inst|uart_mngt_inst|wdata_reg_s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s~3_combout\,
	clrn => \reset_n~input_o\,
	ena => \uart_ctrl_inst|uart_mngt_inst|rcvd_addr_reg_s[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s\(4));

-- Location: LCCOMB_X44_Y17_N20
\reg_ctrl_inst|wdata_reg_i_s~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|wdata_reg_i_s~3_combout\ = (\reg_ctrl_inst|start_rw_i_r_edge~q\ & \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|start_rw_i_r_edge~q\,
	datad => \uart_ctrl_inst|uart_mngt_inst|wdata_reg_s\(4),
	combout => \reg_ctrl_inst|wdata_reg_i_s~3_combout\);

-- Location: FF_X44_Y17_N21
\reg_ctrl_inst|wdata_reg_i_s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \reg_ctrl_inst|wdata_reg_i_s~3_combout\,
	clrn => \reset_n~input_o\,
	ena => \reg_ctrl_inst|rcvd_addr_reg_i_s[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|wdata_reg_i_s\(4));

-- Location: FF_X38_Y17_N17
\reg_ctrl_inst|array_reg[4][4]\ : dffeas
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
	ena => \reg_ctrl_inst|array_reg[4][7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|array_reg[4][4]~q\);

-- Location: LCCOMB_X41_Y17_N18
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

-- Location: FF_X41_Y17_N19
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
	ena => \reg_ctrl_inst|array_reg[3][7]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|array_reg[3][4]~q\);

-- Location: FF_X40_Y17_N23
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
	ena => \reg_ctrl_inst|array_reg[1][7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|array_reg[1][4]~q\);

-- Location: LCCOMB_X44_Y17_N10
\reg_ctrl_inst|array_reg[0][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|array_reg[0][4]~feeder_combout\ = \reg_ctrl_inst|wdata_reg_i_s\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg_ctrl_inst|wdata_reg_i_s\(4),
	combout => \reg_ctrl_inst|array_reg[0][4]~feeder_combout\);

-- Location: FF_X44_Y17_N11
\reg_ctrl_inst|array_reg[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \reg_ctrl_inst|array_reg[0][4]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \reg_ctrl_inst|array_reg[0][7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|array_reg[0][4]~q\);

-- Location: FF_X41_Y17_N5
\reg_ctrl_inst|array_reg[2][4]\ : dffeas
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
	ena => \reg_ctrl_inst|array_reg[2][7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|array_reg[2][4]~q\);

-- Location: LCCOMB_X41_Y17_N4
\reg_ctrl_inst|rdata_reg_o_s~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|rdata_reg_o_s~7_combout\ = (\reg_ctrl_inst|rcvd_addr_reg_i_s\(0) & (((\reg_ctrl_inst|rcvd_addr_reg_i_s\(1))))) # (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(0) & ((\reg_ctrl_inst|rcvd_addr_reg_i_s\(1) & ((\reg_ctrl_inst|array_reg[2][4]~q\))) # 
-- (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(1) & (\reg_ctrl_inst|array_reg[0][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|rcvd_addr_reg_i_s\(0),
	datab => \reg_ctrl_inst|array_reg[0][4]~q\,
	datac => \reg_ctrl_inst|array_reg[2][4]~q\,
	datad => \reg_ctrl_inst|rcvd_addr_reg_i_s\(1),
	combout => \reg_ctrl_inst|rdata_reg_o_s~7_combout\);

-- Location: LCCOMB_X40_Y17_N22
\reg_ctrl_inst|rdata_reg_o_s~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|rdata_reg_o_s~8_combout\ = (\reg_ctrl_inst|rcvd_addr_reg_i_s\(0) & ((\reg_ctrl_inst|rdata_reg_o_s~7_combout\ & (\reg_ctrl_inst|array_reg[3][4]~q\)) # (!\reg_ctrl_inst|rdata_reg_o_s~7_combout\ & ((\reg_ctrl_inst|array_reg[1][4]~q\))))) # 
-- (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(0) & (((\reg_ctrl_inst|rdata_reg_o_s~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|rcvd_addr_reg_i_s\(0),
	datab => \reg_ctrl_inst|array_reg[3][4]~q\,
	datac => \reg_ctrl_inst|array_reg[1][4]~q\,
	datad => \reg_ctrl_inst|rdata_reg_o_s~7_combout\,
	combout => \reg_ctrl_inst|rdata_reg_o_s~8_combout\);

-- Location: LCCOMB_X39_Y17_N10
\reg_ctrl_inst|rdata_reg_o_s~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_ctrl_inst|rdata_reg_o_s~9_combout\ = (\reg_ctrl_inst|check_done_s~q\ & ((\reg_ctrl_inst|rcvd_addr_reg_i_s\(2) & (\reg_ctrl_inst|array_reg[4][4]~q\)) # (!\reg_ctrl_inst|rcvd_addr_reg_i_s\(2) & ((\reg_ctrl_inst|rdata_reg_o_s~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|array_reg[4][4]~q\,
	datab => \reg_ctrl_inst|check_done_s~q\,
	datac => \reg_ctrl_inst|rcvd_addr_reg_i_s\(2),
	datad => \reg_ctrl_inst|rdata_reg_o_s~8_combout\,
	combout => \reg_ctrl_inst|rdata_reg_o_s~9_combout\);

-- Location: FF_X39_Y17_N11
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
	ena => \reg_ctrl_inst|rdata_reg_o_s[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_ctrl_inst|rdata_reg_o_s\(4));

-- Location: LCCOMB_X39_Y14_N22
\uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[4]~feeder_combout\ = \reg_ctrl_inst|rdata_reg_o_s\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg_ctrl_inst|rdata_reg_o_s\(4),
	combout => \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s[4]~feeder_combout\);

-- Location: FF_X39_Y14_N23
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

-- Location: LCCOMB_X39_Y14_N0
\uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~6_combout\ = (\uart_ctrl_inst|uart_mngt_inst|tx_data_o_s[7]~2_combout\ & (\uart_ctrl_inst|uart_mngt_inst|rdata_reg_s\(4) & (\uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx\(1) & 
-- \uart_ctrl_inst|uart_mngt_inst|p_tx_mng~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s[7]~2_combout\,
	datab => \uart_ctrl_inst|uart_mngt_inst|rdata_reg_s\(4),
	datac => \uart_ctrl_inst|uart_mngt_inst|cnt_byte_tx\(1),
	datad => \uart_ctrl_inst|uart_mngt_inst|p_tx_mng~0_combout\,
	combout => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~6_combout\);

-- Location: FF_X39_Y14_N1
\uart_ctrl_inst|uart_mngt_inst|tx_data_o_s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~6_combout\,
	clrn => \reset_n~input_o\,
	ena => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|uart_mngt_inst|tx_data_o_s\(4));

-- Location: FF_X40_Y16_N21
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

-- Location: LCCOMB_X40_Y16_N20
\uart_ctrl_inst|tx_uart_inst|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|Mux0~0_combout\ = (\uart_ctrl_inst|tx_uart_inst|cnt_data\(1) & ((\uart_ctrl_inst|tx_uart_inst|tx_data_s\(6)) # ((\uart_ctrl_inst|tx_uart_inst|cnt_data\(0))))) # (!\uart_ctrl_inst|tx_uart_inst|cnt_data\(1) & 
-- (((\uart_ctrl_inst|tx_uart_inst|tx_data_s\(4) & !\uart_ctrl_inst|tx_uart_inst|cnt_data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|tx_uart_inst|tx_data_s\(6),
	datab => \uart_ctrl_inst|tx_uart_inst|cnt_data\(1),
	datac => \uart_ctrl_inst|tx_uart_inst|tx_data_s\(4),
	datad => \uart_ctrl_inst|tx_uart_inst|cnt_data\(0),
	combout => \uart_ctrl_inst|tx_uart_inst|Mux0~0_combout\);

-- Location: LCCOMB_X40_Y16_N18
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

-- Location: LCCOMB_X40_Y16_N24
\uart_ctrl_inst|tx_uart_inst|tx_s~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|tx_s~3_combout\ = (\uart_ctrl_inst|tx_uart_inst|cnt_data\(2) & ((\uart_ctrl_inst|tx_uart_inst|Mux0~1_combout\))) # (!\uart_ctrl_inst|tx_uart_inst|cnt_data\(2) & (\uart_ctrl_inst|tx_uart_inst|Mux0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|tx_uart_inst|Mux0~3_combout\,
	datab => \uart_ctrl_inst|tx_uart_inst|cnt_data\(2),
	datad => \uart_ctrl_inst|tx_uart_inst|Mux0~1_combout\,
	combout => \uart_ctrl_inst|tx_uart_inst|tx_s~3_combout\);

-- Location: LCCOMB_X39_Y16_N28
\uart_ctrl_inst|tx_uart_inst|tx_s~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_ctrl_inst|tx_uart_inst|tx_s~5_combout\ = (!\uart_ctrl_inst|tx_uart_inst|tx_s~2_combout\ & (!\uart_ctrl_inst|tx_uart_inst|tx_s~0_combout\ & ((!\uart_ctrl_inst|tx_uart_inst|tx_s~3_combout\) # (!\uart_ctrl_inst|tx_uart_inst|tx_s~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ctrl_inst|tx_uart_inst|tx_s~2_combout\,
	datab => \uart_ctrl_inst|tx_uart_inst|tx_s~0_combout\,
	datac => \uart_ctrl_inst|tx_uart_inst|tx_s~4_combout\,
	datad => \uart_ctrl_inst|tx_uart_inst|tx_s~3_combout\,
	combout => \uart_ctrl_inst|tx_uart_inst|tx_s~5_combout\);

-- Location: FF_X39_Y16_N29
\uart_ctrl_inst|tx_uart_inst|tx_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \uart_ctrl_inst|tx_uart_inst|tx_s~5_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_ctrl_inst|tx_uart_inst|tx_s~q\);

-- Location: LCCOMB_X48_Y18_N22
\ws2812_ctrl_inst|ws2812_mngt_inst|frame_ws2812_done_s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|frame_ws2812_done_s~0_combout\ = !\ws2812_ctrl_inst|ws2812_inst|frame_done_s~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ws2812_ctrl_inst|ws2812_inst|frame_done_s~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|frame_ws2812_done_s~0_combout\);

-- Location: FF_X48_Y18_N23
\ws2812_ctrl_inst|ws2812_mngt_inst|frame_ws2812_done_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|frame_ws2812_done_s~0_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|frame_ws2812_done_s~q\);

-- Location: FF_X44_Y18_N5
\ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	asdata => \reg_ctrl_inst|array_reg[1][0]~q\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\);

-- Location: LCCOMB_X49_Y18_N22
\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s~3_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\ & !\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0),
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s~3_combout\);

-- Location: LCCOMB_X48_Y18_N24
\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s[3]~1_combout\ = ((!\ws2812_ctrl_inst|ws2812_mngt_inst|frame_ws2812_done_s~q\ & !\ws2812_ctrl_inst|ws2812_inst|frame_done_s~q\)) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|frame_ws2812_done_s~q\,
	datac => \ws2812_ctrl_inst|ws2812_inst|frame_done_s~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s[3]~1_combout\);

-- Location: FF_X49_Y18_N23
\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s~3_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0));

-- Location: LCCOMB_X49_Y18_N18
\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s~0_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\ & (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) $ (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0),
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1),
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s~0_combout\);

-- Location: FF_X49_Y18_N19
\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s~0_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1));

-- Location: LCCOMB_X49_Y18_N24
\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s~2_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\ & (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) $ (((\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & 
-- \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\,
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0),
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2),
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1),
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s~2_combout\);

-- Location: FF_X49_Y18_N25
\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s~2_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2));

-- Location: LCCOMB_X45_Y18_N22
\ws2812_ctrl_inst|ws2812_mngt_inst|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|LessThan0~0_combout\ = ((!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2)) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0))) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1),
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0),
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2),
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|LessThan0~0_combout\);

-- Location: LCCOMB_X43_Y18_N24
\ws2812_ctrl_inst|ws2812_mngt_inst|config_done_s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|config_done_s~0_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|config_done_s~q\) # ((!\ws2812_ctrl_inst|ws2812_inst|frame_done_s~q\ & (!\ws2812_ctrl_inst|ws2812_mngt_inst|frame_ws2812_done_s~q\ & 
-- !\ws2812_ctrl_inst|ws2812_mngt_inst|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_inst|frame_done_s~q\,
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|frame_ws2812_done_s~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|config_done_s~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|LessThan0~0_combout\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|config_done_s~0_combout\);

-- Location: FF_X43_Y18_N25
\ws2812_ctrl_inst|ws2812_mngt_inst|config_done_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|config_done_s~0_combout\,
	clrn => \reset_n~input_o\,
	sclr => \ws2812_ctrl_inst|ws2812_mngt_inst|ALT_INV_run_config_s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|config_done_s~q\);

-- Location: LCCOMB_X44_Y18_N8
\ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~0_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\ & (((!\ws2812_ctrl_inst|ws2812_mngt_inst|config_done_s~q\)))) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\ & 
-- (\reg_ctrl_inst|array_reg[1][0]~q\ & (!\ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|array_reg[1][0]~q\,
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|config_done_s~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~0_combout\);

-- Location: FF_X44_Y18_N9
\ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~0_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\);

-- Location: FF_X48_Y18_N1
\ws2812_ctrl_inst|ws2812_mngt_inst|setup_config_done_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	asdata => \ws2812_ctrl_inst|ws2812_mngt_inst|frame_ws2812_done_s~q\,
	clrn => \reset_n~input_o\,
	sclr => \ws2812_ctrl_inst|ws2812_mngt_inst|ALT_INV_run_config_s~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|setup_config_done_s~q\);

-- Location: LCCOMB_X48_Y18_N12
\ws2812_ctrl_inst|ws2812_mngt_inst|start_ws2812_o_s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|start_ws2812_o_s~0_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|setup_config_done_s~q\ & \ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|setup_config_done_s~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|start_ws2812_o_s~0_combout\);

-- Location: FF_X48_Y18_N13
\ws2812_ctrl_inst|ws2812_mngt_inst|start_ws2812_o_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|start_ws2812_o_s~0_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|start_ws2812_o_s~q\);

-- Location: LCCOMB_X48_Y18_N18
\ws2812_ctrl_inst|ws2812_inst|start_s~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_inst|start_s~feeder_combout\ = \ws2812_ctrl_inst|ws2812_mngt_inst|start_ws2812_o_s~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|start_ws2812_o_s~q\,
	combout => \ws2812_ctrl_inst|ws2812_inst|start_s~feeder_combout\);

-- Location: FF_X48_Y18_N19
\ws2812_ctrl_inst|ws2812_inst|start_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_inst|start_s~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_inst|start_s~q\);

-- Location: LCCOMB_X48_Y18_N8
\ws2812_ctrl_inst|ws2812_inst|p_inputs_latch~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_inst|p_inputs_latch~0_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|start_ws2812_o_s~q\ & (!\ws2812_ctrl_inst|ws2812_inst|frame_gen~q\ & !\ws2812_ctrl_inst|ws2812_inst|start_s~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|start_ws2812_o_s~q\,
	datac => \ws2812_ctrl_inst|ws2812_inst|frame_gen~q\,
	datad => \ws2812_ctrl_inst|ws2812_inst|start_s~q\,
	combout => \ws2812_ctrl_inst|ws2812_inst|p_inputs_latch~0_combout\);

-- Location: LCCOMB_X50_Y18_N4
\ws2812_ctrl_inst|ws2812_inst|start_init_s~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_inst|start_init_s~feeder_combout\ = \ws2812_ctrl_inst|ws2812_inst|p_inputs_latch~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ws2812_ctrl_inst|ws2812_inst|p_inputs_latch~0_combout\,
	combout => \ws2812_ctrl_inst|ws2812_inst|start_init_s~feeder_combout\);

-- Location: FF_X50_Y18_N5
\ws2812_ctrl_inst|ws2812_inst|start_init_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_inst|start_init_s~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_inst|start_init_s~q\);

-- Location: LCCOMB_X52_Y17_N8
\ws2812_ctrl_inst|ws2812_inst|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_inst|Add0~0_combout\ = \ws2812_ctrl_inst|ws2812_inst|cnt_24\(0) $ (GND)
-- \ws2812_ctrl_inst|ws2812_inst|Add0~1\ = CARRY(!\ws2812_ctrl_inst|ws2812_inst|cnt_24\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ws2812_ctrl_inst|ws2812_inst|cnt_24\(0),
	datad => VCC,
	combout => \ws2812_ctrl_inst|ws2812_inst|Add0~0_combout\,
	cout => \ws2812_ctrl_inst|ws2812_inst|Add0~1\);

-- Location: LCCOMB_X52_Y17_N10
\ws2812_ctrl_inst|ws2812_inst|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_inst|Add0~2_combout\ = (\ws2812_ctrl_inst|ws2812_inst|cnt_24\(1) & (!\ws2812_ctrl_inst|ws2812_inst|Add0~1\)) # (!\ws2812_ctrl_inst|ws2812_inst|cnt_24\(1) & (\ws2812_ctrl_inst|ws2812_inst|Add0~1\ & VCC))
-- \ws2812_ctrl_inst|ws2812_inst|Add0~3\ = CARRY((\ws2812_ctrl_inst|ws2812_inst|cnt_24\(1) & !\ws2812_ctrl_inst|ws2812_inst|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ws2812_ctrl_inst|ws2812_inst|cnt_24\(1),
	datad => VCC,
	cin => \ws2812_ctrl_inst|ws2812_inst|Add0~1\,
	combout => \ws2812_ctrl_inst|ws2812_inst|Add0~2_combout\,
	cout => \ws2812_ctrl_inst|ws2812_inst|Add0~3\);

-- Location: LCCOMB_X50_Y17_N10
\ws2812_ctrl_inst|ws2812_inst|cnt_24~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_inst|cnt_24~4_combout\ = (\ws2812_ctrl_inst|ws2812_inst|frame_gen~q\ & (!\ws2812_ctrl_inst|ws2812_inst|Add0~2_combout\ & ((!\ws2812_ctrl_inst|ws2812_inst|frame_done_s~0_combout\) # (!\ws2812_ctrl_inst|ws2812_inst|cnt_24\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_inst|cnt_24\(0),
	datab => \ws2812_ctrl_inst|ws2812_inst|frame_gen~q\,
	datac => \ws2812_ctrl_inst|ws2812_inst|Add0~2_combout\,
	datad => \ws2812_ctrl_inst|ws2812_inst|frame_done_s~0_combout\,
	combout => \ws2812_ctrl_inst|ws2812_inst|cnt_24~4_combout\);

-- Location: LCCOMB_X51_Y17_N24
\ws2812_ctrl_inst|ws2812_inst|cnt_24[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_inst|cnt_24[0]~1_combout\ = (\ws2812_ctrl_inst|ws2812_inst|pwm_done~q\) # (!\ws2812_ctrl_inst|ws2812_inst|frame_gen~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ws2812_ctrl_inst|ws2812_inst|pwm_done~q\,
	datad => \ws2812_ctrl_inst|ws2812_inst|frame_gen~q\,
	combout => \ws2812_ctrl_inst|ws2812_inst|cnt_24[0]~1_combout\);

-- Location: FF_X50_Y17_N11
\ws2812_ctrl_inst|ws2812_inst|cnt_24[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_inst|cnt_24~4_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_inst|cnt_24[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_inst|cnt_24\(1));

-- Location: LCCOMB_X52_Y17_N12
\ws2812_ctrl_inst|ws2812_inst|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_inst|Add0~4_combout\ = (\ws2812_ctrl_inst|ws2812_inst|cnt_24\(2) & (\ws2812_ctrl_inst|ws2812_inst|Add0~3\ $ (GND))) # (!\ws2812_ctrl_inst|ws2812_inst|cnt_24\(2) & ((GND) # (!\ws2812_ctrl_inst|ws2812_inst|Add0~3\)))
-- \ws2812_ctrl_inst|ws2812_inst|Add0~5\ = CARRY((!\ws2812_ctrl_inst|ws2812_inst|Add0~3\) # (!\ws2812_ctrl_inst|ws2812_inst|cnt_24\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_inst|cnt_24\(2),
	datad => VCC,
	cin => \ws2812_ctrl_inst|ws2812_inst|Add0~3\,
	combout => \ws2812_ctrl_inst|ws2812_inst|Add0~4_combout\,
	cout => \ws2812_ctrl_inst|ws2812_inst|Add0~5\);

-- Location: LCCOMB_X50_Y17_N16
\ws2812_ctrl_inst|ws2812_inst|cnt_24~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_inst|cnt_24~3_combout\ = (\ws2812_ctrl_inst|ws2812_inst|frame_gen~q\ & (!\ws2812_ctrl_inst|ws2812_inst|Add0~4_combout\ & ((!\ws2812_ctrl_inst|ws2812_inst|frame_done_s~0_combout\) # (!\ws2812_ctrl_inst|ws2812_inst|cnt_24\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_inst|cnt_24\(0),
	datab => \ws2812_ctrl_inst|ws2812_inst|frame_gen~q\,
	datac => \ws2812_ctrl_inst|ws2812_inst|Add0~4_combout\,
	datad => \ws2812_ctrl_inst|ws2812_inst|frame_done_s~0_combout\,
	combout => \ws2812_ctrl_inst|ws2812_inst|cnt_24~3_combout\);

-- Location: FF_X50_Y17_N17
\ws2812_ctrl_inst|ws2812_inst|cnt_24[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_inst|cnt_24~3_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_inst|cnt_24[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_inst|cnt_24\(2));

-- Location: LCCOMB_X52_Y17_N14
\ws2812_ctrl_inst|ws2812_inst|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_inst|Add0~6_combout\ = (\ws2812_ctrl_inst|ws2812_inst|cnt_24\(3) & (\ws2812_ctrl_inst|ws2812_inst|Add0~5\ & VCC)) # (!\ws2812_ctrl_inst|ws2812_inst|cnt_24\(3) & (!\ws2812_ctrl_inst|ws2812_inst|Add0~5\))
-- \ws2812_ctrl_inst|ws2812_inst|Add0~7\ = CARRY((!\ws2812_ctrl_inst|ws2812_inst|cnt_24\(3) & !\ws2812_ctrl_inst|ws2812_inst|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_inst|cnt_24\(3),
	datad => VCC,
	cin => \ws2812_ctrl_inst|ws2812_inst|Add0~5\,
	combout => \ws2812_ctrl_inst|ws2812_inst|Add0~6_combout\,
	cout => \ws2812_ctrl_inst|ws2812_inst|Add0~7\);

-- Location: LCCOMB_X52_Y17_N20
\ws2812_ctrl_inst|ws2812_inst|cnt_24~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_inst|cnt_24~5_combout\ = (\ws2812_ctrl_inst|ws2812_inst|Add0~6_combout\ & ((!\ws2812_ctrl_inst|ws2812_inst|frame_done_s~0_combout\) # (!\ws2812_ctrl_inst|ws2812_inst|cnt_24\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ws2812_ctrl_inst|ws2812_inst|cnt_24\(0),
	datac => \ws2812_ctrl_inst|ws2812_inst|Add0~6_combout\,
	datad => \ws2812_ctrl_inst|ws2812_inst|frame_done_s~0_combout\,
	combout => \ws2812_ctrl_inst|ws2812_inst|cnt_24~5_combout\);

-- Location: LCCOMB_X52_Y17_N24
\ws2812_ctrl_inst|ws2812_inst|cnt_24~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_inst|cnt_24~6_combout\ = (\ws2812_ctrl_inst|ws2812_inst|frame_gen~q\ & ((\ws2812_ctrl_inst|ws2812_inst|pwm_done~q\ & ((\ws2812_ctrl_inst|ws2812_inst|cnt_24~5_combout\))) # (!\ws2812_ctrl_inst|ws2812_inst|pwm_done~q\ & 
-- (\ws2812_ctrl_inst|ws2812_inst|cnt_24\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_inst|pwm_done~q\,
	datab => \ws2812_ctrl_inst|ws2812_inst|frame_gen~q\,
	datac => \ws2812_ctrl_inst|ws2812_inst|cnt_24\(3),
	datad => \ws2812_ctrl_inst|ws2812_inst|cnt_24~5_combout\,
	combout => \ws2812_ctrl_inst|ws2812_inst|cnt_24~6_combout\);

-- Location: FF_X52_Y17_N25
\ws2812_ctrl_inst|ws2812_inst|cnt_24[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_inst|cnt_24~6_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_inst|cnt_24\(3));

-- Location: LCCOMB_X52_Y17_N16
\ws2812_ctrl_inst|ws2812_inst|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_inst|Add0~8_combout\ = \ws2812_ctrl_inst|ws2812_inst|cnt_24\(4) $ (!\ws2812_ctrl_inst|ws2812_inst|Add0~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_inst|cnt_24\(4),
	cin => \ws2812_ctrl_inst|ws2812_inst|Add0~7\,
	combout => \ws2812_ctrl_inst|ws2812_inst|Add0~8_combout\);

-- Location: LCCOMB_X52_Y17_N26
\ws2812_ctrl_inst|ws2812_inst|cnt_24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_inst|cnt_24~2_combout\ = (\ws2812_ctrl_inst|ws2812_inst|frame_gen~q\ & (!\ws2812_ctrl_inst|ws2812_inst|Add0~8_combout\ & ((!\ws2812_ctrl_inst|ws2812_inst|frame_done_s~0_combout\) # (!\ws2812_ctrl_inst|ws2812_inst|cnt_24\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_inst|cnt_24\(0),
	datab => \ws2812_ctrl_inst|ws2812_inst|frame_done_s~0_combout\,
	datac => \ws2812_ctrl_inst|ws2812_inst|frame_gen~q\,
	datad => \ws2812_ctrl_inst|ws2812_inst|Add0~8_combout\,
	combout => \ws2812_ctrl_inst|ws2812_inst|cnt_24~2_combout\);

-- Location: FF_X52_Y17_N27
\ws2812_ctrl_inst|ws2812_inst|cnt_24[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_inst|cnt_24~2_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_inst|cnt_24[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_inst|cnt_24\(4));

-- Location: LCCOMB_X52_Y17_N18
\ws2812_ctrl_inst|ws2812_inst|frame_done_s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_inst|frame_done_s~0_combout\ = (\ws2812_ctrl_inst|ws2812_inst|cnt_24\(4) & (!\ws2812_ctrl_inst|ws2812_inst|cnt_24\(3) & (\ws2812_ctrl_inst|ws2812_inst|cnt_24\(2) & \ws2812_ctrl_inst|ws2812_inst|cnt_24\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_inst|cnt_24\(4),
	datab => \ws2812_ctrl_inst|ws2812_inst|cnt_24\(3),
	datac => \ws2812_ctrl_inst|ws2812_inst|cnt_24\(2),
	datad => \ws2812_ctrl_inst|ws2812_inst|cnt_24\(1),
	combout => \ws2812_ctrl_inst|ws2812_inst|frame_done_s~0_combout\);

-- Location: LCCOMB_X52_Y17_N28
\ws2812_ctrl_inst|ws2812_inst|cnt_24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_inst|cnt_24~0_combout\ = (\ws2812_ctrl_inst|ws2812_inst|frame_gen~q\ & (!\ws2812_ctrl_inst|ws2812_inst|Add0~0_combout\ & ((!\ws2812_ctrl_inst|ws2812_inst|frame_done_s~0_combout\) # (!\ws2812_ctrl_inst|ws2812_inst|cnt_24\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_inst|frame_gen~q\,
	datab => \ws2812_ctrl_inst|ws2812_inst|Add0~0_combout\,
	datac => \ws2812_ctrl_inst|ws2812_inst|cnt_24\(0),
	datad => \ws2812_ctrl_inst|ws2812_inst|frame_done_s~0_combout\,
	combout => \ws2812_ctrl_inst|ws2812_inst|cnt_24~0_combout\);

-- Location: FF_X52_Y17_N29
\ws2812_ctrl_inst|ws2812_inst|cnt_24[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_inst|cnt_24~0_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_inst|cnt_24[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_inst|cnt_24\(0));

-- Location: LCCOMB_X52_Y17_N2
\ws2812_ctrl_inst|ws2812_inst|frame_done_s~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_inst|frame_done_s~1_combout\ = (\ws2812_ctrl_inst|ws2812_inst|cnt_24\(0) & \ws2812_ctrl_inst|ws2812_inst|frame_done_s~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ws2812_ctrl_inst|ws2812_inst|cnt_24\(0),
	datad => \ws2812_ctrl_inst|ws2812_inst|frame_done_s~0_combout\,
	combout => \ws2812_ctrl_inst|ws2812_inst|frame_done_s~1_combout\);

-- Location: LCCOMB_X48_Y18_N4
\ws2812_ctrl_inst|ws2812_inst|frame_gen~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_inst|frame_gen~0_combout\ = (\ws2812_ctrl_inst|ws2812_inst|start_init_s~q\) # ((\ws2812_ctrl_inst|ws2812_inst|frame_gen~q\ & ((!\ws2812_ctrl_inst|ws2812_inst|frame_done_s~1_combout\) # 
-- (!\ws2812_ctrl_inst|ws2812_inst|pwm_done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_inst|pwm_done~q\,
	datab => \ws2812_ctrl_inst|ws2812_inst|start_init_s~q\,
	datac => \ws2812_ctrl_inst|ws2812_inst|frame_gen~q\,
	datad => \ws2812_ctrl_inst|ws2812_inst|frame_done_s~1_combout\,
	combout => \ws2812_ctrl_inst|ws2812_inst|frame_gen~0_combout\);

-- Location: FF_X48_Y18_N5
\ws2812_ctrl_inst|ws2812_inst|frame_gen\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_inst|frame_gen~0_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_inst|frame_gen~q\);

-- Location: LCCOMB_X49_Y17_N8
\ws2812_ctrl_inst|ws2812_inst|cnt_pwm[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_inst|cnt_pwm[0]~6_combout\ = \ws2812_ctrl_inst|ws2812_inst|cnt_pwm\(0) $ (VCC)
-- \ws2812_ctrl_inst|ws2812_inst|cnt_pwm[0]~7\ = CARRY(\ws2812_ctrl_inst|ws2812_inst|cnt_pwm\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ws2812_ctrl_inst|ws2812_inst|cnt_pwm\(0),
	datad => VCC,
	combout => \ws2812_ctrl_inst|ws2812_inst|cnt_pwm[0]~6_combout\,
	cout => \ws2812_ctrl_inst|ws2812_inst|cnt_pwm[0]~7\);

-- Location: LCCOMB_X49_Y17_N14
\ws2812_ctrl_inst|ws2812_inst|cnt_pwm[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_inst|cnt_pwm[3]~13_combout\ = (\ws2812_ctrl_inst|ws2812_inst|cnt_pwm\(3) & (!\ws2812_ctrl_inst|ws2812_inst|cnt_pwm[2]~12\)) # (!\ws2812_ctrl_inst|ws2812_inst|cnt_pwm\(3) & ((\ws2812_ctrl_inst|ws2812_inst|cnt_pwm[2]~12\) # (GND)))
-- \ws2812_ctrl_inst|ws2812_inst|cnt_pwm[3]~14\ = CARRY((!\ws2812_ctrl_inst|ws2812_inst|cnt_pwm[2]~12\) # (!\ws2812_ctrl_inst|ws2812_inst|cnt_pwm\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ws2812_ctrl_inst|ws2812_inst|cnt_pwm\(3),
	datad => VCC,
	cin => \ws2812_ctrl_inst|ws2812_inst|cnt_pwm[2]~12\,
	combout => \ws2812_ctrl_inst|ws2812_inst|cnt_pwm[3]~13_combout\,
	cout => \ws2812_ctrl_inst|ws2812_inst|cnt_pwm[3]~14\);

-- Location: LCCOMB_X49_Y17_N16
\ws2812_ctrl_inst|ws2812_inst|cnt_pwm[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_inst|cnt_pwm[4]~15_combout\ = (\ws2812_ctrl_inst|ws2812_inst|cnt_pwm\(4) & (\ws2812_ctrl_inst|ws2812_inst|cnt_pwm[3]~14\ $ (GND))) # (!\ws2812_ctrl_inst|ws2812_inst|cnt_pwm\(4) & (!\ws2812_ctrl_inst|ws2812_inst|cnt_pwm[3]~14\ & 
-- VCC))
-- \ws2812_ctrl_inst|ws2812_inst|cnt_pwm[4]~16\ = CARRY((\ws2812_ctrl_inst|ws2812_inst|cnt_pwm\(4) & !\ws2812_ctrl_inst|ws2812_inst|cnt_pwm[3]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ws2812_ctrl_inst|ws2812_inst|cnt_pwm\(4),
	datad => VCC,
	cin => \ws2812_ctrl_inst|ws2812_inst|cnt_pwm[3]~14\,
	combout => \ws2812_ctrl_inst|ws2812_inst|cnt_pwm[4]~15_combout\,
	cout => \ws2812_ctrl_inst|ws2812_inst|cnt_pwm[4]~16\);

-- Location: FF_X49_Y17_N17
\ws2812_ctrl_inst|ws2812_inst|cnt_pwm[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_inst|cnt_pwm[4]~15_combout\,
	clrn => \reset_n~input_o\,
	sclr => \ws2812_ctrl_inst|ws2812_inst|cnt_pwm[5]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_inst|cnt_pwm\(4));

-- Location: LCCOMB_X49_Y17_N18
\ws2812_ctrl_inst|ws2812_inst|cnt_pwm[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_inst|cnt_pwm[5]~17_combout\ = \ws2812_ctrl_inst|ws2812_inst|cnt_pwm[4]~16\ $ (\ws2812_ctrl_inst|ws2812_inst|cnt_pwm\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \ws2812_ctrl_inst|ws2812_inst|cnt_pwm\(5),
	cin => \ws2812_ctrl_inst|ws2812_inst|cnt_pwm[4]~16\,
	combout => \ws2812_ctrl_inst|ws2812_inst|cnt_pwm[5]~17_combout\);

-- Location: FF_X49_Y17_N19
\ws2812_ctrl_inst|ws2812_inst|cnt_pwm[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_inst|cnt_pwm[5]~17_combout\,
	clrn => \reset_n~input_o\,
	sclr => \ws2812_ctrl_inst|ws2812_inst|cnt_pwm[5]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_inst|cnt_pwm\(5));

-- Location: LCCOMB_X49_Y17_N2
\ws2812_ctrl_inst|ws2812_inst|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_inst|Equal1~0_combout\ = (((!\ws2812_ctrl_inst|ws2812_inst|cnt_pwm\(5)) # (!\ws2812_ctrl_inst|ws2812_inst|cnt_pwm\(0))) # (!\ws2812_ctrl_inst|ws2812_inst|cnt_pwm\(4))) # (!\ws2812_ctrl_inst|ws2812_inst|cnt_pwm\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_inst|cnt_pwm\(1),
	datab => \ws2812_ctrl_inst|ws2812_inst|cnt_pwm\(4),
	datac => \ws2812_ctrl_inst|ws2812_inst|cnt_pwm\(0),
	datad => \ws2812_ctrl_inst|ws2812_inst|cnt_pwm\(5),
	combout => \ws2812_ctrl_inst|ws2812_inst|Equal1~0_combout\);

-- Location: LCCOMB_X49_Y17_N26
\ws2812_ctrl_inst|ws2812_inst|cnt_pwm[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_inst|cnt_pwm[5]~8_combout\ = ((\ws2812_ctrl_inst|ws2812_inst|cnt_pwm\(2) & (\ws2812_ctrl_inst|ws2812_inst|cnt_pwm\(3) & !\ws2812_ctrl_inst|ws2812_inst|Equal1~0_combout\))) # (!\ws2812_ctrl_inst|ws2812_inst|frame_gen~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_inst|cnt_pwm\(2),
	datab => \ws2812_ctrl_inst|ws2812_inst|cnt_pwm\(3),
	datac => \ws2812_ctrl_inst|ws2812_inst|frame_gen~q\,
	datad => \ws2812_ctrl_inst|ws2812_inst|Equal1~0_combout\,
	combout => \ws2812_ctrl_inst|ws2812_inst|cnt_pwm[5]~8_combout\);

-- Location: FF_X49_Y17_N9
\ws2812_ctrl_inst|ws2812_inst|cnt_pwm[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_inst|cnt_pwm[0]~6_combout\,
	clrn => \reset_n~input_o\,
	sclr => \ws2812_ctrl_inst|ws2812_inst|cnt_pwm[5]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_inst|cnt_pwm\(0));

-- Location: LCCOMB_X49_Y17_N10
\ws2812_ctrl_inst|ws2812_inst|cnt_pwm[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_inst|cnt_pwm[1]~9_combout\ = (\ws2812_ctrl_inst|ws2812_inst|cnt_pwm\(1) & (!\ws2812_ctrl_inst|ws2812_inst|cnt_pwm[0]~7\)) # (!\ws2812_ctrl_inst|ws2812_inst|cnt_pwm\(1) & ((\ws2812_ctrl_inst|ws2812_inst|cnt_pwm[0]~7\) # (GND)))
-- \ws2812_ctrl_inst|ws2812_inst|cnt_pwm[1]~10\ = CARRY((!\ws2812_ctrl_inst|ws2812_inst|cnt_pwm[0]~7\) # (!\ws2812_ctrl_inst|ws2812_inst|cnt_pwm\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_inst|cnt_pwm\(1),
	datad => VCC,
	cin => \ws2812_ctrl_inst|ws2812_inst|cnt_pwm[0]~7\,
	combout => \ws2812_ctrl_inst|ws2812_inst|cnt_pwm[1]~9_combout\,
	cout => \ws2812_ctrl_inst|ws2812_inst|cnt_pwm[1]~10\);

-- Location: FF_X49_Y17_N11
\ws2812_ctrl_inst|ws2812_inst|cnt_pwm[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_inst|cnt_pwm[1]~9_combout\,
	clrn => \reset_n~input_o\,
	sclr => \ws2812_ctrl_inst|ws2812_inst|cnt_pwm[5]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_inst|cnt_pwm\(1));

-- Location: LCCOMB_X49_Y17_N12
\ws2812_ctrl_inst|ws2812_inst|cnt_pwm[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_inst|cnt_pwm[2]~11_combout\ = (\ws2812_ctrl_inst|ws2812_inst|cnt_pwm\(2) & (\ws2812_ctrl_inst|ws2812_inst|cnt_pwm[1]~10\ $ (GND))) # (!\ws2812_ctrl_inst|ws2812_inst|cnt_pwm\(2) & (!\ws2812_ctrl_inst|ws2812_inst|cnt_pwm[1]~10\ & 
-- VCC))
-- \ws2812_ctrl_inst|ws2812_inst|cnt_pwm[2]~12\ = CARRY((\ws2812_ctrl_inst|ws2812_inst|cnt_pwm\(2) & !\ws2812_ctrl_inst|ws2812_inst|cnt_pwm[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_inst|cnt_pwm\(2),
	datad => VCC,
	cin => \ws2812_ctrl_inst|ws2812_inst|cnt_pwm[1]~10\,
	combout => \ws2812_ctrl_inst|ws2812_inst|cnt_pwm[2]~11_combout\,
	cout => \ws2812_ctrl_inst|ws2812_inst|cnt_pwm[2]~12\);

-- Location: FF_X49_Y17_N13
\ws2812_ctrl_inst|ws2812_inst|cnt_pwm[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_inst|cnt_pwm[2]~11_combout\,
	clrn => \reset_n~input_o\,
	sclr => \ws2812_ctrl_inst|ws2812_inst|cnt_pwm[5]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_inst|cnt_pwm\(2));

-- Location: FF_X49_Y17_N15
\ws2812_ctrl_inst|ws2812_inst|cnt_pwm[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_inst|cnt_pwm[3]~13_combout\,
	clrn => \reset_n~input_o\,
	sclr => \ws2812_ctrl_inst|ws2812_inst|cnt_pwm[5]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_inst|cnt_pwm\(3));

-- Location: LCCOMB_X48_Y17_N24
\ws2812_ctrl_inst|ws2812_inst|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_inst|Equal1~1_combout\ = (!\ws2812_ctrl_inst|ws2812_inst|cnt_pwm\(2)) # (!\ws2812_ctrl_inst|ws2812_inst|cnt_pwm\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ws2812_ctrl_inst|ws2812_inst|cnt_pwm\(3),
	datac => \ws2812_ctrl_inst|ws2812_inst|cnt_pwm\(2),
	combout => \ws2812_ctrl_inst|ws2812_inst|Equal1~1_combout\);

-- Location: LCCOMB_X49_Y17_N6
\ws2812_ctrl_inst|ws2812_inst|pwm_done~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_inst|pwm_done~0_combout\ = (\ws2812_ctrl_inst|ws2812_inst|frame_gen~q\ & (!\ws2812_ctrl_inst|ws2812_inst|Equal1~1_combout\ & ((!\ws2812_ctrl_inst|ws2812_inst|Equal1~0_combout\)))) # (!\ws2812_ctrl_inst|ws2812_inst|frame_gen~q\ & 
-- (((\ws2812_ctrl_inst|ws2812_inst|pwm_done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_inst|frame_gen~q\,
	datab => \ws2812_ctrl_inst|ws2812_inst|Equal1~1_combout\,
	datac => \ws2812_ctrl_inst|ws2812_inst|pwm_done~q\,
	datad => \ws2812_ctrl_inst|ws2812_inst|Equal1~0_combout\,
	combout => \ws2812_ctrl_inst|ws2812_inst|pwm_done~0_combout\);

-- Location: FF_X49_Y17_N7
\ws2812_ctrl_inst|ws2812_inst|pwm_done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_inst|pwm_done~0_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_inst|pwm_done~q\);

-- Location: LCCOMB_X48_Y18_N14
\ws2812_ctrl_inst|ws2812_inst|frame_done_s~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_inst|frame_done_s~2_combout\ = (\ws2812_ctrl_inst|ws2812_inst|start_init_s~q\) # ((\ws2812_ctrl_inst|ws2812_inst|frame_done_s~q\ & ((!\ws2812_ctrl_inst|ws2812_inst|frame_done_s~1_combout\) # 
-- (!\ws2812_ctrl_inst|ws2812_inst|pwm_done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_inst|pwm_done~q\,
	datab => \ws2812_ctrl_inst|ws2812_inst|start_init_s~q\,
	datac => \ws2812_ctrl_inst|ws2812_inst|frame_done_s~q\,
	datad => \ws2812_ctrl_inst|ws2812_inst|frame_done_s~1_combout\,
	combout => \ws2812_ctrl_inst|ws2812_inst|frame_done_s~2_combout\);

-- Location: FF_X48_Y18_N15
\ws2812_ctrl_inst|ws2812_inst|frame_done_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_inst|frame_done_s~2_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_inst|frame_done_s~q\);

-- Location: LCCOMB_X44_Y16_N24
\ws2812_ctrl_inst|config_leds_inst|sel_config_i_s[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|sel_config_i_s[5]~feeder_combout\ = \reg_ctrl_inst|array_reg[0][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg_ctrl_inst|array_reg[0][5]~q\,
	combout => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_s[5]~feeder_combout\);

-- Location: FF_X44_Y16_N25
\ws2812_ctrl_inst|config_leds_inst|sel_config_i_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_s[5]~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_s\(5));

-- Location: LCCOMB_X44_Y16_N6
\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss[5]~feeder_combout\ = \ws2812_ctrl_inst|config_leds_inst|sel_config_i_s\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_s\(5),
	combout => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss[5]~feeder_combout\);

-- Location: FF_X44_Y16_N7
\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss[5]~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(5));

-- Location: LCCOMB_X44_Y16_N22
\ws2812_ctrl_inst|config_leds_inst|sel_config_i_s[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|sel_config_i_s[4]~feeder_combout\ = \reg_ctrl_inst|array_reg[0][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_ctrl_inst|array_reg[0][4]~q\,
	combout => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_s[4]~feeder_combout\);

-- Location: FF_X44_Y16_N23
\ws2812_ctrl_inst|config_leds_inst|sel_config_i_s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_s[4]~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_s\(4));

-- Location: FF_X44_Y16_N29
\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	asdata => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_s\(4),
	clrn => \reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(4));

-- Location: LCCOMB_X40_Y16_N10
\ws2812_ctrl_inst|config_leds_inst|sel_config_i_s[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|sel_config_i_s[7]~feeder_combout\ = \reg_ctrl_inst|array_reg[0][7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg_ctrl_inst|array_reg[0][7]~q\,
	combout => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_s[7]~feeder_combout\);

-- Location: FF_X40_Y16_N11
\ws2812_ctrl_inst|config_leds_inst|sel_config_i_s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_s[7]~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_s\(7));

-- Location: FF_X44_Y16_N27
\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	asdata => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_s\(7),
	clrn => \reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(7));

-- Location: LCCOMB_X44_Y16_N16
\ws2812_ctrl_inst|config_leds_inst|sel_config_i_s[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|sel_config_i_s[6]~feeder_combout\ = \reg_ctrl_inst|array_reg[0][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg_ctrl_inst|array_reg[0][6]~q\,
	combout => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_s[6]~feeder_combout\);

-- Location: FF_X44_Y16_N17
\ws2812_ctrl_inst|config_leds_inst|sel_config_i_s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_s[6]~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_s\(6));

-- Location: LCCOMB_X44_Y16_N10
\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss[6]~feeder_combout\ = \ws2812_ctrl_inst|config_leds_inst|sel_config_i_s\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_s\(6),
	combout => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss[6]~feeder_combout\);

-- Location: FF_X44_Y16_N11
\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss[6]~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(6));

-- Location: LCCOMB_X44_Y16_N26
\ws2812_ctrl_inst|config_leds_inst|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\ = (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(5) & (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(4) & (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(7) & 
-- !\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(5),
	datab => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(4),
	datac => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(7),
	datad => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(6),
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\);

-- Location: LCCOMB_X44_Y19_N26
\ws2812_ctrl_inst|config_leds_inst|sel_config_i_s[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|sel_config_i_s[3]~feeder_combout\ = \reg_ctrl_inst|array_reg[0][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg_ctrl_inst|array_reg[0][3]~q\,
	combout => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_s[3]~feeder_combout\);

-- Location: FF_X44_Y19_N27
\ws2812_ctrl_inst|config_leds_inst|sel_config_i_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_s[3]~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_s\(3));

-- Location: FF_X44_Y19_N13
\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	asdata => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_s\(3),
	clrn => \reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3));

-- Location: LCCOMB_X44_Y19_N14
\ws2812_ctrl_inst|config_leds_inst|sel_config_i_s[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|sel_config_i_s[1]~feeder_combout\ = \reg_ctrl_inst|array_reg[0][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg_ctrl_inst|array_reg[0][1]~q\,
	combout => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_s[1]~feeder_combout\);

-- Location: FF_X44_Y19_N15
\ws2812_ctrl_inst|config_leds_inst|sel_config_i_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_s[1]~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_s\(1));

-- Location: FF_X44_Y19_N29
\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	asdata => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_s\(1),
	clrn => \reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1));

-- Location: LCCOMB_X44_Y19_N24
\ws2812_ctrl_inst|config_leds_inst|sel_config_i_s[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|sel_config_i_s[2]~feeder_combout\ = \reg_ctrl_inst|array_reg[0][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg_ctrl_inst|array_reg[0][2]~q\,
	combout => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_s[2]~feeder_combout\);

-- Location: FF_X44_Y19_N25
\ws2812_ctrl_inst|config_leds_inst|sel_config_i_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_s[2]~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_s\(2));

-- Location: LCCOMB_X44_Y19_N18
\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss[2]~feeder_combout\ = \ws2812_ctrl_inst|config_leds_inst|sel_config_i_s\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_s\(2),
	combout => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss[2]~feeder_combout\);

-- Location: FF_X44_Y19_N19
\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss[2]~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2));

-- Location: LCCOMB_X44_Y16_N4
\ws2812_ctrl_inst|config_leds_inst|sel_config_i_s[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|sel_config_i_s[0]~feeder_combout\ = \reg_ctrl_inst|array_reg[0][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg_ctrl_inst|array_reg[0][0]~q\,
	combout => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_s[0]~feeder_combout\);

-- Location: FF_X44_Y16_N5
\ws2812_ctrl_inst|config_leds_inst|sel_config_i_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_s[0]~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_s\(0));

-- Location: FF_X45_Y16_N23
\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	asdata => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_s\(0),
	clrn => \reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0));

-- Location: LCCOMB_X46_Y15_N28
\ws2812_ctrl_inst|config_leds_inst|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux5~0_combout\ = (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3)) # (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0) $ (((\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1) & 
-- !\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3),
	datab => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1),
	datac => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2),
	datad => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0),
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux5~0_combout\);

-- Location: LCCOMB_X46_Y15_N0
\ws2812_ctrl_inst|config_leds_inst|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux5~1_combout\ = (\ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\ & !\ws2812_ctrl_inst|config_leds_inst|Mux5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\,
	datad => \ws2812_ctrl_inst|config_leds_inst|Mux5~0_combout\,
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux5~1_combout\);

-- Location: FF_X46_Y15_N1
\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|config_leds_inst|Mux5~1_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][17]~q\);

-- Location: LCCOMB_X47_Y15_N16
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~0_combout\ = (\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][17]~q\ & (!\ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\ & (\reg_ctrl_inst|array_reg[1][0]~q\ & 
-- !\ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][17]~q\,
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\,
	datac => \reg_ctrl_inst|array_reg[1][0]~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~0_combout\);

-- Location: LCCOMB_X44_Y18_N4
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][0]~1_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|config_done_s~q\) # ((!\ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\ & (\reg_ctrl_inst|array_reg[1][0]~q\ & 
-- !\ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\,
	datab => \reg_ctrl_inst|array_reg[1][0]~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|config_done_s~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][0]~1_combout\);

-- Location: FF_X47_Y15_N17
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~0_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][17]~q\);

-- Location: LCCOMB_X47_Y15_N12
\ws2812_ctrl_inst|config_leds_inst|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux0~1_combout\ = (\ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\ & (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0) & (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3) & 
-- !\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\,
	datab => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0),
	datac => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3),
	datad => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1),
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux0~1_combout\);

-- Location: FF_X47_Y15_N13
\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|config_leds_inst|Mux0~1_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][23]~q\);

-- Location: LCCOMB_X45_Y16_N0
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~2_combout\ = (!\ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\ & (!\ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\ & (\reg_ctrl_inst|array_reg[1][0]~q\ & 
-- \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][23]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\,
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\,
	datac => \reg_ctrl_inst|array_reg[1][0]~q\,
	datad => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][23]~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~2_combout\);

-- Location: FF_X45_Y16_N1
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~2_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][23]~q\);

-- Location: LCCOMB_X46_Y16_N24
\ws2812_ctrl_inst|config_leds_inst|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux2~0_combout\ = (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3)) # ((\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0) & ((\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2)) # 
-- (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1)))) # (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0) & (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0),
	datab => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3),
	datac => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1),
	datad => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2),
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux2~0_combout\);

-- Location: LCCOMB_X46_Y16_N6
\ws2812_ctrl_inst|config_leds_inst|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux2~1_combout\ = (\ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\ & !\ws2812_ctrl_inst|config_leds_inst|Mux2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\,
	datad => \ws2812_ctrl_inst|config_leds_inst|Mux2~0_combout\,
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux2~1_combout\);

-- Location: FF_X46_Y16_N7
\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|config_leds_inst|Mux2~1_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][21]~q\);

-- Location: LCCOMB_X47_Y17_N8
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~3_combout\ = (\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][21]~q\ & (\reg_ctrl_inst|array_reg[1][0]~q\ & (!\ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\ & 
-- !\ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][21]~q\,
	datab => \reg_ctrl_inst|array_reg[1][0]~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~3_combout\);

-- Location: FF_X47_Y17_N9
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~3_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][21]~q\);

-- Location: LCCOMB_X46_Y17_N30
\ws2812_ctrl_inst|config_leds_inst|Mux63~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux63~0_combout\ = (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3)) # ((\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2) & (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0) & 
-- \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1))) # (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2) & ((\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0)) # (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2),
	datab => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0),
	datac => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3),
	datad => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1),
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux63~0_combout\);

-- Location: LCCOMB_X46_Y17_N8
\ws2812_ctrl_inst|config_leds_inst|Mux63~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux63~1_combout\ = (!\ws2812_ctrl_inst|config_leds_inst|Mux63~0_combout\ & \ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ws2812_ctrl_inst|config_leds_inst|Mux63~0_combout\,
	datad => \ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\,
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux63~1_combout\);

-- Location: FF_X46_Y17_N9
\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[7][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|config_leds_inst|Mux63~1_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[7][23]~q\);

-- Location: LCCOMB_X47_Y17_N30
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~4_combout\ = (\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[7][23]~q\ & (!\ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\ & (!\ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\ & 
-- \reg_ctrl_inst|array_reg[1][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[7][23]~q\,
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\,
	datad => \reg_ctrl_inst|array_reg[1][0]~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~4_combout\);

-- Location: FF_X47_Y17_N31
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[7][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~4_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[7][23]~q\);

-- Location: LCCOMB_X46_Y16_N22
\ws2812_ctrl_inst|config_leds_inst|Mux36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux36~0_combout\ = (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0)) # ((\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3)) # ((\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1) & 
-- !\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0),
	datab => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3),
	datac => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1),
	datad => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2),
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux36~0_combout\);

-- Location: LCCOMB_X46_Y16_N16
\ws2812_ctrl_inst|config_leds_inst|Mux36~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux36~1_combout\ = (!\ws2812_ctrl_inst|config_leds_inst|Mux36~0_combout\ & \ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ws2812_ctrl_inst|config_leds_inst|Mux36~0_combout\,
	datad => \ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\,
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux36~1_combout\);

-- Location: FF_X46_Y16_N17
\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[2][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|config_leds_inst|Mux36~1_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[2][21]~q\);

-- Location: LCCOMB_X47_Y17_N0
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~5_combout\ = (\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[2][21]~q\ & (!\ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\ & (!\ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\ & 
-- \reg_ctrl_inst|array_reg[1][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[2][21]~q\,
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\,
	datad => \reg_ctrl_inst|array_reg[1][0]~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~5_combout\);

-- Location: FF_X47_Y17_N1
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~5_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][21]~q\);

-- Location: LCCOMB_X47_Y17_N10
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~0_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & ((\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[7][23]~q\) # ((!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1))))) # 
-- (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & (((\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][21]~q\ & \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[7][23]~q\,
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][21]~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0),
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1),
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~0_combout\);

-- Location: LCCOMB_X47_Y17_N20
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~1_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & (((\ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~0_combout\)))) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & 
-- (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1) & (\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][21]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1),
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][21]~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2),
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~0_combout\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~1_combout\);

-- Location: LCCOMB_X47_Y17_N24
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~2_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1) & (((\ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~1_combout\)))) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1) & 
-- ((\ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~1_combout\ & (\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][17]~q\)) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~1_combout\ & ((\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][23]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1),
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][17]~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][23]~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~1_combout\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~2_combout\);

-- Location: LCCOMB_X48_Y18_N20
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s~0_combout\ = ((!\ws2812_ctrl_inst|ws2812_mngt_inst|setup_config_done_s~q\ & \ws2812_ctrl_inst|ws2812_mngt_inst|frame_ws2812_done_s~q\)) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|setup_config_done_s~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|frame_ws2812_done_s~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s~0_combout\);

-- Location: FF_X47_Y17_N25
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~2_combout\,
	clrn => \reset_n~input_o\,
	sclr => \ws2812_ctrl_inst|ws2812_mngt_inst|ALT_INV_run_config_s~q\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s\(23));

-- Location: LCCOMB_X51_Y17_N26
\ws2812_ctrl_inst|ws2812_inst|led_config_s[23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_inst|led_config_s[23]~feeder_combout\ = \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s\(23),
	combout => \ws2812_ctrl_inst|ws2812_inst|led_config_s[23]~feeder_combout\);

-- Location: FF_X51_Y17_N27
\ws2812_ctrl_inst|ws2812_inst|led_config_s[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_inst|led_config_s[23]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_inst|p_inputs_latch~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_inst|led_config_s\(23));

-- Location: LCCOMB_X44_Y19_N16
\ws2812_ctrl_inst|config_leds_inst|Mux46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux46~0_combout\ = (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3)) # (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2) $ (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1) $ 
-- (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3),
	datab => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2),
	datac => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1),
	datad => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0),
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux46~0_combout\);

-- Location: LCCOMB_X44_Y19_N0
\ws2812_ctrl_inst|config_leds_inst|Mux46~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux46~1_combout\ = (\ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\ & !\ws2812_ctrl_inst|config_leds_inst|Mux46~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\,
	datad => \ws2812_ctrl_inst|config_leds_inst|Mux46~0_combout\,
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux46~1_combout\);

-- Location: FF_X44_Y19_N1
\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[3][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|config_leds_inst|Mux46~1_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[3][21]~q\);

-- Location: LCCOMB_X45_Y17_N16
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~63_combout\ = (\reg_ctrl_inst|array_reg[1][0]~q\ & (\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[3][21]~q\ & (!\ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\ & 
-- !\ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|array_reg[1][0]~q\,
	datab => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[3][21]~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~63_combout\);

-- Location: FF_X45_Y17_N17
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[3][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~63_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[3][21]~q\);

-- Location: LCCOMB_X47_Y15_N18
\ws2812_ctrl_inst|config_leds_inst|Mux39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux39~0_combout\ = (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3)) # ((\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1)) # ((!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2) & 
-- \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2),
	datab => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0),
	datac => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3),
	datad => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1),
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux39~0_combout\);

-- Location: LCCOMB_X47_Y15_N6
\ws2812_ctrl_inst|config_leds_inst|Mux39~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux39~1_combout\ = (\ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\ & !\ws2812_ctrl_inst|config_leds_inst|Mux39~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\,
	datad => \ws2812_ctrl_inst|config_leds_inst|Mux39~0_combout\,
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux39~1_combout\);

-- Location: FF_X47_Y15_N7
\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[2][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|config_leds_inst|Mux39~1_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[2][18]~q\);

-- Location: LCCOMB_X47_Y15_N4
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~50_combout\ = (\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[2][18]~q\ & (!\ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\ & (\reg_ctrl_inst|array_reg[1][0]~q\ & 
-- !\ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[2][18]~q\,
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\,
	datac => \reg_ctrl_inst|array_reg[1][0]~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~50_combout\);

-- Location: FF_X47_Y15_N5
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~50_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][18]~q\);

-- Location: LCCOMB_X47_Y17_N18
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~14_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & ((\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][18]~q\))) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & 
-- (\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[3][21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[3][21]~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0),
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][18]~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~14_combout\);

-- Location: LCCOMB_X47_Y17_N22
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~11_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & (\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[3][21]~q\)) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & 
-- ((\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][21]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[3][21]~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0),
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][21]~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~11_combout\);

-- Location: LCCOMB_X46_Y17_N10
\ws2812_ctrl_inst|config_leds_inst|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux1~0_combout\ = (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0)) # ((\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3)) # (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2) $ 
-- (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2),
	datab => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0),
	datac => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3),
	datad => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1),
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux1~0_combout\);

-- Location: LCCOMB_X46_Y17_N16
\ws2812_ctrl_inst|config_leds_inst|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux1~1_combout\ = (!\ws2812_ctrl_inst|config_leds_inst|Mux1~0_combout\ & \ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|Mux1~0_combout\,
	datad => \ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\,
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux1~1_combout\);

-- Location: FF_X46_Y17_N17
\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|config_leds_inst|Mux1~1_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][22]~q\);

-- Location: LCCOMB_X47_Y17_N4
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~54_combout\ = (\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][22]~q\ & (\reg_ctrl_inst|array_reg[1][0]~q\ & (!\ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\ & 
-- !\ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][22]~q\,
	datab => \reg_ctrl_inst|array_reg[1][0]~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~54_combout\);

-- Location: FF_X47_Y17_N5
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~54_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][22]~q\);

-- Location: LCCOMB_X46_Y15_N12
\ws2812_ctrl_inst|config_leds_inst|Mux48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux48~0_combout\ = (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3)) # ((\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2)) # (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1) $ 
-- (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3),
	datab => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1),
	datac => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2),
	datad => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0),
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux48~0_combout\);

-- Location: LCCOMB_X46_Y15_N24
\ws2812_ctrl_inst|config_leds_inst|Mux48~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux48~1_combout\ = (\ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\ & !\ws2812_ctrl_inst|config_leds_inst|Mux48~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\,
	datad => \ws2812_ctrl_inst|config_leds_inst|Mux48~0_combout\,
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux48~1_combout\);

-- Location: FF_X46_Y15_N25
\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[3][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|config_leds_inst|Mux48~1_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[3][17]~q\);

-- Location: LCCOMB_X47_Y17_N28
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~49_combout\ = (\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[3][17]~q\ & (!\ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\ & (!\ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\ & 
-- \reg_ctrl_inst|array_reg[1][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[3][17]~q\,
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\,
	datad => \reg_ctrl_inst|array_reg[1][0]~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~49_combout\);

-- Location: FF_X47_Y17_N29
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[3][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~49_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[3][17]~q\);

-- Location: LCCOMB_X47_Y17_N16
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~12_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & ((\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[3][17]~q\))) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & 
-- (\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][22]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][22]~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0),
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[3][17]~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~12_combout\);

-- Location: LCCOMB_X47_Y17_N26
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~13_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & ((\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][23]~q\))) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & 
-- (\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][21]~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0),
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][23]~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~13_combout\);

-- Location: LCCOMB_X47_Y17_N12
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux2~0_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & ((\ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~12_combout\) # ((\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1))))) # 
-- (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & (((\ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~13_combout\ & !\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2),
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~12_combout\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~13_combout\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1),
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux2~0_combout\);

-- Location: LCCOMB_X47_Y17_N2
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux2~1_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1) & ((\ws2812_ctrl_inst|ws2812_mngt_inst|Mux2~0_combout\ & (\ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~14_combout\)) # 
-- (!\ws2812_ctrl_inst|ws2812_mngt_inst|Mux2~0_combout\ & ((\ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~11_combout\))))) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1) & (((\ws2812_ctrl_inst|ws2812_mngt_inst|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1),
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~14_combout\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~11_combout\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux2~0_combout\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux2~1_combout\);

-- Location: FF_X47_Y17_N3
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux2~1_combout\,
	clrn => \reset_n~input_o\,
	sclr => \ws2812_ctrl_inst|ws2812_mngt_inst|ALT_INV_run_config_s~q\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s\(21));

-- Location: FF_X51_Y17_N15
\ws2812_ctrl_inst|ws2812_inst|led_config_s[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	asdata => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s\(21),
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \ws2812_ctrl_inst|ws2812_inst|p_inputs_latch~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_inst|led_config_s\(21));

-- Location: LCCOMB_X45_Y19_N12
\ws2812_ctrl_inst|config_leds_inst|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux20~0_combout\ = (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3)) # ((\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1) & (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2) $ 
-- (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0)))) # (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1) & ((\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2)) # (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3),
	datab => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1),
	datac => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2),
	datad => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0),
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux20~0_combout\);

-- Location: LCCOMB_X45_Y19_N6
\ws2812_ctrl_inst|config_leds_inst|Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux20~1_combout\ = (\ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\ & !\ws2812_ctrl_inst|config_leds_inst|Mux20~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\,
	datad => \ws2812_ctrl_inst|config_leds_inst|Mux20~0_combout\,
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux20~1_combout\);

-- Location: FF_X45_Y19_N7
\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[1][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|config_leds_inst|Mux20~1_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[1][22]~q\);

-- Location: LCCOMB_X45_Y16_N26
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~64_combout\ = (!\ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\ & (!\ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\ & (\reg_ctrl_inst|array_reg[1][0]~q\ & 
-- \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[1][22]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\,
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\,
	datac => \reg_ctrl_inst|array_reg[1][0]~q\,
	datad => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[1][22]~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~64_combout\);

-- Location: FF_X45_Y16_N27
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~64_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][22]~q\);

-- Location: LCCOMB_X47_Y16_N28
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux1~1_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & (((\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1))))) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & 
-- ((\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1) & ((\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][17]~q\))) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1) & (\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][22]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][22]~q\,
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][17]~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2),
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1),
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux1~1_combout\);

-- Location: LCCOMB_X47_Y16_N6
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux1~2_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & ((\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) $ (\ws2812_ctrl_inst|ws2812_mngt_inst|Mux1~1_combout\)))) # 
-- (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & ((\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & ((\ws2812_ctrl_inst|ws2812_mngt_inst|Mux1~1_combout\))) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & 
-- (\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][22]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][22]~q\,
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0),
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2),
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux1~1_combout\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux1~2_combout\);

-- Location: LCCOMB_X44_Y15_N18
\ws2812_ctrl_inst|config_leds_inst|Mux38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux38~0_combout\ = (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3)) # (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1) $ (((!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2) & 
-- \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1),
	datab => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3),
	datac => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2),
	datad => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0),
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux38~0_combout\);

-- Location: LCCOMB_X44_Y15_N20
\ws2812_ctrl_inst|config_leds_inst|Mux38~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux38~1_combout\ = (\ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\ & !\ws2812_ctrl_inst|config_leds_inst|Mux38~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\,
	datad => \ws2812_ctrl_inst|config_leds_inst|Mux38~0_combout\,
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux38~1_combout\);

-- Location: FF_X44_Y15_N21
\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[2][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|config_leds_inst|Mux38~1_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[2][19]~q\);

-- Location: LCCOMB_X47_Y15_N30
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~62_combout\ = (\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[2][19]~q\ & (!\ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\ & (\reg_ctrl_inst|array_reg[1][0]~q\ & 
-- !\ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[2][19]~q\,
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\,
	datac => \reg_ctrl_inst|array_reg[1][0]~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~62_combout\);

-- Location: FF_X47_Y15_N31
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~62_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][19]~q\);

-- Location: LCCOMB_X47_Y16_N18
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux1~0_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & ((\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][19]~q\))) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & 
-- (\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][18]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][18]~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0),
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][19]~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux1~0_combout\);

-- Location: LCCOMB_X47_Y16_N30
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux1~3_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|Mux1~2_combout\ & (((\ws2812_ctrl_inst|ws2812_mngt_inst|Mux1~0_combout\) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2))))) # 
-- (!\ws2812_ctrl_inst|ws2812_mngt_inst|Mux1~2_combout\ & (\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][21]~q\ & (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux1~2_combout\,
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][21]~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2),
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux1~0_combout\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux1~3_combout\);

-- Location: FF_X47_Y16_N31
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux1~3_combout\,
	clrn => \reset_n~input_o\,
	sclr => \ws2812_ctrl_inst|ws2812_mngt_inst|ALT_INV_run_config_s~q\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s\(22));

-- Location: LCCOMB_X51_Y17_N0
\ws2812_ctrl_inst|ws2812_inst|led_config_s[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_inst|led_config_s[22]~feeder_combout\ = \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s\(22),
	combout => \ws2812_ctrl_inst|ws2812_inst|led_config_s[22]~feeder_combout\);

-- Location: FF_X51_Y17_N1
\ws2812_ctrl_inst|ws2812_inst|led_config_s[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_inst|led_config_s[22]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_inst|p_inputs_latch~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_inst|led_config_s\(22));

-- Location: LCCOMB_X44_Y19_N22
\ws2812_ctrl_inst|config_leds_inst|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux3~0_combout\ = (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3) & (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0) $ (((\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2)) # 
-- (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3),
	datab => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2),
	datac => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1),
	datad => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0),
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux3~0_combout\);

-- Location: LCCOMB_X44_Y18_N2
\ws2812_ctrl_inst|config_leds_inst|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux3~1_combout\ = (!\ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\) # (!\ws2812_ctrl_inst|config_leds_inst|Mux3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ws2812_ctrl_inst|config_leds_inst|Mux3~0_combout\,
	datad => \ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\,
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux3~1_combout\);

-- Location: FF_X44_Y18_N3
\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|config_leds_inst|Mux3~1_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][20]~q\);

-- Location: LCCOMB_X44_Y18_N24
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~65_combout\ = (\reg_ctrl_inst|array_reg[1][0]~q\ & (\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][20]~q\ & (!\ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\ & 
-- !\ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|array_reg[1][0]~q\,
	datab => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][20]~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~65_combout\);

-- Location: FF_X44_Y18_N25
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~65_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][20]~q\);

-- Location: LCCOMB_X44_Y15_N12
\ws2812_ctrl_inst|config_leds_inst|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux21~0_combout\ = (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3) & (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2) & ((\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1)) # 
-- (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1),
	datab => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3),
	datac => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2),
	datad => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0),
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux21~0_combout\);

-- Location: LCCOMB_X44_Y15_N26
\ws2812_ctrl_inst|config_leds_inst|Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux21~1_combout\ = (!\ws2812_ctrl_inst|config_leds_inst|Mux21~0_combout\) # (!\ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\,
	datad => \ws2812_ctrl_inst|config_leds_inst|Mux21~0_combout\,
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux21~1_combout\);

-- Location: FF_X44_Y15_N27
\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[1][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|config_leds_inst|Mux21~1_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[1][20]~q\);

-- Location: LCCOMB_X44_Y18_N20
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~60_combout\ = (\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[1][20]~q\ & (!\ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\ & (!\ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\ & 
-- \reg_ctrl_inst|array_reg[1][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[1][20]~q\,
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\,
	datad => \reg_ctrl_inst|array_reg[1][0]~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~60_combout\);

-- Location: FF_X44_Y18_N21
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~60_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][20]~q\);

-- Location: LCCOMB_X45_Y18_N6
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux3~4_combout\ = (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1) & ((\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & ((\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][20]~q\))) # 
-- (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & (\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][20]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0),
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][20]~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1),
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][20]~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux3~4_combout\);

-- Location: LCCOMB_X44_Y19_N20
\ws2812_ctrl_inst|config_leds_inst|Mux64~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux64~0_combout\ = (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3) & ((\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2) & ((!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0)) # 
-- (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1)))) # (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2) & ((\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1)) # (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3),
	datab => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2),
	datac => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1),
	datad => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0),
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux64~0_combout\);

-- Location: LCCOMB_X44_Y19_N10
\ws2812_ctrl_inst|config_leds_inst|Mux64~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux64~1_combout\ = (!\ws2812_ctrl_inst|config_leds_inst|Mux64~0_combout\) # (!\ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\,
	datad => \ws2812_ctrl_inst|config_leds_inst|Mux64~0_combout\,
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux64~1_combout\);

-- Location: FF_X44_Y19_N11
\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[7][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|config_leds_inst|Mux64~1_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[7][20]~q\);

-- Location: LCCOMB_X44_Y18_N26
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~67_combout\ = (\reg_ctrl_inst|array_reg[1][0]~q\ & (!\ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\ & (!\ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\ & 
-- \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[7][20]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|array_reg[1][0]~q\,
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\,
	datad => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[7][20]~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~67_combout\);

-- Location: FF_X44_Y18_N27
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[7][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~67_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[7][20]~q\);

-- Location: LCCOMB_X45_Y15_N6
\ws2812_ctrl_inst|config_leds_inst|Mux40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux40~0_combout\ = (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3) & (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2) & (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0) $ 
-- (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3),
	datab => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0),
	datac => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1),
	datad => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2),
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux40~0_combout\);

-- Location: LCCOMB_X45_Y15_N8
\ws2812_ctrl_inst|config_leds_inst|Mux40~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux40~1_combout\ = (!\ws2812_ctrl_inst|config_leds_inst|Mux40~0_combout\) # (!\ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\,
	datad => \ws2812_ctrl_inst|config_leds_inst|Mux40~0_combout\,
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux40~1_combout\);

-- Location: FF_X45_Y15_N9
\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[2][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|config_leds_inst|Mux40~1_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[2][16]~q\);

-- Location: LCCOMB_X45_Y18_N24
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~56_combout\ = (\reg_ctrl_inst|array_reg[1][0]~q\ & (\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[2][16]~q\ & (!\ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\ & 
-- !\ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|array_reg[1][0]~q\,
	datab => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[2][16]~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~56_combout\);

-- Location: FF_X45_Y18_N25
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~56_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][16]~q\);

-- Location: LCCOMB_X45_Y19_N10
\ws2812_ctrl_inst|config_leds_inst|Mux47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux47~0_combout\ = (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3) & ((\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1) & (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2))) # 
-- (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1) & ((\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2)) # (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3),
	datab => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1),
	datac => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2),
	datad => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0),
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux47~0_combout\);

-- Location: LCCOMB_X45_Y19_N28
\ws2812_ctrl_inst|config_leds_inst|Mux47~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux47~1_combout\ = (!\ws2812_ctrl_inst|config_leds_inst|Mux47~0_combout\) # (!\ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\,
	datad => \ws2812_ctrl_inst|config_leds_inst|Mux47~0_combout\,
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux47~1_combout\);

-- Location: FF_X45_Y19_N29
\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[3][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|config_leds_inst|Mux47~1_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[3][20]~q\);

-- Location: LCCOMB_X45_Y18_N12
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~66_combout\ = (\reg_ctrl_inst|array_reg[1][0]~q\ & (!\ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\ & (\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[3][20]~q\ & 
-- !\ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|array_reg[1][0]~q\,
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\,
	datac => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[3][20]~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~66_combout\);

-- Location: FF_X45_Y18_N13
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[3][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~66_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[3][20]~q\);

-- Location: LCCOMB_X45_Y15_N16
\ws2812_ctrl_inst|config_leds_inst|Mux37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux37~0_combout\ = (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3) & ((\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0) & ((!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2)))) # 
-- (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0) & (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3),
	datab => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0),
	datac => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1),
	datad => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2),
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux37~0_combout\);

-- Location: LCCOMB_X45_Y15_N18
\ws2812_ctrl_inst|config_leds_inst|Mux37~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux37~1_combout\ = (!\ws2812_ctrl_inst|config_leds_inst|Mux37~0_combout\) # (!\ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\,
	datad => \ws2812_ctrl_inst|config_leds_inst|Mux37~0_combout\,
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux37~1_combout\);

-- Location: FF_X45_Y15_N19
\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[2][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|config_leds_inst|Mux37~1_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[2][20]~q\);

-- Location: LCCOMB_X45_Y18_N20
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~57_combout\ = (\reg_ctrl_inst|array_reg[1][0]~q\ & (!\ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\ & (\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[2][20]~q\ & 
-- !\ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|array_reg[1][0]~q\,
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\,
	datac => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[2][20]~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~57_combout\);

-- Location: FF_X45_Y18_N21
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~57_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][20]~q\);

-- Location: LCCOMB_X45_Y18_N26
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux3~5_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & ((\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[3][20]~q\) # ((\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2))))) # 
-- (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & (((\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][20]~q\ & !\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[3][20]~q\,
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][20]~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0),
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2),
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux3~5_combout\);

-- Location: LCCOMB_X45_Y18_N28
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux3~6_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|Mux3~5_combout\ & ((\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[7][20]~q\) # ((!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2))))) # 
-- (!\ws2812_ctrl_inst|ws2812_mngt_inst|Mux3~5_combout\ & (((\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][16]~q\ & \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[7][20]~q\,
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][16]~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux3~5_combout\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2),
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux3~6_combout\);

-- Location: LCCOMB_X46_Y18_N26
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux3~7_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|Mux3~4_combout\) # ((\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1) & \ws2812_ctrl_inst|ws2812_mngt_inst|Mux3~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1),
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux3~4_combout\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux3~6_combout\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux3~7_combout\);

-- Location: FF_X46_Y18_N27
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux3~7_combout\,
	clrn => \reset_n~input_o\,
	sclr => \ws2812_ctrl_inst|ws2812_mngt_inst|ALT_INV_run_config_s~q\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s\(20));

-- Location: FF_X51_Y17_N19
\ws2812_ctrl_inst|ws2812_inst|led_config_s[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	asdata => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s\(20),
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \ws2812_ctrl_inst|ws2812_inst|p_inputs_latch~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_inst|led_config_s\(20));

-- Location: LCCOMB_X51_Y17_N18
\ws2812_ctrl_inst|ws2812_inst|Mux0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_inst|Mux0~12_combout\ = (\ws2812_ctrl_inst|ws2812_inst|cnt_24\(0) & ((\ws2812_ctrl_inst|ws2812_inst|cnt_24\(1) & ((\ws2812_ctrl_inst|ws2812_inst|led_config_s\(20)))) # (!\ws2812_ctrl_inst|ws2812_inst|cnt_24\(1) & 
-- (\ws2812_ctrl_inst|ws2812_inst|led_config_s\(22))))) # (!\ws2812_ctrl_inst|ws2812_inst|cnt_24\(0) & (((!\ws2812_ctrl_inst|ws2812_inst|cnt_24\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_inst|led_config_s\(22),
	datab => \ws2812_ctrl_inst|ws2812_inst|cnt_24\(0),
	datac => \ws2812_ctrl_inst|ws2812_inst|led_config_s\(20),
	datad => \ws2812_ctrl_inst|ws2812_inst|cnt_24\(1),
	combout => \ws2812_ctrl_inst|ws2812_inst|Mux0~12_combout\);

-- Location: LCCOMB_X51_Y17_N14
\ws2812_ctrl_inst|ws2812_inst|Mux0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_inst|Mux0~13_combout\ = (\ws2812_ctrl_inst|ws2812_inst|cnt_24\(0) & (((\ws2812_ctrl_inst|ws2812_inst|Mux0~12_combout\)))) # (!\ws2812_ctrl_inst|ws2812_inst|cnt_24\(0) & ((\ws2812_ctrl_inst|ws2812_inst|Mux0~12_combout\ & 
-- (\ws2812_ctrl_inst|ws2812_inst|led_config_s\(23))) # (!\ws2812_ctrl_inst|ws2812_inst|Mux0~12_combout\ & ((\ws2812_ctrl_inst|ws2812_inst|led_config_s\(21))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_inst|led_config_s\(23),
	datab => \ws2812_ctrl_inst|ws2812_inst|cnt_24\(0),
	datac => \ws2812_ctrl_inst|ws2812_inst|led_config_s\(21),
	datad => \ws2812_ctrl_inst|ws2812_inst|Mux0~12_combout\,
	combout => \ws2812_ctrl_inst|ws2812_inst|Mux0~13_combout\);

-- Location: LCCOMB_X43_Y16_N28
\ws2812_ctrl_inst|config_leds_inst|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux23~0_combout\ = (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3)) # ((\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0) & (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2) $ 
-- (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1)))) # (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0) & (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2) & \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0),
	datab => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3),
	datac => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2),
	datad => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1),
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux23~0_combout\);

-- Location: LCCOMB_X43_Y16_N26
\ws2812_ctrl_inst|config_leds_inst|Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux23~1_combout\ = (\ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\ & !\ws2812_ctrl_inst|config_leds_inst|Mux23~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\,
	datad => \ws2812_ctrl_inst|config_leds_inst|Mux23~0_combout\,
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux23~1_combout\);

-- Location: FF_X43_Y16_N27
\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[1][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|config_leds_inst|Mux23~1_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[1][17]~q\);

-- Location: LCCOMB_X46_Y16_N26
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~52_combout\ = (!\ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\ & (!\ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\ & (\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[1][17]~q\ & 
-- \reg_ctrl_inst|array_reg[1][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\,
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\,
	datac => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[1][17]~q\,
	datad => \reg_ctrl_inst|array_reg[1][0]~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~52_combout\);

-- Location: FF_X46_Y16_N27
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~52_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][17]~q\);

-- Location: LCCOMB_X46_Y16_N0
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~6_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & ((\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][23]~q\))) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & 
-- (\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][17]~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][23]~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0),
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~6_combout\);

-- Location: LCCOMB_X47_Y17_N6
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~3_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & (\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[3][17]~q\)) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & 
-- ((\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][18]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[3][17]~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0),
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][18]~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~3_combout\);

-- Location: LCCOMB_X47_Y16_N22
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~5_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & (\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][17]~q\)) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & 
-- ((\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][17]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][17]~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0),
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][17]~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~5_combout\);

-- Location: LCCOMB_X45_Y15_N14
\ws2812_ctrl_inst|config_leds_inst|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux22~0_combout\ = (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3)) # ((\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2)) # ((\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1)) # 
-- (!\ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3),
	datab => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2),
	datac => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1),
	datad => \ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\,
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux22~0_combout\);

-- Location: LCCOMB_X46_Y15_N26
\ws2812_ctrl_inst|config_leds_inst|Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux22~1_combout\ = (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0) & !\ws2812_ctrl_inst|config_leds_inst|Mux22~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0),
	datad => \ws2812_ctrl_inst|config_leds_inst|Mux22~0_combout\,
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux22~1_combout\);

-- Location: FF_X46_Y15_N27
\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[1][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|config_leds_inst|Mux22~1_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[1][18]~q\);

-- Location: LCCOMB_X47_Y15_N2
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~51_combout\ = (\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[1][18]~q\ & (!\ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\ & (\reg_ctrl_inst|array_reg[1][0]~q\ & 
-- !\ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[1][18]~q\,
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\,
	datac => \reg_ctrl_inst|array_reg[1][0]~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~51_combout\);

-- Location: FF_X47_Y15_N3
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~51_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][18]~q\);

-- Location: LCCOMB_X47_Y16_N0
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~4_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & ((\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][18]~q\))) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & 
-- (\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][23]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][23]~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0),
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][18]~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~4_combout\);

-- Location: LCCOMB_X47_Y16_N12
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux6~0_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1) & (((\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2))))) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1) & 
-- ((\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & ((\ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~4_combout\))) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & (\ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~5_combout\,
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1),
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2),
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~4_combout\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux6~0_combout\);

-- Location: LCCOMB_X47_Y16_N24
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux6~1_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1) & ((\ws2812_ctrl_inst|ws2812_mngt_inst|Mux6~0_combout\ & (\ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~6_combout\)) # 
-- (!\ws2812_ctrl_inst|ws2812_mngt_inst|Mux6~0_combout\ & ((\ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~3_combout\))))) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1) & (((\ws2812_ctrl_inst|ws2812_mngt_inst|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~6_combout\,
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1),
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~3_combout\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux6~0_combout\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux6~1_combout\);

-- Location: FF_X47_Y16_N25
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux6~1_combout\,
	clrn => \reset_n~input_o\,
	sclr => \ws2812_ctrl_inst|ws2812_mngt_inst|ALT_INV_run_config_s~q\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s\(17));

-- Location: LCCOMB_X51_Y17_N30
\ws2812_ctrl_inst|ws2812_inst|led_config_s[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_inst|led_config_s[17]~feeder_combout\ = \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s\(17),
	combout => \ws2812_ctrl_inst|ws2812_inst|led_config_s[17]~feeder_combout\);

-- Location: FF_X51_Y17_N31
\ws2812_ctrl_inst|ws2812_inst|led_config_s[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_inst|led_config_s[17]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_inst|p_inputs_latch~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_inst|led_config_s\(17));

-- Location: LCCOMB_X47_Y16_N26
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux4~1_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & (((\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0))))) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & 
-- ((\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & ((\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][23]~q\))) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & (\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][19]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][19]~q\,
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][23]~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2),
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0),
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux4~1_combout\);

-- Location: LCCOMB_X44_Y18_N12
\ws2812_ctrl_inst|config_leds_inst|Mux65~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux65~0_combout\ = (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3)) # ((\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2) & (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0) $ 
-- (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1)))) # (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2) & ((\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0)) # (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2),
	datab => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3),
	datac => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0),
	datad => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1),
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux65~0_combout\);

-- Location: LCCOMB_X44_Y18_N30
\ws2812_ctrl_inst|config_leds_inst|Mux65~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux65~1_combout\ = (\ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\ & !\ws2812_ctrl_inst|config_leds_inst|Mux65~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\,
	datad => \ws2812_ctrl_inst|config_leds_inst|Mux65~0_combout\,
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux65~1_combout\);

-- Location: FF_X44_Y18_N31
\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[7][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|config_leds_inst|Mux65~1_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[7][19]~q\);

-- Location: LCCOMB_X44_Y18_N22
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~61_combout\ = (\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[7][19]~q\ & (!\ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\ & (!\ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\ & 
-- \reg_ctrl_inst|array_reg[1][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[7][19]~q\,
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\,
	datad => \reg_ctrl_inst|array_reg[1][0]~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~61_combout\);

-- Location: FF_X44_Y18_N23
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[7][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~61_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[7][19]~q\);

-- Location: LCCOMB_X47_Y16_N8
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux4~0_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & ((\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1) & (\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[7][19]~q\)) # 
-- (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1) & ((\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][17]~q\))))) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & (((\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[7][19]~q\,
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][17]~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2),
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1),
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux4~0_combout\);

-- Location: LCCOMB_X45_Y15_N28
\ws2812_ctrl_inst|config_leds_inst|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux4~0_combout\ = (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3)) # ((\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2) & ((\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1)) # 
-- (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0)))) # (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2) & (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1) $ (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3),
	datab => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2),
	datac => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1),
	datad => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0),
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux4~0_combout\);

-- Location: LCCOMB_X46_Y15_N16
\ws2812_ctrl_inst|config_leds_inst|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux4~1_combout\ = (\ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\ & !\ws2812_ctrl_inst|config_leds_inst|Mux4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\,
	datad => \ws2812_ctrl_inst|config_leds_inst|Mux4~0_combout\,
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux4~1_combout\);

-- Location: FF_X46_Y15_N17
\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|config_leds_inst|Mux4~1_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][18]~q\);

-- Location: LCCOMB_X47_Y15_N8
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~53_combout\ = (\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][18]~q\ & (!\ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\ & (\reg_ctrl_inst|array_reg[1][0]~q\ & 
-- !\ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][18]~q\,
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\,
	datac => \reg_ctrl_inst|array_reg[1][0]~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~53_combout\);

-- Location: FF_X47_Y15_N9
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~53_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][18]~q\);

-- Location: LCCOMB_X47_Y16_N2
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~8_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & ((\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][18]~q\))) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & 
-- (\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][23]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][23]~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0),
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][18]~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~8_combout\);

-- Location: LCCOMB_X47_Y16_N20
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux4~2_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & (\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][18]~q\)) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & 
-- ((\ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][18]~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2),
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~8_combout\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux4~2_combout\);

-- Location: LCCOMB_X47_Y16_N16
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux4~3_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|Mux4~1_combout\ & ((\ws2812_ctrl_inst|ws2812_mngt_inst|Mux4~0_combout\) # ((!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & 
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux4~2_combout\)))) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|Mux4~1_combout\ & (\ws2812_ctrl_inst|ws2812_mngt_inst|Mux4~2_combout\ & ((\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2)) # 
-- (!\ws2812_ctrl_inst|ws2812_mngt_inst|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux4~1_combout\,
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2),
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux4~0_combout\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux4~2_combout\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux4~3_combout\);

-- Location: FF_X47_Y16_N17
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux4~3_combout\,
	clrn => \reset_n~input_o\,
	sclr => \ws2812_ctrl_inst|ws2812_mngt_inst|ALT_INV_run_config_s~q\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s\(19));

-- Location: FF_X51_Y17_N17
\ws2812_ctrl_inst|ws2812_inst|led_config_s[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	asdata => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s\(19),
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \ws2812_ctrl_inst|ws2812_inst|p_inputs_latch~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_inst|led_config_s\(19));

-- Location: LCCOMB_X47_Y16_N10
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~10_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & (\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][22]~q\)) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & 
-- ((\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][18]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][22]~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0),
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][18]~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~10_combout\);

-- Location: LCCOMB_X47_Y15_N0
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~9_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & (\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][18]~q\)) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & 
-- ((\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][18]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][18]~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][18]~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0),
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~9_combout\);

-- Location: LCCOMB_X47_Y16_N4
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux5~0_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1) & (((\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2))))) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1) & 
-- ((\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & (\ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~8_combout\)) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & ((\ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1),
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~8_combout\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2),
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~9_combout\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux5~0_combout\);

-- Location: LCCOMB_X47_Y15_N14
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~7_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & ((\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][18]~q\))) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & 
-- (\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][18]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][18]~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][18]~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0),
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~7_combout\);

-- Location: LCCOMB_X47_Y16_N14
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux5~1_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1) & ((\ws2812_ctrl_inst|ws2812_mngt_inst|Mux5~0_combout\ & (\ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~10_combout\)) # 
-- (!\ws2812_ctrl_inst|ws2812_mngt_inst|Mux5~0_combout\ & ((\ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~7_combout\))))) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1) & (((\ws2812_ctrl_inst|ws2812_mngt_inst|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~10_combout\,
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1),
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux5~0_combout\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux0~7_combout\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux5~1_combout\);

-- Location: FF_X47_Y16_N15
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux5~1_combout\,
	clrn => \reset_n~input_o\,
	sclr => \ws2812_ctrl_inst|ws2812_mngt_inst|ALT_INV_run_config_s~q\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s\(18));

-- Location: LCCOMB_X51_Y17_N12
\ws2812_ctrl_inst|ws2812_inst|led_config_s[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_inst|led_config_s[18]~feeder_combout\ = \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s\(18),
	combout => \ws2812_ctrl_inst|ws2812_inst|led_config_s[18]~feeder_combout\);

-- Location: FF_X51_Y17_N13
\ws2812_ctrl_inst|ws2812_inst|led_config_s[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_inst|led_config_s[18]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_inst|p_inputs_latch~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_inst|led_config_s\(18));

-- Location: LCCOMB_X46_Y16_N20
\ws2812_ctrl_inst|config_leds_inst|Mux49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux49~0_combout\ = (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3) & (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1) $ (((\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0)) # 
-- (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0),
	datab => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3),
	datac => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1),
	datad => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2),
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux49~0_combout\);

-- Location: LCCOMB_X46_Y16_N8
\ws2812_ctrl_inst|config_leds_inst|Mux49~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux49~1_combout\ = (!\ws2812_ctrl_inst|config_leds_inst|Mux49~0_combout\) # (!\ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\,
	datad => \ws2812_ctrl_inst|config_leds_inst|Mux49~0_combout\,
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux49~1_combout\);

-- Location: FF_X46_Y16_N9
\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[3][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|config_leds_inst|Mux49~1_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[3][16]~q\);

-- Location: LCCOMB_X45_Y16_N4
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~55_combout\ = (!\ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\ & (\reg_ctrl_inst|array_reg[1][0]~q\ & (\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[3][16]~q\ & 
-- !\ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\,
	datab => \reg_ctrl_inst|array_reg[1][0]~q\,
	datac => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[3][16]~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~55_combout\);

-- Location: FF_X45_Y18_N3
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[3][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	asdata => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~55_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[3][16]~q\);

-- Location: LCCOMB_X45_Y18_N14
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux3~0_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & (\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[3][16]~q\)) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & 
-- ((\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][16]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[3][16]~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0),
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][16]~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux3~0_combout\);

-- Location: LCCOMB_X45_Y18_N0
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux3~3_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & (\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][20]~q\)) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & 
-- ((\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][20]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][20]~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0),
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][20]~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux3~3_combout\);

-- Location: LCCOMB_X45_Y18_N18
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux3~1_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & (\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[3][16]~q\)) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & 
-- ((\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][20]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0),
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[3][16]~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][20]~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux3~1_combout\);

-- Location: LCCOMB_X46_Y16_N2
\ws2812_ctrl_inst|config_leds_inst|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux24~0_combout\ = (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3) & ((\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0) & ((!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2)) # 
-- (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1)))) # (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0) & (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0),
	datab => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3),
	datac => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1),
	datad => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2),
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux24~0_combout\);

-- Location: LCCOMB_X46_Y16_N14
\ws2812_ctrl_inst|config_leds_inst|Mux24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux24~1_combout\ = (!\ws2812_ctrl_inst|config_leds_inst|Mux24~0_combout\) # (!\ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\,
	datad => \ws2812_ctrl_inst|config_leds_inst|Mux24~0_combout\,
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux24~1_combout\);

-- Location: FF_X46_Y16_N15
\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[1][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|config_leds_inst|Mux24~1_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[1][16]~q\);

-- Location: LCCOMB_X46_Y18_N28
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~58_combout\ = (!\ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\ & (!\ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\ & (\reg_ctrl_inst|array_reg[1][0]~q\ & 
-- \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[1][16]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\,
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\,
	datac => \reg_ctrl_inst|array_reg[1][0]~q\,
	datad => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[1][16]~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~58_combout\);

-- Location: FF_X46_Y18_N29
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~58_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][16]~q\);

-- Location: LCCOMB_X46_Y15_N10
\ws2812_ctrl_inst|config_leds_inst|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux6~0_combout\ = (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3) & (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2) $ (((\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0)) # 
-- (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0),
	datab => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1),
	datac => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2),
	datad => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3),
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux6~0_combout\);

-- Location: LCCOMB_X46_Y15_N22
\ws2812_ctrl_inst|config_leds_inst|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux6~1_combout\ = (!\ws2812_ctrl_inst|config_leds_inst|Mux6~0_combout\) # (!\ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\,
	datad => \ws2812_ctrl_inst|config_leds_inst|Mux6~0_combout\,
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux6~1_combout\);

-- Location: FF_X46_Y15_N23
\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|config_leds_inst|Mux6~1_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][16]~q\);

-- Location: LCCOMB_X46_Y18_N18
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~59_combout\ = (!\ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\ & (!\ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\ & (\reg_ctrl_inst|array_reg[1][0]~q\ & 
-- \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][16]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\,
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\,
	datac => \reg_ctrl_inst|array_reg[1][0]~q\,
	datad => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][16]~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~59_combout\);

-- Location: FF_X46_Y18_N19
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~59_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][16]~q\);

-- Location: LCCOMB_X45_Y18_N2
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux3~2_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & (\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][16]~q\)) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & 
-- ((\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][16]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0),
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][16]~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][16]~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux3~2_combout\);

-- Location: LCCOMB_X45_Y18_N30
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux7~0_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & ((\ws2812_ctrl_inst|ws2812_mngt_inst|Mux3~1_combout\) # ((\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1))))) # 
-- (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & (((!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1) & \ws2812_ctrl_inst|ws2812_mngt_inst|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2),
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux3~1_combout\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1),
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux3~2_combout\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux7~0_combout\);

-- Location: LCCOMB_X46_Y18_N4
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux7~1_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1) & ((\ws2812_ctrl_inst|ws2812_mngt_inst|Mux7~0_combout\ & ((\ws2812_ctrl_inst|ws2812_mngt_inst|Mux3~3_combout\))) # 
-- (!\ws2812_ctrl_inst|ws2812_mngt_inst|Mux7~0_combout\ & (\ws2812_ctrl_inst|ws2812_mngt_inst|Mux3~0_combout\)))) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1) & (((\ws2812_ctrl_inst|ws2812_mngt_inst|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux3~0_combout\,
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1),
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux3~3_combout\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux7~0_combout\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux7~1_combout\);

-- Location: FF_X46_Y18_N5
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux7~1_combout\,
	clrn => \reset_n~input_o\,
	sclr => \ws2812_ctrl_inst|ws2812_mngt_inst|ALT_INV_run_config_s~q\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s\(16));

-- Location: FF_X51_Y17_N3
\ws2812_ctrl_inst|ws2812_inst|led_config_s[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	asdata => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s\(16),
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \ws2812_ctrl_inst|ws2812_inst|p_inputs_latch~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_inst|led_config_s\(16));

-- Location: LCCOMB_X51_Y17_N2
\ws2812_ctrl_inst|ws2812_inst|Mux0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_inst|Mux0~10_combout\ = (\ws2812_ctrl_inst|ws2812_inst|cnt_24\(0) & ((\ws2812_ctrl_inst|ws2812_inst|cnt_24\(1) & ((\ws2812_ctrl_inst|ws2812_inst|led_config_s\(16)))) # (!\ws2812_ctrl_inst|ws2812_inst|cnt_24\(1) & 
-- (\ws2812_ctrl_inst|ws2812_inst|led_config_s\(18))))) # (!\ws2812_ctrl_inst|ws2812_inst|cnt_24\(0) & (((!\ws2812_ctrl_inst|ws2812_inst|cnt_24\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_inst|led_config_s\(18),
	datab => \ws2812_ctrl_inst|ws2812_inst|cnt_24\(0),
	datac => \ws2812_ctrl_inst|ws2812_inst|led_config_s\(16),
	datad => \ws2812_ctrl_inst|ws2812_inst|cnt_24\(1),
	combout => \ws2812_ctrl_inst|ws2812_inst|Mux0~10_combout\);

-- Location: LCCOMB_X51_Y17_N16
\ws2812_ctrl_inst|ws2812_inst|Mux0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_inst|Mux0~11_combout\ = (\ws2812_ctrl_inst|ws2812_inst|cnt_24\(0) & (((\ws2812_ctrl_inst|ws2812_inst|Mux0~10_combout\)))) # (!\ws2812_ctrl_inst|ws2812_inst|cnt_24\(0) & ((\ws2812_ctrl_inst|ws2812_inst|Mux0~10_combout\ & 
-- ((\ws2812_ctrl_inst|ws2812_inst|led_config_s\(19)))) # (!\ws2812_ctrl_inst|ws2812_inst|Mux0~10_combout\ & (\ws2812_ctrl_inst|ws2812_inst|led_config_s\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_inst|led_config_s\(17),
	datab => \ws2812_ctrl_inst|ws2812_inst|cnt_24\(0),
	datac => \ws2812_ctrl_inst|ws2812_inst|led_config_s\(19),
	datad => \ws2812_ctrl_inst|ws2812_inst|Mux0~10_combout\,
	combout => \ws2812_ctrl_inst|ws2812_inst|Mux0~11_combout\);

-- Location: LCCOMB_X51_Y17_N8
\ws2812_ctrl_inst|ws2812_inst|TH_s~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_inst|TH_s~1_combout\ = (!\ws2812_ctrl_inst|ws2812_inst|cnt_24\(4) & ((\ws2812_ctrl_inst|ws2812_inst|cnt_24\(2) & ((\ws2812_ctrl_inst|ws2812_inst|Mux0~11_combout\))) # (!\ws2812_ctrl_inst|ws2812_inst|cnt_24\(2) & 
-- (\ws2812_ctrl_inst|ws2812_inst|Mux0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_inst|cnt_24\(2),
	datab => \ws2812_ctrl_inst|ws2812_inst|cnt_24\(4),
	datac => \ws2812_ctrl_inst|ws2812_inst|Mux0~13_combout\,
	datad => \ws2812_ctrl_inst|ws2812_inst|Mux0~11_combout\,
	combout => \ws2812_ctrl_inst|ws2812_inst|TH_s~1_combout\);

-- Location: LCCOMB_X43_Y16_N14
\ws2812_ctrl_inst|config_leds_inst|Mux42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux42~0_combout\ = (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3)) # (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2) $ (((\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0) & 
-- !\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0),
	datab => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3),
	datac => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2),
	datad => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1),
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux42~0_combout\);

-- Location: LCCOMB_X44_Y16_N0
\ws2812_ctrl_inst|config_leds_inst|Mux42~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux42~1_combout\ = (\ws2812_ctrl_inst|config_leds_inst|Mux42~0_combout\) # (!\ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\,
	datad => \ws2812_ctrl_inst|config_leds_inst|Mux42~0_combout\,
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux42~1_combout\);

-- Location: FF_X44_Y16_N1
\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|config_leds_inst|Mux42~1_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[2][12]~q\);

-- Location: LCCOMB_X45_Y17_N10
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~10_combout\ = (!\ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\ & (\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[2][12]~q\ & (\reg_ctrl_inst|array_reg[1][0]~q\ & 
-- !\ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\,
	datab => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[2][12]~q\,
	datac => \reg_ctrl_inst|array_reg[1][0]~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~10_combout\);

-- Location: FF_X45_Y17_N11
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~10_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][12]~q\);

-- Location: LCCOMB_X48_Y17_N20
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux11~2_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][12]~q\ & (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) $ (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][12]~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2),
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1),
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux11~2_combout\);

-- Location: LCCOMB_X43_Y16_N12
\ws2812_ctrl_inst|config_leds_inst|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux10~0_combout\ = (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3)) # ((\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2) & ((\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1)))) # 
-- (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2) & (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0),
	datab => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3),
	datac => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2),
	datad => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1),
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux10~0_combout\);

-- Location: LCCOMB_X44_Y16_N18
\ws2812_ctrl_inst|config_leds_inst|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux10~1_combout\ = (\ws2812_ctrl_inst|config_leds_inst|Mux10~0_combout\) # (!\ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\,
	datad => \ws2812_ctrl_inst|config_leds_inst|Mux10~0_combout\,
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux10~1_combout\);

-- Location: FF_X44_Y16_N19
\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|config_leds_inst|Mux10~1_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][12]~q\);

-- Location: LCCOMB_X45_Y16_N30
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~12_combout\ = (!\ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\ & (\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][12]~q\ & (\reg_ctrl_inst|array_reg[1][0]~q\ & 
-- !\ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\,
	datab => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][12]~q\,
	datac => \reg_ctrl_inst|array_reg[1][0]~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~12_combout\);

-- Location: FF_X45_Y16_N31
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~12_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][12]~q\);

-- Location: LCCOMB_X46_Y17_N0
\ws2812_ctrl_inst|config_leds_inst|Mux60~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux60~0_combout\ = (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3)) # ((\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0)) # ((\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1) & 
-- \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3),
	datab => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1),
	datac => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0),
	datad => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2),
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux60~0_combout\);

-- Location: LCCOMB_X46_Y17_N26
\ws2812_ctrl_inst|config_leds_inst|Mux60~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux60~1_combout\ = (\ws2812_ctrl_inst|config_leds_inst|Mux60~0_combout\) # (!\ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\,
	datad => \ws2812_ctrl_inst|config_leds_inst|Mux60~0_combout\,
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux60~1_combout\);

-- Location: FF_X46_Y17_N27
\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[6][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|config_leds_inst|Mux60~1_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[6][12]~q\);

-- Location: LCCOMB_X45_Y17_N8
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~11_combout\ = (\reg_ctrl_inst|array_reg[1][0]~q\ & (\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[6][12]~q\ & (!\ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\ & 
-- !\ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|array_reg[1][0]~q\,
	datab => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[6][12]~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~11_combout\);

-- Location: FF_X45_Y17_N9
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[6][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~11_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[6][12]~q\);

-- Location: LCCOMB_X48_Y17_N26
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux11~3_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & (((\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[6][12]~q\ & \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1))))) # 
-- (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & (\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][12]~q\ & ((!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][12]~q\,
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[6][12]~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2),
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1),
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux11~3_combout\);

-- Location: LCCOMB_X47_Y15_N28
\ws2812_ctrl_inst|config_leds_inst|Mux66~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux66~0_combout\ = (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3)) # ((\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0) & (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2) $ 
-- (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2),
	datab => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0),
	datac => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3),
	datad => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1),
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux66~0_combout\);

-- Location: LCCOMB_X47_Y15_N10
\ws2812_ctrl_inst|config_leds_inst|Mux66~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux66~1_combout\ = (\ws2812_ctrl_inst|config_leds_inst|Mux66~0_combout\) # (!\ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\,
	datad => \ws2812_ctrl_inst|config_leds_inst|Mux66~0_combout\,
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux66~1_combout\);

-- Location: FF_X47_Y15_N11
\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[7][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|config_leds_inst|Mux66~1_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[7][12]~q\);

-- Location: LCCOMB_X47_Y15_N22
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~9_combout\ = (\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[7][12]~q\ & (!\ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\ & (\reg_ctrl_inst|array_reg[1][0]~q\ & 
-- !\ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[7][12]~q\,
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\,
	datac => \reg_ctrl_inst|array_reg[1][0]~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~9_combout\);

-- Location: FF_X47_Y15_N23
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[7][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~9_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[7][12]~q\);

-- Location: LCCOMB_X43_Y16_N4
\ws2812_ctrl_inst|config_leds_inst|Mux44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux44~0_combout\ = (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3)) # ((\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0) & ((\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2)) # 
-- (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1)))) # (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0) & (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2) & !\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0),
	datab => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3),
	datac => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2),
	datad => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1),
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux44~0_combout\);

-- Location: LCCOMB_X44_Y16_N14
\ws2812_ctrl_inst|config_leds_inst|Mux44~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux44~1_combout\ = (\ws2812_ctrl_inst|config_leds_inst|Mux44~0_combout\) # (!\ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ws2812_ctrl_inst|config_leds_inst|Mux44~0_combout\,
	datad => \ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\,
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux44~1_combout\);

-- Location: FF_X44_Y16_N15
\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|config_leds_inst|Mux44~1_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[2][8]~q\);

-- Location: LCCOMB_X45_Y17_N28
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~6_combout\ = (\reg_ctrl_inst|array_reg[1][0]~q\ & (!\ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\ & (!\ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\ & 
-- \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[2][8]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|array_reg[1][0]~q\,
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\,
	datad => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[2][8]~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~6_combout\);

-- Location: FF_X45_Y17_N29
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~6_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][8]~q\);

-- Location: LCCOMB_X44_Y18_N28
\ws2812_ctrl_inst|config_leds_inst|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux26~0_combout\ = (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3)) # ((\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1) & (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2))) # 
-- (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1) & ((\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2),
	datab => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3),
	datac => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0),
	datad => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1),
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux26~0_combout\);

-- Location: LCCOMB_X44_Y18_N14
\ws2812_ctrl_inst|config_leds_inst|Mux26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux26~1_combout\ = (\ws2812_ctrl_inst|config_leds_inst|Mux26~0_combout\) # (!\ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\,
	datad => \ws2812_ctrl_inst|config_leds_inst|Mux26~0_combout\,
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux26~1_combout\);

-- Location: FF_X44_Y18_N15
\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|config_leds_inst|Mux26~1_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[1][12]~q\);

-- Location: LCCOMB_X48_Y18_N10
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~8_combout\ = (\reg_ctrl_inst|array_reg[1][0]~q\ & (!\ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\ & (\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[1][12]~q\ & 
-- !\ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|array_reg[1][0]~q\,
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\,
	datac => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[1][12]~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~8_combout\);

-- Location: FF_X48_Y18_N11
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~8_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][12]~q\);

-- Location: LCCOMB_X43_Y18_N28
\ws2812_ctrl_inst|config_leds_inst|Mux56~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux56~0_combout\ = (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2)) # ((\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3)) # ((\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0) & 
-- !\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2),
	datab => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0),
	datac => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3),
	datad => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1),
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux56~0_combout\);

-- Location: LCCOMB_X43_Y18_N2
\ws2812_ctrl_inst|config_leds_inst|Mux56~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux56~1_combout\ = (\ws2812_ctrl_inst|config_leds_inst|Mux56~0_combout\) # (!\ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\,
	datad => \ws2812_ctrl_inst|config_leds_inst|Mux56~0_combout\,
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux56~1_combout\);

-- Location: FF_X43_Y18_N3
\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[5][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|config_leds_inst|Mux56~1_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[5][12]~q\);

-- Location: LCCOMB_X47_Y18_N6
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~7_combout\ = (\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[5][12]~q\ & (\reg_ctrl_inst|array_reg[1][0]~q\ & (!\ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\ & 
-- !\ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[5][12]~q\,
	datab => \reg_ctrl_inst|array_reg[1][0]~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~7_combout\);

-- Location: FF_X47_Y18_N7
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[5][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~7_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[5][12]~q\);

-- Location: LCCOMB_X48_Y18_N30
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux11~0_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1) & (((\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2))))) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1) & 
-- ((\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & ((\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[5][12]~q\))) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & (\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][12]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][12]~q\,
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[5][12]~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1),
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2),
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux11~0_combout\);

-- Location: LCCOMB_X48_Y17_N18
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux11~1_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|Mux11~0_combout\ & ((\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[7][12]~q\) # ((!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1))))) # 
-- (!\ws2812_ctrl_inst|ws2812_mngt_inst|Mux11~0_combout\ & (((\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][8]~q\ & \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[7][12]~q\,
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][8]~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux11~0_combout\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1),
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux11~1_combout\);

-- Location: LCCOMB_X48_Y17_N8
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux11~4_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & (((\ws2812_ctrl_inst|ws2812_mngt_inst|Mux11~1_combout\)))) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & 
-- ((\ws2812_ctrl_inst|ws2812_mngt_inst|Mux11~2_combout\) # ((\ws2812_ctrl_inst|ws2812_mngt_inst|Mux11~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0),
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux11~2_combout\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux11~3_combout\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux11~1_combout\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux11~4_combout\);

-- Location: FF_X48_Y17_N9
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux11~4_combout\,
	clrn => \reset_n~input_o\,
	sclr => \ws2812_ctrl_inst|ws2812_mngt_inst|ALT_INV_run_config_s~q\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s\(12));

-- Location: LCCOMB_X51_Y17_N4
\ws2812_ctrl_inst|ws2812_inst|led_config_s[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_inst|led_config_s[12]~feeder_combout\ = \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s\(12),
	combout => \ws2812_ctrl_inst|ws2812_inst|led_config_s[12]~feeder_combout\);

-- Location: FF_X51_Y17_N5
\ws2812_ctrl_inst|ws2812_inst|led_config_s[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_inst|led_config_s[12]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_inst|p_inputs_latch~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_inst|led_config_s\(12));

-- Location: LCCOMB_X46_Y16_N10
\ws2812_ctrl_inst|config_leds_inst|Mux50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux50~0_combout\ = (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3) & (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1) & ((\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0)) # 
-- (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0),
	datab => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3),
	datac => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1),
	datad => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2),
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux50~0_combout\);

-- Location: LCCOMB_X46_Y16_N4
\ws2812_ctrl_inst|config_leds_inst|Mux50~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux50~1_combout\ = (\ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\ & \ws2812_ctrl_inst|config_leds_inst|Mux50~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\,
	datad => \ws2812_ctrl_inst|config_leds_inst|Mux50~0_combout\,
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux50~1_combout\);

-- Location: FF_X46_Y16_N5
\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[3][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|config_leds_inst|Mux50~1_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[3][14]~q\);

-- Location: LCCOMB_X47_Y18_N2
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~26_combout\ = (!\ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\ & (\reg_ctrl_inst|array_reg[1][0]~q\ & (!\ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\ & 
-- \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[3][14]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\,
	datab => \reg_ctrl_inst|array_reg[1][0]~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\,
	datad => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[3][14]~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~26_combout\);

-- Location: FF_X47_Y18_N3
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[3][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~26_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[3][14]~q\);

-- Location: LCCOMB_X44_Y16_N28
\ws2812_ctrl_inst|config_leds_inst|Mux54~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux54~0_combout\ = (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3) & (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(4) & (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2) $ 
-- (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2),
	datab => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3),
	datac => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(4),
	datad => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0),
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux54~0_combout\);

-- Location: LCCOMB_X44_Y16_N8
\ws2812_ctrl_inst|config_leds_inst|Mux54~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux54~1_combout\ = (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(5) & (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(6) & (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(7) & 
-- \ws2812_ctrl_inst|config_leds_inst|Mux54~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(5),
	datab => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(6),
	datac => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(7),
	datad => \ws2812_ctrl_inst|config_leds_inst|Mux54~0_combout\,
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux54~1_combout\);

-- Location: FF_X44_Y16_N9
\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[4][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|config_leds_inst|Mux54~1_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[4][11]~q\);

-- Location: LCCOMB_X45_Y16_N28
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~22_combout\ = (\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[4][11]~q\ & (!\ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\ & (\reg_ctrl_inst|array_reg[1][0]~q\ & 
-- !\ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[4][11]~q\,
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\,
	datac => \reg_ctrl_inst|array_reg[1][0]~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~22_combout\);

-- Location: FF_X45_Y16_N29
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[4][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~22_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[4][11]~q\);

-- Location: LCCOMB_X46_Y16_N12
\ws2812_ctrl_inst|config_leds_inst|Mux41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux41~0_combout\ = (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3) & ((\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2) & ((!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1)))) # 
-- (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2) & (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0),
	datab => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3),
	datac => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1),
	datad => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2),
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux41~0_combout\);

-- Location: LCCOMB_X46_Y16_N18
\ws2812_ctrl_inst|config_leds_inst|Mux41~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux41~1_combout\ = (\ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\ & \ws2812_ctrl_inst|config_leds_inst|Mux41~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\,
	datad => \ws2812_ctrl_inst|config_leds_inst|Mux41~0_combout\,
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux41~1_combout\);

-- Location: FF_X46_Y16_N19
\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[2][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|config_leds_inst|Mux41~1_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[2][14]~q\);

-- Location: LCCOMB_X46_Y16_N28
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~23_combout\ = (\reg_ctrl_inst|array_reg[1][0]~q\ & (!\ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\ & (\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[2][14]~q\ & 
-- !\ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|array_reg[1][0]~q\,
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\,
	datac => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[2][14]~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~23_combout\);

-- Location: FF_X46_Y16_N29
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~23_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][14]~q\);

-- Location: LCCOMB_X49_Y16_N28
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~0_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & (\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[4][11]~q\)) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & 
-- ((\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][14]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[4][11]~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2),
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][14]~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~0_combout\);

-- Location: LCCOMB_X43_Y16_N10
\ws2812_ctrl_inst|config_leds_inst|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux12~0_combout\ = (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0) & (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3) & ((!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1)) # 
-- (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0),
	datab => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3),
	datac => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2),
	datad => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1),
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux12~0_combout\);

-- Location: LCCOMB_X43_Y16_N20
\ws2812_ctrl_inst|config_leds_inst|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux12~1_combout\ = (\ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\ & \ws2812_ctrl_inst|config_leds_inst|Mux12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\,
	datad => \ws2812_ctrl_inst|config_leds_inst|Mux12~0_combout\,
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux12~1_combout\);

-- Location: FF_X43_Y16_N21
\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|config_leds_inst|Mux12~1_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][9]~q\);

-- Location: LCCOMB_X47_Y18_N8
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~25_combout\ = (!\ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\ & (\reg_ctrl_inst|array_reg[1][0]~q\ & (\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][9]~q\ & 
-- !\ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\,
	datab => \reg_ctrl_inst|array_reg[1][0]~q\,
	datac => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][9]~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~25_combout\);

-- Location: FF_X47_Y18_N9
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~25_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][9]~q\);

-- Location: LCCOMB_X45_Y17_N6
\ws2812_ctrl_inst|config_leds_inst|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux27~0_combout\ = (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3) & ((\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0) & (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2))) # 
-- (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0) & (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2) & \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3),
	datab => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0),
	datac => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2),
	datad => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1),
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux27~0_combout\);

-- Location: LCCOMB_X45_Y17_N14
\ws2812_ctrl_inst|config_leds_inst|Mux27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux27~1_combout\ = (\ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\ & \ws2812_ctrl_inst|config_leds_inst|Mux27~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\,
	datad => \ws2812_ctrl_inst|config_leds_inst|Mux27~0_combout\,
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux27~1_combout\);

-- Location: FF_X45_Y17_N15
\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|config_leds_inst|Mux27~1_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[1][11]~q\);

-- Location: LCCOMB_X45_Y17_N4
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~24_combout\ = (\reg_ctrl_inst|array_reg[1][0]~q\ & (\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[1][11]~q\ & (!\ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\ & 
-- !\ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|array_reg[1][0]~q\,
	datab => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[1][11]~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~24_combout\);

-- Location: FF_X45_Y17_N5
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~24_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][11]~q\);

-- Location: LCCOMB_X50_Y18_N30
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~1_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & ((\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][11]~q\))) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & 
-- (\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2),
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][9]~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][11]~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~1_combout\);

-- Location: LCCOMB_X44_Y18_N0
\ws2812_ctrl_inst|config_leds_inst|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux8~0_combout\ = (\ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\ & (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3) & (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0) & 
-- !\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\,
	datab => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3),
	datac => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0),
	datad => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1),
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux8~0_combout\);

-- Location: FF_X44_Y18_N1
\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|config_leds_inst|Mux8~0_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][14]~q\);

-- Location: LCCOMB_X44_Y18_N16
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~16_combout\ = (\reg_ctrl_inst|array_reg[1][0]~q\ & (!\ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\ & (!\ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\ & 
-- \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][14]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|array_reg[1][0]~q\,
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\,
	datad => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][14]~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~16_combout\);

-- Location: FF_X44_Y18_N17
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~16_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][14]~q\);

-- Location: LCCOMB_X49_Y18_N0
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~2_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & ((\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][9]~q\))) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & 
-- (\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][14]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][14]~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][9]~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2),
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~2_combout\);

-- Location: LCCOMB_X49_Y18_N6
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux9~0_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & ((\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1)) # ((\ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~1_combout\)))) # 
-- (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1) & ((\ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0),
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1),
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~1_combout\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~2_combout\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux9~0_combout\);

-- Location: LCCOMB_X49_Y18_N8
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux9~1_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1) & ((\ws2812_ctrl_inst|ws2812_mngt_inst|Mux9~0_combout\ & (\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[3][14]~q\)) # 
-- (!\ws2812_ctrl_inst|ws2812_mngt_inst|Mux9~0_combout\ & ((\ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~0_combout\))))) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1) & (((\ws2812_ctrl_inst|ws2812_mngt_inst|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[3][14]~q\,
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1),
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~0_combout\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux9~0_combout\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux9~1_combout\);

-- Location: FF_X49_Y18_N9
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux9~1_combout\,
	clrn => \reset_n~input_o\,
	sclr => \ws2812_ctrl_inst|ws2812_mngt_inst|ALT_INV_run_config_s~q\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s\(14));

-- Location: FF_X50_Y17_N15
\ws2812_ctrl_inst|ws2812_inst|led_config_s[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	asdata => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s\(14),
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \ws2812_ctrl_inst|ws2812_inst|p_inputs_latch~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_inst|led_config_s\(14));

-- Location: LCCOMB_X45_Y17_N24
\ws2812_ctrl_inst|config_leds_inst|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux0~2_combout\ = (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3)) # ((\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0)) # (!\ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3),
	datab => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0),
	datac => \ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\,
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux0~2_combout\);

-- Location: FF_X45_Y17_N25
\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|config_leds_inst|Mux0~2_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][8]~q\);

-- Location: LCCOMB_X45_Y17_N26
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~19_combout\ = (\reg_ctrl_inst|array_reg[1][0]~q\ & (\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][8]~q\ & (!\ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\ & 
-- !\ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|array_reg[1][0]~q\,
	datab => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][8]~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~19_combout\);

-- Location: FF_X45_Y17_N27
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~19_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][8]~q\);

-- Location: LCCOMB_X48_Y17_N10
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux15~2_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][8]~q\ & (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1) $ (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1),
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][8]~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0),
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux15~2_combout\);

-- Location: LCCOMB_X45_Y19_N18
\ws2812_ctrl_inst|config_leds_inst|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux30~0_combout\ = (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3)) # ((\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0) & ((\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1)) # 
-- (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3),
	datab => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1),
	datac => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2),
	datad => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0),
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux30~0_combout\);

-- Location: LCCOMB_X45_Y19_N20
\ws2812_ctrl_inst|config_leds_inst|Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux30~1_combout\ = (\ws2812_ctrl_inst|config_leds_inst|Mux30~0_combout\) # (!\ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\,
	datad => \ws2812_ctrl_inst|config_leds_inst|Mux30~0_combout\,
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux30~1_combout\);

-- Location: FF_X45_Y19_N21
\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|config_leds_inst|Mux30~1_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[1][8]~q\);

-- Location: LCCOMB_X45_Y17_N2
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~21_combout\ = (\reg_ctrl_inst|array_reg[1][0]~q\ & (\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[1][8]~q\ & (!\ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\ & 
-- !\ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|array_reg[1][0]~q\,
	datab => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[1][8]~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~21_combout\);

-- Location: FF_X45_Y17_N3
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~21_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][8]~q\);

-- Location: LCCOMB_X48_Y17_N4
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux15~3_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1) & (((\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][8]~q\ & !\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0))))) # 
-- (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1) & (\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][8]~q\ & ((\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1),
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][8]~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][8]~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0),
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux15~3_combout\);

-- Location: LCCOMB_X46_Y17_N14
\ws2812_ctrl_inst|config_leds_inst|Mux62~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux62~0_combout\ = (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2)) # ((\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0)) # ((\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3)) # 
-- (!\ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2),
	datab => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0),
	datac => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3),
	datad => \ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\,
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux62~0_combout\);

-- Location: FF_X46_Y17_N15
\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[6][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|config_leds_inst|Mux62~0_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[6][8]~q\);

-- Location: LCCOMB_X47_Y17_N14
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~18_combout\ = (\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[6][8]~q\ & (!\ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\ & (!\ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\ & 
-- \reg_ctrl_inst|array_reg[1][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[6][8]~q\,
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\,
	datad => \reg_ctrl_inst|array_reg[1][0]~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~18_combout\);

-- Location: FF_X47_Y17_N15
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[6][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~18_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[6][8]~q\);

-- Location: LCCOMB_X46_Y17_N24
\ws2812_ctrl_inst|config_leds_inst|Mux55~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux55~0_combout\ = (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3)) # ((\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2) & ((\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1)))) # 
-- (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2) & (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0) & !\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2),
	datab => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0),
	datac => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3),
	datad => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1),
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux55~0_combout\);

-- Location: LCCOMB_X46_Y17_N12
\ws2812_ctrl_inst|config_leds_inst|Mux55~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux55~1_combout\ = (\ws2812_ctrl_inst|config_leds_inst|Mux55~0_combout\) # (!\ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ws2812_ctrl_inst|config_leds_inst|Mux55~0_combout\,
	datad => \ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\,
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux55~1_combout\);

-- Location: FF_X46_Y17_N13
\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[4][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|config_leds_inst|Mux55~1_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[4][8]~q\);

-- Location: LCCOMB_X45_Y17_N12
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~20_combout\ = (\reg_ctrl_inst|array_reg[1][0]~q\ & (\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[4][8]~q\ & (!\ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\ & 
-- !\ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|array_reg[1][0]~q\,
	datab => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[4][8]~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~20_combout\);

-- Location: FF_X45_Y17_N13
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[4][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~20_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[4][8]~q\);

-- Location: LCCOMB_X48_Y17_N2
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux15~0_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1) & (((\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0))))) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1) & 
-- ((\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & (\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][8]~q\)) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & ((\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[4][8]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1),
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][8]~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[4][8]~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0),
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux15~0_combout\);

-- Location: LCCOMB_X48_Y17_N12
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux15~1_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|Mux15~0_combout\ & (((\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][12]~q\) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1))))) # 
-- (!\ws2812_ctrl_inst|ws2812_mngt_inst|Mux15~0_combout\ & (\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[6][8]~q\ & ((\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[6][8]~q\,
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux15~0_combout\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][12]~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1),
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux15~1_combout\);

-- Location: LCCOMB_X48_Y17_N28
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux15~4_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & (((\ws2812_ctrl_inst|ws2812_mngt_inst|Mux15~1_combout\)))) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & 
-- ((\ws2812_ctrl_inst|ws2812_mngt_inst|Mux15~2_combout\) # ((\ws2812_ctrl_inst|ws2812_mngt_inst|Mux15~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux15~2_combout\,
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2),
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux15~3_combout\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux15~1_combout\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux15~4_combout\);

-- Location: FF_X48_Y17_N29
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux15~4_combout\,
	clrn => \reset_n~input_o\,
	sclr => \ws2812_ctrl_inst|ws2812_mngt_inst|ALT_INV_run_config_s~q\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s\(8));

-- Location: FF_X50_Y17_N25
\ws2812_ctrl_inst|ws2812_inst|led_config_s[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	asdata => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s\(8),
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \ws2812_ctrl_inst|ws2812_inst|p_inputs_latch~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_inst|led_config_s\(8));

-- Location: LCCOMB_X45_Y17_N20
\ws2812_ctrl_inst|config_leds_inst|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux11~0_combout\ = (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3) & ((\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0) & (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2) & 
-- !\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1))) # (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0) & (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2) & \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3),
	datab => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0),
	datac => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2),
	datad => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1),
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux11~0_combout\);

-- Location: LCCOMB_X45_Y17_N18
\ws2812_ctrl_inst|config_leds_inst|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux11~1_combout\ = (\ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\ & \ws2812_ctrl_inst|config_leds_inst|Mux11~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\,
	datad => \ws2812_ctrl_inst|config_leds_inst|Mux11~0_combout\,
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux11~1_combout\);

-- Location: FF_X45_Y17_N19
\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|config_leds_inst|Mux11~1_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][10]~q\);

-- Location: LCCOMB_X45_Y17_N30
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~15_combout\ = (\reg_ctrl_inst|array_reg[1][0]~q\ & (\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][10]~q\ & (!\ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\ & 
-- !\ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|array_reg[1][0]~q\,
	datab => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][10]~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~15_combout\);

-- Location: FF_X45_Y17_N31
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~15_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][10]~q\);

-- Location: LCCOMB_X46_Y17_N2
\ws2812_ctrl_inst|config_leds_inst|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux28~0_combout\ = (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3) & (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1) & (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2) $ 
-- (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2),
	datab => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0),
	datac => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3),
	datad => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1),
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux28~0_combout\);

-- Location: LCCOMB_X46_Y17_N28
\ws2812_ctrl_inst|config_leds_inst|Mux28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux28~1_combout\ = (\ws2812_ctrl_inst|config_leds_inst|Mux28~0_combout\ & \ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ws2812_ctrl_inst|config_leds_inst|Mux28~0_combout\,
	datad => \ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\,
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux28~1_combout\);

-- Location: FF_X46_Y17_N29
\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|config_leds_inst|Mux28~1_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[1][10]~q\);

-- Location: LCCOMB_X45_Y17_N0
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~17_combout\ = (\reg_ctrl_inst|array_reg[1][0]~q\ & (\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[1][10]~q\ & (!\ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\ & 
-- !\ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|array_reg[1][0]~q\,
	datab => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[1][10]~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~17_combout\);

-- Location: FF_X45_Y17_N1
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~17_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][10]~q\);

-- Location: LCCOMB_X48_Y17_N16
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux13~2_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & (\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][10]~q\)) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & 
-- ((\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][10]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][10]~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2),
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][10]~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux13~2_combout\);

-- Location: LCCOMB_X46_Y15_N18
\ws2812_ctrl_inst|config_leds_inst|Mux43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux43~0_combout\ = (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3) & ((\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0) & (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1) & 
-- !\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2))) # (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0) & ((\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0),
	datab => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1),
	datac => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2),
	datad => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3),
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux43~0_combout\);

-- Location: LCCOMB_X46_Y15_N14
\ws2812_ctrl_inst|config_leds_inst|Mux43~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux43~1_combout\ = (\ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\ & \ws2812_ctrl_inst|config_leds_inst|Mux43~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\,
	datad => \ws2812_ctrl_inst|config_leds_inst|Mux43~0_combout\,
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux43~1_combout\);

-- Location: FF_X46_Y15_N15
\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|config_leds_inst|Mux43~1_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[2][9]~q\);

-- Location: LCCOMB_X47_Y15_N20
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~13_combout\ = (\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[2][9]~q\ & (!\ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\ & (\reg_ctrl_inst|array_reg[1][0]~q\ & 
-- !\ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[2][9]~q\,
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\,
	datac => \reg_ctrl_inst|array_reg[1][0]~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~13_combout\);

-- Location: FF_X47_Y15_N21
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~13_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][9]~q\);

-- Location: LCCOMB_X45_Y15_N12
\ws2812_ctrl_inst|config_leds_inst|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux7~0_combout\ = (!\ws2812_ctrl_inst|config_leds_inst|Mux22~0_combout\ & \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ws2812_ctrl_inst|config_leds_inst|Mux22~0_combout\,
	datad => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0),
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux7~0_combout\);

-- Location: FF_X45_Y15_N13
\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|config_leds_inst|Mux7~0_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][15]~q\);

-- Location: LCCOMB_X45_Y18_N8
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~14_combout\ = (!\ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\ & (!\ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\ & (\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][15]~q\ & 
-- \reg_ctrl_inst|array_reg[1][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\,
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\,
	datac => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][15]~q\,
	datad => \reg_ctrl_inst|array_reg[1][0]~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~14_combout\);

-- Location: FF_X45_Y18_N9
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~14_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][15]~q\);

-- Location: LCCOMB_X48_Y17_N0
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux13~0_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1) & (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2))) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1) & 
-- ((\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & ((\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][15]~q\))) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & (\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][10]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1),
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2),
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][10]~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][15]~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux13~0_combout\);

-- Location: LCCOMB_X48_Y17_N30
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux13~1_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1) & ((\ws2812_ctrl_inst|ws2812_mngt_inst|Mux13~0_combout\ & ((\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][14]~q\))) # 
-- (!\ws2812_ctrl_inst|ws2812_mngt_inst|Mux13~0_combout\ & (\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][9]~q\)))) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1) & (((\ws2812_ctrl_inst|ws2812_mngt_inst|Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1),
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][9]~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][14]~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux13~0_combout\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux13~1_combout\);

-- Location: LCCOMB_X48_Y17_N6
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux13~3_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & ((\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1) & ((\ws2812_ctrl_inst|ws2812_mngt_inst|Mux13~1_combout\))) # 
-- (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1) & (\ws2812_ctrl_inst|ws2812_mngt_inst|Mux13~2_combout\)))) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & ((\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1) & 
-- (\ws2812_ctrl_inst|ws2812_mngt_inst|Mux13~2_combout\)) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1) & ((\ws2812_ctrl_inst|ws2812_mngt_inst|Mux13~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0),
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux13~2_combout\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux13~1_combout\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1),
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux13~3_combout\);

-- Location: FF_X48_Y17_N7
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux13~3_combout\,
	clrn => \reset_n~input_o\,
	sclr => \ws2812_ctrl_inst|ws2812_mngt_inst|ALT_INV_run_config_s~q\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s\(10));

-- Location: LCCOMB_X51_Y17_N22
\ws2812_ctrl_inst|ws2812_inst|led_config_s[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_inst|led_config_s[10]~feeder_combout\ = \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s\(10),
	combout => \ws2812_ctrl_inst|ws2812_inst|led_config_s[10]~feeder_combout\);

-- Location: FF_X51_Y17_N23
\ws2812_ctrl_inst|ws2812_inst|led_config_s[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_inst|led_config_s[10]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_inst|p_inputs_latch~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_inst|led_config_s\(10));

-- Location: LCCOMB_X50_Y17_N24
\ws2812_ctrl_inst|ws2812_inst|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_inst|Mux0~0_combout\ = (\ws2812_ctrl_inst|ws2812_inst|cnt_24\(1) & (\ws2812_ctrl_inst|ws2812_inst|cnt_24\(2) & (\ws2812_ctrl_inst|ws2812_inst|led_config_s\(8)))) # (!\ws2812_ctrl_inst|ws2812_inst|cnt_24\(1) & 
-- (((\ws2812_ctrl_inst|ws2812_inst|led_config_s\(10))) # (!\ws2812_ctrl_inst|ws2812_inst|cnt_24\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_inst|cnt_24\(1),
	datab => \ws2812_ctrl_inst|ws2812_inst|cnt_24\(2),
	datac => \ws2812_ctrl_inst|ws2812_inst|led_config_s\(8),
	datad => \ws2812_ctrl_inst|ws2812_inst|led_config_s\(10),
	combout => \ws2812_ctrl_inst|ws2812_inst|Mux0~0_combout\);

-- Location: LCCOMB_X50_Y17_N14
\ws2812_ctrl_inst|ws2812_inst|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_inst|Mux0~1_combout\ = (\ws2812_ctrl_inst|ws2812_inst|cnt_24\(2) & (((\ws2812_ctrl_inst|ws2812_inst|Mux0~0_combout\)))) # (!\ws2812_ctrl_inst|ws2812_inst|cnt_24\(2) & ((\ws2812_ctrl_inst|ws2812_inst|Mux0~0_combout\ & 
-- ((\ws2812_ctrl_inst|ws2812_inst|led_config_s\(14)))) # (!\ws2812_ctrl_inst|ws2812_inst|Mux0~0_combout\ & (\ws2812_ctrl_inst|ws2812_inst|led_config_s\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_inst|led_config_s\(12),
	datab => \ws2812_ctrl_inst|ws2812_inst|cnt_24\(2),
	datac => \ws2812_ctrl_inst|ws2812_inst|led_config_s\(14),
	datad => \ws2812_ctrl_inst|ws2812_inst|Mux0~0_combout\,
	combout => \ws2812_ctrl_inst|ws2812_inst|Mux0~1_combout\);

-- Location: LCCOMB_X47_Y15_N24
\ws2812_ctrl_inst|config_leds_inst|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux9~0_combout\ = (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2) & (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0) & (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3) & 
-- \ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2),
	datab => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0),
	datac => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3),
	datad => \ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\,
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux9~0_combout\);

-- Location: FF_X47_Y15_N25
\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|config_leds_inst|Mux9~0_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][13]~q\);

-- Location: LCCOMB_X48_Y15_N10
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~43_combout\ = (\reg_ctrl_inst|array_reg[1][0]~q\ & (\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][13]~q\ & (!\ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\ & 
-- !\ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|array_reg[1][0]~q\,
	datab => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][13]~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~43_combout\);

-- Location: FF_X48_Y15_N11
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~43_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][13]~q\);

-- Location: LCCOMB_X49_Y16_N30
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux12~0_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & ((\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][13]~q\))) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & 
-- (\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0),
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][15]~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][13]~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux12~0_combout\);

-- Location: LCCOMB_X46_Y17_N18
\ws2812_ctrl_inst|config_leds_inst|Mux59~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux59~0_combout\ = (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3) & ((\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0) & ((!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1)))) # 
-- (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0) & (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2) & \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2),
	datab => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0),
	datac => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3),
	datad => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1),
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux59~0_combout\);

-- Location: LCCOMB_X46_Y17_N4
\ws2812_ctrl_inst|config_leds_inst|Mux59~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux59~1_combout\ = (\ws2812_ctrl_inst|config_leds_inst|Mux59~0_combout\ & \ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ws2812_ctrl_inst|config_leds_inst|Mux59~0_combout\,
	datad => \ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\,
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux59~1_combout\);

-- Location: FF_X46_Y17_N5
\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[6][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|config_leds_inst|Mux59~1_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[6][13]~q\);

-- Location: LCCOMB_X45_Y17_N22
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~44_combout\ = (\reg_ctrl_inst|array_reg[1][0]~q\ & (!\ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\ & (!\ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\ & 
-- \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[6][13]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|array_reg[1][0]~q\,
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\,
	datad => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[6][13]~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~44_combout\);

-- Location: FF_X45_Y17_N23
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[6][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~44_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[6][13]~q\);

-- Location: LCCOMB_X49_Y16_N20
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux12~1_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & ((\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1) & (\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[6][13]~q\)) # 
-- (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1) & ((\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][14]~q\))))) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & (((\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[6][13]~q\,
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2),
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1),
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][14]~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux12~1_combout\);

-- Location: LCCOMB_X49_Y16_N6
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux12~2_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & ((\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) $ (!\ws2812_ctrl_inst|ws2812_mngt_inst|Mux12~1_combout\)))) # 
-- (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & ((\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & (\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[4][11]~q\)) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & 
-- ((\ws2812_ctrl_inst|ws2812_mngt_inst|Mux12~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0),
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[4][11]~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2),
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux12~1_combout\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux12~2_combout\);

-- Location: LCCOMB_X49_Y16_N4
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux12~3_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & (((\ws2812_ctrl_inst|ws2812_mngt_inst|Mux12~2_combout\)))) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & 
-- ((\ws2812_ctrl_inst|ws2812_mngt_inst|Mux12~2_combout\ & (\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][11]~q\)) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|Mux12~2_combout\ & ((\ws2812_ctrl_inst|ws2812_mngt_inst|Mux12~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2),
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][11]~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux12~0_combout\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux12~2_combout\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux12~3_combout\);

-- Location: FF_X49_Y16_N5
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux12~3_combout\,
	clrn => \reset_n~input_o\,
	sclr => \ws2812_ctrl_inst|ws2812_mngt_inst|ALT_INV_run_config_s~q\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s\(11));

-- Location: LCCOMB_X51_Y17_N6
\ws2812_ctrl_inst|ws2812_inst|led_config_s[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_inst|led_config_s[11]~feeder_combout\ = \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s\(11),
	combout => \ws2812_ctrl_inst|ws2812_inst|led_config_s[11]~feeder_combout\);

-- Location: FF_X51_Y17_N7
\ws2812_ctrl_inst|ws2812_inst|led_config_s[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_inst|led_config_s[11]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_inst|p_inputs_latch~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_inst|led_config_s\(11));

-- Location: LCCOMB_X46_Y17_N20
\ws2812_ctrl_inst|config_leds_inst|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux25~0_combout\ = (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3) & ((\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2) & (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0) & 
-- !\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1))) # (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2) & (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2),
	datab => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0),
	datac => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3),
	datad => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1),
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux25~0_combout\);

-- Location: LCCOMB_X46_Y17_N22
\ws2812_ctrl_inst|config_leds_inst|Mux25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux25~1_combout\ = (\ws2812_ctrl_inst|config_leds_inst|Mux25~0_combout\ & \ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ws2812_ctrl_inst|config_leds_inst|Mux25~0_combout\,
	datad => \ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\,
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux25~1_combout\);

-- Location: FF_X46_Y17_N23
\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|config_leds_inst|Mux25~1_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[1][13]~q\);

-- Location: LCCOMB_X48_Y18_N16
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~45_combout\ = (\reg_ctrl_inst|array_reg[1][0]~q\ & (!\ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\ & (\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[1][13]~q\ & 
-- !\ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|array_reg[1][0]~q\,
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\,
	datac => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[1][13]~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~45_combout\);

-- Location: FF_X48_Y18_N17
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~45_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][13]~q\);

-- Location: LCCOMB_X45_Y15_N26
\ws2812_ctrl_inst|config_leds_inst|Mux51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux51~0_combout\ = (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3) & ((\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0) & (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1))) # 
-- (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0) & ((\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3),
	datab => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0),
	datac => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1),
	datad => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2),
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux51~0_combout\);

-- Location: LCCOMB_X45_Y15_N22
\ws2812_ctrl_inst|config_leds_inst|Mux51~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux51~1_combout\ = (\ws2812_ctrl_inst|config_leds_inst|Mux51~0_combout\ & \ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ws2812_ctrl_inst|config_leds_inst|Mux51~0_combout\,
	datad => \ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\,
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux51~1_combout\);

-- Location: FF_X45_Y15_N23
\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[3][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|config_leds_inst|Mux51~1_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[3][13]~q\);

-- Location: LCCOMB_X48_Y18_N2
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~46_combout\ = (\reg_ctrl_inst|array_reg[1][0]~q\ & (!\ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\ & (\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[3][13]~q\ & 
-- !\ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|array_reg[1][0]~q\,
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\,
	datac => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[3][13]~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~46_combout\);

-- Location: FF_X48_Y18_N3
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[3][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~46_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[3][13]~q\);

-- Location: LCCOMB_X49_Y18_N14
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~10_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1) & (((\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[3][13]~q\)))) # 
-- (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1) & ((\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][13]~q\) # ((\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][13]~q\,
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1),
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0),
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[3][13]~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~10_combout\);

-- Location: LCCOMB_X49_Y16_N16
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~11_combout\ = \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1) $ (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1),
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0),
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~11_combout\);

-- Location: LCCOMB_X49_Y16_N10
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~12_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & ((\ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~11_combout\ & ((\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][14]~q\))) # 
-- (!\ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~11_combout\ & (\ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~10_combout\)))) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & (\ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~10_combout\ & 
-- ((\ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~10_combout\,
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][14]~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2),
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~11_combout\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~12_combout\);

-- Location: LCCOMB_X49_Y16_N26
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~13_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & (((\ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~12_combout\)))) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & 
-- ((\ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~12_combout\ & (\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][13]~q\)) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~12_combout\ & ((\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][15]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][13]~q\,
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][15]~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2),
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~12_combout\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~13_combout\);

-- Location: FF_X49_Y16_N27
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~13_combout\,
	clrn => \reset_n~input_o\,
	sclr => \ws2812_ctrl_inst|ws2812_mngt_inst|ALT_INV_run_config_s~q\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s\(15));

-- Location: FF_X50_Y17_N27
\ws2812_ctrl_inst|ws2812_inst|led_config_s[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	asdata => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s\(15),
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \ws2812_ctrl_inst|ws2812_inst|p_inputs_latch~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_inst|led_config_s\(15));

-- Location: LCCOMB_X45_Y16_N6
\ws2812_ctrl_inst|config_leds_inst|Mux61~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux61~0_combout\ = (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3) & ((\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0) & ((!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1)) # 
-- (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2)))) # (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0) & (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0),
	datab => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3),
	datac => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2),
	datad => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1),
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux61~0_combout\);

-- Location: LCCOMB_X45_Y16_N8
\ws2812_ctrl_inst|config_leds_inst|Mux61~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux61~1_combout\ = (\ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\ & \ws2812_ctrl_inst|config_leds_inst|Mux61~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\,
	datad => \ws2812_ctrl_inst|config_leds_inst|Mux61~0_combout\,
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux61~1_combout\);

-- Location: FF_X45_Y16_N9
\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[6][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|config_leds_inst|Mux61~1_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[6][9]~q\);

-- Location: LCCOMB_X45_Y16_N2
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~47_combout\ = (!\ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\ & (\reg_ctrl_inst|array_reg[1][0]~q\ & (\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[6][9]~q\ & 
-- !\ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\,
	datab => \reg_ctrl_inst|array_reg[1][0]~q\,
	datac => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[6][9]~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~47_combout\);

-- Location: FF_X45_Y18_N19
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[6][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	asdata => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~47_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[6][9]~q\);

-- Location: LCCOMB_X49_Y18_N12
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~6_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & (\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[6][9]~q\)) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & 
-- ((\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2),
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[6][9]~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][9]~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~6_combout\);

-- Location: LCCOMB_X48_Y18_N0
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~9_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & (\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][10]~q\)) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & 
-- ((\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][13]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][10]~q\,
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][13]~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2),
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~9_combout\);

-- Location: LCCOMB_X44_Y15_N10
\ws2812_ctrl_inst|config_leds_inst|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux29~0_combout\ = (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3) & (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0) $ (((\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1) & 
-- \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1),
	datab => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3),
	datac => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2),
	datad => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0),
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux29~0_combout\);

-- Location: LCCOMB_X44_Y15_N16
\ws2812_ctrl_inst|config_leds_inst|Mux29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux29~1_combout\ = (\ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\ & \ws2812_ctrl_inst|config_leds_inst|Mux29~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\,
	datad => \ws2812_ctrl_inst|config_leds_inst|Mux29~0_combout\,
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux29~1_combout\);

-- Location: FF_X44_Y15_N17
\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|config_leds_inst|Mux29~1_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[1][9]~q\);

-- Location: LCCOMB_X44_Y18_N10
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~48_combout\ = (\reg_ctrl_inst|array_reg[1][0]~q\ & (!\ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\ & (!\ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\ & 
-- \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[1][9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|array_reg[1][0]~q\,
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\,
	datad => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[1][9]~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~48_combout\);

-- Location: FF_X44_Y18_N11
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~48_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][9]~q\);

-- Location: LCCOMB_X45_Y18_N16
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~7_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & ((\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][15]~q\))) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & 
-- (\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][9]~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][15]~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2),
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~7_combout\);

-- Location: LCCOMB_X49_Y18_N10
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~8_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & (\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][13]~q\)) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & 
-- ((\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][13]~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][9]~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2),
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~8_combout\);

-- Location: LCCOMB_X49_Y18_N20
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux14~0_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & ((\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1)) # ((\ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~7_combout\)))) # 
-- (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1) & ((\ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0),
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1),
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~7_combout\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~8_combout\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux14~0_combout\);

-- Location: LCCOMB_X49_Y18_N28
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux14~1_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1) & ((\ws2812_ctrl_inst|ws2812_mngt_inst|Mux14~0_combout\ & ((\ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~9_combout\))) # 
-- (!\ws2812_ctrl_inst|ws2812_mngt_inst|Mux14~0_combout\ & (\ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~6_combout\)))) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1) & (((\ws2812_ctrl_inst|ws2812_mngt_inst|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~6_combout\,
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1),
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~9_combout\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux14~0_combout\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux14~1_combout\);

-- Location: FF_X49_Y18_N29
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux14~1_combout\,
	clrn => \reset_n~input_o\,
	sclr => \ws2812_ctrl_inst|ws2812_mngt_inst|ALT_INV_run_config_s~q\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s\(9));

-- Location: FF_X50_Y17_N29
\ws2812_ctrl_inst|ws2812_inst|led_config_s[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	asdata => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s\(9),
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \ws2812_ctrl_inst|ws2812_inst|p_inputs_latch~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_inst|led_config_s\(9));

-- Location: LCCOMB_X49_Y18_N26
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~5_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & ((\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][9]~q\))) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & 
-- (\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[3][13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[3][13]~q\,
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2),
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][9]~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~5_combout\);

-- Location: LCCOMB_X49_Y18_N4
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~3_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & ((\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[6][13]~q\))) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & 
-- (\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][9]~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[6][13]~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2),
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~3_combout\);

-- Location: LCCOMB_X49_Y18_N2
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~4_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & (\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][9]~q\)) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & 
-- ((\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][13]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][9]~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][13]~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2),
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~4_combout\);

-- Location: LCCOMB_X49_Y18_N16
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux10~0_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & ((\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1)) # ((\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][13]~q\)))) # 
-- (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1) & ((\ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0),
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1),
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][13]~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~4_combout\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux10~0_combout\);

-- Location: LCCOMB_X49_Y18_N30
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux10~1_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1) & ((\ws2812_ctrl_inst|ws2812_mngt_inst|Mux10~0_combout\ & (\ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~5_combout\)) # 
-- (!\ws2812_ctrl_inst|ws2812_mngt_inst|Mux10~0_combout\ & ((\ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~3_combout\))))) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1) & (((\ws2812_ctrl_inst|ws2812_mngt_inst|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~5_combout\,
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1),
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux8~3_combout\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux10~0_combout\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux10~1_combout\);

-- Location: FF_X49_Y18_N31
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux10~1_combout\,
	clrn => \reset_n~input_o\,
	sclr => \ws2812_ctrl_inst|ws2812_mngt_inst|ALT_INV_run_config_s~q\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s\(13));

-- Location: LCCOMB_X51_Y17_N28
\ws2812_ctrl_inst|ws2812_inst|led_config_s[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_inst|led_config_s[13]~feeder_combout\ = \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s\(13),
	combout => \ws2812_ctrl_inst|ws2812_inst|led_config_s[13]~feeder_combout\);

-- Location: FF_X51_Y17_N29
\ws2812_ctrl_inst|ws2812_inst|led_config_s[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_inst|led_config_s[13]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_inst|p_inputs_latch~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_inst|led_config_s\(13));

-- Location: LCCOMB_X50_Y17_N28
\ws2812_ctrl_inst|ws2812_inst|Mux0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_inst|Mux0~7_combout\ = (\ws2812_ctrl_inst|ws2812_inst|cnt_24\(1) & ((\ws2812_ctrl_inst|ws2812_inst|cnt_24\(2) & (\ws2812_ctrl_inst|ws2812_inst|led_config_s\(9))) # (!\ws2812_ctrl_inst|ws2812_inst|cnt_24\(2) & 
-- ((\ws2812_ctrl_inst|ws2812_inst|led_config_s\(13)))))) # (!\ws2812_ctrl_inst|ws2812_inst|cnt_24\(1) & (!\ws2812_ctrl_inst|ws2812_inst|cnt_24\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_inst|cnt_24\(1),
	datab => \ws2812_ctrl_inst|ws2812_inst|cnt_24\(2),
	datac => \ws2812_ctrl_inst|ws2812_inst|led_config_s\(9),
	datad => \ws2812_ctrl_inst|ws2812_inst|led_config_s\(13),
	combout => \ws2812_ctrl_inst|ws2812_inst|Mux0~7_combout\);

-- Location: LCCOMB_X50_Y17_N26
\ws2812_ctrl_inst|ws2812_inst|Mux0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_inst|Mux0~8_combout\ = (\ws2812_ctrl_inst|ws2812_inst|cnt_24\(1) & (((\ws2812_ctrl_inst|ws2812_inst|Mux0~7_combout\)))) # (!\ws2812_ctrl_inst|ws2812_inst|cnt_24\(1) & ((\ws2812_ctrl_inst|ws2812_inst|Mux0~7_combout\ & 
-- ((\ws2812_ctrl_inst|ws2812_inst|led_config_s\(15)))) # (!\ws2812_ctrl_inst|ws2812_inst|Mux0~7_combout\ & (\ws2812_ctrl_inst|ws2812_inst|led_config_s\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_inst|led_config_s\(11),
	datab => \ws2812_ctrl_inst|ws2812_inst|cnt_24\(1),
	datac => \ws2812_ctrl_inst|ws2812_inst|led_config_s\(15),
	datad => \ws2812_ctrl_inst|ws2812_inst|Mux0~7_combout\,
	combout => \ws2812_ctrl_inst|ws2812_inst|Mux0~8_combout\);

-- Location: FF_X45_Y15_N15
\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|config_leds_inst|Mux22~0_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[3][0]~q\);

-- Location: LCCOMB_X46_Y18_N0
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~35_combout\ = (!\ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\ & (\reg_ctrl_inst|array_reg[1][0]~q\ & (\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[3][0]~q\ & 
-- !\ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\,
	datab => \reg_ctrl_inst|array_reg[1][0]~q\,
	datac => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[3][0]~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~35_combout\);

-- Location: FF_X46_Y18_N1
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~35_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[3][0]~q\);

-- Location: LCCOMB_X45_Y15_N30
\ws2812_ctrl_inst|config_leds_inst|Mux35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux35~0_combout\ = (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3)) # ((\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1) & (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0) $ 
-- (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3),
	datab => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0),
	datac => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1),
	datad => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2),
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux35~0_combout\);

-- Location: LCCOMB_X45_Y15_N10
\ws2812_ctrl_inst|config_leds_inst|Mux35~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux35~1_combout\ = (\ws2812_ctrl_inst|config_leds_inst|Mux35~0_combout\) # (!\ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ws2812_ctrl_inst|config_leds_inst|Mux35~0_combout\,
	datad => \ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\,
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux35~1_combout\);

-- Location: FF_X45_Y15_N11
\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|config_leds_inst|Mux35~1_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[1][0]~q\);

-- Location: LCCOMB_X45_Y18_N4
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~39_combout\ = (\reg_ctrl_inst|array_reg[1][0]~q\ & (\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[1][0]~q\ & (!\ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\ & 
-- !\ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|array_reg[1][0]~q\,
	datab => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[1][0]~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~39_combout\);

-- Location: FF_X45_Y18_N5
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~39_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][0]~q\);

-- Location: LCCOMB_X44_Y19_N28
\ws2812_ctrl_inst|config_leds_inst|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux17~0_combout\ = (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3)) # (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1) $ (((\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2) & 
-- !\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3),
	datab => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2),
	datac => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1),
	datad => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0),
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux17~0_combout\);

-- Location: LCCOMB_X44_Y19_N8
\ws2812_ctrl_inst|config_leds_inst|Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux17~1_combout\ = (\ws2812_ctrl_inst|config_leds_inst|Mux17~0_combout\) # (!\ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\,
	datad => \ws2812_ctrl_inst|config_leds_inst|Mux17~0_combout\,
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux17~1_combout\);

-- Location: FF_X44_Y19_N9
\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|config_leds_inst|Mux17~1_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][4]~q\);

-- Location: LCCOMB_X45_Y18_N10
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~38_combout\ = (\reg_ctrl_inst|array_reg[1][0]~q\ & (\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][4]~q\ & (!\ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\ & 
-- !\ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|array_reg[1][0]~q\,
	datab => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][4]~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~38_combout\);

-- Location: FF_X45_Y18_N11
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~38_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][4]~q\);

-- Location: LCCOMB_X45_Y15_N0
\ws2812_ctrl_inst|config_leds_inst|Mux52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux52~0_combout\ = (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3)) # ((\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0) & (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1) & 
-- \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2))) # (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0) & (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1) $ (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3),
	datab => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0),
	datac => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1),
	datad => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2),
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux52~0_combout\);

-- Location: LCCOMB_X45_Y15_N20
\ws2812_ctrl_inst|config_leds_inst|Mux52~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux52~1_combout\ = (\ws2812_ctrl_inst|config_leds_inst|Mux52~0_combout\) # (!\ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ws2812_ctrl_inst|config_leds_inst|Mux52~0_combout\,
	datad => \ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\,
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux52~1_combout\);

-- Location: FF_X45_Y15_N21
\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|config_leds_inst|Mux52~1_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[3][4]~q\);

-- Location: LCCOMB_X46_Y18_N22
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~36_combout\ = (\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[3][4]~q\ & (!\ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\ & (\reg_ctrl_inst|array_reg[1][0]~q\ & 
-- !\ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[3][4]~q\,
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\,
	datac => \reg_ctrl_inst|array_reg[1][0]~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~36_combout\);

-- Location: FF_X46_Y18_N23
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~36_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[3][4]~q\);

-- Location: LCCOMB_X43_Y16_N8
\ws2812_ctrl_inst|config_leds_inst|Mux34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux34~0_combout\ = (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3)) # ((\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2)) # ((!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0) & 
-- \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0),
	datab => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3),
	datac => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2),
	datad => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1),
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux34~0_combout\);

-- Location: LCCOMB_X43_Y16_N22
\ws2812_ctrl_inst|config_leds_inst|Mux34~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux34~1_combout\ = (\ws2812_ctrl_inst|config_leds_inst|Mux34~0_combout\) # (!\ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\,
	datac => \ws2812_ctrl_inst|config_leds_inst|Mux34~0_combout\,
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux34~1_combout\);

-- Location: FF_X43_Y16_N23
\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|config_leds_inst|Mux34~1_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[1][4]~q\);

-- Location: LCCOMB_X44_Y18_N6
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~37_combout\ = (\reg_ctrl_inst|array_reg[1][0]~q\ & (!\ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\ & (!\ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\ & 
-- \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[1][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|array_reg[1][0]~q\,
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\,
	datad => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[1][4]~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~37_combout\);

-- Location: FF_X44_Y18_N7
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~37_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][4]~q\);

-- Location: LCCOMB_X46_Y18_N16
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux19~0_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1) & (\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[3][4]~q\)) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1) & 
-- ((\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[3][4]~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][4]~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1),
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux19~0_combout\);

-- Location: LCCOMB_X46_Y18_N6
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux19~1_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & (((\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2)) # (\ws2812_ctrl_inst|ws2812_mngt_inst|Mux19~0_combout\)))) # 
-- (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & (\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][4]~q\ & (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][4]~q\,
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0),
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2),
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux19~0_combout\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux19~1_combout\);

-- Location: LCCOMB_X46_Y18_N24
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux19~2_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & ((\ws2812_ctrl_inst|ws2812_mngt_inst|Mux19~1_combout\ & ((\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][0]~q\))) # 
-- (!\ws2812_ctrl_inst|ws2812_mngt_inst|Mux19~1_combout\ & (\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[3][0]~q\)))) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & (((\ws2812_ctrl_inst|ws2812_mngt_inst|Mux19~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2),
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[3][0]~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][0]~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux19~1_combout\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux19~2_combout\);

-- Location: FF_X46_Y18_N25
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux19~2_combout\,
	clrn => \reset_n~input_o\,
	sclr => \ws2812_ctrl_inst|ws2812_mngt_inst|ALT_INV_run_config_s~q\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s\(4));

-- Location: LCCOMB_X50_Y17_N30
\ws2812_ctrl_inst|ws2812_inst|led_config_s[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_inst|led_config_s[4]~feeder_combout\ = \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s\(4),
	combout => \ws2812_ctrl_inst|ws2812_inst|led_config_s[4]~feeder_combout\);

-- Location: FF_X50_Y17_N31
\ws2812_ctrl_inst|ws2812_inst|led_config_s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_inst|led_config_s[4]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_inst|p_inputs_latch~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_inst|led_config_s\(4));

-- Location: LCCOMB_X45_Y16_N12
\ws2812_ctrl_inst|config_leds_inst|Mux32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux32~0_combout\ = (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3) & ((\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1) & (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0))) # 
-- (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1) & ((\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0),
	datab => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3),
	datac => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2),
	datad => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1),
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux32~0_combout\);

-- Location: LCCOMB_X45_Y16_N10
\ws2812_ctrl_inst|config_leds_inst|Mux32~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux32~1_combout\ = (\ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\ & \ws2812_ctrl_inst|config_leds_inst|Mux32~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\,
	datad => \ws2812_ctrl_inst|config_leds_inst|Mux32~0_combout\,
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux32~1_combout\);

-- Location: FF_X45_Y16_N11
\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|config_leds_inst|Mux32~1_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[1][6]~q\);

-- Location: LCCOMB_X45_Y16_N20
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~31_combout\ = (\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[1][6]~q\ & (\reg_ctrl_inst|array_reg[1][0]~q\ & (!\ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\ & 
-- !\ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[1][6]~q\,
	datab => \reg_ctrl_inst|array_reg[1][0]~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~31_combout\);

-- Location: FF_X45_Y16_N21
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~31_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][6]~q\);

-- Location: LCCOMB_X44_Y16_N12
\ws2812_ctrl_inst|config_leds_inst|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux31~0_combout\ = (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3) & (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0) & (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1) $ 
-- (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1),
	datab => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3),
	datac => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2),
	datad => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0),
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux31~0_combout\);

-- Location: LCCOMB_X44_Y16_N30
\ws2812_ctrl_inst|config_leds_inst|Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux31~1_combout\ = (\ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\ & \ws2812_ctrl_inst|config_leds_inst|Mux31~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\,
	datad => \ws2812_ctrl_inst|config_leds_inst|Mux31~0_combout\,
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux31~1_combout\);

-- Location: FF_X44_Y16_N31
\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|config_leds_inst|Mux31~1_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[1][7]~q\);

-- Location: LCCOMB_X47_Y15_N26
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~27_combout\ = (\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[1][7]~q\ & (!\ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\ & (\reg_ctrl_inst|array_reg[1][0]~q\ & 
-- !\ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[1][7]~q\,
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\,
	datac => \reg_ctrl_inst|array_reg[1][0]~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~27_combout\);

-- Location: FF_X47_Y15_N27
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~27_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][7]~q\);

-- Location: LCCOMB_X48_Y16_N8
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux16~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux16~7_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & (\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][6]~q\)) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & 
-- ((\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][6]~q\,
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0),
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][7]~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux16~7_combout\);

-- Location: LCCOMB_X44_Y15_N2
\ws2812_ctrl_inst|config_leds_inst|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux15~0_combout\ = (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3) & ((\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1) & ((!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0)) # 
-- (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2)))) # (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1) & (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1),
	datab => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3),
	datac => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2),
	datad => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0),
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux15~0_combout\);

-- Location: LCCOMB_X44_Y15_N4
\ws2812_ctrl_inst|config_leds_inst|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux15~1_combout\ = (\ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\ & \ws2812_ctrl_inst|config_leds_inst|Mux15~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\,
	datad => \ws2812_ctrl_inst|config_leds_inst|Mux15~0_combout\,
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux15~1_combout\);

-- Location: FF_X44_Y15_N5
\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|config_leds_inst|Mux15~1_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][6]~q\);

-- Location: LCCOMB_X48_Y18_N6
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~33_combout\ = (\reg_ctrl_inst|array_reg[1][0]~q\ & (!\ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\ & (\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][6]~q\ & 
-- !\ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|array_reg[1][0]~q\,
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\,
	datac => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][6]~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~33_combout\);

-- Location: FF_X48_Y18_N7
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~33_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][6]~q\);

-- Location: LCCOMB_X48_Y16_N26
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux16~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux16~8_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & (\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][6]~q\)) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & 
-- ((\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][6]~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][6]~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0),
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux16~8_combout\);

-- Location: LCCOMB_X44_Y15_N28
\ws2812_ctrl_inst|config_leds_inst|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux14~0_combout\ = (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3) & ((\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1) & (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2))) # 
-- (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1) & (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2) & !\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1),
	datab => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3),
	datac => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2),
	datad => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0),
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux14~0_combout\);

-- Location: LCCOMB_X44_Y15_N30
\ws2812_ctrl_inst|config_leds_inst|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux14~1_combout\ = (\ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\ & \ws2812_ctrl_inst|config_leds_inst|Mux14~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\,
	datad => \ws2812_ctrl_inst|config_leds_inst|Mux14~0_combout\,
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux14~1_combout\);

-- Location: FF_X44_Y15_N31
\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|config_leds_inst|Mux14~1_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][7]~q\);

-- Location: LCCOMB_X48_Y15_N0
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~34_combout\ = (\reg_ctrl_inst|array_reg[1][0]~q\ & (\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][7]~q\ & (!\ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\ & 
-- !\ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|array_reg[1][0]~q\,
	datab => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][7]~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~34_combout\);

-- Location: FF_X48_Y15_N1
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~34_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][7]~q\);

-- Location: LCCOMB_X48_Y16_N20
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux16~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux16~12_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & (\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][7]~q\)) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & 
-- ((\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][7]~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][7]~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0),
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux16~12_combout\);

-- Location: LCCOMB_X48_Y16_N10
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux17~0_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & (((\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1))))) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & 
-- ((\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1) & ((\ws2812_ctrl_inst|ws2812_mngt_inst|Mux16~12_combout\))) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1) & (\ws2812_ctrl_inst|ws2812_mngt_inst|Mux16~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux16~8_combout\,
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux16~12_combout\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2),
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1),
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux17~0_combout\);

-- Location: LCCOMB_X48_Y16_N18
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux17~1_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & ((\ws2812_ctrl_inst|ws2812_mngt_inst|Mux17~0_combout\ & (\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][6]~q\)) # 
-- (!\ws2812_ctrl_inst|ws2812_mngt_inst|Mux17~0_combout\ & ((\ws2812_ctrl_inst|ws2812_mngt_inst|Mux16~7_combout\))))) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & (((\ws2812_ctrl_inst|ws2812_mngt_inst|Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][6]~q\,
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2),
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux16~7_combout\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux17~0_combout\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux17~1_combout\);

-- Location: FF_X48_Y16_N19
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux17~1_combout\,
	clrn => \reset_n~input_o\,
	sclr => \ws2812_ctrl_inst|ws2812_mngt_inst|ALT_INV_run_config_s~q\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s\(6));

-- Location: FF_X50_Y17_N5
\ws2812_ctrl_inst|ws2812_inst|led_config_s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	asdata => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s\(6),
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \ws2812_ctrl_inst|ws2812_inst|p_inputs_latch~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_inst|led_config_s\(6));

-- Location: LCCOMB_X44_Y16_N20
\ws2812_ctrl_inst|config_leds_inst|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux16~0_combout\ = (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3) & (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1) $ (((\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2) & 
-- \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1),
	datab => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3),
	datac => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2),
	datad => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0),
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux16~0_combout\);

-- Location: LCCOMB_X44_Y16_N2
\ws2812_ctrl_inst|config_leds_inst|Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux16~1_combout\ = (\ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\ & \ws2812_ctrl_inst|config_leds_inst|Mux16~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\,
	datad => \ws2812_ctrl_inst|config_leds_inst|Mux16~0_combout\,
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux16~1_combout\);

-- Location: FF_X44_Y16_N3
\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|config_leds_inst|Mux16~1_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][5]~q\);

-- Location: LCCOMB_X45_Y16_N24
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~29_combout\ = (\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][5]~q\ & (!\ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\ & (\reg_ctrl_inst|array_reg[1][0]~q\ & 
-- !\ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][5]~q\,
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\,
	datac => \reg_ctrl_inst|array_reg[1][0]~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~29_combout\);

-- Location: FF_X45_Y16_N25
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~29_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][5]~q\);

-- Location: LCCOMB_X49_Y16_N14
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux21~0_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & (((\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][5]~q\)) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2)))) # 
-- (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & ((\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0),
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2),
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][5]~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][7]~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux21~0_combout\);

-- Location: LCCOMB_X46_Y17_N6
\ws2812_ctrl_inst|config_leds_inst|Mux57~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux57~0_combout\ = (!\ws2812_ctrl_inst|config_leds_inst|Mux62~0_combout\ & \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ws2812_ctrl_inst|config_leds_inst|Mux62~0_combout\,
	datad => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1),
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux57~0_combout\);

-- Location: FF_X46_Y17_N7
\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|config_leds_inst|Mux57~0_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[5][3]~q\);

-- Location: LCCOMB_X48_Y18_N26
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~32_combout\ = (\reg_ctrl_inst|array_reg[1][0]~q\ & (!\ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\ & (\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[5][3]~q\ & 
-- !\ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_ctrl_inst|array_reg[1][0]~q\,
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\,
	datac => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[5][3]~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~32_combout\);

-- Location: FF_X48_Y18_N27
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~32_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[5][3]~q\);

-- Location: LCCOMB_X48_Y18_N28
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux16~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux16~4_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & ((\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[5][3]~q\))) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & 
-- (\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][6]~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[5][3]~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0),
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux16~4_combout\);

-- Location: LCCOMB_X49_Y16_N24
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux21~1_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1) & ((\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & ((\ws2812_ctrl_inst|ws2812_mngt_inst|Mux16~4_combout\))) # 
-- (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & (!\ws2812_ctrl_inst|ws2812_mngt_inst|Mux21~0_combout\)))) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1) & (((\ws2812_ctrl_inst|ws2812_mngt_inst|Mux21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2),
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1),
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux21~0_combout\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux16~4_combout\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux21~1_combout\);

-- Location: LCCOMB_X48_Y16_N4
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux21~2_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & (((\ws2812_ctrl_inst|ws2812_mngt_inst|Mux21~1_combout\)))) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & 
-- ((\ws2812_ctrl_inst|ws2812_mngt_inst|Mux21~1_combout\ & (\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][6]~q\)) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|Mux21~1_combout\ & ((\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][6]~q\,
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][7]~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2),
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux21~1_combout\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux21~2_combout\);

-- Location: FF_X48_Y16_N5
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux21~2_combout\,
	clrn => \reset_n~input_o\,
	sclr => \ws2812_ctrl_inst|ws2812_mngt_inst|ALT_INV_run_config_s~q\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s\(2));

-- Location: LCCOMB_X50_Y17_N12
\ws2812_ctrl_inst|ws2812_inst|led_config_s[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_inst|led_config_s[2]~feeder_combout\ = \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s\(2),
	combout => \ws2812_ctrl_inst|ws2812_inst|led_config_s[2]~feeder_combout\);

-- Location: FF_X50_Y17_N13
\ws2812_ctrl_inst|ws2812_inst|led_config_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_inst|led_config_s[2]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_inst|p_inputs_latch~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_inst|led_config_s\(2));

-- Location: LCCOMB_X43_Y16_N2
\ws2812_ctrl_inst|config_leds_inst|Mux58~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux58~0_combout\ = (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3)) # ((\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1)) # ((\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0) & 
-- \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0),
	datab => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3),
	datac => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2),
	datad => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1),
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux58~0_combout\);

-- Location: LCCOMB_X43_Y16_N16
\ws2812_ctrl_inst|config_leds_inst|Mux58~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux58~1_combout\ = (\ws2812_ctrl_inst|config_leds_inst|Mux58~0_combout\) # (!\ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\,
	datad => \ws2812_ctrl_inst|config_leds_inst|Mux58~0_combout\,
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux58~1_combout\);

-- Location: FF_X43_Y16_N17
\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|config_leds_inst|Mux58~1_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[5][0]~q\);

-- Location: LCCOMB_X46_Y18_N12
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~40_combout\ = (\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[5][0]~q\ & (!\ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\ & (\reg_ctrl_inst|array_reg[1][0]~q\ & 
-- !\ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[5][0]~q\,
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\,
	datac => \reg_ctrl_inst|array_reg[1][0]~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~40_combout\);

-- Location: FF_X46_Y18_N13
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~40_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[5][0]~q\);

-- Location: LCCOMB_X46_Y18_N14
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux19~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux19~3_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & (\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[5][0]~q\)) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & 
-- ((\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[3][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[5][0]~q\,
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[3][0]~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0),
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux19~3_combout\);

-- Location: LCCOMB_X45_Y15_N24
\ws2812_ctrl_inst|config_leds_inst|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux19~0_combout\ = (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3)) # ((\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1) & ((\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0)) # 
-- (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3),
	datab => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0),
	datac => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1),
	datad => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2),
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux19~0_combout\);

-- Location: LCCOMB_X45_Y15_N4
\ws2812_ctrl_inst|config_leds_inst|Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux19~1_combout\ = (\ws2812_ctrl_inst|config_leds_inst|Mux19~0_combout\) # (!\ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\,
	datad => \ws2812_ctrl_inst|config_leds_inst|Mux19~0_combout\,
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux19~1_combout\);

-- Location: FF_X45_Y15_N5
\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|config_leds_inst|Mux19~1_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][0]~q\);

-- Location: LCCOMB_X46_Y18_N2
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~42_combout\ = (!\ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\ & (\reg_ctrl_inst|array_reg[1][0]~q\ & (!\ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\ & 
-- \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\,
	datab => \reg_ctrl_inst|array_reg[1][0]~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\,
	datad => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][0]~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~42_combout\);

-- Location: FF_X46_Y18_N3
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~42_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][0]~q\);

-- Location: LCCOMB_X46_Y18_N8
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux19~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux19~5_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & ((\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][0]~q\))) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & 
-- (\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][0]~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][0]~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0),
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux19~5_combout\);

-- Location: LCCOMB_X44_Y19_N6
\ws2812_ctrl_inst|config_leds_inst|Mux45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux45~0_combout\ = (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3)) # ((\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0) & (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2))) # 
-- (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0) & ((\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3),
	datab => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2),
	datac => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1),
	datad => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0),
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux45~0_combout\);

-- Location: LCCOMB_X44_Y19_N30
\ws2812_ctrl_inst|config_leds_inst|Mux45~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux45~1_combout\ = (\ws2812_ctrl_inst|config_leds_inst|Mux45~0_combout\) # (!\ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\,
	datad => \ws2812_ctrl_inst|config_leds_inst|Mux45~0_combout\,
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux45~1_combout\);

-- Location: FF_X44_Y19_N31
\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|config_leds_inst|Mux45~1_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[2][0]~q\);

-- Location: LCCOMB_X47_Y18_N0
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~41_combout\ = (!\ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\ & (\reg_ctrl_inst|array_reg[1][0]~q\ & (!\ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\ & 
-- \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[2][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\,
	datab => \reg_ctrl_inst|array_reg[1][0]~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\,
	datad => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[2][0]~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~41_combout\);

-- Location: FF_X47_Y18_N1
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~41_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][0]~q\);

-- Location: LCCOMB_X46_Y18_N20
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux19~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux19~4_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & (\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[3][0]~q\)) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & 
-- ((\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[3][0]~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][0]~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0),
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux19~4_combout\);

-- Location: LCCOMB_X46_Y18_N10
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux23~0_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1))) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & 
-- ((\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1) & ((\ws2812_ctrl_inst|ws2812_mngt_inst|Mux19~4_combout\))) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1) & (\ws2812_ctrl_inst|ws2812_mngt_inst|Mux19~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2),
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1),
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux19~5_combout\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux19~4_combout\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux23~0_combout\);

-- Location: LCCOMB_X46_Y18_N30
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux23~1_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & ((\ws2812_ctrl_inst|ws2812_mngt_inst|Mux23~0_combout\ & (\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][4]~q\)) # 
-- (!\ws2812_ctrl_inst|ws2812_mngt_inst|Mux23~0_combout\ & ((\ws2812_ctrl_inst|ws2812_mngt_inst|Mux19~3_combout\))))) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & (((\ws2812_ctrl_inst|ws2812_mngt_inst|Mux23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2),
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][4]~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux19~3_combout\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux23~0_combout\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux23~1_combout\);

-- Location: FF_X46_Y18_N31
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux23~1_combout\,
	clrn => \reset_n~input_o\,
	sclr => \ws2812_ctrl_inst|ws2812_mngt_inst|ALT_INV_run_config_s~q\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s\(0));

-- Location: FF_X50_Y17_N7
\ws2812_ctrl_inst|ws2812_inst|led_config_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	asdata => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s\(0),
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \ws2812_ctrl_inst|ws2812_inst|p_inputs_latch~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_inst|led_config_s\(0));

-- Location: LCCOMB_X50_Y17_N6
\ws2812_ctrl_inst|ws2812_inst|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_inst|Mux0~4_combout\ = (\ws2812_ctrl_inst|ws2812_inst|cnt_24\(2) & ((\ws2812_ctrl_inst|ws2812_inst|cnt_24\(1) & ((\ws2812_ctrl_inst|ws2812_inst|led_config_s\(0)))) # (!\ws2812_ctrl_inst|ws2812_inst|cnt_24\(1) & 
-- (\ws2812_ctrl_inst|ws2812_inst|led_config_s\(2))))) # (!\ws2812_ctrl_inst|ws2812_inst|cnt_24\(2) & (((!\ws2812_ctrl_inst|ws2812_inst|cnt_24\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_inst|led_config_s\(2),
	datab => \ws2812_ctrl_inst|ws2812_inst|cnt_24\(2),
	datac => \ws2812_ctrl_inst|ws2812_inst|led_config_s\(0),
	datad => \ws2812_ctrl_inst|ws2812_inst|cnt_24\(1),
	combout => \ws2812_ctrl_inst|ws2812_inst|Mux0~4_combout\);

-- Location: LCCOMB_X50_Y17_N4
\ws2812_ctrl_inst|ws2812_inst|Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_inst|Mux0~5_combout\ = (\ws2812_ctrl_inst|ws2812_inst|cnt_24\(2) & (((\ws2812_ctrl_inst|ws2812_inst|Mux0~4_combout\)))) # (!\ws2812_ctrl_inst|ws2812_inst|cnt_24\(2) & ((\ws2812_ctrl_inst|ws2812_inst|Mux0~4_combout\ & 
-- ((\ws2812_ctrl_inst|ws2812_inst|led_config_s\(6)))) # (!\ws2812_ctrl_inst|ws2812_inst|Mux0~4_combout\ & (\ws2812_ctrl_inst|ws2812_inst|led_config_s\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_inst|led_config_s\(4),
	datab => \ws2812_ctrl_inst|ws2812_inst|cnt_24\(2),
	datac => \ws2812_ctrl_inst|ws2812_inst|led_config_s\(6),
	datad => \ws2812_ctrl_inst|ws2812_inst|Mux0~4_combout\,
	combout => \ws2812_ctrl_inst|ws2812_inst|Mux0~5_combout\);

-- Location: LCCOMB_X48_Y16_N16
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux16~3_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & (\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][6]~q\)) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & 
-- ((\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[5][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][6]~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[5][3]~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0),
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux16~3_combout\);

-- Location: LCCOMB_X45_Y16_N22
\ws2812_ctrl_inst|config_leds_inst|Mux33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux33~0_combout\ = (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3) & ((\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0) & (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2) & 
-- !\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1))) # (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0) & ((\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2),
	datab => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3),
	datac => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(0),
	datad => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1),
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux33~0_combout\);

-- Location: LCCOMB_X45_Y16_N16
\ws2812_ctrl_inst|config_leds_inst|Mux33~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux33~1_combout\ = (\ws2812_ctrl_inst|config_leds_inst|Mux33~0_combout\ & \ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|Mux33~0_combout\,
	datac => \ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\,
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux33~1_combout\);

-- Location: FF_X45_Y16_N17
\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|config_leds_inst|Mux33~1_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[1][5]~q\);

-- Location: LCCOMB_X45_Y16_N18
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~28_combout\ = (!\ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\ & (!\ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\ & (\reg_ctrl_inst|array_reg[1][0]~q\ & 
-- \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[1][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\,
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\,
	datac => \reg_ctrl_inst|array_reg[1][0]~q\,
	datad => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[1][5]~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~28_combout\);

-- Location: FF_X45_Y16_N19
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~28_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][5]~q\);

-- Location: LCCOMB_X49_Y16_N22
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux16~0_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & ((\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][7]~q\))) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & 
-- (\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][5]~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0),
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][7]~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux16~0_combout\);

-- Location: LCCOMB_X46_Y16_N30
\ws2812_ctrl_inst|config_leds_inst|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|config_leds_inst|Mux18~0_combout\ = (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3) & (!\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2) & (\ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1) & 
-- \ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(3),
	datab => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(2),
	datac => \ws2812_ctrl_inst|config_leds_inst|sel_config_i_ss\(1),
	datad => \ws2812_ctrl_inst|config_leds_inst|Mux0~0_combout\,
	combout => \ws2812_ctrl_inst|config_leds_inst|Mux18~0_combout\);

-- Location: FF_X46_Y16_N31
\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|config_leds_inst|Mux18~0_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][1]~q\);

-- Location: LCCOMB_X45_Y16_N14
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~30_combout\ = (\ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][1]~q\ & (!\ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\ & (\reg_ctrl_inst|array_reg[1][0]~q\ & 
-- !\ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|config_leds_inst|config_led_o_s[0][1]~q\,
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|run_config_s~q\,
	datac => \reg_ctrl_inst|array_reg[1][0]~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|start_leds_i_s~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~30_combout\);

-- Location: FF_X45_Y16_N15
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s~30_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][1]~q\);

-- Location: LCCOMB_X49_Y16_N12
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux16~1_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & (\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][5]~q\)) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & 
-- ((\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0),
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][5]~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][1]~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux16~1_combout\);

-- Location: LCCOMB_X49_Y16_N18
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux16~2_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & ((\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][5]~q\))) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & 
-- (\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0),
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][5]~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][5]~q\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux16~2_combout\);

-- Location: LCCOMB_X49_Y16_N0
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux18~0_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & (((\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1))))) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & 
-- ((\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1) & (\ws2812_ctrl_inst|ws2812_mngt_inst|Mux16~1_combout\)) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1) & ((\ws2812_ctrl_inst|ws2812_mngt_inst|Mux16~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux16~1_combout\,
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2),
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1),
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux16~2_combout\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux18~0_combout\);

-- Location: LCCOMB_X49_Y16_N8
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux18~1_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & ((\ws2812_ctrl_inst|ws2812_mngt_inst|Mux18~0_combout\ & (\ws2812_ctrl_inst|ws2812_mngt_inst|Mux16~3_combout\)) # 
-- (!\ws2812_ctrl_inst|ws2812_mngt_inst|Mux18~0_combout\ & ((\ws2812_ctrl_inst|ws2812_mngt_inst|Mux16~0_combout\))))) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & (((\ws2812_ctrl_inst|ws2812_mngt_inst|Mux18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux16~3_combout\,
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2),
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux16~0_combout\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux18~0_combout\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux18~1_combout\);

-- Location: FF_X49_Y16_N9
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux18~1_combout\,
	clrn => \reset_n~input_o\,
	sclr => \ws2812_ctrl_inst|ws2812_mngt_inst|ALT_INV_run_config_s~q\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s\(5));

-- Location: LCCOMB_X51_Y17_N20
\ws2812_ctrl_inst|ws2812_inst|led_config_s[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_inst|led_config_s[5]~feeder_combout\ = \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s\(5),
	combout => \ws2812_ctrl_inst|ws2812_inst|led_config_s[5]~feeder_combout\);

-- Location: FF_X51_Y17_N21
\ws2812_ctrl_inst|ws2812_inst|led_config_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_inst|led_config_s[5]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_inst|p_inputs_latch~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_inst|led_config_s\(5));

-- Location: LCCOMB_X48_Y16_N22
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux16~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux16~10_combout\ = (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1) & ((\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & ((\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][7]~q\))) # 
-- (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & (\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1),
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][7]~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][7]~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0),
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux16~10_combout\);

-- Location: LCCOMB_X48_Y16_N24
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux16~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux16~9_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][6]~q\ & \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][6]~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1),
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux16~9_combout\);

-- Location: LCCOMB_X48_Y16_N14
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux16~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux16~11_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & (((\ws2812_ctrl_inst|ws2812_mngt_inst|Mux16~8_combout\)))) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & 
-- ((\ws2812_ctrl_inst|ws2812_mngt_inst|Mux16~10_combout\) # ((\ws2812_ctrl_inst|ws2812_mngt_inst|Mux16~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux16~10_combout\,
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2),
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux16~8_combout\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux16~9_combout\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux16~11_combout\);

-- Location: FF_X48_Y16_N15
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux16~11_combout\,
	clrn => \reset_n~input_o\,
	sclr => \ws2812_ctrl_inst|ws2812_mngt_inst|ALT_INV_run_config_s~q\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s\(7));

-- Location: FF_X50_Y17_N21
\ws2812_ctrl_inst|ws2812_inst|led_config_s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	asdata => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s\(7),
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \ws2812_ctrl_inst|ws2812_inst|p_inputs_latch~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_inst|led_config_s\(7));

-- Location: LCCOMB_X48_Y16_N2
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux16~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux16~6_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & ((\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[5][3]~q\))) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & 
-- (\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][7]~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[5][3]~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0),
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux16~6_combout\);

-- Location: LCCOMB_X48_Y16_N6
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux16~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux16~5_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & (\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][7]~q\)) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & 
-- ((\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][7]~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][6]~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0),
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux16~5_combout\);

-- Location: LCCOMB_X48_Y16_N28
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux20~0_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1) & (((\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2)) # (\ws2812_ctrl_inst|ws2812_mngt_inst|Mux16~5_combout\)))) # 
-- (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1) & (\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][7]~q\ & (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1),
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][7]~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2),
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux16~5_combout\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux20~0_combout\);

-- Location: LCCOMB_X49_Y16_N2
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux20~1_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & ((\ws2812_ctrl_inst|ws2812_mngt_inst|Mux20~0_combout\ & (\ws2812_ctrl_inst|ws2812_mngt_inst|Mux16~6_combout\)) # 
-- (!\ws2812_ctrl_inst|ws2812_mngt_inst|Mux20~0_combout\ & ((\ws2812_ctrl_inst|ws2812_mngt_inst|Mux16~4_combout\))))) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & (((\ws2812_ctrl_inst|ws2812_mngt_inst|Mux20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux16~6_combout\,
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux16~4_combout\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2),
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux20~0_combout\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux20~1_combout\);

-- Location: FF_X49_Y16_N3
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux20~1_combout\,
	clrn => \reset_n~input_o\,
	sclr => \ws2812_ctrl_inst|ws2812_mngt_inst|ALT_INV_run_config_s~q\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s\(3));

-- Location: LCCOMB_X50_Y17_N8
\ws2812_ctrl_inst|ws2812_inst|led_config_s[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_inst|led_config_s[3]~feeder_combout\ = \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s\(3),
	combout => \ws2812_ctrl_inst|ws2812_inst|led_config_s[3]~feeder_combout\);

-- Location: FF_X50_Y17_N9
\ws2812_ctrl_inst|ws2812_inst|led_config_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_inst|led_config_s[3]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_inst|p_inputs_latch~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_inst|led_config_s\(3));

-- Location: LCCOMB_X48_Y16_N30
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux22~0_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & ((\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & (\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][6]~q\)) # 
-- (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & ((\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][6]~q\,
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][7]~q\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2),
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0),
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux22~0_combout\);

-- Location: LCCOMB_X48_Y16_N0
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux22~1_combout\ = (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2) & ((\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & ((\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][5]~q\))) # 
-- (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0) & (\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[0][1]~q\,
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(2),
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_array_s[1][5]~q\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(0),
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux22~1_combout\);

-- Location: LCCOMB_X48_Y16_N12
\ws2812_ctrl_inst|ws2812_mngt_inst|Mux22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_mngt_inst|Mux22~2_combout\ = (\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1) & (\ws2812_ctrl_inst|ws2812_mngt_inst|Mux16~7_combout\)) # (!\ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1) & 
-- (((\ws2812_ctrl_inst|ws2812_mngt_inst|Mux22~0_combout\) # (\ws2812_ctrl_inst|ws2812_mngt_inst|Mux22~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_mngt_inst|cnt_led_s\(1),
	datab => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux16~7_combout\,
	datac => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux22~0_combout\,
	datad => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux22~1_combout\,
	combout => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux22~2_combout\);

-- Location: FF_X48_Y16_N13
\ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_mngt_inst|Mux22~2_combout\,
	clrn => \reset_n~input_o\,
	sclr => \ws2812_ctrl_inst|ws2812_mngt_inst|ALT_INV_run_config_s~q\,
	ena => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s\(1));

-- Location: FF_X50_Y17_N3
\ws2812_ctrl_inst|ws2812_inst|led_config_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	asdata => \ws2812_ctrl_inst|ws2812_mngt_inst|led_config_o_s\(1),
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \ws2812_ctrl_inst|ws2812_inst|p_inputs_latch~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_inst|led_config_s\(1));

-- Location: LCCOMB_X50_Y17_N2
\ws2812_ctrl_inst|ws2812_inst|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_inst|Mux0~2_combout\ = (\ws2812_ctrl_inst|ws2812_inst|cnt_24\(1) & (((\ws2812_ctrl_inst|ws2812_inst|led_config_s\(1) & \ws2812_ctrl_inst|ws2812_inst|cnt_24\(2))))) # (!\ws2812_ctrl_inst|ws2812_inst|cnt_24\(1) & 
-- ((\ws2812_ctrl_inst|ws2812_inst|led_config_s\(3)) # ((!\ws2812_ctrl_inst|ws2812_inst|cnt_24\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_inst|cnt_24\(1),
	datab => \ws2812_ctrl_inst|ws2812_inst|led_config_s\(3),
	datac => \ws2812_ctrl_inst|ws2812_inst|led_config_s\(1),
	datad => \ws2812_ctrl_inst|ws2812_inst|cnt_24\(2),
	combout => \ws2812_ctrl_inst|ws2812_inst|Mux0~2_combout\);

-- Location: LCCOMB_X50_Y17_N20
\ws2812_ctrl_inst|ws2812_inst|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_inst|Mux0~3_combout\ = (\ws2812_ctrl_inst|ws2812_inst|cnt_24\(2) & (((\ws2812_ctrl_inst|ws2812_inst|Mux0~2_combout\)))) # (!\ws2812_ctrl_inst|ws2812_inst|cnt_24\(2) & ((\ws2812_ctrl_inst|ws2812_inst|Mux0~2_combout\ & 
-- ((\ws2812_ctrl_inst|ws2812_inst|led_config_s\(7)))) # (!\ws2812_ctrl_inst|ws2812_inst|Mux0~2_combout\ & (\ws2812_ctrl_inst|ws2812_inst|led_config_s\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_inst|led_config_s\(5),
	datab => \ws2812_ctrl_inst|ws2812_inst|cnt_24\(2),
	datac => \ws2812_ctrl_inst|ws2812_inst|led_config_s\(7),
	datad => \ws2812_ctrl_inst|ws2812_inst|Mux0~2_combout\,
	combout => \ws2812_ctrl_inst|ws2812_inst|Mux0~3_combout\);

-- Location: LCCOMB_X50_Y17_N18
\ws2812_ctrl_inst|ws2812_inst|Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_inst|Mux0~6_combout\ = (\ws2812_ctrl_inst|ws2812_inst|cnt_24\(3) & (!\ws2812_ctrl_inst|ws2812_inst|cnt_24\(0))) # (!\ws2812_ctrl_inst|ws2812_inst|cnt_24\(3) & ((\ws2812_ctrl_inst|ws2812_inst|cnt_24\(0) & 
-- (\ws2812_ctrl_inst|ws2812_inst|Mux0~5_combout\)) # (!\ws2812_ctrl_inst|ws2812_inst|cnt_24\(0) & ((\ws2812_ctrl_inst|ws2812_inst|Mux0~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_inst|cnt_24\(3),
	datab => \ws2812_ctrl_inst|ws2812_inst|cnt_24\(0),
	datac => \ws2812_ctrl_inst|ws2812_inst|Mux0~5_combout\,
	datad => \ws2812_ctrl_inst|ws2812_inst|Mux0~3_combout\,
	combout => \ws2812_ctrl_inst|ws2812_inst|Mux0~6_combout\);

-- Location: LCCOMB_X50_Y17_N0
\ws2812_ctrl_inst|ws2812_inst|Mux0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_inst|Mux0~9_combout\ = (\ws2812_ctrl_inst|ws2812_inst|cnt_24\(3) & ((\ws2812_ctrl_inst|ws2812_inst|Mux0~6_combout\ & ((\ws2812_ctrl_inst|ws2812_inst|Mux0~8_combout\))) # (!\ws2812_ctrl_inst|ws2812_inst|Mux0~6_combout\ & 
-- (\ws2812_ctrl_inst|ws2812_inst|Mux0~1_combout\)))) # (!\ws2812_ctrl_inst|ws2812_inst|cnt_24\(3) & (((\ws2812_ctrl_inst|ws2812_inst|Mux0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_inst|cnt_24\(3),
	datab => \ws2812_ctrl_inst|ws2812_inst|Mux0~1_combout\,
	datac => \ws2812_ctrl_inst|ws2812_inst|Mux0~8_combout\,
	datad => \ws2812_ctrl_inst|ws2812_inst|Mux0~6_combout\,
	combout => \ws2812_ctrl_inst|ws2812_inst|Mux0~9_combout\);

-- Location: LCCOMB_X50_Y17_N22
\ws2812_ctrl_inst|ws2812_inst|TH_s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_inst|TH_s~0_combout\ = (\ws2812_ctrl_inst|ws2812_inst|start_init_s~q\ & (((\ws2812_ctrl_inst|ws2812_inst|led_config_s\(23))))) # (!\ws2812_ctrl_inst|ws2812_inst|start_init_s~q\ & (\ws2812_ctrl_inst|ws2812_inst|cnt_24\(4) & 
-- ((\ws2812_ctrl_inst|ws2812_inst|Mux0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_inst|cnt_24\(4),
	datab => \ws2812_ctrl_inst|ws2812_inst|start_init_s~q\,
	datac => \ws2812_ctrl_inst|ws2812_inst|led_config_s\(23),
	datad => \ws2812_ctrl_inst|ws2812_inst|Mux0~9_combout\,
	combout => \ws2812_ctrl_inst|ws2812_inst|TH_s~0_combout\);

-- Location: LCCOMB_X49_Y17_N28
\ws2812_ctrl_inst|ws2812_inst|TH_s~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_inst|TH_s~2_combout\ = (\ws2812_ctrl_inst|ws2812_inst|TH_s~0_combout\) # ((!\ws2812_ctrl_inst|ws2812_inst|start_init_s~q\ & (!\ws2812_ctrl_inst|ws2812_inst|cnt_24\(3) & \ws2812_ctrl_inst|ws2812_inst|TH_s~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_inst|start_init_s~q\,
	datab => \ws2812_ctrl_inst|ws2812_inst|cnt_24\(3),
	datac => \ws2812_ctrl_inst|ws2812_inst|TH_s~1_combout\,
	datad => \ws2812_ctrl_inst|ws2812_inst|TH_s~0_combout\,
	combout => \ws2812_ctrl_inst|ws2812_inst|TH_s~2_combout\);

-- Location: LCCOMB_X49_Y17_N24
\ws2812_ctrl_inst|ws2812_inst|TH_s[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_inst|TH_s[4]~5_combout\ = !\ws2812_ctrl_inst|ws2812_inst|TH_s~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ws2812_ctrl_inst|ws2812_inst|TH_s~2_combout\,
	combout => \ws2812_ctrl_inst|ws2812_inst|TH_s[4]~5_combout\);

-- Location: LCCOMB_X49_Y17_N0
\ws2812_ctrl_inst|ws2812_inst|TH_s[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_inst|TH_s[4]~3_combout\ = (\ws2812_ctrl_inst|ws2812_inst|start_init_s~q\) # (!\ws2812_ctrl_inst|ws2812_inst|pwm_done~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ws2812_ctrl_inst|ws2812_inst|start_init_s~q\,
	datad => \ws2812_ctrl_inst|ws2812_inst|pwm_done~q\,
	combout => \ws2812_ctrl_inst|ws2812_inst|TH_s[4]~3_combout\);

-- Location: FF_X49_Y17_N25
\ws2812_ctrl_inst|ws2812_inst|TH_s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_inst|TH_s[4]~5_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_inst|TH_s[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_inst|TH_s\(4));

-- Location: LCCOMB_X49_Y17_N30
\ws2812_ctrl_inst|ws2812_inst|d_out_s~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_inst|d_out_s~1_combout\ = (!\ws2812_ctrl_inst|ws2812_inst|cnt_pwm\(2) & (!\ws2812_ctrl_inst|ws2812_inst|cnt_pwm\(3) & (\ws2812_ctrl_inst|ws2812_inst|TH_s\(4) $ (!\ws2812_ctrl_inst|ws2812_inst|cnt_pwm\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_inst|cnt_pwm\(2),
	datab => \ws2812_ctrl_inst|ws2812_inst|TH_s\(4),
	datac => \ws2812_ctrl_inst|ws2812_inst|cnt_pwm\(3),
	datad => \ws2812_ctrl_inst|ws2812_inst|cnt_pwm\(4),
	combout => \ws2812_ctrl_inst|ws2812_inst|d_out_s~1_combout\);

-- Location: LCCOMB_X48_Y17_N14
\ws2812_ctrl_inst|ws2812_inst|TH_s[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_inst|TH_s[1]~4_combout\ = ((\ws2812_ctrl_inst|ws2812_inst|TH_s\(1)) # (\ws2812_ctrl_inst|ws2812_inst|start_init_s~q\)) # (!\ws2812_ctrl_inst|ws2812_inst|pwm_done~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_inst|pwm_done~q\,
	datac => \ws2812_ctrl_inst|ws2812_inst|TH_s\(1),
	datad => \ws2812_ctrl_inst|ws2812_inst|start_init_s~q\,
	combout => \ws2812_ctrl_inst|ws2812_inst|TH_s[1]~4_combout\);

-- Location: FF_X48_Y17_N15
\ws2812_ctrl_inst|ws2812_inst|TH_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_inst|TH_s[1]~4_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_inst|TH_s\(1));

-- Location: FF_X49_Y17_N29
\ws2812_ctrl_inst|ws2812_inst|TH_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_inst|TH_s~2_combout\,
	clrn => \reset_n~input_o\,
	ena => \ws2812_ctrl_inst|ws2812_inst|TH_s[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_inst|TH_s\(5));

-- Location: LCCOMB_X49_Y17_N22
\ws2812_ctrl_inst|ws2812_inst|d_out_s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_inst|d_out_s~0_combout\ = (\ws2812_ctrl_inst|ws2812_inst|TH_s\(1) & (((\ws2812_ctrl_inst|ws2812_inst|TH_s\(5) & !\ws2812_ctrl_inst|ws2812_inst|cnt_pwm\(0))) # (!\ws2812_ctrl_inst|ws2812_inst|cnt_pwm\(1)))) # 
-- (!\ws2812_ctrl_inst|ws2812_inst|TH_s\(1) & (\ws2812_ctrl_inst|ws2812_inst|TH_s\(5) & (!\ws2812_ctrl_inst|ws2812_inst|cnt_pwm\(0) & !\ws2812_ctrl_inst|ws2812_inst|cnt_pwm\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_inst|TH_s\(1),
	datab => \ws2812_ctrl_inst|ws2812_inst|TH_s\(5),
	datac => \ws2812_ctrl_inst|ws2812_inst|cnt_pwm\(0),
	datad => \ws2812_ctrl_inst|ws2812_inst|cnt_pwm\(1),
	combout => \ws2812_ctrl_inst|ws2812_inst|d_out_s~0_combout\);

-- Location: LCCOMB_X49_Y17_N4
\ws2812_ctrl_inst|ws2812_inst|d_out_s~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_inst|d_out_s~2_combout\ = (\ws2812_ctrl_inst|ws2812_inst|d_out_s~1_combout\ & ((\ws2812_ctrl_inst|ws2812_inst|d_out_s~0_combout\) # ((\ws2812_ctrl_inst|ws2812_inst|TH_s\(4) & !\ws2812_ctrl_inst|ws2812_inst|cnt_pwm\(4))))) # 
-- (!\ws2812_ctrl_inst|ws2812_inst|d_out_s~1_combout\ & (\ws2812_ctrl_inst|ws2812_inst|TH_s\(4) & ((!\ws2812_ctrl_inst|ws2812_inst|cnt_pwm\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_inst|d_out_s~1_combout\,
	datab => \ws2812_ctrl_inst|ws2812_inst|TH_s\(4),
	datac => \ws2812_ctrl_inst|ws2812_inst|d_out_s~0_combout\,
	datad => \ws2812_ctrl_inst|ws2812_inst|cnt_pwm\(4),
	combout => \ws2812_ctrl_inst|ws2812_inst|d_out_s~2_combout\);

-- Location: LCCOMB_X49_Y17_N20
\ws2812_ctrl_inst|ws2812_inst|d_out_s~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_inst|d_out_s~3_combout\ = (\ws2812_ctrl_inst|ws2812_inst|frame_gen~q\ & ((\ws2812_ctrl_inst|ws2812_inst|cnt_pwm\(5) & (\ws2812_ctrl_inst|ws2812_inst|d_out_s~2_combout\ & \ws2812_ctrl_inst|ws2812_inst|TH_s\(5))) # 
-- (!\ws2812_ctrl_inst|ws2812_inst|cnt_pwm\(5) & ((\ws2812_ctrl_inst|ws2812_inst|d_out_s~2_combout\) # (\ws2812_ctrl_inst|ws2812_inst|TH_s\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws2812_ctrl_inst|ws2812_inst|frame_gen~q\,
	datab => \ws2812_ctrl_inst|ws2812_inst|cnt_pwm\(5),
	datac => \ws2812_ctrl_inst|ws2812_inst|d_out_s~2_combout\,
	datad => \ws2812_ctrl_inst|ws2812_inst|TH_s\(5),
	combout => \ws2812_ctrl_inst|ws2812_inst|d_out_s~3_combout\);

-- Location: FF_X49_Y17_N21
\ws2812_ctrl_inst|ws2812_inst|d_out_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_i~inputclkctrl_outclk\,
	d => \ws2812_ctrl_inst|ws2812_inst|d_out_s~3_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws2812_ctrl_inst|ws2812_inst|d_out_s~q\);

-- Location: LCCOMB_X47_Y18_N20
\ws2812_ctrl_inst|ws2812_inst|d_out_o\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws2812_ctrl_inst|ws2812_inst|d_out_o~combout\ = (\ws2812_ctrl_inst|ws2812_inst|frame_done_s~q\ & \ws2812_ctrl_inst|ws2812_inst|d_out_s~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ws2812_ctrl_inst|ws2812_inst|frame_done_s~q\,
	datad => \ws2812_ctrl_inst|ws2812_inst|d_out_s~q\,
	combout => \ws2812_ctrl_inst|ws2812_inst|d_out_o~combout\);

ww_tx_uart_o <= \tx_uart_o~output_o\;

ww_ws2812_data_0_o <= \ws2812_data_0_o~output_o\;

ww_debug_rx_uart_o <= \debug_rx_uart_o~output_o\;

ww_debug_tx_uart_o <= \debug_tx_uart_o~output_o\;
END structure;


