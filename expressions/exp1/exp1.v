module exp1 (
    a,
    b,
    c,
    y
);
    input a, b, c;
    output reg y;

    always @(a, b, c) begin
        y = (a | (b & c));
    end
endmodule
