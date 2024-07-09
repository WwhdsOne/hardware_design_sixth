module data_distributortb;

reg enable; // 修改为reg
reg [1:0] select_line; // 修改为reg
reg [7:0] input_data; // 修改为reg，以便在initial块中赋值
wire [7:0] out0;
wire [7:0] out1;
wire [7:0] out2;
wire [7:0] out3;

data_distributor uut(
    .enable(enable),
    .select_line(select_line), // 添加了这一行
    .input_data(input_data),
    .out0(out0), // 添加了逗号
    .out1(out1), // 添加了逗号
    .out2(out2), // 添加了逗号
    .out3(out3)
);

initial begin
    // 初始化
    enable = 1'b1;
    select_line = 2'b10;
    input_data = 8'hA5; // 任意数据值，这里使用0xA5作为示例
    // 预期结果
    // out0 = 8'h00;
    // out1 = 8'h00;
    // out2 = 8'hA5;
    // out3 = 8'h00;
    #10;
    // 初始化
    enable = 1'b1;
    select_line = 2'b10;
    input_data = 8'hb5; // 任意数据值，这里使用0xA5作为示例

    // 预期结果
    // out0 = 8'h00;
    // out1 = 8'h00;
    // out2 = 8'hA5;
    // out3 = 8'h00;
    #10;
    // 初始化
    enable = 1'b0;
    select_line = 2'b11; // 在禁用状态下，选择线的值应该被忽略
    input_data = 8'h3C; // 任意数据值，这里使用0x3C作为示例

    // 预期结果
    // 所有输出都应为0，因为模块被禁用
    // out0 = 8'h00;
    // out1 = 8'h00;
    // out2 = 8'h00;
    // out3 = 8'h00;
    $finish;
end
endmodule