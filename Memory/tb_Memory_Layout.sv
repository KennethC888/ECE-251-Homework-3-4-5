///////////////////////////////////////////////////////////////////////////////
//
// Module: Testbench for Memory Layout
//
// Testbench for Memory Layout
//
// module: Memory Layout
// hdl: SystemVerilog
//
// author: Kenneth Chan <kenc0728@gmail.com>
//
///////////////////////////////////////////////////////////////////////////////
`timescale 1ns/100ps
`include "Memory_Layout.sv"

module tb_Memory_Layout;
    // ---------------- DECLARATIONS OF DATA TYPES ----------------
    reg clk; 
    reg rst; // Input operand A
    reg write_en;
    reg [7:0] addr; // Operation selection
    reg [7:0] data_in; 
    wire [7:0] data_out; 


    // ---------------- INSTANTIATE THE Memory Layout MODULE ----------------
    Memory_Layout dut (
        .clk(clk),
        .rst(rst),
        .write_en(write_en),
        .data_in(data_in),
        .data_out(data_out)
    );
// ---------------- CLOCK GENERATION ----------------
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // Toggle clock every 5 time units
    end

    // ---------------- INITIALIZE TEST BENCH ----------------
    initial begin : initialize_variables
        rst = 1;         // Assert reset
        write_en = 0;     // Disable write
        addr = 8'b0;      // Initialize address
        data_in = 8'b0;   // Initialize data_in
        #10;              // Wait for 10 time units
        rst = 0;          // Deassert reset
    end

    // ---------------- DUMP VARIABLES FOR WAVEFORM VIEWING ----------------
    initial begin : dump_variables
        $dumpfile("tb_Memory_Layout.vcd"); // Create a VCD file for waveform viewing
        $dumpvars(0, tb_Memory_Layout);    // Dump all variables in the testbench
    end

    // ---------------- MONITOR OUTPUTS ----------------
    initial begin
        $monitor("Time: %0t | rst=%b | write_en=%b | addr=%h | data_in=%h | data_out=%h",
                 $time, rst, write_en, addr, data_in, data_out);
    end

    // ---------------- APPLY RANDOM STIMULUS ----------------
    initial begin : apply_stimulus
        #20; // Wait for reset to complete

        // Write random data to random addresses
        for (int i = 0; i < 10; i = i + 1) begin
            #10;
            write_en = 1;                // Enable write
            addr = $urandom_range(0, 255); // Random address
            data_in = $urandom_range(0, 255); // Random data
            #10;
            write_en = 0;                // Disable write
        end

        // Read data from random addresses
        for (int i = 0; i < 10; i = i + 1) begin
            #10;
            addr = $urandom_range(0, 255); // Random address
        end

        #100; // Wait for a while
        $finish; // End the simulation
    end
endmodule