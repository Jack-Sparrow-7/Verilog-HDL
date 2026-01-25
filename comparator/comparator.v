module comparator (
    a,
    b,
    eq,
    lt,
    gt
);
    input [3:0] a;
    input [3:0] b;
    output reg lt, gt;
    output eq;

    assign eq = a == b;

    always @(*) begin
        if (a > b) begin
            gt = 1;
            lt = 0;
        end else if (a < b) begin
            gt = 0;
            lt = 1;
        end else begin
            gt = 0;
            lt = 0;
        end
    end
endmodule
