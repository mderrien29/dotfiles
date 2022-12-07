#!/bin/sh

CURBRANCH=`git rev-parse --abbrev-ref HEAD`

# Go back to the last commit that we want
# to form the initial commit (detach HEAD)
git checkout $2

# reset the branch pointer to the initial commit (= $1),
# but leaving the index and working tree intact.
git reset --soft $1

# amend the initial tree using the tree from $2
git commit --amend -m $3 --no-verify

# remember the new commit sha1
TARGET=`git rev-list HEAD --max-count=1`

# go back to the original branch
git checkout $CURBRANCH

# Replay all the commits after $2 onto the new initial commit
git rebase --onto $TARGET $2
