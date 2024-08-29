module fsm #(parameter  width=3 )(
    input rx_clk,rst_n,
    input rx_in,
    input parity_enable,
    input edge_done_tick,data_done_tick,
    input parity_error,start_glitch,stop_error,
    output reg deserializer_enable , data_sampler_enable,
    output reg parity_check_enable ,start_check_enable ,stop_check_enable,
    output reg counter_enable,
    output reg data_valid
);
reg [width-1:0]current_state,next_state;

//////////////////////////////////////
///////   state_encoding       //////
////////////////////////////////////
localparam  IDLE=0,
            START=1,
            DATA=2,
            PARITY=3,
            STOP=4,
            check_error=5;
///////////////////////////////////
///////   state_transition     ///
/////////////////////////////////
always @(posedge rx_clk , negedge rst_n) begin
    if(!rst_n)
    current_state<=IDLE;
    else
    current_state<=next_state;
end
////////////////////////////////
////    next_state_logic   ////
//////////////////////////////
always @(*) begin
    next_state=IDLE;
    case (current_state)
        IDLE: begin
            if(!rx_in)
            next_state=START;
            else
            next_state=IDLE;
        end 
        START: begin
            if(start_glitch)
            next_state=IDLE;
            else if(edge_done_tick)
            next_state=DATA;
            else
            next_state=START;
        end
        DATA: begin
            if(!data_done_tick || !edge_done_tick)
            next_state=DATA;
            else if (parity_enable)
            next_state=PARITY;  
            else
            next_state=STOP;     
        end 
        PARITY: begin
            if(edge_done_tick)
            next_state=STOP;
            else
            next_state=PARITY;  
        end           
        STOP: begin
            if(edge_done_tick)
            next_state=check_error;
            else
            next_state=STOP;   
        end      
        check_error: begin
            if(!rx_in)
            next_state=START;
            else
            next_state=IDLE;
        end
        default: next_state=IDLE;
    endcase
end
////////////////////////////////
////      output_logic     ////
//////////////////////////////
always @(*) begin
     deserializer_enable=0;
     data_sampler_enable=1;
     parity_check_enable=0;
     start_check_enable=0;
     stop_check_enable=0;
     counter_enable=1;
     data_valid=0;
    case (current_state)
        IDLE: begin
            data_sampler_enable=0;
            counter_enable=0;
        end 
        START: begin
            if(edge_done_tick)
            start_check_enable=1;
            else
            start_check_enable=0;
        end
        DATA:begin
            if(edge_done_tick)
            deserializer_enable=1;
            else
            deserializer_enable=0; 
        end 
        PARITY:begin
            if(edge_done_tick)
            parity_check_enable=1;
            else
            parity_check_enable=0;
        end
        STOP: begin
            if(edge_done_tick)
            stop_check_enable=1;
            else
            stop_check_enable=0;            
        end
        check_error:begin
            counter_enable=0;
            if(stop_error || parity_error)
            data_valid=0;
            else
            data_valid=1;
        end
        default: begin
            deserializer_enable=0;
            data_sampler_enable=1;
            parity_check_enable=0;
            start_check_enable=0;
            stop_check_enable=0;
            counter_enable=1;
            data_valid=0;
        end
    endcase
end
endmodule

