module compare_and_select (
    input_a,
    input_b,
    sel,
    out
);
    input [7:0] input_a, input_b;
    input sel;

    output signed [7:0] out;

    wire signed [7:0] a = input_a;
    wire signed [7:0] b = input_b;

    assign out = sel ? (a - b) : ((input_a > input_b) ? input_a : input_b);

endmodule
