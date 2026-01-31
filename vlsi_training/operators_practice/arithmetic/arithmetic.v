module arithmetic (
    a,
    b,
    sum,
    diff,
    prod,
    quot,
    rem
);
    input [3:0] a, b;
    output [3:0] diff, rem, quot;
    output [4:0] sum;
    output [7:0] prod;

    assign sum  = a + b;
    assign diff = a - b;
    assign prod = a * b;
    assign quot = a / b;
    assign rem  = a % b;

endmodule
