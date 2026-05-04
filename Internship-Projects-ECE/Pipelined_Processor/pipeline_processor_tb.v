`timescale 1ns / 1ps
module processor_tb;
    reg clk, reset;
    reg [7:0] instruction_in;
    wire [7:0] alu_out;

    pipelined_processor uut (clk, reset, instruction_in, alu_out);

    always #5 clk = ~clk;
    initial begin
        clk = 0; reset = 1; #10;
        reset = 0; instruction_in = 8'h01; #10;
        instruction_in = 8'h02; #10;
        instruction_in = 8'h03; #40; // Allow time to fill pipeline
        $finish;
    end
endmodule
