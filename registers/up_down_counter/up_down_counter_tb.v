module up_down_counter_tb;
    reg clk, reset, up_down;
    wire [3:0] count;

    up_down_counter uut (
        clk,
        reset,
        up_down,
        count
    );

    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
        $dumpfile("up_down_counter_wave.vcd");
        $dumpvars(0, up_down_counter_tb);

        $monitor("clk = %b | reset = %b | up_down = %b | count = %b", clk,
                 reset, up_down, count);

        reset   = 1;
        up_down = 0;
        #10;
        reset = 0;
        #10;

        up_down = 1;
        #100;

        up_down = 0;
        #100;

        up_down = 1;
        #30;
        up_down = 0;
        #20;
        up_down = 1;
        #50;

        $finish;
    end
endmodule
