`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 
// Design Name: 
// Module Name: ALU_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 该仿真代码用于测试ALU模块。它会模拟不同的操作码和输入，
// 并观察结果的变化。
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module ALU_tb;

    // Inputs
    reg [3:0] A;
    reg [3:0] B;
    reg [2:0] opcode;

    // Outputs
    wire [3:0] result;

    // 实例化被测试的模块
    ALU uut (
        .A(A), 
        .B(B), 
        .opcode(opcode), 
        .result(result)
    );

    initial begin
        // 初始化输入
        A = 0;
        B = 0;
        opcode = 0;

        // 等待仿真稳定
        #100;
        
        // 测试加法
        A = 4'b0011; // 3
        B = 4'b0101; // 5
        opcode = 3'b000; // 加法
        #10;
        
        // 测试减法
        A = 4'b1010; // 10
        B = 4'b0011; // 3
        opcode = 3'b001; // 减法
        #10;
        
        // 测试按位与
        A = 4'b1100; // 12
        B = 4'b0110; // 6
        opcode = 3'b010; // 按位与
        #10;
        
        // 测试按位或
        A = 4'b1001; // 9
        B = 4'b0101; // 5
        opcode = 3'b011; // 按位或
        #10;
        
        // 测试按位非
        A = 4'b1001; // 9
        opcode = 3'b100; // 按位非
        #10;
        
        // 结束仿真
        $finish;
    end
      
endmodule