find -L ~/ -type d \( -name ".git" -o -name "data" -o -name ".conda" -o -name "scratch" \) -prune | grep .git > gits.txt
