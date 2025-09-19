# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "EXP_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MANT_WIDTH" -parent ${Page_0}


}

proc update_PARAM_VALUE.EXP_WIDTH { PARAM_VALUE.EXP_WIDTH } {
	# Procedure called to update EXP_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.EXP_WIDTH { PARAM_VALUE.EXP_WIDTH } {
	# Procedure called to validate EXP_WIDTH
	return true
}

proc update_PARAM_VALUE.MANT_WIDTH { PARAM_VALUE.MANT_WIDTH } {
	# Procedure called to update MANT_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MANT_WIDTH { PARAM_VALUE.MANT_WIDTH } {
	# Procedure called to validate MANT_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.EXP_WIDTH { MODELPARAM_VALUE.EXP_WIDTH PARAM_VALUE.EXP_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.EXP_WIDTH}] ${MODELPARAM_VALUE.EXP_WIDTH}
}

proc update_MODELPARAM_VALUE.MANT_WIDTH { MODELPARAM_VALUE.MANT_WIDTH PARAM_VALUE.MANT_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MANT_WIDTH}] ${MODELPARAM_VALUE.MANT_WIDTH}
}

