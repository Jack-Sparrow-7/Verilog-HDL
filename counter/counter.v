module counter(clk,reset,enable,count);

input clk,reset,enable;
output reg [0:7] count;

always @(posedge clk or posedge reset) begin
    if (reset) begin
        count <= 8'b0;
    end
    else if (enable) begin
        count <= count + 1;
    end
end

endmodule