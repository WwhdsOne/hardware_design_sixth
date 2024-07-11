module binary_adder_tb;

    reg [3:0] a;
    reg [3:0] b;
    wire [4:0] sum;

    binary_adder dut (
        .a(a),
        .b(b),
        .sum(sum)
    );

    initial begin
        a = 4'b0000;
        b = 4'b0000;
        #10;
        a = 4'b1010;
        b = 4'b0110;
        #10;
        // End simulation
        $finish;
    end

endmodule