module alarm_monitor_tb;
    reg [3:0] sensor_a, sensor_b;
    reg [1:0] mode;
    reg clk, rst_n;

    wire [2:0] alarm_leds;
    wire [3:0] pwr_reg;

    alarm_monitor dut (
        .sensor_a(sensor_a),
        .sensor_b(sensor_b),
        .mode(mode),
        .clk(clk),
        .rst_n(rst_n),
        .alarm_leds(alarm_leds),
        .pwr_reg(pwr_reg)
    );

    initial begin
        clk = 0;
        forever #10 clk = ~clk;
    end

    initial begin
        rst_n = 0;
        #15;
        rst_n = 1;
    end

    task run_test;
        integer i;

        begin
            i = 0;
            while (i < 4) begin
                mode = i[1:0];
                sensor_a = (mode * 3) + 5;
                sensor_b = mode * 4;

                repeat (2) @(posedge clk);
                i++;

                $display(
                    "mode = %b | sensor_a = %b | sensor_b = %b | alarm_leds = %b | pwr_reg = %b",
                    mode, sensor_a, sensor_b, alarm_leds, pwr_reg);
            end
        end
    endtask

    task stress_test;
        integer count;

        begin
            count = 0;
            mode  = 2'b11;
            repeat (5) begin
                sensor_a = 4'b1111;
                sensor_b = count;
                count++;

                @(posedge clk);
                $display("alarm_leds = %b", alarm_leds);
            end
        end

    endtask


    initial begin
        sensor_a = 0;
        sensor_b = 0;
        mode = 0;

        @(posedge rst_n);
        
        run_test;
        stress_test;

        #100;
        $finish;
    end
endmodule
