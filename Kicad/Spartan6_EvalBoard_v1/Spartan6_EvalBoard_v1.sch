EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:special
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
LIBS:numato_kicad_lib
LIBS:xilinx
LIBS:Eric
LIBS:Spartan6_EvalBoard_v1-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 4
Title ""
Date "22 oct 2014"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 5500 2800 0    79   ~ 16
SPARTAN 6
$Sheet
S 6950 2900 1250 1150
U 5425C54D
F0 "IO Connector" 50
F1 "IO_Connector.sch" 50
F2 "IO[1..88]" B L 6950 3200 60 
$EndSheet
Text Notes 7150 3550 0    79   ~ 16
IO Connector
Text Notes 3550 3250 0    79   ~ 16
POWER
Text Notes 5600 4300 0    79   ~ 16
CSG225
$Sheet
S 3100 2800 1400 1600
U 5425C5A1
F0 "POWER" 50
F1 "Power.sch" 50
F2 "LED[1..4]" I R 4500 3050 60 
F3 "PC_GPIO[0..5]" B R 4500 4050 60 
F4 "PC_TX" I R 4500 3850 60 
F5 "PC_RX" O R 4500 3950 60 
$EndSheet
Wire Bus Line
	6950 3200 6650 3200
Wire Wire Line
	5000 3850 4500 3850
Wire Wire Line
	4500 3950 5000 3950
Wire Bus Line
	4500 4050 5000 4050
$Sheet
S 5000 2450 1650 2150
U 5425C4F2
F0 "SPARTAN6" 50
F1 "Spartan6.sch" 50
F2 "LED[1..4]" O L 5000 3050 60 
F3 "IO[1..88]" B R 6650 3200 60 
F4 "PC_GPIO[0..5]" B L 5000 4050 60 
F5 "PC_TX" O L 5000 3850 60 
F6 "PC_RX" I L 5000 3950 60 
$EndSheet
Wire Bus Line
	5000 3050 4500 3050
$EndSCHEMATC
