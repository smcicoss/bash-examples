#!/bin/bash
year=`date +%Y`
mes=`date +%m` 
mes=`expr $mes - 1` 
if [ "$mes" -lt "10" ]; 
then 
    echo "0$mes";
else
    echo $mes;
fi

find . -name *$year-$mes* -exec rm {} \;

