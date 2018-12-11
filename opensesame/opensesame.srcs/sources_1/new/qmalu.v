`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/11/2018 12:34:14 AM
// Design Name: 
// Module Name: qmalu
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


module qmalu(
    input clk,
    input wire [4095:0] op1,
    input wire [4095:0] op2,
    output reg [4095*8:0] result
    );
    always @(posedge clk) begin
        // blank low value
        result[4095*1:4095*0] <= 0;
        // blank high value
        result[4095*2:4095*1] <= 1;
        // invert only op1
        result[4095*3:4095*2] <= ~op1;
        // add operands
        result[4095*4:4095*3] <= op1 + op2;
        // multiply operands
        result[4095*5:4095*4] <= op1 * op2;
        // bitwise-and operands
        result[4095*6:4095*5] <= op1 & op2;
        // bitwise-or operands    
        result[4095*7:4095*6] <= op1 | op2;
        // bitwise-xor operands
        result[4095*8:4095*7] <= op1 ^ op2;
    end
endmodule
