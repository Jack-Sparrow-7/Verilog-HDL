module adder_tb;

    reg [3:0] a,b;
    reg cin;
    wire [3:0] sum;
    wire cout;

    adder dut(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));

    initial begin
        
        $dumpfile("adder_wave.vcd");
        $dumpvars(0,adder_tb);

        a = 4'b0011;b=4'b0011;cin = 1'b0; #10;
        a = 4'b1011;b=4'b0111;cin = 1'b1; #10;
        a = 4'b1111;b=4'b1111;cin = 1'b1; #10;
        $finish;

    end

endmodule
