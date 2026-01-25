module full_subtractor (
    a,
    b,
    bin,
    diff,
    bout
);
    input a, b, bin;
    output reg diff, bout;

    // assign diff = a ^ b ^ bin;
    // assign bout = (~a * b ) | (~a * bin) | (b * bin);

    always @(a, b, bin) begin
        diff = a ^ b ^ bin;
        bout = (~a * b) | (~a * bin) | (b * bin);
    end
endmodule
