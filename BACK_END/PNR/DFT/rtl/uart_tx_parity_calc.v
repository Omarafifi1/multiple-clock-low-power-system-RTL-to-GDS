module parity_calc #(parameter data_width=8)(
input [data_width-1:0]p_data,
input data_valid,busy,parity_type,
input clk,rst_n,
output reg parity_bit
);

always @(posedge clk , negedge rst_n) begin
    if(!rst_n)
        parity_bit<=0;
    else begin
    case ({data_valid,busy,parity_type})
        3'b100:parity_bit<=^(p_data);
        3'b101:parity_bit<=^~(p_data); 
        default:parity_bit<=parity_bit;
    endcase       
    end 
end
endmodule
