module param_memory #(
    parameter SIZE  = 256,
    parameter WIDTH = 8
) (
    clk,
    write_enable,
    address,
    data_in,
    data_out
);
    input clk, write_enable;
    input [7:0] address, data_in;
    output reg [7:0] data_out;
    reg [WIDTH -1 : 0] memory[0:SIZE-1];

    always @(posedge clk) begin
        if (write_enable) memory[address] = data_in;
        else data_out <= memory[address];
    end
endmodule
