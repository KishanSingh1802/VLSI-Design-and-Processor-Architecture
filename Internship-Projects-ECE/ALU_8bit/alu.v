`timescale 1ns / 1ps
// Module for a basic 8-bit ALU
module alu(
    input [7:0] A, B,      // 8-bit input operands
    input [2:0] opcode,    // 3-bit control signal to select operation
    output reg [7:0] ALU_Out // 8-bit output result
);

    always @(*)
    begin
        case(opcode)
            3'b000: ALU_Out = A + B;       // Addition
            3'b001: ALU_Out = A - B;       // Subtraction
            3'b010: ALU_Out = A & B;       // Bitwise AND
            3'b011: ALU_Out = A | B;       // Bitwise OR
            3'b100: ALU_Out = ~A;          // Bitwise NOT (on input A)
            default: ALU_Out = 8'h00;      // Default case
        endcase
    end
endmodule
