import os
import re
import pandas as pd
import argparse

# === Argument CLI ===
parser = argparse.ArgumentParser(description="Extraction des ressources d'implémentation Vivado.")
parser.add_argument("--entity", required=True, help="Nom de l'entité à analyser (ex: MAC, FPMult, ADD1CLK)")
args = parser.parse_args()

BASE_DIR = "impl_results"
ENTITY = args.entity

freqs = []
slacks = []
dsps = []
luts_logic = []
luts_mem = []
ffs = []
static_powers = []
dynamic_powers = []
total_powers = []

def extract_number(text, default=0):
    numbers = re.findall(r"\d+", text)
    return int(numbers[0]) if numbers else default

def extract_float(text, default=0.0):
    match = re.search(r"([0-9]*\.?[0-9]+)", text)
    return float(match.group(1)) if match else default
    
def parse_reports():
    entity_dir = os.path.join(BASE_DIR, ENTITY)
    if not os.path.isdir(entity_dir):
        print(f"❌ Dossier {entity_dir} introuvable.")
        return

    for freq_dir in sorted(os.listdir(entity_dir)):
        freq_path = os.path.join(entity_dir, freq_dir)
        if not os.path.isdir(freq_path):
            continue

        freq = int(freq_dir.replace("MHz", ""))
        timing_path = os.path.join(freq_path, "timing.txt")
        util_path = os.path.join(freq_path, "utilization.txt")
        power_path = os.path.join(freq_path, "power.txt")

        # Defaults
        slack = "NA"
        dsp = lut_logic = lut_mem = ff = 0
        static_power = dynamic_power = total_power = 0.0

        # Parse timing.txt
        if os.path.exists(timing_path):
            with open(timing_path) as f:
                lines = f.readlines()
                wns_found = False
                for i, line in enumerate(lines):
                    if re.search(r"^\s*WNS\(ns\)", line):
                        # La ligne de données est 2 lignes plus bas
                        if i + 2 < len(lines):
                            data_line = lines[i + 2].strip()
                            # Extraire la première valeur numérique (WNS)
                            match = re.match(r"([\d\.NAna-]+)", data_line)
                            if match:
                                val = match.group(1)
                                if val.upper() == "NA":
                                    slack = "NA"
                                else:
                                    try:
                                        slack = float(val)
                                    except ValueError:
                                        slack = "NA"
                                wns_found = True
                                break
                if not wns_found:
                    slack = "NA"


        # Parse utilization.txt
        if os.path.exists(util_path):
            with open(util_path) as f:
                for line in f:
                    if "Register as Flip Flop" in line:
                        ff = extract_number(line)
                    elif "LUT as Logic" in line and "LUT as Memory" not in line:
                        lut_logic = extract_number(line)
                    elif "LUT as Memory" in line and "Distributed RAM" not in line:
                        lut_mem = extract_number(line)
                    elif line.strip().startswith("| DSPs "):
                        dsp = extract_number(line)

        # Parse power.txt
        if os.path.exists(power_path):
            with open(power_path) as f:
                for line in f:
                    if "Total On-Chip Power (W)" in line:
                        total_power = extract_float(line)
                    elif "Dynamic (W)" in line:
                        dynamic_power = extract_float(line)
                    elif "Device Static (W)" in line:
                        static_power = extract_float(line)

        
        # Append results
        freqs.append(freq)
        slacks.append(slack)
        dsps.append(dsp)
        luts_logic.append(lut_logic)
        luts_mem.append(lut_mem)
        ffs.append(ff)
        static_powers.append(static_power)
        dynamic_powers.append(dynamic_power)
        total_powers.append(total_power)
        
def make_table():
    df = pd.DataFrame({
        "Frequency(MHz)": freqs,
        "WNS(ns)": slacks,
        "DSP": dsps,
        "LUT as Logic": luts_logic,
        "LUT as Memory": luts_mem,
        "Flip-Flops": ffs,
        "Static Power (W)": static_powers,
        "Dynamic Power (W)": dynamic_powers,
        "Total Power (W)": total_powers
    })

    df = df.sort_values("Frequency(MHz)")
    print(f"\n📊 Résultats d'implémentation pour '{ENTITY}' :\n")
    print(df.to_markdown(index=False))

    export_path = f"impl_results_summary_{ENTITY}.ods"
    df.to_excel(export_path, index=False, engine="odf")
    print(f"\n✅ Exporté vers '{export_path}'")

# === MAIN ===
if __name__ == "__main__":
    parse_reports()
    make_table()     
