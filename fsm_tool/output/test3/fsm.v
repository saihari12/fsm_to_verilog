module fsm (
    input clk,
    input reset,
    input x,
    output is_even
);
    reg state;
    wire i_0 = x;
    wire s_0 = state;

    wire d_0 = ((s_0 & (~i_0)) | ((~s_0) & i_0));

    assign is_even = ((s_0 & i_0) | ((~s_0) & (~i_0)));

    always @(posedge clk or posedge reset) begin
        if (reset)
            state <= 1'b0;
        else begin
            state <= d_0;
        end
    end
endmodule
