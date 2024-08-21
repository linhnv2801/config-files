#!/bin/bash

# Check if the argument is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <filename.tex>"
  exit 1
fi

# Get the filename from the first argument
FILENAME="$1"

# Run the LaTeX and Biber commands with the provided filename
lualatex --shell-escape "$FILENAME"
biber "${FILENAME%.tex}" # Remove the .tex extension for biber
lualatex --shell-escape "$FILENAME"
lualatex --shell-escape "$FILENAME"
