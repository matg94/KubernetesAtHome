#!/bin/bash
folder="./secrets"

for file in "$folder"/*.yml; do
    echo "Encrypting $file"
    ezcrypt -enc -pubkey=kubernetesSecretPublicKey.pem -f "$file" -t "$file.enc"
done
