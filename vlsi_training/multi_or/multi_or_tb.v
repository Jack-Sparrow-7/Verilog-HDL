module multi_or_tb;
    reg a, b;
    wire y1, y2, y3;

    or_gate o1 (
        a,
        b,
        y1
    );

    or_behaviour o2 (
        a,
        b,
        y2
    );

    or_data_flow o3 (
        a,
        b,
        y3
    );

    initial begin
        $dumpfile("multi_or_wave.vcd");
        $dumpvars(0, multi_or_tb);

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
