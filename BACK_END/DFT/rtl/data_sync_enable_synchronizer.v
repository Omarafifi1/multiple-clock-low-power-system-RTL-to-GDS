module enable_sync #(parameter width=2) (
    input clk , rst_n,
    input bus_enable,
    output sync_bus_enable
);

reg [width-1:0]enable_sync_reg;
assign sync_bus_enable = enable_sync_reg[0];

always @(posedge clk , negedge rst_n ) begin
    if(!rst_n)
    enable_sync_reg<=0;
    else
    enable_sync_reg<={bus_enable , enable_sync_reg[width-1:1]};
end


endmodule
