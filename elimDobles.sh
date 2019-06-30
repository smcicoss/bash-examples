#! /bin/bash
# -*- ENCODING: UTF-8 -*-
# ·

# original de: David Arroyo Menéndez
# http://www.davidam.com/
# En: https://github.com/davidam/bash-examples


# Simón Martínez Álvarez [simon@cicoss.net]

# Con arboles de directorios grandes la cantidad de memoria 
# utilizada es enorme ya que hace una lectura previa de todos
# los nombres de fichero antes de empezar a comparar y el tiempo
# empleado en esa lectura tambien se vuelve inasumible, así como
# el tiempo empleado por md5sum en ficheros grandes.
# Por otro lado no permite elegir cual borrar.
# Otro problema, grave, que presenta este script es que si dentro
# del arbol tenemos un enlace simbolico a otra parte del mismo
# arbol borrará todos los ficheros que existan en esa rama.

################################################################

for file in **; do
  [[ -f "$file" ]] || continue

  read cksm _ < <(md5sum "$file")
  if ((arr[$cksm]++)); then
    echo "rm $file"
    rm "$file"
  fi
done
