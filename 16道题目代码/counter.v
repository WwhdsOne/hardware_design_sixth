module counter (
    input wire clk, // 时钟信号
    input wire reset, // 异步复位信号
    output wire [1:0] count // 2位计数器输出
);

    reg [1:0] count_reg; // 内部寄存器用于存储当前计数值

    // 当时钟上升沿到来或复位信号上升沿到来时执行
    always @(posedge clk or posedge reset) begin
        if (reset)
            count_reg <= 2'b00; // 如果复位信号被激活，则计数器清零
        else
            count_reg <= count_reg + 1; // 否则，计数器值加1
    end

    assign count = count_reg; // 将内部寄存器的值赋给输出

endmodule