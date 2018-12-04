`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2018 04:38:30 PM
// Design Name: 
// Module Name: quick_aes
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


module quick_aes(
    input enable,
    input [8191:0] input_data,
    input [255:0] key,
    input [8191:0] output_data
    );
    
    always @(*)
        if (enable)
        begin
        
        end
endmodule
