`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/15/2018 04:28:33 PM
// Design Name: 
// Module Name: qm_AES
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


module qm_AES(
    input wire clk,
    input wire reset,
    input wire load_i,
    input wire decrypt_i,
    input wire [4096:0] data_i,
    input wire [127:0] key_i,
    output reg ready_o,
    output wire [4096:0] data_o
    );
    
    
    wire [31:0] ready;
    reg [31:0] ready_reg;
    
    always @(posedge clk) begin
        ready_o = &ready;
    end
        
//    always @(posedge ready)
//    begin
//        ready_reg = ready_reg | ready;
//    end
    
//    always @(posedge load_i)
//    begin
//        ready_reg = 32'b0;
//    end
    
    genvar gi;
    for (gi=0; gi<32; gi=gi+1)
    begin
        aes aes_inst(clk,~reset,load_i,decrypt_i,data_i[(gi+1)*128-1:gi*128],key_i,ready[gi],data_o[(gi+1)*128-1:gi*128]);
    end
    
endmodule
