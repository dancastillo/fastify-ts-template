DIFF_MERGES=$(git log --pretty=format:"%h%ad%x09%an%x09%s" --date=short main...develop)
IFS=', ' read -r -a array <<< "$DIFF_MERGES"
# echo "$LASTMERGES"

for element in "${array[@]}"
do
    echo "$element"
done