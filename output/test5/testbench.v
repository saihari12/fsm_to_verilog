module fsm_tb;
    reg clk;
    reg reset;
    reg timer_done;
    wire r;
    wire g;
    wire y;
    fsm uut (
        .clk(clk),
        .reset(reset),
        .timer_done(timer_done),
        .r(r),
        .g(g),
        .y(y)
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
        timer_done = 0;
        #20;
        reset = 0;
        @(negedge clk);
        timer_done = 1'b0;
        #2;
        if (r !== 1'b1) begin
            $display("FAIL: r did not match expected 1. Got %b", r);
            errors = errors + 1;
        end
        if (g !== 1'b0) begin
            $display("FAIL: g did not match expected 0. Got %b", g);
            errors = errors + 1;
        end
        if (y !== 1'b0) begin
            $display("FAIL: y did not match expected 0. Got %b", y);
            errors = errors + 1;
        end
        @(negedge clk);
        timer_done = 1'b0;
        #2;
        if (r !== 1'b1) begin
            $display("FAIL: r did not match expected 1. Got %b", r);
            errors = errors + 1;
        end
        if (g !== 1'b0) begin
            $display("FAIL: g did not match expected 0. Got %b", g);
            errors = errors + 1;
        end
        if (y !== 1'b0) begin
            $display("FAIL: y did not match expected 0. Got %b", y);
            errors = errors + 1;
        end
        @(negedge clk);
        timer_done = 1'b1;
        #2;
        if (r !== 1'b0) begin
            $display("FAIL: r did not match expected 0. Got %b", r);
            errors = errors + 1;
        end
        if (g !== 1'b1) begin
            $display("FAIL: g did not match expected 1. Got %b", g);
            errors = errors + 1;
        end
        if (y !== 1'b0) begin
            $display("FAIL: y did not match expected 0. Got %b", y);
            errors = errors + 1;
        end
        @(negedge clk);
        timer_done = 1'b0;
        #2;
        if (r !== 1'b0) begin
            $display("FAIL: r did not match expected 0. Got %b", r);
            errors = errors + 1;
        end
        if (g !== 1'b1) begin
            $display("FAIL: g did not match expected 1. Got %b", g);
            errors = errors + 1;
        end
        if (y !== 1'b0) begin
            $display("FAIL: y did not match expected 0. Got %b", y);
            errors = errors + 1;
        end
        @(negedge clk);
        timer_done = 1'b0;
        #2;
        if (r !== 1'b0) begin
            $display("FAIL: r did not match expected 0. Got %b", r);
            errors = errors + 1;
        end
        if (g !== 1'b1) begin
            $display("FAIL: g did not match expected 1. Got %b", g);
            errors = errors + 1;
        end
        if (y !== 1'b0) begin
            $display("FAIL: y did not match expected 0. Got %b", y);
            errors = errors + 1;
        end
        @(negedge clk);
        timer_done = 1'b1;
        #2;
        if (r !== 1'b0) begin
            $display("FAIL: r did not match expected 0. Got %b", r);
            errors = errors + 1;
        end
        if (g !== 1'b0) begin
            $display("FAIL: g did not match expected 0. Got %b", g);
            errors = errors + 1;
        end
        if (y !== 1'b1) begin
            $display("FAIL: y did not match expected 1. Got %b", y);
            errors = errors + 1;
        end
        @(negedge clk);
        timer_done = 1'b0;
        #2;
        if (r !== 1'b0) begin
            $display("FAIL: r did not match expected 0. Got %b", r);
            errors = errors + 1;
        end
        if (g !== 1'b0) begin
            $display("FAIL: g did not match expected 0. Got %b", g);
            errors = errors + 1;
        end
        if (y !== 1'b1) begin
            $display("FAIL: y did not match expected 1. Got %b", y);
            errors = errors + 1;
        end
        @(negedge clk);
        timer_done = 1'b1;
        #2;
        if (r !== 1'b1) begin
            $display("FAIL: r did not match expected 1. Got %b", r);
            errors = errors + 1;
        end
        if (g !== 1'b0) begin
            $display("FAIL: g did not match expected 0. Got %b", g);
            errors = errors + 1;
        end
        if (y !== 1'b0) begin
            $display("FAIL: y did not match expected 0. Got %b", y);
            errors = errors + 1;
        end
        @(negedge clk);
        timer_done = 1'b0;
        #2;
        if (r !== 1'b1) begin
            $display("FAIL: r did not match expected 1. Got %b", r);
            errors = errors + 1;
        end
        if (g !== 1'b0) begin
            $display("FAIL: g did not match expected 0. Got %b", g);
            errors = errors + 1;
        end
        if (y !== 1'b0) begin
            $display("FAIL: y did not match expected 0. Got %b", y);
            errors = errors + 1;
        end
        @(negedge clk);
        timer_done = 1'b1;
        #2;
        if (r !== 1'b0) begin
            $display("FAIL: r did not match expected 0. Got %b", r);
            errors = errors + 1;
        end
        if (g !== 1'b1) begin
            $display("FAIL: g did not match expected 1. Got %b", g);
            errors = errors + 1;
        end
        if (y !== 1'b0) begin
            $display("FAIL: y did not match expected 0. Got %b", y);
            errors = errors + 1;
        end
        @(negedge clk);
        timer_done = 1'b0;
        #2;
        if (r !== 1'b0) begin
            $display("FAIL: r did not match expected 0. Got %b", r);
            errors = errors + 1;
        end
        if (g !== 1'b1) begin
            $display("FAIL: g did not match expected 1. Got %b", g);
            errors = errors + 1;
        end
        if (y !== 1'b0) begin
            $display("FAIL: y did not match expected 0. Got %b", y);
            errors = errors + 1;
        end
        @(negedge clk);
        timer_done = 1'b0;
        #2;
        if (r !== 1'b0) begin
            $display("FAIL: r did not match expected 0. Got %b", r);
            errors = errors + 1;
        end
        if (g !== 1'b1) begin
            $display("FAIL: g did not match expected 1. Got %b", g);
            errors = errors + 1;
        end
        if (y !== 1'b0) begin
            $display("FAIL: y did not match expected 0. Got %b", y);
            errors = errors + 1;
        end
        @(negedge clk);
        timer_done = 1'b0;
        #2;
        if (r !== 1'b0) begin
            $display("FAIL: r did not match expected 0. Got %b", r);
            errors = errors + 1;
        end
        if (g !== 1'b1) begin
            $display("FAIL: g did not match expected 1. Got %b", g);
            errors = errors + 1;
        end
        if (y !== 1'b0) begin
            $display("FAIL: y did not match expected 0. Got %b", y);
            errors = errors + 1;
        end
        @(negedge clk);
        timer_done = 1'b0;
        #2;
        if (r !== 1'b0) begin
            $display("FAIL: r did not match expected 0. Got %b", r);
            errors = errors + 1;
        end
        if (g !== 1'b1) begin
            $display("FAIL: g did not match expected 1. Got %b", g);
            errors = errors + 1;
        end
        if (y !== 1'b0) begin
            $display("FAIL: y did not match expected 0. Got %b", y);
            errors = errors + 1;
        end
        @(negedge clk);
        timer_done = 1'b1;
        #2;
        if (r !== 1'b0) begin
            $display("FAIL: r did not match expected 0. Got %b", r);
            errors = errors + 1;
        end
        if (g !== 1'b0) begin
            $display("FAIL: g did not match expected 0. Got %b", g);
            errors = errors + 1;
        end
        if (y !== 1'b1) begin
            $display("FAIL: y did not match expected 1. Got %b", y);
            errors = errors + 1;
        end
        @(negedge clk);
        timer_done = 1'b1;
        #2;
        if (r !== 1'b1) begin
            $display("FAIL: r did not match expected 1. Got %b", r);
            errors = errors + 1;
        end
        if (g !== 1'b0) begin
            $display("FAIL: g did not match expected 0. Got %b", g);
            errors = errors + 1;
        end
        if (y !== 1'b0) begin
            $display("FAIL: y did not match expected 0. Got %b", y);
            errors = errors + 1;
        end
        @(negedge clk);
        timer_done = 1'b0;
        #2;
        if (r !== 1'b1) begin
            $display("FAIL: r did not match expected 1. Got %b", r);
            errors = errors + 1;
        end
        if (g !== 1'b0) begin
            $display("FAIL: g did not match expected 0. Got %b", g);
            errors = errors + 1;
        end
        if (y !== 1'b0) begin
            $display("FAIL: y did not match expected 0. Got %b", y);
            errors = errors + 1;
        end
        @(negedge clk);
        timer_done = 1'b1;
        #2;
        if (r !== 1'b0) begin
            $display("FAIL: r did not match expected 0. Got %b", r);
            errors = errors + 1;
        end
        if (g !== 1'b1) begin
            $display("FAIL: g did not match expected 1. Got %b", g);
            errors = errors + 1;
        end
        if (y !== 1'b0) begin
            $display("FAIL: y did not match expected 0. Got %b", y);
            errors = errors + 1;
        end
        @(negedge clk);
        timer_done = 1'b1;
        #2;
        if (r !== 1'b0) begin
            $display("FAIL: r did not match expected 0. Got %b", r);
            errors = errors + 1;
        end
        if (g !== 1'b0) begin
            $display("FAIL: g did not match expected 0. Got %b", g);
            errors = errors + 1;
        end
        if (y !== 1'b1) begin
            $display("FAIL: y did not match expected 1. Got %b", y);
            errors = errors + 1;
        end
        @(negedge clk);
        timer_done = 1'b0;
        #2;
        if (r !== 1'b0) begin
            $display("FAIL: r did not match expected 0. Got %b", r);
            errors = errors + 1;
        end
        if (g !== 1'b0) begin
            $display("FAIL: g did not match expected 0. Got %b", g);
            errors = errors + 1;
        end
        if (y !== 1'b1) begin
            $display("FAIL: y did not match expected 1. Got %b", y);
            errors = errors + 1;
        end
        @(negedge clk);
        timer_done = 1'b0;
        #2;
        if (r !== 1'b0) begin
            $display("FAIL: r did not match expected 0. Got %b", r);
            errors = errors + 1;
        end
        if (g !== 1'b0) begin
            $display("FAIL: g did not match expected 0. Got %b", g);
            errors = errors + 1;
        end
        if (y !== 1'b1) begin
            $display("FAIL: y did not match expected 1. Got %b", y);
            errors = errors + 1;
        end
        @(negedge clk);
        timer_done = 1'b0;
        #2;
        if (r !== 1'b0) begin
            $display("FAIL: r did not match expected 0. Got %b", r);
            errors = errors + 1;
        end
        if (g !== 1'b0) begin
            $display("FAIL: g did not match expected 0. Got %b", g);
            errors = errors + 1;
        end
        if (y !== 1'b1) begin
            $display("FAIL: y did not match expected 1. Got %b", y);
            errors = errors + 1;
        end
        @(negedge clk);
        timer_done = 1'b0;
        #2;
        if (r !== 1'b0) begin
            $display("FAIL: r did not match expected 0. Got %b", r);
            errors = errors + 1;
        end
        if (g !== 1'b0) begin
            $display("FAIL: g did not match expected 0. Got %b", g);
            errors = errors + 1;
        end
        if (y !== 1'b1) begin
            $display("FAIL: y did not match expected 1. Got %b", y);
            errors = errors + 1;
        end
        @(negedge clk);
        timer_done = 1'b1;
        #2;
        if (r !== 1'b1) begin
            $display("FAIL: r did not match expected 1. Got %b", r);
            errors = errors + 1;
        end
        if (g !== 1'b0) begin
            $display("FAIL: g did not match expected 0. Got %b", g);
            errors = errors + 1;
        end
        if (y !== 1'b0) begin
            $display("FAIL: y did not match expected 0. Got %b", y);
            errors = errors + 1;
        end
        @(negedge clk);
        timer_done = 1'b1;
        #2;
        if (r !== 1'b0) begin
            $display("FAIL: r did not match expected 0. Got %b", r);
            errors = errors + 1;
        end
        if (g !== 1'b1) begin
            $display("FAIL: g did not match expected 1. Got %b", g);
            errors = errors + 1;
        end
        if (y !== 1'b0) begin
            $display("FAIL: y did not match expected 0. Got %b", y);
            errors = errors + 1;
        end
        @(negedge clk);
        timer_done = 1'b1;
        #2;
        if (r !== 1'b0) begin
            $display("FAIL: r did not match expected 0. Got %b", r);
            errors = errors + 1;
        end
        if (g !== 1'b0) begin
            $display("FAIL: g did not match expected 0. Got %b", g);
            errors = errors + 1;
        end
        if (y !== 1'b1) begin
            $display("FAIL: y did not match expected 1. Got %b", y);
            errors = errors + 1;
        end
        @(negedge clk);
        timer_done = 1'b1;
        #2;
        if (r !== 1'b1) begin
            $display("FAIL: r did not match expected 1. Got %b", r);
            errors = errors + 1;
        end
        if (g !== 1'b0) begin
            $display("FAIL: g did not match expected 0. Got %b", g);
            errors = errors + 1;
        end
        if (y !== 1'b0) begin
            $display("FAIL: y did not match expected 0. Got %b", y);
            errors = errors + 1;
        end
        @(negedge clk);
        timer_done = 1'b1;
        #2;
        if (r !== 1'b0) begin
            $display("FAIL: r did not match expected 0. Got %b", r);
            errors = errors + 1;
        end
        if (g !== 1'b1) begin
            $display("FAIL: g did not match expected 1. Got %b", g);
            errors = errors + 1;
        end
        if (y !== 1'b0) begin
            $display("FAIL: y did not match expected 0. Got %b", y);
            errors = errors + 1;
        end
        @(negedge clk);
        timer_done = 1'b0;
        #2;
        if (r !== 1'b0) begin
            $display("FAIL: r did not match expected 0. Got %b", r);
            errors = errors + 1;
        end
        if (g !== 1'b1) begin
            $display("FAIL: g did not match expected 1. Got %b", g);
            errors = errors + 1;
        end
        if (y !== 1'b0) begin
            $display("FAIL: y did not match expected 0. Got %b", y);
            errors = errors + 1;
        end
        @(negedge clk);
        timer_done = 1'b0;
        #2;
        if (r !== 1'b0) begin
            $display("FAIL: r did not match expected 0. Got %b", r);
            errors = errors + 1;
        end
        if (g !== 1'b1) begin
            $display("FAIL: g did not match expected 1. Got %b", g);
            errors = errors + 1;
        end
        if (y !== 1'b0) begin
            $display("FAIL: y did not match expected 0. Got %b", y);
            errors = errors + 1;
        end
        @(negedge clk);
        timer_done = 1'b0;
        #2;
        if (r !== 1'b0) begin
            $display("FAIL: r did not match expected 0. Got %b", r);
            errors = errors + 1;
        end
        if (g !== 1'b1) begin
            $display("FAIL: g did not match expected 1. Got %b", g);
            errors = errors + 1;
        end
        if (y !== 1'b0) begin
            $display("FAIL: y did not match expected 0. Got %b", y);
            errors = errors + 1;
        end
        @(negedge clk);
        timer_done = 1'b0;
        #2;
        if (r !== 1'b0) begin
            $display("FAIL: r did not match expected 0. Got %b", r);
            errors = errors + 1;
        end
        if (g !== 1'b1) begin
            $display("FAIL: g did not match expected 1. Got %b", g);
            errors = errors + 1;
        end
        if (y !== 1'b0) begin
            $display("FAIL: y did not match expected 0. Got %b", y);
            errors = errors + 1;
        end
        @(negedge clk);
        timer_done = 1'b0;
        #2;
        if (r !== 1'b0) begin
            $display("FAIL: r did not match expected 0. Got %b", r);
            errors = errors + 1;
        end
        if (g !== 1'b1) begin
            $display("FAIL: g did not match expected 1. Got %b", g);
            errors = errors + 1;
        end
        if (y !== 1'b0) begin
            $display("FAIL: y did not match expected 0. Got %b", y);
            errors = errors + 1;
        end
        @(negedge clk);
        timer_done = 1'b0;
        #2;
        if (r !== 1'b0) begin
            $display("FAIL: r did not match expected 0. Got %b", r);
            errors = errors + 1;
        end
        if (g !== 1'b1) begin
            $display("FAIL: g did not match expected 1. Got %b", g);
            errors = errors + 1;
        end
        if (y !== 1'b0) begin
            $display("FAIL: y did not match expected 0. Got %b", y);
            errors = errors + 1;
        end
        @(negedge clk);
        timer_done = 1'b0;
        #2;
        if (r !== 1'b0) begin
            $display("FAIL: r did not match expected 0. Got %b", r);
            errors = errors + 1;
        end
        if (g !== 1'b1) begin
            $display("FAIL: g did not match expected 1. Got %b", g);
            errors = errors + 1;
        end
        if (y !== 1'b0) begin
            $display("FAIL: y did not match expected 0. Got %b", y);
            errors = errors + 1;
        end
        @(negedge clk);
        timer_done = 1'b0;
        #2;
        if (r !== 1'b0) begin
            $display("FAIL: r did not match expected 0. Got %b", r);
            errors = errors + 1;
        end
        if (g !== 1'b1) begin
            $display("FAIL: g did not match expected 1. Got %b", g);
            errors = errors + 1;
        end
        if (y !== 1'b0) begin
            $display("FAIL: y did not match expected 0. Got %b", y);
            errors = errors + 1;
        end
        @(negedge clk);
        timer_done = 1'b1;
        #2;
        if (r !== 1'b0) begin
            $display("FAIL: r did not match expected 0. Got %b", r);
            errors = errors + 1;
        end
        if (g !== 1'b0) begin
            $display("FAIL: g did not match expected 0. Got %b", g);
            errors = errors + 1;
        end
        if (y !== 1'b1) begin
            $display("FAIL: y did not match expected 1. Got %b", y);
            errors = errors + 1;
        end
        @(negedge clk);
        timer_done = 1'b1;
        #2;
        if (r !== 1'b1) begin
            $display("FAIL: r did not match expected 1. Got %b", r);
            errors = errors + 1;
        end
        if (g !== 1'b0) begin
            $display("FAIL: g did not match expected 0. Got %b", g);
            errors = errors + 1;
        end
        if (y !== 1'b0) begin
            $display("FAIL: y did not match expected 0. Got %b", y);
            errors = errors + 1;
        end
        @(negedge clk);
        timer_done = 1'b0;
        #2;
        if (r !== 1'b1) begin
            $display("FAIL: r did not match expected 1. Got %b", r);
            errors = errors + 1;
        end
        if (g !== 1'b0) begin
            $display("FAIL: g did not match expected 0. Got %b", g);
            errors = errors + 1;
        end
        if (y !== 1'b0) begin
            $display("FAIL: y did not match expected 0. Got %b", y);
            errors = errors + 1;
        end
        @(negedge clk);
        timer_done = 1'b0;
        #2;
        if (r !== 1'b1) begin
            $display("FAIL: r did not match expected 1. Got %b", r);
            errors = errors + 1;
        end
        if (g !== 1'b0) begin
            $display("FAIL: g did not match expected 0. Got %b", g);
            errors = errors + 1;
        end
        if (y !== 1'b0) begin
            $display("FAIL: y did not match expected 0. Got %b", y);
            errors = errors + 1;
        end
        @(negedge clk);
        timer_done = 1'b0;
        #2;
        if (r !== 1'b1) begin
            $display("FAIL: r did not match expected 1. Got %b", r);
            errors = errors + 1;
        end
        if (g !== 1'b0) begin
            $display("FAIL: g did not match expected 0. Got %b", g);
            errors = errors + 1;
        end
        if (y !== 1'b0) begin
            $display("FAIL: y did not match expected 0. Got %b", y);
            errors = errors + 1;
        end
        @(negedge clk);
        timer_done = 1'b0;
        #2;
        if (r !== 1'b1) begin
            $display("FAIL: r did not match expected 1. Got %b", r);
            errors = errors + 1;
        end
        if (g !== 1'b0) begin
            $display("FAIL: g did not match expected 0. Got %b", g);
            errors = errors + 1;
        end
        if (y !== 1'b0) begin
            $display("FAIL: y did not match expected 0. Got %b", y);
            errors = errors + 1;
        end
        @(negedge clk);
        timer_done = 1'b1;
        #2;
        if (r !== 1'b0) begin
            $display("FAIL: r did not match expected 0. Got %b", r);
            errors = errors + 1;
        end
        if (g !== 1'b1) begin
            $display("FAIL: g did not match expected 1. Got %b", g);
            errors = errors + 1;
        end
        if (y !== 1'b0) begin
            $display("FAIL: y did not match expected 0. Got %b", y);
            errors = errors + 1;
        end
        @(negedge clk);
        timer_done = 1'b1;
        #2;
        if (r !== 1'b0) begin
            $display("FAIL: r did not match expected 0. Got %b", r);
            errors = errors + 1;
        end
        if (g !== 1'b0) begin
            $display("FAIL: g did not match expected 0. Got %b", g);
            errors = errors + 1;
        end
        if (y !== 1'b1) begin
            $display("FAIL: y did not match expected 1. Got %b", y);
            errors = errors + 1;
        end
        @(negedge clk);
        timer_done = 1'b0;
        #2;
        if (r !== 1'b0) begin
            $display("FAIL: r did not match expected 0. Got %b", r);
            errors = errors + 1;
        end
        if (g !== 1'b0) begin
            $display("FAIL: g did not match expected 0. Got %b", g);
            errors = errors + 1;
        end
        if (y !== 1'b1) begin
            $display("FAIL: y did not match expected 1. Got %b", y);
            errors = errors + 1;
        end
        @(negedge clk);
        timer_done = 1'b0;
        #2;
        if (r !== 1'b0) begin
            $display("FAIL: r did not match expected 0. Got %b", r);
            errors = errors + 1;
        end
        if (g !== 1'b0) begin
            $display("FAIL: g did not match expected 0. Got %b", g);
            errors = errors + 1;
        end
        if (y !== 1'b1) begin
            $display("FAIL: y did not match expected 1. Got %b", y);
            errors = errors + 1;
        end
        @(negedge clk);
        timer_done = 1'b1;
        #2;
        if (r !== 1'b1) begin
            $display("FAIL: r did not match expected 1. Got %b", r);
            errors = errors + 1;
        end
        if (g !== 1'b0) begin
            $display("FAIL: g did not match expected 0. Got %b", g);
            errors = errors + 1;
        end
        if (y !== 1'b0) begin
            $display("FAIL: y did not match expected 0. Got %b", y);
            errors = errors + 1;
        end
        @(negedge clk);
        timer_done = 1'b0;
        #2;
        if (r !== 1'b1) begin
            $display("FAIL: r did not match expected 1. Got %b", r);
            errors = errors + 1;
        end
        if (g !== 1'b0) begin
            $display("FAIL: g did not match expected 0. Got %b", g);
            errors = errors + 1;
        end
        if (y !== 1'b0) begin
            $display("FAIL: y did not match expected 0. Got %b", y);
            errors = errors + 1;
        end
        @(negedge clk);
        timer_done = 1'b0;
        #2;
        if (r !== 1'b1) begin
            $display("FAIL: r did not match expected 1. Got %b", r);
            errors = errors + 1;
        end
        if (g !== 1'b0) begin
            $display("FAIL: g did not match expected 0. Got %b", g);
            errors = errors + 1;
        end
        if (y !== 1'b0) begin
            $display("FAIL: y did not match expected 0. Got %b", y);
            errors = errors + 1;
        end
        @(negedge clk);
        timer_done = 1'b0;
        #2;
        if (r !== 1'b1) begin
            $display("FAIL: r did not match expected 1. Got %b", r);
            errors = errors + 1;
        end
        if (g !== 1'b0) begin
            $display("FAIL: g did not match expected 0. Got %b", g);
            errors = errors + 1;
        end
        if (y !== 1'b0) begin
            $display("FAIL: y did not match expected 0. Got %b", y);
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
