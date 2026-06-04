# Copyright (c) 2024 Nordic Semiconductor ASA
# SPDX-License-Identifier: Apache-2.0

if(CONFIG_SOC_NRF54L05_CPUAPP OR CONFIG_SOC_NRF54L10_CPUAPP OR
		CONFIG_SOC_NRF54L15_CPUAPP)
  board_runner_args(jlink "--device=cortex-m33" "--speed=4000")
  board_runner_args(pyocd  "--target=nrf54l" "--tool-opt=-uremote:192.168.7.2")
elseif(CONFIG_SOC_NRF54L05_CPUFLPR OR CONFIG_SOC_NRF54L10_CPUFLPR OR
		CONFIG_SOC_NRF54L15_CPUFLPR)
  set(JLINKSCRIPTFILE ${CMAKE_CURRENT_LIST_DIR}/support/nrf54l_05_10_15_cpuflpr.JLinkScript)
  board_runner_args(jlink "--device=RISC-V" "--speed=4000" "-if SW" "--tool-opt=-jlinkscriptfile ${JLINKSCRIPTFILE}")
  board_runner_args(pyocd "--target=nrf54l" "-uremote:192.168.7.22")
endif()

include(${ZEPHYR_BASE}/boards/common/nrfutil.board.cmake)
include(${ZEPHYR_BASE}/boards/common/jlink.board.cmake)
include(${ZEPHYR_BASE}/boards/common/pyocd.board.cmake)
