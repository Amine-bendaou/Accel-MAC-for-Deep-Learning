vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/lmb_bram_if_cntlr_v4_0_26
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/lmb_v10_v3_0_15
vlib questa_lib/msim/blk_mem_gen_v8_4_11
vlib questa_lib/msim/generic_baseblocks_v2_1_2
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_register_slice_v2_1_35
vlib questa_lib/msim/fifo_generator_v13_2_13
vlib questa_lib/msim/axi_data_fifo_v2_1_35
vlib questa_lib/msim/axi_crossbar_v2_1_37
vlib questa_lib/msim/axi_lite_ipif_v3_0_4
vlib questa_lib/msim/axi_uartlite_v2_0_39
vlib questa_lib/msim/mdm_v3_2_28
vlib questa_lib/msim/microblaze_v11_0_15
vlib questa_lib/msim/axi_intc_v4_1_21
vlib questa_lib/msim/xlconcat_v2_1_7
vlib questa_lib/msim/proc_sys_reset_v5_0_17
vlib questa_lib/msim/axi_protocol_converter_v2_1_36
vlib questa_lib/msim/axi_clock_converter_v2_1_34
vlib questa_lib/msim/axi_dwidth_converter_v2_1_36

vmap xpm questa_lib/msim/xpm
vmap lmb_bram_if_cntlr_v4_0_26 questa_lib/msim/lmb_bram_if_cntlr_v4_0_26
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap lmb_v10_v3_0_15 questa_lib/msim/lmb_v10_v3_0_15
vmap blk_mem_gen_v8_4_11 questa_lib/msim/blk_mem_gen_v8_4_11
vmap generic_baseblocks_v2_1_2 questa_lib/msim/generic_baseblocks_v2_1_2
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_35 questa_lib/msim/axi_register_slice_v2_1_35
vmap fifo_generator_v13_2_13 questa_lib/msim/fifo_generator_v13_2_13
vmap axi_data_fifo_v2_1_35 questa_lib/msim/axi_data_fifo_v2_1_35
vmap axi_crossbar_v2_1_37 questa_lib/msim/axi_crossbar_v2_1_37
vmap axi_lite_ipif_v3_0_4 questa_lib/msim/axi_lite_ipif_v3_0_4
vmap axi_uartlite_v2_0_39 questa_lib/msim/axi_uartlite_v2_0_39
vmap mdm_v3_2_28 questa_lib/msim/mdm_v3_2_28
vmap microblaze_v11_0_15 questa_lib/msim/microblaze_v11_0_15
vmap axi_intc_v4_1_21 questa_lib/msim/axi_intc_v4_1_21
vmap xlconcat_v2_1_7 questa_lib/msim/xlconcat_v2_1_7
vmap proc_sys_reset_v5_0_17 questa_lib/msim/proc_sys_reset_v5_0_17
vmap axi_protocol_converter_v2_1_36 questa_lib/msim/axi_protocol_converter_v2_1_36
vmap axi_clock_converter_v2_1_34 questa_lib/msim/axi_clock_converter_v2_1_34
vmap axi_dwidth_converter_v2_1_36 questa_lib/msim/axi_dwidth_converter_v2_1_36

vlog -work xpm -64 -incr -mfcu  -sv "+incdir+../../../../Nexys-A7-100T-DMA-Audio_NEW.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Nexys-A7-100T-DMA-Audio_NEW.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" \
"/tools/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/tools/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93  \
"/tools/Xilinx/2025.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_26 -64 -93  \
"../../../../Nexys-A7-100T-DMA-Audio_NEW.gen/sources_1/bd/design_1/ipshared/0e64/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/design_1/ip/design_1_dlmb_bram_if_cntlr_0/sim/design_1_dlmb_bram_if_cntlr_0.vhd" \

vcom -work lmb_v10_v3_0_15 -64 -93  \
"../../../../Nexys-A7-100T-DMA-Audio_NEW.gen/sources_1/bd/design_1/ipshared/b1c4/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/design_1/ip/design_1_dlmb_v10_0/sim/design_1_dlmb_v10_0.vhd" \
"../../../bd/design_1/ip/design_1_ilmb_bram_if_cntlr_0/sim/design_1_ilmb_bram_if_cntlr_0.vhd" \
"../../../bd/design_1/ip/design_1_ilmb_v10_0/sim/design_1_ilmb_v10_0.vhd" \

vlog -work blk_mem_gen_v8_4_11 -64 -incr -mfcu  "+incdir+../../../../Nexys-A7-100T-DMA-Audio_NEW.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Nexys-A7-100T-DMA-Audio_NEW.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" \
"../../../../Nexys-A7-100T-DMA-Audio_NEW.gen/sources_1/bd/design_1/ipshared/a32c/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../Nexys-A7-100T-DMA-Audio_NEW.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Nexys-A7-100T-DMA-Audio_NEW.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" \
"../../../bd/design_1/ip/design_1_lmb_bram_0/sim/design_1_lmb_bram_0.v" \

vlog -work generic_baseblocks_v2_1_2 -64 -incr -mfcu  "+incdir+../../../../Nexys-A7-100T-DMA-Audio_NEW.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Nexys-A7-100T-DMA-Audio_NEW.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" \
"../../../../Nexys-A7-100T-DMA-Audio_NEW.gen/sources_1/bd/design_1/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr -mfcu  "+incdir+../../../../Nexys-A7-100T-DMA-Audio_NEW.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Nexys-A7-100T-DMA-Audio_NEW.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" \
"../../../../Nexys-A7-100T-DMA-Audio_NEW.gen/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_35 -64 -incr -mfcu  "+incdir+../../../../Nexys-A7-100T-DMA-Audio_NEW.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Nexys-A7-100T-DMA-Audio_NEW.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" \
"../../../../Nexys-A7-100T-DMA-Audio_NEW.gen/sources_1/bd/design_1/ipshared/c5b7/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_13 -64 -incr -mfcu  "+incdir+../../../../Nexys-A7-100T-DMA-Audio_NEW.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Nexys-A7-100T-DMA-Audio_NEW.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" \
"../../../../Nexys-A7-100T-DMA-Audio_NEW.gen/sources_1/bd/design_1/ipshared/dc46/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_13 -64 -93  \
"../../../../Nexys-A7-100T-DMA-Audio_NEW.gen/sources_1/bd/design_1/ipshared/dc46/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_13 -64 -incr -mfcu  "+incdir+../../../../Nexys-A7-100T-DMA-Audio_NEW.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Nexys-A7-100T-DMA-Audio_NEW.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" \
"../../../../Nexys-A7-100T-DMA-Audio_NEW.gen/sources_1/bd/design_1/ipshared/dc46/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_35 -64 -incr -mfcu  "+incdir+../../../../Nexys-A7-100T-DMA-Audio_NEW.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Nexys-A7-100T-DMA-Audio_NEW.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" \
"../../../../Nexys-A7-100T-DMA-Audio_NEW.gen/sources_1/bd/design_1/ipshared/4846/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_37 -64 -incr -mfcu  "+incdir+../../../../Nexys-A7-100T-DMA-Audio_NEW.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Nexys-A7-100T-DMA-Audio_NEW.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" \
"../../../../Nexys-A7-100T-DMA-Audio_NEW.gen/sources_1/bd/design_1/ipshared/a1a7/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../Nexys-A7-100T-DMA-Audio_NEW.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Nexys-A7-100T-DMA-Audio_NEW.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" \
"../../../bd/design_1/ip/design_1_axi_interconnect_0_upgraded_ipi_imp_xbar_0/sim/design_1_axi_interconnect_0_upgraded_ipi_imp_xbar_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93  \
"../../../../Nexys-A7-100T-DMA-Audio_NEW.gen/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work axi_uartlite_v2_0_39 -64 -93  \
"../../../../Nexys-A7-100T-DMA-Audio_NEW.gen/sources_1/bd/design_1/ipshared/eab1/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/design_1/ip/design_1_axi_uartlite_0_0/sim/design_1_axi_uartlite_0_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../Nexys-A7-100T-DMA-Audio_NEW.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Nexys-A7-100T-DMA-Audio_NEW.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0.v" \

vcom -work mdm_v3_2_28 -64 -93  \
"../../../../Nexys-A7-100T-DMA-Audio_NEW.gen/sources_1/bd/design_1/ipshared/00dd/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/design_1/ip/design_1_mdm_1_0/sim/design_1_mdm_1_0.vhd" \

vcom -work microblaze_v11_0_15 -64 -93  \
"../../../../Nexys-A7-100T-DMA-Audio_NEW.gen/sources_1/bd/design_1/ipshared/75f6/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/design_1/ip/design_1_microblaze_0_0/sim/design_1_microblaze_0_0.vhd" \

vcom -work axi_intc_v4_1_21 -64 -93  \
"../../../../Nexys-A7-100T-DMA-Audio_NEW.gen/sources_1/bd/design_1/ipshared/9eb6/hdl/axi_intc_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/design_1/ip/design_1_microblaze_0_axi_intc_0/sim/design_1_microblaze_0_axi_intc_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../Nexys-A7-100T-DMA-Audio_NEW.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Nexys-A7-100T-DMA-Audio_NEW.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" \
"../../../bd/design_1/ip/design_1_microblaze_0_axi_periph_upgraded_ipi_imp_xbar_0/sim/design_1_microblaze_0_axi_periph_upgraded_ipi_imp_xbar_0.v" \

vlog -work xlconcat_v2_1_7 -64 -incr -mfcu  "+incdir+../../../../Nexys-A7-100T-DMA-Audio_NEW.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Nexys-A7-100T-DMA-Audio_NEW.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" \
"../../../../Nexys-A7-100T-DMA-Audio_NEW.gen/sources_1/bd/design_1/ipshared/9c1a/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../Nexys-A7-100T-DMA-Audio_NEW.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Nexys-A7-100T-DMA-Audio_NEW.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" \
"../../../bd/design_1/ip/design_1_microblaze_0_xlconcat_0/sim/design_1_microblaze_0_xlconcat_0.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/clocking/mig_7series_v4_2_infrastructure.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/clocking/mig_7series_v4_2_clk_ibuf.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/clocking/mig_7series_v4_2_tempmon.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/clocking/mig_7series_v4_2_iodelay_ctrl.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/controller/mig_7series_v4_2_mc.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/controller/mig_7series_v4_2_bank_queue.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/controller/mig_7series_v4_2_rank_mach.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/controller/mig_7series_v4_2_rank_cntrl.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/controller/mig_7series_v4_2_col_mach.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/controller/mig_7series_v4_2_bank_common.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/controller/mig_7series_v4_2_arb_mux.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/controller/mig_7series_v4_2_arb_select.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/controller/mig_7series_v4_2_bank_compare.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/controller/mig_7series_v4_2_arb_row_col.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/controller/mig_7series_v4_2_bank_mach.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/controller/mig_7series_v4_2_bank_cntrl.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/controller/mig_7series_v4_2_bank_state.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/controller/mig_7series_v4_2_rank_common.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/controller/mig_7series_v4_2_round_robin_arb.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_axi_mc.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_ddr_comparator_sel.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_and.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_axi_mc_aw_channel.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_axi_mc_cmd_fsm.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_axi_mc_wr_cmd_fsm.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_ddr_command_fifo.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_axi_mc_wrap_cmd.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_latch_and.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_ddr_r_upsizer.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_axi_mc_cmd_translator.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_axi_mc_simple_fifo.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_ddr_axi_upsizer.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_reg_bank.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_top.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_ddr_axic_register_slice.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_axi_mc_incr_cmd.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_ddr_a_upsizer.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_ddr_axi_register_slice.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_ddr_comparator_sel_static.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_read.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_axi_mc_b_channel.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_axi_mc_r_channel.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_ddr_comparator.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_axi_mc_ar_channel.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_latch_or.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_axi_mc_cmd_arbiter.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_axi_mc_w_channel.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_reg.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_addr_decode.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_axi_mc_fifo.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_write.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_ddr_w_upsizer.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_or.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/ip_top/mig_7series_v4_2_memc_ui_top_axi.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/ip_top/mig_7series_v4_2_mem_intfc.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/ecc/mig_7series_v4_2_ecc_dec_fix.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/ecc/mig_7series_v4_2_fi_xor.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/ecc/mig_7series_v4_2_ecc_gen.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/ecc/mig_7series_v4_2_ecc_merge_enc.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/ecc/mig_7series_v4_2_ecc_buf.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/ui/mig_7series_v4_2_ui_wr_data.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/ui/mig_7series_v4_2_ui_rd_data.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/ui/mig_7series_v4_2_ui_top.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/ui/mig_7series_v4_2_ui_cmd.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_mc_phy_wrapper.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_poc_tap_base.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrcal.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_tempmon.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_byte_lane.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ck_addr_cmd_delay.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_samp.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrlvl_off_delay.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_dqs_found_cal_hr.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_prbs_gen.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_poc_cc.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_edge.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_cntlr.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_rdlvl.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_of_pre_fifo.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_top.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_data.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_oclkdelay_cal.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_po_cntlr.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_prbs_rdlvl.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_4lanes.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_mc_phy.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_calib_top.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_byte_group_io.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_init.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_if_post_fifo.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_dqs_found_cal.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_poc_meta.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_mux.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_poc_top.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_poc_edge_store.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_lim.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrlvl.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_poc_pd.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/design_1_mig_7series_0_1_mig_sim.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/design_1_mig_7series_0_1.v" \

vcom -work proc_sys_reset_v5_0_17 -64 -93  \
"../../../../Nexys-A7-100T-DMA-Audio_NEW.gen/sources_1/bd/design_1/ipshared/9438/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/design_1/ip/design_1_rst_mig_7series_0_81M_0/sim/design_1_rst_mig_7series_0_81M_0.vhd" \
"../../../bd/design_1/ipshared/244d/hdl/FP_Mult_slave_lite_v1_0_S00_AXI.vhd" \
"../../../bd/design_1/ipshared/244d/src/FPMult.vhd" \
"../../../bd/design_1/ipshared/244d/hdl/FP_Mult.vhd" \
"../../../bd/design_1/ip/design_1_FP_Mult_0_0/sim/design_1_FP_Mult_0_0.vhd" \

vlog -work axi_protocol_converter_v2_1_36 -64 -incr -mfcu  "+incdir+../../../../Nexys-A7-100T-DMA-Audio_NEW.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Nexys-A7-100T-DMA-Audio_NEW.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" \
"../../../../Nexys-A7-100T-DMA-Audio_NEW.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work axi_clock_converter_v2_1_34 -64 -incr -mfcu  "+incdir+../../../../Nexys-A7-100T-DMA-Audio_NEW.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Nexys-A7-100T-DMA-Audio_NEW.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" \
"../../../../Nexys-A7-100T-DMA-Audio_NEW.gen/sources_1/bd/design_1/ipshared/9a28/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work axi_dwidth_converter_v2_1_36 -64 -incr -mfcu  "+incdir+../../../../Nexys-A7-100T-DMA-Audio_NEW.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Nexys-A7-100T-DMA-Audio_NEW.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" \
"../../../../Nexys-A7-100T-DMA-Audio_NEW.gen/sources_1/bd/design_1/ipshared/db4c/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../Nexys-A7-100T-DMA-Audio_NEW.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Nexys-A7-100T-DMA-Audio_NEW.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" \
"../../../bd/design_1/ip/design_1_axi_interconnect_0_imp_auto_us_0/sim/design_1_axi_interconnect_0_imp_auto_us_0.v" \
"../../../bd/design_1/ip/design_1_axi_interconnect_0_imp_auto_us_1/sim/design_1_axi_interconnect_0_imp_auto_us_1.v" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/design_1/sim/design_1.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

