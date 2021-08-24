git remote add upstream https://git.yoctoproject.org/git/poky
git fetch upstream
git_branch=$GIT_BRANCH
if [ "$git_branch" = "" ]; then
    git_branch="master"
fi
git checkout $git_branch
if [ $? -eq 0 ]; then
    git rebase upstream/$git_branch
    if [ $? -eq 0 ]; then
        git push -f
    fi
fi
