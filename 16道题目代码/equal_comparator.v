module equal_comparator (
    input wire a,
    input wire b,
    output wire out
);

// 数值比较器
assign out = (a == b);

endmodule