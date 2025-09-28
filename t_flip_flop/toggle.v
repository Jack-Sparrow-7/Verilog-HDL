module toggle(t,clk,q,qbar);

    input t,clk;
    output reg q;
    output qbar;

    initial q = 0;
    assign qbar = ~q;

    always @(posedge clk) begin
        if(t)
            q <= ~q;
    end

endmodule