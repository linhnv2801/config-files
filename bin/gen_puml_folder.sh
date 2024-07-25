#!/bin/bash

# Check if the correct number of arguments is provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <SQL_DIR> <OUTPUT_DIR>"
    exit 1
fi

# Directory containing the SQL files and output directory for PUML files
SQL_DIR="$1"
OUTPUT_DIR="$2"

# Check if the SQL directory exists
if [ ! -d "$SQL_DIR" ]; then
    echo "Error: Directory $SQL_DIR does not exist."
    exit 1
fi

# Create the output directory if it doesn't exist
mkdir -p "$OUTPUT_DIR"

# Iterate over all .sql files in the directory
for sql_file in "$SQL_DIR"/*.sql;
do
    # Extract the filename without the extension
    filename=$(basename "$sql_file" .sql)

    # Define the output .puml file
    puml_file="$OUTPUT_DIR/${filename}.puml"

    # Run the gen_plantuml.sh script with the SQL file and the output PUML file
    ~/.config/bin/gen_plantuml.sh "$sql_file" "$puml_file"
done
