module RX_TOP_MODULE  #(parameter prescale_width=6 ,data_width=8 , sample_width=3  )(
    input rx_in,
    input [prescale_width-1:0]prescale,
    input parity_enable,
    input parity_type,
    input rx_clk,rst_n,
    output [data_width-1:0] p_data,
    output stop_error , parity_error,start_glitch ,
    output data_valid
);
wire sampling_tick , data_sampler_enable , sampled_bit ;
wire edge_done_tick , data_done_tick ,deserializer_enable , counter_enable;
wire   parity_check_enable , start_check_enable , stop_check_enable;


data_sampler dut0(
.rx_clk(rx_clk),
.rst_n(rst_n),
.data_sampler_enable(data_sampler_enable),
.sampling_tick(sampling_tick),
.rx_in(rx_in),
.sampled_bit(sampled_bit)
);


edge_bit_counter dut1(
.rx_clk(rx_clk),
.rst_n(rst_n),
.prescale(prescale),
.counter_enable(counter_enable),
.deserializer_enable(deserializer_enable),
.edge_done_tick(edge_done_tick),
.data_done_tick(data_done_tick),  
.sampling_tick(sampling_tick)
);


fsm dut2(
.rx_clk(rx_clk),
.rst_n(rst_n),
.rx_in(rx_in),
.parity_enable(parity_enable),
.edge_done_tick(edge_done_tick),
.data_done_tick(data_done_tick),
.parity_error(parity_error),
.start_glitch(start_glitch),
.stop_error(stop_error),
.deserializer_enable(deserializer_enable) , 
.data_sampler_enable(data_sampler_enable),
.parity_check_enable(parity_check_enable) ,
.start_check_enable(start_check_enable) ,
.stop_check_enable(stop_check_enable),
.counter_enable(counter_enable),
.data_valid(data_valid)
);


deserializer dut3(
.sampled_bit(sampled_bit),
.rx_clk(rx_clk),
.rst_n(rst_n),
.deserializer_enable(deserializer_enable),
.p_data(p_data)
);



parity_check dut4(
.parity_type(parity_type),
.parity_check_enable(parity_check_enable),
.sampled_bit(sampled_bit),
.p_data(p_data),
.parity_error(parity_error),
.rx_clk(rx_clk),
.rst_n(rst_n)
);


start_check dut5(
.start_check_enable(start_check_enable),
.sampled_bit(sampled_bit),
.start_glitch(start_glitch)
);


stop_check dut6(
.stop_check_enable(stop_check_enable),
.sampled_bit(sampled_bit),
.stop_error(stop_error),
.rx_clk(rx_clk),
.rst_n(rst_n)
);
endmodule
