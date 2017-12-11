EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:Zilog
LIBS:ControlBusLEDs-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 74HC240 U2
U 1 1 5A1D0470
P 4800 4800
F 0 "U2" H 5100 4150 50  0000 L CNN
F 1 "74HC240" H 4350 4150 50  0000 L CNN
F 2 "Housings_DIP:DIP-20_W7.62mm" H 4800 4800 50  0001 C CNN
F 3 "" H 4800 4800 50  0000 C CNN
	1    4800 4800
	1    0    0    -1  
$EndComp
$Comp
L R R8
U 1 1 5A1D062F
P 5800 5000
F 0 "R8" V 5880 5000 50  0001 C CNN
F 1 "330" V 5800 5000 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 5730 5000 50  0001 C CNN
F 3 "" H 5800 5000 50  0001 C CNN
	1    5800 5000
	0    -1   -1   0   
$EndComp
$Comp
L R R7
U 1 1 5A1D06E3
P 5800 4850
F 0 "R7" V 5880 4850 50  0001 C CNN
F 1 "330" V 5800 4850 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 5730 4850 50  0001 C CNN
F 3 "" H 5800 4850 50  0001 C CNN
	1    5800 4850
	0    -1   -1   0   
$EndComp
$Comp
L R R6
U 1 1 5A1D06F4
P 5800 4700
F 0 "R6" V 5880 4700 50  0001 C CNN
F 1 "330" V 5800 4700 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 5730 4700 50  0001 C CNN
F 3 "" H 5800 4700 50  0001 C CNN
	1    5800 4700
	0    -1   -1   0   
$EndComp
$Comp
L R R5
U 1 1 5A1D0705
P 5800 4550
F 0 "R5" V 5880 4550 50  0001 C CNN
F 1 "330" V 5800 4550 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 5730 4550 50  0001 C CNN
F 3 "" H 5800 4550 50  0001 C CNN
	1    5800 4550
	0    -1   -1   0   
$EndComp
$Comp
L R R4
U 1 1 5A1D0718
P 5800 4400
F 0 "R4" V 5880 4400 50  0001 C CNN
F 1 "330" V 5800 4400 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 5730 4400 50  0001 C CNN
F 3 "" H 5800 4400 50  0001 C CNN
	1    5800 4400
	0    -1   -1   0   
$EndComp
$Comp
L R R3
U 1 1 5A1D0729
P 5800 4250
F 0 "R3" V 5880 4250 50  0001 C CNN
F 1 "330" V 5800 4250 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 5730 4250 50  0001 C CNN
F 3 "" H 5800 4250 50  0001 C CNN
	1    5800 4250
	0    -1   -1   0   
$EndComp
$Comp
L R R2
U 1 1 5A1D073A
P 5800 4100
F 0 "R2" V 5880 4100 50  0001 C CNN
F 1 "330" V 5800 4100 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 5730 4100 50  0001 C CNN
F 3 "" H 5800 4100 50  0001 C CNN
	1    5800 4100
	0    -1   -1   0   
$EndComp
$Comp
L R R1
U 1 1 5A1D074B
P 5800 3950
F 0 "R1" V 5880 3950 50  0001 C CNN
F 1 "330" V 5800 3950 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 5730 3950 50  0001 C CNN
F 3 "" H 5800 3950 50  0001 C CNN
	1    5800 3950
	0    -1   -1   0   
$EndComp
$Comp
L LED_ALT M1
U 1 1 5A1D07CB
P 7200 5000
F 0 "M1" H 7200 5100 50  0000 C CNN
F 1 "LED_ALT" H 7200 4900 50  0001 C CNN
F 2 "LEDs:LED_D1.8mm_W3.3mm_H2.4mm" H 7200 5000 50  0001 C CNN
F 3 "" H 7200 5000 50  0001 C CNN
	1    7200 5000
	-1   0    0    1   
$EndComp
$Comp
L LED_ALT HALT1
U 1 1 5A1D08CA
P 7200 4750
F 0 "HALT1" H 7200 4850 50  0000 C CNN
F 1 "LED_ALT" H 7200 4650 50  0001 C CNN
F 2 "LEDs:LED_D1.8mm_W3.3mm_H2.4mm" H 7200 4750 50  0001 C CNN
F 3 "" H 7200 4750 50  0001 C CNN
	1    7200 4750
	-1   0    0    1   
$EndComp
$Comp
L LED_ALT RD1
U 1 1 5A1D08F0
P 7200 4500
F 0 "RD1" H 7200 4600 50  0000 C CNN
F 1 "LED_ALT" H 7200 4400 50  0001 C CNN
F 2 "LEDs:LED_D1.8mm_W3.3mm_H2.4mm" H 7200 4500 50  0001 C CNN
F 3 "" H 7200 4500 50  0001 C CNN
	1    7200 4500
	-1   0    0    1   
$EndComp
$Comp
L LED_ALT WR1
U 1 1 5A1D091B
P 7200 4250
F 0 "WR1" H 7200 4350 50  0000 C CNN
F 1 "LED_ALT" H 7200 4150 50  0001 C CNN
F 2 "LEDs:LED_D1.8mm_W3.3mm_H2.4mm" H 7200 4250 50  0001 C CNN
F 3 "" H 7200 4250 50  0001 C CNN
	1    7200 4250
	-1   0    0    1   
$EndComp
$Comp
L LED_ALT MREQ1
U 1 1 5A1D0947
P 7200 4000
F 0 "MREQ1" H 7200 4100 50  0000 C CNN
F 1 "LED_ALT" H 7200 3900 50  0001 C CNN
F 2 "LEDs:LED_D1.8mm_W3.3mm_H2.4mm" H 7200 4000 50  0001 C CNN
F 3 "" H 7200 4000 50  0001 C CNN
	1    7200 4000
	-1   0    0    1   
$EndComp
$Comp
L LED_ALT IORQ1
U 1 1 5A1D0976
P 7200 3750
F 0 "IORQ1" H 7200 3850 50  0000 C CNN
F 1 "LED_ALT" H 7200 3650 50  0001 C CNN
F 2 "LEDs:LED_D1.8mm_W3.3mm_H2.4mm" H 7200 3750 50  0001 C CNN
F 3 "" H 7200 3750 50  0001 C CNN
	1    7200 3750
	-1   0    0    1   
$EndComp
$Comp
L LED_ALT BUSRQ1
U 1 1 5A1D09A8
P 7200 3500
F 0 "BUSRQ1" H 7200 3600 50  0000 C CNN
F 1 "LED_ALT" H 7200 3400 50  0001 C CNN
F 2 "LEDs:LED_D1.8mm_W3.3mm_H2.4mm" H 7200 3500 50  0001 C CNN
F 3 "" H 7200 3500 50  0001 C CNN
	1    7200 3500
	-1   0    0    1   
$EndComp
$Comp
L LED_ALT BUSACK1
U 1 1 5A1D0B11
P 7200 3250
F 0 "BUSACK1" H 7200 3350 50  0000 C CNN
F 1 "LED_ALT" H 7200 3150 50  0001 C CNN
F 2 "LEDs:LED_D1.8mm_W3.3mm_H2.4mm" H 7200 3250 50  0001 C CNN
F 3 "" H 7200 3250 50  0001 C CNN
	1    7200 3250
	-1   0    0    1   
$EndComp
$Comp
L VCC #PWR?
U 1 1 5A2D11F3
P 4800 3550
F 0 "#PWR?" H 4800 3400 50  0001 C CNN
F 1 "VCC" H 4800 3700 50  0000 C CNN
F 2 "" H 4800 3550 50  0001 C CNN
F 3 "" H 4800 3550 50  0001 C CNN
	1    4800 3550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5A2D128B
P 4800 5800
F 0 "#PWR?" H 4800 5550 50  0001 C CNN
F 1 "GND" H 4800 5650 50  0000 C CNN
F 2 "" H 4800 5800 50  0001 C CNN
F 3 "" H 4800 5800 50  0001 C CNN
	1    4800 5800
	1    0    0    -1  
$EndComp
Text GLabel 3450 4200 0    60   Input ~ 0
~BUSACK
Text GLabel 3450 4350 0    60   Input ~ 0
~BUSRQ
Text GLabel 3450 4500 0    60   Input ~ 0
~IORQ
Text GLabel 3450 4650 0    60   Input ~ 0
~MREQ
Text GLabel 3450 4800 0    60   Input ~ 0
~WR
Text GLabel 3450 4950 0    60   Input ~ 0
~RD
Text GLabel 3450 5100 0    60   Input ~ 0
~HALT
Text GLabel 3450 5250 0    60   Input ~ 0
~M1
Wire Wire Line
	5300 5000 5650 5000
Wire Wire Line
	5300 4900 5650 4900
Wire Wire Line
	5650 4900 5650 4850
Wire Wire Line
	5300 4800 5650 4800
Wire Wire Line
	5650 4800 5650 4700
Wire Wire Line
	5300 4700 5600 4700
Wire Wire Line
	5600 4700 5600 4550
Wire Wire Line
	5600 4550 5650 4550
Wire Wire Line
	5300 4600 5550 4600
Wire Wire Line
	5550 4600 5550 4400
Wire Wire Line
	5550 4400 5650 4400
Wire Wire Line
	5300 4500 5500 4500
Wire Wire Line
	5500 4500 5500 4250
Wire Wire Line
	5500 4250 5650 4250
Wire Wire Line
	5300 4400 5450 4400
Wire Wire Line
	5450 4400 5450 4100
Wire Wire Line
	5450 4100 5650 4100
Wire Wire Line
	5300 4300 5400 4300
Wire Wire Line
	5400 4300 5400 3950
Wire Wire Line
	5400 3950 5650 3950
Wire Wire Line
	5950 5000 7050 5000
Wire Wire Line
	5950 4850 7050 4850
Wire Wire Line
	7050 4850 7050 4750
Wire Wire Line
	5950 4700 7050 4700
Wire Wire Line
	7050 4700 7050 4500
Wire Wire Line
	5950 4550 6950 4550
Wire Wire Line
	6950 4550 6950 4250
Wire Wire Line
	6950 4250 7050 4250
Wire Wire Line
	5950 4400 6850 4400
Wire Wire Line
	6850 4400 6850 4000
Wire Wire Line
	6850 4000 7050 4000
Wire Wire Line
	5950 4250 6750 4250
Wire Wire Line
	6750 4250 6750 3750
Wire Wire Line
	6750 3750 7050 3750
Wire Wire Line
	5950 4100 6650 4100
Wire Wire Line
	6650 4100 6650 3500
Wire Wire Line
	6650 3500 7050 3500
Wire Wire Line
	5950 3950 6550 3950
Wire Wire Line
	6550 3950 6550 3250
Wire Wire Line
	6550 3250 7050 3250
Wire Wire Line
	7350 3250 7750 3250
Wire Wire Line
	7750 3500 7350 3500
Wire Wire Line
	7750 3750 7350 3750
Connection ~ 7750 3500
Wire Wire Line
	7750 4000 7350 4000
Connection ~ 7750 3750
Wire Wire Line
	7750 4250 7350 4250
Connection ~ 7750 4000
Wire Wire Line
	7750 4500 7350 4500
Connection ~ 7750 4250
Wire Wire Line
	7750 4750 7350 4750
Connection ~ 7750 4500
Wire Wire Line
	7750 5000 7350 5000
Connection ~ 7750 4750
Connection ~ 7750 5000
Wire Wire Line
	4800 3550 4800 4100
Wire Wire Line
	7750 5600 7750 3250
Wire Wire Line
	4300 5600 7750 5600
Wire Wire Line
	4800 5500 4800 5800
Connection ~ 4800 5600
Wire Wire Line
	3450 4200 4200 4200
Wire Wire Line
	4200 4200 4200 4300
Wire Wire Line
	4200 4300 4300 4300
Wire Wire Line
	3450 4350 4150 4350
Wire Wire Line
	4150 4350 4150 4400
Wire Wire Line
	4150 4400 4300 4400
Wire Wire Line
	3450 4500 4300 4500
Wire Wire Line
	3450 4650 4150 4650
Wire Wire Line
	4150 4650 4150 4600
Wire Wire Line
	4150 4600 4300 4600
Wire Wire Line
	3450 4800 4100 4800
Wire Wire Line
	4100 4800 4100 4700
Wire Wire Line
	4100 4700 4300 4700
Wire Wire Line
	3450 4950 4150 4950
Wire Wire Line
	4150 4950 4150 4800
Wire Wire Line
	4150 4800 4300 4800
Wire Wire Line
	3450 5100 4200 5100
Wire Wire Line
	4200 5100 4200 4900
Wire Wire Line
	4200 4900 4300 4900
Wire Wire Line
	3450 5250 4250 5250
Wire Wire Line
	4250 5250 4250 5000
Wire Wire Line
	4250 5000 4300 5000
Wire Wire Line
	4300 5200 4300 5600
Connection ~ 4300 5300
Text Notes 8200 7650 0    60   ~ 0
11/12/17
Text Notes 10600 7650 0    60   ~ 0
1.01
$EndSCHEMATC
