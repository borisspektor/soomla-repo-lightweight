#!/bin/sh

echo "Updating repo..."

git fetch origin
git fetch --tags
git reset --hard origin/master

rm -rf .git/refs/original/
git reflog expire --expire=now --all
git gc --aggressive --prune=now