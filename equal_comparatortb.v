module equal_comparator;

// 输入
reg a;
reg b;

equal_comparator eq(
    .a(a)
    .b(b)
)

initial begin
    a = 0;b = 0;
    #10
    a = 1;b = 0;
    #10
    a = 0;b = 1;
    #
    a = 1;b = 1;
    $finish
    end
endmodule
    
