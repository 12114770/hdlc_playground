
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
create_project: 2

00:00:052

00:00:052

1512.6602
76.8402
113182
24922Z17-722h px� 
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental /home/lukas/OneDrive/raspberry/hdlc_playground/spi_fpga/spi_slave/spi_slave.srcs/utils_1/imports/synth_1/top_spi_slave_led.dcpZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2�
~/home/lukas/OneDrive/raspberry/hdlc_playground/spi_fpga/spi_slave/spi_slave.srcs/utils_1/imports/synth_1/top_spi_slave_led.dcpZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
l
Command: %s
53*	vivadotcl2;
9synth_design -top top_spi_slave_led -part xc7a35tcpg236-1Z4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
z
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2	
xc7a35tZ17-347h px� 
j
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2	
xc7a35tZ17-349h px� 
D
Loading part %s157*device2
xc7a35tcpg236-1Z21-403h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
7Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
N
#Helper process launched with PID %s4824*oasys2
57147Z8-7075h px� 
�
%s*synth2�
�Starting RTL Elaboration : Time (s): cpu = 00:00:03 ; elapsed = 00:00:03 . Memory (MB): peak = 2112.719 ; gain = 428.801 ; free physical = 10422 ; free virtual = 24026
h px� 
�
.redeclaration of ANSI port '%s' is not allowed7382*oasys2	
o_RX_DV2n
j/home/lukas/OneDrive/raspberry/hdlc_playground/spi_fpga/spi_slave/spi_slave.srcs/sources_1/new/spi_slave.v2
618@Z8-11121h px� 
�
synthesizing module '%s'%s4497*oasys2
top_spi_slave_led2
 2v
r/home/lukas/OneDrive/raspberry/hdlc_playground/spi_fpga/spi_slave/spi_slave.srcs/sources_1/new/top_spi_slave_led.v2
18@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
	SPI_Slave2
 2n
j/home/lukas/OneDrive/raspberry/hdlc_playground/spi_fpga/spi_slave/spi_slave.srcs/sources_1/new/spi_slave.v2
268@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	SPI_Slave2
 2
02
12n
j/home/lukas/OneDrive/raspberry/hdlc_playground/spi_fpga/spi_slave/spi_slave.srcs/sources_1/new/spi_slave.v2
268@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
top_spi_slave_led2
 2
02
12v
r/home/lukas/OneDrive/raspberry/hdlc_playground/spi_fpga/spi_slave/spi_slave.srcs/sources_1/new/top_spi_slave_led.v2
18@Z8-6155h px� 
s
9Port %s in module %s is either unconnected or has no load4866*oasys2	
i_Rst_L2
	SPI_SlaveZ8-7129h px� 
�
%s*synth2�
�Finished RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 2184.688 ; gain = 500.770 ; free physical = 10337 ; free virtual = 23941
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 2202.500 ; gain = 518.582 ; free physical = 10337 ; free virtual = 23941
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 2202.500 ; gain = 518.582 ; free physical = 10337 ; free virtual = 23941
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002

00:00:002

2202.5002
0.0002
103372
23941Z17-722h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
Parsing XDC File [%s]
179*designutils2q
m/home/lukas/OneDrive/raspberry/hdlc_playground/spi_fpga/spi_slave/spi_slave.srcs/constrs_1/new/spi_constr.xdc8Z20-179h px� 
�
No nets matched '%s'.
507*	planAhead2
i_SPI_Clk_IBUF2q
m/home/lukas/OneDrive/raspberry/hdlc_playground/spi_fpga/spi_slave/spi_slave.srcs/constrs_1/new/spi_constr.xdc2
218@Z12-507h px�
�
"'%s' expects at least one object.
55*common2
set_property2q
m/home/lukas/OneDrive/raspberry/hdlc_playground/spi_fpga/spi_slave/spi_slave.srcs/constrs_1/new/spi_constr.xdc2
218@Z17-55h px�
�
Finished Parsing XDC File [%s]
178*designutils2q
m/home/lukas/OneDrive/raspberry/hdlc_playground/spi_fpga/spi_slave/spi_slave.srcs/constrs_1/new/spi_constr.xdc8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2o
m/home/lukas/OneDrive/raspberry/hdlc_playground/spi_fpga/spi_slave/spi_slave.srcs/constrs_1/new/spi_constr.xdc2%
#.Xil/top_spi_slave_led_propImpl.xdcZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002

00:00:002

2349.2502
0.0002
103372
23941Z17-722h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
 Constraint Validation Runtime : 2

00:00:002

00:00:002

2349.2502
0.0002
103372
23941Z17-722h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Constraint Validation : Time (s): cpu = 00:00:08 ; elapsed = 00:00:08 . Memory (MB): peak = 2349.250 ; gain = 665.332 ; free physical = 10359 ; free virtual = 23963
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
%s
*synth2,
*Start Loading Part and Timing Information
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Loading part: xc7a35tcpg236-1
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:08 ; elapsed = 00:00:08 . Memory (MB): peak = 2357.254 ; gain = 673.336 ; free physical = 10359 ; free virtual = 23963
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
%s
*synth20
.Start Applying 'set_property' XDC Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:08 ; elapsed = 00:00:08 . Memory (MB): peak = 2357.254 ; gain = 673.336 ; free physical = 10359 ; free virtual = 23963
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:08 ; elapsed = 00:00:08 . Memory (MB): peak = 2357.254 ; gain = 673.336 ; free physical = 10356 ; free virtual = 23965
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Detailed RTL Component Info : 
h p
x
� 
(
%s
*synth2
+---Adders : 
h p
x
� 
F
%s
*synth2.
,	   2 Input    8 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    3 Bit       Adders := 1     
h p
x
� 
+
%s
*synth2
+---Registers : 
h p
x
� 
H
%s
*synth20
.	                8 Bit    Registers := 5     
h p
x
� 
H
%s
*synth20
.	                3 Bit    Registers := 3     
h p
x
� 
H
%s
*synth20
.	                2 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                1 Bit    Registers := 1     
h p
x
� 
'
%s
*synth2
+---Muxes : 
h p
x
� 
F
%s
*synth2.
,	   5 Input    8 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   4 Input    8 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    8 Bit        Muxes := 1     
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Finished RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
p
%s
*synth2X
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
o_RX_Byte[7]2
1st2 
u_spi_slave/o_RX_Byte_reg[7]/Q2n
j/home/lukas/OneDrive/raspberry/hdlc_playground/spi_fpga/spi_slave/spi_slave.srcs/sources_1/new/spi_slave.v2
828@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
o_RX_Byte[7]2
2nd2
GND2n
j/home/lukas/OneDrive/raspberry/hdlc_playground/spi_fpga/spi_slave/spi_slave.srcs/sources_1/new/spi_slave.v2
828@Z8-6859h px� 
�
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
o_RX_Byte[7]2n
j/home/lukas/OneDrive/raspberry/hdlc_playground/spi_fpga/spi_slave/spi_slave.srcs/sources_1/new/spi_slave.v2
828@Z8-6858h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
o_RX_Byte[6]2
1st2 
u_spi_slave/o_RX_Byte_reg[6]/Q2n
j/home/lukas/OneDrive/raspberry/hdlc_playground/spi_fpga/spi_slave/spi_slave.srcs/sources_1/new/spi_slave.v2
828@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
o_RX_Byte[6]2
2nd2
GND2n
j/home/lukas/OneDrive/raspberry/hdlc_playground/spi_fpga/spi_slave/spi_slave.srcs/sources_1/new/spi_slave.v2
828@Z8-6859h px� 
�
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
o_RX_Byte[6]2n
j/home/lukas/OneDrive/raspberry/hdlc_playground/spi_fpga/spi_slave/spi_slave.srcs/sources_1/new/spi_slave.v2
828@Z8-6858h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
o_RX_Byte[5]2
1st2 
u_spi_slave/o_RX_Byte_reg[5]/Q2n
j/home/lukas/OneDrive/raspberry/hdlc_playground/spi_fpga/spi_slave/spi_slave.srcs/sources_1/new/spi_slave.v2
828@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
o_RX_Byte[5]2
2nd2
GND2n
j/home/lukas/OneDrive/raspberry/hdlc_playground/spi_fpga/spi_slave/spi_slave.srcs/sources_1/new/spi_slave.v2
828@Z8-6859h px� 
�
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
o_RX_Byte[5]2n
j/home/lukas/OneDrive/raspberry/hdlc_playground/spi_fpga/spi_slave/spi_slave.srcs/sources_1/new/spi_slave.v2
828@Z8-6858h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
o_RX_Byte[4]2
1st2 
u_spi_slave/o_RX_Byte_reg[4]/Q2n
j/home/lukas/OneDrive/raspberry/hdlc_playground/spi_fpga/spi_slave/spi_slave.srcs/sources_1/new/spi_slave.v2
828@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
o_RX_Byte[4]2
2nd2
GND2n
j/home/lukas/OneDrive/raspberry/hdlc_playground/spi_fpga/spi_slave/spi_slave.srcs/sources_1/new/spi_slave.v2
828@Z8-6859h px� 
�
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
o_RX_Byte[4]2n
j/home/lukas/OneDrive/raspberry/hdlc_playground/spi_fpga/spi_slave/spi_slave.srcs/sources_1/new/spi_slave.v2
828@Z8-6858h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
o_RX_Byte[3]2
1st2 
u_spi_slave/o_RX_Byte_reg[3]/Q2n
j/home/lukas/OneDrive/raspberry/hdlc_playground/spi_fpga/spi_slave/spi_slave.srcs/sources_1/new/spi_slave.v2
828@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
o_RX_Byte[3]2
2nd2
GND2n
j/home/lukas/OneDrive/raspberry/hdlc_playground/spi_fpga/spi_slave/spi_slave.srcs/sources_1/new/spi_slave.v2
828@Z8-6859h px� 
�
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
o_RX_Byte[3]2n
j/home/lukas/OneDrive/raspberry/hdlc_playground/spi_fpga/spi_slave/spi_slave.srcs/sources_1/new/spi_slave.v2
828@Z8-6858h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
o_RX_Byte[2]2
1st2 
u_spi_slave/o_RX_Byte_reg[2]/Q2n
j/home/lukas/OneDrive/raspberry/hdlc_playground/spi_fpga/spi_slave/spi_slave.srcs/sources_1/new/spi_slave.v2
828@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
o_RX_Byte[2]2
2nd2
GND2n
j/home/lukas/OneDrive/raspberry/hdlc_playground/spi_fpga/spi_slave/spi_slave.srcs/sources_1/new/spi_slave.v2
828@Z8-6859h px� 
�
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
o_RX_Byte[2]2n
j/home/lukas/OneDrive/raspberry/hdlc_playground/spi_fpga/spi_slave/spi_slave.srcs/sources_1/new/spi_slave.v2
828@Z8-6858h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
o_RX_Byte[1]2
1st2 
u_spi_slave/o_RX_Byte_reg[1]/Q2n
j/home/lukas/OneDrive/raspberry/hdlc_playground/spi_fpga/spi_slave/spi_slave.srcs/sources_1/new/spi_slave.v2
828@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
o_RX_Byte[1]2
2nd2
GND2n
j/home/lukas/OneDrive/raspberry/hdlc_playground/spi_fpga/spi_slave/spi_slave.srcs/sources_1/new/spi_slave.v2
828@Z8-6859h px� 
�
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
o_RX_Byte[1]2n
j/home/lukas/OneDrive/raspberry/hdlc_playground/spi_fpga/spi_slave/spi_slave.srcs/sources_1/new/spi_slave.v2
828@Z8-6858h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
o_RX_Byte[0]2
1st2 
u_spi_slave/o_RX_Byte_reg[0]/Q2n
j/home/lukas/OneDrive/raspberry/hdlc_playground/spi_fpga/spi_slave/spi_slave.srcs/sources_1/new/spi_slave.v2
828@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
o_RX_Byte[0]2
2nd2
GND2n
j/home/lukas/OneDrive/raspberry/hdlc_playground/spi_fpga/spi_slave/spi_slave.srcs/sources_1/new/spi_slave.v2
828@Z8-6859h px� 
�
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
o_RX_Byte[0]2n
j/home/lukas/OneDrive/raspberry/hdlc_playground/spi_fpga/spi_slave/spi_slave.srcs/sources_1/new/spi_slave.v2
828@Z8-6858h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:09 ; elapsed = 00:00:09 . Memory (MB): peak = 2357.254 ; gain = 673.336 ; free physical = 10246 ; free virtual = 23888
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
@
%s
*synth2(
&Start Applying XDC Timing Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:13 ; elapsed = 00:00:13 . Memory (MB): peak = 2383.254 ; gain = 699.336 ; free physical = 10145 ; free virtual = 23800
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
4
%s
*synth2
Start Timing Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Timing Optimization : Time (s): cpu = 00:00:13 ; elapsed = 00:00:13 . Memory (MB): peak = 2383.254 ; gain = 699.336 ; free physical = 10145 ; free virtual = 23800
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
3
%s
*synth2
Start Technology Mapping
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Technology Mapping : Time (s): cpu = 00:00:13 ; elapsed = 00:00:13 . Memory (MB): peak = 2402.285 ; gain = 718.367 ; free physical = 10131 ; free virtual = 23786
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
-
%s
*synth2
Start IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
?
%s
*synth2'
%Start Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
B
%s
*synth2*
(Finished Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished IO Insertion : Time (s): cpu = 00:00:15 ; elapsed = 00:00:15 . Memory (MB): peak = 2554.098 ; gain = 870.180 ; free physical = 9956 ; free virtual = 23624
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Start Renaming Generated Instances
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:15 ; elapsed = 00:00:15 . Memory (MB): peak = 2554.098 ; gain = 870.180 ; free physical = 9956 ; free virtual = 23626
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start Rebuilding User Hierarchy
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:15 ; elapsed = 00:00:15 . Memory (MB): peak = 2554.098 ; gain = 870.180 ; free physical = 9955 ; free virtual = 23623
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Renaming Generated Ports
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:15 ; elapsed = 00:00:15 . Memory (MB): peak = 2554.098 ; gain = 870.180 ; free physical = 9955 ; free virtual = 23623
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:15 ; elapsed = 00:00:15 . Memory (MB): peak = 2554.098 ; gain = 870.180 ; free physical = 9955 ; free virtual = 23623
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Start Renaming Generated Nets
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:15 ; elapsed = 00:00:15 . Memory (MB): peak = 2554.098 ; gain = 870.180 ; free physical = 9955 ; free virtual = 23623
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Writing Synthesis Report
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
/
%s
*synth2

Report BlackBoxes: 
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
| |BlackBox name |Instances |
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
0
%s*synth2
+------+-----+------+
h px� 
0
%s*synth2
|      |Cell |Count |
h px� 
0
%s*synth2
+------+-----+------+
h px� 
0
%s*synth2
|1     |BUFG |     1|
h px� 
0
%s*synth2
|2     |LUT1 |     1|
h px� 
0
%s*synth2
|3     |LUT2 |     3|
h px� 
0
%s*synth2
|4     |LUT3 |    10|
h px� 
0
%s*synth2
|5     |LUT4 |     3|
h px� 
0
%s*synth2
|6     |LUT5 |     2|
h px� 
0
%s*synth2
|7     |LUT6 |     5|
h px� 
0
%s*synth2
|8     |FDRE |    25|
h px� 
0
%s*synth2
|9     |IBUF |     3|
h px� 
0
%s*synth2
|10    |OBUF |     9|
h px� 
0
%s*synth2
+------+-----+------+
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:15 ; elapsed = 00:00:15 . Memory (MB): peak = 2554.098 ; gain = 870.180 ; free physical = 9955 ; free virtual = 23623
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
a
%s
*synth2I
GSynthesis finished with 0 errors, 24 critical warnings and 1 warnings.
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Runtime : Time (s): cpu = 00:00:14 ; elapsed = 00:00:14 . Memory (MB): peak = 2554.098 ; gain = 723.430 ; free physical = 9954 ; free virtual = 23622
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:15 ; elapsed = 00:00:15 . Memory (MB): peak = 2554.105 ; gain = 870.180 ; free physical = 9954 ; free virtual = 23622
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002

00:00:002

2554.1052
0.0002
99532
23621Z17-722h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002

00:00:002

2610.1252
0.0002
100472
23732Z17-722h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

1c3d8e8fZ4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 

G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
232
42
252
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
synth_design: 2

00:00:202

00:00:192

2610.1252

1093.4962
100472
23732Z17-722h px� 
�
%s peak %s Memory [%s] %s12246*common2
synth_design2

Physical2
PSS2=
;(MB): overall = 1763.111; main = 1763.111; forked = 268.211Z17-2834h px� 
�
%s peak %s Memory [%s] %s12246*common2
synth_design2	
Virtual2
VSS2=
;(MB): overall = 3274.270; main = 2610.129; forked = 917.012Z17-2834h px� 
c
%s6*runtcl2G
ESynthesis results are not added to the cache due to CRITICAL_WARNING
h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Write ShapeDB Complete: 2

00:00:002

00:00:002

2634.1372
0.0002
100472
23732Z17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2p
n/home/lukas/OneDrive/raspberry/hdlc_playground/spi_fpga/spi_slave/spi_slave.runs/synth_1/top_spi_slave_led.dcpZ17-1381h px� 
�
Executing command : %s
56330*	planAhead2m
kreport_utilization -file top_spi_slave_led_utilization_synth.rpt -pb top_spi_slave_led_utilization_synth.pbZ12-24828h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Mon Mar 24 21:50:35 2025Z17-206h px� 


End Record