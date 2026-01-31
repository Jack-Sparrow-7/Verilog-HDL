module bitwise (
    a,
    b,
    bit_and,
    bit_not,
    bit_or,
    bit_xor
);
    input [3:0] a, b;
    output [3:0] bit_and, bit_not, bit_or, bit_xor;

    assign bit_and = a & b;
    assign bit_or  = a | b;
    assign bit_xor = a ^ b;
    assign bit_not = ~a;
endmodule
