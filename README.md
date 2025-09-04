# Stage-LAAS-CNRS-2025

# 🖥️ VHDL MAC Units for Deep Learning on FPGA

## 📌 Project Overview

This repository contains the work carried out during my internship at **LAAS-CNRS / ENSEEIHT** (Toulouse, France) in summer 2025.

The project focuses on the design, optimization, and automation of **Multiply-Accumulate (MAC) units** for deep learning inference on FPGAs.  
MAC operations are at the heart of neural network workloads (dense layers, convolutions, matrix multiplications).  
Optimizing their hardware implementation is crucial for **low-latency, low-power, and real-time embedded AI applications**.

The work explores two approaches:

1. Manual VHDL design of a Float16 MAC.  
2. Automatic IP generation using **FloPoCo**.  

---

## 🎯 Objectives

- Implement a **Float16 MAC operator in VHDL**  
- Explore **manual design vs. automatic generation (FloPoCo)**  
- Compare implementations in terms of **frequency, resource usage, power consumption, and latency**  
- Develop a **fully automated flow**:
  - VHDL generation
  - Simulation
  - FPGA implementation (synthesis + place & route)
  - Extraction and analysis of results

👉 Future extensions include support for **bfloat16, Int8, Fixed16** and integration into **larger deep learning hardware accelerators**.

---

## 🚀 How to Use

### 1. VHDL Codes
Go to:

Code_VHDL/project/vhdl_files/


Choose between:
- `flopoco` → auto-generated operators.  
- `custom` → manually designed operators.  

---

### 2. Run the Flow

Generate parameterized VHDL from templates:
```bash
python generate_vhdl.py

Run the full flow (generation → simulation → implementation):

./run_all.sh

Only launch FPGA implementation:

./run_impl.sh

Or directly with Vivado TCL:

source run_implementation.tcl

3. Extract Results

python extract_impl_data.py

This collects results (frequency, LUTs, DSPs, power, WNS) from Vivado reports.
Results are stored in impl_results/ and exported to .ods files for analysis.
4. Test Benches

test_bench_with_python provides Python-based testbenches to verify functional correctness.

For more details, check the dedicated READMEs inside the Read_Me/ folder.
📂 Repository Structure

├── Code_VHDL/
│   └── project/
│       ├── vhdl_files/            # VHDL source files
│       │   ├── flopoco/           # FloPoCo-generated operators
│       │   └── custom/            # Manually designed operators
│       ├── template/              # VHDL code templates
│       ├── impl_results/          # FPGA implementation results (logs, reports)
│       ├── extract_impl_data.py   # Parse & extract implementation data
│       ├── generate_vhdl.py       # Generate parameterized VHDL
│       ├── run_all.sh             # Automates the full flow
│       ├── run_impl.sh            # Automates only FPGA implementation
│       └── run_implementation.tcl # TCL script for Vivado
│
├── Read_Me/                       # Detailed READMEs for each script
├── Top level text file flopoco/   # Top-level design for FloPoCo
├── Values For Test bench with Python/ # Python-based testbenches
└── README.md                      # Main README (this file)

📊 Results & Findings

    FloPoCo operators → rapid prototyping, flexible mantissa/exponent sizes, reduced dev time.

    Manual VHDL design → better timing closure (WNS), fine-grained optimization of resources.

    Trade-off → fast design space exploration vs. low-level optimization.

👉 Implementations were performed on Xilinx Artix-7 FPGAs:

    FloPoCo FPMAC: ~150 MHz (negative WNS beyond this).

    Manual designs: can potentially exceed this with careful pipelining.

📖 Documentation

    Stage presentation (mid-term report) → available at repo root (PPTX).

    Detailed READMEs → in Read_Me/.

    Implementation results → in impl_results/ (Vivado logs, reports, extracted data).

🔮 Perspectives

    Extend support to bfloat16, Int8, Fixed16.

    Explore parallel MAC units for CNNs & matrix multiplications.

    Integrate into SoC architectures (Xilinx Vitis).

    Apply to embedded AI accelerators (low-power inference).

👨‍💻 Author

Mohammed Amine Bendaou
Internship at LAAS-CNRS, ENSEEIHT, Toulouse, France

Supervisors:

    Blaise Mulliez

    Lubin Gauthier

📫 Contact:

    blaise.mulliez@toulouse-inp.fr

lubin.gauthier@toulouse-inp.fr

m.a.bendaou@gmail.com


---
