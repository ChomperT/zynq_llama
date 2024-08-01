transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+kr260_tsn_rs485pmod  -L xilinx_vip -L xpm -L axi_infrastructure_v1_1_0 -L axi_vip_v1_1_15 -L zynq_ultra_ps_e_vip_v1_0_15 -L xil_defaultlib -L axi_lite_ipif_v3_0_4 -L axi_intc_v4_1_18 -L lib_pkg_v1_0_3 -L fifo_generator_v13_2_9 -L lib_fifo_v1_0_18 -L lib_srl_fifo_v1_0_3 -L lib_cdc_v1_0_2 -L axi_datamover_v5_1_31 -L axi_msg_v1_0_10 -L axi_mcdma_v1_1_10 -L xlconstant_v1_1_8 -L proc_sys_reset_v5_0_14 -L smartconnect_v1_0 -L axi_register_slice_v2_1_29 -L axis_infrastructure_v1_1_1 -L axis_register_slice_v1_1_29 -L axis_switch_v1_1_29 -L xlconcat_v2_1_5 -L tsn_endpoint_ethernet_mac_block_v1_0_14 -L xbip_utils_v3_0_11 -L xbip_pipe_v3_0_7 -L xbip_bram18k_v3_0_7 -L mult_gen_v12_0_19 -L tsn_temac_v1_0_9 -L fifo_generator_v13_1_5 -L blk_mem_gen_v8_4_7 -L lib_bmg_v1_0_16 -L switch_core_top_v1_0_14 -L xlslice_v1_0_3 -L generic_baseblocks_v2_1_1 -L axi_data_fifo_v2_1_28 -L axi_crossbar_v2_1_30 -L util_vector_logic_v2_0_3 -L ta_dma_v1_0_13 -L axi_utils_v2_0_7 -L xbip_dsp48_wrapper_v3_0_5 -L xbip_dsp48_addsub_v3_0_7 -L xbip_dsp48_multadd_v3_0_7 -L floating_point_v7_1_16 -L system_cache_v5_0_10 -L axi_uartlite_v2_0_33 -L axi_protocol_converter_v2_1_29 -L axi_clock_converter_v2_1_28 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.kr260_tsn_rs485pmod xil_defaultlib.glbl

do {kr260_tsn_rs485pmod.udo}

run 1000ns

endsim

quit -force
