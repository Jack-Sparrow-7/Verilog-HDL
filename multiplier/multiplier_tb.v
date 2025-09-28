module multiplier_tb;

    reg [7:0] a;
    reg [7:0] b;
    wire [15:0] y;

    multiplier dut(.a(a),.b(b),.y(y));

    initial begin
        $dumpfile("multiplier_wave.vcd");
        $dumpvars(0,multiplier_tb);

        a = 8'd64;
        b = 8'd64;
        #10;

        $finish;
    end

endmodule