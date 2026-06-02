module counter_3_bit_tb;
    reg clk, reset;
    wire [2:0] count;

    counter_3_bit uut (
        clk,
        reset,
        count
    );

    always #5 clk = ~clk;

    initial begin
        $monitor("clk = %b | reset = %b | count = %b or %d", clk, reset, count,
                 count);
        clk   = 0;


        reset = 1;
        #10;

        reset = 0;

        #180;

        reset = 1;
        #10;

        reset = 0;

        #20;

        $finish;
    end

endmodule
