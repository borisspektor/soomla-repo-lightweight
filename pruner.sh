#!/bin/sh

echo "Enable tracking of all branches..."
for branch in `git branch -a | grep remotes | grep -v HEAD | grep -v master`; do
    git branch --track ${branch##*/} $branch
done

echo "Dropping all untracked changes..."
git reset --hard

for ARG in "$@"
do
	echo "Pruning $ARG..."
done

git filter-branch --tag-name-filter cat --index-filter "git rm -r --cached --ignore-unmatch $*" --prune-empty -f -- --all

echo "Collecting garbage..."
rm -rf .git/refs/original/
git reflog expire --expire=now --all
git gc --aggressive --prune=now

echo "Updating submodules..."
git submodule init
git submodule update
for submodule_folder in `find ./submodules -type d -maxdepth 1`
do
        cd $submodule_folder
        commit_hash_raw="$(git log origin/master | head -1)"
        commit_hash_splitted=($commit_hash_raw)
        git checkout ${commit_hash_splitted[1]}
        cd -
        git add $submodule_folder
done
git commit -m "Update submodules"

read -p "Do you want to push changes immediately? If no, you should push all branches and all tags with --force parameter:" -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
	echo "Pushing changes..."
	git push --force --all
	git push --force --tags
fi
