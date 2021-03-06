EESchema Schematic File Version 4
LIBS:soundcard-cache
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
L Amplifier_Audio:LM386 U2
U 1 1 5C468122
P 6500 3150
F 0 "U2" H 6050 3300 50  0000 L CNN
F 1 "LM386" H 6050 3400 50  0000 L CNN
F 2 "" H 6600 3250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm386.pdf" H 6700 3350 50  0001 C CNN
	1    6500 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:Speaker LS1
U 1 1 5C4681CE
P 7550 3150
F 0 "LS1" H 7720 3146 50  0000 L CNN
F 1 "Speaker" H 7720 3055 50  0000 L CNN
F 2 "" H 7550 2950 50  0001 C CNN
F 3 "~" H 7540 3100 50  0001 C CNN
	1    7550 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5C468318
P 6950 3350
F 0 "C1" H 7042 3396 50  0000 L CNN
F 1 "47n" H 7042 3305 50  0000 L CNN
F 2 "" H 6950 3350 50  0001 C CNN
F 3 "~" H 6950 3350 50  0001 C CNN
	1    6950 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5C468401
P 6950 3650
F 0 "R1" H 7020 3696 50  0000 L CNN
F 1 "10" H 7020 3605 50  0000 L CNN
F 2 "" V 6880 3650 50  0001 C CNN
F 3 "~" H 6950 3650 50  0001 C CNN
	1    6950 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 3500 6950 3450
Wire Wire Line
	6950 3250 6950 3150
Wire Wire Line
	6950 3150 6800 3150
$Comp
L Device:CP_Small C2
U 1 1 5C468BB0
P 7150 3150
F 0 "C2" V 7375 3150 50  0000 C CNN
F 1 "220u" V 7284 3150 50  0000 C CNN
F 2 "" H 7150 3150 50  0001 C CNN
F 3 "~" H 7150 3150 50  0001 C CNN
	1    7150 3150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7050 3150 6950 3150
Connection ~ 6950 3150
Wire Wire Line
	7250 3150 7350 3150
Wire Wire Line
	7350 3250 7250 3250
Wire Wire Line
	6400 3450 6400 3600
Connection ~ 6400 5300
Wire Wire Line
	6400 5300 6950 5300
Wire Wire Line
	6200 3250 6200 3600
Wire Wire Line
	6200 3600 6400 3600
Connection ~ 6400 3600
Wire Wire Line
	6400 3600 6400 5300
$Comp
L Device:R_POT RV1
U 1 1 5C46A4BD
P 5850 3200
F 0 "RV1" H 5780 3246 50  0000 R CNN
F 1 "10k" H 5780 3155 50  0000 R CNN
F 2 "" H 5850 3200 50  0001 C CNN
F 3 "~" H 5850 3200 50  0001 C CNN
	1    5850 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 3200 6050 3200
Wire Wire Line
	6050 3200 6050 3050
Wire Wire Line
	6050 3050 6200 3050
Wire Wire Line
	5850 3350 5850 3600
Wire Wire Line
	5850 3600 6200 3600
Connection ~ 6200 3600
$Comp
L MCU_Microchip_ATmega:ATmega328P-PU U1
U 1 1 5C879101
P 4350 3700
F 0 "U1" H 4050 3050 50  0000 R CNN
F 1 "ATmega328P-PU" H 4600 2950 50  0000 R CNN
F 2 "Package_DIP:DIP-28_W7.62mm" H 4350 3700 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 4350 3700 50  0001 C CNN
	1    4350 3700
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x24_Male J1
U 1 1 5C87A5A2
P 2450 3550
F 0 "J1" H 2556 4828 50  0000 C CNN
F 1 "Rainbow Bus Connector" V 2070 3650 50  0000 C CNN
F 2 "" H 2450 3550 50  0001 C CNN
F 3 "~" H 2450 3550 50  0001 C CNN
	1    2450 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 2200 4350 2150
Wire Wire Line
	4350 2150 3850 2150
Wire Wire Line
	3200 2150 3200 2450
Wire Wire Line
	3200 2450 2650 2450
Wire Wire Line
	4450 2200 4450 2150
Wire Wire Line
	4450 2150 4350 2150
Connection ~ 4350 2150
Wire Wire Line
	2650 2650 3250 2650
NoConn ~ 3750 2500
Wire Wire Line
	4350 5200 4350 5300
Wire Wire Line
	4350 5300 3250 5300
Wire Wire Line
	3250 5300 3250 4650
Connection ~ 4350 5300
Wire Wire Line
	6400 2150 5350 2150
Wire Wire Line
	6400 2150 6400 2850
Connection ~ 4450 2150
Wire Wire Line
	5850 3050 5850 2500
Wire Wire Line
	4950 2500 5850 2500
Wire Wire Line
	4350 5300 6100 5300
Wire Wire Line
	7250 3250 7250 5300
Wire Wire Line
	7250 5300 6950 5300
Connection ~ 6950 5300
$Comp
L power:GND #PWR?
U 1 1 5C8810F2
P 6100 5500
F 0 "#PWR?" H 6100 5250 50  0001 C CNN
F 1 "GND" H 6105 5327 50  0000 C CNN
F 2 "" H 6100 5500 50  0001 C CNN
F 3 "" H 6100 5500 50  0001 C CNN
	1    6100 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 5500 6100 5300
Connection ~ 6100 5300
Wire Wire Line
	6100 5300 6400 5300
Wire Wire Line
	2650 3550 3250 3550
Connection ~ 3250 3550
Wire Wire Line
	3250 3550 3250 2650
Wire Wire Line
	2650 4650 3250 4650
Connection ~ 3250 4650
Wire Wire Line
	3250 4650 3250 3550
Wire Wire Line
	4950 4900 5150 4900
Wire Wire Line
	5150 4900 5150 5400
Wire Wire Line
	5150 5400 3550 5400
Wire Wire Line
	3550 5400 3550 3650
Wire Wire Line
	3550 3650 2650 3650
Wire Wire Line
	4950 4800 5200 4800
Wire Wire Line
	5200 4800 5200 5450
Wire Wire Line
	5200 5450 3650 5450
Wire Wire Line
	3650 5450 3650 3750
Wire Wire Line
	3650 3750 2650 3750
Wire Wire Line
	4950 4700 5250 4700
Wire Wire Line
	5250 4700 5250 5500
Wire Wire Line
	5250 5500 3450 5500
Wire Wire Line
	3450 5500 3450 3850
Wire Wire Line
	3450 3850 2650 3850
Wire Wire Line
	4950 4600 5300 4600
Wire Wire Line
	5300 4600 5300 5550
Wire Wire Line
	5300 5550 3350 5550
Wire Wire Line
	3350 5550 3350 3950
Wire Wire Line
	3350 3950 2650 3950
Wire Wire Line
	4950 4500 5350 4500
Wire Wire Line
	5350 4500 5350 5600
Wire Wire Line
	5350 5600 3150 5600
Wire Wire Line
	3150 5600 3150 4050
Wire Wire Line
	3150 4050 2650 4050
Wire Wire Line
	4950 4400 5400 4400
Wire Wire Line
	5400 4400 5400 5650
Wire Wire Line
	5400 5650 3050 5650
Wire Wire Line
	3050 5650 3050 4150
Wire Wire Line
	3050 4150 2650 4150
Wire Wire Line
	4950 4300 5450 4300
Wire Wire Line
	5450 4300 5450 5700
Wire Wire Line
	5450 5700 2950 5700
Wire Wire Line
	2950 5700 2950 4250
Wire Wire Line
	2950 4250 2650 4250
Wire Wire Line
	4950 4200 5500 4200
Wire Wire Line
	5500 4200 5500 5750
Wire Wire Line
	5500 5750 2850 5750
Wire Wire Line
	2850 5750 2850 4350
Wire Wire Line
	2850 4350 2650 4350
Wire Wire Line
	2750 4550 2750 5800
Wire Wire Line
	2750 5800 5550 5800
Wire Wire Line
	5550 5800 5550 3500
Wire Wire Line
	5550 3500 4950 3500
Wire Wire Line
	2650 4550 2750 4550
Wire Wire Line
	4950 3400 5550 3400
Wire Wire Line
	5550 3400 5550 2000
Wire Wire Line
	5550 2000 3400 2000
Wire Wire Line
	3400 2000 3400 2950
Wire Wire Line
	3400 2950 2650 2950
NoConn ~ 4950 2600
NoConn ~ 4950 2700
NoConn ~ 4950 2800
NoConn ~ 4950 2900
NoConn ~ 4950 3000
NoConn ~ 4950 3100
NoConn ~ 4950 3200
NoConn ~ 4950 3600
NoConn ~ 4950 3700
NoConn ~ 4950 3800
NoConn ~ 4950 3900
NoConn ~ 6600 3450
NoConn ~ 6500 3450
NoConn ~ 6500 2850
NoConn ~ 2650 2550
NoConn ~ 2650 2750
NoConn ~ 2650 2850
NoConn ~ 2650 3050
NoConn ~ 2650 3150
NoConn ~ 2650 3250
NoConn ~ 2650 3350
NoConn ~ 2650 3450
NoConn ~ 2650 4450
NoConn ~ 2650 4750
$Comp
L Device:R R2
U 1 1 5C8E9E82
P 5350 3850
F 0 "R2" H 5420 3896 50  0000 L CNN
F 1 "10k" H 5420 3805 50  0000 L CNN
F 2 "" V 5280 3850 50  0001 C CNN
F 3 "~" H 5350 3850 50  0001 C CNN
	1    5350 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 4000 4950 4000
Wire Wire Line
	5350 3700 5350 2150
Connection ~ 5350 2150
Wire Wire Line
	5350 2150 4450 2150
Wire Wire Line
	6950 3800 6950 5300
Text Label 2250 2490 0    50   ~ 0
5V
Text Label 2250 2680 0    50   ~ 0
GND
Text Label 2250 2980 0    50   ~ 0
~SEL2
Text Label 2250 3590 0    50   ~ 0
GND
Text Label 2250 3690 0    50   ~ 0
D7
Text Label 2250 3780 0    50   ~ 0
D6
Text Label 2250 3880 0    50   ~ 0
D5
Text Label 2250 3990 0    50   ~ 0
D4
Text Label 2250 4090 0    50   ~ 0
D3
Text Label 2250 4190 0    50   ~ 0
D2
Text Label 2250 4290 0    50   ~ 0
D1
Text Label 2250 4390 0    50   ~ 0
D0
Text Label 2230 4580 0    50   ~ 0
GND
Text Label 2200 4690 0    50   ~ 0
~WRITE
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5C89360F
P 6800 5750
F 0 "#FLG?" H 6800 5825 50  0001 C CNN
F 1 "PWR_FLAG" H 6800 5924 50  0000 C CNN
F 2 "" H 6800 5750 50  0001 C CNN
F 3 "~" H 6800 5750 50  0001 C CNN
	1    6800 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 5750 6400 5750
Wire Wire Line
	6400 5750 6400 5300
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5C8962B8
P 3850 1750
F 0 "#FLG?" H 3850 1825 50  0001 C CNN
F 1 "PWR_FLAG" H 3850 1924 50  0000 C CNN
F 2 "" H 3850 1750 50  0001 C CNN
F 3 "~" H 3850 1750 50  0001 C CNN
	1    3850 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 1750 3850 2150
Connection ~ 3850 2150
Wire Wire Line
	3850 2150 3200 2150
$EndSCHEMATC
