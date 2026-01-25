module jk_tb;

    reg j, k, clk;
    wire q, qbar;

    jk dut (
        .j(j),
        .k(k),
        .clk(clk),
        .q(q),
        .qbar(qbar)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin

        $dumpfile("jk_wave.vcd");
        $dumpvars(0, jk_tb);

        j = 0;
        k = 0;
        #10;
        j = 0;
        k = 1;
        #10;
        j = 1;
        k = 0;
        #10;
        j = 1;
        k = 1;
        #10;

        $finish;

    end
endmodule
