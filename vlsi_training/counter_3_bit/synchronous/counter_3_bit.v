module counter_3_bit (
    clk,
    reset,
    count
);
    input clk, reset;
    output reg [2:0] count;

    initial begin
        count = 3'b000;
    end

    always @(posedge clk) begin
        if (reset) count = 3'b000;
        else count += 1;
    end

endmodule
