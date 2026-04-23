from pyeda.inter import expr, espresso_exprs

def derive_logic(fsm_data):
    try:
        # Dummy import check
        from pyeda.inter import expr
    except ImportError:
        raise ImportError("pyeda is not installed. Please run: pip install pyeda")

    state_bits = fsm_data["state_bits"]
    input_bits = len(fsm_data["inputs"][0]) if fsm_data["inputs"] else 0
    # Wait, the prompt says "inputs": ["x"] (a list of input names) OR "inputs": ["in1", "in0"]
    # So input_bits is actually the number of distinct input variables.
    input_names = fsm_data["inputs"]
    input_bits = len(input_names)
    
    output_names = fsm_data["outputs"]
    output_bits = len(output_names)
    
    truth_table = fsm_data["truth_table"]
    
    # Names for boolean variables
    s_vars = [f"s_{k}" for k in range(state_bits)]
    i_vars = [f"i_{k}" for k in range(input_bits)]
    
    next_state_exprs = []
    output_exprs = []
    
    import ast
    def pyeda_str_to_verilog(expr_str):
        if expr_str == "0": return "1'b0"
        if expr_str == "1": return "1'b1"
        try:
            node = ast.parse(expr_str, mode='eval').body
            def walk(n):
                if isinstance(n, ast.Call):
                    func_name = n.func.id
                    args = [walk(a) for a in n.args]
                    if func_name == 'And': return '(' + ' & '.join(args) + ')'
                    elif func_name == 'Or': return '(' + ' | '.join(args) + ')'
                    elif func_name == 'Not': return '(~' + args[0] + ')'
                    elif func_name == 'Xor': return '(' + ' ^ '.join(args) + ')'
                elif isinstance(n, ast.Name): return n.id
                elif isinstance(n, ast.UnaryOp) and isinstance(n.op, ast.Invert): return '(~' + walk(n.operand) + ')'
                return '?'
            return walk(node)
        except Exception:
            return expr_str

    def minimize_terms(terms):
        if not terms:
            return "1'b0"
        e_str = " | ".join(terms)
        root_expr = expr(e_str)
        # Check trivial cases before espresso
        if root_expr.is_zero():
            return "1'b0"
        if root_expr.is_one():
            return "1'b1"
            
        e_min, = espresso_exprs(root_expr)
        
        # Format the pyeda expr output to standard verilog-compatible syntax
        res_str = str(e_min[0] if isinstance(e_min, tuple) else e_min)
        return pyeda_str_to_verilog(res_str)
        

    # Next state equations
    for bit_idx in range(state_bits):
        terms = []
        for row in truth_table:
            # next_bits string index correlates exactly
            if row["next_bits"][bit_idx] == '1':
                term = []
                for k, bit in enumerate(row["current_bits"]):
                    term.append(s_vars[k] if bit == '1' else f"~{s_vars[k]}")
                for k, bit in enumerate(row["input"]):
                    if bit == '1': term.append(i_vars[k])
                    elif bit == '0': term.append(f"~{i_vars[k]}")
                terms.append("(" + " & ".join(term) + ")")
        next_state_exprs.append(minimize_terms(terms))
        
    # Output equations
    for bit_idx in range(output_bits):
        terms = []
        for row in truth_table:
            if row["output"][bit_idx] == '1':
                term = []
                for k, bit in enumerate(row["current_bits"]):
                    term.append(s_vars[k] if bit == '1' else f"~{s_vars[k]}")
                for k, bit in enumerate(row["input"]):
                    if bit == '1': term.append(i_vars[k])
                    elif bit == '0': term.append(f"~{i_vars[k]}")
                terms.append("(" + " & ".join(term) + ")")
        output_exprs.append(minimize_terms(terms))
        
    fsm_data["logic"] = {
        "next_states": next_state_exprs,
        "outputs": output_exprs
    }
    
    return fsm_data
