
# (C) 2001-2012 Altera Corporation. All rights reserved.
# Your use of Altera Corporation's design tools, logic functions and 
# other software and tools, and its AMPP partner logic functions, and 
# any output files any of the foregoing (including device programming 
# or simulation files), and any associated documentation or information 
# are expressly subject to the terms and conditions of the Altera 
# Program License Subscription Agreement, Altera MegaCore Function 
# License Agreement, or other applicable license agreement, including, 
# without limitation, that your use is for the sole purpose of 
# programming logic devices manufactured by Altera and sold by Altera 
# or its authorized distributors. Please refer to the applicable 
# agreement for further details.

# ----------------------------------------
# Auto-generated simulation script

# ----------------------------------------
# Initialize the variable
if ![info exists SYSTEM_INSTANCE_NAME] { 
  set SYSTEM_INSTANCE_NAME ""
} elseif { ![ string match "" $SYSTEM_INSTANCE_NAME ] } { 
  set SYSTEM_INSTANCE_NAME "/$SYSTEM_INSTANCE_NAME"
} 

if ![info exists TOP_LEVEL_NAME] { 
  set TOP_LEVEL_NAME "Nios1"
} elseif { ![ string match "" $TOP_LEVEL_NAME ] } { 
  set TOP_LEVEL_NAME "$TOP_LEVEL_NAME"
} 

if ![info exists QSYS_SIMDIR] { 
  set QSYS_SIMDIR "./../"
} elseif { ![ string match "" $QSYS_SIMDIR ] } { 
  set QSYS_SIMDIR "$QSYS_SIMDIR"
} 


# ----------------------------------------
# Copy ROM/RAM files to simulation directory
file copy -force $QSYS_SIMDIR/submodules/Nios1_onchip_memory.hex ./
file copy -force $QSYS_SIMDIR/submodules/Nios1_nios2_qsys_bht_ram.dat ./
file copy -force $QSYS_SIMDIR/submodules/Nios1_nios2_qsys_bht_ram.hex ./
file copy -force $QSYS_SIMDIR/submodules/Nios1_nios2_qsys_bht_ram.mif ./
file copy -force $QSYS_SIMDIR/submodules/Nios1_nios2_qsys_dc_tag_ram.dat ./
file copy -force $QSYS_SIMDIR/submodules/Nios1_nios2_qsys_dc_tag_ram.hex ./
file copy -force $QSYS_SIMDIR/submodules/Nios1_nios2_qsys_dc_tag_ram.mif ./
file copy -force $QSYS_SIMDIR/submodules/Nios1_nios2_qsys_ic_tag_ram.dat ./
file copy -force $QSYS_SIMDIR/submodules/Nios1_nios2_qsys_ic_tag_ram.hex ./
file copy -force $QSYS_SIMDIR/submodules/Nios1_nios2_qsys_ic_tag_ram.mif ./
file copy -force $QSYS_SIMDIR/submodules/Nios1_nios2_qsys_ociram_default_contents.dat ./
file copy -force $QSYS_SIMDIR/submodules/Nios1_nios2_qsys_ociram_default_contents.hex ./
file copy -force $QSYS_SIMDIR/submodules/Nios1_nios2_qsys_ociram_default_contents.mif ./
file copy -force $QSYS_SIMDIR/submodules/Nios1_nios2_qsys_rf_ram_a.dat ./
file copy -force $QSYS_SIMDIR/submodules/Nios1_nios2_qsys_rf_ram_a.hex ./
file copy -force $QSYS_SIMDIR/submodules/Nios1_nios2_qsys_rf_ram_a.mif ./
file copy -force $QSYS_SIMDIR/submodules/Nios1_nios2_qsys_rf_ram_b.dat ./
file copy -force $QSYS_SIMDIR/submodules/Nios1_nios2_qsys_rf_ram_b.hex ./
file copy -force $QSYS_SIMDIR/submodules/Nios1_nios2_qsys_rf_ram_b.mif ./

# ----------------------------------------
# Create compilation libraries
proc ensure_lib { lib } { if ![file isdirectory $lib] { vlib $lib } }
ensure_lib      ./libraries/     
ensure_lib      ./libraries/work/
vmap       work ./libraries/work/
if { ![ string match "*ModelSim ALTERA*" [ vsim -version ] ] } {
  ensure_lib              ./libraries/altera/      
  vmap       altera       ./libraries/altera/      
  ensure_lib              ./libraries/lpm/         
  vmap       lpm          ./libraries/lpm/         
  ensure_lib              ./libraries/sgate/       
  vmap       sgate        ./libraries/sgate/       
  ensure_lib              ./libraries/altera_mf/   
  vmap       altera_mf    ./libraries/altera_mf/   
  ensure_lib              ./libraries/altera_lnsim/
  vmap       altera_lnsim ./libraries/altera_lnsim/
  ensure_lib              ./libraries/cycloneive/  
  vmap       cycloneive   ./libraries/cycloneive/  
}
ensure_lib                                                                                ./libraries/Nios1_irq_mapper/                                                              
vmap       Nios1_irq_mapper                                                               ./libraries/Nios1_irq_mapper/                                                              
ensure_lib                                                                                ./libraries/Nios1_rsp_xbar_mux_001/                                                        
vmap       Nios1_rsp_xbar_mux_001                                                         ./libraries/Nios1_rsp_xbar_mux_001/                                                        
ensure_lib                                                                                ./libraries/Nios1_rsp_xbar_mux/                                                            
vmap       Nios1_rsp_xbar_mux                                                             ./libraries/Nios1_rsp_xbar_mux/                                                            
ensure_lib                                                                                ./libraries/Nios1_rsp_xbar_demux_002/                                                      
vmap       Nios1_rsp_xbar_demux_002                                                       ./libraries/Nios1_rsp_xbar_demux_002/                                                      
ensure_lib                                                                                ./libraries/Nios1_rsp_xbar_demux/                                                          
vmap       Nios1_rsp_xbar_demux                                                           ./libraries/Nios1_rsp_xbar_demux/                                                          
ensure_lib                                                                                ./libraries/Nios1_cmd_xbar_mux/                                                            
vmap       Nios1_cmd_xbar_mux                                                             ./libraries/Nios1_cmd_xbar_mux/                                                            
ensure_lib                                                                                ./libraries/Nios1_cmd_xbar_demux_001/                                                      
vmap       Nios1_cmd_xbar_demux_001                                                       ./libraries/Nios1_cmd_xbar_demux_001/                                                      
ensure_lib                                                                                ./libraries/Nios1_cmd_xbar_demux/                                                          
vmap       Nios1_cmd_xbar_demux                                                           ./libraries/Nios1_cmd_xbar_demux/                                                          
ensure_lib                                                                                ./libraries/Nios1_rst_controller/                                                          
vmap       Nios1_rst_controller                                                           ./libraries/Nios1_rst_controller/                                                          
ensure_lib                                                                                ./libraries/Nios1_limiter/                                                                 
vmap       Nios1_limiter                                                                  ./libraries/Nios1_limiter/                                                                 
ensure_lib                                                                                ./libraries/Nios1_id_router_002/                                                           
vmap       Nios1_id_router_002                                                            ./libraries/Nios1_id_router_002/                                                           
ensure_lib                                                                                ./libraries/Nios1_id_router/                                                               
vmap       Nios1_id_router                                                                ./libraries/Nios1_id_router/                                                               
ensure_lib                                                                                ./libraries/Nios1_addr_router_001/                                                         
vmap       Nios1_addr_router_001                                                          ./libraries/Nios1_addr_router_001/                                                         
ensure_lib                                                                                ./libraries/Nios1_addr_router/                                                             
vmap       Nios1_addr_router                                                              ./libraries/Nios1_addr_router/                                                             
ensure_lib                                                                                ./libraries/Nios1_pio_RdyData_s1_translator_avalon_universal_slave_0_agent/                
vmap       Nios1_pio_RdyData_s1_translator_avalon_universal_slave_0_agent                 ./libraries/Nios1_pio_RdyData_s1_translator_avalon_universal_slave_0_agent/                
ensure_lib                                                                                ./libraries/Nios1_timer_0_s1_translator_avalon_universal_slave_0_agent/                    
vmap       Nios1_timer_0_s1_translator_avalon_universal_slave_0_agent                     ./libraries/Nios1_timer_0_s1_translator_avalon_universal_slave_0_agent/                    
ensure_lib                                                                                ./libraries/Nios1_onchip_memory_s1_translator_avalon_universal_slave_0_agent/              
vmap       Nios1_onchip_memory_s1_translator_avalon_universal_slave_0_agent               ./libraries/Nios1_onchip_memory_s1_translator_avalon_universal_slave_0_agent/              
ensure_lib                                                                                ./libraries/Nios1_uart_s1_translator_avalon_universal_slave_0_agent/                       
vmap       Nios1_uart_s1_translator_avalon_universal_slave_0_agent                        ./libraries/Nios1_uart_s1_translator_avalon_universal_slave_0_agent/                       
ensure_lib                                                                                ./libraries/Nios1_pio_Data_s1_translator_avalon_universal_slave_0_agent/                   
vmap       Nios1_pio_Data_s1_translator_avalon_universal_slave_0_agent                    ./libraries/Nios1_pio_Data_s1_translator_avalon_universal_slave_0_agent/                   
ensure_lib                                                                                ./libraries/Nios1_pio_Button_s1_translator_avalon_universal_slave_0_agent/                 
vmap       Nios1_pio_Button_s1_translator_avalon_universal_slave_0_agent                  ./libraries/Nios1_pio_Button_s1_translator_avalon_universal_slave_0_agent/                 
ensure_lib                                                                                ./libraries/Nios1_jtag_uart_avalon_jtag_slave_translator_avalon_universal_slave_0_agent/   
vmap       Nios1_jtag_uart_avalon_jtag_slave_translator_avalon_universal_slave_0_agent    ./libraries/Nios1_jtag_uart_avalon_jtag_slave_translator_avalon_universal_slave_0_agent/   
ensure_lib                                                                                ./libraries/Nios1_pio_SW_s1_translator_avalon_universal_slave_0_agent/                     
vmap       Nios1_pio_SW_s1_translator_avalon_universal_slave_0_agent                      ./libraries/Nios1_pio_SW_s1_translator_avalon_universal_slave_0_agent/                     
ensure_lib                                                                                ./libraries/Nios1_nios2_qsys_instruction_master_translator_avalon_universal_master_0_agent/
vmap       Nios1_nios2_qsys_instruction_master_translator_avalon_universal_master_0_agent ./libraries/Nios1_nios2_qsys_instruction_master_translator_avalon_universal_master_0_agent/
ensure_lib                                                                                ./libraries/Nios1_nios2_qsys_jtag_debug_module_translator_avalon_universal_slave_0_agent/  
vmap       Nios1_nios2_qsys_jtag_debug_module_translator_avalon_universal_slave_0_agent   ./libraries/Nios1_nios2_qsys_jtag_debug_module_translator_avalon_universal_slave_0_agent/  
ensure_lib                                                                                ./libraries/Nios1_lcd_control_slave_translator_avalon_universal_slave_0_agent/             
vmap       Nios1_lcd_control_slave_translator_avalon_universal_slave_0_agent              ./libraries/Nios1_lcd_control_slave_translator_avalon_universal_slave_0_agent/             
ensure_lib                                                                                ./libraries/Nios1_nios2_qsys_data_master_translator_avalon_universal_master_0_agent/       
vmap       Nios1_nios2_qsys_data_master_translator_avalon_universal_master_0_agent        ./libraries/Nios1_nios2_qsys_data_master_translator_avalon_universal_master_0_agent/       
ensure_lib                                                                                ./libraries/Nios1_pio_DataRead_s1_translator_avalon_universal_slave_0_agent/               
vmap       Nios1_pio_DataRead_s1_translator_avalon_universal_slave_0_agent                ./libraries/Nios1_pio_DataRead_s1_translator_avalon_universal_slave_0_agent/               
ensure_lib                                                                                ./libraries/Nios1_sysid_qsys_control_slave_translator_avalon_universal_slave_0_agent/      
vmap       Nios1_sysid_qsys_control_slave_translator_avalon_universal_slave_0_agent       ./libraries/Nios1_sysid_qsys_control_slave_translator_avalon_universal_slave_0_agent/      
ensure_lib                                                                                ./libraries/Nios1_pio_LEDR_s1_translator_avalon_universal_slave_0_agent/                   
vmap       Nios1_pio_LEDR_s1_translator_avalon_universal_slave_0_agent                    ./libraries/Nios1_pio_LEDR_s1_translator_avalon_universal_slave_0_agent/                   
ensure_lib                                                                                ./libraries/Nios1_pio_LEDG_s1_translator_avalon_universal_slave_0_agent_rsp_fifo/          
vmap       Nios1_pio_LEDG_s1_translator_avalon_universal_slave_0_agent_rsp_fifo           ./libraries/Nios1_pio_LEDG_s1_translator_avalon_universal_slave_0_agent_rsp_fifo/          
ensure_lib                                                                                ./libraries/Nios1_pio_LEDG_s1_translator_avalon_universal_slave_0_agent/                   
vmap       Nios1_pio_LEDG_s1_translator_avalon_universal_slave_0_agent                    ./libraries/Nios1_pio_LEDG_s1_translator_avalon_universal_slave_0_agent/                   
ensure_lib                                                                                ./libraries/Nios1_timer_0_s1_translator/                                                   
vmap       Nios1_timer_0_s1_translator                                                    ./libraries/Nios1_timer_0_s1_translator/                                                   
ensure_lib                                                                                ./libraries/Nios1_uart_s1_translator/                                                      
vmap       Nios1_uart_s1_translator                                                       ./libraries/Nios1_uart_s1_translator/                                                      
ensure_lib                                                                                ./libraries/Nios1_lcd_control_slave_translator/                                            
vmap       Nios1_lcd_control_slave_translator                                             ./libraries/Nios1_lcd_control_slave_translator/                                            
ensure_lib                                                                                ./libraries/Nios1_pio_Button_s1_translator/                                                
vmap       Nios1_pio_Button_s1_translator                                                 ./libraries/Nios1_pio_Button_s1_translator/                                                
ensure_lib                                                                                ./libraries/Nios1_pio_SW_s1_translator/                                                    
vmap       Nios1_pio_SW_s1_translator                                                     ./libraries/Nios1_pio_SW_s1_translator/                                                    
ensure_lib                                                                                ./libraries/Nios1_pio_LEDG_s1_translator/                                                  
vmap       Nios1_pio_LEDG_s1_translator                                                   ./libraries/Nios1_pio_LEDG_s1_translator/                                                  
ensure_lib                                                                                ./libraries/Nios1_sysid_qsys_control_slave_translator/                                     
vmap       Nios1_sysid_qsys_control_slave_translator                                      ./libraries/Nios1_sysid_qsys_control_slave_translator/                                     
ensure_lib                                                                                ./libraries/Nios1_jtag_uart_avalon_jtag_slave_translator/                                  
vmap       Nios1_jtag_uart_avalon_jtag_slave_translator                                   ./libraries/Nios1_jtag_uart_avalon_jtag_slave_translator/                                  
ensure_lib                                                                                ./libraries/Nios1_onchip_memory_s1_translator/                                             
vmap       Nios1_onchip_memory_s1_translator                                              ./libraries/Nios1_onchip_memory_s1_translator/                                             
ensure_lib                                                                                ./libraries/Nios1_nios2_qsys_jtag_debug_module_translator/                                 
vmap       Nios1_nios2_qsys_jtag_debug_module_translator                                  ./libraries/Nios1_nios2_qsys_jtag_debug_module_translator/                                 
ensure_lib                                                                                ./libraries/Nios1_nios2_qsys_data_master_translator/                                       
vmap       Nios1_nios2_qsys_data_master_translator                                        ./libraries/Nios1_nios2_qsys_data_master_translator/                                       
ensure_lib                                                                                ./libraries/Nios1_nios2_qsys_instruction_master_translator/                                
vmap       Nios1_nios2_qsys_instruction_master_translator                                 ./libraries/Nios1_nios2_qsys_instruction_master_translator/                                
ensure_lib                                                                                ./libraries/Nios1_pio_DataRead/                                                            
vmap       Nios1_pio_DataRead                                                             ./libraries/Nios1_pio_DataRead/                                                            
ensure_lib                                                                                ./libraries/Nios1_pio_RdyData/                                                             
vmap       Nios1_pio_RdyData                                                              ./libraries/Nios1_pio_RdyData/                                                             
ensure_lib                                                                                ./libraries/Nios1_pio_Data/                                                                
vmap       Nios1_pio_Data                                                                 ./libraries/Nios1_pio_Data/                                                                
ensure_lib                                                                                ./libraries/Nios1_timer_0/                                                                 
vmap       Nios1_timer_0                                                                  ./libraries/Nios1_timer_0/                                                                 
ensure_lib                                                                                ./libraries/Nios1_uart/                                                                    
vmap       Nios1_uart                                                                     ./libraries/Nios1_uart/                                                                    
ensure_lib                                                                                ./libraries/Nios1_lcd/                                                                     
vmap       Nios1_lcd                                                                      ./libraries/Nios1_lcd/                                                                     
ensure_lib                                                                                ./libraries/Nios1_pio_Button/                                                              
vmap       Nios1_pio_Button                                                               ./libraries/Nios1_pio_Button/                                                              
ensure_lib                                                                                ./libraries/Nios1_pio_SW/                                                                  
vmap       Nios1_pio_SW                                                                   ./libraries/Nios1_pio_SW/                                                                  
ensure_lib                                                                                ./libraries/Nios1_pio_LEDR/                                                                
vmap       Nios1_pio_LEDR                                                                 ./libraries/Nios1_pio_LEDR/                                                                
ensure_lib                                                                                ./libraries/Nios1_pio_LEDG/                                                                
vmap       Nios1_pio_LEDG                                                                 ./libraries/Nios1_pio_LEDG/                                                                
ensure_lib                                                                                ./libraries/Nios1_sysid_qsys/                                                              
vmap       Nios1_sysid_qsys                                                               ./libraries/Nios1_sysid_qsys/                                                              
ensure_lib                                                                                ./libraries/Nios1_jtag_uart/                                                               
vmap       Nios1_jtag_uart                                                                ./libraries/Nios1_jtag_uart/                                                               
ensure_lib                                                                                ./libraries/Nios1_onchip_memory/                                                           
vmap       Nios1_onchip_memory                                                            ./libraries/Nios1_onchip_memory/                                                           
ensure_lib                                                                                ./libraries/Nios1_nios2_qsys/                                                              
vmap       Nios1_nios2_qsys                                                               ./libraries/Nios1_nios2_qsys/                                                              

# ----------------------------------------
# Compile device library files
alias dev_com {
  echo "\[exec\] dev_com"
  if { ![ string match "*ModelSim ALTERA*" [ vsim -version ] ] } {
    vcom     "C:/altera/11.1sp2/quartus/eda/sim_lib/altera_syn_attributes.vhd"        -work altera      
    vcom     "C:/altera/11.1sp2/quartus/eda/sim_lib/altera_standard_functions.vhd"    -work altera      
    vcom     "C:/altera/11.1sp2/quartus/eda/sim_lib/alt_dspbuilder_package.vhd"       -work altera      
    vcom     "C:/altera/11.1sp2/quartus/eda/sim_lib/altera_europa_support_lib.vhd"    -work altera      
    vcom     "C:/altera/11.1sp2/quartus/eda/sim_lib/altera_primitives_components.vhd" -work altera      
    vcom     "C:/altera/11.1sp2/quartus/eda/sim_lib/altera_primitives.vhd"            -work altera      
    vcom     "C:/altera/11.1sp2/quartus/eda/sim_lib/220pack.vhd"                      -work lpm         
    vcom     "C:/altera/11.1sp2/quartus/eda/sim_lib/220model.vhd"                     -work lpm         
    vcom     "C:/altera/11.1sp2/quartus/eda/sim_lib/sgate_pack.vhd"                   -work sgate       
    vcom     "C:/altera/11.1sp2/quartus/eda/sim_lib/sgate.vhd"                        -work sgate       
    vcom     "C:/altera/11.1sp2/quartus/eda/sim_lib/altera_mf_components.vhd"         -work altera_mf   
    vcom     "C:/altera/11.1sp2/quartus/eda/sim_lib/altera_mf.vhd"                    -work altera_mf   
    vlog -sv "C:/altera/11.1sp2/quartus/eda/sim_lib/mentor/altera_lnsim_for_vhdl.sv"  -work altera_lnsim
    vcom     "C:/altera/11.1sp2/quartus/eda/sim_lib/altera_lnsim_components.vhd"      -work altera_lnsim
    vcom     "C:/altera/11.1sp2/quartus/eda/sim_lib/cycloneive_atoms.vhd"             -work cycloneive  
    vcom     "C:/altera/11.1sp2/quartus/eda/sim_lib/cycloneive_components.vhd"        -work cycloneive  
  }
}

# ----------------------------------------
# Compile the design files in correct order
alias com {
  echo "\[exec\] com"
  vcom "$QSYS_SIMDIR/submodules/Nios1_irq_mapper.vho"                                                               -work Nios1_irq_mapper                                                              
  vcom "$QSYS_SIMDIR/submodules/Nios1_rsp_xbar_mux_001.vho"                                                         -work Nios1_rsp_xbar_mux_001                                                        
  vcom "$QSYS_SIMDIR/submodules/Nios1_rsp_xbar_mux.vho"                                                             -work Nios1_rsp_xbar_mux                                                            
  vcom "$QSYS_SIMDIR/submodules/Nios1_rsp_xbar_demux_002.vho"                                                       -work Nios1_rsp_xbar_demux_002                                                      
  vcom "$QSYS_SIMDIR/submodules/Nios1_rsp_xbar_demux.vho"                                                           -work Nios1_rsp_xbar_demux                                                          
  vcom "$QSYS_SIMDIR/submodules/Nios1_cmd_xbar_mux.vho"                                                             -work Nios1_cmd_xbar_mux                                                            
  vcom "$QSYS_SIMDIR/submodules/Nios1_cmd_xbar_demux_001.vho"                                                       -work Nios1_cmd_xbar_demux_001                                                      
  vcom "$QSYS_SIMDIR/submodules/Nios1_cmd_xbar_demux.vho"                                                           -work Nios1_cmd_xbar_demux                                                          
  vcom "$QSYS_SIMDIR/submodules/Nios1_rst_controller.vho"                                                           -work Nios1_rst_controller                                                          
  vcom "$QSYS_SIMDIR/submodules/Nios1_limiter.vho"                                                                  -work Nios1_limiter                                                                 
  vcom "$QSYS_SIMDIR/submodules/Nios1_id_router_002.vho"                                                            -work Nios1_id_router_002                                                           
  vcom "$QSYS_SIMDIR/submodules/Nios1_id_router.vho"                                                                -work Nios1_id_router                                                               
  vcom "$QSYS_SIMDIR/submodules/Nios1_addr_router_001.vho"                                                          -work Nios1_addr_router_001                                                         
  vcom "$QSYS_SIMDIR/submodules/Nios1_addr_router.vho"                                                              -work Nios1_addr_router                                                             
  vcom "$QSYS_SIMDIR/submodules/Nios1_pio_RdyData_s1_translator_avalon_universal_slave_0_agent.vho"                 -work Nios1_pio_RdyData_s1_translator_avalon_universal_slave_0_agent                
  vcom "$QSYS_SIMDIR/submodules/Nios1_timer_0_s1_translator_avalon_universal_slave_0_agent.vho"                     -work Nios1_timer_0_s1_translator_avalon_universal_slave_0_agent                    
  vcom "$QSYS_SIMDIR/submodules/Nios1_onchip_memory_s1_translator_avalon_universal_slave_0_agent.vho"               -work Nios1_onchip_memory_s1_translator_avalon_universal_slave_0_agent              
  vcom "$QSYS_SIMDIR/submodules/Nios1_uart_s1_translator_avalon_universal_slave_0_agent.vho"                        -work Nios1_uart_s1_translator_avalon_universal_slave_0_agent                       
  vcom "$QSYS_SIMDIR/submodules/Nios1_pio_Data_s1_translator_avalon_universal_slave_0_agent.vho"                    -work Nios1_pio_Data_s1_translator_avalon_universal_slave_0_agent                   
  vcom "$QSYS_SIMDIR/submodules/Nios1_pio_Button_s1_translator_avalon_universal_slave_0_agent.vho"                  -work Nios1_pio_Button_s1_translator_avalon_universal_slave_0_agent                 
  vcom "$QSYS_SIMDIR/submodules/Nios1_jtag_uart_avalon_jtag_slave_translator_avalon_universal_slave_0_agent.vho"    -work Nios1_jtag_uart_avalon_jtag_slave_translator_avalon_universal_slave_0_agent   
  vcom "$QSYS_SIMDIR/submodules/Nios1_pio_SW_s1_translator_avalon_universal_slave_0_agent.vho"                      -work Nios1_pio_SW_s1_translator_avalon_universal_slave_0_agent                     
  vcom "$QSYS_SIMDIR/submodules/Nios1_nios2_qsys_instruction_master_translator_avalon_universal_master_0_agent.vho" -work Nios1_nios2_qsys_instruction_master_translator_avalon_universal_master_0_agent
  vcom "$QSYS_SIMDIR/submodules/Nios1_nios2_qsys_jtag_debug_module_translator_avalon_universal_slave_0_agent.vho"   -work Nios1_nios2_qsys_jtag_debug_module_translator_avalon_universal_slave_0_agent  
  vcom "$QSYS_SIMDIR/submodules/Nios1_lcd_control_slave_translator_avalon_universal_slave_0_agent.vho"              -work Nios1_lcd_control_slave_translator_avalon_universal_slave_0_agent             
  vcom "$QSYS_SIMDIR/submodules/Nios1_nios2_qsys_data_master_translator_avalon_universal_master_0_agent.vho"        -work Nios1_nios2_qsys_data_master_translator_avalon_universal_master_0_agent       
  vcom "$QSYS_SIMDIR/submodules/Nios1_pio_DataRead_s1_translator_avalon_universal_slave_0_agent.vho"                -work Nios1_pio_DataRead_s1_translator_avalon_universal_slave_0_agent               
  vcom "$QSYS_SIMDIR/submodules/Nios1_sysid_qsys_control_slave_translator_avalon_universal_slave_0_agent.vho"       -work Nios1_sysid_qsys_control_slave_translator_avalon_universal_slave_0_agent      
  vcom "$QSYS_SIMDIR/submodules/Nios1_pio_LEDR_s1_translator_avalon_universal_slave_0_agent.vho"                    -work Nios1_pio_LEDR_s1_translator_avalon_universal_slave_0_agent                   
  vcom "$QSYS_SIMDIR/submodules/Nios1_pio_LEDG_s1_translator_avalon_universal_slave_0_agent_rsp_fifo.vho"           -work Nios1_pio_LEDG_s1_translator_avalon_universal_slave_0_agent_rsp_fifo          
  vcom "$QSYS_SIMDIR/submodules/Nios1_pio_LEDG_s1_translator_avalon_universal_slave_0_agent.vho"                    -work Nios1_pio_LEDG_s1_translator_avalon_universal_slave_0_agent                   
  vcom "$QSYS_SIMDIR/submodules/Nios1_timer_0_s1_translator.vho"                                                    -work Nios1_timer_0_s1_translator                                                   
  vcom "$QSYS_SIMDIR/submodules/Nios1_uart_s1_translator.vho"                                                       -work Nios1_uart_s1_translator                                                      
  vcom "$QSYS_SIMDIR/submodules/Nios1_lcd_control_slave_translator.vho"                                             -work Nios1_lcd_control_slave_translator                                            
  vcom "$QSYS_SIMDIR/submodules/Nios1_pio_Button_s1_translator.vho"                                                 -work Nios1_pio_Button_s1_translator                                                
  vcom "$QSYS_SIMDIR/submodules/Nios1_pio_SW_s1_translator.vho"                                                     -work Nios1_pio_SW_s1_translator                                                    
  vcom "$QSYS_SIMDIR/submodules/Nios1_pio_LEDG_s1_translator.vho"                                                   -work Nios1_pio_LEDG_s1_translator                                                  
  vcom "$QSYS_SIMDIR/submodules/Nios1_sysid_qsys_control_slave_translator.vho"                                      -work Nios1_sysid_qsys_control_slave_translator                                     
  vcom "$QSYS_SIMDIR/submodules/Nios1_jtag_uart_avalon_jtag_slave_translator.vho"                                   -work Nios1_jtag_uart_avalon_jtag_slave_translator                                  
  vcom "$QSYS_SIMDIR/submodules/Nios1_onchip_memory_s1_translator.vho"                                              -work Nios1_onchip_memory_s1_translator                                             
  vcom "$QSYS_SIMDIR/submodules/Nios1_nios2_qsys_jtag_debug_module_translator.vho"                                  -work Nios1_nios2_qsys_jtag_debug_module_translator                                 
  vcom "$QSYS_SIMDIR/submodules/Nios1_nios2_qsys_data_master_translator.vho"                                        -work Nios1_nios2_qsys_data_master_translator                                       
  vcom "$QSYS_SIMDIR/submodules/Nios1_nios2_qsys_instruction_master_translator.vho"                                 -work Nios1_nios2_qsys_instruction_master_translator                                
  vcom "$QSYS_SIMDIR/submodules/Nios1_pio_DataRead.vhd"                                                             -work Nios1_pio_DataRead                                                            
  vcom "$QSYS_SIMDIR/submodules/Nios1_pio_RdyData.vhd"                                                              -work Nios1_pio_RdyData                                                             
  vcom "$QSYS_SIMDIR/submodules/Nios1_pio_Data.vhd"                                                                 -work Nios1_pio_Data                                                                
  vcom "$QSYS_SIMDIR/submodules/Nios1_timer_0.vhd"                                                                  -work Nios1_timer_0                                                                 
  vcom "$QSYS_SIMDIR/submodules/Nios1_uart.vhd"                                                                     -work Nios1_uart                                                                    
  vcom "$QSYS_SIMDIR/submodules/Nios1_lcd.vhd"                                                                      -work Nios1_lcd                                                                     
  vcom "$QSYS_SIMDIR/submodules/Nios1_pio_Button.vhd"                                                               -work Nios1_pio_Button                                                              
  vcom "$QSYS_SIMDIR/submodules/Nios1_pio_SW.vhd"                                                                   -work Nios1_pio_SW                                                                  
  vcom "$QSYS_SIMDIR/submodules/Nios1_pio_LEDR.vhd"                                                                 -work Nios1_pio_LEDR                                                                
  vcom "$QSYS_SIMDIR/submodules/Nios1_pio_LEDG.vhd"                                                                 -work Nios1_pio_LEDG                                                                
  vcom "$QSYS_SIMDIR/submodules/Nios1_sysid_qsys.vho"                                                               -work Nios1_sysid_qsys                                                              
  vcom "$QSYS_SIMDIR/submodules/Nios1_jtag_uart.vhd"                                                                -work Nios1_jtag_uart                                                               
  vcom "$QSYS_SIMDIR/submodules/Nios1_onchip_memory.vhd"                                                            -work Nios1_onchip_memory                                                           
  vcom "$QSYS_SIMDIR/submodules/Nios1_nios2_qsys.vho"                                                               -work Nios1_nios2_qsys                                                              
  vcom "$QSYS_SIMDIR/submodules/Nios1_nios2_qsys_jtag_debug_module_sysclk.vhd"                                      -work Nios1_nios2_qsys                                                              
  vcom "$QSYS_SIMDIR/submodules/Nios1_nios2_qsys_jtag_debug_module_tck.vhd"                                         -work Nios1_nios2_qsys                                                              
  vcom "$QSYS_SIMDIR/submodules/Nios1_nios2_qsys_jtag_debug_module_wrapper.vhd"                                     -work Nios1_nios2_qsys                                                              
  vcom "$QSYS_SIMDIR/submodules/Nios1_nios2_qsys_mult_cell.vhd"                                                     -work Nios1_nios2_qsys                                                              
  vcom "$QSYS_SIMDIR/submodules/Nios1_nios2_qsys_oci_test_bench.vhd"                                                -work Nios1_nios2_qsys                                                              
  vcom "$QSYS_SIMDIR/submodules/Nios1_nios2_qsys_test_bench.vhd"                                                    -work Nios1_nios2_qsys                                                              
  vcom "$QSYS_SIMDIR/Nios1.vhd"                                                                                                                                                                         
}

# ----------------------------------------
# Elaborate top level design
alias elab {
  echo "\[exec\] elab"
  vsim -t ps -L work -L Nios1_irq_mapper -L Nios1_rsp_xbar_mux_001 -L Nios1_rsp_xbar_mux -L Nios1_rsp_xbar_demux_002 -L Nios1_rsp_xbar_demux -L Nios1_cmd_xbar_mux -L Nios1_cmd_xbar_demux_001 -L Nios1_cmd_xbar_demux -L Nios1_rst_controller -L Nios1_limiter -L Nios1_id_router_002 -L Nios1_id_router -L Nios1_addr_router_001 -L Nios1_addr_router -L Nios1_pio_RdyData_s1_translator_avalon_universal_slave_0_agent -L Nios1_timer_0_s1_translator_avalon_universal_slave_0_agent -L Nios1_onchip_memory_s1_translator_avalon_universal_slave_0_agent -L Nios1_uart_s1_translator_avalon_universal_slave_0_agent -L Nios1_pio_Data_s1_translator_avalon_universal_slave_0_agent -L Nios1_pio_Button_s1_translator_avalon_universal_slave_0_agent -L Nios1_jtag_uart_avalon_jtag_slave_translator_avalon_universal_slave_0_agent -L Nios1_pio_SW_s1_translator_avalon_universal_slave_0_agent -L Nios1_nios2_qsys_instruction_master_translator_avalon_universal_master_0_agent -L Nios1_nios2_qsys_jtag_debug_module_translator_avalon_universal_slave_0_agent -L Nios1_lcd_control_slave_translator_avalon_universal_slave_0_agent -L Nios1_nios2_qsys_data_master_translator_avalon_universal_master_0_agent -L Nios1_pio_DataRead_s1_translator_avalon_universal_slave_0_agent -L Nios1_sysid_qsys_control_slave_translator_avalon_universal_slave_0_agent -L Nios1_pio_LEDR_s1_translator_avalon_universal_slave_0_agent -L Nios1_pio_LEDG_s1_translator_avalon_universal_slave_0_agent_rsp_fifo -L Nios1_pio_LEDG_s1_translator_avalon_universal_slave_0_agent -L Nios1_timer_0_s1_translator -L Nios1_uart_s1_translator -L Nios1_lcd_control_slave_translator -L Nios1_pio_Button_s1_translator -L Nios1_pio_SW_s1_translator -L Nios1_pio_LEDG_s1_translator -L Nios1_sysid_qsys_control_slave_translator -L Nios1_jtag_uart_avalon_jtag_slave_translator -L Nios1_onchip_memory_s1_translator -L Nios1_nios2_qsys_jtag_debug_module_translator -L Nios1_nios2_qsys_data_master_translator -L Nios1_nios2_qsys_instruction_master_translator -L Nios1_pio_DataRead -L Nios1_pio_RdyData -L Nios1_pio_Data -L Nios1_timer_0 -L Nios1_uart -L Nios1_lcd -L Nios1_pio_Button -L Nios1_pio_SW -L Nios1_pio_LEDR -L Nios1_pio_LEDG -L Nios1_sysid_qsys -L Nios1_jtag_uart -L Nios1_onchip_memory -L Nios1_nios2_qsys -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive $TOP_LEVEL_NAME
}

# ----------------------------------------
# Elaborate the top level design with novopt option
alias elab_debug {
  echo "\[exec\] elab_debug"
  vsim -novopt -t ps -L work -L Nios1_irq_mapper -L Nios1_rsp_xbar_mux_001 -L Nios1_rsp_xbar_mux -L Nios1_rsp_xbar_demux_002 -L Nios1_rsp_xbar_demux -L Nios1_cmd_xbar_mux -L Nios1_cmd_xbar_demux_001 -L Nios1_cmd_xbar_demux -L Nios1_rst_controller -L Nios1_limiter -L Nios1_id_router_002 -L Nios1_id_router -L Nios1_addr_router_001 -L Nios1_addr_router -L Nios1_pio_RdyData_s1_translator_avalon_universal_slave_0_agent -L Nios1_timer_0_s1_translator_avalon_universal_slave_0_agent -L Nios1_onchip_memory_s1_translator_avalon_universal_slave_0_agent -L Nios1_uart_s1_translator_avalon_universal_slave_0_agent -L Nios1_pio_Data_s1_translator_avalon_universal_slave_0_agent -L Nios1_pio_Button_s1_translator_avalon_universal_slave_0_agent -L Nios1_jtag_uart_avalon_jtag_slave_translator_avalon_universal_slave_0_agent -L Nios1_pio_SW_s1_translator_avalon_universal_slave_0_agent -L Nios1_nios2_qsys_instruction_master_translator_avalon_universal_master_0_agent -L Nios1_nios2_qsys_jtag_debug_module_translator_avalon_universal_slave_0_agent -L Nios1_lcd_control_slave_translator_avalon_universal_slave_0_agent -L Nios1_nios2_qsys_data_master_translator_avalon_universal_master_0_agent -L Nios1_pio_DataRead_s1_translator_avalon_universal_slave_0_agent -L Nios1_sysid_qsys_control_slave_translator_avalon_universal_slave_0_agent -L Nios1_pio_LEDR_s1_translator_avalon_universal_slave_0_agent -L Nios1_pio_LEDG_s1_translator_avalon_universal_slave_0_agent_rsp_fifo -L Nios1_pio_LEDG_s1_translator_avalon_universal_slave_0_agent -L Nios1_timer_0_s1_translator -L Nios1_uart_s1_translator -L Nios1_lcd_control_slave_translator -L Nios1_pio_Button_s1_translator -L Nios1_pio_SW_s1_translator -L Nios1_pio_LEDG_s1_translator -L Nios1_sysid_qsys_control_slave_translator -L Nios1_jtag_uart_avalon_jtag_slave_translator -L Nios1_onchip_memory_s1_translator -L Nios1_nios2_qsys_jtag_debug_module_translator -L Nios1_nios2_qsys_data_master_translator -L Nios1_nios2_qsys_instruction_master_translator -L Nios1_pio_DataRead -L Nios1_pio_RdyData -L Nios1_pio_Data -L Nios1_timer_0 -L Nios1_uart -L Nios1_lcd -L Nios1_pio_Button -L Nios1_pio_SW -L Nios1_pio_LEDR -L Nios1_pio_LEDG -L Nios1_sysid_qsys -L Nios1_jtag_uart -L Nios1_onchip_memory -L Nios1_nios2_qsys -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive $TOP_LEVEL_NAME
}

# ----------------------------------------
# Compile all the design files and elaborate the top level design
alias ld "
  dev_com
  com
  elab
"

# ----------------------------------------
# Compile all the design files and elaborate the top level design with -novopt
alias ld_debug "
  dev_com
  com
  elab_debug
"

# ----------------------------------------
# Print out user commmand line aliases
alias h {
  echo "List Of Command Line Aliases"
  echo
  echo "dev_com                       -- Compile device library files"
  echo
  echo "com                           -- Compile the design files in correct order"
  echo
  echo "elab                          -- Elaborate top level design"
  echo
  echo "elab_debug                    -- Elaborate the top level design with novopt option"
  echo
  echo "ld                            -- Compile all the design files and elaborate the top level design"
  echo
  echo "ld_debug                      -- Compile all the design files and elaborate the top level design with -novopt"
  echo
  echo 
  echo
  echo "List Of Variables"
  echo
  echo "TOP_LEVEL_NAME                -- Top level module name."
  echo
  echo "SYSTEM_INSTANCE_NAME          -- Instantiated system module name inside top level module."
  echo
  echo "QSYS_SIMDIR                   -- Qsys base simulation directory."
}
h
