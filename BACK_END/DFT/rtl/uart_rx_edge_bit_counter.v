module edge_bit_counter #(parameter bit_counter_width=3 , prescale_width=6 , edge_counter_width=6 )(
    input rx_clk,rst_n,
    input [prescale_width-1:0]prescale,
    input counter_enable,deserializer_enable,
    output edge_done_tick,
    output data_done_tick,  
    output sampling_tick
);

reg [bit_counter_width-1:0]data_bit_counter; //count # of bits of the frame
reg [edge_counter_width-1:0]edge_counter; //count how many edges  the rx clk has taken to sample one bit from the frame



assign edge_done_tick= (edge_counter==(prescale-1)) ;
assign data_done_tick= &data_bit_counter;
assign sampling_tick= ((edge_counter==(prescale>>1)) || (edge_counter==((prescale>>1)-1))  || (edge_counter==((prescale>>1)+1))) ;


always @(posedge rx_clk , negedge rst_n) begin
    if(!rst_n)
    edge_counter<=0;
    else if((counter_enable) && (!edge_done_tick))
    edge_counter<=edge_counter+1;
    else 
    edge_counter<=0;
end

always @(posedge rx_clk , negedge rst_n) begin
    if(!rst_n)
    data_bit_counter<=0;
    else if(counter_enable && deserializer_enable && edge_done_tick && !data_done_tick)
    data_bit_counter<=data_bit_counter+1;
    else if(data_done_tick && edge_done_tick)
    data_bit_counter<=0;
end
endmodule

