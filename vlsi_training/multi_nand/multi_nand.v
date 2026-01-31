module nand_gate (
    a,
    b,
    y
);
    input a, b;
    output y;

    nand (y, a, b);
endmodule


module nand_behaviour (
    a,
    b,
    y
);
    input a, b;
    output reg y;

    always @(a, b) begin
        y = a~&b;
    end
endmodule

module nand_data_flow (
    a,
    b,
    y
);
    input a, b;
    output y;

    assign y = a~&b;

endmodule
