module mealy (
    clk,
    reset,
    trigger,
    out
);
    input clk, reset, trigger;
    output reg out;

    localparam IDLE = 2'b00, S1 = 2'b01, S2 = 2'b10;
    reg [1:0] current_state, next_state;

    always @(posedge clk or posedge reset) begin
        if (reset) current_state <= IDLE;
        else current_state <= next_state;
    end

    always @(*) begin
        case (current_state)
            IDLE: next_state = trigger ? S1 : IDLE;
            S1: next_state = S2;
            S2: next_state = IDLE;
            default: next_state = IDLE;
        endcase
    end

    always @(*) begin
        case (current_state)
            IDLE: out = 0;
            S1: out = trigger ? 1 : 0;
            S2: out = 0;
            default: out = 0;
        endcase
    end
endmodule
