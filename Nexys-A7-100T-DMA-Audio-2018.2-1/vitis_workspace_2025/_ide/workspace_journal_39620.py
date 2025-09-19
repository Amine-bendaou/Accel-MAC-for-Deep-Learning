# 2025-09-11T09:43:07.564890
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis_workspace_2025")

platform = client.get_component(name="platform")
status = platform.build()

status = platform.build()

comp = client.get_component(name="hello_world_app")
comp.build()

status = platform.build()

status = platform.build()

comp.build()

status = platform.build()

status = platform.build()

comp.build()

vitis.dispose()

