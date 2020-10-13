# Legal Notice: (C)2019 Altera Corporation. All rights reserved.  Your
# use of Altera Corporation's design tools, logic functions and other
# software and tools, and its AMPP partner logic functions, and any
# output files any of the foregoing (including device programming or
# simulation files), and any associated documentation or information are
# expressly subject to the terms and conditions of the Altera Program
# License Subscription Agreement or other applicable license agreement,
# including, without limitation, that your use is for the sole purpose
# of programming logic devices manufactured by Altera and sold by Altera
# or its authorized distributors.  Please refer to the applicable
# agreement for further details.

#**************************************************************
# Timequest JTAG clock definition
#   Uncommenting the following lines will define the JTAG
#   clock in TimeQuest Timing Analyzer
#**************************************************************

#create_clock -period 10MHz {altera_reserved_tck}
#set_clock_groups -asynchronous -group {altera_reserved_tck}

#**************************************************************
# Set TCL Path Variables 
#**************************************************************

set 	parport_nios2_gen2_0_cpu 	parport_nios2_gen2_0_cpu:*
set 	parport_nios2_gen2_0_cpu_oci 	parport_nios2_gen2_0_cpu_nios2_oci:the_parport_nios2_gen2_0_cpu_nios2_oci
set 	parport_nios2_gen2_0_cpu_oci_break 	parport_nios2_gen2_0_cpu_nios2_oci_break:the_parport_nios2_gen2_0_cpu_nios2_oci_break
set 	parport_nios2_gen2_0_cpu_ocimem 	parport_nios2_gen2_0_cpu_nios2_ocimem:the_parport_nios2_gen2_0_cpu_nios2_ocimem
set 	parport_nios2_gen2_0_cpu_oci_debug 	parport_nios2_gen2_0_cpu_nios2_oci_debug:the_parport_nios2_gen2_0_cpu_nios2_oci_debug
set 	parport_nios2_gen2_0_cpu_wrapper 	parport_nios2_gen2_0_cpu_debug_slave_wrapper:the_parport_nios2_gen2_0_cpu_debug_slave_wrapper
set 	parport_nios2_gen2_0_cpu_jtag_tck 	parport_nios2_gen2_0_cpu_debug_slave_tck:the_parport_nios2_gen2_0_cpu_debug_slave_tck
set 	parport_nios2_gen2_0_cpu_jtag_sysclk 	parport_nios2_gen2_0_cpu_debug_slave_sysclk:the_parport_nios2_gen2_0_cpu_debug_slave_sysclk
set 	parport_nios2_gen2_0_cpu_oci_path 	 [format "%s|%s" $parport_nios2_gen2_0_cpu $parport_nios2_gen2_0_cpu_oci]
set 	parport_nios2_gen2_0_cpu_oci_break_path 	 [format "%s|%s" $parport_nios2_gen2_0_cpu_oci_path $parport_nios2_gen2_0_cpu_oci_break]
set 	parport_nios2_gen2_0_cpu_ocimem_path 	 [format "%s|%s" $parport_nios2_gen2_0_cpu_oci_path $parport_nios2_gen2_0_cpu_ocimem]
set 	parport_nios2_gen2_0_cpu_oci_debug_path 	 [format "%s|%s" $parport_nios2_gen2_0_cpu_oci_path $parport_nios2_gen2_0_cpu_oci_debug]
set 	parport_nios2_gen2_0_cpu_jtag_tck_path 	 [format "%s|%s|%s" $parport_nios2_gen2_0_cpu_oci_path $parport_nios2_gen2_0_cpu_wrapper $parport_nios2_gen2_0_cpu_jtag_tck]
set 	parport_nios2_gen2_0_cpu_jtag_sysclk_path 	 [format "%s|%s|%s" $parport_nios2_gen2_0_cpu_oci_path $parport_nios2_gen2_0_cpu_wrapper $parport_nios2_gen2_0_cpu_jtag_sysclk]
set 	parport_nios2_gen2_0_cpu_jtag_sr 	 [format "%s|*sr" $parport_nios2_gen2_0_cpu_jtag_tck_path]

#**************************************************************
# Set False Paths
#**************************************************************

set_false_path -from [get_keepers *$parport_nios2_gen2_0_cpu_oci_break_path|break_readreg*] -to [get_keepers *$parport_nios2_gen2_0_cpu_jtag_sr*]
set_false_path -from [get_keepers *$parport_nios2_gen2_0_cpu_oci_debug_path|*resetlatch]     -to [get_keepers *$parport_nios2_gen2_0_cpu_jtag_sr[33]]
set_false_path -from [get_keepers *$parport_nios2_gen2_0_cpu_oci_debug_path|monitor_ready]  -to [get_keepers *$parport_nios2_gen2_0_cpu_jtag_sr[0]]
set_false_path -from [get_keepers *$parport_nios2_gen2_0_cpu_oci_debug_path|monitor_error]  -to [get_keepers *$parport_nios2_gen2_0_cpu_jtag_sr[34]]
set_false_path -from [get_keepers *$parport_nios2_gen2_0_cpu_ocimem_path|*MonDReg*] -to [get_keepers *$parport_nios2_gen2_0_cpu_jtag_sr*]
set_false_path -from *$parport_nios2_gen2_0_cpu_jtag_sr*    -to *$parport_nios2_gen2_0_cpu_jtag_sysclk_path|*jdo*
set_false_path -from sld_hub:*|irf_reg* -to *$parport_nios2_gen2_0_cpu_jtag_sysclk_path|ir*
set_false_path -from sld_hub:*|sld_shadow_jsm:shadow_jsm|state[1] -to *$parport_nios2_gen2_0_cpu_oci_debug_path|monitor_go
