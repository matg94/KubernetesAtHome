for dir in $(find . -type d -not -path '*/\.*'); do
    echo "Applying in ${dir}"
    kubectl apply -f "$dir"
done
