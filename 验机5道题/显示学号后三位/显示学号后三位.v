`timescale 1ns / 1ps

module display_number (
    input clk, // 时钟信号
    output reg [1:0] sel, // 7段显示器的选择信号
    output reg [6:0] seg // 7段显示器的段信号
);

    reg [1:0] counter = 0; // 计数器，控制频率，同时也用于三个数循环显示

    // 使用时钟信号控制选择信号的变化
    always @(posedge clk) begin
        case (counter)
            2'b00: begin
                seg <= 7'b0000110; // 显示"1"
                sel <= 2'b00;
                counter <= counter + 1;
            end
            2'b01: begin
                seg <= 7'b0000000; // 显示"0"
                sel <= 2'b01;
                counter <= counter + 1;
            end
            2'b10: begin
                seg <= 7'b0000111; // 显示"7"
                sel <= 2'b10;
                counter <= 2'b00;
            end
            default: begin
                seg <= 7'b1000000; // 默认显示
                sel <= 2'b11;
                counter <= 2'b00;
            end
        endcase
    end
endmodule