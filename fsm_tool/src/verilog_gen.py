import os

def generate_verilog(fsm_data, output_dir):
    os.makedirs(output_dir, exist_ok=True)
    
    logic = fsm_data["logic"]
    state_bits = fsm_data["state_bits"]
    i_names = fsm_data["inputs"]
    o_names = fsm_data["outputs"]
    
    module_name = "fsm"
    
    verilog_code = []
    verilog_code.append(f"module {module_name} (")
    verilog_code.append("    input clk,")
    verilog_code.append("    input reset,")
    
    for i_n in i_names:
        verilog_code.append(f"    input {i_n},")
    for idx, o_n in enumerate(o_names):
        comma = "," if idx < len(o_names) - 1 else ""
        verilog_code.append(f"    output {o_n}{comma}")
        
    verilog_code.append(");")
    
    # State registers
    if state_bits > 1:
        verilog_code.append(f"    reg [{state_bits-1}:0] state;")
    else:
        verilog_code.append("    reg state;")
        
    # Input aliases for logic
    for k, i_n in enumerate(i_names):
        verilog_code.append(f"    wire i_{k} = {i_n};")
        
    for k in range(state_bits):
        if state_bits > 1:
            verilog_code.append(f"    wire s_{k} = state[{k}];")
        else:
            verilog_code.append(f"    wire s_{k} = state;")
            
    verilog_code.append("")
    # Next state equations
    for k in range(state_bits):
        eq = logic["next_states"][k]
        # Replace pyeda ~ with Verilog ~
        # We can just leave & and | alone as they match Verilog.
        # However pyeda format might output True/False instead of 1/0? Standard pyeda uses 1/0.
        verilog_code.append(f"    wire d_{k} = {eq};")
        
    verilog_code.append("")
    # Output equations
    for k, o_n in enumerate(o_names):
        eq = logic["outputs"][k]
        verilog_code.append(f"    assign {o_n} = {eq};")
        
    verilog_code.append("")
    # Flip flop logic
    verilog_code.append("    always @(posedge clk or posedge reset) begin")
    verilog_code.append("        if (reset)")
    verilog_code.append(f"            state <= {state_bits}'b0;")
    verilog_code.append("        else begin")
    
    for k in range(state_bits):
        if state_bits > 1:
            verilog_code.append(f"            state[{k}] <= d_{k};")
        else:
            verilog_code.append(f"            state <= d_{k};")
            
    verilog_code.append("        end")
    verilog_code.append("    end")
    
    verilog_code.append("endmodule")
    
    fpath = os.path.join(output_dir, "fsm.v")
    with open(fpath, "w") as f:
        f.write("\n".join(verilog_code) + "\n")
