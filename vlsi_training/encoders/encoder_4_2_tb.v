module encoder_4_2_tb;
    reg a, b, c, d;
    wire [1:0] y;

    encoder_4_2 uut (
        a,
        b,
        c,
        d,
        y
    );

    initial begin
        $monitor("a = %b | b = %b | c = %b | d = %b | y = %b", a, b, c, d, y);

        a = 0;
        b = 0;
        c = 0;
        d = 1;
        #10;

        a = 0;
        b = 0;
        c = 1;
        d = 0;
        #10;

        a = 0;
        b = 1;
        c = 0;
        d = 0;
        #10;

        a = 1;
        b = 0;
        c = 0;
        d = 0;
        #10;

        $finish;
    end
endmodule
