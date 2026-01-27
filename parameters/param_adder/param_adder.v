module param_adder #(
    parameter SIZE = 1
) (
    a,
    b,
    sum
);
    input [SIZE - 1:0] a, b;
    output [SIZE - 1:0] sum;

    assign sum = a + b;
endmodule
