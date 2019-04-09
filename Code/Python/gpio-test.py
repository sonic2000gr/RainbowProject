import pigpio


def z80_write(gpio, level, tick):
  global cb1
  #cb1.cancel()
  data = pi.read_bank_1()
  data = (data & 1044480) >> 12
  print data
  #pi.set_pull_up_down(10, pigpio.PUD_UP)
  #cb1 = pi.callback(10, pigpio.FALLING_EDGE, z80_write)
  return

pi = pigpio.pi()

# GPIO10 = Z80 Write (active low)
pi.set_mode(10, pigpio.INPUT)

# GPIO12 - 19 = Z80 Data bus (active high)
for i in range(0,32):
  pi.set_pull_up_down(i, pigpio.PUD_DOWN)

pi.set_pull_up_down(10, pigpio.PUD_UP)

for i in range(12,20):
  pi.set_mode(i, pigpio.INPUT)
  
# Define callback for Z80 Write

cb1 = pi.callback(10, pigpio.FALLING_EDGE, z80_write)
while True:
  pass
    
