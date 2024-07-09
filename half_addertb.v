module half_addertb;

    // 输入
    reg a;
    reg b;
    
    // 输出
    wire sum;
    wire carry;
    
    // 实例化半加器模块
    half_adder dut (
        .a(a),
        .b(b),
        .sum(sum),
        .carry(carry)
    );    
    // 激励信号
    initial begin
        // 测试用例1
        a = 0;
        b = 0;
        #10;
        
        // 测试用例2
        a = 0;
        b = 1;
        #10;
        
        // 测试用例3
        a = 1;
        b = 0;
        #10;
        
        // 测试用例4
        a = 1;
        b = 1;
        #10;
        
        $finish;
    end
    
    // 显示结果
    always @(sum, carry)
        $display("a=%b, b=%b, sum=%b, carry=%b", a, b, sum, carry);
    
endmodule