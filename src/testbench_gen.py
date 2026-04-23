import os
import random

def generate_testbench(fsm_data, output_dir):
    os.makedirs(output_dir, exist_ok=True)
    
    module_name = "fsm"
    tb_name = module_name + "_tb"
    
    i_names = fsm_data["inputs"]
    o_names = fsm_data["outputs"]
    transitions = fsm_data["transitions"]
    states = fsm_data["states"]
    
    init_state = states[0]
    
    # Generate a random path of 50 transitions starting from init_state
    # to evaluate functionality.
    path_len = 50
    curr = init_state
    
    # Build transition dict for fast lookup
    t_dict = {}
    for t in transitions:
        t_dict[(t["from"], t["input"])] = t
        
    sequence = []
    for _ in range(path_len):
        # find all valid inputs from current state
        valid_inputs = [t["input"] for t in transitions if t["from"] == curr]
        if not valid_inputs:
            break
        chosen_input = random.choice(valid_inputs)
        trans = t_dict[(curr, chosen_input)]
        sequence.append({
            "input": chosen_input,
            "expected_output": trans["output"]
        })
        curr = trans["to"]

    verilog_code = []
    verilog_code.append(f"module {tb_name};")
    verilog_code.append("    reg clk;")
    verilog_code.append("    reg reset;")
    
    for i_n in i_names:
        verilog_code.append(f"    reg {i_n};")
        
    for o_n in o_names:
        verilog_code.append(f"    wire {o_n};")
        
    # Instantiate FSM
    ports = [".clk(clk)", ".reset(reset)"]
    for i_n in i_names:
        ports.append(f".{i_n}({i_n})")
    for o_n in o_names:
        ports.append(f".{o_n}({o_n})")
        
    verilog_code.append(f"    {module_name} uut (")
    verilog_code.append("        " + ",\n        ".join(ports))
    verilog_code.append("    );")
    
    # Clock generation
    verilog_code.append("    initial begin")
    verilog_code.append("        clk = 0;")
    verilog_code.append("        forever #5 clk = ~clk;")
    verilog_code.append("    end")
    
    # Testing sequence
    verilog_code.append("    integer errors = 0;")
    verilog_code.append("    initial begin")
    verilog_code.append('        $dumpfile("testbench.vcd");')
    verilog_code.append('        $dumpvars(0, fsm_tb);')
    verilog_code.append("        reset = 1;")
    for i_n in i_names:
        verilog_code.append(f"        {i_n} = 0;")
    verilog_code.append("        #20;")
    verilog_code.append("        reset = 0;")
    # Wait until next negedge to apply first input
    verilog_code.append("        @(negedge clk);")
    
    for step in sequence:
        # Assign inputs
        inp = step["input"]
        for k, bit_val in enumerate(inp):
            i_n = i_names[k]
            verilog_code.append(f"        {i_n} = 1'b{bit_val};")
            
        verilog_code.append("        #2;") # give time for comb logic
        
        # Expected outputs
        out = step["expected_output"]
        for k, bit_val in enumerate(out):
            o_n = o_names[k]
            verilog_code.append(f"        if ({o_n} !== 1'b{bit_val}) begin")
            verilog_code.append(f"            $display(\"FAIL: {o_n} did not match expected {bit_val}. Got %b\", {o_n});")
            verilog_code.append(f"            errors = errors + 1;")
            verilog_code.append("        end")
            
        verilog_code.append("        @(negedge clk);") # wait for next negative edge (safe for input assignment)

        
    verilog_code.append("        if (errors == 0) begin")
    verilog_code.append('            $display("PASS");')
    verilog_code.append("        end else begin")
    verilog_code.append('            $display("FAIL (with %d errors)", errors);')
    verilog_code.append("        end")
    verilog_code.append("        $finish;")
    verilog_code.append("    end")
    
    verilog_code.append("endmodule")
    
    fpath = os.path.join(output_dir, "testbench.v")
    with open(fpath, "w") as f:
        f.write("\n".join(verilog_code) + "\n")
