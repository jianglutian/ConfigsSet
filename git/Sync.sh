#!/bin/bash
GitVersion=`git --version | tr -d "git version"`
../CommonScripts/CompareVersion.sh $GitVersion 10
echo $?
if [[ $? -lt 0 ]] ; then
    echo "Git version check failed."
    exit 1
fi
cp gitconfig ~/.gitconfig
