module siso_tb;
    reg clk, sin, rst;
    wire sout;

    siso uut (
        clk,
        rst,
        sin,
        sout
    );

    always #5 clk = ~clk;

    initial begin
        clk = 0;

        $dumpfile("siso_wave.vcd");
        $dumpvars(0, siso_tb);

        $monitor("clk = %b | rst = %b | sin = %b | sout = %b", clk, rst, sin,
                 sout);

        rst = 1;
        sin = 1;
        #5;
        rst = 0;
        sin = 0;
        #10;
        rst = 1;
        sin = 1;
        #10;
        sin = 1;
        #10;
        sin = 1;
        #10;
        sin = 0;
        #10;

        $finish;
    end

endmodule
