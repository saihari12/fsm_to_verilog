module fsm_tb;
    reg clk;
    reg reset;
    reg sensor;
    wire siren;
    fsm uut (
        .clk(clk),
        .reset(reset),
        .sensor(sensor),
        .siren(siren)
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
        sensor = 0;
        #20;
        reset = 0;
        @(negedge clk);
        sensor = 1'b0;
        #2;
        if (siren !== 1'b0) begin
            $display("FAIL: siren did not match expected 0. Got %b", siren);
            errors = errors + 1;
        end
        @(negedge clk);
        sensor = 1'b1;
        #2;
        if (siren !== 1'b0) begin
            $display("FAIL: siren did not match expected 0. Got %b", siren);
            errors = errors + 1;
        end
        @(negedge clk);
        sensor = 1'b1;
        #2;
        if (siren !== 1'b1) begin
            $display("FAIL: siren did not match expected 1. Got %b", siren);
            errors = errors + 1;
        end
        @(negedge clk);
        sensor = 1'b1;
        #2;
        if (siren !== 1'b1) begin
            $display("FAIL: siren did not match expected 1. Got %b", siren);
            errors = errors + 1;
        end
        @(negedge clk);
        sensor = 1'b1;
        #2;
        if (siren !== 1'b1) begin
            $display("FAIL: siren did not match expected 1. Got %b", siren);
            errors = errors + 1;
        end
        @(negedge clk);
        sensor = 1'b0;
        #2;
        if (siren !== 1'b1) begin
            $display("FAIL: siren did not match expected 1. Got %b", siren);
            errors = errors + 1;
        end
        @(negedge clk);
        sensor = 1'b0;
        #2;
        if (siren !== 1'b0) begin
            $display("FAIL: siren did not match expected 0. Got %b", siren);
            errors = errors + 1;
        end
        @(negedge clk);
        sensor = 1'b0;
        #2;
        if (siren !== 1'b0) begin
            $display("FAIL: siren did not match expected 0. Got %b", siren);
            errors = errors + 1;
        end
        @(negedge clk);
        sensor = 1'b0;
        #2;
        if (siren !== 1'b0) begin
            $display("FAIL: siren did not match expected 0. Got %b", siren);
            errors = errors + 1;
        end
        @(negedge clk);
        sensor = 1'b1;
        #2;
        if (siren !== 1'b0) begin
            $display("FAIL: siren did not match expected 0. Got %b", siren);
            errors = errors + 1;
        end
        @(negedge clk);
        sensor = 1'b0;
        #2;
        if (siren !== 1'b0) begin
            $display("FAIL: siren did not match expected 0. Got %b", siren);
            errors = errors + 1;
        end
        @(negedge clk);
        sensor = 1'b1;
        #2;
        if (siren !== 1'b0) begin
            $display("FAIL: siren did not match expected 0. Got %b", siren);
            errors = errors + 1;
        end
        @(negedge clk);
        sensor = 1'b0;
        #2;
        if (siren !== 1'b0) begin
            $display("FAIL: siren did not match expected 0. Got %b", siren);
            errors = errors + 1;
        end
        @(negedge clk);
        sensor = 1'b1;
        #2;
        if (siren !== 1'b0) begin
            $display("FAIL: siren did not match expected 0. Got %b", siren);
            errors = errors + 1;
        end
        @(negedge clk);
        sensor = 1'b0;
        #2;
        if (siren !== 1'b0) begin
            $display("FAIL: siren did not match expected 0. Got %b", siren);
            errors = errors + 1;
        end
        @(negedge clk);
        sensor = 1'b0;
        #2;
        if (siren !== 1'b0) begin
            $display("FAIL: siren did not match expected 0. Got %b", siren);
            errors = errors + 1;
        end
        @(negedge clk);
        sensor = 1'b0;
        #2;
        if (siren !== 1'b0) begin
            $display("FAIL: siren did not match expected 0. Got %b", siren);
            errors = errors + 1;
        end
        @(negedge clk);
        sensor = 1'b0;
        #2;
        if (siren !== 1'b0) begin
            $display("FAIL: siren did not match expected 0. Got %b", siren);
            errors = errors + 1;
        end
        @(negedge clk);
        sensor = 1'b1;
        #2;
        if (siren !== 1'b0) begin
            $display("FAIL: siren did not match expected 0. Got %b", siren);
            errors = errors + 1;
        end
        @(negedge clk);
        sensor = 1'b1;
        #2;
        if (siren !== 1'b1) begin
            $display("FAIL: siren did not match expected 1. Got %b", siren);
            errors = errors + 1;
        end
        @(negedge clk);
        sensor = 1'b1;
        #2;
        if (siren !== 1'b1) begin
            $display("FAIL: siren did not match expected 1. Got %b", siren);
            errors = errors + 1;
        end
        @(negedge clk);
        sensor = 1'b0;
        #2;
        if (siren !== 1'b1) begin
            $display("FAIL: siren did not match expected 1. Got %b", siren);
            errors = errors + 1;
        end
        @(negedge clk);
        sensor = 1'b1;
        #2;
        if (siren !== 1'b1) begin
            $display("FAIL: siren did not match expected 1. Got %b", siren);
            errors = errors + 1;
        end
        @(negedge clk);
        sensor = 1'b1;
        #2;
        if (siren !== 1'b1) begin
            $display("FAIL: siren did not match expected 1. Got %b", siren);
            errors = errors + 1;
        end
        @(negedge clk);
        sensor = 1'b0;
        #2;
        if (siren !== 1'b1) begin
            $display("FAIL: siren did not match expected 1. Got %b", siren);
            errors = errors + 1;
        end
        @(negedge clk);
        sensor = 1'b1;
        #2;
        if (siren !== 1'b1) begin
            $display("FAIL: siren did not match expected 1. Got %b", siren);
            errors = errors + 1;
        end
        @(negedge clk);
        sensor = 1'b0;
        #2;
        if (siren !== 1'b1) begin
            $display("FAIL: siren did not match expected 1. Got %b", siren);
            errors = errors + 1;
        end
        @(negedge clk);
        sensor = 1'b1;
        #2;
        if (siren !== 1'b1) begin
            $display("FAIL: siren did not match expected 1. Got %b", siren);
            errors = errors + 1;
        end
        @(negedge clk);
        sensor = 1'b1;
        #2;
        if (siren !== 1'b1) begin
            $display("FAIL: siren did not match expected 1. Got %b", siren);
            errors = errors + 1;
        end
        @(negedge clk);
        sensor = 1'b0;
        #2;
        if (siren !== 1'b1) begin
            $display("FAIL: siren did not match expected 1. Got %b", siren);
            errors = errors + 1;
        end
        @(negedge clk);
        sensor = 1'b0;
        #2;
        if (siren !== 1'b0) begin
            $display("FAIL: siren did not match expected 0. Got %b", siren);
            errors = errors + 1;
        end
        @(negedge clk);
        sensor = 1'b1;
        #2;
        if (siren !== 1'b0) begin
            $display("FAIL: siren did not match expected 0. Got %b", siren);
            errors = errors + 1;
        end
        @(negedge clk);
        sensor = 1'b1;
        #2;
        if (siren !== 1'b1) begin
            $display("FAIL: siren did not match expected 1. Got %b", siren);
            errors = errors + 1;
        end
        @(negedge clk);
        sensor = 1'b1;
        #2;
        if (siren !== 1'b1) begin
            $display("FAIL: siren did not match expected 1. Got %b", siren);
            errors = errors + 1;
        end
        @(negedge clk);
        sensor = 1'b1;
        #2;
        if (siren !== 1'b1) begin
            $display("FAIL: siren did not match expected 1. Got %b", siren);
            errors = errors + 1;
        end
        @(negedge clk);
        sensor = 1'b0;
        #2;
        if (siren !== 1'b1) begin
            $display("FAIL: siren did not match expected 1. Got %b", siren);
            errors = errors + 1;
        end
        @(negedge clk);
        sensor = 1'b0;
        #2;
        if (siren !== 1'b0) begin
            $display("FAIL: siren did not match expected 0. Got %b", siren);
            errors = errors + 1;
        end
        @(negedge clk);
        sensor = 1'b1;
        #2;
        if (siren !== 1'b0) begin
            $display("FAIL: siren did not match expected 0. Got %b", siren);
            errors = errors + 1;
        end
        @(negedge clk);
        sensor = 1'b1;
        #2;
        if (siren !== 1'b1) begin
            $display("FAIL: siren did not match expected 1. Got %b", siren);
            errors = errors + 1;
        end
        @(negedge clk);
        sensor = 1'b1;
        #2;
        if (siren !== 1'b1) begin
            $display("FAIL: siren did not match expected 1. Got %b", siren);
            errors = errors + 1;
        end
        @(negedge clk);
        sensor = 1'b0;
        #2;
        if (siren !== 1'b1) begin
            $display("FAIL: siren did not match expected 1. Got %b", siren);
            errors = errors + 1;
        end
        @(negedge clk);
        sensor = 1'b1;
        #2;
        if (siren !== 1'b1) begin
            $display("FAIL: siren did not match expected 1. Got %b", siren);
            errors = errors + 1;
        end
        @(negedge clk);
        sensor = 1'b0;
        #2;
        if (siren !== 1'b1) begin
            $display("FAIL: siren did not match expected 1. Got %b", siren);
            errors = errors + 1;
        end
        @(negedge clk);
        sensor = 1'b1;
        #2;
        if (siren !== 1'b1) begin
            $display("FAIL: siren did not match expected 1. Got %b", siren);
            errors = errors + 1;
        end
        @(negedge clk);
        sensor = 1'b0;
        #2;
        if (siren !== 1'b1) begin
            $display("FAIL: siren did not match expected 1. Got %b", siren);
            errors = errors + 1;
        end
        @(negedge clk);
        sensor = 1'b0;
        #2;
        if (siren !== 1'b0) begin
            $display("FAIL: siren did not match expected 0. Got %b", siren);
            errors = errors + 1;
        end
        @(negedge clk);
        sensor = 1'b1;
        #2;
        if (siren !== 1'b0) begin
            $display("FAIL: siren did not match expected 0. Got %b", siren);
            errors = errors + 1;
        end
        @(negedge clk);
        sensor = 1'b0;
        #2;
        if (siren !== 1'b0) begin
            $display("FAIL: siren did not match expected 0. Got %b", siren);
            errors = errors + 1;
        end
        @(negedge clk);
        sensor = 1'b1;
        #2;
        if (siren !== 1'b0) begin
            $display("FAIL: siren did not match expected 0. Got %b", siren);
            errors = errors + 1;
        end
        @(negedge clk);
        sensor = 1'b0;
        #2;
        if (siren !== 1'b0) begin
            $display("FAIL: siren did not match expected 0. Got %b", siren);
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
