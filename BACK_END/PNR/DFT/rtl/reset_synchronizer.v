module rst_synchronizer #(parameter  data_width=3 )(
    input clk , rst_n,
    output sync_rst
);


reg [data_width-1:0]syn_rst_reg;

assign sync_rst= syn_rst_reg[0];
always @(posedge clk , negedge rst_n) begin
    if(!rst_n)
    syn_rst_reg<=0;
    else
    syn_rst_reg<={1'b1,syn_rst_reg[data_width-1:1]};
end

endmodule
