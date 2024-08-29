module data_sync_top_module #(parameter data_width =8 ) (
    input dest_clk , dest_rst_n,
    input [data_width-1:0]unsync_bus , 
    input bus_enable,
    output [data_width-1:0]sync_bus ,
    output enable_pulse
);
wire sync_bus_enable , mux_enable;

enable_sync dut1 (
.clk(dest_clk) , 
.rst_n(dest_rst_n),
.bus_enable(bus_enable),
.sync_bus_enable(sync_bus_enable)
);


pulse_gen  dut2(
.clk (dest_clk), 
.rst_n(dest_rst_n),
.in(sync_bus_enable),
.d2(mux_enable),
.out(enable_pulse)
);


enabled_ff dut3(
.unsync_bus(unsync_bus) ,
.enable_signal(mux_enable),
.clk(dest_clk) ,
.rst_n(dest_rst_n) ,
.sync_bus(sync_bus)
);

endmodule
