module fsm (
    input clk,
    input reset,
    input in1,
    input in0,
    output o1,
    output o0
);
    reg [1:0] state;
    wire i_0 = in1;
    wire i_1 = in0;
    wire s_0 = state[0];
    wire s_1 = state[1];

    wire d_0 = i_0;
    wire d_1 = i_1;

    assign o1 = i_0;
    assign o0 = i_1;

    always @(posedge clk or posedge reset) begin
        if (reset)
            state <= 2'b0;
        else begin
            state[0] <= d_0;
            state[1] <= d_1;
        end
    end
endmodule
