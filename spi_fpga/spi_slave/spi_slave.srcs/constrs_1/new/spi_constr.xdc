
##Pmod Header JA , SPI interface
##Sch name = JA1
set_property PACKAGE_PIN J1 [get_ports {i_SPI_Clk}]
 set_property IOSTANDARD LVCMOS33 [get_ports {i_SPI_Clk}]
##Sch name = JA2
set_property PACKAGE_PIN L2 [get_ports {o_SPI_MISO}]
 set_property IOSTANDARD LVCMOS33 [get_ports {o_SPI_MISO}]
##Sch name = JA3
set_property PACKAGE_PIN J2 [get_ports {i_SPI_MOSI}]
 set_property IOSTANDARD LVCMOS33 [get_ports {i_SPI_MOSI}]
##Sch name = JA4
set_property PACKAGE_PIN G2 [get_ports {i_SPI_CS_n}]
 set_property IOSTANDARD LVCMOS33 [get_ports {i_SPI_CS_n}]
 
 
 ## other control
# Clock input (Basys3 default 100 MHz)
set_property PACKAGE_PIN W5 [get_ports i_Clk]
 set_property IOSTANDARD LVCMOS33 [get_ports i_Clk]
 set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets i_SPI_Clk_IBUF]
 # Reset button (BTN0)
set_property PACKAGE_PIN U18 [get_ports i_Rst_L]
 set_property IOSTANDARD LVCMOS33 [get_ports i_Rst_L]
 
 # LEDs for output
set_property PACKAGE_PIN U16 [get_ports o_RX_Byte[0]]
set_property PACKAGE_PIN E19 [get_ports o_RX_Byte[1]]
set_property PACKAGE_PIN U19 [get_ports o_RX_Byte[2]]
set_property PACKAGE_PIN V19 [get_ports o_RX_Byte[3]]
set_property PACKAGE_PIN W18 [get_ports o_RX_Byte[4]]
set_property PACKAGE_PIN U15 [get_ports o_RX_Byte[5]]
set_property PACKAGE_PIN V15 [get_ports o_RX_Byte[6]]
set_property PACKAGE_PIN V17 [get_ports o_RX_Byte[7]]
set_property IOSTANDARD LVCMOS33 [get_ports o_RX_Byte[*]]