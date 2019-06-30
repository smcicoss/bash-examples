#! /bin/bash
# -*- ENCODING: UTF-8 -*-
# ·

year=`date +%Y`
mes=`date +%m` 
mes=`expr $mes - 1` 
if [ "$mes" -lt "10" ];  then 
    echo "0$mes";
else
    echo $mes;
fi

# si existe un directorio coincidente con el partón el comando fallará
# find . -name *$year-$mes* -exec rm {} \;
# para que funcione se elegirá entre los dos siguientes

# a) borra todo el arbol del directorio encontrado
#   find . -name *$year-$mes* -exec rm -r {} \;

# b) trata solo con ficheros (mas seguro)
find . -type f -name *$year-$mes* -exec rm {} \;

