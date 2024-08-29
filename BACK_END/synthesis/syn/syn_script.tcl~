
########################### Define Top Module ############################
                                                   
set top_module system_TOP

##################### Define Working Library Directory ######################
                                                   
define_design_lib work -path ./work

############################# Formality Setup File ##########################
                                                   
set_svf $top_module.svf

################## Design Compiler Library Files #setup ######################

puts "###########################################"
puts "#      #setting Design Libraries          #"
puts "###########################################"

#Add the path of the libraries and RTL files to the search_path variable

lappend search_path "/home/IC/FINAL_PROJECT/synthesis/std_cells"
lappend search_path "/home/IC/FINAL_PROJECT/synthesis/rtl"

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

analyze -format $file_format [glob "/home/IC/FINAL_PROJECT/synthesis/rtl/*.v"]

elaborate -lib WORK system_TOP


#################### Liniking All The Design Parts #########################
puts "###############################################"
puts "######## Liniking All The Design Parts ########"
puts "###############################################"

link 

#

#################### Define Design Constraints #########################
puts "###############################################"
puts "############ Design Constraints #### ##########"
puts "###############################################"

source -echo ./cons.tcl

###################### Mapping and optimization ########################
puts "###############################################"
puts "########## Mapping & Optimization #############"
puts "###############################################"

compile 

##################### Close Formality Setup file ###########################

set_svf -off
############################################################################
# DFT Preparation Section
############################################################################

set flops_per_chain 100

set num_flops [sizeof_collection [all_registers -edge_triggered]]

set num_chains [expr $num_flops / $flops_per_chain + 1 ]

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

write_file -format verilog -hierarchy -output TOP_MODULE.v
write_file -format ddc -hierarchy -output TOP_MODULE.ddc
write_sdc  -nosplit TOP_MODULE.sdc
write_sdf           TOP_MODULE.sdf



#exit
