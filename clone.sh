#!/bin/bash

tobeclonegitlab="guix-es"

tobeclonegithub="bash-examples bashrefes c-examples davidam davidam.github.io haskell-examples java-examples js-examples gnuplot-examples marenostrum-examples php-mode ruby-examples sql-examples libremanuals.github.io orgguide-es GAPLEN python-examples damegender"

tobecloneorgmode="org-mode worg"

gitdir="/home/davidam/git"
cd $gitdir

for i in $tobeclonegitlab; do
    if ! [ -d $i ]; then
	git clone https://gitlab.com/davidam/$i
    fi
done

for i in $tobeclonegithub; do
    if ! [ -d $i ]; then
	git clone https://github.com/davidam/$i
    fi
done

for i in $tobecloneorgmode; do
    if ! [ -d $i ]; then
	git clone https://code.orgmode.org/bzg/$i
    fi
done


# for i in $tobeclonegithub; do
#     cd $i
#     git pull
#     cd ..
# done
