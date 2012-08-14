import socket

s=socket.socket()

s.connect(("localhost",9999))

while True:
    message=raw_input("Mensaje a enviar: ")
    s.send(message)
    if message=="bye":
        break
    rcv=s.recv(1024)
    print rcv

print "bye"

s.close