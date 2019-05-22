/* Machine-generated using LiteX gen */
module top(
	output reg serial_tx,
	input serial_rx,
	input serial_cts,
	input serial_rts,
	input clk100,
	input reset,
	output ddram_clock_p,
	output ddram_clock_n,
	output reg [12:0] ddram_a,
	output reg [1:0] ddram_ba,
	output reg ddram_cke,
	output reg ddram_ras_n,
	output reg ddram_cas_n,
	output reg ddram_we_n,
	inout [15:0] ddram_dq,
	output [1:0] ddram_dqs,
	output [1:0] ddram_dm
);

wire ctrl_reset_reset_re;
wire ctrl_reset_reset_r;
reg ctrl_reset_reset_w = 1'd0;
reg [31:0] ctrl_storage_full = 32'd305419896;
wire [31:0] ctrl_storage;
reg ctrl_re = 1'd0;
wire [31:0] ctrl_bus_errors_status;
wire ctrl_reset;
wire ctrl_bus_error;
reg [31:0] ctrl_bus_errors = 32'd0;
wire lm32_reset;
wire [29:0] lm32_ibus_adr;
wire [31:0] lm32_ibus_dat_w;
wire [31:0] lm32_ibus_dat_r;
wire [3:0] lm32_ibus_sel;
wire lm32_ibus_cyc;
wire lm32_ibus_stb;
wire lm32_ibus_ack;
wire lm32_ibus_we;
wire [2:0] lm32_ibus_cti;
wire [1:0] lm32_ibus_bte;
wire lm32_ibus_err;
wire [29:0] lm32_dbus_adr;
wire [31:0] lm32_dbus_dat_w;
wire [31:0] lm32_dbus_dat_r;
wire [3:0] lm32_dbus_sel;
wire lm32_dbus_cyc;
wire lm32_dbus_stb;
wire lm32_dbus_ack;
wire lm32_dbus_we;
wire [2:0] lm32_dbus_cti;
wire [1:0] lm32_dbus_bte;
wire lm32_dbus_err;
reg [31:0] lm32_interrupt = 32'd0;
wire [31:0] lm32_i_adr_o;
wire [31:0] lm32_d_adr_o;
wire [29:0] rom_bus_adr;
wire [31:0] rom_bus_dat_w;
wire [31:0] rom_bus_dat_r;
wire [3:0] rom_bus_sel;
wire rom_bus_cyc;
wire rom_bus_stb;
reg rom_bus_ack = 1'd0;
wire rom_bus_we;
wire [2:0] rom_bus_cti;
wire [1:0] rom_bus_bte;
reg rom_bus_err = 1'd0;
wire [12:0] rom_adr;
wire [31:0] rom_dat_r;
wire [29:0] sram_bus_adr;
wire [31:0] sram_bus_dat_w;
wire [31:0] sram_bus_dat_r;
wire [3:0] sram_bus_sel;
wire sram_bus_cyc;
wire sram_bus_stb;
reg sram_bus_ack = 1'd0;
wire sram_bus_we;
wire [2:0] sram_bus_cti;
wire [1:0] sram_bus_bte;
reg sram_bus_err = 1'd0;
wire [11:0] sram_adr;
wire [31:0] sram_dat_r;
reg [3:0] sram_we = 4'd0;
wire [31:0] sram_dat_w;
reg [13:0] interface_adr = 14'd0;
reg interface_we = 1'd0;
reg [7:0] interface_dat_w = 8'd0;
wire [7:0] interface_dat_r;
wire [29:0] bus_wishbone_adr;
wire [31:0] bus_wishbone_dat_w;
reg [31:0] bus_wishbone_dat_r = 32'd0;
wire [3:0] bus_wishbone_sel;
wire bus_wishbone_cyc;
wire bus_wishbone_stb;
reg bus_wishbone_ack = 1'd0;
wire bus_wishbone_we;
wire [2:0] bus_wishbone_cti;
wire [1:0] bus_wishbone_bte;
reg bus_wishbone_err = 1'd0;
reg [1:0] counter = 2'd0;
reg [31:0] uart_phy_storage_full = 32'd15832967;
wire [31:0] uart_phy_storage;
reg uart_phy_re = 1'd0;
wire uart_phy_sink_valid;
reg uart_phy_sink_ready = 1'd0;
wire uart_phy_sink_first;
wire uart_phy_sink_last;
wire [7:0] uart_phy_sink_payload_data;
reg uart_phy_uart_clk_txen = 1'd0;
reg [31:0] uart_phy_phase_accumulator_tx = 32'd0;
reg [7:0] uart_phy_tx_reg = 8'd0;
reg [3:0] uart_phy_tx_bitcount = 4'd0;
reg uart_phy_tx_busy = 1'd0;
reg uart_phy_source_valid = 1'd0;
wire uart_phy_source_ready;
reg uart_phy_source_first = 1'd0;
reg uart_phy_source_last = 1'd0;
reg [7:0] uart_phy_source_payload_data = 8'd0;
reg uart_phy_uart_clk_rxen = 1'd0;
reg [31:0] uart_phy_phase_accumulator_rx = 32'd0;
wire uart_phy_rx;
reg uart_phy_rx_r = 1'd0;
reg [7:0] uart_phy_rx_reg = 8'd0;
reg [3:0] uart_phy_rx_bitcount = 4'd0;
reg uart_phy_rx_busy = 1'd0;
wire uart_rxtx_re;
wire [7:0] uart_rxtx_r;
wire [7:0] uart_rxtx_w;
wire uart_txfull_status;
wire uart_rxempty_status;
wire uart_irq;
wire uart_tx_status;
reg uart_tx_pending = 1'd0;
wire uart_tx_trigger;
reg uart_tx_clear = 1'd0;
reg uart_tx_old_trigger = 1'd0;
wire uart_rx_status;
reg uart_rx_pending = 1'd0;
wire uart_rx_trigger;
reg uart_rx_clear = 1'd0;
reg uart_rx_old_trigger = 1'd0;
wire uart_eventmanager_status_re;
wire [1:0] uart_eventmanager_status_r;
reg [1:0] uart_eventmanager_status_w = 2'd0;
wire uart_eventmanager_pending_re;
wire [1:0] uart_eventmanager_pending_r;
reg [1:0] uart_eventmanager_pending_w = 2'd0;
reg [1:0] uart_eventmanager_storage_full = 2'd0;
wire [1:0] uart_eventmanager_storage;
reg uart_eventmanager_re = 1'd0;
wire uart_tx_fifo_sink_valid;
wire uart_tx_fifo_sink_ready;
reg uart_tx_fifo_sink_first = 1'd0;
reg uart_tx_fifo_sink_last = 1'd0;
wire [7:0] uart_tx_fifo_sink_payload_data;
wire uart_tx_fifo_source_valid;
wire uart_tx_fifo_source_ready;
wire uart_tx_fifo_source_first;
wire uart_tx_fifo_source_last;
wire [7:0] uart_tx_fifo_source_payload_data;
wire uart_tx_fifo_re;
reg uart_tx_fifo_readable = 1'd0;
wire uart_tx_fifo_syncfifo_we;
wire uart_tx_fifo_syncfifo_writable;
wire uart_tx_fifo_syncfifo_re;
wire uart_tx_fifo_syncfifo_readable;
wire [9:0] uart_tx_fifo_syncfifo_din;
wire [9:0] uart_tx_fifo_syncfifo_dout;
reg [4:0] uart_tx_fifo_level0 = 5'd0;
reg uart_tx_fifo_replace = 1'd0;
reg [3:0] uart_tx_fifo_produce = 4'd0;
reg [3:0] uart_tx_fifo_consume = 4'd0;
reg [3:0] uart_tx_fifo_wrport_adr = 4'd0;
wire [9:0] uart_tx_fifo_wrport_dat_r;
wire uart_tx_fifo_wrport_we;
wire [9:0] uart_tx_fifo_wrport_dat_w;
wire uart_tx_fifo_do_read;
wire [3:0] uart_tx_fifo_rdport_adr;
wire [9:0] uart_tx_fifo_rdport_dat_r;
wire uart_tx_fifo_rdport_re;
wire [4:0] uart_tx_fifo_level1;
wire [7:0] uart_tx_fifo_fifo_in_payload_data;
wire uart_tx_fifo_fifo_in_first;
wire uart_tx_fifo_fifo_in_last;
wire [7:0] uart_tx_fifo_fifo_out_payload_data;
wire uart_tx_fifo_fifo_out_first;
wire uart_tx_fifo_fifo_out_last;
wire uart_rx_fifo_sink_valid;
wire uart_rx_fifo_sink_ready;
wire uart_rx_fifo_sink_first;
wire uart_rx_fifo_sink_last;
wire [7:0] uart_rx_fifo_sink_payload_data;
wire uart_rx_fifo_source_valid;
wire uart_rx_fifo_source_ready;
wire uart_rx_fifo_source_first;
wire uart_rx_fifo_source_last;
wire [7:0] uart_rx_fifo_source_payload_data;
wire uart_rx_fifo_re;
reg uart_rx_fifo_readable = 1'd0;
wire uart_rx_fifo_syncfifo_we;
wire uart_rx_fifo_syncfifo_writable;
wire uart_rx_fifo_syncfifo_re;
wire uart_rx_fifo_syncfifo_readable;
wire [9:0] uart_rx_fifo_syncfifo_din;
wire [9:0] uart_rx_fifo_syncfifo_dout;
reg [4:0] uart_rx_fifo_level0 = 5'd0;
reg uart_rx_fifo_replace = 1'd0;
reg [3:0] uart_rx_fifo_produce = 4'd0;
reg [3:0] uart_rx_fifo_consume = 4'd0;
reg [3:0] uart_rx_fifo_wrport_adr = 4'd0;
wire [9:0] uart_rx_fifo_wrport_dat_r;
wire uart_rx_fifo_wrport_we;
wire [9:0] uart_rx_fifo_wrport_dat_w;
wire uart_rx_fifo_do_read;
wire [3:0] uart_rx_fifo_rdport_adr;
wire [9:0] uart_rx_fifo_rdport_dat_r;
wire uart_rx_fifo_rdport_re;
wire [4:0] uart_rx_fifo_level1;
wire [7:0] uart_rx_fifo_fifo_in_payload_data;
wire uart_rx_fifo_fifo_in_first;
wire uart_rx_fifo_fifo_in_last;
wire [7:0] uart_rx_fifo_fifo_out_payload_data;
wire uart_rx_fifo_fifo_out_first;
wire uart_rx_fifo_fifo_out_last;
reg uart_reset = 1'd0;
reg [31:0] timer0_load_storage_full = 32'd0;
wire [31:0] timer0_load_storage;
reg timer0_load_re = 1'd0;
reg [31:0] timer0_reload_storage_full = 32'd0;
wire [31:0] timer0_reload_storage;
reg timer0_reload_re = 1'd0;
reg timer0_en_storage_full = 1'd0;
wire timer0_en_storage;
reg timer0_en_re = 1'd0;
wire timer0_update_value_re;
wire timer0_update_value_r;
reg timer0_update_value_w = 1'd0;
reg [31:0] timer0_value_status = 32'd0;
wire timer0_irq;
wire timer0_zero_status;
reg timer0_zero_pending = 1'd0;
wire timer0_zero_trigger;
reg timer0_zero_clear = 1'd0;
reg timer0_zero_old_trigger = 1'd0;
wire timer0_eventmanager_status_re;
wire timer0_eventmanager_status_r;
wire timer0_eventmanager_status_w;
wire timer0_eventmanager_pending_re;
wire timer0_eventmanager_pending_r;
wire timer0_eventmanager_pending_w;
reg timer0_eventmanager_storage_full = 1'd0;
wire timer0_eventmanager_storage;
reg timer0_eventmanager_re = 1'd0;
reg [31:0] timer0_value = 32'd0;
wire [29:0] interface0_wb_sdram_adr;
wire [31:0] interface0_wb_sdram_dat_w;
reg [31:0] interface0_wb_sdram_dat_r = 32'd0;
wire [3:0] interface0_wb_sdram_sel;
wire interface0_wb_sdram_cyc;
wire interface0_wb_sdram_stb;
reg interface0_wb_sdram_ack = 1'd0;
wire interface0_wb_sdram_we;
wire [2:0] interface0_wb_sdram_cti;
wire [1:0] interface0_wb_sdram_bte;
reg interface0_wb_sdram_err = 1'd0;
wire sys_clk;
wire sys_rst;
wire sdram_half_clk;
reg sdram_half_rst = 1'd0;
wire sdram_full_wr_clk;
wire sdram_full_rd_clk;
wire crg_clk100a;
wire crg_clk100b;
wire crg_unbuf_sdram_full;
wire crg_unbuf_sdram_half_a;
wire crg_unbuf_sdram_half_b;
wire crg_unbuf_unused_a;
wire crg_unbuf_unused_b;
wire crg_unbuf_sys;
wire crg_pll_lckd;
wire crg_pll_fb;
wire por_clk;
wire por_rst;
reg [10:0] crg_por = 11'd2047;
wire crg_clk4x_wr_strb;
wire crg_clk4x_rd_strb;
wire crg_clk_sdram_half_shifted;
wire [12:0] ddrphy_dfi_p0_address;
wire [1:0] ddrphy_dfi_p0_bank;
wire ddrphy_dfi_p0_cas_n;
wire ddrphy_dfi_p0_cs_n;
wire ddrphy_dfi_p0_ras_n;
wire ddrphy_dfi_p0_we_n;
wire ddrphy_dfi_p0_cke;
wire ddrphy_dfi_p0_odt;
wire ddrphy_dfi_p0_reset_n;
wire ddrphy_dfi_p0_act_n;
wire [31:0] ddrphy_dfi_p0_wrdata;
wire ddrphy_dfi_p0_wrdata_en;
wire [3:0] ddrphy_dfi_p0_wrdata_mask;
wire ddrphy_dfi_p0_rddata_en;
wire [31:0] ddrphy_dfi_p0_rddata;
wire ddrphy_dfi_p0_rddata_valid;
wire [12:0] ddrphy_dfi_p1_address;
wire [1:0] ddrphy_dfi_p1_bank;
wire ddrphy_dfi_p1_cas_n;
wire ddrphy_dfi_p1_cs_n;
wire ddrphy_dfi_p1_ras_n;
wire ddrphy_dfi_p1_we_n;
wire ddrphy_dfi_p1_cke;
wire ddrphy_dfi_p1_odt;
wire ddrphy_dfi_p1_reset_n;
wire ddrphy_dfi_p1_act_n;
wire [31:0] ddrphy_dfi_p1_wrdata;
wire ddrphy_dfi_p1_wrdata_en;
wire [3:0] ddrphy_dfi_p1_wrdata_mask;
wire ddrphy_dfi_p1_rddata_en;
wire [31:0] ddrphy_dfi_p1_rddata;
wire ddrphy_dfi_p1_rddata_valid;
wire ddrphy_clk4x_wr_strb;
wire ddrphy_clk4x_rd_strb;
reg ddrphy_phase_sel = 1'd0;
reg ddrphy_phase_half = 1'd0;
reg ddrphy_phase_sys = 1'd0;
reg [12:0] ddrphy_record0_address = 13'd0;
reg [1:0] ddrphy_record0_bank = 2'd0;
reg ddrphy_record0_cas_n = 1'd0;
reg ddrphy_record0_cs_n = 1'd0;
reg ddrphy_record0_ras_n = 1'd0;
reg ddrphy_record0_we_n = 1'd0;
reg ddrphy_record0_cke = 1'd0;
reg ddrphy_record0_odt = 1'd0;
reg ddrphy_record0_reset_n = 1'd0;
reg [12:0] ddrphy_record1_address = 13'd0;
reg [1:0] ddrphy_record1_bank = 2'd0;
reg ddrphy_record1_cas_n = 1'd0;
reg ddrphy_record1_cs_n = 1'd0;
reg ddrphy_record1_ras_n = 1'd0;
reg ddrphy_record1_we_n = 1'd0;
reg ddrphy_record1_cke = 1'd0;
reg ddrphy_record1_odt = 1'd0;
reg ddrphy_record1_reset_n = 1'd0;
reg [3:0] ddrphy_bitslip_cnt = 4'd0;
reg ddrphy_bitslip_inc = 1'd0;
wire ddrphy_sdram_half_clk_n;
reg ddrphy_postamble = 1'd0;
wire ddrphy_drive_dqs;
wire ddrphy_dqs_t_d0;
wire ddrphy_dqs_t_d1;
wire [1:0] ddrphy_dqs_o;
wire [1:0] ddrphy_dqs_t;
wire [31:0] ddrphy_record0_wrdata;
wire ddrphy_record0_wrdata_en;
wire [3:0] ddrphy_record0_wrdata_mask;
wire ddrphy_record0_rddata_en;
wire [31:0] ddrphy_record0_rddata;
wire [31:0] ddrphy_record1_wrdata;
wire ddrphy_record1_wrdata_en;
wire [3:0] ddrphy_record1_wrdata_mask;
wire ddrphy_record1_rddata_en;
wire [31:0] ddrphy_record1_rddata;
reg [31:0] ddrphy_record2_wrdata = 32'd0;
reg [3:0] ddrphy_record2_wrdata_mask = 4'd0;
reg [31:0] ddrphy_record3_wrdata = 32'd0;
reg [3:0] ddrphy_record3_wrdata_mask = 4'd0;
wire ddrphy_drive_dq;
wire ddrphy_drive_dq_n0;
reg ddrphy_drive_dq_n1 = 1'd0;
wire [15:0] ddrphy_dq_t;
wire [15:0] ddrphy_dq_o;
wire [15:0] ddrphy_dq_i;
wire ddrphy_wrdata_en;
reg ddrphy_wrdata_en_d = 1'd0;
reg [2:0] ddrphy_r_dfi_wrdata_en = 3'd0;
wire ddrphy_rddata_en;
reg [4:0] ddrphy_rddata_sr = 5'd0;
wire [12:0] sdram_inti_p0_address;
wire [1:0] sdram_inti_p0_bank;
reg sdram_inti_p0_cas_n = 1'd1;
reg sdram_inti_p0_cs_n = 1'd1;
reg sdram_inti_p0_ras_n = 1'd1;
reg sdram_inti_p0_we_n = 1'd1;
wire sdram_inti_p0_cke;
wire sdram_inti_p0_odt;
wire sdram_inti_p0_reset_n;
reg sdram_inti_p0_act_n = 1'd1;
wire [31:0] sdram_inti_p0_wrdata;
wire sdram_inti_p0_wrdata_en;
wire [3:0] sdram_inti_p0_wrdata_mask;
wire sdram_inti_p0_rddata_en;
reg [31:0] sdram_inti_p0_rddata = 32'd0;
reg sdram_inti_p0_rddata_valid = 1'd0;
wire [12:0] sdram_inti_p1_address;
wire [1:0] sdram_inti_p1_bank;
reg sdram_inti_p1_cas_n = 1'd1;
reg sdram_inti_p1_cs_n = 1'd1;
reg sdram_inti_p1_ras_n = 1'd1;
reg sdram_inti_p1_we_n = 1'd1;
wire sdram_inti_p1_cke;
wire sdram_inti_p1_odt;
wire sdram_inti_p1_reset_n;
reg sdram_inti_p1_act_n = 1'd1;
wire [31:0] sdram_inti_p1_wrdata;
wire sdram_inti_p1_wrdata_en;
wire [3:0] sdram_inti_p1_wrdata_mask;
wire sdram_inti_p1_rddata_en;
reg [31:0] sdram_inti_p1_rddata = 32'd0;
reg sdram_inti_p1_rddata_valid = 1'd0;
wire [12:0] sdram_slave_p0_address;
wire [1:0] sdram_slave_p0_bank;
wire sdram_slave_p0_cas_n;
wire sdram_slave_p0_cs_n;
wire sdram_slave_p0_ras_n;
wire sdram_slave_p0_we_n;
wire sdram_slave_p0_cke;
wire sdram_slave_p0_odt;
wire sdram_slave_p0_reset_n;
wire sdram_slave_p0_act_n;
wire [31:0] sdram_slave_p0_wrdata;
wire sdram_slave_p0_wrdata_en;
wire [3:0] sdram_slave_p0_wrdata_mask;
wire sdram_slave_p0_rddata_en;
reg [31:0] sdram_slave_p0_rddata = 32'd0;
reg sdram_slave_p0_rddata_valid = 1'd0;
wire [12:0] sdram_slave_p1_address;
wire [1:0] sdram_slave_p1_bank;
wire sdram_slave_p1_cas_n;
wire sdram_slave_p1_cs_n;
wire sdram_slave_p1_ras_n;
wire sdram_slave_p1_we_n;
wire sdram_slave_p1_cke;
wire sdram_slave_p1_odt;
wire sdram_slave_p1_reset_n;
wire sdram_slave_p1_act_n;
wire [31:0] sdram_slave_p1_wrdata;
wire sdram_slave_p1_wrdata_en;
wire [3:0] sdram_slave_p1_wrdata_mask;
wire sdram_slave_p1_rddata_en;
reg [31:0] sdram_slave_p1_rddata = 32'd0;
reg sdram_slave_p1_rddata_valid = 1'd0;
reg [12:0] sdram_master_p0_address = 13'd0;
reg [1:0] sdram_master_p0_bank = 2'd0;
reg sdram_master_p0_cas_n = 1'd1;
reg sdram_master_p0_cs_n = 1'd1;
reg sdram_master_p0_ras_n = 1'd1;
reg sdram_master_p0_we_n = 1'd1;
reg sdram_master_p0_cke = 1'd0;
reg sdram_master_p0_odt = 1'd0;
reg sdram_master_p0_reset_n = 1'd0;
reg sdram_master_p0_act_n = 1'd1;
reg [31:0] sdram_master_p0_wrdata = 32'd0;
reg sdram_master_p0_wrdata_en = 1'd0;
reg [3:0] sdram_master_p0_wrdata_mask = 4'd0;
reg sdram_master_p0_rddata_en = 1'd0;
wire [31:0] sdram_master_p0_rddata;
wire sdram_master_p0_rddata_valid;
reg [12:0] sdram_master_p1_address = 13'd0;
reg [1:0] sdram_master_p1_bank = 2'd0;
reg sdram_master_p1_cas_n = 1'd1;
reg sdram_master_p1_cs_n = 1'd1;
reg sdram_master_p1_ras_n = 1'd1;
reg sdram_master_p1_we_n = 1'd1;
reg sdram_master_p1_cke = 1'd0;
reg sdram_master_p1_odt = 1'd0;
reg sdram_master_p1_reset_n = 1'd0;
reg sdram_master_p1_act_n = 1'd1;
reg [31:0] sdram_master_p1_wrdata = 32'd0;
reg sdram_master_p1_wrdata_en = 1'd0;
reg [3:0] sdram_master_p1_wrdata_mask = 4'd0;
reg sdram_master_p1_rddata_en = 1'd0;
wire [31:0] sdram_master_p1_rddata;
wire sdram_master_p1_rddata_valid;
reg [3:0] sdram_storage_full = 4'd0;
wire [3:0] sdram_storage;
reg sdram_re = 1'd0;
reg [5:0] sdram_phaseinjector0_command_storage_full = 6'd0;
wire [5:0] sdram_phaseinjector0_command_storage;
reg sdram_phaseinjector0_command_re = 1'd0;
wire sdram_phaseinjector0_command_issue_re;
wire sdram_phaseinjector0_command_issue_r;
reg sdram_phaseinjector0_command_issue_w = 1'd0;
reg [12:0] sdram_phaseinjector0_address_storage_full = 13'd0;
wire [12:0] sdram_phaseinjector0_address_storage;
reg sdram_phaseinjector0_address_re = 1'd0;
reg [1:0] sdram_phaseinjector0_baddress_storage_full = 2'd0;
wire [1:0] sdram_phaseinjector0_baddress_storage;
reg sdram_phaseinjector0_baddress_re = 1'd0;
reg [31:0] sdram_phaseinjector0_wrdata_storage_full = 32'd0;
wire [31:0] sdram_phaseinjector0_wrdata_storage;
reg sdram_phaseinjector0_wrdata_re = 1'd0;
reg [31:0] sdram_phaseinjector0_status = 32'd0;
reg [5:0] sdram_phaseinjector1_command_storage_full = 6'd0;
wire [5:0] sdram_phaseinjector1_command_storage;
reg sdram_phaseinjector1_command_re = 1'd0;
wire sdram_phaseinjector1_command_issue_re;
wire sdram_phaseinjector1_command_issue_r;
reg sdram_phaseinjector1_command_issue_w = 1'd0;
reg [12:0] sdram_phaseinjector1_address_storage_full = 13'd0;
wire [12:0] sdram_phaseinjector1_address_storage;
reg sdram_phaseinjector1_address_re = 1'd0;
reg [1:0] sdram_phaseinjector1_baddress_storage_full = 2'd0;
wire [1:0] sdram_phaseinjector1_baddress_storage;
reg sdram_phaseinjector1_baddress_re = 1'd0;
reg [31:0] sdram_phaseinjector1_wrdata_storage_full = 32'd0;
wire [31:0] sdram_phaseinjector1_wrdata_storage;
reg sdram_phaseinjector1_wrdata_re = 1'd0;
reg [31:0] sdram_phaseinjector1_status = 32'd0;
reg [12:0] sdram_dfi_p0_address = 13'd0;
reg [1:0] sdram_dfi_p0_bank = 2'd0;
reg sdram_dfi_p0_cas_n = 1'd1;
reg sdram_dfi_p0_cs_n = 1'd1;
reg sdram_dfi_p0_ras_n = 1'd1;
reg sdram_dfi_p0_we_n = 1'd1;
wire sdram_dfi_p0_cke;
wire sdram_dfi_p0_odt;
wire sdram_dfi_p0_reset_n;
reg sdram_dfi_p0_act_n = 1'd1;
wire [31:0] sdram_dfi_p0_wrdata;
reg sdram_dfi_p0_wrdata_en = 1'd0;
wire [3:0] sdram_dfi_p0_wrdata_mask;
reg sdram_dfi_p0_rddata_en = 1'd0;
wire [31:0] sdram_dfi_p0_rddata;
wire sdram_dfi_p0_rddata_valid;
reg [12:0] sdram_dfi_p1_address = 13'd0;
reg [1:0] sdram_dfi_p1_bank = 2'd0;
reg sdram_dfi_p1_cas_n = 1'd1;
reg sdram_dfi_p1_cs_n = 1'd1;
reg sdram_dfi_p1_ras_n = 1'd1;
reg sdram_dfi_p1_we_n = 1'd1;
wire sdram_dfi_p1_cke;
wire sdram_dfi_p1_odt;
wire sdram_dfi_p1_reset_n;
reg sdram_dfi_p1_act_n = 1'd1;
wire [31:0] sdram_dfi_p1_wrdata;
reg sdram_dfi_p1_wrdata_en = 1'd0;
wire [3:0] sdram_dfi_p1_wrdata_mask;
reg sdram_dfi_p1_rddata_en = 1'd0;
wire [31:0] sdram_dfi_p1_rddata;
wire sdram_dfi_p1_rddata_valid;
wire sdram_interface_bank0_valid;
wire sdram_interface_bank0_ready;
wire sdram_interface_bank0_we;
wire [20:0] sdram_interface_bank0_addr;
wire sdram_interface_bank0_lock;
wire sdram_interface_bank0_wdata_ready;
wire sdram_interface_bank0_rdata_valid;
wire sdram_interface_bank1_valid;
wire sdram_interface_bank1_ready;
wire sdram_interface_bank1_we;
wire [20:0] sdram_interface_bank1_addr;
wire sdram_interface_bank1_lock;
wire sdram_interface_bank1_wdata_ready;
wire sdram_interface_bank1_rdata_valid;
wire sdram_interface_bank2_valid;
wire sdram_interface_bank2_ready;
wire sdram_interface_bank2_we;
wire [20:0] sdram_interface_bank2_addr;
wire sdram_interface_bank2_lock;
wire sdram_interface_bank2_wdata_ready;
wire sdram_interface_bank2_rdata_valid;
wire sdram_interface_bank3_valid;
wire sdram_interface_bank3_ready;
wire sdram_interface_bank3_we;
wire [20:0] sdram_interface_bank3_addr;
wire sdram_interface_bank3_lock;
wire sdram_interface_bank3_wdata_ready;
wire sdram_interface_bank3_rdata_valid;
reg [63:0] sdram_interface_wdata = 64'd0;
reg [7:0] sdram_interface_wdata_we = 8'd0;
wire [63:0] sdram_interface_rdata;
reg sdram_cmd_valid = 1'd0;
reg sdram_cmd_ready = 1'd0;
reg sdram_cmd_last = 1'd0;
reg [12:0] sdram_cmd_payload_a = 13'd0;
reg [1:0] sdram_cmd_payload_ba = 2'd0;
reg sdram_cmd_payload_cas = 1'd0;
reg sdram_cmd_payload_ras = 1'd0;
reg sdram_cmd_payload_we = 1'd0;
reg sdram_cmd_payload_is_read = 1'd0;
reg sdram_cmd_payload_is_write = 1'd0;
wire sdram_timer_wait;
wire sdram_timer_done;
reg [7:0] sdram_timer_count = 8'd245;
reg sdram_timer_load = 1'd0;
reg [7:0] sdram_timer_load_count = 8'd0;
wire sdram_timer_reset;
reg sdram_generator_start = 1'd0;
reg sdram_generator_done = 1'd0;
reg [2:0] sdram_generator_counter = 3'd0;
wire sdram_bankmachine0_req_valid;
wire sdram_bankmachine0_req_ready;
wire sdram_bankmachine0_req_we;
wire [20:0] sdram_bankmachine0_req_addr;
wire sdram_bankmachine0_req_lock;
reg sdram_bankmachine0_req_wdata_ready = 1'd0;
reg sdram_bankmachine0_req_rdata_valid = 1'd0;
wire sdram_bankmachine0_refresh_req;
reg sdram_bankmachine0_refresh_gnt = 1'd0;
reg sdram_bankmachine0_cmd_valid = 1'd0;
reg sdram_bankmachine0_cmd_ready = 1'd0;
reg [12:0] sdram_bankmachine0_cmd_payload_a = 13'd0;
wire [1:0] sdram_bankmachine0_cmd_payload_ba;
reg sdram_bankmachine0_cmd_payload_cas = 1'd0;
reg sdram_bankmachine0_cmd_payload_ras = 1'd0;
reg sdram_bankmachine0_cmd_payload_we = 1'd0;
reg sdram_bankmachine0_cmd_payload_is_cmd = 1'd0;
reg sdram_bankmachine0_cmd_payload_is_read = 1'd0;
reg sdram_bankmachine0_cmd_payload_is_write = 1'd0;
reg sdram_bankmachine0_auto_precharge = 1'd0;
wire sdram_bankmachine0_cmd_buffer_lookahead_sink_valid;
wire sdram_bankmachine0_cmd_buffer_lookahead_sink_ready;
reg sdram_bankmachine0_cmd_buffer_lookahead_sink_first = 1'd0;
reg sdram_bankmachine0_cmd_buffer_lookahead_sink_last = 1'd0;
wire sdram_bankmachine0_cmd_buffer_lookahead_sink_payload_we;
wire [20:0] sdram_bankmachine0_cmd_buffer_lookahead_sink_payload_addr;
wire sdram_bankmachine0_cmd_buffer_lookahead_source_valid;
wire sdram_bankmachine0_cmd_buffer_lookahead_source_ready;
wire sdram_bankmachine0_cmd_buffer_lookahead_source_first;
wire sdram_bankmachine0_cmd_buffer_lookahead_source_last;
wire sdram_bankmachine0_cmd_buffer_lookahead_source_payload_we;
wire [20:0] sdram_bankmachine0_cmd_buffer_lookahead_source_payload_addr;
wire sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_we;
wire sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_writable;
wire sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_re;
wire sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_readable;
wire [23:0] sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_din;
wire [23:0] sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_dout;
reg [3:0] sdram_bankmachine0_cmd_buffer_lookahead_level = 4'd0;
reg sdram_bankmachine0_cmd_buffer_lookahead_replace = 1'd0;
reg [2:0] sdram_bankmachine0_cmd_buffer_lookahead_produce = 3'd0;
reg [2:0] sdram_bankmachine0_cmd_buffer_lookahead_consume = 3'd0;
reg [2:0] sdram_bankmachine0_cmd_buffer_lookahead_wrport_adr = 3'd0;
wire [23:0] sdram_bankmachine0_cmd_buffer_lookahead_wrport_dat_r;
wire sdram_bankmachine0_cmd_buffer_lookahead_wrport_we;
wire [23:0] sdram_bankmachine0_cmd_buffer_lookahead_wrport_dat_w;
wire sdram_bankmachine0_cmd_buffer_lookahead_do_read;
wire [2:0] sdram_bankmachine0_cmd_buffer_lookahead_rdport_adr;
wire [23:0] sdram_bankmachine0_cmd_buffer_lookahead_rdport_dat_r;
wire sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_payload_we;
wire [20:0] sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_payload_addr;
wire sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_first;
wire sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_last;
wire sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_payload_we;
wire [20:0] sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_payload_addr;
wire sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_first;
wire sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_last;
wire sdram_bankmachine0_cmd_buffer_sink_valid;
wire sdram_bankmachine0_cmd_buffer_sink_ready;
wire sdram_bankmachine0_cmd_buffer_sink_first;
wire sdram_bankmachine0_cmd_buffer_sink_last;
wire sdram_bankmachine0_cmd_buffer_sink_payload_we;
wire [20:0] sdram_bankmachine0_cmd_buffer_sink_payload_addr;
wire sdram_bankmachine0_cmd_buffer_source_valid;
wire sdram_bankmachine0_cmd_buffer_source_ready;
wire sdram_bankmachine0_cmd_buffer_source_first;
wire sdram_bankmachine0_cmd_buffer_source_last;
reg sdram_bankmachine0_cmd_buffer_source_payload_we = 1'd0;
reg [20:0] sdram_bankmachine0_cmd_buffer_source_payload_addr = 21'd0;
wire sdram_bankmachine0_cmd_buffer_pipe_ce;
wire sdram_bankmachine0_cmd_buffer_busy;
reg sdram_bankmachine0_cmd_buffer_valid_n = 1'd0;
reg sdram_bankmachine0_cmd_buffer_first_n = 1'd0;
reg sdram_bankmachine0_cmd_buffer_last_n = 1'd0;
reg [12:0] sdram_bankmachine0_row = 13'd0;
reg sdram_bankmachine0_row_opened = 1'd0;
wire sdram_bankmachine0_row_hit;
reg sdram_bankmachine0_row_open = 1'd0;
reg sdram_bankmachine0_row_close = 1'd0;
reg sdram_bankmachine0_row_col_n_addr_sel = 1'd0;
wire sdram_bankmachine0_twtpcon_valid;
(* register_balancing = "no" *) reg sdram_bankmachine0_twtpcon_ready = 1'd1;
reg [1:0] sdram_bankmachine0_twtpcon_count = 2'd0;
wire sdram_bankmachine0_trccon_valid;
(* register_balancing = "no" *) reg sdram_bankmachine0_trccon_ready = 1'd1;
wire sdram_bankmachine0_trascon_valid;
(* register_balancing = "no" *) reg sdram_bankmachine0_trascon_ready = 1'd1;
wire sdram_bankmachine1_req_valid;
wire sdram_bankmachine1_req_ready;
wire sdram_bankmachine1_req_we;
wire [20:0] sdram_bankmachine1_req_addr;
wire sdram_bankmachine1_req_lock;
reg sdram_bankmachine1_req_wdata_ready = 1'd0;
reg sdram_bankmachine1_req_rdata_valid = 1'd0;
wire sdram_bankmachine1_refresh_req;
reg sdram_bankmachine1_refresh_gnt = 1'd0;
reg sdram_bankmachine1_cmd_valid = 1'd0;
reg sdram_bankmachine1_cmd_ready = 1'd0;
reg [12:0] sdram_bankmachine1_cmd_payload_a = 13'd0;
wire [1:0] sdram_bankmachine1_cmd_payload_ba;
reg sdram_bankmachine1_cmd_payload_cas = 1'd0;
reg sdram_bankmachine1_cmd_payload_ras = 1'd0;
reg sdram_bankmachine1_cmd_payload_we = 1'd0;
reg sdram_bankmachine1_cmd_payload_is_cmd = 1'd0;
reg sdram_bankmachine1_cmd_payload_is_read = 1'd0;
reg sdram_bankmachine1_cmd_payload_is_write = 1'd0;
reg sdram_bankmachine1_auto_precharge = 1'd0;
wire sdram_bankmachine1_cmd_buffer_lookahead_sink_valid;
wire sdram_bankmachine1_cmd_buffer_lookahead_sink_ready;
reg sdram_bankmachine1_cmd_buffer_lookahead_sink_first = 1'd0;
reg sdram_bankmachine1_cmd_buffer_lookahead_sink_last = 1'd0;
wire sdram_bankmachine1_cmd_buffer_lookahead_sink_payload_we;
wire [20:0] sdram_bankmachine1_cmd_buffer_lookahead_sink_payload_addr;
wire sdram_bankmachine1_cmd_buffer_lookahead_source_valid;
wire sdram_bankmachine1_cmd_buffer_lookahead_source_ready;
wire sdram_bankmachine1_cmd_buffer_lookahead_source_first;
wire sdram_bankmachine1_cmd_buffer_lookahead_source_last;
wire sdram_bankmachine1_cmd_buffer_lookahead_source_payload_we;
wire [20:0] sdram_bankmachine1_cmd_buffer_lookahead_source_payload_addr;
wire sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_we;
wire sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_writable;
wire sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_re;
wire sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_readable;
wire [23:0] sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_din;
wire [23:0] sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_dout;
reg [3:0] sdram_bankmachine1_cmd_buffer_lookahead_level = 4'd0;
reg sdram_bankmachine1_cmd_buffer_lookahead_replace = 1'd0;
reg [2:0] sdram_bankmachine1_cmd_buffer_lookahead_produce = 3'd0;
reg [2:0] sdram_bankmachine1_cmd_buffer_lookahead_consume = 3'd0;
reg [2:0] sdram_bankmachine1_cmd_buffer_lookahead_wrport_adr = 3'd0;
wire [23:0] sdram_bankmachine1_cmd_buffer_lookahead_wrport_dat_r;
wire sdram_bankmachine1_cmd_buffer_lookahead_wrport_we;
wire [23:0] sdram_bankmachine1_cmd_buffer_lookahead_wrport_dat_w;
wire sdram_bankmachine1_cmd_buffer_lookahead_do_read;
wire [2:0] sdram_bankmachine1_cmd_buffer_lookahead_rdport_adr;
wire [23:0] sdram_bankmachine1_cmd_buffer_lookahead_rdport_dat_r;
wire sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_payload_we;
wire [20:0] sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_payload_addr;
wire sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_first;
wire sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_last;
wire sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_payload_we;
wire [20:0] sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_payload_addr;
wire sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_first;
wire sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_last;
wire sdram_bankmachine1_cmd_buffer_sink_valid;
wire sdram_bankmachine1_cmd_buffer_sink_ready;
wire sdram_bankmachine1_cmd_buffer_sink_first;
wire sdram_bankmachine1_cmd_buffer_sink_last;
wire sdram_bankmachine1_cmd_buffer_sink_payload_we;
wire [20:0] sdram_bankmachine1_cmd_buffer_sink_payload_addr;
wire sdram_bankmachine1_cmd_buffer_source_valid;
wire sdram_bankmachine1_cmd_buffer_source_ready;
wire sdram_bankmachine1_cmd_buffer_source_first;
wire sdram_bankmachine1_cmd_buffer_source_last;
reg sdram_bankmachine1_cmd_buffer_source_payload_we = 1'd0;
reg [20:0] sdram_bankmachine1_cmd_buffer_source_payload_addr = 21'd0;
wire sdram_bankmachine1_cmd_buffer_pipe_ce;
wire sdram_bankmachine1_cmd_buffer_busy;
reg sdram_bankmachine1_cmd_buffer_valid_n = 1'd0;
reg sdram_bankmachine1_cmd_buffer_first_n = 1'd0;
reg sdram_bankmachine1_cmd_buffer_last_n = 1'd0;
reg [12:0] sdram_bankmachine1_row = 13'd0;
reg sdram_bankmachine1_row_opened = 1'd0;
wire sdram_bankmachine1_row_hit;
reg sdram_bankmachine1_row_open = 1'd0;
reg sdram_bankmachine1_row_close = 1'd0;
reg sdram_bankmachine1_row_col_n_addr_sel = 1'd0;
wire sdram_bankmachine1_twtpcon_valid;
(* register_balancing = "no" *) reg sdram_bankmachine1_twtpcon_ready = 1'd1;
reg [1:0] sdram_bankmachine1_twtpcon_count = 2'd0;
wire sdram_bankmachine1_trccon_valid;
(* register_balancing = "no" *) reg sdram_bankmachine1_trccon_ready = 1'd1;
wire sdram_bankmachine1_trascon_valid;
(* register_balancing = "no" *) reg sdram_bankmachine1_trascon_ready = 1'd1;
wire sdram_bankmachine2_req_valid;
wire sdram_bankmachine2_req_ready;
wire sdram_bankmachine2_req_we;
wire [20:0] sdram_bankmachine2_req_addr;
wire sdram_bankmachine2_req_lock;
reg sdram_bankmachine2_req_wdata_ready = 1'd0;
reg sdram_bankmachine2_req_rdata_valid = 1'd0;
wire sdram_bankmachine2_refresh_req;
reg sdram_bankmachine2_refresh_gnt = 1'd0;
reg sdram_bankmachine2_cmd_valid = 1'd0;
reg sdram_bankmachine2_cmd_ready = 1'd0;
reg [12:0] sdram_bankmachine2_cmd_payload_a = 13'd0;
wire [1:0] sdram_bankmachine2_cmd_payload_ba;
reg sdram_bankmachine2_cmd_payload_cas = 1'd0;
reg sdram_bankmachine2_cmd_payload_ras = 1'd0;
reg sdram_bankmachine2_cmd_payload_we = 1'd0;
reg sdram_bankmachine2_cmd_payload_is_cmd = 1'd0;
reg sdram_bankmachine2_cmd_payload_is_read = 1'd0;
reg sdram_bankmachine2_cmd_payload_is_write = 1'd0;
reg sdram_bankmachine2_auto_precharge = 1'd0;
wire sdram_bankmachine2_cmd_buffer_lookahead_sink_valid;
wire sdram_bankmachine2_cmd_buffer_lookahead_sink_ready;
reg sdram_bankmachine2_cmd_buffer_lookahead_sink_first = 1'd0;
reg sdram_bankmachine2_cmd_buffer_lookahead_sink_last = 1'd0;
wire sdram_bankmachine2_cmd_buffer_lookahead_sink_payload_we;
wire [20:0] sdram_bankmachine2_cmd_buffer_lookahead_sink_payload_addr;
wire sdram_bankmachine2_cmd_buffer_lookahead_source_valid;
wire sdram_bankmachine2_cmd_buffer_lookahead_source_ready;
wire sdram_bankmachine2_cmd_buffer_lookahead_source_first;
wire sdram_bankmachine2_cmd_buffer_lookahead_source_last;
wire sdram_bankmachine2_cmd_buffer_lookahead_source_payload_we;
wire [20:0] sdram_bankmachine2_cmd_buffer_lookahead_source_payload_addr;
wire sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_we;
wire sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_writable;
wire sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_re;
wire sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_readable;
wire [23:0] sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_din;
wire [23:0] sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_dout;
reg [3:0] sdram_bankmachine2_cmd_buffer_lookahead_level = 4'd0;
reg sdram_bankmachine2_cmd_buffer_lookahead_replace = 1'd0;
reg [2:0] sdram_bankmachine2_cmd_buffer_lookahead_produce = 3'd0;
reg [2:0] sdram_bankmachine2_cmd_buffer_lookahead_consume = 3'd0;
reg [2:0] sdram_bankmachine2_cmd_buffer_lookahead_wrport_adr = 3'd0;
wire [23:0] sdram_bankmachine2_cmd_buffer_lookahead_wrport_dat_r;
wire sdram_bankmachine2_cmd_buffer_lookahead_wrport_we;
wire [23:0] sdram_bankmachine2_cmd_buffer_lookahead_wrport_dat_w;
wire sdram_bankmachine2_cmd_buffer_lookahead_do_read;
wire [2:0] sdram_bankmachine2_cmd_buffer_lookahead_rdport_adr;
wire [23:0] sdram_bankmachine2_cmd_buffer_lookahead_rdport_dat_r;
wire sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_payload_we;
wire [20:0] sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_payload_addr;
wire sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_first;
wire sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_last;
wire sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_payload_we;
wire [20:0] sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_payload_addr;
wire sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_first;
wire sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_last;
wire sdram_bankmachine2_cmd_buffer_sink_valid;
wire sdram_bankmachine2_cmd_buffer_sink_ready;
wire sdram_bankmachine2_cmd_buffer_sink_first;
wire sdram_bankmachine2_cmd_buffer_sink_last;
wire sdram_bankmachine2_cmd_buffer_sink_payload_we;
wire [20:0] sdram_bankmachine2_cmd_buffer_sink_payload_addr;
wire sdram_bankmachine2_cmd_buffer_source_valid;
wire sdram_bankmachine2_cmd_buffer_source_ready;
wire sdram_bankmachine2_cmd_buffer_source_first;
wire sdram_bankmachine2_cmd_buffer_source_last;
reg sdram_bankmachine2_cmd_buffer_source_payload_we = 1'd0;
reg [20:0] sdram_bankmachine2_cmd_buffer_source_payload_addr = 21'd0;
wire sdram_bankmachine2_cmd_buffer_pipe_ce;
wire sdram_bankmachine2_cmd_buffer_busy;
reg sdram_bankmachine2_cmd_buffer_valid_n = 1'd0;
reg sdram_bankmachine2_cmd_buffer_first_n = 1'd0;
reg sdram_bankmachine2_cmd_buffer_last_n = 1'd0;
reg [12:0] sdram_bankmachine2_row = 13'd0;
reg sdram_bankmachine2_row_opened = 1'd0;
wire sdram_bankmachine2_row_hit;
reg sdram_bankmachine2_row_open = 1'd0;
reg sdram_bankmachine2_row_close = 1'd0;
reg sdram_bankmachine2_row_col_n_addr_sel = 1'd0;
wire sdram_bankmachine2_twtpcon_valid;
(* register_balancing = "no" *) reg sdram_bankmachine2_twtpcon_ready = 1'd1;
reg [1:0] sdram_bankmachine2_twtpcon_count = 2'd0;
wire sdram_bankmachine2_trccon_valid;
(* register_balancing = "no" *) reg sdram_bankmachine2_trccon_ready = 1'd1;
wire sdram_bankmachine2_trascon_valid;
(* register_balancing = "no" *) reg sdram_bankmachine2_trascon_ready = 1'd1;
wire sdram_bankmachine3_req_valid;
wire sdram_bankmachine3_req_ready;
wire sdram_bankmachine3_req_we;
wire [20:0] sdram_bankmachine3_req_addr;
wire sdram_bankmachine3_req_lock;
reg sdram_bankmachine3_req_wdata_ready = 1'd0;
reg sdram_bankmachine3_req_rdata_valid = 1'd0;
wire sdram_bankmachine3_refresh_req;
reg sdram_bankmachine3_refresh_gnt = 1'd0;
reg sdram_bankmachine3_cmd_valid = 1'd0;
reg sdram_bankmachine3_cmd_ready = 1'd0;
reg [12:0] sdram_bankmachine3_cmd_payload_a = 13'd0;
wire [1:0] sdram_bankmachine3_cmd_payload_ba;
reg sdram_bankmachine3_cmd_payload_cas = 1'd0;
reg sdram_bankmachine3_cmd_payload_ras = 1'd0;
reg sdram_bankmachine3_cmd_payload_we = 1'd0;
reg sdram_bankmachine3_cmd_payload_is_cmd = 1'd0;
reg sdram_bankmachine3_cmd_payload_is_read = 1'd0;
reg sdram_bankmachine3_cmd_payload_is_write = 1'd0;
reg sdram_bankmachine3_auto_precharge = 1'd0;
wire sdram_bankmachine3_cmd_buffer_lookahead_sink_valid;
wire sdram_bankmachine3_cmd_buffer_lookahead_sink_ready;
reg sdram_bankmachine3_cmd_buffer_lookahead_sink_first = 1'd0;
reg sdram_bankmachine3_cmd_buffer_lookahead_sink_last = 1'd0;
wire sdram_bankmachine3_cmd_buffer_lookahead_sink_payload_we;
wire [20:0] sdram_bankmachine3_cmd_buffer_lookahead_sink_payload_addr;
wire sdram_bankmachine3_cmd_buffer_lookahead_source_valid;
wire sdram_bankmachine3_cmd_buffer_lookahead_source_ready;
wire sdram_bankmachine3_cmd_buffer_lookahead_source_first;
wire sdram_bankmachine3_cmd_buffer_lookahead_source_last;
wire sdram_bankmachine3_cmd_buffer_lookahead_source_payload_we;
wire [20:0] sdram_bankmachine3_cmd_buffer_lookahead_source_payload_addr;
wire sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_we;
wire sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_writable;
wire sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_re;
wire sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_readable;
wire [23:0] sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_din;
wire [23:0] sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_dout;
reg [3:0] sdram_bankmachine3_cmd_buffer_lookahead_level = 4'd0;
reg sdram_bankmachine3_cmd_buffer_lookahead_replace = 1'd0;
reg [2:0] sdram_bankmachine3_cmd_buffer_lookahead_produce = 3'd0;
reg [2:0] sdram_bankmachine3_cmd_buffer_lookahead_consume = 3'd0;
reg [2:0] sdram_bankmachine3_cmd_buffer_lookahead_wrport_adr = 3'd0;
wire [23:0] sdram_bankmachine3_cmd_buffer_lookahead_wrport_dat_r;
wire sdram_bankmachine3_cmd_buffer_lookahead_wrport_we;
wire [23:0] sdram_bankmachine3_cmd_buffer_lookahead_wrport_dat_w;
wire sdram_bankmachine3_cmd_buffer_lookahead_do_read;
wire [2:0] sdram_bankmachine3_cmd_buffer_lookahead_rdport_adr;
wire [23:0] sdram_bankmachine3_cmd_buffer_lookahead_rdport_dat_r;
wire sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_payload_we;
wire [20:0] sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_payload_addr;
wire sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_first;
wire sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_last;
wire sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_payload_we;
wire [20:0] sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_payload_addr;
wire sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_first;
wire sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_last;
wire sdram_bankmachine3_cmd_buffer_sink_valid;
wire sdram_bankmachine3_cmd_buffer_sink_ready;
wire sdram_bankmachine3_cmd_buffer_sink_first;
wire sdram_bankmachine3_cmd_buffer_sink_last;
wire sdram_bankmachine3_cmd_buffer_sink_payload_we;
wire [20:0] sdram_bankmachine3_cmd_buffer_sink_payload_addr;
wire sdram_bankmachine3_cmd_buffer_source_valid;
wire sdram_bankmachine3_cmd_buffer_source_ready;
wire sdram_bankmachine3_cmd_buffer_source_first;
wire sdram_bankmachine3_cmd_buffer_source_last;
reg sdram_bankmachine3_cmd_buffer_source_payload_we = 1'd0;
reg [20:0] sdram_bankmachine3_cmd_buffer_source_payload_addr = 21'd0;
wire sdram_bankmachine3_cmd_buffer_pipe_ce;
wire sdram_bankmachine3_cmd_buffer_busy;
reg sdram_bankmachine3_cmd_buffer_valid_n = 1'd0;
reg sdram_bankmachine3_cmd_buffer_first_n = 1'd0;
reg sdram_bankmachine3_cmd_buffer_last_n = 1'd0;
reg [12:0] sdram_bankmachine3_row = 13'd0;
reg sdram_bankmachine3_row_opened = 1'd0;
wire sdram_bankmachine3_row_hit;
reg sdram_bankmachine3_row_open = 1'd0;
reg sdram_bankmachine3_row_close = 1'd0;
reg sdram_bankmachine3_row_col_n_addr_sel = 1'd0;
wire sdram_bankmachine3_twtpcon_valid;
(* register_balancing = "no" *) reg sdram_bankmachine3_twtpcon_ready = 1'd1;
reg [1:0] sdram_bankmachine3_twtpcon_count = 2'd0;
wire sdram_bankmachine3_trccon_valid;
(* register_balancing = "no" *) reg sdram_bankmachine3_trccon_ready = 1'd1;
wire sdram_bankmachine3_trascon_valid;
(* register_balancing = "no" *) reg sdram_bankmachine3_trascon_ready = 1'd1;
wire sdram_ras_allowed;
wire sdram_cas_allowed;
reg sdram_choose_cmd_want_reads = 1'd0;
reg sdram_choose_cmd_want_writes = 1'd0;
reg sdram_choose_cmd_want_cmds = 1'd0;
reg sdram_choose_cmd_want_activates = 1'd0;
wire sdram_choose_cmd_cmd_valid;
reg sdram_choose_cmd_cmd_ready = 1'd0;
wire [12:0] sdram_choose_cmd_cmd_payload_a;
wire [1:0] sdram_choose_cmd_cmd_payload_ba;
reg sdram_choose_cmd_cmd_payload_cas = 1'd0;
reg sdram_choose_cmd_cmd_payload_ras = 1'd0;
reg sdram_choose_cmd_cmd_payload_we = 1'd0;
wire sdram_choose_cmd_cmd_payload_is_cmd;
wire sdram_choose_cmd_cmd_payload_is_read;
wire sdram_choose_cmd_cmd_payload_is_write;
reg [3:0] sdram_choose_cmd_valids = 4'd0;
wire [3:0] sdram_choose_cmd_request;
reg [1:0] sdram_choose_cmd_grant = 2'd0;
wire sdram_choose_cmd_ce;
reg sdram_choose_req_want_reads = 1'd0;
reg sdram_choose_req_want_writes = 1'd0;
reg sdram_choose_req_want_cmds = 1'd0;
reg sdram_choose_req_want_activates = 1'd0;
wire sdram_choose_req_cmd_valid;
reg sdram_choose_req_cmd_ready = 1'd0;
wire [12:0] sdram_choose_req_cmd_payload_a;
wire [1:0] sdram_choose_req_cmd_payload_ba;
reg sdram_choose_req_cmd_payload_cas = 1'd0;
reg sdram_choose_req_cmd_payload_ras = 1'd0;
reg sdram_choose_req_cmd_payload_we = 1'd0;
wire sdram_choose_req_cmd_payload_is_cmd;
wire sdram_choose_req_cmd_payload_is_read;
wire sdram_choose_req_cmd_payload_is_write;
reg [3:0] sdram_choose_req_valids = 4'd0;
wire [3:0] sdram_choose_req_request;
reg [1:0] sdram_choose_req_grant = 2'd0;
wire sdram_choose_req_ce;
reg [12:0] sdram_nop_a = 13'd0;
reg [1:0] sdram_nop_ba = 2'd0;
reg [1:0] sdram_steerer_sel0 = 2'd0;
reg [1:0] sdram_steerer_sel1 = 2'd0;
reg sdram_steerer0 = 1'd1;
reg sdram_steerer1 = 1'd1;
reg sdram_steerer2 = 1'd1;
reg sdram_steerer3 = 1'd1;
wire sdram_trrdcon_valid;
(* register_balancing = "no" *) reg sdram_trrdcon_ready = 1'd1;
wire sdram_tfawcon_valid;
(* register_balancing = "no" *) reg sdram_tfawcon_ready = 1'd1;
wire sdram_tccdcon_valid;
(* register_balancing = "no" *) reg sdram_tccdcon_ready = 1'd1;
reg sdram_tccdcon_count = 1'd0;
wire sdram_twtrcon_valid;
(* register_balancing = "no" *) reg sdram_twtrcon_ready = 1'd1;
reg [1:0] sdram_twtrcon_count = 2'd0;
wire sdram_read_available;
wire sdram_write_available;
reg sdram_en0 = 1'd0;
wire sdram_max_time0;
reg [4:0] sdram_time0 = 5'd0;
reg sdram_en1 = 1'd0;
wire sdram_max_time1;
reg [3:0] sdram_time1 = 4'd0;
wire sdram_go_to_refresh;
wire sdram_bandwidth_update_re;
wire sdram_bandwidth_update_r;
reg sdram_bandwidth_update_w = 1'd0;
reg [23:0] sdram_bandwidth_nreads_status = 24'd0;
reg [23:0] sdram_bandwidth_nwrites_status = 24'd0;
reg [6:0] sdram_bandwidth_data_width_status = 7'd64;
reg sdram_bandwidth_cmd_valid = 1'd0;
reg sdram_bandwidth_cmd_ready = 1'd0;
reg sdram_bandwidth_cmd_is_read = 1'd0;
reg sdram_bandwidth_cmd_is_write = 1'd0;
reg [23:0] sdram_bandwidth_counter = 24'd0;
reg sdram_bandwidth_period = 1'd0;
reg [23:0] sdram_bandwidth_nreads = 24'd0;
reg [23:0] sdram_bandwidth_nwrites = 24'd0;
reg [23:0] sdram_bandwidth_nreads_r = 24'd0;
reg [23:0] sdram_bandwidth_nwrites_r = 24'd0;
wire [29:0] interface1_wb_sdram_adr;
wire [31:0] interface1_wb_sdram_dat_w;
wire [31:0] interface1_wb_sdram_dat_r;
wire [3:0] interface1_wb_sdram_sel;
wire interface1_wb_sdram_cyc;
wire interface1_wb_sdram_stb;
wire interface1_wb_sdram_ack;
wire interface1_wb_sdram_we;
wire [2:0] interface1_wb_sdram_cti;
wire [1:0] interface1_wb_sdram_bte;
wire interface1_wb_sdram_err;
reg port_cmd_valid = 1'd0;
wire port_cmd_ready;
reg port_cmd_payload_we = 1'd0;
reg [22:0] port_cmd_payload_addr = 23'd0;
reg port_wdata_valid = 1'd0;
wire port_wdata_ready;
reg [63:0] port_wdata_payload_data = 64'd0;
reg [7:0] port_wdata_payload_we = 8'd0;
wire port_rdata_valid;
reg port_rdata_ready = 1'd0;
wire [63:0] port_rdata_payload_data;
wire [29:0] adr;
wire [63:0] dat_w;
reg [63:0] dat_r = 64'd0;
wire [7:0] sel;
reg cyc = 1'd0;
reg stb = 1'd0;
reg ack = 1'd0;
reg we = 1'd0;
wire [9:0] data_port_adr;
wire [63:0] data_port_dat_r;
reg [7:0] data_port_we = 8'd0;
reg [63:0] data_port_dat_w = 64'd0;
reg write_from_slave = 1'd0;
reg adr_offset_r = 1'd0;
wire [9:0] tag_port_adr;
wire [21:0] tag_port_dat_r;
reg tag_port_we = 1'd0;
wire [21:0] tag_port_dat_w;
wire [20:0] tag_do_tag;
wire tag_do_dirty;
wire [20:0] tag_di_tag;
reg tag_di_dirty = 1'd0;
reg word_clr = 1'd0;
reg word_inc = 1'd0;
reg [1:0] refresher_state = 2'd0;
reg [1:0] refresher_next_state = 2'd0;
reg [2:0] bankmachine0_state = 3'd0;
reg [2:0] bankmachine0_next_state = 3'd0;
reg [2:0] bankmachine1_state = 3'd0;
reg [2:0] bankmachine1_next_state = 3'd0;
reg [2:0] bankmachine2_state = 3'd0;
reg [2:0] bankmachine2_next_state = 3'd0;
reg [2:0] bankmachine3_state = 3'd0;
reg [2:0] bankmachine3_next_state = 3'd0;
reg [2:0] multiplexer_state = 3'd0;
reg [2:0] multiplexer_next_state = 3'd0;
wire roundrobin0_request;
wire roundrobin0_grant;
wire roundrobin0_ce;
wire roundrobin1_request;
wire roundrobin1_grant;
wire roundrobin1_ce;
wire roundrobin2_request;
wire roundrobin2_grant;
wire roundrobin2_ce;
wire roundrobin3_request;
wire roundrobin3_grant;
wire roundrobin3_ce;
reg [1:0] rbank = 2'd0;
reg [1:0] wbank = 2'd0;
reg locked0 = 1'd0;
reg locked1 = 1'd0;
reg locked2 = 1'd0;
reg locked3 = 1'd0;
reg new_master_wdata_ready = 1'd0;
reg new_master_rdata_valid0 = 1'd0;
reg new_master_rdata_valid1 = 1'd0;
reg new_master_rdata_valid2 = 1'd0;
reg new_master_rdata_valid3 = 1'd0;
reg new_master_rdata_valid4 = 1'd0;
reg new_master_rdata_valid5 = 1'd0;
reg [2:0] cache_state = 3'd0;
reg [2:0] cache_next_state = 3'd0;
reg [1:0] litedramwishbone2native_state = 2'd0;
reg [1:0] litedramwishbone2native_next_state = 2'd0;
wire wb_sdram_con_request;
wire wb_sdram_con_grant;
wire [29:0] basesoc_shared_adr;
wire [31:0] basesoc_shared_dat_w;
reg [31:0] basesoc_shared_dat_r = 32'd0;
wire [3:0] basesoc_shared_sel;
wire basesoc_shared_cyc;
wire basesoc_shared_stb;
reg basesoc_shared_ack = 1'd0;
wire basesoc_shared_we;
wire [2:0] basesoc_shared_cti;
wire [1:0] basesoc_shared_bte;
wire basesoc_shared_err;
wire [1:0] basesoc_request;
reg basesoc_grant = 1'd0;
reg [3:0] basesoc_slave_sel = 4'd0;
reg [3:0] basesoc_slave_sel_r = 4'd0;
reg basesoc_error = 1'd0;
wire basesoc_wait;
wire basesoc_done;
reg [19:0] basesoc_count = 20'd1000000;
wire [13:0] basesoc_interface0_bank_bus_adr;
wire basesoc_interface0_bank_bus_we;
wire [7:0] basesoc_interface0_bank_bus_dat_w;
reg [7:0] basesoc_interface0_bank_bus_dat_r = 8'd0;
wire basesoc_csrbank0_scratch3_re;
wire [7:0] basesoc_csrbank0_scratch3_r;
wire [7:0] basesoc_csrbank0_scratch3_w;
wire basesoc_csrbank0_scratch2_re;
wire [7:0] basesoc_csrbank0_scratch2_r;
wire [7:0] basesoc_csrbank0_scratch2_w;
wire basesoc_csrbank0_scratch1_re;
wire [7:0] basesoc_csrbank0_scratch1_r;
wire [7:0] basesoc_csrbank0_scratch1_w;
wire basesoc_csrbank0_scratch0_re;
wire [7:0] basesoc_csrbank0_scratch0_r;
wire [7:0] basesoc_csrbank0_scratch0_w;
wire basesoc_csrbank0_bus_errors3_re;
wire [7:0] basesoc_csrbank0_bus_errors3_r;
wire [7:0] basesoc_csrbank0_bus_errors3_w;
wire basesoc_csrbank0_bus_errors2_re;
wire [7:0] basesoc_csrbank0_bus_errors2_r;
wire [7:0] basesoc_csrbank0_bus_errors2_w;
wire basesoc_csrbank0_bus_errors1_re;
wire [7:0] basesoc_csrbank0_bus_errors1_r;
wire [7:0] basesoc_csrbank0_bus_errors1_w;
wire basesoc_csrbank0_bus_errors0_re;
wire [7:0] basesoc_csrbank0_bus_errors0_r;
wire [7:0] basesoc_csrbank0_bus_errors0_w;
wire basesoc_csrbank0_sel;
wire [13:0] basesoc_sram_bus_adr;
wire basesoc_sram_bus_we;
wire [7:0] basesoc_sram_bus_dat_w;
reg [7:0] basesoc_sram_bus_dat_r = 8'd0;
wire [2:0] basesoc_adr;
wire [7:0] basesoc_dat_r;
wire basesoc_sel;
reg basesoc_sel_r = 1'd0;
wire [13:0] basesoc_interface1_bank_bus_adr;
wire basesoc_interface1_bank_bus_we;
wire [7:0] basesoc_interface1_bank_bus_dat_w;
reg [7:0] basesoc_interface1_bank_bus_dat_r = 8'd0;
wire basesoc_csrbank1_dfii_control0_re;
wire [3:0] basesoc_csrbank1_dfii_control0_r;
wire [3:0] basesoc_csrbank1_dfii_control0_w;
wire basesoc_csrbank1_dfii_pi0_command0_re;
wire [5:0] basesoc_csrbank1_dfii_pi0_command0_r;
wire [5:0] basesoc_csrbank1_dfii_pi0_command0_w;
wire basesoc_csrbank1_dfii_pi0_address1_re;
wire [4:0] basesoc_csrbank1_dfii_pi0_address1_r;
wire [4:0] basesoc_csrbank1_dfii_pi0_address1_w;
wire basesoc_csrbank1_dfii_pi0_address0_re;
wire [7:0] basesoc_csrbank1_dfii_pi0_address0_r;
wire [7:0] basesoc_csrbank1_dfii_pi0_address0_w;
wire basesoc_csrbank1_dfii_pi0_baddress0_re;
wire [1:0] basesoc_csrbank1_dfii_pi0_baddress0_r;
wire [1:0] basesoc_csrbank1_dfii_pi0_baddress0_w;
wire basesoc_csrbank1_dfii_pi0_wrdata3_re;
wire [7:0] basesoc_csrbank1_dfii_pi0_wrdata3_r;
wire [7:0] basesoc_csrbank1_dfii_pi0_wrdata3_w;
wire basesoc_csrbank1_dfii_pi0_wrdata2_re;
wire [7:0] basesoc_csrbank1_dfii_pi0_wrdata2_r;
wire [7:0] basesoc_csrbank1_dfii_pi0_wrdata2_w;
wire basesoc_csrbank1_dfii_pi0_wrdata1_re;
wire [7:0] basesoc_csrbank1_dfii_pi0_wrdata1_r;
wire [7:0] basesoc_csrbank1_dfii_pi0_wrdata1_w;
wire basesoc_csrbank1_dfii_pi0_wrdata0_re;
wire [7:0] basesoc_csrbank1_dfii_pi0_wrdata0_r;
wire [7:0] basesoc_csrbank1_dfii_pi0_wrdata0_w;
wire basesoc_csrbank1_dfii_pi0_rddata3_re;
wire [7:0] basesoc_csrbank1_dfii_pi0_rddata3_r;
wire [7:0] basesoc_csrbank1_dfii_pi0_rddata3_w;
wire basesoc_csrbank1_dfii_pi0_rddata2_re;
wire [7:0] basesoc_csrbank1_dfii_pi0_rddata2_r;
wire [7:0] basesoc_csrbank1_dfii_pi0_rddata2_w;
wire basesoc_csrbank1_dfii_pi0_rddata1_re;
wire [7:0] basesoc_csrbank1_dfii_pi0_rddata1_r;
wire [7:0] basesoc_csrbank1_dfii_pi0_rddata1_w;
wire basesoc_csrbank1_dfii_pi0_rddata0_re;
wire [7:0] basesoc_csrbank1_dfii_pi0_rddata0_r;
wire [7:0] basesoc_csrbank1_dfii_pi0_rddata0_w;
wire basesoc_csrbank1_dfii_pi1_command0_re;
wire [5:0] basesoc_csrbank1_dfii_pi1_command0_r;
wire [5:0] basesoc_csrbank1_dfii_pi1_command0_w;
wire basesoc_csrbank1_dfii_pi1_address1_re;
wire [4:0] basesoc_csrbank1_dfii_pi1_address1_r;
wire [4:0] basesoc_csrbank1_dfii_pi1_address1_w;
wire basesoc_csrbank1_dfii_pi1_address0_re;
wire [7:0] basesoc_csrbank1_dfii_pi1_address0_r;
wire [7:0] basesoc_csrbank1_dfii_pi1_address0_w;
wire basesoc_csrbank1_dfii_pi1_baddress0_re;
wire [1:0] basesoc_csrbank1_dfii_pi1_baddress0_r;
wire [1:0] basesoc_csrbank1_dfii_pi1_baddress0_w;
wire basesoc_csrbank1_dfii_pi1_wrdata3_re;
wire [7:0] basesoc_csrbank1_dfii_pi1_wrdata3_r;
wire [7:0] basesoc_csrbank1_dfii_pi1_wrdata3_w;
wire basesoc_csrbank1_dfii_pi1_wrdata2_re;
wire [7:0] basesoc_csrbank1_dfii_pi1_wrdata2_r;
wire [7:0] basesoc_csrbank1_dfii_pi1_wrdata2_w;
wire basesoc_csrbank1_dfii_pi1_wrdata1_re;
wire [7:0] basesoc_csrbank1_dfii_pi1_wrdata1_r;
wire [7:0] basesoc_csrbank1_dfii_pi1_wrdata1_w;
wire basesoc_csrbank1_dfii_pi1_wrdata0_re;
wire [7:0] basesoc_csrbank1_dfii_pi1_wrdata0_r;
wire [7:0] basesoc_csrbank1_dfii_pi1_wrdata0_w;
wire basesoc_csrbank1_dfii_pi1_rddata3_re;
wire [7:0] basesoc_csrbank1_dfii_pi1_rddata3_r;
wire [7:0] basesoc_csrbank1_dfii_pi1_rddata3_w;
wire basesoc_csrbank1_dfii_pi1_rddata2_re;
wire [7:0] basesoc_csrbank1_dfii_pi1_rddata2_r;
wire [7:0] basesoc_csrbank1_dfii_pi1_rddata2_w;
wire basesoc_csrbank1_dfii_pi1_rddata1_re;
wire [7:0] basesoc_csrbank1_dfii_pi1_rddata1_r;
wire [7:0] basesoc_csrbank1_dfii_pi1_rddata1_w;
wire basesoc_csrbank1_dfii_pi1_rddata0_re;
wire [7:0] basesoc_csrbank1_dfii_pi1_rddata0_r;
wire [7:0] basesoc_csrbank1_dfii_pi1_rddata0_w;
wire basesoc_csrbank1_controller_bandwidth_nreads2_re;
wire [7:0] basesoc_csrbank1_controller_bandwidth_nreads2_r;
wire [7:0] basesoc_csrbank1_controller_bandwidth_nreads2_w;
wire basesoc_csrbank1_controller_bandwidth_nreads1_re;
wire [7:0] basesoc_csrbank1_controller_bandwidth_nreads1_r;
wire [7:0] basesoc_csrbank1_controller_bandwidth_nreads1_w;
wire basesoc_csrbank1_controller_bandwidth_nreads0_re;
wire [7:0] basesoc_csrbank1_controller_bandwidth_nreads0_r;
wire [7:0] basesoc_csrbank1_controller_bandwidth_nreads0_w;
wire basesoc_csrbank1_controller_bandwidth_nwrites2_re;
wire [7:0] basesoc_csrbank1_controller_bandwidth_nwrites2_r;
wire [7:0] basesoc_csrbank1_controller_bandwidth_nwrites2_w;
wire basesoc_csrbank1_controller_bandwidth_nwrites1_re;
wire [7:0] basesoc_csrbank1_controller_bandwidth_nwrites1_r;
wire [7:0] basesoc_csrbank1_controller_bandwidth_nwrites1_w;
wire basesoc_csrbank1_controller_bandwidth_nwrites0_re;
wire [7:0] basesoc_csrbank1_controller_bandwidth_nwrites0_r;
wire [7:0] basesoc_csrbank1_controller_bandwidth_nwrites0_w;
wire basesoc_csrbank1_controller_bandwidth_data_width_re;
wire [6:0] basesoc_csrbank1_controller_bandwidth_data_width_r;
wire [6:0] basesoc_csrbank1_controller_bandwidth_data_width_w;
wire basesoc_csrbank1_sel;
wire [13:0] basesoc_interface2_bank_bus_adr;
wire basesoc_interface2_bank_bus_we;
wire [7:0] basesoc_interface2_bank_bus_dat_w;
reg [7:0] basesoc_interface2_bank_bus_dat_r = 8'd0;
wire basesoc_csrbank2_load3_re;
wire [7:0] basesoc_csrbank2_load3_r;
wire [7:0] basesoc_csrbank2_load3_w;
wire basesoc_csrbank2_load2_re;
wire [7:0] basesoc_csrbank2_load2_r;
wire [7:0] basesoc_csrbank2_load2_w;
wire basesoc_csrbank2_load1_re;
wire [7:0] basesoc_csrbank2_load1_r;
wire [7:0] basesoc_csrbank2_load1_w;
wire basesoc_csrbank2_load0_re;
wire [7:0] basesoc_csrbank2_load0_r;
wire [7:0] basesoc_csrbank2_load0_w;
wire basesoc_csrbank2_reload3_re;
wire [7:0] basesoc_csrbank2_reload3_r;
wire [7:0] basesoc_csrbank2_reload3_w;
wire basesoc_csrbank2_reload2_re;
wire [7:0] basesoc_csrbank2_reload2_r;
wire [7:0] basesoc_csrbank2_reload2_w;
wire basesoc_csrbank2_reload1_re;
wire [7:0] basesoc_csrbank2_reload1_r;
wire [7:0] basesoc_csrbank2_reload1_w;
wire basesoc_csrbank2_reload0_re;
wire [7:0] basesoc_csrbank2_reload0_r;
wire [7:0] basesoc_csrbank2_reload0_w;
wire basesoc_csrbank2_en0_re;
wire basesoc_csrbank2_en0_r;
wire basesoc_csrbank2_en0_w;
wire basesoc_csrbank2_value3_re;
wire [7:0] basesoc_csrbank2_value3_r;
wire [7:0] basesoc_csrbank2_value3_w;
wire basesoc_csrbank2_value2_re;
wire [7:0] basesoc_csrbank2_value2_r;
wire [7:0] basesoc_csrbank2_value2_w;
wire basesoc_csrbank2_value1_re;
wire [7:0] basesoc_csrbank2_value1_r;
wire [7:0] basesoc_csrbank2_value1_w;
wire basesoc_csrbank2_value0_re;
wire [7:0] basesoc_csrbank2_value0_r;
wire [7:0] basesoc_csrbank2_value0_w;
wire basesoc_csrbank2_ev_enable0_re;
wire basesoc_csrbank2_ev_enable0_r;
wire basesoc_csrbank2_ev_enable0_w;
wire basesoc_csrbank2_sel;
wire [13:0] basesoc_interface3_bank_bus_adr;
wire basesoc_interface3_bank_bus_we;
wire [7:0] basesoc_interface3_bank_bus_dat_w;
reg [7:0] basesoc_interface3_bank_bus_dat_r = 8'd0;
wire basesoc_csrbank3_txfull_re;
wire basesoc_csrbank3_txfull_r;
wire basesoc_csrbank3_txfull_w;
wire basesoc_csrbank3_rxempty_re;
wire basesoc_csrbank3_rxempty_r;
wire basesoc_csrbank3_rxempty_w;
wire basesoc_csrbank3_ev_enable0_re;
wire [1:0] basesoc_csrbank3_ev_enable0_r;
wire [1:0] basesoc_csrbank3_ev_enable0_w;
wire basesoc_csrbank3_sel;
wire [13:0] basesoc_interface4_bank_bus_adr;
wire basesoc_interface4_bank_bus_we;
wire [7:0] basesoc_interface4_bank_bus_dat_w;
reg [7:0] basesoc_interface4_bank_bus_dat_r = 8'd0;
wire basesoc_csrbank4_tuning_word3_re;
wire [7:0] basesoc_csrbank4_tuning_word3_r;
wire [7:0] basesoc_csrbank4_tuning_word3_w;
wire basesoc_csrbank4_tuning_word2_re;
wire [7:0] basesoc_csrbank4_tuning_word2_r;
wire [7:0] basesoc_csrbank4_tuning_word2_w;
wire basesoc_csrbank4_tuning_word1_re;
wire [7:0] basesoc_csrbank4_tuning_word1_r;
wire [7:0] basesoc_csrbank4_tuning_word1_w;
wire basesoc_csrbank4_tuning_word0_re;
wire [7:0] basesoc_csrbank4_tuning_word0_r;
wire [7:0] basesoc_csrbank4_tuning_word0_w;
wire basesoc_csrbank4_sel;
wire [15:0] slice_proxy0;
wire [15:0] slice_proxy1;
wire [15:0] slice_proxy2;
wire [15:0] slice_proxy3;
wire [15:0] slice_proxy4;
wire [15:0] slice_proxy5;
wire [15:0] slice_proxy6;
wire [15:0] slice_proxy7;
wire [15:0] slice_proxy8;
wire [15:0] slice_proxy9;
wire [15:0] slice_proxy10;
wire [15:0] slice_proxy11;
wire [15:0] slice_proxy12;
wire [15:0] slice_proxy13;
wire [15:0] slice_proxy14;
wire [15:0] slice_proxy15;
wire [15:0] slice_proxy16;
wire [15:0] slice_proxy17;
wire [15:0] slice_proxy18;
wire [15:0] slice_proxy19;
wire [15:0] slice_proxy20;
wire [15:0] slice_proxy21;
wire [15:0] slice_proxy22;
wire [15:0] slice_proxy23;
wire [15:0] slice_proxy24;
wire [15:0] slice_proxy25;
wire [15:0] slice_proxy26;
wire [15:0] slice_proxy27;
wire [15:0] slice_proxy28;
wire [15:0] slice_proxy29;
wire [15:0] slice_proxy30;
wire [15:0] slice_proxy31;
wire [15:0] slice_proxy32;
wire [15:0] slice_proxy33;
wire [15:0] slice_proxy34;
wire [15:0] slice_proxy35;
wire [15:0] slice_proxy36;
wire [15:0] slice_proxy37;
wire [15:0] slice_proxy38;
wire [15:0] slice_proxy39;
wire [15:0] slice_proxy40;
wire [15:0] slice_proxy41;
wire [15:0] slice_proxy42;
wire [15:0] slice_proxy43;
wire [15:0] slice_proxy44;
wire [15:0] slice_proxy45;
wire [15:0] slice_proxy46;
wire [15:0] slice_proxy47;
wire [15:0] slice_proxy48;
wire [15:0] slice_proxy49;
wire [15:0] slice_proxy50;
wire [15:0] slice_proxy51;
wire [15:0] slice_proxy52;
wire [15:0] slice_proxy53;
wire [15:0] slice_proxy54;
wire [15:0] slice_proxy55;
wire [15:0] slice_proxy56;
wire [15:0] slice_proxy57;
wire [15:0] slice_proxy58;
wire [15:0] slice_proxy59;
wire [15:0] slice_proxy60;
wire [15:0] slice_proxy61;
wire [15:0] slice_proxy62;
wire [15:0] slice_proxy63;
wire [1:0] slice_proxy64;
wire [1:0] slice_proxy65;
wire [1:0] slice_proxy66;
wire [1:0] slice_proxy67;
wire [1:0] slice_proxy68;
wire [1:0] slice_proxy69;
wire [1:0] slice_proxy70;
wire [1:0] slice_proxy71;
reg rhs_array_muxed0 = 1'd0;
reg [12:0] rhs_array_muxed1 = 13'd0;
reg [1:0] rhs_array_muxed2 = 2'd0;
reg rhs_array_muxed3 = 1'd0;
reg rhs_array_muxed4 = 1'd0;
reg rhs_array_muxed5 = 1'd0;
reg t_array_muxed0 = 1'd0;
reg t_array_muxed1 = 1'd0;
reg t_array_muxed2 = 1'd0;
reg rhs_array_muxed6 = 1'd0;
reg [12:0] rhs_array_muxed7 = 13'd0;
reg [1:0] rhs_array_muxed8 = 2'd0;
reg rhs_array_muxed9 = 1'd0;
reg rhs_array_muxed10 = 1'd0;
reg rhs_array_muxed11 = 1'd0;
reg t_array_muxed3 = 1'd0;
reg t_array_muxed4 = 1'd0;
reg t_array_muxed5 = 1'd0;
reg [20:0] rhs_array_muxed12 = 21'd0;
reg rhs_array_muxed13 = 1'd0;
reg rhs_array_muxed14 = 1'd0;
reg [20:0] rhs_array_muxed15 = 21'd0;
reg rhs_array_muxed16 = 1'd0;
reg rhs_array_muxed17 = 1'd0;
reg [20:0] rhs_array_muxed18 = 21'd0;
reg rhs_array_muxed19 = 1'd0;
reg rhs_array_muxed20 = 1'd0;
reg [20:0] rhs_array_muxed21 = 21'd0;
reg rhs_array_muxed22 = 1'd0;
reg rhs_array_muxed23 = 1'd0;
reg [29:0] rhs_array_muxed24 = 30'd0;
reg [31:0] rhs_array_muxed25 = 32'd0;
reg [3:0] rhs_array_muxed26 = 4'd0;
reg rhs_array_muxed27 = 1'd0;
reg rhs_array_muxed28 = 1'd0;
reg rhs_array_muxed29 = 1'd0;
reg [2:0] rhs_array_muxed30 = 3'd0;
reg [1:0] rhs_array_muxed31 = 2'd0;
reg [29:0] rhs_array_muxed32 = 30'd0;
reg [31:0] rhs_array_muxed33 = 32'd0;
reg [3:0] rhs_array_muxed34 = 4'd0;
reg rhs_array_muxed35 = 1'd0;
reg rhs_array_muxed36 = 1'd0;
reg rhs_array_muxed37 = 1'd0;
reg [2:0] rhs_array_muxed38 = 3'd0;
reg [1:0] rhs_array_muxed39 = 2'd0;
reg [12:0] array_muxed0 = 13'd0;
reg [1:0] array_muxed1 = 2'd0;
reg array_muxed2 = 1'd0;
reg array_muxed3 = 1'd0;
reg array_muxed4 = 1'd0;
reg array_muxed5 = 1'd0;
reg [1:0] array_muxed6 = 2'd0;
reg [12:0] array_muxed7 = 13'd0;
reg array_muxed8 = 1'd0;
reg array_muxed9 = 1'd0;
reg array_muxed10 = 1'd0;
reg array_muxed11 = 1'd0;
reg array_muxed12 = 1'd0;
reg [1:0] array_muxed13 = 2'd0;
reg [12:0] array_muxed14 = 13'd0;
reg array_muxed15 = 1'd0;
reg array_muxed16 = 1'd0;
reg array_muxed17 = 1'd0;
reg array_muxed18 = 1'd0;
reg array_muxed19 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg regs0 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg regs1 = 1'd0;
wire xilinxasyncresetsynchronizerimpl0_rst_meta;
wire xilinxasyncresetsynchronizerimpl1;
wire xilinxasyncresetsynchronizerimpl1_rst_meta;

assign lm32_reset = ctrl_reset;
assign ddrphy_clk4x_wr_strb = crg_clk4x_wr_strb;
assign ddrphy_clk4x_rd_strb = crg_clk4x_rd_strb;
assign ctrl_bus_error = basesoc_error;
always @(*) begin
	lm32_interrupt <= 32'd0;
	lm32_interrupt[1] <= timer0_irq;
	lm32_interrupt[2] <= uart_irq;
end
assign ctrl_reset = ctrl_reset_reset_re;
assign ctrl_bus_errors_status = ctrl_bus_errors;
assign lm32_ibus_adr = lm32_i_adr_o[31:2];
assign lm32_dbus_adr = lm32_d_adr_o[31:2];
assign rom_adr = rom_bus_adr[12:0];
assign rom_bus_dat_r = rom_dat_r;
always @(*) begin
	sram_we <= 4'd0;
	sram_we[0] <= (((sram_bus_cyc & sram_bus_stb) & sram_bus_we) & sram_bus_sel[0]);
	sram_we[1] <= (((sram_bus_cyc & sram_bus_stb) & sram_bus_we) & sram_bus_sel[1]);
	sram_we[2] <= (((sram_bus_cyc & sram_bus_stb) & sram_bus_we) & sram_bus_sel[2]);
	sram_we[3] <= (((sram_bus_cyc & sram_bus_stb) & sram_bus_we) & sram_bus_sel[3]);
end
assign sram_adr = sram_bus_adr[11:0];
assign sram_bus_dat_r = sram_dat_r;
assign sram_dat_w = sram_bus_dat_w;
assign uart_tx_fifo_sink_valid = uart_rxtx_re;
assign uart_tx_fifo_sink_payload_data = uart_rxtx_r;
assign uart_txfull_status = (~uart_tx_fifo_sink_ready);
assign uart_phy_sink_valid = uart_tx_fifo_source_valid;
assign uart_tx_fifo_source_ready = uart_phy_sink_ready;
assign uart_phy_sink_first = uart_tx_fifo_source_first;
assign uart_phy_sink_last = uart_tx_fifo_source_last;
assign uart_phy_sink_payload_data = uart_tx_fifo_source_payload_data;
assign uart_tx_trigger = (~uart_tx_fifo_sink_ready);
assign uart_rx_fifo_sink_valid = uart_phy_source_valid;
assign uart_phy_source_ready = uart_rx_fifo_sink_ready;
assign uart_rx_fifo_sink_first = uart_phy_source_first;
assign uart_rx_fifo_sink_last = uart_phy_source_last;
assign uart_rx_fifo_sink_payload_data = uart_phy_source_payload_data;
assign uart_rxempty_status = (~uart_rx_fifo_source_valid);
assign uart_rxtx_w = uart_rx_fifo_source_payload_data;
assign uart_rx_fifo_source_ready = uart_rx_clear;
assign uart_rx_trigger = (~uart_rx_fifo_source_valid);
always @(*) begin
	uart_tx_clear <= 1'd0;
	if ((uart_eventmanager_pending_re & uart_eventmanager_pending_r[0])) begin
		uart_tx_clear <= 1'd1;
	end
end
always @(*) begin
	uart_eventmanager_status_w <= 2'd0;
	uart_eventmanager_status_w[0] <= uart_tx_status;
	uart_eventmanager_status_w[1] <= uart_rx_status;
end
always @(*) begin
	uart_rx_clear <= 1'd0;
	if ((uart_eventmanager_pending_re & uart_eventmanager_pending_r[1])) begin
		uart_rx_clear <= 1'd1;
	end
end
always @(*) begin
	uart_eventmanager_pending_w <= 2'd0;
	uart_eventmanager_pending_w[0] <= uart_tx_pending;
	uart_eventmanager_pending_w[1] <= uart_rx_pending;
end
assign uart_irq = ((uart_eventmanager_pending_w[0] & uart_eventmanager_storage[0]) | (uart_eventmanager_pending_w[1] & uart_eventmanager_storage[1]));
assign uart_tx_status = uart_tx_trigger;
assign uart_rx_status = uart_rx_trigger;
assign uart_tx_fifo_syncfifo_din = {uart_tx_fifo_fifo_in_last, uart_tx_fifo_fifo_in_first, uart_tx_fifo_fifo_in_payload_data};
assign {uart_tx_fifo_fifo_out_last, uart_tx_fifo_fifo_out_first, uart_tx_fifo_fifo_out_payload_data} = uart_tx_fifo_syncfifo_dout;
assign uart_tx_fifo_sink_ready = uart_tx_fifo_syncfifo_writable;
assign uart_tx_fifo_syncfifo_we = uart_tx_fifo_sink_valid;
assign uart_tx_fifo_fifo_in_first = uart_tx_fifo_sink_first;
assign uart_tx_fifo_fifo_in_last = uart_tx_fifo_sink_last;
assign uart_tx_fifo_fifo_in_payload_data = uart_tx_fifo_sink_payload_data;
assign uart_tx_fifo_source_valid = uart_tx_fifo_readable;
assign uart_tx_fifo_source_first = uart_tx_fifo_fifo_out_first;
assign uart_tx_fifo_source_last = uart_tx_fifo_fifo_out_last;
assign uart_tx_fifo_source_payload_data = uart_tx_fifo_fifo_out_payload_data;
assign uart_tx_fifo_re = uart_tx_fifo_source_ready;
assign uart_tx_fifo_syncfifo_re = (uart_tx_fifo_syncfifo_readable & ((~uart_tx_fifo_readable) | uart_tx_fifo_re));
assign uart_tx_fifo_level1 = (uart_tx_fifo_level0 + uart_tx_fifo_readable);
always @(*) begin
	uart_tx_fifo_wrport_adr <= 4'd0;
	if (uart_tx_fifo_replace) begin
		uart_tx_fifo_wrport_adr <= (uart_tx_fifo_produce - 1'd1);
	end else begin
		uart_tx_fifo_wrport_adr <= uart_tx_fifo_produce;
	end
end
assign uart_tx_fifo_wrport_dat_w = uart_tx_fifo_syncfifo_din;
assign uart_tx_fifo_wrport_we = (uart_tx_fifo_syncfifo_we & (uart_tx_fifo_syncfifo_writable | uart_tx_fifo_replace));
assign uart_tx_fifo_do_read = (uart_tx_fifo_syncfifo_readable & uart_tx_fifo_syncfifo_re);
assign uart_tx_fifo_rdport_adr = uart_tx_fifo_consume;
assign uart_tx_fifo_syncfifo_dout = uart_tx_fifo_rdport_dat_r;
assign uart_tx_fifo_rdport_re = uart_tx_fifo_do_read;
assign uart_tx_fifo_syncfifo_writable = (uart_tx_fifo_level0 != 5'd16);
assign uart_tx_fifo_syncfifo_readable = (uart_tx_fifo_level0 != 1'd0);
assign uart_rx_fifo_syncfifo_din = {uart_rx_fifo_fifo_in_last, uart_rx_fifo_fifo_in_first, uart_rx_fifo_fifo_in_payload_data};
assign {uart_rx_fifo_fifo_out_last, uart_rx_fifo_fifo_out_first, uart_rx_fifo_fifo_out_payload_data} = uart_rx_fifo_syncfifo_dout;
assign uart_rx_fifo_sink_ready = uart_rx_fifo_syncfifo_writable;
assign uart_rx_fifo_syncfifo_we = uart_rx_fifo_sink_valid;
assign uart_rx_fifo_fifo_in_first = uart_rx_fifo_sink_first;
assign uart_rx_fifo_fifo_in_last = uart_rx_fifo_sink_last;
assign uart_rx_fifo_fifo_in_payload_data = uart_rx_fifo_sink_payload_data;
assign uart_rx_fifo_source_valid = uart_rx_fifo_readable;
assign uart_rx_fifo_source_first = uart_rx_fifo_fifo_out_first;
assign uart_rx_fifo_source_last = uart_rx_fifo_fifo_out_last;
assign uart_rx_fifo_source_payload_data = uart_rx_fifo_fifo_out_payload_data;
assign uart_rx_fifo_re = uart_rx_fifo_source_ready;
assign uart_rx_fifo_syncfifo_re = (uart_rx_fifo_syncfifo_readable & ((~uart_rx_fifo_readable) | uart_rx_fifo_re));
assign uart_rx_fifo_level1 = (uart_rx_fifo_level0 + uart_rx_fifo_readable);
always @(*) begin
	uart_rx_fifo_wrport_adr <= 4'd0;
	if (uart_rx_fifo_replace) begin
		uart_rx_fifo_wrport_adr <= (uart_rx_fifo_produce - 1'd1);
	end else begin
		uart_rx_fifo_wrport_adr <= uart_rx_fifo_produce;
	end
end
assign uart_rx_fifo_wrport_dat_w = uart_rx_fifo_syncfifo_din;
assign uart_rx_fifo_wrport_we = (uart_rx_fifo_syncfifo_we & (uart_rx_fifo_syncfifo_writable | uart_rx_fifo_replace));
assign uart_rx_fifo_do_read = (uart_rx_fifo_syncfifo_readable & uart_rx_fifo_syncfifo_re);
assign uart_rx_fifo_rdport_adr = uart_rx_fifo_consume;
assign uart_rx_fifo_syncfifo_dout = uart_rx_fifo_rdport_dat_r;
assign uart_rx_fifo_rdport_re = uart_rx_fifo_do_read;
assign uart_rx_fifo_syncfifo_writable = (uart_rx_fifo_level0 != 5'd16);
assign uart_rx_fifo_syncfifo_readable = (uart_rx_fifo_level0 != 1'd0);
assign timer0_zero_trigger = (timer0_value != 1'd0);
assign timer0_eventmanager_status_w = timer0_zero_status;
always @(*) begin
	timer0_zero_clear <= 1'd0;
	if ((timer0_eventmanager_pending_re & timer0_eventmanager_pending_r)) begin
		timer0_zero_clear <= 1'd1;
	end
end
assign timer0_eventmanager_pending_w = timer0_zero_pending;
assign timer0_irq = (timer0_eventmanager_pending_w & timer0_eventmanager_storage);
assign timer0_zero_status = timer0_zero_trigger;
assign por_clk = sys_clk;
assign sdram_full_rd_clk = sdram_full_wr_clk;
assign crg_clk4x_rd_strb = crg_clk4x_wr_strb;
assign ddrphy_sdram_half_clk_n = (~sdram_half_clk);
assign ddrphy_dqs_t_d0 = (~(ddrphy_drive_dqs | ddrphy_postamble));
assign ddrphy_dqs_t_d1 = (~ddrphy_drive_dqs);
assign ddrphy_record0_wrdata = ddrphy_dfi_p0_wrdata;
assign ddrphy_record0_wrdata_mask = ddrphy_dfi_p0_wrdata_mask;
assign ddrphy_record0_wrdata_en = ddrphy_dfi_p0_wrdata_en;
assign ddrphy_record0_rddata_en = ddrphy_dfi_p0_rddata_en;
assign ddrphy_record1_wrdata = ddrphy_dfi_p1_wrdata;
assign ddrphy_record1_wrdata_mask = ddrphy_dfi_p1_wrdata_mask;
assign ddrphy_record1_wrdata_en = ddrphy_dfi_p1_wrdata_en;
assign ddrphy_record1_rddata_en = ddrphy_dfi_p1_rddata_en;
assign ddrphy_drive_dq_n0 = (~ddrphy_drive_dq);
assign ddrphy_wrdata_en = (ddrphy_record0_wrdata_en | ddrphy_record1_wrdata_en);
assign ddrphy_drive_dq = ddrphy_wrdata_en;
assign ddrphy_drive_dqs = ddrphy_r_dfi_wrdata_en[1];
assign ddrphy_rddata_en = (ddrphy_record0_rddata_en | ddrphy_record1_rddata_en);
assign ddrphy_dfi_p0_rddata = ddrphy_record0_rddata;
assign ddrphy_dfi_p0_rddata_valid = ddrphy_rddata_sr[0];
assign ddrphy_dfi_p1_rddata = ddrphy_record1_rddata;
assign ddrphy_dfi_p1_rddata_valid = ddrphy_rddata_sr[0];
assign ddrphy_dfi_p0_address = sdram_master_p0_address;
assign ddrphy_dfi_p0_bank = sdram_master_p0_bank;
assign ddrphy_dfi_p0_cas_n = sdram_master_p0_cas_n;
assign ddrphy_dfi_p0_cs_n = sdram_master_p0_cs_n;
assign ddrphy_dfi_p0_ras_n = sdram_master_p0_ras_n;
assign ddrphy_dfi_p0_we_n = sdram_master_p0_we_n;
assign ddrphy_dfi_p0_cke = sdram_master_p0_cke;
assign ddrphy_dfi_p0_odt = sdram_master_p0_odt;
assign ddrphy_dfi_p0_reset_n = sdram_master_p0_reset_n;
assign ddrphy_dfi_p0_act_n = sdram_master_p0_act_n;
assign ddrphy_dfi_p0_wrdata = sdram_master_p0_wrdata;
assign ddrphy_dfi_p0_wrdata_en = sdram_master_p0_wrdata_en;
assign ddrphy_dfi_p0_wrdata_mask = sdram_master_p0_wrdata_mask;
assign ddrphy_dfi_p0_rddata_en = sdram_master_p0_rddata_en;
assign sdram_master_p0_rddata = ddrphy_dfi_p0_rddata;
assign sdram_master_p0_rddata_valid = ddrphy_dfi_p0_rddata_valid;
assign ddrphy_dfi_p1_address = sdram_master_p1_address;
assign ddrphy_dfi_p1_bank = sdram_master_p1_bank;
assign ddrphy_dfi_p1_cas_n = sdram_master_p1_cas_n;
assign ddrphy_dfi_p1_cs_n = sdram_master_p1_cs_n;
assign ddrphy_dfi_p1_ras_n = sdram_master_p1_ras_n;
assign ddrphy_dfi_p1_we_n = sdram_master_p1_we_n;
assign ddrphy_dfi_p1_cke = sdram_master_p1_cke;
assign ddrphy_dfi_p1_odt = sdram_master_p1_odt;
assign ddrphy_dfi_p1_reset_n = sdram_master_p1_reset_n;
assign ddrphy_dfi_p1_act_n = sdram_master_p1_act_n;
assign ddrphy_dfi_p1_wrdata = sdram_master_p1_wrdata;
assign ddrphy_dfi_p1_wrdata_en = sdram_master_p1_wrdata_en;
assign ddrphy_dfi_p1_wrdata_mask = sdram_master_p1_wrdata_mask;
assign ddrphy_dfi_p1_rddata_en = sdram_master_p1_rddata_en;
assign sdram_master_p1_rddata = ddrphy_dfi_p1_rddata;
assign sdram_master_p1_rddata_valid = ddrphy_dfi_p1_rddata_valid;
assign sdram_slave_p0_address = sdram_dfi_p0_address;
assign sdram_slave_p0_bank = sdram_dfi_p0_bank;
assign sdram_slave_p0_cas_n = sdram_dfi_p0_cas_n;
assign sdram_slave_p0_cs_n = sdram_dfi_p0_cs_n;
assign sdram_slave_p0_ras_n = sdram_dfi_p0_ras_n;
assign sdram_slave_p0_we_n = sdram_dfi_p0_we_n;
assign sdram_slave_p0_cke = sdram_dfi_p0_cke;
assign sdram_slave_p0_odt = sdram_dfi_p0_odt;
assign sdram_slave_p0_reset_n = sdram_dfi_p0_reset_n;
assign sdram_slave_p0_act_n = sdram_dfi_p0_act_n;
assign sdram_slave_p0_wrdata = sdram_dfi_p0_wrdata;
assign sdram_slave_p0_wrdata_en = sdram_dfi_p0_wrdata_en;
assign sdram_slave_p0_wrdata_mask = sdram_dfi_p0_wrdata_mask;
assign sdram_slave_p0_rddata_en = sdram_dfi_p0_rddata_en;
assign sdram_dfi_p0_rddata = sdram_slave_p0_rddata;
assign sdram_dfi_p0_rddata_valid = sdram_slave_p0_rddata_valid;
assign sdram_slave_p1_address = sdram_dfi_p1_address;
assign sdram_slave_p1_bank = sdram_dfi_p1_bank;
assign sdram_slave_p1_cas_n = sdram_dfi_p1_cas_n;
assign sdram_slave_p1_cs_n = sdram_dfi_p1_cs_n;
assign sdram_slave_p1_ras_n = sdram_dfi_p1_ras_n;
assign sdram_slave_p1_we_n = sdram_dfi_p1_we_n;
assign sdram_slave_p1_cke = sdram_dfi_p1_cke;
assign sdram_slave_p1_odt = sdram_dfi_p1_odt;
assign sdram_slave_p1_reset_n = sdram_dfi_p1_reset_n;
assign sdram_slave_p1_act_n = sdram_dfi_p1_act_n;
assign sdram_slave_p1_wrdata = sdram_dfi_p1_wrdata;
assign sdram_slave_p1_wrdata_en = sdram_dfi_p1_wrdata_en;
assign sdram_slave_p1_wrdata_mask = sdram_dfi_p1_wrdata_mask;
assign sdram_slave_p1_rddata_en = sdram_dfi_p1_rddata_en;
assign sdram_dfi_p1_rddata = sdram_slave_p1_rddata;
assign sdram_dfi_p1_rddata_valid = sdram_slave_p1_rddata_valid;
always @(*) begin
	sdram_master_p0_reset_n <= 1'd0;
	sdram_master_p0_act_n <= 1'd1;
	sdram_master_p0_wrdata <= 32'd0;
	sdram_master_p0_wrdata_en <= 1'd0;
	sdram_master_p0_wrdata_mask <= 4'd0;
	sdram_master_p0_rddata_en <= 1'd0;
	sdram_master_p1_address <= 13'd0;
	sdram_inti_p0_rddata <= 32'd0;
	sdram_master_p1_bank <= 2'd0;
	sdram_master_p1_cas_n <= 1'd1;
	sdram_master_p1_cs_n <= 1'd1;
	sdram_master_p1_ras_n <= 1'd1;
	sdram_inti_p1_rddata <= 32'd0;
	sdram_master_p1_we_n <= 1'd1;
	sdram_inti_p0_rddata_valid <= 1'd0;
	sdram_master_p1_cke <= 1'd0;
	sdram_inti_p1_rddata_valid <= 1'd0;
	sdram_master_p1_odt <= 1'd0;
	sdram_master_p1_reset_n <= 1'd0;
	sdram_master_p1_act_n <= 1'd1;
	sdram_master_p1_wrdata <= 32'd0;
	sdram_master_p1_wrdata_en <= 1'd0;
	sdram_master_p1_wrdata_mask <= 4'd0;
	sdram_master_p1_rddata_en <= 1'd0;
	sdram_slave_p0_rddata <= 32'd0;
	sdram_slave_p0_rddata_valid <= 1'd0;
	sdram_slave_p1_rddata <= 32'd0;
	sdram_slave_p1_rddata_valid <= 1'd0;
	sdram_master_p0_address <= 13'd0;
	sdram_master_p0_bank <= 2'd0;
	sdram_master_p0_cas_n <= 1'd1;
	sdram_master_p0_cs_n <= 1'd1;
	sdram_master_p0_ras_n <= 1'd1;
	sdram_master_p0_we_n <= 1'd1;
	sdram_master_p0_cke <= 1'd0;
	sdram_master_p0_odt <= 1'd0;
	if (sdram_storage[0]) begin
		sdram_master_p0_address <= sdram_slave_p0_address;
		sdram_master_p0_bank <= sdram_slave_p0_bank;
		sdram_master_p0_cas_n <= sdram_slave_p0_cas_n;
		sdram_master_p0_cs_n <= sdram_slave_p0_cs_n;
		sdram_master_p0_ras_n <= sdram_slave_p0_ras_n;
		sdram_master_p0_we_n <= sdram_slave_p0_we_n;
		sdram_master_p0_cke <= sdram_slave_p0_cke;
		sdram_master_p0_odt <= sdram_slave_p0_odt;
		sdram_master_p0_reset_n <= sdram_slave_p0_reset_n;
		sdram_master_p0_act_n <= sdram_slave_p0_act_n;
		sdram_master_p0_wrdata <= sdram_slave_p0_wrdata;
		sdram_master_p0_wrdata_en <= sdram_slave_p0_wrdata_en;
		sdram_master_p0_wrdata_mask <= sdram_slave_p0_wrdata_mask;
		sdram_master_p0_rddata_en <= sdram_slave_p0_rddata_en;
		sdram_slave_p0_rddata <= sdram_master_p0_rddata;
		sdram_slave_p0_rddata_valid <= sdram_master_p0_rddata_valid;
		sdram_master_p1_address <= sdram_slave_p1_address;
		sdram_master_p1_bank <= sdram_slave_p1_bank;
		sdram_master_p1_cas_n <= sdram_slave_p1_cas_n;
		sdram_master_p1_cs_n <= sdram_slave_p1_cs_n;
		sdram_master_p1_ras_n <= sdram_slave_p1_ras_n;
		sdram_master_p1_we_n <= sdram_slave_p1_we_n;
		sdram_master_p1_cke <= sdram_slave_p1_cke;
		sdram_master_p1_odt <= sdram_slave_p1_odt;
		sdram_master_p1_reset_n <= sdram_slave_p1_reset_n;
		sdram_master_p1_act_n <= sdram_slave_p1_act_n;
		sdram_master_p1_wrdata <= sdram_slave_p1_wrdata;
		sdram_master_p1_wrdata_en <= sdram_slave_p1_wrdata_en;
		sdram_master_p1_wrdata_mask <= sdram_slave_p1_wrdata_mask;
		sdram_master_p1_rddata_en <= sdram_slave_p1_rddata_en;
		sdram_slave_p1_rddata <= sdram_master_p1_rddata;
		sdram_slave_p1_rddata_valid <= sdram_master_p1_rddata_valid;
	end else begin
		sdram_master_p0_address <= sdram_inti_p0_address;
		sdram_master_p0_bank <= sdram_inti_p0_bank;
		sdram_master_p0_cas_n <= sdram_inti_p0_cas_n;
		sdram_master_p0_cs_n <= sdram_inti_p0_cs_n;
		sdram_master_p0_ras_n <= sdram_inti_p0_ras_n;
		sdram_master_p0_we_n <= sdram_inti_p0_we_n;
		sdram_master_p0_cke <= sdram_inti_p0_cke;
		sdram_master_p0_odt <= sdram_inti_p0_odt;
		sdram_master_p0_reset_n <= sdram_inti_p0_reset_n;
		sdram_master_p0_act_n <= sdram_inti_p0_act_n;
		sdram_master_p0_wrdata <= sdram_inti_p0_wrdata;
		sdram_master_p0_wrdata_en <= sdram_inti_p0_wrdata_en;
		sdram_master_p0_wrdata_mask <= sdram_inti_p0_wrdata_mask;
		sdram_master_p0_rddata_en <= sdram_inti_p0_rddata_en;
		sdram_inti_p0_rddata <= sdram_master_p0_rddata;
		sdram_inti_p0_rddata_valid <= sdram_master_p0_rddata_valid;
		sdram_master_p1_address <= sdram_inti_p1_address;
		sdram_master_p1_bank <= sdram_inti_p1_bank;
		sdram_master_p1_cas_n <= sdram_inti_p1_cas_n;
		sdram_master_p1_cs_n <= sdram_inti_p1_cs_n;
		sdram_master_p1_ras_n <= sdram_inti_p1_ras_n;
		sdram_master_p1_we_n <= sdram_inti_p1_we_n;
		sdram_master_p1_cke <= sdram_inti_p1_cke;
		sdram_master_p1_odt <= sdram_inti_p1_odt;
		sdram_master_p1_reset_n <= sdram_inti_p1_reset_n;
		sdram_master_p1_act_n <= sdram_inti_p1_act_n;
		sdram_master_p1_wrdata <= sdram_inti_p1_wrdata;
		sdram_master_p1_wrdata_en <= sdram_inti_p1_wrdata_en;
		sdram_master_p1_wrdata_mask <= sdram_inti_p1_wrdata_mask;
		sdram_master_p1_rddata_en <= sdram_inti_p1_rddata_en;
		sdram_inti_p1_rddata <= sdram_master_p1_rddata;
		sdram_inti_p1_rddata_valid <= sdram_master_p1_rddata_valid;
	end
end
assign sdram_inti_p0_cke = sdram_storage[1];
assign sdram_inti_p1_cke = sdram_storage[1];
assign sdram_inti_p0_odt = sdram_storage[2];
assign sdram_inti_p1_odt = sdram_storage[2];
assign sdram_inti_p0_reset_n = sdram_storage[3];
assign sdram_inti_p1_reset_n = sdram_storage[3];
always @(*) begin
	sdram_inti_p0_cas_n <= 1'd1;
	sdram_inti_p0_cs_n <= 1'd1;
	sdram_inti_p0_ras_n <= 1'd1;
	sdram_inti_p0_we_n <= 1'd1;
	if (sdram_phaseinjector0_command_issue_re) begin
		sdram_inti_p0_cs_n <= {1{(~sdram_phaseinjector0_command_storage[0])}};
		sdram_inti_p0_we_n <= (~sdram_phaseinjector0_command_storage[1]);
		sdram_inti_p0_cas_n <= (~sdram_phaseinjector0_command_storage[2]);
		sdram_inti_p0_ras_n <= (~sdram_phaseinjector0_command_storage[3]);
	end else begin
		sdram_inti_p0_cs_n <= {1{1'd1}};
		sdram_inti_p0_we_n <= 1'd1;
		sdram_inti_p0_cas_n <= 1'd1;
		sdram_inti_p0_ras_n <= 1'd1;
	end
end
assign sdram_inti_p0_address = sdram_phaseinjector0_address_storage;
assign sdram_inti_p0_bank = sdram_phaseinjector0_baddress_storage;
assign sdram_inti_p0_wrdata_en = (sdram_phaseinjector0_command_issue_re & sdram_phaseinjector0_command_storage[4]);
assign sdram_inti_p0_rddata_en = (sdram_phaseinjector0_command_issue_re & sdram_phaseinjector0_command_storage[5]);
assign sdram_inti_p0_wrdata = sdram_phaseinjector0_wrdata_storage;
assign sdram_inti_p0_wrdata_mask = 1'd0;
always @(*) begin
	sdram_inti_p1_cas_n <= 1'd1;
	sdram_inti_p1_cs_n <= 1'd1;
	sdram_inti_p1_ras_n <= 1'd1;
	sdram_inti_p1_we_n <= 1'd1;
	if (sdram_phaseinjector1_command_issue_re) begin
		sdram_inti_p1_cs_n <= {1{(~sdram_phaseinjector1_command_storage[0])}};
		sdram_inti_p1_we_n <= (~sdram_phaseinjector1_command_storage[1]);
		sdram_inti_p1_cas_n <= (~sdram_phaseinjector1_command_storage[2]);
		sdram_inti_p1_ras_n <= (~sdram_phaseinjector1_command_storage[3]);
	end else begin
		sdram_inti_p1_cs_n <= {1{1'd1}};
		sdram_inti_p1_we_n <= 1'd1;
		sdram_inti_p1_cas_n <= 1'd1;
		sdram_inti_p1_ras_n <= 1'd1;
	end
end
assign sdram_inti_p1_address = sdram_phaseinjector1_address_storage;
assign sdram_inti_p1_bank = sdram_phaseinjector1_baddress_storage;
assign sdram_inti_p1_wrdata_en = (sdram_phaseinjector1_command_issue_re & sdram_phaseinjector1_command_storage[4]);
assign sdram_inti_p1_rddata_en = (sdram_phaseinjector1_command_issue_re & sdram_phaseinjector1_command_storage[5]);
assign sdram_inti_p1_wrdata = sdram_phaseinjector1_wrdata_storage;
assign sdram_inti_p1_wrdata_mask = 1'd0;
assign sdram_bankmachine0_req_valid = sdram_interface_bank0_valid;
assign sdram_interface_bank0_ready = sdram_bankmachine0_req_ready;
assign sdram_bankmachine0_req_we = sdram_interface_bank0_we;
assign sdram_bankmachine0_req_addr = sdram_interface_bank0_addr;
assign sdram_interface_bank0_lock = sdram_bankmachine0_req_lock;
assign sdram_interface_bank0_wdata_ready = sdram_bankmachine0_req_wdata_ready;
assign sdram_interface_bank0_rdata_valid = sdram_bankmachine0_req_rdata_valid;
assign sdram_bankmachine1_req_valid = sdram_interface_bank1_valid;
assign sdram_interface_bank1_ready = sdram_bankmachine1_req_ready;
assign sdram_bankmachine1_req_we = sdram_interface_bank1_we;
assign sdram_bankmachine1_req_addr = sdram_interface_bank1_addr;
assign sdram_interface_bank1_lock = sdram_bankmachine1_req_lock;
assign sdram_interface_bank1_wdata_ready = sdram_bankmachine1_req_wdata_ready;
assign sdram_interface_bank1_rdata_valid = sdram_bankmachine1_req_rdata_valid;
assign sdram_bankmachine2_req_valid = sdram_interface_bank2_valid;
assign sdram_interface_bank2_ready = sdram_bankmachine2_req_ready;
assign sdram_bankmachine2_req_we = sdram_interface_bank2_we;
assign sdram_bankmachine2_req_addr = sdram_interface_bank2_addr;
assign sdram_interface_bank2_lock = sdram_bankmachine2_req_lock;
assign sdram_interface_bank2_wdata_ready = sdram_bankmachine2_req_wdata_ready;
assign sdram_interface_bank2_rdata_valid = sdram_bankmachine2_req_rdata_valid;
assign sdram_bankmachine3_req_valid = sdram_interface_bank3_valid;
assign sdram_interface_bank3_ready = sdram_bankmachine3_req_ready;
assign sdram_bankmachine3_req_we = sdram_interface_bank3_we;
assign sdram_bankmachine3_req_addr = sdram_interface_bank3_addr;
assign sdram_interface_bank3_lock = sdram_bankmachine3_req_lock;
assign sdram_interface_bank3_wdata_ready = sdram_bankmachine3_req_wdata_ready;
assign sdram_interface_bank3_rdata_valid = sdram_bankmachine3_req_rdata_valid;
assign sdram_timer_reset = 2'sd2;
assign sdram_timer_wait = (~sdram_timer_done);
assign sdram_timer_done = (sdram_timer_count == 1'd0);
always @(*) begin
	sdram_cmd_last <= 1'd0;
	refresher_next_state <= 2'd0;
	sdram_generator_start <= 1'd0;
	sdram_cmd_valid <= 1'd0;
	refresher_next_state <= refresher_state;
	case (refresher_state)
		1'd1: begin
			sdram_cmd_valid <= 1'd1;
			if (sdram_cmd_ready) begin
				sdram_generator_start <= 1'd1;
				refresher_next_state <= 2'd2;
			end
		end
		2'd2: begin
			if (sdram_generator_done) begin
				sdram_cmd_last <= 1'd1;
				refresher_next_state <= 1'd0;
			end else begin
				sdram_cmd_valid <= 1'd1;
			end
		end
		default: begin
			if (sdram_timer_done) begin
				refresher_next_state <= 1'd1;
			end
		end
	endcase
end
assign sdram_bankmachine0_cmd_buffer_lookahead_sink_valid = sdram_bankmachine0_req_valid;
assign sdram_bankmachine0_req_ready = sdram_bankmachine0_cmd_buffer_lookahead_sink_ready;
assign sdram_bankmachine0_cmd_buffer_lookahead_sink_payload_we = sdram_bankmachine0_req_we;
assign sdram_bankmachine0_cmd_buffer_lookahead_sink_payload_addr = sdram_bankmachine0_req_addr;
assign sdram_bankmachine0_cmd_buffer_sink_valid = sdram_bankmachine0_cmd_buffer_lookahead_source_valid;
assign sdram_bankmachine0_cmd_buffer_lookahead_source_ready = sdram_bankmachine0_cmd_buffer_sink_ready;
assign sdram_bankmachine0_cmd_buffer_sink_first = sdram_bankmachine0_cmd_buffer_lookahead_source_first;
assign sdram_bankmachine0_cmd_buffer_sink_last = sdram_bankmachine0_cmd_buffer_lookahead_source_last;
assign sdram_bankmachine0_cmd_buffer_sink_payload_we = sdram_bankmachine0_cmd_buffer_lookahead_source_payload_we;
assign sdram_bankmachine0_cmd_buffer_sink_payload_addr = sdram_bankmachine0_cmd_buffer_lookahead_source_payload_addr;
assign sdram_bankmachine0_cmd_buffer_source_ready = (sdram_bankmachine0_req_wdata_ready | sdram_bankmachine0_req_rdata_valid);
assign sdram_bankmachine0_req_lock = (sdram_bankmachine0_cmd_buffer_lookahead_source_valid | sdram_bankmachine0_cmd_buffer_source_valid);
assign sdram_bankmachine0_row_hit = (sdram_bankmachine0_row == sdram_bankmachine0_cmd_buffer_source_payload_addr[20:8]);
assign sdram_bankmachine0_cmd_payload_ba = 1'd0;
always @(*) begin
	sdram_bankmachine0_cmd_payload_a <= 13'd0;
	if (sdram_bankmachine0_row_col_n_addr_sel) begin
		sdram_bankmachine0_cmd_payload_a <= sdram_bankmachine0_cmd_buffer_source_payload_addr[20:8];
	end else begin
		sdram_bankmachine0_cmd_payload_a <= ((sdram_bankmachine0_auto_precharge <<< 4'd10) | {sdram_bankmachine0_cmd_buffer_source_payload_addr[7:0], {2{1'd0}}});
	end
end
assign sdram_bankmachine0_twtpcon_valid = ((sdram_bankmachine0_cmd_valid & sdram_bankmachine0_cmd_ready) & sdram_bankmachine0_cmd_payload_is_write);
assign sdram_bankmachine0_trccon_valid = ((sdram_bankmachine0_cmd_valid & sdram_bankmachine0_cmd_ready) & sdram_bankmachine0_row_open);
assign sdram_bankmachine0_trascon_valid = ((sdram_bankmachine0_cmd_valid & sdram_bankmachine0_cmd_ready) & sdram_bankmachine0_row_open);
always @(*) begin
	sdram_bankmachine0_auto_precharge <= 1'd0;
	if ((sdram_bankmachine0_cmd_buffer_lookahead_source_valid & sdram_bankmachine0_cmd_buffer_source_valid)) begin
		if ((sdram_bankmachine0_cmd_buffer_lookahead_source_payload_addr[20:8] != sdram_bankmachine0_cmd_buffer_source_payload_addr[20:8])) begin
			sdram_bankmachine0_auto_precharge <= (sdram_bankmachine0_row_close == 1'd0);
		end
	end
end
assign sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_din = {sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_last, sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_first, sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_payload_addr, sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_payload_we};
assign {sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_last, sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_first, sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_payload_addr, sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_payload_we} = sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_dout;
assign sdram_bankmachine0_cmd_buffer_lookahead_sink_ready = sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_writable;
assign sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_we = sdram_bankmachine0_cmd_buffer_lookahead_sink_valid;
assign sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_first = sdram_bankmachine0_cmd_buffer_lookahead_sink_first;
assign sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_last = sdram_bankmachine0_cmd_buffer_lookahead_sink_last;
assign sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_payload_we = sdram_bankmachine0_cmd_buffer_lookahead_sink_payload_we;
assign sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_payload_addr = sdram_bankmachine0_cmd_buffer_lookahead_sink_payload_addr;
assign sdram_bankmachine0_cmd_buffer_lookahead_source_valid = sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_readable;
assign sdram_bankmachine0_cmd_buffer_lookahead_source_first = sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_first;
assign sdram_bankmachine0_cmd_buffer_lookahead_source_last = sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_last;
assign sdram_bankmachine0_cmd_buffer_lookahead_source_payload_we = sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_payload_we;
assign sdram_bankmachine0_cmd_buffer_lookahead_source_payload_addr = sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_payload_addr;
assign sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_re = sdram_bankmachine0_cmd_buffer_lookahead_source_ready;
always @(*) begin
	sdram_bankmachine0_cmd_buffer_lookahead_wrport_adr <= 3'd0;
	if (sdram_bankmachine0_cmd_buffer_lookahead_replace) begin
		sdram_bankmachine0_cmd_buffer_lookahead_wrport_adr <= (sdram_bankmachine0_cmd_buffer_lookahead_produce - 1'd1);
	end else begin
		sdram_bankmachine0_cmd_buffer_lookahead_wrport_adr <= sdram_bankmachine0_cmd_buffer_lookahead_produce;
	end
end
assign sdram_bankmachine0_cmd_buffer_lookahead_wrport_dat_w = sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_din;
assign sdram_bankmachine0_cmd_buffer_lookahead_wrport_we = (sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_we & (sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_writable | sdram_bankmachine0_cmd_buffer_lookahead_replace));
assign sdram_bankmachine0_cmd_buffer_lookahead_do_read = (sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_readable & sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_re);
assign sdram_bankmachine0_cmd_buffer_lookahead_rdport_adr = sdram_bankmachine0_cmd_buffer_lookahead_consume;
assign sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_dout = sdram_bankmachine0_cmd_buffer_lookahead_rdport_dat_r;
assign sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_writable = (sdram_bankmachine0_cmd_buffer_lookahead_level != 4'd8);
assign sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_readable = (sdram_bankmachine0_cmd_buffer_lookahead_level != 1'd0);
assign sdram_bankmachine0_cmd_buffer_pipe_ce = (sdram_bankmachine0_cmd_buffer_source_ready | (~sdram_bankmachine0_cmd_buffer_valid_n));
assign sdram_bankmachine0_cmd_buffer_sink_ready = sdram_bankmachine0_cmd_buffer_pipe_ce;
assign sdram_bankmachine0_cmd_buffer_source_valid = sdram_bankmachine0_cmd_buffer_valid_n;
assign sdram_bankmachine0_cmd_buffer_busy = (1'd0 | sdram_bankmachine0_cmd_buffer_valid_n);
assign sdram_bankmachine0_cmd_buffer_source_first = sdram_bankmachine0_cmd_buffer_first_n;
assign sdram_bankmachine0_cmd_buffer_source_last = sdram_bankmachine0_cmd_buffer_last_n;
always @(*) begin
	sdram_bankmachine0_cmd_payload_we <= 1'd0;
	sdram_bankmachine0_cmd_payload_is_cmd <= 1'd0;
	sdram_bankmachine0_row_open <= 1'd0;
	sdram_bankmachine0_cmd_payload_is_read <= 1'd0;
	sdram_bankmachine0_row_close <= 1'd0;
	sdram_bankmachine0_cmd_payload_is_write <= 1'd0;
	sdram_bankmachine0_req_wdata_ready <= 1'd0;
	sdram_bankmachine0_req_rdata_valid <= 1'd0;
	sdram_bankmachine0_row_col_n_addr_sel <= 1'd0;
	sdram_bankmachine0_refresh_gnt <= 1'd0;
	sdram_bankmachine0_cmd_valid <= 1'd0;
	bankmachine0_next_state <= 3'd0;
	sdram_bankmachine0_cmd_payload_cas <= 1'd0;
	sdram_bankmachine0_cmd_payload_ras <= 1'd0;
	bankmachine0_next_state <= bankmachine0_state;
	case (bankmachine0_state)
		1'd1: begin
			if ((sdram_bankmachine0_twtpcon_ready & sdram_bankmachine0_trascon_ready)) begin
				sdram_bankmachine0_cmd_valid <= 1'd1;
				if (sdram_bankmachine0_cmd_ready) begin
					bankmachine0_next_state <= 2'd3;
				end
				sdram_bankmachine0_cmd_payload_ras <= 1'd1;
				sdram_bankmachine0_cmd_payload_we <= 1'd1;
				sdram_bankmachine0_cmd_payload_is_cmd <= 1'd1;
			end
			sdram_bankmachine0_row_close <= 1'd1;
		end
		2'd2: begin
			if ((sdram_bankmachine0_twtpcon_ready & sdram_bankmachine0_trascon_ready)) begin
				bankmachine0_next_state <= 2'd3;
			end
			sdram_bankmachine0_row_close <= 1'd1;
		end
		2'd3: begin
			if (sdram_bankmachine0_trccon_ready) begin
				sdram_bankmachine0_row_col_n_addr_sel <= 1'd1;
				sdram_bankmachine0_row_open <= 1'd1;
				sdram_bankmachine0_cmd_valid <= 1'd1;
				sdram_bankmachine0_cmd_payload_is_cmd <= 1'd1;
				if (sdram_bankmachine0_cmd_ready) begin
					bankmachine0_next_state <= 1'd0;
				end
				sdram_bankmachine0_cmd_payload_ras <= 1'd1;
			end
		end
		3'd4: begin
			if (sdram_bankmachine0_twtpcon_ready) begin
				sdram_bankmachine0_refresh_gnt <= 1'd1;
			end
			sdram_bankmachine0_row_close <= 1'd1;
			sdram_bankmachine0_cmd_payload_is_cmd <= 1'd1;
			if ((~sdram_bankmachine0_refresh_req)) begin
				bankmachine0_next_state <= 1'd0;
			end
		end
		default: begin
			if (sdram_bankmachine0_refresh_req) begin
				bankmachine0_next_state <= 3'd4;
			end else begin
				if (sdram_bankmachine0_cmd_buffer_source_valid) begin
					if (sdram_bankmachine0_row_opened) begin
						if (sdram_bankmachine0_row_hit) begin
							sdram_bankmachine0_cmd_valid <= 1'd1;
							if (sdram_bankmachine0_cmd_buffer_source_payload_we) begin
								sdram_bankmachine0_req_wdata_ready <= sdram_bankmachine0_cmd_ready;
								sdram_bankmachine0_cmd_payload_is_write <= 1'd1;
								sdram_bankmachine0_cmd_payload_we <= 1'd1;
							end else begin
								sdram_bankmachine0_req_rdata_valid <= sdram_bankmachine0_cmd_ready;
								sdram_bankmachine0_cmd_payload_is_read <= 1'd1;
							end
							sdram_bankmachine0_cmd_payload_cas <= 1'd1;
							if ((sdram_bankmachine0_cmd_ready & sdram_bankmachine0_auto_precharge)) begin
								bankmachine0_next_state <= 2'd2;
							end
						end else begin
							bankmachine0_next_state <= 1'd1;
						end
					end else begin
						bankmachine0_next_state <= 2'd3;
					end
				end
			end
		end
	endcase
end
assign sdram_bankmachine1_cmd_buffer_lookahead_sink_valid = sdram_bankmachine1_req_valid;
assign sdram_bankmachine1_req_ready = sdram_bankmachine1_cmd_buffer_lookahead_sink_ready;
assign sdram_bankmachine1_cmd_buffer_lookahead_sink_payload_we = sdram_bankmachine1_req_we;
assign sdram_bankmachine1_cmd_buffer_lookahead_sink_payload_addr = sdram_bankmachine1_req_addr;
assign sdram_bankmachine1_cmd_buffer_sink_valid = sdram_bankmachine1_cmd_buffer_lookahead_source_valid;
assign sdram_bankmachine1_cmd_buffer_lookahead_source_ready = sdram_bankmachine1_cmd_buffer_sink_ready;
assign sdram_bankmachine1_cmd_buffer_sink_first = sdram_bankmachine1_cmd_buffer_lookahead_source_first;
assign sdram_bankmachine1_cmd_buffer_sink_last = sdram_bankmachine1_cmd_buffer_lookahead_source_last;
assign sdram_bankmachine1_cmd_buffer_sink_payload_we = sdram_bankmachine1_cmd_buffer_lookahead_source_payload_we;
assign sdram_bankmachine1_cmd_buffer_sink_payload_addr = sdram_bankmachine1_cmd_buffer_lookahead_source_payload_addr;
assign sdram_bankmachine1_cmd_buffer_source_ready = (sdram_bankmachine1_req_wdata_ready | sdram_bankmachine1_req_rdata_valid);
assign sdram_bankmachine1_req_lock = (sdram_bankmachine1_cmd_buffer_lookahead_source_valid | sdram_bankmachine1_cmd_buffer_source_valid);
assign sdram_bankmachine1_row_hit = (sdram_bankmachine1_row == sdram_bankmachine1_cmd_buffer_source_payload_addr[20:8]);
assign sdram_bankmachine1_cmd_payload_ba = 1'd1;
always @(*) begin
	sdram_bankmachine1_cmd_payload_a <= 13'd0;
	if (sdram_bankmachine1_row_col_n_addr_sel) begin
		sdram_bankmachine1_cmd_payload_a <= sdram_bankmachine1_cmd_buffer_source_payload_addr[20:8];
	end else begin
		sdram_bankmachine1_cmd_payload_a <= ((sdram_bankmachine1_auto_precharge <<< 4'd10) | {sdram_bankmachine1_cmd_buffer_source_payload_addr[7:0], {2{1'd0}}});
	end
end
assign sdram_bankmachine1_twtpcon_valid = ((sdram_bankmachine1_cmd_valid & sdram_bankmachine1_cmd_ready) & sdram_bankmachine1_cmd_payload_is_write);
assign sdram_bankmachine1_trccon_valid = ((sdram_bankmachine1_cmd_valid & sdram_bankmachine1_cmd_ready) & sdram_bankmachine1_row_open);
assign sdram_bankmachine1_trascon_valid = ((sdram_bankmachine1_cmd_valid & sdram_bankmachine1_cmd_ready) & sdram_bankmachine1_row_open);
always @(*) begin
	sdram_bankmachine1_auto_precharge <= 1'd0;
	if ((sdram_bankmachine1_cmd_buffer_lookahead_source_valid & sdram_bankmachine1_cmd_buffer_source_valid)) begin
		if ((sdram_bankmachine1_cmd_buffer_lookahead_source_payload_addr[20:8] != sdram_bankmachine1_cmd_buffer_source_payload_addr[20:8])) begin
			sdram_bankmachine1_auto_precharge <= (sdram_bankmachine1_row_close == 1'd0);
		end
	end
end
assign sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_din = {sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_last, sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_first, sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_payload_addr, sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_payload_we};
assign {sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_last, sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_first, sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_payload_addr, sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_payload_we} = sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_dout;
assign sdram_bankmachine1_cmd_buffer_lookahead_sink_ready = sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_writable;
assign sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_we = sdram_bankmachine1_cmd_buffer_lookahead_sink_valid;
assign sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_first = sdram_bankmachine1_cmd_buffer_lookahead_sink_first;
assign sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_last = sdram_bankmachine1_cmd_buffer_lookahead_sink_last;
assign sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_payload_we = sdram_bankmachine1_cmd_buffer_lookahead_sink_payload_we;
assign sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_payload_addr = sdram_bankmachine1_cmd_buffer_lookahead_sink_payload_addr;
assign sdram_bankmachine1_cmd_buffer_lookahead_source_valid = sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_readable;
assign sdram_bankmachine1_cmd_buffer_lookahead_source_first = sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_first;
assign sdram_bankmachine1_cmd_buffer_lookahead_source_last = sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_last;
assign sdram_bankmachine1_cmd_buffer_lookahead_source_payload_we = sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_payload_we;
assign sdram_bankmachine1_cmd_buffer_lookahead_source_payload_addr = sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_payload_addr;
assign sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_re = sdram_bankmachine1_cmd_buffer_lookahead_source_ready;
always @(*) begin
	sdram_bankmachine1_cmd_buffer_lookahead_wrport_adr <= 3'd0;
	if (sdram_bankmachine1_cmd_buffer_lookahead_replace) begin
		sdram_bankmachine1_cmd_buffer_lookahead_wrport_adr <= (sdram_bankmachine1_cmd_buffer_lookahead_produce - 1'd1);
	end else begin
		sdram_bankmachine1_cmd_buffer_lookahead_wrport_adr <= sdram_bankmachine1_cmd_buffer_lookahead_produce;
	end
end
assign sdram_bankmachine1_cmd_buffer_lookahead_wrport_dat_w = sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_din;
assign sdram_bankmachine1_cmd_buffer_lookahead_wrport_we = (sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_we & (sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_writable | sdram_bankmachine1_cmd_buffer_lookahead_replace));
assign sdram_bankmachine1_cmd_buffer_lookahead_do_read = (sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_readable & sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_re);
assign sdram_bankmachine1_cmd_buffer_lookahead_rdport_adr = sdram_bankmachine1_cmd_buffer_lookahead_consume;
assign sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_dout = sdram_bankmachine1_cmd_buffer_lookahead_rdport_dat_r;
assign sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_writable = (sdram_bankmachine1_cmd_buffer_lookahead_level != 4'd8);
assign sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_readable = (sdram_bankmachine1_cmd_buffer_lookahead_level != 1'd0);
assign sdram_bankmachine1_cmd_buffer_pipe_ce = (sdram_bankmachine1_cmd_buffer_source_ready | (~sdram_bankmachine1_cmd_buffer_valid_n));
assign sdram_bankmachine1_cmd_buffer_sink_ready = sdram_bankmachine1_cmd_buffer_pipe_ce;
assign sdram_bankmachine1_cmd_buffer_source_valid = sdram_bankmachine1_cmd_buffer_valid_n;
assign sdram_bankmachine1_cmd_buffer_busy = (1'd0 | sdram_bankmachine1_cmd_buffer_valid_n);
assign sdram_bankmachine1_cmd_buffer_source_first = sdram_bankmachine1_cmd_buffer_first_n;
assign sdram_bankmachine1_cmd_buffer_source_last = sdram_bankmachine1_cmd_buffer_last_n;
always @(*) begin
	sdram_bankmachine1_row_col_n_addr_sel <= 1'd0;
	sdram_bankmachine1_refresh_gnt <= 1'd0;
	sdram_bankmachine1_cmd_valid <= 1'd0;
	bankmachine1_next_state <= 3'd0;
	sdram_bankmachine1_cmd_payload_cas <= 1'd0;
	sdram_bankmachine1_cmd_payload_ras <= 1'd0;
	sdram_bankmachine1_cmd_payload_we <= 1'd0;
	sdram_bankmachine1_cmd_payload_is_cmd <= 1'd0;
	sdram_bankmachine1_row_open <= 1'd0;
	sdram_bankmachine1_cmd_payload_is_read <= 1'd0;
	sdram_bankmachine1_row_close <= 1'd0;
	sdram_bankmachine1_cmd_payload_is_write <= 1'd0;
	sdram_bankmachine1_req_wdata_ready <= 1'd0;
	sdram_bankmachine1_req_rdata_valid <= 1'd0;
	bankmachine1_next_state <= bankmachine1_state;
	case (bankmachine1_state)
		1'd1: begin
			if ((sdram_bankmachine1_twtpcon_ready & sdram_bankmachine1_trascon_ready)) begin
				sdram_bankmachine1_cmd_valid <= 1'd1;
				if (sdram_bankmachine1_cmd_ready) begin
					bankmachine1_next_state <= 2'd3;
				end
				sdram_bankmachine1_cmd_payload_ras <= 1'd1;
				sdram_bankmachine1_cmd_payload_we <= 1'd1;
				sdram_bankmachine1_cmd_payload_is_cmd <= 1'd1;
			end
			sdram_bankmachine1_row_close <= 1'd1;
		end
		2'd2: begin
			if ((sdram_bankmachine1_twtpcon_ready & sdram_bankmachine1_trascon_ready)) begin
				bankmachine1_next_state <= 2'd3;
			end
			sdram_bankmachine1_row_close <= 1'd1;
		end
		2'd3: begin
			if (sdram_bankmachine1_trccon_ready) begin
				sdram_bankmachine1_row_col_n_addr_sel <= 1'd1;
				sdram_bankmachine1_row_open <= 1'd1;
				sdram_bankmachine1_cmd_valid <= 1'd1;
				sdram_bankmachine1_cmd_payload_is_cmd <= 1'd1;
				if (sdram_bankmachine1_cmd_ready) begin
					bankmachine1_next_state <= 1'd0;
				end
				sdram_bankmachine1_cmd_payload_ras <= 1'd1;
			end
		end
		3'd4: begin
			if (sdram_bankmachine1_twtpcon_ready) begin
				sdram_bankmachine1_refresh_gnt <= 1'd1;
			end
			sdram_bankmachine1_row_close <= 1'd1;
			sdram_bankmachine1_cmd_payload_is_cmd <= 1'd1;
			if ((~sdram_bankmachine1_refresh_req)) begin
				bankmachine1_next_state <= 1'd0;
			end
		end
		default: begin
			if (sdram_bankmachine1_refresh_req) begin
				bankmachine1_next_state <= 3'd4;
			end else begin
				if (sdram_bankmachine1_cmd_buffer_source_valid) begin
					if (sdram_bankmachine1_row_opened) begin
						if (sdram_bankmachine1_row_hit) begin
							sdram_bankmachine1_cmd_valid <= 1'd1;
							if (sdram_bankmachine1_cmd_buffer_source_payload_we) begin
								sdram_bankmachine1_req_wdata_ready <= sdram_bankmachine1_cmd_ready;
								sdram_bankmachine1_cmd_payload_is_write <= 1'd1;
								sdram_bankmachine1_cmd_payload_we <= 1'd1;
							end else begin
								sdram_bankmachine1_req_rdata_valid <= sdram_bankmachine1_cmd_ready;
								sdram_bankmachine1_cmd_payload_is_read <= 1'd1;
							end
							sdram_bankmachine1_cmd_payload_cas <= 1'd1;
							if ((sdram_bankmachine1_cmd_ready & sdram_bankmachine1_auto_precharge)) begin
								bankmachine1_next_state <= 2'd2;
							end
						end else begin
							bankmachine1_next_state <= 1'd1;
						end
					end else begin
						bankmachine1_next_state <= 2'd3;
					end
				end
			end
		end
	endcase
end
assign sdram_bankmachine2_cmd_buffer_lookahead_sink_valid = sdram_bankmachine2_req_valid;
assign sdram_bankmachine2_req_ready = sdram_bankmachine2_cmd_buffer_lookahead_sink_ready;
assign sdram_bankmachine2_cmd_buffer_lookahead_sink_payload_we = sdram_bankmachine2_req_we;
assign sdram_bankmachine2_cmd_buffer_lookahead_sink_payload_addr = sdram_bankmachine2_req_addr;
assign sdram_bankmachine2_cmd_buffer_sink_valid = sdram_bankmachine2_cmd_buffer_lookahead_source_valid;
assign sdram_bankmachine2_cmd_buffer_lookahead_source_ready = sdram_bankmachine2_cmd_buffer_sink_ready;
assign sdram_bankmachine2_cmd_buffer_sink_first = sdram_bankmachine2_cmd_buffer_lookahead_source_first;
assign sdram_bankmachine2_cmd_buffer_sink_last = sdram_bankmachine2_cmd_buffer_lookahead_source_last;
assign sdram_bankmachine2_cmd_buffer_sink_payload_we = sdram_bankmachine2_cmd_buffer_lookahead_source_payload_we;
assign sdram_bankmachine2_cmd_buffer_sink_payload_addr = sdram_bankmachine2_cmd_buffer_lookahead_source_payload_addr;
assign sdram_bankmachine2_cmd_buffer_source_ready = (sdram_bankmachine2_req_wdata_ready | sdram_bankmachine2_req_rdata_valid);
assign sdram_bankmachine2_req_lock = (sdram_bankmachine2_cmd_buffer_lookahead_source_valid | sdram_bankmachine2_cmd_buffer_source_valid);
assign sdram_bankmachine2_row_hit = (sdram_bankmachine2_row == sdram_bankmachine2_cmd_buffer_source_payload_addr[20:8]);
assign sdram_bankmachine2_cmd_payload_ba = 2'd2;
always @(*) begin
	sdram_bankmachine2_cmd_payload_a <= 13'd0;
	if (sdram_bankmachine2_row_col_n_addr_sel) begin
		sdram_bankmachine2_cmd_payload_a <= sdram_bankmachine2_cmd_buffer_source_payload_addr[20:8];
	end else begin
		sdram_bankmachine2_cmd_payload_a <= ((sdram_bankmachine2_auto_precharge <<< 4'd10) | {sdram_bankmachine2_cmd_buffer_source_payload_addr[7:0], {2{1'd0}}});
	end
end
assign sdram_bankmachine2_twtpcon_valid = ((sdram_bankmachine2_cmd_valid & sdram_bankmachine2_cmd_ready) & sdram_bankmachine2_cmd_payload_is_write);
assign sdram_bankmachine2_trccon_valid = ((sdram_bankmachine2_cmd_valid & sdram_bankmachine2_cmd_ready) & sdram_bankmachine2_row_open);
assign sdram_bankmachine2_trascon_valid = ((sdram_bankmachine2_cmd_valid & sdram_bankmachine2_cmd_ready) & sdram_bankmachine2_row_open);
always @(*) begin
	sdram_bankmachine2_auto_precharge <= 1'd0;
	if ((sdram_bankmachine2_cmd_buffer_lookahead_source_valid & sdram_bankmachine2_cmd_buffer_source_valid)) begin
		if ((sdram_bankmachine2_cmd_buffer_lookahead_source_payload_addr[20:8] != sdram_bankmachine2_cmd_buffer_source_payload_addr[20:8])) begin
			sdram_bankmachine2_auto_precharge <= (sdram_bankmachine2_row_close == 1'd0);
		end
	end
end
assign sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_din = {sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_last, sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_first, sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_payload_addr, sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_payload_we};
assign {sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_last, sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_first, sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_payload_addr, sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_payload_we} = sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_dout;
assign sdram_bankmachine2_cmd_buffer_lookahead_sink_ready = sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_writable;
assign sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_we = sdram_bankmachine2_cmd_buffer_lookahead_sink_valid;
assign sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_first = sdram_bankmachine2_cmd_buffer_lookahead_sink_first;
assign sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_last = sdram_bankmachine2_cmd_buffer_lookahead_sink_last;
assign sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_payload_we = sdram_bankmachine2_cmd_buffer_lookahead_sink_payload_we;
assign sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_payload_addr = sdram_bankmachine2_cmd_buffer_lookahead_sink_payload_addr;
assign sdram_bankmachine2_cmd_buffer_lookahead_source_valid = sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_readable;
assign sdram_bankmachine2_cmd_buffer_lookahead_source_first = sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_first;
assign sdram_bankmachine2_cmd_buffer_lookahead_source_last = sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_last;
assign sdram_bankmachine2_cmd_buffer_lookahead_source_payload_we = sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_payload_we;
assign sdram_bankmachine2_cmd_buffer_lookahead_source_payload_addr = sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_payload_addr;
assign sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_re = sdram_bankmachine2_cmd_buffer_lookahead_source_ready;
always @(*) begin
	sdram_bankmachine2_cmd_buffer_lookahead_wrport_adr <= 3'd0;
	if (sdram_bankmachine2_cmd_buffer_lookahead_replace) begin
		sdram_bankmachine2_cmd_buffer_lookahead_wrport_adr <= (sdram_bankmachine2_cmd_buffer_lookahead_produce - 1'd1);
	end else begin
		sdram_bankmachine2_cmd_buffer_lookahead_wrport_adr <= sdram_bankmachine2_cmd_buffer_lookahead_produce;
	end
end
assign sdram_bankmachine2_cmd_buffer_lookahead_wrport_dat_w = sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_din;
assign sdram_bankmachine2_cmd_buffer_lookahead_wrport_we = (sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_we & (sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_writable | sdram_bankmachine2_cmd_buffer_lookahead_replace));
assign sdram_bankmachine2_cmd_buffer_lookahead_do_read = (sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_readable & sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_re);
assign sdram_bankmachine2_cmd_buffer_lookahead_rdport_adr = sdram_bankmachine2_cmd_buffer_lookahead_consume;
assign sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_dout = sdram_bankmachine2_cmd_buffer_lookahead_rdport_dat_r;
assign sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_writable = (sdram_bankmachine2_cmd_buffer_lookahead_level != 4'd8);
assign sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_readable = (sdram_bankmachine2_cmd_buffer_lookahead_level != 1'd0);
assign sdram_bankmachine2_cmd_buffer_pipe_ce = (sdram_bankmachine2_cmd_buffer_source_ready | (~sdram_bankmachine2_cmd_buffer_valid_n));
assign sdram_bankmachine2_cmd_buffer_sink_ready = sdram_bankmachine2_cmd_buffer_pipe_ce;
assign sdram_bankmachine2_cmd_buffer_source_valid = sdram_bankmachine2_cmd_buffer_valid_n;
assign sdram_bankmachine2_cmd_buffer_busy = (1'd0 | sdram_bankmachine2_cmd_buffer_valid_n);
assign sdram_bankmachine2_cmd_buffer_source_first = sdram_bankmachine2_cmd_buffer_first_n;
assign sdram_bankmachine2_cmd_buffer_source_last = sdram_bankmachine2_cmd_buffer_last_n;
always @(*) begin
	sdram_bankmachine2_cmd_payload_cas <= 1'd0;
	bankmachine2_next_state <= 3'd0;
	sdram_bankmachine2_cmd_payload_ras <= 1'd0;
	sdram_bankmachine2_cmd_payload_we <= 1'd0;
	sdram_bankmachine2_cmd_payload_is_cmd <= 1'd0;
	sdram_bankmachine2_row_open <= 1'd0;
	sdram_bankmachine2_cmd_payload_is_read <= 1'd0;
	sdram_bankmachine2_row_close <= 1'd0;
	sdram_bankmachine2_cmd_payload_is_write <= 1'd0;
	sdram_bankmachine2_req_wdata_ready <= 1'd0;
	sdram_bankmachine2_req_rdata_valid <= 1'd0;
	sdram_bankmachine2_row_col_n_addr_sel <= 1'd0;
	sdram_bankmachine2_refresh_gnt <= 1'd0;
	sdram_bankmachine2_cmd_valid <= 1'd0;
	bankmachine2_next_state <= bankmachine2_state;
	case (bankmachine2_state)
		1'd1: begin
			if ((sdram_bankmachine2_twtpcon_ready & sdram_bankmachine2_trascon_ready)) begin
				sdram_bankmachine2_cmd_valid <= 1'd1;
				if (sdram_bankmachine2_cmd_ready) begin
					bankmachine2_next_state <= 2'd3;
				end
				sdram_bankmachine2_cmd_payload_ras <= 1'd1;
				sdram_bankmachine2_cmd_payload_we <= 1'd1;
				sdram_bankmachine2_cmd_payload_is_cmd <= 1'd1;
			end
			sdram_bankmachine2_row_close <= 1'd1;
		end
		2'd2: begin
			if ((sdram_bankmachine2_twtpcon_ready & sdram_bankmachine2_trascon_ready)) begin
				bankmachine2_next_state <= 2'd3;
			end
			sdram_bankmachine2_row_close <= 1'd1;
		end
		2'd3: begin
			if (sdram_bankmachine2_trccon_ready) begin
				sdram_bankmachine2_row_col_n_addr_sel <= 1'd1;
				sdram_bankmachine2_row_open <= 1'd1;
				sdram_bankmachine2_cmd_valid <= 1'd1;
				sdram_bankmachine2_cmd_payload_is_cmd <= 1'd1;
				if (sdram_bankmachine2_cmd_ready) begin
					bankmachine2_next_state <= 1'd0;
				end
				sdram_bankmachine2_cmd_payload_ras <= 1'd1;
			end
		end
		3'd4: begin
			if (sdram_bankmachine2_twtpcon_ready) begin
				sdram_bankmachine2_refresh_gnt <= 1'd1;
			end
			sdram_bankmachine2_row_close <= 1'd1;
			sdram_bankmachine2_cmd_payload_is_cmd <= 1'd1;
			if ((~sdram_bankmachine2_refresh_req)) begin
				bankmachine2_next_state <= 1'd0;
			end
		end
		default: begin
			if (sdram_bankmachine2_refresh_req) begin
				bankmachine2_next_state <= 3'd4;
			end else begin
				if (sdram_bankmachine2_cmd_buffer_source_valid) begin
					if (sdram_bankmachine2_row_opened) begin
						if (sdram_bankmachine2_row_hit) begin
							sdram_bankmachine2_cmd_valid <= 1'd1;
							if (sdram_bankmachine2_cmd_buffer_source_payload_we) begin
								sdram_bankmachine2_req_wdata_ready <= sdram_bankmachine2_cmd_ready;
								sdram_bankmachine2_cmd_payload_is_write <= 1'd1;
								sdram_bankmachine2_cmd_payload_we <= 1'd1;
							end else begin
								sdram_bankmachine2_req_rdata_valid <= sdram_bankmachine2_cmd_ready;
								sdram_bankmachine2_cmd_payload_is_read <= 1'd1;
							end
							sdram_bankmachine2_cmd_payload_cas <= 1'd1;
							if ((sdram_bankmachine2_cmd_ready & sdram_bankmachine2_auto_precharge)) begin
								bankmachine2_next_state <= 2'd2;
							end
						end else begin
							bankmachine2_next_state <= 1'd1;
						end
					end else begin
						bankmachine2_next_state <= 2'd3;
					end
				end
			end
		end
	endcase
end
assign sdram_bankmachine3_cmd_buffer_lookahead_sink_valid = sdram_bankmachine3_req_valid;
assign sdram_bankmachine3_req_ready = sdram_bankmachine3_cmd_buffer_lookahead_sink_ready;
assign sdram_bankmachine3_cmd_buffer_lookahead_sink_payload_we = sdram_bankmachine3_req_we;
assign sdram_bankmachine3_cmd_buffer_lookahead_sink_payload_addr = sdram_bankmachine3_req_addr;
assign sdram_bankmachine3_cmd_buffer_sink_valid = sdram_bankmachine3_cmd_buffer_lookahead_source_valid;
assign sdram_bankmachine3_cmd_buffer_lookahead_source_ready = sdram_bankmachine3_cmd_buffer_sink_ready;
assign sdram_bankmachine3_cmd_buffer_sink_first = sdram_bankmachine3_cmd_buffer_lookahead_source_first;
assign sdram_bankmachine3_cmd_buffer_sink_last = sdram_bankmachine3_cmd_buffer_lookahead_source_last;
assign sdram_bankmachine3_cmd_buffer_sink_payload_we = sdram_bankmachine3_cmd_buffer_lookahead_source_payload_we;
assign sdram_bankmachine3_cmd_buffer_sink_payload_addr = sdram_bankmachine3_cmd_buffer_lookahead_source_payload_addr;
assign sdram_bankmachine3_cmd_buffer_source_ready = (sdram_bankmachine3_req_wdata_ready | sdram_bankmachine3_req_rdata_valid);
assign sdram_bankmachine3_req_lock = (sdram_bankmachine3_cmd_buffer_lookahead_source_valid | sdram_bankmachine3_cmd_buffer_source_valid);
assign sdram_bankmachine3_row_hit = (sdram_bankmachine3_row == sdram_bankmachine3_cmd_buffer_source_payload_addr[20:8]);
assign sdram_bankmachine3_cmd_payload_ba = 2'd3;
always @(*) begin
	sdram_bankmachine3_cmd_payload_a <= 13'd0;
	if (sdram_bankmachine3_row_col_n_addr_sel) begin
		sdram_bankmachine3_cmd_payload_a <= sdram_bankmachine3_cmd_buffer_source_payload_addr[20:8];
	end else begin
		sdram_bankmachine3_cmd_payload_a <= ((sdram_bankmachine3_auto_precharge <<< 4'd10) | {sdram_bankmachine3_cmd_buffer_source_payload_addr[7:0], {2{1'd0}}});
	end
end
assign sdram_bankmachine3_twtpcon_valid = ((sdram_bankmachine3_cmd_valid & sdram_bankmachine3_cmd_ready) & sdram_bankmachine3_cmd_payload_is_write);
assign sdram_bankmachine3_trccon_valid = ((sdram_bankmachine3_cmd_valid & sdram_bankmachine3_cmd_ready) & sdram_bankmachine3_row_open);
assign sdram_bankmachine3_trascon_valid = ((sdram_bankmachine3_cmd_valid & sdram_bankmachine3_cmd_ready) & sdram_bankmachine3_row_open);
always @(*) begin
	sdram_bankmachine3_auto_precharge <= 1'd0;
	if ((sdram_bankmachine3_cmd_buffer_lookahead_source_valid & sdram_bankmachine3_cmd_buffer_source_valid)) begin
		if ((sdram_bankmachine3_cmd_buffer_lookahead_source_payload_addr[20:8] != sdram_bankmachine3_cmd_buffer_source_payload_addr[20:8])) begin
			sdram_bankmachine3_auto_precharge <= (sdram_bankmachine3_row_close == 1'd0);
		end
	end
end
assign sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_din = {sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_last, sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_first, sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_payload_addr, sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_payload_we};
assign {sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_last, sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_first, sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_payload_addr, sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_payload_we} = sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_dout;
assign sdram_bankmachine3_cmd_buffer_lookahead_sink_ready = sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_writable;
assign sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_we = sdram_bankmachine3_cmd_buffer_lookahead_sink_valid;
assign sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_first = sdram_bankmachine3_cmd_buffer_lookahead_sink_first;
assign sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_last = sdram_bankmachine3_cmd_buffer_lookahead_sink_last;
assign sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_payload_we = sdram_bankmachine3_cmd_buffer_lookahead_sink_payload_we;
assign sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_payload_addr = sdram_bankmachine3_cmd_buffer_lookahead_sink_payload_addr;
assign sdram_bankmachine3_cmd_buffer_lookahead_source_valid = sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_readable;
assign sdram_bankmachine3_cmd_buffer_lookahead_source_first = sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_first;
assign sdram_bankmachine3_cmd_buffer_lookahead_source_last = sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_last;
assign sdram_bankmachine3_cmd_buffer_lookahead_source_payload_we = sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_payload_we;
assign sdram_bankmachine3_cmd_buffer_lookahead_source_payload_addr = sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_payload_addr;
assign sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_re = sdram_bankmachine3_cmd_buffer_lookahead_source_ready;
always @(*) begin
	sdram_bankmachine3_cmd_buffer_lookahead_wrport_adr <= 3'd0;
	if (sdram_bankmachine3_cmd_buffer_lookahead_replace) begin
		sdram_bankmachine3_cmd_buffer_lookahead_wrport_adr <= (sdram_bankmachine3_cmd_buffer_lookahead_produce - 1'd1);
	end else begin
		sdram_bankmachine3_cmd_buffer_lookahead_wrport_adr <= sdram_bankmachine3_cmd_buffer_lookahead_produce;
	end
end
assign sdram_bankmachine3_cmd_buffer_lookahead_wrport_dat_w = sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_din;
assign sdram_bankmachine3_cmd_buffer_lookahead_wrport_we = (sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_we & (sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_writable | sdram_bankmachine3_cmd_buffer_lookahead_replace));
assign sdram_bankmachine3_cmd_buffer_lookahead_do_read = (sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_readable & sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_re);
assign sdram_bankmachine3_cmd_buffer_lookahead_rdport_adr = sdram_bankmachine3_cmd_buffer_lookahead_consume;
assign sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_dout = sdram_bankmachine3_cmd_buffer_lookahead_rdport_dat_r;
assign sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_writable = (sdram_bankmachine3_cmd_buffer_lookahead_level != 4'd8);
assign sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_readable = (sdram_bankmachine3_cmd_buffer_lookahead_level != 1'd0);
assign sdram_bankmachine3_cmd_buffer_pipe_ce = (sdram_bankmachine3_cmd_buffer_source_ready | (~sdram_bankmachine3_cmd_buffer_valid_n));
assign sdram_bankmachine3_cmd_buffer_sink_ready = sdram_bankmachine3_cmd_buffer_pipe_ce;
assign sdram_bankmachine3_cmd_buffer_source_valid = sdram_bankmachine3_cmd_buffer_valid_n;
assign sdram_bankmachine3_cmd_buffer_busy = (1'd0 | sdram_bankmachine3_cmd_buffer_valid_n);
assign sdram_bankmachine3_cmd_buffer_source_first = sdram_bankmachine3_cmd_buffer_first_n;
assign sdram_bankmachine3_cmd_buffer_source_last = sdram_bankmachine3_cmd_buffer_last_n;
always @(*) begin
	sdram_bankmachine3_row_open <= 1'd0;
	sdram_bankmachine3_cmd_payload_is_read <= 1'd0;
	sdram_bankmachine3_row_close <= 1'd0;
	sdram_bankmachine3_cmd_payload_is_write <= 1'd0;
	sdram_bankmachine3_req_wdata_ready <= 1'd0;
	sdram_bankmachine3_req_rdata_valid <= 1'd0;
	sdram_bankmachine3_row_col_n_addr_sel <= 1'd0;
	sdram_bankmachine3_refresh_gnt <= 1'd0;
	sdram_bankmachine3_cmd_valid <= 1'd0;
	sdram_bankmachine3_cmd_payload_cas <= 1'd0;
	sdram_bankmachine3_cmd_payload_ras <= 1'd0;
	sdram_bankmachine3_cmd_payload_we <= 1'd0;
	bankmachine3_next_state <= 3'd0;
	sdram_bankmachine3_cmd_payload_is_cmd <= 1'd0;
	bankmachine3_next_state <= bankmachine3_state;
	case (bankmachine3_state)
		1'd1: begin
			if ((sdram_bankmachine3_twtpcon_ready & sdram_bankmachine3_trascon_ready)) begin
				sdram_bankmachine3_cmd_valid <= 1'd1;
				if (sdram_bankmachine3_cmd_ready) begin
					bankmachine3_next_state <= 2'd3;
				end
				sdram_bankmachine3_cmd_payload_ras <= 1'd1;
				sdram_bankmachine3_cmd_payload_we <= 1'd1;
				sdram_bankmachine3_cmd_payload_is_cmd <= 1'd1;
			end
			sdram_bankmachine3_row_close <= 1'd1;
		end
		2'd2: begin
			if ((sdram_bankmachine3_twtpcon_ready & sdram_bankmachine3_trascon_ready)) begin
				bankmachine3_next_state <= 2'd3;
			end
			sdram_bankmachine3_row_close <= 1'd1;
		end
		2'd3: begin
			if (sdram_bankmachine3_trccon_ready) begin
				sdram_bankmachine3_row_col_n_addr_sel <= 1'd1;
				sdram_bankmachine3_row_open <= 1'd1;
				sdram_bankmachine3_cmd_valid <= 1'd1;
				sdram_bankmachine3_cmd_payload_is_cmd <= 1'd1;
				if (sdram_bankmachine3_cmd_ready) begin
					bankmachine3_next_state <= 1'd0;
				end
				sdram_bankmachine3_cmd_payload_ras <= 1'd1;
			end
		end
		3'd4: begin
			if (sdram_bankmachine3_twtpcon_ready) begin
				sdram_bankmachine3_refresh_gnt <= 1'd1;
			end
			sdram_bankmachine3_row_close <= 1'd1;
			sdram_bankmachine3_cmd_payload_is_cmd <= 1'd1;
			if ((~sdram_bankmachine3_refresh_req)) begin
				bankmachine3_next_state <= 1'd0;
			end
		end
		default: begin
			if (sdram_bankmachine3_refresh_req) begin
				bankmachine3_next_state <= 3'd4;
			end else begin
				if (sdram_bankmachine3_cmd_buffer_source_valid) begin
					if (sdram_bankmachine3_row_opened) begin
						if (sdram_bankmachine3_row_hit) begin
							sdram_bankmachine3_cmd_valid <= 1'd1;
							if (sdram_bankmachine3_cmd_buffer_source_payload_we) begin
								sdram_bankmachine3_req_wdata_ready <= sdram_bankmachine3_cmd_ready;
								sdram_bankmachine3_cmd_payload_is_write <= 1'd1;
								sdram_bankmachine3_cmd_payload_we <= 1'd1;
							end else begin
								sdram_bankmachine3_req_rdata_valid <= sdram_bankmachine3_cmd_ready;
								sdram_bankmachine3_cmd_payload_is_read <= 1'd1;
							end
							sdram_bankmachine3_cmd_payload_cas <= 1'd1;
							if ((sdram_bankmachine3_cmd_ready & sdram_bankmachine3_auto_precharge)) begin
								bankmachine3_next_state <= 2'd2;
							end
						end else begin
							bankmachine3_next_state <= 1'd1;
						end
					end else begin
						bankmachine3_next_state <= 2'd3;
					end
				end
			end
		end
	endcase
end
assign sdram_trrdcon_valid = ((sdram_choose_cmd_cmd_valid & sdram_choose_cmd_cmd_ready) & ((sdram_choose_cmd_cmd_payload_ras & (~sdram_choose_cmd_cmd_payload_cas)) & (~sdram_choose_cmd_cmd_payload_we)));
assign sdram_tfawcon_valid = ((sdram_choose_cmd_cmd_valid & sdram_choose_cmd_cmd_ready) & ((sdram_choose_cmd_cmd_payload_ras & (~sdram_choose_cmd_cmd_payload_cas)) & (~sdram_choose_cmd_cmd_payload_we)));
assign sdram_ras_allowed = (sdram_trrdcon_ready & sdram_tfawcon_ready);
assign sdram_tccdcon_valid = ((sdram_choose_req_cmd_valid & sdram_choose_req_cmd_ready) & (sdram_choose_req_cmd_payload_is_write | sdram_choose_req_cmd_payload_is_read));
assign sdram_cas_allowed = sdram_tccdcon_ready;
assign sdram_twtrcon_valid = ((sdram_choose_req_cmd_valid & sdram_choose_req_cmd_ready) & sdram_choose_req_cmd_payload_is_write);
assign sdram_read_available = ((((sdram_bankmachine0_cmd_valid & sdram_bankmachine0_cmd_payload_is_read) | (sdram_bankmachine1_cmd_valid & sdram_bankmachine1_cmd_payload_is_read)) | (sdram_bankmachine2_cmd_valid & sdram_bankmachine2_cmd_payload_is_read)) | (sdram_bankmachine3_cmd_valid & sdram_bankmachine3_cmd_payload_is_read));
assign sdram_write_available = ((((sdram_bankmachine0_cmd_valid & sdram_bankmachine0_cmd_payload_is_write) | (sdram_bankmachine1_cmd_valid & sdram_bankmachine1_cmd_payload_is_write)) | (sdram_bankmachine2_cmd_valid & sdram_bankmachine2_cmd_payload_is_write)) | (sdram_bankmachine3_cmd_valid & sdram_bankmachine3_cmd_payload_is_write));
assign sdram_max_time0 = (sdram_time0 == 1'd0);
assign sdram_max_time1 = (sdram_time1 == 1'd0);
assign sdram_bankmachine0_refresh_req = sdram_cmd_valid;
assign sdram_bankmachine1_refresh_req = sdram_cmd_valid;
assign sdram_bankmachine2_refresh_req = sdram_cmd_valid;
assign sdram_bankmachine3_refresh_req = sdram_cmd_valid;
assign sdram_go_to_refresh = (((sdram_bankmachine0_refresh_gnt & sdram_bankmachine1_refresh_gnt) & sdram_bankmachine2_refresh_gnt) & sdram_bankmachine3_refresh_gnt);
assign sdram_interface_rdata = {sdram_dfi_p1_rddata, sdram_dfi_p0_rddata};
assign {sdram_dfi_p1_wrdata, sdram_dfi_p0_wrdata} = sdram_interface_wdata;
assign {sdram_dfi_p1_wrdata_mask, sdram_dfi_p0_wrdata_mask} = (~sdram_interface_wdata_we);
always @(*) begin
	sdram_choose_cmd_valids <= 4'd0;
	sdram_choose_cmd_valids[0] <= (sdram_bankmachine0_cmd_valid & (((sdram_bankmachine0_cmd_payload_is_cmd & sdram_choose_cmd_want_cmds) & ((~((sdram_bankmachine0_cmd_payload_ras & (~sdram_bankmachine0_cmd_payload_cas)) & (~sdram_bankmachine0_cmd_payload_we))) | sdram_choose_cmd_want_activates)) | ((sdram_bankmachine0_cmd_payload_is_read == sdram_choose_cmd_want_reads) & (sdram_bankmachine0_cmd_payload_is_write == sdram_choose_cmd_want_writes))));
	sdram_choose_cmd_valids[1] <= (sdram_bankmachine1_cmd_valid & (((sdram_bankmachine1_cmd_payload_is_cmd & sdram_choose_cmd_want_cmds) & ((~((sdram_bankmachine1_cmd_payload_ras & (~sdram_bankmachine1_cmd_payload_cas)) & (~sdram_bankmachine1_cmd_payload_we))) | sdram_choose_cmd_want_activates)) | ((sdram_bankmachine1_cmd_payload_is_read == sdram_choose_cmd_want_reads) & (sdram_bankmachine1_cmd_payload_is_write == sdram_choose_cmd_want_writes))));
	sdram_choose_cmd_valids[2] <= (sdram_bankmachine2_cmd_valid & (((sdram_bankmachine2_cmd_payload_is_cmd & sdram_choose_cmd_want_cmds) & ((~((sdram_bankmachine2_cmd_payload_ras & (~sdram_bankmachine2_cmd_payload_cas)) & (~sdram_bankmachine2_cmd_payload_we))) | sdram_choose_cmd_want_activates)) | ((sdram_bankmachine2_cmd_payload_is_read == sdram_choose_cmd_want_reads) & (sdram_bankmachine2_cmd_payload_is_write == sdram_choose_cmd_want_writes))));
	sdram_choose_cmd_valids[3] <= (sdram_bankmachine3_cmd_valid & (((sdram_bankmachine3_cmd_payload_is_cmd & sdram_choose_cmd_want_cmds) & ((~((sdram_bankmachine3_cmd_payload_ras & (~sdram_bankmachine3_cmd_payload_cas)) & (~sdram_bankmachine3_cmd_payload_we))) | sdram_choose_cmd_want_activates)) | ((sdram_bankmachine3_cmd_payload_is_read == sdram_choose_cmd_want_reads) & (sdram_bankmachine3_cmd_payload_is_write == sdram_choose_cmd_want_writes))));
end
assign sdram_choose_cmd_request = sdram_choose_cmd_valids;
assign sdram_choose_cmd_cmd_valid = rhs_array_muxed0;
assign sdram_choose_cmd_cmd_payload_a = rhs_array_muxed1;
assign sdram_choose_cmd_cmd_payload_ba = rhs_array_muxed2;
assign sdram_choose_cmd_cmd_payload_is_read = rhs_array_muxed3;
assign sdram_choose_cmd_cmd_payload_is_write = rhs_array_muxed4;
assign sdram_choose_cmd_cmd_payload_is_cmd = rhs_array_muxed5;
always @(*) begin
	sdram_choose_cmd_cmd_payload_cas <= 1'd0;
	if (sdram_choose_cmd_cmd_valid) begin
		sdram_choose_cmd_cmd_payload_cas <= t_array_muxed0;
	end
end
always @(*) begin
	sdram_choose_cmd_cmd_payload_ras <= 1'd0;
	if (sdram_choose_cmd_cmd_valid) begin
		sdram_choose_cmd_cmd_payload_ras <= t_array_muxed1;
	end
end
always @(*) begin
	sdram_choose_cmd_cmd_payload_we <= 1'd0;
	if (sdram_choose_cmd_cmd_valid) begin
		sdram_choose_cmd_cmd_payload_we <= t_array_muxed2;
	end
end
assign sdram_choose_cmd_ce = (sdram_choose_cmd_cmd_ready | (~sdram_choose_cmd_cmd_valid));
always @(*) begin
	sdram_choose_req_valids <= 4'd0;
	sdram_choose_req_valids[0] <= (sdram_bankmachine0_cmd_valid & (((sdram_bankmachine0_cmd_payload_is_cmd & sdram_choose_req_want_cmds) & ((~((sdram_bankmachine0_cmd_payload_ras & (~sdram_bankmachine0_cmd_payload_cas)) & (~sdram_bankmachine0_cmd_payload_we))) | sdram_choose_req_want_activates)) | ((sdram_bankmachine0_cmd_payload_is_read == sdram_choose_req_want_reads) & (sdram_bankmachine0_cmd_payload_is_write == sdram_choose_req_want_writes))));
	sdram_choose_req_valids[1] <= (sdram_bankmachine1_cmd_valid & (((sdram_bankmachine1_cmd_payload_is_cmd & sdram_choose_req_want_cmds) & ((~((sdram_bankmachine1_cmd_payload_ras & (~sdram_bankmachine1_cmd_payload_cas)) & (~sdram_bankmachine1_cmd_payload_we))) | sdram_choose_req_want_activates)) | ((sdram_bankmachine1_cmd_payload_is_read == sdram_choose_req_want_reads) & (sdram_bankmachine1_cmd_payload_is_write == sdram_choose_req_want_writes))));
	sdram_choose_req_valids[2] <= (sdram_bankmachine2_cmd_valid & (((sdram_bankmachine2_cmd_payload_is_cmd & sdram_choose_req_want_cmds) & ((~((sdram_bankmachine2_cmd_payload_ras & (~sdram_bankmachine2_cmd_payload_cas)) & (~sdram_bankmachine2_cmd_payload_we))) | sdram_choose_req_want_activates)) | ((sdram_bankmachine2_cmd_payload_is_read == sdram_choose_req_want_reads) & (sdram_bankmachine2_cmd_payload_is_write == sdram_choose_req_want_writes))));
	sdram_choose_req_valids[3] <= (sdram_bankmachine3_cmd_valid & (((sdram_bankmachine3_cmd_payload_is_cmd & sdram_choose_req_want_cmds) & ((~((sdram_bankmachine3_cmd_payload_ras & (~sdram_bankmachine3_cmd_payload_cas)) & (~sdram_bankmachine3_cmd_payload_we))) | sdram_choose_req_want_activates)) | ((sdram_bankmachine3_cmd_payload_is_read == sdram_choose_req_want_reads) & (sdram_bankmachine3_cmd_payload_is_write == sdram_choose_req_want_writes))));
end
assign sdram_choose_req_request = sdram_choose_req_valids;
assign sdram_choose_req_cmd_valid = rhs_array_muxed6;
assign sdram_choose_req_cmd_payload_a = rhs_array_muxed7;
assign sdram_choose_req_cmd_payload_ba = rhs_array_muxed8;
assign sdram_choose_req_cmd_payload_is_read = rhs_array_muxed9;
assign sdram_choose_req_cmd_payload_is_write = rhs_array_muxed10;
assign sdram_choose_req_cmd_payload_is_cmd = rhs_array_muxed11;
always @(*) begin
	sdram_choose_req_cmd_payload_cas <= 1'd0;
	if (sdram_choose_req_cmd_valid) begin
		sdram_choose_req_cmd_payload_cas <= t_array_muxed3;
	end
end
always @(*) begin
	sdram_choose_req_cmd_payload_ras <= 1'd0;
	if (sdram_choose_req_cmd_valid) begin
		sdram_choose_req_cmd_payload_ras <= t_array_muxed4;
	end
end
always @(*) begin
	sdram_choose_req_cmd_payload_we <= 1'd0;
	if (sdram_choose_req_cmd_valid) begin
		sdram_choose_req_cmd_payload_we <= t_array_muxed5;
	end
end
always @(*) begin
	sdram_bankmachine0_cmd_ready <= 1'd0;
	if (((sdram_choose_cmd_cmd_valid & sdram_choose_cmd_cmd_ready) & (sdram_choose_cmd_grant == 1'd0))) begin
		sdram_bankmachine0_cmd_ready <= 1'd1;
	end
	if (((sdram_choose_req_cmd_valid & sdram_choose_req_cmd_ready) & (sdram_choose_req_grant == 1'd0))) begin
		sdram_bankmachine0_cmd_ready <= 1'd1;
	end
end
always @(*) begin
	sdram_bankmachine1_cmd_ready <= 1'd0;
	if (((sdram_choose_cmd_cmd_valid & sdram_choose_cmd_cmd_ready) & (sdram_choose_cmd_grant == 1'd1))) begin
		sdram_bankmachine1_cmd_ready <= 1'd1;
	end
	if (((sdram_choose_req_cmd_valid & sdram_choose_req_cmd_ready) & (sdram_choose_req_grant == 1'd1))) begin
		sdram_bankmachine1_cmd_ready <= 1'd1;
	end
end
always @(*) begin
	sdram_bankmachine2_cmd_ready <= 1'd0;
	if (((sdram_choose_cmd_cmd_valid & sdram_choose_cmd_cmd_ready) & (sdram_choose_cmd_grant == 2'd2))) begin
		sdram_bankmachine2_cmd_ready <= 1'd1;
	end
	if (((sdram_choose_req_cmd_valid & sdram_choose_req_cmd_ready) & (sdram_choose_req_grant == 2'd2))) begin
		sdram_bankmachine2_cmd_ready <= 1'd1;
	end
end
always @(*) begin
	sdram_bankmachine3_cmd_ready <= 1'd0;
	if (((sdram_choose_cmd_cmd_valid & sdram_choose_cmd_cmd_ready) & (sdram_choose_cmd_grant == 2'd3))) begin
		sdram_bankmachine3_cmd_ready <= 1'd1;
	end
	if (((sdram_choose_req_cmd_valid & sdram_choose_req_cmd_ready) & (sdram_choose_req_grant == 2'd3))) begin
		sdram_bankmachine3_cmd_ready <= 1'd1;
	end
end
assign sdram_choose_req_ce = (sdram_choose_req_cmd_ready | (~sdram_choose_req_cmd_valid));
assign sdram_dfi_p0_reset_n = 1'd1;
assign sdram_dfi_p0_cke = {1{sdram_steerer0}};
assign sdram_dfi_p0_odt = {1{sdram_steerer1}};
assign sdram_dfi_p1_reset_n = 1'd1;
assign sdram_dfi_p1_cke = {1{sdram_steerer2}};
assign sdram_dfi_p1_odt = {1{sdram_steerer3}};
always @(*) begin
	sdram_steerer_sel1 <= 2'd0;
	sdram_en1 <= 1'd0;
	sdram_en0 <= 1'd0;
	sdram_cmd_ready <= 1'd0;
	sdram_choose_req_want_reads <= 1'd0;
	sdram_choose_req_want_writes <= 1'd0;
	multiplexer_next_state <= 3'd0;
	sdram_choose_cmd_want_activates <= 1'd0;
	sdram_steerer_sel0 <= 2'd0;
	sdram_choose_req_cmd_ready <= 1'd0;
	sdram_choose_cmd_cmd_ready <= 1'd0;
	multiplexer_next_state <= multiplexer_state;
	case (multiplexer_state)
		1'd1: begin
			sdram_en1 <= 1'd1;
			sdram_choose_req_want_writes <= 1'd1;
			if (1'd0) begin
				sdram_choose_req_cmd_ready <= (sdram_cas_allowed & ((~((sdram_choose_req_cmd_payload_ras & (~sdram_choose_req_cmd_payload_cas)) & (~sdram_choose_req_cmd_payload_we))) | sdram_ras_allowed));
			end else begin
				sdram_choose_cmd_want_activates <= sdram_ras_allowed;
				sdram_choose_cmd_cmd_ready <= ((~((sdram_choose_cmd_cmd_payload_ras & (~sdram_choose_cmd_cmd_payload_cas)) & (~sdram_choose_cmd_cmd_payload_we))) | sdram_ras_allowed);
				sdram_choose_req_cmd_ready <= sdram_cas_allowed;
			end
			sdram_steerer_sel0 <= 1'd1;
			sdram_steerer_sel1 <= 2'd2;
			if (sdram_read_available) begin
				if (((~sdram_write_available) | sdram_max_time1)) begin
					multiplexer_next_state <= 2'd3;
				end
			end
			if (sdram_go_to_refresh) begin
				multiplexer_next_state <= 2'd2;
			end
		end
		2'd2: begin
			sdram_steerer_sel0 <= 2'd3;
			sdram_cmd_ready <= 1'd1;
			if (sdram_cmd_last) begin
				multiplexer_next_state <= 1'd0;
			end
		end
		2'd3: begin
			if (sdram_twtrcon_ready) begin
				multiplexer_next_state <= 1'd0;
			end
		end
		3'd4: begin
			multiplexer_next_state <= 3'd5;
		end
		3'd5: begin
			multiplexer_next_state <= 3'd6;
		end
		3'd6: begin
			multiplexer_next_state <= 3'd7;
		end
		3'd7: begin
			multiplexer_next_state <= 1'd1;
		end
		default: begin
			sdram_en0 <= 1'd1;
			sdram_choose_req_want_reads <= 1'd1;
			if (1'd0) begin
				sdram_choose_req_cmd_ready <= (sdram_cas_allowed & ((~((sdram_choose_req_cmd_payload_ras & (~sdram_choose_req_cmd_payload_cas)) & (~sdram_choose_req_cmd_payload_we))) | sdram_ras_allowed));
			end else begin
				sdram_choose_cmd_want_activates <= sdram_ras_allowed;
				sdram_choose_cmd_cmd_ready <= ((~((sdram_choose_cmd_cmd_payload_ras & (~sdram_choose_cmd_cmd_payload_cas)) & (~sdram_choose_cmd_cmd_payload_we))) | sdram_ras_allowed);
				sdram_choose_req_cmd_ready <= sdram_cas_allowed;
			end
			sdram_steerer_sel0 <= 2'd2;
			sdram_steerer_sel1 <= 1'd1;
			if (sdram_write_available) begin
				if (((~sdram_read_available) | sdram_max_time0)) begin
					multiplexer_next_state <= 3'd4;
				end
			end
			if (sdram_go_to_refresh) begin
				multiplexer_next_state <= 2'd2;
			end
		end
	endcase
end
assign roundrobin0_request = {(((port_cmd_payload_addr[9:8] == 1'd0) & (~(((locked0 | (sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))))) & port_cmd_valid)};
assign roundrobin0_ce = ((~sdram_interface_bank0_valid) & (~sdram_interface_bank0_lock));
assign sdram_interface_bank0_addr = rhs_array_muxed12;
assign sdram_interface_bank0_we = rhs_array_muxed13;
assign sdram_interface_bank0_valid = rhs_array_muxed14;
assign roundrobin1_request = {(((port_cmd_payload_addr[9:8] == 1'd1) & (~(((locked1 | (sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))))) & port_cmd_valid)};
assign roundrobin1_ce = ((~sdram_interface_bank1_valid) & (~sdram_interface_bank1_lock));
assign sdram_interface_bank1_addr = rhs_array_muxed15;
assign sdram_interface_bank1_we = rhs_array_muxed16;
assign sdram_interface_bank1_valid = rhs_array_muxed17;
assign roundrobin2_request = {(((port_cmd_payload_addr[9:8] == 2'd2) & (~(((locked2 | (sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))))) & port_cmd_valid)};
assign roundrobin2_ce = ((~sdram_interface_bank2_valid) & (~sdram_interface_bank2_lock));
assign sdram_interface_bank2_addr = rhs_array_muxed18;
assign sdram_interface_bank2_we = rhs_array_muxed19;
assign sdram_interface_bank2_valid = rhs_array_muxed20;
assign roundrobin3_request = {(((port_cmd_payload_addr[9:8] == 2'd3) & (~(((locked3 | (sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))))) & port_cmd_valid)};
assign roundrobin3_ce = ((~sdram_interface_bank3_valid) & (~sdram_interface_bank3_lock));
assign sdram_interface_bank3_addr = rhs_array_muxed21;
assign sdram_interface_bank3_we = rhs_array_muxed22;
assign sdram_interface_bank3_valid = rhs_array_muxed23;
assign port_cmd_ready = ((((1'd0 | (((roundrobin0_grant == 1'd0) & ((port_cmd_payload_addr[9:8] == 1'd0) & (~(((locked0 | (sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0)))))) & sdram_interface_bank0_ready)) | (((roundrobin1_grant == 1'd0) & ((port_cmd_payload_addr[9:8] == 1'd1) & (~(((locked1 | (sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0)))))) & sdram_interface_bank1_ready)) | (((roundrobin2_grant == 1'd0) & ((port_cmd_payload_addr[9:8] == 2'd2) & (~(((locked2 | (sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0)))))) & sdram_interface_bank2_ready)) | (((roundrobin3_grant == 1'd0) & ((port_cmd_payload_addr[9:8] == 2'd3) & (~(((locked3 | (sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0)))))) & sdram_interface_bank3_ready));
assign port_wdata_ready = new_master_wdata_ready;
assign port_rdata_valid = new_master_rdata_valid5;
always @(*) begin
	sdram_interface_wdata <= 64'd0;
	sdram_interface_wdata_we <= 8'd0;
	case ({new_master_wdata_ready})
		1'd1: begin
			sdram_interface_wdata <= port_wdata_payload_data;
			sdram_interface_wdata_we <= port_wdata_payload_we;
		end
		default: begin
			sdram_interface_wdata <= 1'd0;
			sdram_interface_wdata_we <= 1'd0;
		end
	endcase
end
assign port_rdata_payload_data = sdram_interface_rdata;
assign roundrobin0_grant = 1'd0;
assign roundrobin1_grant = 1'd0;
assign roundrobin2_grant = 1'd0;
assign roundrobin3_grant = 1'd0;
assign data_port_adr = interface0_wb_sdram_adr[10:1];
always @(*) begin
	data_port_dat_w <= 64'd0;
	data_port_we <= 8'd0;
	if (write_from_slave) begin
		data_port_dat_w <= dat_r;
		data_port_we <= {8{1'd1}};
	end else begin
		data_port_dat_w <= {2{interface0_wb_sdram_dat_w}};
		if ((((interface0_wb_sdram_cyc & interface0_wb_sdram_stb) & interface0_wb_sdram_we) & interface0_wb_sdram_ack)) begin
			data_port_we <= {({4{(interface0_wb_sdram_adr[0] == 1'd0)}} & interface0_wb_sdram_sel), ({4{(interface0_wb_sdram_adr[0] == 1'd1)}} & interface0_wb_sdram_sel)};
		end
	end
end
assign dat_w = data_port_dat_r;
assign sel = 8'd255;
always @(*) begin
	interface0_wb_sdram_dat_r <= 32'd0;
	case (adr_offset_r)
		1'd0: begin
			interface0_wb_sdram_dat_r <= data_port_dat_r[63:32];
		end
		default: begin
			interface0_wb_sdram_dat_r <= data_port_dat_r[31:0];
		end
	endcase
end
assign {tag_do_dirty, tag_do_tag} = tag_port_dat_r;
assign tag_port_dat_w = {tag_di_dirty, tag_di_tag};
assign tag_port_adr = interface0_wb_sdram_adr[10:1];
assign tag_di_tag = interface0_wb_sdram_adr[29:11];
assign adr = {tag_do_tag, interface0_wb_sdram_adr[10:1]};
always @(*) begin
	cyc <= 1'd0;
	stb <= 1'd0;
	interface0_wb_sdram_ack <= 1'd0;
	tag_di_dirty <= 1'd0;
	we <= 1'd0;
	cache_next_state <= 3'd0;
	word_clr <= 1'd0;
	word_inc <= 1'd0;
	tag_port_we <= 1'd0;
	write_from_slave <= 1'd0;
	cache_next_state <= cache_state;
	case (cache_state)
		1'd1: begin
			word_clr <= 1'd1;
			if ((tag_do_tag == interface0_wb_sdram_adr[29:11])) begin
				interface0_wb_sdram_ack <= 1'd1;
				if (interface0_wb_sdram_we) begin
					tag_di_dirty <= 1'd1;
					tag_port_we <= 1'd1;
				end
				cache_next_state <= 1'd0;
			end else begin
				if (tag_do_dirty) begin
					cache_next_state <= 2'd2;
				end else begin
					cache_next_state <= 2'd3;
				end
			end
		end
		2'd2: begin
			stb <= 1'd1;
			cyc <= 1'd1;
			we <= 1'd1;
			if (ack) begin
				word_inc <= 1'd1;
				if (1'd1) begin
					cache_next_state <= 2'd3;
				end
			end
		end
		2'd3: begin
			tag_port_we <= 1'd1;
			word_clr <= 1'd1;
			cache_next_state <= 3'd4;
		end
		3'd4: begin
			stb <= 1'd1;
			cyc <= 1'd1;
			we <= 1'd0;
			if (ack) begin
				write_from_slave <= 1'd1;
				word_inc <= 1'd1;
				if (1'd1) begin
					cache_next_state <= 1'd1;
				end else begin
					cache_next_state <= 3'd4;
				end
			end
		end
		default: begin
			if ((interface0_wb_sdram_cyc & interface0_wb_sdram_stb)) begin
				cache_next_state <= 1'd1;
			end
		end
	endcase
end
always @(*) begin
	port_wdata_valid <= 1'd0;
	litedramwishbone2native_next_state <= 2'd0;
	ack <= 1'd0;
	port_wdata_payload_data <= 64'd0;
	port_wdata_payload_we <= 8'd0;
	port_rdata_ready <= 1'd0;
	dat_r <= 64'd0;
	port_cmd_valid <= 1'd0;
	port_cmd_payload_we <= 1'd0;
	port_cmd_payload_addr <= 23'd0;
	litedramwishbone2native_next_state <= litedramwishbone2native_state;
	case (litedramwishbone2native_state)
		1'd1: begin
			port_cmd_valid <= 1'd1;
			port_cmd_payload_addr <= adr;
			port_cmd_payload_we <= we;
			if (port_cmd_ready) begin
				if (we) begin
					litedramwishbone2native_next_state <= 2'd2;
				end else begin
					litedramwishbone2native_next_state <= 2'd3;
				end
			end
		end
		2'd2: begin
			port_wdata_valid <= 1'd1;
			port_wdata_payload_we <= sel;
			port_wdata_payload_data <= dat_w;
			if (port_wdata_ready) begin
				ack <= 1'd1;
				litedramwishbone2native_next_state <= 1'd0;
			end
		end
		2'd3: begin
			port_rdata_ready <= 1'd1;
			if (port_rdata_valid) begin
				dat_r <= port_rdata_payload_data;
				ack <= 1'd1;
				litedramwishbone2native_next_state <= 1'd0;
			end
		end
		default: begin
			if ((cyc & stb)) begin
				litedramwishbone2native_next_state <= 1'd1;
			end
		end
	endcase
end
assign interface0_wb_sdram_adr = rhs_array_muxed24;
assign interface0_wb_sdram_dat_w = rhs_array_muxed25;
assign interface0_wb_sdram_sel = rhs_array_muxed26;
assign interface0_wb_sdram_cyc = rhs_array_muxed27;
assign interface0_wb_sdram_stb = rhs_array_muxed28;
assign interface0_wb_sdram_we = rhs_array_muxed29;
assign interface0_wb_sdram_cti = rhs_array_muxed30;
assign interface0_wb_sdram_bte = rhs_array_muxed31;
assign interface1_wb_sdram_dat_r = interface0_wb_sdram_dat_r;
assign interface1_wb_sdram_ack = (interface0_wb_sdram_ack & (wb_sdram_con_grant == 1'd0));
assign interface1_wb_sdram_err = (interface0_wb_sdram_err & (wb_sdram_con_grant == 1'd0));
assign wb_sdram_con_request = {interface1_wb_sdram_cyc};
assign wb_sdram_con_grant = 1'd0;
assign basesoc_shared_adr = rhs_array_muxed32;
assign basesoc_shared_dat_w = rhs_array_muxed33;
assign basesoc_shared_sel = rhs_array_muxed34;
assign basesoc_shared_cyc = rhs_array_muxed35;
assign basesoc_shared_stb = rhs_array_muxed36;
assign basesoc_shared_we = rhs_array_muxed37;
assign basesoc_shared_cti = rhs_array_muxed38;
assign basesoc_shared_bte = rhs_array_muxed39;
assign lm32_ibus_dat_r = basesoc_shared_dat_r;
assign lm32_dbus_dat_r = basesoc_shared_dat_r;
assign lm32_ibus_ack = (basesoc_shared_ack & (basesoc_grant == 1'd0));
assign lm32_dbus_ack = (basesoc_shared_ack & (basesoc_grant == 1'd1));
assign lm32_ibus_err = (basesoc_shared_err & (basesoc_grant == 1'd0));
assign lm32_dbus_err = (basesoc_shared_err & (basesoc_grant == 1'd1));
assign basesoc_request = {lm32_dbus_cyc, lm32_ibus_cyc};
always @(*) begin
	basesoc_slave_sel <= 4'd0;
	basesoc_slave_sel[0] <= (basesoc_shared_adr[28:26] == 1'd0);
	basesoc_slave_sel[1] <= (basesoc_shared_adr[28:26] == 1'd1);
	basesoc_slave_sel[2] <= (basesoc_shared_adr[28:26] == 3'd6);
	basesoc_slave_sel[3] <= (basesoc_shared_adr[28:26] == 3'd4);
end
assign rom_bus_adr = basesoc_shared_adr;
assign rom_bus_dat_w = basesoc_shared_dat_w;
assign rom_bus_sel = basesoc_shared_sel;
assign rom_bus_stb = basesoc_shared_stb;
assign rom_bus_we = basesoc_shared_we;
assign rom_bus_cti = basesoc_shared_cti;
assign rom_bus_bte = basesoc_shared_bte;
assign sram_bus_adr = basesoc_shared_adr;
assign sram_bus_dat_w = basesoc_shared_dat_w;
assign sram_bus_sel = basesoc_shared_sel;
assign sram_bus_stb = basesoc_shared_stb;
assign sram_bus_we = basesoc_shared_we;
assign sram_bus_cti = basesoc_shared_cti;
assign sram_bus_bte = basesoc_shared_bte;
assign bus_wishbone_adr = basesoc_shared_adr;
assign bus_wishbone_dat_w = basesoc_shared_dat_w;
assign bus_wishbone_sel = basesoc_shared_sel;
assign bus_wishbone_stb = basesoc_shared_stb;
assign bus_wishbone_we = basesoc_shared_we;
assign bus_wishbone_cti = basesoc_shared_cti;
assign bus_wishbone_bte = basesoc_shared_bte;
assign interface1_wb_sdram_adr = basesoc_shared_adr;
assign interface1_wb_sdram_dat_w = basesoc_shared_dat_w;
assign interface1_wb_sdram_sel = basesoc_shared_sel;
assign interface1_wb_sdram_stb = basesoc_shared_stb;
assign interface1_wb_sdram_we = basesoc_shared_we;
assign interface1_wb_sdram_cti = basesoc_shared_cti;
assign interface1_wb_sdram_bte = basesoc_shared_bte;
assign rom_bus_cyc = (basesoc_shared_cyc & basesoc_slave_sel[0]);
assign sram_bus_cyc = (basesoc_shared_cyc & basesoc_slave_sel[1]);
assign bus_wishbone_cyc = (basesoc_shared_cyc & basesoc_slave_sel[2]);
assign interface1_wb_sdram_cyc = (basesoc_shared_cyc & basesoc_slave_sel[3]);
assign basesoc_shared_err = (((rom_bus_err | sram_bus_err) | bus_wishbone_err) | interface1_wb_sdram_err);
assign basesoc_wait = ((basesoc_shared_stb & basesoc_shared_cyc) & (~basesoc_shared_ack));
always @(*) begin
	basesoc_shared_dat_r <= 32'd0;
	basesoc_shared_ack <= 1'd0;
	basesoc_error <= 1'd0;
	basesoc_shared_ack <= (((rom_bus_ack | sram_bus_ack) | bus_wishbone_ack) | interface1_wb_sdram_ack);
	basesoc_shared_dat_r <= (((({32{basesoc_slave_sel_r[0]}} & rom_bus_dat_r) | ({32{basesoc_slave_sel_r[1]}} & sram_bus_dat_r)) | ({32{basesoc_slave_sel_r[2]}} & bus_wishbone_dat_r)) | ({32{basesoc_slave_sel_r[3]}} & interface1_wb_sdram_dat_r));
	if (basesoc_done) begin
		basesoc_shared_dat_r <= 32'd4294967295;
		basesoc_shared_ack <= 1'd1;
		basesoc_error <= 1'd1;
	end
end
assign basesoc_done = (basesoc_count == 1'd0);
assign basesoc_csrbank0_sel = (basesoc_interface0_bank_bus_adr[13:9] == 1'd0);
assign ctrl_reset_reset_r = basesoc_interface0_bank_bus_dat_w[0];
assign ctrl_reset_reset_re = ((basesoc_csrbank0_sel & basesoc_interface0_bank_bus_we) & (basesoc_interface0_bank_bus_adr[3:0] == 1'd0));
assign basesoc_csrbank0_scratch3_r = basesoc_interface0_bank_bus_dat_w[7:0];
assign basesoc_csrbank0_scratch3_re = ((basesoc_csrbank0_sel & basesoc_interface0_bank_bus_we) & (basesoc_interface0_bank_bus_adr[3:0] == 1'd1));
assign basesoc_csrbank0_scratch2_r = basesoc_interface0_bank_bus_dat_w[7:0];
assign basesoc_csrbank0_scratch2_re = ((basesoc_csrbank0_sel & basesoc_interface0_bank_bus_we) & (basesoc_interface0_bank_bus_adr[3:0] == 2'd2));
assign basesoc_csrbank0_scratch1_r = basesoc_interface0_bank_bus_dat_w[7:0];
assign basesoc_csrbank0_scratch1_re = ((basesoc_csrbank0_sel & basesoc_interface0_bank_bus_we) & (basesoc_interface0_bank_bus_adr[3:0] == 2'd3));
assign basesoc_csrbank0_scratch0_r = basesoc_interface0_bank_bus_dat_w[7:0];
assign basesoc_csrbank0_scratch0_re = ((basesoc_csrbank0_sel & basesoc_interface0_bank_bus_we) & (basesoc_interface0_bank_bus_adr[3:0] == 3'd4));
assign basesoc_csrbank0_bus_errors3_r = basesoc_interface0_bank_bus_dat_w[7:0];
assign basesoc_csrbank0_bus_errors3_re = ((basesoc_csrbank0_sel & basesoc_interface0_bank_bus_we) & (basesoc_interface0_bank_bus_adr[3:0] == 3'd5));
assign basesoc_csrbank0_bus_errors2_r = basesoc_interface0_bank_bus_dat_w[7:0];
assign basesoc_csrbank0_bus_errors2_re = ((basesoc_csrbank0_sel & basesoc_interface0_bank_bus_we) & (basesoc_interface0_bank_bus_adr[3:0] == 3'd6));
assign basesoc_csrbank0_bus_errors1_r = basesoc_interface0_bank_bus_dat_w[7:0];
assign basesoc_csrbank0_bus_errors1_re = ((basesoc_csrbank0_sel & basesoc_interface0_bank_bus_we) & (basesoc_interface0_bank_bus_adr[3:0] == 3'd7));
assign basesoc_csrbank0_bus_errors0_r = basesoc_interface0_bank_bus_dat_w[7:0];
assign basesoc_csrbank0_bus_errors0_re = ((basesoc_csrbank0_sel & basesoc_interface0_bank_bus_we) & (basesoc_interface0_bank_bus_adr[3:0] == 4'd8));
assign ctrl_storage = ctrl_storage_full[31:0];
assign basesoc_csrbank0_scratch3_w = ctrl_storage_full[31:24];
assign basesoc_csrbank0_scratch2_w = ctrl_storage_full[23:16];
assign basesoc_csrbank0_scratch1_w = ctrl_storage_full[15:8];
assign basesoc_csrbank0_scratch0_w = ctrl_storage_full[7:0];
assign basesoc_csrbank0_bus_errors3_w = ctrl_bus_errors_status[31:24];
assign basesoc_csrbank0_bus_errors2_w = ctrl_bus_errors_status[23:16];
assign basesoc_csrbank0_bus_errors1_w = ctrl_bus_errors_status[15:8];
assign basesoc_csrbank0_bus_errors0_w = ctrl_bus_errors_status[7:0];
assign basesoc_sel = (basesoc_sram_bus_adr[13:9] == 3'd4);
always @(*) begin
	basesoc_sram_bus_dat_r <= 8'd0;
	if (basesoc_sel_r) begin
		basesoc_sram_bus_dat_r <= basesoc_dat_r;
	end
end
assign basesoc_adr = basesoc_sram_bus_adr[2:0];
assign basesoc_csrbank1_sel = (basesoc_interface1_bank_bus_adr[13:9] == 4'd8);
assign basesoc_csrbank1_dfii_control0_r = basesoc_interface1_bank_bus_dat_w[3:0];
assign basesoc_csrbank1_dfii_control0_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 1'd0));
assign basesoc_csrbank1_dfii_pi0_command0_r = basesoc_interface1_bank_bus_dat_w[5:0];
assign basesoc_csrbank1_dfii_pi0_command0_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 1'd1));
assign sdram_phaseinjector0_command_issue_r = basesoc_interface1_bank_bus_dat_w[0];
assign sdram_phaseinjector0_command_issue_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 2'd2));
assign basesoc_csrbank1_dfii_pi0_address1_r = basesoc_interface1_bank_bus_dat_w[4:0];
assign basesoc_csrbank1_dfii_pi0_address1_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 2'd3));
assign basesoc_csrbank1_dfii_pi0_address0_r = basesoc_interface1_bank_bus_dat_w[7:0];
assign basesoc_csrbank1_dfii_pi0_address0_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 3'd4));
assign basesoc_csrbank1_dfii_pi0_baddress0_r = basesoc_interface1_bank_bus_dat_w[1:0];
assign basesoc_csrbank1_dfii_pi0_baddress0_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 3'd5));
assign basesoc_csrbank1_dfii_pi0_wrdata3_r = basesoc_interface1_bank_bus_dat_w[7:0];
assign basesoc_csrbank1_dfii_pi0_wrdata3_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 3'd6));
assign basesoc_csrbank1_dfii_pi0_wrdata2_r = basesoc_interface1_bank_bus_dat_w[7:0];
assign basesoc_csrbank1_dfii_pi0_wrdata2_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 3'd7));
assign basesoc_csrbank1_dfii_pi0_wrdata1_r = basesoc_interface1_bank_bus_dat_w[7:0];
assign basesoc_csrbank1_dfii_pi0_wrdata1_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 4'd8));
assign basesoc_csrbank1_dfii_pi0_wrdata0_r = basesoc_interface1_bank_bus_dat_w[7:0];
assign basesoc_csrbank1_dfii_pi0_wrdata0_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 4'd9));
assign basesoc_csrbank1_dfii_pi0_rddata3_r = basesoc_interface1_bank_bus_dat_w[7:0];
assign basesoc_csrbank1_dfii_pi0_rddata3_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 4'd10));
assign basesoc_csrbank1_dfii_pi0_rddata2_r = basesoc_interface1_bank_bus_dat_w[7:0];
assign basesoc_csrbank1_dfii_pi0_rddata2_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 4'd11));
assign basesoc_csrbank1_dfii_pi0_rddata1_r = basesoc_interface1_bank_bus_dat_w[7:0];
assign basesoc_csrbank1_dfii_pi0_rddata1_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 4'd12));
assign basesoc_csrbank1_dfii_pi0_rddata0_r = basesoc_interface1_bank_bus_dat_w[7:0];
assign basesoc_csrbank1_dfii_pi0_rddata0_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 4'd13));
assign basesoc_csrbank1_dfii_pi1_command0_r = basesoc_interface1_bank_bus_dat_w[5:0];
assign basesoc_csrbank1_dfii_pi1_command0_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 4'd14));
assign sdram_phaseinjector1_command_issue_r = basesoc_interface1_bank_bus_dat_w[0];
assign sdram_phaseinjector1_command_issue_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 4'd15));
assign basesoc_csrbank1_dfii_pi1_address1_r = basesoc_interface1_bank_bus_dat_w[4:0];
assign basesoc_csrbank1_dfii_pi1_address1_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 5'd16));
assign basesoc_csrbank1_dfii_pi1_address0_r = basesoc_interface1_bank_bus_dat_w[7:0];
assign basesoc_csrbank1_dfii_pi1_address0_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 5'd17));
assign basesoc_csrbank1_dfii_pi1_baddress0_r = basesoc_interface1_bank_bus_dat_w[1:0];
assign basesoc_csrbank1_dfii_pi1_baddress0_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 5'd18));
assign basesoc_csrbank1_dfii_pi1_wrdata3_r = basesoc_interface1_bank_bus_dat_w[7:0];
assign basesoc_csrbank1_dfii_pi1_wrdata3_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 5'd19));
assign basesoc_csrbank1_dfii_pi1_wrdata2_r = basesoc_interface1_bank_bus_dat_w[7:0];
assign basesoc_csrbank1_dfii_pi1_wrdata2_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 5'd20));
assign basesoc_csrbank1_dfii_pi1_wrdata1_r = basesoc_interface1_bank_bus_dat_w[7:0];
assign basesoc_csrbank1_dfii_pi1_wrdata1_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 5'd21));
assign basesoc_csrbank1_dfii_pi1_wrdata0_r = basesoc_interface1_bank_bus_dat_w[7:0];
assign basesoc_csrbank1_dfii_pi1_wrdata0_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 5'd22));
assign basesoc_csrbank1_dfii_pi1_rddata3_r = basesoc_interface1_bank_bus_dat_w[7:0];
assign basesoc_csrbank1_dfii_pi1_rddata3_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 5'd23));
assign basesoc_csrbank1_dfii_pi1_rddata2_r = basesoc_interface1_bank_bus_dat_w[7:0];
assign basesoc_csrbank1_dfii_pi1_rddata2_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 5'd24));
assign basesoc_csrbank1_dfii_pi1_rddata1_r = basesoc_interface1_bank_bus_dat_w[7:0];
assign basesoc_csrbank1_dfii_pi1_rddata1_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 5'd25));
assign basesoc_csrbank1_dfii_pi1_rddata0_r = basesoc_interface1_bank_bus_dat_w[7:0];
assign basesoc_csrbank1_dfii_pi1_rddata0_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 5'd26));
assign sdram_bandwidth_update_r = basesoc_interface1_bank_bus_dat_w[0];
assign sdram_bandwidth_update_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 5'd27));
assign basesoc_csrbank1_controller_bandwidth_nreads2_r = basesoc_interface1_bank_bus_dat_w[7:0];
assign basesoc_csrbank1_controller_bandwidth_nreads2_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 5'd28));
assign basesoc_csrbank1_controller_bandwidth_nreads1_r = basesoc_interface1_bank_bus_dat_w[7:0];
assign basesoc_csrbank1_controller_bandwidth_nreads1_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 5'd29));
assign basesoc_csrbank1_controller_bandwidth_nreads0_r = basesoc_interface1_bank_bus_dat_w[7:0];
assign basesoc_csrbank1_controller_bandwidth_nreads0_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 5'd30));
assign basesoc_csrbank1_controller_bandwidth_nwrites2_r = basesoc_interface1_bank_bus_dat_w[7:0];
assign basesoc_csrbank1_controller_bandwidth_nwrites2_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 5'd31));
assign basesoc_csrbank1_controller_bandwidth_nwrites1_r = basesoc_interface1_bank_bus_dat_w[7:0];
assign basesoc_csrbank1_controller_bandwidth_nwrites1_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 6'd32));
assign basesoc_csrbank1_controller_bandwidth_nwrites0_r = basesoc_interface1_bank_bus_dat_w[7:0];
assign basesoc_csrbank1_controller_bandwidth_nwrites0_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 6'd33));
assign basesoc_csrbank1_controller_bandwidth_data_width_r = basesoc_interface1_bank_bus_dat_w[6:0];
assign basesoc_csrbank1_controller_bandwidth_data_width_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 6'd34));
assign sdram_storage = sdram_storage_full[3:0];
assign basesoc_csrbank1_dfii_control0_w = sdram_storage_full[3:0];
assign sdram_phaseinjector0_command_storage = sdram_phaseinjector0_command_storage_full[5:0];
assign basesoc_csrbank1_dfii_pi0_command0_w = sdram_phaseinjector0_command_storage_full[5:0];
assign sdram_phaseinjector0_address_storage = sdram_phaseinjector0_address_storage_full[12:0];
assign basesoc_csrbank1_dfii_pi0_address1_w = sdram_phaseinjector0_address_storage_full[12:8];
assign basesoc_csrbank1_dfii_pi0_address0_w = sdram_phaseinjector0_address_storage_full[7:0];
assign sdram_phaseinjector0_baddress_storage = sdram_phaseinjector0_baddress_storage_full[1:0];
assign basesoc_csrbank1_dfii_pi0_baddress0_w = sdram_phaseinjector0_baddress_storage_full[1:0];
assign sdram_phaseinjector0_wrdata_storage = sdram_phaseinjector0_wrdata_storage_full[31:0];
assign basesoc_csrbank1_dfii_pi0_wrdata3_w = sdram_phaseinjector0_wrdata_storage_full[31:24];
assign basesoc_csrbank1_dfii_pi0_wrdata2_w = sdram_phaseinjector0_wrdata_storage_full[23:16];
assign basesoc_csrbank1_dfii_pi0_wrdata1_w = sdram_phaseinjector0_wrdata_storage_full[15:8];
assign basesoc_csrbank1_dfii_pi0_wrdata0_w = sdram_phaseinjector0_wrdata_storage_full[7:0];
assign basesoc_csrbank1_dfii_pi0_rddata3_w = sdram_phaseinjector0_status[31:24];
assign basesoc_csrbank1_dfii_pi0_rddata2_w = sdram_phaseinjector0_status[23:16];
assign basesoc_csrbank1_dfii_pi0_rddata1_w = sdram_phaseinjector0_status[15:8];
assign basesoc_csrbank1_dfii_pi0_rddata0_w = sdram_phaseinjector0_status[7:0];
assign sdram_phaseinjector1_command_storage = sdram_phaseinjector1_command_storage_full[5:0];
assign basesoc_csrbank1_dfii_pi1_command0_w = sdram_phaseinjector1_command_storage_full[5:0];
assign sdram_phaseinjector1_address_storage = sdram_phaseinjector1_address_storage_full[12:0];
assign basesoc_csrbank1_dfii_pi1_address1_w = sdram_phaseinjector1_address_storage_full[12:8];
assign basesoc_csrbank1_dfii_pi1_address0_w = sdram_phaseinjector1_address_storage_full[7:0];
assign sdram_phaseinjector1_baddress_storage = sdram_phaseinjector1_baddress_storage_full[1:0];
assign basesoc_csrbank1_dfii_pi1_baddress0_w = sdram_phaseinjector1_baddress_storage_full[1:0];
assign sdram_phaseinjector1_wrdata_storage = sdram_phaseinjector1_wrdata_storage_full[31:0];
assign basesoc_csrbank1_dfii_pi1_wrdata3_w = sdram_phaseinjector1_wrdata_storage_full[31:24];
assign basesoc_csrbank1_dfii_pi1_wrdata2_w = sdram_phaseinjector1_wrdata_storage_full[23:16];
assign basesoc_csrbank1_dfii_pi1_wrdata1_w = sdram_phaseinjector1_wrdata_storage_full[15:8];
assign basesoc_csrbank1_dfii_pi1_wrdata0_w = sdram_phaseinjector1_wrdata_storage_full[7:0];
assign basesoc_csrbank1_dfii_pi1_rddata3_w = sdram_phaseinjector1_status[31:24];
assign basesoc_csrbank1_dfii_pi1_rddata2_w = sdram_phaseinjector1_status[23:16];
assign basesoc_csrbank1_dfii_pi1_rddata1_w = sdram_phaseinjector1_status[15:8];
assign basesoc_csrbank1_dfii_pi1_rddata0_w = sdram_phaseinjector1_status[7:0];
assign basesoc_csrbank1_controller_bandwidth_nreads2_w = sdram_bandwidth_nreads_status[23:16];
assign basesoc_csrbank1_controller_bandwidth_nreads1_w = sdram_bandwidth_nreads_status[15:8];
assign basesoc_csrbank1_controller_bandwidth_nreads0_w = sdram_bandwidth_nreads_status[7:0];
assign basesoc_csrbank1_controller_bandwidth_nwrites2_w = sdram_bandwidth_nwrites_status[23:16];
assign basesoc_csrbank1_controller_bandwidth_nwrites1_w = sdram_bandwidth_nwrites_status[15:8];
assign basesoc_csrbank1_controller_bandwidth_nwrites0_w = sdram_bandwidth_nwrites_status[7:0];
assign basesoc_csrbank1_controller_bandwidth_data_width_w = sdram_bandwidth_data_width_status[6:0];
assign basesoc_csrbank2_sel = (basesoc_interface2_bank_bus_adr[13:9] == 3'd5);
assign basesoc_csrbank2_load3_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_load3_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[4:0] == 1'd0));
assign basesoc_csrbank2_load2_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_load2_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[4:0] == 1'd1));
assign basesoc_csrbank2_load1_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_load1_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[4:0] == 2'd2));
assign basesoc_csrbank2_load0_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_load0_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[4:0] == 2'd3));
assign basesoc_csrbank2_reload3_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_reload3_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[4:0] == 3'd4));
assign basesoc_csrbank2_reload2_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_reload2_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[4:0] == 3'd5));
assign basesoc_csrbank2_reload1_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_reload1_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[4:0] == 3'd6));
assign basesoc_csrbank2_reload0_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_reload0_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[4:0] == 3'd7));
assign basesoc_csrbank2_en0_r = basesoc_interface2_bank_bus_dat_w[0];
assign basesoc_csrbank2_en0_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[4:0] == 4'd8));
assign timer0_update_value_r = basesoc_interface2_bank_bus_dat_w[0];
assign timer0_update_value_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[4:0] == 4'd9));
assign basesoc_csrbank2_value3_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_value3_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[4:0] == 4'd10));
assign basesoc_csrbank2_value2_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_value2_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[4:0] == 4'd11));
assign basesoc_csrbank2_value1_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_value1_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[4:0] == 4'd12));
assign basesoc_csrbank2_value0_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_value0_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[4:0] == 4'd13));
assign timer0_eventmanager_status_r = basesoc_interface2_bank_bus_dat_w[0];
assign timer0_eventmanager_status_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[4:0] == 4'd14));
assign timer0_eventmanager_pending_r = basesoc_interface2_bank_bus_dat_w[0];
assign timer0_eventmanager_pending_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[4:0] == 4'd15));
assign basesoc_csrbank2_ev_enable0_r = basesoc_interface2_bank_bus_dat_w[0];
assign basesoc_csrbank2_ev_enable0_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[4:0] == 5'd16));
assign timer0_load_storage = timer0_load_storage_full[31:0];
assign basesoc_csrbank2_load3_w = timer0_load_storage_full[31:24];
assign basesoc_csrbank2_load2_w = timer0_load_storage_full[23:16];
assign basesoc_csrbank2_load1_w = timer0_load_storage_full[15:8];
assign basesoc_csrbank2_load0_w = timer0_load_storage_full[7:0];
assign timer0_reload_storage = timer0_reload_storage_full[31:0];
assign basesoc_csrbank2_reload3_w = timer0_reload_storage_full[31:24];
assign basesoc_csrbank2_reload2_w = timer0_reload_storage_full[23:16];
assign basesoc_csrbank2_reload1_w = timer0_reload_storage_full[15:8];
assign basesoc_csrbank2_reload0_w = timer0_reload_storage_full[7:0];
assign timer0_en_storage = timer0_en_storage_full;
assign basesoc_csrbank2_en0_w = timer0_en_storage_full;
assign basesoc_csrbank2_value3_w = timer0_value_status[31:24];
assign basesoc_csrbank2_value2_w = timer0_value_status[23:16];
assign basesoc_csrbank2_value1_w = timer0_value_status[15:8];
assign basesoc_csrbank2_value0_w = timer0_value_status[7:0];
assign timer0_eventmanager_storage = timer0_eventmanager_storage_full;
assign basesoc_csrbank2_ev_enable0_w = timer0_eventmanager_storage_full;
assign basesoc_csrbank3_sel = (basesoc_interface3_bank_bus_adr[13:9] == 2'd3);
assign uart_rxtx_r = basesoc_interface3_bank_bus_dat_w[7:0];
assign uart_rxtx_re = ((basesoc_csrbank3_sel & basesoc_interface3_bank_bus_we) & (basesoc_interface3_bank_bus_adr[2:0] == 1'd0));
assign basesoc_csrbank3_txfull_r = basesoc_interface3_bank_bus_dat_w[0];
assign basesoc_csrbank3_txfull_re = ((basesoc_csrbank3_sel & basesoc_interface3_bank_bus_we) & (basesoc_interface3_bank_bus_adr[2:0] == 1'd1));
assign basesoc_csrbank3_rxempty_r = basesoc_interface3_bank_bus_dat_w[0];
assign basesoc_csrbank3_rxempty_re = ((basesoc_csrbank3_sel & basesoc_interface3_bank_bus_we) & (basesoc_interface3_bank_bus_adr[2:0] == 2'd2));
assign uart_eventmanager_status_r = basesoc_interface3_bank_bus_dat_w[1:0];
assign uart_eventmanager_status_re = ((basesoc_csrbank3_sel & basesoc_interface3_bank_bus_we) & (basesoc_interface3_bank_bus_adr[2:0] == 2'd3));
assign uart_eventmanager_pending_r = basesoc_interface3_bank_bus_dat_w[1:0];
assign uart_eventmanager_pending_re = ((basesoc_csrbank3_sel & basesoc_interface3_bank_bus_we) & (basesoc_interface3_bank_bus_adr[2:0] == 3'd4));
assign basesoc_csrbank3_ev_enable0_r = basesoc_interface3_bank_bus_dat_w[1:0];
assign basesoc_csrbank3_ev_enable0_re = ((basesoc_csrbank3_sel & basesoc_interface3_bank_bus_we) & (basesoc_interface3_bank_bus_adr[2:0] == 3'd5));
assign basesoc_csrbank3_txfull_w = uart_txfull_status;
assign basesoc_csrbank3_rxempty_w = uart_rxempty_status;
assign uart_eventmanager_storage = uart_eventmanager_storage_full[1:0];
assign basesoc_csrbank3_ev_enable0_w = uart_eventmanager_storage_full[1:0];
assign basesoc_csrbank4_sel = (basesoc_interface4_bank_bus_adr[13:9] == 2'd2);
assign basesoc_csrbank4_tuning_word3_r = basesoc_interface4_bank_bus_dat_w[7:0];
assign basesoc_csrbank4_tuning_word3_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[1:0] == 1'd0));
assign basesoc_csrbank4_tuning_word2_r = basesoc_interface4_bank_bus_dat_w[7:0];
assign basesoc_csrbank4_tuning_word2_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[1:0] == 1'd1));
assign basesoc_csrbank4_tuning_word1_r = basesoc_interface4_bank_bus_dat_w[7:0];
assign basesoc_csrbank4_tuning_word1_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[1:0] == 2'd2));
assign basesoc_csrbank4_tuning_word0_r = basesoc_interface4_bank_bus_dat_w[7:0];
assign basesoc_csrbank4_tuning_word0_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[1:0] == 2'd3));
assign uart_phy_storage = uart_phy_storage_full[31:0];
assign basesoc_csrbank4_tuning_word3_w = uart_phy_storage_full[31:24];
assign basesoc_csrbank4_tuning_word2_w = uart_phy_storage_full[23:16];
assign basesoc_csrbank4_tuning_word1_w = uart_phy_storage_full[15:8];
assign basesoc_csrbank4_tuning_word0_w = uart_phy_storage_full[7:0];
assign basesoc_interface0_bank_bus_adr = interface_adr;
assign basesoc_interface1_bank_bus_adr = interface_adr;
assign basesoc_interface2_bank_bus_adr = interface_adr;
assign basesoc_interface3_bank_bus_adr = interface_adr;
assign basesoc_interface4_bank_bus_adr = interface_adr;
assign basesoc_sram_bus_adr = interface_adr;
assign basesoc_interface0_bank_bus_we = interface_we;
assign basesoc_interface1_bank_bus_we = interface_we;
assign basesoc_interface2_bank_bus_we = interface_we;
assign basesoc_interface3_bank_bus_we = interface_we;
assign basesoc_interface4_bank_bus_we = interface_we;
assign basesoc_sram_bus_we = interface_we;
assign basesoc_interface0_bank_bus_dat_w = interface_dat_w;
assign basesoc_interface1_bank_bus_dat_w = interface_dat_w;
assign basesoc_interface2_bank_bus_dat_w = interface_dat_w;
assign basesoc_interface3_bank_bus_dat_w = interface_dat_w;
assign basesoc_interface4_bank_bus_dat_w = interface_dat_w;
assign basesoc_sram_bus_dat_w = interface_dat_w;
assign interface_dat_r = (((((basesoc_interface0_bank_bus_dat_r | basesoc_interface1_bank_bus_dat_r) | basesoc_interface2_bank_bus_dat_r) | basesoc_interface3_bank_bus_dat_r) | basesoc_interface4_bank_bus_dat_r) | basesoc_sram_bus_dat_r);
assign slice_proxy0 = ddrphy_record2_wrdata[15:0];
assign slice_proxy1 = ddrphy_record3_wrdata[31:16];
assign slice_proxy2 = ddrphy_record3_wrdata[15:0];
assign slice_proxy3 = ddrphy_record0_wrdata[31:16];
assign slice_proxy4 = ddrphy_record2_wrdata[15:0];
assign slice_proxy5 = ddrphy_record3_wrdata[31:16];
assign slice_proxy6 = ddrphy_record3_wrdata[15:0];
assign slice_proxy7 = ddrphy_record0_wrdata[31:16];
assign slice_proxy8 = ddrphy_record2_wrdata[15:0];
assign slice_proxy9 = ddrphy_record3_wrdata[31:16];
assign slice_proxy10 = ddrphy_record3_wrdata[15:0];
assign slice_proxy11 = ddrphy_record0_wrdata[31:16];
assign slice_proxy12 = ddrphy_record2_wrdata[15:0];
assign slice_proxy13 = ddrphy_record3_wrdata[31:16];
assign slice_proxy14 = ddrphy_record3_wrdata[15:0];
assign slice_proxy15 = ddrphy_record0_wrdata[31:16];
assign slice_proxy16 = ddrphy_record2_wrdata[15:0];
assign slice_proxy17 = ddrphy_record3_wrdata[31:16];
assign slice_proxy18 = ddrphy_record3_wrdata[15:0];
assign slice_proxy19 = ddrphy_record0_wrdata[31:16];
assign slice_proxy20 = ddrphy_record2_wrdata[15:0];
assign slice_proxy21 = ddrphy_record3_wrdata[31:16];
assign slice_proxy22 = ddrphy_record3_wrdata[15:0];
assign slice_proxy23 = ddrphy_record0_wrdata[31:16];
assign slice_proxy24 = ddrphy_record2_wrdata[15:0];
assign slice_proxy25 = ddrphy_record3_wrdata[31:16];
assign slice_proxy26 = ddrphy_record3_wrdata[15:0];
assign slice_proxy27 = ddrphy_record0_wrdata[31:16];
assign slice_proxy28 = ddrphy_record2_wrdata[15:0];
assign slice_proxy29 = ddrphy_record3_wrdata[31:16];
assign slice_proxy30 = ddrphy_record3_wrdata[15:0];
assign slice_proxy31 = ddrphy_record0_wrdata[31:16];
assign slice_proxy32 = ddrphy_record2_wrdata[15:0];
assign slice_proxy33 = ddrphy_record3_wrdata[31:16];
assign slice_proxy34 = ddrphy_record3_wrdata[15:0];
assign slice_proxy35 = ddrphy_record0_wrdata[31:16];
assign slice_proxy36 = ddrphy_record2_wrdata[15:0];
assign slice_proxy37 = ddrphy_record3_wrdata[31:16];
assign slice_proxy38 = ddrphy_record3_wrdata[15:0];
assign slice_proxy39 = ddrphy_record0_wrdata[31:16];
assign slice_proxy40 = ddrphy_record2_wrdata[15:0];
assign slice_proxy41 = ddrphy_record3_wrdata[31:16];
assign slice_proxy42 = ddrphy_record3_wrdata[15:0];
assign slice_proxy43 = ddrphy_record0_wrdata[31:16];
assign slice_proxy44 = ddrphy_record2_wrdata[15:0];
assign slice_proxy45 = ddrphy_record3_wrdata[31:16];
assign slice_proxy46 = ddrphy_record3_wrdata[15:0];
assign slice_proxy47 = ddrphy_record0_wrdata[31:16];
assign slice_proxy48 = ddrphy_record2_wrdata[15:0];
assign slice_proxy49 = ddrphy_record3_wrdata[31:16];
assign slice_proxy50 = ddrphy_record3_wrdata[15:0];
assign slice_proxy51 = ddrphy_record0_wrdata[31:16];
assign slice_proxy52 = ddrphy_record2_wrdata[15:0];
assign slice_proxy53 = ddrphy_record3_wrdata[31:16];
assign slice_proxy54 = ddrphy_record3_wrdata[15:0];
assign slice_proxy55 = ddrphy_record0_wrdata[31:16];
assign slice_proxy56 = ddrphy_record2_wrdata[15:0];
assign slice_proxy57 = ddrphy_record3_wrdata[31:16];
assign slice_proxy58 = ddrphy_record3_wrdata[15:0];
assign slice_proxy59 = ddrphy_record0_wrdata[31:16];
assign slice_proxy60 = ddrphy_record2_wrdata[15:0];
assign slice_proxy61 = ddrphy_record3_wrdata[31:16];
assign slice_proxy62 = ddrphy_record3_wrdata[15:0];
assign slice_proxy63 = ddrphy_record0_wrdata[31:16];
assign slice_proxy64 = ddrphy_record2_wrdata_mask[1:0];
assign slice_proxy65 = ddrphy_record3_wrdata_mask[3:2];
assign slice_proxy66 = ddrphy_record3_wrdata_mask[1:0];
assign slice_proxy67 = ddrphy_record0_wrdata_mask[3:2];
assign slice_proxy68 = ddrphy_record2_wrdata_mask[1:0];
assign slice_proxy69 = ddrphy_record3_wrdata_mask[3:2];
assign slice_proxy70 = ddrphy_record3_wrdata_mask[1:0];
assign slice_proxy71 = ddrphy_record0_wrdata_mask[3:2];
always @(*) begin
	rhs_array_muxed0 <= 1'd0;
	case (sdram_choose_cmd_grant)
		1'd0: begin
			rhs_array_muxed0 <= sdram_choose_cmd_valids[0];
		end
		1'd1: begin
			rhs_array_muxed0 <= sdram_choose_cmd_valids[1];
		end
		2'd2: begin
			rhs_array_muxed0 <= sdram_choose_cmd_valids[2];
		end
		default: begin
			rhs_array_muxed0 <= sdram_choose_cmd_valids[3];
		end
	endcase
end
always @(*) begin
	rhs_array_muxed1 <= 13'd0;
	case (sdram_choose_cmd_grant)
		1'd0: begin
			rhs_array_muxed1 <= sdram_bankmachine0_cmd_payload_a;
		end
		1'd1: begin
			rhs_array_muxed1 <= sdram_bankmachine1_cmd_payload_a;
		end
		2'd2: begin
			rhs_array_muxed1 <= sdram_bankmachine2_cmd_payload_a;
		end
		default: begin
			rhs_array_muxed1 <= sdram_bankmachine3_cmd_payload_a;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed2 <= 2'd0;
	case (sdram_choose_cmd_grant)
		1'd0: begin
			rhs_array_muxed2 <= sdram_bankmachine0_cmd_payload_ba;
		end
		1'd1: begin
			rhs_array_muxed2 <= sdram_bankmachine1_cmd_payload_ba;
		end
		2'd2: begin
			rhs_array_muxed2 <= sdram_bankmachine2_cmd_payload_ba;
		end
		default: begin
			rhs_array_muxed2 <= sdram_bankmachine3_cmd_payload_ba;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed3 <= 1'd0;
	case (sdram_choose_cmd_grant)
		1'd0: begin
			rhs_array_muxed3 <= sdram_bankmachine0_cmd_payload_is_read;
		end
		1'd1: begin
			rhs_array_muxed3 <= sdram_bankmachine1_cmd_payload_is_read;
		end
		2'd2: begin
			rhs_array_muxed3 <= sdram_bankmachine2_cmd_payload_is_read;
		end
		default: begin
			rhs_array_muxed3 <= sdram_bankmachine3_cmd_payload_is_read;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed4 <= 1'd0;
	case (sdram_choose_cmd_grant)
		1'd0: begin
			rhs_array_muxed4 <= sdram_bankmachine0_cmd_payload_is_write;
		end
		1'd1: begin
			rhs_array_muxed4 <= sdram_bankmachine1_cmd_payload_is_write;
		end
		2'd2: begin
			rhs_array_muxed4 <= sdram_bankmachine2_cmd_payload_is_write;
		end
		default: begin
			rhs_array_muxed4 <= sdram_bankmachine3_cmd_payload_is_write;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed5 <= 1'd0;
	case (sdram_choose_cmd_grant)
		1'd0: begin
			rhs_array_muxed5 <= sdram_bankmachine0_cmd_payload_is_cmd;
		end
		1'd1: begin
			rhs_array_muxed5 <= sdram_bankmachine1_cmd_payload_is_cmd;
		end
		2'd2: begin
			rhs_array_muxed5 <= sdram_bankmachine2_cmd_payload_is_cmd;
		end
		default: begin
			rhs_array_muxed5 <= sdram_bankmachine3_cmd_payload_is_cmd;
		end
	endcase
end
always @(*) begin
	t_array_muxed0 <= 1'd0;
	case (sdram_choose_cmd_grant)
		1'd0: begin
			t_array_muxed0 <= sdram_bankmachine0_cmd_payload_cas;
		end
		1'd1: begin
			t_array_muxed0 <= sdram_bankmachine1_cmd_payload_cas;
		end
		2'd2: begin
			t_array_muxed0 <= sdram_bankmachine2_cmd_payload_cas;
		end
		default: begin
			t_array_muxed0 <= sdram_bankmachine3_cmd_payload_cas;
		end
	endcase
end
always @(*) begin
	t_array_muxed1 <= 1'd0;
	case (sdram_choose_cmd_grant)
		1'd0: begin
			t_array_muxed1 <= sdram_bankmachine0_cmd_payload_ras;
		end
		1'd1: begin
			t_array_muxed1 <= sdram_bankmachine1_cmd_payload_ras;
		end
		2'd2: begin
			t_array_muxed1 <= sdram_bankmachine2_cmd_payload_ras;
		end
		default: begin
			t_array_muxed1 <= sdram_bankmachine3_cmd_payload_ras;
		end
	endcase
end
always @(*) begin
	t_array_muxed2 <= 1'd0;
	case (sdram_choose_cmd_grant)
		1'd0: begin
			t_array_muxed2 <= sdram_bankmachine0_cmd_payload_we;
		end
		1'd1: begin
			t_array_muxed2 <= sdram_bankmachine1_cmd_payload_we;
		end
		2'd2: begin
			t_array_muxed2 <= sdram_bankmachine2_cmd_payload_we;
		end
		default: begin
			t_array_muxed2 <= sdram_bankmachine3_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed6 <= 1'd0;
	case (sdram_choose_req_grant)
		1'd0: begin
			rhs_array_muxed6 <= sdram_choose_req_valids[0];
		end
		1'd1: begin
			rhs_array_muxed6 <= sdram_choose_req_valids[1];
		end
		2'd2: begin
			rhs_array_muxed6 <= sdram_choose_req_valids[2];
		end
		default: begin
			rhs_array_muxed6 <= sdram_choose_req_valids[3];
		end
	endcase
end
always @(*) begin
	rhs_array_muxed7 <= 13'd0;
	case (sdram_choose_req_grant)
		1'd0: begin
			rhs_array_muxed7 <= sdram_bankmachine0_cmd_payload_a;
		end
		1'd1: begin
			rhs_array_muxed7 <= sdram_bankmachine1_cmd_payload_a;
		end
		2'd2: begin
			rhs_array_muxed7 <= sdram_bankmachine2_cmd_payload_a;
		end
		default: begin
			rhs_array_muxed7 <= sdram_bankmachine3_cmd_payload_a;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed8 <= 2'd0;
	case (sdram_choose_req_grant)
		1'd0: begin
			rhs_array_muxed8 <= sdram_bankmachine0_cmd_payload_ba;
		end
		1'd1: begin
			rhs_array_muxed8 <= sdram_bankmachine1_cmd_payload_ba;
		end
		2'd2: begin
			rhs_array_muxed8 <= sdram_bankmachine2_cmd_payload_ba;
		end
		default: begin
			rhs_array_muxed8 <= sdram_bankmachine3_cmd_payload_ba;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed9 <= 1'd0;
	case (sdram_choose_req_grant)
		1'd0: begin
			rhs_array_muxed9 <= sdram_bankmachine0_cmd_payload_is_read;
		end
		1'd1: begin
			rhs_array_muxed9 <= sdram_bankmachine1_cmd_payload_is_read;
		end
		2'd2: begin
			rhs_array_muxed9 <= sdram_bankmachine2_cmd_payload_is_read;
		end
		default: begin
			rhs_array_muxed9 <= sdram_bankmachine3_cmd_payload_is_read;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed10 <= 1'd0;
	case (sdram_choose_req_grant)
		1'd0: begin
			rhs_array_muxed10 <= sdram_bankmachine0_cmd_payload_is_write;
		end
		1'd1: begin
			rhs_array_muxed10 <= sdram_bankmachine1_cmd_payload_is_write;
		end
		2'd2: begin
			rhs_array_muxed10 <= sdram_bankmachine2_cmd_payload_is_write;
		end
		default: begin
			rhs_array_muxed10 <= sdram_bankmachine3_cmd_payload_is_write;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed11 <= 1'd0;
	case (sdram_choose_req_grant)
		1'd0: begin
			rhs_array_muxed11 <= sdram_bankmachine0_cmd_payload_is_cmd;
		end
		1'd1: begin
			rhs_array_muxed11 <= sdram_bankmachine1_cmd_payload_is_cmd;
		end
		2'd2: begin
			rhs_array_muxed11 <= sdram_bankmachine2_cmd_payload_is_cmd;
		end
		default: begin
			rhs_array_muxed11 <= sdram_bankmachine3_cmd_payload_is_cmd;
		end
	endcase
end
always @(*) begin
	t_array_muxed3 <= 1'd0;
	case (sdram_choose_req_grant)
		1'd0: begin
			t_array_muxed3 <= sdram_bankmachine0_cmd_payload_cas;
		end
		1'd1: begin
			t_array_muxed3 <= sdram_bankmachine1_cmd_payload_cas;
		end
		2'd2: begin
			t_array_muxed3 <= sdram_bankmachine2_cmd_payload_cas;
		end
		default: begin
			t_array_muxed3 <= sdram_bankmachine3_cmd_payload_cas;
		end
	endcase
end
always @(*) begin
	t_array_muxed4 <= 1'd0;
	case (sdram_choose_req_grant)
		1'd0: begin
			t_array_muxed4 <= sdram_bankmachine0_cmd_payload_ras;
		end
		1'd1: begin
			t_array_muxed4 <= sdram_bankmachine1_cmd_payload_ras;
		end
		2'd2: begin
			t_array_muxed4 <= sdram_bankmachine2_cmd_payload_ras;
		end
		default: begin
			t_array_muxed4 <= sdram_bankmachine3_cmd_payload_ras;
		end
	endcase
end
always @(*) begin
	t_array_muxed5 <= 1'd0;
	case (sdram_choose_req_grant)
		1'd0: begin
			t_array_muxed5 <= sdram_bankmachine0_cmd_payload_we;
		end
		1'd1: begin
			t_array_muxed5 <= sdram_bankmachine1_cmd_payload_we;
		end
		2'd2: begin
			t_array_muxed5 <= sdram_bankmachine2_cmd_payload_we;
		end
		default: begin
			t_array_muxed5 <= sdram_bankmachine3_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed12 <= 21'd0;
	case (roundrobin0_grant)
		default: begin
			rhs_array_muxed12 <= {port_cmd_payload_addr[22:10], port_cmd_payload_addr[7:0]};
		end
	endcase
end
always @(*) begin
	rhs_array_muxed13 <= 1'd0;
	case (roundrobin0_grant)
		default: begin
			rhs_array_muxed13 <= port_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed14 <= 1'd0;
	case (roundrobin0_grant)
		default: begin
			rhs_array_muxed14 <= (((port_cmd_payload_addr[9:8] == 1'd0) & (~(((locked0 | (sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))))) & port_cmd_valid);
		end
	endcase
end
always @(*) begin
	rhs_array_muxed15 <= 21'd0;
	case (roundrobin1_grant)
		default: begin
			rhs_array_muxed15 <= {port_cmd_payload_addr[22:10], port_cmd_payload_addr[7:0]};
		end
	endcase
end
always @(*) begin
	rhs_array_muxed16 <= 1'd0;
	case (roundrobin1_grant)
		default: begin
			rhs_array_muxed16 <= port_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed17 <= 1'd0;
	case (roundrobin1_grant)
		default: begin
			rhs_array_muxed17 <= (((port_cmd_payload_addr[9:8] == 1'd1) & (~(((locked1 | (sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))))) & port_cmd_valid);
		end
	endcase
end
always @(*) begin
	rhs_array_muxed18 <= 21'd0;
	case (roundrobin2_grant)
		default: begin
			rhs_array_muxed18 <= {port_cmd_payload_addr[22:10], port_cmd_payload_addr[7:0]};
		end
	endcase
end
always @(*) begin
	rhs_array_muxed19 <= 1'd0;
	case (roundrobin2_grant)
		default: begin
			rhs_array_muxed19 <= port_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed20 <= 1'd0;
	case (roundrobin2_grant)
		default: begin
			rhs_array_muxed20 <= (((port_cmd_payload_addr[9:8] == 2'd2) & (~(((locked2 | (sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))))) & port_cmd_valid);
		end
	endcase
end
always @(*) begin
	rhs_array_muxed21 <= 21'd0;
	case (roundrobin3_grant)
		default: begin
			rhs_array_muxed21 <= {port_cmd_payload_addr[22:10], port_cmd_payload_addr[7:0]};
		end
	endcase
end
always @(*) begin
	rhs_array_muxed22 <= 1'd0;
	case (roundrobin3_grant)
		default: begin
			rhs_array_muxed22 <= port_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed23 <= 1'd0;
	case (roundrobin3_grant)
		default: begin
			rhs_array_muxed23 <= (((port_cmd_payload_addr[9:8] == 2'd3) & (~(((locked3 | (sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))))) & port_cmd_valid);
		end
	endcase
end
always @(*) begin
	rhs_array_muxed24 <= 30'd0;
	case (wb_sdram_con_grant)
		default: begin
			rhs_array_muxed24 <= interface1_wb_sdram_adr;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed25 <= 32'd0;
	case (wb_sdram_con_grant)
		default: begin
			rhs_array_muxed25 <= interface1_wb_sdram_dat_w;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed26 <= 4'd0;
	case (wb_sdram_con_grant)
		default: begin
			rhs_array_muxed26 <= interface1_wb_sdram_sel;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed27 <= 1'd0;
	case (wb_sdram_con_grant)
		default: begin
			rhs_array_muxed27 <= interface1_wb_sdram_cyc;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed28 <= 1'd0;
	case (wb_sdram_con_grant)
		default: begin
			rhs_array_muxed28 <= interface1_wb_sdram_stb;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed29 <= 1'd0;
	case (wb_sdram_con_grant)
		default: begin
			rhs_array_muxed29 <= interface1_wb_sdram_we;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed30 <= 3'd0;
	case (wb_sdram_con_grant)
		default: begin
			rhs_array_muxed30 <= interface1_wb_sdram_cti;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed31 <= 2'd0;
	case (wb_sdram_con_grant)
		default: begin
			rhs_array_muxed31 <= interface1_wb_sdram_bte;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed32 <= 30'd0;
	case (basesoc_grant)
		1'd0: begin
			rhs_array_muxed32 <= lm32_ibus_adr;
		end
		default: begin
			rhs_array_muxed32 <= lm32_dbus_adr;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed33 <= 32'd0;
	case (basesoc_grant)
		1'd0: begin
			rhs_array_muxed33 <= lm32_ibus_dat_w;
		end
		default: begin
			rhs_array_muxed33 <= lm32_dbus_dat_w;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed34 <= 4'd0;
	case (basesoc_grant)
		1'd0: begin
			rhs_array_muxed34 <= lm32_ibus_sel;
		end
		default: begin
			rhs_array_muxed34 <= lm32_dbus_sel;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed35 <= 1'd0;
	case (basesoc_grant)
		1'd0: begin
			rhs_array_muxed35 <= lm32_ibus_cyc;
		end
		default: begin
			rhs_array_muxed35 <= lm32_dbus_cyc;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed36 <= 1'd0;
	case (basesoc_grant)
		1'd0: begin
			rhs_array_muxed36 <= lm32_ibus_stb;
		end
		default: begin
			rhs_array_muxed36 <= lm32_dbus_stb;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed37 <= 1'd0;
	case (basesoc_grant)
		1'd0: begin
			rhs_array_muxed37 <= lm32_ibus_we;
		end
		default: begin
			rhs_array_muxed37 <= lm32_dbus_we;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed38 <= 3'd0;
	case (basesoc_grant)
		1'd0: begin
			rhs_array_muxed38 <= lm32_ibus_cti;
		end
		default: begin
			rhs_array_muxed38 <= lm32_dbus_cti;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed39 <= 2'd0;
	case (basesoc_grant)
		1'd0: begin
			rhs_array_muxed39 <= lm32_ibus_bte;
		end
		default: begin
			rhs_array_muxed39 <= lm32_dbus_bte;
		end
	endcase
end
always @(*) begin
	array_muxed0 <= 13'd0;
	case (ddrphy_phase_sel)
		1'd0: begin
			array_muxed0 <= ddrphy_record0_address;
		end
		default: begin
			array_muxed0 <= ddrphy_record1_address;
		end
	endcase
end
always @(*) begin
	array_muxed1 <= 2'd0;
	case (ddrphy_phase_sel)
		1'd0: begin
			array_muxed1 <= ddrphy_record0_bank;
		end
		default: begin
			array_muxed1 <= ddrphy_record1_bank;
		end
	endcase
end
always @(*) begin
	array_muxed2 <= 1'd0;
	case (ddrphy_phase_sel)
		1'd0: begin
			array_muxed2 <= ddrphy_record0_cke;
		end
		default: begin
			array_muxed2 <= ddrphy_record1_cke;
		end
	endcase
end
always @(*) begin
	array_muxed3 <= 1'd0;
	case (ddrphy_phase_sel)
		1'd0: begin
			array_muxed3 <= ddrphy_record0_ras_n;
		end
		default: begin
			array_muxed3 <= ddrphy_record1_ras_n;
		end
	endcase
end
always @(*) begin
	array_muxed4 <= 1'd0;
	case (ddrphy_phase_sel)
		1'd0: begin
			array_muxed4 <= ddrphy_record0_cas_n;
		end
		default: begin
			array_muxed4 <= ddrphy_record1_cas_n;
		end
	endcase
end
always @(*) begin
	array_muxed5 <= 1'd0;
	case (ddrphy_phase_sel)
		1'd0: begin
			array_muxed5 <= ddrphy_record0_we_n;
		end
		default: begin
			array_muxed5 <= ddrphy_record1_we_n;
		end
	endcase
end
always @(*) begin
	array_muxed6 <= 2'd0;
	case (sdram_steerer_sel0)
		1'd0: begin
			array_muxed6 <= sdram_nop_ba[1:0];
		end
		1'd1: begin
			array_muxed6 <= sdram_choose_cmd_cmd_payload_ba[1:0];
		end
		2'd2: begin
			array_muxed6 <= sdram_choose_req_cmd_payload_ba[1:0];
		end
		default: begin
			array_muxed6 <= sdram_cmd_payload_ba[1:0];
		end
	endcase
end
always @(*) begin
	array_muxed7 <= 13'd0;
	case (sdram_steerer_sel0)
		1'd0: begin
			array_muxed7 <= sdram_nop_a;
		end
		1'd1: begin
			array_muxed7 <= sdram_choose_cmd_cmd_payload_a;
		end
		2'd2: begin
			array_muxed7 <= sdram_choose_req_cmd_payload_a;
		end
		default: begin
			array_muxed7 <= sdram_cmd_payload_a;
		end
	endcase
end
always @(*) begin
	array_muxed8 <= 1'd0;
	case (sdram_steerer_sel0)
		1'd0: begin
			array_muxed8 <= 1'd0;
		end
		1'd1: begin
			array_muxed8 <= ((sdram_choose_cmd_cmd_valid & sdram_choose_cmd_cmd_ready) & sdram_choose_cmd_cmd_payload_cas);
		end
		2'd2: begin
			array_muxed8 <= ((sdram_choose_req_cmd_valid & sdram_choose_req_cmd_ready) & sdram_choose_req_cmd_payload_cas);
		end
		default: begin
			array_muxed8 <= ((sdram_cmd_valid & sdram_cmd_ready) & sdram_cmd_payload_cas);
		end
	endcase
end
always @(*) begin
	array_muxed9 <= 1'd0;
	case (sdram_steerer_sel0)
		1'd0: begin
			array_muxed9 <= 1'd0;
		end
		1'd1: begin
			array_muxed9 <= ((sdram_choose_cmd_cmd_valid & sdram_choose_cmd_cmd_ready) & sdram_choose_cmd_cmd_payload_ras);
		end
		2'd2: begin
			array_muxed9 <= ((sdram_choose_req_cmd_valid & sdram_choose_req_cmd_ready) & sdram_choose_req_cmd_payload_ras);
		end
		default: begin
			array_muxed9 <= ((sdram_cmd_valid & sdram_cmd_ready) & sdram_cmd_payload_ras);
		end
	endcase
end
always @(*) begin
	array_muxed10 <= 1'd0;
	case (sdram_steerer_sel0)
		1'd0: begin
			array_muxed10 <= 1'd0;
		end
		1'd1: begin
			array_muxed10 <= ((sdram_choose_cmd_cmd_valid & sdram_choose_cmd_cmd_ready) & sdram_choose_cmd_cmd_payload_we);
		end
		2'd2: begin
			array_muxed10 <= ((sdram_choose_req_cmd_valid & sdram_choose_req_cmd_ready) & sdram_choose_req_cmd_payload_we);
		end
		default: begin
			array_muxed10 <= ((sdram_cmd_valid & sdram_cmd_ready) & sdram_cmd_payload_we);
		end
	endcase
end
always @(*) begin
	array_muxed11 <= 1'd0;
	case (sdram_steerer_sel0)
		1'd0: begin
			array_muxed11 <= 1'd0;
		end
		1'd1: begin
			array_muxed11 <= ((sdram_choose_cmd_cmd_valid & sdram_choose_cmd_cmd_ready) & sdram_choose_cmd_cmd_payload_is_read);
		end
		2'd2: begin
			array_muxed11 <= ((sdram_choose_req_cmd_valid & sdram_choose_req_cmd_ready) & sdram_choose_req_cmd_payload_is_read);
		end
		default: begin
			array_muxed11 <= ((sdram_cmd_valid & sdram_cmd_ready) & sdram_cmd_payload_is_read);
		end
	endcase
end
always @(*) begin
	array_muxed12 <= 1'd0;
	case (sdram_steerer_sel0)
		1'd0: begin
			array_muxed12 <= 1'd0;
		end
		1'd1: begin
			array_muxed12 <= ((sdram_choose_cmd_cmd_valid & sdram_choose_cmd_cmd_ready) & sdram_choose_cmd_cmd_payload_is_write);
		end
		2'd2: begin
			array_muxed12 <= ((sdram_choose_req_cmd_valid & sdram_choose_req_cmd_ready) & sdram_choose_req_cmd_payload_is_write);
		end
		default: begin
			array_muxed12 <= ((sdram_cmd_valid & sdram_cmd_ready) & sdram_cmd_payload_is_write);
		end
	endcase
end
always @(*) begin
	array_muxed13 <= 2'd0;
	case (sdram_steerer_sel1)
		1'd0: begin
			array_muxed13 <= sdram_nop_ba[1:0];
		end
		1'd1: begin
			array_muxed13 <= sdram_choose_cmd_cmd_payload_ba[1:0];
		end
		2'd2: begin
			array_muxed13 <= sdram_choose_req_cmd_payload_ba[1:0];
		end
		default: begin
			array_muxed13 <= sdram_cmd_payload_ba[1:0];
		end
	endcase
end
always @(*) begin
	array_muxed14 <= 13'd0;
	case (sdram_steerer_sel1)
		1'd0: begin
			array_muxed14 <= sdram_nop_a;
		end
		1'd1: begin
			array_muxed14 <= sdram_choose_cmd_cmd_payload_a;
		end
		2'd2: begin
			array_muxed14 <= sdram_choose_req_cmd_payload_a;
		end
		default: begin
			array_muxed14 <= sdram_cmd_payload_a;
		end
	endcase
end
always @(*) begin
	array_muxed15 <= 1'd0;
	case (sdram_steerer_sel1)
		1'd0: begin
			array_muxed15 <= 1'd0;
		end
		1'd1: begin
			array_muxed15 <= ((sdram_choose_cmd_cmd_valid & sdram_choose_cmd_cmd_ready) & sdram_choose_cmd_cmd_payload_cas);
		end
		2'd2: begin
			array_muxed15 <= ((sdram_choose_req_cmd_valid & sdram_choose_req_cmd_ready) & sdram_choose_req_cmd_payload_cas);
		end
		default: begin
			array_muxed15 <= ((sdram_cmd_valid & sdram_cmd_ready) & sdram_cmd_payload_cas);
		end
	endcase
end
always @(*) begin
	array_muxed16 <= 1'd0;
	case (sdram_steerer_sel1)
		1'd0: begin
			array_muxed16 <= 1'd0;
		end
		1'd1: begin
			array_muxed16 <= ((sdram_choose_cmd_cmd_valid & sdram_choose_cmd_cmd_ready) & sdram_choose_cmd_cmd_payload_ras);
		end
		2'd2: begin
			array_muxed16 <= ((sdram_choose_req_cmd_valid & sdram_choose_req_cmd_ready) & sdram_choose_req_cmd_payload_ras);
		end
		default: begin
			array_muxed16 <= ((sdram_cmd_valid & sdram_cmd_ready) & sdram_cmd_payload_ras);
		end
	endcase
end
always @(*) begin
	array_muxed17 <= 1'd0;
	case (sdram_steerer_sel1)
		1'd0: begin
			array_muxed17 <= 1'd0;
		end
		1'd1: begin
			array_muxed17 <= ((sdram_choose_cmd_cmd_valid & sdram_choose_cmd_cmd_ready) & sdram_choose_cmd_cmd_payload_we);
		end
		2'd2: begin
			array_muxed17 <= ((sdram_choose_req_cmd_valid & sdram_choose_req_cmd_ready) & sdram_choose_req_cmd_payload_we);
		end
		default: begin
			array_muxed17 <= ((sdram_cmd_valid & sdram_cmd_ready) & sdram_cmd_payload_we);
		end
	endcase
end
always @(*) begin
	array_muxed18 <= 1'd0;
	case (sdram_steerer_sel1)
		1'd0: begin
			array_muxed18 <= 1'd0;
		end
		1'd1: begin
			array_muxed18 <= ((sdram_choose_cmd_cmd_valid & sdram_choose_cmd_cmd_ready) & sdram_choose_cmd_cmd_payload_is_read);
		end
		2'd2: begin
			array_muxed18 <= ((sdram_choose_req_cmd_valid & sdram_choose_req_cmd_ready) & sdram_choose_req_cmd_payload_is_read);
		end
		default: begin
			array_muxed18 <= ((sdram_cmd_valid & sdram_cmd_ready) & sdram_cmd_payload_is_read);
		end
	endcase
end
always @(*) begin
	array_muxed19 <= 1'd0;
	case (sdram_steerer_sel1)
		1'd0: begin
			array_muxed19 <= 1'd0;
		end
		1'd1: begin
			array_muxed19 <= ((sdram_choose_cmd_cmd_valid & sdram_choose_cmd_cmd_ready) & sdram_choose_cmd_cmd_payload_is_write);
		end
		2'd2: begin
			array_muxed19 <= ((sdram_choose_req_cmd_valid & sdram_choose_req_cmd_ready) & sdram_choose_req_cmd_payload_is_write);
		end
		default: begin
			array_muxed19 <= ((sdram_cmd_valid & sdram_cmd_ready) & sdram_cmd_payload_is_write);
		end
	endcase
end
assign uart_phy_rx = regs1;
assign xilinxasyncresetsynchronizerimpl1 = ((~crg_pll_lckd) | (crg_por > 1'd0));

always @(posedge por_clk) begin
	if ((crg_por != 1'd0)) begin
		crg_por <= (crg_por - 1'd1);
	end
	if (por_rst) begin
		crg_por <= 11'd2047;
	end
end

always @(posedge sdram_half_clk) begin
	if ((ddrphy_phase_half == ddrphy_phase_sys)) begin
		ddrphy_phase_sel <= 1'd0;
	end else begin
		ddrphy_phase_sel <= (ddrphy_phase_sel + 1'd1);
	end
	ddrphy_phase_half <= (ddrphy_phase_half + 1'd1);
	ddrphy_record0_reset_n <= ddrphy_dfi_p0_reset_n;
	ddrphy_record0_odt <= ddrphy_dfi_p0_odt;
	ddrphy_record0_address <= ddrphy_dfi_p0_address;
	ddrphy_record0_bank <= ddrphy_dfi_p0_bank;
	ddrphy_record0_cs_n <= ddrphy_dfi_p0_cs_n;
	ddrphy_record0_cke <= ddrphy_dfi_p0_cke;
	ddrphy_record0_cas_n <= ddrphy_dfi_p0_cas_n;
	ddrphy_record0_ras_n <= ddrphy_dfi_p0_ras_n;
	ddrphy_record0_we_n <= ddrphy_dfi_p0_we_n;
	ddrphy_record1_reset_n <= ddrphy_dfi_p1_reset_n;
	ddrphy_record1_odt <= ddrphy_dfi_p1_odt;
	ddrphy_record1_address <= ddrphy_dfi_p1_address;
	ddrphy_record1_bank <= ddrphy_dfi_p1_bank;
	ddrphy_record1_cs_n <= ddrphy_dfi_p1_cs_n;
	ddrphy_record1_cke <= ddrphy_dfi_p1_cke;
	ddrphy_record1_cas_n <= ddrphy_dfi_p1_cas_n;
	ddrphy_record1_ras_n <= ddrphy_dfi_p1_ras_n;
	ddrphy_record1_we_n <= ddrphy_dfi_p1_we_n;
	ddram_a <= array_muxed0;
	ddram_ba <= array_muxed1;
	ddram_cke <= array_muxed2;
	ddram_ras_n <= array_muxed3;
	ddram_cas_n <= array_muxed4;
	ddram_we_n <= array_muxed5;
	ddrphy_postamble <= ddrphy_drive_dqs;
	ddrphy_r_dfi_wrdata_en <= {ddrphy_r_dfi_wrdata_en, ddrphy_wrdata_en_d};
	if (sdram_half_rst) begin
		ddram_a <= 13'd0;
		ddram_ba <= 2'd0;
		ddram_cke <= 1'd0;
		ddram_ras_n <= 1'd0;
		ddram_cas_n <= 1'd0;
		ddram_we_n <= 1'd0;
		ddrphy_phase_sel <= 1'd0;
		ddrphy_phase_half <= 1'd0;
		ddrphy_record0_address <= 13'd0;
		ddrphy_record0_bank <= 2'd0;
		ddrphy_record0_cas_n <= 1'd0;
		ddrphy_record0_cs_n <= 1'd0;
		ddrphy_record0_ras_n <= 1'd0;
		ddrphy_record0_we_n <= 1'd0;
		ddrphy_record0_cke <= 1'd0;
		ddrphy_record0_odt <= 1'd0;
		ddrphy_record0_reset_n <= 1'd0;
		ddrphy_record1_address <= 13'd0;
		ddrphy_record1_bank <= 2'd0;
		ddrphy_record1_cas_n <= 1'd0;
		ddrphy_record1_cs_n <= 1'd0;
		ddrphy_record1_ras_n <= 1'd0;
		ddrphy_record1_we_n <= 1'd0;
		ddrphy_record1_cke <= 1'd0;
		ddrphy_record1_odt <= 1'd0;
		ddrphy_record1_reset_n <= 1'd0;
		ddrphy_postamble <= 1'd0;
		ddrphy_r_dfi_wrdata_en <= 3'd0;
	end
end

always @(posedge sys_clk) begin
	if ((ctrl_bus_errors != 32'd4294967295)) begin
		if (ctrl_bus_error) begin
			ctrl_bus_errors <= (ctrl_bus_errors + 1'd1);
		end
	end
	rom_bus_ack <= 1'd0;
	if (((rom_bus_cyc & rom_bus_stb) & (~rom_bus_ack))) begin
		rom_bus_ack <= 1'd1;
	end
	sram_bus_ack <= 1'd0;
	if (((sram_bus_cyc & sram_bus_stb) & (~sram_bus_ack))) begin
		sram_bus_ack <= 1'd1;
	end
	interface_we <= 1'd0;
	interface_dat_w <= bus_wishbone_dat_w;
	interface_adr <= bus_wishbone_adr;
	bus_wishbone_dat_r <= interface_dat_r;
	if ((counter == 1'd1)) begin
		interface_we <= bus_wishbone_we;
	end
	if ((counter == 2'd2)) begin
		bus_wishbone_ack <= 1'd1;
	end
	if ((counter == 2'd3)) begin
		bus_wishbone_ack <= 1'd0;
	end
	if ((counter != 1'd0)) begin
		counter <= (counter + 1'd1);
	end else begin
		if ((bus_wishbone_cyc & bus_wishbone_stb)) begin
			counter <= 1'd1;
		end
	end
	uart_phy_sink_ready <= 1'd0;
	if (((uart_phy_sink_valid & (~uart_phy_tx_busy)) & (~uart_phy_sink_ready))) begin
		uart_phy_tx_reg <= uart_phy_sink_payload_data;
		uart_phy_tx_bitcount <= 1'd0;
		uart_phy_tx_busy <= 1'd1;
		serial_tx <= 1'd0;
	end else begin
		if ((uart_phy_uart_clk_txen & uart_phy_tx_busy)) begin
			uart_phy_tx_bitcount <= (uart_phy_tx_bitcount + 1'd1);
			if ((uart_phy_tx_bitcount == 4'd8)) begin
				serial_tx <= 1'd1;
			end else begin
				if ((uart_phy_tx_bitcount == 4'd9)) begin
					serial_tx <= 1'd1;
					uart_phy_tx_busy <= 1'd0;
					uart_phy_sink_ready <= 1'd1;
				end else begin
					serial_tx <= uart_phy_tx_reg[0];
					uart_phy_tx_reg <= {1'd0, uart_phy_tx_reg[7:1]};
				end
			end
		end
	end
	if (uart_phy_tx_busy) begin
		{uart_phy_uart_clk_txen, uart_phy_phase_accumulator_tx} <= (uart_phy_phase_accumulator_tx + uart_phy_storage);
	end else begin
		{uart_phy_uart_clk_txen, uart_phy_phase_accumulator_tx} <= 1'd0;
	end
	uart_phy_source_valid <= 1'd0;
	uart_phy_rx_r <= uart_phy_rx;
	if ((~uart_phy_rx_busy)) begin
		if (((~uart_phy_rx) & uart_phy_rx_r)) begin
			uart_phy_rx_busy <= 1'd1;
			uart_phy_rx_bitcount <= 1'd0;
		end
	end else begin
		if (uart_phy_uart_clk_rxen) begin
			uart_phy_rx_bitcount <= (uart_phy_rx_bitcount + 1'd1);
			if ((uart_phy_rx_bitcount == 1'd0)) begin
				if (uart_phy_rx) begin
					uart_phy_rx_busy <= 1'd0;
				end
			end else begin
				if ((uart_phy_rx_bitcount == 4'd9)) begin
					uart_phy_rx_busy <= 1'd0;
					if (uart_phy_rx) begin
						uart_phy_source_payload_data <= uart_phy_rx_reg;
						uart_phy_source_valid <= 1'd1;
					end
				end else begin
					uart_phy_rx_reg <= {uart_phy_rx, uart_phy_rx_reg[7:1]};
				end
			end
		end
	end
	if (uart_phy_rx_busy) begin
		{uart_phy_uart_clk_rxen, uart_phy_phase_accumulator_rx} <= (uart_phy_phase_accumulator_rx + uart_phy_storage);
	end else begin
		{uart_phy_uart_clk_rxen, uart_phy_phase_accumulator_rx} <= 32'd2147483648;
	end
	if (uart_tx_clear) begin
		uart_tx_pending <= 1'd0;
	end
	uart_tx_old_trigger <= uart_tx_trigger;
	if (((~uart_tx_trigger) & uart_tx_old_trigger)) begin
		uart_tx_pending <= 1'd1;
	end
	if (uart_rx_clear) begin
		uart_rx_pending <= 1'd0;
	end
	uart_rx_old_trigger <= uart_rx_trigger;
	if (((~uart_rx_trigger) & uart_rx_old_trigger)) begin
		uart_rx_pending <= 1'd1;
	end
	if (uart_tx_fifo_syncfifo_re) begin
		uart_tx_fifo_readable <= 1'd1;
	end else begin
		if (uart_tx_fifo_re) begin
			uart_tx_fifo_readable <= 1'd0;
		end
	end
	if (((uart_tx_fifo_syncfifo_we & uart_tx_fifo_syncfifo_writable) & (~uart_tx_fifo_replace))) begin
		uart_tx_fifo_produce <= (uart_tx_fifo_produce + 1'd1);
	end
	if (uart_tx_fifo_do_read) begin
		uart_tx_fifo_consume <= (uart_tx_fifo_consume + 1'd1);
	end
	if (((uart_tx_fifo_syncfifo_we & uart_tx_fifo_syncfifo_writable) & (~uart_tx_fifo_replace))) begin
		if ((~uart_tx_fifo_do_read)) begin
			uart_tx_fifo_level0 <= (uart_tx_fifo_level0 + 1'd1);
		end
	end else begin
		if (uart_tx_fifo_do_read) begin
			uart_tx_fifo_level0 <= (uart_tx_fifo_level0 - 1'd1);
		end
	end
	if (uart_rx_fifo_syncfifo_re) begin
		uart_rx_fifo_readable <= 1'd1;
	end else begin
		if (uart_rx_fifo_re) begin
			uart_rx_fifo_readable <= 1'd0;
		end
	end
	if (((uart_rx_fifo_syncfifo_we & uart_rx_fifo_syncfifo_writable) & (~uart_rx_fifo_replace))) begin
		uart_rx_fifo_produce <= (uart_rx_fifo_produce + 1'd1);
	end
	if (uart_rx_fifo_do_read) begin
		uart_rx_fifo_consume <= (uart_rx_fifo_consume + 1'd1);
	end
	if (((uart_rx_fifo_syncfifo_we & uart_rx_fifo_syncfifo_writable) & (~uart_rx_fifo_replace))) begin
		if ((~uart_rx_fifo_do_read)) begin
			uart_rx_fifo_level0 <= (uart_rx_fifo_level0 + 1'd1);
		end
	end else begin
		if (uart_rx_fifo_do_read) begin
			uart_rx_fifo_level0 <= (uart_rx_fifo_level0 - 1'd1);
		end
	end
	if (uart_reset) begin
		uart_tx_pending <= 1'd0;
		uart_tx_old_trigger <= 1'd0;
		uart_rx_pending <= 1'd0;
		uart_rx_old_trigger <= 1'd0;
		uart_tx_fifo_readable <= 1'd0;
		uart_tx_fifo_level0 <= 5'd0;
		uart_tx_fifo_produce <= 4'd0;
		uart_tx_fifo_consume <= 4'd0;
		uart_rx_fifo_readable <= 1'd0;
		uart_rx_fifo_level0 <= 5'd0;
		uart_rx_fifo_produce <= 4'd0;
		uart_rx_fifo_consume <= 4'd0;
	end
	if (timer0_en_storage) begin
		if ((timer0_value == 1'd0)) begin
			timer0_value <= timer0_reload_storage;
		end else begin
			timer0_value <= (timer0_value - 1'd1);
		end
	end else begin
		timer0_value <= timer0_load_storage;
	end
	if (timer0_update_value_re) begin
		timer0_value_status <= timer0_value;
	end
	if (timer0_zero_clear) begin
		timer0_zero_pending <= 1'd0;
	end
	timer0_zero_old_trigger <= timer0_zero_trigger;
	if (((~timer0_zero_trigger) & timer0_zero_old_trigger)) begin
		timer0_zero_pending <= 1'd1;
	end
	ddrphy_phase_sys <= ddrphy_phase_half;
	if ((ddrphy_bitslip_cnt == 2'd2)) begin
		ddrphy_bitslip_inc <= 1'd0;
	end else begin
		ddrphy_bitslip_cnt <= (ddrphy_bitslip_cnt + 1'd1);
		ddrphy_bitslip_inc <= 1'd1;
	end
	ddrphy_record2_wrdata <= ddrphy_dfi_p0_wrdata;
	ddrphy_record2_wrdata_mask <= ddrphy_dfi_p0_wrdata_mask;
	ddrphy_record3_wrdata <= ddrphy_dfi_p1_wrdata;
	ddrphy_record3_wrdata_mask <= ddrphy_dfi_p1_wrdata_mask;
	ddrphy_drive_dq_n1 <= ddrphy_drive_dq_n0;
	ddrphy_wrdata_en_d <= ddrphy_wrdata_en;
	ddrphy_rddata_sr <= {ddrphy_rddata_en, ddrphy_rddata_sr[4:1]};
	if (sdram_inti_p0_rddata_valid) begin
		sdram_phaseinjector0_status <= sdram_inti_p0_rddata;
	end
	if (sdram_inti_p1_rddata_valid) begin
		sdram_phaseinjector1_status <= sdram_inti_p1_rddata;
	end
	if (sdram_timer_wait) begin
		if ((~sdram_timer_done)) begin
			if ((sdram_timer_load & (sdram_timer_load_count < sdram_timer_count))) begin
				sdram_timer_count <= sdram_timer_load_count;
			end else begin
				sdram_timer_count <= (sdram_timer_count - 1'd1);
			end
		end
	end else begin
		sdram_timer_count <= 8'd245;
	end
	if (sdram_timer_reset) begin
		sdram_timer_count <= 8'd245;
	end
	sdram_cmd_payload_a <= 11'd1024;
	sdram_cmd_payload_ba <= 1'd0;
	sdram_cmd_payload_cas <= 1'd0;
	sdram_cmd_payload_ras <= 1'd0;
	sdram_cmd_payload_we <= 1'd0;
	sdram_generator_done <= 1'd0;
	if ((sdram_generator_counter == 1'd1)) begin
		sdram_cmd_payload_ras <= 1'd1;
		sdram_cmd_payload_we <= 1'd1;
	end
	if ((sdram_generator_counter == 2'd2)) begin
		sdram_cmd_payload_cas <= 1'd1;
		sdram_cmd_payload_ras <= 1'd1;
	end
	if ((sdram_generator_counter == 3'd5)) begin
		sdram_generator_done <= 1'd1;
	end
	if ((sdram_generator_counter == 3'd5)) begin
		sdram_generator_counter <= 1'd0;
	end else begin
		if ((sdram_generator_counter != 1'd0)) begin
			sdram_generator_counter <= (sdram_generator_counter + 1'd1);
		end else begin
			if (sdram_generator_start) begin
				sdram_generator_counter <= 1'd1;
			end
		end
	end
	refresher_state <= refresher_next_state;
	if (sdram_bankmachine0_row_close) begin
		sdram_bankmachine0_row_opened <= 1'd0;
	end else begin
		if (sdram_bankmachine0_row_open) begin
			sdram_bankmachine0_row_opened <= 1'd1;
			sdram_bankmachine0_row <= sdram_bankmachine0_cmd_buffer_source_payload_addr[20:8];
		end
	end
	if (((sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_we & sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_writable) & (~sdram_bankmachine0_cmd_buffer_lookahead_replace))) begin
		sdram_bankmachine0_cmd_buffer_lookahead_produce <= (sdram_bankmachine0_cmd_buffer_lookahead_produce + 1'd1);
	end
	if (sdram_bankmachine0_cmd_buffer_lookahead_do_read) begin
		sdram_bankmachine0_cmd_buffer_lookahead_consume <= (sdram_bankmachine0_cmd_buffer_lookahead_consume + 1'd1);
	end
	if (((sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_we & sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_writable) & (~sdram_bankmachine0_cmd_buffer_lookahead_replace))) begin
		if ((~sdram_bankmachine0_cmd_buffer_lookahead_do_read)) begin
			sdram_bankmachine0_cmd_buffer_lookahead_level <= (sdram_bankmachine0_cmd_buffer_lookahead_level + 1'd1);
		end
	end else begin
		if (sdram_bankmachine0_cmd_buffer_lookahead_do_read) begin
			sdram_bankmachine0_cmd_buffer_lookahead_level <= (sdram_bankmachine0_cmd_buffer_lookahead_level - 1'd1);
		end
	end
	if (sdram_bankmachine0_cmd_buffer_pipe_ce) begin
		sdram_bankmachine0_cmd_buffer_valid_n <= sdram_bankmachine0_cmd_buffer_sink_valid;
	end
	if (sdram_bankmachine0_cmd_buffer_pipe_ce) begin
		sdram_bankmachine0_cmd_buffer_first_n <= (sdram_bankmachine0_cmd_buffer_sink_valid & sdram_bankmachine0_cmd_buffer_sink_first);
		sdram_bankmachine0_cmd_buffer_last_n <= (sdram_bankmachine0_cmd_buffer_sink_valid & sdram_bankmachine0_cmd_buffer_sink_last);
	end
	if (sdram_bankmachine0_cmd_buffer_pipe_ce) begin
		sdram_bankmachine0_cmd_buffer_source_payload_we <= sdram_bankmachine0_cmd_buffer_sink_payload_we;
		sdram_bankmachine0_cmd_buffer_source_payload_addr <= sdram_bankmachine0_cmd_buffer_sink_payload_addr;
	end
	if (sdram_bankmachine0_twtpcon_valid) begin
		sdram_bankmachine0_twtpcon_count <= 2'd3;
		if (1'd0) begin
			sdram_bankmachine0_twtpcon_ready <= 1'd1;
		end else begin
			sdram_bankmachine0_twtpcon_ready <= 1'd0;
		end
	end else begin
		if ((~sdram_bankmachine0_twtpcon_ready)) begin
			sdram_bankmachine0_twtpcon_count <= (sdram_bankmachine0_twtpcon_count - 1'd1);
			if ((sdram_bankmachine0_twtpcon_count == 1'd1)) begin
				sdram_bankmachine0_twtpcon_ready <= 1'd1;
			end
		end
	end
	bankmachine0_state <= bankmachine0_next_state;
	if (sdram_bankmachine1_row_close) begin
		sdram_bankmachine1_row_opened <= 1'd0;
	end else begin
		if (sdram_bankmachine1_row_open) begin
			sdram_bankmachine1_row_opened <= 1'd1;
			sdram_bankmachine1_row <= sdram_bankmachine1_cmd_buffer_source_payload_addr[20:8];
		end
	end
	if (((sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_we & sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_writable) & (~sdram_bankmachine1_cmd_buffer_lookahead_replace))) begin
		sdram_bankmachine1_cmd_buffer_lookahead_produce <= (sdram_bankmachine1_cmd_buffer_lookahead_produce + 1'd1);
	end
	if (sdram_bankmachine1_cmd_buffer_lookahead_do_read) begin
		sdram_bankmachine1_cmd_buffer_lookahead_consume <= (sdram_bankmachine1_cmd_buffer_lookahead_consume + 1'd1);
	end
	if (((sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_we & sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_writable) & (~sdram_bankmachine1_cmd_buffer_lookahead_replace))) begin
		if ((~sdram_bankmachine1_cmd_buffer_lookahead_do_read)) begin
			sdram_bankmachine1_cmd_buffer_lookahead_level <= (sdram_bankmachine1_cmd_buffer_lookahead_level + 1'd1);
		end
	end else begin
		if (sdram_bankmachine1_cmd_buffer_lookahead_do_read) begin
			sdram_bankmachine1_cmd_buffer_lookahead_level <= (sdram_bankmachine1_cmd_buffer_lookahead_level - 1'd1);
		end
	end
	if (sdram_bankmachine1_cmd_buffer_pipe_ce) begin
		sdram_bankmachine1_cmd_buffer_valid_n <= sdram_bankmachine1_cmd_buffer_sink_valid;
	end
	if (sdram_bankmachine1_cmd_buffer_pipe_ce) begin
		sdram_bankmachine1_cmd_buffer_first_n <= (sdram_bankmachine1_cmd_buffer_sink_valid & sdram_bankmachine1_cmd_buffer_sink_first);
		sdram_bankmachine1_cmd_buffer_last_n <= (sdram_bankmachine1_cmd_buffer_sink_valid & sdram_bankmachine1_cmd_buffer_sink_last);
	end
	if (sdram_bankmachine1_cmd_buffer_pipe_ce) begin
		sdram_bankmachine1_cmd_buffer_source_payload_we <= sdram_bankmachine1_cmd_buffer_sink_payload_we;
		sdram_bankmachine1_cmd_buffer_source_payload_addr <= sdram_bankmachine1_cmd_buffer_sink_payload_addr;
	end
	if (sdram_bankmachine1_twtpcon_valid) begin
		sdram_bankmachine1_twtpcon_count <= 2'd3;
		if (1'd0) begin
			sdram_bankmachine1_twtpcon_ready <= 1'd1;
		end else begin
			sdram_bankmachine1_twtpcon_ready <= 1'd0;
		end
	end else begin
		if ((~sdram_bankmachine1_twtpcon_ready)) begin
			sdram_bankmachine1_twtpcon_count <= (sdram_bankmachine1_twtpcon_count - 1'd1);
			if ((sdram_bankmachine1_twtpcon_count == 1'd1)) begin
				sdram_bankmachine1_twtpcon_ready <= 1'd1;
			end
		end
	end
	bankmachine1_state <= bankmachine1_next_state;
	if (sdram_bankmachine2_row_close) begin
		sdram_bankmachine2_row_opened <= 1'd0;
	end else begin
		if (sdram_bankmachine2_row_open) begin
			sdram_bankmachine2_row_opened <= 1'd1;
			sdram_bankmachine2_row <= sdram_bankmachine2_cmd_buffer_source_payload_addr[20:8];
		end
	end
	if (((sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_we & sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_writable) & (~sdram_bankmachine2_cmd_buffer_lookahead_replace))) begin
		sdram_bankmachine2_cmd_buffer_lookahead_produce <= (sdram_bankmachine2_cmd_buffer_lookahead_produce + 1'd1);
	end
	if (sdram_bankmachine2_cmd_buffer_lookahead_do_read) begin
		sdram_bankmachine2_cmd_buffer_lookahead_consume <= (sdram_bankmachine2_cmd_buffer_lookahead_consume + 1'd1);
	end
	if (((sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_we & sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_writable) & (~sdram_bankmachine2_cmd_buffer_lookahead_replace))) begin
		if ((~sdram_bankmachine2_cmd_buffer_lookahead_do_read)) begin
			sdram_bankmachine2_cmd_buffer_lookahead_level <= (sdram_bankmachine2_cmd_buffer_lookahead_level + 1'd1);
		end
	end else begin
		if (sdram_bankmachine2_cmd_buffer_lookahead_do_read) begin
			sdram_bankmachine2_cmd_buffer_lookahead_level <= (sdram_bankmachine2_cmd_buffer_lookahead_level - 1'd1);
		end
	end
	if (sdram_bankmachine2_cmd_buffer_pipe_ce) begin
		sdram_bankmachine2_cmd_buffer_valid_n <= sdram_bankmachine2_cmd_buffer_sink_valid;
	end
	if (sdram_bankmachine2_cmd_buffer_pipe_ce) begin
		sdram_bankmachine2_cmd_buffer_first_n <= (sdram_bankmachine2_cmd_buffer_sink_valid & sdram_bankmachine2_cmd_buffer_sink_first);
		sdram_bankmachine2_cmd_buffer_last_n <= (sdram_bankmachine2_cmd_buffer_sink_valid & sdram_bankmachine2_cmd_buffer_sink_last);
	end
	if (sdram_bankmachine2_cmd_buffer_pipe_ce) begin
		sdram_bankmachine2_cmd_buffer_source_payload_we <= sdram_bankmachine2_cmd_buffer_sink_payload_we;
		sdram_bankmachine2_cmd_buffer_source_payload_addr <= sdram_bankmachine2_cmd_buffer_sink_payload_addr;
	end
	if (sdram_bankmachine2_twtpcon_valid) begin
		sdram_bankmachine2_twtpcon_count <= 2'd3;
		if (1'd0) begin
			sdram_bankmachine2_twtpcon_ready <= 1'd1;
		end else begin
			sdram_bankmachine2_twtpcon_ready <= 1'd0;
		end
	end else begin
		if ((~sdram_bankmachine2_twtpcon_ready)) begin
			sdram_bankmachine2_twtpcon_count <= (sdram_bankmachine2_twtpcon_count - 1'd1);
			if ((sdram_bankmachine2_twtpcon_count == 1'd1)) begin
				sdram_bankmachine2_twtpcon_ready <= 1'd1;
			end
		end
	end
	bankmachine2_state <= bankmachine2_next_state;
	if (sdram_bankmachine3_row_close) begin
		sdram_bankmachine3_row_opened <= 1'd0;
	end else begin
		if (sdram_bankmachine3_row_open) begin
			sdram_bankmachine3_row_opened <= 1'd1;
			sdram_bankmachine3_row <= sdram_bankmachine3_cmd_buffer_source_payload_addr[20:8];
		end
	end
	if (((sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_we & sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_writable) & (~sdram_bankmachine3_cmd_buffer_lookahead_replace))) begin
		sdram_bankmachine3_cmd_buffer_lookahead_produce <= (sdram_bankmachine3_cmd_buffer_lookahead_produce + 1'd1);
	end
	if (sdram_bankmachine3_cmd_buffer_lookahead_do_read) begin
		sdram_bankmachine3_cmd_buffer_lookahead_consume <= (sdram_bankmachine3_cmd_buffer_lookahead_consume + 1'd1);
	end
	if (((sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_we & sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_writable) & (~sdram_bankmachine3_cmd_buffer_lookahead_replace))) begin
		if ((~sdram_bankmachine3_cmd_buffer_lookahead_do_read)) begin
			sdram_bankmachine3_cmd_buffer_lookahead_level <= (sdram_bankmachine3_cmd_buffer_lookahead_level + 1'd1);
		end
	end else begin
		if (sdram_bankmachine3_cmd_buffer_lookahead_do_read) begin
			sdram_bankmachine3_cmd_buffer_lookahead_level <= (sdram_bankmachine3_cmd_buffer_lookahead_level - 1'd1);
		end
	end
	if (sdram_bankmachine3_cmd_buffer_pipe_ce) begin
		sdram_bankmachine3_cmd_buffer_valid_n <= sdram_bankmachine3_cmd_buffer_sink_valid;
	end
	if (sdram_bankmachine3_cmd_buffer_pipe_ce) begin
		sdram_bankmachine3_cmd_buffer_first_n <= (sdram_bankmachine3_cmd_buffer_sink_valid & sdram_bankmachine3_cmd_buffer_sink_first);
		sdram_bankmachine3_cmd_buffer_last_n <= (sdram_bankmachine3_cmd_buffer_sink_valid & sdram_bankmachine3_cmd_buffer_sink_last);
	end
	if (sdram_bankmachine3_cmd_buffer_pipe_ce) begin
		sdram_bankmachine3_cmd_buffer_source_payload_we <= sdram_bankmachine3_cmd_buffer_sink_payload_we;
		sdram_bankmachine3_cmd_buffer_source_payload_addr <= sdram_bankmachine3_cmd_buffer_sink_payload_addr;
	end
	if (sdram_bankmachine3_twtpcon_valid) begin
		sdram_bankmachine3_twtpcon_count <= 2'd3;
		if (1'd0) begin
			sdram_bankmachine3_twtpcon_ready <= 1'd1;
		end else begin
			sdram_bankmachine3_twtpcon_ready <= 1'd0;
		end
	end else begin
		if ((~sdram_bankmachine3_twtpcon_ready)) begin
			sdram_bankmachine3_twtpcon_count <= (sdram_bankmachine3_twtpcon_count - 1'd1);
			if ((sdram_bankmachine3_twtpcon_count == 1'd1)) begin
				sdram_bankmachine3_twtpcon_ready <= 1'd1;
			end
		end
	end
	bankmachine3_state <= bankmachine3_next_state;
	if ((~sdram_en0)) begin
		sdram_time0 <= 5'd31;
	end else begin
		if ((~sdram_max_time0)) begin
			sdram_time0 <= (sdram_time0 - 1'd1);
		end
	end
	if ((~sdram_en1)) begin
		sdram_time1 <= 4'd15;
	end else begin
		if ((~sdram_max_time1)) begin
			sdram_time1 <= (sdram_time1 - 1'd1);
		end
	end
	if (sdram_choose_cmd_ce) begin
		case (sdram_choose_cmd_grant)
			1'd0: begin
				if (sdram_choose_cmd_request[1]) begin
					sdram_choose_cmd_grant <= 1'd1;
				end else begin
					if (sdram_choose_cmd_request[2]) begin
						sdram_choose_cmd_grant <= 2'd2;
					end else begin
						if (sdram_choose_cmd_request[3]) begin
							sdram_choose_cmd_grant <= 2'd3;
						end
					end
				end
			end
			1'd1: begin
				if (sdram_choose_cmd_request[2]) begin
					sdram_choose_cmd_grant <= 2'd2;
				end else begin
					if (sdram_choose_cmd_request[3]) begin
						sdram_choose_cmd_grant <= 2'd3;
					end else begin
						if (sdram_choose_cmd_request[0]) begin
							sdram_choose_cmd_grant <= 1'd0;
						end
					end
				end
			end
			2'd2: begin
				if (sdram_choose_cmd_request[3]) begin
					sdram_choose_cmd_grant <= 2'd3;
				end else begin
					if (sdram_choose_cmd_request[0]) begin
						sdram_choose_cmd_grant <= 1'd0;
					end else begin
						if (sdram_choose_cmd_request[1]) begin
							sdram_choose_cmd_grant <= 1'd1;
						end
					end
				end
			end
			2'd3: begin
				if (sdram_choose_cmd_request[0]) begin
					sdram_choose_cmd_grant <= 1'd0;
				end else begin
					if (sdram_choose_cmd_request[1]) begin
						sdram_choose_cmd_grant <= 1'd1;
					end else begin
						if (sdram_choose_cmd_request[2]) begin
							sdram_choose_cmd_grant <= 2'd2;
						end
					end
				end
			end
		endcase
	end
	if (sdram_choose_req_ce) begin
		case (sdram_choose_req_grant)
			1'd0: begin
				if (sdram_choose_req_request[1]) begin
					sdram_choose_req_grant <= 1'd1;
				end else begin
					if (sdram_choose_req_request[2]) begin
						sdram_choose_req_grant <= 2'd2;
					end else begin
						if (sdram_choose_req_request[3]) begin
							sdram_choose_req_grant <= 2'd3;
						end
					end
				end
			end
			1'd1: begin
				if (sdram_choose_req_request[2]) begin
					sdram_choose_req_grant <= 2'd2;
				end else begin
					if (sdram_choose_req_request[3]) begin
						sdram_choose_req_grant <= 2'd3;
					end else begin
						if (sdram_choose_req_request[0]) begin
							sdram_choose_req_grant <= 1'd0;
						end
					end
				end
			end
			2'd2: begin
				if (sdram_choose_req_request[3]) begin
					sdram_choose_req_grant <= 2'd3;
				end else begin
					if (sdram_choose_req_request[0]) begin
						sdram_choose_req_grant <= 1'd0;
					end else begin
						if (sdram_choose_req_request[1]) begin
							sdram_choose_req_grant <= 1'd1;
						end
					end
				end
			end
			2'd3: begin
				if (sdram_choose_req_request[0]) begin
					sdram_choose_req_grant <= 1'd0;
				end else begin
					if (sdram_choose_req_request[1]) begin
						sdram_choose_req_grant <= 1'd1;
					end else begin
						if (sdram_choose_req_request[2]) begin
							sdram_choose_req_grant <= 2'd2;
						end
					end
				end
			end
		endcase
	end
	sdram_dfi_p0_cs_n <= 1'd0;
	sdram_dfi_p0_bank <= array_muxed6;
	sdram_dfi_p0_address <= array_muxed7;
	sdram_dfi_p0_cas_n <= (~array_muxed8);
	sdram_dfi_p0_ras_n <= (~array_muxed9);
	sdram_dfi_p0_we_n <= (~array_muxed10);
	sdram_dfi_p0_rddata_en <= array_muxed11;
	sdram_dfi_p0_wrdata_en <= array_muxed12;
	sdram_dfi_p1_cs_n <= 1'd0;
	sdram_dfi_p1_bank <= array_muxed13;
	sdram_dfi_p1_address <= array_muxed14;
	sdram_dfi_p1_cas_n <= (~array_muxed15);
	sdram_dfi_p1_ras_n <= (~array_muxed16);
	sdram_dfi_p1_we_n <= (~array_muxed17);
	sdram_dfi_p1_rddata_en <= array_muxed18;
	sdram_dfi_p1_wrdata_en <= array_muxed19;
	if (sdram_tccdcon_valid) begin
		sdram_tccdcon_count <= 1'd0;
		if (1'd1) begin
			sdram_tccdcon_ready <= 1'd1;
		end else begin
			sdram_tccdcon_ready <= 1'd0;
		end
	end else begin
		if ((~sdram_tccdcon_ready)) begin
			sdram_tccdcon_count <= (sdram_tccdcon_count - 1'd1);
			if ((sdram_tccdcon_count == 1'd1)) begin
				sdram_tccdcon_ready <= 1'd1;
			end
		end
	end
	if (sdram_twtrcon_valid) begin
		sdram_twtrcon_count <= 2'd3;
		if (1'd0) begin
			sdram_twtrcon_ready <= 1'd1;
		end else begin
			sdram_twtrcon_ready <= 1'd0;
		end
	end else begin
		if ((~sdram_twtrcon_ready)) begin
			sdram_twtrcon_count <= (sdram_twtrcon_count - 1'd1);
			if ((sdram_twtrcon_count == 1'd1)) begin
				sdram_twtrcon_ready <= 1'd1;
			end
		end
	end
	multiplexer_state <= multiplexer_next_state;
	sdram_bandwidth_cmd_valid <= sdram_choose_req_cmd_valid;
	sdram_bandwidth_cmd_ready <= sdram_choose_req_cmd_ready;
	sdram_bandwidth_cmd_is_read <= sdram_choose_req_cmd_payload_is_read;
	sdram_bandwidth_cmd_is_write <= sdram_choose_req_cmd_payload_is_write;
	{sdram_bandwidth_period, sdram_bandwidth_counter} <= (sdram_bandwidth_counter + 1'd1);
	if (sdram_bandwidth_period) begin
		sdram_bandwidth_nreads_r <= sdram_bandwidth_nreads;
		sdram_bandwidth_nwrites_r <= sdram_bandwidth_nwrites;
		sdram_bandwidth_nreads <= 1'd0;
		sdram_bandwidth_nwrites <= 1'd0;
	end else begin
		if ((sdram_bandwidth_cmd_valid & sdram_bandwidth_cmd_ready)) begin
			if (sdram_bandwidth_cmd_is_read) begin
				sdram_bandwidth_nreads <= (sdram_bandwidth_nreads + 1'd1);
			end
			if (sdram_bandwidth_cmd_is_write) begin
				sdram_bandwidth_nwrites <= (sdram_bandwidth_nwrites + 1'd1);
			end
		end
	end
	if (sdram_bandwidth_update_re) begin
		sdram_bandwidth_nreads_status <= sdram_bandwidth_nreads_r;
		sdram_bandwidth_nwrites_status <= sdram_bandwidth_nwrites_r;
	end
	if (((roundrobin0_grant == 1'd0) & sdram_interface_bank0_rdata_valid)) begin
		rbank <= 1'd0;
	end
	if (((roundrobin0_grant == 1'd0) & sdram_interface_bank0_wdata_ready)) begin
		wbank <= 1'd0;
	end
	if (((roundrobin1_grant == 1'd0) & sdram_interface_bank1_rdata_valid)) begin
		rbank <= 1'd1;
	end
	if (((roundrobin1_grant == 1'd0) & sdram_interface_bank1_wdata_ready)) begin
		wbank <= 1'd1;
	end
	if (((roundrobin2_grant == 1'd0) & sdram_interface_bank2_rdata_valid)) begin
		rbank <= 2'd2;
	end
	if (((roundrobin2_grant == 1'd0) & sdram_interface_bank2_wdata_ready)) begin
		wbank <= 2'd2;
	end
	if (((roundrobin3_grant == 1'd0) & sdram_interface_bank3_rdata_valid)) begin
		rbank <= 2'd3;
	end
	if (((roundrobin3_grant == 1'd0) & sdram_interface_bank3_wdata_ready)) begin
		wbank <= 2'd3;
	end
	new_master_wdata_ready <= ((((1'd0 | ((roundrobin0_grant == 1'd0) & sdram_interface_bank0_wdata_ready)) | ((roundrobin1_grant == 1'd0) & sdram_interface_bank1_wdata_ready)) | ((roundrobin2_grant == 1'd0) & sdram_interface_bank2_wdata_ready)) | ((roundrobin3_grant == 1'd0) & sdram_interface_bank3_wdata_ready));
	new_master_rdata_valid0 <= ((((1'd0 | ((roundrobin0_grant == 1'd0) & sdram_interface_bank0_rdata_valid)) | ((roundrobin1_grant == 1'd0) & sdram_interface_bank1_rdata_valid)) | ((roundrobin2_grant == 1'd0) & sdram_interface_bank2_rdata_valid)) | ((roundrobin3_grant == 1'd0) & sdram_interface_bank3_rdata_valid));
	new_master_rdata_valid1 <= new_master_rdata_valid0;
	new_master_rdata_valid2 <= new_master_rdata_valid1;
	new_master_rdata_valid3 <= new_master_rdata_valid2;
	new_master_rdata_valid4 <= new_master_rdata_valid3;
	new_master_rdata_valid5 <= new_master_rdata_valid4;
	adr_offset_r <= interface0_wb_sdram_adr[0];
	cache_state <= cache_next_state;
	litedramwishbone2native_state <= litedramwishbone2native_next_state;
	case (basesoc_grant)
		1'd0: begin
			if ((~basesoc_request[0])) begin
				if (basesoc_request[1]) begin
					basesoc_grant <= 1'd1;
				end
			end
		end
		1'd1: begin
			if ((~basesoc_request[1])) begin
				if (basesoc_request[0]) begin
					basesoc_grant <= 1'd0;
				end
			end
		end
	endcase
	basesoc_slave_sel_r <= basesoc_slave_sel;
	if (basesoc_wait) begin
		if ((~basesoc_done)) begin
			basesoc_count <= (basesoc_count - 1'd1);
		end
	end else begin
		basesoc_count <= 20'd1000000;
	end
	basesoc_interface0_bank_bus_dat_r <= 1'd0;
	if (basesoc_csrbank0_sel) begin
		case (basesoc_interface0_bank_bus_adr[3:0])
			1'd0: begin
				basesoc_interface0_bank_bus_dat_r <= ctrl_reset_reset_w;
			end
			1'd1: begin
				basesoc_interface0_bank_bus_dat_r <= basesoc_csrbank0_scratch3_w;
			end
			2'd2: begin
				basesoc_interface0_bank_bus_dat_r <= basesoc_csrbank0_scratch2_w;
			end
			2'd3: begin
				basesoc_interface0_bank_bus_dat_r <= basesoc_csrbank0_scratch1_w;
			end
			3'd4: begin
				basesoc_interface0_bank_bus_dat_r <= basesoc_csrbank0_scratch0_w;
			end
			3'd5: begin
				basesoc_interface0_bank_bus_dat_r <= basesoc_csrbank0_bus_errors3_w;
			end
			3'd6: begin
				basesoc_interface0_bank_bus_dat_r <= basesoc_csrbank0_bus_errors2_w;
			end
			3'd7: begin
				basesoc_interface0_bank_bus_dat_r <= basesoc_csrbank0_bus_errors1_w;
			end
			4'd8: begin
				basesoc_interface0_bank_bus_dat_r <= basesoc_csrbank0_bus_errors0_w;
			end
		endcase
	end
	if (basesoc_csrbank0_scratch3_re) begin
		ctrl_storage_full[31:24] <= basesoc_csrbank0_scratch3_r;
	end
	if (basesoc_csrbank0_scratch2_re) begin
		ctrl_storage_full[23:16] <= basesoc_csrbank0_scratch2_r;
	end
	if (basesoc_csrbank0_scratch1_re) begin
		ctrl_storage_full[15:8] <= basesoc_csrbank0_scratch1_r;
	end
	if (basesoc_csrbank0_scratch0_re) begin
		ctrl_storage_full[7:0] <= basesoc_csrbank0_scratch0_r;
	end
	ctrl_re <= basesoc_csrbank0_scratch0_re;
	basesoc_sel_r <= basesoc_sel;
	basesoc_interface1_bank_bus_dat_r <= 1'd0;
	if (basesoc_csrbank1_sel) begin
		case (basesoc_interface1_bank_bus_adr[5:0])
			1'd0: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_dfii_control0_w;
			end
			1'd1: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_dfii_pi0_command0_w;
			end
			2'd2: begin
				basesoc_interface1_bank_bus_dat_r <= sdram_phaseinjector0_command_issue_w;
			end
			2'd3: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_dfii_pi0_address1_w;
			end
			3'd4: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_dfii_pi0_address0_w;
			end
			3'd5: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_dfii_pi0_baddress0_w;
			end
			3'd6: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_dfii_pi0_wrdata3_w;
			end
			3'd7: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_dfii_pi0_wrdata2_w;
			end
			4'd8: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_dfii_pi0_wrdata1_w;
			end
			4'd9: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_dfii_pi0_wrdata0_w;
			end
			4'd10: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_dfii_pi0_rddata3_w;
			end
			4'd11: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_dfii_pi0_rddata2_w;
			end
			4'd12: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_dfii_pi0_rddata1_w;
			end
			4'd13: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_dfii_pi0_rddata0_w;
			end
			4'd14: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_dfii_pi1_command0_w;
			end
			4'd15: begin
				basesoc_interface1_bank_bus_dat_r <= sdram_phaseinjector1_command_issue_w;
			end
			5'd16: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_dfii_pi1_address1_w;
			end
			5'd17: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_dfii_pi1_address0_w;
			end
			5'd18: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_dfii_pi1_baddress0_w;
			end
			5'd19: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_dfii_pi1_wrdata3_w;
			end
			5'd20: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_dfii_pi1_wrdata2_w;
			end
			5'd21: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_dfii_pi1_wrdata1_w;
			end
			5'd22: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_dfii_pi1_wrdata0_w;
			end
			5'd23: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_dfii_pi1_rddata3_w;
			end
			5'd24: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_dfii_pi1_rddata2_w;
			end
			5'd25: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_dfii_pi1_rddata1_w;
			end
			5'd26: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_dfii_pi1_rddata0_w;
			end
			5'd27: begin
				basesoc_interface1_bank_bus_dat_r <= sdram_bandwidth_update_w;
			end
			5'd28: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_controller_bandwidth_nreads2_w;
			end
			5'd29: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_controller_bandwidth_nreads1_w;
			end
			5'd30: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_controller_bandwidth_nreads0_w;
			end
			5'd31: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_controller_bandwidth_nwrites2_w;
			end
			6'd32: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_controller_bandwidth_nwrites1_w;
			end
			6'd33: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_controller_bandwidth_nwrites0_w;
			end
			6'd34: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_controller_bandwidth_data_width_w;
			end
		endcase
	end
	if (basesoc_csrbank1_dfii_control0_re) begin
		sdram_storage_full[3:0] <= basesoc_csrbank1_dfii_control0_r;
	end
	sdram_re <= basesoc_csrbank1_dfii_control0_re;
	if (basesoc_csrbank1_dfii_pi0_command0_re) begin
		sdram_phaseinjector0_command_storage_full[5:0] <= basesoc_csrbank1_dfii_pi0_command0_r;
	end
	sdram_phaseinjector0_command_re <= basesoc_csrbank1_dfii_pi0_command0_re;
	if (basesoc_csrbank1_dfii_pi0_address1_re) begin
		sdram_phaseinjector0_address_storage_full[12:8] <= basesoc_csrbank1_dfii_pi0_address1_r;
	end
	if (basesoc_csrbank1_dfii_pi0_address0_re) begin
		sdram_phaseinjector0_address_storage_full[7:0] <= basesoc_csrbank1_dfii_pi0_address0_r;
	end
	sdram_phaseinjector0_address_re <= basesoc_csrbank1_dfii_pi0_address0_re;
	if (basesoc_csrbank1_dfii_pi0_baddress0_re) begin
		sdram_phaseinjector0_baddress_storage_full[1:0] <= basesoc_csrbank1_dfii_pi0_baddress0_r;
	end
	sdram_phaseinjector0_baddress_re <= basesoc_csrbank1_dfii_pi0_baddress0_re;
	if (basesoc_csrbank1_dfii_pi0_wrdata3_re) begin
		sdram_phaseinjector0_wrdata_storage_full[31:24] <= basesoc_csrbank1_dfii_pi0_wrdata3_r;
	end
	if (basesoc_csrbank1_dfii_pi0_wrdata2_re) begin
		sdram_phaseinjector0_wrdata_storage_full[23:16] <= basesoc_csrbank1_dfii_pi0_wrdata2_r;
	end
	if (basesoc_csrbank1_dfii_pi0_wrdata1_re) begin
		sdram_phaseinjector0_wrdata_storage_full[15:8] <= basesoc_csrbank1_dfii_pi0_wrdata1_r;
	end
	if (basesoc_csrbank1_dfii_pi0_wrdata0_re) begin
		sdram_phaseinjector0_wrdata_storage_full[7:0] <= basesoc_csrbank1_dfii_pi0_wrdata0_r;
	end
	sdram_phaseinjector0_wrdata_re <= basesoc_csrbank1_dfii_pi0_wrdata0_re;
	if (basesoc_csrbank1_dfii_pi1_command0_re) begin
		sdram_phaseinjector1_command_storage_full[5:0] <= basesoc_csrbank1_dfii_pi1_command0_r;
	end
	sdram_phaseinjector1_command_re <= basesoc_csrbank1_dfii_pi1_command0_re;
	if (basesoc_csrbank1_dfii_pi1_address1_re) begin
		sdram_phaseinjector1_address_storage_full[12:8] <= basesoc_csrbank1_dfii_pi1_address1_r;
	end
	if (basesoc_csrbank1_dfii_pi1_address0_re) begin
		sdram_phaseinjector1_address_storage_full[7:0] <= basesoc_csrbank1_dfii_pi1_address0_r;
	end
	sdram_phaseinjector1_address_re <= basesoc_csrbank1_dfii_pi1_address0_re;
	if (basesoc_csrbank1_dfii_pi1_baddress0_re) begin
		sdram_phaseinjector1_baddress_storage_full[1:0] <= basesoc_csrbank1_dfii_pi1_baddress0_r;
	end
	sdram_phaseinjector1_baddress_re <= basesoc_csrbank1_dfii_pi1_baddress0_re;
	if (basesoc_csrbank1_dfii_pi1_wrdata3_re) begin
		sdram_phaseinjector1_wrdata_storage_full[31:24] <= basesoc_csrbank1_dfii_pi1_wrdata3_r;
	end
	if (basesoc_csrbank1_dfii_pi1_wrdata2_re) begin
		sdram_phaseinjector1_wrdata_storage_full[23:16] <= basesoc_csrbank1_dfii_pi1_wrdata2_r;
	end
	if (basesoc_csrbank1_dfii_pi1_wrdata1_re) begin
		sdram_phaseinjector1_wrdata_storage_full[15:8] <= basesoc_csrbank1_dfii_pi1_wrdata1_r;
	end
	if (basesoc_csrbank1_dfii_pi1_wrdata0_re) begin
		sdram_phaseinjector1_wrdata_storage_full[7:0] <= basesoc_csrbank1_dfii_pi1_wrdata0_r;
	end
	sdram_phaseinjector1_wrdata_re <= basesoc_csrbank1_dfii_pi1_wrdata0_re;
	basesoc_interface2_bank_bus_dat_r <= 1'd0;
	if (basesoc_csrbank2_sel) begin
		case (basesoc_interface2_bank_bus_adr[4:0])
			1'd0: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_load3_w;
			end
			1'd1: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_load2_w;
			end
			2'd2: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_load1_w;
			end
			2'd3: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_load0_w;
			end
			3'd4: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_reload3_w;
			end
			3'd5: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_reload2_w;
			end
			3'd6: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_reload1_w;
			end
			3'd7: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_reload0_w;
			end
			4'd8: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_en0_w;
			end
			4'd9: begin
				basesoc_interface2_bank_bus_dat_r <= timer0_update_value_w;
			end
			4'd10: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_value3_w;
			end
			4'd11: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_value2_w;
			end
			4'd12: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_value1_w;
			end
			4'd13: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_value0_w;
			end
			4'd14: begin
				basesoc_interface2_bank_bus_dat_r <= timer0_eventmanager_status_w;
			end
			4'd15: begin
				basesoc_interface2_bank_bus_dat_r <= timer0_eventmanager_pending_w;
			end
			5'd16: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_ev_enable0_w;
			end
		endcase
	end
	if (basesoc_csrbank2_load3_re) begin
		timer0_load_storage_full[31:24] <= basesoc_csrbank2_load3_r;
	end
	if (basesoc_csrbank2_load2_re) begin
		timer0_load_storage_full[23:16] <= basesoc_csrbank2_load2_r;
	end
	if (basesoc_csrbank2_load1_re) begin
		timer0_load_storage_full[15:8] <= basesoc_csrbank2_load1_r;
	end
	if (basesoc_csrbank2_load0_re) begin
		timer0_load_storage_full[7:0] <= basesoc_csrbank2_load0_r;
	end
	timer0_load_re <= basesoc_csrbank2_load0_re;
	if (basesoc_csrbank2_reload3_re) begin
		timer0_reload_storage_full[31:24] <= basesoc_csrbank2_reload3_r;
	end
	if (basesoc_csrbank2_reload2_re) begin
		timer0_reload_storage_full[23:16] <= basesoc_csrbank2_reload2_r;
	end
	if (basesoc_csrbank2_reload1_re) begin
		timer0_reload_storage_full[15:8] <= basesoc_csrbank2_reload1_r;
	end
	if (basesoc_csrbank2_reload0_re) begin
		timer0_reload_storage_full[7:0] <= basesoc_csrbank2_reload0_r;
	end
	timer0_reload_re <= basesoc_csrbank2_reload0_re;
	if (basesoc_csrbank2_en0_re) begin
		timer0_en_storage_full <= basesoc_csrbank2_en0_r;
	end
	timer0_en_re <= basesoc_csrbank2_en0_re;
	if (basesoc_csrbank2_ev_enable0_re) begin
		timer0_eventmanager_storage_full <= basesoc_csrbank2_ev_enable0_r;
	end
	timer0_eventmanager_re <= basesoc_csrbank2_ev_enable0_re;
	basesoc_interface3_bank_bus_dat_r <= 1'd0;
	if (basesoc_csrbank3_sel) begin
		case (basesoc_interface3_bank_bus_adr[2:0])
			1'd0: begin
				basesoc_interface3_bank_bus_dat_r <= uart_rxtx_w;
			end
			1'd1: begin
				basesoc_interface3_bank_bus_dat_r <= basesoc_csrbank3_txfull_w;
			end
			2'd2: begin
				basesoc_interface3_bank_bus_dat_r <= basesoc_csrbank3_rxempty_w;
			end
			2'd3: begin
				basesoc_interface3_bank_bus_dat_r <= uart_eventmanager_status_w;
			end
			3'd4: begin
				basesoc_interface3_bank_bus_dat_r <= uart_eventmanager_pending_w;
			end
			3'd5: begin
				basesoc_interface3_bank_bus_dat_r <= basesoc_csrbank3_ev_enable0_w;
			end
		endcase
	end
	if (basesoc_csrbank3_ev_enable0_re) begin
		uart_eventmanager_storage_full[1:0] <= basesoc_csrbank3_ev_enable0_r;
	end
	uart_eventmanager_re <= basesoc_csrbank3_ev_enable0_re;
	basesoc_interface4_bank_bus_dat_r <= 1'd0;
	if (basesoc_csrbank4_sel) begin
		case (basesoc_interface4_bank_bus_adr[1:0])
			1'd0: begin
				basesoc_interface4_bank_bus_dat_r <= basesoc_csrbank4_tuning_word3_w;
			end
			1'd1: begin
				basesoc_interface4_bank_bus_dat_r <= basesoc_csrbank4_tuning_word2_w;
			end
			2'd2: begin
				basesoc_interface4_bank_bus_dat_r <= basesoc_csrbank4_tuning_word1_w;
			end
			2'd3: begin
				basesoc_interface4_bank_bus_dat_r <= basesoc_csrbank4_tuning_word0_w;
			end
		endcase
	end
	if (basesoc_csrbank4_tuning_word3_re) begin
		uart_phy_storage_full[31:24] <= basesoc_csrbank4_tuning_word3_r;
	end
	if (basesoc_csrbank4_tuning_word2_re) begin
		uart_phy_storage_full[23:16] <= basesoc_csrbank4_tuning_word2_r;
	end
	if (basesoc_csrbank4_tuning_word1_re) begin
		uart_phy_storage_full[15:8] <= basesoc_csrbank4_tuning_word1_r;
	end
	if (basesoc_csrbank4_tuning_word0_re) begin
		uart_phy_storage_full[7:0] <= basesoc_csrbank4_tuning_word0_r;
	end
	uart_phy_re <= basesoc_csrbank4_tuning_word0_re;
	if (sys_rst) begin
		ctrl_storage_full <= 32'd305419896;
		ctrl_re <= 1'd0;
		ctrl_bus_errors <= 32'd0;
		rom_bus_ack <= 1'd0;
		sram_bus_ack <= 1'd0;
		interface_adr <= 14'd0;
		interface_we <= 1'd0;
		interface_dat_w <= 8'd0;
		bus_wishbone_dat_r <= 32'd0;
		bus_wishbone_ack <= 1'd0;
		counter <= 2'd0;
		serial_tx <= 1'd1;
		uart_phy_storage_full <= 32'd15832967;
		uart_phy_re <= 1'd0;
		uart_phy_sink_ready <= 1'd0;
		uart_phy_uart_clk_txen <= 1'd0;
		uart_phy_phase_accumulator_tx <= 32'd0;
		uart_phy_tx_reg <= 8'd0;
		uart_phy_tx_bitcount <= 4'd0;
		uart_phy_tx_busy <= 1'd0;
		uart_phy_source_valid <= 1'd0;
		uart_phy_source_payload_data <= 8'd0;
		uart_phy_uart_clk_rxen <= 1'd0;
		uart_phy_phase_accumulator_rx <= 32'd0;
		uart_phy_rx_r <= 1'd0;
		uart_phy_rx_reg <= 8'd0;
		uart_phy_rx_bitcount <= 4'd0;
		uart_phy_rx_busy <= 1'd0;
		uart_tx_pending <= 1'd0;
		uart_tx_old_trigger <= 1'd0;
		uart_rx_pending <= 1'd0;
		uart_rx_old_trigger <= 1'd0;
		uart_eventmanager_storage_full <= 2'd0;
		uart_eventmanager_re <= 1'd0;
		uart_tx_fifo_readable <= 1'd0;
		uart_tx_fifo_level0 <= 5'd0;
		uart_tx_fifo_produce <= 4'd0;
		uart_tx_fifo_consume <= 4'd0;
		uart_rx_fifo_readable <= 1'd0;
		uart_rx_fifo_level0 <= 5'd0;
		uart_rx_fifo_produce <= 4'd0;
		uart_rx_fifo_consume <= 4'd0;
		timer0_load_storage_full <= 32'd0;
		timer0_load_re <= 1'd0;
		timer0_reload_storage_full <= 32'd0;
		timer0_reload_re <= 1'd0;
		timer0_en_storage_full <= 1'd0;
		timer0_en_re <= 1'd0;
		timer0_value_status <= 32'd0;
		timer0_zero_pending <= 1'd0;
		timer0_zero_old_trigger <= 1'd0;
		timer0_eventmanager_storage_full <= 1'd0;
		timer0_eventmanager_re <= 1'd0;
		timer0_value <= 32'd0;
		ddrphy_phase_sys <= 1'd0;
		ddrphy_bitslip_cnt <= 4'd0;
		ddrphy_bitslip_inc <= 1'd0;
		ddrphy_record2_wrdata <= 32'd0;
		ddrphy_record2_wrdata_mask <= 4'd0;
		ddrphy_record3_wrdata <= 32'd0;
		ddrphy_record3_wrdata_mask <= 4'd0;
		ddrphy_drive_dq_n1 <= 1'd0;
		ddrphy_wrdata_en_d <= 1'd0;
		ddrphy_rddata_sr <= 5'd0;
		sdram_storage_full <= 4'd0;
		sdram_re <= 1'd0;
		sdram_phaseinjector0_command_storage_full <= 6'd0;
		sdram_phaseinjector0_command_re <= 1'd0;
		sdram_phaseinjector0_address_storage_full <= 13'd0;
		sdram_phaseinjector0_address_re <= 1'd0;
		sdram_phaseinjector0_baddress_storage_full <= 2'd0;
		sdram_phaseinjector0_baddress_re <= 1'd0;
		sdram_phaseinjector0_wrdata_storage_full <= 32'd0;
		sdram_phaseinjector0_wrdata_re <= 1'd0;
		sdram_phaseinjector0_status <= 32'd0;
		sdram_phaseinjector1_command_storage_full <= 6'd0;
		sdram_phaseinjector1_command_re <= 1'd0;
		sdram_phaseinjector1_address_storage_full <= 13'd0;
		sdram_phaseinjector1_address_re <= 1'd0;
		sdram_phaseinjector1_baddress_storage_full <= 2'd0;
		sdram_phaseinjector1_baddress_re <= 1'd0;
		sdram_phaseinjector1_wrdata_storage_full <= 32'd0;
		sdram_phaseinjector1_wrdata_re <= 1'd0;
		sdram_phaseinjector1_status <= 32'd0;
		sdram_dfi_p0_address <= 13'd0;
		sdram_dfi_p0_bank <= 2'd0;
		sdram_dfi_p0_cas_n <= 1'd1;
		sdram_dfi_p0_cs_n <= 1'd1;
		sdram_dfi_p0_ras_n <= 1'd1;
		sdram_dfi_p0_we_n <= 1'd1;
		sdram_dfi_p0_wrdata_en <= 1'd0;
		sdram_dfi_p0_rddata_en <= 1'd0;
		sdram_dfi_p1_address <= 13'd0;
		sdram_dfi_p1_bank <= 2'd0;
		sdram_dfi_p1_cas_n <= 1'd1;
		sdram_dfi_p1_cs_n <= 1'd1;
		sdram_dfi_p1_ras_n <= 1'd1;
		sdram_dfi_p1_we_n <= 1'd1;
		sdram_dfi_p1_wrdata_en <= 1'd0;
		sdram_dfi_p1_rddata_en <= 1'd0;
		sdram_cmd_payload_a <= 13'd0;
		sdram_cmd_payload_ba <= 2'd0;
		sdram_cmd_payload_cas <= 1'd0;
		sdram_cmd_payload_ras <= 1'd0;
		sdram_cmd_payload_we <= 1'd0;
		sdram_timer_count <= 8'd245;
		sdram_generator_done <= 1'd0;
		sdram_generator_counter <= 3'd0;
		sdram_bankmachine0_cmd_buffer_lookahead_level <= 4'd0;
		sdram_bankmachine0_cmd_buffer_lookahead_produce <= 3'd0;
		sdram_bankmachine0_cmd_buffer_lookahead_consume <= 3'd0;
		sdram_bankmachine0_cmd_buffer_source_payload_we <= 1'd0;
		sdram_bankmachine0_cmd_buffer_source_payload_addr <= 21'd0;
		sdram_bankmachine0_cmd_buffer_valid_n <= 1'd0;
		sdram_bankmachine0_cmd_buffer_first_n <= 1'd0;
		sdram_bankmachine0_cmd_buffer_last_n <= 1'd0;
		sdram_bankmachine0_row <= 13'd0;
		sdram_bankmachine0_row_opened <= 1'd0;
		sdram_bankmachine0_twtpcon_ready <= 1'd1;
		sdram_bankmachine0_twtpcon_count <= 2'd0;
		sdram_bankmachine1_cmd_buffer_lookahead_level <= 4'd0;
		sdram_bankmachine1_cmd_buffer_lookahead_produce <= 3'd0;
		sdram_bankmachine1_cmd_buffer_lookahead_consume <= 3'd0;
		sdram_bankmachine1_cmd_buffer_source_payload_we <= 1'd0;
		sdram_bankmachine1_cmd_buffer_source_payload_addr <= 21'd0;
		sdram_bankmachine1_cmd_buffer_valid_n <= 1'd0;
		sdram_bankmachine1_cmd_buffer_first_n <= 1'd0;
		sdram_bankmachine1_cmd_buffer_last_n <= 1'd0;
		sdram_bankmachine1_row <= 13'd0;
		sdram_bankmachine1_row_opened <= 1'd0;
		sdram_bankmachine1_twtpcon_ready <= 1'd1;
		sdram_bankmachine1_twtpcon_count <= 2'd0;
		sdram_bankmachine2_cmd_buffer_lookahead_level <= 4'd0;
		sdram_bankmachine2_cmd_buffer_lookahead_produce <= 3'd0;
		sdram_bankmachine2_cmd_buffer_lookahead_consume <= 3'd0;
		sdram_bankmachine2_cmd_buffer_source_payload_we <= 1'd0;
		sdram_bankmachine2_cmd_buffer_source_payload_addr <= 21'd0;
		sdram_bankmachine2_cmd_buffer_valid_n <= 1'd0;
		sdram_bankmachine2_cmd_buffer_first_n <= 1'd0;
		sdram_bankmachine2_cmd_buffer_last_n <= 1'd0;
		sdram_bankmachine2_row <= 13'd0;
		sdram_bankmachine2_row_opened <= 1'd0;
		sdram_bankmachine2_twtpcon_ready <= 1'd1;
		sdram_bankmachine2_twtpcon_count <= 2'd0;
		sdram_bankmachine3_cmd_buffer_lookahead_level <= 4'd0;
		sdram_bankmachine3_cmd_buffer_lookahead_produce <= 3'd0;
		sdram_bankmachine3_cmd_buffer_lookahead_consume <= 3'd0;
		sdram_bankmachine3_cmd_buffer_source_payload_we <= 1'd0;
		sdram_bankmachine3_cmd_buffer_source_payload_addr <= 21'd0;
		sdram_bankmachine3_cmd_buffer_valid_n <= 1'd0;
		sdram_bankmachine3_cmd_buffer_first_n <= 1'd0;
		sdram_bankmachine3_cmd_buffer_last_n <= 1'd0;
		sdram_bankmachine3_row <= 13'd0;
		sdram_bankmachine3_row_opened <= 1'd0;
		sdram_bankmachine3_twtpcon_ready <= 1'd1;
		sdram_bankmachine3_twtpcon_count <= 2'd0;
		sdram_choose_cmd_grant <= 2'd0;
		sdram_choose_req_grant <= 2'd0;
		sdram_tccdcon_ready <= 1'd1;
		sdram_tccdcon_count <= 1'd0;
		sdram_twtrcon_ready <= 1'd1;
		sdram_twtrcon_count <= 2'd0;
		sdram_time0 <= 5'd0;
		sdram_time1 <= 4'd0;
		sdram_bandwidth_nreads_status <= 24'd0;
		sdram_bandwidth_nwrites_status <= 24'd0;
		sdram_bandwidth_cmd_valid <= 1'd0;
		sdram_bandwidth_cmd_ready <= 1'd0;
		sdram_bandwidth_cmd_is_read <= 1'd0;
		sdram_bandwidth_cmd_is_write <= 1'd0;
		sdram_bandwidth_counter <= 24'd0;
		sdram_bandwidth_period <= 1'd0;
		sdram_bandwidth_nreads <= 24'd0;
		sdram_bandwidth_nwrites <= 24'd0;
		sdram_bandwidth_nreads_r <= 24'd0;
		sdram_bandwidth_nwrites_r <= 24'd0;
		adr_offset_r <= 1'd0;
		refresher_state <= 2'd0;
		bankmachine0_state <= 3'd0;
		bankmachine1_state <= 3'd0;
		bankmachine2_state <= 3'd0;
		bankmachine3_state <= 3'd0;
		multiplexer_state <= 3'd0;
		rbank <= 2'd0;
		wbank <= 2'd0;
		new_master_wdata_ready <= 1'd0;
		new_master_rdata_valid0 <= 1'd0;
		new_master_rdata_valid1 <= 1'd0;
		new_master_rdata_valid2 <= 1'd0;
		new_master_rdata_valid3 <= 1'd0;
		new_master_rdata_valid4 <= 1'd0;
		new_master_rdata_valid5 <= 1'd0;
		cache_state <= 3'd0;
		litedramwishbone2native_state <= 2'd0;
		basesoc_grant <= 1'd0;
		basesoc_slave_sel_r <= 4'd0;
		basesoc_count <= 20'd1000000;
		basesoc_interface0_bank_bus_dat_r <= 8'd0;
		basesoc_sel_r <= 1'd0;
		basesoc_interface1_bank_bus_dat_r <= 8'd0;
		basesoc_interface2_bank_bus_dat_r <= 8'd0;
		basesoc_interface3_bank_bus_dat_r <= 8'd0;
		basesoc_interface4_bank_bus_dat_r <= 8'd0;
	end
	regs0 <= serial_rx;
	regs1 <= regs0;
end

lm32_cpu #(
	.eba_reset(32'h00000000)
) lm32_cpu (
	.D_ACK_I(lm32_dbus_ack),
	.D_DAT_I(lm32_dbus_dat_r),
	.D_ERR_I(lm32_dbus_err),
	.D_RTY_I(1'd0),
	.I_ACK_I(lm32_ibus_ack),
	.I_DAT_I(lm32_ibus_dat_r),
	.I_ERR_I(lm32_ibus_err),
	.I_RTY_I(1'd0),
	.clk_i(sys_clk),
	.interrupt(lm32_interrupt),
	.rst_i((sys_rst | lm32_reset)),
	.D_ADR_O(lm32_d_adr_o),
	.D_BTE_O(lm32_dbus_bte),
	.D_CTI_O(lm32_dbus_cti),
	.D_CYC_O(lm32_dbus_cyc),
	.D_DAT_O(lm32_dbus_dat_w),
	.D_SEL_O(lm32_dbus_sel),
	.D_STB_O(lm32_dbus_stb),
	.D_WE_O(lm32_dbus_we),
	.I_ADR_O(lm32_i_adr_o),
	.I_BTE_O(lm32_ibus_bte),
	.I_CTI_O(lm32_ibus_cti),
	.I_CYC_O(lm32_ibus_cyc),
	.I_DAT_O(lm32_ibus_dat_w),
	.I_SEL_O(lm32_ibus_sel),
	.I_STB_O(lm32_ibus_stb),
	.I_WE_O(lm32_ibus_we)
);

reg [31:0] mem[0:8191];
reg [12:0] memadr;
always @(posedge sys_clk) begin
	memadr <= rom_adr;
end

assign rom_dat_r = mem[memadr];

initial begin
	$readmemh("mem.init", mem);
end

reg [31:0] mem_1[0:4095];
reg [11:0] memadr_1;
always @(posedge sys_clk) begin
	if (sram_we[0])
		mem_1[sram_adr][7:0] <= sram_dat_w[7:0];
	if (sram_we[1])
		mem_1[sram_adr][15:8] <= sram_dat_w[15:8];
	if (sram_we[2])
		mem_1[sram_adr][23:16] <= sram_dat_w[23:16];
	if (sram_we[3])
		mem_1[sram_adr][31:24] <= sram_dat_w[31:24];
	memadr_1 <= sram_adr;
end

assign sram_dat_r = mem_1[memadr_1];

reg [9:0] storage[0:15];
reg [9:0] memdat;
reg [9:0] memdat_1;
always @(posedge sys_clk) begin
	if (uart_tx_fifo_wrport_we)
		storage[uart_tx_fifo_wrport_adr] <= uart_tx_fifo_wrport_dat_w;
	memdat <= storage[uart_tx_fifo_wrport_adr];
end

always @(posedge sys_clk) begin
	if (uart_tx_fifo_rdport_re)
		memdat_1 <= storage[uart_tx_fifo_rdport_adr];
end

assign uart_tx_fifo_wrport_dat_r = memdat;
assign uart_tx_fifo_rdport_dat_r = memdat_1;

reg [9:0] storage_1[0:15];
reg [9:0] memdat_2;
reg [9:0] memdat_3;
always @(posedge sys_clk) begin
	if (uart_rx_fifo_wrport_we)
		storage_1[uart_rx_fifo_wrport_adr] <= uart_rx_fifo_wrport_dat_w;
	memdat_2 <= storage_1[uart_rx_fifo_wrport_adr];
end

always @(posedge sys_clk) begin
	if (uart_rx_fifo_rdport_re)
		memdat_3 <= storage_1[uart_rx_fifo_rdport_adr];
end

assign uart_rx_fifo_wrport_dat_r = memdat_2;
assign uart_rx_fifo_rdport_dat_r = memdat_3;

reg [7:0] mem_2[0:7];
reg [2:0] memadr_2;
always @(posedge sys_clk) begin
	memadr_2 <= basesoc_adr;
end

assign basesoc_dat_r = mem_2[memadr_2];

initial begin
	$readmemh("mem_2.init", mem_2);
end

IBUFG IBUFG(
	.I(clk100),
	.O(crg_clk100a)
);

BUFIO2 #(
	.DIVIDE(1'd1),
	.DIVIDE_BYPASS("TRUE"),
	.I_INVERT("FALSE")
) BUFIO2 (
	.I(crg_clk100a),
	.DIVCLK(crg_clk100b)
);

PLL_ADV #(
	.BANDWIDTH("OPTIMIZED"),
	.CLKFBOUT_MULT(4'd10),
	.CLKFBOUT_PHASE(0.0),
	.CLKIN1_PERIOD(10.0),
	.CLKIN2_PERIOD(0.0),
	.CLKOUT0_DIVIDE(4'd8),
	.CLKOUT0_DUTY_CYCLE(0.5),
	.CLKOUT0_PHASE(0.0),
	.CLKOUT1_DIVIDE(4'd8),
	.CLKOUT1_DUTY_CYCLE(0.5),
	.CLKOUT1_PHASE(0.0),
	.CLKOUT2_DIVIDE(5'd16),
	.CLKOUT2_DUTY_CYCLE(0.5),
	.CLKOUT2_PHASE(270.0),
	.CLKOUT3_DIVIDE(5'd16),
	.CLKOUT3_DUTY_CYCLE(0.5),
	.CLKOUT3_PHASE(270.0),
	.CLKOUT4_DIVIDE(6'd32),
	.CLKOUT4_DUTY_CYCLE(0.5),
	.CLKOUT4_PHASE(0.0),
	.CLKOUT5_DIVIDE(6'd32),
	.CLKOUT5_DUTY_CYCLE(0.5),
	.CLKOUT5_PHASE(0.0),
	.CLK_FEEDBACK("CLKFBOUT"),
	.COMPENSATION("INTERNAL"),
	.DIVCLK_DIVIDE(1'd1),
	.REF_JITTER(0.01),
	.SIM_DEVICE("SPARTAN6")
) crg_pll_adv (
	.CLKFBIN(crg_pll_fb),
	.CLKIN1(crg_clk100b),
	.CLKIN2(1'd0),
	.CLKINSEL(1'd1),
	.DADDR(1'd0),
	.DCLK(1'd0),
	.DEN(1'd0),
	.DI(1'd0),
	.DWE(1'd0),
	.REL(1'd0),
	.RST(1'd0),
	.CLKFBOUT(crg_pll_fb),
	.CLKOUT0(crg_unbuf_sdram_full),
	.CLKOUT1(crg_unbuf_unused_a),
	.CLKOUT2(crg_unbuf_sdram_half_a),
	.CLKOUT3(crg_unbuf_sdram_half_b),
	.CLKOUT4(crg_unbuf_unused_b),
	.CLKOUT5(crg_unbuf_sys),
	.LOCKED(crg_pll_lckd)
);

BUFG BUFG(
	.I(crg_unbuf_sys),
	.O(sys_clk)
);

BUFPLL #(
	.DIVIDE(3'd4)
) BUFPLL (
	.GCLK(sys_clk),
	.LOCKED(crg_pll_lckd),
	.PLLIN(crg_unbuf_sdram_full),
	.IOCLK(sdram_full_wr_clk),
	.SERDESSTROBE(crg_clk4x_wr_strb)
);

BUFG BUFG_1(
	.I(crg_unbuf_sdram_half_a),
	.O(sdram_half_clk)
);

BUFG BUFG_2(
	.I(crg_unbuf_sdram_half_b),
	.O(crg_clk_sdram_half_shifted)
);

ODDR2 #(
	.DDR_ALIGNMENT("NONE"),
	.INIT(1'd0),
	.SRTYPE("SYNC")
) ODDR2 (
	.C0(crg_clk_sdram_half_shifted),
	.C1((~crg_clk_sdram_half_shifted)),
	.CE(1'd1),
	.D0(1'd1),
	.D1(1'd0),
	.R(1'd0),
	.S(1'd0),
	.Q(ddram_clock_p)
);

ODDR2 #(
	.DDR_ALIGNMENT("NONE"),
	.INIT(1'd0),
	.SRTYPE("SYNC")
) ODDR2_1 (
	.C0(crg_clk_sdram_half_shifted),
	.C1((~crg_clk_sdram_half_shifted)),
	.CE(1'd1),
	.D0(1'd0),
	.D1(1'd1),
	.R(1'd0),
	.S(1'd0),
	.Q(ddram_clock_n)
);

ODDR2 #(
	.DDR_ALIGNMENT("C1"),
	.INIT(1'd0),
	.SRTYPE("ASYNC")
) ODDR2_2 (
	.C0(sdram_half_clk),
	.C1(ddrphy_sdram_half_clk_n),
	.CE(1'd1),
	.D0(1'd0),
	.D1(1'd1),
	.R(1'd0),
	.S(1'd0),
	.Q(ddrphy_dqs_o[0])
);

ODDR2 #(
	.DDR_ALIGNMENT("C1"),
	.INIT(1'd0),
	.SRTYPE("ASYNC")
) ODDR2_3 (
	.C0(sdram_half_clk),
	.C1(ddrphy_sdram_half_clk_n),
	.CE(1'd1),
	.D0(ddrphy_dqs_t_d0),
	.D1(ddrphy_dqs_t_d1),
	.R(1'd0),
	.S(1'd0),
	.Q(ddrphy_dqs_t[0])
);

OBUFT OBUFT(
	.I(ddrphy_dqs_o[0]),
	.T(ddrphy_dqs_t[0]),
	.O(ddram_dqs[0])
);

ODDR2 #(
	.DDR_ALIGNMENT("C1"),
	.INIT(1'd0),
	.SRTYPE("ASYNC")
) ODDR2_4 (
	.C0(sdram_half_clk),
	.C1(ddrphy_sdram_half_clk_n),
	.CE(1'd1),
	.D0(1'd0),
	.D1(1'd1),
	.R(1'd0),
	.S(1'd0),
	.Q(ddrphy_dqs_o[1])
);

ODDR2 #(
	.DDR_ALIGNMENT("C1"),
	.INIT(1'd0),
	.SRTYPE("ASYNC")
) ODDR2_5 (
	.C0(sdram_half_clk),
	.C1(ddrphy_sdram_half_clk_n),
	.CE(1'd1),
	.D0(ddrphy_dqs_t_d0),
	.D1(ddrphy_dqs_t_d1),
	.R(1'd0),
	.S(1'd0),
	.Q(ddrphy_dqs_t[1])
);

OBUFT OBUFT_1(
	.I(ddrphy_dqs_o[1]),
	.T(ddrphy_dqs_t[1]),
	.O(ddram_dqs[1])
);

OSERDES2 #(
	.DATA_RATE_OQ("SDR"),
	.DATA_RATE_OT("SDR"),
	.DATA_WIDTH(3'd4),
	.OUTPUT_MODE("SINGLE_ENDED"),
	.SERDES_MODE("NONE")
) OSERDES2 (
	.CLK0(sdram_full_wr_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D1(slice_proxy0[0]),
	.D2(slice_proxy1[0]),
	.D3(slice_proxy2[0]),
	.D4(slice_proxy3[0]),
	.IOCE(ddrphy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.T1(ddrphy_drive_dq_n1),
	.T2(ddrphy_drive_dq_n1),
	.T3(ddrphy_drive_dq_n1),
	.T4(ddrphy_drive_dq_n0),
	.TCE(1'd1),
	.TRAIN(1'd0),
	.OQ(ddrphy_dq_o[0]),
	.TQ(ddrphy_dq_t[0])
);

ISERDES2 #(
	.BITSLIP_ENABLE("TRUE"),
	.DATA_RATE("SDR"),
	.DATA_WIDTH(3'd4),
	.INTERFACE_TYPE("RETIMED"),
	.SERDES_MODE("NONE")
) ISERDES2 (
	.BITSLIP(ddrphy_bitslip_inc),
	.CE0(1'd1),
	.CLK0(sdram_full_rd_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D(ddrphy_dq_i[0]),
	.IOCE(ddrphy_clk4x_rd_strb),
	.RST(sys_rst),
	.Q1(ddrphy_record0_rddata[16]),
	.Q2(ddrphy_record0_rddata[0]),
	.Q3(ddrphy_record1_rddata[16]),
	.Q4(ddrphy_record1_rddata[0])
);

IOBUF IOBUF(
	.I(ddrphy_dq_o[0]),
	.T(ddrphy_dq_t[0]),
	.IO(ddram_dq[0]),
	.O(ddrphy_dq_i[0])
);

OSERDES2 #(
	.DATA_RATE_OQ("SDR"),
	.DATA_RATE_OT("SDR"),
	.DATA_WIDTH(3'd4),
	.OUTPUT_MODE("SINGLE_ENDED"),
	.SERDES_MODE("NONE")
) OSERDES2_1 (
	.CLK0(sdram_full_wr_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D1(slice_proxy4[1]),
	.D2(slice_proxy5[1]),
	.D3(slice_proxy6[1]),
	.D4(slice_proxy7[1]),
	.IOCE(ddrphy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.T1(ddrphy_drive_dq_n1),
	.T2(ddrphy_drive_dq_n1),
	.T3(ddrphy_drive_dq_n1),
	.T4(ddrphy_drive_dq_n0),
	.TCE(1'd1),
	.TRAIN(1'd0),
	.OQ(ddrphy_dq_o[1]),
	.TQ(ddrphy_dq_t[1])
);

ISERDES2 #(
	.BITSLIP_ENABLE("TRUE"),
	.DATA_RATE("SDR"),
	.DATA_WIDTH(3'd4),
	.INTERFACE_TYPE("RETIMED"),
	.SERDES_MODE("NONE")
) ISERDES2_1 (
	.BITSLIP(ddrphy_bitslip_inc),
	.CE0(1'd1),
	.CLK0(sdram_full_rd_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D(ddrphy_dq_i[1]),
	.IOCE(ddrphy_clk4x_rd_strb),
	.RST(sys_rst),
	.Q1(ddrphy_record0_rddata[17]),
	.Q2(ddrphy_record0_rddata[1]),
	.Q3(ddrphy_record1_rddata[17]),
	.Q4(ddrphy_record1_rddata[1])
);

IOBUF IOBUF_1(
	.I(ddrphy_dq_o[1]),
	.T(ddrphy_dq_t[1]),
	.IO(ddram_dq[1]),
	.O(ddrphy_dq_i[1])
);

OSERDES2 #(
	.DATA_RATE_OQ("SDR"),
	.DATA_RATE_OT("SDR"),
	.DATA_WIDTH(3'd4),
	.OUTPUT_MODE("SINGLE_ENDED"),
	.SERDES_MODE("NONE")
) OSERDES2_2 (
	.CLK0(sdram_full_wr_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D1(slice_proxy8[2]),
	.D2(slice_proxy9[2]),
	.D3(slice_proxy10[2]),
	.D4(slice_proxy11[2]),
	.IOCE(ddrphy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.T1(ddrphy_drive_dq_n1),
	.T2(ddrphy_drive_dq_n1),
	.T3(ddrphy_drive_dq_n1),
	.T4(ddrphy_drive_dq_n0),
	.TCE(1'd1),
	.TRAIN(1'd0),
	.OQ(ddrphy_dq_o[2]),
	.TQ(ddrphy_dq_t[2])
);

ISERDES2 #(
	.BITSLIP_ENABLE("TRUE"),
	.DATA_RATE("SDR"),
	.DATA_WIDTH(3'd4),
	.INTERFACE_TYPE("RETIMED"),
	.SERDES_MODE("NONE")
) ISERDES2_2 (
	.BITSLIP(ddrphy_bitslip_inc),
	.CE0(1'd1),
	.CLK0(sdram_full_rd_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D(ddrphy_dq_i[2]),
	.IOCE(ddrphy_clk4x_rd_strb),
	.RST(sys_rst),
	.Q1(ddrphy_record0_rddata[18]),
	.Q2(ddrphy_record0_rddata[2]),
	.Q3(ddrphy_record1_rddata[18]),
	.Q4(ddrphy_record1_rddata[2])
);

IOBUF IOBUF_2(
	.I(ddrphy_dq_o[2]),
	.T(ddrphy_dq_t[2]),
	.IO(ddram_dq[2]),
	.O(ddrphy_dq_i[2])
);

OSERDES2 #(
	.DATA_RATE_OQ("SDR"),
	.DATA_RATE_OT("SDR"),
	.DATA_WIDTH(3'd4),
	.OUTPUT_MODE("SINGLE_ENDED"),
	.SERDES_MODE("NONE")
) OSERDES2_3 (
	.CLK0(sdram_full_wr_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D1(slice_proxy12[3]),
	.D2(slice_proxy13[3]),
	.D3(slice_proxy14[3]),
	.D4(slice_proxy15[3]),
	.IOCE(ddrphy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.T1(ddrphy_drive_dq_n1),
	.T2(ddrphy_drive_dq_n1),
	.T3(ddrphy_drive_dq_n1),
	.T4(ddrphy_drive_dq_n0),
	.TCE(1'd1),
	.TRAIN(1'd0),
	.OQ(ddrphy_dq_o[3]),
	.TQ(ddrphy_dq_t[3])
);

ISERDES2 #(
	.BITSLIP_ENABLE("TRUE"),
	.DATA_RATE("SDR"),
	.DATA_WIDTH(3'd4),
	.INTERFACE_TYPE("RETIMED"),
	.SERDES_MODE("NONE")
) ISERDES2_3 (
	.BITSLIP(ddrphy_bitslip_inc),
	.CE0(1'd1),
	.CLK0(sdram_full_rd_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D(ddrphy_dq_i[3]),
	.IOCE(ddrphy_clk4x_rd_strb),
	.RST(sys_rst),
	.Q1(ddrphy_record0_rddata[19]),
	.Q2(ddrphy_record0_rddata[3]),
	.Q3(ddrphy_record1_rddata[19]),
	.Q4(ddrphy_record1_rddata[3])
);

IOBUF IOBUF_3(
	.I(ddrphy_dq_o[3]),
	.T(ddrphy_dq_t[3]),
	.IO(ddram_dq[3]),
	.O(ddrphy_dq_i[3])
);

OSERDES2 #(
	.DATA_RATE_OQ("SDR"),
	.DATA_RATE_OT("SDR"),
	.DATA_WIDTH(3'd4),
	.OUTPUT_MODE("SINGLE_ENDED"),
	.SERDES_MODE("NONE")
) OSERDES2_4 (
	.CLK0(sdram_full_wr_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D1(slice_proxy16[4]),
	.D2(slice_proxy17[4]),
	.D3(slice_proxy18[4]),
	.D4(slice_proxy19[4]),
	.IOCE(ddrphy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.T1(ddrphy_drive_dq_n1),
	.T2(ddrphy_drive_dq_n1),
	.T3(ddrphy_drive_dq_n1),
	.T4(ddrphy_drive_dq_n0),
	.TCE(1'd1),
	.TRAIN(1'd0),
	.OQ(ddrphy_dq_o[4]),
	.TQ(ddrphy_dq_t[4])
);

ISERDES2 #(
	.BITSLIP_ENABLE("TRUE"),
	.DATA_RATE("SDR"),
	.DATA_WIDTH(3'd4),
	.INTERFACE_TYPE("RETIMED"),
	.SERDES_MODE("NONE")
) ISERDES2_4 (
	.BITSLIP(ddrphy_bitslip_inc),
	.CE0(1'd1),
	.CLK0(sdram_full_rd_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D(ddrphy_dq_i[4]),
	.IOCE(ddrphy_clk4x_rd_strb),
	.RST(sys_rst),
	.Q1(ddrphy_record0_rddata[20]),
	.Q2(ddrphy_record0_rddata[4]),
	.Q3(ddrphy_record1_rddata[20]),
	.Q4(ddrphy_record1_rddata[4])
);

IOBUF IOBUF_4(
	.I(ddrphy_dq_o[4]),
	.T(ddrphy_dq_t[4]),
	.IO(ddram_dq[4]),
	.O(ddrphy_dq_i[4])
);

OSERDES2 #(
	.DATA_RATE_OQ("SDR"),
	.DATA_RATE_OT("SDR"),
	.DATA_WIDTH(3'd4),
	.OUTPUT_MODE("SINGLE_ENDED"),
	.SERDES_MODE("NONE")
) OSERDES2_5 (
	.CLK0(sdram_full_wr_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D1(slice_proxy20[5]),
	.D2(slice_proxy21[5]),
	.D3(slice_proxy22[5]),
	.D4(slice_proxy23[5]),
	.IOCE(ddrphy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.T1(ddrphy_drive_dq_n1),
	.T2(ddrphy_drive_dq_n1),
	.T3(ddrphy_drive_dq_n1),
	.T4(ddrphy_drive_dq_n0),
	.TCE(1'd1),
	.TRAIN(1'd0),
	.OQ(ddrphy_dq_o[5]),
	.TQ(ddrphy_dq_t[5])
);

ISERDES2 #(
	.BITSLIP_ENABLE("TRUE"),
	.DATA_RATE("SDR"),
	.DATA_WIDTH(3'd4),
	.INTERFACE_TYPE("RETIMED"),
	.SERDES_MODE("NONE")
) ISERDES2_5 (
	.BITSLIP(ddrphy_bitslip_inc),
	.CE0(1'd1),
	.CLK0(sdram_full_rd_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D(ddrphy_dq_i[5]),
	.IOCE(ddrphy_clk4x_rd_strb),
	.RST(sys_rst),
	.Q1(ddrphy_record0_rddata[21]),
	.Q2(ddrphy_record0_rddata[5]),
	.Q3(ddrphy_record1_rddata[21]),
	.Q4(ddrphy_record1_rddata[5])
);

IOBUF IOBUF_5(
	.I(ddrphy_dq_o[5]),
	.T(ddrphy_dq_t[5]),
	.IO(ddram_dq[5]),
	.O(ddrphy_dq_i[5])
);

OSERDES2 #(
	.DATA_RATE_OQ("SDR"),
	.DATA_RATE_OT("SDR"),
	.DATA_WIDTH(3'd4),
	.OUTPUT_MODE("SINGLE_ENDED"),
	.SERDES_MODE("NONE")
) OSERDES2_6 (
	.CLK0(sdram_full_wr_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D1(slice_proxy24[6]),
	.D2(slice_proxy25[6]),
	.D3(slice_proxy26[6]),
	.D4(slice_proxy27[6]),
	.IOCE(ddrphy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.T1(ddrphy_drive_dq_n1),
	.T2(ddrphy_drive_dq_n1),
	.T3(ddrphy_drive_dq_n1),
	.T4(ddrphy_drive_dq_n0),
	.TCE(1'd1),
	.TRAIN(1'd0),
	.OQ(ddrphy_dq_o[6]),
	.TQ(ddrphy_dq_t[6])
);

ISERDES2 #(
	.BITSLIP_ENABLE("TRUE"),
	.DATA_RATE("SDR"),
	.DATA_WIDTH(3'd4),
	.INTERFACE_TYPE("RETIMED"),
	.SERDES_MODE("NONE")
) ISERDES2_6 (
	.BITSLIP(ddrphy_bitslip_inc),
	.CE0(1'd1),
	.CLK0(sdram_full_rd_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D(ddrphy_dq_i[6]),
	.IOCE(ddrphy_clk4x_rd_strb),
	.RST(sys_rst),
	.Q1(ddrphy_record0_rddata[22]),
	.Q2(ddrphy_record0_rddata[6]),
	.Q3(ddrphy_record1_rddata[22]),
	.Q4(ddrphy_record1_rddata[6])
);

IOBUF IOBUF_6(
	.I(ddrphy_dq_o[6]),
	.T(ddrphy_dq_t[6]),
	.IO(ddram_dq[6]),
	.O(ddrphy_dq_i[6])
);

OSERDES2 #(
	.DATA_RATE_OQ("SDR"),
	.DATA_RATE_OT("SDR"),
	.DATA_WIDTH(3'd4),
	.OUTPUT_MODE("SINGLE_ENDED"),
	.SERDES_MODE("NONE")
) OSERDES2_7 (
	.CLK0(sdram_full_wr_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D1(slice_proxy28[7]),
	.D2(slice_proxy29[7]),
	.D3(slice_proxy30[7]),
	.D4(slice_proxy31[7]),
	.IOCE(ddrphy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.T1(ddrphy_drive_dq_n1),
	.T2(ddrphy_drive_dq_n1),
	.T3(ddrphy_drive_dq_n1),
	.T4(ddrphy_drive_dq_n0),
	.TCE(1'd1),
	.TRAIN(1'd0),
	.OQ(ddrphy_dq_o[7]),
	.TQ(ddrphy_dq_t[7])
);

ISERDES2 #(
	.BITSLIP_ENABLE("TRUE"),
	.DATA_RATE("SDR"),
	.DATA_WIDTH(3'd4),
	.INTERFACE_TYPE("RETIMED"),
	.SERDES_MODE("NONE")
) ISERDES2_7 (
	.BITSLIP(ddrphy_bitslip_inc),
	.CE0(1'd1),
	.CLK0(sdram_full_rd_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D(ddrphy_dq_i[7]),
	.IOCE(ddrphy_clk4x_rd_strb),
	.RST(sys_rst),
	.Q1(ddrphy_record0_rddata[23]),
	.Q2(ddrphy_record0_rddata[7]),
	.Q3(ddrphy_record1_rddata[23]),
	.Q4(ddrphy_record1_rddata[7])
);

IOBUF IOBUF_7(
	.I(ddrphy_dq_o[7]),
	.T(ddrphy_dq_t[7]),
	.IO(ddram_dq[7]),
	.O(ddrphy_dq_i[7])
);

OSERDES2 #(
	.DATA_RATE_OQ("SDR"),
	.DATA_RATE_OT("SDR"),
	.DATA_WIDTH(3'd4),
	.OUTPUT_MODE("SINGLE_ENDED"),
	.SERDES_MODE("NONE")
) OSERDES2_8 (
	.CLK0(sdram_full_wr_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D1(slice_proxy32[8]),
	.D2(slice_proxy33[8]),
	.D3(slice_proxy34[8]),
	.D4(slice_proxy35[8]),
	.IOCE(ddrphy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.T1(ddrphy_drive_dq_n1),
	.T2(ddrphy_drive_dq_n1),
	.T3(ddrphy_drive_dq_n1),
	.T4(ddrphy_drive_dq_n0),
	.TCE(1'd1),
	.TRAIN(1'd0),
	.OQ(ddrphy_dq_o[8]),
	.TQ(ddrphy_dq_t[8])
);

ISERDES2 #(
	.BITSLIP_ENABLE("TRUE"),
	.DATA_RATE("SDR"),
	.DATA_WIDTH(3'd4),
	.INTERFACE_TYPE("RETIMED"),
	.SERDES_MODE("NONE")
) ISERDES2_8 (
	.BITSLIP(ddrphy_bitslip_inc),
	.CE0(1'd1),
	.CLK0(sdram_full_rd_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D(ddrphy_dq_i[8]),
	.IOCE(ddrphy_clk4x_rd_strb),
	.RST(sys_rst),
	.Q1(ddrphy_record0_rddata[24]),
	.Q2(ddrphy_record0_rddata[8]),
	.Q3(ddrphy_record1_rddata[24]),
	.Q4(ddrphy_record1_rddata[8])
);

IOBUF IOBUF_8(
	.I(ddrphy_dq_o[8]),
	.T(ddrphy_dq_t[8]),
	.IO(ddram_dq[8]),
	.O(ddrphy_dq_i[8])
);

OSERDES2 #(
	.DATA_RATE_OQ("SDR"),
	.DATA_RATE_OT("SDR"),
	.DATA_WIDTH(3'd4),
	.OUTPUT_MODE("SINGLE_ENDED"),
	.SERDES_MODE("NONE")
) OSERDES2_9 (
	.CLK0(sdram_full_wr_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D1(slice_proxy36[9]),
	.D2(slice_proxy37[9]),
	.D3(slice_proxy38[9]),
	.D4(slice_proxy39[9]),
	.IOCE(ddrphy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.T1(ddrphy_drive_dq_n1),
	.T2(ddrphy_drive_dq_n1),
	.T3(ddrphy_drive_dq_n1),
	.T4(ddrphy_drive_dq_n0),
	.TCE(1'd1),
	.TRAIN(1'd0),
	.OQ(ddrphy_dq_o[9]),
	.TQ(ddrphy_dq_t[9])
);

ISERDES2 #(
	.BITSLIP_ENABLE("TRUE"),
	.DATA_RATE("SDR"),
	.DATA_WIDTH(3'd4),
	.INTERFACE_TYPE("RETIMED"),
	.SERDES_MODE("NONE")
) ISERDES2_9 (
	.BITSLIP(ddrphy_bitslip_inc),
	.CE0(1'd1),
	.CLK0(sdram_full_rd_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D(ddrphy_dq_i[9]),
	.IOCE(ddrphy_clk4x_rd_strb),
	.RST(sys_rst),
	.Q1(ddrphy_record0_rddata[25]),
	.Q2(ddrphy_record0_rddata[9]),
	.Q3(ddrphy_record1_rddata[25]),
	.Q4(ddrphy_record1_rddata[9])
);

IOBUF IOBUF_9(
	.I(ddrphy_dq_o[9]),
	.T(ddrphy_dq_t[9]),
	.IO(ddram_dq[9]),
	.O(ddrphy_dq_i[9])
);

OSERDES2 #(
	.DATA_RATE_OQ("SDR"),
	.DATA_RATE_OT("SDR"),
	.DATA_WIDTH(3'd4),
	.OUTPUT_MODE("SINGLE_ENDED"),
	.SERDES_MODE("NONE")
) OSERDES2_10 (
	.CLK0(sdram_full_wr_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D1(slice_proxy40[10]),
	.D2(slice_proxy41[10]),
	.D3(slice_proxy42[10]),
	.D4(slice_proxy43[10]),
	.IOCE(ddrphy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.T1(ddrphy_drive_dq_n1),
	.T2(ddrphy_drive_dq_n1),
	.T3(ddrphy_drive_dq_n1),
	.T4(ddrphy_drive_dq_n0),
	.TCE(1'd1),
	.TRAIN(1'd0),
	.OQ(ddrphy_dq_o[10]),
	.TQ(ddrphy_dq_t[10])
);

ISERDES2 #(
	.BITSLIP_ENABLE("TRUE"),
	.DATA_RATE("SDR"),
	.DATA_WIDTH(3'd4),
	.INTERFACE_TYPE("RETIMED"),
	.SERDES_MODE("NONE")
) ISERDES2_10 (
	.BITSLIP(ddrphy_bitslip_inc),
	.CE0(1'd1),
	.CLK0(sdram_full_rd_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D(ddrphy_dq_i[10]),
	.IOCE(ddrphy_clk4x_rd_strb),
	.RST(sys_rst),
	.Q1(ddrphy_record0_rddata[26]),
	.Q2(ddrphy_record0_rddata[10]),
	.Q3(ddrphy_record1_rddata[26]),
	.Q4(ddrphy_record1_rddata[10])
);

IOBUF IOBUF_10(
	.I(ddrphy_dq_o[10]),
	.T(ddrphy_dq_t[10]),
	.IO(ddram_dq[10]),
	.O(ddrphy_dq_i[10])
);

OSERDES2 #(
	.DATA_RATE_OQ("SDR"),
	.DATA_RATE_OT("SDR"),
	.DATA_WIDTH(3'd4),
	.OUTPUT_MODE("SINGLE_ENDED"),
	.SERDES_MODE("NONE")
) OSERDES2_11 (
	.CLK0(sdram_full_wr_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D1(slice_proxy44[11]),
	.D2(slice_proxy45[11]),
	.D3(slice_proxy46[11]),
	.D4(slice_proxy47[11]),
	.IOCE(ddrphy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.T1(ddrphy_drive_dq_n1),
	.T2(ddrphy_drive_dq_n1),
	.T3(ddrphy_drive_dq_n1),
	.T4(ddrphy_drive_dq_n0),
	.TCE(1'd1),
	.TRAIN(1'd0),
	.OQ(ddrphy_dq_o[11]),
	.TQ(ddrphy_dq_t[11])
);

ISERDES2 #(
	.BITSLIP_ENABLE("TRUE"),
	.DATA_RATE("SDR"),
	.DATA_WIDTH(3'd4),
	.INTERFACE_TYPE("RETIMED"),
	.SERDES_MODE("NONE")
) ISERDES2_11 (
	.BITSLIP(ddrphy_bitslip_inc),
	.CE0(1'd1),
	.CLK0(sdram_full_rd_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D(ddrphy_dq_i[11]),
	.IOCE(ddrphy_clk4x_rd_strb),
	.RST(sys_rst),
	.Q1(ddrphy_record0_rddata[27]),
	.Q2(ddrphy_record0_rddata[11]),
	.Q3(ddrphy_record1_rddata[27]),
	.Q4(ddrphy_record1_rddata[11])
);

IOBUF IOBUF_11(
	.I(ddrphy_dq_o[11]),
	.T(ddrphy_dq_t[11]),
	.IO(ddram_dq[11]),
	.O(ddrphy_dq_i[11])
);

OSERDES2 #(
	.DATA_RATE_OQ("SDR"),
	.DATA_RATE_OT("SDR"),
	.DATA_WIDTH(3'd4),
	.OUTPUT_MODE("SINGLE_ENDED"),
	.SERDES_MODE("NONE")
) OSERDES2_12 (
	.CLK0(sdram_full_wr_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D1(slice_proxy48[12]),
	.D2(slice_proxy49[12]),
	.D3(slice_proxy50[12]),
	.D4(slice_proxy51[12]),
	.IOCE(ddrphy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.T1(ddrphy_drive_dq_n1),
	.T2(ddrphy_drive_dq_n1),
	.T3(ddrphy_drive_dq_n1),
	.T4(ddrphy_drive_dq_n0),
	.TCE(1'd1),
	.TRAIN(1'd0),
	.OQ(ddrphy_dq_o[12]),
	.TQ(ddrphy_dq_t[12])
);

ISERDES2 #(
	.BITSLIP_ENABLE("TRUE"),
	.DATA_RATE("SDR"),
	.DATA_WIDTH(3'd4),
	.INTERFACE_TYPE("RETIMED"),
	.SERDES_MODE("NONE")
) ISERDES2_12 (
	.BITSLIP(ddrphy_bitslip_inc),
	.CE0(1'd1),
	.CLK0(sdram_full_rd_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D(ddrphy_dq_i[12]),
	.IOCE(ddrphy_clk4x_rd_strb),
	.RST(sys_rst),
	.Q1(ddrphy_record0_rddata[28]),
	.Q2(ddrphy_record0_rddata[12]),
	.Q3(ddrphy_record1_rddata[28]),
	.Q4(ddrphy_record1_rddata[12])
);

IOBUF IOBUF_12(
	.I(ddrphy_dq_o[12]),
	.T(ddrphy_dq_t[12]),
	.IO(ddram_dq[12]),
	.O(ddrphy_dq_i[12])
);

OSERDES2 #(
	.DATA_RATE_OQ("SDR"),
	.DATA_RATE_OT("SDR"),
	.DATA_WIDTH(3'd4),
	.OUTPUT_MODE("SINGLE_ENDED"),
	.SERDES_MODE("NONE")
) OSERDES2_13 (
	.CLK0(sdram_full_wr_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D1(slice_proxy52[13]),
	.D2(slice_proxy53[13]),
	.D3(slice_proxy54[13]),
	.D4(slice_proxy55[13]),
	.IOCE(ddrphy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.T1(ddrphy_drive_dq_n1),
	.T2(ddrphy_drive_dq_n1),
	.T3(ddrphy_drive_dq_n1),
	.T4(ddrphy_drive_dq_n0),
	.TCE(1'd1),
	.TRAIN(1'd0),
	.OQ(ddrphy_dq_o[13]),
	.TQ(ddrphy_dq_t[13])
);

ISERDES2 #(
	.BITSLIP_ENABLE("TRUE"),
	.DATA_RATE("SDR"),
	.DATA_WIDTH(3'd4),
	.INTERFACE_TYPE("RETIMED"),
	.SERDES_MODE("NONE")
) ISERDES2_13 (
	.BITSLIP(ddrphy_bitslip_inc),
	.CE0(1'd1),
	.CLK0(sdram_full_rd_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D(ddrphy_dq_i[13]),
	.IOCE(ddrphy_clk4x_rd_strb),
	.RST(sys_rst),
	.Q1(ddrphy_record0_rddata[29]),
	.Q2(ddrphy_record0_rddata[13]),
	.Q3(ddrphy_record1_rddata[29]),
	.Q4(ddrphy_record1_rddata[13])
);

IOBUF IOBUF_13(
	.I(ddrphy_dq_o[13]),
	.T(ddrphy_dq_t[13]),
	.IO(ddram_dq[13]),
	.O(ddrphy_dq_i[13])
);

OSERDES2 #(
	.DATA_RATE_OQ("SDR"),
	.DATA_RATE_OT("SDR"),
	.DATA_WIDTH(3'd4),
	.OUTPUT_MODE("SINGLE_ENDED"),
	.SERDES_MODE("NONE")
) OSERDES2_14 (
	.CLK0(sdram_full_wr_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D1(slice_proxy56[14]),
	.D2(slice_proxy57[14]),
	.D3(slice_proxy58[14]),
	.D4(slice_proxy59[14]),
	.IOCE(ddrphy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.T1(ddrphy_drive_dq_n1),
	.T2(ddrphy_drive_dq_n1),
	.T3(ddrphy_drive_dq_n1),
	.T4(ddrphy_drive_dq_n0),
	.TCE(1'd1),
	.TRAIN(1'd0),
	.OQ(ddrphy_dq_o[14]),
	.TQ(ddrphy_dq_t[14])
);

ISERDES2 #(
	.BITSLIP_ENABLE("TRUE"),
	.DATA_RATE("SDR"),
	.DATA_WIDTH(3'd4),
	.INTERFACE_TYPE("RETIMED"),
	.SERDES_MODE("NONE")
) ISERDES2_14 (
	.BITSLIP(ddrphy_bitslip_inc),
	.CE0(1'd1),
	.CLK0(sdram_full_rd_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D(ddrphy_dq_i[14]),
	.IOCE(ddrphy_clk4x_rd_strb),
	.RST(sys_rst),
	.Q1(ddrphy_record0_rddata[30]),
	.Q2(ddrphy_record0_rddata[14]),
	.Q3(ddrphy_record1_rddata[30]),
	.Q4(ddrphy_record1_rddata[14])
);

IOBUF IOBUF_14(
	.I(ddrphy_dq_o[14]),
	.T(ddrphy_dq_t[14]),
	.IO(ddram_dq[14]),
	.O(ddrphy_dq_i[14])
);

OSERDES2 #(
	.DATA_RATE_OQ("SDR"),
	.DATA_RATE_OT("SDR"),
	.DATA_WIDTH(3'd4),
	.OUTPUT_MODE("SINGLE_ENDED"),
	.SERDES_MODE("NONE")
) OSERDES2_15 (
	.CLK0(sdram_full_wr_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D1(slice_proxy60[15]),
	.D2(slice_proxy61[15]),
	.D3(slice_proxy62[15]),
	.D4(slice_proxy63[15]),
	.IOCE(ddrphy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.T1(ddrphy_drive_dq_n1),
	.T2(ddrphy_drive_dq_n1),
	.T3(ddrphy_drive_dq_n1),
	.T4(ddrphy_drive_dq_n0),
	.TCE(1'd1),
	.TRAIN(1'd0),
	.OQ(ddrphy_dq_o[15]),
	.TQ(ddrphy_dq_t[15])
);

ISERDES2 #(
	.BITSLIP_ENABLE("TRUE"),
	.DATA_RATE("SDR"),
	.DATA_WIDTH(3'd4),
	.INTERFACE_TYPE("RETIMED"),
	.SERDES_MODE("NONE")
) ISERDES2_15 (
	.BITSLIP(ddrphy_bitslip_inc),
	.CE0(1'd1),
	.CLK0(sdram_full_rd_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D(ddrphy_dq_i[15]),
	.IOCE(ddrphy_clk4x_rd_strb),
	.RST(sys_rst),
	.Q1(ddrphy_record0_rddata[31]),
	.Q2(ddrphy_record0_rddata[15]),
	.Q3(ddrphy_record1_rddata[31]),
	.Q4(ddrphy_record1_rddata[15])
);

IOBUF IOBUF_15(
	.I(ddrphy_dq_o[15]),
	.T(ddrphy_dq_t[15]),
	.IO(ddram_dq[15]),
	.O(ddrphy_dq_i[15])
);

OSERDES2 #(
	.DATA_RATE_OQ("SDR"),
	.DATA_RATE_OT("SDR"),
	.DATA_WIDTH(3'd4),
	.OUTPUT_MODE("SINGLE_ENDED"),
	.SERDES_MODE("NONE")
) OSERDES2_16 (
	.CLK0(sdram_full_wr_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D1(slice_proxy64[0]),
	.D2(slice_proxy65[0]),
	.D3(slice_proxy66[0]),
	.D4(slice_proxy67[0]),
	.IOCE(ddrphy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.TCE(1'd0),
	.TRAIN(1'd0),
	.OQ(ddram_dm[0])
);

OSERDES2 #(
	.DATA_RATE_OQ("SDR"),
	.DATA_RATE_OT("SDR"),
	.DATA_WIDTH(3'd4),
	.OUTPUT_MODE("SINGLE_ENDED"),
	.SERDES_MODE("NONE")
) OSERDES2_17 (
	.CLK0(sdram_full_wr_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D1(slice_proxy68[1]),
	.D2(slice_proxy69[1]),
	.D3(slice_proxy70[1]),
	.D4(slice_proxy71[1]),
	.IOCE(ddrphy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.TCE(1'd0),
	.TRAIN(1'd0),
	.OQ(ddram_dm[1])
);

reg [23:0] storage_2[0:7];
reg [23:0] memdat_4;
always @(posedge sys_clk) begin
	if (sdram_bankmachine0_cmd_buffer_lookahead_wrport_we)
		storage_2[sdram_bankmachine0_cmd_buffer_lookahead_wrport_adr] <= sdram_bankmachine0_cmd_buffer_lookahead_wrport_dat_w;
	memdat_4 <= storage_2[sdram_bankmachine0_cmd_buffer_lookahead_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign sdram_bankmachine0_cmd_buffer_lookahead_wrport_dat_r = memdat_4;
assign sdram_bankmachine0_cmd_buffer_lookahead_rdport_dat_r = storage_2[sdram_bankmachine0_cmd_buffer_lookahead_rdport_adr];

reg [23:0] storage_3[0:7];
reg [23:0] memdat_5;
always @(posedge sys_clk) begin
	if (sdram_bankmachine1_cmd_buffer_lookahead_wrport_we)
		storage_3[sdram_bankmachine1_cmd_buffer_lookahead_wrport_adr] <= sdram_bankmachine1_cmd_buffer_lookahead_wrport_dat_w;
	memdat_5 <= storage_3[sdram_bankmachine1_cmd_buffer_lookahead_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign sdram_bankmachine1_cmd_buffer_lookahead_wrport_dat_r = memdat_5;
assign sdram_bankmachine1_cmd_buffer_lookahead_rdport_dat_r = storage_3[sdram_bankmachine1_cmd_buffer_lookahead_rdport_adr];

reg [23:0] storage_4[0:7];
reg [23:0] memdat_6;
always @(posedge sys_clk) begin
	if (sdram_bankmachine2_cmd_buffer_lookahead_wrport_we)
		storage_4[sdram_bankmachine2_cmd_buffer_lookahead_wrport_adr] <= sdram_bankmachine2_cmd_buffer_lookahead_wrport_dat_w;
	memdat_6 <= storage_4[sdram_bankmachine2_cmd_buffer_lookahead_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign sdram_bankmachine2_cmd_buffer_lookahead_wrport_dat_r = memdat_6;
assign sdram_bankmachine2_cmd_buffer_lookahead_rdport_dat_r = storage_4[sdram_bankmachine2_cmd_buffer_lookahead_rdport_adr];

reg [23:0] storage_5[0:7];
reg [23:0] memdat_7;
always @(posedge sys_clk) begin
	if (sdram_bankmachine3_cmd_buffer_lookahead_wrport_we)
		storage_5[sdram_bankmachine3_cmd_buffer_lookahead_wrport_adr] <= sdram_bankmachine3_cmd_buffer_lookahead_wrport_dat_w;
	memdat_7 <= storage_5[sdram_bankmachine3_cmd_buffer_lookahead_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign sdram_bankmachine3_cmd_buffer_lookahead_wrport_dat_r = memdat_7;
assign sdram_bankmachine3_cmd_buffer_lookahead_rdport_dat_r = storage_5[sdram_bankmachine3_cmd_buffer_lookahead_rdport_adr];

reg [63:0] data_mem[0:1023];
reg [9:0] memadr_3;
always @(posedge sys_clk) begin
	if (data_port_we[0])
		data_mem[data_port_adr][7:0] <= data_port_dat_w[7:0];
	if (data_port_we[1])
		data_mem[data_port_adr][15:8] <= data_port_dat_w[15:8];
	if (data_port_we[2])
		data_mem[data_port_adr][23:16] <= data_port_dat_w[23:16];
	if (data_port_we[3])
		data_mem[data_port_adr][31:24] <= data_port_dat_w[31:24];
	if (data_port_we[4])
		data_mem[data_port_adr][39:32] <= data_port_dat_w[39:32];
	if (data_port_we[5])
		data_mem[data_port_adr][47:40] <= data_port_dat_w[47:40];
	if (data_port_we[6])
		data_mem[data_port_adr][55:48] <= data_port_dat_w[55:48];
	if (data_port_we[7])
		data_mem[data_port_adr][63:56] <= data_port_dat_w[63:56];
	memadr_3 <= data_port_adr;
end

assign data_port_dat_r = data_mem[memadr_3];

reg [21:0] tag_mem[0:1023];
reg [9:0] memadr_4;
always @(posedge sys_clk) begin
	if (tag_port_we)
		tag_mem[tag_port_adr] <= tag_port_dat_w;
	memadr_4 <= tag_port_adr;
end

assign tag_port_dat_r = tag_mem[memadr_4];

FDPE #(
	.INIT(1'd1)
) FDPE (
	.C(por_clk),
	.CE(1'd1),
	.D(1'd0),
	.PRE(reset),
	.Q(xilinxasyncresetsynchronizerimpl0_rst_meta)
);

FDPE #(
	.INIT(1'd1)
) FDPE_1 (
	.C(por_clk),
	.CE(1'd1),
	.D(xilinxasyncresetsynchronizerimpl0_rst_meta),
	.PRE(reset),
	.Q(por_rst)
);

FDPE #(
	.INIT(1'd1)
) FDPE_2 (
	.C(sys_clk),
	.CE(1'd1),
	.D(1'd0),
	.PRE(xilinxasyncresetsynchronizerimpl1),
	.Q(xilinxasyncresetsynchronizerimpl1_rst_meta)
);

FDPE #(
	.INIT(1'd1)
) FDPE_3 (
	.C(sys_clk),
	.CE(1'd1),
	.D(xilinxasyncresetsynchronizerimpl1_rst_meta),
	.PRE(xilinxasyncresetsynchronizerimpl1),
	.Q(sys_rst)
);

endmodule
