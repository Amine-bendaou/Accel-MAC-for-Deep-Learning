# 📄 README – Extracting Implementation Data with `extract_impl_data.py`

This script extracts and summarizes implementation results (**timing, resources**) for different design blocks implemented in **Vivado**, across a range of frequencies.

---

## ⚙️ What the script does

- Reads each `timing.txt` and `utilization.txt` report.  
- Extracts:  
  - Target **Frequency** (MHz)  
  - **Worst Negative Slack (Wns)**  
  - Number of **DSP blocks**  
  - **LUT as Logic**  
  - **LUT as Memory**  
  - Number of **Flip-Flops**  
- Produces a summary table (**Markdown + `.ods` format**).  

---

## ✅ How to Use

1. ✅ Make sure Vivado implementation was run using the correct directory structure as shown above.  
   - For example, if you implemented `top_FPAdd_Test.vhd` at multiple frequencies, you should have:  

   ```bash
   impl_results/FPAdd/100MHz/
   impl_results/FPAdd/150MHz/
   ...
   ```

2. ▶️ Run the script:

   ```bash
   python3 extract_impl_data.py --entity <Entity Name>
   ```

   Entity Name = `MAC`, `Mult_solo`, `Add_solo` or `FPAdd`, `FPMult`, `FPMAC` or `ADD1CLK`, `MULT1CLK`  

   Example:  

   ```bash
   python3 extract_impl_data.py --entity FPMult
   ```

3. 📊 The script will:  
   - Display a table of results in your terminal  
   - Create an `.ods` spreadsheet: `impl_results_summary.ods`  

---
