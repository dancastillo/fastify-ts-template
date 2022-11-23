DIFF_MERGES=$(git log --oneline --no-merges --date=short origin/main...origin/develop)

echo "$LASTMERGES"

IFS='\n ' read -r -a array <<< "$DIFF_MERGES"
echo "\n\n"

for element in "${array[@]}"
do
    echo "$element"
done