# ============================================================ #
#       Filename : com_UART.py
#       Date : 29/05/2017
#       File Version : 1.05
#       Written by : JorisP30
#       Function : test de la liaison serie avec le RPi
# ============================================================ #

# == IMPORTATION MODULES ==
import serial , time , sys
# =========================

com_uart = serial.Serial("/dev/ttyAMA0") # , 9600 , timeout = 0 , parity = serial.PARITY_NONE , stopbits = serial.STOPBITS_ONE , bytesize = serial.EIGHTBITS )
com_uart.baudrate = 9600
com_uart.timeout = 0
com_uart.bytesize = serial.EIGHTBITS
com_uart.parity = serial.PARITY_NONE
com_uart.stopbits = serial.STOPBITS_ONE
com_uart.open()
#Config Oscillo : mode repeter, UART,  9600 LSB Fisrt, Parity NONE, Falling, 8 , 0 , 1
try:
	while 1: #for i in range(0 , 15):
		data = input("saisir phrase : ")
		com_uart.write(data)
		nb_car = len(data)
		retour = com_uart.read(nb_car)
		print(retour)
		time.sleep(0.01)


except KeyboardInterrupt:
	com_uart.close()

com_uart.close()

