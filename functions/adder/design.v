module adder;
    reg [7:0] sum, num1, num2;

    function integer adder_fn(input integer a, b);
        begin
            adder_fn = a + b;
        end

    endfunction

    initial begin
        num1 = 5;
        num2 = 2;

        sum  = adder_fn(num1, num2);
        $display("num1 = %d |  num2 = %d | sum = %d", num1, num2, sum);
    end
endmodule
