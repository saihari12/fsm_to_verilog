import math

def encode_states(fsm_data):
    states = fsm_data["states"]
    state_bits = max(1, math.ceil(math.log2(len(states))))
    
    encoded_states = {}
    for i, state in enumerate(states):
        encoded_states[state] = format(i, f'0{state_bits}b')
        
    fsm_data["encoded_states"] = encoded_states
    fsm_data["state_bits"] = state_bits
    
    # Internal representation with mapped bits
    truth_table = []
    
    # Check if inputs string length matches number of input vars 
    # e.g., if inputs=["a", "b"], then transition "input" should be 2 bits
    # We assume 'input' in transitions is already a bit string matching lengths
    # Same for output string vs outputs definition
    
    for t in fsm_data["transitions"]:
        curr_b = encoded_states[t["from"]]
        next_b = encoded_states[t["to"]]
        
        truth_table.append({
            "current_bits": curr_b,
            "input": t["input"],
            "next_bits": next_b,
            "output": t["output"]
        })
        
    fsm_data["truth_table"] = truth_table
    return fsm_data
