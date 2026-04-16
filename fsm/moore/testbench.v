module testbench;
    reg clk, reset, trigger;
    wire out;

    moore uut (
        .clk(clk),
        .reset(reset),
        .trigger(trigger),
        .out(out)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin

        $dumpfile("wave.vcd");
        $dumpvars(0, testbench);
        
        reset   = 1;
        trigger = 0;
        #10;

        reset = 0;
        #10;

        trigger = 1;
        #10;

        trigger = 0;
        #10;
        #20;

        $finish;
    end

    initial begin
        $monitor("Time: %0t | State: %b | Output: %b", $time,
                 uut.current_state, out);
    end

endmodule
