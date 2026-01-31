module shift_tb;
    reg [3:0] a;
    wire [3:0] shift_left, shift_right;

    shift uut (
        a,
        shift_left,
        shift_right
    );

    initial begin
        $dumpfile("shift_wave.vcd");
        $dumpvars(0, shift_tb);

        $monitor(
            "a = %b or %d | shift_left = %b or %d | shift_right = %b or %d", a,
            a, shift_left, shift_left, shift_right, shift_right);

        a = 4'd12;
        #10;

        a = 4'd3;
        #10;

        a = 4'd0;
        #10;

        $finish;
    end
endmodule
