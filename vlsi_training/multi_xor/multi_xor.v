module xor_gate (
    a,
    b,
    y
);
    input a, b;
    output y;

    xor (y, a, b);
endmodule

module xor_behaviour (
    a,
    b,
    y
);
    input a, b;
    output reg y;

    always @(*) begin
        y = a ^ b;
    end
endmodule

module xor_data_flow (
    a,
    b,
    y
);
    input a, b;
    output y;

    assign y = a ^ b;
endmodule
