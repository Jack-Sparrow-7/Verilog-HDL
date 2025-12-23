module siso(
    clk,rst,sin,sout
);
    input clk,rst,sin;
    output sout;
    reg [3:0]q;

    always @(posedge clk) begin
        if (!rst) begin
            q <= 4'b0000;
        end else begin
            q <= {q[2:0],sin};
        end
    end

    assign sout = q[3];
endmodule