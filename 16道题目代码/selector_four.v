module selector_four(
	input wire [3:0] in, // 4个输入
	input wire [1:0] sel, // 2位选择信号
	output wire out
);
	wire out_upper, out_lower;

	// 使用两个2选1选择器来实现上半部分和下半部分的选择
	selector upper_mux(
		.a(in[2]),
		.b(in[3]),
		.sel(sel[0]),
		.out(out_upper)
	);

	selector lower_mux(
		.a(in[0]),
		.b(in[1]),
		.sel(sel[0]),
		.out(out_lower)
	);

	// 使用另一个2选1选择器来根据sel[1]选择最终输出
	selector final_mux(
		.a(out_lower),
		.b(out_upper),
		.sel(sel[1]),
		.out(out)
	);
endmodule