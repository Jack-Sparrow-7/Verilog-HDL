module mux_4_1_tb;
    reg a, b, c, d;
    wire y;
    reg [1:0] sel;

    mux_4_1 uut (
        a,
        b,
        c,
        d,
        sel,
        y
    );

    initial begin
        $monitor("sel = %b | y = %b", sel, y);

        a   = 0;
        b   = 1;
        c   = 0;
        d   = 1;

        sel = 2'b00;

        #10;
        sel = 2'b01;

        #10;
        sel = 2'b10;

        #10;
        sel = 2'b11;

        #10;
        $finish;
    end
endmodule
