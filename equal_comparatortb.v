`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/07/09 09:30:57
// Design Name: 
// Module Name: equal_comparatortb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module equal_comparatortb;

// 输入
reg a;
reg b;

// 输出
wire out;

equal_comparator eq(
    .a(a),
    .b(b),
    .out(out)
);

initial begin
    a = 0;b = 0;
    #10
    a = 1;b = 0;
    #10
    a = 0;b = 1;
    #10
    a = 1;b = 1;
    $finish;
    end
endmodule