-------------------------------------------------------------------------------
-- Title      : Test of the UART Controller
-- Project    : 
-------------------------------------------------------------------------------
-- File       : test_uart_ctrl.vhd
-- Author     :   <JorisPC@JORISP>
-- Company    : 
-- Created    : 2019-08-22
-- Last update: 2019/08/29
-- Platform   : 
-- Standard   : VHDL'93/02
-------------------------------------------------------------------------------
-- Description: Unitary test of the UART Controller for the pinball project
-------------------------------------------------------------------------------
-- Copyright (c) 2019 
-------------------------------------------------------------------------------
-- Revisions  :
-- Date        Version  Author  Description
-- 2019-08-22  1.0      JorisPC Created
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

library lib_uart;
use lib_uart.pkg_uart.all;

entity test_uart_ctrl is

end entity test_uart_ctrl;

architecture arch_test_uart_ctrl of test_uart_ctrl is

  -- TESTBENCH Constants
  constant C_Clock_period : time := 20 ns;  -- CLock Period

  -- UART CTRL Config
  constant C_stop_bit_nb     : integer              := 1;  -- Stop_bit_nb
  constant C_parity          : t_parity             := even;  -- Parity
  constant C_baudrate        : t_baudrate           := b115200;  -- Baudrate
  constant C_data_size       : integer range 5 to 9 := 8;  -- Data zize
  constant C_polarity        : std_logic            := '1';  -- High polarity
  constant C_first_bit       : t_first_bit          := lsb_first;  -- LSB First
  constant C_clock_frequency : integer              := 50000000;  -- Clock freq


  -- TB COMPONENTS
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
                        rw_reg_o         : out std_logic;  -- RW Order
                        start_rw_reg_o   : out std_logic;  -- Start RW operation

                        -- UART PHYSICAL INTERFACE
                        rx_uart_i : in  std_logic;   -- RX UART
                        tx_uart_o : out std_logic);  -- TX UART
  end component;

  component reg_ctrl is

                       generic (
                         data_size : integer range 5 to 9 := 8);  -- Size of the data

                     port (
                       reset_n : in std_logic;  -- Active Low Asynchronous Reset
                       clock_i : in std_logic;  -- System clock

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
                       rdata_reg_o     : out std_logic_vector(data_size - 1 downto 0));

  end component;


  -- PROCEDURES
  procedure send_uart_bytes_proc (
    signal   tx_data_s    : out std_logic_vector(C_data_size - 1 downto 0);
    signal   start_tx_inj : out std_logic;
    signal   tx_done_inj  : in  std_logic;
    constant c_byte1      : in  std_logic_vector(C_data_size - 1 downto 0);
    constant c_byte2      : in  std_logic_vector(C_data_size - 1 downto 0);
    constant c_byte3      : in  std_logic_vector(C_data_size - 1 downto 0));

  -- purpose: This procecedure send UART Write command
  procedure send_uart_bytes_proc (
    signal   tx_data_s    : out std_logic_vector(C_data_size - 1 downto 0);
    signal   start_tx_inj : out std_logic;
    signal   tx_done_inj  : in  std_logic;
    constant c_byte1      : in  std_logic_vector(C_data_size - 1 downto 0);
    constant c_byte2      : in  std_logic_vector(C_data_size - 1 downto 0);
    constant c_byte3      : in  std_logic_vector(C_data_size - 1 downto 0)) is
  begin  -- send_uart_bytes_proc
    -- Send a first byte
    tx_data_s    <= c_byte1;
    wait for 2*C_Clock_period;
    start_tx_inj <= '1', '0' after 2*C_Clock_period;
    wait until rising_edge(tx_done_inj) for 10 ms;

    -- Send a 2nd byte
    tx_data_s    <= c_byte2;
    wait for 2*C_Clock_period;
    start_tx_inj <= '1', '0' after 2*C_Clock_period;
    wait until rising_edge(tx_done_inj) for 10 ms;

    -- Send a 3rd byte
    tx_data_s    <= c_byte3;
    wait for 2*C_Clock_period;
    start_tx_inj <= '1', '0' after 2*C_Clock_period;
    wait until rising_edge(tx_done_inj) for 10 ms;
  end send_uart_bytes_proc;

  -- Signals
  signal reset_n : std_logic := '1';
  signal clock   : std_logic := '0';

  -- UART CTRL Signals
  signal addr_reg_ok_i    : std_logic;
  signal reg_data_valid_i : std_logic;
  signal rdata_reg_i      : std_logic_vector(C_data_size - 1 downto 0);
  signal rcvd_addr_reg_o  : std_logic_vector(C_data_size - 1 downto 0);
  signal wdata_reg_o      : std_logic_vector(C_data_size - 1 downto 0);
  signal rw_reg_o         : std_logic;
  signal start_rw_reg_o   : std_logic;
  signal rx_uart_i        : std_logic;  -- RX UART input
  signal tx_uart_o        : std_logic;  -- TX UART output


  -- TX UART Injector
  signal start_tx_inj : std_logic                                  := '0';
  signal tx_data_inj  : std_logic_vector(C_data_size - 1 downto 0) := (others => '0');
  signal tx_done_inj  : std_logic                                  := '0';

  -- RX UART CHECKER
  signal rx_data_checker     : std_logic_vector(C_data_size - 1 downto 0);
  signal rx_done_checker     : std_logic;
  signal parity_rcvd_checker : std_logic;

begin  -- architecture arch_test_uart_ctrl

  -- Clock gen
  p_gen_clock : process
  begin
    clock <= not clock;
    wait for 10 ns;                     -- 50MHz
  end process;


  p_stimuli : process is

  begin  -- process p_stimuli

    wait for 5*C_Clock_period;
    reset_n <= '0';
    wait for 5*C_Clock_period;
    reset_n <= '1';




    -- == Write @0x00 <= 0x66 ==
    send_uart_bytes_proc(tx_data_inj, start_tx_inj, tx_done_inj, x"A1", x"00", x"66");
    wait for 1 ms;

    -- == Write @0x01 <= 0x11 ==
    send_uart_bytes_proc(tx_data_inj, start_tx_inj, tx_done_inj, x"A1", x"01", x"11");
    wait for 1 ms;

    -- == Write @0x02 <= 0x22 ==
    send_uart_bytes_proc(tx_data_inj, start_tx_inj, tx_done_inj, x"A1", x"02", x"22");
    wait for 1 ms;

    -- == Write @0x03 <= 0x39 ==
    send_uart_bytes_proc(tx_data_inj, start_tx_inj, tx_done_inj, x"A1", x"03", x"39");   
    wait for 1 ms;

    -- == Write @0x04 <= 0x4E ==
    send_uart_bytes_proc(tx_data_inj, start_tx_inj, tx_done_inj, x"A1", x"04", x"4E");
    wait for 1 ms;

    -- == Write @0xFF <= 0xAB ==
    send_uart_bytes_proc(tx_data_inj, start_tx_inj, tx_done_inj, x"A1", x"FF", x"AB");
    wait for 1 ms;

    -- == Write @0xAA <= 0x69 ==
    send_uart_bytes_proc(tx_data_inj, start_tx_inj, tx_done_inj, x"A1", x"AA", x"69");
    wait for 1 ms;
    


    wait;
    -- == Write @0x00 <= 0x55 ==
    -- Send a first byte
    tx_data_inj  <= x"A1";
    wait for 2*C_Clock_period;
    start_tx_inj <= '1', '0' after 2*C_Clock_period;
    wait until rising_edge(tx_done_inj) for 10 ms;

    -- Send a 2nd byte
    tx_data_inj  <= x"00";
    wait for 2*C_Clock_period;
    start_tx_inj <= '1', '0' after 2*C_Clock_period;
    wait until rising_edge(tx_done_inj) for 10 ms;

    -- Send a 3rd byte
    tx_data_inj  <= x"55";
    wait for 2*C_Clock_period;
    start_tx_inj <= '1', '0' after 2*C_Clock_period;
    wait until rising_edge(tx_done_inj) for 10 ms;
    -- ==============================

    wait for 1 ms;

    -- == SEND 3 GOODS BYTES ==
    -- Send a first byte
    tx_data_inj  <= x"A0";
    wait for 2*C_Clock_period;
    start_tx_inj <= '1', '0' after 2*C_Clock_period;
    wait until rising_edge(tx_done_inj) for 10 ms;

    -- Send a 2nd byte
    tx_data_inj  <= x"01";
    wait for 2*C_Clock_period;
    start_tx_inj <= '1', '0' after 2*C_Clock_period;
    wait until rising_edge(tx_done_inj) for 10 ms;

    -- Send a 3rd byte
    tx_data_inj  <= x"00";
    wait for 2*C_Clock_period;
    start_tx_inj <= '1', '0' after 2*C_Clock_period;
    wait until rising_edge(tx_done_inj) for 10 ms;
    -- ==============================

    wait for 1 ms;

    -- == WRITE @Reg:0x01 : x"10" ==
    -- Send a first byte
    tx_data_inj  <= x"A0";
    wait for 2*C_Clock_period;
    start_tx_inj <= '1', '0' after 2*C_Clock_period;
    wait until rising_edge(tx_done_inj) for 10 ms;

    -- Send a 2nd byte
    tx_data_inj  <= x"01";
    wait for 2*C_Clock_period;
    start_tx_inj <= '1', '0' after 2*C_Clock_period;
    wait until rising_edge(tx_done_inj) for 10 ms;

    -- Send a 3rd byte
    tx_data_inj  <= x"10";
    wait for 2*C_Clock_period;
    start_tx_inj <= '1', '0' after 2*C_Clock_period;
    wait until rising_edge(tx_done_inj) for 10 ms;




    -- ==============================

    wait for 0.5 ms;

    -- == SEND 3 GOODS BYTES ==
    -- Send a first byte
    tx_data_inj  <= x"A0";
    wait for 2*C_Clock_period;
    start_tx_inj <= '1', '0' after 2*C_Clock_period;
    wait until rising_edge(tx_done_inj) for 10 ms;

    -- Send a 2nd byte
    tx_data_inj  <= x"BB";
    wait for 2*C_Clock_period;
    start_tx_inj <= '1', '0' after 2*C_Clock_period;
    wait until rising_edge(tx_done_inj) for 10 ms;

    -- Send a 3rd byte
    tx_data_inj  <= x"DE";
    wait for 2*C_Clock_period;
    start_tx_inj <= '1', '0' after 2*C_Clock_period;
    wait until rising_edge(tx_done_inj) for 10 ms;
    -- ==============================


    report "end of simu";
    wait;


  end process p_stimuli;

  -- UART_CTRL inst
  uart_ctrl_inst : uart_ctrl
    generic map (
      stop_bit_number  => C_stop_bit_nb,
      parity           => C_parity,
      baudrate         => C_baudrate,
      data_size        => C_data_size,
      polarity         => C_polarity,
      first_bit        => C_first_bit,
      clock_frequency  => C_clock_frequency)
    port map (
      reset_n          => reset_n,
      clock_i          => clock,
      addr_reg_ok_i    => addr_reg_ok_i,
      reg_data_valid_i => reg_data_valid_i,
      rdata_reg_i      => rdata_reg_i,
      rcvd_addr_reg_o  => rcvd_addr_reg_o,
      wdata_reg_o      => wdata_reg_o,
      rw_reg_o         => rw_reg_o,
      start_rw_reg_o   => start_rw_reg_o,
      rx_uart_i        => rx_uart_i,
      tx_uart_o        => tx_uart_o);


  -- Reg. Bank inst
  reg_ctrl_inst : reg_ctrl
    generic map (
      data_size => C_data_size)
    port map (

      reset_n         => reset_n,
      clock_i         => clock,
      rcvd_addr_reg_i => rcvd_addr_reg_o,
      wdata_reg_i     => wdata_reg_o,
      rw_reg_i        => rw_reg_o,
      start_rw_i      => start_rw_reg_o,
      data_valid_o    => reg_data_valid_i,
      reg_addr_ok_o   => addr_reg_ok_i,
      rdata_reg_o     => rdata_reg_i);

  -- TX UART injector
  tx_uart_inj_inst : tx_uart
    generic map (
      stop_bit_number => C_stop_bit_nb,
      parity          => C_parity,
      baudrate        => C_baudrate,
      data_size       => C_data_size,
      polarity        => C_polarity,
      first_bit       => C_first_bit,
      clock_frequency => C_clock_frequency)
    port map(
      reset_n         => reset_n,
      clock           => clock,
      start_tx        => start_tx_inj,
      tx_data         => tx_data_inj,
      tx              => rx_uart_i,
      tx_done         => tx_done_inj);

  -- RX UART checker
  rx_uart_checker_inst : rx_uart
    generic map (
      stop_bit_number => C_stop_bit_nb,
      parity          => C_parity,
      baudrate        => C_baudrate,
      data_size       => C_data_size,
      polarity        => C_polarity,
      first_bit       => C_first_bit,
      clock_frequency => C_clock_frequency)
    port map (
      reset_n         => reset_n,
      clock           => clock,
      rx              => tx_uart_o,
      rx_data         => rx_data_checker,
      rx_done         => rx_done_checker,
      parity_rcvd     => parity_rcvd_checker);

end architecture arch_test_uart_ctrl;
