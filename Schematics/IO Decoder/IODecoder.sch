EESchema Schematic File Version 4
LIBS:IODecoder-cache
EELAYER 29 0
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
IO Decoder / Passive Backplane
Text Notes 8350 7650 0    60   ~ 0
03/04/2019
Text Notes 10600 7650 0    60   ~ 0
2.0
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
	5450 3150 5450 3400
$Comp
L Device:C_Small C1
U 1 1 5C279CFB
P 5100 3500
F 0 "C1" H 5192 3546 50  0000 L CNN
F 1 "100n" H 5192 3455 50  0000 L CNN
F 2 "" H 5100 3500 50  0001 C CNN
F 3 "~" H 5100 3500 50  0001 C CNN
	1    5100 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 3400 5450 3400
Connection ~ 5450 3400
Wire Wire Line
	5450 3400 5450 3900
$Comp
L IODecoder-rescue:GND #PWR?
U 1 1 5C27A009
P 5100 3700
F 0 "#PWR?" H 5100 3450 50  0001 C CNN
F 1 "GND" H 5100 3550 50  0000 C CNN
F 2 "" H 5100 3700 50  0001 C CNN
F 3 "" H 5100 3700 50  0001 C CNN
	1    5100 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 3600 5100 3700
Wire Wire Line
	4850 4500 4700 4500
Wire Wire Line
	4700 4500 4700 3400
Wire Wire Line
	4700 3400 5100 3400
Connection ~ 5100 3400
NoConn ~ 6050 4500
NoConn ~ 6050 4600
NoConn ~ 6050 4700
Wire Wire Line
	3000 3400 4700 3400
Connection ~ 4700 3400
Wire Wire Line
	3200 5400 4850 5400
Connection ~ 4850 5400
Wire Wire Line
	3300 4600 4850 4600
Wire Wire Line
	3600 4200 4850 4200
Wire Wire Line
	3700 4100 4850 4100
Wire Wire Line
	3800 4000 4850 4000
Text Notes 3050 2200 1    50   ~ 0
5V
Text Notes 3150 2200 1    50   ~ 0
3.3V
Text Notes 3250 2200 1    50   ~ 0
GND
Text Notes 3350 2200 1    50   ~ 0
~IORQ
Text Notes 3450 2200 1    50   ~ 0
~RD
Text Notes 3550 2200 1    50   ~ 0
~WR
Text Notes 3650 2200 1    50   ~ 0
A2
Text Notes 3750 2200 1    50   ~ 0
A1
Text Notes 3850 2200 1    50   ~ 0
A0
Text Notes 3950 2200 1    50   ~ 0
D7
Text Notes 4050 2200 1    50   ~ 0
D6
Text Notes 4150 2200 1    50   ~ 0
D5
Text Notes 4250 2200 1    50   ~ 0
D4
Text Notes 4350 2200 1    50   ~ 0
D3
Text Notes 4450 2200 1    50   ~ 0
D2
Text Notes 4550 2200 1    50   ~ 0
D1
Text Notes 4650 2200 1    50   ~ 0
D0
$Comp
L Connector:Conn_01x24_Female J2
U 1 1 5CA67FFD
P 8350 4300
F 0 "J2" H 8250 2850 50  0000 L CNN
F 1 "Backplane  (Paralleled Connectors)" H 7500 2950 50  0000 L CNN
F 2 "" H 8350 4300 50  0001 C CNN
F 3 "~" H 8350 4300 50  0001 C CNN
	1    8350 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 3500 6800 3500
Wire Wire Line
	6800 3500 6800 4000
Wire Wire Line
	6050 4000 6800 4000
Wire Wire Line
	8150 3600 6900 3600
Wire Wire Line
	6900 3600 6900 4100
Wire Wire Line
	6050 4100 6900 4100
Wire Wire Line
	8150 3700 7000 3700
Wire Wire Line
	7000 3700 7000 4200
Wire Wire Line
	6050 4200 7000 4200
Wire Wire Line
	8150 3800 7150 3800
Wire Wire Line
	7150 3800 7150 4300
Wire Wire Line
	6050 4300 7150 4300
Wire Wire Line
	8150 3900 7250 3900
Wire Wire Line
	7250 3900 7250 4400
Wire Wire Line
	6050 4400 7250 4400
Wire Wire Line
	3400 5000 7550 5000
Wire Wire Line
	7550 5000 7550 5200
Wire Wire Line
	7550 5200 8150 5200
Wire Wire Line
	3500 5100 7400 5100
Wire Wire Line
	7400 5100 7400 5300
Wire Wire Line
	7400 5300 8150 5300
Wire Wire Line
	5550 3200 5550 3400
Wire Wire Line
	5550 3400 5450 3400
Wire Wire Line
	5550 3200 8150 3200
Wire Wire Line
	8150 3300 5700 3300
Wire Wire Line
	5700 3300 5700 3650
Wire Wire Line
	5700 3650 3100 3650
Wire Wire Line
	8150 3400 6300 3400
Wire Wire Line
	6300 5400 5450 5400
NoConn ~ 8150 4000
NoConn ~ 8150 4100
NoConn ~ 8150 4200
Wire Wire Line
	6300 3400 6300 4500
Wire Wire Line
	3800 2450 3800 4000
Wire Wire Line
	3700 2450 3700 4100
Wire Wire Line
	3600 4200 3600 2450
Wire Wire Line
	3500 2450 3500 5100
Wire Wire Line
	3400 2450 3400 5000
Wire Wire Line
	3300 2450 3300 4600
Wire Wire Line
	3200 2450 3200 5400
Wire Wire Line
	3100 3650 3100 2450
Wire Wire Line
	3000 2450 3000 3400
$Comp
L Connector:Conn_01x17_Female J1
U 1 1 5CA47BB7
P 3800 2250
F 0 "J1" V 3800 1250 50  0000 C CNN
F 1 "Z80 Bus" V 3700 1150 50  0000 C CNN
F 2 "" H 3800 2250 50  0001 C CNN
F 3 "~" H 3800 2250 50  0001 C CNN
	1    3800 2250
	0    -1   -1   0   
$EndComp
Text GLabel 3900 2600 3    50   Input ~ 0
D7
Text GLabel 4000 2600 3    50   Input ~ 0
D6
Text GLabel 4100 2600 3    50   Input ~ 0
D5
Text GLabel 4200 2600 3    50   Input ~ 0
D4
Text GLabel 4300 2600 3    50   Input ~ 0
D3
Text GLabel 4400 2600 3    50   Input ~ 0
D2
Text GLabel 4500 2600 3    50   Input ~ 0
D1
Text GLabel 4600 2600 3    50   Input ~ 0
D0
Text GLabel 7950 5100 0    50   Input ~ 0
D0
Text GLabel 7950 5000 0    50   Input ~ 0
D1
Text GLabel 7950 4900 0    50   Input ~ 0
D2
Text GLabel 7950 4800 0    50   Input ~ 0
D3
Text GLabel 7950 4700 0    50   Input ~ 0
D4
Text GLabel 7950 4600 0    50   Input ~ 0
D5
Text GLabel 7950 4500 0    50   Input ~ 0
D6
Text GLabel 7950 4400 0    50   Input ~ 0
D7
Wire Wire Line
	8150 4300 7350 4300
Wire Wire Line
	7350 4300 7350 4500
Wire Wire Line
	7350 4500 6300 4500
Connection ~ 6300 4500
Wire Wire Line
	6300 4500 6300 5400
Wire Wire Line
	8150 4400 7950 4400
Wire Wire Line
	7950 4500 8150 4500
Wire Wire Line
	8150 4600 7950 4600
Wire Wire Line
	8150 4700 7950 4700
Wire Wire Line
	8150 4800 7950 4800
Wire Wire Line
	8150 4900 7950 4900
Wire Wire Line
	8150 5000 7950 5000
Wire Wire Line
	8150 5100 7950 5100
Wire Wire Line
	6300 5400 8150 5400
Connection ~ 6300 5400
NoConn ~ 8150 5500
Wire Wire Line
	4600 2450 4600 2600
Wire Wire Line
	4500 2450 4500 2600
Wire Wire Line
	4400 2450 4400 2600
Wire Wire Line
	4300 2450 4300 2600
Wire Wire Line
	4200 2450 4200 2600
Wire Wire Line
	4100 2450 4100 2600
Wire Wire Line
	4000 2450 4000 2600
Wire Wire Line
	3900 2450 3900 2600
Text Notes 8390 3235 0    50   ~ 0
5V
Text Notes 8390 3335 0    50   ~ 0
3.3V
Text Notes 8390 3435 0    50   ~ 0
GND
Text Notes 8390 3535 0    50   ~ 0
~SEL0 (KBD)
Text Notes 8390 3635 0    50   ~ 0
~SEL1 (LCD)
Text Notes 8390 3735 0    50   ~ 0
~SEL2 (SPK)
Text Notes 8390 3835 0    50   ~ 0
~SEL3 (JOY)
Text Notes 8390 3935 0    50   ~ 0
~SEL4 (RPI)
Text Notes 8390 4035 0    50   ~ 0
RES
Text Notes 8390 4135 0    50   ~ 0
RES
Text Notes 8390 4235 0    50   ~ 0
RES
Text Notes 8390 4335 0    50   ~ 0
GND
Text Notes 8390 4435 0    50   ~ 0
D7
Text Notes 8390 4535 0    50   ~ 0
D6
Text Notes 8385 4630 0    50   ~ 0
D5
Text Notes 8385 4730 0    50   ~ 0
D4
Text Notes 8385 4830 0    50   ~ 0
D3
Text Notes 8385 4930 0    50   ~ 0
D2
Text Notes 8385 5030 0    50   ~ 0
D1
Text Notes 8385 5130 0    50   ~ 0
D0
Text Notes 8385 5230 0    50   ~ 0
~RD
Text Notes 8385 5330 0    50   ~ 0
~WR
Text Notes 8385 5430 0    50   ~ 0
GND
Text Notes 8385 5530 0    50   ~ 0
RES
$EndSCHEMATC
