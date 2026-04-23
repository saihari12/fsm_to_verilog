module fsm (
    input clk,
    input reset,
    input en,
    output q1,
    output q0
);
    reg [1:0] state;
    wire i_0 = en;
    wire s_0 = state[0];
    wire s_1 = state[1];

    wire d_0 = ((s_0 & (~s_1)) | (s_0 & (~i_0)) | ((~s_0) & s_1 & i_0));
    wire d_1 = (((~s_1) & i_0) | (s_1 & (~i_0)));

    assign q1 = ((s_0 & (~s_1)) | (s_0 & (~i_0)) | ((~s_0) & s_1 & i_0));
    assign q0 = (((~s_1) & i_0) | (s_1 & (~i_0)));

    always @(posedge clk or posedge reset) begin
        if (reset)
            state <= 2'b0;
        else begin
            state[0] <= d_0;
            state[1] <= d_1;
        end
    end
endmodule
