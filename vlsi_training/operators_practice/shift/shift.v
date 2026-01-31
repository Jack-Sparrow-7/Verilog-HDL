module shift (
    a,
    shift_left,
    shift_right
);
    input [3:0] a;
    output [3:0] shift_left, shift_right;

    assign shift_left  = a << 1;
    assign shift_right = a >> 1;
endmodule
