module full_subtractor_tb;
    reg a, b, bin;
    wire diff, bout;

    full_subtractor uut (
        .a(a),
        .b(b),
        .bin(bin),
        .diff(diff),
        .bout(bout)
    );

    initial begin
        $dumpfile("full_subtractor_wave.vcd");
        $dumpvars(0, full_subtractor_tb);

        $monitor("a = %b | b = %b | bin = %b | difference = %b | bout = %b", a,
                 b, bin, diff, bout);

        a   = 0;
        b   = 0;
        bin = 0;
        #5;
        a   = 0;
        b   = 0;
        bin = 1;
        #5;
        a   = 0;
        b   = 1;
        bin = 0;
        #5;
        a   = 0;
        b   = 1;
        bin = 1;
        #5;
        a   = 1;
        b   = 0;
        bin = 0;
        #5;
        a   = 1;
        b   = 0;
        bin = 1;
        #5;
        a   = 1;
        b   = 1;
        bin = 0;
        #5;
        a   = 1;
        b   = 1;
        bin = 1;
        #5;

        $finish;
    end
endmodule
