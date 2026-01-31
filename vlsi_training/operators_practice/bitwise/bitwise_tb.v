module bitwise_tb;
    reg [3:0] a, b;
    output [3:0] bit_and, bit_not, bit_or, bit_xor;

    bitwise uut (
        a,
        b,
        bit_and,
        bit_not,
        bit_or,
        bit_xor
    );

    initial begin
        $dumpfile("bitwise_wave.vcd");
        $dumpvars(0, bitwise_tb);

        $monitor(
            "a = %b or %d | b = %b or %d | bit_and = %b or %d | bit_not = %b or %d | bit_or = %b or %d | bit_xor = %b or %d",
            a, a, b, b, bit_and, bit_and, bit_not, bit_not, bit_or, bit_or,
            bit_xor, bit_xor);

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
