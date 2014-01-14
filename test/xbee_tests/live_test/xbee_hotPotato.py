#!/usr/bin/python

from serial import Serial, serialutil

def getNum(s):
    s_new = ""
    for c in s:
        if (c != '\r' or c != '\n'): s_new += c
    return s_new

def main():
    with Serial('/dev/ttyUSB0', 9600) as xbee_dev:
        try:
            message = '1'
            # Start the hot potato with 1
            xbee_dev.write(message)
            i = 1

            while True:
                # Wait for the response (should be 1 greater than before)
                print "Sent:", message
                message = int(getNum(xbee_dev.readline()))
                print "Recieved:", message, "\n"
                message += 1
                # Send it back
                xbee_dev.write(str(message))

        except serialutil.SerialException as e:
            print "Test Failed! The xbee could not be found"
            print "Make sure that the device is properly connected"
        except KeyboardInterrupt:
            print "Interrupted by the user"
        except Exception as e:
            print "\nUnknown Error:"
            print "\t", e

if (__name__ == '__main__'):
    main()
