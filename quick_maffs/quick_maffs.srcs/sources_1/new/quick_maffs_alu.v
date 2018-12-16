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
    
    input [1023:0] op1,
    input [1023:0] op2,
    input [3:0] instruction,
    output reg [1023:0] result,
    output reg [0:0] overflow,
    output reg [0:0] carryout
    );

    always @(posedge clk)
        if (enable)
        begin
            case (instruction)
                4'h0: // blank low value
                begin
                    result = 1023'b0;
                    carryout=1'b0;
                end
                4'h1: // blank high value
                begin
                    result = ~(1023'b0); // LOL
                    carryout=1'b0;
                end
                4'h2:
                begin // invert only op1
                    result = ~op1;
                    carryout=1'b0;
                end
                4'h3:
                begin
                    {carryout, result[1023:0]} = op1 + op2;
                end
                4'h4: // bitwise-and operands
                begin
                    result = op1 & op2;
                    carryout=1'b0;
                end
                4'h5: // bitwise-or operands
                begin
                    result = op1 | op2;
                    carryout=1'b0;
                end
                4'h6: // bitwise-xor operands
                begin
                    result = op1 ^ op2;
                    carryout=1'b0;
                end
                4'h7: // shift left, no wraparound
                begin
                    result = op1 << op2;
                    carryout=1'b0;
                end
                4'h8: // shift right, no wraparound
                begin
                    result = op1 >> op2;
                    carryout=1'b0;
                end
                4'h9: // shift left, wraparound
                begin
                    result = op1 <<< op2;
                end
                4'hA: // shift right, wraparound
                begin
                    result = op1 >>> op2;
                end                   
            endcase
        end
endmodule
