import socket

s=socket.socket()

s.bind(("localhost",9999))

s.listen(1)

sck,addr=s.accept()

print "connection from"+ str(addr[0])+':'+str(addr[1])

while True:
    rcv=sck.recv(1024)
    if rcv=="bye":
        break
    print"received: ",rcv
    
    sck.send(rcv)

print "bye"


sck.close()
s.close()


    