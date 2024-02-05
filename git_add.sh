
changed_files=$(git status --porcelain | awk '{if($0~/^..(.+)/) print substr($0, 4)}')

IFS=$'\n'
for value in $changed_files; do
    basename=$(basename "$value" .swift\")
    basename=$(echo "$basename" | sed 's/^"//')
    commit="Solved "
    commit+=$basename
    echo $basename
    test=$(basename "$value" \")
    test=$(echo "$test" | sed 's/^"//')
    git add $test
    git commit -m $commit
done