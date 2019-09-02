-------------------------------------------------------------------------------
-- Title      : Top Pinball
-- Project    : 
-------------------------------------------------------------------------------
-- File       : top_pinball.vhd
-- Author     :   <pellereau@D-R81A4E3>
-- Company    : 
-- Created    : 2019-08-30
-- Last update: 2019-09-02
-- Platform   : 
-- Standard   : VHDL'93/02
-------------------------------------------------------------------------------
-- Description: This is the top level module of the pinball project
-------------------------------------------------------------------------------
-- Copyright (c) 2019 
-------------------------------------------------------------------------------
-- Revisions  :
-- Date        Version  Author  Description
-- 2019-08-30  1.0      pellereau       Created
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

library lib_uart;
use lib_uart.pkg_uart.all;
use lib_uart.pkg_uart_pinball.all;

library lib_pinball;
use lib_pinball.pkg_pinball.all;


entity top_pinball is
  port (
    reset_n : in std_logic;             -- Asynchronous active low reset
    clock_i : in std_logic;             -- System clock

    -- UART INTERFACE
    rx_uart_i : in  std_logic;          -- RX UART input
    tx_uart_o : out std_logic;          -- TX UART output

    -- DEBUG PURPUSE
    debug_rx_uart_o : out std_logic;
    debug_tx_uart_o : out std_logic

    );
end entity top_pinball;




architecture arch_top_pinball of top_pinball is

  -- SIGNALS LATCHS
  signal rx_uart_i_s  : std_logic;
  signal rx_uart_i_ss : std_logic;

  -- UART CTRL SIGNALS
  signal addr_reg_ok_s    : std_logic;
  signal reg_data_valid_s : std_logic;
  signal rdata_reg_s      : std_logic_vector(C_data_size - 1 downto 0);
  signal rcvd_addr_reg_s  : std_logic_vector(C_data_size - 1 downto 0);
  signal wdata_reg_s      : std_logic_vector(C_data_size - 1 downto 0);
  signal rw_reg_s         : std_logic;
  signal start_rw_reg_s   : std_logic;
  signal tx_uart_o_s      : std_logic;

  -- REG_CTRL SIGNALS


begin  -- architecture arch_top_pinball

  -- DEBUG PURPOSE
  debug_rx_uart_o <= rx_uart_i;
  debug_tx_uart_o <= tx_uart_o_s;

  -- purpose: This process latches the inputs
  p_latch_inputs : process (clock_i, reset_n) is
  begin  -- process p_latch_inputs
    if reset_n = '0' then               -- asynchronous reset (active low)
      rx_uart_i_s  <= '0';
      rx_uart_i_ss <= '0';
    elsif clock_i'event and clock_i = '1' then  -- rising clock edge
      rx_uart_i_s  <= rx_uart_i;
      rx_uart_i_ss <= rx_uart_i_s;
    end if;
  end process p_latch_inputs;

  -- UART_CTRL inst
  uart_ctrl_inst : uart_ctrl
    generic map (
      stop_bit_number => C_stop_bit_nb,
      parity          => C_parity,
      baudrate        => C_baudrate,
      data_size       => C_data_size,
      polarity        => C_polarity,
      first_bit       => C_first_bit,
      clock_frequency => C_clock_frequency)
    port map (
      reset_n          => reset_n,
      clock_i          => clock_i,
      addr_reg_ok_i    => addr_reg_ok_s,
      reg_data_valid_i => reg_data_valid_s,
      rdata_reg_i      => rdata_reg_s,
      rcvd_addr_reg_o  => rcvd_addr_reg_s,
      wdata_reg_o      => wdata_reg_s,
      rw_reg_o         => rw_reg_s,
      start_rw_reg_o   => start_rw_reg_s,
      rx_uart_i        => rx_uart_i_ss,
      tx_uart_o        => tx_uart_o_s);

  tx_uart_o <= tx_uart_o_s;


  -- REG CTRL BANK INST
  reg_ctrl_inst : reg_ctrl
    generic map (
      data_size => C_data_size)
    port map (
      reset_n         => reset_n,
      clock_i         => clock_i,
      rcvd_addr_reg_i => rcvd_addr_reg_s,
      wdata_reg_i     => wdata_reg_s,
      rw_reg_i        => rw_reg_s,
      start_rw_i      => start_rw_reg_s,
      data_valid_o    => reg_data_valid_s,
      reg_addr_ok_o   => addr_reg_ok_s,
      rdata_reg_o     => rdata_reg_s);


end architecture arch_top_pinball;
