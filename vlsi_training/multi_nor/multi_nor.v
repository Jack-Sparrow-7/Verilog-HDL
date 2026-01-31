module nor_gate (
    a,
    b,
    y
);
    input a, b;
    output y;

    nor (y, a, b);
endmodule

module nor_behaviour (
    a,
    b,
    y
);
    input a, b;
    output reg y;

    always @(*) begin
        y = a~|b;
    end
endmodule

module nor_data_flow (
    a,
    b,
    y
);
    input a, b;
    output y;

    assign y = a~|b;
endmodule
