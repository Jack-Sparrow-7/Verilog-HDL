module mux_4_using_2 (
    a,
    b,
    c,
    d,
    y,
    sel
);
    input a, b, c, d;
    input [1:0] sel;
    output y;

    wire y1, y2;

    mux_2_1 m1 (
        a,
        b,
        y1,
        sel[0]
    );
    mux_2_1 m2 (
        c,
        d,
        y2,
        sel[0]
    );

    mux_2_1 m3 (
        y1,
        y2,
        y,
        sel[1]
    );

endmodule

module mux_2_1 (
    a,
    b,
    y,
    sel
);
    input a, b, sel;
    output y;

    assign y = sel ? b : a;
endmodule
