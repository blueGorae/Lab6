`include "opcodes.v"

module FlushUnit(clk, reset_n, is_NOP, PCSrc, B_OP, B_cond, flush_signal);
    input clk, reset_n;
    input is_NOP;
    input [1:0] PCSrc;
    input B_OP;
    input B_cond;

    output flush_signal;
    reg flush_signal;

    initial begin
        flush_signal <= 0;
        
    end

    always @ (negedge reset_n) begin
        flush_signal <= 0;
    end

    always @(*) begin
        // if(!is_NOP) begin
            if(PCSrc == 2) begin
                flush_signal <= 1;
            end
            else if((B_cond && B_OP) || (PCSrc == 1)) begin
                flush_signal <= 1;
            end
            else if( PCSrc == 0) begin
                flush_signal <= 0;
            end
            else begin
                flush_signal <=0;
            end
        // end
        // else begin
        //     flush_signal <=0;
        // end
    end
endmodule


        




