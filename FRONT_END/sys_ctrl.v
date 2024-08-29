module sys_ctrl #(parameter data_width = 8 , addr_width=4 , alu_fn_width=4)(
    input clk , rst_n,
    input [(data_width*2)-1:0]alu_out ,
    input out_valid,
    input [data_width-1:0]rx_P_data,
    input rx_d_valid,
    input full_flag,
    input [data_width-1:0]rd_data,
    input rd_data_valid,
    output reg alu_en,
    output reg [alu_fn_width-1:0]alu_fun ,
    output reg clk_en,
    output reg [addr_width-1:0]address,
    output reg w_en , r_en,
    output reg [data_width-1:0]w_data,
    output reg [data_width-1:0]tx_P_data,
    output reg w_inc,
    output reg clk_div_en
);



assign RF_WR_CMD_flag = (rx_d_valid && rx_P_data==8'haa);
assign RF_RD_CMD_flag = (rx_d_valid && rx_P_data==8'hbb); 
assign ALU_OPER_W_OP_CMD_flag = (rx_d_valid && rx_P_data==8'hcc);
assign ALU_OPER_W_NOP_CMD_flag = (rx_d_valid && rx_P_data==8'hdd);




reg [3:0]current_state,next_state;
reg [addr_width-1:0]address_reg;
reg addr_en;

////////////////////////////////////
///////  state_encoding   ///////// 
//////////////////////////////////
localparam IDLE=4'd0 ,

           RF_WR_CMD=4'd1 , 
           RF_Wr_Addr=4'd2 ,          
           RF_Wr_Data=4'd3,


           RF_RD_CMD=4'd4,
           RF_Rd_Addr=4'd5 ,

           ALU_OPER_W_OP_CMD=4'd6,
           Operand_A=4'd7,
           Operand_B=4'd8 ,
           ALU_FUN_LSB=4'd9,
           ALU_FUN_MSB=4'd10,

           ALU_OPER_W_NOP_CMD=4'd11;
//////////////////////////////////////
///////   state_transition     //////
////////////////////////////////////
always @(posedge clk , negedge rst_n ) begin
    if(!rst_n)
    current_state<=IDLE;
    else
    current_state<=next_state;
end

always @(posedge clk , negedge rst_n ) begin
    if(!rst_n)
    address<=0;
    else if(addr_en)
    address<=address_reg;
end
////////////////////////////////////
////     next_state_logic      ////
//////////////////////////////////
always @(*) begin
    case (current_state)
        IDLE  :  begin
            case ({RF_WR_CMD_flag , RF_RD_CMD_flag , ALU_OPER_W_OP_CMD_flag ,ALU_OPER_W_NOP_CMD_flag})
                4'b1000: next_state = RF_WR_CMD;
                4'b0100: next_state = RF_RD_CMD;
                4'b0010: next_state = ALU_OPER_W_OP_CMD;
                4'b0001: next_state = ALU_OPER_W_NOP_CMD;
                default: next_state = IDLE;
            endcase            
        end


        RF_WR_CMD :begin
           if(rx_d_valid)
           next_state= RF_Wr_Addr;
           else
           next_state= RF_WR_CMD;
        end


        RF_Wr_Addr: begin
           if(rx_d_valid)
           next_state= RF_Wr_Data;
           else
           next_state= RF_Wr_Addr;            
        end    


        RF_Wr_Data:begin
           next_state = IDLE; 
        end



        RF_RD_CMD: begin
           if(rx_d_valid)
           next_state= RF_Rd_Addr;
           else
           next_state= RF_RD_CMD;            
        end



        RF_Rd_Addr: begin
            if(full_flag || !rd_data_valid)
            next_state = RF_Rd_Addr;
            else
            next_state = IDLE; 
        end


        ALU_OPER_W_OP_CMD:begin
           if(rx_d_valid)
           next_state= Operand_A;
           else
           next_state= ALU_OPER_W_OP_CMD;              
        end


        Operand_A:begin
           if(rx_d_valid)
           next_state= Operand_B;
           else
           next_state= Operand_A;              
        end


        Operand_B :begin
           if(rx_d_valid)
           next_state= ALU_FUN_LSB;
           else
           next_state= Operand_B;                
        end



        ALU_FUN_LSB:begin
            if(full_flag || !out_valid)
            next_state = ALU_FUN_LSB;
            else
            next_state = ALU_FUN_MSB; 
        end



        ALU_FUN_MSB:begin
            if(full_flag || !out_valid)
            next_state = ALU_FUN_MSB;
            else
            next_state = IDLE; 
        end



        ALU_OPER_W_NOP_CMD:begin
           if(rx_d_valid)
           next_state= ALU_FUN_LSB;
           else
           next_state= ALU_OPER_W_NOP_CMD;             
        end


        default: next_state=current_state;
    endcase
end
////////////////////////////////
////     output_logic      ////
//////////////////////////////
always @(*) begin
alu_en=0;
alu_fun =0;
clk_en=0;
address_reg=0;
w_en =0;
r_en=0;
w_data=0;
tx_P_data=0;
w_inc=0;
clk_div_en=1;   
addr_en=0; 
    case (current_state)
        IDLE  :  begin
            alu_en=0;
            alu_fun =0;
            clk_en=0;
            w_en =0;
            r_en=0;
            w_data=0;
            tx_P_data=0;
            w_inc=0;   
        end

        RF_Wr_Addr: begin
            if(!rx_d_valid) begin
            addr_en=1;
            address_reg=rx_P_data; 
            end
        end

        RF_Wr_Data:begin
            w_data=rx_P_data;
            w_en=1;  
        end

        RF_RD_CMD:begin
            if(rx_d_valid) begin
            addr_en=1;
            address_reg=rx_P_data; 
            end            
        end


        RF_Rd_Addr: begin
            r_en=1;
           if(rd_data_valid) begin
            tx_P_data=rd_data;
            w_inc=1; 
           end
        end



        ALU_OPER_W_OP_CMD:begin
            clk_en=1;
        end


        Operand_A:begin
            clk_en=1;
            if(!rx_d_valid)begin
            address_reg=4'd0;
            addr_en=1;
            w_data=rx_P_data;
            if((  ~|(address)  ))
            w_en=1;                
            end
            
        end


        Operand_B :begin
            clk_en=1;
            if(!rx_d_valid)begin         
            address_reg=4'd1;
            addr_en=1;
            w_data=rx_P_data;
            if(address == 4'd1)
            w_en=1;                
            end          
        end


        ALU_FUN_LSB:begin
            clk_en=1;
            alu_fun=rx_P_data;
            alu_en=1;
            if(out_valid) begin
               tx_P_data=alu_out[7:0];
               w_inc=1; 
            end  
        end


        ALU_FUN_MSB:begin
            clk_en=1;
            alu_fun=rx_P_data;
            alu_en=1;
            if(out_valid) begin
               tx_P_data=alu_out[15:8];
               w_inc=1; 
            end  
        end        



        ALU_OPER_W_NOP_CMD:begin
           clk_en=1; 
        end

    endcase
end



endmodule
