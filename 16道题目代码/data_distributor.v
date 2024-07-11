module data_distributor (
    input wire enable,
    input wire select_line, // 简化为1位
    input wire [7:0] input_data,
    output reg [7:0] out0,
    output reg [7:0] out1
);

// 初始化输出
initial begin
    out0 = 0;
    out1 = 0;
end

// 数据分配逻辑
always @(enable, select_line, input_data) begin
    // 当enable为低时，所有输出为0
    if (!enable) begin
        out0 = 0;
        out1 = 0;
    end else begin
        // 根据select_line的值，将input_data分配到相应的输出
        case (select_line)
            1'b0: begin
                out0 = input_data;
                out1 = 0;
            end
            1'b1: begin
                out0 = 0;
                out1 = input_data;
            end
            default: begin
                out0 = 0;
                out1 = 0;
            end
        endcase
    end
end

endmodule