#!/bin/zsh
if [ $# -eq 0 ]; then
    echo "No arguments provided. Script will terminate."
    exit 1
fi
gh repo create $1 --private
echo "# $1" >> README.md
git init
git add README.md
git commit -S -m "inital commit"
git branch -M 
git remote add origin git@github.com:Afloatbus/$1
git push -u origin main