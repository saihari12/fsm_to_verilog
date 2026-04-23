module fsm_tb;
    reg clk;
    reg reset;
    reg in1;
    reg in0;
    wire o1;
    wire o0;
    fsm uut (
        .clk(clk),
        .reset(reset),
        .in1(in1),
        .in0(in0),
        .o1(o1),
        .o0(o0)
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
        in1 = 0;
        in0 = 0;
        #20;
        reset = 0;
        @(negedge clk);
        in1 = 1'b1;
        in0 = 1'b1;
        #2;
        if (o1 !== 1'b1) begin
            $display("FAIL: o1 did not match expected 1. Got %b", o1);
            errors = errors + 1;
        end
        if (o0 !== 1'b1) begin
            $display("FAIL: o0 did not match expected 1. Got %b", o0);
            errors = errors + 1;
        end
        @(negedge clk);
        in1 = 1'b1;
        in0 = 1'b0;
        #2;
        if (o1 !== 1'b1) begin
            $display("FAIL: o1 did not match expected 1. Got %b", o1);
            errors = errors + 1;
        end
        if (o0 !== 1'b0) begin
            $display("FAIL: o0 did not match expected 0. Got %b", o0);
            errors = errors + 1;
        end
        @(negedge clk);
        in1 = 1'b0;
        in0 = 1'b0;
        #2;
        if (o1 !== 1'b0) begin
            $display("FAIL: o1 did not match expected 0. Got %b", o1);
            errors = errors + 1;
        end
        if (o0 !== 1'b0) begin
            $display("FAIL: o0 did not match expected 0. Got %b", o0);
            errors = errors + 1;
        end
        @(negedge clk);
        in1 = 1'b0;
        in0 = 1'b1;
        #2;
        if (o1 !== 1'b0) begin
            $display("FAIL: o1 did not match expected 0. Got %b", o1);
            errors = errors + 1;
        end
        if (o0 !== 1'b1) begin
            $display("FAIL: o0 did not match expected 1. Got %b", o0);
            errors = errors + 1;
        end
        @(negedge clk);
        in1 = 1'b0;
        in0 = 1'b0;
        #2;
        if (o1 !== 1'b0) begin
            $display("FAIL: o1 did not match expected 0. Got %b", o1);
            errors = errors + 1;
        end
        if (o0 !== 1'b0) begin
            $display("FAIL: o0 did not match expected 0. Got %b", o0);
            errors = errors + 1;
        end
        @(negedge clk);
        in1 = 1'b1;
        in0 = 1'b0;
        #2;
        if (o1 !== 1'b1) begin
            $display("FAIL: o1 did not match expected 1. Got %b", o1);
            errors = errors + 1;
        end
        if (o0 !== 1'b0) begin
            $display("FAIL: o0 did not match expected 0. Got %b", o0);
            errors = errors + 1;
        end
        @(negedge clk);
        in1 = 1'b0;
        in0 = 1'b0;
        #2;
        if (o1 !== 1'b0) begin
            $display("FAIL: o1 did not match expected 0. Got %b", o1);
            errors = errors + 1;
        end
        if (o0 !== 1'b0) begin
            $display("FAIL: o0 did not match expected 0. Got %b", o0);
            errors = errors + 1;
        end
        @(negedge clk);
        in1 = 1'b0;
        in0 = 1'b0;
        #2;
        if (o1 !== 1'b0) begin
            $display("FAIL: o1 did not match expected 0. Got %b", o1);
            errors = errors + 1;
        end
        if (o0 !== 1'b0) begin
            $display("FAIL: o0 did not match expected 0. Got %b", o0);
            errors = errors + 1;
        end
        @(negedge clk);
        in1 = 1'b1;
        in0 = 1'b1;
        #2;
        if (o1 !== 1'b1) begin
            $display("FAIL: o1 did not match expected 1. Got %b", o1);
            errors = errors + 1;
        end
        if (o0 !== 1'b1) begin
            $display("FAIL: o0 did not match expected 1. Got %b", o0);
            errors = errors + 1;
        end
        @(negedge clk);
        in1 = 1'b0;
        in0 = 1'b0;
        #2;
        if (o1 !== 1'b0) begin
            $display("FAIL: o1 did not match expected 0. Got %b", o1);
            errors = errors + 1;
        end
        if (o0 !== 1'b0) begin
            $display("FAIL: o0 did not match expected 0. Got %b", o0);
            errors = errors + 1;
        end
        @(negedge clk);
        in1 = 1'b1;
        in0 = 1'b0;
        #2;
        if (o1 !== 1'b1) begin
            $display("FAIL: o1 did not match expected 1. Got %b", o1);
            errors = errors + 1;
        end
        if (o0 !== 1'b0) begin
            $display("FAIL: o0 did not match expected 0. Got %b", o0);
            errors = errors + 1;
        end
        @(negedge clk);
        in1 = 1'b1;
        in0 = 1'b0;
        #2;
        if (o1 !== 1'b1) begin
            $display("FAIL: o1 did not match expected 1. Got %b", o1);
            errors = errors + 1;
        end
        if (o0 !== 1'b0) begin
            $display("FAIL: o0 did not match expected 0. Got %b", o0);
            errors = errors + 1;
        end
        @(negedge clk);
        in1 = 1'b0;
        in0 = 1'b1;
        #2;
        if (o1 !== 1'b0) begin
            $display("FAIL: o1 did not match expected 0. Got %b", o1);
            errors = errors + 1;
        end
        if (o0 !== 1'b1) begin
            $display("FAIL: o0 did not match expected 1. Got %b", o0);
            errors = errors + 1;
        end
        @(negedge clk);
        in1 = 1'b1;
        in0 = 1'b1;
        #2;
        if (o1 !== 1'b1) begin
            $display("FAIL: o1 did not match expected 1. Got %b", o1);
            errors = errors + 1;
        end
        if (o0 !== 1'b1) begin
            $display("FAIL: o0 did not match expected 1. Got %b", o0);
            errors = errors + 1;
        end
        @(negedge clk);
        in1 = 1'b0;
        in0 = 1'b1;
        #2;
        if (o1 !== 1'b0) begin
            $display("FAIL: o1 did not match expected 0. Got %b", o1);
            errors = errors + 1;
        end
        if (o0 !== 1'b1) begin
            $display("FAIL: o0 did not match expected 1. Got %b", o0);
            errors = errors + 1;
        end
        @(negedge clk);
        in1 = 1'b0;
        in0 = 1'b1;
        #2;
        if (o1 !== 1'b0) begin
            $display("FAIL: o1 did not match expected 0. Got %b", o1);
            errors = errors + 1;
        end
        if (o0 !== 1'b1) begin
            $display("FAIL: o0 did not match expected 1. Got %b", o0);
            errors = errors + 1;
        end
        @(negedge clk);
        in1 = 1'b0;
        in0 = 1'b0;
        #2;
        if (o1 !== 1'b0) begin
            $display("FAIL: o1 did not match expected 0. Got %b", o1);
            errors = errors + 1;
        end
        if (o0 !== 1'b0) begin
            $display("FAIL: o0 did not match expected 0. Got %b", o0);
            errors = errors + 1;
        end
        @(negedge clk);
        in1 = 1'b0;
        in0 = 1'b0;
        #2;
        if (o1 !== 1'b0) begin
            $display("FAIL: o1 did not match expected 0. Got %b", o1);
            errors = errors + 1;
        end
        if (o0 !== 1'b0) begin
            $display("FAIL: o0 did not match expected 0. Got %b", o0);
            errors = errors + 1;
        end
        @(negedge clk);
        in1 = 1'b1;
        in0 = 1'b0;
        #2;
        if (o1 !== 1'b1) begin
            $display("FAIL: o1 did not match expected 1. Got %b", o1);
            errors = errors + 1;
        end
        if (o0 !== 1'b0) begin
            $display("FAIL: o0 did not match expected 0. Got %b", o0);
            errors = errors + 1;
        end
        @(negedge clk);
        in1 = 1'b0;
        in0 = 1'b1;
        #2;
        if (o1 !== 1'b0) begin
            $display("FAIL: o1 did not match expected 0. Got %b", o1);
            errors = errors + 1;
        end
        if (o0 !== 1'b1) begin
            $display("FAIL: o0 did not match expected 1. Got %b", o0);
            errors = errors + 1;
        end
        @(negedge clk);
        in1 = 1'b1;
        in0 = 1'b0;
        #2;
        if (o1 !== 1'b1) begin
            $display("FAIL: o1 did not match expected 1. Got %b", o1);
            errors = errors + 1;
        end
        if (o0 !== 1'b0) begin
            $display("FAIL: o0 did not match expected 0. Got %b", o0);
            errors = errors + 1;
        end
        @(negedge clk);
        in1 = 1'b0;
        in0 = 1'b1;
        #2;
        if (o1 !== 1'b0) begin
            $display("FAIL: o1 did not match expected 0. Got %b", o1);
            errors = errors + 1;
        end
        if (o0 !== 1'b1) begin
            $display("FAIL: o0 did not match expected 1. Got %b", o0);
            errors = errors + 1;
        end
        @(negedge clk);
        in1 = 1'b0;
        in0 = 1'b0;
        #2;
        if (o1 !== 1'b0) begin
            $display("FAIL: o1 did not match expected 0. Got %b", o1);
            errors = errors + 1;
        end
        if (o0 !== 1'b0) begin
            $display("FAIL: o0 did not match expected 0. Got %b", o0);
            errors = errors + 1;
        end
        @(negedge clk);
        in1 = 1'b1;
        in0 = 1'b1;
        #2;
        if (o1 !== 1'b1) begin
            $display("FAIL: o1 did not match expected 1. Got %b", o1);
            errors = errors + 1;
        end
        if (o0 !== 1'b1) begin
            $display("FAIL: o0 did not match expected 1. Got %b", o0);
            errors = errors + 1;
        end
        @(negedge clk);
        in1 = 1'b0;
        in0 = 1'b0;
        #2;
        if (o1 !== 1'b0) begin
            $display("FAIL: o1 did not match expected 0. Got %b", o1);
            errors = errors + 1;
        end
        if (o0 !== 1'b0) begin
            $display("FAIL: o0 did not match expected 0. Got %b", o0);
            errors = errors + 1;
        end
        @(negedge clk);
        in1 = 1'b1;
        in0 = 1'b0;
        #2;
        if (o1 !== 1'b1) begin
            $display("FAIL: o1 did not match expected 1. Got %b", o1);
            errors = errors + 1;
        end
        if (o0 !== 1'b0) begin
            $display("FAIL: o0 did not match expected 0. Got %b", o0);
            errors = errors + 1;
        end
        @(negedge clk);
        in1 = 1'b1;
        in0 = 1'b1;
        #2;
        if (o1 !== 1'b1) begin
            $display("FAIL: o1 did not match expected 1. Got %b", o1);
            errors = errors + 1;
        end
        if (o0 !== 1'b1) begin
            $display("FAIL: o0 did not match expected 1. Got %b", o0);
            errors = errors + 1;
        end
        @(negedge clk);
        in1 = 1'b1;
        in0 = 1'b0;
        #2;
        if (o1 !== 1'b1) begin
            $display("FAIL: o1 did not match expected 1. Got %b", o1);
            errors = errors + 1;
        end
        if (o0 !== 1'b0) begin
            $display("FAIL: o0 did not match expected 0. Got %b", o0);
            errors = errors + 1;
        end
        @(negedge clk);
        in1 = 1'b1;
        in0 = 1'b1;
        #2;
        if (o1 !== 1'b1) begin
            $display("FAIL: o1 did not match expected 1. Got %b", o1);
            errors = errors + 1;
        end
        if (o0 !== 1'b1) begin
            $display("FAIL: o0 did not match expected 1. Got %b", o0);
            errors = errors + 1;
        end
        @(negedge clk);
        in1 = 1'b1;
        in0 = 1'b0;
        #2;
        if (o1 !== 1'b1) begin
            $display("FAIL: o1 did not match expected 1. Got %b", o1);
            errors = errors + 1;
        end
        if (o0 !== 1'b0) begin
            $display("FAIL: o0 did not match expected 0. Got %b", o0);
            errors = errors + 1;
        end
        @(negedge clk);
        in1 = 1'b1;
        in0 = 1'b1;
        #2;
        if (o1 !== 1'b1) begin
            $display("FAIL: o1 did not match expected 1. Got %b", o1);
            errors = errors + 1;
        end
        if (o0 !== 1'b1) begin
            $display("FAIL: o0 did not match expected 1. Got %b", o0);
            errors = errors + 1;
        end
        @(negedge clk);
        in1 = 1'b1;
        in0 = 1'b1;
        #2;
        if (o1 !== 1'b1) begin
            $display("FAIL: o1 did not match expected 1. Got %b", o1);
            errors = errors + 1;
        end
        if (o0 !== 1'b1) begin
            $display("FAIL: o0 did not match expected 1. Got %b", o0);
            errors = errors + 1;
        end
        @(negedge clk);
        in1 = 1'b0;
        in0 = 1'b1;
        #2;
        if (o1 !== 1'b0) begin
            $display("FAIL: o1 did not match expected 0. Got %b", o1);
            errors = errors + 1;
        end
        if (o0 !== 1'b1) begin
            $display("FAIL: o0 did not match expected 1. Got %b", o0);
            errors = errors + 1;
        end
        @(negedge clk);
        in1 = 1'b1;
        in0 = 1'b0;
        #2;
        if (o1 !== 1'b1) begin
            $display("FAIL: o1 did not match expected 1. Got %b", o1);
            errors = errors + 1;
        end
        if (o0 !== 1'b0) begin
            $display("FAIL: o0 did not match expected 0. Got %b", o0);
            errors = errors + 1;
        end
        @(negedge clk);
        in1 = 1'b1;
        in0 = 1'b0;
        #2;
        if (o1 !== 1'b1) begin
            $display("FAIL: o1 did not match expected 1. Got %b", o1);
            errors = errors + 1;
        end
        if (o0 !== 1'b0) begin
            $display("FAIL: o0 did not match expected 0. Got %b", o0);
            errors = errors + 1;
        end
        @(negedge clk);
        in1 = 1'b0;
        in0 = 1'b1;
        #2;
        if (o1 !== 1'b0) begin
            $display("FAIL: o1 did not match expected 0. Got %b", o1);
            errors = errors + 1;
        end
        if (o0 !== 1'b1) begin
            $display("FAIL: o0 did not match expected 1. Got %b", o0);
            errors = errors + 1;
        end
        @(negedge clk);
        in1 = 1'b1;
        in0 = 1'b1;
        #2;
        if (o1 !== 1'b1) begin
            $display("FAIL: o1 did not match expected 1. Got %b", o1);
            errors = errors + 1;
        end
        if (o0 !== 1'b1) begin
            $display("FAIL: o0 did not match expected 1. Got %b", o0);
            errors = errors + 1;
        end
        @(negedge clk);
        in1 = 1'b0;
        in0 = 1'b0;
        #2;
        if (o1 !== 1'b0) begin
            $display("FAIL: o1 did not match expected 0. Got %b", o1);
            errors = errors + 1;
        end
        if (o0 !== 1'b0) begin
            $display("FAIL: o0 did not match expected 0. Got %b", o0);
            errors = errors + 1;
        end
        @(negedge clk);
        in1 = 1'b1;
        in0 = 1'b0;
        #2;
        if (o1 !== 1'b1) begin
            $display("FAIL: o1 did not match expected 1. Got %b", o1);
            errors = errors + 1;
        end
        if (o0 !== 1'b0) begin
            $display("FAIL: o0 did not match expected 0. Got %b", o0);
            errors = errors + 1;
        end
        @(negedge clk);
        in1 = 1'b1;
        in0 = 1'b1;
        #2;
        if (o1 !== 1'b1) begin
            $display("FAIL: o1 did not match expected 1. Got %b", o1);
            errors = errors + 1;
        end
        if (o0 !== 1'b1) begin
            $display("FAIL: o0 did not match expected 1. Got %b", o0);
            errors = errors + 1;
        end
        @(negedge clk);
        in1 = 1'b1;
        in0 = 1'b0;
        #2;
        if (o1 !== 1'b1) begin
            $display("FAIL: o1 did not match expected 1. Got %b", o1);
            errors = errors + 1;
        end
        if (o0 !== 1'b0) begin
            $display("FAIL: o0 did not match expected 0. Got %b", o0);
            errors = errors + 1;
        end
        @(negedge clk);
        in1 = 1'b1;
        in0 = 1'b1;
        #2;
        if (o1 !== 1'b1) begin
            $display("FAIL: o1 did not match expected 1. Got %b", o1);
            errors = errors + 1;
        end
        if (o0 !== 1'b1) begin
            $display("FAIL: o0 did not match expected 1. Got %b", o0);
            errors = errors + 1;
        end
        @(negedge clk);
        in1 = 1'b1;
        in0 = 1'b0;
        #2;
        if (o1 !== 1'b1) begin
            $display("FAIL: o1 did not match expected 1. Got %b", o1);
            errors = errors + 1;
        end
        if (o0 !== 1'b0) begin
            $display("FAIL: o0 did not match expected 0. Got %b", o0);
            errors = errors + 1;
        end
        @(negedge clk);
        in1 = 1'b0;
        in0 = 1'b1;
        #2;
        if (o1 !== 1'b0) begin
            $display("FAIL: o1 did not match expected 0. Got %b", o1);
            errors = errors + 1;
        end
        if (o0 !== 1'b1) begin
            $display("FAIL: o0 did not match expected 1. Got %b", o0);
            errors = errors + 1;
        end
        @(negedge clk);
        in1 = 1'b1;
        in0 = 1'b0;
        #2;
        if (o1 !== 1'b1) begin
            $display("FAIL: o1 did not match expected 1. Got %b", o1);
            errors = errors + 1;
        end
        if (o0 !== 1'b0) begin
            $display("FAIL: o0 did not match expected 0. Got %b", o0);
            errors = errors + 1;
        end
        @(negedge clk);
        in1 = 1'b1;
        in0 = 1'b1;
        #2;
        if (o1 !== 1'b1) begin
            $display("FAIL: o1 did not match expected 1. Got %b", o1);
            errors = errors + 1;
        end
        if (o0 !== 1'b1) begin
            $display("FAIL: o0 did not match expected 1. Got %b", o0);
            errors = errors + 1;
        end
        @(negedge clk);
        in1 = 1'b1;
        in0 = 1'b1;
        #2;
        if (o1 !== 1'b1) begin
            $display("FAIL: o1 did not match expected 1. Got %b", o1);
            errors = errors + 1;
        end
        if (o0 !== 1'b1) begin
            $display("FAIL: o0 did not match expected 1. Got %b", o0);
            errors = errors + 1;
        end
        @(negedge clk);
        in1 = 1'b1;
        in0 = 1'b0;
        #2;
        if (o1 !== 1'b1) begin
            $display("FAIL: o1 did not match expected 1. Got %b", o1);
            errors = errors + 1;
        end
        if (o0 !== 1'b0) begin
            $display("FAIL: o0 did not match expected 0. Got %b", o0);
            errors = errors + 1;
        end
        @(negedge clk);
        in1 = 1'b0;
        in0 = 1'b0;
        #2;
        if (o1 !== 1'b0) begin
            $display("FAIL: o1 did not match expected 0. Got %b", o1);
            errors = errors + 1;
        end
        if (o0 !== 1'b0) begin
            $display("FAIL: o0 did not match expected 0. Got %b", o0);
            errors = errors + 1;
        end
        @(negedge clk);
        in1 = 1'b1;
        in0 = 1'b0;
        #2;
        if (o1 !== 1'b1) begin
            $display("FAIL: o1 did not match expected 1. Got %b", o1);
            errors = errors + 1;
        end
        if (o0 !== 1'b0) begin
            $display("FAIL: o0 did not match expected 0. Got %b", o0);
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
