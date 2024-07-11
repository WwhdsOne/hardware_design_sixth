module adder (
    input [3:0] a, // 4位输入a
    input [3:0] b, // 4位输入b
    output [4:0] sum // 5位输出和，包括进位
);

    wire [3:0] carry; // 内部进位信号
    wire [3:0] carry_out; // 每一位加法器的进位输出

    // 1位全加器
    genvar i;
    generate
        for (i = 0; i < 4; i = i + 1) begin : full_adder
            full_adder fa (
                .a(a[i]), // 第i位的a输入
                .b(b[i]), // 第i位的b输入
                .carry_in(carry[i]), // 第i位的进位输入
                .sum(sum[i]), // 第i位的和输出
                .carry_out(carry_out[i]) // 第i位的进位输出
            );
        end
    endgenerate

    // 进位链
    assign carry[0] = 1'b0; // 最低位的进位输入始终为0
    assign carry[1] = carry_out[0]; // 第1位的进位输入为第0位的进位输出
    assign carry[2] = carry_out[1]; // 第2位的进位输入为第1位的进位输出
    assign carry[3] = carry_out[2]; // 第3位的进位输入为第2位的进位输出

    // 输出和的最高位，即最高位的进位输出
    assign sum[4] = carry_out[3];

endmodule