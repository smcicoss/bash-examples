#! /bin/bash
# -*- ENCODING: UTF-8 -*-
# ·

# éste script reemplaza acutes pro acentos y otros caracteres especiales por su equivalente en XML/HTML usando sed
#
# GeoX & L�ndir
#

if [ -z "$1" ]; then
	echo -e "Uso:\n\t$0 <nombre_de_fichero> [nombre_de_fichero_salida]"
	echo -e "\t\tsi se omite el fichero de salida" 
	echo -e "\t\tse realizara sobre el de entrada"
	exit 1
fi

if [ ! -r "$1" ]; then
	echo "El fichero $1 no existe o no se puede leer"
	exit 2
fi

entrada="$1"

if [ ! -z $2 ]; then
	salida="$2"
else
	salida="$1"
fi

#crea fichero temporal
tmp=$(mktemp /tmp/xmltemporal.XXXXXX)
trap "rm -f -- "$tmp"" INT TERM HUP EXIT

#tmp="/tmp/xmltemporal"
#clear
echo "Cambiando acutes por acentos ..."
sed -e 's/\&aacute;/á/g' $entrada > $tmp && cp $tmp $salida
sed -e 's/\&eacute;/é/g' $salida > $tmp && cp $tmp $salida
sed -e 's/\&iacute;/í/g' $salida > $tmp && cp $tmp $salida
sed -e 's/\&oacute;/ó/g' $salida > $tmp && cp $tmp $salida
sed -e 's/\&uacute;/ú/g' $salida > $tmp && cp $tmp $salida
sed -e 's/\&Aacute;/Á/g' $salida > $tmp && cp $tmp $salida
sed -e 's/\&Eacute;/É/g' $salida > $tmp && cp $tmp $salida
sed -e 's/\&Iacute;/Í/g' $salida > $tmp && cp $tmp $salida
sed -e 's/\&Oacute;/Ó/g' $salida > $tmp && cp $tmp $salida
sed -e 's/\&Uacute;/Ú/g' $salida > $tmp && cp $tmp $salida
sed -e 's/\&ntilde;/ñ/g' $salida > $tmp && cp $tmp $salida
sed -e 's/\&Ntilde;/Ñ/g' $salida > $tmp && cp $tmp $salida
sed -e 's/\&uuml;/ü/g' $salida > $tmp && cp $tmp $salida
sed -e 's/\&Uuml;/Ü/g' $salida > $tmp && cp $tmp $salida
sed -e 's/\&iquest;/¿/g' $salida > $tmp && cp $tmp $salida
