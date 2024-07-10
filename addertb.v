`timescale 1ns / 1ps

module addertb;

    // Inputs
    reg [3:0] a;
    reg [3:0] b;

    // Outputs
    wire [4:0] sum;

    // 实例化被测模块
    adder uut (
        .a(a), 
        .b(b), 
        .sum(sum)
    );

    initial begin
        // 初始化输入
        a = 0;
        b = 0;

        // 等待100ns用于全局复位
        #100;
        
        // 测试用例1
        a = 4'b0001; // 1
        b = 4'b0010; // 2
        #10; // 等待10ns

        // 测试用例2
        a = 4'b0100; // 4
        b = 4'b0101; // 5
        #10; // 等待10ns

        // 测试用例3
        a = 4'b1111; // 15
        b = 4'b0001; // 1
        #10; // 等待10ns

        // 测试用例4
        a = 4'b1010; // 10
        b = 4'b1011; // 11
        #10; // 等待10ns

        // 完成测试
        $finish;
    end
      
endmodule