module and_gate (
    a,
    b,
    y
);
    input a, b;
    output y;

    and (y, a, b);
endmodule


module and_behaviour (
    a,
    b,
    y
);
    input a, b;
    output reg y;

    always @(a, b) begin
        y = a & b;
    end
endmodule

module and_data_flow (
    a,
    b,
    y
);
    input a, b;
    output y;

    assign y = a & b;

endmodule
