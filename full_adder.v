`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/07/10 13:49:01
// Design Name: 
// Module Name: adder
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


module adder (
    input [3:0] a, // 4位输入a
    input [3:0] b, // 4位输入b
    output [4:0] sum // 5位输出和，包括进位
);

    wire [3:0] carry_in; // 内部进位输入信号
    wire [3:0] carry_out; // 每一位加法器的进位输出

    // 初始化进位输入的最低位为0
    assign carry_in[0] = 1'b0;

    // 1位全加器
    genvar i;
    generate
        for (i = 0; i < 4; i = i + 1) begin : full_adder_block
            full_adder fa (
                .a(a[i]), // 第i位的a输入
                .b(b[i]), // 第i位的b输入
                .cin(carry_in[i]), // 第i位的进位输入
                .sum(sum[i]), // 第i位的和输出
                .cout(carry_out[i]) // 第i位的进位输出
            );

            // 除了最低位外，每一位的进位输入为前一位的进位输出
            if (i < 3) begin
                assign carry_in[i + 1] = carry_out[i];
            end
        end
    endgenerate

    // 输出和的最高位，即最高位的进位输出
    assign sum[4] = carry_out[3];

endmodule