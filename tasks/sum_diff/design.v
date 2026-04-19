module sum_diff;
    reg [7:0] num1, num2, sum, diff;

    task sum_and_diff(input integer num1, input integer num2,
                      output integer sum, output integer diff);

        begin
            sum  = num1 + num2;
            diff = num1 - num2;
        end
    endtask

    initial begin
        num1 = 15;
        num2 = 5;
        sum_and_diff(num1, num2, sum, diff);
        $display("Sum of %d and %d is %d", num1, num2, sum);
        $display("Difference of %d and %d is %d", num1, num2, diff);
    end
endmodule
