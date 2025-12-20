module not_gate_tb;
    reg a;
    wire y;

    not_gate dut(.a(a),.y(y));

    initial begin
        $dumpfile("not_wave.vcd");
        $dumpvars(0,not_gate_tb);

        $monitor("a = %b | y = %b",a,y);

        a = 0; #10;
        a = 1; #10;

        $finish;
    end

endmodule