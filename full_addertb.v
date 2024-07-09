module full_addertb;

    // 输入
    reg a;
    reg b;
    reg cin;

    // 输出
    wire sum;
    wire cout;

    // 实例化全加器模块
    full_adder dut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    // 时钟生成
    reg clk;
    always #5 clk = ~clk; // 每5个时间单位反转时钟信号

    // 测试逻辑
    initial begin
        // 初始化输入
        a = 0;
        b = 0;
        cin = 0;

        // 应用输入并显示输出
        #10 a = 0; b = 0; cin = 0;
        #10 a = 0; b = 0; cin = 1;
        #10 a = 0; b = 1; cin = 0;
        #10 a = 0; b = 1; cin = 1;
        #10 a = 1; b = 0; cin = 0;
        #10 a = 1; b = 0; cin = 1;
        #10 a = 1; b = 1; cin = 0;
        #10 a = 1; b = 1; cin = 1;

        // 结束模拟
        $finish;
    end

endmodule