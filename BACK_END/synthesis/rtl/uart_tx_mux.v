module mux #(parameter width=2)(
input [width-1:0]mux_sel,
input parity_bit,
input serialized_data,
output reg tx_out
);

always @(*) begin
    case (mux_sel)
        2'b00:tx_out=1'b0;
        2'b01:tx_out=1'b1;
        2'b10:tx_out=serialized_data;
        2'b11:tx_out=parity_bit;
    endcase
end
endmodule
