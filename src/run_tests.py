import os
import sys
import serial

print("success")

def runTests():
    return

def main():
    port = sys.argv[1]
    ser = serial.Serial(port, 115200, timeout=1)
    numTestFailures = runTests(ser)
    sys.exit(numTestFailures)