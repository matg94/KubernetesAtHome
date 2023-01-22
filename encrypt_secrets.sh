#!/bin/bash
folder="./secrets"

for file in "$folder"/*.yml; do
    echo "Encrypting $file"
    ezcrypt -enc -pubkey=kubernetesPublicKey.pem -f "$file" -t "$file.enc"
    rm $file
done
