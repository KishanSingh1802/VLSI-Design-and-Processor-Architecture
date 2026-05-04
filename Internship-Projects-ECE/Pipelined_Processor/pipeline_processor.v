`timescale 1ns / 1ps
module pipelined_processor (
    input clk, reset,
    input [7:0] instruction_in,
    output reg [7:0] alu_out
);
    // Pipeline Registers
    reg [7:0] if_id_reg, id_ex_reg, ex_wb_reg;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            if_id_reg <= 0; id_ex_reg <= 0; ex_wb_reg <= 0; alu_out <= 0;
        end else begin
            // Stage 1: Instruction Fetch (IF)
            if_id_reg <= instruction_in;
            // Stage 2: Instruction Decode (ID)
            id_ex_reg <= if_id_reg;
            // Stage 3: Execute (EX)
            ex_wb_reg <= id_ex_reg + 1; // Simple increment logic for demo
            // Stage 4: Write Back (WB)
            alu_out <= ex_wb_reg;
        end
    end
endmodule
