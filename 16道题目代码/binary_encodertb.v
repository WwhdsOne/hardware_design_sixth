module binary_encodertb;

    reg [3:0] binary_in;
    wire [1:0] encoded_out;

    binary_encoder dut (
        .binary_in(binary_in),
        .encoded_out(encoded_out)
    );

    initial begin

        // 测试用例1：输入为0001
        binary_in = 4'b0001;
        #10;

        // 测试用例2：输入为0010
        binary_in = 4'b0010;
        #10;

        // 测试用例3：输入为0100
        binary_in = 4'b0100;
        #10;

        // 测试用例4：输入为1000
        binary_in = 4'b1000;
        #10;

        // 测试用例5：输入为其他值
        binary_in = 4'b1011;
        #10;
    end

endmodule