#!/bin/zsh
if [ $# -eq 0 ]; then
    echo "No arguments provided. Script will terminate."
    exit 1
fi

git add -A
git commit -S -m "$1"
git branch -M 
git push -u origin main