set_property PACKAGE_PIN Y9 [get_ports clk_0]

create_clock -period 40.000 -name clk_0 -waveform {0.000 20.000} [get_ports clk_0]

set_property IOSTANDARD LVCMOS18 [get_ports clk_0]
