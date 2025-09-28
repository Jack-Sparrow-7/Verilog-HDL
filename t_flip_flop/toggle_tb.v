module toggle_tb;

    reg t,clk;
    wire q,qbar;

    toggle dut(.t(t),.clk(clk),.q(q),.qbar(qbar));

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
      
      $dumpfile("toggle_wave.vcd");
      $dumpvars(0,toggle_tb);

      t = 0; #10;
      t = 1; #10;

      $finish;

    end

endmodule