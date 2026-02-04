module alarm_monitor (
    sensor_a,
    sensor_b,
    mode,
    clk,
    rst_n,
    alarm_leds,
    pwr_reg
);
    input [3:0] sensor_a, sensor_b;
    input [1:0] mode;
    input clk, rst_n;

    output reg [2:0] alarm_leds;
    output reg [3:0] pwr_reg;

    reg [3:0] base_power;


    always @(*) begin
        case (mode)
            2'b00: base_power = 4'b0001;
            2'b01: base_power = 4'b1000;
            2'b10: base_power = 4'b1111;
            2'b11: base_power = 4'b1110;
        endcase
    end

    always @(*) begin
        alarm_leds = 0;
        if (sensor_a > 12 || sensor_b > 12) begin
            alarm_leds[2] = 1;
        end else if (sensor_a < 4 && sensor_b < 4) begin
            alarm_leds[1] = 1;
        end else begin
            alarm_leds[0] = 1;
        end
    end

    function [3:0] calc_power_adj;
        input [3:0] value;
        begin
            calc_power_adj = 0;

            for (integer i = 0; i < 4; i++) begin
                if (value & (1 << i)) calc_power_adj += 1;
            end
        end
    endfunction

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) pwr_reg <= 0;
        else pwr_reg = base_power + calc_power_adj(sensor_a);
    end
endmodule
