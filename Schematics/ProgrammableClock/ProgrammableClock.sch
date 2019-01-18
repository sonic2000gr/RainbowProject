EESchema Schematic File Version 4
LIBS:ProgrammableClock-cache
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
L mymsp430:MSP430G2553_PW20 U1
U 1 1 5AAF8325
P 5450 2700
F 0 "U1" H 4950 3450 60  0000 C CNN
F 1 "MSP430G2553_PW20" H 5600 3450 60  0000 C CNN
F 2 "" H 6500 2550 60  0001 C CNN
F 3 "" H 6500 2550 60  0001 C CNN
	1    5450 2700
	1    0    0    -1  
$EndComp
$Comp
L ProgrammableClock-rescue:74HC244 U2
U 1 1 5AAF840D
P 7800 2650
F 0 "U2" H 7900 3300 50  0000 L CNN
F 1 "74HC244" H 7850 2000 50  0000 L CNN
F 2 "" H 7800 2650 50  0000 C CNN
F 3 "" H 7800 2650 50  0000 C CNN
	1    7800 2650
	1    0    0    -1  
$EndComp
$Comp
L conn:Conn_01x05 J1
U 1 1 5AAF8572
P 3300 2250
F 0 "J1" H 3300 2450 50  0000 C CNN
F 1 "Board Connection" H 3300 2600 50  0000 C CNN
F 2 "" H 3300 2250 50  0001 C CNN
F 3 "" H 3300 2250 50  0001 C CNN
	1    3300 2250
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5AAF8A6D
P 7800 4050
F 0 "#PWR?" H 7800 3800 50  0001 C CNN
F 1 "GND" H 7800 3900 50  0000 C CNN
F 2 "" H 7800 4050 50  0001 C CNN
F 3 "" H 7800 4050 50  0001 C CNN
	1    7800 4050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5AAF8AB5
P 3800 2750
F 0 "#PWR?" H 3800 2500 50  0001 C CNN
F 1 "GND" H 3800 2600 50  0000 C CNN
F 2 "" H 3800 2750 50  0001 C CNN
F 3 "" H 3800 2750 50  0001 C CNN
	1    3800 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5AAF9152
P 3950 3550
F 0 "R1" V 4030 3550 50  0000 C CNN
F 1 "47k" V 3950 3550 50  0000 C CNN
F 2 "" V 3880 3550 50  0001 C CNN
F 3 "" H 3950 3550 50  0001 C CNN
	1    3950 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5AAF92FF
P 3950 4050
F 0 "C1" H 3975 4150 50  0000 L CNN
F 1 "2.2nF" H 3975 3950 50  0000 L CNN
F 2 "" H 3988 3900 50  0001 C CNN
F 3 "" H 3950 4050 50  0001 C CNN
	1    3950 4050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5AAF939A
P 3950 4350
F 0 "#PWR?" H 3950 4100 50  0001 C CNN
F 1 "GND" H 3950 4200 50  0000 C CNN
F 2 "" H 3950 4350 50  0001 C CNN
F 3 "" H 3950 4350 50  0001 C CNN
	1    3950 4350
	1    0    0    -1  
$EndComp
Text GLabel 3800 3800 0    60   Input ~ 0
SBW_TDIO
$Comp
L Device:R R2
U 1 1 5AAF9476
P 4350 4700
F 0 "R2" V 4430 4700 50  0000 C CNN
F 1 "330" V 4350 4700 50  0000 C CNN
F 2 "" V 4280 4700 50  0001 C CNN
F 3 "" H 4350 4700 50  0001 C CNN
	1    4350 4700
	0    1    1    0   
$EndComp
Text GLabel 3800 4700 0    60   Input ~ 0
SBW_CLK
$Comp
L switches:SW_Push SW1
U 1 1 5AAF9A84
P 5800 4050
F 0 "SW1" H 5850 4150 50  0000 L CNN
F 1 "Up_freq" H 5800 3990 50  0000 C CNN
F 2 "" H 5800 4250 50  0001 C CNN
F 3 "" H 5800 4250 50  0001 C CNN
	1    5800 4050
	1    0    0    -1  
$EndComp
$Comp
L switches:SW_Push SW2
U 1 1 5AAF9AE2
P 5800 4550
F 0 "SW2" H 5850 4650 50  0000 L CNN
F 1 "Down_freq" H 5800 4490 50  0000 C CNN
F 2 "" H 5800 4750 50  0001 C CNN
F 3 "" H 5800 4750 50  0001 C CNN
	1    5800 4550
	1    0    0    -1  
$EndComp
$Comp
L switches:SW_Push SW3
U 1 1 5AAF9B33
P 5800 5050
F 0 "SW3" H 5850 5150 50  0000 L CNN
F 1 "Multiply" H 5800 4990 50  0000 C CNN
F 2 "" H 5800 5250 50  0001 C CNN
F 3 "" H 5800 5250 50  0001 C CNN
	1    5800 5050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5AAF9D62
P 7250 4050
F 0 "R3" V 7330 4050 50  0000 C CNN
F 1 "33k" V 7250 4050 50  0000 C CNN
F 2 "" V 7180 4050 50  0001 C CNN
F 3 "" H 7250 4050 50  0001 C CNN
	1    7250 4050
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 5AAF9E10
P 7250 4550
F 0 "R4" V 7330 4550 50  0000 C CNN
F 1 "33k" V 7250 4550 50  0000 C CNN
F 2 "" V 7180 4550 50  0001 C CNN
F 3 "" H 7250 4550 50  0001 C CNN
	1    7250 4550
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 5AAF9E4D
P 7250 5050
F 0 "R5" V 7330 5050 50  0000 C CNN
F 1 "33k" V 7250 5050 50  0000 C CNN
F 2 "" V 7180 5050 50  0001 C CNN
F 3 "" H 7250 5050 50  0001 C CNN
	1    7250 5050
	0    1    1    0   
$EndComp
$Comp
L Device:C C2
U 1 1 5AAFB19E
P 6900 2000
F 0 "C2" H 6925 2100 50  0000 L CNN
F 1 "100nF" H 6925 1900 50  0000 L CNN
F 2 "" H 6938 1850 50  0001 C CNN
F 3 "" H 6900 2000 50  0001 C CNN
	1    6900 2000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5AAFB2EC
P 6900 2300
F 0 "#PWR?" H 6900 2050 50  0001 C CNN
F 1 "GND" H 6900 2150 50  0000 C CNN
F 2 "" H 6900 2300 50  0001 C CNN
F 3 "" H 6900 2300 50  0001 C CNN
	1    6900 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5AAFB4E1
P 4400 3200
F 0 "C3" H 4425 3300 50  0000 L CNN
F 1 "100nF" H 4425 3100 50  0000 L CNN
F 2 "" H 4438 3050 50  0001 C CNN
F 3 "" H 4400 3200 50  0001 C CNN
	1    4400 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5AAFB720
P 4600 3500
F 0 "#PWR?" H 4600 3250 50  0001 C CNN
F 1 "GND" H 4600 3350 50  0000 C CNN
F 2 "" H 4600 3500 50  0001 C CNN
F 3 "" H 4600 3500 50  0001 C CNN
	1    4600 3500
	1    0    0    -1  
$EndComp
Text GLabel 2950 2450 0    60   Input ~ 0
5V
Text GLabel 2950 2300 0    60   Input ~ 0
3.3V
Text GLabel 2950 2150 0    60   Input ~ 0
GND
Text GLabel 2950 2000 0    60   Input ~ 0
CLK_OUT
$Comp
L Device:R R6
U 1 1 5AAFC2D4
P 8550 2650
F 0 "R6" V 8630 2650 50  0000 C CNN
F 1 "330" V 8550 2650 50  0000 C CNN
F 2 "" V 8480 2650 50  0001 C CNN
F 3 "" H 8550 2650 50  0001 C CNN
	1    8550 2650
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D1
U 1 1 5AAFC430
P 8550 3150
F 0 "D1" H 8550 3250 50  0000 C CNN
F 1 "LED" H 8550 3050 50  0000 C CNN
F 2 "" H 8550 3150 50  0001 C CNN
F 3 "" H 8550 3150 50  0001 C CNN
	1    8550 3150
	0    -1   -1   0   
$EndComp
$Comp
L switches:SW_Push SW4
U 1 1 5AB0AE39
P 5800 5550
F 0 "SW4" H 5850 5650 50  0000 L CNN
F 1 "Step" H 5800 5490 50  0000 C CNN
F 2 "" H 5800 5750 50  0001 C CNN
F 3 "" H 5800 5750 50  0001 C CNN
	1    5800 5550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5AB0B37B
P 7250 4350
F 0 "C4" V 7350 4450 50  0000 L CNN
F 1 "100nF" V 7350 4100 50  0000 L CNN
F 2 "" H 7288 4200 50  0001 C CNN
F 3 "" H 7250 4350 50  0001 C CNN
	1    7250 4350
	0    1    1    0   
$EndComp
$Comp
L Device:C C5
U 1 1 5AB0B479
P 7250 4850
F 0 "C5" V 7350 4950 50  0000 L CNN
F 1 "100nF" V 7350 4600 50  0000 L CNN
F 2 "" H 7288 4700 50  0001 C CNN
F 3 "" H 7250 4850 50  0001 C CNN
	1    7250 4850
	0    1    1    0   
$EndComp
$Comp
L Device:C C6
U 1 1 5AB0B4D4
P 7250 5350
F 0 "C6" V 7350 5450 50  0000 L CNN
F 1 "100nF" V 7350 5100 50  0000 L CNN
F 2 "" H 7288 5200 50  0001 C CNN
F 3 "" H 7250 5350 50  0001 C CNN
	1    7250 5350
	0    1    1    0   
$EndComp
$Comp
L Device:C C7
U 1 1 5AB0BCED
P 7250 5850
F 0 "C7" V 7350 5950 50  0000 L CNN
F 1 "100nF" V 7350 5600 50  0000 L CNN
F 2 "" H 7288 5700 50  0001 C CNN
F 3 "" H 7250 5850 50  0001 C CNN
	1    7250 5850
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 5AB117F5
P 7250 5550
F 0 "R6" V 7330 5550 50  0000 C CNN
F 1 "33k" V 7250 5550 50  0000 C CNN
F 2 "" V 7180 5550 50  0001 C CNN
F 3 "" H 7250 5550 50  0001 C CNN
	1    7250 5550
	0    1    1    0   
$EndComp
Text GLabel 2950 1850 0    60   Input ~ 0
STEP_OUT
NoConn ~ 6300 2650
NoConn ~ 6300 2550
NoConn ~ 6300 2800
NoConn ~ 6300 2900
NoConn ~ 4600 2150
NoConn ~ 4600 2250
NoConn ~ 4600 2350
NoConn ~ 4600 2450
NoConn ~ 4600 2550
NoConn ~ 8300 2450
NoConn ~ 8300 2550
NoConn ~ 8300 2650
NoConn ~ 8300 2750
NoConn ~ 8300 2850
Text Notes 7400 7500 0    60   ~ 0
Programmable Clock System
Text Notes 8150 7650 0    60   ~ 0
20/03/2018
Text Notes 10600 7650 0    60   ~ 0
1.1
Wire Wire Line
	4600 2750 4150 2750
Wire Wire Line
	4150 2750 4150 3700
Wire Wire Line
	4400 2350 4400 3050
Wire Wire Line
	4250 3050 4400 3050
Wire Wire Line
	7800 3350 7800 3450
Wire Wire Line
	7800 1750 7800 1950
Wire Wire Line
	3750 1750 6900 1750
Wire Wire Line
	3750 2450 3750 1750
Wire Wire Line
	7300 2250 7150 2250
Wire Wire Line
	7150 3450 7550 3450
Connection ~ 7800 3450
Wire Wire Line
	7150 2450 7300 2450
Wire Wire Line
	7150 2550 7300 2550
Connection ~ 7150 2550
Wire Wire Line
	7150 2650 7300 2650
Connection ~ 7150 2650
Wire Wire Line
	7150 2750 7300 2750
Connection ~ 7150 2750
Wire Wire Line
	7150 2850 7300 2850
Connection ~ 7150 2850
Wire Wire Line
	7150 3150 7300 3150
Connection ~ 7150 3150
Wire Wire Line
	7150 3050 7300 3050
Connection ~ 7150 3050
Wire Wire Line
	8300 2150 8450 2150
Wire Wire Line
	8450 2150 8450 1650
Wire Wire Line
	8450 1650 3650 1650
Wire Wire Line
	3800 2250 3800 2750
Wire Wire Line
	3950 2350 3950 3400
Connection ~ 3950 2350
Wire Wire Line
	3950 3700 3950 3800
Wire Wire Line
	3950 4200 3950 4350
Wire Wire Line
	6300 3100 6350 3100
Wire Wire Line
	6350 3100 6350 3800
Wire Wire Line
	6350 3800 3950 3800
Connection ~ 3950 3800
Wire Wire Line
	3800 4700 4200 4700
Wire Wire Line
	7550 4050 7400 4050
Wire Wire Line
	7550 4550 7400 4550
Wire Wire Line
	7550 3450 7550 4050
Connection ~ 7550 4550
Connection ~ 7550 4050
Connection ~ 7550 3450
Wire Wire Line
	6000 4050 6900 4050
Wire Wire Line
	6000 4550 6900 4550
Wire Wire Line
	6000 5050 6900 5050
Wire Wire Line
	4500 4700 4850 4700
Wire Wire Line
	4850 4700 4850 3550
Wire Wire Line
	4850 3550 6300 3550
Wire Wire Line
	6300 3550 6300 3350
Wire Wire Line
	7050 2150 7150 2150
Wire Wire Line
	7050 2150 7050 3700
Wire Wire Line
	7050 3700 4150 3700
Wire Wire Line
	4250 4050 5400 4050
Wire Wire Line
	5400 4550 5600 4550
Wire Wire Line
	5400 5050 5600 5050
Connection ~ 5400 4550
Wire Wire Line
	4250 4050 4250 3050
Connection ~ 4400 3050
Connection ~ 5400 4050
Wire Wire Line
	6900 1850 6900 1750
Connection ~ 6900 1750
Wire Wire Line
	6900 2150 6900 2300
Wire Wire Line
	4400 3350 4600 3350
Wire Wire Line
	4600 3350 4600 3500
Connection ~ 4600 3350
Wire Wire Line
	2950 2300 3100 2300
Wire Wire Line
	3100 2300 3100 2350
Wire Wire Line
	2950 2150 3100 2150
Wire Wire Line
	3100 2150 3100 2250
Wire Wire Line
	2950 2000 3200 2000
Wire Wire Line
	3200 2000 3200 2150
Wire Wire Line
	7150 2250 7150 2150
Connection ~ 7150 2150
Wire Wire Line
	8300 2250 8550 2250
Wire Wire Line
	8550 2800 8550 3000
Wire Wire Line
	8550 3450 8550 3300
Wire Wire Line
	7550 5050 7400 5050
Connection ~ 7550 5050
Wire Wire Line
	5400 5550 5600 5550
Connection ~ 5400 5050
Wire Wire Line
	6000 5550 6900 5550
Wire Wire Line
	7550 5550 7400 5550
Wire Wire Line
	7150 2450 7150 2550
Wire Wire Line
	4500 2650 4500 1850
Wire Wire Line
	4500 1850 7250 1850
Wire Wire Line
	7250 1850 7250 2350
Wire Wire Line
	7250 2350 7300 2350
Wire Wire Line
	2950 2450 3500 2450
Wire Wire Line
	3100 2350 3500 2350
Wire Wire Line
	3100 2250 3500 2250
Wire Wire Line
	3650 1650 3650 2150
Wire Wire Line
	3650 2150 3500 2150
Wire Wire Line
	8300 2350 8650 2350
Wire Wire Line
	8650 2350 8650 1550
Wire Wire Line
	8650 1550 3550 1550
Wire Wire Line
	3550 1550 3550 1850
Wire Wire Line
	3550 2050 3500 2050
Connection ~ 3500 2450
Connection ~ 3500 2350
Connection ~ 3500 2250
Connection ~ 3500 2150
Wire Wire Line
	2950 1850 3550 1850
Connection ~ 3550 1850
Wire Wire Line
	8550 2250 8550 2500
Wire Wire Line
	5400 4050 5400 4550
Wire Wire Line
	7400 4350 7550 4350
Connection ~ 7550 4350
Wire Wire Line
	7400 4850 7550 4850
Connection ~ 7550 4850
Wire Wire Line
	7400 5350 7550 5350
Connection ~ 7550 5350
Wire Wire Line
	7550 5850 7400 5850
Connection ~ 7550 5550
$Comp
L Device:R R7
U 1 1 5AB1E613
P 6900 4200
F 0 "R7" V 6980 4200 50  0000 C CNN
F 1 "6k8" V 6900 4200 50  0000 C CNN
F 2 "" V 6830 4200 50  0001 C CNN
F 3 "" H 6900 4200 50  0001 C CNN
	1    6900 4200
	-1   0    0    1   
$EndComp
Connection ~ 6900 4050
Wire Wire Line
	6750 4350 6900 4350
$Comp
L Device:R R8
U 1 1 5AB1ECAB
P 6900 4700
F 0 "R8" V 6980 4700 50  0000 C CNN
F 1 "6k8" V 6900 4700 50  0000 C CNN
F 2 "" V 6830 4700 50  0001 C CNN
F 3 "" H 6900 4700 50  0001 C CNN
	1    6900 4700
	-1   0    0    1   
$EndComp
Connection ~ 6900 4550
Wire Wire Line
	6650 4850 6900 4850
$Comp
L Device:R R9
U 1 1 5AB1EEC7
P 6900 5200
F 0 "R9" V 6980 5200 50  0000 C CNN
F 1 "6k8" V 6900 5200 50  0000 C CNN
F 2 "" V 6830 5200 50  0001 C CNN
F 3 "" H 6900 5200 50  0001 C CNN
	1    6900 5200
	-1   0    0    1   
$EndComp
Connection ~ 6900 5050
Wire Wire Line
	6550 5350 6900 5350
$Comp
L Device:R R10
U 1 1 5AB1F113
P 6900 5700
F 0 "R10" V 6980 5700 50  0000 C CNN
F 1 "6k8" V 6900 5700 50  0000 C CNN
F 2 "" V 6830 5700 50  0001 C CNN
F 3 "" H 6900 5700 50  0001 C CNN
	1    6900 5700
	-1   0    0    1   
$EndComp
Connection ~ 6900 5550
Wire Wire Line
	6450 5850 6900 5850
Wire Wire Line
	6300 2150 6750 2150
Wire Wire Line
	6750 2150 6750 4350
Connection ~ 6900 4350
Wire Wire Line
	6300 2250 6650 2250
Wire Wire Line
	6650 2250 6650 4850
Connection ~ 6900 4850
Wire Wire Line
	6300 2350 6550 2350
Wire Wire Line
	6550 2350 6550 5350
Connection ~ 6900 5350
Wire Wire Line
	6450 2450 6450 5850
Connection ~ 6900 5850
Wire Wire Line
	6300 2450 6450 2450
Wire Wire Line
	4600 2650 4500 2650
NoConn ~ 4600 2850
Wire Wire Line
	7800 3450 7800 4050
Wire Wire Line
	7800 3450 8550 3450
Wire Wire Line
	7150 2550 7150 2650
Wire Wire Line
	7150 2650 7150 2750
Wire Wire Line
	7150 2750 7150 2850
Wire Wire Line
	7150 2850 7150 3050
Wire Wire Line
	7150 3150 7150 3450
Wire Wire Line
	7150 3050 7150 3150
Wire Wire Line
	3950 2350 4400 2350
Wire Wire Line
	3950 3800 3950 3900
Wire Wire Line
	3950 3800 3800 3800
Wire Wire Line
	7550 4550 7550 4850
Wire Wire Line
	7550 4050 7550 4350
Wire Wire Line
	7550 3450 7800 3450
Wire Wire Line
	5400 4550 5400 5050
Wire Wire Line
	4400 3050 4600 3050
Wire Wire Line
	5400 4050 5600 4050
Wire Wire Line
	6900 1750 7800 1750
Wire Wire Line
	7150 2150 7300 2150
Wire Wire Line
	7550 5050 7550 5350
Wire Wire Line
	5400 5050 5400 5550
Wire Wire Line
	3500 2450 3750 2450
Wire Wire Line
	3500 2350 3950 2350
Wire Wire Line
	3500 2250 3800 2250
Wire Wire Line
	3500 2150 3200 2150
Wire Wire Line
	3550 1850 3550 2050
Wire Wire Line
	7550 4350 7550 4550
Wire Wire Line
	7550 4850 7550 5050
Wire Wire Line
	7550 5350 7550 5550
Wire Wire Line
	7550 5550 7550 5850
Wire Wire Line
	6900 4050 7100 4050
Wire Wire Line
	6900 4550 7100 4550
Wire Wire Line
	6900 5050 7100 5050
Wire Wire Line
	6900 5550 7100 5550
Wire Wire Line
	6900 4350 7100 4350
Wire Wire Line
	6900 4850 7100 4850
Wire Wire Line
	6900 5350 7100 5350
Wire Wire Line
	6900 5850 7100 5850
$EndSCHEMATC
