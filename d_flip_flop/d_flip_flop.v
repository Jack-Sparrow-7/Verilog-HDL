module d_flip_flop (
    d,clk,q
);
    input d,clk;
    output reg q;

    always @(posedge clk) begin
        q <= d;
    end
    
endmodule