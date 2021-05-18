#
# uart_max729_ctrl_class.py
#

import sys

from uart_class import *



class uart_max7219_ctrl_class:

    UART_CMD = dict()
    UART_CMD["INIT_RAM_STATIC"]      = "INIT_RAM_STATIC\0\0\0\0\0"
    UART_CMD["INIT_RAM_SCROLLER"]    = "INIT_RAM_SCROLLER\0\0\0"
    UART_CMD["UPDATE_MATRIX_CONFIG"] = "UPDATE_MATRIX_CONFIG"
    UART_CMD["LOAD_MATRIX_CONFIG"]   = "LOAD_MATRIX_CONFIG\0\0"
    UART_CMD["LOAD_PATTERN_STATIC"]  = "LOAD_PATTERN_STATIC\0"
    UART_CMD["LOAD_PATTERN_SCROLL"]  = "LOAD_PATTERN_SCROLL\0"
    UART_CMD["RUN_PATTERN_STATIC"]   = "RUN_PATTERN_STATIC\0\0"
    UART_CMD["RUN_PATTERN_SCROLLER"] = "RUN_PATTERN_SCROLLER"


    UART_RESP = dict()
    UART_RESP["RAM_STATIC_DONE"]     = "RAM_STATIC_DONE\0\0\0\0\0"
    UART_RESP["RAM_SCROLLER_DONE"]   = "RAM_SCROLLER_DONE\0\0\0"
    UART_RESP["CMD_DISCARD"]         = "CMD_DISCARD\0\0\0\0\0\0\0\0\0"
    UART_RESP["LOAD_STATIC_RDY"]     = "LOAD_STATIC_RDY\0\0\0\0\0"
    UART_RESP["LOAD_STATIC_NOT_RDY"] = "LOAD_STATIC_NOT_RDY\0"
    UART_RESP["LOAD_STATIC_DONE"]    = "LOAD_STATIC_DONE\0\0\0\0"
    UART_RESP["LOAD_SCROLL_RDY"]     = "LOAD_SCROLL_RDY\0\0\0\0\0"
    UART_RESP["LOAD_SCROLL_NOT_RDY"] = "LOAD_SCROLL_NOT_RDY\0"
    UART_RESP["LOAD_SCROLL_DONE"]    = "LOAD_SCROLL_DONE\0\0\0\0"
    UART_RESP["LOAD_MATRIX_RDY"]     = "LOAD_MATRIX_RDY\0\0\0\0\0"
    UART_RESP["LOAD_MATRIX_DONE"]    = "LOAD_MATRIX_DONE\0\0\0\0"
    UART_RESP["UPDATE_MATRIX_DONE"]  = "UPDATE_MATRIX_DONE\0\0"
    UART_RESP["STATIC_PTRN_RDY"]     = "STATIC_PTRN_RDY\0\0\0\0\0"
    UART_RESP["STATIC_PTRN_NOT_RDY"] = "STATIC_PTRN_NOT_RDY\0"
    UART_RESP["STATIC_PTRN_DONE"]    = "STATIC_PTRN_DONE\0\0\0\0"
    UART_RESP["SCROLL_PTRN_RDY"]     = "SCROLL_PTRN_RDY\0\0\0\0\0"
    UART_RESP["SCROLL_PTRN_NOT_RDY"] = "SCROLL_PTRN_NOT_RDY\0"
    UART_RESP["SCROLL_PTRN_DONE"]    = "SCROLL_PTRN_DONE\0\0\0\0"


    # Config. Matrix Registers
    DISPLAY_TEST = 0
    DECODE_MODE  = 0x00
    SCAN_LIMIT   = 0x00
    INTENSITY    = 0x00
    SHUTDOWN     = 0x00
    
    # Constructor
    def __init__(self,
                 baudrate = 9600,
                 timeout  = 1,
                 bytesize = serial.EIGHTBITS,
                 parity   = serial.PARITY_NONE,
                 stopbits = serial.STOPBITS_ONE):
        
        uart_inst = uart_class(baudrate, timeout, bytesize, parity, stopbits)

        



    # Start a command and wait check response
    # Default Size of response : 20 bytes
    def uart_send_cmd_and_check(self, data_2_send, data_2_check, data_2_check_size = 20):
        self.uart_inst.uart_write_data(data_2_send)
        read_data = self.uart_inst.read_until(data_2_check, data_2_check_size)
        if (len(read_data) < data_2_check_size):
            print("Error a Timeout occurs - Not enough data - Received %d data : expected %d" %(len(read_data), data_2_check_size) )
        else:
            if(read_data == data_2_check):
                print("Received Data : %d - expected : %d => OK")
            else:
                print("Received Data : %d - expected : %d => ERROR")
