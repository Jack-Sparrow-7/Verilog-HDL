module calculator ();
    reg [3:0] a, b;
    reg [4:0] result;
    reg [3:0] memory [1:0];

    initial begin
        a = 4'd3;
        b = 4'd4;

        $display("a = %b or %d | b = %b or %d", a, a, b, b);

        result = a + b;

        $display("a = %b | b = %b | result = %b", a, b, result);
    end

    initial begin
        $display("=== Calculator Tests ===");

        a = 2;
        b = 5;
        result = a + b;

        $display("a = %b | b = %b | result = %b", a, b, result);

        a = 9;
        b = 6;
        result = a + b;

        $display("a = %b | b = %b | result = %b", a, b, result);

        a = 15;
        b = 15;
        result = a + b;

        $display("a = %b | b = %b | result = %b", a, b, result);

        memory[0] = 5;
        memory[1] = 8;
        result = memory[0] + memory[1];

        $display("memory-0 = %b | memory-1 = %b | result = %b", memory[0],
                 memory[1], result);
    end
endmodule
