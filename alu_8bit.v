`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.11.2024 16:32:09
// Design Name: 
// Module Name: alu_8bit
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


module alu_8bit (
    input [7:0] a,       
    input [7:0] b,       
    input [2:0] sel,     
    output reg [8:0] result  // 9-bit result to handle overflow (no flags)
);

always @(*) begin
    case(sel)
        3'b000: begin
            result = {1'b0, a} + {1'b0, b};  
        end

        3'b001: begin
            result = {1'b0, a} - {1'b0, b}; 
        end

        3'b010: begin
        result = {a[6:0], a[7]};  // Rotate left by 1 bit
        end

        3'b011: begin
            result = {a[0], a[7:1]};  // Rotate right by 1 bit
        end

        3'b100: begin
            result = a & b;  
        end

        3'b101: begin
            result = ~(a & b);  
        end

        3'b110: begin
            result = ~(a | b);  
        end

        3'b111: begin
            result = a | b;  
        end

        default: begin
            result = 9'b0;  // Default case, zero result
        end
    endcase
end
endmodule

