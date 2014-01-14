#!/usr/bin/python

# Allows the user to send integers over the xbee from the REPL

from serial import Serial, serialutil

def getNum(s):
    s_new = ""
    for c in s:
        if (ord('0') <= ord(c) <= ord('9')): s_new += c
    return s_new

def main():
    try:
        with Serial('/dev/ttyUSB0', 9600) as xbee_dev:
            while True:
                # Get data from the user to send
                u_input = raw_input("Enter an integer: ")
                if ((len(getNum(u_input)) != len(u_input)) or (u_input == '')):
                    print "Please enter a valid integer"
                    continue

                xbee_dev.write(u_input)
                message = getNum(xbee_dev.readline())
                print "Recieved:", message, "\n"
    except serialutil.SerialException as e:
            print "Test Failed! The xbee could not be found"
            print "Make sure that the device is properly connected"
    except KeyboardInterrupt:
            print "Interrupted by the user"
"""    except Exception as e:
            print "\nUnknown Error:"
            print "\t", e
"""            

if (__name__ == '__main__'):
    main()
