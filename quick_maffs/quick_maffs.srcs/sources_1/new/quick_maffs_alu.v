`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/10/2018 10:32:34 PM
// Design Name: 
// Module Name: quick_maffs_alu
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


module quick_maffs_alu(
    input enable,
    input clk,
    
    input [4095:0] op1,
    input [4095:0] op2,
    input [3:0] instruction,
    output reg [4095:0] result
    );

    always @(posedge clk)
        if (enable)
        begin
            case (instruction)
                4'h0: // blank low value
                begin
                    result = 4096'b0;
                end
                4'h1: // blank high value
                begin
                    result = ~(4096'b0); // LOL
                end
                4'h2:
                begin // invert only op1
                    result = ~op1;
                end
                4'h3:
                begin
                    result = op1 + op2;
                end
                4'h4: // bitwise-and operands
                begin
                    result = op1 & op2;
                end
                4'h5: // bitwise-or operands
                begin
                    result = op1 | op2;
                end
                4'h6: // bitwise-xor operands
                begin
                    result = op1 ^ op2;
                end
            endcase
        end
endmodule
