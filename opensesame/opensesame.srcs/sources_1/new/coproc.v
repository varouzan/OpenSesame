`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/11/2018 12:14:33 AM
// Design Name: 
// Module Name: coproc
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


module coproc(
    input wire [31:0] instruction,
    input wire [4095:0] input_data,
    input wire [255:0] key,
    input wire clk,
    output reg [4095:0] output_data
    );
    
    wire [3:0] flags;
    wire [23:0] opcode;
    wire [3:0] data_bus_width, alu_instruction;
    wire [4095:0] op1, op2;
    wire [4095*8:0] alu_result;
    
    qmalu alu(.clk(clk), .op1(op1), .op2(op2), .result(alu_result));
    
    reg enb_AESD, enb_AESE, enb_AESKG, enb_BFD, enb_BFE, enb_BFKG, enb_DESD, enb_DESE, enb_DESKG, enb_RSAD, enb_RSAE, enb_RSAKPG, enb_SHA, enb_MD5;
    
    assign flags = instruction[31:28];
    assign opcode = instruction[27:4];
    assign data_bus_width = instruction[3:0];
    
    qm_AESD aesd(.enable(enb_AESD),.clk(clk),.aluout(alu_result));
    qm_AESE aese(.enable(enb_AESE),.clk(clk),.aluout(alu_result));
    qm_AESKG aeskg(.enable(enb_AESKG),.clk(clk),.aluout(alu_result));
    qm_BFD bfd(.enable(enb_BFD),.clk(clk),.aluout(alu_result));
    qm_BFE bfe(.enable(enb_BFE),.clk(clk),.aluout(alu_result));
    qm_BFKG bfkg(.enable(enb_BFKG),.clk(clk),.aluout(alu_result));
    qm_DESD desd(.enable(enb_DESD),.clk(clk),.aluout(alu_result));
    qm_DESE dese(.enable(enb_DESE),.clk(clk),.aluout(alu_result));
    qm_DESKG deskg(.enable(enb_DESKG),.clk(clk),.aluout(alu_result));
    qm_RSAD rsad(.enable(enb_RSAD),.clk(clk),.aluout(alu_result));
    qm_RSAE rsae(.enable(enb_RSAE),.clk(clk),.aluout(alu_result));
    qm_RSAKPG rsakpg(.enable(enb_RSAKPG),.clk(clk),.aluout(alu_result));
    qm_SHA sha(.enable(enb_SHA),.clk(clk),.aluout(alu_result));
    qm_MD5 md5(.enable(enb_MD5),.clk(clk),.aluout(alu_result));
    
    always @(posedge clk) // Instruction Decode... I guess?
        case (flags)
            4'hD: // Flag bits set to "D type instruction"
            begin
                case (opcode)
                    24'hAE5DEC: // AES Decrypt
                    begin
                        enb_AESD <= 1;
                        enb_AESE <= 0;
                        enb_AESKG <= 0;
                        enb_BFD <= 0;
                        enb_BFE <= 0;
                        enb_BFKG <= 0;
                        enb_DESD <= 0;
                        enb_DESE <= 0;
                        enb_DESKG <= 0;
                        enb_RSAD <= 0;
                        enb_RSAE <= 0;
                        enb_RSAKPG <= 0;
                        enb_SHA <= 0;
                        enb_MD5 <= 0;
                    end
                    24'hAE5E7C: // AES Encrypt
                    begin
                        enb_AESD <= 0;
                        enb_AESE <= 1;
                        enb_AESKG <= 0;
                        enb_BFD <= 0;
                        enb_BFE <= 0;
                        enb_BFKG <= 0;
                        enb_DESD <= 0;
                        enb_DESE <= 0;
                        enb_DESKG <= 0;
                        enb_RSAD <= 0;
                        enb_RSAE <= 0;
                        enb_RSAKPG <= 0;
                        enb_SHA <= 0;
                        enb_MD5 <= 0;
                    end
                    24'hAE56E7: // AES Key Generate
                    begin
                        enb_AESD <= 0;
                        enb_AESE <= 0;
                        enb_AESKG <= 1;
                        enb_BFD <= 0;
                        enb_BFE <= 0;
                        enb_BFKG <= 0;
                        enb_DESD <= 0;
                        enb_DESE <= 0;
                        enb_DESKG <= 0;
                        enb_RSAD <= 0;
                        enb_RSAE <= 0;
                        enb_RSAKPG <= 0;
                        enb_SHA <= 0;
                        enb_MD5 <= 0;                    
                    end
                    24'hB103DE: // Blowfish Decrypt
                    begin
                        enb_AESD <= 0;
                        enb_AESE <= 0;
                        enb_AESKG <= 0;
                        enb_BFD <= 1;
                        enb_BFE <= 0;
                        enb_BFKG <= 0;
                        enb_DESD <= 0;
                        enb_DESE <= 0;
                        enb_DESKG <= 0;
                        enb_RSAD <= 0;
                        enb_RSAE <= 0;
                        enb_RSAKPG <= 0;
                        enb_SHA <= 0;
                        enb_MD5 <= 0;                    
                    end
                    24'hB103E7: // Blowfish Encrypt
                    begin
                        enb_AESD <= 0;
                        enb_AESE <= 0;
                        enb_AESKG <= 0;
                        enb_BFD <= 0;
                        enb_BFE <= 1;
                        enb_BFKG <= 0;
                        enb_DESD <= 0;
                        enb_DESE <= 0;
                        enb_DESKG <= 0;
                        enb_RSAD <= 0;
                        enb_RSAE <= 0;
                        enb_RSAKPG <= 0;
                        enb_SHA <= 0;
                        enb_MD5 <= 0;                    
                    end
                    24'hB1036E: // Blowfish Key Generate
                    begin
                        enb_AESD <= 0;
                        enb_AESE <= 0;
                        enb_AESKG <= 0;
                        enb_BFD <= 0;
                        enb_BFE <= 0;
                        enb_BFKG <= 1;
                        enb_DESD <= 0;
                        enb_DESE <= 0;
                        enb_DESKG <= 0;
                        enb_RSAD <= 0;
                        enb_RSAE <= 0;
                        enb_RSAKPG <= 0;
                        enb_SHA <= 0;
                        enb_MD5 <= 0;                    
                    end
                    24'hDE5DEC: // DES Decrypt
                    begin
                        enb_AESD <= 0;
                        enb_AESE <= 0;
                        enb_AESKG <= 0;
                        enb_BFD <= 0;
                        enb_BFE <= 0;
                        enb_BFKG <= 0;
                        enb_DESD <= 1;
                        enb_DESE <= 0;
                        enb_DESKG <= 0;
                        enb_RSAD <= 0;
                        enb_RSAE <= 0;
                        enb_RSAKPG <= 0;
                        enb_SHA <= 0;
                        enb_MD5 <= 0;                    
                    end
                    24'hDE5E7C: // DES Encrypt
                    begin
                        enb_AESD <= 0;
                        enb_AESE <= 0;
                        enb_AESKG <= 0;
                        enb_BFD <= 0;
                        enb_BFE <= 0;
                        enb_BFKG <= 0;
                        enb_DESD <= 0;
                        enb_DESE <= 1;
                        enb_DESKG <= 0;
                        enb_RSAD <= 0;
                        enb_RSAE <= 0;
                        enb_RSAKPG <= 0;
                        enb_SHA <= 0;
                        enb_MD5 <= 0;                    
                    end
                    24'hDE56E7: // DES Key Generate
                    begin
                        enb_AESD <= 0;
                        enb_AESE <= 0;
                        enb_AESKG <= 0;
                        enb_BFD <= 0;
                        enb_BFE <= 0;
                        enb_BFKG <= 0;
                        enb_DESD <= 0;
                        enb_DESE <= 0;
                        enb_DESKG <= 1;
                        enb_RSAD <= 0;
                        enb_RSAE <= 0;
                        enb_RSAKPG <= 0;
                        enb_SHA <= 0;
                        enb_MD5 <= 0;                    
                    end
                    24'h54A2D1: // SHA-2 Message Digest
                    begin
                        enb_AESD <= 0;
                        enb_AESE <= 0;
                        enb_AESKG <= 0;
                        enb_BFD <= 0;
                        enb_BFE <= 0;
                        enb_BFKG <= 0;
                        enb_DESD <= 0;
                        enb_DESE <= 0;
                        enb_DESKG <= 0;
                        enb_RSAD <= 0;
                        enb_RSAE <= 0;
                        enb_RSAKPG <= 0;
                        enb_SHA <= 1;
                        enb_MD5 <= 0;                    
                    end
                    24'h3D5D16: // MD5 Message Digest
                    begin
                        enb_AESD <= 0;
                        enb_AESE <= 0;
                        enb_AESKG <= 0;
                        enb_BFD <= 0;
                        enb_BFE <= 0;
                        enb_BFKG <= 0;
                        enb_DESD <= 0;
                        enb_DESE <= 0;
                        enb_DESKG <= 0;
                        enb_RSAD <= 0;
                        enb_RSAE <= 0;
                        enb_RSAKPG <= 0;
                        enb_SHA <= 0;
                        enb_MD5 <= 1;                    
                    end
                    24'h25ADEC: // RSA Decrypt
                    begin
                        enb_AESD <= 0;
                        enb_AESE <= 0;
                        enb_AESKG <= 0;
                        enb_BFD <= 0;
                        enb_BFE <= 0;
                        enb_BFKG <= 0;
                        enb_DESD <= 0;
                        enb_DESE <= 0;
                        enb_DESKG <= 0;
                        enb_RSAD <= 1;
                        enb_RSAE <= 0;
                        enb_RSAKPG <= 0;
                        enb_SHA <= 0;
                        enb_MD5 <= 0;                    
                    end
                    24'h25AE7C: // RSA Encrypt
                    begin
                        enb_AESD <= 0;
                        enb_AESE <= 0;
                        enb_AESKG <= 0;
                        enb_BFD <= 0;
                        enb_BFE <= 0;
                        enb_BFKG <= 0;
                        enb_DESD <= 0;
                        enb_DESE <= 0;
                        enb_DESKG <= 0;
                        enb_RSAD <= 0;
                        enb_RSAE <= 1;
                        enb_RSAKPG <= 0;
                        enb_SHA <= 0;
                        enb_MD5 <= 0;                    
                    end
                    24'h25AD16: // RSA Key Pair Generate
                    begin
                        enb_AESD <= 0;
                        enb_AESE <= 0;
                        enb_AESKG <= 0;
                        enb_BFD <= 0;
                        enb_BFE <= 0;
                        enb_BFKG <= 0;
                        enb_DESD <= 0;
                        enb_DESE <= 0;
                        enb_DESKG <= 0;
                        enb_RSAD <= 0;
                        enb_RSAE <= 0;
                        enb_RSAKPG <= 1;
                        enb_SHA <= 0;
                        enb_MD5 <= 0;                    
                    end
                endcase
            end
        endcase
endmodule
