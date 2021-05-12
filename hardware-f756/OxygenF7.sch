EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 2
Title "Oxygen F7 Flight Controller"
Date "2021-04-07"
Rev "A"
Comp "Michael Spencer"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:+3.3V #PWR01
U 1 1 606F3846
P 2400 950
F 0 "#PWR01" H 2400 800 50  0001 C CNN
F 1 "+3.3V" H 2415 1123 50  0000 C CNN
F 2 "" H 2400 950 50  0001 C CNN
F 3 "" H 2400 950 50  0001 C CNN
	1    2400 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 1050 2700 1000
Wire Wire Line
	2700 1000 2600 1000
Wire Wire Line
	2200 1000 2200 1050
Wire Wire Line
	2500 1000 2500 1050
Connection ~ 2500 1000
Wire Wire Line
	2600 1050 2600 1000
Connection ~ 2600 1000
Wire Wire Line
	2600 1000 2500 1000
Wire Wire Line
	2300 1050 2300 1000
Connection ~ 2300 1000
Wire Wire Line
	2300 1000 2200 1000
Wire Wire Line
	2400 1050 2400 1000
Connection ~ 2400 1000
Wire Wire Line
	2400 1000 2300 1000
Wire Wire Line
	2100 6550 2100 6600
Wire Wire Line
	2100 6600 2200 6600
Wire Wire Line
	2600 6600 2600 6550
Wire Wire Line
	2500 6550 2500 6600
Connection ~ 2500 6600
Wire Wire Line
	2500 6600 2600 6600
Wire Wire Line
	2400 6550 2400 6600
Connection ~ 2400 6600
Wire Wire Line
	2400 6600 2500 6600
Wire Wire Line
	2300 6550 2300 6600
Connection ~ 2300 6600
Wire Wire Line
	2300 6600 2350 6600
Wire Wire Line
	2200 6550 2200 6600
Connection ~ 2200 6600
Wire Wire Line
	2200 6600 2300 6600
$Comp
L power:GND #PWR030
U 1 1 606F5DEB
P 2350 6650
F 0 "#PWR030" H 2350 6400 50  0001 C CNN
F 1 "GND" H 2355 6477 50  0000 C CNN
F 2 "" H 2350 6650 50  0001 C CNN
F 3 "" H 2350 6650 50  0001 C CNN
	1    2350 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 6650 2350 6600
Connection ~ 2350 6600
Wire Wire Line
	2350 6600 2400 6600
$Comp
L Device:C C1
U 1 1 606F67F3
P 4400 1200
F 0 "C1" H 4515 1246 50  0000 L CNN
F 1 "4.7u" H 4515 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4438 1050 50  0001 C CNN
F 3 "~" H 4400 1200 50  0001 C CNN
F 4 "CL21B475KPFNNNE" H 4400 1200 50  0001 C CNN "Part#"
	1    4400 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 606F6BD1
P 4800 1200
F 0 "C2" H 4915 1246 50  0000 L CNN
F 1 "0.1u" H 4915 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4838 1050 50  0001 C CNN
F 3 "~" H 4800 1200 50  0001 C CNN
F 4 "CL21B104KBCNNNC‎" H 4800 1200 50  0001 C CNN "Part#"
	1    4800 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 606F71D0
P 5200 1200
F 0 "C3" H 5315 1246 50  0000 L CNN
F 1 "0.1u" H 5315 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5238 1050 50  0001 C CNN
F 3 "~" H 5200 1200 50  0001 C CNN
F 4 "CL21B104KBCNNNC‎" H 5200 1200 50  0001 C CNN "Part#"
	1    5200 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 606F753E
P 5600 1200
F 0 "C4" H 5715 1246 50  0000 L CNN
F 1 "0.1u" H 5715 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5638 1050 50  0001 C CNN
F 3 "~" H 5600 1200 50  0001 C CNN
F 4 "CL21B104KBCNNNC‎" H 5600 1200 50  0001 C CNN "Part#"
	1    5600 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 606F778F
P 6000 1200
F 0 "C5" H 6115 1246 50  0000 L CNN
F 1 "0.1u" H 6115 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6038 1050 50  0001 C CNN
F 3 "~" H 6000 1200 50  0001 C CNN
F 4 "CL21B104KBCNNNC‎" H 6000 1200 50  0001 C CNN "Part#"
	1    6000 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 606F7B0A
P 6400 1200
F 0 "C6" H 6515 1246 50  0000 L CNN
F 1 "0.1u" H 6515 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6438 1050 50  0001 C CNN
F 3 "~" H 6400 1200 50  0001 C CNN
F 4 "CL21B104KBCNNNC‎" H 6400 1200 50  0001 C CNN "Part#"
	1    6400 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 1050 6400 1000
Wire Wire Line
	6400 1000 6000 1000
Wire Wire Line
	5400 1000 5400 950 
Wire Wire Line
	5400 1000 5200 1000
Wire Wire Line
	4400 1000 4400 1050
Connection ~ 5400 1000
Wire Wire Line
	4400 1350 4400 1400
Wire Wire Line
	4400 1400 4800 1400
Wire Wire Line
	6400 1400 6400 1350
Wire Wire Line
	5400 1450 5400 1400
Connection ~ 5400 1400
Wire Wire Line
	5400 1400 5600 1400
Wire Wire Line
	5200 1400 5200 1350
Connection ~ 5200 1400
Wire Wire Line
	5200 1400 5400 1400
Wire Wire Line
	4800 1350 4800 1400
Connection ~ 4800 1400
Wire Wire Line
	4800 1400 5200 1400
Wire Wire Line
	4800 1050 4800 1000
Connection ~ 4800 1000
Wire Wire Line
	4800 1000 4400 1000
Wire Wire Line
	5200 1050 5200 1000
Connection ~ 5200 1000
Wire Wire Line
	5200 1000 4800 1000
Wire Wire Line
	5600 1050 5600 1000
Connection ~ 5600 1000
Wire Wire Line
	5600 1000 5400 1000
Wire Wire Line
	6000 1050 6000 1000
Connection ~ 6000 1000
Wire Wire Line
	6000 1000 5600 1000
Wire Wire Line
	6000 1350 6000 1400
Connection ~ 6000 1400
Wire Wire Line
	6000 1400 6400 1400
Wire Wire Line
	5600 1350 5600 1400
Connection ~ 5600 1400
Wire Wire Line
	5600 1400 6000 1400
Wire Notes Line
	4250 1700 4250 700 
Wire Notes Line
	4250 700  9050 700 
Wire Notes Line
	9050 700  9050 1700
Wire Notes Line
	4250 1700 9050 1700
Text Notes 4250 650  0    50   ~ 10
Decoupling Capacitors
Text Notes 4800 850  0    50   ~ 0
VDD (x5)
Text Notes 6750 850  0    50   ~ 0
VDDA
Wire Wire Line
	1400 1550 1500 1550
Wire Wire Line
	1400 1350 1500 1350
Text GLabel 1400 1550 0    50   Input ~ 0
BOOT0
Text GLabel 1400 1350 0    50   Input ~ 0
RESET
$Comp
L power:+3.3V #PWR07
U 1 1 60720E51
P 1000 1250
F 0 "#PWR07" H 1000 1100 50  0001 C CNN
F 1 "+3.3V" H 1015 1423 50  0000 C CNN
F 2 "" H 1000 1250 50  0001 C CNN
F 3 "" H 1000 1250 50  0001 C CNN
	1    1000 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 1950 1000 1950
Wire Wire Line
	1000 1950 1000 1250
Wire Wire Line
	1400 1750 1500 1750
Wire Wire Line
	1400 1850 1500 1850
Text GLabel 1400 1850 0    50   UnSpc ~ 0
VCAP_2
Wire Wire Line
	3300 2250 3200 2250
Text GLabel 3300 5550 2    50   BiDi ~ 0
SDMMC1_D0
Text GLabel 3300 5650 2    50   BiDi ~ 0
SDMMC1_D1
Text GLabel 3300 5750 2    50   BiDi ~ 0
SDMMC1_D2
Text GLabel 3300 5850 2    50   BiDi ~ 0
SDMMC1_D3
Text GLabel 3300 5950 2    50   BiDi ~ 0
SDMMC1_CK
Text GLabel 1400 4950 0    50   BiDi ~ 0
SDMMC1_CMD
Wire Wire Line
	1400 4950 1500 4950
Wire Wire Line
	3300 5550 3200 5550
Wire Wire Line
	3200 5650 3300 5650
Wire Wire Line
	3300 5750 3200 5750
Wire Wire Line
	3200 5850 3300 5850
Wire Wire Line
	3300 5950 3200 5950
Text GLabel 1400 2750 0    50   Input ~ 0
RCC_OSC_IN
Wire Wire Line
	1400 2750 1500 2750
Text GLabel 1400 2850 0    50   Output ~ 0
RCC_OSC_OUT
Wire Wire Line
	1400 2850 1500 2850
Wire Notes Line
	4100 6900 4100 700 
Wire Notes Line
	600  700  600  6900
Wire Notes Line
	600  6900 4100 6900
Wire Notes Line
	600  700  4100 700 
Text Notes 600  650  0    50   ~ 10
F7 Microcontroller
Text GLabel 3300 3950 2    50   BiDi ~ 0
I2C1_SDA
Text GLabel 3300 3850 2    50   Output ~ 0
I2C1_SCL
Text GLabel 3300 2750 2    50   BiDi ~ 0
SWCLK
Wire Wire Line
	3300 2750 3200 2750
Text GLabel 3300 2650 2    50   BiDi ~ 0
SWDIO
Wire Wire Line
	3300 2650 3200 2650
Text GLabel 3300 1850 2    50   BiDi ~ 0
SPI1_SCLK
Wire Wire Line
	3300 1850 3200 1850
Text GLabel 3300 1950 2    50   Input ~ 0
SPI1_MISO
Text GLabel 3300 2050 2    50   Output ~ 0
SPI1_MOSI
Wire Wire Line
	3300 1950 3200 1950
Wire Wire Line
	3200 2050 3300 2050
Text GLabel 3300 3050 2    50   Output ~ 0
TIM3_CH3_SERVO1
Text GLabel 3300 3150 2    50   Output ~ 0
TIM3_CH4_SERVO2
Wire Wire Line
	3300 3050 3200 3050
Wire Wire Line
	3200 3150 3300 3150
Text GLabel 1400 3950 0    50   Output ~ 0
TIM1_CH1_SERVO3
Text GLabel 1400 4150 0    50   Output ~ 0
TIM1_CH2_SERVO4
Text GLabel 1400 4350 0    50   Output ~ 0
TIM1_CH3_SERVO5
Text GLabel 1400 4450 0    50   Output ~ 0
TIM1_CH4_SERVO6
Wire Wire Line
	1500 4150 1400 4150
Wire Wire Line
	1500 3950 1400 3950
Wire Wire Line
	1400 4350 1500 4350
Wire Wire Line
	1500 4450 1400 4450
Text GLabel 3300 4050 2    50   Output ~ 0
TIM2_CH3_SERVO7
Wire Wire Line
	3300 4050 3200 4050
Text GLabel 3300 4150 2    50   Output ~ 0
TIM2_CH4_SERVO8
Wire Wire Line
	3300 4150 3200 4150
$Sheet
S 850  7400 500  150 
U 60FE74E7
F0 "Sensors & Outputs" 50
F1 "OxygenF7_IO.sch" 50
$EndSheet
Text GLabel 1400 5550 0    50   Output ~ 0
USART3_TX
Wire Wire Line
	1400 5650 1500 5650
Text GLabel 1400 5650 0    50   Input ~ 0
USART3_RX
Wire Wire Line
	1400 5550 1500 5550
Text GLabel 1400 4850 0    50   Output ~ 0
CAN1_TX
Text GLabel 1400 4750 0    50   Input ~ 0
CAN1_RX
Wire Wire Line
	1400 4750 1500 4750
Wire Wire Line
	1400 4850 1500 4850
Text GLabel 3300 4350 2    50   Output ~ 0
MPU_CS
Text GLabel 3300 4250 2    50   Input ~ 0
MPU_INT
Text GLabel 3300 2350 2    50   Output ~ 0
ULTRA_TRIG
Text GLabel 3300 2150 2    50   Input ~ 0
ULTRA_ECHO
Text GLabel 3300 3350 2    50   BiDi ~ 0
GPIO_1
Text GLabel 1400 5450 0    50   BiDi ~ 0
GPIO_2
Text GLabel 1400 5250 0    50   BiDi ~ 0
GPIO_4
Text GLabel 1400 5350 0    50   BiDi ~ 0
GPIO_3
Text GLabel 3300 5450 2    50   Input ~ 0
SDMMC1_DETECT
Wire Wire Line
	2100 1050 2100 1000
Wire Wire Line
	2100 1000 2200 1000
Connection ~ 2200 1000
Wire Wire Line
	2400 1000 2500 1000
Wire Wire Line
	2400 950  2400 1000
$Comp
L Device:C C11
U 1 1 60A0C942
P 8700 1200
F 0 "C11" H 8815 1246 50  0000 L CNN
F 1 "0.1u" H 8815 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8738 1050 50  0001 C CNN
F 3 "~" H 8700 1200 50  0001 C CNN
F 4 "CL21B104KBCNNNC‎" H 8700 1200 50  0001 C CNN "Part#"
	1    8700 1200
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR05
U 1 1 60A33602
P 8700 950
F 0 "#PWR05" H 8700 800 50  0001 C CNN
F 1 "+3.3V" H 8715 1123 50  0000 C CNN
F 2 "" H 8700 950 50  0001 C CNN
F 3 "" H 8700 950 50  0001 C CNN
	1    8700 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 950  8700 1050
$Comp
L power:GND #PWR012
U 1 1 60A403FF
P 8700 1450
F 0 "#PWR012" H 8700 1200 50  0001 C CNN
F 1 "GND" H 8705 1277 50  0000 C CNN
F 2 "" H 8700 1450 50  0001 C CNN
F 3 "" H 8700 1450 50  0001 C CNN
	1    8700 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 1450 8700 1350
Text Notes 8350 850  0    50   ~ 0
VBAT
Text Notes 4800 950  0    50   ~ 0
11
Text Notes 5200 950  0    50   ~ 0
27
Text Notes 5600 950  0    50   ~ 0
50
Text Notes 6000 950  0    50   ~ 0
75
Text Notes 6400 950  0    50   ~ 0
100
Text Notes 4800 1500 0    50   ~ 0
10
Text Notes 5200 1500 0    50   ~ 0
26
Text Notes 5600 1500 0    50   ~ 0
49
Text Notes 6000 1500 0    50   ~ 0
74
Text Notes 6400 1500 0    50   ~ 0
99
Text Notes 8800 950  0    50   ~ 0
6
Text Notes 8800 1500 0    50   ~ 0
10
Text Label 9150 5100 0    50   ~ 0
J2_CC2
Text Label 9150 5000 0    50   ~ 0
J2_CC1
Text Notes 8050 4400 0    50   ~ 10
USB-C Connector
Wire Notes Line
	8050 4450 8050 6550
Wire Notes Line
	10400 4450 8050 4450
Wire Notes Line
	10400 6550 10400 4450
Wire Notes Line
	8050 6550 10400 6550
NoConn ~ 8200 6300
Text GLabel 9250 4800 2    50   Output ~ 0
VBUS
$Comp
L power:GND #PWR028
U 1 1 60C2DAFC
P 10100 5900
F 0 "#PWR028" H 10100 5650 50  0001 C CNN
F 1 "GND" H 10105 5727 50  0000 C CNN
F 2 "" H 10100 5900 50  0001 C CNN
F 3 "" H 10100 5900 50  0001 C CNN
	1    10100 5900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR027
U 1 1 60C2D6A9
P 9750 5900
F 0 "#PWR027" H 9750 5650 50  0001 C CNN
F 1 "GND" H 9755 5727 50  0000 C CNN
F 2 "" H 9750 5900 50  0001 C CNN
F 3 "" H 9750 5900 50  0001 C CNN
	1    9750 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 5000 10100 5600
Wire Wire Line
	9100 5000 10100 5000
Wire Wire Line
	9750 5100 9100 5100
Wire Wire Line
	9750 5600 9750 5100
$Comp
L Device:R_US R6
U 1 1 60C0C020
P 10100 5750
F 0 "R6" H 10168 5796 50  0000 L CNN
F 1 "5.1k" H 10168 5705 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 10140 5740 50  0001 C CNN
F 3 "~" H 10100 5750 50  0001 C CNN
F 4 "RMCF0805JT5K10" H 10100 5750 50  0001 C CNN "Part#"
	1    10100 5750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R5
U 1 1 60C0B797
P 9750 5750
F 0 "R5" H 9818 5796 50  0000 L CNN
F 1 "5.1k" H 9818 5705 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9790 5740 50  0001 C CNN
F 3 "~" H 9750 5750 50  0001 C CNN
F 4 "RMCF0805JT5K10" H 9750 5750 50  0001 C CNN "Part#"
	1    9750 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 5300 9250 5300
Connection ~ 9150 5300
Wire Wire Line
	9150 5400 9150 5300
Wire Wire Line
	9100 5400 9150 5400
Wire Wire Line
	9100 5300 9150 5300
$Comp
L Connector:USB_C_Receptacle_USB2.0 J2
U 1 1 60B49C36
P 8500 5400
F 0 "J2" H 8607 6267 50  0000 C CNN
F 1 "USB_C_2.0" H 8607 6176 50  0000 C CNN
F 2 "Connector_USB:USB_C_Receptacle_GCT_USB4085" H 8650 5400 50  0001 C CNN
F 3 "https://www.usb.org/sites/default/files/documents/usb_type-c.zip" H 8650 5400 50  0001 C CNN
F 4 "USB4085-GF-A" H 8500 5400 50  0001 C CNN "Part#"
	1    8500 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 5500 9250 5500
Connection ~ 9150 5500
Wire Wire Line
	9150 5600 9150 5500
Wire Wire Line
	9100 5600 9150 5600
Wire Wire Line
	9100 5500 9150 5500
Text GLabel 9250 5300 2    50   BiDi ~ 0
USB_D-
Text GLabel 9250 5500 2    50   BiDi ~ 0
USB_D+
NoConn ~ 9100 5900
NoConn ~ 9100 6000
$Comp
L power:GND #PWR029
U 1 1 60B4B3BC
P 8500 6300
F 0 "#PWR029" H 8500 6050 50  0001 C CNN
F 1 "GND" H 8505 6127 50  0000 C CNN
F 2 "" H 8500 6300 50  0001 C CNN
F 3 "" H 8500 6300 50  0001 C CNN
	1    8500 6300
	1    0    0    -1  
$EndComp
Text Notes 4250 4750 0    50   ~ 10
Power & Status LEDs
Wire Notes Line
	4250 4800 4250 6000
Wire Notes Line
	4250 6000 5750 6000
Wire Notes Line
	5750 4800 5750 6000
Wire Notes Line
	4250 4800 5750 4800
$Comp
L power:GND #PWR024
U 1 1 60A7A10E
P 4400 5750
F 0 "#PWR024" H 4400 5500 50  0001 C CNN
F 1 "GND" H 4405 5577 50  0000 C CNN
F 2 "" H 4400 5750 50  0001 C CNN
F 3 "" H 4400 5750 50  0001 C CNN
	1    4400 5750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR025
U 1 1 60A79CEE
P 4950 5750
F 0 "#PWR025" H 4950 5500 50  0001 C CNN
F 1 "GND" H 4955 5577 50  0000 C CNN
F 2 "" H 4950 5750 50  0001 C CNN
F 3 "" H 4950 5750 50  0001 C CNN
	1    4950 5750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR026
U 1 1 60A79809
P 5400 5750
F 0 "#PWR026" H 5400 5500 50  0001 C CNN
F 1 "GND" H 5405 5577 50  0000 C CNN
F 2 "" H 5400 5750 50  0001 C CNN
F 3 "" H 5400 5750 50  0001 C CNN
	1    5400 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 5400 4400 5450
Wire Wire Line
	4950 5400 4950 5450
Wire Wire Line
	5400 5450 5400 5400
$Comp
L Device:R_US R4
U 1 1 60A53109
P 5400 5600
F 0 "R4" H 5468 5646 50  0000 L CNN
F 1 "20" H 5468 5555 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5440 5590 50  0001 C CNN
F 3 "~" H 5400 5600 50  0001 C CNN
F 4 "RMCF0805FT20R0" H 5400 5600 50  0001 C CNN "Part#"
	1    5400 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R3
U 1 1 60A52B1D
P 4950 5600
F 0 "R3" H 5018 5646 50  0000 L CNN
F 1 "261" H 5018 5555 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4990 5590 50  0001 C CNN
F 3 "~" H 4950 5600 50  0001 C CNN
F 4 "RMCF0805FT261R" H 4950 5600 50  0001 C CNN "Part#"
	1    4950 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R2
U 1 1 60A5242A
P 4400 5600
F 0 "R2" H 4468 5646 50  0000 L CNN
F 1 "20" H 4468 5555 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4440 5590 50  0001 C CNN
F 3 "~" H 4400 5600 50  0001 C CNN
F 4 "RMCF0805FT20R0" H 4400 5600 50  0001 C CNN "Part#"
	1    4400 5600
	1    0    0    -1  
$EndComp
Text GLabel 5400 5100 1    50   Input ~ 0
LED2
Text GLabel 4950 5100 1    50   Input ~ 0
LED1
$Comp
L power:+3.3V #PWR023
U 1 1 60A504C5
P 4400 5100
F 0 "#PWR023" H 4400 4950 50  0001 C CNN
F 1 "+3.3V" H 4415 5273 50  0000 C CNN
F 2 "" H 4400 5100 50  0001 C CNN
F 3 "" H 4400 5100 50  0001 C CNN
	1    4400 5100
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_ALT D4
U 1 1 60A4EB13
P 5400 5250
F 0 "D4" V 5439 5132 50  0000 R CNN
F 1 "BLUE" V 5348 5132 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 5400 5250 50  0001 C CNN
F 3 "~" H 5400 5250 50  0001 C CNN
F 4 "150080BS75000" H 5400 5250 50  0001 C CNN "Part#"
	1    5400 5250
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_ALT D3
U 1 1 60A4E664
P 4950 5250
F 0 "D3" V 4989 5132 50  0000 R CNN
F 1 "RED" V 4898 5132 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 4950 5250 50  0001 C CNN
F 3 "~" H 4950 5250 50  0001 C CNN
F 4 "150080RS75000" H 4950 5250 50  0001 C CNN "Part#"
	1    4950 5250
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_ALT D2
U 1 1 60A4DD01
P 4400 5250
F 0 "D2" V 4439 5132 50  0000 R CNN
F 1 "GREEN" V 4348 5132 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 4400 5250 50  0001 C CNN
F 3 "~" H 4400 5250 50  0001 C CNN
F 4 "150080GS75000" H 4400 5250 50  0001 C CNN "Part#"
	1    4400 5250
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C14
U 1 1 607374FA
P 4850 2550
F 0 "C14" H 4965 2596 50  0000 L CNN
F 1 "2.2u" H 4965 2505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4888 2400 50  0001 C CNN
F 3 "~" H 4850 2550 50  0001 C CNN
F 4 "CL21B225KPFNNNE" H 4850 2550 50  0001 C CNN "Part#"
	1    4850 2550
	1    0    0    -1  
$EndComp
Text GLabel 4850 2400 1    50   UnSpc ~ 0
VCAP_2
Text GLabel 4450 2400 1    50   UnSpc ~ 0
VCAP_1
Wire Wire Line
	4850 2700 4850 2750
Wire Wire Line
	4850 2750 4650 2750
Wire Wire Line
	4450 2750 4450 2700
$Comp
L power:GND #PWR016
U 1 1 60740CF2
P 4650 2800
F 0 "#PWR016" H 4650 2550 50  0001 C CNN
F 1 "GND" H 4655 2627 50  0000 C CNN
F 2 "" H 4650 2800 50  0001 C CNN
F 3 "" H 4650 2800 50  0001 C CNN
	1    4650 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 2800 4650 2750
Connection ~ 4650 2750
Wire Wire Line
	4650 2750 4450 2750
Wire Wire Line
	5650 2400 5600 2400
Wire Wire Line
	5250 2400 5300 2400
Text GLabel 5700 2050 2    50   Output ~ 0
RCC_OSC_IN
$Comp
L power:GND #PWR017
U 1 1 6079FAAB
P 5450 2650
F 0 "#PWR017" H 5450 2400 50  0001 C CNN
F 1 "GND" H 5455 2477 50  0000 C CNN
F 2 "" H 5450 2650 50  0001 C CNN
F 3 "" H 5450 2650 50  0001 C CNN
	1    5450 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 2050 5250 2400
Wire Wire Line
	5250 2050 5700 2050
Wire Wire Line
	5650 2200 5700 2200
Wire Wire Line
	5650 2200 5650 2400
Text GLabel 5700 2200 2    50   Input ~ 0
RCC_OSC_OUT
Wire Notes Line
	4250 1950 4250 3050
Wire Notes Line
	4250 3050 6350 3050
Wire Notes Line
	6350 3050 6350 1950
Wire Notes Line
	4250 1950 6350 1950
Text Notes 4250 1900 0    50   ~ 10
Supporting Circuitry
$Comp
L Device:C C17
U 1 1 607CFB59
P 5150 4000
F 0 "C17" H 5265 4046 50  0000 L CNN
F 1 "10u" H 5265 3955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5188 3850 50  0001 C CNN
F 3 "~" H 5150 4000 50  0001 C CNN
F 4 "CL21B106KQQNNNG" H 5150 4000 50  0001 C CNN "Part#"
	1    5150 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C18
U 1 1 607D050E
P 6650 4000
F 0 "C18" H 6765 4046 50  0000 L CNN
F 1 "10u" H 6765 3955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6688 3850 50  0001 C CNN
F 3 "~" H 6650 4000 50  0001 C CNN
F 4 "CL21B106KQQNNNG" H 6650 4000 50  0001 C CNN "Part#"
	1    6650 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 3850 6650 3800
Wire Wire Line
	6650 3800 6500 3800
Wire Wire Line
	5150 3850 5150 3800
$Comp
L power:GND #PWR020
U 1 1 607D8616
P 5150 4200
F 0 "#PWR020" H 5150 3950 50  0001 C CNN
F 1 "GND" H 5155 4027 50  0000 C CNN
F 2 "" H 5150 4200 50  0001 C CNN
F 3 "" H 5150 4200 50  0001 C CNN
	1    5150 4200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR021
U 1 1 607D8BF1
P 6000 4300
F 0 "#PWR021" H 6000 4050 50  0001 C CNN
F 1 "GND" H 6005 4127 50  0000 C CNN
F 2 "" H 6000 4300 50  0001 C CNN
F 3 "" H 6000 4300 50  0001 C CNN
	1    6000 4300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR022
U 1 1 607D8ED3
P 6650 4200
F 0 "#PWR022" H 6650 3950 50  0001 C CNN
F 1 "GND" H 6655 4027 50  0000 C CNN
F 2 "" H 6650 4200 50  0001 C CNN
F 3 "" H 6650 4200 50  0001 C CNN
	1    6650 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 4200 6650 4150
Wire Wire Line
	5150 4200 5150 4150
$Comp
L power:+3.3V #PWR019
U 1 1 607E12CE
P 6650 3750
F 0 "#PWR019" H 6650 3600 50  0001 C CNN
F 1 "+3.3V" H 6665 3923 50  0000 C CNN
F 2 "" H 6650 3750 50  0001 C CNN
F 3 "" H 6650 3750 50  0001 C CNN
	1    6650 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 3750 6650 3800
Connection ~ 6650 3800
$Comp
L Diode:BAT54C D1
U 1 1 607169DE
P 4850 3800
F 0 "D1" V 4896 3888 50  0000 L CNN
F 1 "BAT54C" V 4805 3888 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4925 3925 50  0001 L CNN
F 3 "http://www.diodes.com/_files/datasheets/ds11005.pdf" H 4770 3800 50  0001 C CNN
F 4 "BAT54CQ-7-F" H 4850 3800 50  0001 C CNN "Part#"
	1    4850 3800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5050 3800 5150 3800
Connection ~ 5150 3800
Wire Wire Line
	4850 3500 4700 3500
Wire Wire Line
	4850 4100 4700 4100
Text GLabel 4700 3500 0    50   Input ~ 0
+5V_BEC
$Comp
L power:+5V #PWR018
U 1 1 607335D7
P 5150 3750
F 0 "#PWR018" H 5150 3600 50  0001 C CNN
F 1 "+5V" H 5165 3923 50  0000 C CNN
F 2 "" H 5150 3750 50  0001 C CNN
F 3 "" H 5150 3750 50  0001 C CNN
	1    5150 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 3750 5150 3800
Wire Wire Line
	5500 4000 5450 4000
Wire Wire Line
	5450 4000 5450 3800
Connection ~ 5450 3800
Wire Wire Line
	5450 3800 5500 3800
Text Notes 4250 3350 0    50   ~ 10
Power Regulator
$Comp
L Connector_Generic:Conn_01x04 J1
U 1 1 608D91DC
P 9350 1200
F 0 "J1" H 9268 775 50  0000 C CNN
F 1 "Conn_01x04" H 9268 866 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 9350 1200 50  0001 C CNN
F 3 "~" H 9350 1200 50  0001 C CNN
F 4 "PR20204VBNN" H 9350 1200 50  0001 C CNN "Part#"
	1    9350 1200
	-1   0    0    1   
$EndComp
Text GLabel 9950 1000 2    50   BiDi ~ 0
SWCLK
Text GLabel 9950 1100 2    50   BiDi ~ 0
SWDIO
Wire Notes Line
	9150 1600 9150 700 
Wire Notes Line
	9150 700  10400 700 
Wire Notes Line
	10400 700  10400 1600
Wire Notes Line
	9150 1600 10400 1600
Text Notes 9150 650  0    50   ~ 10
Serial Wire Debug (SWD)
$Comp
L power:+3.3V #PWR06
U 1 1 608EC094
P 9800 950
F 0 "#PWR06" H 9800 800 50  0001 C CNN
F 1 "+3.3V" H 9815 1123 50  0000 C CNN
F 2 "" H 9800 950 50  0001 C CNN
F 3 "" H 9800 950 50  0001 C CNN
	1    9800 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 1300 9550 1300
Wire Wire Line
	9800 950  9800 1300
$Comp
L power:GND #PWR08
U 1 1 609063F5
P 9700 1350
F 0 "#PWR08" H 9700 1100 50  0001 C CNN
F 1 "GND" H 9705 1177 50  0000 C CNN
F 2 "" H 9700 1350 50  0001 C CNN
F 3 "" H 9700 1350 50  0001 C CNN
	1    9700 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 1350 9700 1200
Wire Wire Line
	9700 1200 9550 1200
Wire Wire Line
	9950 1000 9550 1000
Wire Wire Line
	9550 1100 9950 1100
Text Notes 7650 850  0    50   ~ 0
VREF
Text Notes 8200 950  0    50   ~ 0
20
Text Notes 7800 950  0    50   ~ 0
20
Text Notes 8200 1500 0    50   ~ 0
19
Text Notes 7800 1500 0    50   ~ 0
19
$Comp
L power:GND #PWR011
U 1 1 607131AA
P 8000 1450
F 0 "#PWR011" H 8000 1200 50  0001 C CNN
F 1 "GND" H 8005 1277 50  0000 C CNN
F 2 "" H 8000 1450 50  0001 C CNN
F 3 "" H 8000 1450 50  0001 C CNN
	1    8000 1450
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR04
U 1 1 607131A4
P 8000 950
F 0 "#PWR04" H 8000 800 50  0001 C CNN
F 1 "+3.3V" H 8015 1123 50  0000 C CNN
F 2 "" H 8000 950 50  0001 C CNN
F 3 "" H 8000 950 50  0001 C CNN
	1    8000 950 
	1    0    0    -1  
$EndComp
$Comp
L Device:C C10
U 1 1 60713192
P 8200 1200
F 0 "C10" H 8315 1246 50  0000 L CNN
F 1 "0.1u" H 8315 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8238 1050 50  0001 C CNN
F 3 "~" H 8200 1200 50  0001 C CNN
F 4 "CL21B104KBCNNNC‎" H 8200 1200 50  0001 C CNN "Part#"
	1    8200 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 60713198
P 7800 1200
F 0 "C9" H 7915 1246 50  0000 L CNN
F 1 "1u" H 7915 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7838 1050 50  0001 C CNN
F 3 "~" H 7800 1200 50  0001 C CNN
F 4 "CL21B105KOFNNNG" H 7800 1200 50  0001 C CNN "Part#"
	1    7800 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 1400 7800 1400
Wire Wire Line
	8000 1450 8000 1400
Wire Wire Line
	7800 1400 7800 1350
Connection ~ 8000 1400
Wire Wire Line
	8200 1400 8000 1400
Wire Wire Line
	8200 1350 8200 1400
Wire Wire Line
	8000 1000 8200 1000
Wire Wire Line
	8000 1000 8000 950 
Wire Wire Line
	8200 1000 8200 1050
Connection ~ 8000 1000
Wire Wire Line
	7800 1000 8000 1000
Wire Wire Line
	7800 1050 7800 1000
Text Notes 7300 1500 0    50   ~ 0
19
Text Notes 7300 950  0    50   ~ 0
21
$Comp
L Device:C C8
U 1 1 606FFB99
P 7300 1200
F 0 "C8" H 7415 1246 50  0000 L CNN
F 1 "0.1u" H 7415 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7338 1050 50  0001 C CNN
F 3 "~" H 7300 1200 50  0001 C CNN
F 4 "CL21B104KBCNNNC‎" H 7300 1200 50  0001 C CNN "Part#"
	1    7300 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 1350 7300 1400
Wire Wire Line
	7100 1450 7100 1400
Wire Wire Line
	7300 1400 7100 1400
Wire Wire Line
	7300 1000 7300 1050
Wire Wire Line
	7100 1000 7300 1000
Wire Wire Line
	7100 1000 7100 950 
$Comp
L power:+3.3V #PWR03
U 1 1 60702838
P 7100 950
F 0 "#PWR03" H 7100 800 50  0001 C CNN
F 1 "+3.3V" H 7115 1123 50  0000 C CNN
F 2 "" H 7100 950 50  0001 C CNN
F 3 "" H 7100 950 50  0001 C CNN
	1    7100 950 
	1    0    0    -1  
$EndComp
Text Notes 6900 950  0    50   ~ 0
21
Text Notes 6900 1500 0    50   ~ 0
19
$Comp
L power:GND #PWR010
U 1 1 60702BBD
P 7100 1450
F 0 "#PWR010" H 7100 1200 50  0001 C CNN
F 1 "GND" H 7105 1277 50  0000 C CNN
F 2 "" H 7100 1450 50  0001 C CNN
F 3 "" H 7100 1450 50  0001 C CNN
	1    7100 1450
	1    0    0    -1  
$EndComp
Connection ~ 7100 1000
Wire Wire Line
	6900 1000 7100 1000
Wire Wire Line
	6900 1050 6900 1000
Wire Wire Line
	6900 1400 6900 1350
Connection ~ 7100 1400
Wire Wire Line
	7100 1400 6900 1400
$Comp
L Device:C C7
U 1 1 60700266
P 6900 1200
F 0 "C7" H 7015 1246 50  0000 L CNN
F 1 "1u" H 7015 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6938 1050 50  0001 C CNN
F 3 "~" H 6900 1200 50  0001 C CNN
F 4 "CL21B105KOFNNNG" H 6900 1200 50  0001 C CNN "Part#"
	1    6900 1200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 606F8343
P 5400 1450
F 0 "#PWR09" H 5400 1200 50  0001 C CNN
F 1 "GND" H 5405 1277 50  0000 C CNN
F 2 "" H 5400 1450 50  0001 C CNN
F 3 "" H 5400 1450 50  0001 C CNN
	1    5400 1450
	1    0    0    -1  
$EndComp
Text Notes 4400 1500 0    50   ~ 0
10
Text Notes 4400 950  0    50   ~ 0
11
$Comp
L power:+3.3V #PWR02
U 1 1 606F8637
P 5400 950
F 0 "#PWR02" H 5400 800 50  0001 C CNN
F 1 "+3.3V" H 5415 1123 50  0000 C CNN
F 2 "" H 5400 950 50  0001 C CNN
F 3 "" H 5400 950 50  0001 C CNN
	1    5400 950 
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1
U 1 1 60A08ACA
P 9300 2150
F 0 "H1" H 9400 2196 50  0000 L CNN
F 1 "MountingHole" H 9400 2105 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 9300 2150 50  0001 C CNN
F 3 "~" H 9300 2150 50  0001 C CNN
F 4 "1" H 9300 2150 50  0001 C CNN "DNP"
	1    9300 2150
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 60A08C3E
P 9300 2350
F 0 "H2" H 9400 2396 50  0000 L CNN
F 1 "MountingHole" H 9400 2305 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 9300 2350 50  0001 C CNN
F 3 "~" H 9300 2350 50  0001 C CNN
F 4 "1" H 9300 2350 50  0001 C CNN "DNP"
	1    9300 2350
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 60A08F2D
P 9300 2550
F 0 "H3" H 9400 2596 50  0000 L CNN
F 1 "MountingHole" H 9400 2505 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 9300 2550 50  0001 C CNN
F 3 "~" H 9300 2550 50  0001 C CNN
F 4 "1" H 9300 2550 50  0001 C CNN "DNP"
	1    9300 2550
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 60A09340
P 9300 2750
F 0 "H4" H 9400 2796 50  0000 L CNN
F 1 "MountingHole" H 9400 2705 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 9300 2750 50  0001 C CNN
F 3 "~" H 9300 2750 50  0001 C CNN
F 4 "1" H 9300 2750 50  0001 C CNN "DNP"
	1    9300 2750
	1    0    0    -1  
$EndComp
Wire Notes Line
	9150 2000 10000 2000
Text Notes 9150 1950 0    50   ~ 10
Mounting Holes
$Comp
L Device:Resonator Y1
U 1 1 60757926
P 5450 2400
F 0 "Y1" H 5450 2648 50  0000 C CNN
F 1 "8Mhz" H 5450 2557 50  0000 C CNN
F 2 "Crystal:Resonator_SMD_muRata_CSTxExxV-3Pin_3.0x1.1mm" H 5425 2400 50  0001 C CNN
F 3 "https://www.murata.com/en/products/productdata/8801161805854/SPEC-CSTNE8M00GH5L000R0.pdf" H 5425 2400 50  0001 C CNN
F 4 "CSTNE8M00GH5L000R0" H 5450 2400 50  0001 C CNN "Part#"
	1    5450 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 2650 5450 2600
Wire Wire Line
	7750 2350 7750 2300
Wire Wire Line
	7950 2350 7750 2350
$Comp
L power:+3.3V #PWR013
U 1 1 60805133
P 7750 2300
F 0 "#PWR013" H 7750 2150 50  0001 C CNN
F 1 "+3.3V" H 7765 2473 50  0000 C CNN
F 2 "" H 7750 2300 50  0001 C CNN
F 3 "" H 7750 2300 50  0001 C CNN
	1    7750 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 2650 8000 2650
Wire Wire Line
	7750 2700 7750 2650
$Comp
L power:GND #PWR015
U 1 1 607FA5C8
P 7750 2700
F 0 "#PWR015" H 7750 2450 50  0001 C CNN
F 1 "GND" H 7755 2527 50  0000 C CNN
F 2 "" H 7750 2700 50  0001 C CNN
F 3 "" H 7750 2700 50  0001 C CNN
	1    7750 2700
	1    0    0    -1  
$EndComp
Connection ~ 8400 2500
Wire Wire Line
	8400 2650 8400 2500
Wire Wire Line
	8300 2650 8400 2650
Wire Wire Line
	8400 2350 8350 2350
Wire Wire Line
	8400 2500 8400 2350
Wire Wire Line
	8500 2500 8400 2500
$Comp
L Switch:SW_Push SW1
U 1 1 607D7856
P 8150 2350
F 0 "SW1" H 8150 2635 50  0000 C CNN
F 1 "SW_Push" H 8150 2544 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_TL3342" H 8150 2550 50  0001 C CNN
F 3 "~" H 8150 2550 50  0001 C CNN
F 4 "TL3342F160QG/TR" H 8150 2350 50  0001 C CNN "Part#"
	1    8150 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R1
U 1 1 607B0019
P 8150 2650
F 0 "R1" V 8355 2650 50  0000 C CNN
F 1 "10k" V 8264 2650 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8190 2640 50  0001 C CNN
F 3 "~" H 8150 2650 50  0001 C CNN
F 4 "RMCF0805FT10K0" H 8150 2650 50  0001 C CNN "Part#"
	1    8150 2650
	0    -1   -1   0   
$EndComp
Text GLabel 8500 2500 2    50   Output ~ 0
BOOT0
Text Notes 6600 1900 0    50   ~ 10
Reset and Boot Mode Buttons
Wire Notes Line
	8850 1950 8850 2950
Wire Notes Line
	6600 1950 8850 1950
Wire Notes Line
	6600 2950 6600 1950
Wire Notes Line
	8850 2950 6600 2950
Wire Wire Line
	6750 2550 6750 2650
Wire Wire Line
	6750 2650 6950 2650
Wire Wire Line
	7150 2650 7150 2600
$Comp
L power:GND #PWR014
U 1 1 6075176F
P 6950 2700
F 0 "#PWR014" H 6950 2450 50  0001 C CNN
F 1 "GND" H 6955 2527 50  0000 C CNN
F 2 "" H 6950 2700 50  0001 C CNN
F 3 "" H 6950 2700 50  0001 C CNN
	1    6950 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 2700 6950 2650
Connection ~ 6950 2650
Wire Wire Line
	6950 2650 7150 2650
Text GLabel 7050 2050 2    50   Output ~ 0
RESET
Wire Wire Line
	6950 2150 7150 2150
Wire Wire Line
	7150 2150 7150 2200
Wire Wire Line
	6950 2150 6750 2150
Wire Wire Line
	6750 2150 6750 2250
Connection ~ 6950 2150
Wire Wire Line
	7050 2050 6950 2050
Wire Wire Line
	6950 2050 6950 2150
$Comp
L Switch:SW_Push SW2
U 1 1 607479AB
P 7150 2400
F 0 "SW2" V 7104 2548 50  0000 L CNN
F 1 "SW_Push" V 7195 2548 50  0000 L CNN
F 2 "Button_Switch_SMD:SW_SPST_TL3342" H 7150 2600 50  0001 C CNN
F 3 "~" H 7150 2600 50  0001 C CNN
F 4 "TL3342F160QG/TR" H 7150 2400 50  0001 C CNN "Part#"
	1    7150 2400
	0    1    1    0   
$EndComp
$Comp
L Device:C C12
U 1 1 60746988
P 6750 2400
F 0 "C12" H 6865 2446 50  0000 L CNN
F 1 "0.1u" H 6865 2355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6788 2250 50  0001 C CNN
F 3 "~" H 6750 2400 50  0001 C CNN
F 4 "CL21B104KBCNNNC‎" H 6750 2400 50  0001 C CNN "Part#"
	1    6750 2400
	1    0    0    -1  
$EndComp
Text GLabel 1350 3350 0    50   Output ~ 0
LED1
Text GLabel 1350 3450 0    50   Output ~ 0
LED2
Text Notes 7150 3200 0    50   ~ 10
I2C Pull-Ups
Wire Notes Line
	7150 4000 8350 4000
Wire Notes Line
	7150 3250 7150 4000
Wire Notes Line
	8350 3250 7150 3250
Wire Notes Line
	8350 4000 8350 3250
Wire Wire Line
	8050 3900 8050 3800
Wire Wire Line
	7600 3900 8050 3900
Text GLabel 7600 3900 0    50   BiDi ~ 0
I2C1_SCL
Wire Wire Line
	7600 3800 7700 3800
Text GLabel 7600 3800 0    50   BiDi ~ 0
I2C1_SDA
$Comp
L power:+3.3V #PWR060
U 1 1 6077C5A7
P 8050 3500
F 0 "#PWR060" H 8050 3350 50  0001 C CNN
F 1 "+3.3V" H 8065 3673 50  0000 C CNN
F 2 "" H 8050 3500 50  0001 C CNN
F 3 "" H 8050 3500 50  0001 C CNN
	1    8050 3500
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR059
U 1 1 6077BF4A
P 7700 3500
F 0 "#PWR059" H 7700 3350 50  0001 C CNN
F 1 "+3.3V" H 7715 3673 50  0000 C CNN
F 2 "" H 7700 3500 50  0001 C CNN
F 3 "" H 7700 3500 50  0001 C CNN
	1    7700 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R8
U 1 1 6077BC5D
P 8050 3650
F 0 "R8" H 8118 3696 50  0000 L CNN
F 1 "4.7k" H 8118 3605 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8090 3640 50  0001 C CNN
F 3 "~" H 8050 3650 50  0001 C CNN
F 4 "RMCF0805FT4K70" H 8050 3650 50  0001 C CNN "Part#"
	1    8050 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R7
U 1 1 6077B843
P 7700 3650
F 0 "R7" H 7768 3696 50  0000 L CNN
F 1 "4.7k" H 7768 3605 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7740 3640 50  0001 C CNN
F 3 "~" H 7700 3650 50  0001 C CNN
F 4 "RMCF0805FT4K70" H 7700 3650 50  0001 C CNN "Part#"
	1    7700 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 4800 9250 4800
Text GLabel 1400 1750 0    50   UnSpc ~ 0
VCAP_1
Wire Wire Line
	5150 3800 5450 3800
$Comp
L Device:C C13
U 1 1 60737C2E
P 4450 2550
F 0 "C13" H 4565 2596 50  0000 L CNN
F 1 "2.2u" H 4565 2505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4488 2400 50  0001 C CNN
F 3 "~" H 4450 2550 50  0001 C CNN
F 4 "CL21B225KPFNNNE" H 4450 2550 50  0001 C CNN "Part#"
	1    4450 2550
	1    0    0    1   
$EndComp
Text GLabel 3300 4550 2    50   Output ~ 0
BMP_CS
Text GLabel 3300 4450 2    50   Input ~ 0
BMP_INT
Wire Wire Line
	3200 3950 3300 3950
Text GLabel 3300 2250 2    50   Input ~ 0
VBUS
Text GLabel 3300 2450 2    50   BiDi ~ 0
USB_D-
Text GLabel 3300 2550 2    50   BiDi ~ 0
USB_D+
Wire Wire Line
	3300 2450 3200 2450
Wire Wire Line
	3200 2550 3300 2550
Text GLabel 3300 1550 2    50   BiDi ~ 0
USART2_TX
Wire Wire Line
	3300 1550 3200 1550
Text GLabel 4700 4100 0    50   Input ~ 0
VBUS
Wire Notes Line
	9150 2900 10000 2900
Wire Notes Line
	10000 2000 10000 2900
Wire Notes Line
	9150 2900 9150 2000
$Comp
L MCU_ST_STM32F7:STM32F756VGTx U1
U 1 1 6088EA70
P 2400 3750
F 0 "U1" H 1750 6350 50  0000 C CNN
F 1 "STM32F756VGTx" V 2400 3750 50  0000 C CNN
F 2 "Package_QFP:LQFP-100_14x14mm_P0.5mm" H 1700 1150 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00166114.pdf" H 2400 3750 50  0001 C CNN
F 4 "STM32F756VGT6" H 2400 3750 50  0001 C CNN "Part#"
	1    2400 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 5350 1400 5350
Wire Wire Line
	3300 3350 3200 3350
Wire Wire Line
	1500 5450 1400 5450
Wire Wire Line
	1400 5250 1500 5250
Wire Wire Line
	3300 5450 3200 5450
Wire Wire Line
	3300 2150 3200 2150
Wire Wire Line
	3300 2350 3200 2350
Wire Wire Line
	3300 4250 3200 4250
Wire Wire Line
	3200 4350 3300 4350
Wire Wire Line
	3300 4450 3200 4450
Wire Wire Line
	3200 4550 3300 4550
Wire Wire Line
	3200 3850 3300 3850
$Comp
L Regulator_Linear:XC6220B331MR U2
U 1 1 609751BB
P 6000 3900
F 0 "U2" H 6000 4267 50  0000 C CNN
F 1 "XC6220B331MR" H 6000 4176 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 6000 3900 50  0001 C CNN
F 3 "https://www.torexsemi.com/file/xc6220/XC6220.pdf" H 6750 2900 50  0001 C CNN
F 4 "XC6220B331MR-G" H 6000 3900 50  0001 C CNN "Part#"
	1    6000 3900
	1    0    0    -1  
$EndComp
Wire Notes Line
	4250 3400 4250 4550
Wire Notes Line
	4250 4550 7000 4550
Wire Notes Line
	4250 3400 7000 3400
Wire Notes Line
	7000 3400 7000 4550
NoConn ~ 3200 1350
NoConn ~ 3200 1650
NoConn ~ 3200 1750
NoConn ~ 3200 6250
NoConn ~ 3200 6150
NoConn ~ 3200 6050
NoConn ~ 3200 5350
NoConn ~ 3200 5250
NoConn ~ 3200 5150
NoConn ~ 3200 5050
NoConn ~ 3200 4950
NoConn ~ 3200 4850
NoConn ~ 3200 4750
NoConn ~ 1500 5750
NoConn ~ 1500 4550
NoConn ~ 1500 4250
NoConn ~ 1500 3850
NoConn ~ 1500 3750
NoConn ~ 1500 3650
NoConn ~ 1500 3550
NoConn ~ 3200 2850
Text GLabel 1400 5850 0    50   BiDi ~ 0
QUADSPI_IO0
Wire Wire Line
	1400 5850 1500 5850
Wire Wire Line
	1400 5950 1500 5950
Text GLabel 1400 5950 0    50   BiDi ~ 0
QUADSPI_IO1
Text GLabel 1350 3250 0    50   BiDi ~ 0
QUADSPI_IO2
Wire Wire Line
	1350 3250 1500 3250
Text GLabel 1400 6050 0    50   BiDi ~ 0
QUADSPI_IO3
Wire Wire Line
	1400 6050 1500 6050
Text GLabel 3300 3250 2    50   Output ~ 0
QUADSPI_SCLK
Wire Wire Line
	3300 3250 3200 3250
Text GLabel 3300 3650 2    50   BiDi ~ 0
QUADSPI_CS
Wire Wire Line
	3300 3650 3200 3650
$Comp
L Device:R_US R16
U 1 1 60FE8DF0
P 9100 3550
F 0 "R16" H 9168 3596 50  0000 L CNN
F 1 "100k" H 9168 3505 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9140 3540 50  0001 C CNN
F 3 "~" H 9100 3550 50  0001 C CNN
F 4 "RMCF0805FT100K" H 9100 3550 50  0001 C CNN "Part#"
	1    9100 3550
	1    0    0    -1  
$EndComp
Text GLabel 9000 3400 0    50   Output ~ 0
SPI1_MISO
Wire Wire Line
	9000 3400 9100 3400
$Comp
L power:GND #PWR042
U 1 1 60FF50BF
P 9100 3700
F 0 "#PWR042" H 9100 3450 50  0001 C CNN
F 1 "GND" H 9105 3527 50  0000 C CNN
F 2 "" H 9100 3700 50  0001 C CNN
F 3 "" H 9100 3700 50  0001 C CNN
	1    9100 3700
	1    0    0    -1  
$EndComp
Wire Notes Line
	8500 3250 9400 3250
Wire Notes Line
	9400 3250 9400 4000
Wire Notes Line
	9400 4000 8500 4000
Wire Notes Line
	8500 4000 8500 3250
Text Notes 8500 3200 0    50   ~ 10
SPI1 Pull-Down
Text Notes 8500 4200 0    50   Italic 0
Ensure that MISO is pulled low\nwhen no chips are selected
Wire Wire Line
	1350 3450 1500 3450
Wire Wire Line
	1350 3350 1500 3350
Text GLabel 1350 3050 0    50   Input ~ 0
UART8_RX
Text GLabel 1350 3150 0    50   Output ~ 0
UART8_TX
Wire Wire Line
	1350 3150 1500 3150
Wire Wire Line
	1350 3050 1500 3050
NoConn ~ 3200 3750
NoConn ~ 1500 4050
NoConn ~ 1500 6150
NoConn ~ 1500 6250
NoConn ~ 3200 1450
NoConn ~ 1500 5050
NoConn ~ 1500 5150
$EndSCHEMATC
