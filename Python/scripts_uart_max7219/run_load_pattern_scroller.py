#
# run_load_pattern_scroller
# Run LOAD_PATTERN_SCROLL Command and check


import sys
from uart_max7219_ctrl_class import *


start_ptr  = int(sys.argv[1])
msg_length = int(sys.argv[2]) 

uart_rpi = uart_max7219_ctrl_class(baudrate = 230400)



# Data Array Creation
matrix_line = []
matrix = []
for j in range(0, 8):
    matrix_line = []
    for i in range(0, 64):
        matrix_line.append(1)
    matrix.append(matrix_line)

matrix_array = np.array(matrix)
print(matrix_array)


pattern_scroller_data = uart_rpi.matrix_2_data_list(matrix_array)

print(pattern_scroller_data)
print("len(pattern_scroller_data) : %d" %(len(pattern_scroller_data)) )


    
uart_rpi.load_pattern_scroller(start_ptr, msg_length, pattern_scroller_data)
uart_rpi.close_uart()
