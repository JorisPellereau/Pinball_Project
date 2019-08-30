-------------------------------------------------------------------------------
-- Title      : UART Pinball Package
-- Project    : 
-------------------------------------------------------------------------------
-- File       : pkg_uart_pinball.vhd
-- Author     : Pellereau Joris  <pellerj@localhost.localdomain>
-- Company    : 
-- Last update: 2019/08/30
-- Platform   : 
-------------------------------------------------------------------------------
-- Description: This is the package for the UART module of the pinball project
-------------------------------------------------------------------------------
-- Revisions  :
-- Date        Version  Author  Description
-- 2019/08/28  1.0      pellerj Created
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

package pkg_uart_pinball is

  -- CONSTANTS
  constant C_RD_BYTE : std_logic_vector(7 downto 0) := x"A0";
                                        -- RD Byte command
  constant C_WR_byte : std_logic_vector(7 downto 0) := x"A1";
                                        -- WR Byte command

  constant C_MAX_ARRAY   : integer := 3;  -- Size of the buffer
  constant C_MAX_TX_BYTE : integer := 3;  -- Number of byte to transmit


  -- COMPONENTS

  component uart_ctrl is

                        generic(
                          stop_bit_number :    integer range 1 to 2 := 1;  -- Stop bit number
                          parity          :    t_parity             := even;  -- Type of the parity
                          baudrate        :    t_baudrate           := b9600;  -- Baudrate
                          data_size       :    integer range 5 to 9 := 8;  -- Size of the data to received
                          polarity        :    std_logic            := '1';  -- Polarity on idle state
                          first_bit       :    t_first_bit          := lsb_first;  -- LSB or MSB first
                          clock_frequency :    integer              := 20000000);  -- Clock frequency [Hz]
                      port (
                        reset_n           : in std_logic;  -- Active Low Asynchronous Reset
                        clock_i           : in std_logic;  -- System clock

                        -- Reg. Bank Controller Interface
                        addr_reg_ok_i    : in  std_logic;  -- Reg in the list
                        reg_data_valid_i : in  std_logic;  -- Data valid from the Reg. bank
                        rdata_reg_i      : in  std_logic_vector(data_size - 1 downto 0);  -- Data to read
                        rcvd_addr_reg_o  : out std_logic_vector(data_size - 1 downto 0);
                        wdata_reg_o      : out std_logic_vector(data_size - 1 downto 0);
                        rw_reg_o         : out std_logic;   -- RW Order
                        start_rw_reg_o   : out std_logic;   -- Start RW operation

                        -- UART PHYSICAL INTERFACE
                        rx_uart_i : in  std_logic;          -- RX UART
                        tx_uart_o : out std_logic);         -- TX UART
  end component;



end pkg_uart_pinball;
