module empty_gen #(parameter addr_width =4 )(
    input  [addr_width:0]sync_grey_coded_wr_ptr,
    input  rd_clk , rd_rst_n,
    input  rd_inc,
    output [addr_width:0]rd_ptr_grey_coded,
    output reg[addr_width-1:0]rd_address,
    output empty_flag
);

assign empty_flag = (rd_ptr_grey_coded == sync_grey_coded_wr_ptr );



reg[addr_width:0]rd_ptr;

always @(posedge rd_clk , negedge rd_rst_n) begin
    if(!rd_rst_n) begin
       rd_address<= 0;
       rd_ptr<=0;
    end
    else if(rd_inc && !empty_flag) begin
        rd_address<=rd_address+1;
        rd_ptr<=rd_ptr+1;
    end
end

grey_code_gen  rd_ptr_gc (
.binary_data(rd_ptr),
.grey_coded_data(rd_ptr_grey_coded)
);

endmodule
