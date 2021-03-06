EESchema Schematic File Version 4
LIBS:Z80Test-cache
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
L Z80Test-rescue:Z80CPU-Zilog U1
U 1 1 5A1A6EC8
P 5600 3850
F 0 "U1" H 5050 5250 50  0000 L CNN
F 1 "Z80ACPU" H 5850 5250 50  0000 L CNN
F 2 "" H 5600 4250 50  0001 C CNN
F 3 "" H 5600 4250 50  0001 C CNN
	1    5600 3850
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5A1A6F3C
P 3550 2350
F 0 "#PWR?" H 3550 2200 50  0001 C CNN
F 1 "VCC" H 3550 2500 50  0000 C CNN
F 2 "" H 3550 2350 50  0001 C CNN
F 3 "" H 3550 2350 50  0001 C CNN
	1    3550 2350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5A1A6F76
P 3550 5400
F 0 "#PWR?" H 3550 5150 50  0001 C CNN
F 1 "GND" H 3550 5250 50  0000 C CNN
F 2 "" H 3550 5400 50  0001 C CNN
F 3 "" H 3550 5400 50  0001 C CNN
	1    3550 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C1
U 1 1 5A1A6FD7
P 3550 5050
F 0 "C1" H 3575 5150 50  0000 L CNN
F 1 "1μF" H 3575 4950 50  0000 L CNN
F 2 "" H 3550 5050 50  0001 C CNN
F 3 "" H 3550 5050 50  0001 C CNN
	1    3550 5050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5A1A7360
P 4500 2650
F 0 "R1" V 4580 2650 50  0000 C CNN
F 1 "470" V 4500 2650 50  0000 C CNN
F 2 "" V 4430 2650 50  0001 C CNN
F 3 "" H 4500 2650 50  0001 C CNN
	1    4500 2650
	1    0    0    -1  
$EndComp
$Comp
L Z80Test-rescue:SW_SPST-switches SW?
U 1 1 5A1A73BF
P 4300 2950
F 0 "SW?" H 4300 3075 50  0000 C CNN
F 1 "SW_SPST" H 4300 2850 50  0000 C CNN
F 2 "" H 4300 2950 50  0001 C CNN
F 3 "" H 4300 2950 50  0001 C CNN
	1    4300 2950
	1    0    0    -1  
$EndComp
Text GLabel 4750 3150 0    60   Input ~ 0
Clock
$Comp
L Device:R R2
U 1 1 5A1A77ED
P 7150 2650
F 0 "R2" V 7230 2650 50  0000 C CNN
F 1 "330" V 7150 2650 50  0000 C CNN
F 2 "" V 7080 2650 50  0001 C CNN
F 3 "" H 7150 2650 50  0001 C CNN
	1    7150 2650
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 5A1A7868
P 7150 2850
F 0 "R3" V 7230 2850 50  0000 C CNN
F 1 "330" V 7150 2850 50  0000 C CNN
F 2 "" V 7080 2850 50  0001 C CNN
F 3 "" H 7150 2850 50  0001 C CNN
	1    7150 2850
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 5A1A78C6
P 7150 3050
F 0 "R4" V 7230 3050 50  0000 C CNN
F 1 "330" V 7150 3050 50  0000 C CNN
F 2 "" V 7080 3050 50  0001 C CNN
F 3 "" H 7150 3050 50  0001 C CNN
	1    7150 3050
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 5A1A78F7
P 7150 3250
F 0 "R5" V 7230 3250 50  0000 C CNN
F 1 "330" V 7150 3250 50  0000 C CNN
F 2 "" V 7080 3250 50  0001 C CNN
F 3 "" H 7150 3250 50  0001 C CNN
	1    7150 3250
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 5A1A792F
P 7150 3450
F 0 "R6" V 7230 3450 50  0000 C CNN
F 1 "330" V 7150 3450 50  0000 C CNN
F 2 "" V 7080 3450 50  0001 C CNN
F 3 "" H 7150 3450 50  0001 C CNN
	1    7150 3450
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 5A1A796A
P 7150 3650
F 0 "R7" V 7230 3650 50  0000 C CNN
F 1 "330" V 7150 3650 50  0000 C CNN
F 2 "" V 7080 3650 50  0001 C CNN
F 3 "" H 7150 3650 50  0001 C CNN
	1    7150 3650
	0    1    1    0   
$EndComp
$Comp
L Device:R R8
U 1 1 5A1A799E
P 7150 3850
F 0 "R8" V 7230 3850 50  0000 C CNN
F 1 "330" V 7150 3850 50  0000 C CNN
F 2 "" V 7080 3850 50  0001 C CNN
F 3 "" H 7150 3850 50  0001 C CNN
	1    7150 3850
	0    1    1    0   
$EndComp
$Comp
L Device:R R9
U 1 1 5A1A79DB
P 7150 4050
F 0 "R9" V 7230 4050 50  0000 C CNN
F 1 "330" V 7150 4050 50  0000 C CNN
F 2 "" V 7080 4050 50  0001 C CNN
F 3 "" H 7150 4050 50  0001 C CNN
	1    7150 4050
	0    1    1    0   
$EndComp
$Comp
L Device:LED D1
U 1 1 5A1A834A
P 7600 2650
F 0 "D1" H 7600 2750 50  0000 C CNN
F 1 "LED" H 7600 2550 50  0001 C CNN
F 2 "" H 7600 2650 50  0001 C CNN
F 3 "" H 7600 2650 50  0001 C CNN
	1    7600 2650
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D2
U 1 1 5A1A8394
P 7600 2850
F 0 "D2" H 7600 2950 50  0000 C CNN
F 1 "LED" H 7600 2750 50  0001 C CNN
F 2 "" H 7600 2850 50  0001 C CNN
F 3 "" H 7600 2850 50  0001 C CNN
	1    7600 2850
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D3
U 1 1 5A1A83D6
P 7600 3050
F 0 "D3" H 7600 3150 50  0000 C CNN
F 1 "LED" H 7600 2950 50  0001 C CNN
F 2 "" H 7600 3050 50  0001 C CNN
F 3 "" H 7600 3050 50  0001 C CNN
	1    7600 3050
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D4
U 1 1 5A1A841B
P 7600 3250
F 0 "D4" H 7600 3350 50  0000 C CNN
F 1 "LED" H 7600 3150 50  0001 C CNN
F 2 "" H 7600 3250 50  0001 C CNN
F 3 "" H 7600 3250 50  0001 C CNN
	1    7600 3250
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D5
U 1 1 5A1A8463
P 7600 3450
F 0 "D5" H 7600 3550 50  0000 C CNN
F 1 "LED" H 7600 3350 50  0001 C CNN
F 2 "" H 7600 3450 50  0001 C CNN
F 3 "" H 7600 3450 50  0001 C CNN
	1    7600 3450
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D6
U 1 1 5A1A84AC
P 7600 3650
F 0 "D6" H 7600 3750 50  0000 C CNN
F 1 "LED" H 7600 3550 50  0001 C CNN
F 2 "" H 7600 3650 50  0001 C CNN
F 3 "" H 7600 3650 50  0001 C CNN
	1    7600 3650
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D8
U 1 1 5A1A854B
P 7600 4050
F 0 "D8" H 7600 4150 50  0000 C CNN
F 1 "LED" H 7600 3950 50  0001 C CNN
F 2 "" H 7600 4050 50  0001 C CNN
F 3 "" H 7600 4050 50  0001 C CNN
	1    7600 4050
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D7
U 1 1 5A1A8B0F
P 7600 3850
F 0 "D7" H 7600 3950 50  0000 C CNN
F 1 "LED" H 7600 3750 50  0001 C CNN
F 2 "" H 7600 3850 50  0001 C CNN
F 3 "" H 7600 3850 50  0001 C CNN
	1    7600 3850
	-1   0    0    1   
$EndComp
Text Notes 7400 7500 0    60   ~ 0
Z80 Test Circuit (NOP Execution)
Text Notes 8200 7650 0    60   ~ 0
6/12/17
Text Notes 10600 7650 0    60   ~ 0
1.1
Connection ~ 3550 2350
Wire Wire Line
	7950 5350 7250 5350
Wire Wire Line
	3550 5200 3550 5350
Connection ~ 3550 5350
Wire Wire Line
	3550 2350 4500 2350
Wire Wire Line
	3550 4900 3550 4050
Wire Wire Line
	4900 3350 3550 3350
Connection ~ 3550 3350
Wire Wire Line
	4900 3250 3550 3250
Connection ~ 3550 3250
Wire Wire Line
	4900 3850 3550 3850
Connection ~ 3550 3850
Wire Wire Line
	4900 4950 4400 4950
Wire Wire Line
	4400 4950 4400 4050
Wire Wire Line
	4400 4050 3550 4050
Connection ~ 3550 4050
Wire Wire Line
	4500 2950 4500 2800
Wire Wire Line
	4500 2500 4500 2350
Connection ~ 4500 2350
Wire Wire Line
	4100 2950 4100 5350
Connection ~ 4100 5350
Wire Wire Line
	4900 2650 4700 2650
Wire Wire Line
	4700 2650 4700 2950
Wire Wire Line
	4700 2950 4500 2950
Wire Wire Line
	4900 2950 4850 2950
Wire Wire Line
	4850 2950 4850 3150
Wire Wire Line
	4850 3150 4750 3150
Connection ~ 4500 2950
Wire Wire Line
	6300 2650 7000 2650
Wire Wire Line
	7000 2850 6950 2850
Wire Wire Line
	6950 2850 6950 2750
Wire Wire Line
	6950 2750 6300 2750
Wire Wire Line
	7000 3050 6900 3050
Wire Wire Line
	6900 3050 6900 2850
Wire Wire Line
	6900 2850 6300 2850
Wire Wire Line
	7000 3250 6850 3250
Wire Wire Line
	6850 3250 6850 2950
Wire Wire Line
	6850 2950 6300 2950
Wire Wire Line
	7000 3450 6800 3450
Wire Wire Line
	7000 3650 6750 3650
Wire Wire Line
	6300 3050 6800 3050
Wire Wire Line
	6800 3050 6800 3450
Wire Wire Line
	6300 3150 6750 3150
Wire Wire Line
	6750 3150 6750 3650
Wire Wire Line
	7000 3850 6700 3850
Wire Wire Line
	6700 3850 6700 3250
Wire Wire Line
	6700 3250 6300 3250
Wire Wire Line
	7000 4050 6650 4050
Wire Wire Line
	6650 4050 6650 3350
Wire Wire Line
	6650 3350 6300 3350
Wire Wire Line
	7300 2650 7450 2650
Wire Wire Line
	7300 2850 7450 2850
Wire Wire Line
	7300 3050 7450 3050
Wire Wire Line
	7300 3250 7450 3250
Wire Wire Line
	7300 3450 7450 3450
Wire Wire Line
	7300 3650 7450 3650
Wire Wire Line
	7300 3850 7450 3850
Wire Wire Line
	7300 4050 7450 4050
Connection ~ 5600 5350
Wire Wire Line
	7750 2650 7950 2650
Wire Wire Line
	7950 2650 7950 2850
Wire Wire Line
	7950 2850 7750 2850
Wire Wire Line
	7950 3050 7750 3050
Connection ~ 7950 2850
Wire Wire Line
	7950 3250 7750 3250
Connection ~ 7950 3050
Wire Wire Line
	7950 3450 7750 3450
Connection ~ 7950 3250
Wire Wire Line
	7950 3650 7750 3650
Connection ~ 7950 3450
Wire Wire Line
	7950 3850 7750 3850
Connection ~ 7950 3650
Wire Wire Line
	7950 4050 7750 4050
Connection ~ 7950 3850
Connection ~ 7950 4050
Wire Wire Line
	6300 4350 7250 4350
Wire Wire Line
	7250 4350 7250 4450
Connection ~ 7250 5350
Wire Wire Line
	6300 4450 7250 4450
Connection ~ 7250 4450
Wire Wire Line
	6300 4550 7250 4550
Connection ~ 7250 4550
Wire Wire Line
	6300 4650 7250 4650
Connection ~ 7250 4650
Wire Wire Line
	6300 4750 7250 4750
Connection ~ 7250 4750
Wire Wire Line
	6300 4850 7250 4850
Connection ~ 7250 4850
Wire Wire Line
	6300 4950 7250 4950
Connection ~ 7250 4950
Wire Wire Line
	6300 5050 7250 5050
Connection ~ 7250 5050
Wire Wire Line
	3550 5350 3550 5400
Wire Wire Line
	3550 3350 3550 3250
Wire Wire Line
	3550 3250 3550 2350
Wire Wire Line
	3550 3850 3550 3350
Wire Wire Line
	3550 4050 3550 3850
Wire Wire Line
	4500 2350 5600 2350
Wire Wire Line
	4100 5350 3550 5350
Wire Wire Line
	5600 5350 4100 5350
Wire Wire Line
	7950 2850 7950 3050
Wire Wire Line
	7950 3050 7950 3250
Wire Wire Line
	7950 3250 7950 3450
Wire Wire Line
	7950 3450 7950 3650
Wire Wire Line
	7950 3650 7950 3850
Wire Wire Line
	7950 3850 7950 4050
Wire Wire Line
	7950 4050 7950 5350
Wire Wire Line
	7250 5350 5600 5350
Wire Wire Line
	7250 4450 7250 4550
Wire Wire Line
	7250 4550 7250 4650
Wire Wire Line
	7250 4650 7250 4750
Wire Wire Line
	7250 4750 7250 4850
Wire Wire Line
	7250 4850 7250 4950
Wire Wire Line
	7250 4950 7250 5050
Wire Wire Line
	7250 5050 7250 5350
$EndSCHEMATC
