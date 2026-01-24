module tri_state_mux (
    in0,in1,select,out
);
    input in0,in1,select;
    output tri out;

    assign out = select? in1: in0;
    
endmodule