`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2018 04:26:40 PM
// Design Name: 
// Module Name: mult2x2
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


module mult2x2(
    input [1:0] f1,
    input [1:0] f2,
    output [3:0] P
    );
    
    assign P = f1 * f2;
endmodule
