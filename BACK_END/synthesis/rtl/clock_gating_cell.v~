module clock_gating(
    input clk_enable , clk,
    output gated_clk

);
/*reg q;

assign gated_clk = clk & q;
always @(*) begin
    if(!clk)
    q=clk_enable;
end*/

TLATNCAX3M dut0(
.E(clk_enable),
.CK(clk),
.ECK(gated_clk)
);

endmodule
