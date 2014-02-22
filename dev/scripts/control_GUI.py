#!/usr/bin/python
# control_GUI.py
# Date: January 15, 2014
# Purpose: Allows a user to send commands via a gui to a RC-controlled car
#          using an attached xbee device.

#------------------------------------------------------------------------------

__author__ = "Brandon Perez"

#------------------------------------------------------------------------------
# Modules

from serial import Serial, serialutil
from Tkinter import Tk, Button, Canvas, Frame, FALSE, ALL, CENTER, NW, NORMAL
from math import sin, cos, pi
from time import time, sleep

#------------------------------------------------------------------------------
def sanityChecks():
    try:
        ser = Serial('/dev/ttyUSB0', 9600, timeout=0)
    except serialutil.SerialException as e:
        print ("Error: xbee device is not connected. Make sure to connect " +
              "the device")
        print "Error message:"
        print "\t", str(e).replace('\n', "\n\t")
        exit(1)

#------------------------------------------------------------------------------
def start_gui():
    (width, height) = (640, 480)
    root = Tk()
    canvas = Canvas(root, width=width, height=height)
    canvas.pack()
    root.resizable(width=FALSE, height=FALSE)
    class Struct(): pass
    canvas.data = Struct()
    canvas.data.width = width
    canvas.data.height= height
    canvas.data.root = root
    init(canvas)
    redrawAll(canvas)
    timerFired(canvas)
    canvas.data.root.mainloop()

#------------------------------------------------------------------------------
def init(canvas):
    # False represents Control Mode
    canvas.data.mode = False
    canvas.data.throttle_level = 0
    canvas.data.angle = 0
    canvas.data.speed = 0.0
    canvas.data.acceleration = 0.0
    canvas.data.timer_counter = 0
    canvas.data.xbee = Serial('/dev/ttyUSB0', 9600, timeout=0)
    canvas.data.xbee.close()
    canvas.data.xbee.open()
    canvas.data.inc_throttle = False
    canvas.data.dec_throttle = False
    canvas.data.move_arrow_left = False
    canvas.data.move_arrow_right = False
    canvas.data.sticky_controls = False
    canvas.data.control_mode = False
    initEvents(canvas)

#------------------------------------------------------------------------------
def initEvents(canvas):
    canvas.data.controlButton = Button(canvas, text="Control", command=
                                     lambda: controlButtonPressed(canvas),
                                     height=2, width=10)
    canvas.data.cruiseButton = Button(canvas, text="Cruise", command=
                                      lambda: cruiseButtonPressed(canvas),
                                      height=2, width=10)
    canvas.data.stopButton = Button(canvas, text="Stop", command=
                                    lambda: stopButtonPressed(canvas),
                                    height=2, width=10)
    canvas.data.exitButton = Button(canvas, text="Exit", command=
                                    lambda: exitButtonPressed(canvas),
                                    height=2, width=10)
    canvas.data.root.bind("<Key>", lambda event: keyPressed(canvas, event))

#------------------------------------------------------------------------------
def keyPressed(canvas, event):
    if (event.keysym == "Up"):
        canvas.data.inc_throttle = True
    elif (event.keysym == "Down"):
        canvas.data.dec_throttle = True
    elif (event.keysym == "Left"):
        canvas.data.move_arrow_left = True
    elif (event.keysym == "Right"):
        canvas.data.move_arrow_right = True
    elif (event.keysym == 's'):
        canvas.data.throttle_level = 0
        canvas.data.angle = 0
    elif (event.keysym == 'm'):
        canvas.data.control_mode = not canvas.data.control_mode
    elif (event.keysym == 'c'):
        canvas.data.sticky_controls = not canvas.data.sticky_controls

#------------------------------------------------------------------------------
def controlButtonPressed(canvas):
    canvas.data.control_mode = True

#------------------------------------------------------------------------------
def cruiseButtonPressed(canvas):
    canvas.data.control_mode = False

#------------------------------------------------------------------------------
def stopButtonPressed(canvas):
    canvas.data.throttle_level = 0
    canvas.data.angle = 0.0

#------------------------------------------------------------------------------
def exitButtonPressed(canvas):
    canvas.data.root.destroy()
    exit(0)

#------------------------------------------------------------------------------
def redrawAll(canvas):
    (width, height) = (canvas.data.width, canvas.data.height)
    canvas.delete(ALL)
    updateInfo(canvas)

    canvas.create_rectangle(0, 0, width, height/6.0, fill="gold")
    canvas.create_rectangle(0, height/6.0, width/3.0, 5*height/6.0, fill="blue")
    canvas.create_rectangle(width/3.0, height/6.0, 2*width/3.0, 5*height/6.0, fill="blue")
    canvas.create_rectangle(2*width/3.0, height/6.0, width, 5*height/6.0, fill="blue")
    canvas.create_rectangle(0, 5.0*height/6.0, width, height, fill="gold")

    canvas.create_text(1.0/2*width, 1.0/12 * height, anchor=CENTER, text="RC Car Controller" + 
                       " and Data Logger", font=("Helvetica", 24, "bold"))
    canvas.create_text(1.0/6*width, 1.0/6*height + 30, anchor=CENTER, text="Throttle Level:",
                       font=("Helvetica", 20, "bold"))
    canvas.create_text(1/2.0*width, 1.0/6*height + 30, anchor=CENTER, text="Direction:",
                       font=("Helvetica", 20, "bold"))
    canvas.create_text(5.0/6*width, 1.0/6*height + 30, anchor=CENTER, text="Car Data:",
                       font=("Helvetica", 20, "bold"))


    drawBorder(canvas)
    drawThrottle(canvas)
    drawData(canvas)
    drawArrow(canvas)

#------------------------------------------------------------------------------
def drawBorder(canvas):
    (width, height) = (canvas.data.width, canvas.data.height)
    line_width = 3

    # Header
    canvas.create_line(0, line_width-1, width, line_width-1, width=line_width)
    canvas.create_line(0, 1.0/6*height, width, 1.0/6*height, width=line_width)
    canvas.create_line(line_width-1, 0, line_width-1, 1.0/6*height, width=line_width)
    canvas.create_line(width-line_width+1, 0, width-line_width+1, 1.0/6*height, width=line_width)
    # Throttle/Speed Control
    canvas.create_line(line_width-1, 1.0/6*height, line_width-1, 5.0/6*height, width=line_width)
    canvas.create_line(1.0/3*width, 1.0/6*height, 1.0/3*width, 5.0/6*height,
                       width=line_width)
    # Information Panel
    canvas.create_line(2.0/3*width, 1.0/6*height, 2.0/3*width, 5.0/6*height,
                       width=line_width)
    canvas.create_line(width-line_width+1, 1.0/6*height, width-line_width+1, 5.0/6*height, 
                       width=line_width)
    # Button Panel
    canvas.create_line(0, 5.0/6*height, width, 5.0/6*height, width=line_width)
    canvas.create_line(0, height-line_width+1, width, height-line_width+1, width=line_width)
    canvas.create_line(line_width-1, 5.0/6*height, line_width-1, height, width=line_width)
    canvas.create_line(width-line_width+1, 5.0/6*height, width-line_width+1, height, width=line_width)
    # Divider
    canvas.create_line(0, 1.0/3*height, width, 1.0/3*height, width=line_width)

#------------------------------------------------------------------------------
def drawThrottle(canvas):
    (width, height) = (canvas.data.width, canvas.data.height)

    width_margin = 50
    height_margin = 10
    rect_height = (5.0/6*height - 1.0/3*height - 2*height_margin) / 20

    canvas.create_rectangle(width_margin, 1.0/3*height+height_margin, 
                            1.0/3*width-width_margin, 5.0/6*height-height_margin, 
                            fill="white")
    for i in xrange(20):
        top_left = (width_margin, 5.0/6*height - height_margin - 
                    rect_height*(i+1))
        bottom_right = (1.0/3*width - width_margin, 5.0/6*height - height_margin
                        - rect_height*i)
        if (i < canvas.data.throttle_level):
            canvas.create_rectangle(top_left, bottom_right, fill="green", width=0)
 
#------------------------------------------------------------------------------                 
def drawData(canvas):
    (width, height) = (canvas.data.width, canvas.data.height)
    speed = canvas.data.speed
    acceleration = canvas.data.acceleration

    canvas.create_text(5/6.0*width, 1/3.0*height + 30, anchor=CENTER, text="Current Speed:",
                       font=("Helvetica", 16, "bold"))
    canvas.create_text(5/6.0*width, 1/2.0*height, anchor=CENTER, text=str(speed)+" mph",
                       font=("Helvetica", 16, "bold"))
    canvas.create_text(5/6.0*width, 2.0/3*height, anchor=CENTER, text="Acceleration:",
                       font=("Helvetica", 16, "bold"))
    canvas.create_text(5/6.0*width, 5.0/6*height - 30, anchor=CENTER, text=str(round(acceleration, 3))+" g",
                       font=("Helvetica", 16, "bold"))
                        
#------------------------------------------------------------------------------
def drawArrow(canvas):
    (width, height) = (canvas.data.width, canvas.data.height)
    angle = canvas.data.angle

    d_angle = (pi/6.0)/10
    arrow_radius = 3.0/4*height - 5.0/12*height
    origin = (width/2.0, 3.0/4*height)
    head = (width/2.0 + arrow_radius*sin(d_angle*angle), 3.0/4*height - 
              arrow_radius*cos(d_angle*angle))
    canvas.create_line(origin, head, width=4, arrow="last")

#------------------------------------------------------------------------------    
def drawButtons(canvas):
    (width, height) = (canvas.data.width, canvas.data.height)
    canvas.create_window(1.0/6*width, 11.0/12*height,
                         window=canvas.data.controlButton)

#------------------------------------------------------------------------------
def timerFired(canvas):
    canvas.data.timer_counter += 1
    updateInfo(canvas)
    checkEvents(canvas)
    redrawAll(canvas)
    sendControlCommands(canvas)
    #logData(canvas)
    timer = 50
    canvas.after(timer, timerFired, canvas)

#------------------------------------------------------------------------------
def checkEvents(canvas):
    if (canvas.data.inc_throttle):
        canvas.data.inc_throttle = False
        if (canvas.data.throttle_level < 20):
            canvas.data.throttle_level += 1
    elif (canvas.data.dec_throttle):
        canvas.data.dec_throttle = False
        if (canvas.data.throttle_level > 0):
            canvas.data.throttle_level -= 1
    elif (canvas.data.move_arrow_left):
        canvas.data.move_arrow_left = False
        if (canvas.data.angle > -10):
            canvas.data.angle -= 1
    elif (canvas.data.move_arrow_right):
        canvas.data.move_arrow_right = False
        if (canvas.data.angle < 10):
            canvas.data.angle += 1

    (angle, timer_counter) = (canvas.data.angle, canvas.data.timer_counter)
    if ((not canvas.data.sticky_controls) and (timer_counter % 3 == 0)):
        timer_counter = 0
        if (angle < 0):
            canvas.data.angle += 1
        elif (angle > 0):
            canvas.data.angle -= 1

#------------------------------------------------------------------------------
def sendControlCommands(canvas):
    xbee = canvas.data.xbee
    # Command Format: Command_bit<duty_cycle>; 8 bits
    # Throttle: 0<duty_cycle>
    # Steering: 1<duty_cycle>
    # Note that 0 <= duty_cycle <= 100; it is a percentage
    throttle = int(round(canvas.data.throttle_level * 127.0/20))
    steering_pulse = ((-0.1/10*canvas.data.angle + 1.40)/20) * 127
    steering_pulse = int(round(steering_pulse, 0))
    throttle_command = chr(throttle)
    steering_command = chr(1 << 7 | steering_pulse)
    
    xbee.write(steering_command)
    xbee.write(throttle_command)

#------------------------------------------------------------------------------   
def updateInfo(canvas):
    xbee = canvas.data.xbee
    buf = xbee.read(1)
    # Make sure there is data to be read.
    if (buf != ''):
        if (canvas.data.timer_counter % 2 == 0):
            canvas.data.speed = ord(buf) 
        else:
            canvas.data.acceleration = ord(buf)/(511.0*2)

#------------------------------------------------------------------------------
def logData(canvas):
    (speed, acceleration) = canvas.data.speed
    f_write = canvas.data.f_write
    curr_time = time()
    fmt_str = "%s: %s %s \n"
    f_write.write(fmt_str % (curr_time, speed, acceleration)) 

#------------------------------------------------------------------------------
def main():
    sanityChecks()

    start_gui()

#------------------------------------------------------------------------------
if (__name__ == '__main__'):
    main()
