import socket
import struct
import sys
s=socket.socket()

s.connect(("192.168.0.30",69))
print "Connected!"
while True:
    try:
        while True:
            a=s.recv(2)
            #print a
    
            b=struct.unpack_from("h",a)           
            b=int(b[0])
            #print "b:",b
            rcv=s.recv(b)
            tmp=sys.getsizeof(rcv)-37
            #print tmp
            if tmp==b:
                #print "OK"
                tmp=struct.unpack_from(b/2*"h",rcv)
            elif tmp<b:
                #print "size not expected"
                while tmp<b:
                    #print tmp
                    rcv=s.recv(b-tmp)
                    tmp+=sys.getsizeof(rcv)-37
                #print "final size:",tmp
            else:
                print "size bigger than expected"
            print tmp
        
    except:
        print "Unexpected error:", sys.exc_info()
        print sys.getsizeof(rcv)
        print "bye"
        s.close