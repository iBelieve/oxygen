EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 2 2
Title "Oxygen F7 Flight Controller"
Date "2021-04-08"
Rev "A"
Comp "Michael Spencer"
Comment1 "Sensors and Outputs"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:GND #PWR?
U 1 1 6102693D
P 8400 3800
AR Path="/6102693D" Ref="#PWR?"  Part="1" 
AR Path="/60FE74E7/6102693D" Ref="#PWR036"  Part="1" 
F 0 "#PWR036" H 8400 3550 50  0001 C CNN
F 1 "GND" H 8405 3627 50  0000 C CNN
F 2 "" H 8400 3800 50  0001 C CNN
F 3 "" H 8400 3800 50  0001 C CNN
	1    8400 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 3800 8400 3750
Wire Wire Line
	8400 3750 8200 3750
$Comp
L power:+3.3V #PWR?
U 1 1 61026945
P 8400 3400
AR Path="/61026945" Ref="#PWR?"  Part="1" 
AR Path="/60FE74E7/61026945" Ref="#PWR032"  Part="1" 
F 0 "#PWR032" H 8400 3250 50  0001 C CNN
F 1 "+3.3V" H 8415 3573 50  0000 C CNN
F 2 "" H 8400 3400 50  0001 C CNN
F 3 "" H 8400 3400 50  0001 C CNN
	1    8400 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 3400 8400 3650
Wire Wire Line
	8400 3650 8200 3650
Wire Wire Line
	8500 3450 8200 3450
Wire Wire Line
	8500 3550 8200 3550
Text GLabel 8500 3450 2    50   Input ~ 0
I2C1_SCL
Text GLabel 8500 3550 2    50   BiDi ~ 0
I2C1_SDA
Wire Notes Line
	7850 4050 7850 3150
Wire Notes Line
	7850 3150 9000 3150
Wire Notes Line
	9000 3150 9000 4050
Wire Notes Line
	7850 4050 9000 4050
Text Notes 7850 3100 0    50   ~ 10
Qwiic I2C
$Comp
L power:GND #PWR?
U 1 1 6102695D
P 9600 3800
AR Path="/6102695D" Ref="#PWR?"  Part="1" 
AR Path="/60FE74E7/6102695D" Ref="#PWR037"  Part="1" 
F 0 "#PWR037" H 9600 3550 50  0001 C CNN
F 1 "GND" H 9605 3627 50  0000 C CNN
F 2 "" H 9600 3800 50  0001 C CNN
F 3 "" H 9600 3800 50  0001 C CNN
	1    9600 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 3800 9600 3450
Wire Notes Line
	9150 4050 9150 3150
Text Notes 9150 3100 0    50   ~ 10
Spektrum SRXL2
$Comp
L power:+5V #PWR?
U 1 1 61026966
P 9700 3400
AR Path="/61026966" Ref="#PWR?"  Part="1" 
AR Path="/60FE74E7/61026966" Ref="#PWR033"  Part="1" 
F 0 "#PWR033" H 9700 3250 50  0001 C CNN
F 1 "+5V" H 9715 3573 50  0000 C CNN
F 2 "" H 9700 3400 50  0001 C CNN
F 3 "" H 9700 3400 50  0001 C CNN
	1    9700 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 3450 9500 3450
Wire Wire Line
	9500 3550 9700 3550
Wire Wire Line
	9700 3550 9700 3400
Wire Notes Line
	9150 4050 10300 4050
Wire Notes Line
	10300 3150 10300 4050
Wire Notes Line
	9150 3150 10300 3150
Wire Wire Line
	9500 3750 9750 3750
Text GLabel 9750 3750 2    50   BiDi ~ 0
USART2_TX
$Comp
L power:GND #PWR?
U 1 1 6102697B
P 8450 4950
AR Path="/6102697B" Ref="#PWR?"  Part="1" 
AR Path="/60FE74E7/6102697B" Ref="#PWR046"  Part="1" 
F 0 "#PWR046" H 8450 4700 50  0001 C CNN
F 1 "GND" H 8455 4777 50  0000 C CNN
F 2 "" H 8450 4950 50  0001 C CNN
F 3 "" H 8450 4950 50  0001 C CNN
	1    8450 4950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61026981
P 8450 4550
AR Path="/61026981" Ref="#PWR?"  Part="1" 
AR Path="/60FE74E7/61026981" Ref="#PWR041"  Part="1" 
F 0 "#PWR041" H 8450 4400 50  0001 C CNN
F 1 "+5V" H 8465 4723 50  0000 C CNN
F 2 "" H 8450 4550 50  0001 C CNN
F 3 "" H 8450 4550 50  0001 C CNN
	1    8450 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 4950 8450 4900
Wire Wire Line
	8450 4900 8250 4900
Wire Wire Line
	8250 4600 8450 4600
Wire Wire Line
	8450 4600 8450 4550
Text GLabel 8450 4700 2    50   Input ~ 0
ULTRA_TRIG
Text GLabel 8450 4800 2    50   Output ~ 0
ULTRA_ECHO
Wire Notes Line
	7850 5200 7850 4300
Wire Notes Line
	7850 4300 9000 4300
Wire Notes Line
	9000 4300 9000 5200
Wire Notes Line
	7850 5200 9000 5200
Text Notes 7850 4250 0    50   ~ 10
Ultrasonic Distance Sensor
Text GLabel 1100 1550 0    50   BiDi ~ 0
SPI1_SCLK
Wire Wire Line
	1100 1550 1350 1550
Text GLabel 1100 1450 0    50   Output ~ 0
SPI1_MISO
Text GLabel 1100 1350 0    50   Input ~ 0
SPI1_MOSI
Wire Wire Line
	1100 1450 1350 1450
Wire Wire Line
	1100 1350 1350 1350
Text GLabel 1100 1650 0    50   Input ~ 0
MPU_CS
Wire Wire Line
	1100 1650 1200 1650
$Comp
L power:GND #PWR?
U 1 1 610269B7
P 2050 2350
AR Path="/610269B7" Ref="#PWR?"  Part="1" 
AR Path="/60FE74E7/610269B7" Ref="#PWR045"  Part="1" 
F 0 "#PWR045" H 2050 2100 50  0001 C CNN
F 1 "GND" H 2055 2177 50  0000 C CNN
F 2 "" H 2050 2350 50  0001 C CNN
F 3 "" H 2050 2350 50  0001 C CNN
	1    2050 2350
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 610269BD
P 2050 950
AR Path="/610269BD" Ref="#PWR?"  Part="1" 
AR Path="/60FE74E7/610269BD" Ref="#PWR031"  Part="1" 
F 0 "#PWR031" H 2050 800 50  0001 C CNN
F 1 "+3.3V" H 2065 1123 50  0000 C CNN
F 2 "" H 2050 950 50  0001 C CNN
F 3 "" H 2050 950 50  0001 C CNN
	1    2050 950 
	1    0    0    -1  
$EndComp
Text GLabel 2850 1350 2    50   Output ~ 0
MPU_INT
Wire Wire Line
	2850 1350 2750 1350
Text GLabel 4650 1400 0    50   Input ~ 0
SPI1_MOSI
Wire Wire Line
	4650 1400 4950 1400
Text GLabel 4650 1500 0    50   Output ~ 0
SPI1_MISO
Wire Wire Line
	4650 1500 4950 1500
Text GLabel 4650 1600 0    50   Input ~ 0
BMP_CS
Wire Wire Line
	4650 1600 4750 1600
Text GLabel 4650 1300 0    50   BiDi ~ 0
SPI1_SCLK
Wire Wire Line
	4650 1300 4950 1300
$Comp
L power:GND #PWR?
U 1 1 610269CD
P 5400 2000
AR Path="/610269CD" Ref="#PWR?"  Part="1" 
AR Path="/60FE74E7/610269CD" Ref="#PWR055"  Part="1" 
F 0 "#PWR055" H 5400 1750 50  0001 C CNN
F 1 "GND" H 5405 1827 50  0000 C CNN
F 2 "" H 5400 2000 50  0001 C CNN
F 3 "" H 5400 2000 50  0001 C CNN
	1    5400 2000
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 610269D3
P 5400 950
AR Path="/610269D3" Ref="#PWR?"  Part="1" 
AR Path="/60FE74E7/610269D3" Ref="#PWR050"  Part="1" 
F 0 "#PWR050" H 5400 800 50  0001 C CNN
F 1 "+3.3V" H 5415 1123 50  0000 C CNN
F 2 "" H 5400 950 50  0001 C CNN
F 3 "" H 5400 950 50  0001 C CNN
	1    5400 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 950  5400 1050
Wire Wire Line
	5400 1050 5450 1050
Wire Wire Line
	5450 1050 5450 1100
Wire Wire Line
	5400 1050 5350 1050
Wire Wire Line
	5350 1050 5350 1100
Connection ~ 5400 1050
Text GLabel 4650 1700 0    50   Input ~ 0
BMP_INT
Wire Wire Line
	4650 1700 4950 1700
Wire Notes Line
	6500 2250 6500 700 
Wire Notes Line
	6500 700  4100 700 
Wire Notes Line
	4100 700  4100 2250
Wire Notes Line
	4100 2250 6500 2250
Text Notes 4100 650  0    50   ~ 10
Barometer
Wire Wire Line
	5400 2000 5400 1950
Wire Wire Line
	5400 1950 5300 1950
Wire Wire Line
	5300 1950 5300 1900
Connection ~ 5400 1950
Wire Wire Line
	5400 1950 5400 1900
Wire Wire Line
	5400 1950 5500 1950
Wire Wire Line
	5500 1950 5500 1900
Wire Wire Line
	2800 2000 2800 1950
Wire Wire Line
	2800 1950 2750 1950
Wire Wire Line
	3200 2000 3200 1850
Wire Wire Line
	3200 1850 2750 1850
$Comp
L power:GND #PWR?
U 1 1 61026A19
P 2800 2300
AR Path="/61026A19" Ref="#PWR?"  Part="1" 
AR Path="/60FE74E7/61026A19" Ref="#PWR043"  Part="1" 
F 0 "#PWR043" H 2800 2050 50  0001 C CNN
F 1 "GND" H 2805 2127 50  0000 C CNN
F 2 "" H 2800 2300 50  0001 C CNN
F 3 "" H 2800 2300 50  0001 C CNN
	1    2800 2300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61026A1F
P 3200 2300
AR Path="/61026A1F" Ref="#PWR?"  Part="1" 
AR Path="/60FE74E7/61026A1F" Ref="#PWR044"  Part="1" 
F 0 "#PWR044" H 3200 2050 50  0001 C CNN
F 1 "GND" H 3205 2127 50  0000 C CNN
F 2 "" H 3200 2300 50  0001 C CNN
F 3 "" H 3200 2300 50  0001 C CNN
	1    3200 2300
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 61026A2C
P 3450 1200
AR Path="/61026A2C" Ref="#PWR?"  Part="1" 
AR Path="/60FE74E7/61026A2C" Ref="#PWR038"  Part="1" 
F 0 "#PWR038" H 3450 1050 50  0001 C CNN
F 1 "+3.3V" H 3465 1373 50  0000 C CNN
F 2 "" H 3450 1200 50  0001 C CNN
F 3 "" H 3450 1200 50  0001 C CNN
	1    3450 1200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61026A32
P 3450 1500
AR Path="/61026A32" Ref="#PWR?"  Part="1" 
AR Path="/60FE74E7/61026A32" Ref="#PWR039"  Part="1" 
F 0 "#PWR039" H 3450 1250 50  0001 C CNN
F 1 "GND" H 3455 1327 50  0000 C CNN
F 2 "" H 3450 1500 50  0001 C CNN
F 3 "" H 3450 1500 50  0001 C CNN
	1    3450 1500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61026A3F
P 1300 2100
AR Path="/61026A3F" Ref="#PWR?"  Part="1" 
AR Path="/60FE74E7/61026A3F" Ref="#PWR040"  Part="1" 
F 0 "#PWR040" H 1300 1850 50  0001 C CNN
F 1 "GND" H 1305 1927 50  0000 C CNN
F 2 "" H 1300 2100 50  0001 C CNN
F 3 "" H 1300 2100 50  0001 C CNN
	1    1300 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 2100 1300 1950
Wire Wire Line
	1300 1850 1350 1850
Wire Wire Line
	1350 1950 1300 1950
Connection ~ 1300 1950
Wire Wire Line
	1300 1950 1300 1850
NoConn ~ 2750 1650
NoConn ~ 2750 1550
Wire Notes Line
	3850 700  600  700 
Wire Notes Line
	600  700  600  2600
Wire Notes Line
	600  2600 3850 2600
Wire Notes Line
	3850 700  3850 2600
Text Notes 600  650  0    50   ~ 10
Gyro & Accelerometer
Text Notes 6750 650  0    50   ~ 10
I/O Header
Wire Notes Line
	6750 2800 8200 2800
Wire Notes Line
	6750 700  6750 2800
Wire Notes Line
	8200 700  6750 700 
Wire Notes Line
	8200 2800 8200 700 
Wire Wire Line
	7250 1400 7400 1400
Text GLabel 7250 1400 0    50   Output ~ 0
UART8_RX
Wire Wire Line
	7250 1300 7400 1300
Text GLabel 7250 1300 0    50   Input ~ 0
UART8_TX
Wire Wire Line
	7250 1900 7400 1900
Text GLabel 7250 1900 0    50   Input ~ 0
SPI1_MOSI
Wire Wire Line
	7250 1800 7400 1800
Text GLabel 7250 1800 0    50   Output ~ 0
SPI1_MISO
Wire Wire Line
	7250 1700 7400 1700
Text GLabel 7250 1700 0    50   Input ~ 0
SPI1_SCLK
Wire Wire Line
	7250 1600 7400 1600
Text GLabel 7250 1500 0    50   BiDi ~ 0
I2C1_SDA
Wire Wire Line
	7250 1500 7400 1500
Text GLabel 7250 1600 0    50   Input ~ 0
I2C1_SCL
Wire Wire Line
	7100 1100 7400 1100
Wire Wire Line
	7100 950  7100 1100
$Comp
L power:+3.3V #PWR034
U 1 1 61092051
P 7100 950
F 0 "#PWR034" H 7100 800 50  0001 C CNN
F 1 "+3.3V" H 7115 1123 50  0000 C CNN
F 2 "" H 7100 950 50  0001 C CNN
F 3 "" H 7100 950 50  0001 C CNN
	1    7100 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 1000 7400 1000
Wire Wire Line
	7350 950  7350 1000
$Comp
L power:+5V #PWR035
U 1 1 6108E8DA
P 7350 950
F 0 "#PWR035" H 7350 800 50  0001 C CNN
F 1 "+5V" H 7365 1123 50  0000 C CNN
F 2 "" H 7350 950 50  0001 C CNN
F 3 "" H 7350 950 50  0001 C CNN
	1    7350 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 1200 7400 1200
Wire Wire Line
	7350 2550 7350 1200
$Comp
L power:GND #PWR048
U 1 1 6108B232
P 7350 2550
F 0 "#PWR048" H 7350 2300 50  0001 C CNN
F 1 "GND" H 7355 2377 50  0000 C CNN
F 2 "" H 7350 2550 50  0001 C CNN
F 3 "" H 7350 2550 50  0001 C CNN
	1    7350 2550
	1    0    0    -1  
$EndComp
Text GLabel 7250 2000 0    50   Input ~ 0
CAN1_TX
Text GLabel 7250 2100 0    50   Output ~ 0
CAN1_RX
Wire Wire Line
	7250 2000 7400 2000
Wire Wire Line
	7250 2100 7400 2100
NoConn ~ 9500 3650
Text GLabel 7250 2200 0    50   BiDi ~ 0
GPIO_1
Text GLabel 7250 2300 0    50   BiDi ~ 0
GPIO_2
Text GLabel 7250 2400 0    50   BiDi ~ 0
GPIO_3
Text GLabel 7250 2500 0    50   BiDi ~ 0
GPIO_4
Wire Wire Line
	7250 2500 7400 2500
Wire Wire Line
	7400 2400 7250 2400
Wire Wire Line
	7250 2300 7400 2300
Wire Wire Line
	7400 2200 7250 2200
$Comp
L power:+3.3V #PWR?
U 1 1 60DD3D30
P 3550 3200
AR Path="/60DD3D30" Ref="#PWR?"  Part="1" 
AR Path="/60FE74E7/60DD3D30" Ref="#PWR056"  Part="1" 
F 0 "#PWR056" H 3550 3050 50  0001 C CNN
F 1 "+3.3V" H 3565 3373 50  0000 C CNN
F 2 "" H 3550 3200 50  0001 C CNN
F 3 "" H 3550 3200 50  0001 C CNN
	1    3550 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 4000 3600 4000
$Comp
L power:GND #PWR?
U 1 1 60DD3D38
P 3550 4700
AR Path="/60DD3D38" Ref="#PWR?"  Part="1" 
AR Path="/60FE74E7/60DD3D38" Ref="#PWR057"  Part="1" 
F 0 "#PWR057" H 3550 4450 50  0001 C CNN
F 1 "GND" H 3555 4527 50  0000 C CNN
F 2 "" H 3550 4700 50  0001 C CNN
F 3 "" H 3550 4700 50  0001 C CNN
	1    3550 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 4700 3550 4600
Wire Wire Line
	3550 4200 3600 4200
Wire Wire Line
	3600 4600 3550 4600
Connection ~ 3550 4600
Wire Wire Line
	3550 4600 3550 4200
Text GLabel 1300 4300 0    50   BiDi ~ 0
SDMMC1_D0
Wire Wire Line
	1300 4300 2000 4300
Text GLabel 1300 4400 0    50   BiDi ~ 0
SDMMC1_D1
Wire Wire Line
	1300 4400 1700 4400
Text GLabel 1300 4100 0    50   BiDi ~ 0
SDMMC1_CK
Wire Wire Line
	1300 4100 2300 4100
Text GLabel 1300 3700 0    50   BiDi ~ 0
SDMMC1_D2
Wire Wire Line
	1300 3700 3200 3700
Text GLabel 1300 3800 0    50   BiDi ~ 0
SDMMC1_D3
Wire Wire Line
	1300 3800 2900 3800
Text GLabel 1300 3900 0    50   BiDi ~ 0
SDMMC1_CMD
Wire Wire Line
	1300 3900 2600 3900
Text GLabel 1300 4500 0    50   Output ~ 0
SDMMC1_DETECT
Wire Wire Line
	1300 4500 1400 4500
$Comp
L power:GND #PWR?
U 1 1 60DD3D51
P 5350 4700
AR Path="/60DD3D51" Ref="#PWR?"  Part="1" 
AR Path="/60FE74E7/60DD3D51" Ref="#PWR058"  Part="1" 
F 0 "#PWR058" H 5350 4450 50  0001 C CNN
F 1 "GND" H 5355 4527 50  0000 C CNN
F 2 "" H 5350 4700 50  0001 C CNN
F 3 "" H 5350 4700 50  0001 C CNN
	1    5350 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 4700 5350 4600
Wire Wire Line
	5350 4600 5300 4600
Wire Notes Line
	600  2900 600  4950
Text Notes 600  2850 0    50   ~ 10
microSD Card Slot
Wire Notes Line
	600  4950 5500 4950
Wire Notes Line
	5500 2900 600  2900
Wire Notes Line
	5500 4950 5500 2900
Wire Wire Line
	8450 4800 8250 4800
Wire Wire Line
	8250 4700 8450 4700
Text GLabel 9150 1000 0    50   Input ~ 0
TIM3_CH3_SERVO1
Text GLabel 9150 1100 0    50   Input ~ 0
TIM3_CH4_SERVO2
Text GLabel 9150 1200 0    50   Input ~ 0
TIM1_CH1_SERVO3
Text GLabel 9150 1300 0    50   Input ~ 0
TIM1_CH2_SERVO4
Text GLabel 9150 1400 0    50   Input ~ 0
TIM1_CH3_SERVO5
Text GLabel 9150 1500 0    50   Input ~ 0
TIM1_CH4_SERVO6
Text GLabel 9150 1600 0    50   Input ~ 0
TIM2_CH3_SERVO7
Text GLabel 9150 1700 0    50   Input ~ 0
TIM2_CH4_SERVO8
Wire Wire Line
	9150 1000 9250 1000
Wire Wire Line
	9150 1100 9250 1100
Wire Wire Line
	9150 1200 9250 1200
Wire Wire Line
	9150 1300 9250 1300
Wire Wire Line
	9150 1400 9250 1400
Wire Wire Line
	9150 1500 9250 1500
Wire Wire Line
	9150 1600 9250 1600
Wire Wire Line
	9150 1700 9250 1700
$Comp
L power:GND #PWR?
U 1 1 608EB516
P 9800 2600
AR Path="/608EB516" Ref="#PWR?"  Part="1" 
AR Path="/60FE74E7/608EB516" Ref="#PWR049"  Part="1" 
F 0 "#PWR049" H 9800 2350 50  0001 C CNN
F 1 "GND" H 9805 2427 50  0000 C CNN
F 2 "" H 9800 2600 50  0001 C CNN
F 3 "" H 9800 2600 50  0001 C CNN
	1    9800 2600
	1    0    0    -1  
$EndComp
Text GLabel 9900 1000 2    50   Output ~ 0
+5V_BEC
Wire Wire Line
	9900 1000 9800 1000
Wire Wire Line
	9800 1000 9800 1100
Wire Wire Line
	9800 1700 9750 1700
Connection ~ 9800 1000
Wire Wire Line
	9800 1000 9750 1000
Wire Wire Line
	9750 1600 9800 1600
Connection ~ 9800 1600
Wire Wire Line
	9800 1600 9800 1700
Wire Wire Line
	9750 1500 9800 1500
Connection ~ 9800 1500
Wire Wire Line
	9800 1500 9800 1600
Wire Wire Line
	9750 1400 9800 1400
Connection ~ 9800 1400
Wire Wire Line
	9800 1400 9800 1500
Wire Wire Line
	9750 1300 9800 1300
Connection ~ 9800 1300
Wire Wire Line
	9800 1300 9800 1400
Wire Wire Line
	9750 1200 9800 1200
Connection ~ 9800 1200
Wire Wire Line
	9800 1200 9800 1300
Wire Wire Line
	9750 1100 9800 1100
Connection ~ 9800 1100
Wire Wire Line
	9800 1100 9800 1200
Wire Wire Line
	9800 2600 9800 2550
Wire Wire Line
	9800 1850 9750 1850
Wire Wire Line
	9750 1950 9800 1950
Connection ~ 9800 1950
Wire Wire Line
	9800 1950 9800 1850
Wire Wire Line
	9750 2050 9800 2050
Connection ~ 9800 2050
Wire Wire Line
	9800 2050 9800 1950
Wire Wire Line
	9750 2150 9800 2150
Connection ~ 9800 2150
Wire Wire Line
	9800 2150 9800 2050
Wire Wire Line
	9750 2250 9800 2250
Connection ~ 9800 2250
Wire Wire Line
	9800 2250 9800 2150
Wire Wire Line
	9750 2350 9800 2350
Connection ~ 9800 2350
Wire Wire Line
	9800 2350 9800 2250
Wire Wire Line
	9750 2450 9800 2450
Connection ~ 9800 2450
Wire Wire Line
	9800 2450 9800 2350
Wire Wire Line
	9750 2550 9800 2550
Connection ~ 9800 2550
Wire Wire Line
	9800 2550 9800 2450
Wire Notes Line
	8350 2850 10350 2850
Wire Notes Line
	10350 2850 10350 700 
Wire Notes Line
	10350 700  8350 700 
Wire Notes Line
	8350 700  8350 2850
Text Notes 8350 650  0    50   ~ 10
Servo/ESC Outputs
Text Label 2800 1850 0    50   ~ 0
CPOUT
Text Label 2800 1950 0    50   ~ 0
REGOUT
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 61026937
P 8000 3650
AR Path="/61026937" Ref="J?"  Part="1" 
AR Path="/60FE74E7/61026937" Ref="J3"  Part="1" 
F 0 "J3" H 7918 3225 50  0000 C CNN
F 1 "JST SH-4" H 7918 3316 50  0000 C CNN
F 2 "Connector_JST:JST_SH_SM04B-SRSS-TB_1x04-1MP_P1.00mm_Horizontal" H 8000 3650 50  0001 C CNN
F 3 "~" H 8000 3650 50  0001 C CNN
F 4 "SM04B-SRSS-TB(LF)(SN)" H 8000 3650 50  0001 C CNN "Part#"
	1    8000 3650
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 61026957
P 9300 3650
AR Path="/61026957" Ref="J?"  Part="1" 
AR Path="/60FE74E7/61026957" Ref="J4"  Part="1" 
F 0 "J4" H 9218 3225 50  0000 C CNN
F 1 "JST ZH-4" H 9218 3316 50  0000 C CNN
F 2 "Sonrise:JST_ZH_B4B-ZR_1x04_P1.50mm_Vertical" H 9300 3650 50  0001 C CNN
F 3 "~" H 9300 3650 50  0001 C CNN
F 4 "B4B-ZR-SM4-TF(LF)(SN)" H 9300 3650 50  0001 C CNN "Part#"
	1    9300 3650
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 61026975
P 8050 4800
AR Path="/61026975" Ref="J?"  Part="1" 
AR Path="/60FE74E7/61026975" Ref="J7"  Part="1" 
F 0 "J7" H 7968 4375 50  0000 C CNN
F 1 "Conn_01x04" H 7968 4466 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 8050 4800 50  0001 C CNN
F 3 "~" H 8050 4800 50  0001 C CNN
F 4 "PR20204VBNN" H 8050 4800 50  0001 C CNN "Part#"
	1    8050 4800
	-1   0    0    1   
$EndComp
$Comp
L Sonrise:BMP388 U?
U 1 1 610269E0
P 5350 1500
AR Path="/610269E0" Ref="U?"  Part="1" 
AR Path="/60FE74E7/610269E0" Ref="U4"  Part="1" 
F 0 "U4" H 5630 1546 50  0000 L CNN
F 1 "BMP388" H 5630 1455 50  0000 L CNN
F 2 "Sonrise:LGA-10_2x2mm_P0.5mm" H 5350 800 50  0001 C CNN
F 3 "https://www.bosch-sensortec.com/media/boschsensortec/downloads/datasheets/bst-bmp388-ds001.pdf" H 5350 1500 50  0001 C CNN
F 4 "BMP388" H 5350 1500 50  0001 C CNN "Part#"
	1    5350 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 61026A08
P 3200 2150
AR Path="/61026A08" Ref="C?"  Part="1" 
AR Path="/60FE74E7/61026A08" Ref="C21"  Part="1" 
F 0 "C21" H 3315 2196 50  0000 L CNN
F 1 "2.2n" H 3315 2105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3238 2000 50  0001 C CNN
F 3 "~" H 3200 2150 50  0001 C CNN
F 4 "CL21B222KBANNNC" H 3200 2150 50  0001 C CNN "Part#"
	1    3200 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 61026A0F
P 2800 2150
AR Path="/61026A0F" Ref="C?"  Part="1" 
AR Path="/60FE74E7/61026A0F" Ref="C20"  Part="1" 
F 0 "C20" H 2915 2196 50  0000 L CNN
F 1 "0.1u" H 2915 2105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2838 2000 50  0001 C CNN
F 3 "~" H 2800 2150 50  0001 C CNN
F 4 "CL21B104KBCNNNC‎" H 2800 2150 50  0001 C CNN "Part#"
	1    2800 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 61026A26
P 3450 1350
AR Path="/61026A26" Ref="C?"  Part="1" 
AR Path="/60FE74E7/61026A26" Ref="C19"  Part="1" 
F 0 "C19" H 3565 1396 50  0000 L CNN
F 1 "0.1u" H 3565 1305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3488 1200 50  0001 C CNN
F 3 "~" H 3450 1350 50  0001 C CNN
F 4 "CL21B104KBCNNNC‎" H 3450 1350 50  0001 C CNN "Part#"
	1    3450 1350
	1    0    0    -1  
$EndComp
$Comp
L Sensor_Motion:MPU-6000 U?
U 1 1 61026A39
P 2050 1650
AR Path="/61026A39" Ref="U?"  Part="1" 
AR Path="/60FE74E7/61026A39" Ref="U3"  Part="1" 
F 0 "U3" H 1550 2200 50  0000 L BNN
F 1 "MPU-6000" V 2050 1650 50  0000 C CNN
F 2 "Sensor_Motion:InvenSense_QFN-24_4x4mm_P0.5mm" H 2050 850 50  0001 C CNN
F 3 "https://store.invensense.com/datasheets/invensense/MPU-6050_DataSheet_V3%204.pdf" H 2050 1500 50  0001 C CNN
F 4 "MPU-6000" H 2050 1650 50  0001 C CNN "Part#"
	1    2050 1650
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x16 J6
U 1 1 61089BC3
P 7600 1700
F 0 "J6" H 7680 1692 50  0000 L CNN
F 1 "Conn_01x16" H 7680 1601 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x16_P2.54mm_Vertical" H 7600 1700 50  0001 C CNN
F 3 "~" H 7600 1700 50  0001 C CNN
F 4 "61301611121" H 7600 1700 50  0001 C CNN "Part#"
	1    7600 1700
	1    0    0    -1  
$EndComp
$Comp
L Connector:Micro_SD_Card_Det J?
U 1 1 60DD3D2A
P 4500 4100
AR Path="/60DD3D2A" Ref="J?"  Part="1" 
AR Path="/60FE74E7/60DD3D2A" Ref="J10"  Part="1" 
F 0 "J10" H 4450 4917 50  0000 C CNN
F 1 "Micro_SD_Card_Det" H 4450 4826 50  0000 C CNN
F 2 "Connector_Card:microSD_HC_Hirose_DM3BT-DSF-PEJS" H 6550 4800 50  0001 C CNN
F 3 "https://www.hirose.com/product/download/?distributor=digikey&type=2d&lang=en&num=DM3BT-DSF-PEJS" H 4500 4200 50  0001 C CNN
F 4 "DM3BT-DSF-PEJS" H 4500 4100 50  0001 C CNN "Part#"
	1    4500 4100
	1    0    0    -1  
$EndComp
$Comp
L Sonrise:Conn_03x08_Row_Letter_Last J5
U 1 1 6088F56E
P 9450 1300
F 0 "J5" H 9500 1817 50  0000 C CNN
F 1 "Conn_03x08" H 9500 1726 50  0000 C CNN
F 2 "Sonrise:PinHeader_08x03_P2.54mm_Vertical" H 9450 1300 50  0001 C CNN
F 3 "~" H 9450 1300 50  0001 C CNN
F 4 "PR20208VBNN:3" H 9450 1300 50  0001 C CNN "Part#"
	1    9450 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R9
U 1 1 60DA05D0
P 1400 3450
F 0 "R9" H 1468 3496 50  0000 L CNN
F 1 "10k" H 1468 3405 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1440 3440 50  0001 C CNN
F 3 "~" H 1400 3450 50  0001 C CNN
F 4 "RMCF0805FT10K0" H 1400 3450 50  0001 C CNN "Part#"
	1    1400 3450
	1    0    0    -1  
$EndComp
Connection ~ 1400 4500
Wire Wire Line
	1400 4500 3600 4500
Wire Wire Line
	1400 3600 1400 4500
$Comp
L Device:R_US R10
U 1 1 60DEA1D5
P 1700 3450
F 0 "R10" H 1768 3496 50  0000 L CNN
F 1 "47k" H 1768 3405 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1740 3440 50  0001 C CNN
F 3 "~" H 1700 3450 50  0001 C CNN
F 4 "RMCF0805JT47K0" H 1700 3450 50  0001 C CNN "Part#"
	1    1700 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R11
U 1 1 60DEA577
P 2000 3450
F 0 "R11" H 2068 3496 50  0000 L CNN
F 1 "47k" H 2068 3405 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2040 3440 50  0001 C CNN
F 3 "~" H 2000 3450 50  0001 C CNN
F 4 "RMCF0805JT47K0" H 2000 3450 50  0001 C CNN "Part#"
	1    2000 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 3600 1700 4400
Connection ~ 1700 4400
Wire Wire Line
	1700 4400 3600 4400
Wire Wire Line
	2000 3600 2000 4300
Connection ~ 2000 4300
Wire Wire Line
	2000 4300 3600 4300
$Comp
L Device:R_US R12
U 1 1 60DF6257
P 2300 3450
F 0 "R12" H 2368 3496 50  0000 L CNN
F 1 "47k" H 2368 3405 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2340 3440 50  0001 C CNN
F 3 "~" H 2300 3450 50  0001 C CNN
F 4 "RMCF0805JT47K0" H 2300 3450 50  0001 C CNN "Part#"
	1    2300 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 3600 2300 4100
Connection ~ 2300 4100
Wire Wire Line
	2300 4100 3600 4100
$Comp
L Device:R_US R13
U 1 1 60E0A897
P 2600 3450
F 0 "R13" H 2668 3496 50  0000 L CNN
F 1 "47k" H 2668 3405 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2640 3440 50  0001 C CNN
F 3 "~" H 2600 3450 50  0001 C CNN
F 4 "RMCF0805JT47K0" H 2600 3450 50  0001 C CNN "Part#"
	1    2600 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 3600 2600 3900
Connection ~ 2600 3900
Wire Wire Line
	2600 3900 3600 3900
$Comp
L Device:R_US R14
U 1 1 60E10D95
P 2900 3450
F 0 "R14" H 2968 3496 50  0000 L CNN
F 1 "47k" H 2968 3405 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2940 3440 50  0001 C CNN
F 3 "~" H 2900 3450 50  0001 C CNN
F 4 "RMCF0805JT47K0" H 2900 3450 50  0001 C CNN "Part#"
	1    2900 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 3600 2900 3800
Connection ~ 2900 3800
Wire Wire Line
	2900 3800 3600 3800
$Comp
L Device:R_US R15
U 1 1 60E174D2
P 3200 3450
F 0 "R15" H 3268 3496 50  0000 L CNN
F 1 "47k" H 3268 3405 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3240 3440 50  0001 C CNN
F 3 "~" H 3200 3450 50  0001 C CNN
F 4 "RMCF0805JT47K0" H 3200 3450 50  0001 C CNN "Part#"
	1    3200 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 3600 3200 3700
Connection ~ 3200 3700
Wire Wire Line
	3200 3700 3600 3700
$Comp
L power:+3.3V #PWR?
U 1 1 60E27069
P 1400 3200
AR Path="/60E27069" Ref="#PWR?"  Part="1" 
AR Path="/60FE74E7/60E27069" Ref="#PWR0101"  Part="1" 
F 0 "#PWR0101" H 1400 3050 50  0001 C CNN
F 1 "+3.3V" H 1415 3373 50  0000 C CNN
F 2 "" H 1400 3200 50  0001 C CNN
F 3 "" H 1400 3200 50  0001 C CNN
	1    1400 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 3250 2600 3250
Wire Wire Line
	3200 3250 3200 3300
Wire Wire Line
	2900 3300 2900 3250
Connection ~ 2900 3250
Wire Wire Line
	2900 3250 3200 3250
Wire Wire Line
	2600 3300 2600 3250
Connection ~ 2600 3250
Wire Wire Line
	2600 3250 2900 3250
Wire Wire Line
	2300 3250 2300 3300
Connection ~ 2300 3250
Wire Wire Line
	1400 3200 1400 3250
Wire Wire Line
	1400 3250 1700 3250
Connection ~ 1400 3250
Wire Wire Line
	1400 3250 1400 3300
Wire Wire Line
	2000 3300 2000 3250
Connection ~ 2000 3250
Wire Wire Line
	2000 3250 2300 3250
Wire Wire Line
	1700 3300 1700 3250
Connection ~ 1700 3250
Wire Wire Line
	1700 3250 2000 3250
Wire Wire Line
	3550 3200 3550 4000
$Comp
L Connector_Generic:Conn_01x06 J?
U 1 1 61026A51
P 9400 4950
AR Path="/61026A51" Ref="J?"  Part="1" 
AR Path="/60FE74E7/61026A51" Ref="J9"  Part="1" 
F 0 "J9" H 9318 4425 50  0000 C CNN
F 1 "1.25mm" H 9318 4516 50  0000 C CNN
F 2 "Sonrise:10114830-10106LF_P1.25mm_Horizontal" H 9400 4950 50  0001 C CNN
F 3 "~" H 9400 4950 50  0001 C CNN
F 4 "10114830-10106LF" H 9400 4950 50  0001 C CNN "Part#"
	1    9400 4950
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61026A57
P 9650 5200
AR Path="/61026A57" Ref="#PWR?"  Part="1" 
AR Path="/60FE74E7/61026A57" Ref="#PWR054"  Part="1" 
F 0 "#PWR054" H 9650 4950 50  0001 C CNN
F 1 "GND" H 9655 5027 50  0000 C CNN
F 2 "" H 9650 5200 50  0001 C CNN
F 3 "" H 9650 5200 50  0001 C CNN
	1    9650 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 5200 9650 5050
Wire Wire Line
	9650 5050 9600 5050
$Comp
L power:+5V #PWR?
U 1 1 61026A5F
P 9700 4600
AR Path="/61026A5F" Ref="#PWR?"  Part="1" 
AR Path="/60FE74E7/61026A5F" Ref="#PWR051"  Part="1" 
F 0 "#PWR051" H 9700 4450 50  0001 C CNN
F 1 "+5V" H 9715 4773 50  0000 C CNN
F 2 "" H 9700 4600 50  0001 C CNN
F 3 "" H 9700 4600 50  0001 C CNN
	1    9700 4600
	1    0    0    -1  
$EndComp
Text GLabel 9800 4950 2    50   Output ~ 0
USART3_RX
Wire Wire Line
	9800 4950 9600 4950
Text GLabel 9800 4850 2    50   Input ~ 0
USART3_TX
Wire Wire Line
	9800 4850 9600 4850
Text GLabel 9800 5150 2    50   BiDi ~ 0
I2C1_SDA
Wire Wire Line
	9800 4650 9600 4650
Wire Notes Line
	10300 5450 10300 4350
Wire Notes Line
	10300 4350 9250 4350
Wire Notes Line
	9250 4350 9250 5450
Wire Notes Line
	9250 5450 10300 5450
Text Notes 9250 4300 0    50   ~ 10
BN-880Q
Wire Wire Line
	9600 4750 9700 4750
Wire Wire Line
	9700 4750 9700 4600
Text GLabel 9800 4650 2    50   Input ~ 0
I2C1_SCL
Wire Wire Line
	9800 5150 9600 5150
Text Notes 600  5150 0    50   ~ 10
128MB Flash Memory
Wire Notes Line
	600  6550 3900 6550
Wire Notes Line
	3900 5200 3900 6550
Wire Notes Line
	600  5200 3900 5200
Wire Notes Line
	600  6550 600  5200
Wire Wire Line
	2750 6000 2650 6000
Wire Wire Line
	2750 6100 2650 6100
Text GLabel 2750 6100 2    50   BiDi ~ 0
QUADSPI_IO3
Text GLabel 2750 6000 2    50   BiDi ~ 0
QUADSPI_IO2
$Comp
L Memory_Flash:W25Q128JVS U5
U 1 1 60DC465A
P 2150 5900
F 0 "U5" H 1800 6300 50  0000 C CNN
F 1 "W25Q128JVS" H 2150 5900 50  0000 C CNN
F 2 "Package_SO:SOIC-8_5.23x5.23mm_P1.27mm" H 2150 5900 50  0001 C CNN
F 3 "http://www.winbond.com/resource-files/w25q128jv_dtr%20revc%2003272018%20plus.pdf" H 2150 5900 50  0001 C CNN
F 4 "W25Q128JVSIQ" H 2150 5900 50  0001 C CNN "Part#"
	1    2150 5900
	1    0    0    -1  
$EndComp
Text GLabel 1300 5800 0    50   Input ~ 0
QUADSPI_CS
Wire Wire Line
	1300 5800 1400 5800
Text GLabel 1300 6000 0    50   Input ~ 0
QUADSPI_SCLK
Wire Wire Line
	1300 6000 1650 6000
$Comp
L power:GND #PWR?
U 1 1 60DD0247
P 2150 6300
AR Path="/60DD0247" Ref="#PWR?"  Part="1" 
AR Path="/60FE74E7/60DD0247" Ref="#PWR0103"  Part="1" 
F 0 "#PWR0103" H 2150 6050 50  0001 C CNN
F 1 "GND" H 2155 6127 50  0000 C CNN
F 2 "" H 2150 6300 50  0001 C CNN
F 3 "" H 2150 6300 50  0001 C CNN
	1    2150 6300
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 60DD129D
P 2150 5450
AR Path="/60DD129D" Ref="#PWR?"  Part="1" 
AR Path="/60FE74E7/60DD129D" Ref="#PWR0102"  Part="1" 
F 0 "#PWR0102" H 2150 5300 50  0001 C CNN
F 1 "+3.3V" H 2165 5623 50  0000 C CNN
F 2 "" H 2150 5450 50  0001 C CNN
F 3 "" H 2150 5450 50  0001 C CNN
	1    2150 5450
	1    0    0    -1  
$EndComp
Text GLabel 2750 5800 2    50   BiDi ~ 0
QUADSPI_IO1
Wire Wire Line
	2750 5800 2650 5800
Text GLabel 2750 5700 2    50   BiDi ~ 0
QUADSPI_IO0
Wire Wire Line
	2750 5700 2650 5700
$Comp
L Device:C C?
U 1 1 610269F5
P 6150 1550
AR Path="/610269F5" Ref="C?"  Part="1" 
AR Path="/60FE74E7/610269F5" Ref="C22"  Part="1" 
F 0 "C22" H 6265 1596 50  0000 L CNN
F 1 "0.1u" H 6265 1505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6188 1400 50  0001 C CNN
F 3 "~" H 6150 1550 50  0001 C CNN
F 4 "CL21B104KBCNNNC‎" H 6150 1550 50  0001 C CNN "Part#"
	1    6150 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61026A01
P 6150 1700
AR Path="/61026A01" Ref="#PWR?"  Part="1" 
AR Path="/60FE74E7/61026A01" Ref="#PWR053"  Part="1" 
F 0 "#PWR053" H 6150 1450 50  0001 C CNN
F 1 "GND" H 6155 1527 50  0000 C CNN
F 2 "" H 6150 1700 50  0001 C CNN
F 3 "" H 6150 1700 50  0001 C CNN
	1    6150 1700
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 610269FB
P 6150 1400
AR Path="/610269FB" Ref="#PWR?"  Part="1" 
AR Path="/60FE74E7/610269FB" Ref="#PWR052"  Part="1" 
F 0 "#PWR052" H 6150 1250 50  0001 C CNN
F 1 "+3.3V" H 6165 1573 50  0000 C CNN
F 2 "" H 6150 1400 50  0001 C CNN
F 3 "" H 6150 1400 50  0001 C CNN
	1    6150 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R17
U 1 1 6102A54B
P 1200 1100
F 0 "R17" H 1268 1146 50  0000 L CNN
F 1 "10k" H 1268 1055 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1240 1090 50  0001 C CNN
F 3 "~" H 1200 1100 50  0001 C CNN
F 4 "RMCF0805FT10K0" H 1200 1100 50  0001 C CNN "Part#"
	1    1200 1100
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 6102BD2D
P 1200 950
AR Path="/6102BD2D" Ref="#PWR?"  Part="1" 
AR Path="/60FE74E7/6102BD2D" Ref="#PWR047"  Part="1" 
F 0 "#PWR047" H 1200 800 50  0001 C CNN
F 1 "+3.3V" H 1215 1123 50  0000 C CNN
F 2 "" H 1200 950 50  0001 C CNN
F 3 "" H 1200 950 50  0001 C CNN
	1    1200 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 1250 1200 1650
Connection ~ 1200 1650
Wire Wire Line
	1200 1650 1350 1650
$Comp
L Device:R_US R18
U 1 1 610614C4
P 4750 1100
F 0 "R18" H 4818 1146 50  0000 L CNN
F 1 "10k" H 4818 1055 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4790 1090 50  0001 C CNN
F 3 "~" H 4750 1100 50  0001 C CNN
F 4 "RMCF0805FT10K0" H 4750 1100 50  0001 C CNN "Part#"
	1    4750 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6106FC67
P 3550 5900
AR Path="/6106FC67" Ref="C?"  Part="1" 
AR Path="/60FE74E7/6106FC67" Ref="C15"  Part="1" 
F 0 "C15" H 3665 5946 50  0000 L CNN
F 1 "0.1u" H 3665 5855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3588 5750 50  0001 C CNN
F 3 "~" H 3550 5900 50  0001 C CNN
F 4 "CL21B104KBCNNNC‎" H 3550 5900 50  0001 C CNN "Part#"
	1    3550 5900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6106FC6D
P 3550 6050
AR Path="/6106FC6D" Ref="#PWR?"  Part="1" 
AR Path="/60FE74E7/6106FC6D" Ref="#PWR064"  Part="1" 
F 0 "#PWR064" H 3550 5800 50  0001 C CNN
F 1 "GND" H 3555 5877 50  0000 C CNN
F 2 "" H 3550 6050 50  0001 C CNN
F 3 "" H 3550 6050 50  0001 C CNN
	1    3550 6050
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 6106FC73
P 3550 5750
AR Path="/6106FC73" Ref="#PWR?"  Part="1" 
AR Path="/60FE74E7/6106FC73" Ref="#PWR063"  Part="1" 
F 0 "#PWR063" H 3550 5600 50  0001 C CNN
F 1 "+3.3V" H 3565 5923 50  0000 C CNN
F 2 "" H 3550 5750 50  0001 C CNN
F 3 "" H 3550 5750 50  0001 C CNN
	1    3550 5750
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 6108D701
P 4750 950
AR Path="/6108D701" Ref="#PWR?"  Part="1" 
AR Path="/60FE74E7/6108D701" Ref="#PWR061"  Part="1" 
F 0 "#PWR061" H 4750 800 50  0001 C CNN
F 1 "+3.3V" H 4765 1123 50  0000 C CNN
F 2 "" H 4750 950 50  0001 C CNN
F 3 "" H 4750 950 50  0001 C CNN
	1    4750 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 1250 4750 1600
Connection ~ 4750 1600
Wire Wire Line
	4750 1600 4950 1600
$Comp
L Device:R_US R19
U 1 1 610BCC07
P 1400 5600
F 0 "R19" H 1468 5646 50  0000 L CNN
F 1 "10k" H 1468 5555 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1440 5590 50  0001 C CNN
F 3 "~" H 1400 5600 50  0001 C CNN
F 4 "RMCF0805FT10K0" H 1400 5600 50  0001 C CNN "Part#"
	1    1400 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 5750 1400 5800
Connection ~ 1400 5800
Wire Wire Line
	1400 5800 1650 5800
$Comp
L power:+3.3V #PWR?
U 1 1 610D1205
P 1400 5450
AR Path="/610D1205" Ref="#PWR?"  Part="1" 
AR Path="/60FE74E7/610D1205" Ref="#PWR062"  Part="1" 
F 0 "#PWR062" H 1400 5300 50  0001 C CNN
F 1 "+3.3V" H 1415 5623 50  0000 C CNN
F 2 "" H 1400 5450 50  0001 C CNN
F 3 "" H 1400 5450 50  0001 C CNN
	1    1400 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 5450 2150 5500
Text Notes 600  6650 0    50   Italic 0
IQ variant has Quad Mode enabled
$EndSCHEMATC
