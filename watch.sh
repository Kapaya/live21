set -e

# kill any existing servers
ps aux | grep node | grep browser-sync | awk '{ print $2}' | xargs kill

ls *.md | entr ./compile-html.sh &
browser-sync start --server --files index.html --no-notify --no-open --port 9000 &

open "http://localhost:9000/index.html"

