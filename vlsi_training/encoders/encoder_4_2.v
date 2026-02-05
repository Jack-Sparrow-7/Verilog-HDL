module encoder_4_2 (
    a,
    b,
    c,
    d,
    y
);
    input a, b, c, d;
    output [1:0] y;

    assign y[0] = c | a;
    assign y[1] = b | a;
endmodule
