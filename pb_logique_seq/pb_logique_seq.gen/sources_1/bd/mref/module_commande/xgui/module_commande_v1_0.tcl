# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "mode_simulation" -parent ${Page_0}
  ipgui::add_param $IPINST -name "nbtn" -parent ${Page_0}


}

proc update_PARAM_VALUE.mode_simulation { PARAM_VALUE.mode_simulation } {
	# Procedure called to update mode_simulation when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.mode_simulation { PARAM_VALUE.mode_simulation } {
	# Procedure called to validate mode_simulation
	return true
}

proc update_PARAM_VALUE.nbtn { PARAM_VALUE.nbtn } {
	# Procedure called to update nbtn when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.nbtn { PARAM_VALUE.nbtn } {
	# Procedure called to validate nbtn
	return true
}


proc update_MODELPARAM_VALUE.nbtn { MODELPARAM_VALUE.nbtn PARAM_VALUE.nbtn } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.nbtn}] ${MODELPARAM_VALUE.nbtn}
}

proc update_MODELPARAM_VALUE.mode_simulation { MODELPARAM_VALUE.mode_simulation PARAM_VALUE.mode_simulation } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.mode_simulation}] ${MODELPARAM_VALUE.mode_simulation}
}

