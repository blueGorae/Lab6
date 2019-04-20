`include "opcodes.v"

module MEM_WB( clk, reset_n, MemData_in, ALU_Result_in, rd_in, MemtoReg_in, RegWrite_in, is_wwd_in, is_done_in, MemData_out, ALU_Result_out, rd_out, MemtoReg_out, RegWrite_out, is_wwd_out, is_done_out);

    input clk, reset_n;

    input [`WORD_SIZE-1 : 0] MemData_in;
    input [`WORD_SIZE-1 : 0] ALU_Result_in;
    input [1:0] rd_in;
    input MemtoReg_in;
    input RegWrite_in;
    input is_wwd_in;
    input is_done_in;

    output [`WORD_SIZE-1 : 0] MemData_out;
    output [`WORD_SIZE-1 : 0] ALU_Result_out;
    output [1:0] rd_out;
    output MemtoReg_out;
    output RegWrite_out;
    output is_wwd_out;
    output is_done_out;

    reg [`WORD_SIZE-1 : 0] MemData_out;
    reg [`WORD_SIZE-1 : 0] ALU_Result_out;
    reg [1:0] rd_out;
    reg MemtoReg_out;
    reg RegWrite_out;
    reg is_wwd_out;
    reg is_done_out;


    // reg [`WORD_SIZE-1 : 0] MemData_reg;
    // reg [`WORD_SIZE-1 : 0] ALU_Result_reg;
    // reg [1:0] rd_reg;
    // reg MemtoReg_reg;
    // reg RegWrite_reg;
    // reg is_wwd_reg;

    integer i;

    initial begin
        i = 0;
        MemData_out = `WORD_SIZE'bz;
        ALU_Result_out = `WORD_SIZE'bz;
        rd_out = 2'bz;
        MemtoReg_out = 1'b0;
        RegWrite_out = 1'b0;
        is_wwd_out = 1'b0;
        is_done_out = 1'b0;

        
        

        // MemData_out = MemData_reg;
        // ALU_Result_out = ALU_Result_reg;
        // rd_out = rd_reg;
        // MemtoReg_out = MemtoReg_reg;
        // RegWrite_out = RegWrite_reg;
        // is_wwd_out = is_wwd_reg;
    end

    always @(negedge reset_n) begin
        i = 0;
        MemData_out = `WORD_SIZE'bz;
        ALU_Result_out = `WORD_SIZE'bz;
        rd_out = 2'bz;
        MemtoReg_out = 1'b0;
        RegWrite_out = 1'b0;
        is_wwd_out = 1'b0;
        is_done_out = 1'b0;


        // MemData_out = MemData_reg;
        // ALU_Result_out = ALU_Result_reg;
        // rd_out = rd_reg;
        // MemtoReg_out = MemtoReg_reg;
        // RegWrite_out = RegWrite_reg;
        // is_wwd_out = is_wwd_reg;

    end

    always @(posedge clk) begin

        if(reset_n && i >= 3)begin
            MemData_out = MemData_in;
            ALU_Result_out = ALU_Result_in;
            rd_out = rd_in;
            MemtoReg_out = MemtoReg_in;
            RegWrite_out = RegWrite_in;
            is_wwd_out = is_wwd_in;
            is_done_out = is_done_in;

            // MemData_reg = MemData_in;
            // ALU_Result_reg = ALU_Result_in;
            // rd_reg = rd_in;
            // MemtoReg_reg = MemtoReg_in;
            // RegWrite_reg = RegWrite_in;
            // is_wwd_reg = is_wwd_in;

        end
        else if(reset_n) begin
            i = i + 1;
        end
    end
    
endmodule // 