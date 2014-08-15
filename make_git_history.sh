#!/usr/bin/env bash

PATH_COMMIT_MESSAGE=$*

#remove agregation folder if exists
rm -rf __agregate

cp -r "$PATH_COMMIT_MESSAGE" __agregate

# add all files
git add . -A

# commit with comment
git commit -m "$PATH_COMMIT_MESSAGE"

# push to "origin master"
git push origin master

