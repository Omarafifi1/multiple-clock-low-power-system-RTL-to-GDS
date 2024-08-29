
module deserializer #(parameter data_width=8 )(
    input sampled_bit,
    input rx_clk,rst_n,
    input deserializer_enable,
    output reg [data_width-1:0]p_data
);

always @(posedge rx_clk , negedge rst_n) begin
    if(!rst_n)
    p_data<=0;
    else if(deserializer_enable) 
    p_data<={sampled_bit,p_data[data_width-1:1]}; 
end
endmodule
