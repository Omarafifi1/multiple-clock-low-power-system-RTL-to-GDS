###################################################################

# Created by write_sdc on Thu Aug 29 00:22:05 2024

###################################################################
set sdc_version 2.0

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_operating_conditions -max scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -max_library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -min scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c -min_library scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports rx_in]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {SI[4]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {SI[3]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {SI[2]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {SI[1]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {SI[0]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports SE]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports TESTMODE]
set_load -pin_load 0.5 [get_ports tx_out]
set_load -pin_load 0.5 [get_ports stop_error]
set_load -pin_load 0.5 [get_ports parity_error]
set_load -pin_load 0.5 [get_ports start_glitch]
set_load -pin_load 0.5 [get_ports {SO[4]}]
set_load -pin_load 0.5 [get_ports {SO[3]}]
set_load -pin_load 0.5 [get_ports {SO[2]}]
set_load -pin_load 0.5 [get_ports {SO[1]}]
set_load -pin_load 0.5 [get_ports {SO[0]}]
set_case_analysis 1 [get_ports TESTMODE]
create_clock [get_ports Ref_clk]  -name REF_CLK  -period 10  -waveform {0 5}
set_clock_uncertainty -setup 0.2  [get_clocks REF_CLK]
set_clock_uncertainty -hold 0.1  [get_clocks REF_CLK]
create_clock [get_ports Uart_clk]  -name UART_CLK  -period 271  -waveform {0 135}
set_clock_uncertainty -setup 0.2  [get_clocks UART_CLK]
set_clock_uncertainty -hold 0.1  [get_clocks UART_CLK]
create_generated_clock [get_pins rx_div/o_div_clk]  -name UART_RX_CLK  -source [get_ports Uart_clk]  -master_clock UART_CLK  -divide_by 1  -add
set_clock_uncertainty -setup 0.2  [get_clocks UART_RX_CLK]
set_clock_uncertainty -hold 0.1  [get_clocks UART_RX_CLK]
create_generated_clock [get_pins tx_div/o_div_clk]  -name UART_TX_CLK  -source [get_ports Uart_clk]  -master_clock UART_CLK  -divide_by 32  -add
set_clock_uncertainty -setup 0.2  [get_clocks UART_TX_CLK]
set_clock_uncertainty -hold 0.1  [get_clocks UART_TX_CLK]
create_generated_clock [get_pins clock_gating_cell/gated_clk]  -name ALU_CLK  -source [get_ports Ref_clk]  -master_clock REF_CLK  -divide_by 1  -add
set_clock_uncertainty -setup 0.2  [get_clocks ALU_CLK]
set_clock_uncertainty -hold 0.1  [get_clocks ALU_CLK]
create_clock [get_ports SCAN_CLK]  -period 100  -waveform {0 50}
set_clock_uncertainty -setup 0.2  [get_clocks SCAN_CLK]
set_clock_uncertainty -hold 0.1  [get_clocks SCAN_CLK]
set_input_delay -clock UART_CLK  54.2  [get_ports rx_in]
set_input_delay -clock SCAN_CLK  20  [get_ports TESTMODE]
set_input_delay -clock SCAN_CLK  20  [get_ports {SI[4]}]
set_input_delay -clock SCAN_CLK  20  [get_ports {SI[3]}]
set_input_delay -clock SCAN_CLK  20  [get_ports {SI[2]}]
set_input_delay -clock SCAN_CLK  20  [get_ports {SI[1]}]
set_input_delay -clock SCAN_CLK  20  [get_ports {SI[0]}]
set_input_delay -clock SCAN_CLK  20  [get_ports SE]
set_output_delay -clock UART_TX_CLK  54.2  [get_ports tx_out]
set_output_delay -clock UART_TX_CLK  54.2  [get_ports parity_error]
set_output_delay -clock UART_TX_CLK  54.2  [get_ports stop_error]
set_output_delay -clock UART_TX_CLK  54.2  [get_ports start_glitch]
set_output_delay -clock SCAN_CLK  20  [get_ports {SO[4]}]
set_output_delay -clock SCAN_CLK  20  [get_ports {SO[3]}]
set_output_delay -clock SCAN_CLK  20  [get_ports {SO[2]}]
set_output_delay -clock SCAN_CLK  20  [get_ports {SO[1]}]
set_output_delay -clock SCAN_CLK  20  [get_ports {SO[0]}]
set_clock_groups -asynchronous -name REF_CLK_1 -group [list [get_clocks REF_CLK] [get_clocks ALU_CLK]] -group [list [get_clocks UART_CLK] [get_clocks UART_TX_CLK] [get_clocks UART_RX_CLK]] -group [get_clocks SCAN_CLK]




set_case_analysis 0 [get_ports TESTMODE ]
set_case_analysis 0 [get_ports SE]
