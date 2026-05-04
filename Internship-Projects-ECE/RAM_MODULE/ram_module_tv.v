`timescale 1ns / 1ps
module ram_tb;
    reg clk, we;
    reg [3:0] addr;
    reg [7:0] data_in;
    wire [7:0] data_out;

    // Instantiate RAM
    ram_module uut (clk, we, addr, data_in, data_out);

    // Clock Generation (Toggle every 5 time units)
    always #5 clk = ~clk;

    initial begin
        // Initialize
        clk = 0; we = 0; addr = 0; data_in = 0;
        
        // Task: Write value 8'hA5 to address 4'h3
        #10; addr = 4'h3; data_in = 8'hA5; we = 1;
        
        // Task: Read back from address 4'h3
        #10; we = 0; 
        
        #20; $finish;
    end
endmodule
