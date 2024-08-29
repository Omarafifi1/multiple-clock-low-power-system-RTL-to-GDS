module stop_check(
    input stop_check_enable,
    input rx_clk , rst_n,
    input sampled_bit,
    output reg stop_error
);
always @(posedge rx_clk , negedge rst_n) begin
    if(!rst_n)
    stop_error<=0;
    else
    casex ({sampled_bit,stop_check_enable})
        2'b01: stop_error<=1;
        2'b11: stop_error<=0;
        2'bx0: stop_error<=stop_error;
    endcase
end
endmodule


