`timescale 1ns / 1ps
// 3-Tap FIR Filter Design
module fir_filter(
    input clk,
    input rst,
    input signed [7:0] data_in,     // Input sample x[n]
    output reg signed [15:0] data_out // Filtered output y[n]
);

    // Filter Coefficients (Example: Simple Moving Average)
    parameter h0 = 8'd2; 
    parameter h1 = 8'd3;
    parameter h2 = 8'd2;

    // Registers to store delayed samples
    reg signed [7:0] x1, x2;

    always @(posedge clk) begin
        if (rst) begin
            x1 <= 8'd0;
            x2 <= 8'd0;
            data_out <= 16'd0;
        end else begin
            // Shift the samples (Delay Line)
            x1 <= data_in; // x[n-1]
            x2 <= x1;      // x[n-2]

            // MAC Operation: Multiply and Accumulate
            data_out <= (h0 * data_in) + (h1 * x1) + (h2 * x2);
        end
    end
endmodule
