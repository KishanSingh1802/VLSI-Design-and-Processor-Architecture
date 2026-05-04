`timescale 1ns / 1ps
module fir_filter_tb;
    reg clk, rst;
    reg signed [7:0] data_in;
    wire signed [15:0] data_out;

    fir_filter uut (clk, rst, data_in, data_out);

    always #5 clk = ~clk;

    initial begin
        clk = 0; rst = 1; data_in = 0;
        #15 rst = 0;

        // Apply input samples
        #10 data_in = 8'd10; // First sample
        #10 data_in = 8'd20; // Second sample
        #10 data_in = 8'd10; // Third sample
        #10 data_in = 8'd0;

        #50 $finish;
    end
endmodule
