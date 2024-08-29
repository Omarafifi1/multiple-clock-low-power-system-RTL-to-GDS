module start_check(
    input start_check_enable,
    input sampled_bit,
    output reg start_glitch
);
always @(*) begin
    casex ({sampled_bit , start_check_enable})
        2'b01: start_glitch=0;
        2'b11: start_glitch=1;
        2'bx0: start_glitch=1'b0;
    endcase
end
endmodule

