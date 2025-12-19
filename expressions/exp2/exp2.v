module exp2 (
    a,b,c,d,y
);
    input a,b,c,d;
    output y;

    assign y = (~a & b & c) | (~b & c & ~d) | (a & b & d);
endmodule