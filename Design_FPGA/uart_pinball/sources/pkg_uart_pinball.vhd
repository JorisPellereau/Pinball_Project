-------------------------------------------------------------------------------
-- Title      : UART Pinball Package
-- Project    : 
-------------------------------------------------------------------------------
-- File       : pkg_uart_pinball.vhd
-- Author     : Pellereau Joris  <pellerj@localhost.localdomain>
-- Company    : 
-- Last update: 2019/08/29
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


end pkg_uart_pinball;
