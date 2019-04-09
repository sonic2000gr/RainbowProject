# -*- coding: utf-8 -*-
#
# pygame displaypi
#

import pygame
import RPi.GPIO as GPIO
from pygame.locals import *
from enum import Enum
from sys import exit
from copy import copy

class Color(Enum):
    Black = (0x00, 0x00, 0x00)
    Green = (0x21, 0xC8, 0x42)
    LightGreen = (0x5E, 0xDC, 0x78)
    Blue = (0x54, 0x55, 0xED)
    LightBlue = (0x7D, 0x76, 0xFC)
    DarkRed = (0xD4, 0x52, 0x4D)
    Cyan = (0x42, 0xEB, 0xF5)
    Red = (0xFC, 0x55, 0x54)
    LightRed = (0xFF, 0x79, 0x78)
    DarkYellow = (0xD4, 0xC1, 0x54)
    LightYellow = (0xE6, 0xCE, 0x80)
    DarkGreen = (0x21, 0xB0, 0x3B)
    Magenta = (0xC9, 0x5B, 0xBA)
    Gray = (0xCC, 0xCC, 0xCC)
    White = (0xFF, 0xFF, 0xFF)

class Logo(object):
    def __init__(self, logosize):
        if logosize == 32:
            self.logo = pygame.transform.scale(pygame.image.load("logo2.png"), (100,100))
        else:
            self.logo = pygame.transform.scale(pygame.image.load("logo2.png"), (75,75))
        self.visibility = False
    def setVisible(self, visibility):
        if visibility:
            self.visibility = True
        else:
            self.visibility = False
    def setPos(self, pos):
        self.pos = pos
    def getPos(self):
        return self.pos
    def render(self, screen):
        if self.visibility:
            screen.blit(self.logo, self.pos.translatePos())
    

class Cursor(object):
    def __init__(self, cursorcolor, cursorsize):
        self.cursorcolor = cursorcolor
        self.cursorsize = cursorsize
        self.visibility = False
    def setPos(self, pos):
        self.pos = pos
    def getPos(self):
        return self.pos
    def setVisible(self, visibility):
        if visibility:
            self.visibility = True
        else:
            self.visibility = False
    def render(self, screen):
        if self.visibility:
            pygame.draw.rect(screen, self.cursorcolor.value, (self.pos.translatePosX(), self.pos.translatePosY(),
                                                              self.cursorsize, self.cursorsize))
                
class Position(object):
    def __init__(self, wposx, wposy, fontsize):
        self.wposx = wposx
        self.wposy = wposy
        self.fontsize = fontsize
        self.x = 0
        self.y = 0
    def setPos(self, x, y):
        self.x = x
        self.y = y
    def getPos(self):
        return (self.x, self.y)
    def translatePos(self):
        return (self.wposx + self.fontsize * self.x, self.wposy + self.fontsize * self.y)
    def translatePosX(self):
        return self.wposx + self.fontsize * self.x
    def translatePosY(self):
        return self.wposy + self.fontsize * self.y
    def nextChar(self):
        self.x += 1
        if self.x == 32:
            self.x = 0
            self.y += 1
            if self.y == 25:
                self.y = 0
    def nextLine(self):
        self.y += 1
        self.x = 0
        if self.y == 25:
            self.y = 0
        

class Text(object):
    def __init__(self, textfont, textsize):
        self.tlist = list()
        self.textfont = textfont
        self.textsize = textsize
    def add(self, letter, pos, textcolor = Color.Black, surfacecolor = Color.Cyan):
        thepos = copy(pos)
        self.tlist.append((letter, thepos, textcolor, surfacecolor))
    def clear(self):
        del self.tlist[:]
        textpos.setPos(0,0)
        cursorpos.setPos(0,0)
    def render(self, screen):
        for item in self.tlist:
            thetext = self.textfont.render(item[0], True, item[2].value, item[3].value)
            screen.blit(thetext, item[1].translatePos())

            
class Screen(object):
    def __init__(self):
        self.width = pygame.display.Info().current_w
        self.height = pygame.display.Info().current_h
        #self.width = 1024
        #self.height = 768
        if self.height < 800:
            self.wheight = 600
            self.wwidth = 800
        else:
            self.wheight = 800
            self.wwidth = 1024
    def getFontSize(self):
        if self.wheight == 800:
            return 32
        return 24


class Border(object):
    def __init__(self, thescreen):
        self.bwidth = thescreen.width - thescreen.wwidth
        self.bheight = thescreen.height - thescreen.wheight
    def getWindowPos(self):
        return (self.bwidth / 2, self.bheight / 2)
    
#
# Process the event queue 
# returns true if user clicks close
# or any key is pressed
#

def getQuit():
    for event in pygame.event.get():
      if event.type == QUIT:
        return True
      if event.type == KEYDOWN:
        if event.key == K_q:
            return True

# Callback routine for Z80 Write

def z80_write():
  global inchannel, queue, textpos, thetext, textcolor,\
         surfacecolor, cursorpos, logopos, logo, waiting

  mul = 1
  data = 0
  for i in inchannel:
      data += GPIO.input(i) * mul
      mul = mul * 2
  print "Data ", data
  if data == 255:
      # All reset
      textpos.setPos(0,0)
      logo.setVisible(False)
      thetext.clear()
      waiting = 0
      return
  if waiting == 0 and data == 254:
      # Clear screen
      textpos.setPos(0,0)
      thetext.clear()
      return
  if waiting == 0 and data == 253:
      # Set position command, wait for two more bytes
      waiting = 2
      queue.append(data)
      return
  if waiting == 0 and data == 252:
      # Set textcolor/backcolor wait for one more byte
      waiting = 1
      queue.append(data)
      return
  if waiting:
      queue.append(data)
      waiting = waiting - 1
      if waiting == 0:
          # process queue
          if queue[0] == 253:
              textpos.setPos(queue[1], queue[2])
          if queue[0] == 252:
              pass
          del queue[:]
          return
  if data !=0 :
      textpos.nextChar()
      thetext.add(chr(data), textpos, textcolor, surfacecolor)
  return

# Initialize RPi.GPIO

GPIO.setmode(GPIO.BCM)

# GPIO10 = Z80 Write (active low)

GPIO.setup(10, GPIO.IN)
GPIO.add_event_detect(10, GPIO.FALLING)

# Data bus D7-D0 = 14,15,18,23,24,25,8,7

inchannel = [7,8,25,24,23,18,15,14]
GPIO.setup(inchannel, GPIO.IN)
  
# Initialize command/data queue

queue = list()
waiting = 0

# Initialize the pygame library

pygame.init()

# Initialize the screen object
    
thescreen = Screen()

# Get window width / height (two possible sets only)
    
wwidth, wheight = thescreen.wwidth, thescreen.wheight

# Get whole screen width / height
    
width, height = thescreen.width, thescreen.height

# Get border object, this also calculates window position
    
theborder = Border(thescreen)

# Get fontsize / cursorsize

fontsize = cursorsize = logosize = thescreen.getFontSize()

# Set some sane colors
    
surfacecolor = Color.Cyan   
bordercolor = Color.Red
textcolor = Color.Black
cursorcolor = Color.Blue

# Set screen
    
screen = pygame.display.set_mode((width, height),  DOUBLEBUF , 32)

# Calculate window position
    
wposx, wposy = theborder.getWindowPos()

# Get a text position object and a cursor position object

textpos = Position(wposx, wposy, fontsize)
cursorpos = Position(wposx, wposy, fontsize)
logopos = Position(wposx, wposy, fontsize)
    
# Start screen setup
    
pygame.display.set_caption("Display Pi")

# Mouse should not be visible during displaypi operation
    
pygame.mouse.set_visible(False)

# Set font and size according to screen size
    
textfont = pygame.font.Font("PressStart2P.ttf",fontsize)
thetext = Text(textfont, fontsize)
textpos.setPos(0,0)
logopos.setPos(0,0)
cursorpos.setPos(0,0)
logo = Logo(logosize)

def main():
    # Load rainbow logo and set to visible
    
    logopos.setPos(1,1)
    logo.setPos(logopos)
    logo.setVisible(True)
        
    textpos.setPos(1, 3)
    for i in Color:
        thetext.add('A', textpos, i, i)
        textpos.nextChar()
        thetext.add('A', textpos, i, i)
        textpos.nextChar()
    textpos.nextLine()
    textpos.nextChar()
    for i in Color:
        thetext.add('A', textpos, i, i)
        textpos.nextChar()
        thetext.add('A', textpos, i, i)
        textpos.nextChar()
    
    textpos.setPos(6,10)
    thetext.add("THE RAINBOW PROJECT", textpos)
    textpos.setPos(3,12)
    thetext.add("Z80 EXPERIMENTAL COMPUTER", textpos)
    textpos.setPos(1,18)
    thetext.add("READY - PRESS ANY KEY TO BEGIN", textpos)
    textpos.setPos(1,20)
    for i in Color:
        thetext.add('A', textpos, i, i)
        textpos.nextChar()
        thetext.add('A', textpos, i, i)
        textpos.nextChar()
    textpos.nextLine()
    textpos.nextChar()
    for i in Color:
        thetext.add('A', textpos, i, i)
        textpos.nextChar()
        thetext.add('A', textpos, i, i)
        textpos.nextChar()
    textpos.setPos(2,23)
    thetext.add(chr(169)+" 2017 - 2019 SCHOOLSPACE.GR", textpos)
    thecursor = Cursor(cursorcolor, cursorsize)
    thecursor.setPos(cursorpos)
    thecursor.setVisible(False)
    textpos.nextLine()
    textpos.nextLine()

    thetext.clear()
    textpos.setPos(5,1)
    thetext.add("RAINBOW PROJECT", textpos)
    textpos.setPos(5,3)
    thetext.add("Z80 COMPUTER SYSTEM", textpos)
    textpos.setPos(2,5)
    thetext.add("PRESS",textpos)
    textpos.setPos(2,7)
    thetext.add("1 FOR SYSTEM DEMO", textpos)
    textpos.setPos(2,9)
    thetext.add("2 FOR TRIVIA GAME", textpos)
    
    # Begin main loop
    thetext.clear()
    textpos.setPos(0,0)
    logo.setVisible(False)
    endprogram = False
    clock = pygame.time.Clock()
    while not endprogram:      

        if GPIO.event_detected(10):
            z80_write()
          
        # fill screen with border color
        screen.fill(bordercolor.value)

        # draw our window
        pygame.draw.rect(screen, surfacecolor.value ,(wposx, wposy, wwidth, wheight))

        # Render the content 
        thetext.render(screen)

        # Render the cursor (if enabled)

        thecursor.render(screen)
        logo.render(screen)
        time = clock.tick()
        fps = textfont.render(str(1000/time), True, Color.Black.value, Color.Green.value)
        screen.blit(fps, (0,0))
        endprogram = getQuit()
        pygame.display.update()

    # shutdown pygame and exit program
    pygame.quit()
    exit()

# Start program
if __name__ == "__main__":
    main()
