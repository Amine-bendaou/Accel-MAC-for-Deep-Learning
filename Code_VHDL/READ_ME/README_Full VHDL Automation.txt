🚀 run_all.sh – Full VHDL Automation Pipeline

This script automates the full VHDL flow for both FloPoCo-generated and custom VHDL blocks:

- ✅ Code generation 
- ✅ Implementation  
- ✅ Export to `.ods` spreadsheet

📌 Usage

./run_all.sh <source> <entity> <xdc_path> <implement> <export>

Arguments:

| Argument      | Description                                                                 
|---------------|---------------------------------------------------------
| <source>      | flopoco or my_code                                         
| <entity>      | Name of the VHDL block                                    
| <xdc_path>    | Absolute path to constraints file (.xdc)                  
| <implement>   | yes or no → run implementation across frequencies                                 
| <export>      | yes or no → export results to .ods                        

✅ Example

./run_all.sh flopoco FPMAC "/home/intern/Bendaou/stage_2025/Code VHDL/stage_2025.srcs/constrs_1/new/contraintes.xdc" yes yes

This will:
- Generate VHDL from FloPoCo for FPMAC
- Implement it across all defined frequencies
- Export all results to an ODS spreadsheet

💡 Notes:
- Frequencies are predefined inside the script (e.g. 100–600 MHz).
- FloPoCo blocks must be generated before implementation.
- If you generate FloPoCo blocks, the default value of frequency is fixed at 300 MHz.
- .ods result export summarizes timing and resource usage.

