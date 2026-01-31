module arithmetic_tb;
    reg [3:0] a, b;
    wire [4:0] sum;
    wire [7:0] prod;
    wire [3:0] diff, rem, quot;

    arithmetic uut (
        .a(a),
        .b(b),
        .sum(sum),
        .prod(prod),
        .diff(diff),
        .rem(rem),
        .quot(quot)
    );

    initial begin
        $dumpfile("arithmetic_wave.vcd");
        $dumpvars(0, arithmetic_tb);

        $monitor(
            "a = %b or %d | b = %b or %d | sum = %b or %d | prod = %b or %d | diff = %b or %d | rem = %b or %d | quot = %b or %d",
            a, a, b, b, sum, sum, prod, prod, diff, diff, rem, rem, quot, quot);

        a = 4'd12;
        b = 4'd5;
        #10;

        a = 4'd3;
        b = 4'd3;
        #10;

        a = 4'd0;
        b = 4'd1;
        #10;

        $finish;
    end
endmodule
