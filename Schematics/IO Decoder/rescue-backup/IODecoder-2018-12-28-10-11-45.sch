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
LIBS:AddressDecoder-cache
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
L 6116 U3
U 1 1 5A2E5CEB
P 6950 4600
F 0 "U3" H 6550 5400 50  0000 C CNN
F 1 "6116" H 7300 3800 50  0000 C CNN
F 2 "" H 6950 4600 50  0001 C CNN
F 3 "" H 6950 4600 50  0001 C CNN
	1    6950 4600
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 5A2E60EC
P 3950 1050
F 0 "#PWR?" H 3950 900 50  0001 C CNN
F 1 "VCC" H 3950 1200 50  0000 C CNN
F 2 "" H 3950 1050 50  0001 C CNN
F 3 "" H 3950 1050 50  0001 C CNN
	1    3950 1050
	1    0    0    -1  
$EndComp
Text Notes 7450 7500 0    60   ~ 0
Address Decoder
Text Notes 8350 7650 0    60   ~ 0
11/12/2017
Text Notes 10600 7650 0    60   ~ 0
1.0
$Comp
L GND #PWR?
U 1 1 5A2E6C9B
P 3950 5550
F 0 "#PWR?" H 3950 5300 50  0001 C CNN
F 1 "GND" H 3950 5400 50  0000 C CNN
F 2 "" H 3950 5550 50  0001 C CNN
F 3 "" H 3950 5550 50  0001 C CNN
	1    3950 5550
	1    0    0    -1  
$EndComp
Text GLabel 2400 3700 0    60   Input ~ 0
Z80_~MREQ
Text GLabel 2400 3100 0    60   Input ~ 0
Z80_A13
Text GLabel 2350 2600 0    60   Input ~ 0
Z80_~RD
Text GLabel 2400 4050 0    60   Input ~ 0
Z80_~WR
Text GLabel 8250 4800 3    60   BiDi ~ 0
Z80_DATA_BUS
Text GLabel 5150 1400 0    60   BiDi ~ 0
Z80_ADDRESS_BUS
$Comp
L 27C64 U1
U 1 1 5A2E5C26
P 6950 2450
F 0 "U1" H 6700 3450 50  0000 C CNN
F 1 "Atmel 28C64" H 7300 1400 50  0000 C CNN
F 2 "" H 6950 2450 50  0001 C CNN
F 3 "" H 6950 2450 50  0001 C CNN
	1    6950 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 1250 6950 1500
Wire Wire Line
	3950 1050 3950 3000
Wire Wire Line
	6950 3850 6950 3700
Wire Wire Line
	6950 3700 8750 3700
Wire Wire Line
	8750 3700 8750 1250
Connection ~ 6950 1250
Wire Wire Line
	8750 1250 2950 1250
Connection ~ 3950 1250
Wire Wire Line
	6950 5500 6950 5350
Wire Wire Line
	3950 3900 3950 5550
Wire Wire Line
	3200 5500 6950 5500
Connection ~ 3950 5500
Wire Wire Line
	6950 3450 6950 3600
Wire Wire Line
	6950 3600 5450 3600
Wire Wire Line
	5450 3600 5450 5500
Connection ~ 5450 5500
Wire Wire Line
	3350 3800 3350 5500
Wire Wire Line
	3350 3200 3200 3200
Wire Wire Line
	3200 3200 3200 5500
Wire Wire Line
	3200 3300 3350 3300
Connection ~ 3350 5500
Connection ~ 3200 3300
Wire Wire Line
	4550 3100 5850 3100
Wire Wire Line
	5850 3100 5850 3250
Wire Wire Line
	5850 3250 6250 3250
Wire Wire Line
	4550 3200 5800 3200
Wire Wire Line
	5800 3200 5800 5300
Wire Wire Line
	5800 5300 6350 5300
Wire Wire Line
	2400 3100 3350 3100
Wire Wire Line
	3350 3700 2400 3700
Wire Wire Line
	5250 2600 5250 5100
Wire Wire Line
	5250 3350 6250 3350
Wire Wire Line
	2350 2600 5250 2600
Wire Wire Line
	2400 4050 5650 4050
Wire Wire Line
	5650 4050 5650 5200
Wire Wire Line
	5650 5200 6350 5200
Wire Wire Line
	5250 5100 6350 5100
Connection ~ 5250 3350
Wire Bus Line
	8250 4800 8250 1400
Entry Bus Bus
	8150 1550 8250 1650
Entry Bus Bus
	8150 1650 8250 1750
Entry Bus Bus
	8150 1750 8250 1850
Entry Bus Bus
	8150 1850 8250 1950
Entry Bus Bus
	8150 1950 8250 2050
Entry Bus Bus
	8150 2050 8250 2150
Entry Bus Bus
	8150 2150 8250 2250
Entry Bus Bus
	8150 2250 8250 2350
Wire Wire Line
	8150 1550 7650 1550
Wire Wire Line
	8150 1650 7650 1650
Wire Wire Line
	8150 1750 7650 1750
Wire Wire Line
	8150 1850 7650 1850
Wire Wire Line
	8150 1950 7650 1950
Wire Wire Line
	8150 2050 7650 2050
Wire Wire Line
	8150 2150 7650 2150
Wire Wire Line
	8150 2250 7650 2250
Entry Bus Bus
	8150 3900 8250 4000
Entry Bus Bus
	8150 4000 8250 4100
Entry Bus Bus
	8150 4100 8250 4200
Entry Bus Bus
	8150 4200 8250 4300
Entry Bus Bus
	8150 4300 8250 4400
Entry Bus Bus
	8150 4400 8250 4500
Entry Bus Bus
	8150 4500 8250 4600
Entry Bus Bus
	8150 4600 8250 4700
Wire Wire Line
	8150 3900 7550 3900
Wire Wire Line
	7550 4000 8150 4000
Wire Wire Line
	7550 4100 8150 4100
Wire Wire Line
	7550 4200 8150 4200
Wire Wire Line
	7550 4300 8150 4300
Wire Wire Line
	7550 4400 8150 4400
Wire Wire Line
	7550 4500 8150 4500
Wire Wire Line
	7550 4600 8150 4600
Wire Bus Line
	5950 1400 5950 4950
Wire Bus Line
	5950 1400 5150 1400
Entry Bus Bus
	5950 1450 6050 1550
Entry Bus Bus
	5950 1550 6050 1650
Entry Bus Bus
	5950 1650 6050 1750
Entry Bus Bus
	5950 1750 6050 1850
Entry Bus Bus
	5950 1850 6050 1950
Entry Bus Bus
	5950 1950 6050 2050
Entry Bus Bus
	5950 2050 6050 2150
Entry Bus Bus
	5950 2150 6050 2250
Entry Bus Bus
	5950 2250 6050 2350
Entry Bus Bus
	5950 2350 6050 2450
Entry Bus Bus
	5950 2550 6050 2650
Entry Bus Bus
	5950 2450 6050 2550
Entry Bus Bus
	5950 2650 6050 2750
Wire Wire Line
	6050 1550 6250 1550
Wire Wire Line
	6050 1650 6250 1650
Wire Wire Line
	6050 1750 6250 1750
Wire Wire Line
	6050 1850 6250 1850
Wire Wire Line
	6050 1950 6250 1950
Wire Wire Line
	6050 2050 6250 2050
Wire Wire Line
	6050 2150 6250 2150
Wire Wire Line
	6050 2250 6250 2250
Wire Wire Line
	6050 2350 6250 2350
Wire Wire Line
	6050 2450 6250 2450
Wire Wire Line
	6050 2550 6250 2550
Wire Wire Line
	6050 2650 6250 2650
Wire Wire Line
	6050 2750 6250 2750
Wire Wire Line
	6250 2950 5650 2950
Wire Wire Line
	5650 2950 5650 1250
Connection ~ 5650 1250
Entry Bus Bus
	5950 3800 6050 3900
Entry Bus Bus
	5950 3900 6050 4000
Entry Bus Bus
	5950 4000 6050 4100
Entry Bus Bus
	5950 4100 6050 4200
Entry Bus Bus
	5950 4200 6050 4300
Entry Bus Bus
	5950 4300 6050 4400
Entry Bus Bus
	5950 4400 6050 4500
Entry Bus Bus
	5950 4500 6050 4600
Entry Bus Bus
	5950 4600 6050 4700
Entry Bus Bus
	5950 4700 6050 4800
Entry Bus Bus
	5950 4800 6050 4900
Wire Wire Line
	6050 3900 6350 3900
Wire Wire Line
	6050 4000 6350 4000
Wire Wire Line
	6050 4100 6350 4100
Wire Wire Line
	6050 4200 6350 4200
Wire Wire Line
	6050 4300 6350 4300
Wire Wire Line
	6050 4400 6350 4400
Wire Wire Line
	6050 4500 6350 4500
Wire Wire Line
	6050 4600 6350 4600
Wire Wire Line
	6050 4700 6350 4700
Wire Wire Line
	6050 4800 6350 4800
Wire Wire Line
	6050 4900 6350 4900
$Comp
L 74LS138 U2
U 1 1 5A2E603E
P 3950 3450
F 0 "U2" H 4050 3950 50  0000 C CNN
F 1 "74HCT138" H 4250 2900 50  0000 C CNN
F 2 "" H 3950 3450 50  0001 C CNN
F 3 "" H 3950 3450 50  0001 C CNN
	1    3950 3450
	1    0    0    -1  
$EndComp
Text GLabel 2400 3400 0    60   Input ~ 0
~Z80_REFSH
Wire Wire Line
	3350 3600 3250 3600
Wire Wire Line
	3250 3600 3250 3400
Wire Wire Line
	3250 3400 2400 3400
$EndSCHEMATC
