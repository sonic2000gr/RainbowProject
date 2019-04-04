EESchema Schematic File Version 4
LIBS:IODecoder-cache
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
L IODecoder-rescue:VCC #PWR?
U 1 1 5A2E60EC
P 5450 3150
F 0 "#PWR?" H 5450 3000 50  0001 C CNN
F 1 "VCC" H 5450 3300 50  0000 C CNN
F 2 "" H 5450 3150 50  0001 C CNN
F 3 "" H 5450 3150 50  0001 C CNN
	1    5450 3150
	1    0    0    -1  
$EndComp
Text Notes 7450 7500 0    60   ~ 0
IO Decoder / System Backplane
Text Notes 8350 7650 0    60   ~ 0
03/04/2019
Text Notes 10600 7650 0    60   ~ 0
2.1
$Comp
L IODecoder-rescue:GND #PWR?
U 1 1 5A2E6C9B
P 5450 5500
F 0 "#PWR?" H 5450 5250 50  0001 C CNN
F 1 "GND" H 5450 5350 50  0000 C CNN
F 2 "" H 5450 5500 50  0001 C CNN
F 3 "" H 5450 5500 50  0001 C CNN
	1    5450 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 4800 5450 5400
Connection ~ 5450 5400
Wire Wire Line
	4850 4700 4850 5400
$Comp
L IODecoder-rescue:74LS138 U2
U 1 1 5A2E603E
P 5450 4350
F 0 "U2" H 5550 4850 50  0000 C CNN
F 1 "74HCT138" H 5750 3800 50  0000 C CNN
F 2 "" H 5450 4350 50  0001 C CNN
F 3 "" H 5450 4350 50  0001 C CNN
	1    5450 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 5400 5450 5500
Wire Wire Line
	4850 5400 5450 5400
Wire Wire Line
	5450 3150 5450 3200
$Comp
L Device:C_Small C1
U 1 1 5C279CFB
P 5100 3600
F 0 "C1" H 5192 3646 50  0000 L CNN
F 1 "100n" H 5192 3555 50  0000 L CNN
F 2 "" H 5100 3600 50  0001 C CNN
F 3 "~" H 5100 3600 50  0001 C CNN
	1    5100 3600
	0    1    1    0   
$EndComp
Connection ~ 5450 3200
Wire Wire Line
	5450 3200 5450 3600
$Comp
L IODecoder-rescue:GND #PWR?
U 1 1 5C27A009
P 4900 3650
F 0 "#PWR?" H 4900 3400 50  0001 C CNN
F 1 "GND" H 4900 3500 50  0000 C CNN
F 2 "" H 4900 3650 50  0001 C CNN
F 3 "" H 4900 3650 50  0001 C CNN
	1    4900 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 4500 4700 4500
Wire Wire Line
	4700 4500 4700 3200
Wire Wire Line
	3400 5400 4850 5400
Connection ~ 4850 5400
Text Notes 3350 2200 1    50   ~ 0
5V
Text Notes 4450 2200 1    50   ~ 0
3.3V
Text Notes 3450 2200 1    50   ~ 0
GND
Text Notes 4350 2200 1    50   ~ 0
~IORQ
Text Notes 2600 2200 1    50   ~ 0
A2
Text Notes 3550 2200 1    50   ~ 0
D7
Text Notes 3650 2200 1    50   ~ 0
D6
Text Notes 3750 2200 1    50   ~ 0
D5
Text Notes 3850 2200 1    50   ~ 0
D4
Text Notes 3950 2200 1    50   ~ 0
D3
Text Notes 4050 2200 1    50   ~ 0
D2
Text Notes 4150 2200 1    50   ~ 0
D1
Text Notes 4250 2200 1    50   ~ 0
D0
$Comp
L Connector:Conn_01x24_Female J3
U 1 1 5CA67FFD
P 7350 4400
F 0 "J3" H 7250 2950 50  0000 L CNN
F 1 "Backplane  (Paralleled Connectors)" H 6500 3050 50  0000 L CNN
F 2 "" H 7350 4400 50  0001 C CNN
F 3 "~" H 7350 4400 50  0001 C CNN
	1    7350 4400
	1    0    0    1   
$EndComp
$Comp
L Connector:Conn_01x12_Female J1
U 1 1 5CA47BB7
P 3800 2250
F 0 "J1" V 4200 2250 50  0000 C CNN
F 1 "Z80 Bus (Display port) - Left to Right" V 4100 2250 50  0000 C CNN
F 2 "" H 3800 2250 50  0001 C CNN
F 3 "~" H 3800 2250 50  0001 C CNN
	1    3800 2250
	0    -1   -1   0   
$EndComp
Text GLabel 3500 2600 3    50   Input ~ 0
D7
Text GLabel 3600 2600 3    50   Input ~ 0
D6
Text GLabel 3700 2600 3    50   Input ~ 0
D5
Text GLabel 3800 2600 3    50   Input ~ 0
D4
Text GLabel 3900 2600 3    50   Input ~ 0
D3
Text GLabel 4000 2600 3    50   Input ~ 0
D2
Text GLabel 4100 2600 3    50   Input ~ 0
D1
Text GLabel 4200 2600 3    50   Input ~ 0
D0
Text GLabel 6950 5100 0    50   Input ~ 0
D0
Text GLabel 6950 5000 0    50   Input ~ 0
D1
Text GLabel 6950 4900 0    50   Input ~ 0
D2
Text GLabel 6950 4800 0    50   Input ~ 0
D3
Text GLabel 6950 4700 0    50   Input ~ 0
D4
Text GLabel 6950 4600 0    50   Input ~ 0
D5
Text GLabel 6950 4500 0    50   Input ~ 0
D6
Text GLabel 6950 4400 0    50   Input ~ 0
D7
Wire Wire Line
	7150 4400 6950 4400
Wire Wire Line
	6950 4500 7150 4500
Wire Wire Line
	7150 4600 6950 4600
Wire Wire Line
	7150 4700 6950 4700
Wire Wire Line
	7150 4800 6950 4800
Wire Wire Line
	7150 4900 6950 4900
Wire Wire Line
	7150 5000 6950 5000
Wire Wire Line
	7150 5100 6950 5100
Text Notes 7390 3235 0    50   ~ 0
5V
Text Notes 7390 3335 0    50   ~ 0
3.3V
Text Notes 7390 3435 0    50   ~ 0
GND
Text Notes 7390 3535 0    50   ~ 0
~SEL0 (KBD)
Text Notes 7390 3635 0    50   ~ 0
~SEL1 (LCD)
Text Notes 7390 3735 0    50   ~ 0
~SEL2 (SPK)
Text Notes 7390 3835 0    50   ~ 0
~SEL3 (JOY)
Text Notes 7390 3935 0    50   ~ 0
~SEL4 (RPI)
Text Notes 7390 4035 0    50   ~ 0
RES
Text Notes 7390 4135 0    50   ~ 0
RES
Text Notes 7390 4235 0    50   ~ 0
RES
Text Notes 7390 4335 0    50   ~ 0
GND
Text Notes 7390 4435 0    50   ~ 0
D7
Text Notes 7390 4535 0    50   ~ 0
D6
Text Notes 7385 4630 0    50   ~ 0
D5
Text Notes 7385 4730 0    50   ~ 0
D4
Text Notes 7385 4830 0    50   ~ 0
D3
Text Notes 7385 4930 0    50   ~ 0
D2
Text Notes 7385 5030 0    50   ~ 0
D1
Text Notes 7385 5130 0    50   ~ 0
D0
Text Notes 7385 5230 0    50   ~ 0
~RD
Text Notes 7385 5330 0    50   ~ 0
~WR
Text Notes 7385 5430 0    50   ~ 0
GND
Text Notes 7385 5530 0    50   ~ 0
RES
Wire Wire Line
	4700 3200 5450 3200
Connection ~ 5450 3600
Wire Wire Line
	5450 3600 5450 3900
Wire Wire Line
	4400 3300 4400 2450
Wire Wire Line
	4700 3200 3300 3200
Wire Wire Line
	3300 3200 3300 2450
Connection ~ 4700 3200
Wire Wire Line
	3400 2450 3400 3400
Wire Wire Line
	3500 2450 3500 2600
Wire Wire Line
	3600 2450 3600 2600
Wire Wire Line
	3700 2450 3700 2600
Wire Wire Line
	3800 2450 3800 2600
Wire Wire Line
	3900 2450 3900 2600
Wire Wire Line
	4000 2450 4000 2600
Wire Wire Line
	4100 2450 4100 2600
Wire Wire Line
	4200 2450 4200 2600
Wire Wire Line
	4300 4600 4300 2450
Wire Wire Line
	4300 4600 4850 4600
$Comp
L Connector:Conn_01x05_Female J2
U 1 1 5CA77029
P 2550 2250
F 0 "J2" V 2950 2350 50  0000 R CNN
F 1 "Secondary Connector - Left to Right" V 2850 3300 50  0000 R CNN
F 2 "" H 2550 2250 50  0001 C CNN
F 3 "~" H 2550 2250 50  0001 C CNN
	1    2550 2250
	0    -1   -1   0   
$EndComp
Text Notes 2700 2200 1    50   ~ 0
A1
Text Notes 2800 2200 1    50   ~ 0
A0
Text Notes 2400 2200 1    50   ~ 0
~RD
Text Notes 2500 2200 1    50   ~ 0
~WR
Wire Wire Line
	2550 4200 2550 2450
Wire Wire Line
	2550 4200 4850 4200
Wire Wire Line
	2650 4100 2650 2450
Wire Wire Line
	2650 4100 4850 4100
Wire Wire Line
	2750 4000 2750 2450
Wire Wire Line
	2750 4000 4850 4000
Wire Wire Line
	2350 2450 2350 5200
Wire Wire Line
	2450 2450 2450 5300
Wire Wire Line
	7150 3300 4400 3300
Wire Wire Line
	7150 3200 5450 3200
Wire Wire Line
	5200 3600 5450 3600
Wire Wire Line
	5000 3600 4900 3600
Wire Wire Line
	4900 3600 4900 3650
Wire Wire Line
	7150 3400 3400 3400
Connection ~ 3400 3400
Wire Wire Line
	3400 3400 3400 5400
Wire Wire Line
	7150 5400 6750 5400
Wire Wire Line
	2450 5300 7150 5300
Wire Wire Line
	2350 5200 7150 5200
NoConn ~ 7150 5500
Wire Wire Line
	6050 4000 6300 4000
Wire Wire Line
	6300 4000 6300 3500
Wire Wire Line
	6300 3500 7150 3500
Wire Wire Line
	6050 4100 6350 4100
Wire Wire Line
	6350 4100 6350 3600
Wire Wire Line
	6350 3600 7150 3600
Wire Wire Line
	6050 4200 6400 4200
Wire Wire Line
	6400 4200 6400 3700
Wire Wire Line
	6400 3700 7150 3700
Wire Wire Line
	6050 4300 6450 4300
Wire Wire Line
	6450 4300 6450 3800
Wire Wire Line
	6450 3800 7150 3800
Wire Wire Line
	6050 4400 6500 4400
Wire Wire Line
	6500 4400 6500 3900
Wire Wire Line
	6500 3900 7150 3900
Wire Wire Line
	6050 4500 6550 4500
Wire Wire Line
	6550 4500 6550 4000
Wire Wire Line
	6550 4000 7150 4000
Wire Wire Line
	6050 4600 6600 4600
Wire Wire Line
	6600 4600 6600 4100
Wire Wire Line
	6600 4100 7150 4100
Wire Wire Line
	6050 4700 6650 4700
Wire Wire Line
	6650 4700 6650 4200
Wire Wire Line
	6650 4200 7150 4200
Wire Wire Line
	7150 4300 6750 4300
Wire Wire Line
	6750 4300 6750 5400
Connection ~ 6750 5400
Wire Wire Line
	6750 5400 5450 5400
$EndSCHEMATC
