import os
import json

base_dir = "fsm_tool/input"
os.makedirs(base_dir, exist_ok=True)

tests = [
    {
        "filename": "test1.json",
        "desc": "Sequence Detector 01",
        "data": {
            "states": ["S0", "S_0", "S_01"],
            "inputs": ["in_bit"],
            "outputs": ["out_det"],
            "transitions": [
                {"from": "S0", "input": "0", "to": "S_0", "output": "0"},
                {"from": "S0", "input": "1", "to": "S0", "output": "0"},
                {"from": "S_0", "input": "0", "to": "S_0", "output": "0"},
                {"from": "S_0", "input": "1", "to": "S_01", "output": "1"},
                {"from": "S_01", "input": "0", "to": "S_0", "output": "0"},
                {"from": "S_01", "input": "1", "to": "S0", "output": "0"}
            ]
        }
    },
    {
        "filename": "test2.json",
        "desc": "Sequence Detector 101",
        "data": {
            "states": ["S_INIT", "S_1", "S_10", "S_101"],
            "inputs": ["x"],
            "outputs": ["z"],
            "transitions": [
                {"from": "S_INIT", "input": "0", "to": "S_INIT", "output": "0"},
                {"from": "S_INIT", "input": "1", "to": "S_1", "output": "0"},
                {"from": "S_1", "input": "0", "to": "S_10", "output": "0"},
                {"from": "S_1", "input": "1", "to": "S_1", "output": "0"},
                {"from": "S_10", "input": "0", "to": "S_INIT", "output": "0"},
                {"from": "S_10", "input": "1", "to": "S_101", "output": "1"},
                {"from": "S_101", "input": "0", "to": "S_10", "output": "0"},
                {"from": "S_101", "input": "1", "to": "S_1", "output": "0"}
            ]
        }
    },
    {
        "filename": "test3.json",
        "desc": "Even Parity Checker",
        "data": {
            "states": ["EVEN", "ODD"],
            "inputs": ["x"],
            "outputs": ["is_even"],
            "transitions": [
                {"from": "EVEN", "input": "0", "to": "EVEN", "output": "1"},
                {"from": "EVEN", "input": "1", "to": "ODD", "output": "0"},
                {"from": "ODD", "input": "0", "to": "ODD", "output": "0"},
                {"from": "ODD", "input": "1", "to": "EVEN", "output": "1"}
            ]
        }
    },
    {
        "filename": "test4.json",
        "desc": "Mod-4 Counter FSM",
        "data": {
            "states": ["C0", "C1", "C2", "C3"],
            "inputs": ["en"],
            "outputs": ["q1", "q0"],
            "transitions": [
                {"from": "C0", "input": "0", "to": "C0", "output": "00"},
                {"from": "C0", "input": "1", "to": "C1", "output": "01"},
                {"from": "C1", "input": "0", "to": "C1", "output": "01"},
                {"from": "C1", "input": "1", "to": "C2", "output": "10"},
                {"from": "C2", "input": "0", "to": "C2", "output": "10"},
                {"from": "C2", "input": "1", "to": "C3", "output": "11"},
                {"from": "C3", "input": "0", "to": "C3", "output": "11"},
                {"from": "C3", "input": "1", "to": "C0", "output": "00"}
            ]
        }
    },
    {
        "filename": "test5.json",
        "desc": "Traffic Light Controller",
        "data": {
            "states": ["RED", "GREEN", "YELLOW"],
            "inputs": ["timer_done"],
            "outputs": ["r", "g", "y"],
            "transitions": [
                {"from": "RED", "input": "0", "to": "RED", "output": "100"},
                {"from": "RED", "input": "1", "to": "GREEN", "output": "010"},
                {"from": "GREEN", "input": "0", "to": "GREEN", "output": "010"},
                {"from": "GREEN", "input": "1", "to": "YELLOW", "output": "001"},
                {"from": "YELLOW", "input": "0", "to": "YELLOW", "output": "001"},
                {"from": "YELLOW", "input": "1", "to": "RED", "output": "100"}
            ]
        }
    },
    {
        "filename": "test6.json",
        "desc": "Alternate Binary",
        "data": {
            "states": ["S_A", "S_B"],
            "inputs": ["toggle"],
            "outputs": ["out"],
            "transitions": [
                {"from": "S_A", "input": "0", "to": "S_A", "output": "0"},
                {"from": "S_A", "input": "1", "to": "S_B", "output": "1"},
                {"from": "S_B", "input": "0", "to": "S_B", "output": "1"},
                {"from": "S_B", "input": "1", "to": "S_A", "output": "0"}
            ]
        }
    },
    {
        "filename": "test7.json",
        "desc": "Multi-input 2-bit logical selector",
        "data": {
            "states": ["IDLE", "OP1", "OP2", "OP3"],
            "inputs": ["in1", "in0"],
            "outputs": ["o1", "o0"],
            "transitions": [
                {"from": "IDLE", "input": "00", "to": "IDLE", "output": "00"},
                {"from": "IDLE", "input": "01", "to": "OP1", "output": "01"},
                {"from": "IDLE", "input": "10", "to": "OP2", "output": "10"},
                {"from": "IDLE", "input": "11", "to": "OP3", "output": "11"},
                {"from": "OP1", "input": "00", "to": "IDLE", "output": "00"},
                {"from": "OP1", "input": "01", "to": "OP1", "output": "01"},
                {"from": "OP1", "input": "10", "to": "OP2", "output": "10"},
                {"from": "OP1", "input": "11", "to": "OP3", "output": "11"},
                {"from": "OP2", "input": "00", "to": "IDLE", "output": "00"},
                {"from": "OP2", "input": "01", "to": "OP1", "output": "01"},
                {"from": "OP2", "input": "10", "to": "OP2", "output": "10"},
                {"from": "OP2", "input": "11", "to": "OP3", "output": "11"},
                {"from": "OP3", "input": "00", "to": "IDLE", "output": "00"},
                {"from": "OP3", "input": "01", "to": "OP1", "output": "01"},
                {"from": "OP3", "input": "10", "to": "OP2", "output": "10"},
                {"from": "OP3", "input": "11", "to": "OP3", "output": "11"}
            ]
        }
    },
    {
        "filename": "test8.json",
        "desc": "Alarm Status",
        "data": {
            "states": ["SAFE", "WARN", "ALARM"],
            "inputs": ["sensor"],
            "outputs": ["siren"],
            "transitions": [
                {"from": "SAFE", "input": "0", "to": "SAFE", "output": "0"},
                {"from": "SAFE", "input": "1", "to": "WARN", "output": "0"},
                {"from": "WARN", "input": "0", "to": "SAFE", "output": "0"},
                {"from": "WARN", "input": "1", "to": "ALARM", "output": "1"},
                {"from": "ALARM", "input": "0", "to": "WARN", "output": "1"},
                {"from": "ALARM", "input": "1", "to": "ALARM", "output": "1"}
            ]
        }
    },
    {
        "filename": "test9.json",
        "desc": "Vending Machine (requires 2 coins, 1 coin=input 1)",
        "data": {
            "states": ["IDLE", "COIN1", "VEND"],
            "inputs": ["coin"],
            "outputs": ["dispense"],
            "transitions": [
                {"from": "IDLE", "input": "0", "to": "IDLE", "output": "0"},
                {"from": "IDLE", "input": "1", "to": "COIN1", "output": "0"},
                {"from": "COIN1", "input": "0", "to": "COIN1", "output": "0"},
                {"from": "COIN1", "input": "1", "to": "VEND", "output": "1"},
                {"from": "VEND", "input": "0", "to": "IDLE", "output": "0"},
                {"from": "VEND", "input": "1", "to": "COIN1", "output": "0"}
            ]
        }
    },
    {
        "filename": "test10.json",
        "desc": "Arbiter",
        "data": {
            "states": ["GNT_NONE", "GNT_A", "GNT_B"],
            "inputs": ["reqA", "reqB"],
            "outputs": ["ackA", "ackB"],
            "transitions": [
                {"from": "GNT_NONE", "input": "00", "to": "GNT_NONE", "output": "00"},
                {"from": "GNT_NONE", "input": "01", "to": "GNT_B", "output": "01"},
                {"from": "GNT_NONE", "input": "10", "to": "GNT_A", "output": "10"},
                {"from": "GNT_NONE", "input": "11", "to": "GNT_A", "output": "10"},
                {"from": "GNT_A", "input": "00", "to": "GNT_NONE", "output": "00"},
                {"from": "GNT_A", "input": "01", "to": "GNT_B", "output": "01"},
                {"from": "GNT_A", "input": "10", "to": "GNT_A", "output": "10"},
                {"from": "GNT_A", "input": "11", "to": "GNT_A", "output": "10"},
                {"from": "GNT_B", "input": "00", "to": "GNT_NONE", "output": "00"},
                {"from": "GNT_B", "input": "01", "to": "GNT_B", "output": "01"},
                {"from": "GNT_B", "input": "10", "to": "GNT_A", "output": "10"},
                {"from": "GNT_B", "input": "11", "to": "GNT_B", "output": "01"}
            ]
        }
    }
]

for t in tests:
    # ensure any string representing input matches length of inputs, e.g. "00"
    with open(os.path.join(base_dir, t["filename"]), "w") as f:
        json.dump(t["data"], f, indent=2)
print("Generated 10 test JSONs")
