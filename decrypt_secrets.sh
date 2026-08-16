#!/bin/bash
folder="./secrets"

for file in "$folder"/*.enc; do
    echo "Decrypting $file"
    ezcrypt -dec -privkey=$HOME/.keys/k8s_priv.pem -f "$file" -t ${file%.*}
done
