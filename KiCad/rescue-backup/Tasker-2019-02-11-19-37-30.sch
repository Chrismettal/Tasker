EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:MeineBibli
LIBS:EigeneModule
LIBS:74xgxx
LIBS:ac-dc
LIBS:actel
LIBS:allegro
LIBS:Altera
LIBS:analog_devices
LIBS:battery_management
LIBS:bbd
LIBS:bosch
LIBS:brooktre
LIBS:cmos_ieee
LIBS:dc-dc
LIBS:diode
LIBS:elec-unifil
LIBS:ESD_Protection
LIBS:ftdi
LIBS:gennum
LIBS:graphic_symbols
LIBS:hc11
LIBS:infineon
LIBS:intersil
LIBS:ir
LIBS:Lattice
LIBS:leds
LIBS:LEM
LIBS:logic_programmable
LIBS:maxim
LIBS:mechanical
LIBS:microchip_dspic33dsc
LIBS:microchip_pic10mcu
LIBS:microchip_pic12mcu
LIBS:microchip_pic16mcu
LIBS:microchip_pic18mcu
LIBS:microchip_pic24mcu
LIBS:microchip_pic32mcu
LIBS:modules
LIBS:motor_drivers
LIBS:msp430
LIBS:nordicsemi
LIBS:nxp
LIBS:nxp_armmcu
LIBS:onsemi
LIBS:Oscillators
LIBS:Power_Management
LIBS:powerint
LIBS:pspice
LIBS:references
LIBS:rfcom
LIBS:RFSolutions
LIBS:sensors
LIBS:silabs
LIBS:stm8
LIBS:stm32
LIBS:supertex
LIBS:transf
LIBS:triac_thyristor
LIBS:ttl_ieee
LIBS:video
LIBS:wiznet
LIBS:Worldsemi
LIBS:Xicor
LIBS:zetex
LIBS:Zilog
LIBS:ESP8266
LIBS:QR_Tasker
LIBS:Tasker-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Tasker"
Date "2018-07-16"
Rev "V1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L USB_OTG J1
U 1 1 5B4CE4E0
P 2750 4450
F 0 "J1" H 2550 4900 50  0000 L CNN
F 1 "USB_OTG" H 2550 4800 50  0000 L CNN
F 2 "Connectors_USB:USB_Micro-B_Wuerth-629105150521" H 2900 4400 50  0001 C CNN
F 3 "" H 2900 4400 50  0001 C CNN
	1    2750 4450
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR01
U 1 1 5B4CE55F
P 3150 4150
F 0 "#PWR01" H 3150 4000 50  0001 C CNN
F 1 "+5V" H 3150 4290 50  0000 C CNN
F 2 "" H 3150 4150 50  0001 C CNN
F 3 "" H 3150 4150 50  0001 C CNN
	1    3150 4150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 5B4CE580
P 2650 4950
F 0 "#PWR02" H 2650 4700 50  0001 C CNN
F 1 "GND" H 2650 4800 50  0000 C CNN
F 2 "" H 2650 4950 50  0001 C CNN
F 3 "" H 2650 4950 50  0001 C CNN
	1    2650 4950
	1    0    0    -1  
$EndComp
NoConn ~ 3050 4650
$Comp
L CH340G U1
U 1 1 5B4CECE4
P 4950 4400
F 0 "U1" H 4950 4850 60  0000 C CNN
F 1 "CH340G" H 4950 3950 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-16_3.9x9.9mm_Pitch1.27mm" H 4950 4400 60  0001 C CNN
F 3 "" H 4950 4400 60  0001 C CNN
	1    4950 4400
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 5B4CED69
P 4250 4150
F 0 "R1" V 4200 4300 50  0000 C CNN
F 1 "470R" V 4250 4150 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4180 4150 50  0001 C CNN
F 3 "" H 4250 4150 50  0001 C CNN
	1    4250 4150
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 5B4CEDF5
P 4250 4250
F 0 "R2" V 4200 4400 50  0000 C CNN
F 1 "470R" V 4250 4250 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4180 4250 50  0001 C CNN
F 3 "" H 4250 4250 50  0001 C CNN
	1    4250 4250
	0    1    1    0   
$EndComp
Text GLabel 4100 4150 0    47   Input ~ 0
RX
Text GLabel 4100 4250 0    47   Input ~ 0
TX
$Comp
L Crystal Y1
U 1 1 5B4CEF0B
P 4000 4850
F 0 "Y1" H 4000 5000 50  0000 C CNN
F 1 "12MHz" H 4000 4700 50  0000 C CNN
F 2 "Crystals:Crystal_SMD_HC49-SD_HandSoldering" H 4000 4850 50  0001 C CNN
F 3 "" H 4000 4850 50  0001 C CNN
	1    4000 4850
	1    0    0    -1  
$EndComp
$Comp
L C_Small C1
U 1 1 5B4CEF6E
P 3650 5000
F 0 "C1" H 3660 5070 50  0000 L CNN
F 1 "22pF" H 3660 4920 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3650 5000 50  0001 C CNN
F 3 "" H 3650 5000 50  0001 C CNN
	1    3650 5000
	1    0    0    -1  
$EndComp
$Comp
L C_Small C2
U 1 1 5B4CF02F
P 4300 5000
F 0 "C2" H 4310 5070 50  0000 L CNN
F 1 "22pF" H 4310 4920 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4300 5000 50  0001 C CNN
F 3 "" H 4300 5000 50  0001 C CNN
	1    4300 5000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 5B4CF1AC
P 4000 5200
F 0 "#PWR03" H 4000 4950 50  0001 C CNN
F 1 "GND" H 4000 5050 50  0000 C CNN
F 2 "" H 4000 5200 50  0001 C CNN
F 3 "" H 4000 5200 50  0001 C CNN
	1    4000 5200
	1    0    0    -1  
$EndComp
$Comp
L C_Small C3
U 1 1 5B4CF380
P 3600 4200
F 0 "C3" H 3610 4270 50  0000 L CNN
F 1 "10nF" H 3610 4120 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3600 4200 50  0001 C CNN
F 3 "" H 3600 4200 50  0001 C CNN
	1    3600 4200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 5B4CF4D4
P 3400 4100
F 0 "#PWR04" H 3400 3850 50  0001 C CNN
F 1 "GND" H 3400 3950 50  0000 C CNN
F 2 "" H 3400 4100 50  0001 C CNN
F 3 "" H 3400 4100 50  0001 C CNN
	1    3400 4100
	1    0    0    -1  
$EndComp
$Comp
L S8050_correctpins Q1
U 1 1 5B4CF744
P 6500 4050
F 0 "Q1" H 6700 4125 50  0000 L CNN
F 1 "S8050_correctpins" H 6700 4050 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 6700 3975 50  0001 L CIN
F 3 "" H 6500 4050 50  0001 L CNN
	1    6500 4050
	1    0    0    -1  
$EndComp
$Comp
L S8050_correctpins Q2
U 1 1 5B4CF802
P 6500 4650
F 0 "Q2" H 6700 4725 50  0000 L CNN
F 1 "S8050_correctpins" H 6700 4650 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 6700 4575 50  0001 L CIN
F 3 "" H 6500 4650 50  0001 L CNN
	1    6500 4650
	1    0    0    1   
$EndComp
$Comp
L R R3
U 1 1 5B4CF8C2
P 6100 4050
F 0 "R3" V 6050 4200 50  0000 C CNN
F 1 "12k" V 6100 4050 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6030 4050 50  0001 C CNN
F 3 "" H 6100 4050 50  0001 C CNN
	1    6100 4050
	0    1    1    0   
$EndComp
$Comp
L R R4
U 1 1 5B4CFA31
P 6100 4650
F 0 "R4" V 6050 4800 50  0000 C CNN
F 1 "12k" V 6100 4650 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6030 4650 50  0001 C CNN
F 3 "" H 6100 4650 50  0001 C CNN
	1    6100 4650
	0    1    1    0   
$EndComp
Text GLabel 6700 3750 2    47   Input ~ 0
GPIO0
Text GLabel 6700 4950 2    47   Input ~ 0
RST
$Comp
L +5V #PWR05
U 1 1 5B4D00F1
P 5500 3950
F 0 "#PWR05" H 5500 3800 50  0001 C CNN
F 1 "+5V" H 5500 4090 50  0000 C CNN
F 2 "" H 5500 3950 50  0001 C CNN
F 3 "" H 5500 3950 50  0001 C CNN
	1    5500 3950
	1    0    0    -1  
$EndComp
NoConn ~ 5400 4750
NoConn ~ 5400 4650
NoConn ~ 5400 4550
NoConn ~ 5400 4450
NoConn ~ 5400 4150
$Comp
L R R5
U 1 1 5B4D03C8
P 3450 2150
F 0 "R5" V 3400 2300 50  0000 C CNN
F 1 "12k" V 3450 2150 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3380 2150 50  0001 C CNN
F 3 "" H 3450 2150 50  0001 C CNN
	1    3450 2150
	0    1    1    0   
$EndComp
$Comp
L R R6
U 1 1 5B4D0535
P 3450 2300
F 0 "R6" V 3400 2450 50  0000 C CNN
F 1 "12k" V 3450 2300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3380 2300 50  0001 C CNN
F 3 "" H 3450 2300 50  0001 C CNN
	1    3450 2300
	0    1    1    0   
$EndComp
$Comp
L R R7
U 1 1 5B4D0575
P 3450 2450
F 0 "R7" V 3400 2600 50  0000 C CNN
F 1 "12k" V 3450 2450 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3380 2450 50  0001 C CNN
F 3 "" H 3450 2450 50  0001 C CNN
	1    3450 2450
	0    1    1    0   
$EndComp
$Comp
L R R8
U 1 1 5B4D05B8
P 3450 2600
F 0 "R8" V 3400 2750 50  0000 C CNN
F 1 "12k" V 3450 2600 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3380 2600 50  0001 C CNN
F 3 "" H 3450 2600 50  0001 C CNN
	1    3450 2600
	0    1    1    0   
$EndComp
$Comp
L C_Small C4
U 1 1 5B4D0612
P 3450 2800
F 0 "C4" V 3400 2850 50  0000 L CNN
F 1 "470pF" V 3500 2850 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3450 2800 50  0001 C CNN
F 3 "" H 3450 2800 50  0001 C CNN
	1    3450 2800
	0    1    1    0   
$EndComp
$Comp
L R R9
U 1 1 5B4D06B7
P 3450 3000
F 0 "R9" V 3400 3150 50  0000 C CNN
F 1 "12k" V 3450 3000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3380 3000 50  0001 C CNN
F 3 "" H 3450 3000 50  0001 C CNN
	1    3450 3000
	0    1    1    0   
$EndComp
$Comp
L +3.3V #PWR06
U 1 1 5B4D0957
P 3200 2050
F 0 "#PWR06" H 3200 1900 50  0001 C CNN
F 1 "+3.3V" H 3200 2190 50  0000 C CNN
F 2 "" H 3200 2050 50  0001 C CNN
F 3 "" H 3200 2050 50  0001 C CNN
	1    3200 2050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 5B4D0A0B
P 3200 3100
F 0 "#PWR07" H 3200 2850 50  0001 C CNN
F 1 "GND" H 3200 2950 50  0000 C CNN
F 2 "" H 3200 3100 50  0001 C CNN
F 3 "" H 3200 3100 50  0001 C CNN
	1    3200 3100
	1    0    0    -1  
$EndComp
Text GLabel 3700 2600 2    47   Input ~ 0
RST
Text GLabel 3700 2450 2    47   Input ~ 0
EN
Text GLabel 3700 2300 2    47   Input ~ 0
D4
Text GLabel 3700 2150 2    47   Input ~ 0
GPIO0
Text GLabel 3700 3000 2    47   Input ~ 0
GPIO15
$Comp
L AP1117-33 U2
U 1 1 5B4D2603
P 1950 2450
F 0 "U2" H 1950 2700 50  0000 C CNN
F 1 "AP1117-3.3V" H 1700 2600 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-223-3_TabPin2" H 1950 2650 50  0001 C CNN
F 3 "" H 2050 2200 50  0001 C CNN
	1    1950 2450
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR08
U 1 1 5B4D275E
P 2400 2400
F 0 "#PWR08" H 2400 2250 50  0001 C CNN
F 1 "+3.3V" H 2400 2540 50  0000 C CNN
F 2 "" H 2400 2400 50  0001 C CNN
F 3 "" H 2400 2400 50  0001 C CNN
	1    2400 2400
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR09
U 1 1 5B4D27EE
P 1500 2400
F 0 "#PWR09" H 1500 2250 50  0001 C CNN
F 1 "+5V" H 1500 2540 50  0000 C CNN
F 2 "" H 1500 2400 50  0001 C CNN
F 3 "" H 1500 2400 50  0001 C CNN
	1    1500 2400
	1    0    0    -1  
$EndComp
$Comp
L C_Small C7
U 1 1 5B4D287E
P 1500 2650
F 0 "C7" H 1510 2720 50  0000 L CNN
F 1 "100nF" V 1450 2350 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1500 2650 50  0001 C CNN
F 3 "" H 1500 2650 50  0001 C CNN
	1    1500 2650
	1    0    0    -1  
$EndComp
$Comp
L CP1_Small C6
U 1 1 5B4D292E
P 1300 2650
F 0 "C6" H 1310 2720 50  0000 L CNN
F 1 "10uF" V 1250 2400 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:CP_Tantalum_Case-B_EIA-3528-21_Hand" H 1300 2650 50  0001 C CNN
F 3 "" H 1300 2650 50  0001 C CNN
	1    1300 2650
	1    0    0    -1  
$EndComp
$Comp
L C_Small C8
U 1 1 5B4D2FD4
P 2400 2650
F 0 "C8" H 2410 2720 50  0000 L CNN
F 1 "100nF" V 2350 2350 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2400 2650 50  0001 C CNN
F 3 "" H 2400 2650 50  0001 C CNN
	1    2400 2650
	1    0    0    -1  
$EndComp
$Comp
L CP1_Small C9
U 1 1 5B4D3046
P 2600 2650
F 0 "C9" H 2610 2720 50  0000 L CNN
F 1 "10uF" V 2550 2400 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:CP_Tantalum_Case-B_EIA-3528-21_Hand" H 2600 2650 50  0001 C CNN
F 3 "" H 2600 2650 50  0001 C CNN
	1    2600 2650
	1    0    0    -1  
$EndComp
$Comp
L ESP-12E U3
U 1 1 5B4D4506
P 5950 2200
F 0 "U3" H 5950 2850 50  0000 C CNN
F 1 "ESP-12E" H 5950 2300 50  0000 C CNN
F 2 "ESP8266:ESP-12E_SMD" H 5950 2200 50  0001 C CNN
F 3 "" H 5950 2200 50  0001 C CNN
	1    5950 2200
	1    0    0    -1  
$EndComp
Text GLabel 5050 1900 0    47   Input ~ 0
RST
Text GLabel 5050 2100 0    47   Input ~ 0
EN
Text GLabel 5050 2200 0    47   Input ~ 0
D0
Text GLabel 5050 2300 0    47   Input ~ 0
D5
Text GLabel 6850 1900 2    47   Input ~ 0
TX
Text GLabel 6850 2000 2    47   Input ~ 0
RX
Text GLabel 6850 2300 2    47   Input ~ 0
GPIO0
Text GLabel 6850 2400 2    47   Input ~ 0
D4
Text GLabel 5050 2000 0    47   Input ~ 0
ADC
NoConn ~ 5700 3100
NoConn ~ 5800 3100
NoConn ~ 5900 3100
NoConn ~ 6000 3100
NoConn ~ 6100 3100
NoConn ~ 6200 3100
$Comp
L CP1_Small C5
U 1 1 5B4D608C
P 4550 2750
F 0 "C5" H 4560 2820 50  0000 L CNN
F 1 "100uF" H 4600 2650 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:CP_Tantalum_Case-D_EIA-7343-31_Hand" H 4550 2750 50  0001 C CNN
F 3 "" H 4550 2750 50  0001 C CNN
	1    4550 2750
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR010
U 1 1 5B4D6238
P 4550 2500
F 0 "#PWR010" H 4550 2350 50  0001 C CNN
F 1 "+3.3V" H 4550 2640 50  0000 C CNN
F 2 "" H 4550 2500 50  0001 C CNN
F 3 "" H 4550 2500 50  0001 C CNN
	1    4550 2500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 5B4D63D9
P 4550 2900
F 0 "#PWR011" H 4550 2650 50  0001 C CNN
F 1 "GND" H 4550 2750 50  0000 C CNN
F 2 "" H 4550 2900 50  0001 C CNN
F 3 "" H 4550 2900 50  0001 C CNN
	1    4550 2900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 5B4D64EF
P 6950 2700
F 0 "#PWR012" H 6950 2450 50  0001 C CNN
F 1 "GND" H 6950 2550 50  0000 C CNN
F 2 "" H 6950 2700 50  0001 C CNN
F 3 "" H 6950 2700 50  0001 C CNN
	1    6950 2700
	1    0    0    -1  
$EndComp
$Comp
L SW_Push_LED SW1
U 1 1 5B4D7ED9
P 8550 2300
F 0 "SW1" H 8575 2525 50  0000 L CNN
F 1 "SW_Push_LED" H 8550 2175 50  0000 C CNN
F 2 "MeineBib:12mm_LED_pushbutton" H 8550 2600 50  0001 C CNN
F 3 "" H 8550 2600 50  0001 C CNN
	1    8550 2300
	1    0    0    -1  
$EndComp
$Comp
L SW_Push_LED SW2
U 1 1 5B4D85CE
P 8550 2800
F 0 "SW2" H 8575 3025 50  0000 L CNN
F 1 "SW_Push_LED" H 8550 2675 50  0000 C CNN
F 2 "MeineBib:12mm_LED_pushbutton" H 8550 3100 50  0001 C CNN
F 3 "" H 8550 3100 50  0001 C CNN
	1    8550 2800
	1    0    0    -1  
$EndComp
$Comp
L SW_Push_LED SW3
U 1 1 5B4D8641
P 8550 3300
F 0 "SW3" H 8575 3525 50  0000 L CNN
F 1 "SW_Push_LED" H 8550 3175 50  0000 C CNN
F 2 "MeineBib:12mm_LED_pushbutton" H 8550 3600 50  0001 C CNN
F 3 "" H 8550 3600 50  0001 C CNN
	1    8550 3300
	1    0    0    -1  
$EndComp
$Comp
L SW_Push_LED SW4
U 1 1 5B4D87CF
P 8550 3800
F 0 "SW4" H 8575 4025 50  0000 L CNN
F 1 "SW_Push_LED" H 8550 3675 50  0000 C CNN
F 2 "MeineBib:12mm_LED_pushbutton" H 8550 4100 50  0001 C CNN
F 3 "" H 8550 4100 50  0001 C CNN
	1    8550 3800
	1    0    0    -1  
$EndComp
$Comp
L SW_Push_LED SW5
U 1 1 5B4D8A6E
P 8550 4300
F 0 "SW5" H 8575 4525 50  0000 L CNN
F 1 "SW_Push_LED" H 8550 4175 50  0000 C CNN
F 2 "MeineBib:12mm_LED_pushbutton" H 8550 4600 50  0001 C CNN
F 3 "" H 8550 4600 50  0001 C CNN
	1    8550 4300
	1    0    0    -1  
$EndComp
$Comp
L R R15
U 1 1 5B4D8C62
P 9000 2300
F 0 "R15" V 8900 2300 50  0000 C CNN
F 1 "180R" V 9000 2300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8930 2300 50  0001 C CNN
F 3 "" H 9000 2300 50  0001 C CNN
	1    9000 2300
	0    1    1    0   
$EndComp
$Comp
L R R19
U 1 1 5B4D9461
P 9000 4300
F 0 "R19" V 8900 4300 50  0000 C CNN
F 1 "180R" V 9000 4300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8930 4300 50  0001 C CNN
F 3 "" H 9000 4300 50  0001 C CNN
	1    9000 4300
	0    1    1    0   
$EndComp
$Comp
L R R18
U 1 1 5B4D9269
P 9000 3800
F 0 "R18" V 8900 3800 50  0000 C CNN
F 1 "180R" V 9000 3800 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8930 3800 50  0001 C CNN
F 3 "" H 9000 3800 50  0001 C CNN
	1    9000 3800
	0    1    1    0   
$EndComp
$Comp
L R R17
U 1 1 5B4D91EE
P 9000 3300
F 0 "R17" V 8900 3300 50  0000 C CNN
F 1 "180R" V 9000 3300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8930 3300 50  0001 C CNN
F 3 "" H 9000 3300 50  0001 C CNN
	1    9000 3300
	0    1    1    0   
$EndComp
$Comp
L R R16
U 1 1 5B4D9174
P 9000 2800
F 0 "R16" V 8900 2800 50  0000 C CNN
F 1 "180R" V 9000 2800 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8930 2800 50  0001 C CNN
F 3 "" H 9000 2800 50  0001 C CNN
	1    9000 2800
	0    1    1    0   
$EndComp
$Comp
L GND #PWR013
U 1 1 5B4DA199
P 1950 3100
F 0 "#PWR013" H 1950 2850 50  0001 C CNN
F 1 "GND" H 1950 2950 50  0000 C CNN
F 2 "" H 1950 3100 50  0001 C CNN
F 3 "" H 1950 3100 50  0001 C CNN
	1    1950 3100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 5B4DA366
P 8200 4700
F 0 "#PWR014" H 8200 4450 50  0001 C CNN
F 1 "GND" H 8200 4550 50  0000 C CNN
F 2 "" H 8200 4700 50  0001 C CNN
F 3 "" H 8200 4700 50  0001 C CNN
	1    8200 4700
	1    0    0    -1  
$EndComp
$Comp
L R R14
U 1 1 5B4DC26F
P 8000 4450
F 0 "R14" H 7900 4300 50  0000 C CNN
F 1 "12k" V 8000 4450 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7930 4450 50  0001 C CNN
F 3 "" H 8000 4450 50  0001 C CNN
	1    8000 4450
	-1   0    0    1   
$EndComp
Text GLabel 9250 2300 2    47   Input ~ 0
D0
Text GLabel 9250 2800 2    47   Input ~ 0
D4
Text GLabel 9250 3300 2    47   Input ~ 0
D5
Text GLabel 9250 3800 2    47   Input ~ 0
D6
Text GLabel 9250 4300 2    47   Input ~ 0
D7
$Comp
L R R13
U 1 1 5B4DFF7F
P 8000 3950
F 0 "R13" H 7900 3800 50  0000 C CNN
F 1 "12k" V 8000 3950 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7930 3950 50  0001 C CNN
F 3 "" H 8000 3950 50  0001 C CNN
	1    8000 3950
	-1   0    0    1   
$EndComp
$Comp
L R R12
U 1 1 5B4E000E
P 8000 3450
F 0 "R12" H 7900 3300 50  0000 C CNN
F 1 "12k" V 8000 3450 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7930 3450 50  0001 C CNN
F 3 "" H 8000 3450 50  0001 C CNN
	1    8000 3450
	-1   0    0    1   
$EndComp
$Comp
L R R11
U 1 1 5B4E009C
P 8000 2950
F 0 "R11" H 7900 2800 50  0000 C CNN
F 1 "12k" V 8000 2950 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7930 2950 50  0001 C CNN
F 3 "" H 8000 2950 50  0001 C CNN
	1    8000 2950
	-1   0    0    1   
$EndComp
$Comp
L R R10
U 1 1 5B4E0388
P 8000 2450
F 0 "R10" H 7900 2300 50  0000 C CNN
F 1 "12k" V 8000 2450 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7930 2450 50  0001 C CNN
F 3 "" H 8000 2450 50  0001 C CNN
	1    8000 2450
	-1   0    0    1   
$EndComp
$Comp
L +5V #PWR015
U 1 1 5B4E1293
P 8000 2100
F 0 "#PWR015" H 8000 1950 50  0001 C CNN
F 1 "+5V" H 8000 2240 50  0000 C CNN
F 2 "" H 8000 2100 50  0001 C CNN
F 3 "" H 8000 2100 50  0001 C CNN
	1    8000 2100
	1    0    0    -1  
$EndComp
$Comp
L R R20
U 1 1 5B4E15C4
P 9750 2450
F 0 "R20" H 9650 2300 50  0000 C CNN
F 1 "390k" V 9750 2450 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 9680 2450 50  0001 C CNN
F 3 "" H 9750 2450 50  0001 C CNN
	1    9750 2450
	-1   0    0    1   
$EndComp
$Comp
L R R21
U 1 1 5B4E1867
P 9750 2950
F 0 "R21" H 9650 2800 50  0000 C CNN
F 1 "100k" V 9750 2950 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 9680 2950 50  0001 C CNN
F 3 "" H 9750 2950 50  0001 C CNN
	1    9750 2950
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR016
U 1 1 5B4E1C8A
P 9750 3200
F 0 "#PWR016" H 9750 2950 50  0001 C CNN
F 1 "GND" H 9750 3050 50  0000 C CNN
F 2 "" H 9750 3200 50  0001 C CNN
F 3 "" H 9750 3200 50  0001 C CNN
	1    9750 3200
	1    0    0    -1  
$EndComp
Text GLabel 10000 2700 2    47   Input ~ 0
ADC
Text Label 9200 2100 0    60   ~ 0
A_Buttons
Text Notes 2450 3700 0    60   ~ 0
USB power and programming
Text Notes 3050 1850 0    60   ~ 0
Pullups/-downs
Text Notes 1150 2150 0    60   ~ 0
Voltage regulation
Text Notes 4450 1400 0    60   ~ 0
Microcontroller
Text Notes 7750 1800 0    60   ~ 0
Buttons and LED
$Comp
L Mounting_Hole MK1
U 1 1 5B4E9155
P 1350 3950
F 0 "MK1" H 1550 4000 50  0000 C CNN
F 1 "Mounting_Hole" H 1750 3900 50  0000 C CNN
F 2 "MeineBib:EigenesMountingHole_2.7mm_M2.5" H 1350 3950 50  0001 C CNN
F 3 "" H 1350 3950 50  0001 C CNN
	1    1350 3950
	1    0    0    -1  
$EndComp
$Comp
L Mounting_Hole MK2
U 1 1 5B4E9934
P 1350 4200
F 0 "MK2" H 1550 4250 50  0000 C CNN
F 1 "Mounting_Hole" H 1750 4150 50  0000 C CNN
F 2 "MeineBib:EigenesMountingHole_2.7mm_M2.5" H 1350 4200 50  0001 C CNN
F 3 "" H 1350 4200 50  0001 C CNN
	1    1350 4200
	1    0    0    -1  
$EndComp
$Comp
L Mounting_Hole MK3
U 1 1 5B4E99CC
P 1350 4450
F 0 "MK3" H 1550 4500 50  0000 C CNN
F 1 "Mounting_Hole" H 1750 4400 50  0000 C CNN
F 2 "MeineBib:EigenesMountingHole_2.7mm_M2.5" H 1350 4450 50  0001 C CNN
F 3 "" H 1350 4450 50  0001 C CNN
	1    1350 4450
	1    0    0    -1  
$EndComp
$Comp
L Mounting_Hole MK4
U 1 1 5B4E9A67
P 1350 4700
F 0 "MK4" H 1550 4750 50  0000 C CNN
F 1 "Mounting_Hole" H 1750 4650 50  0000 C CNN
F 2 "MeineBib:EigenesMountingHole_2.7mm_M2.5" H 1350 4700 50  0001 C CNN
F 3 "" H 1350 4700 50  0001 C CNN
	1    1350 4700
	1    0    0    -1  
$EndComp
Text Notes 1250 3650 0    60   ~ 0
PCB stuff
Text GLabel 7250 2200 2    47   Input ~ 0
SDA
Text GLabel 7250 2100 2    47   Input ~ 0
SCL
$Comp
L R R22
U 1 1 5B4EBE7A
P 7100 1850
F 0 "R22" V 7050 2050 50  0000 C CNN
F 1 "12k" V 7100 1850 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7030 1850 50  0001 C CNN
F 3 "" H 7100 1850 50  0001 C CNN
	1    7100 1850
	1    0    0    -1  
$EndComp
$Comp
L R R23
U 1 1 5B4EC150
P 7200 1850
F 0 "R23" V 7150 2050 50  0000 C CNN
F 1 "12k" V 7200 1850 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7130 1850 50  0001 C CNN
F 3 "" H 7200 1850 50  0001 C CNN
	1    7200 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 4250 3150 4250
Wire Wire Line
	3150 4250 3150 4150
Wire Wire Line
	2650 4850 2650 4950
Wire Wire Line
	2750 4850 2750 4900
Wire Wire Line
	2750 4900 2650 4900
Connection ~ 2650 4900
Wire Wire Line
	4400 4150 4500 4150
Wire Wire Line
	4500 4250 4400 4250
Wire Wire Line
	3650 4850 3850 4850
Wire Wire Line
	4150 4850 4300 4850
Wire Wire Line
	4300 4750 4300 4900
Wire Wire Line
	3650 4650 3650 4900
Wire Wire Line
	3650 5100 3650 5150
Wire Wire Line
	3650 5150 4300 5150
Wire Wire Line
	4300 5150 4300 5100
Wire Wire Line
	4000 5200 4000 5150
Connection ~ 4000 5150
Wire Wire Line
	4500 4750 4300 4750
Wire Wire Line
	4500 4650 3650 4650
Connection ~ 4300 4850
Connection ~ 3650 4850
Wire Wire Line
	4500 4350 3600 4350
Wire Wire Line
	3600 4350 3600 4300
Wire Wire Line
	3400 4050 4500 4050
Wire Wire Line
	3600 4050 3600 4100
Wire Wire Line
	3400 4050 3400 4100
Connection ~ 3600 4050
Wire Wire Line
	4500 4450 3050 4450
Wire Wire Line
	3050 4550 4500 4550
Wire Wire Line
	6250 4650 6300 4650
Wire Wire Line
	6250 4050 6300 4050
Wire Wire Line
	5650 4050 5950 4050
Wire Wire Line
	5650 4650 5950 4650
Wire Wire Line
	5900 4050 5900 4300
Connection ~ 5900 4050
Wire Wire Line
	5900 4450 5900 4650
Connection ~ 5900 4650
Wire Wire Line
	6600 4250 6600 4300
Wire Wire Line
	6600 4300 5900 4450
Wire Wire Line
	5900 4300 6600 4450
Wire Wire Line
	6600 4850 6600 4950
Wire Wire Line
	6600 4950 6700 4950
Wire Wire Line
	6600 3850 6600 3750
Wire Wire Line
	6600 3750 6700 3750
Wire Wire Line
	5650 4050 5650 4250
Wire Wire Line
	5650 4250 5400 4250
Wire Wire Line
	5650 4650 5650 4350
Wire Wire Line
	5650 4350 5400 4350
Wire Wire Line
	5400 4050 5500 4050
Wire Wire Line
	5500 4050 5500 3950
Wire Wire Line
	3200 2800 3200 3100
Wire Wire Line
	3200 3000 3300 3000
Wire Wire Line
	3350 2800 3200 2800
Connection ~ 3200 3000
Wire Wire Line
	3200 2050 3200 2600
Wire Wire Line
	3200 2150 3300 2150
Wire Wire Line
	3200 2300 3300 2300
Connection ~ 3200 2150
Wire Wire Line
	3200 2450 3300 2450
Connection ~ 3200 2300
Wire Wire Line
	3200 2600 3300 2600
Connection ~ 3200 2450
Wire Wire Line
	3600 2150 3700 2150
Wire Wire Line
	3700 2300 3600 2300
Wire Wire Line
	3600 2450 3700 2450
Wire Wire Line
	3600 2600 3700 2600
Wire Wire Line
	3650 2800 3550 2800
Wire Wire Line
	3650 2600 3650 2800
Connection ~ 3650 2600
Wire Wire Line
	3600 3000 3700 3000
Wire Wire Line
	1300 2450 1650 2450
Wire Wire Line
	1500 2400 1500 2550
Wire Wire Line
	2250 2450 2600 2450
Wire Wire Line
	2400 2400 2400 2550
Wire Wire Line
	2600 2450 2600 2550
Connection ~ 2400 2450
Wire Wire Line
	1300 2550 1300 2450
Connection ~ 1500 2450
Wire Wire Line
	1300 2750 1300 3050
Wire Wire Line
	1300 3050 2600 3050
Wire Wire Line
	2600 3050 2600 2750
Wire Wire Line
	2400 2750 2400 3050
Connection ~ 2400 3050
Wire Wire Line
	1950 2750 1950 3100
Connection ~ 1950 3050
Wire Wire Line
	1500 2750 1500 3050
Connection ~ 1500 3050
Wire Wire Line
	4550 2600 5050 2600
Wire Wire Line
	4550 2500 4550 2650
Connection ~ 4550 2600
Wire Wire Line
	4550 2900 4550 2850
Wire Wire Line
	6850 2600 6950 2600
Wire Wire Line
	6950 2600 6950 2700
Wire Wire Line
	8750 2300 8850 2300
Wire Wire Line
	8750 2800 8850 2800
Wire Wire Line
	8750 3300 8850 3300
Wire Wire Line
	8750 3800 8850 3800
Wire Wire Line
	8750 4300 8850 4300
Wire Wire Line
	8200 2300 8200 4700
Wire Wire Line
	8200 2300 8350 2300
Wire Wire Line
	8350 2800 8200 2800
Connection ~ 8200 2800
Wire Wire Line
	8350 3300 8200 3300
Connection ~ 8200 3300
Wire Wire Line
	8350 3800 8200 3800
Connection ~ 8200 3800
Wire Wire Line
	8350 4300 8200 4300
Connection ~ 8200 4300
Wire Wire Line
	8800 4200 8750 4200
Wire Wire Line
	8800 2100 8800 4200
Wire Wire Line
	8800 3700 8750 3700
Wire Wire Line
	8750 3200 8800 3200
Connection ~ 8800 3700
Wire Wire Line
	8750 2700 8800 2700
Connection ~ 8800 3200
Connection ~ 8800 2700
Wire Wire Line
	9150 4300 9250 4300
Wire Wire Line
	9150 3800 9250 3800
Wire Wire Line
	9150 3300 9250 3300
Wire Wire Line
	9150 2800 9250 2800
Wire Wire Line
	9150 2300 9250 2300
Wire Wire Line
	8350 4200 8000 4200
Wire Wire Line
	8000 4100 8000 4300
Wire Wire Line
	8350 2200 8000 2200
Wire Wire Line
	8000 2100 8000 2300
Wire Wire Line
	8000 2600 8000 2800
Wire Wire Line
	8000 3100 8000 3300
Wire Wire Line
	8000 3600 8000 3800
Connection ~ 8000 4200
Wire Wire Line
	8350 3700 8000 3700
Connection ~ 8000 3700
Wire Wire Line
	8350 3200 8000 3200
Connection ~ 8000 3200
Wire Wire Line
	8350 2700 8000 2700
Connection ~ 8000 2700
Wire Wire Line
	8000 4600 8000 4650
Wire Wire Line
	8000 4650 8200 4650
Connection ~ 8200 4650
Connection ~ 8000 2200
Connection ~ 8800 2200
Wire Wire Line
	9750 2100 9750 2300
Wire Wire Line
	9750 2600 9750 2800
Wire Wire Line
	9750 3100 9750 3200
Wire Wire Line
	9750 2700 10000 2700
Connection ~ 9750 2700
Wire Wire Line
	8750 2200 8800 2200
Wire Wire Line
	8800 2100 9750 2100
Wire Notes Line
	4400 1300 7500 1300
Wire Notes Line
	7500 1300 7500 3350
Wire Notes Line
	7500 3350 4400 3350
Wire Notes Line
	4400 3350 4400 1300
Wire Notes Line
	7700 1700 7700 5050
Wire Notes Line
	7700 5050 10350 5050
Wire Notes Line
	10350 5050 10350 1700
Wire Notes Line
	10350 1700 7700 1700
Wire Notes Line
	1100 3350 2800 3350
Wire Notes Line
	2800 3350 2800 2050
Wire Notes Line
	2800 2050 1100 2050
Wire Notes Line
	1100 2050 1100 3350
Wire Notes Line
	3000 1750 4200 1750
Wire Notes Line
	4200 1750 4200 3350
Wire Notes Line
	4200 3350 3000 3350
Wire Notes Line
	3000 3350 3000 1750
Wire Notes Line
	2400 3550 7500 3550
Wire Notes Line
	7500 3550 7500 5450
Wire Notes Line
	7500 5450 2400 5450
Wire Notes Line
	2400 5450 2400 3550
Wire Notes Line
	2200 3550 2200 5450
Wire Notes Line
	2200 3550 1100 3550
Text GLabel 5050 2400 0    47   Input ~ 0
D6
Text GLabel 5050 2500 0    47   Input ~ 0
D7
Wire Wire Line
	6850 2100 7250 2100
Wire Wire Line
	6850 2200 7250 2200
Wire Wire Line
	7200 2000 7200 2100
Connection ~ 7200 2100
Wire Wire Line
	7100 2000 7100 2200
Connection ~ 7100 2200
$Comp
L +3.3V #PWR017
U 1 1 5B4F0FF7
P 7100 1500
F 0 "#PWR017" H 7100 1350 50  0001 C CNN
F 1 "+3.3V" H 7100 1640 50  0000 C CNN
F 2 "" H 7100 1500 50  0001 C CNN
F 3 "" H 7100 1500 50  0001 C CNN
	1    7100 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 1500 7100 1700
Wire Wire Line
	7200 1700 7200 1550
Wire Wire Line
	7200 1550 7100 1550
Connection ~ 7100 1550
$Comp
L +5V #PWR018
U 1 1 5B4F27B2
P 5300 5850
F 0 "#PWR018" H 5300 5700 50  0001 C CNN
F 1 "+5V" H 5300 5990 50  0000 C CNN
F 2 "" H 5300 5850 50  0001 C CNN
F 3 "" H 5300 5850 50  0001 C CNN
	1    5300 5850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR019
U 1 1 5B4F2A09
P 5300 6350
F 0 "#PWR019" H 5300 6100 50  0001 C CNN
F 1 "GND" H 5300 6200 50  0000 C CNN
F 2 "" H 5300 6350 50  0001 C CNN
F 3 "" H 5300 6350 50  0001 C CNN
	1    5300 6350
	1    0    0    -1  
$EndComp
Text GLabel 5200 6050 0    47   Input ~ 0
SCL
Text GLabel 5200 6150 0    47   Input ~ 0
SDA
Wire Wire Line
	5300 5850 5300 5950
Wire Wire Line
	5300 5950 5400 5950
Wire Wire Line
	5300 6350 5300 6250
Wire Wire Line
	5300 6250 5400 6250
Wire Wire Line
	5400 6150 5200 6150
Wire Wire Line
	5200 6050 5400 6050
$Comp
L Conn_01x01 J2
U 1 1 5B4F3F82
P 5600 5950
F 0 "J2" H 5900 5950 50  0000 C CNN
F 1 "5V" H 5750 5950 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x01_Pitch2.54mm" H 5600 5950 50  0001 C CNN
F 3 "" H 5600 5950 50  0001 C CNN
	1    5600 5950
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x01 J3
U 1 1 5B4F4221
P 5600 6050
F 0 "J3" H 5900 6050 50  0000 C CNN
F 1 "SCL" H 5750 6050 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x01_Pitch2.54mm" H 5600 6050 50  0001 C CNN
F 3 "" H 5600 6050 50  0001 C CNN
	1    5600 6050
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x01 J4
U 1 1 5B4F42C7
P 5600 6150
F 0 "J4" H 5900 6150 50  0000 C CNN
F 1 "SDA" H 5750 6150 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x01_Pitch2.54mm" H 5600 6150 50  0001 C CNN
F 3 "" H 5600 6150 50  0001 C CNN
	1    5600 6150
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x01 J5
U 1 1 5B4F4370
P 5600 6250
F 0 "J5" H 5900 6250 50  0000 C CNN
F 1 "GND" H 5750 6250 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x01_Pitch2.54mm" H 5600 6250 50  0001 C CNN
F 3 "" H 5600 6250 50  0001 C CNN
	1    5600 6250
	1    0    0    -1  
$EndComp
$Comp
L Mounting_Hole MK5
U 1 1 5B4DF765
P 1350 4950
F 0 "MK5" H 1550 5000 50  0000 C CNN
F 1 "QR Code" H 1650 4900 50  0000 C CNN
F 2 "MeineBib:QR_Tasker" H 1350 4950 50  0001 C CNN
F 3 "" H 1350 4950 50  0001 C CNN
	1    1350 4950
	1    0    0    -1  
$EndComp
Wire Notes Line
	2200 5450 1100 5450
Wire Notes Line
	1100 5450 1100 3550
Text GLabel 6850 2500 2    47   Input ~ 0
GPIO15
$Comp
L PCF8574 U4
U 1 1 5B50F77C
P 2950 6700
F 0 "U4" H 2600 7300 50  0000 L CNN
F 1 "PCF8574" H 3050 7300 50  0000 L CNN
F 2 "Housings_SOIC:SOIC-16W_7.5x10.3mm_Pitch1.27mm" H 2950 6700 50  0001 C CNN
F 3 "" H 2950 6700 50  0001 C CNN
	1    2950 6700
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR020
U 1 1 5B50F85D
P 2950 5950
F 0 "#PWR020" H 2950 5800 50  0001 C CNN
F 1 "+5V" H 2950 6090 50  0000 C CNN
F 2 "" H 2950 5950 50  0001 C CNN
F 3 "" H 2950 5950 50  0001 C CNN
	1    2950 5950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR021
U 1 1 5B50FABA
P 2950 7400
F 0 "#PWR021" H 2950 7150 50  0001 C CNN
F 1 "GND" H 2950 7250 50  0000 C CNN
F 2 "" H 2950 7400 50  0001 C CNN
F 3 "" H 2950 7400 50  0001 C CNN
	1    2950 7400
	1    0    0    -1  
$EndComp
$Comp
L GS3 B2
U 1 1 5B50FE5D
P 1700 6800
F 0 "B2" H 1800 6900 50  0000 C CNN
F 1 "GS3" H 1550 6800 50  0000 C CNN
F 2 "Connectors:GS3" V 1788 6726 50  0001 C CNN
F 3 "" H 1700 6800 50  0001 C CNN
	1    1700 6800
	1    0    0    -1  
$EndComp
$Comp
L GS3 B1
U 1 1 5B510366
P 1700 6450
F 0 "B1" H 1800 6550 50  0000 C CNN
F 1 "GS3" H 1550 6450 50  0000 C CNN
F 2 "Connectors:GS3" V 1788 6376 50  0001 C CNN
F 3 "" H 1700 6450 50  0001 C CNN
	1    1700 6450
	1    0    0    -1  
$EndComp
$Comp
L GS3 B0
U 1 1 5B51042A
P 1700 6100
F 0 "B0" H 1800 6200 50  0000 C CNN
F 1 "GS3" H 1550 6100 50  0000 C CNN
F 2 "Connectors:GS3" V 1788 6026 50  0001 C CNN
F 3 "" H 1700 6100 50  0001 C CNN
	1    1700 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 6800 2450 6800
Wire Wire Line
	2450 6700 2000 6700
Wire Wire Line
	2000 6700 2000 6450
Wire Wire Line
	2000 6450 1850 6450
Wire Wire Line
	2450 6600 2050 6600
Wire Wire Line
	2050 6600 2050 6100
Wire Wire Line
	2050 6100 1850 6100
$Comp
L +5V #PWR022
U 1 1 5B510A23
P 1400 5950
F 0 "#PWR022" H 1400 5800 50  0001 C CNN
F 1 "+5V" H 1400 6090 50  0000 C CNN
F 2 "" H 1400 5950 50  0001 C CNN
F 3 "" H 1400 5950 50  0001 C CNN
	1    1400 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 5950 2950 6000
$Comp
L GND #PWR023
U 1 1 5B510C8B
P 1450 6950
F 0 "#PWR023" H 1450 6700 50  0001 C CNN
F 1 "GND" H 1450 6800 50  0000 C CNN
F 2 "" H 1450 6950 50  0001 C CNN
F 3 "" H 1450 6950 50  0001 C CNN
	1    1450 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 6200 1450 6950
Wire Wire Line
	1450 6900 1550 6900
Wire Wire Line
	1550 6550 1450 6550
Connection ~ 1450 6900
Wire Wire Line
	1550 6200 1450 6200
Connection ~ 1450 6550
Wire Wire Line
	1400 5950 1400 6700
Wire Wire Line
	1400 6700 1550 6700
Wire Wire Line
	1550 6350 1400 6350
Connection ~ 1400 6350
Wire Wire Line
	1550 6000 1400 6000
Connection ~ 1400 6000
Text GLabel 2350 6300 0    47   Input ~ 0
SCL
Text GLabel 2350 6400 0    47   Input ~ 0
SDA
Wire Wire Line
	2350 6400 2450 6400
Wire Wire Line
	2450 6300 2350 6300
$Comp
L Conn_01x01 J6
U 1 1 5B512975
P 3700 6300
F 0 "J6" H 4000 6300 50  0000 C CNN
F 1 "P0" H 3850 6300 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x01_Pitch2.54mm" H 3700 6300 50  0001 C CNN
F 3 "" H 3700 6300 50  0001 C CNN
	1    3700 6300
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x01 J7
U 1 1 5B512FBB
P 3700 6400
F 0 "J7" H 4000 6400 50  0000 C CNN
F 1 "P1" H 3850 6400 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x01_Pitch2.54mm" H 3700 6400 50  0001 C CNN
F 3 "" H 3700 6400 50  0001 C CNN
	1    3700 6400
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x01 J8
U 1 1 5B513080
P 3700 6500
F 0 "J8" H 4000 6500 50  0000 C CNN
F 1 "P2" H 3850 6500 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x01_Pitch2.54mm" H 3700 6500 50  0001 C CNN
F 3 "" H 3700 6500 50  0001 C CNN
	1    3700 6500
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x01 J9
U 1 1 5B513144
P 3700 6600
F 0 "J9" H 4000 6600 50  0000 C CNN
F 1 "P3" H 3850 6600 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x01_Pitch2.54mm" H 3700 6600 50  0001 C CNN
F 3 "" H 3700 6600 50  0001 C CNN
	1    3700 6600
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x01 J10
U 1 1 5B51320B
P 3700 6700
F 0 "J10" H 4000 6700 50  0000 C CNN
F 1 "P4" H 3850 6700 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x01_Pitch2.54mm" H 3700 6700 50  0001 C CNN
F 3 "" H 3700 6700 50  0001 C CNN
	1    3700 6700
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x01 J11
U 1 1 5B5132D9
P 3700 6800
F 0 "J11" H 4000 6800 50  0000 C CNN
F 1 "P5" H 3850 6800 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x01_Pitch2.54mm" H 3700 6800 50  0001 C CNN
F 3 "" H 3700 6800 50  0001 C CNN
	1    3700 6800
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x01 J12
U 1 1 5B5133A6
P 3700 6900
F 0 "J12" H 4000 6900 50  0000 C CNN
F 1 "P6" H 3850 6900 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x01_Pitch2.54mm" H 3700 6900 50  0001 C CNN
F 3 "" H 3700 6900 50  0001 C CNN
	1    3700 6900
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x01 J13
U 1 1 5B513476
P 3700 7000
F 0 "J13" H 4000 7000 50  0000 C CNN
F 1 "P7" H 3850 7000 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x01_Pitch2.54mm" H 3700 7000 50  0001 C CNN
F 3 "" H 3700 7000 50  0001 C CNN
	1    3700 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 6300 3500 6300
Wire Wire Line
	3450 6400 3500 6400
Wire Wire Line
	3450 6500 3500 6500
Wire Wire Line
	3450 6600 3500 6600
Wire Wire Line
	3450 6700 3500 6700
Wire Wire Line
	3450 6800 3500 6800
Wire Wire Line
	3450 6900 3500 6900
Wire Wire Line
	3450 7000 3500 7000
NoConn ~ 2450 7100
Wire Notes Line
	4500 6550 6250 6550
Wire Notes Line
	6250 6550 6250 5600
Wire Notes Line
	6250 5600 4500 5600
Wire Notes Line
	4500 5600 4500 6550
Text Notes 4600 5750 0    60   ~ 0
I²C Bus
Wire Notes Line
	1100 5600 4300 5600
Wire Notes Line
	4300 5600 4300 7650
Wire Notes Line
	4300 7650 1100 7650
Wire Notes Line
	1100 7650 1100 5600
Text Notes 1250 5750 0    60   ~ 0
Port expander
$EndSCHEMATC
