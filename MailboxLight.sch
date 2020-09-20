EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "Mailbox Light"
Date "2020-09-14"
Rev "Draft"
Comp "Adrian McCarthy"
Comment1 "When opened, the switch is released and the LED will illuminate."
Comment2 "The momentary switch will be depressed when the mailbox door is closed."
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Switch:SW_Push_SPDT SW1
U 1 1 5F5F8897
P 5450 4050
F 0 "SW1" H 5450 4243 50  0000 C CNN
F 1 "SW_SPDT" H 5450 4244 50  0001 C CNN
F 2 "Limit_Switches:SW_Snap_SPDT_Omron_D2F-01FL2-A1" H 5450 4050 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Omron%20PDFs/D2F_0318_DS.pdf" H 5450 4050 50  0001 C CNN
F 4 "SWITCH SNAP ACT SPDT 100MA 30V" H 5450 4050 50  0001 C CNN "Name"
F 5 "Z4697-ND" H 5450 4050 50  0001 C CNN "Digi-Key"
	1    5450 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery_Cell BT1
U 1 1 5F5F900D
P 5350 3450
F 0 "BT1" V 5095 3500 50  0000 C CNN
F 1 "CR2032" V 5186 3500 50  0000 C CNN
F 2 "Battery_Holders:BatteryHolder_MPD_BS-5_1x2032_vertical" V 5350 3510 50  0001 C CNN
F 3 "https://www.memoryprotectiondevices.com/datasheets/BS-5-datasheet.pdf" V 5350 3510 50  0001 C CNN
F 4 "BATTERY HOLDER COIN 20MM PC PIN" V 5350 3450 50  0001 C CNN "Name"
F 5 "BS-5-ND" V 5350 3450 50  0001 C CNN "Digi-Key"
	1    5350 3450
	0    1    1    0   
$EndComp
$Comp
L Device:LED_ALT D1
U 1 1 5F5F9BE4
P 6050 3800
F 0 "D1" V 6043 3682 50  0000 R CNN
F 1 "LED_ALT" V 5998 3682 50  0001 R CNN
F 2 "LED_THT:LED_D10.0mm" H 6050 3800 50  0001 C CNN
F 3 "~" H 6050 3800 50  0001 C CNN
F 4 "https://shop.evilmadscientist.com/productsmenu/partsmenu/331" V 6050 3800 50  0001 C CNN "Evilmadscientist"
	1    6050 3800
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R1
U 1 1 5F5FA903
P 5900 3450
F 0 "R1" V 5800 3450 50  0000 C CNN
F 1 "15" V 5900 3450 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5830 3450 50  0001 C CNN
F 3 "~" H 5900 3450 50  0001 C CNN
	1    5900 3450
	0    1    1    0   
$EndComp
NoConn ~ 5650 4150
Wire Wire Line
	5250 3450 5250 4050
Wire Wire Line
	5550 3450 5750 3450
Wire Wire Line
	6050 3450 6050 3650
Wire Wire Line
	6050 3950 6050 4050
Wire Wire Line
	6050 4050 5750 4050
Wire Wire Line
	5750 4050 5750 3950
Wire Wire Line
	5750 3950 5650 3950
$Comp
L Mechanical:MountingHole H1
U 1 1 5F66C728
P 6500 3550
F 0 "H1" H 6600 3596 50  0000 L CNN
F 1 "MountingHole" H 6600 3505 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 6500 3550 50  0001 C CNN
F 3 "~" H 6500 3550 50  0001 C CNN
	1    6500 3550
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5F66EE8C
P 6500 3800
F 0 "H2" H 6600 3846 50  0000 L CNN
F 1 "MountingHole" H 6600 3755 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 6500 3800 50  0001 C CNN
F 3 "~" H 6500 3800 50  0001 C CNN
	1    6500 3800
	1    0    0    -1  
$EndComp
$EndSCHEMATC
