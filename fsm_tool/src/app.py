import streamlit as st
import json
import subprocess
import os

st.set_page_config(
    page_title="FSM Automation Tool",
    layout="wide"
)

# -----------------------------
# SIDEBAR
# -----------------------------
st.sidebar.title("FSM Tool")
st.sidebar.markdown("Design Automation Pipeline")

input_mode = st.sidebar.radio(
    "Input Mode",
    ["JSON Upload", "Text (LLM)"]
)

run_button = st.sidebar.button("🚀 Run Pipeline")

# -----------------------------
# MAIN HEADER
# -----------------------------
st.title("⚙️ FSM Design Automation Tool")
st.markdown("Convert FSM → Verilog → Netlist → Simulation")

# -----------------------------
# INPUT SECTION
# -----------------------------
fsm_json = None

col1, col2 = st.columns(2)

with col1:
    st.subheader("📥 Input")

    if input_mode == "JSON Upload":
        uploaded_file = st.file_uploader("Upload FSM JSON", type=["json"])

        if uploaded_file:
            fsm_json = json.load(uploaded_file)
            st.success("JSON loaded")

    else:
        user_text = st.text_area("Enter FSM Description")

        if st.button("Convert to JSON"):
            st.warning("LLM integration pending")

with col2:
    st.subheader("🔍 Preview")

    if fsm_json:
        st.json(fsm_json)
    else:
        st.info("No input loaded")

# -----------------------------
# EXECUTION
# -----------------------------
if run_button:

    if fsm_json is None:
        st.error("Please provide FSM input")
    else:
        BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
        input_dir = os.path.join(BASE_DIR, "input")
        os.makedirs(input_dir, exist_ok=True)
        
        fsm_path = os.path.join(input_dir, "app_fsm.json")
        with open(fsm_path, "w") as f:
            json.dump(fsm_json, f, indent=2)

        with st.spinner("Running FSM pipeline..."):
            try:
                # Run the main.py from the correct CWD
                main_py_path = os.path.join(BASE_DIR, "main.py")
                result = subprocess.run(
                    ["python3", main_py_path, fsm_path],
                    capture_output=True,
                    text=True,
                    cwd=BASE_DIR
                )

                st.success("Pipeline executed")

            except Exception as e:
                st.error(f"Error: {e}")

# -----------------------------
# OUTPUT SECTION
# -----------------------------
st.subheader("📤 Outputs")

tabs = st.tabs(["Verilog", "Netlist", "Result"])

BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
out_dir = os.path.join(BASE_DIR, "output", "app_fsm")

# Verilog
with tabs[0]:
    fsm_v = os.path.join(out_dir, "fsm.v")
    if os.path.exists(fsm_v):
        with open(fsm_v) as f:
            code = f.read()
            st.code(code, language="verilog")
            st.download_button("Download Verilog", code, "fsm.v")

# Netlist
with tabs[1]:
    netlist_v = os.path.join(out_dir, "netlist.v")
    if os.path.exists(netlist_v):
        with open(netlist_v) as f:
            code = f.read()
            st.code(code, language="verilog")
            st.download_button("Download Netlist", code, "netlist.v")

# Result
with tabs[2]:
    result_log = os.path.join(out_dir, "result.log")
    if os.path.exists(result_log):
        with open(result_log) as f:
            result = f.read()

            if "PASS" in result:
                st.success(result)
            else:
                st.error(result)