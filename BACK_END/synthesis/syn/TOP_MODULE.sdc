###################################################################

# Created by write_sdc on Wed Aug 28 22:23:10 2024

###################################################################
set sdc_version 2.0

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_operating_conditions -max scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -max_library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -min scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c -min_library scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports rx_in]
set_load -pin_load 0.5 [get_ports tx_out]
set_load -pin_load 0.5 [get_ports stop_error]
set_load -pin_load 0.5 [get_ports parity_error]
set_load -pin_load 0.5 [get_ports start_glitch]
create_clock [get_ports Ref_clk]  -period 10  -waveform {0 5}
set_clock_uncertainty -setup 0.2  [get_clocks Ref_clk]
set_clock_uncertainty -hold 0.1  [get_clocks Ref_clk]
create_clock [get_ports Uart_clk]  -name UART_CLK  -period 271  -waveform {0 135}
set_clock_uncertainty -setup 0.2  [get_clocks UART_CLK]
set_clock_uncertainty -hold 0.1  [get_clocks UART_CLK]
create_generated_clock [get_pins rx_div/o_div_clk]  -name UART_RX_CLK  -source [get_ports Uart_clk]  -master_clock UART_CLK  -divide_by 1  -add
set_clock_uncertainty -setup 0.2  [get_clocks UART_RX_CLK]
set_clock_uncertainty -hold 0.1  [get_clocks UART_RX_CLK]
create_generated_clock [get_pins tx_div/o_div_clk]  -name UART_TX_CLK  -source [get_ports Uart_clk]  -master_clock UART_CLK  -divide_by 32  -add
set_clock_uncertainty -setup 0.2  [get_clocks UART_TX_CLK]
set_clock_uncertainty -hold 0.1  [get_clocks UART_TX_CLK]
create_generated_clock [get_pins clock_gating_cell/gated_clk]  -name ALU_CLK  -source [get_ports Ref_clk]  -master_clock Ref_clk  -divide_by 1  -add
set_clock_uncertainty -setup 0.2  [get_clocks ALU_CLK]
set_clock_uncertainty -hold 0.1  [get_clocks ALU_CLK]
set_input_delay -clock UART_CLK  54.2  [get_ports rx_in]
set_output_delay -clock UART_TX_CLK  54.2  [get_ports tx_out]
set_output_delay -clock UART_TX_CLK  54.2  [get_ports parity_error]
set_output_delay -clock UART_TX_CLK  54.2  [get_ports stop_error]
set_output_delay -clock UART_TX_CLK  54.2  [get_ports start_glitch]
set_clock_groups -asynchronous -name Ref_clk_1 -group [list [get_clocks Ref_clk] [get_clocks ALU_CLK]] -group [list [get_clocks UART_CLK] [get_clocks UART_TX_CLK] [get_clocks UART_RX_CLK]]
