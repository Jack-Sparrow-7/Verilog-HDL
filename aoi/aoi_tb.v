module aoi_tb;

    reg a, b, c, d;
    wire y;

    aoi dut (
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .y(y)
    );

    initial begin

        $dumpfile("aoi_wave.vcd");
        $dumpvars(0, aoi_tb);

        a = 0;
        b = 0;
        c = 0;
        d = 0;
        #5;
        a = 0;
        b = 0;
        c = 0;
        d = 1;
        #5;
        a = 0;
        b = 0;
        c = 1;
        d = 0;
        #5;
        a = 0;
        b = 0;
        c = 1;
        d = 1;
        #5;
        a = 0;
        b = 1;
        c = 0;
        d = 0;
        #5;
        a = 0;
        b = 1;
        c = 0;
        d = 1;
        #5;
        a = 0;
        b = 1;
        c = 1;
        d = 0;
        #5;
        a = 0;
        b = 1;
        c = 1;
        d = 1;
        #5;
        a = 1;
        b = 0;
        c = 0;
        d = 0;
        #5;
        a = 1;
        b = 0;
        c = 0;
        d = 1;
        #5;
        a = 1;
        b = 0;
        c = 1;
        d = 0;
        #5;
        a = 1;
        b = 0;
        c = 1;
        d = 1;
        #5;
        a = 1;
        b = 1;
        c = 0;
        d = 0;
        #5;
        a = 1;
        b = 1;
        c = 0;
        d = 1;
        #5;
        a = 1;
        b = 1;
        c = 1;
        d = 0;
        #5;
        a = 1;
        b = 1;
        c = 1;
        d = 1;
        #5;
        $finish;
    end

    initial begin
        $monitor("Time = %0t | a = %b | b = %b | c = %b | d = %d", $time, a, b,
                 c, d);
    end

endmodule
