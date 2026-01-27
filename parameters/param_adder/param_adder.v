module param_adder #(
    parameter SIZE = 1
) (
    a,
    b,
    sum,
    carry
);
    input [SIZE - 1:0] a, b;
    output [SIZE - 1:0] sum;
    output carry;

    assign {carry, sum} = a + b;
endmodule
