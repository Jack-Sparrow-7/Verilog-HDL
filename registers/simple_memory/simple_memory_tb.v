module simple_memory_tb;
    reg clk, we, re;
    reg  [2:0] addr;
    reg  [7:0] din;
    wire [7:0] dout;

    simple_memory uut (
        clk,
        we,
        re,
        addr,
        din,
        dout
    );

    initial clk = 0;
    always #5 clk = ~clk;


    initial begin
        $dumpfile("simple_memory_wave.vcd");
        $dumpvars(0, simple_memory_tb);

        $monitor(
            "clk = %b | we = %b | re = %b | addr = %b | din = %b | dout = %b",
            clk, we, re, addr, din, dout);

        we   = 0;
        re   = 0;
        addr = 0;
        din  = 0;
        #10;

        we   = 1;

        addr = 3'd2;
        din  = 8'hA5;
        #10;

        addr = 3'd4;
        din  = 8'h3C;
        #10;

        din  = 0;
        we   = 0;

        re   = 1;

        addr = 3'd2;
        #10;

        addr = 3'd4;
        #10;

        re = 0;
        #10;

        $finish;
    end
endmodule
