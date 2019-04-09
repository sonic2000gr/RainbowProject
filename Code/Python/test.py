import RPi.GPIO as GPIO
GPIO.setmode(GPIO.BCM)

def my_callback(channel):
    print'This is a edge event callback function!'
    print'Edge detected on channel'
    print'This is run in a different thread to your main program'

GPIO.setup(10, GPIO.IN, pull_up_down=GPIO.PUD_UP)
GPIO.add_event_detect(10, GPIO.FALLING)
GPIO.add_event_callback(10, my_callback)
