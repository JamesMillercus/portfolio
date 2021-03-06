EESchema Schematic File Version 4
LIBS:invitation-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Portfolio Business Card"
Date "April 2019"
Rev "11"
Comp "James Miller"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:R R8
U 1 1 5840D084
P 1700 6300
F 0 "R8" V 1780 6300 50  0000 C CNN
F 1 "22" V 1700 6300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 1630 6300 50  0001 C CNN
F 3 "" H 1700 6300 50  0000 C CNN
	1    1700 6300
	0    1    1    0   
$EndComp
$Comp
L Device:R R10
U 1 1 5840D0C2
P 1950 1400
F 0 "R10" V 2030 1400 50  0000 C CNN
F 1 "10K" V 1950 1400 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 1880 1400 50  0001 C CNN
F 3 "" H 1950 1400 50  0000 C CNN
	1    1950 1400
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 5840D0E2
P 7550 6150
F 0 "R6" V 7630 6150 50  0000 C CNN
F 1 "82" V 7550 6150 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 7480 6150 50  0001 C CNN
F 3 "" H 7550 6150 50  0000 C CNN
	1    7550 6150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 5840D177
P 1700 6500
F 0 "R9" V 1780 6500 50  0000 C CNN
F 1 "22" V 1700 6500 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 1630 6500 50  0001 C CNN
F 3 "" H 1700 6500 50  0000 C CNN
	1    1700 6500
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 5840D1AA
P 8400 6150
F 0 "R7" V 8480 6150 50  0000 C CNN
F 1 "82" V 8400 6150 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 8330 6150 50  0001 C CNN
F 3 "" H 8400 6150 50  0000 C CNN
	1    8400 6150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5840D405
P 1950 3800
F 0 "C3" H 1975 3900 50  0000 L CNN
F 1 "0.1uF" H 1975 3700 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 1988 3650 50  0001 C CNN
F 3 "" H 1950 3800 50  0000 C CNN
	1    1950 3800
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5840DBD4
P 7450 4850
F 0 "#PWR01" H 7450 4600 50  0001 C CNN
F 1 "GND" H 7450 4700 50  0000 C CNN
F 2 "" H 7450 4850 50  0000 C CNN
F 3 "" H 7450 4850 50  0000 C CNN
	1    7450 4850
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5840DFCA
P 1550 3800
F 0 "#PWR02" H 1550 3550 50  0001 C CNN
F 1 "GND" H 1550 3650 50  0000 C CNN
F 2 "" H 1550 3800 50  0000 C CNN
F 3 "" H 1550 3800 50  0000 C CNN
	1    1550 3800
	0    1    1    0   
$EndComp
$Comp
L invitation-rescue:USB_OTG-invitation-rescue P1
U 1 1 5840E12E
P 1100 6400
F 0 "P1" H 1425 6275 50  0000 C CNN
F 1 "USB Micro B" H 1100 6600 50  0000 C CNN
F 2 "10103594-0001LF:FCI_10103594-0001LF" V 1050 6300 50  0001 C CNN
F 3 "" V 1050 6300 50  0000 C CNN
	1    1100 6400
	0    -1   -1   0   
$EndComp
NoConn ~ 1400 6300
Text GLabel 1700 6700 2    60   Input ~ 0
USBVCC
Text GLabel 1900 6300 2    60   Input ~ 0
D+
Text GLabel 1900 6500 2    60   Input ~ 0
D-
Text GLabel 2050 2700 0    60   Input ~ 0
D+
Text GLabel 2050 2850 0    60   Input ~ 0
D-
$Comp
L power:GND #PWR03
U 1 1 5840FBF4
P 3250 4750
F 0 "#PWR03" H 3250 4500 50  0001 C CNN
F 1 "GND" H 3250 4600 50  0000 C CNN
F 2 "" H 3250 4750 50  0000 C CNN
F 3 "" H 3250 4750 50  0000 C CNN
	1    3250 4750
	1    0    0    -1  
$EndComp
Text GLabel 2050 2550 0    60   Input ~ 0
USBVCC
Text GLabel 2900 1050 1    60   Input ~ 0
USBVCC
$Comp
L power:GND #PWR04
U 1 1 5840FF9B
P 1900 3350
F 0 "#PWR04" H 1900 3100 50  0001 C CNN
F 1 "GND" H 1900 3200 50  0000 C CNN
F 2 "" H 1900 3350 50  0000 C CNN
F 3 "" H 1900 3350 50  0000 C CNN
	1    1900 3350
	0    1    1    0   
$EndComp
$Comp
L invitation-rescue:LED D5
U 1 1 58410BA4
P 8000 1750
F 0 "D5" H 8000 1850 50  0000 C CNN
F 1 "Phone LED (green)" H 8000 1650 50  0000 C CNN
F 2 "LEDs:LED_0805" H 8000 1750 50  0001 C CNN
F 3 "" H 8000 1750 50  0000 C CNN
	1    8000 1750
	-1   0    0    1   
$EndComp
$Comp
L invitation-rescue:LED D4
U 1 1 58410C3E
P 8000 1400
F 0 "D4" H 8000 1500 50  0000 C CNN
F 1 "Email LED (green)" H 8000 1300 50  0000 C CNN
F 2 "LEDs:LED_0805" H 8000 1400 50  0001 C CNN
F 3 "" H 8000 1400 50  0000 C CNN
	1    8000 1400
	-1   0    0    1   
$EndComp
$Comp
L invitation-rescue:F_Small F1
U 1 1 5841273C
P 3450 6200
F 0 "F1" H 3410 6260 50  0000 L CNN
F 1 "PPTC Fuse 500mA" H 3330 6140 50  0000 L CNN
F 2 "Fuse_Holders_and_Fuses:Fuse_SMD1206_Reflow" H 3450 6200 50  0001 C CNN
F 3 "" H 3450 6200 50  0000 C CNN
	1    3450 6200
	1    0    0    -1  
$EndComp
Text GLabel 3200 6200 0    60   Input ~ 0
USBVCC
$Comp
L Device:CP1 C4
U 1 1 58412C59
P 4150 6400
F 0 "C4" H 4175 6500 50  0000 L CNN
F 1 "1uF" H 4175 6300 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:CP_Tantalum_Case-R_EIA-2012-12_Reflow" H 4150 6400 50  0001 C CNN
F 3 "" H 4150 6400 50  0000 C CNN
	1    4150 6400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 58412FCC
P 4400 6700
F 0 "#PWR05" H 4400 6450 50  0001 C CNN
F 1 "GND" H 4400 6550 50  0000 C CNN
F 2 "" H 4400 6700 50  0000 C CNN
F 3 "" H 4400 6700 50  0000 C CNN
	1    4400 6700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 58414303
P 1800 6100
F 0 "#PWR06" H 1800 5850 50  0001 C CNN
F 1 "GND" H 1800 5950 50  0000 C CNN
F 2 "" H 1800 6100 50  0000 C CNN
F 3 "" H 1800 6100 50  0000 C CNN
	1    1800 6100
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG07
U 1 1 58416F56
P 4700 6700
F 0 "#FLG07" H 4700 6795 50  0001 C CNN
F 1 "PWR_FLAG" H 4700 6880 50  0000 C CNN
F 2 "" H 4700 6700 50  0000 C CNN
F 3 "" H 4700 6700 50  0000 C CNN
	1    4700 6700
	-1   0    0    1   
$EndComp
$Comp
L Device:CP1 C5
U 1 1 5841B18D
P 4650 6400
F 0 "C5" H 4675 6500 50  0000 L CNN
F 1 "0.1uF" H 4675 6300 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:CP_Tantalum_Case-R_EIA-2012-12_Reflow" H 4650 6400 50  0001 C CNN
F 3 "" H 4650 6400 50  0000 C CNN
	1    4650 6400
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG08
U 1 1 5841C96E
P 4800 6150
F 0 "#FLG08" H 4800 6245 50  0001 C CNN
F 1 "PWR_FLAG" H 4800 6330 50  0000 C CNN
F 2 "" H 4800 6150 50  0000 C CNN
F 3 "" H 4800 6150 50  0000 C CNN
	1    4800 6150
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR09
U 1 1 5841CCBE
P 3400 900
F 0 "#PWR09" H 3400 750 50  0001 C CNN
F 1 "VCC" H 3400 1050 50  0000 C CNN
F 2 "" H 3400 900 50  0000 C CNN
F 3 "" H 3400 900 50  0000 C CNN
	1    3400 900 
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR010
U 1 1 5841CDDA
P 8000 5900
F 0 "#PWR010" H 8000 5750 50  0001 C CNN
F 1 "VCC" H 8000 6050 50  0000 C CNN
F 2 "" H 8000 5900 50  0000 C CNN
F 3 "" H 8000 5900 50  0000 C CNN
	1    8000 5900
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR011
U 1 1 5841CF60
P 1650 1400
F 0 "#PWR011" H 1650 1250 50  0001 C CNN
F 1 "VCC" H 1650 1550 50  0000 C CNN
F 2 "" H 1650 1400 50  0000 C CNN
F 3 "" H 1650 1400 50  0000 C CNN
	1    1650 1400
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR012
U 1 1 5841DE48
P 4850 6200
F 0 "#PWR012" H 4850 6050 50  0001 C CNN
F 1 "VCC" H 4850 6350 50  0000 C CNN
F 2 "" H 4850 6200 50  0000 C CNN
F 3 "" H 4850 6200 50  0000 C CNN
	1    4850 6200
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR013
U 1 1 5841EC98
P 4550 3500
F 0 "#PWR013" H 4550 3250 50  0001 C CNN
F 1 "GND" H 4550 3350 50  0000 C CNN
F 2 "" H 4550 3500 50  0000 C CNN
F 3 "" H 4550 3500 50  0000 C CNN
	1    4550 3500
	0    -1   -1   0   
$EndComp
Text Notes 950  5750 0    139  ~ 28
USB Input
Text Notes 2500 5750 0    139  ~ 28
Power Regulation/Distribution
$Comp
L Device:CP1 C0
U 1 1 58421054
P 2100 3200
F 0 "C0" H 2125 3300 50  0000 L CNN
F 1 "1uF" H 2125 3100 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:CP_Tantalum_Case-R_EIA-2012-12_Reflow" H 2100 3200 50  0001 C CNN
F 3 "" H 2100 3200 50  0000 C CNN
	1    2100 3200
	1    0    0    -1  
$EndComp
$Comp
L invitation-rescue:LED D1
U 1 1 5842A0BA
P 8000 2800
F 0 "D1" H 8000 2900 50  0000 C CNN
F 1 "Power LED (green)" H 8000 2700 50  0000 C CNN
F 2 "LEDs:LED_0805" H 8000 2800 50  0001 C CNN
F 3 "" H 8000 2800 50  0000 C CNN
	1    8000 2800
	-1   0    0    1   
$EndComp
$Comp
L Device:R R1
U 1 1 5842A439
P 8400 2800
F 0 "R1" V 8480 2800 50  0000 C CNN
F 1 "47" V 8400 2800 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 8330 2800 50  0001 C CNN
F 3 "" H 8400 2800 50  0000 C CNN
	1    8400 2800
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR015
U 1 1 5842A61F
P 8600 2800
F 0 "#PWR015" H 8600 2550 50  0001 C CNN
F 1 "GND" H 8600 2650 50  0000 C CNN
F 2 "" H 8600 2800 50  0000 C CNN
F 3 "" H 8600 2800 50  0000 C CNN
	1    8600 2800
	0    -1   -1   0   
$EndComp
Text GLabel 4550 1900 2    60   Input ~ 0
nodeLED
$Comp
L invitation-rescue:LED D3
U 1 1 5842B7C6
P 8000 2100
F 0 "D3" H 8000 2200 50  0000 C CNN
F 1 "Interaction LED (green)" H 8000 2000 50  0000 C CNN
F 2 "LEDs:LED_0805" H 8000 2100 50  0001 C CNN
F 3 "" H 8000 2100 50  0000 C CNN
	1    8000 2100
	-1   0    0    1   
$EndComp
$Comp
L Device:R R2
U 1 1 5842B7D2
P 8400 2450
F 0 "R2" V 8480 2450 50  0000 C CNN
F 1 "47" V 8400 2450 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 8330 2450 50  0001 C CNN
F 3 "" H 8400 2450 50  0000 C CNN
	1    8400 2450
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR016
U 1 1 5842B7D9
P 8600 2450
F 0 "#PWR016" H 8600 2200 50  0001 C CNN
F 1 "GND" H 8600 2300 50  0000 C CNN
F 2 "" H 8600 2450 50  0000 C CNN
F 3 "" H 8600 2450 50  0000 C CNN
	1    8600 2450
	0    -1   -1   0   
$EndComp
Text GLabel 7700 2450 0    60   Input ~ 0
nodeLED
Text GLabel 4500 2050 2    60   Input ~ 0
interactLED
$Comp
L invitation-rescue:LED D2
U 1 1 5842C910
P 8000 2450
F 0 "D2" H 8000 2550 50  0000 C CNN
F 1 "Website CTA (green)" H 8000 2350 50  0000 C CNN
F 2 "LEDs:LED_0805" H 8000 2450 50  0001 C CNN
F 3 "" H 8000 2450 50  0000 C CNN
	1    8000 2450
	-1   0    0    1   
$EndComp
$Comp
L Device:R R3
U 1 1 5842C91C
P 8400 2100
F 0 "R3" V 8480 2100 50  0000 C CNN
F 1 "47" V 8400 2100 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 8330 2100 50  0001 C CNN
F 3 "" H 8400 2100 50  0000 C CNN
	1    8400 2100
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR017
U 1 1 5842C923
P 8600 2100
F 0 "#PWR017" H 8600 1850 50  0001 C CNN
F 1 "GND" H 8600 1950 50  0000 C CNN
F 2 "" H 8600 2100 50  0000 C CNN
F 3 "" H 8600 2100 50  0000 C CNN
	1    8600 2100
	0    -1   -1   0   
$EndComp
Text GLabel 7750 2100 0    60   Input ~ 0
interactLED
Text Notes 7750 1100 0    139  ~ 28
LEDS
Text GLabel 4500 4000 2    60   Input ~ 0
rightArrSens
Text GLabel 5000 3900 2    60   Input ~ 0
leftArrSens
Text GLabel 4550 3800 2    60   Input ~ 0
homeSens
Text GLabel 9400 1550 0    60   Input ~ 0
homeBtn
Text GLabel 9400 2550 0    60   Input ~ 0
leftArrBtn
Text GLabel 9450 3550 0    60   Input ~ 0
rightArrBtn
$Comp
L invitation-rescue:CONN_01X01 P2
U 1 1 587168CE
P 10100 1850
F 0 "P2" H 10100 1950 50  0000 C CNN
F 1 "Home btn" H 10400 1850 50  0000 C CNN
F 2 "newAssets:JMLogoFinalSS" H 10100 1850 50  0001 C CNN
F 3 "" H 10100 1850 50  0000 C CNN
	1    10100 1850
	1    0    0    -1  
$EndComp
$Comp
L invitation-rescue:CONN_01X01 P4
U 1 1 5871732E
P 10050 2850
F 0 "P4" H 10050 2950 50  0000 C CNN
F 1 "Left Arrow" H 10350 2850 50  0000 C CNN
F 2 "newAssets:leftArrowSS" H 10050 2850 50  0001 C CNN
F 3 "" H 10050 2850 50  0000 C CNN
	1    10050 2850
	1    0    0    -1  
$EndComp
$Comp
L invitation-rescue:CONN_01X01 P5
U 1 1 58717389
P 10100 3850
F 0 "P5" H 10100 3950 50  0000 C CNN
F 1 "Right Arrow" H 10400 3850 50  0000 C CNN
F 2 "newAssets:rightArrowSS" H 10100 3850 50  0001 C CNN
F 3 "" H 10100 3850 50  0000 C CNN
	1    10100 3850
	1    0    0    -1  
$EndComp
Text Notes 9400 1100 0    139  ~ 28
Buttons
Text GLabel 2150 1200 1    60   Input ~ 0
RESET
Text GLabel 5250 1100 1    60   Input ~ 0
MOSI
Text GLabel 5400 1100 1    60   Input ~ 0
MISO
Text GLabel 4500 1100 1    60   Input ~ 0
SCLK
Text Notes 7350 3250 0    139  ~ 28
Programmer
$Comp
L Device:C C2
U 1 1 5872F853
P 7650 4650
F 0 "C2" H 7675 4750 50  0000 L CNN
F 1 "22pF" H 7675 4550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 7688 4500 50  0001 C CNN
F 3 "" H 7650 4650 50  0000 C CNN
	1    7650 4650
	0    1    1    0   
$EndComp
$Comp
L Device:C C1
U 1 1 5872F8DC
P 7650 5050
F 0 "C1" H 7675 5150 50  0000 L CNN
F 1 "22pF" H 7675 4950 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 7688 4900 50  0001 C CNN
F 3 "" H 7650 5050 50  0000 C CNN
	1    7650 5050
	0    1    1    0   
$EndComp
$Comp
L Device:Crystal_Small Y1
U 1 1 58744F16
P 8000 4850
F 0 "Y1" H 8000 4950 50  0000 C CNN
F 1 "16 FA-238 Mhz" H 8000 4750 50  0000 C CNN
F 2 "assets:crystal_FA238-TSX3225" H 8000 4850 50  0001 C CNN
F 3 "" H 8000 4850 50  0000 C CNN
	1    8000 4850
	0    1    1    0   
$EndComp
Text Label 1450 6400 0    20   ~ 0
Data+
Text Label 1450 6500 0    20   ~ 0
Data-
$Comp
L invitation-rescue:LED D6
U 1 1 59D902BC
P 7850 6100
F 0 "D6" H 7850 6200 50  0000 C CNN
F 1 "RX LED (orange)" H 7850 6000 50  0000 C CNN
F 2 "LEDs:LED_0805" H 7850 6100 50  0001 C CNN
F 3 "" H 7850 6100 50  0000 C CNN
	1    7850 6100
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R4
U 1 1 59D902C2
P 8400 1400
F 0 "R4" V 8480 1400 50  0000 C CNN
F 1 "47" V 8400 1400 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 8330 1400 50  0001 C CNN
F 3 "" H 8400 1400 50  0000 C CNN
	1    8400 1400
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR018
U 1 1 59D902C8
P 8600 1400
F 0 "#PWR018" H 8600 1150 50  0001 C CNN
F 1 "GND" H 8600 1250 50  0000 C CNN
F 2 "" H 8600 1400 50  0000 C CNN
F 3 "" H 8600 1400 50  0000 C CNN
	1    8600 1400
	0    -1   -1   0   
$EndComp
Text GLabel 7750 1400 0    60   Input ~ 0
emailLED
$Comp
L invitation-rescue:LED D7
U 1 1 59D904CD
P 8150 6100
F 0 "D7" H 8150 6200 50  0000 C CNN
F 1 "TX LED (orange)" H 8150 6000 50  0000 C CNN
F 2 "LEDs:LED_0805" H 8150 6100 50  0001 C CNN
F 3 "" H 8150 6100 50  0000 C CNN
	1    8150 6100
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R5
U 1 1 59D904D3
P 8400 1750
F 0 "R5" V 8480 1750 50  0000 C CNN
F 1 "47" V 8400 1750 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 8330 1750 50  0001 C CNN
F 3 "" H 8400 1750 50  0000 C CNN
	1    8400 1750
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR019
U 1 1 59D904D9
P 8600 1750
F 0 "#PWR019" H 8600 1500 50  0001 C CNN
F 1 "GND" H 8600 1600 50  0000 C CNN
F 2 "" H 8600 1750 50  0000 C CNN
F 3 "" H 8600 1750 50  0000 C CNN
	1    8600 1750
	0    -1   -1   0   
$EndComp
Text GLabel 7750 1750 0    60   Input ~ 0
phoneLED
Text GLabel 4550 2350 2    60   Input ~ 0
phoneLED
Text GLabel 4550 2500 2    60   Input ~ 0
emailLED
Text GLabel 4350 1150 1    60   Input ~ 0
RXLED
Text GLabel 4550 3100 2    60   Input ~ 0
TXLED
Text GLabel 8400 5900 2    60   Input ~ 0
RXLED
Text GLabel 7550 5900 0    60   Input ~ 0
TXLED
Text Notes 7200 5600 0    139  ~ 28
RX & TX LEDS
$Comp
L invitation-rescue:CONN_01X03 P3
U 1 1 59DC0DA2
P 7350 3750
F 0 "P3" H 7350 3950 50  0000 C CNN
F 1 "Bottom Connections 1" V 7450 3750 50  0000 C CNN
F 2 "newAssets:SL-103-X-XX_1x03" H 7350 3750 50  0001 C CNN
F 3 "" H 7350 3750 50  0000 C CNN
	1    7350 3750
	-1   0    0    1   
$EndComp
Text GLabel 8300 3650 0    60   Input ~ 0
MISO
Text GLabel 7650 3650 1    60   Input ~ 0
SCLK
Text GLabel 8300 3800 0    60   Input ~ 0
RESET
$Comp
L power:VCC #PWR021
U 1 1 59DC17E9
P 7600 3750
F 0 "#PWR021" H 7600 3600 50  0001 C CNN
F 1 "VCC" H 7600 3900 50  0000 C CNN
F 2 "" H 7600 3750 50  0000 C CNN
F 3 "" H 7600 3750 50  0000 C CNN
	1    7600 3750
	0    1    1    0   
$EndComp
Text GLabel 8350 3550 1    60   Input ~ 0
MOSI
$Comp
L power:GND #PWR022
U 1 1 59DC190E
P 7650 3900
F 0 "#PWR022" H 7650 3650 50  0001 C CNN
F 1 "GND" H 7650 3750 50  0000 C CNN
F 2 "" H 7650 3900 50  0000 C CNN
F 3 "" H 7650 3900 50  0000 C CNN
	1    7650 3900
	1    0    0    -1  
$EndComp
Text Notes 7600 4450 0    139  ~ 28
Crystal
Text GLabel 2200 1700 0    60   Input ~ 0
XTal1
Text GLabel 2200 2100 0    60   Input ~ 0
XTal2
Text GLabel 8300 4650 2    60   Input ~ 0
XTal1
Text GLabel 8300 5050 2    60   Input ~ 0
XTal2
$Comp
L invitation-rescue:CONN_01X01 P8
U 1 1 59EDF747
P 8500 3950
F 0 "P8" H 8500 4050 50  0000 C CNN
F 1 "CONN_01X01" V 8600 3950 50  0000 C CNN
F 2 "newAssets:SL-101-X-XX_1x01" H 8500 3950 50  0001 C CNN
F 3 "" H 8500 3950 50  0000 C CNN
	1    8500 3950
	0    1    1    0   
$EndComp
$Comp
L invitation-rescue:CONN_01X02 P9
U 1 1 59EDF7E4
P 8600 3600
F 0 "P9" H 8600 3750 50  0000 C CNN
F 1 "CONN_01X02" V 8700 3600 50  0000 C CNN
F 2 "newAssets:SL-102-X-XX_1x02" H 8600 3600 50  0001 C CNN
F 3 "" H 8600 3600 50  0000 C CNN
	1    8600 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 3750 8500 3750
Wire Wire Line
	8300 3800 8300 3750
Wire Wire Line
	8300 5050 8000 5050
Wire Wire Line
	7800 4650 8000 4650
Wire Wire Line
	7650 3850 7650 3900
Wire Wire Line
	8300 3650 8400 3650
Wire Wire Line
	7600 3750 7550 3750
Wire Wire Line
	8350 3550 8400 3550
Wire Wire Line
	7650 3850 7550 3850
Wire Wire Line
	7650 3650 7550 3650
Wire Wire Line
	3200 6200 3350 6200
Wire Wire Line
	4500 4000 4450 4000
Wire Wire Line
	4450 3900 5000 3900
Wire Wire Line
	4550 3800 4450 3800
Connection ~ 8000 5900
Wire Wire Line
	7850 5900 8000 5900
Wire Wire Line
	4350 1300 4350 1150
Wire Wire Line
	4450 1300 4350 1300
Wire Wire Line
	4450 3100 4550 3100
Wire Wire Line
	8400 5900 8400 6000
Wire Wire Line
	7550 5900 7550 6000
Wire Wire Line
	7750 1750 7800 1750
Wire Wire Line
	8550 1750 8600 1750
Wire Wire Line
	8200 1750 8250 1750
Wire Wire Line
	7750 1400 7800 1400
Wire Wire Line
	8550 1400 8600 1400
Wire Wire Line
	8200 1400 8250 1400
Wire Wire Line
	1400 6400 1550 6400
Wire Wire Line
	1550 6400 1550 6300
Wire Wire Line
	1400 6500 1550 6500
Wire Wire Line
	8000 5050 8000 4950
Wire Wire Line
	8000 4650 8000 4750
Connection ~ 8000 5050
Wire Wire Line
	2200 2100 2200 2000
Connection ~ 8000 4650
Wire Wire Line
	2200 1700 2200 1800
Connection ~ 7500 4850
Wire Wire Line
	7500 4850 7450 4850
Wire Wire Line
	7500 4650 7500 4850
Wire Wire Line
	5400 1350 5400 1100
Wire Wire Line
	5150 1350 5400 1350
Wire Wire Line
	5150 1600 5150 1350
Wire Wire Line
	4550 1600 5150 1600
Wire Wire Line
	5250 1200 5250 1100
Wire Wire Line
	5050 1200 5250 1200
Wire Wire Line
	5050 1450 5050 1200
Wire Wire Line
	4550 1450 5050 1450
Connection ~ 2150 1400
Wire Wire Line
	2150 1400 2150 1200
Wire Wire Line
	4500 1100 4500 1500
Wire Wire Line
	4500 1500 4450 1500
Wire Wire Line
	4550 1550 4550 1450
Wire Wire Line
	4500 1550 4550 1550
Wire Wire Line
	4500 1600 4500 1550
Wire Wire Line
	4550 1700 4550 1600
Wire Wire Line
	4450 1700 4550 1700
Wire Wire Line
	4450 1300 4450 1400
Wire Wire Line
	4450 1600 4500 1600
Wire Wire Line
	7750 2100 7800 2100
Wire Wire Line
	8550 2100 8600 2100
Wire Wire Line
	8200 2100 8250 2100
Wire Wire Line
	4450 2050 4450 2000
Wire Wire Line
	4500 2050 4450 2050
Wire Wire Line
	7700 2450 7800 2450
Wire Wire Line
	8550 2450 8600 2450
Wire Wire Line
	8200 2450 8250 2450
Wire Wire Line
	4550 1900 4450 1900
Wire Wire Line
	8550 2800 8600 2800
Wire Wire Line
	8200 2800 8250 2800
Wire Notes Line
	5750 7150 5750 5500
Wire Notes Line
	600  7150 600  5500
Wire Notes Line
	600  7150 5750 7150
Wire Notes Line
	2400 5500 2400 7150
Wire Notes Line
	600  5500 5750 5500
Wire Wire Line
	4550 3500 4450 3500
Connection ~ 4400 6650
Wire Wire Line
	4700 6650 4400 6650
Wire Wire Line
	4700 6700 4700 6650
Connection ~ 4400 6550
Wire Wire Line
	4400 6550 4400 6650
Wire Wire Line
	4150 6550 4400 6550
Connection ~ 4800 6200
Wire Wire Line
	4800 6150 4800 6200
Wire Wire Line
	8150 6300 8400 6300
Wire Wire Line
	3150 1050 3400 1050
Wire Wire Line
	3600 1050 3600 1150
Wire Wire Line
	3550 6200 4150 6200
Wire Wire Line
	4150 6250 4150 6200
Wire Wire Line
	4650 6200 4650 6250
Wire Wire Line
	3500 4650 3500 4550
Wire Wire Line
	1400 6700 1400 6600
Wire Wire Line
	1800 6100 1800 6200
Connection ~ 4650 6200
Connection ~ 4150 6200
Wire Wire Line
	7550 6300 7850 6300
Wire Wire Line
	2100 1400 2150 1400
Wire Wire Line
	1650 1400 1800 1400
Connection ~ 3400 1150
Connection ~ 3400 1050
Wire Wire Line
	3250 1150 3400 1150
Wire Wire Line
	3400 900  3400 1050
Wire Wire Line
	3150 1150 3150 1050
Wire Wire Line
	1900 3350 2100 3350
Wire Wire Line
	2100 3000 2100 3050
Wire Wire Line
	2200 3000 2100 3000
Wire Wire Line
	2200 2550 2200 2600
Wire Wire Line
	2050 2550 2200 2550
Wire Wire Line
	2900 1050 2900 1150
Connection ~ 3400 4650
Wire Wire Line
	3400 4550 3400 4650
Connection ~ 3300 4650
Wire Wire Line
	3300 4550 3300 4650
Connection ~ 3200 4650
Wire Wire Line
	3200 4550 3200 4650
Connection ~ 3250 4650
Wire Wire Line
	2950 4550 2950 4650
Wire Wire Line
	3250 4650 3250 4750
Wire Wire Line
	2950 4650 3200 4650
Wire Wire Line
	2200 2700 2050 2700
Wire Wire Line
	2200 2750 2200 2700
Wire Wire Line
	2200 2850 2050 2850
Wire Wire Line
	1900 6500 1850 6500
Wire Wire Line
	1900 6300 1850 6300
Wire Wire Line
	1400 6700 1700 6700
Wire Wire Line
	1800 6200 1400 6200
Wire Wire Line
	1800 3800 1550 3800
Wire Wire Line
	2200 3800 2100 3800
Wire Wire Line
	8000 5900 8150 5900
Wire Wire Line
	8000 5050 7800 5050
Wire Wire Line
	8000 4650 8300 4650
Wire Wire Line
	7500 4850 7500 5050
Wire Wire Line
	2150 1400 2200 1400
Wire Wire Line
	4400 6650 4400 6700
Wire Wire Line
	4400 6550 4650 6550
Wire Wire Line
	4800 6200 4850 6200
Wire Wire Line
	4650 6200 4800 6200
Wire Wire Line
	4150 6200 4650 6200
Wire Wire Line
	3400 1150 3500 1150
Wire Wire Line
	3400 1050 3600 1050
Wire Wire Line
	3400 1050 3400 1150
Wire Wire Line
	3400 4650 3500 4650
Wire Wire Line
	3300 4650 3400 4650
Wire Wire Line
	3200 4650 3250 4650
Wire Wire Line
	3250 4650 3300 4650
$Comp
L Device:R R11
U 1 1 5BEC74C9
P 9700 1700
F 0 "R11" V 9780 1700 50  0000 C CNN
F 1 "200k" V 9700 1700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9630 1700 50  0001 C CNN
F 3 "" H 9700 1700 50  0000 C CNN
	1    9700 1700
	-1   0    0    1   
$EndComp
Text GLabel 9450 1850 0    60   Input ~ 0
homeSens
$Comp
L Device:R R12
U 1 1 5BEF6099
P 9650 2700
F 0 "R12" V 9730 2700 50  0000 C CNN
F 1 "200k" V 9650 2700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9580 2700 50  0001 C CNN
F 3 "" H 9650 2700 50  0000 C CNN
	1    9650 2700
	-1   0    0    1   
$EndComp
$Comp
L Device:R R13
U 1 1 5BEF6277
P 9700 3700
F 0 "R13" V 9780 3700 50  0000 C CNN
F 1 "200k" V 9700 3700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9630 3700 50  0001 C CNN
F 3 "" H 9700 3700 50  0000 C CNN
	1    9700 3700
	-1   0    0    1   
$EndComp
Text GLabel 9450 2850 0    60   Input ~ 0
leftArrSens
Text GLabel 9500 3850 0    60   Input ~ 0
rightArrSens
Text GLabel 9350 4750 0    60   Input ~ 0
upArrBtn
$Comp
L invitation-rescue:CONN_01X01 P10
U 1 1 5BF7CD22
P 10000 5050
F 0 "P10" H 10000 5150 50  0000 C CNN
F 1 "Up Arrow" H 10250 5050 50  0000 C CNN
F 2 "newAssets:upArrowSS" H 10000 5050 50  0001 C CNN
F 3 "" H 10000 5050 50  0000 C CNN
	1    10000 5050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R14
U 1 1 5BF7CD29
P 9600 4900
F 0 "R14" V 9680 4900 50  0000 C CNN
F 1 "200k" V 9600 4900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9530 4900 50  0001 C CNN
F 3 "" H 9600 4900 50  0000 C CNN
	1    9600 4900
	-1   0    0    1   
$EndComp
Text GLabel 9400 5050 0    60   Input ~ 0
upArrSens
Text GLabel 9450 5900 0    60   Input ~ 0
downArrBtn
$Comp
L invitation-rescue:CONN_01X01 P11
U 1 1 5BF85C27
P 10100 6200
F 0 "P11" H 10100 6300 50  0000 C CNN
F 1 "Down Arrow" H 10400 6200 50  0000 C CNN
F 2 "newAssets:downArrowSS" H 10100 6200 50  0001 C CNN
F 3 "" H 10100 6200 50  0000 C CNN
	1    10100 6200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R15
U 1 1 5BF85C2E
P 9700 6050
F 0 "R15" V 9780 6050 50  0000 C CNN
F 1 "200k" V 9700 6050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9630 6050 50  0001 C CNN
F 3 "" H 9700 6050 50  0000 C CNN
	1    9700 6050
	-1   0    0    1   
$EndComp
Text GLabel 9500 6200 0    60   Input ~ 0
downArrSens
Wire Notes Line
	7150 800  7150 6450
Wire Notes Line
	7150 800  10850 800 
Wire Notes Line
	8800 5300 7150 5300
Wire Notes Line
	7150 6450 10850 6450
Wire Notes Line
	8800 4200 7150 4200
Text GLabel 5500 1650 2    60   Input ~ 0
homeBtn
Text GLabel 5500 1800 2    60   Input ~ 0
leftArrBtn
Text GLabel 4900 3500 2    60   Input ~ 0
rightArrBtn
Text GLabel 5450 3600 2    60   Input ~ 0
upArrBtn
Text GLabel 4900 3000 2    60   Input ~ 0
downArrBtn
Wire Wire Line
	4450 1800 5350 1800
Wire Wire Line
	5350 1800 5350 1650
Wire Wire Line
	5350 1650 5500 1650
Wire Wire Line
	5350 1800 5500 1800
Connection ~ 5350 1800
Wire Wire Line
	9700 1850 9900 1850
Connection ~ 9700 1850
Wire Wire Line
	9850 2850 9650 2850
Connection ~ 9650 2850
Wire Wire Line
	9450 3550 9700 3550
Wire Wire Line
	9500 3850 9700 3850
Wire Wire Line
	9700 3850 9900 3850
Connection ~ 9700 3850
Wire Wire Line
	9450 1850 9700 1850
Wire Wire Line
	9400 1550 9700 1550
Wire Wire Line
	9400 2550 9650 2550
Wire Wire Line
	9450 2850 9650 2850
Wire Wire Line
	9350 4750 9600 4750
Wire Wire Line
	9400 5050 9600 5050
Wire Wire Line
	9800 5050 9600 5050
Connection ~ 9600 5050
Wire Wire Line
	9450 5900 9700 5900
Wire Wire Line
	9500 6200 9700 6200
Wire Wire Line
	9900 6200 9700 6200
Connection ~ 9700 6200
Text GLabel 4900 3200 2    60   Input ~ 0
upArrSens
Wire Wire Line
	4900 3200 4450 3200
Text GLabel 5400 3300 2    60   Input ~ 0
downArrSens
Wire Wire Line
	4450 3300 5400 3300
NoConn ~ 4450 4300
NoConn ~ 4450 4200
NoConn ~ 4450 4100
NoConn ~ 4450 2900
NoConn ~ 4450 2800
NoConn ~ 4450 2700
NoConn ~ 4450 2600
Wire Notes Line
	8800 800  8800 6450
Wire Notes Line
	8800 3000 7150 3000
Wire Notes Line
	10850 800  10850 6450
Text GLabel 7700 2800 0    60   Input ~ 0
powerLED
Wire Wire Line
	7700 2800 7800 2800
Text GLabel 4500 2200 2    60   Input ~ 0
powerLED
Wire Wire Line
	4450 2100 4450 2200
Wire Wire Line
	4450 2200 4500 2200
Wire Wire Line
	4450 2300 4450 2350
Wire Wire Line
	4450 2350 4550 2350
Wire Wire Line
	4450 2400 4450 2500
Wire Wire Line
	4450 2500 4550 2500
$Comp
L invitation-rescue:ATMEGA32U4-A U1
U 1 1 5840CFD0
P 3350 2950
F 0 "U1" H 2400 4650 50  0000 C CNN
F 1 "ATMEGA32U4-A" H 4050 1450 50  0000 C CNN
F 2 "Housings_QFP:TQFP-44_10x10mm_Pitch0.8mm" H 3350 2950 50  0000 C CIN
F 3 "" H 4450 4050 50  0000 C CNN
	1    3350 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 3600 4800 3600
Wire Wire Line
	4800 3600 4800 3500
Wire Wire Line
	4800 3500 4900 3500
Wire Wire Line
	4800 3600 5450 3600
Connection ~ 4800 3600
Wire Wire Line
	4900 3000 4450 3000
$EndSCHEMATC
