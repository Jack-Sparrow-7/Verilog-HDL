module param_subtractor #(
    parameter SIZE = 1
) (
    a,
    b,
    diff,
    borrow
);
    input [SIZE -1 : 0] a, b;
    output [SIZE -1 : 0] diff;
    output borrow;

    assign borrow = a < b;
    assign diff   = a - b;
endmodule
