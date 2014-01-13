#!/usr/bin/python

from serial import Serial, serialutil

def main():
    with Serial('/dev/ttyUSB0', 9600) as xbee_dev:
        try:
            # Send a simple message to the FPGA, then wait for response
            bytes_written = xbee_dev.write("Hello World")
            # Wait for the response
            message = xbee_dev.read(len("Hello World"))
            print message
            print "Test Successful. Exiting now"
        except serialutil.SerialException as e:
            print "Test Failed! The xbee could not be found"
            print "Make sure that the device is properly connected"
            print "Error message:"
            print e
        except KeyboardInterrupt:
            print "Test Failed! Interrupted by the user."

if (__name__ == '__main__'):
    main()
