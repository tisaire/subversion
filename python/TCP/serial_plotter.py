import serial
ser = serial.Serial('/dev/ttyUSB1')  # open first serial port
ser.baudrate=115200
print ser.portstr       # check which port was really used
a=ser.read()#("hello")      # write a string
ser.write('hola')
print a
ser.close()             # close port
