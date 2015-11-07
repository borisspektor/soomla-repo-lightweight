# soomla-repo-lightweight
Scripts to reduce SOOMLA repo sizes. This repo will be removed after completing.

## What is here?
 - `find-big.sh` - file which shows top 100 biggest files in git history, you can use it to check repo usage after repository pruning;
 - `pruner.sh` - main script, should be placed with other scripts together to run pruning;
 - `Unity3D` folder has scripts for each Unity3D module;
 - `Cocos2d`, `iOS`, `Android` folders has one universal script for each platform;
 
## What this script doing?
 - Each platform/module-specific script has only filelist to remove and invocation of `pruner.sh`;
 - `pruner.sh` do:
    - deep cloning of all repository branches (to avoid missed branches);
    - `git reset --hard` to reset untracked changes;
    - and for each passed file it will rewrite git history tree by using `git --index-filter` and `git rm -r --cached --ignore-unmatch $FILENAME` as filter criteria;
    - aggressive garbage collecting `git gc --aggressive` to remove all trash remained after repo cleaning;
    - and ask you to perform `git push --hard` for all branches and all tags (you can decline it, but should do it later manually).
    
## Caveats
  - All commits will be updated, so all commit hashes will be re-calculated and all old commit refs/PRs will be broken;