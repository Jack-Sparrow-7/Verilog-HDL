module demux_1_2_tb;
    reg i,s0;
    wire o0,o1;

    demux_1_2 uut(i,o0,o1,s0);

    initial begin
        $dumpfile("demux_wave.vcd");
        $dumpvars(0,demux_1_2_tb);
        
        $monitor("i = %b | s0 = %b | o0 = %b | o1 = %b",i,s0,o0,o1);

        i = 0; s0 = 0; #5;
        i = 0; s0 = 1; #5;
        i = 1; s0 = 0; #5;
        i = 1; s0 = 1; #5;

        $finish;
    end
endmodule