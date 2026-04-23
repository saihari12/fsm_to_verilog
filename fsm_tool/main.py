import os
import glob
import subprocess
import shutil

from src.parser import parse_fsm
from src.encoder import encode_states
from src.logic import derive_logic
from src.verilog_gen import generate_verilog
from src.testbench_gen import generate_testbench

def main():
    input_files = sorted(glob.glob("input/*.json"))
    if not input_files:
        print("No input files found. Please populate 'input/' directory with JSONs.")
        return

    # To run yosys and iverilog correctly, we check if they are in path
    yosys_path = shutil.which("yosys") or "/opt/homebrew/bin/yosys"
    iverilog_path = shutil.which("iverilog") or "/opt/homebrew/bin/iverilog"
    vvp_path = shutil.which("vvp") or "/opt/homebrew/bin/vvp"

    print("=== Starting FSM Design Automation Pipeline ===")
    
    for in_file in input_files:
        test_name = os.path.splitext(os.path.basename(in_file))[0]
        out_dir = os.path.join(os.getcwd(), "output", test_name)
        os.makedirs(out_dir, exist_ok=True)
        
        try:
            # 1. Parsing
            fsm_data = parse_fsm(in_file)
            
            # 2. Encoding
            fsm_data = encode_states(fsm_data)
            
            # 3. Logic minimization
            fsm_data = derive_logic(fsm_data)
            
            # 4. Verilog generation
            generate_verilog(fsm_data, out_dir)
            
            # 5. Testbench generation
            generate_testbench(fsm_data, out_dir)
            
            # 6. Yosys Netlist Generation
            yosys_cmd = [
                yosys_path, "-p",
                "read_verilog fsm.v; synth -top fsm; write_verilog netlist.v"
            ]
            subprocess.run(yosys_cmd, cwd=out_dir, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
            
            # 7. Simulation (using Structural Verilog + Testbench)
            # Since netlist from Yosys standard requires Yosys simulation mapping cells,
            # we simulate structural verilog to prove behavioral correctness.
            build_cmd = [iverilog_path, "-o", "sim.vvp", "fsm.v", "testbench.v"]
            subprocess.run(build_cmd, cwd=out_dir, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
            
            run_cmd = [vvp_path, "sim.vvp"]
            sim_res = subprocess.run(run_cmd, cwd=out_dir, capture_output=True, text=True)
            
            log_path = os.path.join(out_dir, "result.log")
            with open(log_path, "w") as f:
                f.write(sim_res.stdout)
                
            # 8. Verification outcome
            if "FAIL" in sim_res.stdout:
                # find the first fail line
                fail_reason = "Unknown Failure"
                for line in sim_res.stdout.split('\n'):
                    if "FAIL" in line:
                        fail_reason = line.strip()
                        break
                print(f"{test_name.capitalize()}: FAIL ({fail_reason})")
            elif "PASS" in sim_res.stdout:
                print(f"{test_name.capitalize()}: PASS")
            else:
                print(f"{test_name.capitalize()}: FAIL (Simulation error or no PASS token)")

        except Exception as e:
            print(f"{test_name.capitalize()}: FAIL (Exception: {str(e)})")

if __name__ == "__main__":
    # Work from project root
    os.chdir(os.path.join(os.path.dirname(os.path.abspath(__file__))))
    main()
