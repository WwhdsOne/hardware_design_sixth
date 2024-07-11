module decimal_addertb;

    // 输入
    reg [3:0] A;
    reg [3:0] B;

    // 输出
    wire [3:0] Sum;
    wire Carry;
    decimal_adder uut (
        .A(A),
        .B(B),
        .Sum(Sum),
        .Carry(Carry)
    );

    // 初始化输入
    initial begin
        A = 4'b0000; // 初始值为0
        B = 4'b0000; // 初始值为0

        // 添加测试样例
        // 测试样例1: A = 5, B = 3
        #10; // 等待10个时间单位
        A = 4'b0101; // A设置为5
        B = 4'b0011; // B设置为3

        // 等待并观察结果
        #10;
        // 测试结束
        $finish;
    end

endmodule