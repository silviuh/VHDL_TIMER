## Semnalele de CLOCK
set_property PACKAGE_PIN W5 [get_ports CLK]
set_property IOSTANDARD LVCMOS33 [get_ports CLK]
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports CLK]
set_property PACKAGE_PIN U18 [get_ports CLK_ext]
set_property IOSTANDARD LVCMOS33 [get_ports CLK_ext]
## INTRARILE
set_property PACKAGE_PIN V17 [get_ports ENABLE]
set_property IOSTANDARD LVCMOS33 [get_ports ENABLE]
set_property PACKAGE_PIN V16 [get_ports RES]
set_property IOSTANDARD LVCMOS33 [get_ports RES]
set_property PACKAGE_PIN W16 [get_ports LOAD]
set_property IOSTANDARD LVCMOS33 [get_ports LOAD]
set_property PACKAGE_PIN W17 [get_ports SEL]
set_property IOSTANDARD LVCMOS33 [get_ports SEL]
set_property PACKAGE_PIN V2 [get_ports DATA_IN[0]]
set_propertyIOSTANDARD LVCMOS33 [get_ports DATA_IN[0]]
set_property PACKAGE_PIN T3 [get_ports DATA_IN[1]]
set_property IOSTANDARD LVCMOS33 [get_ports DATA_IN[1]]
set_property PACKAGE_PIN T2 [get_ports DATA_IN[2]]
set_property IOSTANDARD LVCMOS33 [get_ports DATA_IN[2]]
set_property PACKAGE_PIN R3 [get_ports DATA_IN[3]]
set_property IOSTANDARD LVCMOS33 [get_ports DATA_IN[3]]
set_property PACKAGE_PIN W2 [get_ports DATA_IN[4]]
set_property IOSTANDARD LVCMOS33 [get_ports DATA_IN[4]]
set_property PACKAGE_PIN U1 [get_ports DATA_IN[5]]
set_property IOSTANDARD LVCMOS33 [get_ports DATA_IN[5]]
set_property PACKAGE_PIN T1 [get_ports DATA_IN[6]]

set_property IOSTANDARD LVCMOS33 [get_ports DATA_IN[6]]
set_property PACKAGE_PIN R2 [get_ports DATA_IN[7]]
set_property IOSTANDARD LVCMOS33 [get_ports DATA_IN[7]]
## IESIRILE
set_property PACKAGE_PIN V13 [get_ports DATA_OUT[0]]
set_property IOSTANDARD LVCMOS33 [get_ports DATA_OUT[0]]
set_property PACKAGE_PIN V3 [get_ports DATA_OUT[1]]
set_property IOSTANDARD LVCMOS33 [get_ports DATA_OUT[1]]
set_property PACKAGE_PIN W3 [get_ports DATA_OUT[2]]
set_property IOSTANDARD LVCMOS33 [get_ports DATA_OUT[2]]
set_property PACKAGE_PIN U3 [get_ports DATA_OUT[3]]
set_property IOSTANDARD LVCMOS33 [get_ports DATA_OUT[3]]
set_property PACKAGE_PIN P3 [get_ports DATA_OUT[4]]
set_property IOSTANDARD LVCMOS33 [get_ports DATA_OUT[4]]
set_property PACKAGE_PIN N3 [get_ports DATA_OUT[5]]
set_property IOSTANDARD LVCMOS33 [get_ports DATA_OUT[5]]
set_property PACKAGE_PIN P1 [get_ports DATA_OUT[6]]
set_property IOSTANDARD LVCMOS33 [get_ports DATA_OUT[6]]
set_property PACKAGE_PIN L1 [get_ports DATA_OUT[7]]
set_property IOSTANDARD LVCMOS33 [get_ports DATA_OUT[7]]
set_property PACKAGE_PIN U16 [get_ports OVERFLOW_FLAG]
set_property IOSTANDARD LVCMOS33 [get_ports OVERFLOW_FLAG]