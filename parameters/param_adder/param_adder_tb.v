module param_adder_tb;
    reg [1:0] a, b;
    wire [1:0] sum;

    param_adder #(
        .SIZE(2)
    ) uut (
        a,
        b,
        sum
    );

    initial begin
        $dumpfile("param_adder_wave.vcd");
        $dumpvars(0, param_adder_tb);

        $monitor("a = %b | b = %b | sum = %b", a, b, sum);

        a = 2'b00;
        b = 2'b00;
        #10;

        a = 2'b01;
        b = 2'b00;
        #10;

        a = 2'b01;
        b = 2'b01;
        #10;

        a = 2'b10;
        b = 2'b01;
        #10;

        a = 2'b11;
        b = 2'b00;
        #10;

        a = 2'b11;
        b = 2'b01;
        #10;

        a = 2'b11;
        b = 2'b11;
        #10;


        $finish;
    end
endmodule
