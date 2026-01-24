module tri_state_mux_tb;
    reg in0, in1, select;
    wire out;

    tri_state_mux uut(in0,in1,select,out);

    initial begin
        $dumpfile("tri_state_mux_wave.vcd");
        $dumpvars(0,tri_state_mux_tb);

        $monitor("in0 = %b | in1 = %b | select = %b | out = %b",in0,in1,select,out);

        in0 = 0; in1 = 0; select = 0; #5;
        in0 = 0; in1 = 0; select = 1; #5;
        in0 = 0; in1 = 1; select = 0; #5;
        in0 = 0; in1 = 1; select = 1; #5;
        in0 = 1; in1 = 0; select = 0; #5;
        in0 = 1; in1 = 0; select = 1; #5;
        in0 = 1; in1 = 1; select = 0; #5;
        in0 = 1; in1 = 1; select = 1; #5;

        $finish;

    end
endmodule