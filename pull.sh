#!/bin/bash

tobepull="bash-examples bashrefes c-examples davidam davidam.github.io haskell-examples java-examples js-examples gnuplot-examples marenostrum-examples php-mode ruby-examples sql-examples libremanuals.github.io worg org-mode orgguide-es GAPLEN python-examples"

gitdir="/home/davidam/git"
cd $gitdir
for i in $tobepull; do
    cd $i
    git pull
    cd ..
done
