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
L MCU_Module:Arduino_Nano_v3.x A1
U 1 1 5C45956A
P 4800 3650
F 0 "A1" H 4800 2500 50  0000 C CNN
F 1 "Arduino Nano" H 4800 2400 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 4950 2700 50  0001 L CNN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 4800 2650 50  0001 C CNN
	1    4800 3650
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x12_Female J1
U 1 1 5C467285
P 3800 3650
F 0 "J1" H 3650 3000 50  0000 L CNN
F 1 "Conn_01x09_Female" H 3350 3150 50  0001 L CNN
F 2 "" H 3800 3650 50  0001 C CNN
F 3 "~" H 3800 3650 50  0001 C CNN
	1    3800 3650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4900 4650 4800 4650
Wire Wire Line
	5000 2650 5000 2550
Wire Wire Line
	5000 2550 4100 2550
Wire Wire Line
	5400 2600 5400 4650
Wire Wire Line
	5400 4650 4900 4650
Connection ~ 4900 4650
$Comp
L Amplifier_Audio:LM386 U1
U 1 1 5C468122
P 6500 3150
F 0 "U1" H 6050 3300 50  0000 L CNN
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
$Comp
L power:GND #PWR?
U 1 1 5C46860C
P 6950 3900
F 0 "#PWR?" H 6950 3650 50  0001 C CNN
F 1 "GND" H 6955 3727 50  0000 C CNN
F 2 "" H 6950 3900 50  0001 C CNN
F 3 "" H 6950 3900 50  0001 C CNN
	1    6950 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 3800 6950 3850
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
	7250 3250 7250 3850
Wire Wire Line
	7250 3850 6950 3850
Connection ~ 6950 3850
Wire Wire Line
	6950 3850 6950 3900
Wire Wire Line
	6400 2850 6400 2550
Wire Wire Line
	6400 2550 5000 2550
Connection ~ 5000 2550
Wire Wire Line
	5400 4650 6150 4650
Wire Wire Line
	6150 4650 6150 3850
Wire Wire Line
	6150 3850 6400 3850
Connection ~ 5400 4650
Wire Wire Line
	6400 3450 6400 3600
Connection ~ 6400 3850
Wire Wire Line
	6400 3850 6950 3850
Wire Wire Line
	6200 3250 6200 3600
Wire Wire Line
	6200 3600 6400 3600
Connection ~ 6400 3600
Wire Wire Line
	6400 3600 6400 3850
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
Wire Wire Line
	5850 3050 5600 3050
Wire Wire Line
	5600 3050 5600 4750
Wire Wire Line
	5600 4750 4150 4750
Wire Wire Line
	4150 4750 4150 4350
Wire Wire Line
	4150 4350 4300 4350
Wire Wire Line
	4000 4250 4300 4250
Wire Wire Line
	4000 4150 4300 4150
Wire Wire Line
	4000 4050 4300 4050
Wire Wire Line
	4000 3950 4300 3950
Wire Wire Line
	4000 3850 4300 3850
Wire Wire Line
	4000 3750 4300 3750
Wire Wire Line
	4000 3650 4300 3650
Wire Wire Line
	4000 3550 4300 3550
Wire Wire Line
	4000 3450 4300 3450
Wire Wire Line
	4000 3350 4300 3350
Wire Wire Line
	4000 3150 4100 3150
Wire Wire Line
	4100 3150 4100 2550
Wire Wire Line
	4150 2600 4150 3250
Wire Wire Line
	4150 3250 4000 3250
Wire Wire Line
	4150 2600 5400 2600
Text Notes 3650 3200 0    50   ~ 0
5V
Text Notes 3600 3300 0    50   ~ 0
GND
Text Notes 3350 3400 0    50   ~ 0
SOUND_~CS
Text Notes 3450 3500 0    50   ~ 0
Z80_~WR
Text Notes 3650 3600 0    50   ~ 0
D7
Text Notes 3650 3700 0    50   ~ 0
D6
Text Notes 3650 3800 0    50   ~ 0
D5
Text Notes 3650 3900 0    50   ~ 0
D4
Text Notes 3650 4000 0    50   ~ 0
D3
Text Notes 3650 4100 0    50   ~ 0
D2
Text Notes 3650 4200 0    50   ~ 0
D1
Text Notes 3650 4300 0    50   ~ 0
D0
$EndSCHEMATC
