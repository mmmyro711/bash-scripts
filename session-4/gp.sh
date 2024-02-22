#!/bin/bash

function _gitPush {
which git 2> /dev/null && clear
    if [ $# != 0 ]; then 
        echo "Installing git ..."
        yum install git -y 1> /dev/null
    
    fi

    git status 2> /dev/null && clear
    if [ $? ==0 ]; then
        if [ $# = 0 ]; then
            read -p "provide path to commit: " path 
            read -p "provide commit message: " message
            git add $path
            git commit -m "$message"
            git push
    
        elif [ $# = 1 ]; then 
            git add .
            git commit -m $1
            git push

        elif [ $# = 2 ]; then 
            git add $1
            git commit -m $2
            git push
        fi
}
   else 
        echo "repository not detected"
        read -p "enter repo name: " repo
        repo_path=$(find / -name $repo)
        cd $repo_path
        _gitPush

