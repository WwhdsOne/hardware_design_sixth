module binary_decoder_tb;

    reg [1:0] binary_in;
    wire [3:0] decoded_out;

    binary_decoder dut (
        .binary_in(binary_in),
        .decoded_out(decoded_out)
    );

    initial begin

        binary_in = 2'b00;
        #10;
        binary_in = 2'b01;
        #10;
        binary_in = 2'b10;
        #10;
        binary_in = 2'b11;
        #10;
        $finish;
    end

endmodule