module decimal_adder(
    input [3:0] A, // 4位BCD输入A
    input [3:0] B, // 4位BCD输入B
    output [3:0] Sum, // 4位BCD输出和
    output Carry // 进位输出
);

    // 内部信号
    wire [4:0] binary_sum; // A和B的二进制和，增加一位以处理可能的溢出
    wire [3:0] correction_factor; // 如果binary_sum大于9需要添加的修正因子
    wire correction_carry; // 修正加法的进位

    // 执行二进制加法
    assign binary_sum = A + B;

    // 确定是否需要修正（binary_sum的低4位 > 9）
    assign correction_factor = (binary_sum[3:0] > 9) ? 4'b0110 : 4'b0000;

    // 如果需要，添加修正因子
    assign {correction_carry, Sum} = binary_sum[3:0] + correction_factor;

    // 确定最终进位
    assign Carry = binary_sum[4] | correction_carry;

endmodule   