module equal_comparator_fourtb;

    //输入
    reg [3:0] a;
    reg [3:0] b;
    
    //输出
    wire equal;
    
    equal_comparator_four uut(
        .a(a),
        .b(b),
        .equal(equal)
        );
    initial begin
        a = 4'b1010;
        b = 4'b1010;
        
        #100
        a = 4'b1001;
        b = 4'b1010;
        
        #100
        a = 4'b1111;
        b = 4'b1111;
        
        #100
        a = 4'b0000;
        b = 4'b1111;
        #100
        $finish; // 结束仿真
    end
endmodule