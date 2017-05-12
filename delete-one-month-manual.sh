#!/bin/bash

echo "Write keyword app: "
read keyword

echo "Write year: "
read year

echo "Write month: "
read month

if [ ! -f $keyword-$year-$month-15.sql ]; then
    echo "$keyword-$year-$month-15.sql not found!. You will not have this backup file"
fi

if [ ! -f $keyword-$year-$month-15.tar.gz ]; then
    echo "$keyword-$year-$month-15.tar.gz not found!. You will not have this backup file"
fi

wc=`ls -l $keyword-$year-$month* | wc -l`
echo "There are $wc files to remove. Are you sure?"
read sure

if [ "$sure" == "yes" ]; 
then
    cp $keyword-$year-$month-15* /tmp/
    rm $keyword-$year-$mes* 
    cp /tmp/$keyword-$year-$month-15* .
    rm /tmp/$keyword-$year-$month-15* 
fi


