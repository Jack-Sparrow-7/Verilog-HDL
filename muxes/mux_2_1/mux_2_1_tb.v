module mux_2_1_tb;

    reg a, b, select;
    wire y;

    mux_2_1 uut (
        .a(a),
        .b(b),
        .select(select),
        .y(y)
    );
    initial begin
        $dumpfile("mux_2_1.vcd");
        $dumpvars(0, mux_2_1_tb);
        a = 1'b0;
        b = 1'b0;
        select = 1'b0;
        #5 a = 1'b1;
        #5 select = 1'b1;
        #5 b = 1'b1;
        #5 a = 1'b0;
        #5 select = 1'b0;
        #5 $finish;
    end
endmodule
