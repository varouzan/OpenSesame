`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/13/2018 05:03:25 PM
// Design Name: 
// Module Name: quick_maffs_multiplier_dsp
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


module quick_maffs_multiplier_dsp(
    input enable,
    input clk,
    
    input [63:0] op1,
    input [63:0] op2,
    output reg [127:0] result
    );
    
    reg [127:0] P0, P1, P2, P3, P4, P5, P6, P7, P8, P9, P10, P11, P12, P13, P14, P15;
    always @(posedge clk)
        if (enable)
        begin
            P0 = op1 * op2;
            P1 <= P0;
            P2 <= P1;
            P3 <= P2;
            P4 <= P3;
            P5 <= P4;
            P6 <= P5;
            P7 <= P6;
            P8 <= P7;
            P9 <= P8;
            P10 <= P9;
            P11 <= P10;
            P12 <= P11;
            P13 <= P12;
            P14 <= P13;
            P15 <= P14;
            result <= P15;
        end
endmodule
