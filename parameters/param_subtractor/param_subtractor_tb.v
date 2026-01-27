module param_subtractor_tb;

    localparam SIZE = 2;
    reg [1:0] a, b;
    wire [1:0] diff;
    wire borrow;

    param_subtractor #(
        .SIZE(SIZE)
    ) uut (
        a,
        b,
        diff,
        borrow
    );

    initial begin
        $dumpfile("param_subtractor_wave.vcd");
        $dumpvars(0, param_subtractor_tb);

        $monitor("a = %b | b = %b | diff = %b | borrow = %b", a, b, diff,
                 borrow);


        a = 2'b00;
        b = 2'b00;
        #10;

        a = 2'b01;
        b = 2'b00;
        #10;

        a = 2'b01;
        b = 2'b01;
        #10;

        a = 2'b00;
        b = 2'b01;
        #10;

        a = 2'b10;
        b = 2'b01;
        #10;

        a = 2'b01;
        b = 2'b10;
        #10;

        a = 2'b11;
        b = 2'b01;
        #10;

        a = 2'b01;
        b = 2'b11;
        #10;

        a = 2'b11;
        b = 2'b11;
        #10;

        $finish;
    end
endmodule
