module mux_2_1 (
    a,
    b,
    select,
    y
);
    input a, b, select;
    output tri y;
    assign y = (select) ? a : 1'bz;
    assign y = (!select) ? b : 1'bz;

endmodule
