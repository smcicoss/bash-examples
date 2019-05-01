#!/bin/bash

# Public Domain
# Script downloaded from https://www.tldp.org/LDP/abs/html/moreadv.html#EX45

# Demonstrating some of the uses of 'expr'
# =======================================

echo

# Arithmetic Operators
# ---------- ---------

echo "Arithmetic Operators"
a=`expr 5 + 3`
echo "5 + 3 = $a"

a=`expr $a + 1`
echo
echo "a + 1 = $a"
echo "(incrementing a variable)"


i=0
while IFS='' read -r line || [[ -n "$line" ]]; do
	i=`expr $i + 1`
	echo "$i"
done < /home/davidam/git/damegender/files/kernelgits.txt
