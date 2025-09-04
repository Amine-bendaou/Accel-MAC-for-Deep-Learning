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
    set top_module "top_${entity_name}_Test"

} elseif { $source_dir eq "frederik" } {
    set pkg_file "vhdl_files/frederik/machine_learning_components_pkg.vhd"

    if { $entity_name eq "ADD1CLK" } {
        set top_file  "vhdl_files/frederik/addition_1clk.vhd"
        set top_module "addition_1clk"

    } elseif { $entity_name eq "MULT1CLK" } {
        set top_file  "vhdl_files/frederik/multiplier_1clk.vhd"
        set top_module "multiplier_1clk"

    } else {
        puts "❌ Erreur : entité Frederik inconnue."
        exit
    }

} else {
    set top_file "vhdl_files/${source_dir}/top_${entity_name}_Test.vhd"
    set top_module "top_${entity_name}_Test"
}

set project_name "impl_${entity_name}_${clk_freq}MHz"
set output_dir "impl_results/${entity_name}/${clk_freq}MHz"

puts "\n🔎 Top file      : $top_file"
puts "📎 Constraints   : $xdc_path"
puts "📁 Project name  : $project_name"
puts "⏱️  Target clock : ${clk_freq} MHz\n"

# === Creation of the project ===
file mkdir $output_dir
create_project $project_name $output_dir -part xc7a100tcsg324-1 -force

# ✅ For Frederik sources: manual mode and package addition
if { $source_dir eq "frederik" } {
    set_property source_mgmt_mode None [current_project]

    # Ajouter le package
    add_files -fileset sources_1 -norecurse $pkg_file
    set_property library machine_learning_lib [get_files $pkg_file]
}

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

# === Add VHDL Top File ===
add_files -fileset sources_1 -norecurse $top_file

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

