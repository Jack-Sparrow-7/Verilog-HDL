module multi_and_tb;
    reg a, b;
    wire out1, out2, out3;

    and_gate a1 (
        a,
        b,
        out1
    );

    and_behaviour a2 (
        a,
        b,
        out2
    );

    and_data_flow a3 (
        a,
        b,
        out3
    );

    initial begin
        $dumpfile("multi_and_wave.vcd");
        $dumpvars(0, multi_and_tb);

        $monitor(
            "a = %b | b = %b | GateOut = %b | BehaviourOut = %b | DataFlowOut = %b",
            a, b, out1, out2, out3);

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
