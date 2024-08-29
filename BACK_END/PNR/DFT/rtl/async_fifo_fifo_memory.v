module fifo_memory #(parameter data_width = 8 , addr_width =4 )(
    input w_clk , w_rst_n,
    input rd_clk , rd_rst_n,
    input [addr_width-1:0]w_address,rd_address,
    input w_inc, 
    input full_flag  ,
    input [data_width-1:0]w_data,
    output  [data_width-1:0]rd_data
);
reg [data_width-1:0]fifo[0:(2**addr_width)-1];


assign rd_data = fifo[rd_address];


integer  i;
always @(posedge w_clk , negedge w_rst_n ) begin
    if(!w_rst_n)
    for (i =0 ; i!=((2**addr_width)) ; i=i+1) begin
        fifo[i]<=0;
    end
    else if(w_inc && !full_flag)
       fifo[w_address] <= w_data;
end



endmodule

