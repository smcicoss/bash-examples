#!/bin/bash

echo "Write keyword app: "
read keyword

echo "Write year: "
read year

echo "Write month: "
read month

cp $keyword-$year-$month-15* /tmp/
rm $keyword-$year-$mes* 

cp /tmp/$keyword-$year-$month-15* .
rm /tmp/$keyword-$year-$month-15* 



