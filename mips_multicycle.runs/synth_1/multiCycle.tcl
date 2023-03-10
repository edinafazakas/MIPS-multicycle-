# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a35tcpg236-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir {D:/MATERIALE AN 3 SEM 1/SSC/lab7/mips_multicycle/mips_multicycle.cache/wt} [current_project]
set_property parent.project_path {D:/MATERIALE AN 3 SEM 1/SSC/lab7/mips_multicycle/mips_multicycle.xpr} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property ip_output_repo {d:/MATERIALE AN 3 SEM 1/SSC/lab7/mips_multicycle/mips_multicycle.cache/ip} [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library xil_defaultlib {
  {D:/MATERIALE AN 3 SEM 1/SSC/lab7/mips_multicycle/mips_multicycle.srcs/sources_1/new/ProcMem_definitions.vhd}
  {D:/MATERIALE AN 3 SEM 1/SSC/lab7/mips_multicycle/mips_multicycle.srcs/sources_1/new/RegisterBlock.vhd}
  {D:/MATERIALE AN 3 SEM 1/SSC/lab7/mips_multicycle/mips_multicycle.srcs/sources_1/new/Reg.vhd}
  {D:/MATERIALE AN 3 SEM 1/SSC/lab7/mips_multicycle/mips_multicycle.srcs/sources_1/new/pc.vhd}
  {D:/MATERIALE AN 3 SEM 1/SSC/lab7/mips_multicycle/mips_multicycle.srcs/sources_1/new/memory.vhd}
  {D:/MATERIALE AN 3 SEM 1/SSC/lab7/mips_multicycle/mips_multicycle.srcs/sources_1/new/IR.vhd}
  {D:/MATERIALE AN 3 SEM 1/SSC/lab7/mips_multicycle/mips_multicycle.srcs/sources_1/new/ControlUnit.vhd}
  {D:/MATERIALE AN 3 SEM 1/SSC/lab7/mips_multicycle/mips_multicycle.srcs/sources_1/new/aluControl.vhd}
  {D:/MATERIALE AN 3 SEM 1/SSC/lab7/mips_multicycle/mips_multicycle.srcs/sources_1/new/alu.vhd}
  {D:/MATERIALE AN 3 SEM 1/SSC/lab7/mips_multicycle/mips_multicycle.srcs/sources_1/imports/new/mips.vhd}
}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}

synth_design -top multiCycle -part xc7a35tcpg236-1


write_checkpoint -force -noxdef multiCycle.dcp

catch { report_utilization -file multiCycle_utilization_synth.rpt -pb multiCycle_utilization_synth.pb }
