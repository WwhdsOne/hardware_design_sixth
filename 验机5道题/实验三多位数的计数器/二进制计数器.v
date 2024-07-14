module 二进制计数器(
    input wire clk, // 时钟信号
    input wire reset, // 复位信号
    output reg [1:0] count, // 计数输出
    output wire carry // 进位信号
);

    assign carry = (count == 2'b11) && !reset; // 当计数到最大值且不在复位状态时产生进位

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            count <= 2'b00; // 复位时计数器归零
        end else begin
            if (count == 2'b11) begin
                count <= 2'b00; // 计数到最大值时归零
            end else begin
                count <= count + 1; // 正常计数
            end
        end
    end

endmodule