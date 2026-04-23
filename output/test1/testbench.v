module fsm_tb;
    reg clk;
    reg reset;
    reg in_bit;
    wire out_det;
    fsm uut (
        .clk(clk),
        .reset(reset),
        .in_bit(in_bit),
        .out_det(out_det)
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
        in_bit = 0;
        #20;
        reset = 0;
        @(negedge clk);
        in_bit = 1'b0;
        #2;
        if (out_det !== 1'b0) begin
            $display("FAIL: out_det did not match expected 0. Got %b", out_det);
            errors = errors + 1;
        end
        @(negedge clk);
        in_bit = 1'b0;
        #2;
        if (out_det !== 1'b0) begin
            $display("FAIL: out_det did not match expected 0. Got %b", out_det);
            errors = errors + 1;
        end
        @(negedge clk);
        in_bit = 1'b1;
        #2;
        if (out_det !== 1'b1) begin
            $display("FAIL: out_det did not match expected 1. Got %b", out_det);
            errors = errors + 1;
        end
        @(negedge clk);
        in_bit = 1'b0;
        #2;
        if (out_det !== 1'b0) begin
            $display("FAIL: out_det did not match expected 0. Got %b", out_det);
            errors = errors + 1;
        end
        @(negedge clk);
        in_bit = 1'b1;
        #2;
        if (out_det !== 1'b1) begin
            $display("FAIL: out_det did not match expected 1. Got %b", out_det);
            errors = errors + 1;
        end
        @(negedge clk);
        in_bit = 1'b1;
        #2;
        if (out_det !== 1'b0) begin
            $display("FAIL: out_det did not match expected 0. Got %b", out_det);
            errors = errors + 1;
        end
        @(negedge clk);
        in_bit = 1'b1;
        #2;
        if (out_det !== 1'b0) begin
            $display("FAIL: out_det did not match expected 0. Got %b", out_det);
            errors = errors + 1;
        end
        @(negedge clk);
        in_bit = 1'b0;
        #2;
        if (out_det !== 1'b0) begin
            $display("FAIL: out_det did not match expected 0. Got %b", out_det);
            errors = errors + 1;
        end
        @(negedge clk);
        in_bit = 1'b1;
        #2;
        if (out_det !== 1'b1) begin
            $display("FAIL: out_det did not match expected 1. Got %b", out_det);
            errors = errors + 1;
        end
        @(negedge clk);
        in_bit = 1'b0;
        #2;
        if (out_det !== 1'b0) begin
            $display("FAIL: out_det did not match expected 0. Got %b", out_det);
            errors = errors + 1;
        end
        @(negedge clk);
        in_bit = 1'b1;
        #2;
        if (out_det !== 1'b1) begin
            $display("FAIL: out_det did not match expected 1. Got %b", out_det);
            errors = errors + 1;
        end
        @(negedge clk);
        in_bit = 1'b0;
        #2;
        if (out_det !== 1'b0) begin
            $display("FAIL: out_det did not match expected 0. Got %b", out_det);
            errors = errors + 1;
        end
        @(negedge clk);
        in_bit = 1'b0;
        #2;
        if (out_det !== 1'b0) begin
            $display("FAIL: out_det did not match expected 0. Got %b", out_det);
            errors = errors + 1;
        end
        @(negedge clk);
        in_bit = 1'b1;
        #2;
        if (out_det !== 1'b1) begin
            $display("FAIL: out_det did not match expected 1. Got %b", out_det);
            errors = errors + 1;
        end
        @(negedge clk);
        in_bit = 1'b0;
        #2;
        if (out_det !== 1'b0) begin
            $display("FAIL: out_det did not match expected 0. Got %b", out_det);
            errors = errors + 1;
        end
        @(negedge clk);
        in_bit = 1'b0;
        #2;
        if (out_det !== 1'b0) begin
            $display("FAIL: out_det did not match expected 0. Got %b", out_det);
            errors = errors + 1;
        end
        @(negedge clk);
        in_bit = 1'b0;
        #2;
        if (out_det !== 1'b0) begin
            $display("FAIL: out_det did not match expected 0. Got %b", out_det);
            errors = errors + 1;
        end
        @(negedge clk);
        in_bit = 1'b1;
        #2;
        if (out_det !== 1'b1) begin
            $display("FAIL: out_det did not match expected 1. Got %b", out_det);
            errors = errors + 1;
        end
        @(negedge clk);
        in_bit = 1'b0;
        #2;
        if (out_det !== 1'b0) begin
            $display("FAIL: out_det did not match expected 0. Got %b", out_det);
            errors = errors + 1;
        end
        @(negedge clk);
        in_bit = 1'b1;
        #2;
        if (out_det !== 1'b1) begin
            $display("FAIL: out_det did not match expected 1. Got %b", out_det);
            errors = errors + 1;
        end
        @(negedge clk);
        in_bit = 1'b1;
        #2;
        if (out_det !== 1'b0) begin
            $display("FAIL: out_det did not match expected 0. Got %b", out_det);
            errors = errors + 1;
        end
        @(negedge clk);
        in_bit = 1'b0;
        #2;
        if (out_det !== 1'b0) begin
            $display("FAIL: out_det did not match expected 0. Got %b", out_det);
            errors = errors + 1;
        end
        @(negedge clk);
        in_bit = 1'b1;
        #2;
        if (out_det !== 1'b1) begin
            $display("FAIL: out_det did not match expected 1. Got %b", out_det);
            errors = errors + 1;
        end
        @(negedge clk);
        in_bit = 1'b0;
        #2;
        if (out_det !== 1'b0) begin
            $display("FAIL: out_det did not match expected 0. Got %b", out_det);
            errors = errors + 1;
        end
        @(negedge clk);
        in_bit = 1'b0;
        #2;
        if (out_det !== 1'b0) begin
            $display("FAIL: out_det did not match expected 0. Got %b", out_det);
            errors = errors + 1;
        end
        @(negedge clk);
        in_bit = 1'b1;
        #2;
        if (out_det !== 1'b1) begin
            $display("FAIL: out_det did not match expected 1. Got %b", out_det);
            errors = errors + 1;
        end
        @(negedge clk);
        in_bit = 1'b1;
        #2;
        if (out_det !== 1'b0) begin
            $display("FAIL: out_det did not match expected 0. Got %b", out_det);
            errors = errors + 1;
        end
        @(negedge clk);
        in_bit = 1'b1;
        #2;
        if (out_det !== 1'b0) begin
            $display("FAIL: out_det did not match expected 0. Got %b", out_det);
            errors = errors + 1;
        end
        @(negedge clk);
        in_bit = 1'b0;
        #2;
        if (out_det !== 1'b0) begin
            $display("FAIL: out_det did not match expected 0. Got %b", out_det);
            errors = errors + 1;
        end
        @(negedge clk);
        in_bit = 1'b0;
        #2;
        if (out_det !== 1'b0) begin
            $display("FAIL: out_det did not match expected 0. Got %b", out_det);
            errors = errors + 1;
        end
        @(negedge clk);
        in_bit = 1'b1;
        #2;
        if (out_det !== 1'b1) begin
            $display("FAIL: out_det did not match expected 1. Got %b", out_det);
            errors = errors + 1;
        end
        @(negedge clk);
        in_bit = 1'b0;
        #2;
        if (out_det !== 1'b0) begin
            $display("FAIL: out_det did not match expected 0. Got %b", out_det);
            errors = errors + 1;
        end
        @(negedge clk);
        in_bit = 1'b0;
        #2;
        if (out_det !== 1'b0) begin
            $display("FAIL: out_det did not match expected 0. Got %b", out_det);
            errors = errors + 1;
        end
        @(negedge clk);
        in_bit = 1'b1;
        #2;
        if (out_det !== 1'b1) begin
            $display("FAIL: out_det did not match expected 1. Got %b", out_det);
            errors = errors + 1;
        end
        @(negedge clk);
        in_bit = 1'b0;
        #2;
        if (out_det !== 1'b0) begin
            $display("FAIL: out_det did not match expected 0. Got %b", out_det);
            errors = errors + 1;
        end
        @(negedge clk);
        in_bit = 1'b1;
        #2;
        if (out_det !== 1'b1) begin
            $display("FAIL: out_det did not match expected 1. Got %b", out_det);
            errors = errors + 1;
        end
        @(negedge clk);
        in_bit = 1'b1;
        #2;
        if (out_det !== 1'b0) begin
            $display("FAIL: out_det did not match expected 0. Got %b", out_det);
            errors = errors + 1;
        end
        @(negedge clk);
        in_bit = 1'b1;
        #2;
        if (out_det !== 1'b0) begin
            $display("FAIL: out_det did not match expected 0. Got %b", out_det);
            errors = errors + 1;
        end
        @(negedge clk);
        in_bit = 1'b1;
        #2;
        if (out_det !== 1'b0) begin
            $display("FAIL: out_det did not match expected 0. Got %b", out_det);
            errors = errors + 1;
        end
        @(negedge clk);
        in_bit = 1'b0;
        #2;
        if (out_det !== 1'b0) begin
            $display("FAIL: out_det did not match expected 0. Got %b", out_det);
            errors = errors + 1;
        end
        @(negedge clk);
        in_bit = 1'b1;
        #2;
        if (out_det !== 1'b1) begin
            $display("FAIL: out_det did not match expected 1. Got %b", out_det);
            errors = errors + 1;
        end
        @(negedge clk);
        in_bit = 1'b0;
        #2;
        if (out_det !== 1'b0) begin
            $display("FAIL: out_det did not match expected 0. Got %b", out_det);
            errors = errors + 1;
        end
        @(negedge clk);
        in_bit = 1'b0;
        #2;
        if (out_det !== 1'b0) begin
            $display("FAIL: out_det did not match expected 0. Got %b", out_det);
            errors = errors + 1;
        end
        @(negedge clk);
        in_bit = 1'b0;
        #2;
        if (out_det !== 1'b0) begin
            $display("FAIL: out_det did not match expected 0. Got %b", out_det);
            errors = errors + 1;
        end
        @(negedge clk);
        in_bit = 1'b1;
        #2;
        if (out_det !== 1'b1) begin
            $display("FAIL: out_det did not match expected 1. Got %b", out_det);
            errors = errors + 1;
        end
        @(negedge clk);
        in_bit = 1'b0;
        #2;
        if (out_det !== 1'b0) begin
            $display("FAIL: out_det did not match expected 0. Got %b", out_det);
            errors = errors + 1;
        end
        @(negedge clk);
        in_bit = 1'b1;
        #2;
        if (out_det !== 1'b1) begin
            $display("FAIL: out_det did not match expected 1. Got %b", out_det);
            errors = errors + 1;
        end
        @(negedge clk);
        in_bit = 1'b0;
        #2;
        if (out_det !== 1'b0) begin
            $display("FAIL: out_det did not match expected 0. Got %b", out_det);
            errors = errors + 1;
        end
        @(negedge clk);
        in_bit = 1'b1;
        #2;
        if (out_det !== 1'b1) begin
            $display("FAIL: out_det did not match expected 1. Got %b", out_det);
            errors = errors + 1;
        end
        @(negedge clk);
        in_bit = 1'b0;
        #2;
        if (out_det !== 1'b0) begin
            $display("FAIL: out_det did not match expected 0. Got %b", out_det);
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
