#!/bin/bash
folder="./secrets"

for file in "$folder"/*.enc; do
    echo "Decrypting $file"
    ezcrypt -dec -privkey=$HOME/.keys/kubernetesPrivateKey.pem -f "$file" -t ${file%.*}
    rm $file
done
