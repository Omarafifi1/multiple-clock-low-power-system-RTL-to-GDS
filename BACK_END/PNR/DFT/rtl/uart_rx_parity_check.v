module parity_check #(parameter data_width=8 )(
    input parity_check_enable,
    input parity_type,
    input rx_clk , rst_n,
    input sampled_bit,
    input [data_width-1:0]p_data,
    output reg parity_error
);

assign  parity_bit=(parity_type)? ~^(p_data): ^(p_data);
always @(posedge rx_clk , negedge rst_n) begin
    if(!rst_n)
    begin
        parity_error<=0;
    end
    else 
    begin
        casex ({sampled_bit,parity_bit,parity_check_enable})
            3'b001: begin
                 //even
                parity_error<=0;
            end  
            3'b101: begin
                 //even
                parity_error<=1;
            end
             3'b011: begin
                 //even
                parity_error<=1;
            end  
            3'b111: begin
                 //even
                parity_error<=0;
            end   
            3'bxx0: begin
                parity_error<=parity_error;
            end                    
        endcase        
    end
end
endmodule

