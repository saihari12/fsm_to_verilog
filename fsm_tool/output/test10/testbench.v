module fsm_tb;
    reg clk;
    reg reset;
    reg reqA;
    reg reqB;
    wire ackA;
    wire ackB;
    fsm uut (
        .clk(clk),
        .reset(reset),
        .reqA(reqA),
        .reqB(reqB),
        .ackA(ackA),
        .ackB(ackB)
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
        reqA = 0;
        reqB = 0;
        #20;
        reset = 0;
        @(negedge clk);
        reqA = 1'b0;
        reqB = 1'b0;
        #2;
        if (ackA !== 1'b0) begin
            $display("FAIL: ackA did not match expected 0. Got %b", ackA);
            errors = errors + 1;
        end
        if (ackB !== 1'b0) begin
            $display("FAIL: ackB did not match expected 0. Got %b", ackB);
            errors = errors + 1;
        end
        @(negedge clk);
        reqA = 1'b0;
        reqB = 1'b0;
        #2;
        if (ackA !== 1'b0) begin
            $display("FAIL: ackA did not match expected 0. Got %b", ackA);
            errors = errors + 1;
        end
        if (ackB !== 1'b0) begin
            $display("FAIL: ackB did not match expected 0. Got %b", ackB);
            errors = errors + 1;
        end
        @(negedge clk);
        reqA = 1'b1;
        reqB = 1'b1;
        #2;
        if (ackA !== 1'b1) begin
            $display("FAIL: ackA did not match expected 1. Got %b", ackA);
            errors = errors + 1;
        end
        if (ackB !== 1'b0) begin
            $display("FAIL: ackB did not match expected 0. Got %b", ackB);
            errors = errors + 1;
        end
        @(negedge clk);
        reqA = 1'b1;
        reqB = 1'b0;
        #2;
        if (ackA !== 1'b1) begin
            $display("FAIL: ackA did not match expected 1. Got %b", ackA);
            errors = errors + 1;
        end
        if (ackB !== 1'b0) begin
            $display("FAIL: ackB did not match expected 0. Got %b", ackB);
            errors = errors + 1;
        end
        @(negedge clk);
        reqA = 1'b1;
        reqB = 1'b0;
        #2;
        if (ackA !== 1'b1) begin
            $display("FAIL: ackA did not match expected 1. Got %b", ackA);
            errors = errors + 1;
        end
        if (ackB !== 1'b0) begin
            $display("FAIL: ackB did not match expected 0. Got %b", ackB);
            errors = errors + 1;
        end
        @(negedge clk);
        reqA = 1'b1;
        reqB = 1'b1;
        #2;
        if (ackA !== 1'b1) begin
            $display("FAIL: ackA did not match expected 1. Got %b", ackA);
            errors = errors + 1;
        end
        if (ackB !== 1'b0) begin
            $display("FAIL: ackB did not match expected 0. Got %b", ackB);
            errors = errors + 1;
        end
        @(negedge clk);
        reqA = 1'b1;
        reqB = 1'b1;
        #2;
        if (ackA !== 1'b1) begin
            $display("FAIL: ackA did not match expected 1. Got %b", ackA);
            errors = errors + 1;
        end
        if (ackB !== 1'b0) begin
            $display("FAIL: ackB did not match expected 0. Got %b", ackB);
            errors = errors + 1;
        end
        @(negedge clk);
        reqA = 1'b0;
        reqB = 1'b1;
        #2;
        if (ackA !== 1'b0) begin
            $display("FAIL: ackA did not match expected 0. Got %b", ackA);
            errors = errors + 1;
        end
        if (ackB !== 1'b1) begin
            $display("FAIL: ackB did not match expected 1. Got %b", ackB);
            errors = errors + 1;
        end
        @(negedge clk);
        reqA = 1'b0;
        reqB = 1'b0;
        #2;
        if (ackA !== 1'b0) begin
            $display("FAIL: ackA did not match expected 0. Got %b", ackA);
            errors = errors + 1;
        end
        if (ackB !== 1'b0) begin
            $display("FAIL: ackB did not match expected 0. Got %b", ackB);
            errors = errors + 1;
        end
        @(negedge clk);
        reqA = 1'b0;
        reqB = 1'b0;
        #2;
        if (ackA !== 1'b0) begin
            $display("FAIL: ackA did not match expected 0. Got %b", ackA);
            errors = errors + 1;
        end
        if (ackB !== 1'b0) begin
            $display("FAIL: ackB did not match expected 0. Got %b", ackB);
            errors = errors + 1;
        end
        @(negedge clk);
        reqA = 1'b0;
        reqB = 1'b0;
        #2;
        if (ackA !== 1'b0) begin
            $display("FAIL: ackA did not match expected 0. Got %b", ackA);
            errors = errors + 1;
        end
        if (ackB !== 1'b0) begin
            $display("FAIL: ackB did not match expected 0. Got %b", ackB);
            errors = errors + 1;
        end
        @(negedge clk);
        reqA = 1'b1;
        reqB = 1'b0;
        #2;
        if (ackA !== 1'b1) begin
            $display("FAIL: ackA did not match expected 1. Got %b", ackA);
            errors = errors + 1;
        end
        if (ackB !== 1'b0) begin
            $display("FAIL: ackB did not match expected 0. Got %b", ackB);
            errors = errors + 1;
        end
        @(negedge clk);
        reqA = 1'b0;
        reqB = 1'b0;
        #2;
        if (ackA !== 1'b0) begin
            $display("FAIL: ackA did not match expected 0. Got %b", ackA);
            errors = errors + 1;
        end
        if (ackB !== 1'b0) begin
            $display("FAIL: ackB did not match expected 0. Got %b", ackB);
            errors = errors + 1;
        end
        @(negedge clk);
        reqA = 1'b0;
        reqB = 1'b1;
        #2;
        if (ackA !== 1'b0) begin
            $display("FAIL: ackA did not match expected 0. Got %b", ackA);
            errors = errors + 1;
        end
        if (ackB !== 1'b1) begin
            $display("FAIL: ackB did not match expected 1. Got %b", ackB);
            errors = errors + 1;
        end
        @(negedge clk);
        reqA = 1'b0;
        reqB = 1'b0;
        #2;
        if (ackA !== 1'b0) begin
            $display("FAIL: ackA did not match expected 0. Got %b", ackA);
            errors = errors + 1;
        end
        if (ackB !== 1'b0) begin
            $display("FAIL: ackB did not match expected 0. Got %b", ackB);
            errors = errors + 1;
        end
        @(negedge clk);
        reqA = 1'b1;
        reqB = 1'b1;
        #2;
        if (ackA !== 1'b1) begin
            $display("FAIL: ackA did not match expected 1. Got %b", ackA);
            errors = errors + 1;
        end
        if (ackB !== 1'b0) begin
            $display("FAIL: ackB did not match expected 0. Got %b", ackB);
            errors = errors + 1;
        end
        @(negedge clk);
        reqA = 1'b0;
        reqB = 1'b0;
        #2;
        if (ackA !== 1'b0) begin
            $display("FAIL: ackA did not match expected 0. Got %b", ackA);
            errors = errors + 1;
        end
        if (ackB !== 1'b0) begin
            $display("FAIL: ackB did not match expected 0. Got %b", ackB);
            errors = errors + 1;
        end
        @(negedge clk);
        reqA = 1'b1;
        reqB = 1'b1;
        #2;
        if (ackA !== 1'b1) begin
            $display("FAIL: ackA did not match expected 1. Got %b", ackA);
            errors = errors + 1;
        end
        if (ackB !== 1'b0) begin
            $display("FAIL: ackB did not match expected 0. Got %b", ackB);
            errors = errors + 1;
        end
        @(negedge clk);
        reqA = 1'b0;
        reqB = 1'b1;
        #2;
        if (ackA !== 1'b0) begin
            $display("FAIL: ackA did not match expected 0. Got %b", ackA);
            errors = errors + 1;
        end
        if (ackB !== 1'b1) begin
            $display("FAIL: ackB did not match expected 1. Got %b", ackB);
            errors = errors + 1;
        end
        @(negedge clk);
        reqA = 1'b1;
        reqB = 1'b1;
        #2;
        if (ackA !== 1'b0) begin
            $display("FAIL: ackA did not match expected 0. Got %b", ackA);
            errors = errors + 1;
        end
        if (ackB !== 1'b1) begin
            $display("FAIL: ackB did not match expected 1. Got %b", ackB);
            errors = errors + 1;
        end
        @(negedge clk);
        reqA = 1'b1;
        reqB = 1'b0;
        #2;
        if (ackA !== 1'b1) begin
            $display("FAIL: ackA did not match expected 1. Got %b", ackA);
            errors = errors + 1;
        end
        if (ackB !== 1'b0) begin
            $display("FAIL: ackB did not match expected 0. Got %b", ackB);
            errors = errors + 1;
        end
        @(negedge clk);
        reqA = 1'b0;
        reqB = 1'b0;
        #2;
        if (ackA !== 1'b0) begin
            $display("FAIL: ackA did not match expected 0. Got %b", ackA);
            errors = errors + 1;
        end
        if (ackB !== 1'b0) begin
            $display("FAIL: ackB did not match expected 0. Got %b", ackB);
            errors = errors + 1;
        end
        @(negedge clk);
        reqA = 1'b0;
        reqB = 1'b0;
        #2;
        if (ackA !== 1'b0) begin
            $display("FAIL: ackA did not match expected 0. Got %b", ackA);
            errors = errors + 1;
        end
        if (ackB !== 1'b0) begin
            $display("FAIL: ackB did not match expected 0. Got %b", ackB);
            errors = errors + 1;
        end
        @(negedge clk);
        reqA = 1'b1;
        reqB = 1'b1;
        #2;
        if (ackA !== 1'b1) begin
            $display("FAIL: ackA did not match expected 1. Got %b", ackA);
            errors = errors + 1;
        end
        if (ackB !== 1'b0) begin
            $display("FAIL: ackB did not match expected 0. Got %b", ackB);
            errors = errors + 1;
        end
        @(negedge clk);
        reqA = 1'b0;
        reqB = 1'b1;
        #2;
        if (ackA !== 1'b0) begin
            $display("FAIL: ackA did not match expected 0. Got %b", ackA);
            errors = errors + 1;
        end
        if (ackB !== 1'b1) begin
            $display("FAIL: ackB did not match expected 1. Got %b", ackB);
            errors = errors + 1;
        end
        @(negedge clk);
        reqA = 1'b1;
        reqB = 1'b1;
        #2;
        if (ackA !== 1'b0) begin
            $display("FAIL: ackA did not match expected 0. Got %b", ackA);
            errors = errors + 1;
        end
        if (ackB !== 1'b1) begin
            $display("FAIL: ackB did not match expected 1. Got %b", ackB);
            errors = errors + 1;
        end
        @(negedge clk);
        reqA = 1'b1;
        reqB = 1'b0;
        #2;
        if (ackA !== 1'b1) begin
            $display("FAIL: ackA did not match expected 1. Got %b", ackA);
            errors = errors + 1;
        end
        if (ackB !== 1'b0) begin
            $display("FAIL: ackB did not match expected 0. Got %b", ackB);
            errors = errors + 1;
        end
        @(negedge clk);
        reqA = 1'b1;
        reqB = 1'b1;
        #2;
        if (ackA !== 1'b1) begin
            $display("FAIL: ackA did not match expected 1. Got %b", ackA);
            errors = errors + 1;
        end
        if (ackB !== 1'b0) begin
            $display("FAIL: ackB did not match expected 0. Got %b", ackB);
            errors = errors + 1;
        end
        @(negedge clk);
        reqA = 1'b0;
        reqB = 1'b1;
        #2;
        if (ackA !== 1'b0) begin
            $display("FAIL: ackA did not match expected 0. Got %b", ackA);
            errors = errors + 1;
        end
        if (ackB !== 1'b1) begin
            $display("FAIL: ackB did not match expected 1. Got %b", ackB);
            errors = errors + 1;
        end
        @(negedge clk);
        reqA = 1'b1;
        reqB = 1'b1;
        #2;
        if (ackA !== 1'b0) begin
            $display("FAIL: ackA did not match expected 0. Got %b", ackA);
            errors = errors + 1;
        end
        if (ackB !== 1'b1) begin
            $display("FAIL: ackB did not match expected 1. Got %b", ackB);
            errors = errors + 1;
        end
        @(negedge clk);
        reqA = 1'b1;
        reqB = 1'b0;
        #2;
        if (ackA !== 1'b1) begin
            $display("FAIL: ackA did not match expected 1. Got %b", ackA);
            errors = errors + 1;
        end
        if (ackB !== 1'b0) begin
            $display("FAIL: ackB did not match expected 0. Got %b", ackB);
            errors = errors + 1;
        end
        @(negedge clk);
        reqA = 1'b1;
        reqB = 1'b0;
        #2;
        if (ackA !== 1'b1) begin
            $display("FAIL: ackA did not match expected 1. Got %b", ackA);
            errors = errors + 1;
        end
        if (ackB !== 1'b0) begin
            $display("FAIL: ackB did not match expected 0. Got %b", ackB);
            errors = errors + 1;
        end
        @(negedge clk);
        reqA = 1'b1;
        reqB = 1'b0;
        #2;
        if (ackA !== 1'b1) begin
            $display("FAIL: ackA did not match expected 1. Got %b", ackA);
            errors = errors + 1;
        end
        if (ackB !== 1'b0) begin
            $display("FAIL: ackB did not match expected 0. Got %b", ackB);
            errors = errors + 1;
        end
        @(negedge clk);
        reqA = 1'b1;
        reqB = 1'b1;
        #2;
        if (ackA !== 1'b1) begin
            $display("FAIL: ackA did not match expected 1. Got %b", ackA);
            errors = errors + 1;
        end
        if (ackB !== 1'b0) begin
            $display("FAIL: ackB did not match expected 0. Got %b", ackB);
            errors = errors + 1;
        end
        @(negedge clk);
        reqA = 1'b0;
        reqB = 1'b1;
        #2;
        if (ackA !== 1'b0) begin
            $display("FAIL: ackA did not match expected 0. Got %b", ackA);
            errors = errors + 1;
        end
        if (ackB !== 1'b1) begin
            $display("FAIL: ackB did not match expected 1. Got %b", ackB);
            errors = errors + 1;
        end
        @(negedge clk);
        reqA = 1'b0;
        reqB = 1'b0;
        #2;
        if (ackA !== 1'b0) begin
            $display("FAIL: ackA did not match expected 0. Got %b", ackA);
            errors = errors + 1;
        end
        if (ackB !== 1'b0) begin
            $display("FAIL: ackB did not match expected 0. Got %b", ackB);
            errors = errors + 1;
        end
        @(negedge clk);
        reqA = 1'b0;
        reqB = 1'b0;
        #2;
        if (ackA !== 1'b0) begin
            $display("FAIL: ackA did not match expected 0. Got %b", ackA);
            errors = errors + 1;
        end
        if (ackB !== 1'b0) begin
            $display("FAIL: ackB did not match expected 0. Got %b", ackB);
            errors = errors + 1;
        end
        @(negedge clk);
        reqA = 1'b0;
        reqB = 1'b1;
        #2;
        if (ackA !== 1'b0) begin
            $display("FAIL: ackA did not match expected 0. Got %b", ackA);
            errors = errors + 1;
        end
        if (ackB !== 1'b1) begin
            $display("FAIL: ackB did not match expected 1. Got %b", ackB);
            errors = errors + 1;
        end
        @(negedge clk);
        reqA = 1'b1;
        reqB = 1'b0;
        #2;
        if (ackA !== 1'b1) begin
            $display("FAIL: ackA did not match expected 1. Got %b", ackA);
            errors = errors + 1;
        end
        if (ackB !== 1'b0) begin
            $display("FAIL: ackB did not match expected 0. Got %b", ackB);
            errors = errors + 1;
        end
        @(negedge clk);
        reqA = 1'b0;
        reqB = 1'b0;
        #2;
        if (ackA !== 1'b0) begin
            $display("FAIL: ackA did not match expected 0. Got %b", ackA);
            errors = errors + 1;
        end
        if (ackB !== 1'b0) begin
            $display("FAIL: ackB did not match expected 0. Got %b", ackB);
            errors = errors + 1;
        end
        @(negedge clk);
        reqA = 1'b0;
        reqB = 1'b0;
        #2;
        if (ackA !== 1'b0) begin
            $display("FAIL: ackA did not match expected 0. Got %b", ackA);
            errors = errors + 1;
        end
        if (ackB !== 1'b0) begin
            $display("FAIL: ackB did not match expected 0. Got %b", ackB);
            errors = errors + 1;
        end
        @(negedge clk);
        reqA = 1'b1;
        reqB = 1'b0;
        #2;
        if (ackA !== 1'b1) begin
            $display("FAIL: ackA did not match expected 1. Got %b", ackA);
            errors = errors + 1;
        end
        if (ackB !== 1'b0) begin
            $display("FAIL: ackB did not match expected 0. Got %b", ackB);
            errors = errors + 1;
        end
        @(negedge clk);
        reqA = 1'b1;
        reqB = 1'b0;
        #2;
        if (ackA !== 1'b1) begin
            $display("FAIL: ackA did not match expected 1. Got %b", ackA);
            errors = errors + 1;
        end
        if (ackB !== 1'b0) begin
            $display("FAIL: ackB did not match expected 0. Got %b", ackB);
            errors = errors + 1;
        end
        @(negedge clk);
        reqA = 1'b0;
        reqB = 1'b0;
        #2;
        if (ackA !== 1'b0) begin
            $display("FAIL: ackA did not match expected 0. Got %b", ackA);
            errors = errors + 1;
        end
        if (ackB !== 1'b0) begin
            $display("FAIL: ackB did not match expected 0. Got %b", ackB);
            errors = errors + 1;
        end
        @(negedge clk);
        reqA = 1'b1;
        reqB = 1'b1;
        #2;
        if (ackA !== 1'b1) begin
            $display("FAIL: ackA did not match expected 1. Got %b", ackA);
            errors = errors + 1;
        end
        if (ackB !== 1'b0) begin
            $display("FAIL: ackB did not match expected 0. Got %b", ackB);
            errors = errors + 1;
        end
        @(negedge clk);
        reqA = 1'b1;
        reqB = 1'b1;
        #2;
        if (ackA !== 1'b1) begin
            $display("FAIL: ackA did not match expected 1. Got %b", ackA);
            errors = errors + 1;
        end
        if (ackB !== 1'b0) begin
            $display("FAIL: ackB did not match expected 0. Got %b", ackB);
            errors = errors + 1;
        end
        @(negedge clk);
        reqA = 1'b0;
        reqB = 1'b0;
        #2;
        if (ackA !== 1'b0) begin
            $display("FAIL: ackA did not match expected 0. Got %b", ackA);
            errors = errors + 1;
        end
        if (ackB !== 1'b0) begin
            $display("FAIL: ackB did not match expected 0. Got %b", ackB);
            errors = errors + 1;
        end
        @(negedge clk);
        reqA = 1'b1;
        reqB = 1'b0;
        #2;
        if (ackA !== 1'b1) begin
            $display("FAIL: ackA did not match expected 1. Got %b", ackA);
            errors = errors + 1;
        end
        if (ackB !== 1'b0) begin
            $display("FAIL: ackB did not match expected 0. Got %b", ackB);
            errors = errors + 1;
        end
        @(negedge clk);
        reqA = 1'b0;
        reqB = 1'b1;
        #2;
        if (ackA !== 1'b0) begin
            $display("FAIL: ackA did not match expected 0. Got %b", ackA);
            errors = errors + 1;
        end
        if (ackB !== 1'b1) begin
            $display("FAIL: ackB did not match expected 1. Got %b", ackB);
            errors = errors + 1;
        end
        @(negedge clk);
        reqA = 1'b1;
        reqB = 1'b1;
        #2;
        if (ackA !== 1'b0) begin
            $display("FAIL: ackA did not match expected 0. Got %b", ackA);
            errors = errors + 1;
        end
        if (ackB !== 1'b1) begin
            $display("FAIL: ackB did not match expected 1. Got %b", ackB);
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
