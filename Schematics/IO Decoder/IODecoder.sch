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
P 3950 2250
F 0 "#PWR?" H 3950 2100 50  0001 C CNN
F 1 "VCC" H 3950 2400 50  0000 C CNN
F 2 "" H 3950 2250 50  0001 C CNN
F 3 "" H 3950 2250 50  0001 C CNN
	1    3950 2250
	1    0    0    -1  
$EndComp
Text Notes 7450 7500 0    60   ~ 0
IO Decoder
Text Notes 8350 7650 0    60   ~ 0
18/01/2019
Text Notes 10600 7650 0    60   ~ 0
1.0
$Comp
L IODecoder-rescue:GND #PWR?
U 1 1 5A2E6C9B
P 3950 4600
F 0 "#PWR?" H 3950 4350 50  0001 C CNN
F 1 "GND" H 3950 4450 50  0000 C CNN
F 2 "" H 3950 4600 50  0001 C CNN
F 3 "" H 3950 4600 50  0001 C CNN
	1    3950 4600
	1    0    0    -1  
$EndComp
Text GLabel 2400 3800 0    60   Input ~ 0
Z80_~ΙΟRQ
Text GLabel 2400 3100 0    60   Input ~ 0
Z80_A0
Wire Wire Line
	3950 3900 3950 4350
Connection ~ 3950 4350
Wire Wire Line
	3350 3800 3350 4350
Wire Wire Line
	2400 3100 3350 3100
$Comp
L IODecoder-rescue:74LS138 U2
U 1 1 5A2E603E
P 3950 3450
F 0 "U2" H 4050 3950 50  0000 C CNN
F 1 "74HCT138" H 4250 2900 50  0000 C CNN
F 2 "" H 3950 3450 50  0001 C CNN
F 3 "" H 3950 3450 50  0001 C CNN
	1    3950 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 4350 3950 4600
Wire Wire Line
	3350 4350 3950 4350
Wire Wire Line
	3950 2250 3950 2500
Text GLabel 2400 3250 0    60   Input ~ 0
Z80_A1
Text GLabel 2400 3400 0    60   Input ~ 0
Z80_A2
Wire Wire Line
	3350 3700 2600 3700
Wire Wire Line
	2600 3700 2600 3800
Wire Wire Line
	2600 3800 2400 3800
Wire Wire Line
	2400 3250 2500 3250
Wire Wire Line
	2500 3250 2500 3200
Wire Wire Line
	2500 3200 3350 3200
Wire Wire Line
	2400 3400 2550 3400
Wire Wire Line
	2550 3400 2550 3300
Wire Wire Line
	2550 3300 3350 3300
Text GLabel 5100 3300 2    60   Input ~ 0
LCD_~CS
Wire Wire Line
	4550 3100 5100 3100
Text GLabel 5100 3100 2    60   Input ~ 0
KBD_~CS
Text GLabel 5100 3700 2    60   Input ~ 0
SPK_~CS
Text GLabel 5100 3500 2    60   Input ~ 0
RPI_~CS
Wire Wire Line
	4550 3200 5000 3200
Wire Wire Line
	5000 3200 5000 3300
Wire Wire Line
	5000 3300 5100 3300
Wire Wire Line
	4550 3300 4950 3300
Wire Wire Line
	4950 3300 4950 3500
Wire Wire Line
	4950 3500 5100 3500
Wire Wire Line
	4550 3400 4900 3400
Wire Wire Line
	4900 3400 4900 3700
Wire Wire Line
	4900 3700 5100 3700
$Comp
L Device:C_Small C1
U 1 1 5C279CFB
P 3600 2600
F 0 "C1" H 3692 2646 50  0000 L CNN
F 1 "22pf" H 3692 2555 50  0000 L CNN
F 2 "" H 3600 2600 50  0001 C CNN
F 3 "~" H 3600 2600 50  0001 C CNN
	1    3600 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 2500 3950 2500
Connection ~ 3950 2500
Wire Wire Line
	3950 2500 3950 3000
$Comp
L IODecoder-rescue:GND #PWR?
U 1 1 5C27A009
P 3600 2800
F 0 "#PWR?" H 3600 2550 50  0001 C CNN
F 1 "GND" H 3600 2650 50  0000 C CNN
F 2 "" H 3600 2800 50  0001 C CNN
F 3 "" H 3600 2800 50  0001 C CNN
	1    3600 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 2700 3600 2800
Wire Wire Line
	3350 3600 3200 3600
Wire Wire Line
	3200 3600 3200 2500
Wire Wire Line
	3200 2500 3600 2500
Connection ~ 3600 2500
$EndSCHEMATC
