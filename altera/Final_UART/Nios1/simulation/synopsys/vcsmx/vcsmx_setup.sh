
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
# vcsmx - auto-generated simulation script

# ----------------------------------------
# initialize variables
TOP_LEVEL_NAME="Nios1"
QSYS_SIMDIR="./../../"
SKIP_FILE_COPY=0
SKIP_DEV_COM=0
SKIP_COM=0
SKIP_ELAB=0
SKIP_SIM=0
USER_DEFINED_ELAB_OPTIONS=""
USER_DEFINED_SIM_OPTIONS="+vcs+finish+100"

# ----------------------------------------
# overwrite variables - DO NOT MODIFY!
# This block evaluates each command line argument, typically used for 
# overwriting variables. An example usage:
#   sh <simulator>_setup.sh SKIP_ELAB=1 SKIP_SIM=1
for expression in "$@"; do
  eval $expression
  if [ $? -ne 0 ]; then
    echo "Error: This command line argument, \"$expression\", is/has an invalid expression." >&2
    exit $?
  fi
done

# ----------------------------------------
# create compilation libraries
mkdir -p ./libraries/work/
mkdir -p ./libraries/Nios1_irq_mapper/
mkdir -p ./libraries/Nios1_rsp_xbar_mux_001/
mkdir -p ./libraries/Nios1_rsp_xbar_mux/
mkdir -p ./libraries/Nios1_rsp_xbar_demux_002/
mkdir -p ./libraries/Nios1_rsp_xbar_demux/
mkdir -p ./libraries/Nios1_cmd_xbar_mux/
mkdir -p ./libraries/Nios1_cmd_xbar_demux_001/
mkdir -p ./libraries/Nios1_cmd_xbar_demux/
mkdir -p ./libraries/Nios1_rst_controller/
mkdir -p ./libraries/Nios1_limiter/
mkdir -p ./libraries/Nios1_id_router_002/
mkdir -p ./libraries/Nios1_id_router/
mkdir -p ./libraries/Nios1_addr_router_001/
mkdir -p ./libraries/Nios1_addr_router/
mkdir -p ./libraries/Nios1_pio_RdyData_s1_translator_avalon_universal_slave_0_agent/
mkdir -p ./libraries/Nios1_timer_0_s1_translator_avalon_universal_slave_0_agent/
mkdir -p ./libraries/Nios1_onchip_memory_s1_translator_avalon_universal_slave_0_agent/
mkdir -p ./libraries/Nios1_uart_s1_translator_avalon_universal_slave_0_agent/
mkdir -p ./libraries/Nios1_pio_Data_s1_translator_avalon_universal_slave_0_agent/
mkdir -p ./libraries/Nios1_pio_Button_s1_translator_avalon_universal_slave_0_agent/
mkdir -p ./libraries/Nios1_jtag_uart_avalon_jtag_slave_translator_avalon_universal_slave_0_agent/
mkdir -p ./libraries/Nios1_pio_SW_s1_translator_avalon_universal_slave_0_agent/
mkdir -p ./libraries/Nios1_nios2_qsys_instruction_master_translator_avalon_universal_master_0_agent/
mkdir -p ./libraries/Nios1_nios2_qsys_jtag_debug_module_translator_avalon_universal_slave_0_agent/
mkdir -p ./libraries/Nios1_lcd_control_slave_translator_avalon_universal_slave_0_agent/
mkdir -p ./libraries/Nios1_nios2_qsys_data_master_translator_avalon_universal_master_0_agent/
mkdir -p ./libraries/Nios1_pio_DataRead_s1_translator_avalon_universal_slave_0_agent/
mkdir -p ./libraries/Nios1_sysid_qsys_control_slave_translator_avalon_universal_slave_0_agent/
mkdir -p ./libraries/Nios1_pio_LEDR_s1_translator_avalon_universal_slave_0_agent/
mkdir -p ./libraries/Nios1_pio_LEDG_s1_translator_avalon_universal_slave_0_agent_rsp_fifo/
mkdir -p ./libraries/Nios1_pio_LEDG_s1_translator_avalon_universal_slave_0_agent/
mkdir -p ./libraries/Nios1_timer_0_s1_translator/
mkdir -p ./libraries/Nios1_uart_s1_translator/
mkdir -p ./libraries/Nios1_lcd_control_slave_translator/
mkdir -p ./libraries/Nios1_pio_Button_s1_translator/
mkdir -p ./libraries/Nios1_pio_SW_s1_translator/
mkdir -p ./libraries/Nios1_pio_LEDG_s1_translator/
mkdir -p ./libraries/Nios1_sysid_qsys_control_slave_translator/
mkdir -p ./libraries/Nios1_jtag_uart_avalon_jtag_slave_translator/
mkdir -p ./libraries/Nios1_onchip_memory_s1_translator/
mkdir -p ./libraries/Nios1_nios2_qsys_jtag_debug_module_translator/
mkdir -p ./libraries/Nios1_nios2_qsys_data_master_translator/
mkdir -p ./libraries/Nios1_nios2_qsys_instruction_master_translator/
mkdir -p ./libraries/Nios1_pio_DataRead/
mkdir -p ./libraries/Nios1_pio_RdyData/
mkdir -p ./libraries/Nios1_pio_Data/
mkdir -p ./libraries/Nios1_timer_0/
mkdir -p ./libraries/Nios1_uart/
mkdir -p ./libraries/Nios1_lcd/
mkdir -p ./libraries/Nios1_pio_Button/
mkdir -p ./libraries/Nios1_pio_SW/
mkdir -p ./libraries/Nios1_pio_LEDR/
mkdir -p ./libraries/Nios1_pio_LEDG/
mkdir -p ./libraries/Nios1_sysid_qsys/
mkdir -p ./libraries/Nios1_jtag_uart/
mkdir -p ./libraries/Nios1_onchip_memory/
mkdir -p ./libraries/Nios1_nios2_qsys/
mkdir -p ./libraries/altera/
mkdir -p ./libraries/lpm/
mkdir -p ./libraries/sgate/
mkdir -p ./libraries/altera_mf/
mkdir -p ./libraries/altera_lnsim/
mkdir -p ./libraries/cycloneive/

# ----------------------------------------
# copy RAM/ROM files to simulation directory
if [ $SKIP_FILE_COPY -eq 0 ]; then
  cp -f $QSYS_SIMDIR/submodules/Nios1_onchip_memory.hex ./
  cp -f $QSYS_SIMDIR/submodules/Nios1_nios2_qsys_bht_ram.dat ./
  cp -f $QSYS_SIMDIR/submodules/Nios1_nios2_qsys_bht_ram.hex ./
  cp -f $QSYS_SIMDIR/submodules/Nios1_nios2_qsys_bht_ram.mif ./
  cp -f $QSYS_SIMDIR/submodules/Nios1_nios2_qsys_dc_tag_ram.dat ./
  cp -f $QSYS_SIMDIR/submodules/Nios1_nios2_qsys_dc_tag_ram.hex ./
  cp -f $QSYS_SIMDIR/submodules/Nios1_nios2_qsys_dc_tag_ram.mif ./
  cp -f $QSYS_SIMDIR/submodules/Nios1_nios2_qsys_ic_tag_ram.dat ./
  cp -f $QSYS_SIMDIR/submodules/Nios1_nios2_qsys_ic_tag_ram.hex ./
  cp -f $QSYS_SIMDIR/submodules/Nios1_nios2_qsys_ic_tag_ram.mif ./
  cp -f $QSYS_SIMDIR/submodules/Nios1_nios2_qsys_ociram_default_contents.dat ./
  cp -f $QSYS_SIMDIR/submodules/Nios1_nios2_qsys_ociram_default_contents.hex ./
  cp -f $QSYS_SIMDIR/submodules/Nios1_nios2_qsys_ociram_default_contents.mif ./
  cp -f $QSYS_SIMDIR/submodules/Nios1_nios2_qsys_rf_ram_a.dat ./
  cp -f $QSYS_SIMDIR/submodules/Nios1_nios2_qsys_rf_ram_a.hex ./
  cp -f $QSYS_SIMDIR/submodules/Nios1_nios2_qsys_rf_ram_a.mif ./
  cp -f $QSYS_SIMDIR/submodules/Nios1_nios2_qsys_rf_ram_b.dat ./
  cp -f $QSYS_SIMDIR/submodules/Nios1_nios2_qsys_rf_ram_b.hex ./
  cp -f $QSYS_SIMDIR/submodules/Nios1_nios2_qsys_rf_ram_b.mif ./
fi

# ----------------------------------------
# compile device library files
if [ $SKIP_DEV_COM -eq 0 ]; then
  vhdlan -xlrm          "C:/altera/11.1sp2/quartus/eda/sim_lib/altera_syn_attributes.vhd"        -work altera      
  vhdlan -xlrm          "C:/altera/11.1sp2/quartus/eda/sim_lib/altera_standard_functions.vhd"    -work altera      
  vhdlan -xlrm          "C:/altera/11.1sp2/quartus/eda/sim_lib/alt_dspbuilder_package.vhd"       -work altera      
  vhdlan -xlrm          "C:/altera/11.1sp2/quartus/eda/sim_lib/altera_europa_support_lib.vhd"    -work altera      
  vhdlan -xlrm          "C:/altera/11.1sp2/quartus/eda/sim_lib/altera_primitives_components.vhd" -work altera      
  vhdlan -xlrm          "C:/altera/11.1sp2/quartus/eda/sim_lib/altera_primitives.vhd"            -work altera      
  vhdlan -xlrm          "C:/altera/11.1sp2/quartus/eda/sim_lib/220pack.vhd"                      -work lpm         
  vhdlan -xlrm          "C:/altera/11.1sp2/quartus/eda/sim_lib/220model.vhd"                     -work lpm         
  vhdlan -xlrm          "C:/altera/11.1sp2/quartus/eda/sim_lib/sgate_pack.vhd"                   -work sgate       
  vhdlan -xlrm          "C:/altera/11.1sp2/quartus/eda/sim_lib/sgate.vhd"                        -work sgate       
  vhdlan -xlrm          "C:/altera/11.1sp2/quartus/eda/sim_lib/altera_mf_components.vhd"         -work altera_mf   
  vhdlan -xlrm          "C:/altera/11.1sp2/quartus/eda/sim_lib/altera_mf.vhd"                    -work altera_mf   
  vlogan +v2k -sverilog "C:/altera/11.1sp2/quartus/eda/sim_lib/altera_lnsim.sv"                  -work altera_lnsim
  vhdlan -xlrm          "C:/altera/11.1sp2/quartus/eda/sim_lib/altera_lnsim_components.vhd"      -work altera_lnsim
  vhdlan -xlrm          "C:/altera/11.1sp2/quartus/eda/sim_lib/cycloneive_atoms.vhd"             -work cycloneive  
  vhdlan -xlrm          "C:/altera/11.1sp2/quartus/eda/sim_lib/cycloneive_components.vhd"        -work cycloneive  
fi

# ----------------------------------------
# compile design files in correct order
if [ $SKIP_COM -eq 0 ]; then
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/Nios1_irq_mapper.vho"                                                               -work Nios1_irq_mapper                                                              
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/Nios1_rsp_xbar_mux_001.vho"                                                         -work Nios1_rsp_xbar_mux_001                                                        
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/Nios1_rsp_xbar_mux.vho"                                                             -work Nios1_rsp_xbar_mux                                                            
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/Nios1_rsp_xbar_demux_002.vho"                                                       -work Nios1_rsp_xbar_demux_002                                                      
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/Nios1_rsp_xbar_demux.vho"                                                           -work Nios1_rsp_xbar_demux                                                          
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/Nios1_cmd_xbar_mux.vho"                                                             -work Nios1_cmd_xbar_mux                                                            
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/Nios1_cmd_xbar_demux_001.vho"                                                       -work Nios1_cmd_xbar_demux_001                                                      
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/Nios1_cmd_xbar_demux.vho"                                                           -work Nios1_cmd_xbar_demux                                                          
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/Nios1_rst_controller.vho"                                                           -work Nios1_rst_controller                                                          
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/Nios1_limiter.vho"                                                                  -work Nios1_limiter                                                                 
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/Nios1_id_router_002.vho"                                                            -work Nios1_id_router_002                                                           
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/Nios1_id_router.vho"                                                                -work Nios1_id_router                                                               
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/Nios1_addr_router_001.vho"                                                          -work Nios1_addr_router_001                                                         
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/Nios1_addr_router.vho"                                                              -work Nios1_addr_router                                                             
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/Nios1_pio_RdyData_s1_translator_avalon_universal_slave_0_agent.vho"                 -work Nios1_pio_RdyData_s1_translator_avalon_universal_slave_0_agent                
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/Nios1_timer_0_s1_translator_avalon_universal_slave_0_agent.vho"                     -work Nios1_timer_0_s1_translator_avalon_universal_slave_0_agent                    
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/Nios1_onchip_memory_s1_translator_avalon_universal_slave_0_agent.vho"               -work Nios1_onchip_memory_s1_translator_avalon_universal_slave_0_agent              
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/Nios1_uart_s1_translator_avalon_universal_slave_0_agent.vho"                        -work Nios1_uart_s1_translator_avalon_universal_slave_0_agent                       
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/Nios1_pio_Data_s1_translator_avalon_universal_slave_0_agent.vho"                    -work Nios1_pio_Data_s1_translator_avalon_universal_slave_0_agent                   
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/Nios1_pio_Button_s1_translator_avalon_universal_slave_0_agent.vho"                  -work Nios1_pio_Button_s1_translator_avalon_universal_slave_0_agent                 
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/Nios1_jtag_uart_avalon_jtag_slave_translator_avalon_universal_slave_0_agent.vho"    -work Nios1_jtag_uart_avalon_jtag_slave_translator_avalon_universal_slave_0_agent   
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/Nios1_pio_SW_s1_translator_avalon_universal_slave_0_agent.vho"                      -work Nios1_pio_SW_s1_translator_avalon_universal_slave_0_agent                     
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/Nios1_nios2_qsys_instruction_master_translator_avalon_universal_master_0_agent.vho" -work Nios1_nios2_qsys_instruction_master_translator_avalon_universal_master_0_agent
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/Nios1_nios2_qsys_jtag_debug_module_translator_avalon_universal_slave_0_agent.vho"   -work Nios1_nios2_qsys_jtag_debug_module_translator_avalon_universal_slave_0_agent  
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/Nios1_lcd_control_slave_translator_avalon_universal_slave_0_agent.vho"              -work Nios1_lcd_control_slave_translator_avalon_universal_slave_0_agent             
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/Nios1_nios2_qsys_data_master_translator_avalon_universal_master_0_agent.vho"        -work Nios1_nios2_qsys_data_master_translator_avalon_universal_master_0_agent       
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/Nios1_pio_DataRead_s1_translator_avalon_universal_slave_0_agent.vho"                -work Nios1_pio_DataRead_s1_translator_avalon_universal_slave_0_agent               
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/Nios1_sysid_qsys_control_slave_translator_avalon_universal_slave_0_agent.vho"       -work Nios1_sysid_qsys_control_slave_translator_avalon_universal_slave_0_agent      
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/Nios1_pio_LEDR_s1_translator_avalon_universal_slave_0_agent.vho"                    -work Nios1_pio_LEDR_s1_translator_avalon_universal_slave_0_agent                   
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/Nios1_pio_LEDG_s1_translator_avalon_universal_slave_0_agent_rsp_fifo.vho"           -work Nios1_pio_LEDG_s1_translator_avalon_universal_slave_0_agent_rsp_fifo          
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/Nios1_pio_LEDG_s1_translator_avalon_universal_slave_0_agent.vho"                    -work Nios1_pio_LEDG_s1_translator_avalon_universal_slave_0_agent                   
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/Nios1_timer_0_s1_translator.vho"                                                    -work Nios1_timer_0_s1_translator                                                   
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/Nios1_uart_s1_translator.vho"                                                       -work Nios1_uart_s1_translator                                                      
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/Nios1_lcd_control_slave_translator.vho"                                             -work Nios1_lcd_control_slave_translator                                            
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/Nios1_pio_Button_s1_translator.vho"                                                 -work Nios1_pio_Button_s1_translator                                                
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/Nios1_pio_SW_s1_translator.vho"                                                     -work Nios1_pio_SW_s1_translator                                                    
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/Nios1_pio_LEDG_s1_translator.vho"                                                   -work Nios1_pio_LEDG_s1_translator                                                  
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/Nios1_sysid_qsys_control_slave_translator.vho"                                      -work Nios1_sysid_qsys_control_slave_translator                                     
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/Nios1_jtag_uart_avalon_jtag_slave_translator.vho"                                   -work Nios1_jtag_uart_avalon_jtag_slave_translator                                  
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/Nios1_onchip_memory_s1_translator.vho"                                              -work Nios1_onchip_memory_s1_translator                                             
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/Nios1_nios2_qsys_jtag_debug_module_translator.vho"                                  -work Nios1_nios2_qsys_jtag_debug_module_translator                                 
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/Nios1_nios2_qsys_data_master_translator.vho"                                        -work Nios1_nios2_qsys_data_master_translator                                       
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/Nios1_nios2_qsys_instruction_master_translator.vho"                                 -work Nios1_nios2_qsys_instruction_master_translator                                
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/Nios1_pio_DataRead.vhd"                                                             -work Nios1_pio_DataRead                                                            
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/Nios1_pio_RdyData.vhd"                                                              -work Nios1_pio_RdyData                                                             
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/Nios1_pio_Data.vhd"                                                                 -work Nios1_pio_Data                                                                
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/Nios1_timer_0.vhd"                                                                  -work Nios1_timer_0                                                                 
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/Nios1_uart.vhd"                                                                     -work Nios1_uart                                                                    
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/Nios1_lcd.vhd"                                                                      -work Nios1_lcd                                                                     
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/Nios1_pio_Button.vhd"                                                               -work Nios1_pio_Button                                                              
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/Nios1_pio_SW.vhd"                                                                   -work Nios1_pio_SW                                                                  
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/Nios1_pio_LEDR.vhd"                                                                 -work Nios1_pio_LEDR                                                                
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/Nios1_pio_LEDG.vhd"                                                                 -work Nios1_pio_LEDG                                                                
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/Nios1_sysid_qsys.vho"                                                               -work Nios1_sysid_qsys                                                              
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/Nios1_jtag_uart.vhd"                                                                -work Nios1_jtag_uart                                                               
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/Nios1_onchip_memory.vhd"                                                            -work Nios1_onchip_memory                                                           
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/Nios1_nios2_qsys.vho"                                                               -work Nios1_nios2_qsys                                                              
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/Nios1_nios2_qsys_jtag_debug_module_sysclk.vhd"                                      -work Nios1_nios2_qsys                                                              
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/Nios1_nios2_qsys_jtag_debug_module_tck.vhd"                                         -work Nios1_nios2_qsys                                                              
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/Nios1_nios2_qsys_jtag_debug_module_wrapper.vhd"                                     -work Nios1_nios2_qsys                                                              
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/Nios1_nios2_qsys_mult_cell.vhd"                                                     -work Nios1_nios2_qsys                                                              
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/Nios1_nios2_qsys_oci_test_bench.vhd"                                                -work Nios1_nios2_qsys                                                              
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/Nios1_nios2_qsys_test_bench.vhd"                                                    -work Nios1_nios2_qsys                                                              
  vhdlan -xlrm "$QSYS_SIMDIR/Nios1.vhd"                                                                                                                                                                         
fi

# ----------------------------------------
# elaborate top level design
if [ $SKIP_ELAB -eq 0 ]; then
  vcs -lca -t ps $USER_DEFINED_ELAB_OPTIONS $TOP_LEVEL_NAME
fi

# ----------------------------------------
# simulate
if [ $SKIP_SIM -eq 0 ]; then
  ./simv $USER_DEFINED_SIM_OPTIONS
fi
