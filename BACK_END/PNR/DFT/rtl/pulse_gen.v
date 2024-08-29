module pulse_gen  (
    input clk , rst_n,
    input in,
    output d2,
    output reg out
);

reg q;

assign d2=(~q) & (in);

always @(posedge clk , negedge rst_n) begin
    if(!rst_n) begin
        q<=0;
        out <= 0;           
    end
    else begin
        q<=in;
        out <=d2;       
    end
end

endmodule