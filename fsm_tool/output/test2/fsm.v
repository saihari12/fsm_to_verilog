module fsm (
    input clk,
    input reset,
    input x,
    output z
);
    reg [1:0] state;
    wire i_0 = x;
    wire s_0 = state[0];
    wire s_1 = state[1];

    wire d_0 = ((s_0 & (~s_1) & i_0) | (s_1 & (~i_0)));
    wire d_1 = i_0;

    assign z = (s_0 & (~s_1) & i_0);

    always @(posedge clk or posedge reset) begin
        if (reset)
            state <= 2'b0;
        else begin
            state[0] <= d_0;
            state[1] <= d_1;
        end
    end
endmodule
