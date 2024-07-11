`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/07/12 10:00:00
// Design Name: 
// Module Name: selector_four_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 用于测试selector_four模块的仿真代码，包含中文注释。
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module selector_four_tb;

    // 测试模块的输入
    reg [3:0] in;
    reg [1:0] sel;
    // 测试模块的输出
    wire out;

    // 实例化被测试模块
    selector_four uut (
        .in(in), 
        .sel(sel), 
        .out(out)
    );

    initial begin
        // 初始化输入
        in = 4'b1010; // 输入值为1010
        sel = 2'b00; // 初始选择信号为00

        // 等待100ns后更改选择信号
        #100;
        sel = 2'b01; // 更改选择信号为01

        #100;
        sel = 2'b10; // 更改选择信号为10

        #100;
        sel = 2'b11; // 更改选择信号为11

        #100;
        $finish; // 结束仿真
    end
      
endmodule