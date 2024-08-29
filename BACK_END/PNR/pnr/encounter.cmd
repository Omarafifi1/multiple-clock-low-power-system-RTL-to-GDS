#######################################################
#                                                     #
#  Encounter Command Logging File                     #
#  Created on Wed Oct 18 22:55:27 2023                #
#                                                     #
#######################################################

#@(#)CDS: First Encounter v08.10-p004_1 (32bit) 11/04/2008 14:34 (Linux 2.6)
#@(#)CDS: NanoRoute v08.10-p008 NR081027-0018/USR58-UB (database version 2.30, 67.1.1) {superthreading v1.11}
#@(#)CDS: CeltIC v08.10-p002_1 (32bit) 10/23/2008 22:04:14 (Linux 2.6.9-67.0.10.ELsmp)
#@(#)CDS: CTE v08.10-p016_1 (32bit) Oct 26 2008 15:11:51 (Linux 2.6.9-67.0.10.ELsmp)
#@(#)CDS: CPE v08.10-p009

encMessage warning 0
encMessage debug 0
encMessage info 0
restoreDesign /home/ahesham/Projects/System_pnr/pnr/SYS_TOP_chip_finish.enc.dat SYS_TOP
setDrawView fplan
encMessage warning 1
encMessage debug 0
encMessage info 1
setDrawView place
getIoFlowFlag
selectInst U0_RegFile/U215
clearClockDomains
setClockDomains -all
timeDesign -postRoute -pathReports -drvReports -slackReports -numPaths 50 -prefix SYS_TOP_postRoute -outDir timingReports
clearClockDomains
setClockDomains -all
timeDesign -postRoute -hold -pathReports -slackReports -numPaths 50 -prefix SYS_TOP_postRoute -outDir timingReports
saveNetlist export/SYS_TOP.v
saveNetlist export/SYS_TOP_pg.v -includePowerGround
rcOut -spf export/SYS_TOP.spf
delayCal -sdf export/SYS_TOP.sdf -version 3.0
report_power -outfile report/power.rpt
streamOut export/SYS_TOP.gds -mapFile ./import/gds2InLayer.map -libName DesignLib -stripes 1 -units 2000 -mode ALL
delayCal -sdf export/SYS_TOP.sdf -version 3.0
