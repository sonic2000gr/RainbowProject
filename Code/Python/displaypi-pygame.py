# -*- coding: utf-8 -*-
#
# pygame displaypi
#

import pygame
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

class Cursor(object):
    def __init__(self, cursorcolor, cursorsize):
        self.cursorcolor = cursorcolor
        self.cursorsize = cursorsize
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
    def render(self, screen):
        for item in self.tlist:
            thetext = self.textfont.render(item[0], True, item[2].value, item[3].value)
            screen.blit(thetext, item[1].translatePos())

            
class Screen(object):
    def __init__(self):
        self.width = pygame.display.Info().current_w
        self.height = pygame.display.Info().current_h
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
          return True


def main():
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

    fontsize = cursorsize = thescreen.getFontSize()

    # Set some sane colors
    
    surfacecolor = Color.Cyan   
    bordercolor = Color.Red
    textcolor = Color.Black
    cursorcolor = Color.Blue

    # Set screen
    
    screen = pygame.display.set_mode((width, height),  DOUBLEBUF | FULLSCREEN, 32)

    # Calculate window position
    
    wposx, wposy = theborder.getWindowPos()

    # Get a text position object and a cursor position object

    textpos = Position(wposx, wposy, fontsize)
    cursorpos = Position(wposx, wposy, fontsize)
    
    # Start screen setup
    
    pygame.display.set_caption("Display Pi")

    # Mouse should not be visible during displaypi operation
    
    pygame.mouse.set_visible(False)

    # Set font and size according to screen size
    
    textfont = pygame.font.SysFont("Press Start 2P",fontsize)

    # Now test the text class
    thetext = Text(textfont, fontsize)
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
    
    textpos.setPos(4,9)
    thetext.add("THE RAINBOW Z80 PROJECT", textpos)
    textpos.setPos(4,11)
    thetext.add("DISPLAYPI VIDEO ADAPTER", textpos)
    textpos.setPos(2,17)
    thetext.add("READY - WAITING FOR Z80 CPU", textpos)
    textpos.setPos(1,19)
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
    textpos.setPos(2,22)
    thetext.add(chr(169)+" 2017 - 2019 SCHOOLSPACE.GR", textpos)
    thecursor = Cursor(cursorcolor, cursorsize)
    thecursor.setPos(cursorpos)
    thecursor.setVisible(False)
    textpos.nextLine()
    textpos.nextLine()

    # textpos.setPos(0,0)
    # thetext.clear()
    
    
    # Begin main loop

    endprogram = False
    clock = pygame.time.Clock()
    while not endprogram:      
          
        # fill screen with border color
        screen.fill(bordercolor.value)

        # draw our window
        pygame.draw.rect(screen, surfacecolor.value ,(wposx, wposy, wwidth, wheight))

        # Render the content 
        thetext.render(screen)

        # Render the cursor (if enabled)
        thecursor.render(screen)
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
