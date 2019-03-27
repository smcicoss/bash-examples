#!/bin/bash

tobeclonegitlab="guix-es"

tobeclonegithub="bash-examples bashrefes c-examples davidam davidam.github.io haskell-examples java-examples js-examples gnuplot-examples marenostrum-examples php-mode ruby-examples sql-examples libremanuals.github.io orgguide-es GAPLEN python-examples damegender certificaciones"

tobecloneorgmode="org-mode worg"

tobeclonedrupal="orgmode drupal"

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


# Drupal

if ! [ -d drupal7 ]; then
    mkdir drupal7
fi

cd drupal7
git clone --branch 7.x-1.x https://git.drupal.org/project/orgmode.git
git clone --branch 7.x-1.x https://git.drupal.org/project/ocrad.git
cd ..

if ! [ -d drupal8 ]; then
    mkdir drupal8
fi

cd drupal8
git clone --branch 8.x-1.x https://git.drupal.org/project/orgmode.git
cd ..


# for i in $tobeclonegithub; do
#     cd $i
#     git pull
#     cd ..
# done
