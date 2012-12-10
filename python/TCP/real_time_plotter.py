#!/usr/bin/env python
# Plot a graph of Data which is comming in on the fly
# uses pylab
# Author: Norbert Feurle
# Date: 12.1.2012
# License: if you get any profit from this then please share it with me
import pylab
from pylab import *
import socket
import sys
import struct
import numpy
import serial

source='TCP' #'TCP'

xAchse=pylab.arange(0,300,1)
yAchse=pylab.array([0]*300)

fig = pylab.figure(1)
ax = fig.add_subplot(121)
ax.grid(True)
ax.set_title("Realtime Waveform Plot")
ax.set_xlabel("Time")
ax.set_ylabel("Amplitude")
ax.axis([0,300,-1.5,1.5])
line1=ax.plot(xAchse,yAchse,'-')
manager = pylab.get_current_fig_manager()
xAchse=pylab.arange(0,300,1)
yAchse=pylab.array([0]*300)

ax2 = fig.add_subplot(122)
ax2.grid(True)
ax2.set_title("Realtime Waveform Plot")
ax2.set_xlabel("Time")
ax2.set_ylabel("Amplitude")
ax2.axis([0,300,-1.5,1.5])
line2=ax2.plot(xAchse,yAchse,'-')




values=[]
values = [0 for x in range(2000)]

Ta=0.01
fa=1.0/Ta
fcos=3.5

Konstant=cos(2*pi*fcos*Ta)
T0=1.0
T1=Konstant

class TCP():
    def __init__(self):
        self.s=socket.socket()
    def connect(self):
        self.s.connect(("192.168.0.30",69))
        print "Connected!"
    def get_values(self):
        global values
        try:
            values = [0 for x in range(2000)]
            a=self.s.recv(2)
            #print a
    
            b=struct.unpack_from("H",a)           
            b=int(b[0])
            #print "b:",b
            rcv=self.s.recv(b)
            tmp=sys.getsizeof(rcv)-37
            #print tmp
            if tmp==b:
                #print "OK"
                tupla_valors=struct.unpack_from(b/2*"H",rcv)
                #print tupla_valors
                values=list(tupla_valors)
                #print values
            elif tmp<b:
                #print "size not expected"
                tupla_valors=struct.unpack_from(b/2*"H",rcv)
                while tmp<b:
                    #print tmp
                    rcv=self.s.recv(b-tmp)
                    tmp+=sys.getsizeof(rcv)-37
                    tupla_valors+=struct.unpack_from(b/2*"H",rcv)
                values=list(tupla_valors)
                #print "final size:",tmp
            else:
                print "size bigger than expected"
  
        except:
            print "Unexpected error:", sys.exc_info()[:]
            #print sys.getsizeof(rcv)
            print "bye"
            self.s.close
class ser():
    def __init__(self):
        self.s=serial.Serial('/dev/ttyUSB1')
    def connect(self):
        self.s.baudrate=115200
        print self.s,"Connected!"
    def get_values(self):
        global values
        try:
            a=self.s.write('hola')
            print a
            
        except:
            print "Unexpected error:", sys.exc_info()

            print "bye"
            self.s.clos


def SinwaveformGenerator(arg):
    global values,T1,Konstant,T0
    #ohmegaCos=arccos(T1)/Ta
    #print "fcos=", ohmegaCos/(2*pi), "Hz"
    
    Tnext=((Konstant*T1)*2)-T0
    values.append(Tnext)
    T0=T1
    T1=Tnext

def RealtimePloter():
    global values
    CurrentXAxis=pylab.arange(0,len(values),1)
    line1[0].set_data(CurrentXAxis,pylab.array(values[:]))
    fft=10*log(abs(numpy.fft.rfft(values[:])))
    #print len(values[:]),len(fft)
    #print fft
    
    CurrentXAxis=pylab.arange(0,len(values)/2+1,1)
    line2[0].set_data(CurrentXAxis,pylab.array(fft))
    ax.axis([CurrentXAxis.min(),CurrentXAxis.max(),0,5000])
    ax2.axis([CurrentXAxis.min(),CurrentXAxis.max(),-400,400])
    fig.canvas.draw()
    #manager.show()
if source =='TCP':
    tcp_conn=TCP()
else:
    tcp_conn=ser()

tcp_conn.connect()
timer = fig.canvas.new_timer(interval=20)
timer.add_callback(RealtimePloter)
timer2 = fig.canvas.new_timer(interval=20)
timer2.add_callback(tcp_conn.get_values)
timer.start()
timer2.start()

pylab.show()
