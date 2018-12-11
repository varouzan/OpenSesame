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
    input enable,
    input [4095:0] input_data,
    input [2:0] key_size, // one-hot-bit encoding of keysize; either 128, 192, or 256 bit (msb-lsb)
    input [255:0] key,
    input [4095:0] output_data
    );
    
    reg [3:0] rounds;
    wire [4095:0] state;
    
    always @(*)
        if (enable)
        begin
            case (key_size)
                3'b001:
                begin
                    rounds = 1'hA; // 128 bit
                end
                3'b010:
                begin
                    rounds = 1'hC; // 192 bit
                end
                3'b100:
                begin
                    rounds = 1'hE; // 256 bit
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
