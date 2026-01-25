module simple_memory (
    clk,
    we,
    re,
    addr,
    din,
    dout
);
    input clk, we, re;
    input [7:0] din;
    input [2:0] addr;
    output reg [7:0] dout;

    reg [7:0] memory[0:7];

    always @(posedge clk) begin
        if (we) begin
            memory[addr] <= din;
        end
    end

    always @(*) begin
        if (re) begin
            dout <= memory[addr];
        end else begin
            dout <= 0;
        end
    end
endmodule
