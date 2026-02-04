`define SIM_TIME 1000
`define CLOCK_PERIOD 10
`define RESET_DURATION 2 

module testbech;
    reg a, b, clk, reset;
    wire sum, carry;
    adder uut (
        a,
        b,
        sum,
        carry
    );

    initial begin
        clk = 0;
        forever #(`CLOCK_PERIOD / 2) clk = ~clk;
    end

    initial begin

        $monitor("a = %b | b = %b | sum = %b | carry = %b", a, b, sum, carry);

        reset = 1;
        a = 0;
        b = 0;

        #(`CLOCK_PERIOD * `RESET_DURATION) reset = 0;

        a = 0;
        b = 0;
        #(`CLOCK_PERIOD);

        a = 0;
        b = 1;
        #(`CLOCK_PERIOD);

        a = 1;
        b = 0;
        #(`CLOCK_PERIOD);

        a = 1;
        b = 1;
        #(`CLOCK_PERIOD);

    end

    initial begin
      #`SIM_TIME $finish;
    end

endmodule
