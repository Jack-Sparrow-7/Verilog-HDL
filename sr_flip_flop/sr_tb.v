module sr_tb;

    reg s,r,clk;
    wire q,qbar;

    sr dut(.s(s),.r(r),.clk(clk),.q(q),.qbar(qbar));

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin

        $dumpfile("sr_wave.vcd");
        $dumpvars(0,sr_tb);

        s = 0; r = 0; #10;
        s = 0; r = 1; #10;
        s = 1; r = 0; #10;
        s = 1; r = 1; #10;

        $finish;

    end

endmodule