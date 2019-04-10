import RPi.GPIO as GPIO
from time import sleep
GPIO.setwarnings(False)
GPIO.setmode(GPIO.BOARD)
leds = [8,10,12,16,18,22,24,26,3,5,7,11,13,15,19,21,23]
for i in leds:
    GPIO.setup(i, GPIO.OUT, initial=GPIO.LOW)

while True:
    for i in leds:
        GPIO.output(i, GPIO.HIGH)
    sleep(1)
    for i in leds:
        GPIO.output(i, GPIO.LOW)
    sleep(1)
