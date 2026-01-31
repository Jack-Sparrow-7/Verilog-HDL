module multi_nand_tb;
    reg a, b;
    wire out1, out2, out3;

    nand_gate n1 (
        a,
        b,
        out1
    );

    nand_behaviour n2 (
        a,
        b,
        out2
    );

    nand_data_flow n3 (
        a,
        b,
        out3
    );

    initial begin
        $dumpfile("multi_nand_wave.vcd");
        $dumpvars(0, multi_nand_tb);

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
