# 2025-09-12T11:14:31.517408
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis_workspace_2025")

platform = client.get_component(name="platform")
status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../vivado_proj/design_1_wrapper.xsa")

status = platform.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../vivado_proj/design_1_wrapper_old_1.xsa")

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../vivado_proj/design_1_wrapper.xsa")

status = platform.build()

status = platform.build()

domain = platform.get_domain(name="standalone_microblaze_0")

status = domain.regenerate()

status = platform.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../vivado_proj/design_1_wrapper.xsa")

status = domain.regenerate()

status = platform.build()

comp = client.get_component(name="hello_world_app")
comp.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../vivado_proj/design_1_wrapper.xsa")

status = platform.build()

status = platform.build()

status = platform.build()

comp.build()

status = platform.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

vitis.dispose()

