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
        // Initialize inputs
        a = 4'b0000;
        b = 4'b0000;

        // Display initial values
        $display("a = %b", a);
        $display("b = %b", b);

        // Wait for a few time units
        #10;

        // Change inputs
        a = 4'b1010;
        b = 4'b0110;

        // Display new values
        $display("a = %b", a);
        $display("b = %b", b);

        // Wait for a few time units
        #10;

        // Display sum
        $display("sum = %b", sum);

        // End simulation
        $finish;
    end

endmodule