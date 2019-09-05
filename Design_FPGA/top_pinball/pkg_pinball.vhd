-------------------------------------------------------------------------------
-- Title      : Pinball Package
-- Project    : 
-------------------------------------------------------------------------------
-- File       : pkg_pinball.vhd
-- Author     :   <pellereau@D-R81A4E3>
-- Company    : 
-- Created    : 2019-08-30
-- Last update: 2019-09-05
-- Platform   : 
-- Standard   : VHDL'93/02
-------------------------------------------------------------------------------
-- Description: This is the package for the pinball project
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

package pkg_pinball is


  -- == CONSTANTS ==
  -- UART CTRL Config
  constant C_stop_bit_nb     : integer              := 1;    -- Stop_bit_nb
  constant C_parity          : t_parity             := none;      -- Parity
  constant C_baudrate        : t_baudrate           := b9600;     -- Baudrate
  constant C_data_size       : integer range 5 to 9 := 8;    -- Data zize
  constant C_polarity        : std_logic            := '1';  -- High polarity
  constant C_first_bit       : t_first_bit          := lsb_first;  -- LSB First
  constant C_clock_frequency : integer              := 50000000;  -- Clock freq



  -- == COMPONENTS ==
  component reg_ctrl is

    generic (
      data_size : integer range 5 to 9 := 8);  -- Size of the data

    port (
      reset_n : in std_logic;           -- Active Low Asynchronous Reset
      clock_i : in std_logic;           -- System clock

      -- Addr Reg to RW from the UART command
      rcvd_addr_reg_i : in  std_logic_vector(data_size - 1 downto 0);
      -- Write data for the Write command
      wdata_reg_i     : in  std_logic_vector(data_size - 1 downto 0);
      -- RW command
      rw_reg_i        : in  std_logic;
      -- Start the RW command
      start_rw_i      : in  std_logic;
      -- Data valid
      data_valid_o    : out std_logic;
      -- Reg addr present in the list
      reg_addr_ok_o   : out std_logic;
      -- Read data from the correct Addr reg
      rdata_reg_o     : out std_logic_vector(data_size - 1 downto 0)


      -- REGISTERS
      reg_sel_config_ws2812_led0_o : out std_logic_vector(data_size - 1 downto 0);
      reg_cmd_ws2812_led0_o        : out std_logic_vector(data_size - 1 downto 0)
      );
  end component;

end package pkg_pinball;
