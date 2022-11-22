LASTMERGES=$(git log --pretty=format:"%h%ad%x09%an%x09%s" --date=short main...develop)
echo "$LASTMERGES"
# echo "LASTMERGES<<EOF" >> $GITHUB_ENV
# echo $GITHUB_ENV
