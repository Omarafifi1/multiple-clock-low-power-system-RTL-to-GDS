module fifo_top #(parameter data_width=8 , addr_width =4 )(
    input w_clk , w_rst_n,
    input rd_clk , rd_rst_n,
    input w_inc, rd_inc,
    input [data_width-1:0]w_data,
    output [data_width-1:0]rd_data,
    output full_flag , empty_flag
);


wire [addr_width:0]sync_grey_coded_rd_ptr  ,  rd_ptr_grey_coded ;
wire [addr_width-1:0]w_address , rd_address;
wire [addr_width:0]sync_grey_coded_wr_ptr , wr_ptr_grey_coded;

full_gen dut1(
.sync_grey_coded_rd_ptr(sync_grey_coded_rd_ptr),
.w_clk(w_clk) , 
.w_rst_n(w_rst_n),
.w_inc(w_inc),
.wr_ptr_grey_coded(wr_ptr_grey_coded),
.w_address(w_address),
.full_flag(full_flag)
);



fifo_memory dut2(
.w_clk(w_clk) , 
.w_rst_n(w_rst_n),
.rd_clk (rd_clk), 
.rd_rst_n(rd_rst_n),
.w_address(w_address),
.rd_address(rd_address),
.w_inc(w_inc),
.full_flag(full_flag)  ,
.w_data(w_data),
.rd_data(rd_data)
);


empty_gen dut3(
.sync_grey_coded_wr_ptr(sync_grey_coded_wr_ptr),
.rd_clk (rd_clk), 
.rd_rst_n(rd_rst_n),
.rd_inc(rd_inc),
.rd_ptr_grey_coded(rd_ptr_grey_coded),
.rd_address(rd_address),
.empty_flag(empty_flag)
);


synchronizer dut4(
.d1(rd_ptr_grey_coded),
.clk(w_clk) ,
.rst_n(w_rst_n),
.q2(sync_grey_coded_rd_ptr)
);


synchronizer dut5(
.d1(wr_ptr_grey_coded),
.clk(rd_clk) ,
.rst_n(rd_rst_n),
.q2(sync_grey_coded_wr_ptr)
);


endmodule
