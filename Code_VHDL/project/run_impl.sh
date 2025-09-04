#!/bin/bash

# === Add Vivado path ===
export PATH=/tools/Xilinx/Vivado/2022.2/bin:$PATH

ENTITY=$1         # ex: FPMult ou MAC
SOURCE=$2         # ex: flopoco ou my_code
XDC=$3            # chemin absolu du fichier contraintes.xdc

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

elif [ "$SOURCE" == "frederik" ]; then
    echo "📦 Source Frederik détectée. Aucun fichier à générer dynamiquement."

else
    echo "❌ Erreur : source inconnue '$SOURCE'. Attendu : 'flopoco', 'my_code' ou 'frederik'."
    exit 1
fi

# === Implémentation ===
for FREQ in "${FREQ_LIST[@]}"; do
    echo "🚧 Implémentation pour $ENTITY à $FREQ MHz..."
    vivado -mode batch -source run_implementation.tcl -tclargs "$ENTITY" "$SOURCE" "$XDC" "$FREQ"
done

