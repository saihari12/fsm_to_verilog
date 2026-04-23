module fsm_tb;
    reg clk;
    reg reset;
    reg coin;
    wire dispense;
    fsm uut (
        .clk(clk),
        .reset(reset),
        .coin(coin),
        .dispense(dispense)
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
        coin = 0;
        #20;
        reset = 0;
        @(negedge clk);
        coin = 1'b0;
        #2;
        if (dispense !== 1'b0) begin
            $display("FAIL: dispense did not match expected 0. Got %b", dispense);
            errors = errors + 1;
        end
        @(negedge clk);
        coin = 1'b0;
        #2;
        if (dispense !== 1'b0) begin
            $display("FAIL: dispense did not match expected 0. Got %b", dispense);
            errors = errors + 1;
        end
        @(negedge clk);
        coin = 1'b0;
        #2;
        if (dispense !== 1'b0) begin
            $display("FAIL: dispense did not match expected 0. Got %b", dispense);
            errors = errors + 1;
        end
        @(negedge clk);
        coin = 1'b0;
        #2;
        if (dispense !== 1'b0) begin
            $display("FAIL: dispense did not match expected 0. Got %b", dispense);
            errors = errors + 1;
        end
        @(negedge clk);
        coin = 1'b1;
        #2;
        if (dispense !== 1'b0) begin
            $display("FAIL: dispense did not match expected 0. Got %b", dispense);
            errors = errors + 1;
        end
        @(negedge clk);
        coin = 1'b1;
        #2;
        if (dispense !== 1'b1) begin
            $display("FAIL: dispense did not match expected 1. Got %b", dispense);
            errors = errors + 1;
        end
        @(negedge clk);
        coin = 1'b0;
        #2;
        if (dispense !== 1'b0) begin
            $display("FAIL: dispense did not match expected 0. Got %b", dispense);
            errors = errors + 1;
        end
        @(negedge clk);
        coin = 1'b1;
        #2;
        if (dispense !== 1'b0) begin
            $display("FAIL: dispense did not match expected 0. Got %b", dispense);
            errors = errors + 1;
        end
        @(negedge clk);
        coin = 1'b0;
        #2;
        if (dispense !== 1'b0) begin
            $display("FAIL: dispense did not match expected 0. Got %b", dispense);
            errors = errors + 1;
        end
        @(negedge clk);
        coin = 1'b1;
        #2;
        if (dispense !== 1'b1) begin
            $display("FAIL: dispense did not match expected 1. Got %b", dispense);
            errors = errors + 1;
        end
        @(negedge clk);
        coin = 1'b1;
        #2;
        if (dispense !== 1'b0) begin
            $display("FAIL: dispense did not match expected 0. Got %b", dispense);
            errors = errors + 1;
        end
        @(negedge clk);
        coin = 1'b0;
        #2;
        if (dispense !== 1'b0) begin
            $display("FAIL: dispense did not match expected 0. Got %b", dispense);
            errors = errors + 1;
        end
        @(negedge clk);
        coin = 1'b0;
        #2;
        if (dispense !== 1'b0) begin
            $display("FAIL: dispense did not match expected 0. Got %b", dispense);
            errors = errors + 1;
        end
        @(negedge clk);
        coin = 1'b0;
        #2;
        if (dispense !== 1'b0) begin
            $display("FAIL: dispense did not match expected 0. Got %b", dispense);
            errors = errors + 1;
        end
        @(negedge clk);
        coin = 1'b1;
        #2;
        if (dispense !== 1'b1) begin
            $display("FAIL: dispense did not match expected 1. Got %b", dispense);
            errors = errors + 1;
        end
        @(negedge clk);
        coin = 1'b1;
        #2;
        if (dispense !== 1'b0) begin
            $display("FAIL: dispense did not match expected 0. Got %b", dispense);
            errors = errors + 1;
        end
        @(negedge clk);
        coin = 1'b0;
        #2;
        if (dispense !== 1'b0) begin
            $display("FAIL: dispense did not match expected 0. Got %b", dispense);
            errors = errors + 1;
        end
        @(negedge clk);
        coin = 1'b0;
        #2;
        if (dispense !== 1'b0) begin
            $display("FAIL: dispense did not match expected 0. Got %b", dispense);
            errors = errors + 1;
        end
        @(negedge clk);
        coin = 1'b0;
        #2;
        if (dispense !== 1'b0) begin
            $display("FAIL: dispense did not match expected 0. Got %b", dispense);
            errors = errors + 1;
        end
        @(negedge clk);
        coin = 1'b0;
        #2;
        if (dispense !== 1'b0) begin
            $display("FAIL: dispense did not match expected 0. Got %b", dispense);
            errors = errors + 1;
        end
        @(negedge clk);
        coin = 1'b0;
        #2;
        if (dispense !== 1'b0) begin
            $display("FAIL: dispense did not match expected 0. Got %b", dispense);
            errors = errors + 1;
        end
        @(negedge clk);
        coin = 1'b0;
        #2;
        if (dispense !== 1'b0) begin
            $display("FAIL: dispense did not match expected 0. Got %b", dispense);
            errors = errors + 1;
        end
        @(negedge clk);
        coin = 1'b0;
        #2;
        if (dispense !== 1'b0) begin
            $display("FAIL: dispense did not match expected 0. Got %b", dispense);
            errors = errors + 1;
        end
        @(negedge clk);
        coin = 1'b1;
        #2;
        if (dispense !== 1'b1) begin
            $display("FAIL: dispense did not match expected 1. Got %b", dispense);
            errors = errors + 1;
        end
        @(negedge clk);
        coin = 1'b1;
        #2;
        if (dispense !== 1'b0) begin
            $display("FAIL: dispense did not match expected 0. Got %b", dispense);
            errors = errors + 1;
        end
        @(negedge clk);
        coin = 1'b1;
        #2;
        if (dispense !== 1'b1) begin
            $display("FAIL: dispense did not match expected 1. Got %b", dispense);
            errors = errors + 1;
        end
        @(negedge clk);
        coin = 1'b1;
        #2;
        if (dispense !== 1'b0) begin
            $display("FAIL: dispense did not match expected 0. Got %b", dispense);
            errors = errors + 1;
        end
        @(negedge clk);
        coin = 1'b1;
        #2;
        if (dispense !== 1'b1) begin
            $display("FAIL: dispense did not match expected 1. Got %b", dispense);
            errors = errors + 1;
        end
        @(negedge clk);
        coin = 1'b1;
        #2;
        if (dispense !== 1'b0) begin
            $display("FAIL: dispense did not match expected 0. Got %b", dispense);
            errors = errors + 1;
        end
        @(negedge clk);
        coin = 1'b1;
        #2;
        if (dispense !== 1'b1) begin
            $display("FAIL: dispense did not match expected 1. Got %b", dispense);
            errors = errors + 1;
        end
        @(negedge clk);
        coin = 1'b1;
        #2;
        if (dispense !== 1'b0) begin
            $display("FAIL: dispense did not match expected 0. Got %b", dispense);
            errors = errors + 1;
        end
        @(negedge clk);
        coin = 1'b0;
        #2;
        if (dispense !== 1'b0) begin
            $display("FAIL: dispense did not match expected 0. Got %b", dispense);
            errors = errors + 1;
        end
        @(negedge clk);
        coin = 1'b0;
        #2;
        if (dispense !== 1'b0) begin
            $display("FAIL: dispense did not match expected 0. Got %b", dispense);
            errors = errors + 1;
        end
        @(negedge clk);
        coin = 1'b0;
        #2;
        if (dispense !== 1'b0) begin
            $display("FAIL: dispense did not match expected 0. Got %b", dispense);
            errors = errors + 1;
        end
        @(negedge clk);
        coin = 1'b0;
        #2;
        if (dispense !== 1'b0) begin
            $display("FAIL: dispense did not match expected 0. Got %b", dispense);
            errors = errors + 1;
        end
        @(negedge clk);
        coin = 1'b1;
        #2;
        if (dispense !== 1'b1) begin
            $display("FAIL: dispense did not match expected 1. Got %b", dispense);
            errors = errors + 1;
        end
        @(negedge clk);
        coin = 1'b0;
        #2;
        if (dispense !== 1'b0) begin
            $display("FAIL: dispense did not match expected 0. Got %b", dispense);
            errors = errors + 1;
        end
        @(negedge clk);
        coin = 1'b0;
        #2;
        if (dispense !== 1'b0) begin
            $display("FAIL: dispense did not match expected 0. Got %b", dispense);
            errors = errors + 1;
        end
        @(negedge clk);
        coin = 1'b0;
        #2;
        if (dispense !== 1'b0) begin
            $display("FAIL: dispense did not match expected 0. Got %b", dispense);
            errors = errors + 1;
        end
        @(negedge clk);
        coin = 1'b0;
        #2;
        if (dispense !== 1'b0) begin
            $display("FAIL: dispense did not match expected 0. Got %b", dispense);
            errors = errors + 1;
        end
        @(negedge clk);
        coin = 1'b1;
        #2;
        if (dispense !== 1'b0) begin
            $display("FAIL: dispense did not match expected 0. Got %b", dispense);
            errors = errors + 1;
        end
        @(negedge clk);
        coin = 1'b1;
        #2;
        if (dispense !== 1'b1) begin
            $display("FAIL: dispense did not match expected 1. Got %b", dispense);
            errors = errors + 1;
        end
        @(negedge clk);
        coin = 1'b1;
        #2;
        if (dispense !== 1'b0) begin
            $display("FAIL: dispense did not match expected 0. Got %b", dispense);
            errors = errors + 1;
        end
        @(negedge clk);
        coin = 1'b0;
        #2;
        if (dispense !== 1'b0) begin
            $display("FAIL: dispense did not match expected 0. Got %b", dispense);
            errors = errors + 1;
        end
        @(negedge clk);
        coin = 1'b0;
        #2;
        if (dispense !== 1'b0) begin
            $display("FAIL: dispense did not match expected 0. Got %b", dispense);
            errors = errors + 1;
        end
        @(negedge clk);
        coin = 1'b0;
        #2;
        if (dispense !== 1'b0) begin
            $display("FAIL: dispense did not match expected 0. Got %b", dispense);
            errors = errors + 1;
        end
        @(negedge clk);
        coin = 1'b1;
        #2;
        if (dispense !== 1'b1) begin
            $display("FAIL: dispense did not match expected 1. Got %b", dispense);
            errors = errors + 1;
        end
        @(negedge clk);
        coin = 1'b0;
        #2;
        if (dispense !== 1'b0) begin
            $display("FAIL: dispense did not match expected 0. Got %b", dispense);
            errors = errors + 1;
        end
        @(negedge clk);
        coin = 1'b1;
        #2;
        if (dispense !== 1'b0) begin
            $display("FAIL: dispense did not match expected 0. Got %b", dispense);
            errors = errors + 1;
        end
        @(negedge clk);
        coin = 1'b0;
        #2;
        if (dispense !== 1'b0) begin
            $display("FAIL: dispense did not match expected 0. Got %b", dispense);
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
