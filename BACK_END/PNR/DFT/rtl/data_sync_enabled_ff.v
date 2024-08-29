module enabled_ff #(parameter data_width= 8)(
    input [data_width-1:0]unsync_bus ,
    input enable_signal,
    input clk , rst_n ,
    output  reg[data_width-1:0]sync_bus

);

always @(posedge clk , negedge rst_n) begin
    if(!rst_n)
    sync_bus<=0;
    else if(enable_signal)
    sync_bus<=unsync_bus;
end
endmodule
