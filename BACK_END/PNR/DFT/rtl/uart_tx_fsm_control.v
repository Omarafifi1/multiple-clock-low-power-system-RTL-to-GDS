module fsm_controller#(parameter mux_width=2,width=3)(
input data_valid,serilaizer_done,parity_enable,
input clk,rst_n,
output reg serilaizer_enable,busy,
output reg [mux_width-1:0]mux_sel
);

reg [width-1:0]current_state,next_state;
////////////////////////////////////
///////  state_encoding   ///////// 
//////////////////////////////////
localparam IDLE=3'b000,START=3'b001,
           DATA=3'b010,PARITY=3'b011,
           STOP=3'b100;
//////////////////////////////////////
///////   state_transition     //////
////////////////////////////////////
always @(posedge clk , negedge rst_n ) begin
    if(!rst_n)
    current_state<=IDLE;
    else
    current_state<=next_state;
end
////////////////////////////////
////   next_State_logic    ////
//////////////////////////////
always @(*) begin
    next_state=current_state;
    case (current_state)
        IDLE: begin
            if(data_valid)
            next_state=START;
            else
            next_state=IDLE;
        end
        START:begin
            next_state=DATA;
        end
        DATA:begin
            if(serilaizer_done && parity_enable)
            next_state=PARITY;
            else if(serilaizer_done && !parity_enable)
            next_state=STOP;
            else
            next_state=DATA;
        end
        PARITY:begin
            next_state=STOP;
        end
        STOP:begin
            next_state=IDLE;
        end
        default: next_state=current_state;
    endcase
end
////////////////////////////////
////     output_logic      ////
//////////////////////////////
always @(*) begin
    busy=1;
    serilaizer_enable=0;
    case (current_state)
        IDLE: begin   
          busy=0;  
          mux_sel=1; 
        end
        START:begin
            mux_sel=0; 
        end
        DATA:begin
            serilaizer_enable=1;
            mux_sel=2;   
        end
        PARITY:begin
            mux_sel=3; 
        end
        STOP:begin   
            mux_sel=1; 
        end
        default: begin
            busy=1;
            serilaizer_enable=0;
            mux_sel=0;
        end
    endcase
end
endmodule
