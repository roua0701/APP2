# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "input_length" -parent ${Page_0}


}

proc update_PARAM_VALUE.input_length { PARAM_VALUE.input_length } {
	# Procedure called to update input_length when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.input_length { PARAM_VALUE.input_length } {
	# Procedure called to validate input_length
	return true
}


proc update_MODELPARAM_VALUE.input_length { MODELPARAM_VALUE.input_length PARAM_VALUE.input_length } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.input_length}] ${MODELPARAM_VALUE.input_length}
}

