module grey_code_gen  #(parameter addr_width =4)(
    input       [addr_width:0]binary_data,
    output reg  [addr_width:0]grey_coded_data
);

integer i;
always @(*) begin
    for (i=0 ; i!=(addr_width) ; i=i+1 ) begin
        grey_coded_data[i]= binary_data[i] ^ binary_data[i+1];
    end
        grey_coded_data[addr_width] = binary_data[addr_width];
end



endmodule
