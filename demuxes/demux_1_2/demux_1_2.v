module demux_1_2 (
    i,
    o0,
    o1,
    s0
);
    input i, s0;
    output o0, o1;

    assign o0 = s0 ? 0 : i;
    assign o1 = s0 ? i : 0;
endmodule
