`timescale 1ns / 1ps
module alu_tb;
    reg [7:0] A, B;
    reg [2:0] opcode;
    wire [7:0] ALU_Out;

    // Instantiate the ALU module
    alu uut (A, B, opcode, ALU_Out);

    initial begin
        // Test Addition
        A = 8'd10; B = 8'd5; opcode = 3'b000; #10;
        
        // Test Subtraction
        A = 8'd20; B = 8'd8; opcode = 3'b001; #10;
        
        // Test AND
        A = 8'b10101010; B = 8'b11001100; opcode = 3'b010; #10;

        $finish; // End simulation
    end
endmodule
