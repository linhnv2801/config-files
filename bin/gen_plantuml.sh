#!/bin/bash

# Check if the correct number of arguments are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <input_file.sql> <output_file.plantuml>"
    exit 1
fi

# Assign the arguments to variables
INPUT_FILE="$1"
OUTPUT_FILE="$2"

# Run the Python script with the provided arguments
python3 /Users/nguyenlinh/.config/bin/gen_plantuml.py "$INPUT_FILE" "$OUTPUT_FILE"
