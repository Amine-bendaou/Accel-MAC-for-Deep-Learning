# Stage-LAAS-CNRS-2025

🖥️ VHDL MAC Units for Deep Learning on FPGA

📌 Project Overview

This repository contains the work carried out during my internship at LAAS-CNRS / ENSEEIHT (Toulouse, France) in summer 2025.

The project focuses on the design, optimization, and automation of Multiply-Accumulate (MAC) units for deep learning inference on FPGAs.
MAC operations are at the heart of neural network workloads (dense layers, convolutions, matrix multiplications). Optimizing their hardware implementation is crucial for low-latency, low-power, and real-time embedded AI applications.

The work explores two approaches:

1) Manual VHDL design of a Float16 MAC.
2) Automatic IP generation using FloPoCo

🎯 Objectives

- Implement a Float16 MAC operator in VHDL
- Explore manual design vs. automatic generation (FloPoCo)
- Compare implementations in terms of frequency, resource usage, power consumption, and latency
- Develop a fully automated flow:
    - VHDL generation
    - Simulation
    - FPGA implementation (synthesis + place & route)
    - Extraction and analysis of results
  
Future extensions include support for other numeric formats (bfloat16, Int8, Fixed16) and integration into larger deep learning hardware accelerators.

🚀 How to Use

1. VHDL Codes

Go to Code_VHDL/project/vhdl_files/

Choose between:

  flopoco → auto-generated operators.

  custom → manually designed operators.

2. Run the Flow

generate_vhdl.py → generates parameterized VHDL from templates.

run_all.sh → executes the full flow (generation → simulation → implementation).

run_impl.sh + run_implementation.tcl → launches Vivado implementation only.

3. Extract Results

extract_impl_data.py collects results (frequency, LUTs, DSPs, power, WNS) from Vivado reports.

Results are stored in impl_results and exported to .ods files for analysis.

4. Test Benches

test_bench_with_python provides Python-based testbenches to verify functional correctness.

For more details on individual scripts, check the dedicated READMEs inside the Read_Me folder.

📂 Repository Structure

    ├── Code_VHDL/
    
        └── project/
        │       ├── vhdl_files/            # VHDL source files
                │       │   ├── flopoco/           # FloPoCo-generated operators
                │       │   └── custom/            # Manually designed operators
                
        │       ├── template/              # VHDL code templates (Flopoco + custom)
        │       ├── impl_results/          # FPGA implementation results (logs, reports)
        │       ├── extract_impl_data.py   # Script to parse and extract implementation data
        │       ├── generate_vhdl.py       # Script to generate parameterized VHDL
        │       ├── run_all.sh             # Automates the full flow (gen → sim → impl)
        │       ├── run_impl.sh            # Automates only FPGA implementation
        │       └── run_implementation.tcl # TCL script for Vivado implementation

        ├── Read_Me/                                # Folder with detailed READMEs for each script
        
        ├── Top level text file flopoco/            # Folder with top level used for flopoco code
 
        ├── Values For Test bench with Python/      # Python-based testbenches for functional validation

    └── README.md                    # Main README (this file)

📊 Results & Findings

- FloPoCo operators → rapid prototyping, flexible exploration of mantissa/exponent sizes, reduced development time.

- Manual VHDL design → potentially better timing closure (WNS), fine-grained optimization of resources.

- Trade-off: fast design space exploration vs. low-level optimization.

Implementation was performed on Xilinx Artix-7 FPGAs.

- FloPoCo FPMAC typically peaks around 150 MHz (negative WNS beyond this).

- Manual designs can potentially exceed this limit with careful pipelining.

📖 Documentation

- Stage presentation (mid-term report) → available in the repository root (PPTX).

- Detailed READMEs → in Read_Me, documenting each script.

- Implementation results → in impl_results (Vivado logs, reports, extracted data).

🔮 Perspectives

- Extend support to other numeric formats (bfloat16, Int8, Fixed16).

- Explore parallel MAC units for matrix multiplications and CNNs.

- Integration into SoC architectures using Xilinx Vitis.

- Application to embedded AI (low-power inference accelerators).

👨‍💻 Author

Mohammed Amine Bendaou

Internship at LAAS-CNRS, ENSEEIHT, Toulouse, France

Supervisors: Blaise Mulliez, Lubin Gauthier

📫 Contact

blaise.mulliez@toulouse-inp.fr

lubin.gauthier@toulouse-inp.fr

m.a.bendaou@gmail.com


