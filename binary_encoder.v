module binary_encoder (
    input [3:0] binary_in, // 4位二进制输入
    output reg [1:0] encoded_out // 2位编码输出
);

    // 实现二进制编码的逻辑
    always @(binary_in) begin
        case (binary_in)
            4'b0001: encoded_out = 2'b00; // 如果输入为0001，则输出00
            4'b0010: encoded_out = 2'b01; // 如果输入为0010，则输出01
            4'b0100: encoded_out = 2'b10; // 如果输入为0100，则输出10
            4'b1000: encoded_out = 2'b11; // 如果输入为1000，则输出11
            default: encoded_out = 2'bxx; // 对于其他输入，输出不确定
        endcase
    end

endmodule