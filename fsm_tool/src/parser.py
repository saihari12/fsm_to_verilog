import json

def parse_fsm(json_path):
    with open(json_path, 'r') as f:
        data = json.load(f)
        
    required_keys = ["states", "inputs", "outputs", "transitions"]
    for key in required_keys:
        if key not in data:
            raise ValueError(f"Invalid FSM JSON: missing key '{key}'")
    
    # Internal representation dictionary base
    fsm_data = {
        "states": data["states"],
        "inputs": data["inputs"],
        "outputs": data["outputs"],
        "transitions": data["transitions"]
    }
    
    return fsm_data
