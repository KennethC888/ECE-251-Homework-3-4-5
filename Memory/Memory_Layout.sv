//////////////////////////////////////////////////////////////////////////////
//
// Module: Memory Layout
//
// Memory Layout
//
// module: Memory Layout
// hdl: SystemVerilog
// modeling: Behavior Level Modeling
//
// author: Kenneth Chan <kenc0728@gmail.com>
//
///////////////////////////////////////////////////////////////////////////////
`ifndef Memory_Layout
`define Memory_Layout

module Memory_Layout (
    input wire clk,              
    input wire rst,              
    input wire write_en,          // Write enable (1 is write, 0 is read)
    input wire [7:0] addr,       // 8-bit address input
    input wire [7:0] data_in,    // 8-bit data input (writing)
    output reg [7:0] data_out    // 8-bit data output (reading)
);

    // Memory array: 256 bytes (8-bit address space)
    reg [7:0] memory [0:255];

    integer i;
    initial begin
        for (i = 0; i < 256; i = i + 1) begin
            memory[i] = 8'b0; // Initialize all memory locations to 0
        end
    end

    // Reset 
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            for (i = 0; i < 256; i = i + 1) begin
                memory[i] <= 8'b0; // Reset all memory locations to 0
            end
            data_out <= 8'b0; // Reset data output
        end
    end

    // Read/Write logic
    always @(posedge clk) begin
        if (write_en) begin
            // Write operation
            memory[addr] <= data_in; // Write data_in to the specified address
        end else begin
            // Read operation
            data_out <= memory[addr]; // Read data from the specified address
        end
    end

endmodule

`endif