module data_sampler #(parameter  edge_counter_width=6 ,sample_width=3 )(
    input rx_clk,rst_n,
    input data_sampler_enable,
    input sampling_tick,
    input rx_in,
    output reg sampled_bit
);
reg [sample_width-1:0]sampled_data;

always @(posedge rx_clk, negedge rst_n ) begin
    if(!rst_n)begin
        sampled_bit<=0;
        sampled_data<=0;
    end 
    else if(sampling_tick  && data_sampler_enable)
        sampled_data<={rx_in,sampled_data[sample_width-1:1]};
    else
        sampled_bit<=((sampled_data[2] & (sampled_data[1] | sampled_data[0])) | (sampled_data[1] & sampled_data[0]));

end
endmodule

