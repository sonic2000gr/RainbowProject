EESchema Schematic File Version 4
LIBS:Z80Mainboard-cache
EELAYER 26 0
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
L memory:6116 U3
U 1 1 5A2E5CEB
P 9150 4500
F 0 "U3" H 8750 5300 50  0000 C CNN
F 1 "6116" H 9500 3700 50  0000 C CNN
F 2 "" H 9150 4500 50  0001 C CNN
F 3 "" H 9150 4500 50  0001 C CNN
	1    9150 4500
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5A2E60EC
P 6150 950
F 0 "#PWR?" H 6150 800 50  0001 C CNN
F 1 "VCC" H 6150 1100 50  0000 C CNN
F 2 "" H 6150 950 50  0001 C CNN
F 3 "" H 6150 950 50  0001 C CNN
	1    6150 950 
	1    0    0    -1  
$EndComp
Text Notes 7450 7500 0    60   ~ 0
Z80 Mainboard\n
Text Notes 8300 7650 0    60   ~ 0
15/03/2018
Text Notes 10650 7650 0    60   ~ 0
1.1
$Comp
L memory:27C64 U1
U 1 1 5A2E5C26
P 9150 2350
F 0 "U1" H 8900 3350 50  0000 C CNN
F 1 "Atmel 28C64" H 9500 1300 50  0000 C CNN
F 2 "" H 9150 2350 50  0001 C CNN
F 3 "" H 9150 2350 50  0001 C CNN
	1    9150 2350
	1    0    0    -1  
$EndComp
Entry Bus Bus
	10350 1450 10450 1550
Entry Bus Bus
	10350 1550 10450 1650
Entry Bus Bus
	10350 1650 10450 1750
Entry Bus Bus
	10350 1750 10450 1850
Entry Bus Bus
	10350 1850 10450 1950
Entry Bus Bus
	10350 1950 10450 2050
Entry Bus Bus
	10350 2050 10450 2150
Entry Bus Bus
	10350 2150 10450 2250
Entry Bus Bus
	10350 3800 10450 3900
Entry Bus Bus
	10350 3900 10450 4000
Entry Bus Bus
	10350 4000 10450 4100
Entry Bus Bus
	10350 4100 10450 4200
Entry Bus Bus
	10350 4200 10450 4300
Entry Bus Bus
	10350 4300 10450 4400
Entry Bus Bus
	10350 4400 10450 4500
Entry Bus Bus
	10350 4500 10450 4600
$Comp
L Z80Mainboard-rescue:74LS138 U2
U 1 1 5A2E603E
P 6150 3350
F 0 "U2" H 6250 3850 50  0000 C CNN
F 1 "74HCT138" H 6450 2800 50  0000 C CNN
F 2 "" H 6150 3350 50  0001 C CNN
F 3 "" H 6150 3350 50  0001 C CNN
	1    6150 3350
	1    0    0    -1  
$EndComp
$Comp
L Zilog:Z80CPU U4
U 1 1 5A65CBFC
P 2850 3300
F 0 "U4" H 2300 4700 50  0000 L CNN
F 1 "Z80CPU" H 3100 4700 50  0000 L CNN
F 2 "" H 2850 3700 50  0001 C CNN
F 3 "" H 2850 3700 50  0001 C CNN
	1    2850 3300
	1    0    0    -1  
$EndComp
Entry Wire Line
	3850 2200 3950 2300
Entry Wire Line
	3850 2100 3950 2200
Entry Wire Line
	3850 2300 3950 2400
Entry Wire Line
	3850 2400 3950 2500
Entry Wire Line
	3850 2500 3950 2600
Entry Wire Line
	3850 2600 3950 2700
Entry Wire Line
	3850 2700 3950 2800
Entry Wire Line
	3850 2800 3950 2900
Entry Wire Line
	3850 2900 3950 3000
Entry Wire Line
	3850 3000 3950 3100
Entry Wire Line
	3850 3100 3950 3200
Entry Wire Line
	3850 3200 3950 3300
Entry Wire Line
	3850 3300 3950 3400
Entry Wire Line
	3850 3400 3950 3500
Entry Wire Line
	3850 3500 3950 3600
Entry Wire Line
	3850 3600 3950 3700
Entry Wire Line
	8100 1350 8200 1450
Entry Wire Line
	8100 1450 8200 1550
Entry Wire Line
	8100 1550 8200 1650
Entry Wire Line
	8100 1650 8200 1750
Entry Wire Line
	8100 1750 8200 1850
Entry Wire Line
	8100 1850 8200 1950
Entry Wire Line
	8100 1950 8200 2050
Entry Wire Line
	8100 2050 8200 2150
Entry Wire Line
	8100 2150 8200 2250
Entry Wire Line
	8100 2250 8200 2350
Entry Wire Line
	8100 2350 8200 2450
Entry Wire Line
	8100 2450 8200 2550
Entry Wire Line
	8100 2550 8200 2650
Entry Wire Line
	8100 3700 8200 3800
Entry Wire Line
	8100 3800 8200 3900
Entry Wire Line
	8100 3900 8200 4000
Entry Wire Line
	8100 4000 8200 4100
Entry Wire Line
	8100 4100 8200 4200
Entry Wire Line
	8100 4200 8200 4300
Entry Wire Line
	8100 4300 8200 4400
Entry Wire Line
	8100 4400 8200 4500
Entry Wire Line
	8100 4500 8200 4600
Entry Wire Line
	8100 4600 8200 4700
Entry Wire Line
	8100 4700 8200 4800
Entry Wire Line
	3850 4500 3950 4600
Entry Wire Line
	3850 4400 3950 4500
Entry Wire Line
	3850 4300 3950 4400
Entry Wire Line
	3850 4200 3950 4300
Entry Wire Line
	3850 4100 3950 4200
Entry Wire Line
	3850 4000 3950 4100
Entry Wire Line
	3850 3900 3950 4000
Entry Wire Line
	3850 3800 3950 3900
Text Label 3650 2100 0    60   ~ 0
A0
Text Label 3650 2200 0    60   ~ 0
A1
Text Label 3650 2300 0    60   ~ 0
A2
Text Label 3650 2400 0    60   ~ 0
A3
Text Label 3650 2500 0    60   ~ 0
A4
Text Label 3650 2600 0    60   ~ 0
A5
Text Label 3650 2700 0    60   ~ 0
A6
Text Label 3650 2800 0    60   ~ 0
A7
Text Label 3650 2900 0    60   ~ 0
A8
Text Label 3650 3000 0    60   ~ 0
A9
Text Label 3650 3100 0    60   ~ 0
A10
Text Label 3650 3200 0    60   ~ 0
A11
Text Label 3650 3300 0    60   ~ 0
A12
Text Label 3650 3400 0    60   ~ 0
A13
Text Label 3650 3500 0    60   ~ 0
A14
Text Label 3650 3600 0    60   ~ 0
A15
Text Label 8300 1450 0    60   ~ 0
A0
Text Label 8300 1550 0    60   ~ 0
A1
Text Label 8300 1650 0    60   ~ 0
A2
Text Label 8300 1750 0    60   ~ 0
A3
Text Label 8300 1850 0    60   ~ 0
A4
Text Label 8300 1950 0    60   ~ 0
A5
Text Label 8300 2050 0    60   ~ 0
A6
Text Label 8300 2150 0    60   ~ 0
A7
Text Label 8300 2250 0    60   ~ 0
A8
Text Label 8300 2350 0    60   ~ 0
A9
Text Label 8300 2450 0    60   ~ 0
A10
Text Label 8300 2550 0    60   ~ 0
A11
Text Label 8300 2650 0    60   ~ 0
A12
Text Label 3650 3800 0    60   ~ 0
D0
Text Label 3650 3900 0    60   ~ 0
D1
Text Label 3650 4000 0    60   ~ 0
D2
Text Label 3650 4100 0    60   ~ 0
D3
Text Label 3650 4200 0    60   ~ 0
D4
Text Label 3650 4300 0    60   ~ 0
D5
Text Label 3650 4400 0    60   ~ 0
D6
Text Label 3650 4500 0    60   ~ 0
D7
Text Label 9950 3800 0    60   ~ 0
D0
Text Label 9950 3900 0    60   ~ 0
D1
Text Label 9950 4000 0    60   ~ 0
D2
Text Label 9950 4100 0    60   ~ 0
D3
Text Label 9950 4200 0    60   ~ 0
D4
Text Label 9950 4300 0    60   ~ 0
D5
Text Label 9950 4400 0    60   ~ 0
D6
Text Label 9950 4500 0    60   ~ 0
D7
Text Label 9950 1450 0    60   ~ 0
D0
Text Label 9950 1550 0    60   ~ 0
D1
Text Label 9950 1650 0    60   ~ 0
D2
Text Label 9950 1750 0    60   ~ 0
D3
Text Label 9950 1850 0    60   ~ 0
D4
Text Label 9950 1950 0    60   ~ 0
D5
Text Label 9950 2050 0    60   ~ 0
D6
Text Label 9950 2150 0    60   ~ 0
D7
Text Label 8300 3800 0    60   ~ 0
A0
Text Label 8300 3900 0    60   ~ 0
A1
Text Label 8300 4000 0    60   ~ 0
A2
Text Label 8300 4100 0    60   ~ 0
A3
Text Label 8300 4200 0    60   ~ 0
A4
Text Label 8300 4300 0    60   ~ 0
A5
Text Label 8300 4400 0    60   ~ 0
A6
Text Label 8300 4500 0    60   ~ 0
A7
Text Label 8300 4600 0    60   ~ 0
A8
Text Label 8300 4700 0    60   ~ 0
A9
Text Label 8300 4800 0    60   ~ 0
A10
$Comp
L Device:CP C1
U 1 1 5A673B2B
P 850 1300
F 0 "C1" H 875 1400 50  0000 L CNN
F 1 "1μF" H 875 1200 50  0000 L CNN
F 2 "" H 888 1150 50  0001 C CNN
F 3 "" H 850 1300 50  0001 C CNN
	1    850  1300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5A67423A
P 2850 5000
F 0 "#PWR?" H 2850 4750 50  0001 C CNN
F 1 "GND" H 2850 4850 50  0000 C CNN
F 2 "" H 2850 5000 50  0001 C CNN
F 3 "" H 2850 5000 50  0001 C CNN
	1    2850 5000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5A674675
P 850 1700
F 0 "#PWR?" H 850 1450 50  0001 C CNN
F 1 "GND" H 850 1550 50  0000 C CNN
F 2 "" H 850 1700 50  0001 C CNN
F 3 "" H 850 1700 50  0001 C CNN
	1    850  1700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5A6749A1
P 5800 2550
F 0 "C2" H 5810 2620 50  0000 L CNN
F 1 "100nF" H 5810 2470 50  0000 L CNN
F 2 "" H 5800 2550 50  0001 C CNN
F 3 "" H 5800 2550 50  0001 C CNN
	1    5800 2550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5A674AC1
P 5800 2700
F 0 "#PWR?" H 5800 2450 50  0001 C CNN
F 1 "GND" H 5800 2550 50  0000 C CNN
F 2 "" H 5800 2700 50  0001 C CNN
F 3 "" H 5800 2700 50  0001 C CNN
	1    5800 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5A675BF7
P 1350 1750
F 0 "R1" V 1430 1750 50  0000 C CNN
F 1 "4k7" V 1350 1750 50  0000 C CNN
F 2 "" V 1280 1750 50  0001 C CNN
F 3 "" H 1350 1750 50  0001 C CNN
	1    1350 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 5A675EE4
P 1350 2600
F 0 "C3" H 1360 2670 50  0000 L CNN
F 1 "100nF" H 1360 2520 50  0000 L CNN
F 2 "" H 1350 2600 50  0001 C CNN
F 3 "" H 1350 2600 50  0001 C CNN
	1    1350 2600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5A675F3A
P 1350 2850
F 0 "#PWR?" H 1350 2600 50  0001 C CNN
F 1 "GND" H 1350 2700 50  0000 C CNN
F 2 "" H 1350 2850 50  0001 C CNN
F 3 "" H 1350 2850 50  0001 C CNN
	1    1350 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 5A676CAA
P 10700 1400
F 0 "C4" H 10710 1470 50  0000 L CNN
F 1 "100nF" H 10710 1320 50  0000 L CNN
F 2 "" H 10700 1400 50  0001 C CNN
F 3 "" H 10700 1400 50  0001 C CNN
	1    10700 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5A6778C5
P 10700 1600
F 0 "#PWR?" H 10700 1350 50  0001 C CNN
F 1 "GND" H 10700 1450 50  0000 C CNN
F 2 "" H 10700 1600 50  0001 C CNN
F 3 "" H 10700 1600 50  0001 C CNN
	1    10700 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C5
U 1 1 5A677AD5
P 10950 3950
F 0 "C5" H 10960 4020 50  0000 L CNN
F 1 "100nF" H 10960 3870 50  0000 L CNN
F 2 "" H 10950 3950 50  0001 C CNN
F 3 "" H 10950 3950 50  0001 C CNN
	1    10950 3950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5A677ADC
P 10950 4150
F 0 "#PWR?" H 10950 3900 50  0001 C CNN
F 1 "GND" H 10950 4000 50  0000 C CNN
F 2 "" H 10950 4150 50  0001 C CNN
F 3 "" H 10950 4150 50  0001 C CNN
	1    10950 4150
	1    0    0    -1  
$EndComp
$Comp
L conn:Conn_01x16 J1
U 1 1 5A67A1D2
P 2400 6550
F 0 "J1" V 2400 7350 50  0000 C CNN
F 1 "Address Bus Connector (to Bus Spy)" V 2550 6500 50  0000 C CNN
F 2 "" H 2400 6550 50  0001 C CNN
F 3 "" H 2400 6550 50  0001 C CNN
	1    2400 6550
	0    1    1    0   
$EndComp
Entry Wire Line
	1600 5900 1700 6000
Entry Wire Line
	1500 5900 1600 6000
Entry Wire Line
	1700 5900 1800 6000
Entry Wire Line
	1800 5900 1900 6000
Entry Wire Line
	1900 5900 2000 6000
Entry Wire Line
	2000 5900 2100 6000
Entry Wire Line
	2100 5900 2200 6000
Entry Wire Line
	2200 5900 2300 6000
Entry Wire Line
	2300 5900 2400 6000
Entry Wire Line
	2400 5900 2500 6000
Entry Wire Line
	2500 5900 2600 6000
Entry Wire Line
	2600 5900 2700 6000
Entry Wire Line
	2700 5900 2800 6000
Entry Wire Line
	2800 5900 2900 6000
Entry Wire Line
	2900 5900 3000 6000
Entry Wire Line
	3000 5900 3100 6000
Text Label 3100 6150 3    60   ~ 0
A0
Text Label 3000 6250 1    60   ~ 0
A1
Text Label 2900 6250 1    60   ~ 0
A2
Text Label 2800 6250 1    60   ~ 0
A3
Text Label 2700 6250 1    60   ~ 0
A4
Text Label 2600 6250 1    60   ~ 0
A5
Text Label 2500 6250 1    60   ~ 0
A6
Text Label 2400 6250 1    60   ~ 0
A7
Text Label 2300 6250 1    60   ~ 0
A8
Text Label 2200 6250 1    60   ~ 0
A9
Text Label 2100 6250 1    60   ~ 0
A10
Text Label 2000 6250 1    60   ~ 0
A11
Text Label 1900 6250 1    60   ~ 0
A12
Text Label 1800 6250 1    60   ~ 0
A13
Text Label 1700 6250 1    60   ~ 0
A14
Text Label 1600 6250 1    60   ~ 0
A15
$Comp
L conn:Conn_01x08 J2
U 1 1 5A67D9E0
P 3900 6550
F 0 "J2" V 3900 6950 50  0000 C CNN
F 1 "Data Bus Connector (to Data Spy)" V 4050 6500 50  0000 C CNN
F 2 "" H 3900 6550 50  0001 C CNN
F 3 "" H 3900 6550 50  0001 C CNN
	1    3900 6550
	0    1    1    0   
$EndComp
Entry Wire Line
	3400 6000 3500 6100
Entry Wire Line
	3500 6000 3600 6100
Entry Wire Line
	3600 6000 3700 6100
Entry Wire Line
	3700 6000 3800 6100
Entry Wire Line
	3800 6000 3900 6100
Entry Wire Line
	3900 6000 4000 6100
Entry Wire Line
	4000 6000 4100 6100
Entry Wire Line
	4100 6000 4200 6100
Text Label 4200 6250 1    60   ~ 0
DO
Text Label 4100 6250 1    60   ~ 0
D1
Text Label 4000 6250 1    60   ~ 0
D2
Text Label 3900 6250 1    60   ~ 0
D3
Text Label 3800 6250 1    60   ~ 0
D4
Text Label 3700 6250 1    60   ~ 0
D5
Text Label 3600 6250 1    60   ~ 0
D6
Text Label 3500 6250 1    60   ~ 0
D7
$Comp
L power:GND #PWR?
U 1 1 5A68127B
P 6150 4100
F 0 "#PWR?" H 6150 3850 50  0001 C CNN
F 1 "GND" H 6150 3950 50  0000 C CNN
F 2 "" H 6150 4100 50  0001 C CNN
F 3 "" H 6150 4100 50  0001 C CNN
	1    6150 4100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5A68167C
P 9150 3400
F 0 "#PWR?" H 9150 3150 50  0001 C CNN
F 1 "GND" H 9150 3250 50  0000 C CNN
F 2 "" H 9150 3400 50  0001 C CNN
F 3 "" H 9150 3400 50  0001 C CNN
	1    9150 3400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5A6817AC
P 9150 5400
F 0 "#PWR?" H 9150 5150 50  0001 C CNN
F 1 "GND" H 9150 5250 50  0000 C CNN
F 2 "" H 9150 5400 50  0001 C CNN
F 3 "" H 9150 5400 50  0001 C CNN
	1    9150 5400
	1    0    0    -1  
$EndComp
Entry Wire Line
	1000 2300 1100 2400
Entry Wire Line
	1000 3000 1100 3100
Entry Wire Line
	1000 3700 1100 3800
Entry Wire Line
	1000 3800 1100 3900
Entry Wire Line
	1000 3900 1100 4000
Entry Wire Line
	1000 4000 1100 4100
Entry Wire Line
	1000 4300 1100 4400
Entry Wire Line
	1000 4400 1100 4500
Entry Wire Line
	1000 3300 1100 3400
Text Label 1150 2400 0    60   ~ 0
CLK
Text Label 1150 3100 0    60   ~ 0
~M1
Text Label 1150 3400 0    60   ~ 0
~HALT
Text Label 1150 3800 0    60   ~ 0
~RD
Text Label 1150 3900 0    60   ~ 0
~WR
Text Label 1150 4000 0    60   ~ 0
~MREQ
Text Label 1150 4100 0    60   ~ 0
~IORQ
Text Label 1150 4400 0    60   ~ 0
~BUSRQ
Text Label 1150 4500 0    60   ~ 0
~BUSACK
$Comp
L conn:Conn_01x11 J3
U 1 1 5A68C75C
P 5250 6550
F 0 "J3" V 5250 7150 50  0000 C CNN
F 1 "Control Bus, Clock & Power" V 5400 6550 50  0000 C CNN
F 2 "" H 5250 6550 50  0001 C CNN
F 3 "" H 5250 6550 50  0001 C CNN
	1    5250 6550
	0    1    1    0   
$EndComp
Entry Wire Line
	4650 6000 4750 6100
Entry Wire Line
	4750 6000 4850 6100
Entry Wire Line
	4850 6000 4950 6100
Entry Wire Line
	4950 6000 5050 6100
Entry Wire Line
	5050 6000 5150 6100
Entry Wire Line
	5150 6000 5250 6100
Entry Wire Line
	5250 6000 5350 6100
Entry Wire Line
	5350 6000 5450 6100
Entry Wire Line
	5450 6000 5550 6100
Wire Wire Line
	5550 6100 5550 6350
Wire Wire Line
	5450 6100 5450 6350
Wire Wire Line
	5350 6100 5350 6350
Wire Wire Line
	5250 6100 5250 6350
Wire Wire Line
	5150 6100 5150 6350
Wire Wire Line
	5050 6100 5050 6350
Wire Wire Line
	4950 6100 4950 6350
Wire Wire Line
	4850 6100 4850 6350
Wire Wire Line
	4750 6100 4750 6350
Wire Wire Line
	1100 4500 2150 4500
Connection ~ 1800 4400
Wire Wire Line
	1100 4100 2150 4100
Connection ~ 1450 4000
Connection ~ 1600 3900
Connection ~ 1600 3800
Wire Wire Line
	1100 3400 2150 3400
Wire Wire Line
	1100 3100 2150 3100
Wire Wire Line
	1100 2400 2150 2400
Wire Bus Line
	4650 5550 4650 6000
Wire Bus Line
	1000 5550 4650 5550
Wire Wire Line
	9150 5400 9150 5300
Wire Wire Line
	9150 3400 9150 3350
Connection ~ 6150 3950
Connection ~ 5400 3700
Wire Wire Line
	6150 3800 6150 3950
Wire Wire Line
	6150 3950 6150 4100
Wire Wire Line
	5400 3950 6150 3950
Wire Wire Line
	5400 3700 5550 3700
Wire Wire Line
	5400 3100 5400 3200
Wire Wire Line
	5400 3200 5400 3700
Wire Wire Line
	5400 3700 5400 3950
Wire Bus Line
	3400 5700 3400 6000
Wire Bus Line
	10450 5700 3400 5700
Wire Wire Line
	3700 6100 3700 6350
Wire Wire Line
	3800 6100 3800 6350
Wire Wire Line
	3900 6100 3900 6350
Wire Wire Line
	4000 6100 4000 6350
Wire Wire Line
	4100 6100 4100 6350
Wire Wire Line
	4200 6100 4200 6350
Wire Wire Line
	3100 6000 3100 6350
Wire Wire Line
	3000 6000 3000 6350
Wire Wire Line
	2900 6000 2900 6350
Wire Wire Line
	2800 6000 2800 6350
Wire Wire Line
	2700 6000 2700 6350
Wire Wire Line
	2600 6000 2600 6350
Wire Wire Line
	2500 6000 2500 6350
Wire Wire Line
	2400 6000 2400 6350
Wire Wire Line
	2300 6000 2300 6350
Wire Wire Line
	2200 6000 2200 6350
Wire Wire Line
	2100 6000 2100 6350
Wire Wire Line
	2000 6000 2000 6350
Wire Wire Line
	1900 6000 1900 6350
Wire Wire Line
	1800 6000 1800 6350
Wire Wire Line
	1600 6000 1600 6350
Wire Wire Line
	1700 6000 1700 6350
Connection ~ 10950 3600
Wire Wire Line
	10950 4050 10950 4150
Wire Wire Line
	10700 1500 10700 1600
Connection ~ 10700 1150
Wire Wire Line
	10700 1150 10700 1300
Connection ~ 1350 2100
Wire Wire Line
	1350 2100 2150 2100
Wire Wire Line
	1350 1900 1350 2100
Wire Wire Line
	1350 2100 1350 2500
Wire Wire Line
	1350 2700 1350 2850
Connection ~ 1350 1150
Wire Wire Line
	1350 1600 1350 1150
Wire Wire Line
	5800 2650 5800 2700
Connection ~ 6150 2450
Wire Wire Line
	6150 2450 5800 2450
Wire Wire Line
	850  1450 850  1700
Connection ~ 2850 1150
Connection ~ 1800 3300
Wire Wire Line
	1100 4400 1800 4400
Wire Wire Line
	1800 4400 2150 4400
Connection ~ 3600 3400
Wire Wire Line
	3600 3700 3600 3400
Wire Wire Line
	3800 3700 3600 3700
Wire Wire Line
	3800 3750 3800 3700
Wire Wire Line
	4150 3750 3800 3750
Wire Wire Line
	4150 3000 4150 3750
Wire Wire Line
	5550 3000 4150 3000
Wire Wire Line
	3850 3800 3550 3800
Wire Wire Line
	3850 3900 3550 3900
Wire Wire Line
	3850 4000 3550 4000
Wire Wire Line
	3850 4100 3550 4100
Wire Wire Line
	3850 4200 3550 4200
Wire Wire Line
	3850 4300 3550 4300
Wire Wire Line
	3850 4400 3550 4400
Wire Wire Line
	3850 4500 3550 4500
Wire Wire Line
	8200 4800 8550 4800
Wire Wire Line
	8200 4700 8550 4700
Wire Wire Line
	8200 4600 8550 4600
Wire Wire Line
	8200 4500 8550 4500
Wire Wire Line
	8200 4400 8550 4400
Wire Wire Line
	8200 4300 8550 4300
Wire Wire Line
	8200 4200 8550 4200
Wire Wire Line
	8200 4100 8550 4100
Wire Wire Line
	8200 4000 8550 4000
Wire Wire Line
	8200 3900 8550 3900
Wire Wire Line
	8200 3800 8550 3800
Wire Wire Line
	3850 3600 3550 3600
Wire Wire Line
	3850 3500 3550 3500
Wire Wire Line
	3550 3400 3600 3400
Wire Wire Line
	3600 3400 3850 3400
Wire Wire Line
	3850 3300 3550 3300
Wire Wire Line
	3850 3200 3550 3200
Wire Wire Line
	3850 3100 3550 3100
Wire Wire Line
	3850 3000 3550 3000
Wire Wire Line
	3850 2900 3550 2900
Wire Wire Line
	3850 2800 3550 2800
Wire Wire Line
	3850 2700 3550 2700
Wire Wire Line
	3850 2600 3550 2600
Wire Wire Line
	3850 2500 3550 2500
Wire Wire Line
	3850 2400 3550 2400
Wire Wire Line
	3850 2300 3550 2300
Wire Wire Line
	3850 2200 3550 2200
Wire Wire Line
	3850 2100 3550 2100
Wire Wire Line
	8200 2650 8450 2650
Wire Wire Line
	8200 2550 8450 2550
Wire Wire Line
	8200 2450 8450 2450
Wire Wire Line
	8200 2350 8450 2350
Wire Wire Line
	8200 2250 8450 2250
Wire Wire Line
	8200 2150 8450 2150
Wire Wire Line
	8200 2050 8450 2050
Wire Wire Line
	8200 1950 8450 1950
Wire Wire Line
	8200 1850 8450 1850
Wire Wire Line
	8200 1750 8450 1750
Wire Wire Line
	8200 1650 8450 1650
Wire Wire Line
	8200 1550 8450 1550
Wire Wire Line
	8200 1450 8450 1450
Wire Bus Line
	8100 1350 3950 1350
Wire Wire Line
	4800 5150 1350 5150
Wire Wire Line
	5000 5300 1450 5300
Wire Wire Line
	5200 5450 1600 5450
Wire Wire Line
	4800 3500 4800 5150
Wire Wire Line
	5000 3600 5000 5300
Wire Wire Line
	5200 5100 5200 5450
Connection ~ 1800 2700
Wire Wire Line
	2150 2700 1800 2700
Connection ~ 1800 2800
Wire Wire Line
	1800 2800 2150 2800
Connection ~ 2850 1400
Wire Wire Line
	1800 1400 2000 1400
Wire Wire Line
	2000 1400 2850 1400
Wire Wire Line
	1800 1400 1800 2700
Wire Wire Line
	1800 2700 1800 2800
Wire Wire Line
	1800 2800 1800 3300
Wire Wire Line
	1800 3300 1800 4400
Wire Wire Line
	1800 3300 2150 3300
Wire Wire Line
	2850 4800 2850 5000
Wire Wire Line
	2850 1150 2850 1400
Wire Wire Line
	2850 1400 2850 1800
Wire Wire Line
	1100 3800 1600 3800
Wire Wire Line
	1600 3800 2150 3800
Wire Wire Line
	1600 1250 1600 3800
Wire Wire Line
	1600 1250 7450 1250
Wire Wire Line
	1100 3900 1600 3900
Wire Wire Line
	1600 3900 2150 3900
Wire Wire Line
	1600 5450 1600 3900
Wire Wire Line
	1100 4000 1450 4000
Wire Wire Line
	1450 4000 2150 4000
Wire Wire Line
	1450 5300 1450 4000
Wire Wire Line
	1350 3200 2150 3200
Wire Wire Line
	1350 5150 1350 3200
Wire Wire Line
	4800 3500 5550 3500
Connection ~ 7850 1150
Wire Wire Line
	7850 1150 7850 2850
Wire Wire Line
	7850 2850 8450 2850
Wire Wire Line
	9750 4500 10350 4500
Wire Wire Line
	9750 4400 10350 4400
Wire Wire Line
	9750 4300 10350 4300
Wire Wire Line
	9750 4200 10350 4200
Wire Wire Line
	9750 4100 10350 4100
Wire Wire Line
	9750 4000 10350 4000
Wire Wire Line
	9750 3900 10350 3900
Wire Wire Line
	10350 3800 9750 3800
Wire Wire Line
	10350 2150 9850 2150
Wire Wire Line
	10350 2050 9850 2050
Wire Wire Line
	10350 1950 9850 1950
Wire Wire Line
	10350 1850 9850 1850
Wire Wire Line
	10350 1750 9850 1750
Wire Wire Line
	10350 1650 9850 1650
Wire Wire Line
	10350 1550 9850 1550
Wire Wire Line
	10350 1450 9850 1450
Connection ~ 7450 3250
Wire Wire Line
	7450 5000 8550 5000
Wire Wire Line
	5200 5100 8550 5100
Wire Wire Line
	7450 3250 8450 3250
Wire Wire Line
	7450 1250 7450 3250
Wire Wire Line
	7450 3250 7450 5000
Wire Wire Line
	5000 3600 5550 3600
Wire Wire Line
	8000 5200 8550 5200
Wire Wire Line
	8000 3100 8000 5200
Wire Wire Line
	6750 3100 8000 3100
Wire Wire Line
	8050 3150 8450 3150
Wire Wire Line
	8050 3000 8050 3150
Wire Wire Line
	6750 3000 8050 3000
Connection ~ 5400 3200
Wire Wire Line
	5400 3200 5550 3200
Wire Wire Line
	5550 3100 5400 3100
Connection ~ 6150 1150
Wire Wire Line
	850  1150 1350 1150
Wire Wire Line
	1350 1150 2850 1150
Wire Wire Line
	2850 1150 6150 1150
Wire Wire Line
	6150 1150 7850 1150
Wire Wire Line
	7850 1150 9150 1150
Wire Wire Line
	9150 1150 10700 1150
Wire Wire Line
	10700 1150 10950 1150
Connection ~ 9150 1150
Wire Wire Line
	10950 1150 10950 3600
Wire Wire Line
	10950 3600 10950 3850
Wire Wire Line
	9150 3600 10950 3600
Wire Wire Line
	9150 3750 9150 3600
Wire Wire Line
	6150 950  6150 1150
Wire Wire Line
	6150 1150 6150 2450
Wire Wire Line
	6150 2450 6150 2900
Wire Wire Line
	9150 1150 9150 1400
Text Label 4750 6300 1    60   ~ 0
CLK
Text Label 4850 6300 1    60   ~ 0
~M1
Text Label 4950 6300 1    60   ~ 0
~HALT
Text Label 5050 6300 1    60   ~ 0
~RD
Text Label 5150 6300 1    60   ~ 0
~WR
Text Label 5250 6300 1    60   ~ 0
~MREQ
Text Label 5350 6300 1    60   ~ 0
~IORQ
Text Label 5450 6300 1    60   ~ 0
~BUSRQ
Text Label 5550 6300 1    60   ~ 0
~BUSACK
$Comp
L power:GND #PWR?
U 1 1 5A68E8FE
P 6100 6350
F 0 "#PWR?" H 6100 6100 50  0001 C CNN
F 1 "GND" H 6100 6200 50  0000 C CNN
F 2 "" H 6100 6350 50  0001 C CNN
F 3 "" H 6100 6350 50  0001 C CNN
	1    6100 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 6350 6100 6250
Wire Wire Line
	6100 6250 5750 6250
Wire Wire Line
	5750 6250 5750 6350
$Comp
L power:VCC #PWR?
U 1 1 5A68F359
P 6100 6100
F 0 "#PWR?" H 6100 5950 50  0001 C CNN
F 1 "VCC" V 6100 6300 50  0000 C CNN
F 2 "" H 6100 6100 50  0001 C CNN
F 3 "" H 6100 6100 50  0001 C CNN
	1    6100 6100
	0    1    1    0   
$EndComp
Wire Wire Line
	6100 6100 5650 6100
Wire Wire Line
	5650 6100 5650 6350
$Comp
L conn:Conn_01x09 J?
U 1 1 5AAA220A
P 3900 7250
F 0 "J?" H 3900 7750 50  0000 C CNN
F 1 "Data Bus Connector (to Display Interface)" V 4050 7250 50  0000 C CNN
F 2 "" H 3900 7250 50  0001 C CNN
F 3 "" H 3900 7250 50  0001 C CNN
	1    3900 7250
	0    1    1    0   
$EndComp
Wire Wire Line
	5350 6400 5350 7050
Wire Wire Line
	5350 7050 4300 7050
Wire Wire Line
	3500 6100 3500 6350
Wire Wire Line
	3600 6100 3600 6350
Wire Bus Line
	4550 6000 4550 6800
Entry Wire Line
	3600 6800 3700 6900
Entry Wire Line
	3500 6800 3600 6900
Entry Wire Line
	3400 6800 3500 6900
Entry Wire Line
	3700 6800 3800 6900
Entry Wire Line
	3800 6800 3900 6900
Entry Wire Line
	3900 6800 4000 6900
Entry Wire Line
	4000 6800 4100 6900
Entry Wire Line
	4100 6800 4200 6900
Wire Wire Line
	4200 6900 4200 7050
Wire Wire Line
	4100 6900 4100 7050
Wire Wire Line
	4000 6900 4000 7050
Wire Wire Line
	3900 6900 3900 7050
Wire Wire Line
	3800 6900 3800 7050
Wire Wire Line
	3700 6900 3700 7050
Wire Wire Line
	3600 6900 3600 7050
Wire Wire Line
	3500 6900 3500 7050
Text Label 4200 7050 1    60   ~ 0
DO
Text Label 4100 7050 1    60   ~ 0
D1
Text Label 4000 7050 1    60   ~ 0
D2
Text Label 3900 7050 1    60   ~ 0
D3
Text Label 3800 7050 1    60   ~ 0
D4
Text Label 3700 7050 1    60   ~ 0
D5
Text Label 3600 7050 1    60   ~ 0
D6
Text Label 3500 7050 1    60   ~ 0
D7
Text Label 4650 7050 2    60   ~ 0
~IORQ
$Comp
L Device:C_Small C6
U 1 1 5AAAF83B
P 2000 1600
F 0 "C6" H 2010 1670 50  0000 L CNN
F 1 "100nF" H 2010 1520 50  0000 L CNN
F 2 "" H 2000 1600 50  0001 C CNN
F 3 "" H 2000 1600 50  0001 C CNN
	1    2000 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 1500 2000 1400
Connection ~ 2000 1400
$Comp
L power:GND #PWR?
U 1 1 5AAAFA18
P 2000 1750
F 0 "#PWR?" H 2000 1500 50  0001 C CNN
F 1 "GND" H 2000 1600 50  0000 C CNN
F 2 "" H 2000 1750 50  0001 C CNN
F 3 "" H 2000 1750 50  0001 C CNN
	1    2000 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 1700 2000 1750
Wire Bus Line
	4650 6000 5950 6000
Wire Bus Line
	1000 2300 1000 5550
Wire Bus Line
	3400 6000 4550 6000
Wire Bus Line
	3950 3800 3950 5700
Wire Bus Line
	3400 6800 4550 6800
Wire Bus Line
	10450 1300 10450 5700
Wire Bus Line
	1450 5900 8100 5900
Wire Bus Line
	3950 1350 3950 3700
Wire Bus Line
	8100 1350 8100 5900
$EndSCHEMATC
