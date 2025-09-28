module comparator_tb;
    reg [3:0] a,b;
    wire eq,gt,lt;

    comparator dut(.a(a),.b(b),.eq(eq),.gt(gt),.lt(lt));

    initial begin
        $dumpfile("comparator_wave.vcd");
        $dumpvars(0,comparator_tb);

        a = 4'b1010; b = 4'b0110; #10; 
        a = 4'b0101; b = 4'b1001; #10;  
        a = 4'b1100; b = 4'b1100; #10; 
        a = 4'b0001; b = 4'b0000; #10;
        a = 4'b1111; b = 4'b1110; #10;  
        a = 4'b0111; b = 4'b1111; #10; 

        $finish;
    end

endmodule
