module logical (
    a,
    b,
    log_and,
    log_or,
    log_not
);
    input a, b;
    output log_and, log_or, log_not;

    assign log_and = (a != 0) && (b != 0);
    assign log_or= (a != 0) || (b != 0);
    assign log_not = !(a != 0);
endmodule
