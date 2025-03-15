#!/bin/bash

decode_base64url() {
    local input=$1
    local decoded=$(echo -n "$input" | tr '_-' '/+' | base64 -d 2>/dev/null)
    echo "$decoded"

}


decode_jwt() {
    local jwt=$1
    IFS='.' read -r header payload signature <<< "$jwt"

    echo "=== JWT HEADER ==="
    decode_base64url "$header" | jq '.'

    echo "=== JWT PAYLOAD ==="
    decode_base64url "$payload" | jq '.'

    echo "=== JWT SIGNATURE ==="
    echo "$signature (Không thể giải mã, chỉ để xác thực)"

}


if [ -z "$1" ]; then
    echo "Usage: $0 <jwt_token>"
    exit 1
fi

decode_jwt "$1"


