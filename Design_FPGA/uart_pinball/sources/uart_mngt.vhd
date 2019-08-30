-------------------------------------------------------------------------------
-- Title      : Management of the UART communication
-- Project    : 
-------------------------------------------------------------------------------
-- File       : uart_mngt.vhd
-- Author     :   <JorisPC@JORISP>
-- Company    : 
-- Created    : 2019-08-21
-- Last update: 2019/08/30
-- Platform   : 
-- Standard   : VHDL'93/02
-------------------------------------------------------------------------------
-- Description: This file manages the comunication of the UART
-------------------------------------------------------------------------------
-- Copyright (c) 2019 
-------------------------------------------------------------------------------
-- Revisions  :
-- Date        Version  Author  Description
-- 2019-08-21  1.0      JorisPC Created
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

library lib_uart;
use lib_uart.pkg_uart.all;
use lib_uart.pkg_uart_pinball.all;


entity uart_mngt is

  generic(
    data_size : integer range 5 to 9 := 8);

  port (
    reset_n : in std_logic;             -- Active low Asynchronous Reset
    clock_i : in std_logic;             -- System Clock

    -- Reg. Bank Controller Interface
    addr_reg_ok_i    : in  std_logic;   -- Reg in the list
    reg_data_valid_i : in  std_logic;   -- Data valid from the Reg. bank
    rdata_reg_i      : in  std_logic_vector(data_size - 1 downto 0);  -- Data to read
    rcvd_addr_reg_o  : out std_logic_vector(data_size - 1 downto 0);
    wdata_reg_o      : out std_logic_vector(data_size - 1 downto 0);
    rw_reg_o         : out std_logic;   -- RW Order
    start_rw_reg_o   : out std_logic;   -- Start RW operation

    -- RX uart interface
    rx_data_i     : in std_logic_vector(data_size - 1 downto 0);  -- Data from RX uart
    rx_done_i     : in std_logic;       -- Data received
    parity_rcvd_i : in std_logic;       -- Parity from the RX uart

    -- TX uart interface
    tx_done_i  : in  std_logic;         -- Tx uart done
    start_tx_o : out std_logic;         -- Start a TX uart
    tx_data_o  : out std_logic_vector(data_size - 1 downto 0));  -- Data to transmit

end entity uart_mngt;

architecture arch_uart_mngt of uart_mngt is

  -- NEW TYPES
  type t_byte_array is array (0 to C_MAX_ARRAY - 1) of std_logic_vector(data_size - 1 downto 0);  -- Type for the array

  -- "KO!" resp in ASCII
  constant C_KO_RESP    : t_byte_array := (0 => x"4B", 1 => x"4F", 2 => x"21", others => x"00");
  constant C_OK_WR_RESP : t_byte_array := (0 => x"4F", 1 => x"4B", 2 => x"21", others => x"00");
  constant C_OK_RD_RESP : t_byte_array := (0 => x"4F", 1 => x"4B", others => x"00");

  -- INTERNAL SIGNALS
  signal cnt_byte_rx : integer range 0 to C_MAX_ARRAY;  -- Counts the byte received
  signal byte_array  : t_byte_array;    -- Byte array

  signal cnt_byte_tx : integer range 0 to C_MAX_TX_BYTE;  -- Counts the bytes to send

  signal rx_done_i_r_edge : std_logic;  -- R edge of rx_done_i
  signal rx_done_i_s      : std_logic;  -- Old rx_done_i

  signal tx_done_i_r_edge : std_logic;  -- R edge of tx_done_i
  signal tx_done_i_s      : std_logic;  -- Old tx_done_i


  signal rw_cmd_s        : std_logic;   -- RW command from 1st byte cmd
  -- @Reg rcvd
  signal rcvd_addr_reg_s : std_logic_vector(data_size - 1 downto 0);
  -- Wdata to write (3rd byte)
  signal wdata_reg_s     : std_logic_vector(data_size - 1 downto 0);
  signal start_rw_reg_s  : std_logic;   -- Start the RW command to the Reg Bank

  -- Indicates that we have to send an UART resp.
  signal send_ko_resp_s : std_logic;

  signal cmd_byte_error_s : std_logic;  -- Error on the cmd byte (1st byte)
  signal start_parse_s    : std_logic;  -- UART Buffer full

  signal send_resp_s : std_logic;       -- Ok to send the UART resp

  signal reg_data_valid_s      : std_logic;  -- Old reg_data_valid
  signal reg_data_valid_r_edge : std_logic;  -- Rising edge of data valid

  signal uart_cmd_ok_s    : std_logic;  -- Good command received
  signal uart_cmd_ko_s    : std_logic;  -- Bad command received
  signal uart_resp_done_s : std_logic;  -- Resp Send

  signal start_tx_o_s : std_logic;      -- Start tx
  signal tx_data_o_s  : std_logic_vector(data_size - 1 downto 0);  -- Data to transmit

  signal raz_cmd_ok : std_logic;        -- Raz cmd_ok

  -- Data from reg bank
  signal rdata_reg_s : std_logic_vector(data_size - 1 downto 0);

  signal parse_done_s : std_logic;      -- Parse terminated

begin  -- architecture arch_uart_mngt


  -- purpose: This process manages the R edge of the inputs 
  p_r_edge_mng : process (clock_i, reset_n) is
  begin  -- process p_r_edge_mng
    if reset_n = '0' then               -- asynchronous reset (active low)
      rx_done_i_s       <= '0';
      tx_done_i_s       <= '0';
      reg_data_valid_s  <= '0';
    elsif clock_i'event and clock_i = '1' then  -- rising clock edge
      rx_done_i_s       <= rx_done_i;
      tx_done_i_s       <= tx_done_i;
      reg_data_valid_s  <= reg_data_valid_i;
    end if;
  end process p_r_edge_mng;
  rx_done_i_r_edge      <= rx_done_i and not rx_done_i_s;
  tx_done_i_r_edge      <= tx_done_i and not tx_done_i_s;
  reg_data_valid_r_edge <= reg_data_valid_i and not reg_data_valid_s;


  -- purpose: This process store the data from the RX UART and inc. the counter 
  p_rx_data_mng : process (clock_i, reset_n) is
  begin  -- process p_rx_data_mng
    if reset_n = '0' then               -- asynchronous reset (active low)
      cnt_byte_rx   <= 0;
      byte_array    <= (others => (others => '0'));
      uart_cmd_ok_s <= '0';
      uart_cmd_ko_s <= '0';
      raz_cmd_ok    <= '0';

      rw_cmd_s         <= '0';
      rcvd_addr_reg_s  <= (others => '0');
      wdata_reg_s      <= (others => '0');
      cmd_byte_error_s <= '0';
      start_parse_s    <= '0';

    elsif clock_i'event and clock_i = '1' then  -- rising clock edge

      -- Store and Inc on RX_done REdge
      if(rx_done_i_r_edge = '1') then   -- and uart_cmd_ok_s = '0') then
        if(cnt_byte_rx < C_MAX_ARRAY) then
          byte_array(cnt_byte_rx) <= rx_data_i;  -- Store the data
          cnt_byte_rx             <= cnt_byte_rx + 1;  -- Inc cnt      
        end if;
      end if;

      -- Number of byte in the buffer reach
      if(cnt_byte_rx = C_MAX_ARRAY) then

        -- Check the first byte
        if(byte_array(0) = C_RD_BYTE) then
          rw_cmd_s         <= '1';
          cmd_byte_error_s <= '0';
        elsif(byte_array(0) = C_WR_BYTE) then
          rw_cmd_s         <= '0';
          cmd_byte_error_s <= '0';
        else
          cmd_byte_error_s <= '1';
        end if;

        -- Save the 2nd byte
        rcvd_addr_reg_s <= byte_array(1);

        -- Save the 3rd byte
        wdata_reg_s <= byte_array(2);

        start_parse_s <= '1';           -- Buffer full, parse data


      end if;

      if(parse_done_s = '1') then
        start_parse_s <= '0';
      end if;

      if(uart_resp_done_s = '1') then

        cnt_byte_rx   <= 0;
        byte_array    <= (others => (others => '0'));
        uart_cmd_ok_s <= '0';
        uart_cmd_ko_s <= '0';
        raz_cmd_ok    <= '0';

        rw_cmd_s         <= '0';
        rcvd_addr_reg_s  <= (others => '0');
        wdata_reg_s      <= (others => '0');
        cmd_byte_error_s <= '0';

        start_parse_s <= '0';

      end if;

    end if;
  end process p_rx_data_mng;


  -- purpose: This process manages the inputs of the Reg. Bank
  -- And send command to the p_tx_mng process
  p_reg_ban_intf_mng : process (clock_i, reset_n)
  begin  -- process p_reg_ban_intf_mng
    if reset_n = '0' then               -- asynchronous reset (active low)
      start_rw_reg_s <= '0';
      send_ko_resp_s <= '0';
      rdata_reg_s    <= (others => '0');
      send_resp_s    <= '0';
      parse_done_s   <= '0';
    elsif clock_i'event and clock_i = '1' then  -- rising clock edge

      -- If the UART buffer is full we parse the data
      if(start_parse_s = '1' and parse_done_s = '0') then


        if(cmd_byte_error_s = '1') then
          start_rw_reg_s   <= '0';
          send_ko_resp_s   <= '1';
          parse_done_s     <= '1';
        elsif(reg_data_valid_r_edge = '1') then
          if(addr_reg_ok_i = '0') then
            start_rw_reg_s <= '0';
            send_ko_resp_s <= '1';
            parse_done_s   <= '1';
          else
            rdata_reg_s    <= rdata_reg_i;  -- Save data from Reg bank
            parse_done_s   <= '1';
          end if;
        else
          start_rw_reg_s   <= '1';
        end if;


      elsif(start_parse_s = '0') then

        start_rw_reg_s <= '0';
-- send_ko_resp_s <= '0';
        send_resp_s    <= '0';
      end if;

      if(uart_resp_done_s = '1') then
        send_resp_s    <= '0';
        parse_done_s   <= '0';          -- RAZ info
        send_ko_resp_s <= '0';
      elsif(parse_done_s = '1') then
        send_resp_s    <= '1';
      end if;


    end if;
  end process p_reg_ban_intf_mng;

  start_rw_reg_o  <= start_rw_reg_s;
  rcvd_addr_reg_o <= rcvd_addr_reg_s;
  wdata_reg_o     <= wdata_reg_s;
  rw_reg_o        <= rw_cmd_s;

  -- purpose: This process manages the TX UART responses
  p_tx_mng : process (clock_i, reset_n) is
  begin  -- process p_tx_mng
    if reset_n = '0' then               -- asynchronous reset (active low)
      uart_resp_done_s <= '0';
      cnt_byte_tx      <= 0;
      start_tx_o_s     <= '0';
      tx_data_o_s      <= (others => '0');
    elsif clock_i'event and clock_i = '1' then  -- rising clock edge

      if(send_resp_s = '1' and uart_resp_done_s = '0') then

        if(tx_done_i_r_edge = '1') then
          if(cnt_byte_tx < C_MAX_TX_BYTE - 1) then
            cnt_byte_tx      <= cnt_byte_tx + 1;
          else
            uart_resp_done_s <= '1';
            cnt_byte_tx      <= 0;      -- RAZ CNT
          end if;
        end if;

        if(uart_resp_done_s = '1' or tx_done_i_r_edge = '1') then
          start_tx_o_s <= '0';          -- Raz Start TX
        else
          start_tx_o_s <= '1';
        end if;

        -- KO RESP
        if(send_ko_resp_s = '1') then
          tx_data_o_s <= C_KO_RESP(cnt_byte_tx);

          -- Write resp
        elsif(send_ko_resp_s = '0' and rw_cmd_s = '0') then

          tx_data_o_s <= C_OK_WR_RESP(cnt_byte_tx);
          -- Read resp
        elsif(send_ko_resp_s = '0' and rw_cmd_s = '1') then

          if(cnt_byte_tx < C_MAX_TX_BYTE - 1) then
            tx_data_o_s <= C_OK_RD_RESP(cnt_byte_tx);
          else
            tx_data_o_s <= rdata_reg_s;  -- data from the REg bank
          end if;
        end if;



      elsif(send_resp_s = '0') then
        uart_resp_done_s <= '0';
        cnt_byte_tx      <= 0;
        start_tx_o_s     <= '0';
        tx_data_o_s      <= (others => '0');
      end if;

      -- Reset
--        if(start_parse_s = '0') then
--          uart_resp_done_s <= '0';
--        end if;


    end if;
  end process p_tx_mng;

  start_tx_o <= start_tx_o_s;
  tx_data_o  <= tx_data_o_s;
end architecture arch_uart_mngt;
