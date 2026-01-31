module relational_tb;
    reg a, b;
    wire gt, lt, eq;

    relational uut (
        a,
        b,
        gt,
        lt,
        eq
    );

    initial begin
        $dumpfile("relational_wave.vcd");
        $dumpvars(0, relational_tb);

        $monitor(
            "a = %b or %d | b = %b or %d | gt = %b or %d | lt = %b or %d | eq = %b or %d",
            a, a, b, b, gt, gt, lt, lt, eq, eq);

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
