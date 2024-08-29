module clk_div #(parameter div_ratio_width=8)(
    input  i_ref_clk,
    input  i_rst_n,
    input  i_clk_en,
    input  [div_ratio_width-1:0]i_div_ratio,
    output  o_div_clk
);
reg [div_ratio_width-1:0]counter;
reg clk_reg;


assign ClK_DIV_EN=i_clk_en && i_div_ratio!=0 && i_div_ratio!=1 ;
assign o_div_clk=(ClK_DIV_EN)?clk_reg:i_ref_clk;

always @(posedge i_ref_clk , negedge i_rst_n) begin
    if(!i_rst_n)begin
        counter<=0;
        clk_reg<=0;
    end
    else if(ClK_DIV_EN) begin
        counter<=(counter==(i_div_ratio))?1:counter+1;
        clk_reg<=( (counter==(i_div_ratio>>1)) || (counter==i_div_ratio) || (counter==0)  )?~o_div_clk:o_div_clk ;
    end

end
endmodule

