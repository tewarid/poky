git remote add upstream https://git.yoctoproject.org/git/poky
git fetch upstream
git checkout master
if [ $? -eq 0 ]; then
    git rebase upstream/master
    if [ $? -eq 0 ]; then
        git push -f
    fi
fi
