module d_flip_flop (
    d,clk,q,qbar
);
    input d,clk;
    output reg q;
    output qbar;

    assign qbar = ~q;

    always @(posedge clk) begin
        q <= d;
    end
endmodule