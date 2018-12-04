`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cooper Union
// Engineer: Rafi Mueen
// 
// Create Date: 12/01/2018 11:53:42 PM
// Design Name: 
// Module Name: quick_maffs_core
// Project Name: OpenSesame
// Target Devices: 
// Tool Versions: 
// Description: Core ALU 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
// Instructions are structured as follows:
//  - Bits 31-28 are flags, identifies which type of instruction structure to use.
//      Currently, only "D type" instructions are supported
//  - Bits 27-4 are opcodes, identifies which instruction to perform
//  - Bits 3-0 are data width, identifies the data to transform's width in power of
//      2, i.e. 12 -> 2^12 = width of 4096
//
// Currently supported instructions:
//  - AE5DEC: Decrypt AES encrypted data
//  - AE5EC
//////////////////////////////////////////////////////////////////////////////////




module quick_maffs_core(
    input [31:0] instruction,
    input [8191:0] input_data,
    input [255:0] key,
    input clk,
    output reg [8191:0] output_data
    );
    
    wire [3:0] flags;
    wire [23:0] opcode;
    wire [3:0] data_bus_width;
    
    assign flags = instruction[31:28];
    assign opcode = instruction[27:4];
    assign data_bus_width = instruction[3:0];
    
    always @(posedge clk) // Instruction Decode... I guess?
        case (flags)
            4'hD: // Flag bits set to "D type instruction"
            begin
                case (opcode)
                    24'hAE5DEC: // AES Decrypt
                    begin
                        
                    end
                    24'hAE5E7C: // AES Encrypt
                    begin
                    
                    end
                    24'hAE56E7: // AES Key Generate
                    begin
                    
                    end
                    24'hB103DE: // Blowfish Decrypt
                    begin
                    
                    end
                    24'hB103E7: // Blowfish Encrypt
                    begin
                    
                    end
                    24'hB1036E: // Blowfish Key Generate
                    begin
                    
                    end
                    24'hDE5DEC: // DES Decrypt
                    begin
                    
                    end
                    24'hDE5E7C: // DES Encrypt
                    begin
                    
                    end
                    24'hDE56E7: // DES Key Generate
                    begin
                    
                    end
                    24'h54A2D1: // SHA-2 Message Digest
                    begin
                    
                    end
                    24'h3D5D16: // MD5 Message Digest
                    begin
                    
                    end
                    24'h25ADEC: // RSA Decrypt
                    begin
                    
                    end
                    24'h25AE7C: // RSA Encrypt
                    begin
                    
                    end
                    24'h25AD16: // RSA Key Pair Generate
                    begin
                    
                    end
                endcase
            end
        endcase
endmodule
