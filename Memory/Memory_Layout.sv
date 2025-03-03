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

    // Memory array: 256 bytes 
    reg [7:0] memory [0:255];

    integer i;

    // Reset and Read/Write logic
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            // Reset memory and data_out
            for (i = 0; i < 256; i = i + 1) begin
                memory[i] <= 8'b0; // Reset 
            end
            data_out <= 8'b0; // Reset data output
        end else begin
            if (write_en) begin
                // Write operation
                memory[addr] <= data_in; // Write data_in 
            end else begin
                // Read operation
                data_out <= memory[addr]; // Read data 
            end
        end
    end

endmodule

`endif