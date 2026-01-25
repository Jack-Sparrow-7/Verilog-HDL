module and_gate (
    a,
    b,
    y
);
    input wire a, b;
    output reg y;

    always @(*) begin
        y = a & b;
    end
endmodule
