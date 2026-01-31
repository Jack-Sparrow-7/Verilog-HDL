module or_gate (
    a,
    b,
    y
);
    input a, b;
    output y;

    or (y, a, b);
endmodule

module or_behaviour (
    a,
    b,
    y
);
    input a, b;
    output reg y;

    always @(*) begin
        y = a | b;
    end
endmodule

module or_data_flow (
    a,
    b,
    y
);
    input a, b;
    output y;

    assign y = a | b;
endmodule
