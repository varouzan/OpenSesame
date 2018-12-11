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
//  Helpful link: http://www.site.uottawa.ca/~chouinar/Handout_CSI4138_AES_2002.pdf
//////////////////////////////////////////////////////////////////////////////////


module quick_aes(
    input enable, // control
    input clk, // control
    
    output [4095:0] op1, // ALU bus, shared resource
    output [4095:0] op2, // ALU bus, shared resource
    output [3:0] inst, // ALU bus, shared resource
    input [4095:0] alu_result, // ALU bus, shared resource
    
    input [4095:0] input_data,
    input [2:0] key_size, // one-hot-bit encoding of keysize; either 128, 192, or 256 bit (msb-lsb)
    input [255:0] key,
    output [4095:0] output_data
    );
    
    reg [3:0] max_rounds;
    
    wire [4095:0] state;
    
    always @(*)
        if (enable)
        begin
            case (key_size)
                3'b001:
                begin
                    max_rounds = 1'hA; // 128 bit, 10 rounds
                end
                3'b010:
                begin
                    max_rounds = 1'hC; // 192 bit, 12 rounds
                end
                3'b100:
                begin
                    max_rounds = 1'hE; // 256 bit, 14 rounds
                end
            endcase
            
        end
        // Cipher(byte in[4 * Nb],
        // byte out[4 * Nb], word w[Nb * (Nr + 1)])
        // begin byte    state[4,Nb] state = in AddRoundKey(state, w)
        // for round = 1 step 1 to Nr - 1 SubBytes(state) ShiftRows(state)
        // MixColumns(state) AddRoundKey(state, w + round * Nb) end for
        // SubBytes(state) ShiftRows(state) AddRoundKey(state, w + Nr * Nb)
        // out = state end
endmodule
