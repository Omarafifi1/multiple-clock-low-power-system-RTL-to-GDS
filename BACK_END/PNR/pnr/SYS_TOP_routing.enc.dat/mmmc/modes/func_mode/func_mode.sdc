## 
## Cadence First Encounter "v08.10-p004_1 ((32bit) 11/04/2008 14:34 (Linux 2.6))"
## Mon Oct 16 21:09:38 2023
## 
set sdc_version 1.4
current_design SYS_TOP
create_clock [get_ports {UART_CLK}]  -name UART_CLK -period 271.267 -waveform {0 135.633}
create_clock [get_ports {REF_CLK}]  -name REF_CLK -period 10 -waveform {0 5}
create_clock [get_ports {scan_clk}]  -name SCAN_CLK -period 100 -waveform {0 50}
create_generated_clock -name UART_RX_CLK -source [get_ports {UART_CLK}] -divide_by 1 -master_clock [get_clocks {UART_CLK}] -add [get_pins {U1_ClkDiv/U16/Y}]
create_generated_clock -name UART_TX_CLK -source [get_ports {UART_CLK}] -divide_by 32 -master_clock [get_clocks {UART_CLK}] -add [get_pins {U0_ClkDiv/U15/Y}]
create_generated_clock -name ALU_CLK -source [get_ports {REF_CLK}] -divide_by 1 -master_clock [get_clocks {REF_CLK}] -add [get_pins {U0_CLK_GATE/U0_TLATNCAX12M/ECK}]
set_propagated_clock  [get_pins {U0_ClkDiv/U15/Y}]
set_propagated_clock  [get_pins {U1_ClkDiv/U16/Y}]
set_propagated_clock  [get_ports {UART_CLK}]
set_propagated_clock  [get_pins {U0_CLK_GATE/U0_TLATNCAX12M/ECK}]
set_propagated_clock  [get_ports {scan_clk}]
set_propagated_clock  [get_ports {REF_CLK}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c -rise -min -pin Y -from_pin A [get_ports {UART_RX_IN}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c -fall -min -pin Y -from_pin A [get_ports {UART_RX_IN}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c -rise -max -pin Y -from_pin A [get_ports {UART_RX_IN}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c -fall -max -pin Y -from_pin A [get_ports {UART_RX_IN}]
set_load -pin_load -max  0.5  [get_ports {UART_TX_O}]
set_load -pin_load -min  0.5  [get_ports {UART_TX_O}]
set_case_analysis 0 [get_ports {SE}]
set_case_analysis 0 [get_ports {test_mode}]
set_input_delay -add_delay 54.2534 -clock [get_clocks {UART_CLK}] [get_ports {UART_RX_IN}]
set_output_delay -add_delay 54.2534 -clock [get_clocks {UART_TX_CLK}] [get_ports {UART_TX_O}]
set_output_delay -add_delay 54.2534 -clock [get_clocks {UART_CLK}] [get_ports {parity_error}]
set_output_delay -add_delay 54.2534 -clock [get_clocks {UART_CLK}] [get_ports {framing_error}]
set_clock_uncertainty 0.1 -hold [get_clocks {ALU_CLK}]
set_clock_uncertainty 0.2 -setup [get_clocks {ALU_CLK}]
set_clock_uncertainty 0.1 -hold [get_clocks {UART_TX_CLK}]
set_clock_uncertainty 0.2 -setup [get_clocks {UART_TX_CLK}]
set_clock_uncertainty 0.1 -hold [get_clocks {UART_CLK}]
set_clock_uncertainty 0.2 -setup [get_clocks {UART_CLK}]
set_clock_uncertainty 0.1 -hold [get_clocks {REF_CLK}]
set_clock_uncertainty 0.2 -setup [get_clocks {REF_CLK}]
set_clock_uncertainty 0.1 -hold [get_clocks {UART_RX_CLK}]
set_clock_uncertainty 0.2 -setup [get_clocks {UART_RX_CLK}]
set_clock_uncertainty 0.1 -hold [get_clocks {SCAN_CLK}]
set_clock_uncertainty 0.2 -setup [get_clocks {SCAN_CLK}]
set_clock_groups -name REF_CLK_1 -asynchronous  -group  [get_clocks {ALU_CLK REF_CLK}] -group  [get_clocks {UART_TX_CLK UART_RX_CLK UART_CLK}] -group  [get_clocks {SCAN_CLK}]
