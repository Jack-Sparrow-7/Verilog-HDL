module OpenDrain_Bus_Tb;
  reg enable1, enable2, data_in1, data_in2;
  tri bus_signal;

  pullup (bus_signal);

  OpenDrain_Driver1 driver1 (
      enable1,
      data_in1,
      bus_signal
  );
  OpenDrain_Driver2 driver2 (
      enable2,
      data_in2,
      bus_signal
  );

  initial begin
    $dumpfile("open_drain_bus_wave.vcd");
    $dumpvars(0, OpenDrain_Bus_Tb);

    $monitor("DataIN-1 = %b | Enable-1 = %b | DataIN-2 = %b | Enable-2 = %b | BusSignal = %b",
             data_in1, enable1, data_in2, enable2, bus_signal);

    $display("Case 1 - All drivers are disabled, bus should be 1");
    data_in1 = 0;
    enable1  = 0;
    data_in2 = 0;
    enable2  = 0;

    #20;
    $display("Case 2 - Driver 1 enabled & drives 0, bus should be 0");
    data_in1 = 0;
    enable1  = 1;

    #20;
    $display("Case 3 - Driver 1 enabled & drives 1, releases bus,bus should be 1");
    enable1  = 1;
    data_in1 = 1;

    #20;
    $display("Case 4 - Driver 2 enabled & drives 0, bus should be 0");
    enable1  = 0;
    data_in2 = 0;
    enable2  = 1;

    #20;
    $display("Case 5 - Both Drivers enabled & drives 0, bus should be 0");
    enable1  = 1;
    data_in1 = 0;

    #20;
    $display("Case 6 - Driver1 drives 0, Driver2 drives 1, bus should be 0");
    data_in2 = 1;

    #20;
    $display("Case 7 - Driver1 drives 1, Driver2 drives 0, bus should be 0");
    data_in2 = 0;
    data_in1 = 1;

    #20;
    $display("Case 8 - All drivers enabled, drives 1, releases bus,bus should be 1");
    data_in2 = 1;

    #20;
    $finish;
  end
endmodule
