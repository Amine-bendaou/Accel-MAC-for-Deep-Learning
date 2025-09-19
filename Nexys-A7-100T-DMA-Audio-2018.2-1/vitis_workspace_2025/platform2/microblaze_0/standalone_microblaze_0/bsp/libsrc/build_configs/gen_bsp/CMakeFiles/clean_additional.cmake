# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "")
  file(REMOVE_RECURSE
  "/home/intern/Downloads/Nexys-A7-100T-DMA-Audio-2018.2-1/vitis_workspace_2025/platform2/microblaze_0/standalone_microblaze_0/bsp/include/sleep.h"
  "/home/intern/Downloads/Nexys-A7-100T-DMA-Audio-2018.2-1/vitis_workspace_2025/platform2/microblaze_0/standalone_microblaze_0/bsp/include/xiltimer.h"
  "/home/intern/Downloads/Nexys-A7-100T-DMA-Audio-2018.2-1/vitis_workspace_2025/platform2/microblaze_0/standalone_microblaze_0/bsp/include/xtimer_config.h"
  "/home/intern/Downloads/Nexys-A7-100T-DMA-Audio-2018.2-1/vitis_workspace_2025/platform2/microblaze_0/standalone_microblaze_0/bsp/lib/libxiltimer.a"
  )
endif()
