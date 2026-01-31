module relational (
    a,
    b,
    gt,
    lt,
    eq
);
    input a, b;
    output gt, lt, eq;

    assign gt = a > b;
    assign lt = a < b;
    assign eq = a == b;

endmodule
