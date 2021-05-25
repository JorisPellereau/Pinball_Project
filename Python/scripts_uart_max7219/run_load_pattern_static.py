#
# run_load_pattern_static
# Run LOAD_PATTERN_STATIC Command and check


import sys
from uart_max7219_ctrl_class import *




uart_rpi = uart_max7219_ctrl_class(baudrate = 230400)

# Send data : Byte(0) = Start @
# Bytes(1-128) = data



data_tmp = ""
for i in range(0, 128):
    data_tmp = data_tmp + str(format(i, "02x"))


data_tmp = bytearray.fromhex(data_tmp)

pattern_static_data = "\0" + data_tmp

print(pattern_static_data)
print("len(pattern_static_data) : %d" %(len(pattern_static_data)) )
    
uart_rpi.load_pattern_static(pattern_static_data)
uart_rpi.close_uart()
