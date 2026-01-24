module tri_state_buffer_tb;
    reg in,enable;
    wire out;

    tri_state_buffer uut(in,enable,out);

    initial begin
        $dumpfile("tri_state_buffer_wave.vcd");
        $dumpvars(0,tri_state_buffer_tb);

        $monitor("in = %b | enable = %b | out = %b",in, enable, out);

        in = 0; enable = 0; #5;
        in = 0; enable = 1; #5;
        in = 1; enable = 0; #5;
        in = 1; enable = 1; #5;

        $finish;
    end
endmodule