module bit16_alu #(parameter data_width =8 )(
    input [data_width-1:0]a,b,
    input [3:0]alu_fun,
    input clk,rst_n,
    input enable ,
    output reg [(data_width*2)-1:0]alu_out,
    output reg out_valid

);


always @(posedge clk , negedge rst_n) begin
    if(!rst_n) begin
        out_valid<=0;
        alu_out<=0;
    end
    else if(enable) begin
    out_valid<=1'b1;    
    case (alu_fun)
        4'b0000:begin
            alu_out<=a+b;
        end
        4'b0001:begin
            alu_out<=a-b;
        end
        4'b0010:begin
            alu_out<=a*b;
        end
        4'b0011:begin
            alu_out<= a / b;
        end
        4'b0100:begin
            alu_out<= a & b;
        end
        4'b0101:begin
            alu_out<= a | b;
        end
        4'b0110:begin
            alu_out<= ~(a & b);
        end
        4'b0111:begin
            alu_out<=~(a | b);
        end
        4'b1000:begin
            alu_out<=(a ^ b);
        end
        4'b1001:begin
            alu_out<=~(a ^ b);
        end
        4'b1010:begin          
            if(a==b)
            alu_out<=16'd1;
            else
            alu_out<=16'd0;
        end
        4'b1011:begin   
            if(a>b)
            alu_out<=16'd2;
            else
            alu_out<=16'd0;
        end
        4'b1100:begin       
            if(a<b)
            alu_out<=16'd3;
            else
            alu_out<=16'd0;
        end
        4'b1101:begin
            alu_out<= a>>1'b1;      
        end
        4'b1110:begin
            alu_out <= a<<1'b1;  
        end
        default:begin
            out_valid<=1'd0;
            alu_out<=16'd0;
        end    
    endcase  

    end
    else
    out_valid<=1'd0;
end
endmodule
