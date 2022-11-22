DIFF_MERGES=$(git log --pretty=format:"%h%ad%x09%an%x09%s" --date=short main...develop)
echo "$LASTMERGES"