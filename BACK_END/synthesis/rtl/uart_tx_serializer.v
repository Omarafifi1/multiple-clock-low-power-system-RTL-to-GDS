module serilaizer #(parameter data_width=8)(
input [data_width-1:0]p_data,
input data_valid,serilaizer_enable,busy,
input clk,rst_n,
output  serialized_data,
output  serilaizer_done
);
reg [data_width-1:0]parallel_data_reg;
reg [$clog2(data_width)-1:0]counter;

assign serialized_data=parallel_data_reg[0];
assign serilaizer_done=&counter;

always@(posedge clk , negedge rst_n)
begin
    if(!rst_n)begin
        parallel_data_reg<=0;
    end
    else if(data_valid && !busy)   //enable signal in order not take new p_data when the frame is being sent 
        parallel_data_reg<=p_data;
    else if(serilaizer_enable && !serilaizer_done)
        parallel_data_reg<={1'b0,parallel_data_reg[data_width-1:1]};
end

always @(posedge clk , negedge rst_n) begin
    if(!rst_n)
    counter<=0;
    else if(!serilaizer_done && serilaizer_enable)
    counter<=counter+1;
    else
    counter<=0;
end

endmodule
