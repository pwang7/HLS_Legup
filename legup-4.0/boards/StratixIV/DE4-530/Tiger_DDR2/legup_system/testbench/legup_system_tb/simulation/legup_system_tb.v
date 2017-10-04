// legup_system_tb.v

// Generated using ACDS version 13.1 162 at 2015.05.09.10:25:08

`timescale 1 ps / 1 ps
module legup_system_tb (
	);

	wire         legup_system_inst_clk_bfm_clk_clk;                    // legup_system_inst_clk_bfm:clk -> [legup_system_inst:clk_clk, legup_system_inst_reset_bfm:clk]
	wire         legup_system_inst_reset_bfm_reset_reset;              // legup_system_inst_reset_bfm:reset -> legup_system_inst:reset_reset_n
	wire         legup_system_inst_leap_profiling_signals_start;       // legup_system_inst:leap_profiling_signals_start -> legup_system_inst_leap_profiling_signals_bfm:sig_start
	wire         legup_system_inst_leap_profiling_signals_end;         // legup_system_inst:leap_profiling_signals_end -> legup_system_inst_leap_profiling_signals_bfm:sig_end
	wire  [17:0] legup_system_inst_leap_debug_port_lights;             // legup_system_inst:leap_debug_port_lights -> legup_system_inst_leap_debug_port_bfm:sig_lights
	wire   [2:0] legup_system_inst_leap_debug_port_bfm_conduit_select; // legup_system_inst_leap_debug_port_bfm:sig_select -> legup_system_inst:leap_debug_port_select
	wire   [0:0] legup_system_inst_ddr2_oct_bfm_conduit_rdn;           // legup_system_inst_ddr2_oct_bfm:sig_rdn -> legup_system_inst:ddr2_oct_rdn
	wire   [0:0] legup_system_inst_ddr2_oct_bfm_conduit_rup;           // legup_system_inst_ddr2_oct_bfm:sig_rup -> legup_system_inst:ddr2_oct_rup
	wire         legup_system_inst_ddr2_status_local_cal_fail;         // legup_system_inst:ddr2_status_local_cal_fail -> legup_system_inst_ddr2_status_bfm:sig_local_cal_fail
	wire         legup_system_inst_ddr2_status_local_cal_success;      // legup_system_inst:ddr2_status_local_cal_success -> legup_system_inst_ddr2_status_bfm:sig_local_cal_success
	wire         legup_system_inst_ddr2_status_local_init_done;        // legup_system_inst:ddr2_status_local_init_done -> legup_system_inst_ddr2_status_bfm:sig_local_init_done
	wire   [0:0] legup_system_inst_uart_wire_bfm_conduit_rxd;          // legup_system_inst_uart_wire_bfm:sig_rxd -> legup_system_inst:uart_wire_rxd
	wire         legup_system_inst_uart_wire_txd;                      // legup_system_inst:uart_wire_txd -> legup_system_inst_uart_wire_bfm:sig_txd
	wire   [0:0] legup_system_inst_ddr2_memory_mem_odt;                // legup_system_inst:ddr2_memory_mem_odt -> DDR2_SDRAM_mem_model:mem_odt
	wire   [0:0] legup_system_inst_ddr2_memory_mem_cs_n;               // legup_system_inst:ddr2_memory_mem_cs_n -> DDR2_SDRAM_mem_model:mem_cs_n
	wire  [13:0] legup_system_inst_ddr2_memory_mem_a;                  // legup_system_inst:ddr2_memory_mem_a -> DDR2_SDRAM_mem_model:mem_a
	wire   [1:0] legup_system_inst_ddr2_memory_mem_ck_n;               // legup_system_inst:ddr2_memory_mem_ck_n -> DDR2_SDRAM_mem_model:mem_ck_n
	wire   [0:0] legup_system_inst_ddr2_memory_mem_ras_n;              // legup_system_inst:ddr2_memory_mem_ras_n -> DDR2_SDRAM_mem_model:mem_ras_n
	wire   [0:0] legup_system_inst_ddr2_memory_mem_cke;                // legup_system_inst:ddr2_memory_mem_cke -> DDR2_SDRAM_mem_model:mem_cke
	wire   [7:0] ddr2_sdram_mem_model_memory_mem_dqs;                  // [] -> [DDR2_SDRAM_mem_model:mem_dqs, legup_system_inst:ddr2_memory_mem_dqs]
	wire   [0:0] legup_system_inst_ddr2_memory_mem_we_n;               // legup_system_inst:ddr2_memory_mem_we_n -> DDR2_SDRAM_mem_model:mem_we_n
	wire   [2:0] legup_system_inst_ddr2_memory_mem_ba;                 // legup_system_inst:ddr2_memory_mem_ba -> DDR2_SDRAM_mem_model:mem_ba
	wire  [63:0] ddr2_sdram_mem_model_memory_mem_dq;                   // [] -> [DDR2_SDRAM_mem_model:mem_dq, legup_system_inst:ddr2_memory_mem_dq]
	wire   [1:0] legup_system_inst_ddr2_memory_mem_ck;                 // legup_system_inst:ddr2_memory_mem_ck -> DDR2_SDRAM_mem_model:mem_ck
	wire   [7:0] legup_system_inst_ddr2_memory_mem_dm;                 // legup_system_inst:ddr2_memory_mem_dm -> DDR2_SDRAM_mem_model:mem_dm
	wire   [0:0] legup_system_inst_ddr2_memory_mem_cas_n;              // legup_system_inst:ddr2_memory_mem_cas_n -> DDR2_SDRAM_mem_model:mem_cas_n
	wire   [7:0] ddr2_sdram_mem_model_memory_mem_dqs_n;                // [] -> [DDR2_SDRAM_mem_model:mem_dqs_n, legup_system_inst:ddr2_memory_mem_dqs_n]

	legup_system legup_system_inst (
		.clk_clk                       (legup_system_inst_clk_bfm_clk_clk),                    //                    clk.clk
		.reset_reset_n                 (legup_system_inst_reset_bfm_reset_reset),              //                  reset.reset_n
		.leap_profiling_signals_start  (legup_system_inst_leap_profiling_signals_start),       // leap_profiling_signals.start
		.leap_profiling_signals_end    (legup_system_inst_leap_profiling_signals_end),         //                       .end
		.leap_debug_port_select        (legup_system_inst_leap_debug_port_bfm_conduit_select), //        leap_debug_port.select
		.leap_debug_port_lights        (legup_system_inst_leap_debug_port_lights),             //                       .lights
		.ddr2_memory_mem_a             (legup_system_inst_ddr2_memory_mem_a),                  //            ddr2_memory.mem_a
		.ddr2_memory_mem_ba            (legup_system_inst_ddr2_memory_mem_ba),                 //                       .mem_ba
		.ddr2_memory_mem_ck            (legup_system_inst_ddr2_memory_mem_ck),                 //                       .mem_ck
		.ddr2_memory_mem_ck_n          (legup_system_inst_ddr2_memory_mem_ck_n),               //                       .mem_ck_n
		.ddr2_memory_mem_cke           (legup_system_inst_ddr2_memory_mem_cke),                //                       .mem_cke
		.ddr2_memory_mem_cs_n          (legup_system_inst_ddr2_memory_mem_cs_n),               //                       .mem_cs_n
		.ddr2_memory_mem_dm            (legup_system_inst_ddr2_memory_mem_dm),                 //                       .mem_dm
		.ddr2_memory_mem_ras_n         (legup_system_inst_ddr2_memory_mem_ras_n),              //                       .mem_ras_n
		.ddr2_memory_mem_cas_n         (legup_system_inst_ddr2_memory_mem_cas_n),              //                       .mem_cas_n
		.ddr2_memory_mem_we_n          (legup_system_inst_ddr2_memory_mem_we_n),               //                       .mem_we_n
		.ddr2_memory_mem_dq            (ddr2_sdram_mem_model_memory_mem_dq),                   //                       .mem_dq
		.ddr2_memory_mem_dqs           (ddr2_sdram_mem_model_memory_mem_dqs),                  //                       .mem_dqs
		.ddr2_memory_mem_dqs_n         (ddr2_sdram_mem_model_memory_mem_dqs_n),                //                       .mem_dqs_n
		.ddr2_memory_mem_odt           (legup_system_inst_ddr2_memory_mem_odt),                //                       .mem_odt
		.ddr2_oct_rdn                  (legup_system_inst_ddr2_oct_bfm_conduit_rdn),           //               ddr2_oct.rdn
		.ddr2_oct_rup                  (legup_system_inst_ddr2_oct_bfm_conduit_rup),           //                       .rup
		.ddr2_status_local_init_done   (legup_system_inst_ddr2_status_local_init_done),        //            ddr2_status.local_init_done
		.ddr2_status_local_cal_success (legup_system_inst_ddr2_status_local_cal_success),      //                       .local_cal_success
		.ddr2_status_local_cal_fail    (legup_system_inst_ddr2_status_local_cal_fail),         //                       .local_cal_fail
		.uart_wire_rxd                 (legup_system_inst_uart_wire_bfm_conduit_rxd),          //              uart_wire.rxd
		.uart_wire_txd                 (legup_system_inst_uart_wire_txd)                       //                       .txd
	);

	altera_avalon_clock_source #(
		.CLOCK_RATE (50000000),
		.CLOCK_UNIT (1)
	) legup_system_inst_clk_bfm (
		.clk (legup_system_inst_clk_bfm_clk_clk)  // clk.clk
	);

	altera_avalon_reset_source #(
		.ASSERT_HIGH_RESET    (0),
		.INITIAL_RESET_CYCLES (50)
	) legup_system_inst_reset_bfm (
		.reset (legup_system_inst_reset_bfm_reset_reset), // reset.reset_n
		.clk   (legup_system_inst_clk_bfm_clk_clk)        //   clk.clk
	);

	altera_conduit_bfm legup_system_inst_leap_profiling_signals_bfm (
		.sig_start (legup_system_inst_leap_profiling_signals_start), // conduit.start
		.sig_end   (legup_system_inst_leap_profiling_signals_end)    //        .end
	);

	altera_conduit_bfm_0002 legup_system_inst_leap_debug_port_bfm (
		.sig_select (legup_system_inst_leap_debug_port_bfm_conduit_select), // conduit.select
		.sig_lights (legup_system_inst_leap_debug_port_lights)              //        .lights
	);

	altera_conduit_bfm_0003 legup_system_inst_ddr2_oct_bfm (
		.sig_rdn (legup_system_inst_ddr2_oct_bfm_conduit_rdn), // conduit.rdn
		.sig_rup (legup_system_inst_ddr2_oct_bfm_conduit_rup)  //        .rup
	);

	altera_conduit_bfm_0004 legup_system_inst_ddr2_status_bfm (
		.sig_local_init_done   (legup_system_inst_ddr2_status_local_init_done),   // conduit.local_init_done
		.sig_local_cal_success (legup_system_inst_ddr2_status_local_cal_success), //        .local_cal_success
		.sig_local_cal_fail    (legup_system_inst_ddr2_status_local_cal_fail)     //        .local_cal_fail
	);

	altera_conduit_bfm_0005 legup_system_inst_uart_wire_bfm (
		.sig_rxd (legup_system_inst_uart_wire_bfm_conduit_rxd), // conduit.rxd
		.sig_txd (legup_system_inst_uart_wire_txd)              //        .txd
	);

	alt_mem_if_ddr2_mem_model_top_mem_if_dm_pins_en_mem_if_dqsn_en #(
		.MEM_IF_ADDR_WIDTH            (14),
		.MEM_IF_ROW_ADDR_WIDTH        (14),
		.MEM_IF_COL_ADDR_WIDTH        (10),
		.MEM_IF_CS_PER_RANK           (1),
		.MEM_IF_CONTROL_WIDTH         (1),
		.MEM_IF_DQS_WIDTH             (8),
		.MEM_IF_CS_WIDTH              (1),
		.MEM_IF_BANKADDR_WIDTH        (3),
		.MEM_IF_DQ_WIDTH              (64),
		.MEM_IF_CK_WIDTH              (2),
		.MEM_IF_CLK_EN_WIDTH          (1),
		.DEVICE_WIDTH                 (1),
		.MEM_TRCD                     (6),
		.MEM_TRTP                     (3),
		.MEM_DQS_TO_CLK_CAPTURE_DELAY (100),
		.MEM_CLK_TO_DQS_CAPTURE_DELAY (100000),
		.MEM_IF_ODT_WIDTH             (1),
		.MEM_MIRROR_ADDRESSING_DEC    (0),
		.MEM_REGDIMM_ENABLED          (0),
		.DEVICE_DEPTH                 (1),
		.MEM_GUARANTEED_WRITE_INIT    (0),
		.MEM_VERBOSE                  (0),
		.MEM_INIT_EN                  (1),
		.MEM_INIT_FILE                ("legup_ddr2_memory_init.hex"),
		.DAT_DATA_WIDTH               (32)
	) ddr2_sdram_mem_model (
		.mem_a     (legup_system_inst_ddr2_memory_mem_a),     // memory.mem_a
		.mem_ba    (legup_system_inst_ddr2_memory_mem_ba),    //       .mem_ba
		.mem_ck    (legup_system_inst_ddr2_memory_mem_ck),    //       .mem_ck
		.mem_ck_n  (legup_system_inst_ddr2_memory_mem_ck_n),  //       .mem_ck_n
		.mem_cke   (legup_system_inst_ddr2_memory_mem_cke),   //       .mem_cke
		.mem_cs_n  (legup_system_inst_ddr2_memory_mem_cs_n),  //       .mem_cs_n
		.mem_dm    (legup_system_inst_ddr2_memory_mem_dm),    //       .mem_dm
		.mem_ras_n (legup_system_inst_ddr2_memory_mem_ras_n), //       .mem_ras_n
		.mem_cas_n (legup_system_inst_ddr2_memory_mem_cas_n), //       .mem_cas_n
		.mem_we_n  (legup_system_inst_ddr2_memory_mem_we_n),  //       .mem_we_n
		.mem_dq    (ddr2_sdram_mem_model_memory_mem_dq),      //       .mem_dq
		.mem_dqs   (ddr2_sdram_mem_model_memory_mem_dqs),     //       .mem_dqs
		.mem_dqs_n (ddr2_sdram_mem_model_memory_mem_dqs_n),   //       .mem_dqs_n
		.mem_odt   (legup_system_inst_ddr2_memory_mem_odt)    //       .mem_odt
	);

endmodule