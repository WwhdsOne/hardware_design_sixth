module selector_tb;

    // 定义测试台架的信号
    reg sel;
    reg in0;
    reg in1;
    wire out;

    // 实例化待测模块
    selector uut (
        .sel(sel),
        .in0(in0),
        .in1(in1),
        .out(out)
    );

    // 应用测试向量
    initial begin
        // 测试用例 1
        sel = 0;
        in0 = 0;
        in1 = 1;
        #10;

        // 测试用例 2
        sel = 1;
        in0 = 0;
        in1 = 1;
        #10;

        // 测试用例 3
        sel = 0;
        in0 = 1;
        in1 = 0;
        #10;

        // 测试用例 4
        sel = 1;
        in0 = 1;
        in1 = 0;
        #10;

        // 如有需要，添加更多测试用例

        $finish;
    end

endmodule