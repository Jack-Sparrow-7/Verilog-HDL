module serial_tx;

    reg serial_out;
    reg clk;

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    task serial_transmit(input [7:0] data_in);
        integer i;

        begin
            for (i = 0; i < 8; i++) begin
                serial_out = data_in[i];
                @(posedge clk);
            end
        end
    endtask

    initial begin
        $display("Starting serial transmission...");
        serial_transmit(8'b10101010);
        $display("Serial transmission complete.");
        #10 $finish;
    end

    initial begin
        $monitor("Time = %0t | clk = %b | serial_out = %b", $time, clk,
                 serial_out);
    end

endmodule
