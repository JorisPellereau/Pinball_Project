#
# run_load_pattern_scroller
# Run LOAD_PATTERN_SCROLL Command and check


import sys
from uart_max7219_ctrl_class import *




uart_rpi = uart_max7219_ctrl_class(baudrate = 230400)





data_tmp = ""
for i in range(0, 128):
    data_tmp = data_tmp + str(format(i, "02x"))


data_tmp = bytearray.fromhex(data_tmp)

pattern_scroller_data = "\0" + data_tmp

print(pattern_scroller_data)
print("len(pattern_scroller_data) : %d" %(len(pattern_scroller_data)) )
    
uart_rpi.load_pattern_scroller(start_ptr, msg_length, pattern_scroller_data)
uart_rpi.close_uart()
