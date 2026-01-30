module param_memory_tb;
    reg clk, write_enable;
    reg [7:0] data_in, address;
    wire [7:0] data_out;

    param_memory uut (
        clk,
        write_enable,
        address,
        data_in,
        data_out
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        $dumpfile("param_memory_wave.vcd");
        $dumpvars(0, param_memory_tb);

        write_enable = 0;
        data_in = 0;
        address = 0;
        #10;

        write_enable = 1;
        address = 8'd05;
        data_in = 8'd45;
        $display("Written data = %d at address = %d", data_in, address);
        #10;

        address = 8'd00;
        data_in = 8'd77;
        $display("Written data = %d at address = %d", data_in, address);
        #10;

        address = 8'd03;
        data_in = 8'd32;
        $display("Written data = %d at address = %d", data_in, address);
        #10;

        write_enable = 0;

        address = 8'd05;
        #10;
        $display("Read from address = %d value = %d", address, data_out);
        #10;

        address = 8'd00;
        #10;
        $display("Read from address = %d value = %d", address, data_out);
        #10;

        address = 8'd03;
        #10;
        $display("Read from address = %d value = %d", address, data_out);
        #10;

        address = 8'd10;
        #10;
        $display("Read from address = %d value = %d", address, data_out);
        #10;

        write_enable = 1;
        address = 8'd20;
        data_in = 8'd12;
        $display("Written data = %d at address = %d, Read from address = %d",
                 data_in, address, data_out);
        #10;

        write_enable = 0;
        #10;
        $display("Read from address = %d value = %d", address, data_out);

        $finish;

    end
endmodule
