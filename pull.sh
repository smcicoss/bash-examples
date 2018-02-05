#!/bin/bash

tobepull="bash-examples c-examples python-examples davidam.github.io libremanuals.github.io worg orgmode"
gitdir="/home/davidam/git"
cd $gitdir
for i in $tobepull; do
    cd $i
    git pull
    cd ..
done
