`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.11.2024 16:35:07
// Design Name: 
// Module Name: alu_8bit_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module alu_8bit__tb;
    reg [7:0] a; 
    reg [7:0] b;         
    reg [2:0] sel;          
    wire [8:0] result;      // 9-bit result

    // Instantiate the ALU
    alu_8bit uut (
        .a(a),
        .b(b),
        .sel(sel),
        .result(result)
    );

    // Test Procedure
    initial begin
        // Initialize inputs
        a = 8'b00000000;
        b = 8'b00000000;
        sel = 3'b000;

        // Display Header
        $display("ALU Testbench Started...");
        $display("Sel | A        | B        | Result");
        $display("-------------------------------------");

        a = 8'b01010101; b = 8'b00110011; sel = 3'b000;
        #10; $display("%b  | %b | %b | %b", sel, a, b, result);

        a = 8'b01101100; b = 8'b00001111; sel = 3'b001;
        #10; $display("%b  | %b | %b | %b", sel, a, b, result);

        a = 8'b10101010; b = 8'b00000000; sel = 3'b010;
        #10; $display("%b  | %b | %b | %b", sel, a, b, result);

        a = 8'b10101010; b = 8'b00000000; sel = 3'b011;
        #10; $display("%b  | %b | %b | %b", sel, a, b, result);

        a = 8'b11001100; b = 8'b10101010; sel = 3'b100;
        #10; $display("%b  | %b | %b | %b", sel, a, b, result);

        a = 8'b11001100; b = 8'b10101010; sel = 3'b101;
        #10; $display("%b  | %b | %b | %b", sel, a, b, result);

        a = 8'b11001100; b = 8'b10101010; sel = 3'b110;
        #10; $display("%b  | %b | %b | %b", sel, a, b, result);

        a = 8'b11001100; b = 8'b10101010; sel = 3'b111;
        #10; $display("%b  | %b | %b | %b", sel, a, b, result);

        $display("ALU Testbench Completed...");
        $finish;
    end
endmodule

