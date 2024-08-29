lappend search_path "/home/IC/FINAL_PROJECT/DFT/rtl"
lappend search_path "/home/IC/FINAL_PROJECT/DFT/std_cells"



set top_module system_TOP

set ss  scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db
set tt  scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db
set ff  scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db 

set synopsys_auto_setup true
set_svf "/home/IC/FINAL_PROJECT/DFT/dft/system_TOP.svf"

read_verilog -container r [glob  "/home/IC/FINAL_PROJECT/DFT/rtl/*.v"]
read_db -container r "$ss $tt $ff"
set_top $top_module


read_verilog -netlist -container i "/home/IC/FINAL_PROJECT/DFT/dft/dft_netlist.v"
read_db -container i "$ss $tt $ff"
set_top $top_module


set_dont_verify_points -type port r:WORK/*/*SO*
set_dont_verify_points -type port i:WORK/*/*SO*

set_constant r:WORK/*/*SE* 0
set_constant r:WORK/*/*TESTMODE* 0

set_constant i:WORK/*/*SE* 0
set_constant i:WORK/*/*TESTMODE* 0
###################### Matching Compare points ####################

match

######################### Run Verification ########################

set successful [verify]
if {!$successful} {
diagnose
analyze_points -failing
}

########################### Reporting ############################# 
report_passing_points > "passing_points.rpt"
report_failing_points > "failing_points.rpt"
report_aborted_points > "aborted_points.rpt"
report_unverified_points > "unverified_points.rpt"

