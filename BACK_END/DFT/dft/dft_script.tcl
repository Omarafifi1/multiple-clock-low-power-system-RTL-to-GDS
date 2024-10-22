
########################### Define Top Module ############################
                                                   
set top_module system_TOP

##################### Define Working Library Directory ######################
                                                   
define_design_lib work -path ./work

############################# Formality Setup File ##########################
                                                   
set_svf $top_module.svf

################## Design Compiler Library Files #setup ######################s

puts "###########################################"
puts "#      #setting Design Libraries          #"
puts "###########################################"

#Add the path of the libraries and RTL files to the search_path variable


lappend search_path /home/IC/FINAL_PROJECT/DFT/rtl
lappend search_path /home/IC/FINAL_PROJECT/DFT/std_cells



set SSLIB "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db"
set TTLIB "scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"
set FFLIB "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db"

## Standard Cell libraries 
set target_library [list $SSLIB $TTLIB $FFLIB]

## Standard Cell & Hard Macros libraries 
set link_library [list * $SSLIB $TTLIB $FFLIB]  

######################## Reading RTL Files #################################

puts "###########################################"
puts "#             Reading RTL Files           #"
puts "###########################################"


set file_format verilog

analyze -format $file_format [glob "/home/IC/FINAL_PROJECT/DFT/rtl/*.v"]

elaborate -lib WORK $top_module

###################### Defining toplevel ###################################

current_design $top_module

#################### Liniking All The Design Parts #########################
puts "###############################################"
puts "######## Liniking All The Design Parts ########"
puts "###############################################"

link 

#################### Liniking All The Design Parts #########################
puts "###############################################"
puts "######## checking design consistency ##########"
puts "###############################################"

check_design

#################### Define Design Constraints #########################
puts "###############################################"
puts "############ Design Constraints #### ##########"
puts "###############################################"

source -echo ./cons.tcl

#################### Archirecture Scan Chains #########################
puts "###############################################"
puts "############ Configure scan chains ############"
puts "###############################################"

set_scan_configuration -clock_mixing no_mix  -style multiplexed_flip_flop -replace true -max_length 100  

###################### Mapping and optimization ########################
puts "###############################################"
puts "########## Mapping & Optimization #############"
puts "###############################################"


compile -scan

################################################################### 
# Setting Test Timing Variables
################################################################### 

# Preclock Measure Protocol (default protocol)
set test_default_period 100
set test_default_delay 0
set test_default_bidir_delay 0
set test_default_strobe 20
set test_default_strobe_width 0

########################## Define DFT Signals ##########################

set_dft_signal -port [get_ports SCAN_CLK]  -type ScanClock   -view existing_dft  -timing {30 60}
set_dft_signal -port [get_ports SCAN_RST]  -type Reset       -view existing_dft  -active_state 0
set_dft_signal -port [get_ports TESTMODE] -type Constant    -view existing_dft  -active_state 1 
set_dft_signal -port [get_ports TESTMODE] -type TestMode    -view spec          -active_state 1 
set_dft_signal -port [get_ports SE]        -type ScanEnable  -view spec          -active_state 1   -usage scan
set_dft_signal -port [get_ports SI]        -type ScanDataIn  -view spec 
set_dft_signal -port [get_ports SO]        -type ScanDataOut -view spec  

############################# Create Test Protocol #####################

create_test_protocol
                            
###################### Pre-DFT Design Rule Checking ####################

dft_drc -verbose

############################# Preview DFT ##############################

preview_dft -show scan_summary

############################# Insert DFT ###############################

insert_dft

######################## Optimize Logic post DFT #######################

compile -scan -incremental

###################### Design Rule Checking post DFT ###################

dft_drc -verbose -coverage_estimate

##################### Close Formality Setup file ###########################

set_svf -off

############################################################################
#####                            area report                           #####      
############################################################################

report_area -hierarchy > area.rpt

 ############################################################################
 #####                            power report                          #####      
 ############################################################################
report_power -hierarchy > power.rpt

 ############################################################################
 #####                            hold report                          #####    
 ############################################################################


report_timing -max_paths 100 -delay_type min > hold.rpt

 ############################################################################
 #####                            setup report                          #####     
 ############################################################################
report_timing -max_paths 100 -delay_type max > setup.rpt

 ############################################################################
 #####                       clock_attr report                          #####      
 ############################################################################
report_clock -attributes > clocks.rpt

 ############################################################################
 #####                       constraints report                         #####      
 ############################################################################

report_constraint -all_violators > constraints.rpt

write_file -format verilog -hierarchy -output dft_netlist.v
write_file -format ddc -hierarchy -output dft_netlist.ddc
write_sdc  -nosplit TOP_MODULE.sdc
write_sdf           TOP_MODULE.sdf

################# starting graphical user interface #######################

#gui_start

#exit

