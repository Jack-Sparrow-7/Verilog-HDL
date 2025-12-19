module exp2_tb;
    reg a,b,c,d;
    wire y;

    exp2 uut(a,b,c,d,y);

    initial begin
        
        $dumpfile("exp2_wave.vcd");
        $dumpvars(0,exp2_tb);

        a = 0; b = 0; c = 0; d = 0; #5;
        a = 0; b = 0; c = 0; d = 1; #5;
        a = 0; b = 0; c = 1; d = 0; #5;
        a = 0; b = 0; c = 1; d = 1; #5;
        a = 0; b = 1; c = 0; d = 0; #5;
        a = 0; b = 1; c = 0; d = 1; #5;
        a = 0; b = 1; c = 1; d = 0; #5;
        a = 0; b = 1; c = 1; d = 1; #5;
        a = 1; b = 0; c = 0; d = 0; #5;
        a = 1; b = 0; c = 0; d = 1; #5;
        a = 1; b = 0; c = 1; d = 0; #5;
        a = 1; b = 0; c = 1; d = 1; #5;
        a = 1; b = 1; c = 0; d = 0; #5;
        a = 1; b = 1; c = 0; d = 1; #5;
        a = 1; b = 1; c = 1; d = 0; #5;
        a = 1; b = 1; c = 1; d = 1; #5;
        $finish;
    end

    initial begin
        $monitor("a = %b | b = %b | c = %b | d = %b | y = %b",a,b,c,d,y);
    end

endmodule