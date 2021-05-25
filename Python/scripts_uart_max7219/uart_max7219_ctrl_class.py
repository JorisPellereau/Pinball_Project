#
# uart_max729_ctrl_class.py
#

import sys
import numpy as np

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


    # TESTS PATTERNS
    test_pattern_ones = np.ones((8, 63))

    

    
    # Constructor
    def __init__(self,
                 baudrate = 9600,
                 timeout  = 1,
                 bytesize = serial.EIGHTBITS,
                 parity   = serial.PARITY_NONE,
                 stopbits = serial.STOPBITS_ONE):
        
        self.uart_inst = uart_class(baudrate, timeout, bytesize, parity, stopbits)
        self.uart_inst.init_uart_com()

        # debug
#        print(type(self.UART_CMD["RUN_PATTERN_SCROLLER"]))
        



    # Start a command and wait check response
    # Default Size of response : 20 bytes
    def uart_send_cmd_and_check(self, data_2_send, data_2_check, data_2_check_size = 20):
        check = False
        self.uart_inst.uart_write_data(data_2_send)
        read_data = self.uart_inst.com_uart.read_until(data_2_check, data_2_check_size)
        if (len(read_data) < data_2_check_size):
            print("Error a Timeout occurs - Not enough data - Number of data Received %d data : expected %d" %(len(read_data), data_2_check_size) )
            check = False
        else:
            if(read_data == data_2_check):
                print("Received Data : %s - expected : %s => OK" %(read_data, data_2_check) )
                check = True
            else:
                print("Received Data : %s - expected : %s => ERROR" %(read_data, data_2_check) )
                check = False

        return check



    # INIT_STATIC_RAM command
    def init_static_ram(self):
        check = self.uart_send_cmd_and_check(self.UART_CMD["INIT_RAM_STATIC"], self.UART_RESP["RAM_STATIC_DONE"])


    # INIT_SCROLLER_RAM command
    def init_scroll_ram(self):
        check = self.uart_send_cmd_and_check(self.UART_CMD["INIT_RAM_SCROLLER"], self.UART_RESP["RAM_SCROLLER_DONE"])

    

    # LOAD MATRIX CONFIG
    def load_matrix_config(self, DISPLAY_TEST, DECODE_MODE, SCAN_LIMIT, INTENSITY, SHUTDOWN):

        # Send LOAD_MATRIX_CONFIG and check result
        check = self.uart_send_cmd_and_check(self.UART_CMD["LOAD_MATRIX_CONFIG"], self.UART_RESP["LOAD_MATRIX_RDY"])

        # Send DAta and check
        if(check == True):
            print("LOAD_MATRIX_RDY received !")
            matrix_config_data = DISPLAY_TEST + DECODE_MODE + SCAN_LIMIT + INTENSITY + SHUTDOWN
            check = self.uart_send_cmd_and_check(matrix_config_data, self.UART_RESP["LOAD_MATRIX_DONE"])
        else:
            print("Abort LOAD_MATRIX_CONFIG - Display controller NOT READY")


    # UPDATE MATRIX CONFIG
    def update_matrix_config(self):

        # Send UPDATE_MATRIX_CONFIG and check result
        check = self.uart_send_cmd_and_check(self.UART_CMD["UPDATE_MATRIX_CONFIG"], self.UART_RESP["UPDATE_MATRIX_DONE"])

        if(check == True):
            print("UPDATE_MATRIX_DONE received !")
        else:
            print("UPDATE_MATRIX_CONFIG Error !")




    # LOAD PATTERN STATIC
    # pattern_static_data
    # Data to send : Byte(0) = Start @
    # Byte(1)    => Byte(128) = DAta to load in RAM
    # Byte(odd)  = MSB[15:8] of RAM DATA
    # Byte(even) = LSB[7:0] of RAM DATA
    def load_pattern_static(self, pattern_static_data):

        # Send LOAD_PATTERN_STATIC command and check if FPGA is ready
        check = self.uart_send_cmd_and_check(self.UART_CMD["LOAD_PATTERN_STATIC"], self.UART_RESP["LOAD_STATIC_RDY"])

        if(check == True):
            print("LOAD_STATIC_RDY received !")

            # Send Load STATIC Pattern
            check = self.uart_send_cmd_and_check(pattern_static_data, self.UART_RESP["LOAD_STATIC_DONE"])

            if(check == True):
                print("LOAD_STATIC_DONE reveived !")
            else:
                print("LOAD_STATIC_PATTERN Error !")
                
        else:
            print("LOAD_PATTERN_STATIC Error !")

        
    # Close UART
    def close_uart(self):
        self.uart_inst.close_uart_com()

        


    # DEBUG
    def display_tests_patterns(self):
        print(self.test_pattern_ones)
