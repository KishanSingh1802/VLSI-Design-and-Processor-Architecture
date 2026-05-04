`timescale 1ns / 1ps
// Module for a Synchronous 16x8 RAM
module ram_module(
    input clk,                  // Clock signal
    input we,                   // Write Enable (1 = Write, 0 = Read)
    input [3:0] addr,           // 4-bit Address (covers 16 locations)
    input [7:0] data_in,        // 8-bit Data Input
    output reg [7:0] data_out   // 8-bit Data Output
);

    // Declare memory array: 16 depth, 8-bit width
    reg [7:0] memory [15:0];

    // Synchronous Write and Read Logic
    always @(posedge clk) begin
        if (we) begin
            // Write operation
            memory[addr] <= data_in;
        end else begin
            // Read operation
            data_out <= memory[addr];
        end
    end
endmodule
