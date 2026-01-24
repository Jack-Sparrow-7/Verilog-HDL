module tri_state_buffer (
    in,enable,out
);
    input in,enable;
    output tri out;

    assign out = enable? in : 1'bz;
    
endmodule