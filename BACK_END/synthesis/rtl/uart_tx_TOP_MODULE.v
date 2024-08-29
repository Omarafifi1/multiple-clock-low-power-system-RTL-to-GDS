module UART_tx_TOP_MODULE #(parameter data_width=8 , width=2)(
input [data_width-1:0]p_data,
input clk,rst_n,
input data_valid,
input parity_type,parity_enable,
output tx_out,
output busy
);

wire serilaizer_done;
wire serilaizer_enable;
wire [width-1:0]mux_sel;
wire serialized_data;
wire parity_bit;


fsm_controller uut0(
.data_valid(data_valid),
.serilaizer_done(serilaizer_done),
.parity_enable(parity_enable),
.clk(clk),
.rst_n(rst_n),
.serilaizer_enable(serilaizer_enable),
.busy(busy),
.mux_sel(mux_sel)
);


serilaizer uut1(
.p_data(p_data),
.data_valid(data_valid),
.serilaizer_done(serilaizer_done),
.clk(clk),
.rst_n(rst_n),
.serilaizer_enable(serilaizer_enable),
.busy(busy),
.serialized_data(serialized_data)
);


parity_calc uut2(
.p_data(p_data),
.parity_type(parity_type),  
.data_valid(data_valid),
.busy(busy),
.parity_bit(parity_bit),
.clk(clk),
.rst_n(rst_n)
);


mux uu3(
.mux_sel(mux_sel),
.parity_bit(parity_bit),
.serialized_data(serialized_data),
.tx_out(tx_out)
);
endmodule

