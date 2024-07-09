module binary_decoder (
    input wire [1:0] binary_in,
    output wire [3:0] decoded_out
);

    assign decoded_out[0] = ~(binary_in[1] | binary_in[0]);
    assign decoded_out[1] = ~(binary_in[1] & binary_in[0]);
    assign decoded_out[2] = ~(binary_in[1] & ~binary_in[0]);
    assign decoded_out[3] = ~(~binary_in[1] & binary_in[0]);

endmodule