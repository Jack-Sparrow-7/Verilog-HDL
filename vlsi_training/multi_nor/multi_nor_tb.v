module multi_nor_tb;
    reg a, b;
    wire y1, y2, y3;

    nor_gate n1 (
        a,
        b,
        y1
    );

    nor_behaviour n2 (
        a,
        b,
        y2
    );

    nor_data_flow n3 (
        a,
        b,
        y3
    );

    initial begin
        $dumpfile("multi_nor_wave.vcd");
        $dumpvars(0, multi_nor_tb);

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
