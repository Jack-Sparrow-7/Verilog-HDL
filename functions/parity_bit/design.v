module parity_big;
    reg [7:0] data_in;
    reg parity_out;

    function get_parity;
        input [7:0] data;
        reg parity;
        integer i;

        begin
            parity = 0;
            for (i = 0; i < 8; i++) begin
                parity = parity ^ data[i];
            end
            get_parity = parity;
        end
    endfunction

    initial begin
        data_in = 8'b10101010;
        parity_out = get_parity(data_in);
        $display("data_in = %b | parity_out = %b", data_in, parity_out);

        data_in = 8'b10101011;
        parity_out = get_parity(data_in);
        $display("data_in = %b | parity_out = %b", data_in, parity_out);
    end
endmodule
