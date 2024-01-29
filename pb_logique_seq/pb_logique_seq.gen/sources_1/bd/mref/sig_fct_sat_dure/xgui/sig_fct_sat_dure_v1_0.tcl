# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "c_ech_u24_max" -parent ${Page_0}


}

proc update_PARAM_VALUE.c_ech_u24_max { PARAM_VALUE.c_ech_u24_max } {
	# Procedure called to update c_ech_u24_max when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.c_ech_u24_max { PARAM_VALUE.c_ech_u24_max } {
	# Procedure called to validate c_ech_u24_max
	return true
}


proc update_MODELPARAM_VALUE.c_ech_u24_max { MODELPARAM_VALUE.c_ech_u24_max PARAM_VALUE.c_ech_u24_max } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.c_ech_u24_max}] ${MODELPARAM_VALUE.c_ech_u24_max}
}

