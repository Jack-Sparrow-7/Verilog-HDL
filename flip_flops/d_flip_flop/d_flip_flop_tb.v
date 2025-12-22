module d_flip_flop_tb;

    reg d,clk;
    wire q,qbar;

    d_flip_flop dut(.d(d),.clk(clk),.q(q),.qbar(qbar));

    initial begin
        clk = 0;
        forever begin
            clk = ~clk; #5;
        end
    end

    initial begin

        $dumpfile("d_flip_flop_wave.vcd");
        $dumpvars(0,d_flip_flop_tb);

        d = 0; #12;
        d = 1; #10;
        d = 0; #10;
        d = 1; #15;
        $finish;

    end

endmodule