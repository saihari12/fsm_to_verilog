module fsm_tb;
    reg clk;
    reg reset;
    reg en;
    wire q1;
    wire q0;
    fsm uut (
        .clk(clk),
        .reset(reset),
        .en(en),
        .q1(q1),
        .q0(q0)
    );
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    integer errors = 0;
    initial begin
        $dumpfile("testbench.vcd");
        $dumpvars(0, fsm_tb);
        reset = 1;
        en = 0;
        #20;
        reset = 0;
        @(negedge clk);
        en = 1'b1;
        #2;
        if (q1 !== 1'b0) begin
            $display("FAIL: q1 did not match expected 0. Got %b", q1);
            errors = errors + 1;
        end
        if (q0 !== 1'b1) begin
            $display("FAIL: q0 did not match expected 1. Got %b", q0);
            errors = errors + 1;
        end
        @(negedge clk);
        en = 1'b1;
        #2;
        if (q1 !== 1'b1) begin
            $display("FAIL: q1 did not match expected 1. Got %b", q1);
            errors = errors + 1;
        end
        if (q0 !== 1'b0) begin
            $display("FAIL: q0 did not match expected 0. Got %b", q0);
            errors = errors + 1;
        end
        @(negedge clk);
        en = 1'b0;
        #2;
        if (q1 !== 1'b1) begin
            $display("FAIL: q1 did not match expected 1. Got %b", q1);
            errors = errors + 1;
        end
        if (q0 !== 1'b0) begin
            $display("FAIL: q0 did not match expected 0. Got %b", q0);
            errors = errors + 1;
        end
        @(negedge clk);
        en = 1'b0;
        #2;
        if (q1 !== 1'b1) begin
            $display("FAIL: q1 did not match expected 1. Got %b", q1);
            errors = errors + 1;
        end
        if (q0 !== 1'b0) begin
            $display("FAIL: q0 did not match expected 0. Got %b", q0);
            errors = errors + 1;
        end
        @(negedge clk);
        en = 1'b1;
        #2;
        if (q1 !== 1'b1) begin
            $display("FAIL: q1 did not match expected 1. Got %b", q1);
            errors = errors + 1;
        end
        if (q0 !== 1'b1) begin
            $display("FAIL: q0 did not match expected 1. Got %b", q0);
            errors = errors + 1;
        end
        @(negedge clk);
        en = 1'b0;
        #2;
        if (q1 !== 1'b1) begin
            $display("FAIL: q1 did not match expected 1. Got %b", q1);
            errors = errors + 1;
        end
        if (q0 !== 1'b1) begin
            $display("FAIL: q0 did not match expected 1. Got %b", q0);
            errors = errors + 1;
        end
        @(negedge clk);
        en = 1'b1;
        #2;
        if (q1 !== 1'b0) begin
            $display("FAIL: q1 did not match expected 0. Got %b", q1);
            errors = errors + 1;
        end
        if (q0 !== 1'b0) begin
            $display("FAIL: q0 did not match expected 0. Got %b", q0);
            errors = errors + 1;
        end
        @(negedge clk);
        en = 1'b0;
        #2;
        if (q1 !== 1'b0) begin
            $display("FAIL: q1 did not match expected 0. Got %b", q1);
            errors = errors + 1;
        end
        if (q0 !== 1'b0) begin
            $display("FAIL: q0 did not match expected 0. Got %b", q0);
            errors = errors + 1;
        end
        @(negedge clk);
        en = 1'b1;
        #2;
        if (q1 !== 1'b0) begin
            $display("FAIL: q1 did not match expected 0. Got %b", q1);
            errors = errors + 1;
        end
        if (q0 !== 1'b1) begin
            $display("FAIL: q0 did not match expected 1. Got %b", q0);
            errors = errors + 1;
        end
        @(negedge clk);
        en = 1'b0;
        #2;
        if (q1 !== 1'b0) begin
            $display("FAIL: q1 did not match expected 0. Got %b", q1);
            errors = errors + 1;
        end
        if (q0 !== 1'b1) begin
            $display("FAIL: q0 did not match expected 1. Got %b", q0);
            errors = errors + 1;
        end
        @(negedge clk);
        en = 1'b0;
        #2;
        if (q1 !== 1'b0) begin
            $display("FAIL: q1 did not match expected 0. Got %b", q1);
            errors = errors + 1;
        end
        if (q0 !== 1'b1) begin
            $display("FAIL: q0 did not match expected 1. Got %b", q0);
            errors = errors + 1;
        end
        @(negedge clk);
        en = 1'b0;
        #2;
        if (q1 !== 1'b0) begin
            $display("FAIL: q1 did not match expected 0. Got %b", q1);
            errors = errors + 1;
        end
        if (q0 !== 1'b1) begin
            $display("FAIL: q0 did not match expected 1. Got %b", q0);
            errors = errors + 1;
        end
        @(negedge clk);
        en = 1'b0;
        #2;
        if (q1 !== 1'b0) begin
            $display("FAIL: q1 did not match expected 0. Got %b", q1);
            errors = errors + 1;
        end
        if (q0 !== 1'b1) begin
            $display("FAIL: q0 did not match expected 1. Got %b", q0);
            errors = errors + 1;
        end
        @(negedge clk);
        en = 1'b0;
        #2;
        if (q1 !== 1'b0) begin
            $display("FAIL: q1 did not match expected 0. Got %b", q1);
            errors = errors + 1;
        end
        if (q0 !== 1'b1) begin
            $display("FAIL: q0 did not match expected 1. Got %b", q0);
            errors = errors + 1;
        end
        @(negedge clk);
        en = 1'b1;
        #2;
        if (q1 !== 1'b1) begin
            $display("FAIL: q1 did not match expected 1. Got %b", q1);
            errors = errors + 1;
        end
        if (q0 !== 1'b0) begin
            $display("FAIL: q0 did not match expected 0. Got %b", q0);
            errors = errors + 1;
        end
        @(negedge clk);
        en = 1'b1;
        #2;
        if (q1 !== 1'b1) begin
            $display("FAIL: q1 did not match expected 1. Got %b", q1);
            errors = errors + 1;
        end
        if (q0 !== 1'b1) begin
            $display("FAIL: q0 did not match expected 1. Got %b", q0);
            errors = errors + 1;
        end
        @(negedge clk);
        en = 1'b1;
        #2;
        if (q1 !== 1'b0) begin
            $display("FAIL: q1 did not match expected 0. Got %b", q1);
            errors = errors + 1;
        end
        if (q0 !== 1'b0) begin
            $display("FAIL: q0 did not match expected 0. Got %b", q0);
            errors = errors + 1;
        end
        @(negedge clk);
        en = 1'b1;
        #2;
        if (q1 !== 1'b0) begin
            $display("FAIL: q1 did not match expected 0. Got %b", q1);
            errors = errors + 1;
        end
        if (q0 !== 1'b1) begin
            $display("FAIL: q0 did not match expected 1. Got %b", q0);
            errors = errors + 1;
        end
        @(negedge clk);
        en = 1'b0;
        #2;
        if (q1 !== 1'b0) begin
            $display("FAIL: q1 did not match expected 0. Got %b", q1);
            errors = errors + 1;
        end
        if (q0 !== 1'b1) begin
            $display("FAIL: q0 did not match expected 1. Got %b", q0);
            errors = errors + 1;
        end
        @(negedge clk);
        en = 1'b0;
        #2;
        if (q1 !== 1'b0) begin
            $display("FAIL: q1 did not match expected 0. Got %b", q1);
            errors = errors + 1;
        end
        if (q0 !== 1'b1) begin
            $display("FAIL: q0 did not match expected 1. Got %b", q0);
            errors = errors + 1;
        end
        @(negedge clk);
        en = 1'b0;
        #2;
        if (q1 !== 1'b0) begin
            $display("FAIL: q1 did not match expected 0. Got %b", q1);
            errors = errors + 1;
        end
        if (q0 !== 1'b1) begin
            $display("FAIL: q0 did not match expected 1. Got %b", q0);
            errors = errors + 1;
        end
        @(negedge clk);
        en = 1'b0;
        #2;
        if (q1 !== 1'b0) begin
            $display("FAIL: q1 did not match expected 0. Got %b", q1);
            errors = errors + 1;
        end
        if (q0 !== 1'b1) begin
            $display("FAIL: q0 did not match expected 1. Got %b", q0);
            errors = errors + 1;
        end
        @(negedge clk);
        en = 1'b1;
        #2;
        if (q1 !== 1'b1) begin
            $display("FAIL: q1 did not match expected 1. Got %b", q1);
            errors = errors + 1;
        end
        if (q0 !== 1'b0) begin
            $display("FAIL: q0 did not match expected 0. Got %b", q0);
            errors = errors + 1;
        end
        @(negedge clk);
        en = 1'b0;
        #2;
        if (q1 !== 1'b1) begin
            $display("FAIL: q1 did not match expected 1. Got %b", q1);
            errors = errors + 1;
        end
        if (q0 !== 1'b0) begin
            $display("FAIL: q0 did not match expected 0. Got %b", q0);
            errors = errors + 1;
        end
        @(negedge clk);
        en = 1'b0;
        #2;
        if (q1 !== 1'b1) begin
            $display("FAIL: q1 did not match expected 1. Got %b", q1);
            errors = errors + 1;
        end
        if (q0 !== 1'b0) begin
            $display("FAIL: q0 did not match expected 0. Got %b", q0);
            errors = errors + 1;
        end
        @(negedge clk);
        en = 1'b0;
        #2;
        if (q1 !== 1'b1) begin
            $display("FAIL: q1 did not match expected 1. Got %b", q1);
            errors = errors + 1;
        end
        if (q0 !== 1'b0) begin
            $display("FAIL: q0 did not match expected 0. Got %b", q0);
            errors = errors + 1;
        end
        @(negedge clk);
        en = 1'b0;
        #2;
        if (q1 !== 1'b1) begin
            $display("FAIL: q1 did not match expected 1. Got %b", q1);
            errors = errors + 1;
        end
        if (q0 !== 1'b0) begin
            $display("FAIL: q0 did not match expected 0. Got %b", q0);
            errors = errors + 1;
        end
        @(negedge clk);
        en = 1'b1;
        #2;
        if (q1 !== 1'b1) begin
            $display("FAIL: q1 did not match expected 1. Got %b", q1);
            errors = errors + 1;
        end
        if (q0 !== 1'b1) begin
            $display("FAIL: q0 did not match expected 1. Got %b", q0);
            errors = errors + 1;
        end
        @(negedge clk);
        en = 1'b0;
        #2;
        if (q1 !== 1'b1) begin
            $display("FAIL: q1 did not match expected 1. Got %b", q1);
            errors = errors + 1;
        end
        if (q0 !== 1'b1) begin
            $display("FAIL: q0 did not match expected 1. Got %b", q0);
            errors = errors + 1;
        end
        @(negedge clk);
        en = 1'b0;
        #2;
        if (q1 !== 1'b1) begin
            $display("FAIL: q1 did not match expected 1. Got %b", q1);
            errors = errors + 1;
        end
        if (q0 !== 1'b1) begin
            $display("FAIL: q0 did not match expected 1. Got %b", q0);
            errors = errors + 1;
        end
        @(negedge clk);
        en = 1'b1;
        #2;
        if (q1 !== 1'b0) begin
            $display("FAIL: q1 did not match expected 0. Got %b", q1);
            errors = errors + 1;
        end
        if (q0 !== 1'b0) begin
            $display("FAIL: q0 did not match expected 0. Got %b", q0);
            errors = errors + 1;
        end
        @(negedge clk);
        en = 1'b1;
        #2;
        if (q1 !== 1'b0) begin
            $display("FAIL: q1 did not match expected 0. Got %b", q1);
            errors = errors + 1;
        end
        if (q0 !== 1'b1) begin
            $display("FAIL: q0 did not match expected 1. Got %b", q0);
            errors = errors + 1;
        end
        @(negedge clk);
        en = 1'b0;
        #2;
        if (q1 !== 1'b0) begin
            $display("FAIL: q1 did not match expected 0. Got %b", q1);
            errors = errors + 1;
        end
        if (q0 !== 1'b1) begin
            $display("FAIL: q0 did not match expected 1. Got %b", q0);
            errors = errors + 1;
        end
        @(negedge clk);
        en = 1'b1;
        #2;
        if (q1 !== 1'b1) begin
            $display("FAIL: q1 did not match expected 1. Got %b", q1);
            errors = errors + 1;
        end
        if (q0 !== 1'b0) begin
            $display("FAIL: q0 did not match expected 0. Got %b", q0);
            errors = errors + 1;
        end
        @(negedge clk);
        en = 1'b0;
        #2;
        if (q1 !== 1'b1) begin
            $display("FAIL: q1 did not match expected 1. Got %b", q1);
            errors = errors + 1;
        end
        if (q0 !== 1'b0) begin
            $display("FAIL: q0 did not match expected 0. Got %b", q0);
            errors = errors + 1;
        end
        @(negedge clk);
        en = 1'b1;
        #2;
        if (q1 !== 1'b1) begin
            $display("FAIL: q1 did not match expected 1. Got %b", q1);
            errors = errors + 1;
        end
        if (q0 !== 1'b1) begin
            $display("FAIL: q0 did not match expected 1. Got %b", q0);
            errors = errors + 1;
        end
        @(negedge clk);
        en = 1'b1;
        #2;
        if (q1 !== 1'b0) begin
            $display("FAIL: q1 did not match expected 0. Got %b", q1);
            errors = errors + 1;
        end
        if (q0 !== 1'b0) begin
            $display("FAIL: q0 did not match expected 0. Got %b", q0);
            errors = errors + 1;
        end
        @(negedge clk);
        en = 1'b0;
        #2;
        if (q1 !== 1'b0) begin
            $display("FAIL: q1 did not match expected 0. Got %b", q1);
            errors = errors + 1;
        end
        if (q0 !== 1'b0) begin
            $display("FAIL: q0 did not match expected 0. Got %b", q0);
            errors = errors + 1;
        end
        @(negedge clk);
        en = 1'b1;
        #2;
        if (q1 !== 1'b0) begin
            $display("FAIL: q1 did not match expected 0. Got %b", q1);
            errors = errors + 1;
        end
        if (q0 !== 1'b1) begin
            $display("FAIL: q0 did not match expected 1. Got %b", q0);
            errors = errors + 1;
        end
        @(negedge clk);
        en = 1'b1;
        #2;
        if (q1 !== 1'b1) begin
            $display("FAIL: q1 did not match expected 1. Got %b", q1);
            errors = errors + 1;
        end
        if (q0 !== 1'b0) begin
            $display("FAIL: q0 did not match expected 0. Got %b", q0);
            errors = errors + 1;
        end
        @(negedge clk);
        en = 1'b1;
        #2;
        if (q1 !== 1'b1) begin
            $display("FAIL: q1 did not match expected 1. Got %b", q1);
            errors = errors + 1;
        end
        if (q0 !== 1'b1) begin
            $display("FAIL: q0 did not match expected 1. Got %b", q0);
            errors = errors + 1;
        end
        @(negedge clk);
        en = 1'b1;
        #2;
        if (q1 !== 1'b0) begin
            $display("FAIL: q1 did not match expected 0. Got %b", q1);
            errors = errors + 1;
        end
        if (q0 !== 1'b0) begin
            $display("FAIL: q0 did not match expected 0. Got %b", q0);
            errors = errors + 1;
        end
        @(negedge clk);
        en = 1'b1;
        #2;
        if (q1 !== 1'b0) begin
            $display("FAIL: q1 did not match expected 0. Got %b", q1);
            errors = errors + 1;
        end
        if (q0 !== 1'b1) begin
            $display("FAIL: q0 did not match expected 1. Got %b", q0);
            errors = errors + 1;
        end
        @(negedge clk);
        en = 1'b0;
        #2;
        if (q1 !== 1'b0) begin
            $display("FAIL: q1 did not match expected 0. Got %b", q1);
            errors = errors + 1;
        end
        if (q0 !== 1'b1) begin
            $display("FAIL: q0 did not match expected 1. Got %b", q0);
            errors = errors + 1;
        end
        @(negedge clk);
        en = 1'b0;
        #2;
        if (q1 !== 1'b0) begin
            $display("FAIL: q1 did not match expected 0. Got %b", q1);
            errors = errors + 1;
        end
        if (q0 !== 1'b1) begin
            $display("FAIL: q0 did not match expected 1. Got %b", q0);
            errors = errors + 1;
        end
        @(negedge clk);
        en = 1'b1;
        #2;
        if (q1 !== 1'b1) begin
            $display("FAIL: q1 did not match expected 1. Got %b", q1);
            errors = errors + 1;
        end
        if (q0 !== 1'b0) begin
            $display("FAIL: q0 did not match expected 0. Got %b", q0);
            errors = errors + 1;
        end
        @(negedge clk);
        en = 1'b1;
        #2;
        if (q1 !== 1'b1) begin
            $display("FAIL: q1 did not match expected 1. Got %b", q1);
            errors = errors + 1;
        end
        if (q0 !== 1'b1) begin
            $display("FAIL: q0 did not match expected 1. Got %b", q0);
            errors = errors + 1;
        end
        @(negedge clk);
        en = 1'b1;
        #2;
        if (q1 !== 1'b0) begin
            $display("FAIL: q1 did not match expected 0. Got %b", q1);
            errors = errors + 1;
        end
        if (q0 !== 1'b0) begin
            $display("FAIL: q0 did not match expected 0. Got %b", q0);
            errors = errors + 1;
        end
        @(negedge clk);
        en = 1'b0;
        #2;
        if (q1 !== 1'b0) begin
            $display("FAIL: q1 did not match expected 0. Got %b", q1);
            errors = errors + 1;
        end
        if (q0 !== 1'b0) begin
            $display("FAIL: q0 did not match expected 0. Got %b", q0);
            errors = errors + 1;
        end
        @(negedge clk);
        en = 1'b1;
        #2;
        if (q1 !== 1'b0) begin
            $display("FAIL: q1 did not match expected 0. Got %b", q1);
            errors = errors + 1;
        end
        if (q0 !== 1'b1) begin
            $display("FAIL: q0 did not match expected 1. Got %b", q0);
            errors = errors + 1;
        end
        @(negedge clk);
        if (errors == 0) begin
            $display("PASS");
        end else begin
            $display("FAIL (with %d errors)", errors);
        end
        $finish;
    end
endmodule
