module equal_comparator_four(
    input [3:0] a,
    input [3:0] b,
    output equal
);

wire [0:3] equal_bits;

// Instantiate 1-bit comparators
equal_comparator one_bit_comp0(a[0], b[0], equal_bits[0]);
equal_comparator one_bit_comp1(a[1], b[1], equal_bits[1]);
equal_comparator one_bit_comp2(a[2], b[2], equal_bits[2]);
equal_comparator one_bit_comp3(a[3], b[3], equal_bits[3]);

// Output is true if all bits are equal
assign equal = (equal_bits[0] & equal_bits[1] & equal_bits[2] & equal_bits[3]);

endmodule