module logical_tb;
    reg a, b;
    wire log_and, log_or, log_not;

    logical uut (
        a,
        b,
        log_and,
        log_or,
        log_not
    );

    initial begin
        $dumpfile("logical_wave.vcd");
        $dumpvars(0, logical_tb);

        $monitor(
            "a = %b or %d | b = %b or %d | log_and = %b or %d | log_or = %b or %d | log_not = %b or %d",
            a, a, b, b, log_and, log_and, log_or, log_or, log_not, log_not);

        a = 0;
        b = 0;
        #10;

        a = 0;
        b = 1;
        #10;

        a = 1;
        b = 0;
        #10;

        a = 1;
        b = 1;
        #10;

        $finish;
    end
endmodule
