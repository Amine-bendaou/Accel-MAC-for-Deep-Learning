# 2025-09-11T11:48:17.288546
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis_workspace_2025")

platform = client.get_component(name="platform")
status = platform.build()

comp = client.get_component(name="hello_world_app")
comp.build()

status = platform.build()

comp.build()

vitis.dispose()

