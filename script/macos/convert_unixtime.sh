#!/bin/bash

# Check if a Unix timestamp is provided as an argument
if [ $# -eq 0 ]; then
    echo "Error: Unix timestamp not provided."
    echo "Usage: $0 <timestamp>"
    exit 1
fi

# Convert Unix timestamp to human-readable date and time
datetime=$(date -r "$1" "+%Y-%m-%d %H:%M:%S")

# Display the result
echo "Datetime: $datetime"
