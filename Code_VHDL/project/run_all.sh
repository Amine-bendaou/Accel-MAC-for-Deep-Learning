#!/bin/bash

# === Configurable ===
SOURCE=$1         # "flopoco" or "my_code"
ENTITY=$2         # FPAdd, FPMult, FPMAC, Add, MAC, etc.
XDC_PATH=$3       # Absolute path to .xdc file
DO_IMPL=$4        # yes / no
DO_EXPORT=$5      # yes / no

FREQ_LIST=(100 150 200 250 300 350 400 450 500 550 600)

# === Step 1: VHDL Code Generation ===
echo "🔧 [1/3] Code generation for $SOURCE..."
if [ "$SOURCE" == "flopoco" ]; then
    python3 generate_vhdl.py FLOPOCO 300  # Default frequency to generate code
elif [ "$SOURCE" == "my_code" ]; then
    python3 generate_vhdl.py MYCODE
else
    echo "❌ Invalid source type: $SOURCE (expected 'flopoco' or 'my_code')"
    exit 1
fi

# === Step 2: Implementation ===
if [ "$DO_IMPL" == "yes" ]; then
    echo "🏗 [2/3] Running implementation for all frequencies..."
    ./run_impl.sh "$ENTITY" "$SOURCE" "$XDC_PATH"
fi

# === Step 3: Export results ===
if [ "$DO_EXPORT" == "yes" ]; then
    echo "📊 [3/3] Exporting results to ODS..."
    python3 export_results.py "$ENTITY" "$SOURCE"
fi

echo "✅ Full pipeline completed."

