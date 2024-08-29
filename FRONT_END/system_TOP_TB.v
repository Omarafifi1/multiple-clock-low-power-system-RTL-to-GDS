`timescale 1ns/1ps
module sys_top_tb;

reg Ref_clk_tb , Uart_clk_tb  ,rst_n_tb ;
reg rx_in_tb ;
wire tx_out_tb ;
wire stop_error_tb  , parity_error_tb , start_glitch_tb  ;



sys_top  uut(
.Ref_clk(Ref_clk_tb) ,
.Uart_clk(Uart_clk_tb) ,
.rst_n(rst_n_tb),
.rx_in(rx_in_tb),
.tx_out(tx_out_tb),
.stop_error(stop_error_tb) ,
.parity_error(parity_error_tb) ,
.start_glitch(start_glitch_tb) 
);

localparam ratio=1,
           T_ref_clk=20  ,
           T_uart_clk=271  ,
           T_tx=8658,
           T_rx=T_uart_clk*ratio;

initial
begin
initialize;
reset;
@(negedge Uart_clk_tb)
start_glitch;    
#(3*T_tx);
@(negedge Uart_clk_tb)

REG_FILE_WRITE_CMD(1'b0 , 1'b1 , 8'haa , 1'b0 , 8'd5 ,1'b0 , 8'd25 , 1'b1);
#(2*T_tx);



REG_FILE_READ_CMD(1'b0 , 1'b1 ,  8'hbb , 1'b0 , 8'd2 , 1'b1 );
#(2*T_tx);



ALU_OPER_W_NOP_CMD(1'b0 , 1'b1 ,  8'hdd , 1'b0 , 8'd0 , 1'b0); //add
#(2*T_tx);



ALU_OPER_W_OP_CMD(1'b0 , 1'b1 , 8'hcc , 1'b0  , 8'd11  , 1'b1 , 8'd15 , 1'b0 , 8'd0 ,1'b0 );//add
#(2*T_tx);
ALU_OPER_W_OP_CMD(1'b0 , 1'b1 , 8'hcc , 1'b0  , 8'd10  , 1'b0 , 8'd15 , 1'b0 , 8'd1 ,1'b1 );//sub
#(2*T_tx);
ALU_OPER_W_OP_CMD(1'b0 , 1'b1 , 8'hcc , 1'b0  , 8'd150 , 1'b0 , 8'd89 , 1'b0 , 8'd2 ,1'b1 );//mul
#(2*T_tx);
ALU_OPER_W_OP_CMD(1'b0 , 1'b1 , 8'hcc , 1'b0  , 8'd200 , 1'b1 , 8'd4  , 1'b1 , 8'd3 ,1'b0 );//div
#(2*T_tx);
ALU_OPER_W_OP_CMD(1'b0 , 1'b1 , 8'hcc , 1'b0  , 8'd10  , 1'b0 , 8'd15 , 1'b0 , 8'd4 ,1'b1 );//and
#(2*T_tx);


REG_FILE_WRITE_CMD(1'b0 , 1'b1 , 8'haa , 1'b0 , 8'd0 ,1'b0 , 8'd127 , 1'b1);
#(2*T_tx);
REG_FILE_WRITE_CMD(1'b0 , 1'b1 , 8'haa , 1'b0 , 8'd1 ,1'b1 , 8'd253 , 1'b1);
#(2*T_tx);





ALU_OPER_W_NOP_CMD(1'b0 , 1'b1 ,  8'hdd , 1'b0 , 8'd0 , 1'b0); //add
#(2*T_tx);
ALU_OPER_W_NOP_CMD(1'b0 , 1'b1 ,  8'hdd , 1'b0 , 8'd1 , 1'b1);  //sub
#(2*T_tx);
ALU_OPER_W_NOP_CMD(1'b0 , 1'b1 ,  8'hdd , 1'b0 , 8'd2 , 1'b1); //mul
#(2*T_tx);
ALU_OPER_W_NOP_CMD(1'b0 , 1'b1 ,  8'hdd , 1'b0 , 8'd3 , 1'b0);//div
#(2*T_tx);
ALU_OPER_W_NOP_CMD(1'b0 , 1'b1 ,  8'hdd , 1'b0 , 8'd4 , 1'b1);//and
#(20*T_tx);

#(100*T_tx)

$stop;
end



////////////////////////////////
//////   generate clock   /////
//////////////////////////////
always
begin
Ref_clk_tb=0;
#(T_ref_clk/2);
Ref_clk_tb=1;
#(T_ref_clk/2);   
end

always
begin
Uart_clk_tb=0;
#(T_uart_clk/2);
Uart_clk_tb=1;
#(T_uart_clk/2);   
end
////////////////////////////////
////////  reset task   ////////
//////////////////////////////
task reset;
begin
rst_n_tb=0;
#(2*T_ref_clk);
rst_n_tb=1;
end
endtask

////////////////////////////////
//      initialize task     ///
//////////////////////////////
task initialize;
begin
rx_in_tb=1;   
end
endtask
////////////////////////////////
//       glitch task        ///
//////////////////////////////
task start_glitch;
begin
rx_in_tb=0;
#T_rx;
rx_in_tb=1;
#(3*T_tx);
end
endtask



///////////////////////////////////////////////////
//           REG_FILE_WRITE_CMD task           ///
/////////////////////////////////////////////////
task REG_FILE_WRITE_CMD;
parameter frame0_width=8;
parameter frame1_width=8;
parameter frame2_width=8;
integer i;
input start_bit;
input stop_bit;
input [frame0_width-1:0]frame0_bits;
input frame0_parity_bit;
input [frame1_width-1:0]frame1_bits;
input frame1_parity_bit;
input [frame2_width-1:0]frame2_bits;
input frame2_parity_bit;
begin
    rx_in_tb=start_bit;
    #(T_tx);


 for(i=0 ;i<frame0_width;i=i+1)begin
    rx_in_tb= frame0_bits[i];
    #(T_tx);       
 end

    rx_in_tb=frame0_parity_bit;
    #(T_tx);
    rx_in_tb=stop_bit;
    #(T_tx);  
    #(T_rx)   ;


     rx_in_tb=start_bit;
    #(T_tx);
 for(i=0 ;i<frame1_width;i=i+1)begin
    rx_in_tb= frame1_bits[i];
    #(T_tx);       
 end

    rx_in_tb=frame1_parity_bit;
    #(T_tx);
    rx_in_tb=stop_bit;
    #(T_tx); 
#(T_rx)   ;

    rx_in_tb=start_bit;
    #(T_tx);
 for(i=0 ;i<frame2_width;i=i+1)begin
    rx_in_tb= frame2_bits[i];
    #(T_tx);       
 end
 
    rx_in_tb=frame2_parity_bit;
    #(T_tx);
    rx_in_tb=stop_bit;
    #(T_tx); 
    #(T_rx)   ;
end
endtask


///////////////////////////////////////////////////
//           REG_FILE_READ_CMD task            ///
/////////////////////////////////////////////////
task REG_FILE_READ_CMD;
parameter frame0_width=8;
parameter frame1_width=8;
integer i;
input start_bit;
input stop_bit;
input [frame0_width-1:0]frame0_bits;
input frame0_parity_bit;
input [frame1_width-1:0]frame1_bits;
input frame1_parity_bit;
begin
    rx_in_tb=start_bit;
    #(T_tx);


 for(i=0 ;i<frame0_width;i=i+1)begin
    rx_in_tb= frame0_bits[i];
    #(T_tx);       
 end

    rx_in_tb=frame0_parity_bit;
    #(T_tx);
    rx_in_tb=stop_bit;
    #(T_tx);     
#(T_rx)   ;

     rx_in_tb=start_bit;
    #(T_tx);
 for(i=0 ;i<frame1_width;i=i+1)begin
    rx_in_tb= frame1_bits[i];
    #(T_tx);       
 end

    rx_in_tb=frame1_parity_bit;
    #(T_tx);
    rx_in_tb=stop_bit;
    #(T_tx); 
 #(T_rx)   ;
end
endtask


///////////////////////////////////////////////////
//           ALU_OPER_W_OP_CMD_ task           ///
/////////////////////////////////////////////////
task ALU_OPER_W_OP_CMD;
parameter frame0_width=8;
parameter frame1_width=8;
parameter frame2_width=8;
parameter frame3_width=8;
integer i;
input start_bit;
input stop_bit;
input [frame0_width-1:0]frame0_bits;
input frame0_parity_bit;
input [frame1_width-1:0]frame1_bits;
input frame1_parity_bit;
input [frame2_width-1:0]frame2_bits;
input frame2_parity_bit;
input [frame3_width-1:0]frame3_bits;
input frame3_parity_bit;
begin
    rx_in_tb=start_bit;
    #(T_tx);


 for(i=0 ;i<frame0_width;i=i+1)begin
    rx_in_tb= frame0_bits[i];
    #(T_tx);       
 end

    rx_in_tb=frame0_parity_bit;
    #(T_tx);
    rx_in_tb=stop_bit;
    #(T_tx);     

#(T_rx)   ;
     rx_in_tb=start_bit;
    #(T_tx);
 for(i=0 ;i<frame1_width;i=i+1)begin
    rx_in_tb= frame1_bits[i];
    #(T_tx);       
 end

    rx_in_tb=frame1_parity_bit;
    #(T_tx);
    rx_in_tb=stop_bit;
    #(T_tx); 

#(T_rx)   ;
    rx_in_tb=start_bit;
    #(T_tx);
 for(i=0 ;i<frame2_width;i=i+1)begin
    rx_in_tb= frame2_bits[i];
    #(T_tx);       
 end
 
    rx_in_tb=frame2_parity_bit;
    #(T_tx);
    rx_in_tb=stop_bit;
    #(T_tx); 
#(T_rx)   ;

    rx_in_tb=start_bit;
    #(T_tx);
 for(i=0 ;i<frame3_width;i=i+1)begin
    rx_in_tb= frame3_bits[i];
    #(T_tx);       
 end
 
    rx_in_tb=frame3_parity_bit;
    #(T_tx);
    rx_in_tb=stop_bit;
    #(T_tx);  #(T_rx)   ;     
end
endtask



///////////////////////////////////////////////////
//           ALU_OPER_W_NOP_CMD_ task          ///
/////////////////////////////////////////////////
task ALU_OPER_W_NOP_CMD;
parameter frame0_width=8;
parameter frame1_width=8;
integer i;
input start_bit;
input stop_bit;
input [frame0_width-1:0]frame0_bits;
input frame0_parity_bit;
input [frame1_width-1:0]frame1_bits;
input frame1_parity_bit;
begin
    rx_in_tb=start_bit;
    #(T_tx);


 for(i=0 ;i<frame0_width;i=i+1)begin
    rx_in_tb= frame0_bits[i];
    #(T_tx);       
 end

    rx_in_tb=frame0_parity_bit;
    #(T_tx);
    rx_in_tb=stop_bit;
    #(T_tx);     

#(T_rx)   ;
     rx_in_tb=start_bit;
    #(T_tx);
 for(i=0 ;i<frame1_width;i=i+1)begin
    rx_in_tb= frame1_bits[i];
    #(T_tx);       
 end

    rx_in_tb=frame1_parity_bit;
    #(T_tx);
    rx_in_tb=stop_bit;
    #(T_tx); #(T_rx)   ;
      
end
endtask

endmodule