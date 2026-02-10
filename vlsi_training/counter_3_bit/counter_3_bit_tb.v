module counter_3_bit_tb;
    reg clk, reset;
    wire [2:0] count;

    counter_3_bit uut (
        clk,
        reset,
        count
    );

    initial begin
        clk = 0;
    end

    always #5 clk = ~clk;

    initial begin
        $monitor("clk = %b | reset = %b | count = %b or %d", clk, reset, count,
                 count);

        reset = 1;
        #10;

        reset = 0;

        #170;

        reset = 1;
        #10;

        reset = 0;

        #100;

        $finish;
    end

endmodule
