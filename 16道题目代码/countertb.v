`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 
// Design Name: 
// Module Name: counter_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 该仿真代码用于测试counter模块。它会模拟时钟信号和复位信号，
// 并观察计数器的输出。
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module counter_tb;

    // 仿真模块的输入（在测试台中，输入变为reg类型）
    reg clk;
    reg reset;
    // 仿真模块的输出（在测试台中，输出变为wire类型）
    wire [1:0] count;

    // 实例化被测试的模块
    counter uut (
        .clk(clk), 
        .reset(reset), 
        .count(count)
    );

    // 生成时钟信号
    always #10 clk = ~clk; // 时钟周期为20ns

    initial begin
        // 初始化
        clk = 0;
        reset = 1; // 开始时激活复位信号
        #30; // 等待一段时间
        reset = 0; // 释放复位信号，开始计数
        
        // 观察计数器的行为
        #100; // 让仿真运行一段时间
        
        // 再次复位计数器
        reset = 1;
        #20;
        reset = 0;
        
        #50; // 再次观察计数器的行为
        
        $finish; // 结束仿真
    end
      
endmodule