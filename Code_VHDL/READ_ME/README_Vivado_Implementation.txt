
README – VHDL Implementation Automation (Vivado)
================================================

This README explains how to implement your VHDL designs using Vivado in batch mode.
The automation is split into two main scripts:

1. A TCL script (`run_implementation.tcl`) executed by Vivado.
2. A Bash wrapper (`run_impl.sh`) to loop through various clock frequencies.

--------------------------------------------------
🧾 Step-by-step Instructions
--------------------------------------------------

1️⃣ Create the Vivado TCL Script:
----------------------------------

Create the script using:
```bash
nano run_implementation.tcl
```

Paste the following content:

```tcl
if {$argc != 4} {
    puts "❌ Usage: vivado -mode batch -source run_implementation.tcl -tclargs ENTITY_NAME SOURCE_DIR XDC_PATH CLOCK_FREQ"
    exit
}

# === Read the arguments ===
set entity_name [lindex $argv 0]
set source_dir  [lindex $argv 1]
set xdc_path    [lindex $argv 2]
set clk_freq    [lindex $argv 3]

# === Adjust top file based on source_dir ===
if { $source_dir eq "flopoco" } {
    set top_file "vhdl_files/${source_dir}/top_${entity_name}_Test_${clk_freq}MHz.vhd"
} else {
    set top_file "vhdl_files/${source_dir}/top_${entity_name}_Test.vhd"
}

set top_module "top_${entity_name}_Test"
set project_name "impl_${entity_name}_${clk_freq}MHz"
set output_dir "impl_results/${entity_name}/${clk_freq}MHz"

puts "\n🔎 Top file      : $top_file"
puts "📎 Constraints   : $xdc_path"
puts "📁 Project name  : $project_name"
puts "⏱️  Target clock : ${clk_freq} MHz\n"

# === Creation of the project ===
file mkdir $output_dir
create_project $project_name $output_dir -part xc7a100tcsg324-1 -force

# === Create a temporary XDC file at the correct frequency ===
set period [expr {1000.0 / $clk_freq}]
set half_period [expr {$period / 2.0}]
set temp_xdc "${output_dir}/temp_${clk_freq}MHz.xdc"

set fout [open $temp_xdc "w"]
set fin [open $xdc_path "r"]

while {[gets $fin line] >= 0} {
    if {[string match "*create_clock*" $line]} {
        puts $fout "create_clock -name sys_clk_pin -period $period -waveform {0 $half_period} \[get_ports clk\]"
    } else {
        puts $fout $line
    }
}
close $fin
close $fout

# === Add VHDL Top File as a top module to the project ===
add_files $top_file

# === For MAC ===
if { $entity_name eq "MAC" && $source_dir eq "my_code" } {
    add_files "vhdl_files/my_code/top_Add_Test.vhd"
    add_files "vhdl_files/my_code/top_Mult_Test.vhd"
}

# === For MAC_Array ===
if { $entity_name eq "MAC_Array" && $source_dir eq "my_code" } {
    add_files "vhdl_files/my_code/top_MAC_for_paral_Test.vhd"
    add_files "vhdl_files/my_code/top_Add_Test.vhd"
    add_files "vhdl_files/my_code/top_Mult_Test.vhd"
}

# === Adding the temporary XDC file ===
add_files -fileset constrs_1 $temp_xdc

# === Define the top module ===
update_compile_order -fileset sources_1
set_property top $top_module [current_fileset]

# === Launch synthesis and implementation ===
launch_runs synth_1
wait_on_run synth_1

launch_runs impl_1
wait_on_run impl_1

# === Open design ===
open_run impl_1

# === generate reports ===
report_utilization    -file "$output_dir/utilization.txt"
report_timing_summary -file "$output_dir/timing.txt"
report_power          -file "$output_dir/power.txt"

# === delete the temporary XDC file ===
file delete -force $temp_xdc

puts "\n✅ Implémentation terminée pour $entity_name à ${clk_freq} MHz."

```

2️⃣ Create the Bash Wrapper Script:
------------------------------------

Create the shell script using:
```bash
nano run_impl.sh
```

Paste the following content:

```bash
#!/bin/bash

# === Add Vivado path ===
export PATH=/tools/Xilinx/Vivado/2022.2/bin:$PATH

ENTITY=$1         # ex: FPMult ou MAC
SOURCE=$2         # ex: flopoco ou my_code
XDC=$3            # path of the file.xdc

FREQ_LIST=(100 150 200 250 300 350 400 450 500 550 600)

# === Génération manquante pour FloPoCo ===
if [ "$SOURCE" == "flopoco" ]; then
    for FREQ in "${FREQ_LIST[@]}"; do
        FILE="vhdl_files/flopoco/top_${ENTITY}_Test_${FREQ}MHz.vhd"
        if [ ! -f "$FILE" ]; then
            echo "🔁 Génération manquante détectée pour $ENTITY à $FREQ MHz..."
            python3 generate_vhdl.py FLOPOCO "$FREQ"
        else
            echo "✅ Fichier VHDL déjà présent pour $ENTITY à $FREQ MHz"
        fi
    done
elif [ "$SOURCE" == "my_code" ]; then
    echo "⚠️  Pour MYCODE, tous les fichiers sont déjà générés une seule fois."
else
    echo "❌ Erreur : source inconnue '$SOURCE'. Attendu : 'flopoco' ou 'my_code'."
    exit 1
fi

# === Implémentation ===
for FREQ in "${FREQ_LIST[@]}"; do
    echo "🚧 Implémentation pour $ENTITY à $FREQ MHz..."
    vivado -mode batch -source run_implementation.tcl -tclargs "$ENTITY" "$SOURCE" "$XDC" "$FREQ"
done

```

3️⃣ Make the script executable:
--------------------------------
```bash
chmod +x run_impl.sh
```
4️⃣ Adapt your XDC file :
--------------------------------
Modify the constraints file located in /home/intern/Bendaou/stage_2025/Code VHDL/stage_2025.srcs/constrs_1/new so that it is well adapted to the file tested

5️⃣ Run the implementation process:
-----------------------------------
```bash
Using My Personal Code : 
	For the MAC :
	./run_impl.sh MAC my_code "/home/intern/Bendaou/stage_2025/Code VHDL/stage_2025.srcs/constrs_1/new/contraintes.xdc"
        For the Add :
        ./run_impl.sh Add_solo my_code "/home/intern/Bendaou/stage_2025/Code VHDL/stage_2025.srcs/constrs_1/new/contraintes.xdc"
	For the Mult :
        ./run_impl.sh Mult_solo my_code "/home/intern/Bendaou/stage_2025/Code VHDL/stage_2025.srcs/constrs_1/new/contraintes.xdc"
        For the MAC_Array : 
        ./run_impl.sh MAC_Array my_code "/home/intern/Bendaou/stage_2025/Code VHDL/stage_2025.srcs/constrs_1/new/contraintes.xdc"
        
Using Flopoco :
	For the MAC :
	./run_impl.sh FPMAC flopoco "/home/intern/Bendaou/stage_2025/Code VHDL/stage_2025.srcs/constrs_1/new/contraintes.xdc"
        For the Add :
        ./run_impl.sh FPAdd flopoco "/home/intern/Bendaou/stage_2025/Code VHDL/stage_2025.srcs/constrs_1/new/contraintes.xdc"
	For the Mult :
        ./run_impl.sh FPMult flopoco "/home/intern/Bendaou/stage_2025/Code VHDL/stage_2025.srcs/constrs_1/new/contraintes.xdc"
        
Using Frederik code :
	For the Add :
	./run_impl.sh ADD1CLK frederik "/home/intern/Bendaou/stage_2025/Code VHDL/stage_2025.srcs/constrs_1/new/contraintes.xdc"
        For the Mult :
        ./run_impl.sh MULT1CLK frederik "/home/intern/Bendaou/stage_2025/Code VHDL/stage_2025.srcs/constrs_1/new/contraintes.xdc"
```

This will:
- Launch Vivado for each frequency (100 → 600 MHz),
- Create one project per frequency,
- Run synthesis and implementation,
- Save reports: `utilization.txt`, `timing.txt`, `power.txt`.

--------------------------------------------------
✅ Done!
--------------------------------------------------
