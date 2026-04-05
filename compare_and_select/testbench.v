module compare_and_select_tb;

    reg [7:0] input_a;
    reg [7:0] input_b;
    reg sel;

    wire signed [7:0] out;

    compare_and_select uut (
        .input_a(input_a),
        .input_b(input_b),
        .sel(sel),
        .out(out)
    );

    initial begin
        $monitor("Time=%0t | sel=%b | A=%0d | B=%0d | OUT=%0d", $time, sel,
                 input_a, input_b, out);

        // Max of a & b
        sel = 0;
        input_a = 8'd10;
        input_b = 8'd20;
        #10;  // 20
        sel = 0;
        input_a = 8'd50;
        input_b = 8'd30;
        #10;  // 50
        sel = 0;
        input_a = 8'd15;
        input_b = 8'd15;
        #10;  // 15

        // Difference of a & b +ve case
        sel = 1;
        input_a = 8'd25;
        input_b = 8'd10;
        #10;  // 15

        // Difference of a & b -ve case
        sel = 1;
        input_a = 8'd10;
        input_b = 8'd20;
        #10;  // -10

        sel = 1;
        input_a = 8'd0;
        input_b = 8'd1;
        #10;
        
        sel = 1;
        input_a = 8'd255;
        input_b = 8'd1;
        #10;

        $finish;
    end

endmodule
