module nor_gate_tb;
    reg x, w;
    wire z;

    nor_gate uut (
        .a(x),
        .b(w),
        .y(z)
    );

    initial begin
        $dumpfile("nor_gate_wave.vcd");
        $dumpvars(0, nor_gate_tb);

        $monitor("a = %b b = %b y = %b", x, w, z);

        x = 0;
        w = 0;
        #10;
        x = 0;
        w = 1;
        #10;
        x = 1;
        w = 0;
        #10;
        x = 1;
        w = 1;
        #10;

        $finish;
    end
endmodule


