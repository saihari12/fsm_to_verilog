module fsm (
    input clk,
    input reset,
    input reqA,
    input reqB,
    output ackA,
    output ackB
);
    reg [1:0] state;
    wire i_0 = reqA;
    wire i_1 = reqB;
    wire s_0 = state[0];
    wire s_1 = state[1];

    wire d_0 = ((s_0 & (~s_1) & i_1) | ((~s_0) & (~i_0) & i_1));
    wire d_1 = (((~s_0) & i_0) | ((~s_1) & i_0 & (~i_1)));

    assign ackA = (((~s_0) & i_0) | ((~s_1) & i_0 & (~i_1)));
    assign ackB = ((s_0 & (~s_1) & i_1) | ((~s_0) & (~i_0) & i_1));

    always @(posedge clk or posedge reset) begin
        if (reset)
            state <= 2'b0;
        else begin
            state[0] <= d_0;
            state[1] <= d_1;
        end
    end
endmodule
