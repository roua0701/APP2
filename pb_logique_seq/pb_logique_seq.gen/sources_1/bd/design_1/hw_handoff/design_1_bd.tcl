
################################################################
# This is a generated script based on design: design_1
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2020.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_gid_msg -ssname BD::TCL -id 2041 -severity "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source design_1_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# affhexPmodSSD_v3, sig_fct_sat_dure, sig_fct_sat_dure, sig_fct_3, calcul_param_1, calcul_param_2, calcul_param_3, module_commande, mux4, mux4, mef_decod_i2s_v1b, compteur_nbits, reg_24b, reg_24b, reg_dec_24b, compteur_nbits, mef_cod_i2s_vsb, mux2, reg_dec_24b_fd

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7z010clg400-1
   set_property BOARD_PART digilentinc.com:zybo-z7-10:part0:1.0 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name design_1

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_gid_msg -ssname BD::TCL -id 2001 -severity "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_gid_msg -ssname BD::TCL -id 2002 -severity "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_gid_msg -ssname BD::TCL -id 2003 -severity "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_gid_msg -ssname BD::TCL -id 2004 -severity "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

  # Add USER_COMMENTS on $design_name
  set_property USER_COMMENTS.comment_1 "Modules à modifier:
MEF_decodeur_i2s (dans M1_decodeur_i2s)
M5_parametre_1
M6_parametre_2
M8_commande
Pour plus de clarté, vous pouvez cacher les fils pour les horloges
et les resets dans les paramètres (engrenage en haut a droite de cette fenêtre).
" [get_bd_designs $design_name]

common::send_gid_msg -ssname BD::TCL -id 2005 -severity "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_gid_msg -ssname BD::TCL -id 2006 -severity "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################


# Hierarchical cell: M9_codeur_i2s
proc create_hier_cell_M9_codeur_i2s { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_M9_codeur_i2s() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir I i_bclk
  create_bd_pin -dir I -from 23 -to 0 i_dat_left
  create_bd_pin -dir I -from 23 -to 0 i_dat_right
  create_bd_pin -dir I i_lrc
  create_bd_pin -dir I -type rst i_reset
  create_bd_pin -dir O -from 0 -to 0 o_dat

  # Create instance: compteur_nbits_0, and set properties
  set block_name compteur_nbits
  set block_cell_name compteur_nbits_0
  if { [catch {set compteur_nbits_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $compteur_nbits_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.nbits {7} \
 ] $compteur_nbits_0

  # Create instance: mef_cod_i2s_vsb_0, and set properties
  set block_name mef_cod_i2s_vsb
  set block_cell_name mef_cod_i2s_vsb_0
  if { [catch {set mef_cod_i2s_vsb_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $mef_cod_i2s_vsb_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: mux2_0, and set properties
  set block_name mux2
  set block_cell_name mux2_0
  if { [catch {set mux2_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $mux2_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: reg_dec_24b_fd_0, and set properties
  set block_name reg_dec_24b_fd
  set block_cell_name reg_dec_24b_fd_0
  if { [catch {set reg_dec_24b_fd_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $reg_dec_24b_fd_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: util_vector_logic_0, and set properties
  set util_vector_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_0 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {or} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_orgate.png} \
 ] $util_vector_logic_0

  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0 ]

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]

  # Create instance: xlslice_0, and set properties
  set xlslice_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {23} \
   CONFIG.DIN_TO {23} \
   CONFIG.DIN_WIDTH {24} \
   CONFIG.DOUT_WIDTH {1} \
 ] $xlslice_0

  # Create port connections
  connect_bd_net -net compteur_nbits_0_o_val_cpt [get_bd_pins compteur_nbits_0/o_val_cpt] [get_bd_pins mef_cod_i2s_vsb_0/i_cpt_bits]
  connect_bd_net -net i_bclk_0_1 [get_bd_pins i_bclk] [get_bd_pins compteur_nbits_0/clk] [get_bd_pins mef_cod_i2s_vsb_0/i_bclk] [get_bd_pins reg_dec_24b_fd_0/i_clk]
  connect_bd_net -net i_lrc_0_1 [get_bd_pins i_lrc] [get_bd_pins mef_cod_i2s_vsb_0/i_lrc]
  connect_bd_net -net i_reset_0_1 [get_bd_pins i_reset] [get_bd_pins mef_cod_i2s_vsb_0/i_reset] [get_bd_pins reg_dec_24b_fd_0/i_reset]
  connect_bd_net -net input1_0_1 [get_bd_pins i_dat_left] [get_bd_pins mux2_0/input1]
  connect_bd_net -net input2_0_1 [get_bd_pins i_dat_right] [get_bd_pins mux2_0/input2]
  connect_bd_net -net mef_cod_i2s_vsb_0_o_bit_enable [get_bd_pins compteur_nbits_0/i_en] [get_bd_pins mef_cod_i2s_vsb_0/o_bit_enable] [get_bd_pins reg_dec_24b_fd_0/i_en]
  connect_bd_net -net mef_cod_i2s_vsb_0_o_cpt_bit_reset [get_bd_pins compteur_nbits_0/reset] [get_bd_pins mef_cod_i2s_vsb_0/o_cpt_bit_reset]
  connect_bd_net -net mef_cod_i2s_vsb_0_o_load_left [get_bd_pins mef_cod_i2s_vsb_0/o_load_left] [get_bd_pins util_vector_logic_0/Op1] [get_bd_pins xlconcat_0/In0]
  connect_bd_net -net mef_cod_i2s_vsb_0_o_load_right [get_bd_pins mef_cod_i2s_vsb_0/o_load_right] [get_bd_pins util_vector_logic_0/Op2] [get_bd_pins xlconcat_0/In1]
  connect_bd_net -net mux2_0_output [get_bd_pins mux2_0/output0] [get_bd_pins reg_dec_24b_fd_0/i_dat_load]
  connect_bd_net -net reg_dec_24b_fd_0_o_dat [get_bd_pins reg_dec_24b_fd_0/o_dat] [get_bd_pins xlslice_0/Din]
  connect_bd_net -net util_vector_logic_0_Res [get_bd_pins reg_dec_24b_fd_0/i_load] [get_bd_pins util_vector_logic_0/Res]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins mux2_0/sel] [get_bd_pins xlconcat_0/dout]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins reg_dec_24b_fd_0/i_dat_bit] [get_bd_pins xlconstant_0/dout]
  connect_bd_net -net xlslice_0_Dout [get_bd_pins o_dat] [get_bd_pins xlslice_0/Dout]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: M1_decodeur_i2s
proc create_hier_cell_M1_decodeur_i2s { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_M1_decodeur_i2s() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir I clk
  create_bd_pin -dir I i_data
  create_bd_pin -dir I i_lrc
  create_bd_pin -dir I i_reset
  create_bd_pin -dir O -from 23 -to 0 o_dat_left
  create_bd_pin -dir O -from 23 -to 0 o_dat_right
  create_bd_pin -dir O o_str_dat

  # Create instance: MEF_decodeur_i2s, and set properties
  set block_name mef_decod_i2s_v1b
  set block_cell_name MEF_decodeur_i2s
  if { [catch {set MEF_decodeur_i2s [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $MEF_decodeur_i2s eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: compteur_7bits, and set properties
  set block_name compteur_nbits
  set block_cell_name compteur_7bits
  if { [catch {set compteur_7bits [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $compteur_7bits eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.nbits {7} \
 ] $compteur_7bits

  # Create instance: registre_24bits_droite, and set properties
  set block_name reg_24b
  set block_cell_name registre_24bits_droite
  if { [catch {set registre_24bits_droite [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $registre_24bits_droite eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: registre_24bits_gauche, and set properties
  set block_name reg_24b
  set block_cell_name registre_24bits_gauche
  if { [catch {set registre_24bits_gauche [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $registre_24bits_gauche eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: registre_decalage_24bits, and set properties
  set block_name reg_dec_24b
  set block_cell_name registre_decalage_24bits
  if { [catch {set registre_decalage_24bits [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $registre_decalage_24bits eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $xlconstant_0

  # Create instance: xlconstant_1, and set properties
  set xlconstant_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_1 ]
  set_property -dict [ list \
   CONFIG.CONST_WIDTH {24} \
 ] $xlconstant_1

  # Create port connections
  connect_bd_net -net clk_1 [get_bd_pins clk] [get_bd_pins MEF_decodeur_i2s/i_bclk] [get_bd_pins compteur_7bits/clk] [get_bd_pins registre_24bits_droite/i_clk] [get_bd_pins registre_24bits_gauche/i_clk] [get_bd_pins registre_decalage_24bits/i_clk]
  connect_bd_net -net compteur_nbits_0_o_val_cpt [get_bd_pins MEF_decodeur_i2s/i_cpt_bits] [get_bd_pins compteur_7bits/o_val_cpt]
  connect_bd_net -net i_data_1 [get_bd_pins i_data] [get_bd_pins registre_decalage_24bits/i_dat_bit]
  connect_bd_net -net i_lrc_1 [get_bd_pins i_lrc] [get_bd_pins MEF_decodeur_i2s/i_lrc]
  connect_bd_net -net i_reset_1 [get_bd_pins i_reset] [get_bd_pins MEF_decodeur_i2s/i_reset] [get_bd_pins registre_24bits_droite/i_reset] [get_bd_pins registre_24bits_gauche/i_reset] [get_bd_pins registre_decalage_24bits/i_reset]
  connect_bd_net -net mef_decod_i2s_v1b_0_o_bit_enable [get_bd_pins MEF_decodeur_i2s/o_bit_enable] [get_bd_pins compteur_7bits/i_en] [get_bd_pins registre_decalage_24bits/i_en]
  connect_bd_net -net mef_decod_i2s_v1b_0_o_cpt_bit_reset [get_bd_pins MEF_decodeur_i2s/o_cpt_bit_reset] [get_bd_pins compteur_7bits/reset]
  connect_bd_net -net mef_decod_i2s_v1b_0_o_load_left [get_bd_pins MEF_decodeur_i2s/o_load_left] [get_bd_pins registre_24bits_gauche/i_en]
  connect_bd_net -net mef_decod_i2s_v1b_0_o_load_right [get_bd_pins MEF_decodeur_i2s/o_load_right] [get_bd_pins registre_24bits_droite/i_en]
  connect_bd_net -net mef_decod_i2s_v1b_0_o_str_dat [get_bd_pins o_str_dat] [get_bd_pins MEF_decodeur_i2s/o_str_dat]
  connect_bd_net -net reg_24b_0_o_dat [get_bd_pins o_dat_right] [get_bd_pins registre_24bits_droite/o_dat]
  connect_bd_net -net reg_24b_1_o_dat [get_bd_pins o_dat_left] [get_bd_pins registre_24bits_gauche/o_dat]
  connect_bd_net -net reg_dec_24b_0_o_dat [get_bd_pins registre_24bits_droite/i_dat] [get_bd_pins registre_24bits_gauche/i_dat] [get_bd_pins registre_decalage_24bits/o_dat]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins registre_decalage_24bits/i_load] [get_bd_pins xlconstant_0/dout]
  connect_bd_net -net xlconstant_1_dout [get_bd_pins registre_decalage_24bits/i_dat_load] [get_bd_pins xlconstant_1/dout]

  # Restore current instance
  current_bd_instance $oldCurInst
}


# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set JPmod [ create_bd_port -dir O -from 7 -to 0 JPmod ]
  set clk_100MHz [ create_bd_port -dir I -type clk -freq_hz 100000000 clk_100MHz ]
  set i_btn [ create_bd_port -dir I -from 3 -to 0 i_btn ]
  set i_lrc [ create_bd_port -dir I i_lrc ]
  set i_recdat [ create_bd_port -dir I i_recdat ]
  set i_sw [ create_bd_port -dir I -from 3 -to 0 i_sw ]
  set o_param [ create_bd_port -dir O -from 7 -to 0 o_param ]
  set o_pbdat [ create_bd_port -dir O -from 0 -to 0 o_pbdat ]
  set o_sel_fct [ create_bd_port -dir O -from 1 -to 0 o_sel_fct ]
  set o_sel_par [ create_bd_port -dir O -from 1 -to 0 o_sel_par ]

  # Create instance: M10_conversion_affichage, and set properties
  set block_name affhexPmodSSD_v3
  set block_cell_name M10_conversion_affichage
  if { [catch {set M10_conversion_affichage [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $M10_conversion_affichage eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: M1_decodeur_i2s
  create_hier_cell_M1_decodeur_i2s [current_bd_instance .] M1_decodeur_i2s

  # Create instance: M2_fonction_distortion_dure1, and set properties
  set block_name sig_fct_sat_dure
  set block_cell_name M2_fonction_distortion_dure1
  if { [catch {set M2_fonction_distortion_dure1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $M2_fonction_distortion_dure1 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.c_ech_u24_max {0x7FFFFF} \
 ] $M2_fonction_distortion_dure1

  # Create instance: M3_fonction_distorsion_dure2, and set properties
  set block_name sig_fct_sat_dure
  set block_cell_name M3_fonction_distorsion_dure2
  if { [catch {set M3_fonction_distorsion_dure2 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $M3_fonction_distorsion_dure2 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: M4_fonction3, and set properties
  set block_name sig_fct_3
  set block_cell_name M4_fonction3
  if { [catch {set M4_fonction3 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $M4_fonction3 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: M5_parametre_1, and set properties
  set block_name calcul_param_1
  set block_cell_name M5_parametre_1
  if { [catch {set M5_parametre_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $M5_parametre_1 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: M6_parametre_2, and set properties
  set block_name calcul_param_2
  set block_cell_name M6_parametre_2
  if { [catch {set M6_parametre_2 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $M6_parametre_2 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: M7_parametre_3, and set properties
  set block_name calcul_param_3
  set block_cell_name M7_parametre_3
  if { [catch {set M7_parametre_3 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $M7_parametre_3 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: M8_commande, and set properties
  set block_name module_commande
  set block_cell_name M8_commande
  if { [catch {set M8_commande [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $M8_commande eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: M9_codeur_i2s
  create_hier_cell_M9_codeur_i2s [current_bd_instance .] M9_codeur_i2s

  # Create instance: Multiplexeur_choix_fonction, and set properties
  set block_name mux4
  set block_cell_name Multiplexeur_choix_fonction
  if { [catch {set Multiplexeur_choix_fonction [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Multiplexeur_choix_fonction eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Multiplexeur_choix_parametre, and set properties
  set block_name mux4
  set block_cell_name Multiplexeur_choix_parametre
  if { [catch {set Multiplexeur_choix_parametre [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Multiplexeur_choix_parametre eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.input_length {8} \
 ] $Multiplexeur_choix_parametre

  # Create instance: parametre_0, and set properties
  set parametre_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 parametre_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {8} \
 ] $parametre_0

  # Create port connections
  connect_bd_net -net M10_conversion_affichage_JPmod [get_bd_ports JPmod] [get_bd_pins M10_conversion_affichage/JPmod]
  connect_bd_net -net M8_commande_o_btn_cd [get_bd_pins M10_conversion_affichage/i_btn] [get_bd_pins M8_commande/o_btn_cd]
  connect_bd_net -net M8_commande_o_selection_par [get_bd_ports o_sel_par] [get_bd_pins M8_commande/o_selection_par] [get_bd_pins Multiplexeur_choix_parametre/sel]
  connect_bd_net -net M9_codeur_i2s_o_dat [get_bd_ports o_pbdat] [get_bd_pins M9_codeur_i2s/o_dat]
  connect_bd_net -net calcul_param_1_0_o_param [get_bd_pins M5_parametre_1/o_param] [get_bd_pins Multiplexeur_choix_parametre/input1]
  connect_bd_net -net calcul_param_2_0_o_param [get_bd_pins M6_parametre_2/o_param] [get_bd_pins Multiplexeur_choix_parametre/input2]
  connect_bd_net -net calcul_param_3_0_o_param [get_bd_pins M7_parametre_3/o_param] [get_bd_pins Multiplexeur_choix_parametre/input3]
  connect_bd_net -net clk_1 [get_bd_ports clk_100MHz] [get_bd_pins M10_conversion_affichage/clk] [get_bd_pins M1_decodeur_i2s/clk] [get_bd_pins M5_parametre_1/i_bclk] [get_bd_pins M6_parametre_2/i_bclk] [get_bd_pins M7_parametre_3/i_bclk] [get_bd_pins M8_commande/clk] [get_bd_pins M9_codeur_i2s/i_bclk]
  connect_bd_net -net decodeur_i2s_o_dat_right [get_bd_pins M1_decodeur_i2s/o_dat_right] [get_bd_pins M2_fonction_distortion_dure1/i_ech] [get_bd_pins M3_fonction_distorsion_dure2/i_ech] [get_bd_pins M4_fonction3/i_ech] [get_bd_pins Multiplexeur_choix_fonction/input0]
  connect_bd_net -net decodeur_i2s_o_str_dat [get_bd_pins M1_decodeur_i2s/o_str_dat] [get_bd_pins M5_parametre_1/i_en] [get_bd_pins M6_parametre_2/i_en] [get_bd_pins M7_parametre_3/i_en]
  connect_bd_net -net i_btn_1 [get_bd_ports i_btn] [get_bd_pins M8_commande/i_btn]
  connect_bd_net -net i_dat_left_1 [get_bd_pins M1_decodeur_i2s/o_dat_left] [get_bd_pins M9_codeur_i2s/i_dat_left]
  connect_bd_net -net i_dat_right_1 [get_bd_pins M5_parametre_1/i_ech] [get_bd_pins M6_parametre_2/i_ech] [get_bd_pins M7_parametre_3/i_ech] [get_bd_pins M9_codeur_i2s/i_dat_right] [get_bd_pins Multiplexeur_choix_fonction/output0]
  connect_bd_net -net i_data_1 [get_bd_ports i_recdat] [get_bd_pins M1_decodeur_i2s/i_data]
  connect_bd_net -net i_lrc_1 [get_bd_ports i_lrc] [get_bd_pins M1_decodeur_i2s/i_lrc] [get_bd_pins M9_codeur_i2s/i_lrc]
  connect_bd_net -net i_reset_1 [get_bd_pins M10_conversion_affichage/reset] [get_bd_pins M1_decodeur_i2s/i_reset] [get_bd_pins M5_parametre_1/i_reset] [get_bd_pins M6_parametre_2/i_reset] [get_bd_pins M7_parametre_3/i_reset] [get_bd_pins M8_commande/o_reset] [get_bd_pins M9_codeur_i2s/i_reset]
  connect_bd_net -net i_sw_1 [get_bd_ports i_sw] [get_bd_pins M8_commande/i_sw]
  connect_bd_net -net module_commande_0_o_selection_fct [get_bd_ports o_sel_fct] [get_bd_pins M8_commande/o_selection_fct] [get_bd_pins Multiplexeur_choix_fonction/sel]
  connect_bd_net -net mux4_1_output [get_bd_ports o_param] [get_bd_pins M10_conversion_affichage/DA] [get_bd_pins Multiplexeur_choix_parametre/output0]
  connect_bd_net -net sig_fct_3_0_o_ech_fct [get_bd_pins M4_fonction3/o_ech_fct] [get_bd_pins Multiplexeur_choix_fonction/input3]
  connect_bd_net -net sig_fct_sat_dure_0_o_ech_fct [get_bd_pins M2_fonction_distortion_dure1/o_ech_fct] [get_bd_pins Multiplexeur_choix_fonction/input1]
  connect_bd_net -net sig_fct_sat_dure_1_o_ech_fct [get_bd_pins M3_fonction_distorsion_dure2/o_ech_fct] [get_bd_pins Multiplexeur_choix_fonction/input2]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins Multiplexeur_choix_parametre/input0] [get_bd_pins parametre_0/dout]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


