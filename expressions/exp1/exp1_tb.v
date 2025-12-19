module exp1_tb;
    reg a,b,c;
    wire y;

    exp1 uut(a,b,c,y);

    initial begin
        $dumpfile("exp1_wave.vcd");
        $dumpvars(0,exp1_tb);

        $monitor("a = %b | b = %b | c = %b | y = %b",a,b,c,y);

        a = 0; b = 0; c = 0; #5;
        a = 0; b = 0; c = 1; #5;
        a = 0; b = 1; c = 0; #5;
        a = 0; b = 1; c = 1; #5;
        a = 1; b = 0; c = 0; #5;
        a = 1; b = 0; c = 1; #5;
        a = 1; b = 1; c = 0; #5;
        a = 1; b = 1; c = 1; #5;

        $finish;
    end
endmodule