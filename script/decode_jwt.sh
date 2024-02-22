#!/bin/bash

# Check if JWT token is provided as argument
if [ $# -eq 0 ]; then
    echo "Error: JWT token not provided."
    echo "Usage: $0 <JWT>"
    exit 1
fi

# Decode JWT token using jq
decoded=$(echo "$1" | jq -R 'split(".") | .[1] | @base64d | fromjson')

# Display decoded JWT
echo "$decoded"

