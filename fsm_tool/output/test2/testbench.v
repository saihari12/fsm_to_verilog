module fsm_tb;
    reg clk;
    reg reset;
    reg x;
    wire z;
    fsm uut (
        .clk(clk),
        .reset(reset),
        .x(x),
        .z(z)
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
        x = 0;
        #20;
        reset = 0;
        @(negedge clk);
        x = 1'b1;
        #2;
        if (z !== 1'b0) begin
            $display("FAIL: z did not match expected 0. Got %b", z);
            errors = errors + 1;
        end
        @(negedge clk);
        x = 1'b1;
        #2;
        if (z !== 1'b0) begin
            $display("FAIL: z did not match expected 0. Got %b", z);
            errors = errors + 1;
        end
        @(negedge clk);
        x = 1'b0;
        #2;
        if (z !== 1'b0) begin
            $display("FAIL: z did not match expected 0. Got %b", z);
            errors = errors + 1;
        end
        @(negedge clk);
        x = 1'b1;
        #2;
        if (z !== 1'b1) begin
            $display("FAIL: z did not match expected 1. Got %b", z);
            errors = errors + 1;
        end
        @(negedge clk);
        x = 1'b1;
        #2;
        if (z !== 1'b0) begin
            $display("FAIL: z did not match expected 0. Got %b", z);
            errors = errors + 1;
        end
        @(negedge clk);
        x = 1'b0;
        #2;
        if (z !== 1'b0) begin
            $display("FAIL: z did not match expected 0. Got %b", z);
            errors = errors + 1;
        end
        @(negedge clk);
        x = 1'b0;
        #2;
        if (z !== 1'b0) begin
            $display("FAIL: z did not match expected 0. Got %b", z);
            errors = errors + 1;
        end
        @(negedge clk);
        x = 1'b1;
        #2;
        if (z !== 1'b0) begin
            $display("FAIL: z did not match expected 0. Got %b", z);
            errors = errors + 1;
        end
        @(negedge clk);
        x = 1'b0;
        #2;
        if (z !== 1'b0) begin
            $display("FAIL: z did not match expected 0. Got %b", z);
            errors = errors + 1;
        end
        @(negedge clk);
        x = 1'b1;
        #2;
        if (z !== 1'b1) begin
            $display("FAIL: z did not match expected 1. Got %b", z);
            errors = errors + 1;
        end
        @(negedge clk);
        x = 1'b1;
        #2;
        if (z !== 1'b0) begin
            $display("FAIL: z did not match expected 0. Got %b", z);
            errors = errors + 1;
        end
        @(negedge clk);
        x = 1'b0;
        #2;
        if (z !== 1'b0) begin
            $display("FAIL: z did not match expected 0. Got %b", z);
            errors = errors + 1;
        end
        @(negedge clk);
        x = 1'b0;
        #2;
        if (z !== 1'b0) begin
            $display("FAIL: z did not match expected 0. Got %b", z);
            errors = errors + 1;
        end
        @(negedge clk);
        x = 1'b0;
        #2;
        if (z !== 1'b0) begin
            $display("FAIL: z did not match expected 0. Got %b", z);
            errors = errors + 1;
        end
        @(negedge clk);
        x = 1'b0;
        #2;
        if (z !== 1'b0) begin
            $display("FAIL: z did not match expected 0. Got %b", z);
            errors = errors + 1;
        end
        @(negedge clk);
        x = 1'b1;
        #2;
        if (z !== 1'b0) begin
            $display("FAIL: z did not match expected 0. Got %b", z);
            errors = errors + 1;
        end
        @(negedge clk);
        x = 1'b0;
        #2;
        if (z !== 1'b0) begin
            $display("FAIL: z did not match expected 0. Got %b", z);
            errors = errors + 1;
        end
        @(negedge clk);
        x = 1'b1;
        #2;
        if (z !== 1'b1) begin
            $display("FAIL: z did not match expected 1. Got %b", z);
            errors = errors + 1;
        end
        @(negedge clk);
        x = 1'b0;
        #2;
        if (z !== 1'b0) begin
            $display("FAIL: z did not match expected 0. Got %b", z);
            errors = errors + 1;
        end
        @(negedge clk);
        x = 1'b1;
        #2;
        if (z !== 1'b1) begin
            $display("FAIL: z did not match expected 1. Got %b", z);
            errors = errors + 1;
        end
        @(negedge clk);
        x = 1'b1;
        #2;
        if (z !== 1'b0) begin
            $display("FAIL: z did not match expected 0. Got %b", z);
            errors = errors + 1;
        end
        @(negedge clk);
        x = 1'b1;
        #2;
        if (z !== 1'b0) begin
            $display("FAIL: z did not match expected 0. Got %b", z);
            errors = errors + 1;
        end
        @(negedge clk);
        x = 1'b1;
        #2;
        if (z !== 1'b0) begin
            $display("FAIL: z did not match expected 0. Got %b", z);
            errors = errors + 1;
        end
        @(negedge clk);
        x = 1'b0;
        #2;
        if (z !== 1'b0) begin
            $display("FAIL: z did not match expected 0. Got %b", z);
            errors = errors + 1;
        end
        @(negedge clk);
        x = 1'b0;
        #2;
        if (z !== 1'b0) begin
            $display("FAIL: z did not match expected 0. Got %b", z);
            errors = errors + 1;
        end
        @(negedge clk);
        x = 1'b1;
        #2;
        if (z !== 1'b0) begin
            $display("FAIL: z did not match expected 0. Got %b", z);
            errors = errors + 1;
        end
        @(negedge clk);
        x = 1'b1;
        #2;
        if (z !== 1'b0) begin
            $display("FAIL: z did not match expected 0. Got %b", z);
            errors = errors + 1;
        end
        @(negedge clk);
        x = 1'b1;
        #2;
        if (z !== 1'b0) begin
            $display("FAIL: z did not match expected 0. Got %b", z);
            errors = errors + 1;
        end
        @(negedge clk);
        x = 1'b1;
        #2;
        if (z !== 1'b0) begin
            $display("FAIL: z did not match expected 0. Got %b", z);
            errors = errors + 1;
        end
        @(negedge clk);
        x = 1'b1;
        #2;
        if (z !== 1'b0) begin
            $display("FAIL: z did not match expected 0. Got %b", z);
            errors = errors + 1;
        end
        @(negedge clk);
        x = 1'b1;
        #2;
        if (z !== 1'b0) begin
            $display("FAIL: z did not match expected 0. Got %b", z);
            errors = errors + 1;
        end
        @(negedge clk);
        x = 1'b0;
        #2;
        if (z !== 1'b0) begin
            $display("FAIL: z did not match expected 0. Got %b", z);
            errors = errors + 1;
        end
        @(negedge clk);
        x = 1'b1;
        #2;
        if (z !== 1'b1) begin
            $display("FAIL: z did not match expected 1. Got %b", z);
            errors = errors + 1;
        end
        @(negedge clk);
        x = 1'b0;
        #2;
        if (z !== 1'b0) begin
            $display("FAIL: z did not match expected 0. Got %b", z);
            errors = errors + 1;
        end
        @(negedge clk);
        x = 1'b1;
        #2;
        if (z !== 1'b1) begin
            $display("FAIL: z did not match expected 1. Got %b", z);
            errors = errors + 1;
        end
        @(negedge clk);
        x = 1'b0;
        #2;
        if (z !== 1'b0) begin
            $display("FAIL: z did not match expected 0. Got %b", z);
            errors = errors + 1;
        end
        @(negedge clk);
        x = 1'b1;
        #2;
        if (z !== 1'b1) begin
            $display("FAIL: z did not match expected 1. Got %b", z);
            errors = errors + 1;
        end
        @(negedge clk);
        x = 1'b1;
        #2;
        if (z !== 1'b0) begin
            $display("FAIL: z did not match expected 0. Got %b", z);
            errors = errors + 1;
        end
        @(negedge clk);
        x = 1'b0;
        #2;
        if (z !== 1'b0) begin
            $display("FAIL: z did not match expected 0. Got %b", z);
            errors = errors + 1;
        end
        @(negedge clk);
        x = 1'b0;
        #2;
        if (z !== 1'b0) begin
            $display("FAIL: z did not match expected 0. Got %b", z);
            errors = errors + 1;
        end
        @(negedge clk);
        x = 1'b0;
        #2;
        if (z !== 1'b0) begin
            $display("FAIL: z did not match expected 0. Got %b", z);
            errors = errors + 1;
        end
        @(negedge clk);
        x = 1'b1;
        #2;
        if (z !== 1'b0) begin
            $display("FAIL: z did not match expected 0. Got %b", z);
            errors = errors + 1;
        end
        @(negedge clk);
        x = 1'b1;
        #2;
        if (z !== 1'b0) begin
            $display("FAIL: z did not match expected 0. Got %b", z);
            errors = errors + 1;
        end
        @(negedge clk);
        x = 1'b0;
        #2;
        if (z !== 1'b0) begin
            $display("FAIL: z did not match expected 0. Got %b", z);
            errors = errors + 1;
        end
        @(negedge clk);
        x = 1'b1;
        #2;
        if (z !== 1'b1) begin
            $display("FAIL: z did not match expected 1. Got %b", z);
            errors = errors + 1;
        end
        @(negedge clk);
        x = 1'b1;
        #2;
        if (z !== 1'b0) begin
            $display("FAIL: z did not match expected 0. Got %b", z);
            errors = errors + 1;
        end
        @(negedge clk);
        x = 1'b0;
        #2;
        if (z !== 1'b0) begin
            $display("FAIL: z did not match expected 0. Got %b", z);
            errors = errors + 1;
        end
        @(negedge clk);
        x = 1'b1;
        #2;
        if (z !== 1'b1) begin
            $display("FAIL: z did not match expected 1. Got %b", z);
            errors = errors + 1;
        end
        @(negedge clk);
        x = 1'b0;
        #2;
        if (z !== 1'b0) begin
            $display("FAIL: z did not match expected 0. Got %b", z);
            errors = errors + 1;
        end
        @(negedge clk);
        x = 1'b1;
        #2;
        if (z !== 1'b1) begin
            $display("FAIL: z did not match expected 1. Got %b", z);
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
