module full_gen #(parameter addr_width =4 )(
    input  [addr_width:0]sync_grey_coded_rd_ptr,
    input  w_clk , w_rst_n,
    input  w_inc,
    output [addr_width:0]wr_ptr_grey_coded,
    output reg[addr_width-1:0]w_address,
    output full_flag
);

assign full_flag = ((wr_ptr_grey_coded[addr_width-2:0] == sync_grey_coded_rd_ptr[addr_width-2:0]) && (wr_ptr_grey_coded[addr_width] != sync_grey_coded_rd_ptr[addr_width])  && (wr_ptr_grey_coded[addr_width-1] != sync_grey_coded_rd_ptr[addr_width-1]));
reg[addr_width:0]wr_ptr;


always @(posedge w_clk , negedge w_rst_n) begin
    if(!w_rst_n) begin
       w_address<= 0;
       wr_ptr<=0;
    end
    else if(w_inc && !full_flag) begin
        w_address<=w_address+1;
        wr_ptr<=wr_ptr+1;
    end
    

end

grey_code_gen  wr_ptr_gc (
.binary_data(wr_ptr),
.grey_coded_data(wr_ptr_grey_coded)
);

endmodule
