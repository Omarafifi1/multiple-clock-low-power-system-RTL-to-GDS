
module system_TOP #(parameter data_width = 8 , addr_width=4 , alu_fn_width=4)(
    input Ref_clk , Uart_clk ,rst_n,
    input rx_in,
    output tx_out,
    output stop_error , parity_error , start_glitch
);
     
    wire [(data_width*2)-1:0]alu_out ;
    wire out_valid;
    wire [data_width-1:0]rx_P_data;
    wire rx_d_valid;
    wire full_flag;
    wire [data_width-1:0]rd_data;
    wire rd_data_valid;
    wire  alu_en;
    wire  [alu_fn_width-1:0]alu_fun ;
    wire  clk_en;
    wire  [addr_width-1:0]address;
    wire  w_en , r_en;
    wire  [data_width-1:0]w_data;
    wire  [data_width-1:0]tx_P_data;
    wire  w_inc;
    wire  clk_div_en;
    wire [data_width-1:0]p_data;
    wire data_valid;
    wire [data_width-1:0]reg0 , reg1 , reg2 , reg3;
    wire rd_inc;
    wire empty_flag;
    wire busy;
    wire [data_width-1:0]fifo_rd_data;
    reg [7:0]out ;
    wire ref_sync_rst , uart_sync_rst;
    wire gated_clk;
    wire tx_clk , rx_clk;    
    
////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//         this mux takes the div ratio stored in the reg file to decide the div ratio of the rx clk        ///
//////////////////////////////////////////////////////////////////////////////////////////////////////////////

    always @(*) begin
        case (reg2[7:2])
            6'd32: out=1;
            6'd16: out=2;
            6'd8:  out=4;
            6'd4:  out=8; 
            default:out=1;
        endcase
    end
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//         two flip flops to add two cycles delay for the empty flag, this helps uart tx samples the readed data from the fifo correctly      ///
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    reg q1 , q2;
    always @(posedge tx_clk , negedge  uart_sync_rst ) begin
        if (!uart_sync_rst) begin
            q1<=0;
            q2<=0;            
        end
        else begin
            q1<=empty_flag;
            q2<=q1;
        end    
    end    

////////////////////////////////
//////    system ctrl     /////
//////////////////////////////
sys_ctrl  sys_ctrl(
.clk (Ref_clk), 
.rst_n(ref_sync_rst),
.alu_out (alu_out),
.out_valid(out_valid),
.rx_P_data(rx_P_data),
.rx_d_valid(rx_d_valid),
.full_flag(full_flag),
.rd_data(rd_data),
.rd_data_valid(rd_data_valid),
.alu_en(alu_en),
.alu_fun (alu_fun),
.clk_en(clk_en),
.address(address),
.w_en (w_en), 
.r_en(r_en),
.w_data(w_data),
.tx_P_data(tx_P_data),
.w_inc(w_inc),
.clk_div_en(clk_div_en)
);

/////////////////////////////////////////////////////////////////////////////////
//////        data synchronizers between system control and uart rx        /////
///////////////////////////////////////////////////////////////////////////////
data_sync_top_module data_sync (
.dest_clk(Ref_clk) ,
.dest_rst_n(ref_sync_rst),
.unsync_bus (p_data), 
.bus_enable(data_valid),
.sync_bus (rx_P_data),
.enable_pulse(rx_d_valid)
);



////////////////////////////////
//////     uart rx        /////
//////////////////////////////
RX_TOP_MODULE  uart_RX(
.rx_in (rx_in) ,
.prescale(reg2[7:2]),
.parity_enable(reg2[0]),
.parity_type(reg2[1]),
.rx_clk(rx_clk),
.rst_n(uart_sync_rst),
.p_data(p_data),
.stop_error(stop_error) ,
.parity_error(parity_error),
.start_glitch(start_glitch) ,
.data_valid(data_valid)
);


/////////////////////////////////////
//////     register file       /////
///////////////////////////////////
RF register_file(
.wren(w_en),
.rden(r_en),
.clk(Ref_clk),
.rst(ref_sync_rst),
.wrdata(w_data),
.address(address),
.rddata(rd_data),
.rddata_valid(rd_data_valid) , 
.reg0 (reg0),
.reg1 (reg1),
.reg2 (reg2), 
.reg3(reg3)
);


/////////////////////////////////////
//////           alu           /////
///////////////////////////////////
bit16_alu alu(
.a(reg0),
.b(reg1),
.alu_fun(alu_fun),
.clk(gated_clk),
.rst_n(ref_sync_rst),
.enable (alu_en),
.alu_out(alu_out),
.out_valid(out_valid)
);

/////////////////////////////////////
///       asynch fifo            ///
///////////////////////////////////
fifo_top async_fifo(
.w_clk (Ref_clk) ,
.w_rst_n(ref_sync_rst),
.rd_clk (tx_clk),
.rd_rst_n(uart_sync_rst),
.w_inc(w_inc),
.rd_inc(rd_inc),
.w_data(tx_P_data),
.rd_data(fifo_rd_data),
.full_flag (full_flag),
.empty_flag(empty_flag)
);


////////////////////////////////
//////     uart tx        /////
//////////////////////////////
UART_tx_TOP_MODULE UART_tx(
.p_data (fifo_rd_data) ,
.clk(tx_clk),
.rst_n(uart_sync_rst),
.data_valid(~q2),
.parity_type(reg2[1]),
.parity_enable(reg2[0]),
.tx_out(tx_out),
.busy(busy)
);

/////////////////////////////////////////////////
//          ref_clk_rst_synchronizer          ///
/////////////////////////////////////////////////
rst_synchronizer  ref_clk_rst_sync(
.clk(Ref_clk) ,
.rst_n(rst_n),
.sync_rst(ref_sync_rst)
);

///////////////////////////////////////////////////
//          uart_clk_rst_synchronizer          ///
/////////////////////////////////////////////////
rst_synchronizer uart_clk_rst_sync(
.clk(Uart_clk) ,
.rst_n(rst_n),
.sync_rst(uart_sync_rst)
);


////////////////////////////////////////
//////     clock gating cell       ////
//////////////////////////////////////
clock_gating  clock_gating_cell(
.clk_enable (clk_en),
.clk(Ref_clk),
.gated_clk(gated_clk)
);


////////////////////////////////////////
/////    uart tx clk divider       ////
//////////////////////////////////////
clk_div tx_div(
.i_ref_clk(Uart_clk),
.i_rst_n(uart_sync_rst),
.i_clk_en(clk_div_en),
.i_div_ratio(reg3),
.o_div_clk(tx_clk)
);


////////////////////////////////////////
/////    uart rx clk divider       ////
//////////////////////////////////////
clk_div rx_div(
.i_ref_clk(Uart_clk),
.i_rst_n(uart_sync_rst),
.i_clk_en(clk_div_en),
.i_div_ratio(out),
.o_div_clk(rx_clk)
);

////////////////////////////////////////////////////////////////////////////////
/////        pulse generator for the data valid signal of the uart rx       ///
//////////////////////////////////////////////////////////////////////////////
pulse_gen  pulse_gen(
.clk (tx_clk) ,
.rst_n(uart_sync_rst),
.in(busy),
.d2(rd_inc),
.out()
);


endmodule
