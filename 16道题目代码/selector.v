module selector (
    input wire sel,
    input wire in0,
    input wire in1,
    output wire out
);
    // 选择器模块
    // 输入：sel - 选择信号
    //       in0 - 输入0
    //       in1 - 输入1
    // 输出：out - 输出信号

    // 使用选择信号 sel 控制输出
    assign out = sel ? in1 : in0;
endmodule