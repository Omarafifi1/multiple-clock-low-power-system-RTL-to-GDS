module RF#(parameter data_width=8 , depth=16)(
input wren,rden,clk,rst,
input [data_width-1:0]wrdata,
input [$clog2(depth)-1:0]address,
output reg [data_width-1:0]rddata,
output reg rddata_valid , 
output  [data_width-1:0]reg0 , reg1 , reg2 , reg3
);
reg [data_width-1:0]reg_file[0:depth-1];




assign reg0  =reg_file[0];
assign reg1  =reg_file[1];
assign reg2  =reg_file[2];
assign reg3  =reg_file[3];

integer i;
always @(posedge clk , negedge rst) begin
    if(!rst)begin
        rddata_valid<=0;
        rddata<=0;
        for (i=4  ; i!=depth ; i=i+1 ) begin
            reg_file[i]<=0;
        end
        reg_file[0]<=8'd0;
        reg_file[1]<=8'd0;
        reg_file[2]<={6'd32,1'b0,1'b1};
        reg_file[3]<=8'd32;
    end
    else if(wren && !rden)
    reg_file[address]<=wrdata;
    else if(rden && !wren) begin
        rddata_valid<=1;
        rddata<=reg_file[address];
    end
    
end



endmodule