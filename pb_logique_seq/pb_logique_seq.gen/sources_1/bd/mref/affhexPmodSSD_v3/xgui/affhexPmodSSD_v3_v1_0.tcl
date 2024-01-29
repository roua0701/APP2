# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "const_CLK_Hz" -parent ${Page_0}


}

proc update_PARAM_VALUE.const_CLK_Hz { PARAM_VALUE.const_CLK_Hz } {
	# Procedure called to update const_CLK_Hz when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.const_CLK_Hz { PARAM_VALUE.const_CLK_Hz } {
	# Procedure called to validate const_CLK_Hz
	return true
}


proc update_MODELPARAM_VALUE.const_CLK_Hz { MODELPARAM_VALUE.const_CLK_Hz PARAM_VALUE.const_CLK_Hz } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.const_CLK_Hz}] ${MODELPARAM_VALUE.const_CLK_Hz}
}

