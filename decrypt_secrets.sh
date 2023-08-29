#!/bin/bash
folder="./secrets"

for file in "$folder"/*.enc; do
    echo "Decrypting $file"
    ezcrypt -dec -privkey=$HOME/.keys/kubernetesSecretPrivateKey.pem -f "$file" -t ${file%.*}
done
