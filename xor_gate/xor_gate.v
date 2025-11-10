module xorgate (
    a,b,y
);
    output y;
    input a,b;

    assign y = a ^ b;

endmodule