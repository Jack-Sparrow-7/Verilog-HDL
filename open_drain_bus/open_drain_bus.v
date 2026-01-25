module OpenDrain_Driver1 (
    enable,
    data_in,
    bus_wire
);
  input enable, data_in;
  output tri bus_wire;

  assign bus_wire = (enable && !data_in) ? 1'b0 : 1'bz;

endmodule

module OpenDrain_Driver2 (
    enable,
    data_in,
    bus_wire
);
  input enable, data_in;
  output tri bus_wire;

  assign bus_wire = (enable && !data_in) ? 1'b0 : 1'bz;
endmodule
