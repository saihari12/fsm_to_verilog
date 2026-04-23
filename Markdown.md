# FSM Design Automation Tool (Low-Level Specification)

## 📌 Overview
This tool converts a Finite State Machine (FSM) specification into:

1. Structural Verilog
2. Gate-level netlist (via synthesis)
3. Testbench for verification

The system must be deterministic, modular, and fully automated.

---

## 🎯 Final Outputs

For each FSM input:

- fsm.v → Structural Verilog
- netlist.v → Gate-level netlist (via Yosys)
- testbench.v → Simulation testbench
- result.log → PASS/FAIL output

---

## 📥 Input Format (STRICT)

FSM must be provided in JSON:

```json
{
  "states": ["S0", "S1"],
  "inputs": ["x"],
  "outputs": ["z"],
  "transitions": [
    {"from": "S0", "input": "0", "to": "S1", "output": "0"},
    {"from": "S1", "input": "1", "to": "S0", "output": "1"}
  ]
}

---

## Internal Representation 

{
  "encoded_states": {"S0": "00", "S1": "01"},
  "state_bits": 2,
  "inputs": ["x"],
  "outputs": ["z"],
  "truth_table": [
    {
      "current_bits": "00",
      "input": "0",
      "next_bits": "01",
      "output": "0"
    }
  ]
}

---

## File Structure

fsm_tool/
│── input/
│   ├── test1.json ... test10.json
│
│── output/
│   ├── fsm.v
│   ├── netlist.v
│   ├── testbench.v
│   ├── result.log
│
│── src/
│   ├── parser.py
│   ├── encoder.py
│   ├── logic.py
│   ├── verilog_gen.py
│   ├── testbench_gen.py
│
│── main.py

---

## Execution Flow

FSM JSON
 → Parsing
 → Encoding
 → Truth Table Generation
 → Boolean Logic Minimization
 → Verilog Generation
 → Netlist Generation (Yosys)
 → Testbench Generation
 → Simulation (Icarus Verilog)
 → Verification
 → Result (PASS / FAIL)

 ----