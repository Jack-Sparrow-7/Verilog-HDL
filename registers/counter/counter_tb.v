module counter_tb;

    reg clk, enable, reset;
    wire [7:0] count;

    counter uut (
        .clk(clk),
        .enable(enable),
        .reset(reset),
        .count(count)
    );

    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
        $dumpfile("counter_wave.vcd");
        $dumpvars(0, counter_tb);

        reset  = 1;
        enable = 0;

        #10 reset = 0;
        #10 enable = 1;

        #100;

        enable = 0;
        #20;

        reset = 1;
        #10 reset = 0;

        enable = 1;
        #50;

        $finish;
    end

endmodule
