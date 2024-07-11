module seven_segment_display_decoder(
    input [3:0] binary_input,
    output reg [6:0] segment_output
);

    always @(*)
    begin
        case(binary_input)
            4'b0000: segment_output = 7'b1111110; // 0
            4'b0001: segment_output = 7'b0110000; // 1
            4'b0010: segment_output = 7'b1101101; // 2
            4'b0011: segment_output = 7'b1111001; // 3
            4'b0100: segment_output = 7'b0110011; // 4
            4'b0101: segment_output = 7'b1011011; // 5
            4'b0110: segment_output = 7'b1011111; // 6
            4'b0111: segment_output = 7'b1110000; // 7
            4'b1000: segment_output = 7'b1111111; // 8
            4'b1001: segment_output = 7'b1111011; // 9
            default: segment_output = 7'b0000000; // Invalid input
        endcase
    end

endmodule