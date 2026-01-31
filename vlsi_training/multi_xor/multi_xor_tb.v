module multi_xor_tb;
    reg a, b;
    wire y1, y2, y3;

    xor_gate o1 (
        a,
        b,
        y1
    );

    xor_behaviour o2 (
        a,
        b,
        y2
    );

    xor_data_flow o3 (
        a,
        b,
        y3
    );

    initial begin
        $dumpfile("multi_xor_wave.vcd");
        $dumpvars(0, multi_xor_tb);

        $monitor(
            "a = %b | b = %b | GateOut = %b | BehaviourOut = %b | DataFlowOut = %b",
            a, b, y1, y2, y3);

        a = 0;
        b = 0;
        #10;

        a = 0;
        b = 1;
        #10;

        a = 1;
        b = 0;
        #10;

        a = 1;
        b = 1;
        #10;

        $finish;
    end
endmodule
