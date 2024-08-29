module synchronizer #(parameter  addr_width =4   )(
    input   [addr_width:0]d1,
    input   clk , rst_n,
    output  reg [addr_width:0]q2

);
reg [addr_width:0] q1;
always @(posedge clk , negedge rst_n) begin
    if(!rst_n) begin
        q2<=0;
        q1<=0;
    end
    else begin
        q1<=d1;
        q2<=q1;        
    end
end
endmodule
