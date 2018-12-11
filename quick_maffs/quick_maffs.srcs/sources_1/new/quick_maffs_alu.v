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
    input [4095:0] op1,
    input [4095:0] op2,
    input [3:0] instruction,
    output reg [4095:0] result
    );
    
    always @(*)
        case (instruction)
            1'h0: // blank low value
            begin
                assign result = 0;
            end
            1'h1: // blank high value
            begin
                assign result = 1;
            end
            1'h2:
            begin // invert only op1
                assign result = ~op1;
            end
            1'h3:
            begin
                assign result = op1 + op2;
            end
            1'h4: // multiply operands
            begin
                assign result = op1 * op2;
            end
            1'h5: // bitwise-and operands
            begin
                assign result = op1 & op2;
            end
            1'h6: // bitwise-or operands
            begin
                assign result = op1 | op2;
            end
            1'h7: // bitwise-xor operands
            begin
                assign result = op1 ^ op2;
            end
        endcase
endmodule
