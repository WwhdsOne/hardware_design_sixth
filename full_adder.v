module full_adder(
    input a, // 第一个加数位
    input b, // 第二个加数位
    input cin, // 进位输入
    output sum, // 和输出
    output cout // 进位输出
);

    // 中间变量，用于存储各个阶段的结果
    wire sum_ab, carry_ab, carry_ac, carry_bc;

    // a和b的加法，不考虑进位
    xor(sum_ab, a, b);
    // a和b的进位
    and(carry_ab, a, b);
    // a和进位cin的进位
    and(carry_ac, a, cin);
    // b和进位cin的进位
    and(carry_bc, b, cin);

    // 最终的和，考虑a、b以及进位cin
    xor(sum, sum_ab, cin);
    // 最终的进位，来自a和b、a和cin、b和cin的任意组合
    or(cout, carry_ab, carry_ac, carry_bc);

endmodule