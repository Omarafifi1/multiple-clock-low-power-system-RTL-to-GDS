set synopsys_auto_setup true
lappend search_path "/home/IC/FINAL_PROJECT/synthesis/std_cells"
lappend search_path "/home/IC/FINAL_PROJECT/synthesis/rtl"

set_svf "/home/IC/FINAL_PROJECT/synthesis/syn/system_TOP.svf"

read_verilog -container r [glob  "/home/IC/FINAL_PROJECT/synthesis/rtl/*.v"]
read_db -container r "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db"
set_top system_TOP


read_verilog -netlist -container i "/home/IC/FINAL_PROJECT/synthesis/syn/TOP_MODULE.v"
read_db -container i "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db"
set_top system_TOP


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
